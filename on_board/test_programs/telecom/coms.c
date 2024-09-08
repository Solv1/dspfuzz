/** coms.c
 * A surogate software for communcaiton.
 * Written by Santiago Garcia
 */

#include <stdlib.h>
#include <stdint.h>
#include <stdio.h>
#include <stdbool.h>
#include <time.h>
#include <string.h> //For memcopy

#include <math.h>

#include <tms320.h>
#include <dsplib.h>
#include <dsplib_c.h>

#include <coms.h>

#define MAX_VALUE 255      /*8-bit resolution*/
#define REFERANCE_VOLTAGE 12.0
#define PI 3.14159265359

void gen_sinc(int16_t * input, int16_t size){
    int16_t i;

    for (i = 0; i< size; i++){
        input[i] = sin(input[i])/input[i];
    }

}


int16_t analog_digital_conversion(float * analog_sig, int16_t * digital_out, int16_t size){
    int16_t i;
    
    for (i = 0; i < size; i++){
        if(analog_sig[i] > REFERANCE_VOLTAGE){
            analog_sig[i] = REFERANCE_VOLTAGE;
        }
        else if (analog_sig[i] < 0){
            analog_sig[i] = 0;
        }

        digital_out[i] = (analog_sig[i] / REFERANCE_VOLTAGE) * MAX_VALUE;
    }
    return 0;
}

int16_t noise_reduction(int16_t * in, int16_t * out, int16_t size){
    int16_t i;

    int16_t * buf = calloc(size, sizeof(int16_t));
    memcpy(buf, in, size);

    /*Figure out the sinc of our signal*/
    gen_sinc(buf, size);

    /*Lets do a FFT for the frequency domain.*/
    rfft((DATA *)in, (ushort)size, NOSCALE);

    convol((DATA *)in, (DATA *) buf, (DATA *)out, size, size); 


    return 0;
}


int16_t communcation_test(int16_t * input, int16_t size){
    
    int16_t real_size = size/2;

    /*Floats are 32-bits here*/
    float * real_buf = calloc((size), sizeof(int16_t));
    int16_t * out_buf = calloc(real_size, sizeof(int16_t));

    memcpy(real_buf,input,size);

    /*Need to take this analog signal and turn it into a digital one for processing*/
    analog_digital_conversion(real_buf, out_buf,real_size);
    free(real_buf);

    int16_t * in_buf = calloc(real_size, sizeof(int16_t));
    memcpy(in_buf, out_buf, real_size);
    noise_reduction(in_buf, out_buf, real_size);


    free(in_buf);
    free(out_buf);

    return 0;

}