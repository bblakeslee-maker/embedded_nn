/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 * File: sum.c
 *
 * MATLAB Coder version            : 4.0
 * C/C++ source code generated on  : 09-Dec-2018 12:31:10
 */

/* Include Files */
#include "lenetSynthMatlab.h"
#include "sum.h"

/* Function Definitions */

/*
 * Arguments    : const float x[5]
 * Return Type  : float
 */
float b_sum(const float x[5])
{
  float y;
  int k;
  y = x[0];
  for (k = 0; k < 4; k++) {
    y += x[k + 1];
  }

  return y;
}

/*
 * Arguments    : const float x[150]
 *                float y[30]
 * Return Type  : void
 */
void c_sum(const float x[150], float y[30])
{
  int k;
  int b_k;
  int c_k;
  for (k = 0; k < 5; k++) {
    for (b_k = 0; b_k < 6; b_k++) {
      y[b_k + 6 * k] = x[b_k + 6 * k];
    }
  }

  for (k = 0; k < 4; k++) {
    for (b_k = 0; b_k < 5; b_k++) {
      for (c_k = 0; c_k < 6; c_k++) {
        y[c_k + 6 * b_k] += x[(c_k + 6 * b_k) + 30 * (k + 1)];
      }
    }
  }
}

/*
 * Arguments    : const float x[30]
 *                float y[6]
 * Return Type  : void
 */
void d_sum(const float x[30], float y[6])
{
  int k;
  int b_k;
  for (k = 0; k < 6; k++) {
    y[k] = x[k];
  }

  for (k = 0; k < 4; k++) {
    for (b_k = 0; b_k < 6; b_k++) {
      y[b_k] += x[b_k + 6 * (k + 1)];
    }
  }
}

/*
 * Arguments    : const float x[6]
 * Return Type  : float
 */
float e_sum(const float x[6])
{
  float y;
  int k;
  y = x[0];
  for (k = 0; k < 5; k++) {
    y += x[k + 1];
  }

  return y;
}

/*
 * Arguments    : const float x[400]
 *                float y[80]
 * Return Type  : void
 */
void f_sum(const float x[400], float y[80])
{
  int k;
  int b_k;
  int c_k;
  for (k = 0; k < 5; k++) {
    for (b_k = 0; b_k < 16; b_k++) {
      y[b_k + (k << 4)] = x[b_k + (k << 4)];
    }
  }

  for (k = 0; k < 4; k++) {
    for (b_k = 0; b_k < 5; b_k++) {
      for (c_k = 0; c_k < 16; c_k++) {
        y[c_k + (b_k << 4)] += x[(c_k + (b_k << 4)) + 80 * (k + 1)];
      }
    }
  }
}

/*
 * Arguments    : const float x[80]
 *                float y[16]
 * Return Type  : void
 */
void g_sum(const float x[80], float y[16])
{
  int k;
  int b_k;
  for (k = 0; k < 16; k++) {
    y[k] = x[k];
  }

  for (k = 0; k < 4; k++) {
    for (b_k = 0; b_k < 16; b_k++) {
      y[b_k] += x[b_k + ((k + 1) << 4)];
    }
  }
}

/*
 * Arguments    : const float x[16]
 * Return Type  : float
 */
float h_sum(const float x[16])
{
  float y;
  int k;
  y = x[0];
  for (k = 0; k < 15; k++) {
    y += x[k + 1];
  }

  return y;
}

/*
 * Arguments    : const float x[25]
 *                float y[5]
 * Return Type  : void
 */
void sum(const float x[25], float y[5])
{
  int k;
  int b_k;
  for (k = 0; k < 5; k++) {
    y[k] = x[k];
  }

  for (k = 0; k < 4; k++) {
    for (b_k = 0; b_k < 5; b_k++) {
      y[b_k] += x[b_k + 5 * (k + 1)];
    }
  }
}

/*
 * File trailer for sum.c
 *
 * [EOF]
 */
