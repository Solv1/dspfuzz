/** pace.c
 * A surogate software of a pacemaker.
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
#include <csl_gpio.h>
#include <csl_types.h>
#include <csl_intc.h>


#include "test_functions.h"


#include <math.h>

#define WINDOW_SIZE 30     // Window size for moving average integration
#define SAMPLING_RATE 200  // Example sampling rate (in Hz)
#define THRESHOLD 200      // Threshold for QRS detection 
#define NX 32
#define NH 16
#define SHORT_MAX 32767




// DATA lowPassImpulse[NH]= {
//     0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0
// };
// DATA highPassImpulse[NH]= {
//     -10,-10,-10,-10,-10,-10,255,-10,-10,-10,-10,-10,-10,-10,-10,-10
// };
// #pragma DATA_SECTION (dataBuf,".dbuffer")
//     DATA dataBuf[NX];

// #pragma DATA_SECTION (filterCoefficient,".coeffs")
//     DATA filterCoefficient[NH]= {
//     25,43,76,43,52,12,90,1,42,36,100,23,43,123,54,
//     };

// GPIO_Handle hGpio;
// CSL_GpioPinConfig config;
// CSL_GpioObj GpioObj;
// CSL_Status status;
// void config_gpio();
// void generate_pulse();
// bool shockFlag = false;

void derivative(DATA * input, DATA * output, uint16_t length );
void squaring(DATA * input, DATA * output, uint16_t length);
void moving_window_integration(DATA * input, DATA * output, uint16_t length, uint16_t window_size);
void detect_peaks(DATA * input, DATA * output, uint16_t length, uint16_t intial_threshold);
void pan_tomkins(DATA * input, DATA * output, uint16_t size);

int16_t pace_test(int16_t * raw_data, uint16_t size){

    int16_t i;

    int16_t numPeaks = 0;
    short retVal = 0;
    // DATA dataBuf[NX];
    // DATA inputBuf[NX+NH];
    // DATA output[NX];
    // DATA des[NX];

    DATA lowPassImpulse[NH]= {
        0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0
    };
    DATA highPassImpulse[NH]= {
        -10,-10,-10,-10,-10,-10,255,-10,-10,-10,-10,-10,-10,-10,-10,-10
    };
    DATA filterCoefficient[NH]= {
        25,43,76,43,52,12,90,1,42,36,100,23,43,123,54,
    };
    if(size < NH+NX){
        return -1;
    }

    for(i = 0; i < size; i++){  //Check for legal values
        if(raw_data[i] >= SHORT_MAX){
            return -1;
        }
        else if(raw_data[i] < 1){
            return -1;
        }
    }
    DATA * inputBuf = calloc(NX+NH, sizeof(DATA));           /*Buffers for input output and a dummy input. Note: DATA type is just a short value*/
    DATA * output = calloc(NX , sizeof(DATA));
    DATA * dataBuf = calloc(NX, sizeof(DATA));
    DATA * des = calloc(NX, sizeof(DATA));
    memcpy(inputBuf, raw_data, NX+NH);
    memset(output,0,NX);
    memset(dataBuf,0,size+NH);
    memset(des,0,size);

    
    
    /*Noise Filtering*/
    retVal = convol(inputBuf, lowPassImpulse, dataBuf, NX, NX-NH);     /*Low pass filter*/
    if(retVal){
        free(inputBuf);
        free(output);
        free(dataBuf);
        free(des);
        return -1;    
    }
    memcpy(inputBuf, raw_data, NX+NH);

    retVal= convol(inputBuf, highPassImpulse, output, NX, NX-NH);        /*High pass filter*/
    if(retVal){
        free(inputBuf);
        free(output);
        free(dataBuf);
        free(des);
        return -1;    
    }


    for(i=0; i< NX; i++){
        output[i] = output[i]+dataBuf[i];
        dataBuf[i] = 0;
    }
    // /*Artifact Removal*/
    // retVal = dlms(output,filterCoefficient,inputBuf,des,dataBuf,1, NH,NX); //USED TO BE size-NH*2
    // if(retVal){
    //     // free(inputBuf);
    //     // free(output);
    //     // free(dataBuf);
    //     // free(des);
    //     return -1;    
    // }
    pan_tomkins(output,des,NX);

    for(i = 0; i < NX; i++){
        if(des[i] >= 1){
            numPeaks++;
        }
    }
    if(numPeaks == 0){
        free(inputBuf);
        free(output);
        free(dataBuf);
        free(des);
        //Patient is dead error condtion...
        return -1;
    }
    
    if(numPeaks < 5){
        /*Patient has a weak pulse shock him.*/
        free(inputBuf);
        free(output);
        free(dataBuf);
        free(des);
        return 1;
        // config_gpio();
        // generate_pulse();
        // GPIO_close(hGpio);
    }
    else if(numPeaks > 5){
        /*Patient is okay continue on*/
        free(inputBuf);
        free(output);
        free(dataBuf);
        free(des);
        return 0;
    }



    /*Free memory*/
    free(inputBuf);
    free(output);
    free(dataBuf);
    free(des);

    return 0;
}
// void generate_pulse(){
//    uintNH_t i = 0;
//    // GPIO_write(hGpio, CSL_GPIO_PIN0,0);
//    /*Generate a Pulse and then send it out.*/
//    for(i = 0; i < 2000; i++){
//        if(i%999 == 0){
//            GPIO_write(hGpio, CSL_GPIO_PIN4,1);
//            // GPIO_pin(hGpio);
//        }
//        else if(i % 1999 == 0){
//            GPIO_write(hGpio, CSL_GPIO_PIN5,1);
//            // GPIO_reset(hGpio);
//        }
//    }
// }
// void config_gpio(){

//    hGpio = GPIO_open(&GpioObj,&status);
//    GPIO_reset(hGpio);

//    config.pinNum = CSL_GPIO_PIN4;
//    config.direction = CSL_GPIO_DIR_OUTPUT;
//    config.trigger = CSL_GPIO_TRIG_FALLING_EDGE;
//    GPIO_configBit(hGpio, &config);
//    config.pinNum = CSL_GPIO_PIN5;
//    config.direction = CSL_GPIO_DIR_OUTPUT;
//    config.trigger = CSL_GPIO_TRIG_FALLING_EDGE;
//    GPIO_configBit(hGpio, &config);
//    // GPIO_pinDirection(hGpio,CSL_GPIO_PIN0 | CSL_GPIO_PIN1, CSL_GPIO_PIN0_OUTPUT| CSL_GPIO_PIN1_OUTPUT );

// }

void derivative(DATA * input, DATA * output, uint16_t length ){
    uint16_t i;
    int32_t temp;

    for (i = 4; i < length; i++) {
        temp = 2 * input[i] + input[i - 1] - input[i - 3] - 2 * input[i - 4];
        output[i] = (int16_t)(temp / 8);
    }
    // Fill the first four values with zeros
    for (i = 0; i < 4; i++) {
        output[i] = 0;
    }
}
void squaring(DATA * input, DATA * output, uint16_t length){
    int16_t i;
    int32_t temp;
    for (i = 0; i < length; i++) {
        temp = input[i] * input[i];
        output[i] = temp;//(intNH_t)(temp >> Q15_SHIFT); // Scale back to Q15
    }
}
void moving_window_integration(DATA * input, DATA * output, uint16_t length, uint16_t window_size){
    int16_t i = 0;
    int32_t sum = 0;
    for (i = 0; i < length; i++) {
        sum += input[i];
        if (i >= window_size) {
            sum -= input[i - window_size];
        }
        output[i] = (int16_t)(sum / window_size);
    }
    // Fill the first few values to zero if they don't complete the window size
    for (i = 0; i < window_size; i++) {
        output[i] = 0;
    }
}
void detect_peaks(DATA * input, DATA * output, uint16_t length, uint16_t intial_threshold){
    int16_t i;
    int16_t threshold = intial_threshold;
    int16_t peak = 0;

    for (i = 0; i < length; i++) {
        if (input[i] > peak) {
            peak = input[i];
        }

        // Dynamic threshold adjustment
        if (input[i] > threshold) {
            output[i] = 1; // QRS detected
            threshold = (peak + threshold) / 2; // Update the threshold
        } else {
            output[i] = 0; // No QRS
        }
    }
}




void pan_tomkins(DATA * input, DATA * output, uint16_t size){
    derivative(input,output,size);
    squaring(output, input, size);
    moving_window_integration(input, output, size, WINDOW_SIZE);
    detect_peaks(output, input, size, THRESHOLD);
    memcpy(output, input, size);
}


// void low_pass_filter(float *signal, uintNH_t length) {
//     float prev1 = 0, prev2 = 0;
//     uintNH_t i = 0;
//     for (i = 0; i < length; i++) {
//         float filtered = 2 * prev1 - prev2 + signal[i] - 2 * signal[i - 6] + signal[i - 12]; 
//         prev2 = prev1;
//         prev1 = filtered;
//         signal[i] = filtered;
//     }
// }


// void high_pass_filter(float *signal, uintNH_t length) {
//     uintNH_t i = 0;
//     float prev1 = 0, prev2 = 0;
//     for (i = 0; i < length; i++) {
//         float filtered = prev2 - (signal[i] / NX) + signal[i - NH] - signal[i - 17] + signal[i - NX];
//         prev2 = prev1;
//         prev1 = filtered;
//         signal[i] = filtered;
//     }
// }

// void derivative_filter(float *signal, uintNH_t length, float *output) {
//     uintNH_t i = 0;
//     for (i = 2; i < length - 2; i++) {
//         output[i] = (2 * signal[i] + signal[i - 1] - signal[i - 3] - 2 * signal[i - 4]) / 8;
//     }
// }

// void squaring(float * signal, uintNH_t length, float * output) {
//     uintNH_t i = 0;
//     for (i = 0; i < length; i++) {
//         output[i] = signal[i] * signal[i];
//     }
// }


// void moving_window_integration(float *signal, uintNH_t length, float *output) {
//     uintNH_t i = 0 ;
//     uintNH_t j = 0;
//     for (i = 0; i < length; i++) {
//         float sum = 0;
//         int window = (i < WINDOW_SIZE) ? i + 1 : WINDOW_SIZE;
//         for (j = i - window + 1; j <= i; j++) {
//             sum += signal[j];
//         }
//         output[i] = sum / window;
//     }
// }


// void detect_peaks(float * signal, DATA * output, uintNH_t length, float threshold) {
//     uintNH_t i = 0;    
//     for (i = 0; i < length; i++) {
//         if (signal[i] > threshold && signal[i] > signal[i - 1] && signal[i] > signal[i + 1]) {
//             output[i] = 1;
//         }
//         else{
//             output[i] = 0;
//         }
//     }
// }

// uintNH_t pan_tomkins(DATA * input, DATA * output, uintNH_t size) {

//     float * signal_input = malloc(size*(sizeof(float))); 
    
//     q15tofl(input, signal_input, size);

    
//     low_pass_filter(signal_input, size);

    
//     high_pass_filter(signal_input, size);

    
//     float * diff_signal = malloc(size*(sizeof(float)));
//     derivative_filter(signal_input, size, diff_signal);
//     free(signal_input);

    
//     float * squared_signal = malloc(size*(sizeof(float)));
//     squaring(diff_signal, size, squared_signal);
//     free(diff_signal);

    
//     float * integ_signal = malloc(size*(sizeof(float)));
//     moving_window_integration(squared_signal, size, integ_signal);
//     free(squared_signal);
    
//     detect_peaks(integ_signal, output, size, THRESHOLD);



//     return 0;
// }
