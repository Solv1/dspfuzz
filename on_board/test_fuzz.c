/*
 * test_fuzz.c
 *
 *  Created on: May 27, 2024
 *      Author: santiago
 */


#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include "test_fuzz.h"

int16_t test(uint16_t argc, int16_t * args) {

    if (args == NULL){
        while(1);
    }
    

    if (args[0] == 'D'){
        if (args[1] == 'E'){
            if (args[2] == 'A'){
                if (args[3] == 'D'){
                    if (args[4] == 'B'){
                        if (args[5] == 'E'){
                            if (args[6] == 'E'){
                                if (args[7] == 'F'){
                                    if (args[8] == '!'){
                                        if (args[9] == 'I'){
                                            if (args[10] == 'L'){
                                                if (args[11] == 'I'){
                                                    if (args[12] == 'K'){
                                                        if (args[13] == 'E'){
                                                            if (args[14] == 'T'){
                                                                if (args[15] == 'O'){
                                                                    if (args[16] == 'E'){
                                                                        if (args[17] == 'A'){
                                                                            if (args[18] == 'T'){
                                                                                while(1);
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }   
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }    
    }

    if (args[1] >= 10) {
        if (args[1] % 10 == 0) {
            if(args[5] % 26 == 0){
                if(args[4] % 12 == 0){
                    if(args[8] == 0){
                        if(args[9] == 12){
                            return(-1);
                        }
                    }
                }
            }
        } 
    }
    else {

        if (args[0] % 7 == 0) {
            if(args[9] % 23 == 0){
                if(args[5] % 12 == 0){
                    if(args[10] == 'M'){
                        if(args[11] == 'A'){
                            if(args[12] == 'G'){
                                if(args[13] == 'I'){
                                    if(args[14] == 'C'){
                                        if(args[15] == 'H'){
                                            if(args[16] == 'O'){
                                                if(args[17] == 'U'){
                                                    if(args[18] == 'R'){
                                                        if(args[19] == 'S'){
                                                            if(args[20] == 'E'){
                                                                //Might cause a buss error who knows
                                                                args[99999] = 0;
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    return 0;
}


