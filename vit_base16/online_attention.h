#ifndef ONLINE_ATTENTION_H
#define ONLINE_ATTENTION_H

#include "pwl_exp.h"
#include <hls_stream.h>

// exp(a - b), argument always <= 0
inline exp_t exp_diff(logit_t a, logit_t b)
{
#pragma HLS inline
    return pwl_exp((logit_t)(a - b));
}

// ---------------------------------------------------------------------------
// Attention for ONE query row
// ---------------------------------------------------------------------------
inline void online_attention_row(
    const data_t Q[HEAD_DIM],
    const data_t K[N_TOKENS][HEAD_DIM],
    const data_t V[N_TOKENS][HEAD_DIM],
    out_t out[HEAD_DIM],
    logit_t scale
)
{
#pragma HLS array_partition variable=Q complete

    acc_t   acc[HEAD_DIM];
#pragma HLS array_partition variable=acc complete

    logit_t m = (logit_t)PWL_X_MIN * 4;   // -32
    acc_t   d = (acc_t)0;

    // initialize accumulators
    init:
    for (int j = 0; j < HEAD_DIM; j++)
    {
#pragma HLS unroll
        acc[j] = (acc_t)0;
    }

    // ------------------------------------------------------
    // Streaming online softmax
    // ------------------------------------------------------
    tokens:
    for (int i = 0; i < N_TOKENS; i++)
    {
#pragma HLS pipeline II=1

        // Q.K  -- accumulate the RAW dot product in a wide, saturating
        // type. Do NOT accumulate directly into logit_t: the raw
        // (pre-scale) sum over HEAD_DIM terms can exceed logit_t's
        // +-128 range, and ap_fixed defaults to wrap-around on
        // overflow, which silently corrupts the value (and, via the
        // running max `m`, the rest of the row).
        qk_acc_t s_acc = (qk_acc_t)0;

        qk:
        for (int j = 0; j < HEAD_DIM; j++)
        {
#pragma HLS unroll factor=QK_UNROLL
            s_acc += (qk_acc_t)(Q[j] * K[i][j]);
        }

        // Scale while still in the wide type, THEN narrow to logit_t.
        // By this point the value is back in the small range the rest
        // of the pipeline (and the PWL exp's [-8,0] domain assumption)
        // expects, so the narrowing cast is safe under normal data.
        // logit_t is now AP_SAT as a safety net in case of outliers.
        logit_t s = (logit_t)(s_acc * scale);

        // Online softmax update
        logit_t m_new = (s > m) ? s : m;

        exp_t corr = exp_diff(m, m_new);
        exp_t p    = exp_diff(s, m_new);

        d = (acc_t)(d * corr) + (acc_t)p;

        va:
        for (int j = 0; j < HEAD_DIM; j++)
        {
#pragma HLS unroll
            acc[j] =
                (acc_t)(acc[j] * corr)
              + (acc_t)(p * V[i][j]);
        }

        m = m_new;
    }

    // ------------------------------------------------------
    // Normalize
    // ------------------------------------------------------
    acc_t inv_d;

    if (d > (acc_t)1e-6)
        inv_d = (acc_t)(1.0f / (float)d);
    else
        inv_d = (acc_t)0;

    norm:
    for (int j = 0; j < HEAD_DIM; j++)
    {
#pragma HLS unroll
        out[j] = (out_t)(acc[j] * inv_d);
    }
}

#endif // ONLINE_ATTENTION_H