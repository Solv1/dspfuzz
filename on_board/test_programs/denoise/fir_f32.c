#include <stdio.h>
#include "fir_f32.h"

float coeff[N_TAPS] = 
{
  -0.0001658605f, -0.0001514255f, -0.0001345542f, -0.0001152770f, -0.0000936265f, -0.0000696460f, -0.0000433997f, -0.0000149822f, 
   0.0000154699f,  0.0000477679f,  0.0000816607f,  0.0001168265f,  0.0001528652f,  0.0001892938f,  0.0002255441f,  0.0002609631f, 
   0.0002948174f,  0.0003263001f,  0.0003545422f,  0.0003786270f,  0.0003976087f,  0.0004105331f,  0.0004164625f,  0.0004145019f, 
   0.0004038284f,  0.0003837201f,  0.0003535874f,  0.0003130020f,  0.0002617263f,  0.0001997397f,  0.0001272621f,  0.0000447735f, 
  -0.0000469711f, -0.0001469328f, -0.0002537853f, -0.0003659191f, -0.0004814527f, -0.0005982511f, -0.0007139523f, -0.0008260013f, 
  -0.0009316914f, -0.0010282127f, -0.0011127063f, -0.0011823245f, -0.0012342953f, -0.0012659897f, -0.0012749913f, -0.0012591664f, 
  -0.0012167326f, -0.0011463247f, -0.0010470570f, -0.0009185780f, -0.0007611189f, -0.0005755322f, -0.0003633194f, -0.0001266477f, 
   0.0001316472f,  0.0004080717f,  0.0006984995f,  0.0009982114f,  0.0013019503f,  0.0016039907f,  0.0018982216f,  0.0021782437f, 
   0.0024374773f,  0.0026692813f,  0.0028670810f,  0.0030245015f,  0.0031355061f,  0.0031945364f,  0.0031966517f,  0.0031376641f, 
   0.0030142681f,  0.0028241604f,  0.0025661489f,  0.0022402457f,  0.0018477446f,  0.0013912788f,  0.0008748577f,  0.0003038810f, 
  -0.0003148710f, -0.0009732722f, -0.0016619105f, -0.0023701729f, -0.0030863556f, -0.0037977976f, -0.0044910368f, -0.0051519868f, 
  -0.0057661318f, -0.0063187374f, -0.0067950732f, -0.0071806452f, -0.0074614332f, -0.0076241304f, -0.0076563796f, -0.0075470041f, 
  -0.0072862275f, -0.0068658790f, -0.0062795806f, -0.0055229121f, -0.0045935513f, -0.0034913855f, -0.0022185925f, -0.0007796886f, 
   0.0008184576f,  0.0025666476f,  0.0044534101f,  0.0064650948f,  0.0085860010f,  0.0107985395f,  0.0130834266f,  0.0154199071f, 
   0.0177860033f,  0.0201587870f,  0.0225146699f,  0.0248297088f,  0.0270799203f,  0.0292416008f,  0.0312916465f,  0.0332078690f, 
   0.0349693002f,  0.0365564838f,  0.0379517469f,  0.0391394479f,  0.0401061977f,  0.0408410487f,  0.0413356509f,  0.0415843706f, 
   0.0415843706f,  0.0413356509f,  0.0408410487f,  0.0401061977f,  0.0391394479f,  0.0379517469f,  0.0365564838f,  0.0349693002f, 
   0.0332078690f,  0.0312916465f,  0.0292416008f,  0.0270799203f,  0.0248297088f,  0.0225146699f,  0.0201587870f,  0.0177860033f, 
   0.0154199071f,  0.0130834266f,  0.0107985395f,  0.0085860010f,  0.0064650948f,  0.0044534101f,  0.0025666476f,  0.0008184576f, 
  -0.0007796886f, -0.0022185925f, -0.0034913855f, -0.0045935513f, -0.0055229121f, -0.0062795806f, -0.0068658790f, -0.0072862275f, 
  -0.0075470041f, -0.0076563796f, -0.0076241304f, -0.0074614332f, -0.0071806452f, -0.0067950732f, -0.0063187374f, -0.0057661318f, 
  -0.0051519868f, -0.0044910368f, -0.0037977976f, -0.0030863556f, -0.0023701729f, -0.0016619105f, -0.0009732722f, -0.0003148710f, 
   0.0003038810f,  0.0008748577f,  0.0013912788f,  0.0018477446f,  0.0022402457f,  0.0025661489f,  0.0028241604f,  0.0030142681f, 
   0.0031376641f,  0.0031966517f,  0.0031945364f,  0.0031355061f,  0.0030245015f,  0.0028670810f,  0.0026692813f,  0.0024374773f, 
   0.0021782437f,  0.0018982216f,  0.0016039907f,  0.0013019503f,  0.0009982114f,  0.0006984995f,  0.0004080717f,  0.0001316472f, 
  -0.0001266477f, -0.0003633194f, -0.0005755322f, -0.0007611189f, -0.0009185780f, -0.0010470570f, -0.0011463247f, -0.0012167326f, 
  -0.0012591664f, -0.0012749913f, -0.0012659897f, -0.0012342953f, -0.0011823245f, -0.0011127063f, -0.0010282127f, -0.0009316914f, 
  -0.0008260013f, -0.0007139523f, -0.0005982511f, -0.0004814527f, -0.0003659191f, -0.0002537853f, -0.0001469328f, -0.0000469711f, 
   0.0000447735f,  0.0001272621f,  0.0001997397f,  0.0002617263f,  0.0003130020f,  0.0003535874f,  0.0003837201f,  0.0004038284f, 
   0.0004145019f,  0.0004164625f,  0.0004105331f,  0.0003976087f,  0.0003786270f,  0.0003545422f,  0.0003263001f,  0.0002948174f, 
   0.0002609631f,  0.0002255441f,  0.0001892938f,  0.0001528652f,  0.0001168265f,  0.0000816607f,  0.0000477679f,  0.0000154699f, 
  -0.0000149822f, -0.0000433997f, -0.0000696460f, -0.0000936265f, -0.0001152770f, -0.0001345542f, -0.0001514255f, -0.0001658605f
};

/**
 * @brief Filter state and output
 */

float output[N_SAMPLES];
float filter_state [N_TAPS + N_SAMPLES - 1];




void fir_init_f32(fir_instance_f32 * S, uint16_t numTaps, float * pCoeffs, float * pState, uint32_t blockSize) 
{
	S->numTaps = numTaps;
	S->pCoeffs = pCoeffs;

	memset(pState, 0, (numTaps + (blockSize - 1U)) * sizeof(float));

	S->pState = pState;

}


void fir_f32(fir_instance_f32 * S, float * pSrc, float * pDst, uint32_t blockSize){
	float *pState = S->pState;                 /* State pointer */    
  	float *pCoeffs = S->pCoeffs;               /* Coefficient pointer */    
        float *pStateCurnt;                        /* Points to the current sample of the state */    
        float *px;                                 /* Temporary pointer for state buffer */    
  	float *pb;                                 /* Temporary pointer for coefficient buffer */    
        float acc0;                                /* Accumulator */    
        uint32_t numTaps = S->numTaps;                 /* Number of filter coefficients in the filter */    
        uint32_t i, tapCnt, blkCnt;                    /* Loop counters */    

	float acc1, acc2, acc3, acc4, acc5, acc6, acc7;     /* Accumulators */    
        float x0, x1, x2, x3, x4, x5, x6, x7;               /* Temporary variables to hold state values */    
        float c0;

  blkCnt = blockSize >> 3U;

  while (blkCnt > 0U)
  {
    /* Copy 4 new input samples into the state buffer. */
    *pStateCurnt++ = *pSrc++;
    *pStateCurnt++ = *pSrc++;
    *pStateCurnt++ = *pSrc++;
    *pStateCurnt++ = *pSrc++;

    /* Set all accumulators to zero */
    acc0 = 0.0f;
    acc1 = 0.0f;
    acc2 = 0.0f;
    acc3 = 0.0f;
    acc4 = 0.0f;
    acc5 = 0.0f;
    acc6 = 0.0f;
    acc7 = 0.0f;

    /* Initialize state pointer */
    px = pState;

    /* Initialize coefficient pointer */
    pb = pCoeffs;

    /* This is separated from the others to avoid
     * a call to __aeabi_memmove which would be slower
     */
    *pStateCurnt++ = *pSrc++;
    *pStateCurnt++ = *pSrc++;
    *pStateCurnt++ = *pSrc++;
    *pStateCurnt++ = *pSrc++;

    /* Read the first 7 samples from the state buffer:  x[n-numTaps], x[n-numTaps-1], x[n-numTaps-2] */
    x0 = *px++;
    x1 = *px++;
    x2 = *px++;
    x3 = *px++;
    x4 = *px++;
    x5 = *px++;
    x6 = *px++;

    /* Loop unrolling: process 8 taps at a time. */
    tapCnt = numTaps >> 3U;

    while (tapCnt > 0U)
    {
      /* Read the b[numTaps-1] coefficient */
      c0 = *(pb++);

      /* Read x[n-numTaps-3] sample */
      x7 = *(px++);

      /* acc0 +=  b[numTaps-1] * x[n-numTaps] */
      acc0 += x0 * c0;

      /* acc1 +=  b[numTaps-1] * x[n-numTaps-1] */
      acc1 += x1 * c0;

      /* acc2 +=  b[numTaps-1] * x[n-numTaps-2] */
      acc2 += x2 * c0;

      /* acc3 +=  b[numTaps-1] * x[n-numTaps-3] */
      acc3 += x3 * c0;

      /* acc4 +=  b[numTaps-1] * x[n-numTaps-4] */
      acc4 += x4 * c0;

      /* acc1 +=  b[numTaps-1] * x[n-numTaps-5] */
      acc5 += x5 * c0;

      /* acc2 +=  b[numTaps-1] * x[n-numTaps-6] */
      acc6 += x6 * c0;

      /* acc3 +=  b[numTaps-1] * x[n-numTaps-7] */
      acc7 += x7 * c0;

      /* Read the b[numTaps-2] coefficient */
      c0 = *(pb++);

      /* Read x[n-numTaps-4] sample */
      x0 = *(px++);

      /* Perform the multiply-accumulate */
      acc0 += x1 * c0;
      acc1 += x2 * c0;
      acc2 += x3 * c0;
      acc3 += x4 * c0;
      acc4 += x5 * c0;
      acc5 += x6 * c0;
      acc6 += x7 * c0;
      acc7 += x0 * c0;

      /* Read the b[numTaps-3] coefficient */
      c0 = *(pb++);

      /* Read x[n-numTaps-5] sample */
      x1 = *(px++);

      /* Perform the multiply-accumulates */
      acc0 += x2 * c0;
      acc1 += x3 * c0;
      acc2 += x4 * c0;
      acc3 += x5 * c0;
      acc4 += x6 * c0;
      acc5 += x7 * c0;
      acc6 += x0 * c0;
      acc7 += x1 * c0;

      /* Read the b[numTaps-4] coefficient */
      c0 = *(pb++);

      /* Read x[n-numTaps-6] sample */
      x2 = *(px++);

      /* Perform the multiply-accumulates */
      acc0 += x3 * c0;
      acc1 += x4 * c0;
      acc2 += x5 * c0;
      acc3 += x6 * c0;
      acc4 += x7 * c0;
      acc5 += x0 * c0;
      acc6 += x1 * c0;
      acc7 += x2 * c0;

      /* Read the b[numTaps-4] coefficient */
      c0 = *(pb++);

      /* Read x[n-numTaps-6] sample */
      x3 = *(px++);
      /* Perform the multiply-accumulates */
      acc0 += x4 * c0;
      acc1 += x5 * c0;
      acc2 += x6 * c0;
      acc3 += x7 * c0;
      acc4 += x0 * c0;
      acc5 += x1 * c0;
      acc6 += x2 * c0;
      acc7 += x3 * c0;

      /* Read the b[numTaps-4] coefficient */
      c0 = *(pb++);

      /* Read x[n-numTaps-6] sample */
      x4 = *(px++);

      /* Perform the multiply-accumulates */
      acc0 += x5 * c0;
      acc1 += x6 * c0;
      acc2 += x7 * c0;
      acc3 += x0 * c0;
      acc4 += x1 * c0;
      acc5 += x2 * c0;
      acc6 += x3 * c0;
      acc7 += x4 * c0;

      /* Read the b[numTaps-4] coefficient */
      c0 = *(pb++);

      /* Read x[n-numTaps-6] sample */
      x5 = *(px++);

      /* Perform the multiply-accumulates */
      acc0 += x6 * c0;
      acc1 += x7 * c0;
      acc2 += x0 * c0;
      acc3 += x1 * c0;
      acc4 += x2 * c0;
      acc5 += x3 * c0;
      acc6 += x4 * c0;
      acc7 += x5 * c0;

      /* Read the b[numTaps-4] coefficient */
      c0 = *(pb++);

      /* Read x[n-numTaps-6] sample */
      x6 = *(px++);

      /* Perform the multiply-accumulates */
      acc0 += x7 * c0;
      acc1 += x0 * c0;
      acc2 += x1 * c0;
      acc3 += x2 * c0;
      acc4 += x3 * c0;
      acc5 += x4 * c0;
      acc6 += x5 * c0;
      acc7 += x6 * c0;

      /* Decrement loop counter */
      tapCnt--;
    }

    /* Loop unrolling: Compute remaining outputs */
    tapCnt = numTaps % 0x8U;

    while (tapCnt > 0U)
    {
      /* Read coefficients */
      c0 = *(pb++);

      /* Fetch 1 state variable */
      x7 = *(px++);

      /* Perform the multiply-accumulates */
      acc0 += x0 * c0;
      acc1 += x1 * c0;
      acc2 += x2 * c0;
      acc3 += x3 * c0;
      acc4 += x4 * c0;
      acc5 += x5 * c0;
      acc6 += x6 * c0;
      acc7 += x7 * c0;

      /* Reuse the present sample states for next sample */
      x0 = x1;
      x1 = x2;
      x2 = x3;
      x3 = x4;
      x4 = x5;
      x5 = x6;
      x6 = x7;

      /* Decrement loop counter */
      tapCnt--;
    }

    /* Advance the state pointer by 8 to process the next group of 8 samples */
    pState = pState + 8;

    /* The results in the 8 accumulators, store in the destination buffer. */
    *pDst++ = acc0;
    *pDst++ = acc1;
    *pDst++ = acc2;
    *pDst++ = acc3;
    *pDst++ = acc4;
    *pDst++ = acc5;
    *pDst++ = acc6;
    *pDst++ = acc7;


    /* Decrement loop counter */
    blkCnt--;
  }

  /* Loop unrolling: Compute remaining output samples */
  blkCnt = blockSize % 0x8U;
 while (blkCnt > 0U)
  {
    /* Copy one sample at a time into state buffer */
    *pStateCurnt++ = *pSrc++;

    /* Set the accumulator to zero */
    acc0 = 0.0f;

    /* Initialize state pointer */
    px = pState;

    /* Initialize Coefficient pointer */
    pb = pCoeffs;

    i = numTaps;

    /* Perform the multiply-accumulates */
    while (i > 0U)
    {
      /* acc =  b[numTaps-1] * x[n-numTaps-1] + b[numTaps-2] * x[n-numTaps-2] + b[numTaps-3] * x[n-numTaps-3] +...+ b[0] * x[0] */
      acc0 += *px++ * *pb++;

      i--;
    }

    /* Store result in destination buffer. */
    *pDst++ = acc0;

    /* Advance state pointer by 1 for the next sample */
    pState = pState + 1U;

    /* Decrement loop counter */
    blkCnt--;
  }

  /* Processing is complete.
     Now copy the last numTaps - 1 samples to the start of the state buffer.
     This prepares the state buffer for the next function call. */

  /* Points to the start of the state buffer */
  pStateCurnt = S->pState;

  /* Loop unrolling: Compute 4 taps at a time */
  tapCnt = (numTaps - 1U) >> 2U;

  /* Copy data */
  while (tapCnt > 0U)
  {
    *pStateCurnt++ = *pState++;
    *pStateCurnt++ = *pState++;
    *pStateCurnt++ = *pState++;
    *pStateCurnt++ = *pState++;

    /* Decrement loop counter */
    tapCnt--;
  }

  /* Calculate remaining number of copies */
  tapCnt = (numTaps - 1U) % 0x4U;
  while (tapCnt > 0U)
  {
    *pStateCurnt++ = *pState++;

    /* Decrement loop counter */
    tapCnt--;
  }

}

/**
 * @brief main
 * 
 */
int fir_test (float * input)
{
  uint32_t ccnt;
  uint32_t fail_count = 0;
  float output_initial[N_TAPS];
  uint32_t ptr;

  // filter initialization
  fir_instance_f32 filter_S;
  fir_init_f32(&filter_S, N_TAPS, coeff, filter_state, N_SAMPLES);

  // ignore the first N_TAPS outputs (bad output based on zero initial state)
  for (ptr = 0; ptr < (N_TAPS/N_SAMPLES); ptr++)
  {
    fir_f32(&filter_S, input + (ptr * N_SAMPLES), output_initial + (ptr * N_SAMPLES), N_SAMPLES);
  }

  fir_f32(&filter_S, (input + N_TAPS), output, N_SAMPLES);

  return 0;

}
