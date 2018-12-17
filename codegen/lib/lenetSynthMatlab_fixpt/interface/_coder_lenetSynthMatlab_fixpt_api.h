/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 * File: _coder_lenetSynthMatlab_fixpt_api.h
 *
 * MATLAB Coder version            : 4.0
 * C/C++ source code generated on  : 10-Dec-2018 14:59:12
 */

#ifndef _CODER_LENETSYNTHMATLAB_FIXPT_API_H
#define _CODER_LENETSYNTHMATLAB_FIXPT_API_H

/* Include Files */
#include "tmwtypes.h"
#include "mex.h"
#include "emlrt.h"
#include <stddef.h>
#include <stdlib.h>
#include "_coder_lenetSynthMatlab_fixpt_api.h"

/* Variable Declarations */
extern emlrtCTX emlrtRootTLSGlobal;
extern emlrtContext emlrtContextGlobal;

/* Function Declarations */
extern void lenetSynthMatlab_fixpt(uint8_T inputImg[1024], int16_T netScores[10]);
extern void lenetSynthMatlab_fixpt_api(const mxArray * const prhs[1], int32_T
  nlhs, const mxArray *plhs[1]);
extern void lenetSynthMatlab_fixpt_atexit(void);
extern void lenetSynthMatlab_fixpt_initialize(void);
extern void lenetSynthMatlab_fixpt_terminate(void);
extern void lenetSynthMatlab_fixpt_xil_terminate(void);

#endif

/*
 * File trailer for _coder_lenetSynthMatlab_fixpt_api.h
 *
 * [EOF]
 */
