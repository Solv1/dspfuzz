/** jpeg.c
 * A surogate software for jpeg encoding.
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
#include "imagelib.h"
#include "jpeg.h"

#define EIGHTBYEIGHT 64

int16_t lumianceQuant[EIGHTBYEIGHT]{
16,	11,	10,	16,	24,	40,	51,	61,12,	12,	14,	19,	26,	58,	60,	55,
14,	13,	16,	24,	40,	57,	69,	56,
14,	17,	22,	29,	51,	87,	80,	62,
18,	22,	37,	56,	68,	109, 103, 77,
24,	35,	55,	64,	81,	104, 113, 92,
49,	64,	78,	87,	103, 121, 120, 101,
72,	92,	95,	98,	112, 100, 103, 99
};
int16_t chormianceQuant[EIGHTBYEIGHT]{
17,	18,	24,	47,	99,	99,	99,	99,
18,	21,	26,	66,	99,	99,	99,	99,
24,	26,	56,	99,	99,	99,	99,	99,
47,	66,	99,	99,	99,	99,	99,	99,
99,	99,	99,	99,	99,	99,	99,	99,
99,	99,	99,	99,	99,	99,	99,	99,
99,	99,	99,	99,	99,	99,	99,	99,
99,	99,	99,	99,	99,	99,	99,	99,
};
int16_t zigZag[EIGHTBYEIGHT]{
-26, -3, 0 -3, -2, -6, 2, -4
1, -3, 1, 1, 5, 1, 2, -1,
1, -1, 2, 0, 0, 0, 0, 0,
-1, -1, 0, 0, 0, 0, 0, 0,
0, 0, 0, 0, 0, 0, 0, 0, 	
0, 0, 0, 0, 0, 0, 0, 0,
0, 0, 0, 0, 0, 0, 0, 0,
0, 0, 0, 0, 0, 0, 0, 0,
};



void encode(DATA * in, DATA * y, DATA * Cb, DATA * Cr, DATA * buf, DATA * outLum, DATA * outChroma, int16_t s){
    uint16_t i = 0;

    for(i = 0; i < s; i++){
        y[i] = ((in[i] & 0x1F) * 0.299 )+ ((in[i] & 0x3E0) * 0.587) + ((in[i] & 0x7C00) * 0.114);
        Cb[i] = (((in[i] & 0x1F) * -0.168736 ) - ((in[i] & 0x3E0) * 0.331264) + ((in[i] & 0x7C00) * 0.5) + 128);
        Cr[i] = (((in[i] & 0x1F) * 0.5 ) - ((in[i] & 0x3E0) * 0.418688) + ((in[i] & 0x7C00) * 0.081312) + 128);
    }
    for(i = 0; i < s; i++){
        Cb[i] = Cb[i]/2;
        Cr[i] = Cr[i]/2;
    }

    //2-D Forward Discsrete Cosine transformations on 8x8 blocks in 0-63 array order.
    for(i = 0; i < s; i = i + 64){
        IMG_sw_fdct_8x8(y[i], buf);
        IMG_sw_fdct_8x8(Cb[i], buf);
        IMG_sw_fdct_8x8(Cr[i], buf);
    }

    //Time for Quantization
    IMG_jpeg_make_recip_tbl(lumianceQuant);
    IMG_jpeg_make_recip_tbl(chormianceQuant);

    IMG_jpeg_quantize(y, zigZag, lumianceQuant, outLum);
    IMG_jpeg_quantize(Cb, zigZag, chormianceQuant, outChroma);


}



void vision_test(int16_t * image_data, int16_t size){

    uint16_t i = 0;

    DATA * Y = calloc(size, sizeof(int16_t));           
    DATA * C_b = calloc(size, sizeof(int16_t));
    DATA * C_r = calloc(size, sizeof(int16_t));
    DATA * inner_buf = calloc(size, sizeof(int16_t)+7);
    DATA * outputLum = calloc(size, sizeof(int16_t));
    DATA * outputChroma = calloc(size, sizeof(int16_t));

    
    encode((DATA *)image_data, (DATA *)Y, (DATA *)C_b, (DATA *)C_r, (DATA *)inner_buf, (DATA *)outputLum, (DATA *)outputChroma, size);
    free(Y);
    free(C_b);
    free(C_r);
    IMG_histogram((short*)image_data, (short*)inner_buf, size);
    IMG_perimeter((short*)image_data, 8, (short*)inner_buf);

    




    
}