/******************************************************************************
 * FILE PURPOSE: Adaptive Spectral Noise Reduction (ASNR) module
 *               
 ******************************************************************************
 * FILE NAME: asnr.h  
 *
 * DESCRIPTION: Implements adaptive noise reduction in frequency domain. 
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
#ifndef _ASNR_H
#define _ASNR_H

/**
 *  @file   asnr.h
 *  @brief  Contains external API for the Adaptive Spectral Noise Reduction 
 *          (ASNR) module.
 *
 */

/* System include files and utilities' APIs */
#include <ti/mas/types/types.h>               /* DSP types                   */
#include <ti/mas/util/ecomem.h>               /* memory descriptor structure */

/* Define ASNR Module as a master group in Doxygen format and add all ASNR API
   definitions to this group. */
/** @defgroup asnr_module ASNR Module API
 *  @{
 */
/** @} */

/** @defgroup asnr_api_functions ASNR Functions
 *  @ingroup asnr_module
 */

/** @defgroup asnr_api_structures ASNR Data Structures
 *  @ingroup asnr_module
 */

/** @defgroup asnr_api_constants ASNR Constants (enum's and define's)
 *  @ingroup asnr_module
 */

/** @defgroup asnr_api_return_codes ASNR API Function Return Codes
 *  @ingroup asnr_api_constants
 *  @{
 *
 *  Error codes returned by ASNR API functions.
 */
/*@{*/
enum {
  asnr_NOERR              = 0,  /**< success, no error                        */
  asnr_ERR_NOMEMORY       = 1,  /**< supplied memory are not enough           */
  asnr_ERR_NOTOPENED      = 2,  /**< asnr instance has not been opened yet    */
  asnr_ERR_NOTCLOSED      = 3,  /**< asnr instance has not been closed yet    */
  asnr_ERR_INVALIDPAR     = 4,  /**< configuration parameter is invalid       */
  asnr_ERR_INVALIDNBUFS   = 5   /**< incorrect number of memory buffers       */
};
/*@}*/
/** @} */


/** @defgroup ASNR_samp_rate ASNR Sampling Rates Definitions
 *  @ingroup asnr_api_constants
 *  @{
 *
 *  Sampling rates that are supported by ASNR. Used to define sampling_rate
 *  of \ref asnrOpenConfig_t, asnrSizeConfig_t, and asnrControl_t.
*/
/*@{*/
enum {
  asnr_SRATE_8K  = 0,                  /**<  8kHz */
  asnr_SRATE_16K = 1                   /**< 16kHz */
};


typedef tint asnrSrate_t;       /**< used by \ref asnrOpenConfig_t,
                                     asnrSizeConfig_t, and asnrControl_t   */
/*@}*/
/** @} */

/**
 *  @ingroup asnr_api_structures
 *
 *  @brief Configuration structure for asnrGetSizes()
 *  \brief This structure specifies the maximum sampling rate. It is also
 *         part of structure asnrNewConfig_s used by asnrNew().
 */
typedef struct asnrSizeConfig_s {

  asnrSrate_t  max_sampling_rate; /**< Maximum sampling rate of the system:
                                       8kHz:  set to asnr_SRATE_8K.
                                       16kHz: set to asnr_SRATE_16K.   */
} asnrSizeConfig_t;

/**
 *  @ingroup asnr_api_structures
 *
 *  @brief Configuration structure for asnrNew()
 *  \brief This structure is used for creating a new ASNR instance through
 *         function asnrNew().
 */
typedef struct asnrNewConfig_s {
  void  *handle;             /**< handle can be used by a user to identify the 
                                  ASNR that communicates to it, e.g. when a 
                                  debug call out function is called by a certain 
                                  ASNR instance.                              */
  asnrSizeConfig_t  sizeCfg; /**< size configration   */
} asnrNewConfig_t;


/**
 *  @ingroup asnr_api_structures
 *
 *  @brief Configuration structure for asnrOpen()
 *  \brief This structure contains ASNR parameters that must be configured 
 *         through asnrOpen(). 
 */
typedef struct asnrOpenConfig_s {

  asnrSrate_t  sampling_rate; /**< Sampling rate of the system:
                                   8kHz:  set to asnr_SRATE_8K.
                                   16kHz: set to asnr_SRATE_16K.        */
} asnrOpenConfig_t;


/**
 *  @ingroup asnr_api_structures
 *
 *  @brief Configuration structure for asnrControl()
 *  \brief This structure contains ASNR parameters that can be configured 
 *         through asnrControl(). 
 */
typedef struct asnrControl_s {
  tuint valid_bitfield;  /**< To indicate which parameters to be changed */
#define asnr_CTL_VALID_ENABLE           0x0001
#define asnr_CTL_VALID_SAMP_RATE        0x0002
#define asnr_CTL_VALID_DELAY            0x0004
#define asnr_CTL_VALID_BAND_BIN1        0x0008
#define asnr_CTL_VALID_BAND_BIN2        0x0010
#define asnr_CTL_VALID_BAND1_MAX_ATTEN  0x0020
#define asnr_CTL_VALID_BAND2_MAX_ATTEN  0x0040
#define asnr_CTL_VALID_BAND3_MAX_ATTEN  0x0080
#define asnr_CTL_VALID_SIG_UPD_RATE_MIN 0x0100
#define asnr_CTL_VALID_SIG_UPD_RATE_MAX 0x0200
#define asnr_CTL_VALID_NOISE_THRESH     0x0400
#define asnr_CTL_VALID_NOISE_HANGOVER   0x0800

  tint enable;     /**< <B>Enable flag:</B> 0 - disable ASNR, 1 - enable ASNR.*/
#define asnr_DISABLE 0  
#define asnr_ENABLE  1
  
  tint samp_rate;  /**< <B>Sampling rate:</B> asnr_SRATE_8K or asnr_SRATE_16K.*/
  
  tint delay;      /**< <B>Signal delay:</B>
       This parameter specifies signal delay in msecs, which determines the  
       shape of FFT windowing function. It may be 3, 4, 5, or 6 (ms). ASNR may 
       produce less unwanted noise and speech artifacts with a longer delay. 
       Default is 5. 
       *
       \remark If this parameter is out of the valid range specified by
              [\ref asnr_DELAY_LOWER_LIMIT \ref asnr_DELAY_UPPER_LIMIT],  
              asnrControl() will take no action and return an error.          */
#define asnr_DELAY_LOWER_LIMIT 3
#define asnr_DELAY_UPPER_LIMIT 6

  tint band_bin1;  /**< <B>Frequency bands boundary bin 1:</B>
       This parameter defines the first boundary of frequency bands for which 
       different amount of noise attenuation is applied. The corresponding 
       frequency is (parameter value)*62.5Hz. Default is 10 (625Hz).
       *
       \remark If this parameter is out of the valid range specified by
       [\ref asnr_BAND_BIN_LOWER_LIMIT \ref asnr_BAND_BIN_UPPER_LIMIT_8K] for 8kHz, 
	   or [\ref asnr_BAND_BIN_LOWER_LIMIT \ref asnr_BAND_BIN_UPPER_LIMIT_16K] 
 	   for 16kHz, asnrControl() will take no action and return an error.       */
#define asnr_BAND_BIN_LOWER_LIMIT          1
#define asnr_BAND_BIN_UPPER_LIMIT_8K      63
#define asnr_BAND_BIN_UPPER_LIMIT_16K    127

  tint band_bin2;  /**< <B>Frequency bands boundary bin 2:</B> 
       This parameter defines the second boundary of frequency bands for which 
       different amount of noise attenuation is applied. It must be larger than
       band_bin1. Default is 32 (2000Hz). 
       *
       \remark If this parameter is out of the valid range specified by
       [\ref asnr_BAND_BIN_LOWER_LIMIT \ref asnr_BAND_BIN_UPPER_LIMIT_8K] for 8kHz, 
	   or [\ref asnr_BAND_BIN_LOWER_LIMIT \ref asnr_BAND_BIN_UPPER_LIMIT_16K],  
       or if it is smaller than band_bin1, asnrControl() will take no action and 
	   return an error.                                                       */
  
  Fract band1_max_atten; /**< <B>Maximum attenuation in band 1:</B>
        </B> This parameter specifies the maximum attenuation (dB) that ASNR may 
        apply for frequency band 1 - [0, band_bin1-1]*62.5 Hz. Default is 9(dB).       
        *
        \remark If this parameter is out of the valid range specified by
          [\ref asnr_MAX_ATTEN_LOWER_LIMIT \ref asnr_MAX_ATTEN_UPPER_LIMIT], 
          asnrControl() will take no action and return an error.              */
#define asnr_MAX_ATTEN_LOWER_LIMIT   0
#define asnr_MAX_ATTEN_UPPER_LIMIT  90
  
  Fract band2_max_atten; /**< <B>Maximum attenuation in band 2:</B>
        </B> This parameter specifies the maximum attenuation (dB) that ASNR may 
        apply for frequency band 2 - [band_bin1, band_bin2-1]*62.5 Hz. 
        Default is 9(dB).       
        *
        \remark If this parameter is out of the valid range specified by
          [\ref asnr_MAX_ATTEN_LOWER_LIMIT \ref asnr_MAX_ATTEN_UPPER_LIMIT], 
          asnrControl() will take no action and return an error.              */
          
  Fract band3_max_atten; /**< <B>Maximum attenuation in band 3:</B>
        </B> This parameter specifies the maximum attenuation (dB) that ASNR may 
        apply for frequency band 3 - [band_bin2*62.5Hz, Nyquist]. 
        Default is 9(dB).       
        *
        \remark If this parameter is out of the valid range specified by
          [\ref asnr_MAX_ATTEN_LOWER_LIMIT \ref asnr_MAX_ATTEN_UPPER_LIMIT], 
          asnrControl() will take no action and return an error.              */

  Fract sig_upd_rate_max; /**< <B>Maximum signal update rate:</B>
        ASNR adaptive speech signal estimate inverse update rate upper bound.
        The actual inverse update rate is varied internally by ASNR between 
        the configured maximum (this parameter) and mimimum constraints. A higher 
        inverse update rate reduces frame to frame changes yielding greater 
        temporal smoothing and less time varying ASNR distortion artifacts during 
        speech or noise. A lower inverse update rate yields quicker speech onset 
        "breaking in" to remove ASNR attenuation. 
        *
        This parameter is in Q.15 format. Default is 31129 (0.95).            
        *
        \remark If this parameter is smaller than sig_upd_rate_min, asnrControl() 
        will take no action and return an error.                              */

  Fract sig_upd_rate_min; /**< <B>Minimum signal update rate:</B> 
        This is the minimum constraint on the ASNR adaptive speech signal estimate 
        inverse update rate.
        *
        This parameter is in Q.15 format. Default is 29818 (0.91).            */

  tint noise_thresh;    /**< <B>Noise threshold:</B>
       ASNR will not reduce noise below this level, and when noise is already 
       lower than this level, ASNR will not apply any attenuation to the signal. 
       ASNR spectral noise estimate will continue to update even if Tx signal 
       is below this noise threshold.
       *
       This parameter is in dBm0. Default is -75dBm0. Valid range is specified 
       by [\ref asnr_NOISE_THR_LOWER_LIMIT, \ref asnr_NOISE_THR_UPPER_LIMIT]. If 
       it is outside of this range, asnrControl() will take no action and return 
	   an error.                                                              */
#define asnr_NOISE_THR_LOWER_LIMIT (-80)
#define asnr_NOISE_THR_UPPER_LIMIT (-40)

  tint noise_hangover;  /**< <B>Noise hangover:</B>
       When noise is lower than parameter noise_thresh, ASNR will not apply any 
       attenuation to the signal. After noise goes above noise_thresh, ASNR 
       waits a period of time specified by this parameter before applying 
       attenuation again. 
       *
       This parameter is in 10 msec units. Default is 150 (1.5 seconds).      */ 

} asnrControl_t;
 

/**
 *  @ingroup asnr_api_functions
 *
 *  @brief Function asnrGetSizes() obtains the memory requirements of an ASNR
 *         instance.
 *
 *  @param[in]   cfg     Pointer to a size configuration structure.
 *  @param[out]  nbufs   Memory location to store the returned number of buffers
 *                       required by the instance.
 *  @param[out]  bufs    Memory location to store the returned address of the
 *                       vector of memory buffer descriptions required by the
 *                       instance.
 *  @remark Type ecomemBuffer_t is defined in ecomem.h of util package.
 *
 *  @retval              ASNR error code. 
 *  @verbatim
    error code               description
    asnr_NOERR                 success
    asnr_ERR_INVALIDPAR        max_sampling_rate of asnrSizeConfig_t is neither 
                               asnr_SRATE_8K nor asnr_SRATE_16K. 
    \endverbatim
 *
 */

tint asnrGetSizes(tint *nbufs, const ecomemBuffer_t **bufs, asnrSizeConfig_t *cfg);

/**
 *  @ingroup asnr_api_functions
 *
 *  @brief Function asnrNew() creates a new ASNR instance.
 *  \remark Function asnrNew() must be called before asnrOpen()is called.
 *
 *  @param[in,out] asnrInst  Memory location that will receive a pointer to
 *                           the created ASNR instance.
 *  @param[in]     nbufs     Number of memory buffers allocated by the user.
 *  @param[in]     bufs      Pointer to memory buffer descriptors defined by
 *                           the user.
 *  \remark Buffer alignment property of each buffer passed to asnrNew() must be
 *          equal to or better than what is returned by asnrGetSizes(), and must
 *          be in consistency with the base address of the buffer.
 *
 *  @param[in]     cfg       Pointer to new instance configuration structure.
 *  @retval                  ASNR error code. 
 *  @verbatim
     error code            description
     asnr_NOERR               success
     asnr_ERR_INVALIDPAR      *asnrInst is not NULL or nbufs is not correct
     asnr_ERR_NOMEMORY        properties of one or more buffers are bad:
                               - size is less than what's requested
                               - size is not zero but base address is NULL,
                               - alignment and base address are not consistent,
                               - volatility does not meet requirement.
    \endverbatim
 *
 *  @pre  The pointer at the location pointed to by asnrInst must be set to NULL
 *        before this function is called.
 *  @post A pointer to the created instance will be returned to the location
 *        pointed to by asnrInst. Instance state will be set to closed.
 */
tint asnrNew(void **asnrInst, tint nbufs, ecomemBuffer_t *bufs, asnrNewConfig_t *cfg);

/**
 *  @ingroup asnr_api_functions
 *
 *  @brief Function asnrDelete() deletes the ASNR instance identified by asnrInst
 *         and returns the addresses of those buffers used by this instance.
 *
 *  @param[in]      nbufs     Number of buffers used by this instance.
 *  @param[in,out]  asnrInst  Memory location where the pointer to ASNR instance
 *                            is stored.
 *  @param[in,out]  bufs      Pointer to buffer descriptors to store returned
 *                            addresses of the buffers used by this instance.
 *  @retval                   ASNR error code. 
 *  @verbatim
     error code           description
     asnr_NOERR               success
     asnr_ERR_NOTCLOSED       ASNR instance has not been closed.
     asnr_ERR_INVALIDNBUFS    incorrect number of memory buffers
    \endverbatim
 *
 *  @pre  ASNR instance must be closed by asnrClose() before asnrDelete() is called.
 *  @post After asnrDelete() is called, ASNR instance pointer stored at asnrInst
          will be set to NULL, and the addresses of the buffers used by this
          instance will be returned to the location pointed to by bufs.
 */
tint asnrDelete(void **asnrInst, tint nbufs, ecomemBuffer_t *bufs);

/**
 *  @ingroup asnr_api_functions
 *
 *  @brief Function asnrOpen() initializes and configures an ASNR instance.
 *
 *  @remark This function may be called after asnrNew() to initialize a new ASNR
 *          instance. It may also be called to reconfigure an instance that
 *          has been closed by asnrClose() but not deleted by asnrDelete().
 *
 *  @param[in]      cfg       Pointer to ASNR configuration parameter.
 *  @param[in]      asnrInst  Pointer to ASNR instance.
 *  @retval                   ASNR error code. 
 *  @verbatim
     error code              description
     asnr_NOERR              success
     asnr_ERR_INVALIDPAR     sampling rate is larger than max_sampling_rate of 
	                         asnrSizeConfig_t.
    \endverbatim
 *
 *  @pre  Function asnrNew() must be called before asnrOpen() is called the first
 *        time to open a new instance. For subsequent calls to open an existing
 *        instance, asnrClose() must be called before asnrOpen() to close the
 *        instance.
 *  @post After ASNR instance is opened, asnrControl() or asnrProcess() may be
 *        called for control or processing.
 *
 */
tint asnrOpen(void *inst, asnrOpenConfig_t *cfg);

/**
 *  @ingroup asnr_api_functions
 *
 *  @brief Function asnrClose() closes an ASNR instance.
 *  \remark Function asnrClose() must be called before asnrDelete() is called.
 *
 *  @param[in]  asnrInst     pointer to the instance to be closed
 *  @retval                  ASNR error code. 
 *  @verbatim
     error code              description
     asnr_NOERR              success
     asnr_ERR_NOTOPENED      ASNR instance is not in open state
    \endverbatim
 *
 */
tint asnrClose(void *asnrInst);

/**
 *  @ingroup asnr_api_functions
 *
 *  @brief Function asnrControl() enables/disables ASNR or changes one or more
 *         parameters.
 *
 *  @param[in]      asnrInst  Pointer to ASNR instance.
 *  @param[in]      ctl       Pointer to ASNR control structure. 
 *
 *  @retval                   ASNR error code. 
 *  @verbatim
     error code              description
     asnr_NOERR               success
     asnr_ERR_NOTOPENED       ASNR instance has not been opened
     asnr_ERR_INVALIDPAR      Parameters are out of the allowed range.
    \endverbatim
 *
 */
tint asnrControl(void *asnrInst, asnrControl_t *ctl);

/**
 *  @ingroup asnr_api_functions
 *
 *  @brief Function asnrProcess() performs noise reduction processing on one 
 *         frame of data.
 *
 *  @param[in]      asnrInst  Pointer to ASNR instance.
 *  @param[in]      *input    Input buffer. 
 *  @param[out]     *output   Output buffer. 
 *
 *  \remark  Input must be one frame of 16-bit linear samples. Frame length MUST
 *           be 10msec. Output are also one frame of 16-bit linear samples.
 *
 *  \remark  Input and output pointers can be the same (in place processing) or
 *           different (out of place processing). 
 *  @retval                   ASNR error code. 
 *  @verbatim
     error code               description
     asnr_NOERR               success
     asnr_ERR_INVALIDPAR      either input buffer or output buffer is NULL
    \endverbatim
 *
 */
tint asnrProcess(void *asnrInst,void *input,void *output);

/* -------------------------- ASNR Call Table -------------------------------- */
/**
 *  @ingroup asnr_api_structures
 *
 *  @brief ASNR call table
 *
 */
typedef struct {
  tint (*asnrGetSizes)   (tint *nbufs, const ecomemBuffer_t **bufs, 
                        asnrSizeConfig_t *cfg);
  tint (*asnrNew)        (void **asnrInst, tint nbufs, ecomemBuffer_t *bufs, 
                        asnrNewConfig_t *cfg);
  tint (*asnrDelete)     (void **asnrInst, tint nbufs, ecomemBuffer_t *bufs);
  tint (*asnrOpen)       (void *inst, asnrOpenConfig_t *cfg);
  tint (*asnrClose)      (void *asnrInst);
  tint (*asnrControl)    (void *asnrInst, asnrControl_t *ctl);
  tint (*asnrProcess)    (void *asnrInst,void *input,void *output);
} asnrCallTable_t;

#endif

/* nothing past this point */

