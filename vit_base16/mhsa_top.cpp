// ===========================================================================
// mhsa_top.cpp - Multi-Head Self-Attention (MHSA) wrapper for ViT-Base.
// Target: xczu5eg-sfvc784-1-e (PYNQ-ZU), Vitis HLS 2025.2
//
// Instantiates the validated single-head online-attention core once and
// drives it sequentially for all NUM_HEADS (=12) heads, slicing each head's
// HEAD_DIM (=64) columns out of the full EMBED_DIM (=768) wide Q/K/V/O
// tensors. online_attention_row() itself is NOT modified.
//
// ---------------------------------------------------------------------------
// Why sequential (not replicated) heads:
//   online_attention_row() is called inside a plain (non-unrolled) loop, so
//   Vitis HLS schedules ONE hardware instance of the core and reuses it
//   across iterations. Wrapping that in an outer, also-non-unrolled, heads
//   loop keeps that same property: 12 heads share the same datapath and the
//   same K_buf/V_buf on-chip memory, executed one after another. This keeps
//   LUT/FF/DSP/BRAM utilization essentially flat versus the single-head
//   design -- important on a resource-limited device like the ZU5EG -- at
//   the cost of latency scaling by ~12x (heads run one at a time).
//
//   If throughput matters more than area later, the heads loop below can be
//   partially parallelized with e.g.:
//       #pragma HLS unroll factor=2
//   applied to the `heads` loop. This causes HLS to replicate K_buf/V_buf/
//   Q_row/O_row and the online_attention_row datapath by the unroll factor,
//   giving a proportional latency reduction at a proportional LUT/FF/DSP/
//   BRAM cost (see resource table in the review response). This is NOT
//   applied by default here to keep the initial MHSA bring-up numerically
//   and resource-safe; add it only after confirming the sequential version
//   meets functional correctness and after checking utilization headroom.
// ===========================================================================
#include "mhsa_top.h"

// Per-head on-chip K/V storage, reused sequentially across all NUM_HEADS
// iterations. Identical size/pragmas to the validated single-head design's
// K_buf/V_buf (attention_top.cpp) -> footprint does NOT scale with NUM_HEADS.
static data_t K_buf[N_TOKENS][HEAD_DIM];
static data_t V_buf[N_TOKENS][HEAD_DIM];

extern "C" void mhsa_top(
    const data_t* Q,
    const data_t* K,
    const data_t* V,
    out_t* O,
    logit_t scale
)
{
    

    // rest of code... {
// ---- Interface pragmas ----------------------------------------------------
// Same structure as attention_top(): four independent AXI-master ports
// (separate bundles => concurrent bursts), one AXI-lite control port.
// depth = N_TOKENS * EMBED_DIM = 197 * 768 = 151296, which is the SAME
// depth value already used in the single-head attention_top.cpp -- that
// kernel's depth pragma was already sized for the full multi-head tensor.
#pragma HLS interface m_axi     port=Q offset=slave bundle=gmem_q depth=151296
#pragma HLS interface m_axi     port=K offset=slave bundle=gmem_k depth=151296
#pragma HLS interface m_axi     port=V offset=slave bundle=gmem_v depth=151296
#pragma HLS interface m_axi     port=O offset=slave bundle=gmem_o depth=151296
#pragma HLS interface s_axilite port=Q     bundle=control
#pragma HLS interface s_axilite port=K     bundle=control
#pragma HLS interface s_axilite port=V     bundle=control
#pragma HLS interface s_axilite port=O     bundle=control
#pragma HLS interface s_axilite port=scale bundle=control
#pragma HLS interface s_axilite port=return bundle=control

    // Same bind_storage / partitioning as the validated single-head design.
#pragma HLS bind_storage variable=K_buf type=ram_2p impl=uram
#pragma HLS bind_storage variable=V_buf type=ram_2p impl=uram
#pragma HLS array_partition variable=K_buf cyclic factor=QK_UNROLL dim=2
#pragma HLS array_partition variable=V_buf cyclic factor=QK_UNROLL dim=2

    data_t Q_row[HEAD_DIM];
#pragma HLS array_partition variable=Q_row complete
    out_t  O_row[HEAD_DIM];
#pragma HLS array_partition variable=O_row cyclic factor=QK_UNROLL

    // -------------------------------------------------------------------
    // Sequential head loop. NOT unrolled: this is what keeps K_buf/V_buf
    // and the online_attention_row datapath as a single reused instance
    // (see file header comment for the parallel alternative).
    // -------------------------------------------------------------------
    heads: for (int h = 0; h < NUM_HEADS; h++) {

        // Column offset of this head's 64 channels within the 768-wide row.
        const int col_off = h * HEAD_DIM;

        // ---- Burst-load this head's K and V slice --------------------
        load_kv: for (int i = 0; i < N_TOKENS; i++) {
            for (int j = 0; j < HEAD_DIM; j++) {
#pragma HLS pipeline II=1
                K_buf[i][j] = K[i * EMBED_DIM + col_off + j];
                V_buf[i][j] = V[i * EMBED_DIM + col_off + j];
            }
        }

        // ---- Run the validated single-pass online core for every row -
        rows: for (int r = 0; r < N_TOKENS; r++) {
            load_q: for (int j = 0; j < HEAD_DIM; j++) {
#pragma HLS pipeline II=1
                Q_row[j] = Q[r * EMBED_DIM + col_off + j];
            }

            online_attention_row(Q_row, K_buf, V_buf, O_row, scale);

            store_o: for (int j = 0; j < HEAD_DIM; j++) {
#pragma HLS pipeline II=1
                O[r * EMBED_DIM + col_off + j] = O_row[j];
            }
        }
    }
}