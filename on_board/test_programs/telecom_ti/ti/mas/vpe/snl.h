/******************************************************************************
 * FILE PURPOSE: Speech and Noise level estimation
 *               
 ******************************************************************************
 * FILE NAME: snl.h  
 *
 * DESCRIPTION: Implements active speech and noise level estimation for the purposes
 *              of voice doctor 
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
 *****************************************************************************/
#ifndef _SNL_H
#define _SNL_H

#include <ti/mas/types/types.h>              /* DSP types */

/**
 *  @file   snl.h
 *  @brief  Contains external APIs for the SNL module.
 *
 */

/** 
 *  @defgroup SNL Siganl and Noise Level estimator (SNL)
 *
 *  @brief SNL estimates the speech and background noise level of the incoming 
 *         voice signal.
 *
 */
/** @ingroup SNL */
/* @{ */

/** @defgroup snl_api_return_codes SNL API return codes
 *  These are the return codes for the SNL module API functions.
 *  
 * @{
 * @name SNL Function Return Value Definitions
 *
 */
/* @{ */
enum {
  snl_NOERR    = 0,  /**< success, no error   */
  snl_ERR      = 1,  /**< failed              */
  snl_BADPARAM = 2   /**< Returned from function with wrong parameters */       
};                            
/*  @} */
/** @} */

/**
 *  @name SNL sampling rate factor
 *  \remark These numbers are used as multipliers, so can't be changed to other values.
 *
 */
enum {
  snl_SRATE_FACTOR_8K  = 1, /**< sampling rate is 8kHz  */
  snl_SRATE_FACTOR_16K = 2  /**< sampling rate is 16kHz */
};                           

/**
 *  @def  snl_ENV_Q
 *        The Fract Q format for the adaptive envelope threshold returned by
 *        snlGetLevels().  	 
 */
#define snl_ENV_Q               3

/**
 *  @def  snl_INVALID_POW_DB
 *        The initialization value for the signal and noise dB value.  It's not a 
 *        valid result for either signal or noise level estimation.  
 *  @sa 
 */
#define snl_INVALID_POW_DB      0x7F

/**
 * @name External APIs for SNL
 *
 */
/* @{ */
/**
 *  @brief Obtain from SNL the memory requirements of an instance. 
 *  \remark This must be the first function to be called before calling any other SNL APIs
 *            
 *
 *  @param[out]   instsize  The size of the instance
 *
 *  @return           \link SNL::snl_NOERR     snl_NOERR,   \endlink \n
 *                    \link SNL::snl_ERR       snl_ERR      \endlink: if instsize==NULL 
 */
tint snlGetSizes (tint *instsize);

/**
 *  @brief  Initialize signal level estimator
 *  \remark This is the function to call after calling snlGetSizes(), only samp_rate is user configurable.
 *          After this function call, both signal and noise level are initialized to 
 *          \link SNL::snl_INVALID_POW_DB snl_INVALID_POW_DB,\endlink  which is not considered
 *          a valid result from SNL
 *
 *  @param[out]       *inst      Pointer to the SNL instance
 *  @param[in]        samp_rate  \link SNL::snl_SRATE_FACTOR_8K  snl_SRATE_FACTOR_8K  \endlink \n
 *                               \link SNL::snl_SRATE_FACTOR_16K snl_SRATE_FACTOR_16K \endlink \n 
 *
 *  @return           \link SNL::snl_NOERR     snl_NOERR,   \endlink  \n
 *                    \link SNL::snl_ERR       snl_ERR,     \endlink :if inst==NULL \n 
 *                    \link SNL::snl_BADPARAM  snl_BADPARAM \endlink :if samp_rate is not one of snl_SRATE_FACTOR_8K
 *                                                                    and snl_SRATE_FACTOR_16K
 *
 */
tint snlInit      (void *inst, tint samp_rate);

/**
 *  @brief  Signal and noise level estimator
 *  \remark This is the function that processes the signal and calculates various parameters needed for level
 *          estimation.  This function needs to be called every frame. There is a limitation of 1.5ms for the 
 *          frame size, which will equivalent to 12 for the nSamps parameter for 8kHz sampling rate and 24
 *          for the nSamps parameter for 16kHz sampling rate.
 *
 *  @param[in, out]   *inst     Pointer to the instance
 *  @param[in]        *samples  Pointer to samples
 *  @param[in]        nSamps    Number of samples
 *
 *  @return           \link SNL::snl_NOERR     snl_NOERR   \endlink
 */
tint snlProcess   (void *inst, linSample *samples, tuint nSamps);

/**
 *  @brief  Get speech and noise levels
 *  \remark This is the function to be called whenever the levels are needed.  It can be called every frame
 *          or when requested.
 *
 *  @param[in]   *inst    Pointer to the instance
 *  @param[out]  *spchdB  pointer to returned speech power level in Q0 dB
 *  @param[out]  *noisedB pointer to returned noise  power level in Q0 dB
 *  @param[out]  *thresh  pointer to returned adaptive threshold for envelope 
 *                        in Q\link SNL::snl_ENV_Q snl_ENV_Q \endlink linear amplitude.
 * 
 *  @return           \link SNL::snl_NOERR     snl_NOERR   \endlink
 */
tint snlGetLevels (void *inst, Fract *spchdB, Fract *noisedB, UFract *thresh);

/* @} */
/* @} */ /* ingroup SNL */
#endif

/* Nothing past this point */
