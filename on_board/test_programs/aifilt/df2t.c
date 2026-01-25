#include "df2t.h"


float output_init[N_INITIAL] = {0};
float output[N_SAMPLES] = {0};
float filter_state [2*N_STAGES] = {0};


void biquad_cascade_df2T_init_f(biquad_cascade_df2T_instance_f * S, uint16_t numStages, float * pCoeffs, float * pState)
{
	S->numStages = numStages;
	S->pCoeffs = pCoeffs;

	S->pState = pState;

}

void biquad_cascade_df2T_f(biquad_cascade_df2T_instance_f * S, float * pSrc, float * pDst, uint32_t blockSize) 
{
	float *pIn = pSrc;
	float *pOut = pDst;
	float *pState = S->pCoeffs;
	float *pCoeffs = S->pCoeffs;
	float acc1;
	float b0, b1, b2, a1, a2;
	float Xn1;
	float d1, d2;
	uint32_t sample, stage = S->numStages;

	do
	{	
		/* Read coefficients */
		b0 = pCoeffs[0];
		b1 = pCoeffs[1];
		b2 = pCoeffs[2];
		a1 = pCoeffs[3];
		a2 = pCoeffs[4];

		/* Reading the state values */
		d1 = pState[0];
		d2 = pState[1];

		pCoeffs += 5U;

		
		sample = blockSize;

		while (sample > 0U) 
		{
			Xn1 = *pIn++;

			acc1 = b0 * Xn1 + d1;

			d1 = b1 * Xn1 + d2;
			d1 += a1 * acc1;

			d2 = b2 * Xn1;
			d2 += a2 * acc1;

			*pOut++ = acc1;

			sample --;
		}

		pState[0] = d1;
		pState[1] = d2;

		pState += 2U;

		/*Current stage output is given as the input to the next stage*/
		pIn = pDst;

		/*Reset the output working pointer */
		pOut = pDst;

		/*decrement loop counter*/
		stage--;

	} while (stage > 0U);


}



int df2t_test(float * input) 
{

	biquad_cascade_df2T_instance_f filter_S;
	biquad_cascade_df2T_init_f(&filter_S, N_STAGES, coeff, filter_state);

	biquad_cascade_df2T_f(&filter_S, input, output_init, N_INITIAL); //Don't care about the outputs, so we can set the same buffer to be an output.
	biquad_cascade_df2T_f(&filter_S, input + N_INITIAL, output, N_SAMPLES);

	//snr_f32(output_ref, output, N_SAMPLES); // if we have space add this.
	return 0;
}
