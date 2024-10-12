/** vision.c
 * A surogate software for machine vision.
 * Written by Santiago Garcia
 */

#include <stdlib.h>
#include <stdint.h>
#include <stdio.h>
#include <stdbool.h>
#include <time.h>
#include <c55x.h>

// #include <memory.h>
#include <string.h> //For memcopy

#include <math.h>

#include "imagelib.h"

#include <tms320.h>
#include <dsplib.h>
#include <dsplib_c.h>

#include <csl_gpio.h>
#include <csl_types.h>
#include <csl_intc.h>

#include "vision.h"

#define NOISE_THRESHOLD 1000
#define THRESHOLD 200

#define KERNEL_SIZE 9 
#define TRIANGLE 3
#define BOX 4
#define PENTAGON 5
#define HEXAGON 6
#define OCTAGON 8
#define SHAPE 10


static int16_t SHARPEN_KERNEL[KERNEL_SIZE] = {0, -1, 0, -1, 5, -1, 0, -1, 0,};
static int16_t LAPLACIAN_KERNEL[KERNEL_SIZE] = {-1, -1, -1, -1, 8, -1, -1, -1, -1,};


GPIO_Handle hGpio;
CSL_GpioPinConfig config;
CSL_GpioObj GpioObj;
CSL_Status status;
bool use_imglib = false;

void move_controller(int16_t d_x, int16_t d_y);
void config_gpio();
int16_t pre_treatment(int16_t * image_in, int16_t * out, int16_t size);
void find_regions(int16_t * in, int16_t * start_cords, int16_t colm, int16_t row);
int16_t segmentation(int16_t * image_in, int16_t * image_out, int16_t * cords,  int16_t size);
int16_t classification(int16_t * image_threshold, int16_t * cords, int16_t size);
void convolve3x3(int16_t * input, int16_t * output , int16_t * kernel, int16_t colm, int16_t row);
void unconfig_gpio();





int16_t process_image(int16_t * raw_sample, int16_t size){

    int16_t i;
    int16_t obj_classification;
    int16_t retVal;
    // int16_t image_cords[100];
    if(size > 99){
        return 1;
    }
    else if(size < 1){
        return 1;
    }

    int16_t * in_buf = calloc(size, sizeof(int16_t));
    memcpy(in_buf, raw_sample, size);

    int16_t * out_buf = calloc(size, sizeof(int16_t));
    int16_t * image_cords = calloc(100, sizeof(int16_t));


    retVal = pre_treatment(in_buf,out_buf, size);
    if(retVal != 0 ){
        free(in_buf);
        free(out_buf);
        free(image_cords);
        return 1;
    }
    memcpy(in_buf, out_buf, size);
    retVal = segmentation(in_buf, out_buf, image_cords, size);
    if(retVal != 0 ){
        // unconfig_gpio();
        free(in_buf);
        free(out_buf);
        free(image_cords);
        return 1;
    }
    memcpy(in_buf, out_buf, size);
    obj_classification = classification(in_buf, image_cords, size);
    if(obj_classification == TRIANGLE){
        move_controller(1, 0);
    }
    else if(obj_classification == BOX){
        move_controller(1, 1);
    }
    else if(obj_classification == PENTAGON){
        move_controller(2, 0);
    }
    else if(obj_classification == HEXAGON){
        move_controller(0, 2);
    }
    else if(obj_classification == OCTAGON){
        move_controller(2, 2);
    }
    else if (obj_classification == SHAPE){
        move_controller(0, 1);

    }

    // unconfig_gpio();
    free(in_buf);
    free(out_buf);
    free(image_cords);
    return 0;

}

void config_gpio(){
    /*One pin for forward movement pin 0 and one pin for rotating the device*/

    hGpio = GPIO_open(&GpioObj,&status);
    
    
    GPIO_reset(hGpio);

    config.pinNum = CSL_GPIO_PIN0;
    config.direction = CSL_GPIO_DIR_OUTPUT;
    config.trigger = CSL_GPIO_TRIG_FALLING_EDGE;
    GPIO_configBit(hGpio, &config);

    config.pinNum = CSL_GPIO_PIN1;
    config.direction = CSL_GPIO_DIR_OUTPUT;
    config.trigger = CSL_GPIO_TRIG_FALLING_EDGE;
    GPIO_configBit(hGpio, &config);

}
void unconfig_gpio(){
    GPIO_close(hGpio);
}
void convolve3x3(int16_t * input, int16_t * output , int16_t  * kernel, int16_t colm, int16_t row){
    int16_t x, y, kx, ky;
    int16_t pixel;
    int16_t sum;
    #define INDEX(x, y, width) ((y) * (width) + (x))

    for (y = 1; y < row - 1; y++) {
        for (x = 1; x < colm - 1; x++) {
            sum = 0;

            // Apply the 3x3 kernel
            for (ky = 0; ky < 3; ky++) {
                for (kx = 0; kx < 3; kx++) {
                    // Corresponding input pixel
                    pixel = input[INDEX(x + kx - 1, y + ky - 1, colm)];
                    sum += pixel * kernel[INDEX(kx,ky,3)];
                }
            }

            // Right shift to prevent overflow and store the result in the output array
            output[INDEX(x, y, colm)] = (uint16_t)(sum >> 15) ;
        }
    }
}


int16_t pre_treatment(int16_t * image_in, int16_t * out, int16_t size){
    //Noise Removal, Constrast enhancing.
    int16_t colm, row, i;
    int16_t noise_average = 0;
    int16_t mean_kernel[9] = {0};
    unsigned char *input_data = malloc(size * sizeof(char));
    unsigned char *output_data = malloc(size * sizeof(char));

    if (!(size % 10)){
        //Size of input is not a multiple of three.
        colm = size/10;
        row = 10;
        convolve3x3(image_in, out, LAPLACIAN_KERNEL, colm, row);       /*Check for noise here.*/
    }
    else if(size > 100 && (size% 2 == 0)){

        use_imglib = true;

        memcpy(input_data, image_in, size);

        colm = size / 2;
        IMG_conv_3x3(input_data, output_data, (unsigned char *)LAPLACIAN_KERNEL, colm, -2);

    }
    else{
        free(input_data);
        free(output_data);
        return 1;
    }

    
    memcpy(image_in, out, size);
    for (i = 0; i <colm - 1; i++){
        noise_average = out[i] + noise_average;
    }
    noise_average = noise_average / colm;
    if (noise_average > NOISE_THRESHOLD && use_imglib == false){       /*Calc mean filter */
        for(i = 0; i < KERNEL_SIZE; i++){
            mean_kernel[i] = noise_average;
        }

        convolve3x3(image_in, out, mean_kernel, colm, row);
        memcpy(image_in, out, size);
        convolve3x3(image_in, out, SHARPEN_KERNEL, colm, row);
    
    }
    else if(noise_average > NOISE_THRESHOLD && use_imglib == true){
        IMG_conv_3x3(output_data, input_data, (unsigned char *)mean_kernel, colm, 2);
        IMG_conv_3x3(input_data, output_data, (unsigned char *)SHARPEN_KERNEL, colm, -2);
        
    }
    else{
        convolve3x3(image_in, out, SHARPEN_KERNEL, colm, row);
        
    }

    if(output_data != NULL){
        memcpy(out, output_data, size);
        free(output_data);
    }
    if(input_data != NULL){
        free(input_data);
    }

    return 0;
}

void find_regions(int16_t * in, int16_t * start_cords, int16_t colm, int16_t row){
    /*Searches for 3x3 sections of a thresholded image. Saves the cords for classification later.*/

    int16_t i = 0;
    int16_t j = 0;
    int16_t k = 0;
    int16_t r = 0; //Row 
    bool isFinshed = false;

    int16_t index_start = 0;
    int16_t count = 0;

    for (i = 0; i < colm ; i++){
        if (!(i%colm)){
            r++;
        }

        if (in[i] == 1){            /*Found a potential region.*/
            index_start = i;
            for(j = i + 1; j < row; j++){
                if (j == colm){     /*'Edge' of the image*/
                    isFinshed = true;
                    break;
                }         
                if (in[j] == 0){
                    isFinshed = true;
                    break;
                }   
            }
            if (isFinshed){
                i = i + 2;
                continue;
            }
            for (j = r + 1; j < colm; j++){
                int16_t index = i + (r * colm);
                for(k = index; k < colm; k++){
                    if (k % colm == 0){
                        isFinshed = true;
                    }
                    if (in[k] == 0){
                        isFinshed = true;
                    }
                    if (isFinshed){
                        break;
                    }
                }
                if (isFinshed){
                        break;
                }
            }
        }
        else{
            isFinshed = true;
        }

        if(isFinshed){
            index_start = 0;
            continue;
        }
        start_cords[count] = index_start;
        count++;
    }

}
int16_t classification(int16_t * image_threshold, int16_t * cords, int16_t size){
    //Classification of image objects.
    int16_t i, j;
    int16_t colm;

    if(!(size % 3)){
        colm = size/3;
    }
    else{
        colm = size / 2;
    }
    i = 0;
    for(i = 0; i < size; i++){
        if(image_threshold[i] > THRESHOLD){
            j++;
        }
    }
    
    if(j == 3){
        return TRIANGLE;
    }
    else if(j == 4){
        return BOX;
    }
    else if(j == 5){
        return PENTAGON;
    }
    else if(j == 6){
        return HEXAGON;
    }
    else if(j == 8){
        return OCTAGON;
    }
    else if(j > 3){
        return SHAPE;
    }
    
    else{
        return 0;
    }
}

int16_t segmentation(int16_t * image_in, int16_t * image_out, int16_t * cords,  int16_t size){
    int16_t colm, row;
    int16_t i;



    // int16_t * in_buf = calloc(size, sizeof(int16_t));
    // int16_t * out_buf = calloc(size, sizeof(int16_t));
    // memcpy(image_in, in_buf, size);
    if(size > 99){
        return 1;
    }

    if(!(size % 10)){
        colm = size/10;
        row = 10;
    }
    
    else{
        return 1;
    }

    for(i = 0; i < size; i++){
        if(image_in[i] > THRESHOLD){
            image_out[i] = 1;
        }
        else{
            image_out[i] = 0;
        }
    }

    
    memset(cords, -1, 40);
    find_regions(image_out,cords, colm, row);

    return 0;
}
void move_controller(int16_t d_x, int16_t d_y){
    /*We must pulse width modulate for our motor*/
    uint16_t i, j;
    uint16_t sig = 0;
    config_gpio();
    if(d_y){
        sig = 1;
        for(i = 0; i < 1000*d_y; i++){
            for(j = 0; j < 1000; j++){
                if(j%999 == 0 && i%999 ==0){
                    continue;
                }
            }

        }
        sig = 0;
        for(i = 0; i < 1000*d_y; i++){
            for(j = 0; j < 1000; j++){
                if(j%999 == 0 && i%999 ==0){
                GPIO_write(hGpio, CSL_GPIO_PIN0, sig);
                
                }
            }

        }
    }
    else if(d_x){
        sig = 1;
        for(i = 0; i < 1000*d_x; i++){
            for(j = 0; j < 1000; j++){
                if(j%999 == 0 && i%999 ==0){
                }
                // GPIO_pinReset(hGpio,CSL_GPIO_PIN0);
                continue;
            }
        }
        sig = 0;
        for(i = 0; i < 1000*d_x; i++){
            for(j = 0; j < 1000; j++){
                if(j%999 == 0 && i%999 ==0){
                GPIO_write(hGpio, CSL_GPIO_PIN0, sig);

                }
            }
        }

    }
    unconfig_gpio();
}
