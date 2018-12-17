/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 * File: sum.c
 *
 * MATLAB Coder version            : 4.0
 * C/C++ source code generated on  : 10-Dec-2018 14:59:12
 */

/* Include Files */
#include "lenetSynthMatlab_fixpt.h"
#include "sum.h"

/* Function Definitions */

/*
 * Arguments    : const int X[5]
 * Return Type  : int
 */
int b_sum(const int X[5])
{
  int Y;
  int i20;
  int k;
  i20 = X[0];
  if ((i20 & 536870912) != 0) {
    Y = i20 | -536870912;
  } else {
    Y = i20 & 536870911;
  }

  for (k = 0; k < 4; k++) {
    i20 = Y + X[k + 1];
    if ((i20 & 536870912) != 0) {
      Y = i20 | -536870912;
    } else {
      Y = i20 & 536870911;
    }
  }

  return Y;
}

/*
 * Arguments    : const int X[150]
 *                long Y[30]
 * Return Type  : void
 */
void c_sum(const int X[150], long Y[30])
{
  int ix;
  int iy;
  int i21;
  boolean_T b1;
  int i;
  int ixstart;
  long s;
  boolean_T b2;
  int k;
  ix = -1;
  iy = -1;
  i21 = 0;
  b1 = true;
  for (i = 0; i < 30; i++) {
    ixstart = ix + 1;
    ix++;
    s = X[(ixstart % 5 * 5 + ixstart / 5 % 5) * 6 + ixstart / 5 / 5];
    if ((s & 17179869184L) != 0L) {
      s |= -17179869184L;
    } else {
      s &= 17179869183L;
    }

    b2 = true;
    ixstart = 0;
    for (k = 0; k < 4; k++) {
      ix++;
      if ((ix < 0) || (ix >= 150)) {
        ixstart = 0;
        b2 = true;
      } else if (b2) {
        b2 = false;
        ixstart = (ix % 5 * 5 + ix / 5 % 5) * 6 + ix / 5 / 5;
      } else if (ixstart > 2147483617) {
        ixstart = (ix % 5 * 5 + ix / 5 % 5) * 6 + ix / 5 / 5;
      } else {
        ixstart += 30;
        if (ixstart > 149) {
          ixstart -= 144;
          if (ixstart > 29) {
            ixstart -= 29;
          }
        }
      }

      s += X[ixstart];
      if ((s & 17179869184L) != 0L) {
        s |= -17179869184L;
      } else {
        s &= 17179869183L;
      }
    }

    iy++;
    if ((iy < 0) || (iy >= 30)) {
      i21 = 0;
      b1 = true;
    } else if (b1) {
      b1 = false;
      i21 = iy % 5 * 6 + iy / 5;
    } else if (i21 > 2147483641) {
      i21 = iy % 5 * 6 + iy / 5;
    } else {
      i21 += 6;
      if (i21 > 29) {
        i21 -= 29;
      }
    }

    Y[i21] = s;
  }
}

/*
 * Arguments    : const long X[30]
 *                long Y[6]
 * Return Type  : void
 */
void d_sum(const long X[30], long Y[6])
{
  int ix;
  int iy;
  int i;
  int ixstart;
  long s;
  boolean_T b3;
  int k;
  ix = -1;
  iy = -1;
  for (i = 0; i < 6; i++) {
    ixstart = ix + 1;
    ix++;
    s = X[ixstart % 5 * 6 + ixstart / 5];
    if ((s & 137438953472L) != 0L) {
      s |= -137438953472L;
    } else {
      s &= 137438953471L;
    }

    b3 = true;
    ixstart = 0;
    for (k = 0; k < 4; k++) {
      ix++;
      if ((ix < 0) || (ix >= 30)) {
        ixstart = 0;
        b3 = true;
      } else if (b3) {
        b3 = false;
        ixstart = ix % 5 * 6 + ix / 5;
      } else if (ixstart > 2147483641) {
        ixstart = ix % 5 * 6 + ix / 5;
      } else {
        ixstart += 6;
        if (ixstart > 29) {
          ixstart -= 29;
        }
      }

      s += X[ixstart];
      if ((s & 137438953472L) != 0L) {
        s |= -137438953472L;
      } else {
        s &= 137438953471L;
      }
    }

    iy++;
    Y[iy] = s;
  }
}

/*
 * Arguments    : const long X[6]
 * Return Type  : long
 */
long e_sum(const long X[6])
{
  long Y;
  int ix;
  long i22;
  int k;
  ix = 0;
  i22 = X[0];
  if ((i22 & 1099511627776L) != 0L) {
    Y = i22 | -1099511627776L;
  } else {
    Y = i22 & 1099511627775L;
  }

  for (k = 0; k < 5; k++) {
    ix++;
    i22 = Y + X[ix];
    if ((i22 & 1099511627776L) != 0L) {
      Y = i22 | -1099511627776L;
    } else {
      Y = i22 & 1099511627775L;
    }
  }

  return Y;
}

/*
 * Arguments    : const int X[400]
 *                long Y[80]
 * Return Type  : void
 */
void f_sum(const int X[400], long Y[80])
{
  int ix;
  int iy;
  int i23;
  boolean_T b4;
  int i;
  int ixstart;
  long s;
  boolean_T b5;
  int k;
  ix = -1;
  iy = -1;
  i23 = 0;
  b4 = true;
  for (i = 0; i < 80; i++) {
    ixstart = ix + 1;
    ix++;
    s = X[((ixstart % 5 * 5 + ixstart / 5 % 5) << 4) + ixstart / 5 / 5];
    if ((s & 17179869184L) != 0L) {
      s |= -17179869184L;
    } else {
      s &= 17179869183L;
    }

    b5 = true;
    ixstart = 0;
    for (k = 0; k < 4; k++) {
      ix++;
      if ((ix < 0) || (ix >= 400)) {
        ixstart = 0;
        b5 = true;
      } else if (b5) {
        b5 = false;
        ixstart = ((ix % 5 * 5 + ix / 5 % 5) << 4) + ix / 5 / 5;
      } else if (ixstart > 2147483567) {
        ixstart = ((ix % 5 * 5 + ix / 5 % 5) << 4) + ix / 5 / 5;
      } else {
        ixstart += 80;
        if (ixstart > 399) {
          ixstart -= 384;
          if (ixstart > 79) {
            ixstart -= 79;
          }
        }
      }

      s += X[ixstart];
      if ((s & 17179869184L) != 0L) {
        s |= -17179869184L;
      } else {
        s &= 17179869183L;
      }
    }

    iy++;
    if ((iy < 0) || (iy >= 80)) {
      i23 = 0;
      b4 = true;
    } else if (b4) {
      b4 = false;
      i23 = ((iy % 5) << 4) + iy / 5;
    } else if (i23 > 2147483631) {
      i23 = ((iy % 5) << 4) + iy / 5;
    } else {
      i23 += 16;
      if (i23 > 79) {
        i23 -= 79;
      }
    }

    Y[i23] = s;
  }
}

/*
 * Arguments    : const long X[80]
 *                long Y[16]
 * Return Type  : void
 */
void g_sum(const long X[80], long Y[16])
{
  int ix;
  int iy;
  int i;
  int ixstart;
  long s;
  boolean_T b6;
  int k;
  ix = -1;
  iy = -1;
  for (i = 0; i < 16; i++) {
    ixstart = ix + 1;
    ix++;
    s = X[((ixstart % 5) << 4) + ixstart / 5];
    if ((s & 137438953472L) != 0L) {
      s |= -137438953472L;
    } else {
      s &= 137438953471L;
    }

    b6 = true;
    ixstart = 0;
    for (k = 0; k < 4; k++) {
      ix++;
      if ((ix < 0) || (ix >= 80)) {
        ixstart = 0;
        b6 = true;
      } else if (b6) {
        b6 = false;
        ixstart = ((ix % 5) << 4) + ix / 5;
      } else if (ixstart > 2147483631) {
        ixstart = ((ix % 5) << 4) + ix / 5;
      } else {
        ixstart += 16;
        if (ixstart > 79) {
          ixstart -= 79;
        }
      }

      s += X[ixstart];
      if ((s & 137438953472L) != 0L) {
        s |= -137438953472L;
      } else {
        s &= 137438953471L;
      }
    }

    iy++;
    Y[iy] = s;
  }
}

/*
 * Arguments    : const long X[16]
 * Return Type  : long
 */
long h_sum(const long X[16])
{
  long Y;
  int ix;
  long i24;
  int k;
  ix = 0;
  i24 = X[0];
  if ((i24 & 2199023255552L) != 0L) {
    Y = i24 | -2199023255552L;
  } else {
    Y = i24 & 2199023255551L;
  }

  for (k = 0; k < 15; k++) {
    ix++;
    i24 = Y + X[ix];
    if ((i24 & 2199023255552L) != 0L) {
      Y = i24 | -2199023255552L;
    } else {
      Y = i24 & 2199023255551L;
    }
  }

  return Y;
}

/*
 * Arguments    : const int X[25]
 *                int Y[5]
 * Return Type  : void
 */
void sum(const int X[25], int Y[5])
{
  int ix;
  int iy;
  int i;
  int ixstart;
  int i19;
  boolean_T b0;
  int k;
  ix = -1;
  iy = -1;
  for (i = 0; i < 5; i++) {
    ixstart = ix + 1;
    ix++;
    i19 = X[ixstart % 5 * 5 + ixstart / 5];
    if ((i19 & 67108864) != 0) {
      ixstart = i19 | -67108864;
    } else {
      ixstart = i19 & 67108863;
    }

    b0 = true;
    i19 = 0;
    for (k = 0; k < 4; k++) {
      ix++;
      if ((ix < 0) || (ix >= 25)) {
        i19 = 0;
        b0 = true;
      } else if (b0) {
        b0 = false;
        i19 = ix % 5 * 5 + ix / 5;
      } else if (i19 > 2147483642) {
        i19 = ix % 5 * 5 + ix / 5;
      } else {
        i19 += 5;
        if (i19 > 24) {
          i19 -= 24;
        }
      }

      ixstart += X[i19];
      if ((ixstart & 67108864) != 0) {
        ixstart |= -67108864;
      } else {
        ixstart &= 67108863;
      }
    }

    iy++;
    Y[iy] = ixstart;
  }
}

/*
 * File trailer for sum.c
 *
 * [EOF]
 */
