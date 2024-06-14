/*
 * fuzz.h
 *
 *  Created on: Mar 18, 2024
 *      Author: Santiago
 */

#pragma once

#include <stdlib.h>
#include <stdint.h>
#include <setjmp.h>
#include <time.h>
#include "csl_gpt.h"
#include "csl_intc.h"
#include <csl_general.h>
#include <stdbool.h>

#ifndef FUZZ_H_
#define FUZZ_H_

/* Interesting values */

#define ZERO 0
#define NEG1 -1

#define UINT_MAX 65535
#define INT_MAX 32768 //16-bit int
#define LONG_MAX 2147483647 //32-bit long
#define ULONG_MAX 4294967295
#define ULONG_LONG_MAX 1099511627775 //40-bit long long


//Define floats and double with their standard types for readability.
typedef float float32_t;
typedef double float64_t;





extern void VECSTART(void);

interrupt void fuzzer_isr(void);

#endif /* FUZZ_H_ */
