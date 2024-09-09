/** pace.c
 * A surogate software of a pacemaker.
 * Written by Santiago Garcia
 */
#include <stdlib.h>
#include <stdint.h>
#include <stdio.h>
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

#define NH 16
#define f 150       /*150 Hz Frequancy*/
DATA lowPassImpulse[NH]= {
    0,0,0,0,0,0,255,0,0,0,0,0,0,0,0,0
};
DATA highPassImpulse[NH]= {
    -10,-10,-10,-10,-10,-10,255,-10,-10,-10,-10,-10,-10,-10,-10,-10
};
DATA filterCoefficient[NH]= {
    255,4312,7643,3243,5212,3351,90,1,4532,36,100,23,43,123,54,
};

GPIO_Handle hGpio;
CSL_GpioPinConfig config;
CSL_GpioObj GpioObj;
CSL_Status status;

void config_gpio(){

    hGpio = GPIO_open(&GpioObj,&status);
    config.pinNum = CSL_GPIO_PIN0;
    config.direction = CSL_GPIO_DIR_OUTPUT;
    config.trigger = CSL_GPIO_TRIG_FALLING_EDGE;
    GPIO_configBit(hGpio, &config);
    config.pinNum = CSL_GPIO_PIN1;
    config.direction = CSL_GPIO_DIR_OUTPUT;
    config.trigger = CSL_GPIO_TRIG_FALLING_EDGE;
    GPIO_configBit(hGpio, &config);
    // GPIO_pinDirection(hGpio,CSL_GPIO_PIN0 | CSL_GPIO_PIN1, CSL_GPIO_PIN0_OUTPUT| CSL_GPIO_PIN1_OUTPUT );

}


void generatePulse(){
    uint16_t i = 0;
    int16_t pulse[100] = {0};
    GPIO_write(hGpio, CSL_GPIO_PIN0,pulse[0]);
    /*Generate a Pulse and then send it out.*/
    for(i = 0; i < sizeof(pulse); i++){
        if(i%(f/50) == 0){
            GPIO_write(hGpio, CSL_GPIO_PIN1,1);
        }
        else{
            GPIO_write(hGpio, CSL_GPIO_PIN1,0);
        }
    }
    
    
    

}


int16_t pace_test(int16_t * raw_data, uint16_t size){

    int16_t i, j;
    int16_t sum = 0;
    int16_t numPeaks = 0;
    int16_t threshold = 2;
    int16_t windowSize = 4;

    DATA * inputBuf = calloc(size, sizeof(int16_t));           /*Buffers for input output and a dummy input. Note: DATA type is just a short value*/
    DATA * output = calloc(size, sizeof(int16_t));
    DATA * dataBuf = calloc(size, sizeof(int16_t)+3);

    memcpy(inputBuf, raw_data, size);

    /*Noise Filtering*/
    convol(inputBuf, lowPassImpulse, dataBuf, size, NH);     /*High pass filter*/
    convol(dataBuf, highPassImpulse, output, size, NH);        /*Low pass filter*/

    /*Artifact Removal*/
    dlms(output,filterCoefficient,inputBuf,inputBuf,dataBuf,1, NH,size);

    /*Peak Detection via Pan-Tompkins*/
    for(i=1; i < size; i++){                                    /*Differentiation*/
        output[i] = (inputBuf[i+1] - inputBuf[i-1])/2;
    }
    for(i = 0; i< size; i++){                                   /*Squaring*/
        inputBuf[i] = output[i] * output[i];
    }
    for(i = 0; i < size; i++) {
        
        for (j = i - windowSize / 2; j <= i + windowSize / 2; ++j) {
            if (j >= 0 && j < size) {
                sum += inputBuf[j];
            }
        }
        output[i] = sum;
    }
    memset(dataBuf, 0, sizeof(int16_t)+3);
    for(i = 1; i < size; i++){
        if (output[i] > threshold && output[i] > output[i - 1] && output[i] > output[i + 1]) {
            dataBuf[numPeaks++] = i;
        }
    }
    if(numPeaks < size/60){
        /*Patient has a weak pulse shock him.*/
        generatePulse();
    }
    else if(numPeaks > size/60 && numPeaks < 15){
        /*Patient is okay continue on*/
    }



    /*Free memory*/
    free(inputBuf);
    free(output);
    free(dataBuf);

    return 0;
}
