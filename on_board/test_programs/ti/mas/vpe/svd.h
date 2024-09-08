/******************************************************************************
 * FILE PURPOSE: Simple Voice Activity Detection (SVD) module
 *               
 ******************************************************************************
 * FILE NAME: svd.h  
 *
 * DESCRIPTION: Implements a (very) simple Voice Activity Detector (VAD) based 
 *              almost solely on the SNL module.
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
#ifndef _SVD_H
#define _SVD_H

/**
 *  @file   svd.h
 *  @brief  Contains external APIs for the SVD module.
 *
 */

/** 
 *  @defgroup SVD Simple Voice activity Detector (SVD)
 *
 *  @brief The SVD module examines the signal and noise levels measured by SNL 
 *         and makes a decision whether voice is active or not. 
 */
/** @ingroup SVD */
/* @{ */

#include <ti/mas/types/types.h>              /* DSP types            */

/** @defgroup svd_api_return_codes SVD API return codes
 *  These are the return codes for the SVD module API functions.
 *  
 * @{
 * @name SVD Function Return Value Definitions
 *
 */
/* @{ */
enum{
  svd_NOERR    = 0,  /**< success, no error   */
  svd_ERR      = 1,  /**< failed              */
  svd_BADPARAM = 2   /**< Returned from function with wrong parameters */       
};                            
/*  @} */
/** @} */

/**
 *  @name SVD decision codes
 *
 */
enum{
  svd_VOICE_UNDEFINED = -1,  /**< VAD decision undefined */
  svd_VOICE_INACTIVE  = 0,   /**< VAD decision NO VOICE  */
  svd_VOICE_ACTIVE    = 1    /**< VAD decision VOICE     */
};                           

/**
 *  @name SVD sampling rate factor
 *  \remark These numbers are used as multipliers, so can't be changed to other values.
 *
 */
enum{
  svd_SRATE_8K  = 1,         /**< sampling rate is 8kHz  */
  svd_SRATE_16K = 2          /**< sampling rate is 16kHz */
};                           

/**
 *  @def  svd_ENV_Q
 *        The Fract Q format for the adaptive envelope threshold returned by
 *        svdGetLevels().  	 
 */
#define svd_ENV_Q               3

/**
 *  @def  svd_PWR_Q
 *        The Fract Q format for the speech and noise power level returned by
 *        svdGetLevels().  	 
 */
#define svd_PWR_Q               0

/**
 *  @def  svd_INVALID_POW_DB
 *        The initialization value for the signal and noise dB value.  It's not a 
 *        valid result for either signal or noise level estimation.  
 *  @sa 
 */
#define svd_INVALID_POW_DB      0x7F

/**
 * @name External APIs for SVD
 *
 */
/* @{ */
/**
 *  @brief Obtain from SVD the instance memory requirements. 
 *  \remark This must be the first function to be called before calling any other SVD APIs
 *            
 *  @param[out]   instsize  The size of the instance
 *
 *  @return           \link SVD::svd_NOERR     svd_NOERR,   \endlink \n
 *                    \link SVD::svd_ERR       svd_ERR      \endlink: if instsize==NULL 
 */
tint svdGetSizes (tint *instsize);

/**
 *  @brief  Initialize simple voice activity detector
 *  \remark This function is called after svdGetSizes(), and initializes the instance. 
 *
 *  @param[in]        *inst      Pointer to the SVD instance memory, must NOT be NULL.
 *  @param[in]        samp_rate  \link SVD::svd_SRATE_8K  svd_SRATE_8K  \endlink \n
 *                               \link SVD::svd_SRATE_16K svd_SRATE_16K \endlink \n 
 *  @param[out]       *inst      Initialized SVD instance memory.
 *
 *  @return           \link SVD::svd_NOERR     svd_NOERR,   \endlink  \n
 *                    \link SVD::svd_ERR       svd_ERR,     \endlink :if inst==NULL \n 
 *                    \link SVD::svd_BADPARAM  svd_BADPARAM \endlink :if samp_rate is not one of 
 *                                                                       svd_SRATE_8K
 *                                                                    or svd_SRATE_16K
 *
 */
tint svdInit (void *inst, tint samp_rate);

/**
 *  @brief  Simple VAD detection process
 *  \remark This is the function that processes the signal and makes the Voice/Noise decision.  The 
 *          function should be called every frame. The frame size must be at least 1.5ms (12 for 8kHz, 
 *          24 for 16kHz).
 *
 *  @param[in, out]   *inst     Pointer to the instance
 *  @param[in]        *samples  Pointer to samples
 *  @param[in]        nSamps    Number of samples, or frame size
 *
 *  @return           \link SVD::svd_NOERR     svd_NOERR,   \endlink  \n
 *                    \link SVD::svd_ERR       svd_ERR,     \endlink  \n 
 */
tint svdProcess (void *inst, linSample *samples, tuint nSamps);

/**
 *  @brief  Get Voice decision
 *  \remark This is the function to call when a Voice/Noise decision is needed.  It can be called 
 *          as needed.
 *
 *  @param[in]   *inst     Pointer to the instance
 *  @param[out]  sig_pow   Exponentially averaged signal power
 *                        
 *  @return      \link SVD::svd_VOICE_UNDEFINED svd_VOICE_UNDEFINED \endlink \n
 *               \link SVD::svd_VOICE_INACTIVE  svd_VOICE_INACTIVE  \endlink \n 
 *               \link SVD::svd_VOICE_ACTIVE    svd_VOICE_ACTIVE    \endlink \n 
 */
tint svdGetDecision (void *inst, LFract *sig_pow);

/**
 *  @brief  Get speech and noise levels
 *  \remark This is the function to be called whenever the levels are needed.  
 *          It can be called every frame or when requested.
 *
 *  @param[in]   *inst    Pointer to the instance
 *  @param[out]  *spchdB  pointer to returned speech power level in Q0 dB
 *  @param[out]  *noisedB pointer to returned noise  power level in Q0 dB
 *  @param[out]  *thresh  pointer to returned adaptive threshold for envelope 
 *                        in Q\link SVD::svd_ENV_Q svd_ENV_Q \endlink linear amplitude.
 * 
 *  @return           \link SVD::svd_NOERR     svd_NOERR   \endlink
 */
tint svdGetLevels (void *inst, Fract *spchdB, Fract *noisedB, UFract *thresh);

/* @} */
/* @} */ /* ingroup SVD */
#endif

/* Nothing past this point */
