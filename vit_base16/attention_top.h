#ifndef ATTENTION_TOP_H
#define ATTENTION_TOP_H
// ===========================================================================
// Top-level, synthesizable entry point for the Online-PWL Softmax Attention
// engine. This is the function Vitis HLS turns into an IP with AXI interfaces
// so the PYNQ-ZU PS (Cortex-A53) can drive it over the AXI-Lite control bus
// and stream Q/K/V/O through AXI-master ports to DDR.
//
// One call processes a full attention block.
// Dimensions are defined in attention_config.h
//   Q, K, V : [N_TOKENS][EMBED_DIM]row-major in DDR
//   O       : [N_TOKENS][EMBED_DIM] row-major in DDR
// It loops over the N query rows, calling the single-pass online core for
// each row. K and V are burst-loaded to on-chip memory once and reused across
// all query rows (they fit easily in the ZU5EG's 18 Mb URAM).
// ===========================================================================

#include "online_attention.h"

extern "C" void attention_top(
    const data_t* Q,     // AXI-master: query  matrix [N_TOKENS][HEAD_DIM]
    const data_t* K,     // AXI-master: key    matrix [N_TOKENS][HEAD_DIM]
    const data_t* V,     // AXI-master: value  matrix [N_TOKENS][HEAD_DIM]
    out_t*        O,      // AXI-master: output matrix [N_TOKENS][HEAD_DIM]
    logit_t       scale  // AXI-lite:   1/sqrt(HEAD_DIM)
);

#endif // ATTENTION_TOP_H
