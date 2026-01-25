#include <stdint.h>



#define N_TAPS (256)
#define TOTAL_SAMPLES (384)
#define N_SAMPLES (128)
#define SNR_REF_THLD (123)


  typedef struct
  {
        uint16_t numTaps;     /**< number of filter coefficients in the filter. */
        float *pState;    /**< points to the state variable array. The array is of length numTaps+blockSize-1. */
    	float *pCoeffs;   /**< points to the coefficient array. The array is of length numTaps. */
  } fir_instance_f32;

