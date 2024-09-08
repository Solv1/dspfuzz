/** vision.c
 * A surogate software for machine vision.
 * Written by Santiago Garcia
 */

#include <stdlib.h>
#include <stdint.h>
#include <stdio.h>
#include <stdbool.h>
#include <time.h>
#include <string.h> //For memcopy

#include <math.h>

#include "imagelib.h"

// #include <tms320.h>
// #include <dsplib.h>
// #include <dsplib_c.h>

#include "vision.h"

#define NOISE_THRESHOLD 1000
#define THRESHOLD 200

#define KERNEL_SIZE 9 
#define BOX 1
#define SHAPE 2

const int16_t SHARPEN_KERNEL[KERNEL_SIZE] = {0, -1, 0, -1, 5, -1, 0, -1, 0,};
const int16_t LAPLACIAN_KERNEL[KERNEL_SIZE] = {-1, -1, -1, -1, 8, -1, -1, -1, -1,};

const int16_t SHAPE_CLASSIFICATION[9] =  /*Not a real classification but as a example*/
{50, 60, 70, 
100, 110, 230, 
230, 55, 20};

const int16_t BOX_CLASSIFICATION[9] = 
{10,10,10,
20,20,20,
10,10,10,
};


void pre_treatment(int16_t * image_in, int16_t * image_out, int16_t size){
    //Noise Removal, Constrast enhancing.
    int16_t colm, i;
    int16_t noise_average = 0;
    int16_t mean_kernel[9] = {0};


    if (size % 3){
        //Size of input is not a multiple of three.
        size = size - (size%3);
    }
    colm = size / 3;

    IMG_conv_3x3((unsigned char *)image_in, (unsigned char *)image_out, (unsigned char *)LAPLACIAN_KERNEL, colm, 0);       /*Check for noise here.*/
    for (i = 0; i <colm - 1; i++){
        noise_average = image_out[i] + noise_average;
    }
    noise_average = noise_average / colm;
    if (noise_average > NOISE_THRESHOLD){       /*Calc mean filter */
        for(i = 0; i < KERNEL_SIZE; i++){
            mean_kernel[i] = noise_average;
        }
        IMG_conv_3x3((unsigned char *)image_in, (unsigned char *)image_out, (unsigned char *)mean_kernel, colm, 0);
        IMG_conv_3x3((unsigned char *)image_out, (unsigned char *)image_in, (unsigned char *)SHARPEN_KERNEL, colm, 0);

        memcpy(image_in, image_out, size);
        return;
    }
    else{
        IMG_conv_3x3((unsigned char *)image_in, (unsigned char *)image_out, (unsigned char *)SHARPEN_KERNEL, colm, 0);
        return;
    }
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

    for (i = 0; i < colm * row; i++){
        if (!(i%colm)){
            r++;
        }

        if (in[i] == 1){            /*Found a potential region.*/
            index_start = i;
            for(j = i + 1; j < i+3; j++){
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
            for (j = r + 1; j < r + 3; j++){
                int16_t index = i + (r * colm);
                for(k = index; k < index + 3; k++){
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
void classification(int16_t * image_threshold, int16_t * cords, int16_t size){
    //Classification of image objects.
    int16_t i, j, k;
    int16_t colm;
    bool isBox, isShape;
    int16_t class_pos_x = 0;

    if(!(size % 3)){
        colm = size/3;
    }
    else{
        colm = size / 2;
    }
    i = 0;
    while(cords[i] != -1){

        for(k = 0; k < 3; k++){
            for(j = cords[i]; j < cords[i]+3; j++){
                if((BOX_CLASSIFICATION[class_pos_x +(k* colm)] - 20) < image_threshold[j+(k* colm)] || image_threshold[j + (k * colm)] >= BOX_CLASSIFICATION[class_pos_x + (k* colm)]){
                    class_pos_x++;
                }
                else{
                    isBox = false;
                    break;
                }
            }
            class_pos_x = 0;
        }
        if(isBox){
            continue;
        }
        else{
            for(k = 0; k < 3; k++){
                for(j = cords[i]; j < cords[i]+3; j++){
                    if((SHAPE_CLASSIFICATION[class_pos_x +(k* colm)] - 20) < image_threshold[j+(k* colm)] || image_threshold[j + (k * colm)] >= SHAPE_CLASSIFICATION[class_pos_x + (k* colm)]){
                        class_pos_x++;
                    }
                    else{
                        isShape = false;
                        break;
                    }
                }
                class_pos_x = 0;
            }   
        }

        i++;
    }


}

void segmentation(int16_t * image_in, int16_t * image_out, int16_t * cords,  int16_t size){
    int16_t colm, row;
    int16_t i;

    int16_t * in_buf = calloc(size, sizeof(int16_t));
    int16_t * out_buf = calloc(size, sizeof(int16_t));
    memcpy(image_in, in_buf, size);

    if(!(size % 3)){
        colm = size/3;
        row = 3;
    }
    else{
        colm = size / 2;
        row = 2;
    }

    IMG_threshold((short *)in_buf, (short *)out_buf, colm, row, THRESHOLD);

    for(i = 0; i < size; i++){          /*Image binarized*/
        if (out_buf[i] == 0){
            continue;
        }
        else if(out_buf[i]){
            out_buf[i] = 1;
        }
    }

    int16_t * start_cords = calloc(40, sizeof(int16_t));
    memset(start_cords, -1, 40);
    find_regions(out_buf,start_cords, colm, row);

    memcpy(image_out,out_buf,size);
    memcpy(cords, start_cords, 40);


    free(start_cords);
    free(in_buf);
    free(out_buf);
    return;
}

void feature_extraction(int16_t * image_in, int16_t * image_out, int16_t size){
    //Size, Shape, Color
}

void process_image(int16_t * raw_sample, int16_t size){
    
    if (size == 0){
        return;
    }
    if(raw_sample == NULL){
        return;
    }

    int16_t * in_buf = calloc(size, sizeof(int16_t));
    int16_t * out_buf = calloc(size, sizeof(int16_t));
    int16_t * image_cords = calloc(40, sizeof(int16_t));
    

    memcpy(in_buf, raw_sample, size);



    pre_treatment(in_buf,out_buf, size);
    segmentation(in_buf, out_buf, image_cords, size);
    classification(out_buf, image_cords, size);

    free(image_cords);
    free(in_buf);
    free(out_buf);
    


}