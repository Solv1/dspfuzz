/******************************************************************************
 * FILE PURPOSE:header file of SLM (signal limiter)
 ******************************************************************************
 * FILE NAME:   slm.h
 *
 * DESCRIPTION: Contains external definitions&functions prototypes for SLIM
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
#ifndef _SLM_H
#define _SLM_H

/**
 *  @file   slm.h
 *  @brief  Contains external APIs for the slm module.
 *
 */

/* System level header files */
#include <ti/mas/types/types.h>            /* DSP types */

/**  
 * @defgroup SLM Signal Limiter(SLM)
 * 
 * @brief When a voice signal is saturated, the resulting signal is generally nonlinear 
 *        in nature due to the (non-linear) saturation process. The Signal Limiter 
 *        reduces the voice signal to prevent the undesirable effects of hard limiting.
 */
/** @ingroup SLM */
/* @{ */

/**
 *  @name SLM Mode Definitions
 *  
 */
enum {
  slm_DISABLE    =    0,      /**< Disable signal limiter */
  slm_MODE1      =    1,      /**< Signal limiter mode 1: Max -10.38 dBm0, Min -17.25 dBm0 */
  slm_MODE2      =    2,      /**< Signal limiter mode 2: Max  -8.25 dBm0, Min -15.34 dBm0 */  
  slm_MODE3      =    3,      /**< Signal limiter mode 3: Max  -6.44 dBm0, Min -13.43 dBm0 */
  slm_MODE4      =    4,      /**< Signal limiter mode 4: Max  -4.28 dBm0, Min -11.41 dBm0 */
  slm_MODE5      =    5,      /**< Signal limiter mode 5: Max  -2.17 dBm0, Min  -9.18 dBm0 */  
  slm_NUMOF_MODE = slm_MODE5  /**< Number of different SLM */ 
};

/** @defgroup slm_api_return_codes SLM API return codes
 *  These are the return codes for the SLM module API functions.
 *  
 * @{
 * @name SLM Function Return Value Definitions
 *
 */
/* @{ */
enum {
  slm_NOERR    = 0,     /**< Functions returned without error */
  slm_ERROR    = 1,     /**< Functions returned with error, such as NULL point */
  slm_BADPARAM = 2      /**< Functions returned with bad parameters */  
};
/*  @} */
/** @} */

/**
 *  @name SLM sampling rate factor
 *  \remark These numbers are used as table indeces, so can't be changed.
 */
enum {
  slm_SRATE_FACTOR_16K = 1, /**< sampling rate is 16kHz */
  slm_SRATE_FACTOR_8K  = 2  /**< sampling rate is 8kHz  */
};                           

/**
 *  @name SLM Configuration Structure Valid Bit-field
 *  
 */
enum {
  slm_CFG_BIT_SRATE      = 0     /**< Bit 0: sampling rate factor */
};

/** 
 * \brief SLM configure Structure
 *  
 * Contains parameters that can be chosen to be configured by user when initializing SLM
 *
 */
/* @{ */
typedef struct{
  tuint      valid_bf;            /**< Bit-fields indicating which parameters to configure \n
                                  \link SLM::slm_CFG_BIT_SRATE bitfield definition \endlink */
  tint       srate_factor;        /**< Sampling rate factor:\n
                                  \link SLM::slm_SRATE_FACTOR_8K slm_SRATE_FACTOR_8K   \endlink \n 
                                  \link SLM::slm_SRATE_FACTOR_16K slm_SRATE_FACTOR_16K \endlink */
} slmConfig_t;
/* @} */

/**
 * @name External APIs for SLM 
 *
 */
/* @{ */
/**
 *  @brief Function slmGetSizes() get the size of a SLM instance 
 *            
 *  \remark Function slmGetSizes() is the first function to be called.  
 *
 *  @param[in, out] instsize     Pointer to the size of a SLM instance .
 *
 *  @return           \link SLM::slm_NOERR     slm_NOERR,   \endlink \n
 *                    \link SLM::slm_ERROR     slm_ERROR    \endlink 
 */
tint slmGetSizes (tint *instsize);
   
/**
 *  @brief Function slmInit() initializes SLM  
 *            
 *  \remark Function slmInit() must be called after slmGetSizes(). After the
 *  function call, SLM is disabled.  
 *      
 *
 *  @param[in, out] inst    Pointer to a SLM instance structure
 *  @param[in]      cfg     Pointer to a configuration structure slmConfig_t
 *
 *  @return           \link SLM::slm_NOERR     slm_NOERR,   \endlink \n
 *                    \link SLM::slm_ERROR     slm_ERROR,   \endlink \n
 *                    \link SLM::slm_BADPARAM  slm_BADPARAM \endlink 
 *       
 */ 
tint slmInit (void *inst, slmConfig_t *cfg);

/**
 *  @brief Function slmControl() configure SLM with different types of limiter
 *            
 *  \remark Function slmControl() must be called after slmInit() to enable SLM by
 *  setting the mode to one of the operational modes.
 *  All internal parameters will be reset whenever there's a mode change 
 *   
 *
 *  @param[in, out]  inst     Pointer to a SLM instance structure.
 *  @param[in]       mode     one of \link SLM::slm_DISABLE slm modes \endlink.
 *
 *  @return           \link SLM::slm_NOERR     slm_NOERR,   \endlink \n
 *                    \link SLM::slm_ERROR     slm_ERROR,   \endlink \n
 *                    \link SLM::slm_BADPARAM  slm_BADPARAM \endlink 
 */
tint slmControl (void *inst, tint mode);

/**
 *  @brief This is the function that performs the signal attenuation
 *            
 *  \remark This function can only be called after slmInit() and slmControl()
 *  to make SLM take effect and it needs to be called every frame.  
 *   
 *
 *  @param[in]        inst            Pointer to a SLM instance structure.
 *  @param[in, out]   speechSamples   Pointer to the voice buffer
 *  @param[in]        frame_length    Number of samples processed
 *
 *  @return           \link SLM::slm_NOERR     slm_NOERR   \endlink
 *
 */
tint slmProcess (void *inst, void *speechSamples, tint frame_length);

/* @} */
/* @} */ /* ingroup SLM */
#endif

/* end of slm.h */

