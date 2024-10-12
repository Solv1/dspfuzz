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
#define THRESHOLD 400      // Threshold for QRS detection (can be tuned)
#define FILTER_ORDER 5     // Filter order for low-pass and high-pass filters
#define NH 16
#define Q15_SHIFT 15

DATA lowPassImpulse[NH]= {
    0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0
};
DATA highPassImpulse[NH]= {
    -10,-10,-10,-10,-10,-10,255,-10,-10,-10,-10,-10,-10,-10,-10,-10
};
DATA filterCoefficient[NH]= {
    255,4312,7643,3243,5212,3351,90,1,4532,36,100,23,43,123,54,
};

//GPIO_Handle hGpio;
//CSL_GpioPinConfig config;
//CSL_GpioObj GpioObj;
//CSL_Status status;
//void config_gpio();
//void generate_pulse();
bool shockFlag = false;

void derivative(DATA * input, DATA * output, uint16_t length );
void squaring(DATA * input, DATA * output, uint16_t length);
void moving_window_integration(DATA * input, DATA * output, uint16_t length, uint16_t window_size);
void detect_peaks(DATA * input, DATA * output, uint16_t length, uint16_t intial_threshold);
void pan_tomkins(DATA * input, DATA * output, uint16_t size);

int16_t pace_test(int16_t * raw_data, uint16_t size){

    int16_t i;

    int16_t numPeaks = 0;
    short retVal = 0;
    if(!(size % 2)){
        return -1;
    }
    else if(size < 50){
        return -1;
    }

    DATA * inputBuf = calloc(size, sizeof(DATA));           /*Buffers for input output and a dummy input. Note: DATA type is just a short value*/
    DATA * output = calloc(size + NH , sizeof(DATA));
    DATA * dataBuf = calloc(size + NH, sizeof(DATA));
    DATA * des = calloc(size, sizeof(DATA));

    memcpy(inputBuf, raw_data, size);

    // if(size > 100){
    /*Noise Filtering*/
    retVal = convol(inputBuf, lowPassImpulse, dataBuf, size-NH , NH);     /*High pass filter*/
    if(retVal){
        free(inputBuf);
        free(output);
        free(dataBuf);
        free(des);
        return -1;    
    }

    retVal= convol(dataBuf, highPassImpulse, output, size-NH, NH);        /*Low pass filter*/
    if(retVal){
        free(inputBuf);
        free(output);
        free(dataBuf);
        free(des);
        return -1;    
    }

    /*Artifact Removal*/
    retVal = dlms(output,filterCoefficient,inputBuf,des,dataBuf,1, NH,size-(NH*2));
    if(retVal){
        free(inputBuf);
        free(output);
        free(dataBuf);
        free(des);
        return -1;    
    }
    // }
    // else{
    //     pan_tomkins(inputBuf, output, size);
    // }
    for(i = 0; i < size; i++){
        if(output[i] >= 1){
            numPeaks++;
        }
    }
    if(numPeaks == 0){
        free(inputBuf);
        free(output);
        free(dataBuf);
        free(des);

        return 0;
    }
    
    if(numPeaks < 10){
        /*Patient has a weak pulse shock him.*/
        shockFlag = true;
    }
    else if(numPeaks > 10 && numPeaks < 30){
        /*Patient is okay continue on*/
    }



    /*Free memory*/
    free(inputBuf);
    free(output);
    free(dataBuf);
    free(des);

    return 0;
}
//void generate_pulse(){
//    uint16_t i = 0;
//    // GPIO_write(hGpio, CSL_GPIO_PIN0,0);
//    /*Generate a Pulse and then send it out.*/
//    for(i = 0; i < 2000; i++){
//        if(i%999 == 0){
//            GPIO_write(hGpio, CSL_GPIO_PIN1,1);
//            // GPIO_pin(hGpio);
//        }
//        else if(i % 1999 == 0){
//            GPIO_write(hGpio, CSL_GPIO_PIN1,0);
//            // GPIO_reset(hGpio);
//        }
//    }
//}
//void config_gpio(){
//
//    hGpio = GPIO_open(&GpioObj,&status);
//    GPIO_reset(hGpio);
//
//    config.pinNum = CSL_GPIO_PIN0;
//    config.direction = CSL_GPIO_DIR_OUTPUT;
//    config.trigger = CSL_GPIO_TRIG_FALLING_EDGE;
//    GPIO_configBit(hGpio, &config);
//    config.pinNum = CSL_GPIO_PIN1;
//    config.direction = CSL_GPIO_DIR_OUTPUT;
//    config.trigger = CSL_GPIO_TRIG_FALLING_EDGE;
//    GPIO_configBit(hGpio, &config);
//    // GPIO_pinDirection(hGpio,CSL_GPIO_PIN0 | CSL_GPIO_PIN1, CSL_GPIO_PIN0_OUTPUT| CSL_GPIO_PIN1_OUTPUT );
//
//}

// void derivative(DATA * input, DATA * output, uint16_t length ){
//     uint16_t i;
//     int32_t temp;

//     for (i = 4; i < length; i++) {
//         temp = 2 * input[i] + input[i - 1] - input[i - 3] - 2 * input[i - 4];
//         output[i] = (int16_t)(temp / 8);
//     }
//     // Fill the first four values with zeros
//     for (i = 0; i < 4; i++) {
//         output[i] = 0;
//     }
// }
// void squaring(DATA * input, DATA * output, uint16_t length){
//     int16_t i;
//     int32_t temp;
//     for (i = 0; i < length; i++) {
//         temp = (int32_t)input[i] * (int32_t)input[i];
//         output[i] = (int16_t)(temp >> Q15_SHIFT); // Scale back to Q15
//     }
// }
// void moving_window_integration(DATA * input, DATA * output, uint16_t length, uint16_t window_size){
//     int16_t i = 0;
//     int32_t sum = 0;
//     for (i = 0; i < length; i++) {
//         sum += input[i];
//         if (i >= window_size) {
//             sum -= input[i - window_size];
//         }
//         output[i] = (int16_t)(sum / window_size);
//     }
//     // Fill the first few values to zero if they don't complete the window size
//     for (i = 0; i < window_size; i++) {
//         output[i] = 0;
//     }
// }
// void detect_peaks(DATA * input, DATA * output, uint16_t length, uint16_t intial_threshold){
//     int16_t i;
//     int16_t threshold = intial_threshold;
//     int16_t peak = 0;

//     for (i = 0; i < length; i++) {
//         if (input[i] > peak) {
//             peak = input[i];
//         }

//         // Dynamic threshold adjustment
//         if (input[i] > threshold) {
//             output[i] = 1; // QRS detected
//             threshold = (peak + threshold) / 2; // Update the threshold
//         } else {
//             output[i] = 0; // No QRS
//         }
//     }
// }




// void pan_tomkins(DATA * input, DATA * output, uint16_t size){
//     derivative(input,output,size);
//     squaring(output, input, size);
//     moving_window_integration(input, output, size, WINDOW_SIZE);
//     detect_peaks(output, input, size, THRESHOLD);
//     memcpy(output, input, size);
// }


// void low_pass_filter(float *signal, uint16_t length) {
//     float prev1 = 0, prev2 = 0;
//     uint16_t i = 0;
//     for (i = 0; i < length; i++) {
//         float filtered = 2 * prev1 - prev2 + signal[i] - 2 * signal[i - 6] + signal[i - 12]; 
//         prev2 = prev1;
//         prev1 = filtered;
//         signal[i] = filtered;
//     }
// }


// void high_pass_filter(float *signal, uint16_t length) {
//     uint16_t i = 0;
//     float prev1 = 0, prev2 = 0;
//     for (i = 0; i < length; i++) {
//         float filtered = prev2 - (signal[i] / 32) + signal[i - 16] - signal[i - 17] + signal[i - 32];
//         prev2 = prev1;
//         prev1 = filtered;
//         signal[i] = filtered;
//     }
// }

// void derivative_filter(float *signal, uint16_t length, float *output) {
//     uint16_t i = 0;
//     for (i = 2; i < length - 2; i++) {
//         output[i] = (2 * signal[i] + signal[i - 1] - signal[i - 3] - 2 * signal[i - 4]) / 8;
//     }
// }

// void squaring(float * signal, uint16_t length, float * output) {
//     uint16_t i = 0;
//     for (i = 0; i < length; i++) {
//         output[i] = signal[i] * signal[i];
//     }
// }


// void moving_window_integration(float *signal, uint16_t length, float *output) {
//     uint16_t i = 0 ;
//     uint16_t j = 0;
//     for (i = 0; i < length; i++) {
//         float sum = 0;
//         int window = (i < WINDOW_SIZE) ? i + 1 : WINDOW_SIZE;
//         for (j = i - window + 1; j <= i; j++) {
//             sum += signal[j];
//         }
//         output[i] = sum / window;
//     }
// }


// void detect_peaks(float * signal, DATA * output, uint16_t length, float threshold) {
//     uint16_t i = 0;    
//     for (i = 0; i < length; i++) {
//         if (signal[i] > threshold && signal[i] > signal[i - 1] && signal[i] > signal[i + 1]) {
//             output[i] = 1;
//         }
//         else{
//             output[i] = 0;
//         }
//     }
// }

// uint16_t pan_tomkins(DATA * input, DATA * output, uint16_t size) {

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
