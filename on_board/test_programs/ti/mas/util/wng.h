/* ========================================================================== */
/**
 *  @file   wng.h
 *
 *  path    /dsps_gtmas/ti/mas/util/wng.h
 *
 *  @brief  Header file for White noise generator.
 *
 *  ============================================================================
 *        Copyright (c) 2007 – 2013 Texas Instruments Incorporated                
 *                                                                                
 *              All rights reserved not granted herein.                           
 *                                                                                
 *                         Limited License.                                       
 *                                                                                
 *  Texas Instruments Incorporated grants a world-wide, royalty-free,             
 *  non-exclusive license under copyrights and patents it now or hereafter owns   
 *  or controls to make, have made, use, import, offer to sell and sell           
 *  ("Utilize") this software subject to the terms herein.  With respect to the   
 *  foregoing patent license, such license is granted solely to the extent that   
 *  any such patent is necessary to Utilize the software alone.  The patent       
 *  license shall not apply to any combinations which include this software,      
 *  other than combinations with devices manufactured by or for TI (“TI           
 *  Devices”).  No hardware patent is licensed hereunder.                         
 *                                                                                
 *  Redistributions must preserve existing copyright notices and reproduce this   
 *  license (including the above copyright notice and the disclaimer and (if      
 *  applicable) source code license limitations below) in the documentation       
 *  and/or other materials provided with the distribution                         
 *                                                                                
 *  Redistribution and use in binary form, without modification, are permitted    
 *  provided that the following conditions are met:                               
 *                                                                                
 *    *  No reverse engineering, decompilation, or disassembly of this software   
 *  is permitted with respect to any software provided in binary form.            
 *                                                                                
 *    *  any redistribution and use are licensed by TI for use only with TI       
 *  Devices.                                                                      
 *                                                                                
 *    *  Nothing shall obligate TI to provide you with source code for the        
 *  software licensed and provided to you in object code.                         
 *                                                                                
 *  If software source code is provided to you, modification and redistribution   
 *  of the source code are permitted provided that the following conditions are   
 *  met:                                                                          
 *                                                                                
 *    *  any redistribution and use of the source code, including any resulting   
 *  derivative works, are licensed by TI for use only with TI Devices.            
 *                                                                                
 *    *  any redistribution and use of any object code compiled from the source   
 *  code and any resulting derivative works, are licensed by TI for use only      
 *  with TI Devices.                                                              
 *                                                                                
 *  Neither the name of Texas Instruments Incorporated nor the names of its       
 *  suppliers may be used to endorse or promote products derived from this        
 *  software without specific prior written permission.                           
 *                                                                                
 *  DISCLAIMER.                                                                   
 *                                                                                
 *  THIS SOFTWARE IS PROVIDED BY TI AND TI’S LICENSORS "AS IS" AND ANY EXPRESS    
 *  OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED             
 *  WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE        
 *  DISCLAIMED. IN NO EVENT SHALL TI AND TI’S LICENSORS BE LIABLE FOR ANY         
 *  DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES    
 *  (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR            
 *  SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER    
 *  CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT            
 *  LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY     
 *  OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH   
 *  DAMAGE.                                                                       
 */
#ifndef _WNG_H
#define _WNG_H


/** @defgroup WNG 
* This module contains function and definition for generating White Noise.
*/

/** @ingroup WNG */
/* @{ */
/* System level header files */
#include <ti/mas/types/types.h>                      /* DSP types            */

/**
 * @brief Initialize noise generator.
 *
 * @param[in]   noise_level     noise level in dBm0 [0,-70] range
 * @param[in]   seed            initial seed
 * @param[out]  mean            a pointer to mean value for noise that will
 *                              be needed for wngGenNoiseSample()
 * @param[out]  rng_state       a pointer to generator state that will be
 *                              needed for wngGenNoiseSample()
 *
 */
void wngInit(tint noise_level, tuint seed, tint *mean, tuint *rng_state);

/**
 * @brief Generate new noise sample.
 *
 * @b Description : @b <BR>
 * The random number generator used:<BR>
 * <code> x = (x * WNG_COEF + 1)mod(2^16) </code> <BR>
 * where:<BR>
 * x is unsigned number <BR>
 * 
 * <code> y = (Signed) x </code> <BR>
 *
 * Transformation to the white noise with the specified level:<BR>
 * <code> z = y*alpha </code> <BR>
 * where the level is based on the fact that the sine wave with
 * the amplitude 32768 produces signal level of +3dBm0.
 * The random number generator generates number in range 
 * (0:2^16-1).
 *
 *
 * @param[in]   mean        mean value, controls signal power
 *                           (obtained from wngInit())
 * @param[in]   rng_state   pointer to generator state that needs to be
 *                           saved in between calls. (first state obtained
 *                           in wngInit())
 *
 *
 */
linSample wngGenNoiseSample (tint mean, tuint *rng_state);

/**
 * @brief Generate new noise frame.
 *
 * @b Description : @b <BR>
 * The random number generator is described in wngGenNoiseSample().
 *
 * @param[in]   mean         mean value, controls signal power
 *                           (obtained from wngInit())
 * @param[in]   rng_state    pointer to generator state that needs to be
 *                           saved in between calls. (first state obtained
 *                           in wngInit())
 * @param[in]   n            frame length in samples
 * @param[in]   frame        a pointer to output frame buffer
 *
 * @remark  Frame length must be greater than 0. If not, unpredictable results would occur.
 */
void      wngGenNoiseFrame  (tint mean, tuint *rng_state, tint n,
                             linSample *frame);

/* @} */ /* ingroup */
#endif  /* _WNG_H */
/* nothing past this point */
