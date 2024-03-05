#include "fuzz.h"
/**
 * intial_fuzz.c
 */

int intial_fuzz(int argc ,int * args)
{
    int j, k, h;
    asm("\tMOV #0, T3 ;");
    coverage_track();


    //Embbed the input here to try over and over again.
    int i = args[0];
    j = i *2;
    k = j *67 /2;
    h = (456 * 2) ;



    if(i % 4){
        asm("\tMOV #1, T3 ;");
        coverage_track();
        if(k >= 105 ){
            asm("\tMOV #2, T3 ;");
            coverage_track();
            if(j  > 12){
                asm("\tMOV #3, T3 ;");
                coverage_track();
                if(j - k < i){
                    asm("\tMOV #4, T3 ;");
                    coverage_track();
                    if(h > 540){
                        asm("\tMOV #5, T3 ;");
                        coverage_track();
                        if(h + j + k > 400){
                            asm("\tMOV #6, T3 ;");
                            coverage_track();
                            printf("Found the Bug \n");
                            return(-1);

                        }
                    }
                }

            }

        }
    }
    return 0;
}
