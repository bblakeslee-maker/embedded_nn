/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 * File: mtimes.c
 *
 * MATLAB Coder version            : 4.0
 * C/C++ source code generated on  : 10-Dec-2018 14:59:12
 */

/* Include Files */
#include "lenetSynthMatlab_fixpt.h"
#include "mtimes.h"

/* Function Definitions */

/*
 * Arguments    : const short a0[840]
 *                const short b0[84]
 *                long c[10]
 * Return Type  : void
 */
void b_mtimes(const short a0[840], const short b0[84], long c[10])
{
  int l;
  int k;
  long i26;
  for (l = 0; l < 10; l++) {
    c[l] = 0L;
    for (k = 0; k < 84; k++) {
      i26 = c[l] + a0[k + 84 * l] * b0[k];
      if ((i26 & 274877906944L) != 0L) {
        c[l] = i26 | -274877906944L;
      } else {
        c[l] = i26 & 274877906943L;
      }
    }
  }
}

/*
 * Arguments    : const short a0[10080]
 *                const unsigned short b0[120]
 *                long c[84]
 * Return Type  : void
 */
void mtimes(const short a0[10080], const unsigned short b0[120], long c[84])
{
  int l;
  int k;
  long i25;
  for (l = 0; l < 84; l++) {
    c[l] = 0L;
    for (k = 0; k < 120; k++) {
      i25 = c[l] + a0[k + 120 * l] * b0[k];
      if ((i25 & 274877906944L) != 0L) {
        c[l] = i25 | -274877906944L;
      } else {
        c[l] = i25 & 274877906943L;
      }
    }
  }
}

/*
 * File trailer for mtimes.c
 *
 * [EOF]
 */
