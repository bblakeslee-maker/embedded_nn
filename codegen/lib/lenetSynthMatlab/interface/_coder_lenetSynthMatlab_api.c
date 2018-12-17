/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 * File: _coder_lenetSynthMatlab_api.c
 *
 * MATLAB Coder version            : 4.0
 * C/C++ source code generated on  : 09-Dec-2018 12:31:10
 */

/* Include Files */
#include <string.h>
#include "tmwtypes.h"
#include "_coder_lenetSynthMatlab_api.h"
#include "_coder_lenetSynthMatlab_mex.h"

/* Variable Definitions */
emlrtCTX emlrtRootTLSGlobal = NULL;
emlrtContext emlrtContextGlobal = { true,/* bFirstTime */
  false,                               /* bInitialized */
  131466U,                             /* fVersionInfo */
  NULL,                                /* fErrorFunction */
  "lenetSynthMatlab",                  /* fFunctionName */
  NULL,                                /* fRTCallStack */
  false,                               /* bDebugMode */
  { 2045744189U, 2170104910U, 2743257031U, 4284093946U },/* fSigWrd */
  NULL                                 /* fSigMem */
};

static const int32_T iv0[4] = { 5, 5, 1, 6 };

static const int32_T iv1[3] = { 1, 1, 6 };

static const int32_T iv2[4] = { 5, 5, 6, 16 };

static const int32_T iv3[3] = { 1, 1, 16 };

static const int32_T iv4[4] = { 5, 5, 16, 120 };

static const int32_T iv5[3] = { 1, 1, 120 };

/* Function Declarations */
static void ab_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src, const
  emlrtMsgIdentifier *msgId, real32_T ret[2400]);
static void b_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId, uint8_T y[1024]);
static const mxArray *b_emlrt_marshallOut(const real32_T u[6]);
static void bb_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src, const
  emlrtMsgIdentifier *msgId, real32_T ret[16]);
static void c_emlrt_marshallIn(const emlrtStack *sp, const mxArray *weightsConv1,
  const char_T *identifier, real32_T y[150]);
static const mxArray *c_emlrt_marshallOut(const real32_T u[2400]);
static void cb_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src, const
  emlrtMsgIdentifier *msgId, real32_T ret[48000]);
static void d_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId, real32_T y[150]);
static const mxArray *d_emlrt_marshallOut(const real32_T u[16]);
static void db_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src, const
  emlrtMsgIdentifier *msgId, real32_T ret[120]);
static void e_emlrt_marshallIn(const emlrtStack *sp, const mxArray *biasConv1,
  const char_T *identifier, real32_T y[6]);
static const mxArray *e_emlrt_marshallOut(const real32_T u[48000]);
static void eb_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src, const
  emlrtMsgIdentifier *msgId, real32_T ret[10080]);
static void emlrt_marshallIn(const emlrtStack *sp, const mxArray *inputImg,
  const char_T *identifier, uint8_T y[1024]);
static const mxArray *emlrt_marshallOut(const real32_T u[150]);
static void f_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId, real32_T y[6]);
static const mxArray *f_emlrt_marshallOut(const real32_T u[120]);
static void fb_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src, const
  emlrtMsgIdentifier *msgId, real32_T ret[84]);
static void g_emlrt_marshallIn(const emlrtStack *sp, const mxArray *weightsConv2,
  const char_T *identifier, real32_T y[2400]);
static const mxArray *g_emlrt_marshallOut(const real32_T u[10080]);
static void gb_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src, const
  emlrtMsgIdentifier *msgId, real32_T ret[840]);
static void h_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId, real32_T y[2400]);
static const mxArray *h_emlrt_marshallOut(const real32_T u[84]);
static void hb_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src, const
  emlrtMsgIdentifier *msgId, real32_T ret[10]);
static void i_emlrt_marshallIn(const emlrtStack *sp, const mxArray *biasConv2,
  const char_T *identifier, real32_T y[16]);
static const mxArray *i_emlrt_marshallOut(const real32_T u[840]);
static void j_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId, real32_T y[16]);
static const mxArray *j_emlrt_marshallOut(const real32_T u[10]);
static void k_emlrt_marshallIn(const emlrtStack *sp, const mxArray *weightsFC1,
  const char_T *identifier, real32_T y[48000]);
static void l_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId, real32_T y[48000]);
static void m_emlrt_marshallIn(const emlrtStack *sp, const mxArray *biasFC1,
  const char_T *identifier, real32_T y[120]);
static void n_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId, real32_T y[120]);
static void o_emlrt_marshallIn(const emlrtStack *sp, const mxArray *weightsFC2,
  const char_T *identifier, real32_T y[10080]);
static void p_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId, real32_T y[10080]);
static void q_emlrt_marshallIn(const emlrtStack *sp, const mxArray *biasFC2,
  const char_T *identifier, real32_T y[84]);
static void r_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId, real32_T y[84]);
static void s_emlrt_marshallIn(const emlrtStack *sp, const mxArray *weightsFC3,
  const char_T *identifier, real32_T y[840]);
static void t_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId, real32_T y[840]);
static void u_emlrt_marshallIn(const emlrtStack *sp, const mxArray *biasFC3,
  const char_T *identifier, real32_T y[10]);
static void v_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId, real32_T y[10]);
static void w_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src, const
  emlrtMsgIdentifier *msgId, uint8_T ret[1024]);
static void x_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src, const
  emlrtMsgIdentifier *msgId, real32_T ret[150]);
static void y_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src, const
  emlrtMsgIdentifier *msgId, real32_T ret[6]);

/* Function Definitions */

/*
 * Arguments    : const emlrtStack *sp
 *                const mxArray *src
 *                const emlrtMsgIdentifier *msgId
 *                real32_T ret[2400]
 * Return Type  : void
 */
static void ab_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src, const
  emlrtMsgIdentifier *msgId, real32_T ret[2400])
{
  int32_T i34;
  int32_T i35;
  int32_T i36;
  int32_T i37;
  emlrtCheckBuiltInR2012b(sp, msgId, src, "single", false, 4U, iv2);
  for (i34 = 0; i34 < 16; i34++) {
    for (i35 = 0; i35 < 6; i35++) {
      for (i36 = 0; i36 < 5; i36++) {
        for (i37 = 0; i37 < 5; i37++) {
          ret[((i37 + 5 * i36) + 25 * i35) + 150 * i34] = (*(real32_T (*)[2400])
            emlrtMxGetData(src))[((i37 + 5 * i36) + 25 * i35) + 150 * i34];
        }
      }
    }
  }

  emlrtDestroyArray(&src);
}

/*
 * Arguments    : const emlrtStack *sp
 *                const mxArray *u
 *                const emlrtMsgIdentifier *parentId
 *                uint8_T y[1024]
 * Return Type  : void
 */
static void b_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId, uint8_T y[1024])
{
  uint8_T uv0[1024];
  int32_T i0;
  int32_T i1;
  w_emlrt_marshallIn(sp, emlrtAlias(u), parentId, uv0);
  for (i0 = 0; i0 < 32; i0++) {
    for (i1 = 0; i1 < 32; i1++) {
      y[i1 + (i0 << 5)] = uv0[i0 + (i1 << 5)];
    }
  }

  emlrtDestroyArray(&u);
}

/*
 * Arguments    : const real32_T u[6]
 * Return Type  : const mxArray *
 */
static const mxArray *b_emlrt_marshallOut(const real32_T u[6])
{
  const mxArray *y;
  const mxArray *m1;
  real32_T *pData;
  int32_T i19;
  int32_T i;
  y = NULL;
  m1 = emlrtCreateNumericArray(3, iv1, mxSINGLE_CLASS, mxREAL);
  pData = (real32_T *)emlrtMxGetData(m1);
  i19 = 0;
  for (i = 0; i < 6; i++) {
    pData[i19] = u[i];
    i19++;
  }

  emlrtAssign(&y, m1);
  return y;
}

/*
 * Arguments    : const emlrtStack *sp
 *                const mxArray *src
 *                const emlrtMsgIdentifier *msgId
 *                real32_T ret[16]
 * Return Type  : void
 */
static void bb_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src, const
  emlrtMsgIdentifier *msgId, real32_T ret[16])
{
  int32_T i38;
  emlrtCheckBuiltInR2012b(sp, msgId, src, "single", false, 3U, iv3);
  for (i38 = 0; i38 < 16; i38++) {
    ret[i38] = (*(real32_T (*)[16])emlrtMxGetData(src))[i38];
  }

  emlrtDestroyArray(&src);
}

/*
 * Arguments    : const emlrtStack *sp
 *                const mxArray *weightsConv1
 *                const char_T *identifier
 *                real32_T y[150]
 * Return Type  : void
 */
static void c_emlrt_marshallIn(const emlrtStack *sp, const mxArray *weightsConv1,
  const char_T *identifier, real32_T y[150])
{
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = (const char *)identifier;
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  d_emlrt_marshallIn(sp, emlrtAlias(weightsConv1), &thisId, y);
  emlrtDestroyArray(&weightsConv1);
}

/*
 * Arguments    : const real32_T u[2400]
 * Return Type  : const mxArray *
 */
static const mxArray *c_emlrt_marshallOut(const real32_T u[2400])
{
  const mxArray *y;
  int32_T i20;
  const mxArray *m2;
  int32_T i;
  real32_T *pData;
  int32_T b_i;
  int32_T c_i;
  real32_T fv9[2400];
  int32_T d_i;
  y = NULL;
  for (i20 = 0; i20 < 5; i20++) {
    for (i = 0; i < 5; i++) {
      for (b_i = 0; b_i < 6; b_i++) {
        for (c_i = 0; c_i < 16; c_i++) {
          fv9[((i20 + 5 * i) + 25 * b_i) + 150 * c_i] = u[((c_i + (b_i << 4)) +
            96 * i) + 480 * i20];
        }
      }
    }
  }

  m2 = emlrtCreateNumericArray(4, iv2, mxSINGLE_CLASS, mxREAL);
  pData = (real32_T *)emlrtMxGetData(m2);
  i20 = 0;
  for (i = 0; i < 16; i++) {
    for (b_i = 0; b_i < 6; b_i++) {
      for (c_i = 0; c_i < 5; c_i++) {
        for (d_i = 0; d_i < 5; d_i++) {
          pData[i20] = fv9[((d_i + 5 * c_i) + 25 * b_i) + 150 * i];
          i20++;
        }
      }
    }
  }

  emlrtAssign(&y, m2);
  return y;
}

/*
 * Arguments    : const emlrtStack *sp
 *                const mxArray *src
 *                const emlrtMsgIdentifier *msgId
 *                real32_T ret[48000]
 * Return Type  : void
 */
static void cb_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src, const
  emlrtMsgIdentifier *msgId, real32_T ret[48000])
{
  int32_T i39;
  int32_T i40;
  int32_T i41;
  int32_T i42;
  emlrtCheckBuiltInR2012b(sp, msgId, src, "single", false, 4U, iv4);
  for (i39 = 0; i39 < 120; i39++) {
    for (i40 = 0; i40 < 16; i40++) {
      for (i41 = 0; i41 < 5; i41++) {
        for (i42 = 0; i42 < 5; i42++) {
          ret[((i42 + 5 * i41) + 25 * i40) + 400 * i39] = (*(real32_T (*)[48000])
            emlrtMxGetData(src))[((i42 + 5 * i41) + 25 * i40) + 400 * i39];
        }
      }
    }
  }

  emlrtDestroyArray(&src);
}

/*
 * Arguments    : const emlrtStack *sp
 *                const mxArray *u
 *                const emlrtMsgIdentifier *parentId
 *                real32_T y[150]
 * Return Type  : void
 */
static void d_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId, real32_T y[150])
{
  real32_T fv0[150];
  int32_T i2;
  int32_T i3;
  int32_T i4;
  x_emlrt_marshallIn(sp, emlrtAlias(u), parentId, fv0);
  for (i2 = 0; i2 < 6; i2++) {
    for (i3 = 0; i3 < 5; i3++) {
      for (i4 = 0; i4 < 5; i4++) {
        y[(i2 + 6 * i3) + 30 * i4] = fv0[(i4 + 5 * i3) + 25 * i2];
      }
    }
  }

  emlrtDestroyArray(&u);
}

/*
 * Arguments    : const real32_T u[16]
 * Return Type  : const mxArray *
 */
static const mxArray *d_emlrt_marshallOut(const real32_T u[16])
{
  const mxArray *y;
  const mxArray *m3;
  real32_T *pData;
  int32_T i21;
  int32_T i;
  y = NULL;
  m3 = emlrtCreateNumericArray(3, iv3, mxSINGLE_CLASS, mxREAL);
  pData = (real32_T *)emlrtMxGetData(m3);
  i21 = 0;
  for (i = 0; i < 16; i++) {
    pData[i21] = u[i];
    i21++;
  }

  emlrtAssign(&y, m3);
  return y;
}

/*
 * Arguments    : const emlrtStack *sp
 *                const mxArray *src
 *                const emlrtMsgIdentifier *msgId
 *                real32_T ret[120]
 * Return Type  : void
 */
static void db_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src, const
  emlrtMsgIdentifier *msgId, real32_T ret[120])
{
  int32_T i43;
  emlrtCheckBuiltInR2012b(sp, msgId, src, "single", false, 3U, iv5);
  for (i43 = 0; i43 < 120; i43++) {
    ret[i43] = (*(real32_T (*)[120])emlrtMxGetData(src))[i43];
  }

  emlrtDestroyArray(&src);
}

/*
 * Arguments    : const emlrtStack *sp
 *                const mxArray *biasConv1
 *                const char_T *identifier
 *                real32_T y[6]
 * Return Type  : void
 */
static void e_emlrt_marshallIn(const emlrtStack *sp, const mxArray *biasConv1,
  const char_T *identifier, real32_T y[6])
{
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = (const char *)identifier;
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  f_emlrt_marshallIn(sp, emlrtAlias(biasConv1), &thisId, y);
  emlrtDestroyArray(&biasConv1);
}

/*
 * Arguments    : const real32_T u[48000]
 * Return Type  : const mxArray *
 */
static const mxArray *e_emlrt_marshallOut(const real32_T u[48000])
{
  const mxArray *y;
  int32_T i22;
  const mxArray *m4;
  int32_T i;
  real32_T *pData;
  int32_T b_i;
  int32_T c_i;
  static real32_T fv10[48000];
  int32_T d_i;
  y = NULL;
  for (i22 = 0; i22 < 5; i22++) {
    for (i = 0; i < 5; i++) {
      for (b_i = 0; b_i < 16; b_i++) {
        for (c_i = 0; c_i < 120; c_i++) {
          fv10[((i22 + 5 * i) + 25 * b_i) + 400 * c_i] = u[((c_i + 120 * b_i) +
            1920 * i) + 9600 * i22];
        }
      }
    }
  }

  m4 = emlrtCreateNumericArray(4, iv4, mxSINGLE_CLASS, mxREAL);
  pData = (real32_T *)emlrtMxGetData(m4);
  i22 = 0;
  for (i = 0; i < 120; i++) {
    for (b_i = 0; b_i < 16; b_i++) {
      for (c_i = 0; c_i < 5; c_i++) {
        for (d_i = 0; d_i < 5; d_i++) {
          pData[i22] = fv10[((d_i + 5 * c_i) + 25 * b_i) + 400 * i];
          i22++;
        }
      }
    }
  }

  emlrtAssign(&y, m4);
  return y;
}

/*
 * Arguments    : const emlrtStack *sp
 *                const mxArray *src
 *                const emlrtMsgIdentifier *msgId
 *                real32_T ret[10080]
 * Return Type  : void
 */
static void eb_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src, const
  emlrtMsgIdentifier *msgId, real32_T ret[10080])
{
  static const int32_T dims[2] = { 84, 120 };

  int32_T i44;
  int32_T i45;
  emlrtCheckBuiltInR2012b(sp, msgId, src, "single", false, 2U, dims);
  for (i44 = 0; i44 < 120; i44++) {
    for (i45 = 0; i45 < 84; i45++) {
      ret[i45 + 84 * i44] = (*(real32_T (*)[10080])emlrtMxGetData(src))[i45 + 84
        * i44];
    }
  }

  emlrtDestroyArray(&src);
}

/*
 * Arguments    : const emlrtStack *sp
 *                const mxArray *inputImg
 *                const char_T *identifier
 *                uint8_T y[1024]
 * Return Type  : void
 */
static void emlrt_marshallIn(const emlrtStack *sp, const mxArray *inputImg,
  const char_T *identifier, uint8_T y[1024])
{
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = (const char *)identifier;
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  b_emlrt_marshallIn(sp, emlrtAlias(inputImg), &thisId, y);
  emlrtDestroyArray(&inputImg);
}

/*
 * Arguments    : const real32_T u[150]
 * Return Type  : const mxArray *
 */
static const mxArray *emlrt_marshallOut(const real32_T u[150])
{
  const mxArray *y;
  int32_T i18;
  const mxArray *m0;
  int32_T i;
  real32_T *pData;
  int32_T b_i;
  real32_T fv8[150];
  int32_T c_i;
  y = NULL;
  for (i18 = 0; i18 < 5; i18++) {
    for (i = 0; i < 5; i++) {
      for (b_i = 0; b_i < 6; b_i++) {
        fv8[(i18 + 5 * i) + 25 * b_i] = u[(b_i + 6 * i) + 30 * i18];
      }
    }
  }

  m0 = emlrtCreateNumericArray(4, iv0, mxSINGLE_CLASS, mxREAL);
  pData = (real32_T *)emlrtMxGetData(m0);
  i18 = 0;
  for (i = 0; i < 6; i++) {
    for (b_i = 0; b_i < 5; b_i++) {
      for (c_i = 0; c_i < 5; c_i++) {
        pData[i18] = fv8[(c_i + 5 * b_i) + 25 * i];
        i18++;
      }
    }
  }

  emlrtAssign(&y, m0);
  return y;
}

/*
 * Arguments    : const emlrtStack *sp
 *                const mxArray *u
 *                const emlrtMsgIdentifier *parentId
 *                real32_T y[6]
 * Return Type  : void
 */
static void f_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId, real32_T y[6])
{
  real32_T fv1[6];
  int32_T i5;
  y_emlrt_marshallIn(sp, emlrtAlias(u), parentId, fv1);
  for (i5 = 0; i5 < 6; i5++) {
    y[i5] = fv1[i5];
  }

  emlrtDestroyArray(&u);
}

/*
 * Arguments    : const real32_T u[120]
 * Return Type  : const mxArray *
 */
static const mxArray *f_emlrt_marshallOut(const real32_T u[120])
{
  const mxArray *y;
  const mxArray *m5;
  real32_T *pData;
  int32_T i23;
  int32_T i;
  y = NULL;
  m5 = emlrtCreateNumericArray(3, iv5, mxSINGLE_CLASS, mxREAL);
  pData = (real32_T *)emlrtMxGetData(m5);
  i23 = 0;
  for (i = 0; i < 120; i++) {
    pData[i23] = u[i];
    i23++;
  }

  emlrtAssign(&y, m5);
  return y;
}

/*
 * Arguments    : const emlrtStack *sp
 *                const mxArray *src
 *                const emlrtMsgIdentifier *msgId
 *                real32_T ret[84]
 * Return Type  : void
 */
static void fb_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src, const
  emlrtMsgIdentifier *msgId, real32_T ret[84])
{
  static const int32_T dims[1] = { 84 };

  int32_T i46;
  emlrtCheckBuiltInR2012b(sp, msgId, src, "single", false, 1U, dims);
  for (i46 = 0; i46 < 84; i46++) {
    ret[i46] = (*(real32_T (*)[84])emlrtMxGetData(src))[i46];
  }

  emlrtDestroyArray(&src);
}

/*
 * Arguments    : const emlrtStack *sp
 *                const mxArray *weightsConv2
 *                const char_T *identifier
 *                real32_T y[2400]
 * Return Type  : void
 */
static void g_emlrt_marshallIn(const emlrtStack *sp, const mxArray *weightsConv2,
  const char_T *identifier, real32_T y[2400])
{
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = (const char *)identifier;
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  h_emlrt_marshallIn(sp, emlrtAlias(weightsConv2), &thisId, y);
  emlrtDestroyArray(&weightsConv2);
}

/*
 * Arguments    : const real32_T u[10080]
 * Return Type  : const mxArray *
 */
static const mxArray *g_emlrt_marshallOut(const real32_T u[10080])
{
  const mxArray *y;
  int32_T i24;
  const mxArray *m6;
  static const int32_T iv6[2] = { 84, 120 };

  int32_T i;
  real32_T *pData;
  real32_T fv11[10080];
  int32_T b_i;
  y = NULL;
  for (i24 = 0; i24 < 120; i24++) {
    for (i = 0; i < 84; i++) {
      fv11[i + 84 * i24] = u[i24 + 120 * i];
    }
  }

  m6 = emlrtCreateNumericArray(2, iv6, mxSINGLE_CLASS, mxREAL);
  pData = (real32_T *)emlrtMxGetData(m6);
  i24 = 0;
  for (i = 0; i < 120; i++) {
    for (b_i = 0; b_i < 84; b_i++) {
      pData[i24] = fv11[b_i + 84 * i];
      i24++;
    }
  }

  emlrtAssign(&y, m6);
  return y;
}

/*
 * Arguments    : const emlrtStack *sp
 *                const mxArray *src
 *                const emlrtMsgIdentifier *msgId
 *                real32_T ret[840]
 * Return Type  : void
 */
static void gb_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src, const
  emlrtMsgIdentifier *msgId, real32_T ret[840])
{
  static const int32_T dims[2] = { 10, 84 };

  int32_T i47;
  int32_T i48;
  emlrtCheckBuiltInR2012b(sp, msgId, src, "single", false, 2U, dims);
  for (i47 = 0; i47 < 84; i47++) {
    for (i48 = 0; i48 < 10; i48++) {
      ret[i48 + 10 * i47] = (*(real32_T (*)[840])emlrtMxGetData(src))[i48 + 10 *
        i47];
    }
  }

  emlrtDestroyArray(&src);
}

/*
 * Arguments    : const emlrtStack *sp
 *                const mxArray *u
 *                const emlrtMsgIdentifier *parentId
 *                real32_T y[2400]
 * Return Type  : void
 */
static void h_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId, real32_T y[2400])
{
  real32_T fv2[2400];
  int32_T i6;
  int32_T i7;
  int32_T i8;
  int32_T i9;
  ab_emlrt_marshallIn(sp, emlrtAlias(u), parentId, fv2);
  for (i6 = 0; i6 < 16; i6++) {
    for (i7 = 0; i7 < 6; i7++) {
      for (i8 = 0; i8 < 5; i8++) {
        for (i9 = 0; i9 < 5; i9++) {
          y[((i6 + (i7 << 4)) + 96 * i8) + 480 * i9] = fv2[((i9 + 5 * i8) + 25 *
            i7) + 150 * i6];
        }
      }
    }
  }

  emlrtDestroyArray(&u);
}

/*
 * Arguments    : const real32_T u[84]
 * Return Type  : const mxArray *
 */
static const mxArray *h_emlrt_marshallOut(const real32_T u[84])
{
  const mxArray *y;
  const mxArray *m7;
  static const int32_T iv7[1] = { 84 };

  real32_T *pData;
  int32_T i25;
  int32_T i;
  y = NULL;
  m7 = emlrtCreateNumericArray(1, iv7, mxSINGLE_CLASS, mxREAL);
  pData = (real32_T *)emlrtMxGetData(m7);
  i25 = 0;
  for (i = 0; i < 84; i++) {
    pData[i25] = u[i];
    i25++;
  }

  emlrtAssign(&y, m7);
  return y;
}

/*
 * Arguments    : const emlrtStack *sp
 *                const mxArray *src
 *                const emlrtMsgIdentifier *msgId
 *                real32_T ret[10]
 * Return Type  : void
 */
static void hb_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src, const
  emlrtMsgIdentifier *msgId, real32_T ret[10])
{
  static const int32_T dims[1] = { 10 };

  int32_T i49;
  emlrtCheckBuiltInR2012b(sp, msgId, src, "single", false, 1U, dims);
  for (i49 = 0; i49 < 10; i49++) {
    ret[i49] = (*(real32_T (*)[10])emlrtMxGetData(src))[i49];
  }

  emlrtDestroyArray(&src);
}

/*
 * Arguments    : const emlrtStack *sp
 *                const mxArray *biasConv2
 *                const char_T *identifier
 *                real32_T y[16]
 * Return Type  : void
 */
static void i_emlrt_marshallIn(const emlrtStack *sp, const mxArray *biasConv2,
  const char_T *identifier, real32_T y[16])
{
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = (const char *)identifier;
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  j_emlrt_marshallIn(sp, emlrtAlias(biasConv2), &thisId, y);
  emlrtDestroyArray(&biasConv2);
}

/*
 * Arguments    : const real32_T u[840]
 * Return Type  : const mxArray *
 */
static const mxArray *i_emlrt_marshallOut(const real32_T u[840])
{
  const mxArray *y;
  int32_T i26;
  const mxArray *m8;
  static const int32_T iv8[2] = { 10, 84 };

  int32_T i;
  real32_T *pData;
  real32_T fv12[840];
  int32_T b_i;
  y = NULL;
  for (i26 = 0; i26 < 84; i26++) {
    for (i = 0; i < 10; i++) {
      fv12[i + 10 * i26] = u[i26 + 84 * i];
    }
  }

  m8 = emlrtCreateNumericArray(2, iv8, mxSINGLE_CLASS, mxREAL);
  pData = (real32_T *)emlrtMxGetData(m8);
  i26 = 0;
  for (i = 0; i < 84; i++) {
    for (b_i = 0; b_i < 10; b_i++) {
      pData[i26] = fv12[b_i + 10 * i];
      i26++;
    }
  }

  emlrtAssign(&y, m8);
  return y;
}

/*
 * Arguments    : const emlrtStack *sp
 *                const mxArray *u
 *                const emlrtMsgIdentifier *parentId
 *                real32_T y[16]
 * Return Type  : void
 */
static void j_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId, real32_T y[16])
{
  real32_T fv3[16];
  bb_emlrt_marshallIn(sp, emlrtAlias(u), parentId, fv3);
  memcpy(&y[0], &fv3[0], sizeof(real32_T) << 4);
  emlrtDestroyArray(&u);
}

/*
 * Arguments    : const real32_T u[10]
 * Return Type  : const mxArray *
 */
static const mxArray *j_emlrt_marshallOut(const real32_T u[10])
{
  const mxArray *y;
  const mxArray *m9;
  static const int32_T iv9[1] = { 10 };

  real32_T *pData;
  int32_T i27;
  int32_T i;
  y = NULL;
  m9 = emlrtCreateNumericArray(1, iv9, mxSINGLE_CLASS, mxREAL);
  pData = (real32_T *)emlrtMxGetData(m9);
  i27 = 0;
  for (i = 0; i < 10; i++) {
    pData[i27] = u[i];
    i27++;
  }

  emlrtAssign(&y, m9);
  return y;
}

/*
 * Arguments    : const emlrtStack *sp
 *                const mxArray *weightsFC1
 *                const char_T *identifier
 *                real32_T y[48000]
 * Return Type  : void
 */
static void k_emlrt_marshallIn(const emlrtStack *sp, const mxArray *weightsFC1,
  const char_T *identifier, real32_T y[48000])
{
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = (const char *)identifier;
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  l_emlrt_marshallIn(sp, emlrtAlias(weightsFC1), &thisId, y);
  emlrtDestroyArray(&weightsFC1);
}

/*
 * Arguments    : const emlrtStack *sp
 *                const mxArray *u
 *                const emlrtMsgIdentifier *parentId
 *                real32_T y[48000]
 * Return Type  : void
 */
static void l_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId, real32_T y[48000])
{
  static real32_T fv4[48000];
  int32_T i10;
  int32_T i11;
  int32_T i12;
  int32_T i13;
  cb_emlrt_marshallIn(sp, emlrtAlias(u), parentId, fv4);
  for (i10 = 0; i10 < 120; i10++) {
    for (i11 = 0; i11 < 16; i11++) {
      for (i12 = 0; i12 < 5; i12++) {
        for (i13 = 0; i13 < 5; i13++) {
          y[((i10 + 120 * i11) + 1920 * i12) + 9600 * i13] = fv4[((i13 + 5 * i12)
            + 25 * i11) + 400 * i10];
        }
      }
    }
  }

  emlrtDestroyArray(&u);
}

/*
 * Arguments    : const emlrtStack *sp
 *                const mxArray *biasFC1
 *                const char_T *identifier
 *                real32_T y[120]
 * Return Type  : void
 */
static void m_emlrt_marshallIn(const emlrtStack *sp, const mxArray *biasFC1,
  const char_T *identifier, real32_T y[120])
{
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = (const char *)identifier;
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  n_emlrt_marshallIn(sp, emlrtAlias(biasFC1), &thisId, y);
  emlrtDestroyArray(&biasFC1);
}

/*
 * Arguments    : const emlrtStack *sp
 *                const mxArray *u
 *                const emlrtMsgIdentifier *parentId
 *                real32_T y[120]
 * Return Type  : void
 */
static void n_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId, real32_T y[120])
{
  real32_T fv5[120];
  db_emlrt_marshallIn(sp, emlrtAlias(u), parentId, fv5);
  memcpy(&y[0], &fv5[0], 120U * sizeof(real32_T));
  emlrtDestroyArray(&u);
}

/*
 * Arguments    : const emlrtStack *sp
 *                const mxArray *weightsFC2
 *                const char_T *identifier
 *                real32_T y[10080]
 * Return Type  : void
 */
static void o_emlrt_marshallIn(const emlrtStack *sp, const mxArray *weightsFC2,
  const char_T *identifier, real32_T y[10080])
{
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = (const char *)identifier;
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  p_emlrt_marshallIn(sp, emlrtAlias(weightsFC2), &thisId, y);
  emlrtDestroyArray(&weightsFC2);
}

/*
 * Arguments    : const emlrtStack *sp
 *                const mxArray *u
 *                const emlrtMsgIdentifier *parentId
 *                real32_T y[10080]
 * Return Type  : void
 */
static void p_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId, real32_T y[10080])
{
  real32_T fv6[10080];
  int32_T i14;
  int32_T i15;
  eb_emlrt_marshallIn(sp, emlrtAlias(u), parentId, fv6);
  for (i14 = 0; i14 < 84; i14++) {
    for (i15 = 0; i15 < 120; i15++) {
      y[i15 + 120 * i14] = fv6[i14 + 84 * i15];
    }
  }

  emlrtDestroyArray(&u);
}

/*
 * Arguments    : const emlrtStack *sp
 *                const mxArray *biasFC2
 *                const char_T *identifier
 *                real32_T y[84]
 * Return Type  : void
 */
static void q_emlrt_marshallIn(const emlrtStack *sp, const mxArray *biasFC2,
  const char_T *identifier, real32_T y[84])
{
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = (const char *)identifier;
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  r_emlrt_marshallIn(sp, emlrtAlias(biasFC2), &thisId, y);
  emlrtDestroyArray(&biasFC2);
}

/*
 * Arguments    : const emlrtStack *sp
 *                const mxArray *u
 *                const emlrtMsgIdentifier *parentId
 *                real32_T y[84]
 * Return Type  : void
 */
static void r_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId, real32_T y[84])
{
  fb_emlrt_marshallIn(sp, emlrtAlias(u), parentId, y);
  emlrtDestroyArray(&u);
}

/*
 * Arguments    : const emlrtStack *sp
 *                const mxArray *weightsFC3
 *                const char_T *identifier
 *                real32_T y[840]
 * Return Type  : void
 */
static void s_emlrt_marshallIn(const emlrtStack *sp, const mxArray *weightsFC3,
  const char_T *identifier, real32_T y[840])
{
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = (const char *)identifier;
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  t_emlrt_marshallIn(sp, emlrtAlias(weightsFC3), &thisId, y);
  emlrtDestroyArray(&weightsFC3);
}

/*
 * Arguments    : const emlrtStack *sp
 *                const mxArray *u
 *                const emlrtMsgIdentifier *parentId
 *                real32_T y[840]
 * Return Type  : void
 */
static void t_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId, real32_T y[840])
{
  real32_T fv7[840];
  int32_T i16;
  int32_T i17;
  gb_emlrt_marshallIn(sp, emlrtAlias(u), parentId, fv7);
  for (i16 = 0; i16 < 10; i16++) {
    for (i17 = 0; i17 < 84; i17++) {
      y[i17 + 84 * i16] = fv7[i16 + 10 * i17];
    }
  }

  emlrtDestroyArray(&u);
}

/*
 * Arguments    : const emlrtStack *sp
 *                const mxArray *biasFC3
 *                const char_T *identifier
 *                real32_T y[10]
 * Return Type  : void
 */
static void u_emlrt_marshallIn(const emlrtStack *sp, const mxArray *biasFC3,
  const char_T *identifier, real32_T y[10])
{
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = (const char *)identifier;
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  v_emlrt_marshallIn(sp, emlrtAlias(biasFC3), &thisId, y);
  emlrtDestroyArray(&biasFC3);
}

/*
 * Arguments    : const emlrtStack *sp
 *                const mxArray *u
 *                const emlrtMsgIdentifier *parentId
 *                real32_T y[10]
 * Return Type  : void
 */
static void v_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId, real32_T y[10])
{
  hb_emlrt_marshallIn(sp, emlrtAlias(u), parentId, y);
  emlrtDestroyArray(&u);
}

/*
 * Arguments    : const emlrtStack *sp
 *                const mxArray *src
 *                const emlrtMsgIdentifier *msgId
 *                uint8_T ret[1024]
 * Return Type  : void
 */
static void w_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src, const
  emlrtMsgIdentifier *msgId, uint8_T ret[1024])
{
  static const int32_T dims[2] = { 32, 32 };

  int32_T i28;
  int32_T i29;
  emlrtCheckBuiltInR2012b(sp, msgId, src, "uint8", false, 2U, dims);
  for (i28 = 0; i28 < 32; i28++) {
    for (i29 = 0; i29 < 32; i29++) {
      ret[i29 + (i28 << 5)] = (*(uint8_T (*)[1024])emlrtMxGetData(src))[i29 +
        (i28 << 5)];
    }
  }

  emlrtDestroyArray(&src);
}

/*
 * Arguments    : const emlrtStack *sp
 *                const mxArray *src
 *                const emlrtMsgIdentifier *msgId
 *                real32_T ret[150]
 * Return Type  : void
 */
static void x_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src, const
  emlrtMsgIdentifier *msgId, real32_T ret[150])
{
  int32_T i30;
  int32_T i31;
  int32_T i32;
  emlrtCheckBuiltInR2012b(sp, msgId, src, "single", false, 4U, iv0);
  for (i30 = 0; i30 < 6; i30++) {
    for (i31 = 0; i31 < 5; i31++) {
      for (i32 = 0; i32 < 5; i32++) {
        ret[(i32 + 5 * i31) + 25 * i30] = (*(real32_T (*)[150])emlrtMxGetData
          (src))[(i32 + 5 * i31) + 25 * i30];
      }
    }
  }

  emlrtDestroyArray(&src);
}

/*
 * Arguments    : const emlrtStack *sp
 *                const mxArray *src
 *                const emlrtMsgIdentifier *msgId
 *                real32_T ret[6]
 * Return Type  : void
 */
static void y_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src, const
  emlrtMsgIdentifier *msgId, real32_T ret[6])
{
  int32_T i33;
  emlrtCheckBuiltInR2012b(sp, msgId, src, "single", false, 3U, iv1);
  for (i33 = 0; i33 < 6; i33++) {
    ret[i33] = (*(real32_T (*)[6])emlrtMxGetData(src))[i33];
  }

  emlrtDestroyArray(&src);
}

/*
 * Arguments    : const mxArray * const prhs[1]
 *                int32_T nlhs
 *                const mxArray *plhs[1]
 * Return Type  : void
 */
void lenetSynthMatlab_api(const mxArray * const prhs[1], int32_T nlhs, const
  mxArray *plhs[1])
{
  uint8_T inputImg[1024];
  const mxArray *tmp;
  real32_T weightsConv1[150];
  real32_T biasConv1[6];
  real32_T weightsConv2[2400];
  real32_T biasConv2[16];
  static real32_T weightsFC1[48000];
  real32_T biasFC1[120];
  real32_T weightsFC2[10080];
  real32_T biasFC2[84];
  real32_T weightsFC3[840];
  real32_T biasFC3[10];
  real32_T netScores[10];
  emlrtStack st = { NULL,              /* site */
    NULL,                              /* tls */
    NULL                               /* prev */
  };

  (void)nlhs;
  st.tls = emlrtRootTLSGlobal;

  /* Marshall function inputs */
  emlrt_marshallIn(&st, emlrtAliasP(prhs[0]), "inputImg", inputImg);

  /* Marshall in global variables */
  tmp = emlrtGetGlobalVariable("weightsConv1");
  if (tmp != NULL) {
    c_emlrt_marshallIn(&st, tmp, "weightsConv1", weightsConv1);
  }

  tmp = emlrtGetGlobalVariable("biasConv1");
  if (tmp != NULL) {
    e_emlrt_marshallIn(&st, tmp, "biasConv1", biasConv1);
  }

  tmp = emlrtGetGlobalVariable("weightsConv2");
  if (tmp != NULL) {
    g_emlrt_marshallIn(&st, tmp, "weightsConv2", weightsConv2);
  }

  tmp = emlrtGetGlobalVariable("biasConv2");
  if (tmp != NULL) {
    i_emlrt_marshallIn(&st, tmp, "biasConv2", biasConv2);
  }

  tmp = emlrtGetGlobalVariable("weightsFC1");
  if (tmp != NULL) {
    k_emlrt_marshallIn(&st, tmp, "weightsFC1", weightsFC1);
  }

  tmp = emlrtGetGlobalVariable("biasFC1");
  if (tmp != NULL) {
    m_emlrt_marshallIn(&st, tmp, "biasFC1", biasFC1);
  }

  tmp = emlrtGetGlobalVariable("weightsFC2");
  if (tmp != NULL) {
    o_emlrt_marshallIn(&st, tmp, "weightsFC2", weightsFC2);
  }

  tmp = emlrtGetGlobalVariable("biasFC2");
  if (tmp != NULL) {
    q_emlrt_marshallIn(&st, tmp, "biasFC2", biasFC2);
  }

  tmp = emlrtGetGlobalVariable("weightsFC3");
  if (tmp != NULL) {
    s_emlrt_marshallIn(&st, tmp, "weightsFC3", weightsFC3);
  }

  tmp = emlrtGetGlobalVariable("biasFC3");
  if (tmp != NULL) {
    u_emlrt_marshallIn(&st, tmp, "biasFC3", biasFC3);
  }

  /* Invoke the target function */
  lenetSynthMatlab(inputImg, netScores);

  /* Marshall out global variables */
  emlrtPutGlobalVariable("weightsConv1", emlrt_marshallOut(weightsConv1));
  emlrtPutGlobalVariable("biasConv1", b_emlrt_marshallOut(biasConv1));
  emlrtPutGlobalVariable("weightsConv2", c_emlrt_marshallOut(weightsConv2));
  emlrtPutGlobalVariable("biasConv2", d_emlrt_marshallOut(biasConv2));
  emlrtPutGlobalVariable("weightsFC1", e_emlrt_marshallOut(weightsFC1));
  emlrtPutGlobalVariable("biasFC1", f_emlrt_marshallOut(biasFC1));
  emlrtPutGlobalVariable("weightsFC2", g_emlrt_marshallOut(weightsFC2));
  emlrtPutGlobalVariable("biasFC2", h_emlrt_marshallOut(biasFC2));
  emlrtPutGlobalVariable("weightsFC3", i_emlrt_marshallOut(weightsFC3));
  emlrtPutGlobalVariable("biasFC3", j_emlrt_marshallOut(biasFC3));

  /* Marshall function outputs */
  plhs[0] = j_emlrt_marshallOut(netScores);
}

/*
 * Arguments    : void
 * Return Type  : void
 */
void lenetSynthMatlab_atexit(void)
{
  emlrtStack st = { NULL,              /* site */
    NULL,                              /* tls */
    NULL                               /* prev */
  };

  mexFunctionCreateRootTLS();
  st.tls = emlrtRootTLSGlobal;
  emlrtEnterRtStackR2012b(&st);
  emlrtLeaveRtStackR2012b(&st);
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
  lenetSynthMatlab_xil_terminate();
}

/*
 * Arguments    : void
 * Return Type  : void
 */
void lenetSynthMatlab_initialize(void)
{
  emlrtStack st = { NULL,              /* site */
    NULL,                              /* tls */
    NULL                               /* prev */
  };

  mexFunctionCreateRootTLS();
  st.tls = emlrtRootTLSGlobal;
  emlrtClearAllocCountR2012b(&st, false, 0U, 0);
  emlrtEnterRtStackR2012b(&st);
  emlrtFirstTimeR2012b(emlrtRootTLSGlobal);
}

/*
 * Arguments    : void
 * Return Type  : void
 */
void lenetSynthMatlab_terminate(void)
{
  emlrtStack st = { NULL,              /* site */
    NULL,                              /* tls */
    NULL                               /* prev */
  };

  st.tls = emlrtRootTLSGlobal;
  emlrtLeaveRtStackR2012b(&st);
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
}

/*
 * File trailer for _coder_lenetSynthMatlab_api.c
 *
 * [EOF]
 */
