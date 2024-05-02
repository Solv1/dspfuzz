/*
 * fuzz.h
 *
 *  Created on: Mar 18, 2024
 *      Author: Santiago
 */

#pragma once
#include <stdio.h>

#include <stdlib.h>
#include <string.h>
#include <stdint.h>

#include <setjmp.h>
#include <time.h>

#include "csl_gpt.h"
#include "csl_intc.h"
#include <csl_general.h>
#include <stdbool.h>

#ifndef FUZZ_H_
#define FUZZ_H_

#define CSL_TEST_FAILED    -1
#define CSL_TEST_PASSED    0

#define CSL_PLL_DIV_000    (0)
#define CSL_PLL_DIV_001    (1u)
#define CSL_PLL_DIV_002    (2u)
#define CSL_PLL_DIV_003    (3u)
#define CSL_PLL_DIV_004    (4u)
#define CSL_PLL_DIV_005    (5u)
#define CSL_PLL_DIV_006    (6u)
#define CSL_PLL_DIV_007    (7u)

#define CSL_PLL_CLOCKIN    (32768u)

#define PLL_CNTL1        *(ioport volatile unsigned *)0x1C20
#define PLL_CNTL2        *(ioport volatile unsigned *)0x1C21
#define PLL_CNTL3        *(ioport volatile unsigned *)0x1C22
#define PLL_CNTL4        *(ioport volatile unsigned *)0x1C23





//typedef struct writeover_pointers {
//    uint32_t * function_pointer; /*Pointers are 24-bits in size the closest we have is 32-bits*/
//    bool isWriten;
//}writeover_pointers;

typedef struct seed {
    uint16_t  seed_input;
    bool isIncreasing;
}seed;


extern void VECSTART(void);

interrupt void fuzzer_isr(void);

#endif /* FUZZ_H_ */
