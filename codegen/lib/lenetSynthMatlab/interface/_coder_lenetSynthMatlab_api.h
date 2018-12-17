/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 * File: _coder_lenetSynthMatlab_api.h
 *
 * MATLAB Coder version            : 4.0
 * C/C++ source code generated on  : 09-Dec-2018 12:31:10
 */

#ifndef _CODER_LENETSYNTHMATLAB_API_H
#define _CODER_LENETSYNTHMATLAB_API_H

/* Include Files */
#include "tmwtypes.h"
#include "mex.h"
#include "emlrt.h"
#include <stddef.h>
#include <stdlib.h>
#include "_coder_lenetSynthMatlab_api.h"

/* Variable Declarations */
extern emlrtCTX emlrtRootTLSGlobal;
extern emlrtContext emlrtContextGlobal;

/* Function Declarations */
extern void lenetSynthMatlab(uint8_T inputImg[1024], real32_T netScores[10]);
extern void lenetSynthMatlab_api(const mxArray * const prhs[1], int32_T nlhs,
  const mxArray *plhs[1]);
extern void lenetSynthMatlab_atexit(void);
extern void lenetSynthMatlab_initialize(void);
extern void lenetSynthMatlab_terminate(void);
extern void lenetSynthMatlab_xil_terminate(void);

#endif

/*
 * File trailer for _coder_lenetSynthMatlab_api.h
 *
 * [EOF]
 */
