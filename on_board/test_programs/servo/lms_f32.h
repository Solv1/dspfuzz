
#ifndef DATA_H
#define DATA_H


#define N_TAPS          (256)
#define TOTAL_SAMPLES   (257)
#define N_SAMPLES       (1)
#define SNR_REF_THLD    (80)

#define N_INITIAL       (TOTAL_SAMPLES-N_SAMPLES)
  typedef struct
  {             
        uint16_t numTaps;    /**< number of coefficients in the filter. */
        float *pState;   /**< points to the state variable array. The array is of length numTaps+blockSize-1. */          
	float *pCoeffs;  /**< points to the coefficient array. The array is of length numTaps. */
	float mu;        /**< step size that controls filter coefficient updates. */
  } lms_instance_f32;       
static float mu =  0.0500000000f;

float ref[TOTAL_SAMPLES];
float output_ref[TOTAL_SAMPLES];

#endif  // DATA_H
