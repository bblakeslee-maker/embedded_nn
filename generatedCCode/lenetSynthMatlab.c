/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 * File: lenetSynthMatlab.c
 *
 * MATLAB Coder version            : 4.0
 * C/C++ source code generated on  : 08-Dec-2018 21:01:38
 */

/* Include Files */
#include <string.h>
#include "lenetSynthMatlab.h"
#include "sum.h"
#include "lenetSynthMatlab_data.h"

/* Function Definitions */

/*
 * function [netScores] = lenetSynthMatlab(inputImg)
 * LENETSYNTH Synthesizable model of LeNet5
 *    inputImg: 32x32x1 MNIST image
 * Arguments    : const float inputImg[1024]
 *                float netScores[10]
 * Return Type  : void
 */
void lenetSynthMatlab(const float inputImg[1024], float netScores[10])
{
  int f;
  int k;
  int r;
  int colOutIdx;
  double pool1ActivationMap[1176];
  int b_k;
  int c;
  double rowOutIdx;
  double conv1ActivationMap[4704];
  double relu1ActivationMap[4704];
  float fv10[25];
  float fv11[5];
  float imgRegion[25];
  double pool2ActivationMap[400];
  double conv2ActivationMap[1600];
  int j;
  double maxval[2];
  double b_maxval;
  double relu2ActivationMap[1600];
  float fv12[150];
  float fv13[30];
  float fv14[6];
  double b_imgRegion[150];
  float b_pool2ActivationMap[400];
  float fv15[80];
  double fc1ActivationMap[120];
  float fv16[16];
  double relu3ActivationMap[120];
  float b_relu3ActivationMap[84];
  float c_relu3ActivationMap[10];
  float d_relu3ActivationMap[84];

  /*  Load all constants */
  /*  networkWeights = coder.load('networkWeights.mat'); */
  /* 'lenetSynthMatlab:7' weightsConv1 = weightsConv1; */
  /* 'lenetSynthMatlab:8' biasConv1 = biasConv1; */
  /* 'lenetSynthMatlab:9' weightsConv2 = weightsConv2; */
  /* 'lenetSynthMatlab:10' biasConv2 = biasConv2; */
  /* 'lenetSynthMatlab:11' weightsFC1 = weightsFC1; */
  /* 'lenetSynthMatlab:12' biasFC1 = biasFC1; */
  /* 'lenetSynthMatlab:13' weightsFC2 = weightsFC2; */
  /* 'lenetSynthMatlab:14' biasFC2 = biasFC2; */
  /* 'lenetSynthMatlab:15' weightsFC3 = weightsFC3; */
  /* 'lenetSynthMatlab:16' biasFC3 = biasFC3; */
  /*  Layer 1: conv1 -- OK */
  /* 'lenetSynthMatlab:19' conv1ActivationMap = zeros(28, 28, 6); */
  /* 'lenetSynthMatlab:20' for f = 1:1:6 */
  for (f = 0; f < 6; f++) {
    /*  Extract desired filter */
    /* 'lenetSynthMatlab:22' filter = weightsConv1(:, : , :, f); */
    /* 'lenetSynthMatlab:23' for r = 1:1:28 */
    for (r = 0; r < 28; r++) {
      /* 'lenetSynthMatlab:24' for c = 1:1:28 */
      for (c = 0; c < 28; c++) {
        /* 'lenetSynthMatlab:25' imgRegion = inputImg(r:r + 4, c:c + 4, :); */
        /* 'lenetSynthMatlab:26' conv1ActivationMap(r, c, f) = sum(sum(filter .* imgRegion)) + biasConv1(:, :, f); */
        for (k = 0; k < 5; k++) {
          for (colOutIdx = 0; colOutIdx < 5; colOutIdx++) {
            imgRegion[colOutIdx + 5 * k] = inputImg[(colOutIdx + c) + ((k + r) <<
              5)];
            fv10[colOutIdx + 5 * k] = weightsConv1[(f + 6 * colOutIdx) + 30 * k]
              * imgRegion[colOutIdx + 5 * k];
          }
        }

        sum(fv10, fv11);
        conv1ActivationMap[(f + 6 * c) + 168 * r] = b_sum(fv11) + biasConv1[f];
      }
    }
  }

  /*  Layer 2: relu1 -- OK */
  /* 'lenetSynthMatlab:32' relu1ActivationMap = max(0, conv1ActivationMap); */
  for (k = 0; k < 28; k++) {
    for (colOutIdx = 0; colOutIdx < 28; colOutIdx++) {
      for (b_k = 0; b_k < 6; b_k++) {
        rowOutIdx = conv1ActivationMap[(b_k + 6 * colOutIdx) + 168 * k];
        if (0.0 > rowOutIdx) {
          rowOutIdx = 0.0;
        }

        relu1ActivationMap[(b_k + 6 * colOutIdx) + 168 * k] = rowOutIdx;
      }
    }
  }

  /*  Layer 3: pool1 -- OK */
  /* 'lenetSynthMatlab:35' pool1ActivationMap = zeros(14, 14, 6); */
  memset(&pool1ActivationMap[0], 0, 1176U * sizeof(double));

  /* 'lenetSynthMatlab:36' for f = 1:1:6 */
  for (f = 0; f < 6; f++) {
    /* 'lenetSynthMatlab:37' rowOutIdx = 1; */
    rowOutIdx = 1.0;

    /* 'lenetSynthMatlab:38' for r = 1:2:27 */
    for (r = 0; r < 14; r++) {
      k = r << 1;

      /* 'lenetSynthMatlab:39' colOutIdx = 1; */
      colOutIdx = 0;

      /* 'lenetSynthMatlab:40' for c = 1:2:27 */
      for (c = 0; c < 14; c++) {
        b_k = c << 1;

        /* 'lenetSynthMatlab:41' pool1ActivationMap(rowOutIdx, colOutIdx, f) = max(max(relu1ActivationMap(r:r + 1, c:c + 1, f))); */
        for (j = 0; j < 2; j++) {
          b_maxval = relu1ActivationMap[(f + 6 * (j % 2 + b_k)) + 168 * (j / 2 +
            k)];
          if (relu1ActivationMap[(f + 6 * (j % 2 + b_k)) + 168 * (j / 2 + k)] <
              relu1ActivationMap[(f + 6 * ((j + 2) % 2 + b_k)) + 168 * ((j + 2) /
               2 + k)]) {
            b_maxval = relu1ActivationMap[(f + 6 * ((j + 2) % 2 + b_k)) + 168 *
              ((j + 2) / 2 + k)];
          }

          maxval[j] = b_maxval;
        }

        if (maxval[0] < maxval[1]) {
          pool1ActivationMap[(f + 6 * colOutIdx) + 84 * ((int)rowOutIdx - 1)] =
            maxval[1];
        } else {
          pool1ActivationMap[(f + 6 * colOutIdx) + 84 * ((int)rowOutIdx - 1)] =
            maxval[0];
        }

        /* 'lenetSynthMatlab:42' colOutIdx = colOutIdx + 1; */
        colOutIdx++;
      }

      /* 'lenetSynthMatlab:44' rowOutIdx = rowOutIdx + 1; */
      rowOutIdx++;
    }
  }

  /*  Layer 4: conv2 -- OK */
  /* 'lenetSynthMatlab:49' conv2ActivationMap = zeros(10, 10, 16); */
  /* 'lenetSynthMatlab:50' for f = 1:1:16 */
  for (f = 0; f < 16; f++) {
    /*  Extract desired filter */
    /* 'lenetSynthMatlab:52' filter = weightsConv2(:, : , :, f); */
    /* 'lenetSynthMatlab:53' for r = 1:1:10 */
    for (r = 0; r < 10; r++) {
      /* 'lenetSynthMatlab:54' for c = 1:1:10 */
      for (c = 0; c < 10; c++) {
        /* 'lenetSynthMatlab:55' imgRegion = pool1ActivationMap(r:r + 4, c:c + 4, :); */
        /* 'lenetSynthMatlab:56' conv2ActivationMap(r, c, f) = sum(sum(sum(filter .* imgRegion))) + biasConv2(:, :, f); */
        for (k = 0; k < 5; k++) {
          for (colOutIdx = 0; colOutIdx < 5; colOutIdx++) {
            for (b_k = 0; b_k < 6; b_k++) {
              b_imgRegion[(b_k + 6 * colOutIdx) + 30 * k] = pool1ActivationMap
                [(b_k + 6 * (colOutIdx + c)) + 84 * (k + r)];
              fv12[(b_k + 6 * colOutIdx) + 30 * k] = weightsConv2[((f + (b_k <<
                4)) + 96 * colOutIdx) + 480 * k] * (float)b_imgRegion[(b_k + 6 *
                colOutIdx) + 30 * k];
            }
          }
        }

        c_sum(fv12, fv13);
        d_sum(fv13, fv14);
        conv2ActivationMap[(f + (c << 4)) + 160 * r] = e_sum(fv14) + biasConv2[f];
      }
    }
  }

  /*  Layer 5: relu2 -- OK */
  /* 'lenetSynthMatlab:62' relu2ActivationMap = max(0, conv2ActivationMap); */
  for (k = 0; k < 10; k++) {
    for (colOutIdx = 0; colOutIdx < 10; colOutIdx++) {
      for (b_k = 0; b_k < 16; b_k++) {
        rowOutIdx = conv2ActivationMap[(b_k + (colOutIdx << 4)) + 160 * k];
        if (0.0 > rowOutIdx) {
          rowOutIdx = 0.0;
        }

        relu2ActivationMap[(b_k + (colOutIdx << 4)) + 160 * k] = rowOutIdx;
      }
    }
  }

  /*  Layer 6: pool2 -- OK */
  /* 'lenetSynthMatlab:65' pool2ActivationMap = zeros(5, 5, 16); */
  memset(&pool2ActivationMap[0], 0, 400U * sizeof(double));

  /* 'lenetSynthMatlab:66' for f = 1:1:16 */
  for (f = 0; f < 16; f++) {
    /* 'lenetSynthMatlab:67' rowOutIdx = 1; */
    rowOutIdx = 1.0;

    /* 'lenetSynthMatlab:68' for r = 1:2:9 */
    for (r = 0; r < 5; r++) {
      k = r << 1;

      /* 'lenetSynthMatlab:69' colOutIdx = 1; */
      colOutIdx = 0;

      /* 'lenetSynthMatlab:70' for c = 1:2:9 */
      for (c = 0; c < 5; c++) {
        b_k = c << 1;

        /* 'lenetSynthMatlab:71' pool2ActivationMap(rowOutIdx, colOutIdx, f) = max(max(relu2ActivationMap(r:r + 1, c:c + 1, f))); */
        for (j = 0; j < 2; j++) {
          b_maxval = relu2ActivationMap[(f + ((j % 2 + b_k) << 4)) + 160 * (j /
            2 + k)];
          if (relu2ActivationMap[(f + ((j % 2 + b_k) << 4)) + 160 * (j / 2 + k)]
              < relu2ActivationMap[(f + (((j + 2) % 2 + b_k) << 4)) + 160 * ((j
                + 2) / 2 + k)]) {
            b_maxval = relu2ActivationMap[(f + (((j + 2) % 2 + b_k) << 4)) + 160
              * ((j + 2) / 2 + k)];
          }

          maxval[j] = b_maxval;
        }

        if (maxval[0] < maxval[1]) {
          pool2ActivationMap[(f + (colOutIdx << 4)) + 80 * ((int)rowOutIdx - 1)]
            = maxval[1];
        } else {
          pool2ActivationMap[(f + (colOutIdx << 4)) + 80 * ((int)rowOutIdx - 1)]
            = maxval[0];
        }

        /* 'lenetSynthMatlab:72' colOutIdx = colOutIdx + 1; */
        colOutIdx++;
      }

      /* 'lenetSynthMatlab:74' rowOutIdx = rowOutIdx + 1; */
      rowOutIdx++;
    }
  }

  /*  Layer 7: fc1 -- OK */
  /* 'lenetSynthMatlab:79' fc1ActivationMap = zeros(120, 1); */
  /* 'lenetSynthMatlab:80' for f = 1:1:120 */
  for (f = 0; f < 120; f++) {
    /* 'lenetSynthMatlab:81' fc1ActivationMap(f) = sum(sum(sum((pool2ActivationMap .* weightsFC1(:, :, :, f))))) + biasFC1(:, :, f); */
    for (k = 0; k < 5; k++) {
      for (colOutIdx = 0; colOutIdx < 5; colOutIdx++) {
        for (b_k = 0; b_k < 16; b_k++) {
          b_pool2ActivationMap[(b_k + (colOutIdx << 4)) + 80 * k] = (float)
            pool2ActivationMap[(b_k + (colOutIdx << 4)) + 80 * k] * weightsFC1
            [((f + 120 * b_k) + 1920 * colOutIdx) + 9600 * k];
        }
      }
    }

    f_sum(b_pool2ActivationMap, fv15);
    g_sum(fv15, fv16);
    fc1ActivationMap[f] = h_sum(fv16) + biasFC1[f];
  }

  /*  Layer 8: relu3 -- OK */
  /* 'lenetSynthMatlab:85' relu3ActivationMap = max(0, fc1ActivationMap); */
  for (k = 0; k < 120; k++) {
    rowOutIdx = fc1ActivationMap[k];
    if (0.0 > rowOutIdx) {
      rowOutIdx = 0.0;
    }

    relu3ActivationMap[k] = rowOutIdx;
  }

  /*  Layer 9: fc2 -- OK */
  /* 'lenetSynthMatlab:88' fc2ActivationMap = weightsFC2 * relu3ActivationMap + biasFC2; */
  /*  Layer 10: fc3 -- OK */
  /* 'lenetSynthMatlab:91' netScores = weightsFC3 * fc2ActivationMap + biasFC3; */
  for (k = 0; k < 84; k++) {
    b_relu3ActivationMap[k] = 0.0F;
    for (colOutIdx = 0; colOutIdx < 120; colOutIdx++) {
      b_relu3ActivationMap[k] += (float)relu3ActivationMap[colOutIdx] *
        weightsFC2[colOutIdx + 120 * k];
    }

    d_relu3ActivationMap[k] = b_relu3ActivationMap[k] + biasFC2[k];
  }

  for (k = 0; k < 10; k++) {
    c_relu3ActivationMap[k] = 0.0F;
    for (colOutIdx = 0; colOutIdx < 84; colOutIdx++) {
      c_relu3ActivationMap[k] += d_relu3ActivationMap[colOutIdx] *
        weightsFC3[colOutIdx + 84 * k];
    }

    netScores[k] = c_relu3ActivationMap[k] + biasFC3[k];
  }
}

/*
 * File trailer for lenetSynthMatlab.c
 *
 * [EOF]
 */
