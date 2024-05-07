/*
 * fuzzer.h
 *
 *  Created on: Jan 23, 2024
 *      Author: Santiago
 */
#include <stdio.h>

#ifndef FUZZER_H_
#define FUZZER_H_

#define ADDRESS_HERE() ({ void *p; __asm__("1: mov 1b, %0" : "=r" (p)); p; })

/*void * area_ptr = NULL;
char init_failure = 0;

void fuzzer_return(int error){
    exit(-2);
}

int fuzzer_init(){
    if(init_failure > 0){
        fuzzer_return(-2);
    }
}
*/







#endif /* FUZZER_H_ */
