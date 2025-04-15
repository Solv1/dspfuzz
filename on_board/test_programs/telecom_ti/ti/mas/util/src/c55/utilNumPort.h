/**
 *  @file   utilNumPort.h
 *  @brief  Contains 55x specific (optimized) implementation of numerical APIs
 *
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
#ifndef _UTILNUMPORT_C55_H
#define _UTILNUMPORT_C55_H

/******************************************************************************
* FILE PURPOSE: Portablity definitions for numerical operations
*******************************************************************************
* FILE NAME:   utilNumPort.h
*
* DESCRIPTION: Portability definitions for 55x, uses mostly intrinsics
*                                                        
* (C) Copyright 2007 Texas Instruments Inc.
******************************************************************************/

#include <ti/mas/types/types.h>
#include <ti/mas/fract/fract.h>
#include <ti/mas/util/cga.h>

#ifndef utlDotSat_Cm
/*****************************************************************************
 * FUNCTION PURPOSE: Computes a dot product of two Fract vectors with saturation
 *****************************************************************************  
 * DESCRIPTION: Qres <= TYP_LFRACT_SIZE - a - 1 - Bx - By
 *
 *              where a is from n <= 2^a,
 *                    Bx is from |x| < 2^Bx, By from |y| < 2^By
 *
 *  static inline LFract utlDotSat ( 
 *    Fract *x,         - a pointer to the first vector
 *    tint  Qx,         - Q-format for elements of x
 *    Fract *y,         - a pointer to the second vector
 *    tint  Qy,         - Q-format for elements of y
 *    tint  n,          - length of the vectors
 *    tint  Qres)       - Q-format for the result
 * 
 *   Same as utlDot (but no Qs input) but sum of products is guaranteed to 
 *   accumulate overflow up to 8 guard bits. The sum of products is not guaranteed
 *   to be saturated beyond 8 bits of guard i.e overflow beyond the guard
 *   should not be assumed. If overflow accumulation is within 8-bits, 
 *   end result will be saturated.
 *
 * Assumptions
 *
 *    n > 0 (i.e loop count is non-zero)
 *    n <= 256 (because 8-bit guard may be used in accumulation)
 *
 *****************************************************************************/
static inline LFract utlDotSat (Fract *x, tint Qx, Fract *y, tint Qy, tint n,
                                tint Qres)
{
  int i, diffQ;
  long long lsum = 0; /* 40-bit accumulator */

  cga_LOOP_COUNT_INFO(1,,,,)
  for (i = 0; i < n; i++) {
    lsum += (long) x[i] * (long) y[i];
  }

  diffQ = (Qx+Qy-Qres);

  if (diffQ > 0) {
    return(_lsat(_llshl(lsum, -diffQ)));
  }
  else {
    /* Note: _lsat below is necessary because lsum is long (40-bit), not int (32-bit),
       and since it is left shift, if it was saturated at 32-bit, it will still be
       saturated after left shifting, but if it wasn't saturated at 32-bit, it could
       saturate after left shift */
    return(_lsshl(_lsat(lsum), -diffQ));
  }
}

/*****************************************************************************
 * FUNCTION PURPOSE: Computes a dot product of two Fract vectors with saturation
 *                   with some assumptions for optimization
 *****************************************************************************  
 * DESCRIPTION: Qres <= TYP_LFRACT_SIZE - a - 1 - Bx - By
 *
 *              where a is from n <= 2^a,
 *                    Bx is from |x| < 2^Bx, By from |y| < 2^By
 *
 *  static inline LFract utlDotSatAlignedInp ( 
 *    Fract *x,         - a pointer to the first vector
 *    tint  Qx,         - Q-format for elements of x
 *    Fract *y,         - a pointer to the second vector
 *    tint  Qy,         - Q-format for elements of y
 *    tint  n,          - length of the vectors
 *    tint  Qres)       - Q-format for the result
 * 
 * Assumptions
 *
 *    n > 0 (i.e loop count is non-zero)
 *    n <= 256 because of 8-bit guard
 *    No additional assumptions for 55x
 *****************************************************************************/
static inline LFract utlDotSatAlignedInp (Fract *x, tint Qx, 
                        Fract *y, tint Qy, tint n, tint Qres)
{
  return(utlDotSat (x, Qx, y, Qy, n, Qres));
}
#endif /* #ifndef utlDotSat_Cm */

#endif /* #ifndef _UTILNUMPORT_C55_H */

/* Nothing past this point */
