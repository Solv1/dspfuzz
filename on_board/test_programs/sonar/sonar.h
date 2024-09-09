#ifndef _SONAR_H_
#define _SONAR_H_
#pragma once

#include <stdlib.h>
#include <stdint.h>
#include <stdio.h>
#include <stdbool.h>
#include <time.h>
#include <string.h> //For memcopy

#include <math.h>

#include <tms320.h>
#include <dsplib.h>
#include <dsplib_c.h>


int16_t sonar_test(int16_t * input, int16_t size);

#endif

