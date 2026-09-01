// ===========================================================================
// ViT-Base MHSA Validation Testbench
// Compares HLS mhsa_top() output against a PyTorch golden MHSA reference.
//
// NOTE: update the file paths below to point at your golden-reference
// generator's output. Expected format: N_TOKENS rows of EMBED_DIM
// whitespace-separated doubles per file (same convention as
// tb_attention_top.cpp, just 768 columns instead of 64).
// ===========================================================================

#include <cstdio>
#include <cmath>
#include <fstream>

#include "mhsa_top.h"

static bool load_head_matrix(
    const char* filename,
    double mat[N_TOKENS][HEAD_DIM])
{
    std::ifstream fin(filename);

    if (!fin.is_open()) {
        printf("ERROR: Cannot open %s\n", filename);
        return false;
    }

    for (int i = 0; i < N_TOKENS; i++) {
        for (int j = 0; j < HEAD_DIM; j++) {

            if (!(fin >> mat[i][j])) {
                printf("ERROR: Bad format in %s\n", filename);
                return false;
            }
        }
    }

    fin.close();
    return true;
}

static bool load_matrix(
    const char* filename,
    double mat[N_TOKENS][EMBED_DIM])
{
    std::ifstream fin(filename);

    if (!fin.is_open()) {
        printf("ERROR: Cannot open %s\n", filename);
        return false;
    }

    for (int i = 0; i < N_TOKENS; i++) {
        for (int j = 0; j < EMBED_DIM; j++) {
            if (!(fin >> mat[i][j])) {
                printf("ERROR: Bad format in %s\n", filename);
                return false;
            }
        }
    }

    fin.close();
    return true;
}
int main()
{
    printf("========== MHSA TB START ==========\n");

    static data_t Q[N_TOKENS * EMBED_DIM];
    static data_t K[N_TOKENS * EMBED_DIM];
    static data_t V[N_TOKENS * EMBED_DIM];

    static out_t O[N_TOKENS * EMBED_DIM];

    static double Qd[N_TOKENS][EMBED_DIM];
    static double Kd[N_TOKENS][EMBED_DIM];
    static double Vd[N_TOKENS][EMBED_DIM];

    static double Golden[N_TOKENS][EMBED_DIM];

    const double scale = 1.0 / std::sqrt((double)HEAD_DIM);

    // =====================================================
    // Load PyTorch-generated files (all heads, full 768 width)
    // =====================================================
    if (!load_matrix("C:/projects/vit_base16/q.txt", Qd))
    return 1;

if (!load_matrix("C:/projects/vit_base16/k.txt", Kd))
    return 1;

if (!load_matrix("C:/projects/vit_base16/v.txt", Vd))
    return 1;

if (!load_matrix("C:/projects/vit_base16/golden_output.txt", Golden))
    return 1;

    printf ("Input files loaded successfully\n");

    // =====================================================
    // Convert double -> fixed-point
    // =====================================================
    for (int i = 0; i < N_TOKENS; i++) {
        for (int j = 0; j < EMBED_DIM; j++) {
            Q[i * EMBED_DIM + j] = (data_t)Qd[i][j];
            K[i * EMBED_DIM + j] = (data_t)Kd[i][j];
            V[i * EMBED_DIM + j] = (data_t)Vd[i][j];
        }
    }

    printf("Calling mhsa_top...\n");

    mhsa_top(Q, K, V, O, (logit_t)scale);

    printf("Returned from mhsa_top\n");

    // =====================================================
    // Compare against PyTorch golden output (all 12 heads)
    // =====================================================
    double max_e = 0.0;
    double mean_e = 0.0;
    int max_r = -1, max_c = -1;
    long count = 0;

    for (int r = 0; r < N_TOKENS; r++) {
        for (int j = 0; j < EMBED_DIM; j++) {
            double hw = (double)O[r * EMBED_DIM + j];
            double sw = Golden[r][j];
            double e  = std::fabs(hw - sw);

            mean_e += e;
            count++;

            if (e > max_e) {
                max_e = e;
                max_r = r;
                max_c = j;
            }
        }
    }
    mean_e /= (double)count;


    printf("\n");
printf("Bad head = %d\n", max_c / HEAD_DIM);
printf("Bad channel = %d\n", max_c % HEAD_DIM);
printf("Bad token = %d\n", max_r);

int h = max_c / HEAD_DIM;
int c = max_c % HEAD_DIM;

printf("\n===== TOKEN %d HEAD %d =====\n",
       max_r,
       h);

for(int j=0;j<HEAD_DIM;j++)
{
    int col = h*HEAD_DIM + j;

    printf("%2d HW=%f GOLD=%f\n",
           j,
           (double)O[max_r*EMBED_DIM + col],
           Golden[max_r][col]);
}

for(int h=0; h<12; h++)
{
    double head_err = 0.0;

    for(int r=0;r<N_TOKENS;r++)
    {
        for(int d=0;d<HEAD_DIM;d++)
        {
            int c = h*HEAD_DIM + d;

            head_err += fabs(
                (double)O[r*EMBED_DIM+c]
                - Golden[r][c]
            );
        }
    }

    printf("HEAD %d MEAN ERROR = %f\n",
           h,
           head_err/(N_TOKENS*HEAD_DIM));
}

    printf("\n====================================\n");
    printf("PyTorch Golden MHSA Validation\n");
    printf("====================================\n");
    printf("Worst Error Location = (%d,%d)  [head %d, channel %d]\n",
           max_r, max_c, max_c / HEAD_DIM, max_c % HEAD_DIM);
    printf("Golden = %f\n", Golden[max_r][max_c]);
    printf("HW     = %f\n", (double)O[max_r * EMBED_DIM + max_c]);
    printf("Max Error  = %.10e\n", max_e);
    printf("Mean Error = %.10e\n", mean_e);

    if (mean_e < 5e-2) {
        printf("TEST PASSED\n");
        return 0;
    } else {
        printf("TEST FAILED\n");
        return 1;
    }
}