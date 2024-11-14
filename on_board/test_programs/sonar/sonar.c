/*
sonar.c
A surogate software for for sonar.
Written by Santiago Garcia
*/

#include <sonar.h>


#define MOVING_VELOCITY 20      /*m per s*/
#define SPEED_OF_SOUND 343      /*m per s*/
#define TRANSMITTED_FREQUENCY 50000     /*50kHz*/
#define NX 64
#define NH 6
#define SHORT_MAX 32767

int16_t calculate_velocity(DATA * input, int16_t size);



int16_t sonar_test(int16_t * input, int16_t size){

    int32_t sum = 0;
    int32_t average = 0;
    int16_t i;
    bool overflow = false;
    int16_t groups, size_of_groups;
    int16_t delay_index;
    int16_t object_speed = 0;
    short retVal = 0;

    DATA FIR_BANDPASS_TAPS[NH] = {   /*Reminder that DATA in CSL is Q.15 operand with 15-bits used for the fraction*/
    -131, -294, 491, 1376, 1503,
    0,
    };

    DATA PULSE_REFERENCE_FLIPPED[NH] ={
    -16384, -16381, -16374, -16361, -16344, -16321, 
    };

    for(i = 0; i < size; i++){  //Check for legal values
        if(input[i] >= SHORT_MAX){
            return -1;
        }
    }
    if(size < NH+NX){
        return -1;
    }

    // DATA * in_buf = calloc(size, sizeof(DATA));
    // DATA * out_buf = calloc(size, sizeof(DATA));
    // DATA * data_buf = calloc(MAX_TAPS+2, sizeof(DATA));

    DATA * in_buf = calloc(NX+4, sizeof(DATA));
    DATA * out_buf = calloc(NX, sizeof(DATA));
    DATA * data_buf = calloc(NH+2, sizeof(DATA));

    memcpy(in_buf, input, NX);
    memset(data_buf,0, NH+2);

    
    /*Bandpass filter on input to get rid of noise*/
    retVal = fir(in_buf,FIR_BANDPASS_TAPS, out_buf, data_buf, NX, NH);
    if(retVal){
        //Overflow occured in this result
        free(in_buf);
        free(out_buf);
        free(data_buf);
        return 1;
    }

    memcpy(in_buf, out_buf, NX);
    /*Convolution of the flipped signal to get the cross-correlation */
    retVal = convol(in_buf, PULSE_REFERENCE_FLIPPED, out_buf, NH ,NX-NH );   
    
    /*See if there is relation between two signals based on the correlation coefficent*/
    for (i = 0; i< NX-NH; i++){
        sum = sum + out_buf[i];
    }
    average = sum/size;
    if (average < 500){
        /*Signals have a low correlation value which makes it unlikely they are related*/
        free(in_buf);
        free(out_buf);
        free(data_buf);
        return 1;
    }

    /*Here signals are related so continue on with calculation*/    
    /*Find the delay of the signal by finding the index of max value in the vector*/
    // if(!(size % 4)){
    //     size_of_groups = 4;
    //     groups = size /4;
    // }
    // else if (!(size % 2)){
    //     size_of_groups = 2;
    //     groups = size /2;
    // }
    // else if (!(size % 3)){
    //     size_of_groups = 3;
    //     groups = size / 3;
    // }
    memcpy(in_buf, out_buf, NX);
    delay_index = maxidx(in_buf, 2, 30);

    if (delay_index < 0 ){
        /*There is a problem in the delay finding return*/
        free(in_buf);
        free(out_buf);
        free(data_buf);
        return 1;
    }
    // memcpy(in_buf, input, size);
    memcpy(in_buf, out_buf, NX);
    object_speed = calculate_velocity(in_buf, NX);
    if(object_speed == -1){
        free(in_buf);
        free(out_buf);
        free(data_buf);
        return 1;    
    }


    free(in_buf);
    free(out_buf);
    free(data_buf);

    return 0;
}


int16_t calculate_velocity(DATA * input, int16_t size){
    /*FFT to find velocity of object via doplar shift*/
    int16_t i;
    DATA * out_buf = calloc(NX, sizeof(DATA));
    DATA * data_buf = calloc(NX, sizeof(DATA));
    int16_t source_movement = rand() % 2;
    int16_t velocity = 0;
    short retVal = 0;
    int32_t sum = 0;
    int16_t average_f = 0;
    int16_t doppler_f = 0;

    DATA FIR_BANDPASS_TAPS[NH] = {   /*Reminder that DATA in CSL is Q.15 operand with 15-bits used for the fraction*/
    -131, -294, 491, 1376, 1503,
    0,
    };

    /*Bandpass filter on input to get rid of noise*/
    retVal = fir(input,FIR_BANDPASS_TAPS, out_buf, data_buf, NX, NH);
    if(retVal){
        //Overflow occured in this result
        free(out_buf);
        free(data_buf);
        return -1;
    }
    memcpy(input, out_buf, NX);
    /*FFT to get into the f domain*/
    // rfft(input, NX, SCALE);

    for (i = 0; i< NX; i++){
        sum = sum + input[i];
    }
    average_f = sum/NX*2;
    
    
    if(average_f > TRANSMITTED_FREQUENCY){
        /*Moving towards observer*/
        doppler_f = average_f + TRANSMITTED_FREQUENCY;
        velocity = ((doppler_f * SPEED_OF_SOUND)/(2 * TRANSMITTED_FREQUENCY));
    }
    else if (average_f <= TRANSMITTED_FREQUENCY){ 
        /*Moving away from observer*/
        doppler_f = average_f - TRANSMITTED_FREQUENCY;
        velocity = ((doppler_f * SPEED_OF_SOUND)/(2 * TRANSMITTED_FREQUENCY));
    }

    free(out_buf);
    free(data_buf);
    return velocity;
}



