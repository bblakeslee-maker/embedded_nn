/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 * File: max.c
 *
 * MATLAB Coder version            : 4.0
 * C/C++ source code generated on  : 10-Dec-2018 14:59:12
 */

/* Include Files */
#include "lenetSynthMatlab_fixpt.h"
#include "max.h"

/* Function Definitions */

/*
 * Arguments    : const short b_y0[4704]
 *                short maxval[4704]
 * Return Type  : void
 */
void b_max(const short b_y0[4704], short maxval[4704])
{
  int k;
  int b_k;
  int c_k;
  for (k = 0; k < 28; k++) {
    for (b_k = 0; b_k < 28; b_k++) {
      for (c_k = 0; c_k < 6; c_k++) {
        if (0 < b_y0[(c_k + 6 * b_k) + 168 * k]) {
          maxval[(c_k + 6 * b_k) + 168 * k] = b_y0[(c_k + 6 * b_k) + 168 * k];
        } else {
          maxval[(c_k + 6 * b_k) + 168 * k] = 0;
        }
      }
    }
  }
}

/*
 * Arguments    : const unsigned short x0[4]
 *                unsigned short maxval[2]
 * Return Type  : void
 */
void c_max(const unsigned short x0[4], unsigned short maxval[2])
{
  int j;
  unsigned short b_maxval;
  for (j = 0; j < 2; j++) {
    b_maxval = x0[j];
    if (x0[j] < x0[2 + j]) {
      b_maxval = x0[2 + j];
    }

    maxval[j] = b_maxval;
  }
}

/*
 * Arguments    : const short b_y0[1600]
 *                short maxval[1600]
 * Return Type  : void
 */
void d_max(const short b_y0[1600], short maxval[1600])
{
  int k;
  int b_k;
  int c_k;
  for (k = 0; k < 10; k++) {
    for (b_k = 0; b_k < 10; b_k++) {
      for (c_k = 0; c_k < 16; c_k++) {
        if (0 < b_y0[(c_k + (b_k << 4)) + 160 * k]) {
          maxval[(c_k + (b_k << 4)) + 160 * k] = b_y0[(c_k + (b_k << 4)) + 160 *
            k];
        } else {
          maxval[(c_k + (b_k << 4)) + 160 * k] = 0;
        }
      }
    }
  }
}

/*
 * Arguments    : const unsigned short x0[4]
 *                unsigned short maxval[2]
 * Return Type  : void
 */
void e_max(const unsigned short x0[4], unsigned short maxval[2])
{
  int j;
  unsigned short b_maxval;
  for (j = 0; j < 2; j++) {
    b_maxval = x0[j];
    if (x0[j] < x0[2 + j]) {
      b_maxval = x0[2 + j];
    }

    maxval[j] = b_maxval;
  }
}

/*
 * Arguments    : const short b_y0[120]
 *                short maxval[120]
 * Return Type  : void
 */
void f_max(const short b_y0[120], short maxval[120])
{
  int k;
  for (k = 0; k < 120; k++) {
    if (0 < b_y0[k]) {
      maxval[k] = b_y0[k];
    } else {
      maxval[k] = 0;
    }
  }
}

/*
 * File trailer for max.c
 *
 * [EOF]
 */
