/* ========================================================================== */
/**
 *  @file   mua.h
 *
 *  path    /dsps_gtmas/ti/mas/util/mua.h
 *
 *  @brief  Header file for companding tables.
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
#ifndef _MUATBL_H
#define _MUATBL_H

/* System include files */
#include <ti/mas/types/types.h>                      /* DSP types            */
/** @defgroup MUA 
 * This module contains utility function for converting PCM samples to U/A-Law.
 * It also defines max allowed PCM value.
 */

/** @ingroup MUA */
/* @{ */
/**
 @brief Max absolute value of a PCM sample 
 */
#define mua_TBL_MAX_PCM_VAL     32632   
/**
 @brief a-Law Silence value.
 * 
 * Equivalent to -8 Linear value
 */
#define mua_TBL_ALAW_SILENCE    0x55    
/**
 @brief u-law Silence value.
 * 
 * Equivalent to 0 Linear value
 */
#define mua_TBL_MULAW_SILENCE   0x7F    

/**
 * @brief a-law Tables 
 */
extern const tint muaTblAlaw[];
/**
 * @brief u-law Tables 
 */
extern const tint muaTblUlaw[];

/**
 * @brief Compress a frame of linear sample using u-law.
 *
 * @param[in]   length         length of samples to be compressed
 * @param[in]   xin            Pointer to input frame in Q0 format
 * @param[out]  xout           Pointer to output PCM samples
 *
 */
void muaTblUlawCmpr (tint length, linSample *xin, tint *xout);

/**
 * @brief Compress a frame of linear sample using A-law.
 *
 * @param[in]   length         length of samples to be compressed
 * @param[in]   xin            Pointer to input frame in Q0 format
 * @param[out]  xout           Pointer to output PCM samples
 *
 */
void muaTblAlawCmpr (tint length, linSample *xin, tint *xout);

/* @} */ /* ingroup */
#endif /* _MUATBL_H */
/* nothing after this point */
