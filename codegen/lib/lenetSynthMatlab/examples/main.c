/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 * File: main.c
 *
 * MATLAB Coder version            : 4.0
 * C/C++ source code generated on  : 09-Dec-2018 12:31:10
 */

/*************************************************************************/
/* This automatically generated example C main file shows how to call    */
/* entry-point functions that MATLAB Coder generated. You must customize */
/* this file for your application. Do not modify this file directly.     */
/* Instead, make a copy of this file, modify it, and integrate it into   */
/* your development environment.                                         */
/*                                                                       */
/* This file initializes entry-point function arguments to a default     */
/* size and value before calling the entry-point functions. It does      */
/* not store or use any values returned from the entry-point functions.  */
/* If necessary, it does pre-allocate memory for returned values.        */
/* You can use this file as a starting point for a main function that    */
/* you can deploy in your application.                                   */
/*                                                                       */
/* After you copy the file, and before you deploy it, you must make the  */
/* following changes:                                                    */
/* * For variable-size function arguments, change the example sizes to   */
/* the sizes that your application requires.                             */
/* * Change the example values of function arguments to the values that  */
/* your application requires.                                            */
/* * If the entry-point functions return values, store these values or   */
/* otherwise use them as required by your application.                   */
/*                                                                       */
/*************************************************************************/
/* Include Files */
#include "lenetSynthMatlab.h"
#include "main.h"
#include "lenetSynthMatlab_terminate.h"
#include "lenetSynthMatlab_initialize.h"

/* Function Declarations */
static void argInit_32x32_uint8_T(unsigned char result[1024]);
static unsigned char argInit_uint8_T(void);
static void main_lenetSynthMatlab(void);

/* Function Definitions */

/*
 * Arguments    : unsigned char result[1024]
 * Return Type  : void
 */
static void argInit_32x32_uint8_T(unsigned char result[1024])
{
  int idx0;
  int idx1;

  /* Loop over the array to initialize each element. */
  for (idx0 = 0; idx0 < 32; idx0++) {
    for (idx1 = 0; idx1 < 32; idx1++) {
      /* Set the value of the array element.
         Change this value to the value that the application requires. */
      result[idx1 + (idx0 << 5)] = argInit_uint8_T();
    }
  }
}

/*
 * Arguments    : void
 * Return Type  : unsigned char
 */
static unsigned char argInit_uint8_T(void)
{
  return 0U;
}

/*
 * Arguments    : void
 * Return Type  : void
 */
static void main_lenetSynthMatlab(void)
{
  unsigned char uv0[1024];
  float netScores[10];

  /* Initialize function 'lenetSynthMatlab' input arguments. */
  /* Initialize function input argument 'inputImg'. */
  /* Call the entry-point 'lenetSynthMatlab'. */
  argInit_32x32_uint8_T(uv0);
  lenetSynthMatlab(uv0, netScores);
}

/*
 * Arguments    : int argc
 *                const char * const argv[]
 * Return Type  : int
 */
int main(int argc, const char * const argv[])
{
  (void)argc;
  (void)argv;

  /* Initialize the application.
     You do not need to do this more than one time. */
  lenetSynthMatlab_initialize();

  /* Invoke the entry-point functions.
     You can call entry-point functions multiple times. */
  main_lenetSynthMatlab();

  /* Terminate the application.
     You do not need to do this more than one time. */
  lenetSynthMatlab_terminate();
  return 0;
}

/*
 * File trailer for main.c
 *
 * [EOF]
 */
