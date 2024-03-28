#include <stdio.h>
#include <stdint.h>
#include <test.h>

/**
 * intial_fuzz.c
 */

int intial_fuzz(uint16_t argc ,uint16_t * args)
{
    int j, k, h;
    extern void coverage_log();
    asm("\tNOP");
    coverage_log();

    //Embbed the input here to try over and over again.
    int i = args[0];
    j = i *2;
    k = j *67 /2;
    h = (456 * 2) ;



    if(i % 4){
        asm("\tNOP");
        asm("\tCALL _coverage_log ;");

        if(k >= 105 ){
            asm("\tNOP");
            asm("\tCALL _coverage_log ;");

            if(j  > 12){
                asm("\tNOP");
                asm("\tCALL _coverage_log ;");

                if(j - k < i){
                    asm("\tNOP");
                    asm("\tCALL _coverage_log ;");

                    if(h > 540){
                        asm("\tNOP");
                        asm("\tCALL _coverage_log ;");

                       if(h + j + k > 400){
                            asm("\tNOP");
                            asm("\tCALL _coverage_log ;");

                            return(-1);
                       }
                       else{
                           asm("\tNOP");
                           asm("\tCALL _coverage_log ;");

                           while(1);
                       }
                    }
                }

            }

        }
    }
    return 0;
}
