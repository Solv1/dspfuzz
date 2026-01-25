#include <stdint.h>
#include <string.h>


#define TOTAL_SAMPLES 108
#define N_INITIAL 107
#define N_STAGES 3
#define N_SAMPLES 1

typedef struct
{
	uint16_t numStages;

	float *pState;
	float *pCoeffs;


} biquad_cascade_df2T_instance_f;

float coeff[N_STAGES*5] = 
{
   0.0039483680f,  0.0078967361f,  0.0039483680f,  1.7608803572f, -0.7760749244f,  0.0039483680f,  0.0078967361f,  0.0039483680f, 
   1.8153410827f, -0.8310055893f,  0.0039483680f,  0.0078967361f,  0.0039483680f,  1.9180914819f, -0.9346426177f
};

