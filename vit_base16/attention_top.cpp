// ===========================================================================
// attention_top.cpp - AXI wrapper around the single-pass online attention core
// Target: xczu5eg-sfvc784-1-e (PYNQ-ZU), Vitis HLS 2025.2
// ===========================================================================
#include "attention_top.h"

// On-chip storage for K and V (one head). DeiT-Tiny: 197 x 64 x 16-bit ~= 25 KB
// each -> mapped to URAM (18 Mb available), leaving BRAM for other blocks.
static data_t K_buf[N_TOKENS][HEAD_DIM];
static data_t V_buf[N_TOKENS][HEAD_DIM];

extern "C" void attention_top(
    const data_t* Q,
    const data_t* K,
    const data_t* V,
    out_t*        O,
    logit_t       scale
) {
// ---- Interface pragmas ----------------------------------------------------
// Four independent AXI-master ports (separate bundles => concurrent bursts).
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

    // K and V reused by every query row -> keep them in URAM.
#pragma HLS bind_storage variable=K_buf type=ram_2p impl=uram
#pragma HLS bind_storage variable=V_buf type=ram_2p impl=uram
    // Partition the head-dim axis so the online core's unrolled inner loops
    // get parallel access without bank conflicts.
#pragma HLS array_partition variable=K_buf cyclic factor=QK_UNROLL dim=2
#pragma HLS array_partition variable=V_buf cyclic factor=QK_UNROLL dim=2

    // ---- Burst-load K and V once ------------------------------------------
    load_kv: for (int i = 0; i < N_TOKENS; i++) {
        for (int j = 0; j < HEAD_DIM; j++) {
#pragma HLS pipeline II=1
            K_buf[i][j] = K[i * HEAD_DIM + j];
            V_buf[i][j] = V[i * HEAD_DIM + j];
        }
    }

    // ---- Process each query row through the single-pass online core -------
    data_t Q_row[HEAD_DIM];
#pragma HLS array_partition variable=Q_row complete
    out_t  O_row[HEAD_DIM];
#pragma HLS array_partition variable=O_row cyclic factor=QK_UNROLL

    rows: for (int r = 0; r < N_TOKENS; r++) {
        load_q: for (int j = 0; j < HEAD_DIM; j++) {
#pragma HLS pipeline II=1
            Q_row[j] = Q[r * HEAD_DIM + j];
        }        online_attention_row(Q_row, K_buf, V_buf, O_row, scale);

        store_o: for (int j = 0; j < HEAD_DIM; j++) {
#pragma HLS pipeline II=1
            O[r * HEAD_DIM + j] = O_row[j];
        }
    }
}