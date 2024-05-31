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

    if (args[0] > 0) {
        if (args[0] % 2 == 0) {
            if(args[1] == 56){
                while(1);

            }
	    if(args[2] == 56){
		while(1);
			   }
	    if(args[3] == 56){
		while(1);
	    }
	    if(args[4] == 56){
		while(1);
	    }
        }
        else {
            args[4] = 49;
        }
    }
    else if (args[0] < 0) {
        if (args[0] % 2 == 0) {
            args[0] = -76;
        }
        else {
           args[3] = 3;
        }
    }
    else {
        args[0] = 0;
        args[1] = 0;
        args[2] = 0;
        args[3] = 0;
        args[4] = 0;
    }

    if (args[1] >= 10) {
        if (args[1] % 10 == 0) {
            if(args[5] % 26 == 0){
                if(args[4] % 12 == 0){
                    if(args[8] == 0){
                        //Mimic a crash here...
                        return(-1);
                    }
                }
            }
        } else {
            args[0] = 57;
        }
    }
    else {
        if (args[9] % 5 == 0) {
            args[1] = 42;
        }
        else {
            args[1] = -32;
        }
    }

    if (args[2] % 3 == 0) {

        if (args[5] % 9 == 0) {

            if (args[3] % 27 == 0) {

                if (args[2] % 81 == 0) {

                }
                else {
                    //mimic a hang here
                    while(1);

                }
            }
            else {
                args[1] = 21;
            }
        }
        else {
            args[2] = 21;
        }
    }
    else {

        if (args[0] % 7 == 0) {
            if(args[9] % 23 == 0){
                if(args[5] % 12 == 0){
                    //Might cause a buss error who knows
                    args[99999] = 0;
                }
            }
        }
        else {
            return(0);
        }
    }

    return 0;
}


