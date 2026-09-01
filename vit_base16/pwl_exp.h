#ifndef PWL_EXP_H
#define PWL_EXP_H
// ===========================================================================
// Error-compensated piecewise-linear exp() for online softmax
// ---------------------------------------------------------------------------
// Key differences from the baseline template (Paper_Template / HLS guide):
//   1. Range is [-8, 0] NOT [-4, 4]. Online/3-pass softmax subtracts the row
//      max first, so the argument to exp() is ALWAYS <= 0. Approximating over
//      [-4,4] wasted half the LUT on inputs that never occur. Here every
//      segment is spent where it matters -> same LUT size, ~2x finer.
//   2. O(1) branch-free segment index via a single shift (uniform breakpoints
//      snapped to power-of-two width 0.5), so II=1 is trivially met.
//   3. Optional additive residual LUT (RES_LUT) that halves the mean error for
//      one extra add and a tiny ROM (no multiplier). Enable with PWL_COMPENSATE.
//
// Constants are emitted by model/pwl_softmax_model.py (the golden reference),
// so software and hardware are bit-consistent.
// ===========================================================================

// All fixed-point types and PWL constants come from the single config header.
#include "attention_config.h"

// exp() at the 17 uniform breakpoints of [-8, 0]
const exp_t EXP_LUT[PWL_NUM_SEG + 1] = {
    0.00033546f, 0.00055308f, 0.00091188f, 0.00150344f, 0.00247875f,
    0.00408677f, 0.00673795f, 0.01110900f, 0.01831564f, 0.03019738f,
    0.04978707f, 0.08208500f, 0.13533528f, 0.22313016f, 0.36787944f,
    0.60653066f, 1.00000000f
};

// Mean residual (exact - linear) per segment; additive correction.
const exp_t RES_LUT[PWL_NUM_SEG] = {
    -0.00001016f, -0.00001675f, -0.00002761f, -0.00004553f, -0.00007506f,
    -0.00012375f, -0.00020403f, -0.00033639f, -0.00055461f, -0.00091440f,
    -0.00150760f, -0.00248561f, -0.00409807f, -0.00675658f, -0.01113972f,
    -0.01836629f
};

// exp(x) for x in (-inf, 0]. Values below -8 flush to ~0.
inline exp_t pwl_exp(logit_t x) {
#pragma HLS inline
#pragma HLS bind_storage variable=EXP_LUT type=rom_1p impl=lutram
#pragma HLS bind_storage variable=RES_LUT type=rom_1p impl=lutram
    if (x <= (logit_t)PWL_X_MIN) return (exp_t)EXP_LUT[0];
    if (x >= (logit_t)0.0f)      return (exp_t)1.0f;

    // segment = floor((x - (-8)) / 0.5) = (x + 8) * 2  -> multiply by 2 == shift
    ap_fixed<20, 6> pos = (ap_fixed<20, 6>)(x - (logit_t)PWL_X_MIN);
    ap_uint<5> seg = (ap_uint<5>)(pos * 2);      // 0..15, O(1), no divide
    if (seg > PWL_NUM_SEG - 1) seg = PWL_NUM_SEG - 1;

    exp_t y0 = EXP_LUT[seg];
    exp_t y1 = EXP_LUT[seg + 1];
    // t = fractional position within the segment, in [0,1)
    ap_fixed<18, 1> t = (ap_fixed<18, 1>)((pos * 2) - (ap_fixed<20, 6>)seg);
    exp_t y = y0 + (exp_t)(t * (y1 - y0));
#if PWL_COMPENSATE
    y += RES_LUT[seg];
#endif
    return y;
}

#endif // PWL_EXP_H
