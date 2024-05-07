#include <stdio.h>
#include <stdint.h>
#include <test.h>

/**
 * intial_fuzz.c
 */
asm("\t .align 4;");
int intial_fuzz(uint16_t argc ,uint16_t * args)
{
    int j, k, h;
    asm("\t.ref _coverage_log;"); //This needs to be added in the insturmentation in order for this to work.

    //asm("\tNOP");
    asm("\tCALL _coverage_log ;");
    //asm("\tNOP");

    //Embbed the input here to try over and over again.
    int i = args[0];
    j = i *2;
    k = j *67 /2;
    h = (456 * 2) ;



    if(i % 4){
        //asm("\tNOP");
        asm("\tCALL _coverage_log ;");
        //asm("\tNOP");
        if(k >= 105 ){
            //asm("\tNOP");
            asm("\tCALL _coverage_log ;");
            //asm("\tNOP");

            if(j  > 12){
                //asm("\tNOP");
                asm("\tCALL _coverage_log ;");
                //asm("\tNOP");
                if(j - k < i){
                    //asm("\tNOP");
                    asm("\tCALL _coverage_log ;");
                    //asm("\tNOP");
                    if(h > 540){
                        //asm("\tNOP");
                        asm("\tCALL _coverage_log ;");
                        //asm("\tNOP");
                       if(h + j + k > 400){
                           //asm("\tNOP");
                           asm("\tCALL _coverage_log ;");
                           //asm("\tNOP");
                            return(-1);
                       }
                       else{
                           //asm("\tNOP");
                           asm("\tCALL _coverage_log ;");
                           //asm("\tNOP");
                           while(1);
                       }
                    }
                }

            }

        }
    }
    return 0;
}
