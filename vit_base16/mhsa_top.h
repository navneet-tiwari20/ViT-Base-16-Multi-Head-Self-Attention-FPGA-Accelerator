#ifndef MHSA_TOP_H
#define MHSA_TOP_H
// ===========================================================================
// mhsa_top.h - Multi-Head Self-Attention (MHSA) top-level for ViT-Base.
//
// Wraps the validated single-head online/PWL-softmax attention engine
// (online_attention_row, unchanged) and drives it once per head over the
// full 768-wide embedding, slicing each head's 64 channels out of the
// row-major [N_TOKENS][EMBED_DIM] tensors.
//
//   Q, K, V : [N_TOKENS][EMBED_DIM]  row-major in DDR   (EMBED_DIM = 768)
//   O       : [N_TOKENS][EMBED_DIM]  row-major in DDR
//
// Head h occupies columns [h*HEAD_DIM, (h+1)*HEAD_DIM) of every row, e.g.
// for ViT-Base (HEAD_DIM=64): head 0 -> cols 0..63, head 1 -> cols 64..127,
// ... head 11 -> cols 704..767.
//
// This is a SEPARATE top function from attention_top() (single head). The
// original single-head IP and its testbench are left completely untouched
// so the already-validated numerics are not put at risk.
//
// Execution model: SEQUENTIAL over heads. The same on-chip K/V buffers and
// the same instance of online_attention_row are reused for all 12 heads
// (the head loop is intentionally NOT unrolled), so resource usage stays
// essentially flat versus the single-head design; only latency scales by
// ~NUM_HEADS. See mhsa_top.cpp header comment for the parallel alternative.
// ===========================================================================

#include "online_attention.h"

extern "C" void mhsa_top(
    const data_t* Q,     // AXI-master: [N_TOKENS][EMBED_DIM] query
    const data_t* K,     // AXI-master: [N_TOKENS][EMBED_DIM] key
    const data_t* V,     // AXI-master: [N_TOKENS][EMBED_DIM] value
    out_t*        O,     // AXI-master: [N_TOKENS][EMBED_DIM] output
    logit_t       scale  // AXI-lite:   1/sqrt(HEAD_DIM), shared by all heads
                          //             (all heads use the same HEAD_DIM=64)
);

#endif // MHSA_TOP_H