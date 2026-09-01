#ifndef ATTENTION_CONFIG_H
#define ATTENTION_CONFIG_H
// ===========================================================================
// attention_config.h - SINGLE SOURCE OF TRUTH for all compile-time parameters.
// Every HLS source, the testbenches, and the reproducibility guide reference
// the values here. If you change a number, rerun BOTH model scripts and Vitis
// csim, and update the paper tables (see docs/reproducibility.md).
//
// Target device: xczu5eg-sfvc784-1-e (PYNQ-ZU)
// Reference model: DeiT-Tiny  (embed=192, heads=3, head_dim=64, tokens=197)
// ===========================================================================

#include <ap_fixed.h>

// ---- Problem dimensions ---------------------------------------------------
// 197 = 196 patch tokens (14x14 @ 16x16 patches, 224x224 image) + 1 CLS token.  
#define N_TOKENS   197

#define HEAD_DIM   64

#define NUM_HEADS  12

#define EMBED_DIM  (NUM_HEADS * HEAD_DIM)

#define MAX_TOKENS     197
#define MAX_HEAD_DIM   64
#define MAX_HEADS      12
#define MAX_EMBED_DIM  768

#define QK_UNROLL 16// Q.K MACs issued per cycle (DSP vs latency knob)

// ---- Fixed-point formats (Q<INT>.<FRAC>, total = W bits) ------------------
// Chosen by the accuracy sweep in model/fixed_point_model.py. Total width is
// the first template arg, integer bits the second (sign bit included).
typedef ap_fixed<16, 4>  data_t;    // Q4.12  Q/K/V activations, signed
typedef ap_fixed<24, 12, AP_TRN, AP_SAT>  logit_t;  // Q10.12  scaled Q.K logit, signed
                                                     // Widened from ap_fixed<20,8>: single-head
                                                     // (head 0) validation never exercised a
                                                     // scaled logit large enough to saturate the
                                                     // old +-128 range, but head 4 does (token 59
                                                     // MHSA failure -- see mhsa_top validation
                                                     // notes). Fractional bits held at 12 (no
                                                     // precision loss) while integer bits go
                                                     // 8->12, extending magnitude headroom from
                                                     // ~128 to ~2048, comfortably past the ~512
                                                     // theoretical worst case (qk_acc_t max ~4096
                                                     // x scale 0.125), with margin for other heads.
typedef ap_fixed<32, 4,  AP_TRN, AP_SAT> exp_t;     // Q2.22  exp() output in (0,1]
typedef ap_fixed<32, 10, AP_TRN, AP_SAT> acc_t;     // Q8.16  denominator / V accumulator
typedef ap_fixed<32, 10, AP_TRN, AP_SAT> out_t;     // Q8.16  attention output

// Wide accumulator for the RAW (pre-scale) Q.K dot product.
// Worst case: HEAD_DIM (64) terms, each up to |data_t_max|^2 ~= 64
// in magnitude -> sum can reach ~4096. 16 integer bits (incl. sign)
// gives headroom to ~32768, and 24 fractional bits exactly preserve
// the full precision of a data_t*data_t product (12+12 frac bits),
// so no precision is lost versus the original narrow accumulator.
// This MUST be wide+saturating: the previous logit_t accumulator
// (ap_fixed<20,8>, default AP_WRAP) silently wrapped around for any
// token whose raw dot product exceeded +-128, corrupting the running
// softmax max for that entire row (root cause of the row 65 / row 133
// catastrophic-error rows).
typedef ap_fixed<40, 16, AP_TRN, AP_SAT> qk_acc_t;

// ---- PWL exponential (see pwl_exp.h + model/pwl_softmax_model.py) ----------
#define PWL_NUM_SEG    16
#define PWL_X_MIN      (-8.0f)      // softmax subtracts row-max => arg <= 0
#define PWL_SEG_W      (0.5f)       // 8.0/16, power-of-two friendly
#define PWL_COMPENSATE 1            // 1 = residual-correction LUT enabled

// ---- Clock target (for HLS create_clock / Vivado) -------------------------
#define TARGET_CLOCK_NS 4.0f        // 250 MHz stretch; use 5.0 (200 MHz) if timing fails

#endif // ATTENTION_CONFIG_H