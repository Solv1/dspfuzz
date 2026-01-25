#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include "lms_f32.h"

/**
 * @brief Filter state and output
 */



float out[TOTAL_SAMPLES] = {0};
float err[TOTAL_SAMPLES] = {0};
float filter_state[N_TAPS + N_SAMPLES - 1] = {0};

void lms_f32(    
  lms_instance_f32 * S,    
  float * pSrc,    
  float * pRef,    
  float * pOut,    
  float * pErr,    
  uint32_t blockSize)    
{           
        float *pState = S->pState;                 /* State pointer */    
        float *pCoeffs = S->pCoeffs;               /* Coefficient pointer */    
        float *pStateCurnt;                        /* Points to the current sample of the state */    
        float *px, *pb;                            /* Temporary pointers for state and coefficient buffers */    
        float mu = S->mu;                          /* Adaptive factor */    
        float acc, e;                              /* Accumulator, error */    
	float w;                                   /* Weight factor */    
        uint32_t numTaps = S->numTaps;                 /* Number of filter coefficients in the filter */    
        uint32_t tapCnt, blkCnt;                       /* Loop counters */    
     
  /* Initializations of error,  difference, Coefficient update */    
  e = 0.0f;    
  w = 0.0f;    
     
  /* S->pState points to state array which contains previous frame (numTaps - 1) samples */    
  /* pStateCurnt points to the location where the new input data should be written */    
  pStateCurnt = &(S->pState[(numTaps - 1U)]);    
     
  /* initialise loop count */    
  blkCnt = blockSize;    
     
  while (blkCnt > 0U)    
  {    
    /* Copy the new input sample into the state buffer */    
    *pStateCurnt++ = *pSrc++;    
     
    /* Initialize pState pointer */    
    px = pState;    
     
    /* Initialize coefficient pointer */    
    pb = pCoeffs;    
     
    /* Set the accumulator to zero */    
    acc = 0.0f;    
     
    /* Loop unrolling: Compute 4 taps at a time. */    
    tapCnt = numTaps >> 2U;    
     
    while (tapCnt > 0U)    
    {    
      /* Perform the multiply-accumulate */    
      acc += (*px++) * (*pb++);    
     
     acc += (*px++) * (*pb++);
 
      acc += (*px++) * (*pb++);
 
      acc += (*px++) * (*pb++);
 
      /* Decrement loop counter */
      tapCnt--;
    }
 
    /* Loop unrolling: Compute remaining taps */
    tapCnt = numTaps % 0x4U;
 
    while (tapCnt > 0U)
    {
      /* Perform the multiply-accumulate */
      acc += (*px++) * (*pb++);
 
      /* Decrement the loop counter */
      tapCnt--;
    }
 
    /* Store the result from accumulator into the destination buffer. */
    *pOut++ = acc;
 
    /* Compute and store error */
    e = (float) *pRef++ - acc;
    *pErr++ = e;
 
    /* Calculation of Weighting factor for updating filter coefficients */
    w = e * mu;
 
    /* Initialize pState pointer */
    /* Advance state pointer by 1 for the next sample */
    px = pState++;
 
    /* Initialize coefficient pointer */
    pb = pCoeffs;
 
    /* Loop unrolling: Compute 4 taps at a time. */
    tapCnt = numTaps >> 2U;                                                                                           
 
    /* Update filter coefficients */
    while (tapCnt > 0U)
    {
      /* Perform the multiply-accumulate */
     *pb += w * (*px++);
      pb++;
 
      *pb += w * (*px++);
      pb++;
 
      *pb += w * (*px++);
      pb++;
 
      *pb += w * (*px++);
      pb++;
 
      /* Decrement loop counter */
      tapCnt--;
    }
 
    /* Loop unrolling: Compute remaining taps */
    tapCnt = numTaps % 0x4U;
 
    while (tapCnt > 0U)
    {
      /* Perform the multiply-accumulate */
      *pb += w * (*px++);
      pb++;
 
      /* Decrement loop counter */
      tapCnt--;
    }
 
    /* Decrement loop counter */
    blkCnt--;
  }
 
  /* Processing is complete.
     Now copy the last numTaps - 1 samples to the start of the state buffer.
     This prepares the state buffer for the next function call. */
 
  /* Points to the start of the pState buffer */
  pStateCurnt = S->pState;
 
  /* Loop unrolling: Compute 4 taps at a time. */
  tapCnt = (numTaps - 1U) >> 2U;
 
  while (tapCnt > 0U)                         {
    *pStateCurnt++ = *pState++;
    *pStateCurnt++ = *pState++;
    *pStateCurnt++ = *pState++;
    *pStateCurnt++ = *pState++;
 
    /* Decrement loop counter */
    tapCnt--;
  }
 
  /* Loop unrolling: Compute remaining taps */
  tapCnt = (numTaps - 1U) % 0x4U;
 
  while (tapCnt > 0U)
  {
    *pStateCurnt++ = *pState++;
 
    /* Decrement loop counter */
    tapCnt--;
  }
 
}



void lms_init_f32(    
  lms_instance_f32 * S,    
  uint16_t numTaps,    
  float * pCoeffs,    
  float * pState,    
  float mu,    
  uint32_t blockSize)    
{    
  /* Assign filter taps */    
  S->numTaps = numTaps;    
     
  /* Assign coefficient pointer */    
  S->pCoeffs = pCoeffs;    
     
  /* Assign state pointer */    
  S->pState = pState;    
     
  /* Assign Step size value */    
  S->mu = mu;    
}    

/**
 * @brief test_main
 * 
 */
int lms_f32_t (float * input)
{
  uint32_t ccnt;
  uint32_t fail_count = 0;
  uint32_t ptr;

  // filter initialization
  lms_instance_f32 filter_S;
  float coeff[N_TAPS] = {0};

  lms_init_f32(&filter_S, N_TAPS, coeff, filter_state, mu, N_SAMPLES);

  // ignore the first N_INITIAL outputs (bad output based on zero initial state)
  for (ptr = 0; ptr < (N_INITIAL/N_SAMPLES); ptr++)
  {
    lms_f32(&filter_S, input + (ptr * N_SAMPLES), ref + (ptr * N_SAMPLES), out + (ptr * N_SAMPLES), err + (ptr * N_SAMPLES), N_SAMPLES);
  }

  lms_f32(&filter_S, input + N_INITIAL, ref + N_INITIAL, out + N_INITIAL, err + N_INITIAL, N_SAMPLES);

  return 0;
}
