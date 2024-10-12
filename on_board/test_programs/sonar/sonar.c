/*
sonar.c
A surogate software for for sonar.
Written by Santiago Garcia
*/

#include <sonar.h>


#define MAX_TAPS 20
#define MOVING_VELOCITY 20      /*m per s*/
#define SPEED_OF_SOUND 343      /*m per s*/
#define TRANSMITTED_FREQUENCY 50000     /*50kHz*/

DATA FIR_BANDPASS_TAPS[MAX_TAPS] = {   /*Reminder that DATA in CSL is Q.15 operand with 15-bits used for the fraction*/
    -131, -294, 491, 1376, 1503,
    0, -2785, -4980, -3019, 4424,
    15363, 4424, -3019, -4980, -2785,
    0, 1503, 1376, 491, -294
};

DATA PULSE_REFERENCE_FLIPPED[91] ={
    -16384, -16381, -16374, -16361, -16344, -16321, -16294, -16261, -16224, -16182,
    -16135, -16082, -16025, -15964, -15897, -15825, -15749, -15668, -15582, -15491,
    -15395, -15295, -15190, -15081, -14967, -14848, -14725, -14598, -14466, -14329,
    -14188, -14043, -13894, -13740, -13582, -13420, -13254, -13084, -12910, -12732,
    -12550, -12365, -12175, -11982, -11785, -11585, -11381, -11173, -10963, -10748,
    -10531, -10310, -10086,  -9860,  -9630,  -9397,  -9161,  -8923,  -8682,  -8438,
    -8191,  -7943,  -7691,  -7438,  -7182,  -6924,  -6663,  -6401,  -6137,  -5871,
    -5603,  -5334,  -5062,  -4790,  -4516,  -4240,  -3963,  -3685,  -3406,  -3126,
    -2845,  -2563,  -2280,  -1996,  -1712,  -1427,  -1142,   -857,   -571,   -285,
    0
};

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

    DATA * in_buf = calloc(size, sizeof(DATA));
    DATA * out_buf = calloc(size, sizeof(DATA));
    DATA * data_buf = calloc(MAX_TAPS+2, sizeof(DATA));

    memcpy(in_buf, input, size);
    memset(data_buf,0, size+2);

    
    /*Bandpass filter on input to get rid of noise*/
    retVal = fir(in_buf,FIR_BANDPASS_TAPS, out_buf, data_buf, size, MAX_TAPS);
    if(retVal){
        //Overflow occured in this result
        free(in_buf);
        free(out_buf);
        free(data_buf);
        return 1;
    }


    /*Convolution of the flipped signal to get the cross-correlation */
    retVal = convol(in_buf, PULSE_REFERENCE_FLIPPED, out_buf, size ,91 );   
    
    /*See if there is relation between two signals based on the correlation coefficent*/
    for (i = 0; i< size; i++){
        sum = sum + out_buf[i];
    }
    average = sum/size;
    if (average < 278){
        /*Signals have a low correlation value which makes it unlikely they are related*/
        free(in_buf);
        free(out_buf);
        free(data_buf);
        return 1;
    }

    /*Here signals are related so continue on with calculation*/    
    /*Find the delay of the signal by finding the index of max value in the vector*/
    if(!(size % 4)){
        size_of_groups = 4;
        groups = size /4;
    }
    else if (!(size % 2)){
        size_of_groups = 2;
        groups = size /2;
    }
    else if (!(size % 3)){
        size_of_groups = 3;
        groups = size / 3;
    }

    delay_index = maxidx(out_buf, groups, size_of_groups);

    if (delay_index < 0 || delay_index > size ){
        /*There is a problem in the delay finding return*/
        return 1;
    }
    memcpy(in_buf, input, size);
    object_speed = calculate_velocity(in_buf, size);
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
    DATA * out_buf = calloc(size, sizeof(DATA));
    DATA * data_buf = calloc(size+2, sizeof(DATA));
    int16_t source_movement = rand() % 2;
    int16_t velocity = 0;
    short retVal = 0;
    int32_t sum = 0;
    int16_t average_f = 0;
    int16_t doppler_f = 0;

    /*Bandpass filter on input to get rid of noise*/
    retVal = fir(input,FIR_BANDPASS_TAPS, out_buf, data_buf, size, MAX_TAPS);
    if(retVal){
        //Overflow occured in this result
        free(out_buf);
        free(data_buf);
        return -1;
    }
    /*FFT to get into the f domain*/
    rfft(out_buf, size, NOSCALE);

    for (i = 0; i< size; i++){
        sum = sum + out_buf[i];
    }
    average_f = sum/size;
    
    
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



