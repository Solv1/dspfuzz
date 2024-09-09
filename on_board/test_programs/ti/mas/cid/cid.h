/**
 *  @file  cid.h
 *  @brief external definitions and API's for the Caller ID module.
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

#ifndef _CID_H
#define _CID_H

/** @defgroup   CID */

/** @ingroup CID */
/* @{ */

/* System Utilities */
#include <ti/mas/types/types.h>
#include <ti/mas/util/utl.h>
#include <ti/mas/util/debug.h>
#include <ti/mas/util/ecomem.h>

/** @defgroup eco_api_return_codes ECO API return codes
 *  These are the return codes for the CID ECO API functions.
 *  
 * @{
 * @name CID Return Codes
 *
 */
/* @{ */
enum {
  cid_NOERR     = 0,        /**< success */

  /* Errors specific to cidCreate() */
  cid_ERROR_CREATE,         /**< cidCreate() - cidCreate() called more than once */
  cid_ERROR_CREATE_CFG,     /**< cidCreate() - configuration parameter is NULL */
  cid_ERROR_CREATE_PARAMS,  /**< cidCreate() - reportOutFcn is NULL or maxFragmentSize<=0 or maxFragmentSize<=0 */

  /* Errors returned by cidGetSizes */
  cid_ERROR_GS,             /**< cidGetSizes() - cidCreate() was not called */

  /* Errors returned by cidNew */
  cid_ERROR_NEW_PARAMS,     /**< cidNew() - one or more of the following parameter errors:<br>
                                            *cidInst not NULL<br>
                                            nbufs != cid_NBUFS<br>
                                            cfg is NULL */
  cid_ERROR_NEW_BASE,       /**< cidNew() - somse buffers have NULL base address */
  cid_ERROR_NEW_MSG,        /**< cidNew() - maxFragmentSize < requested message buffer size */
  cid_ERROR_NEW_INST,       /**< cidNew() - CID instance buffer too small or has wrong alignment */
  cid_ERROR_NEW_DEM_INST,   /**< cidNew() - Demodulator instance buffer too small or has wrong alignment */
  cid_ERROR_NEW_DEM_WORK,   /**< cidNew() - Demodulator work area buffer too small or has wrong alignment */

  /* Errors returned by cidOpen */
  cid_ERROR_OPEN_CFG,       /**< cidOpen() - configuration parameter is NULL */
  cid_ERROR_OPEN_OPN,       /**< cidOpen() - instance is already opened */
  cid_ERROR_OPEN_CREATE,    /**< cidOpen() - cidCreate() was not called */
  cid_ERROR_OPEN_BND,       /**< cidOpen() - cidBind() was not called */
  cid_ERROR_OPEN_SAMP,      /**< cidOpen() - samples_per_frame > max passed to cidCreate() */

  /* Errors returned by cidDelete */
  cid_ERROR_DEL_CLOSE,         /**< cidDelete() - instance is not closed */
  cid_ERROR_DEL_NBUFS,         /**< cidDelete() - nbufs is less than number of allocated buffers */

  /* Errors returned by cidBind */
  cid_ERROR_BIND_INST,      /**< cidBind() - instance pointer is not NULL */
  cid_ERROR_BIND_BND,       /**< cidBind() - cidBind() called more than once */
  cid_ERROR_BIND_CFG,       /**< cidBind() - configuration parameter is NULL */
  cid_ERROR_BIND_CREATE,    /**< cidBind() - cidCreate() was not called */
  cid_ERROR_BIND_PARAMS,    /**< cidBind() - one or more of the following parameter errors:<br>
                                             mod not NULL and modCtrl is NULL<br>
                                             mod is NULL and modCtrl not NULL<br>
                                             demod not NULL and demodCtrl is NULL<br>
                                             demod is NULL and demodCtrl not NULL<br>
                                             mod and demod both NULL */
  cid_ERROR_BIND_FSM        /**< cidBind() - one or more of the following results in the linking of unused functions:<br>
                                             The standard is @ref cid_STD_UNDEFINED and there is a non-NULL fsm pointer.<br>
                                             mod is NULL but one or more standards defines a non-NULL generation fsm pointer<br>
                                             demod is NULL but one or more standards defines a non-NULL detection fsm pointer */
};
/*  @} */
/** @} */

/* Standards definitions */
#define cid_MAXNUM_STANDARDS 6
#define cid_STD_US      0        /**< US, Telcordia standard */
#define cid_STD_NTT     1        /**< Japanese, NTT standard */
#define cid_STD_ETSI    2        /**< European, ETSI standard */
#define cid_STD_YDN     3        /**< Chinese, YDN standard */
#define cid_STD_BT      4        /**< UK, BT standard */
#define cid_STD_AUS     5        /**< AUS, Australian standard */
#define cid_STD_UNDEFINED 0xffff /**< undefined standard */

/* US - Telcordia allowed message types */
#define cid_US_SDMF_MSGTYPE  0x04    /**< message type of SDMF */
#define cid_US_MDMF_MSGTYPE  0x80    /**< message type of MDMF */
#define cid_US_MWI_MSGTYPE   0x82    /**< message waiting indicator */

/* NTT allowed message types */
#define cid_NTT_BYTE_SERVICE 0x40
#define cid_NTT_RCCM_SERVICE 0x41
#define cid_NTT_BYTE_SERVICE_CW 0x141 /**< message type of off-hook CID (during call waiting):
                                         - lower 8 bits represent the service ID 
                                           which is the same as the ID the short message format uses
                                         - bit 8 is set to 1 to distinguish the off-hook CID and short message formats */

/* ETSI allowed message types */
#define cid_ETSI_CS_MSGTYPE 	 0x80	/**< Call Setup */
#define cid_ETSI_MWI_MSGTYPE 	 0x82   /**< Message Waiting Indicator */
#define cid_ETSI_AOC_MSGTYPE 	 0x86   /**< Advice of Charge */
#define cid_ETSI_SMS_MSGTYPE 	 0x89   /**< Short Message Service */
#define cid_ETSI_NOUMIN_MSGTYPE	 0xf1   /**< Reserved for Network Operator Use */
#define cid_ETSI_NOUMAX_MSGTYPE	 0xff

/** @brief CID Control Codes used by cidControl() */
#define cid_CTL_GNRT_US    (2*cid_STD_US+1)      /**< activate CID generator, Telcordia compliant */
#define cid_CTL_DTCT_US    (cid_CTL_GNRT_US+1)   /**< activate CID detector,  Telcordia compliant */
#define cid_CTL_GNRT_NTT   (2*cid_STD_NTT+1)     /**< activate CID generator, NTT compliant */
#define cid_CTL_DTCT_NTT   (cid_CTL_GNRT_NTT+1)  /**< activate CID detector,  NTT compliant */
#define cid_CTL_GNRT_ETSI  (2*cid_STD_ETSI+1)    /**< activate CID generator, ETSI compliant */
#define cid_CTL_DTCT_ETSI  (cid_CTL_GNRT_ETSI+1) /**< activate CID detector,  ETSI compliant */
#define cid_CTL_GNRT_YDN   (2*cid_STD_YDN+1)     /**< activate CID generator, YDN compliant */
#define cid_CTL_DTCT_YDN   (cid_CTL_GNRT_YDN+1)  /**< activate CID detector,  YDN compliant */
#define cid_CTL_GNRT_BT    (2*cid_STD_BT+1)      /**< activate CID generator, BT compliant */
#define cid_CTL_DTCT_BT    (cid_CTL_GNRT_BT+1)   /**< activate CID detector,  BT compliant */
#define cid_CTL_GNRT_AUS   (2*cid_STD_AUS+1)     /**< activate CID generator, Australian compliant */
#define cid_CTL_DTCT_AUS   (cid_CTL_GNRT_AUS+1)  /**< activate CID detector,  Australian compliant */
#define cid_LAST_DTGN_CTL  cid_CTL_DTCT_AUS      /**< last detect/generation control code */
#define cid_CTL_DEACTIVATE cid_LAST_DTGN_CTL+1   /**< deactivate both subsystems */
#define cid_CTL_MULTI_RQST cid_LAST_DTGN_CTL+2   /**< Response to cid_RPT_MULTI_RQST report code */

/** @defgroup cid_report_codes CID Report Codes
 *  These are the report codes for the CID detector and generator.
 *  
 * @{
 * @name CID Report Codes
 *
 */
/* @{ */
enum {
/* Detector Report Codes */
  cid_RPT_VALID_DTCT  = 0,  /**< a valid message reported */
  cid_RPT_DTCT_START  = 1,  /**< message detection has started, reported after
                                 mark signal has been found */
  cid_RPT_TIMEOUT     = 2,  /**< no msg received within timeout interval */
  cid_RPT_DTCT_DEACT  = 3,  /**< detector deactivated during detection */
  cid_RPT_INVALID_CTL = 4,  /**< invalid control message */
  cid_RPT_NO_END_BIT  = 5,  /**< missing end bit in a received byte */
  cid_RPT_LONG_MARKS  = 6,  /**< >20 consecutive marks encountered in message */
  cid_RPT_TRNCTD_MSG  = 7,  /**< message length longer than the maximum length */
  cid_RPT_BAD_CHCKSUM = 8,  /**< bad check sum */
  cid_RPT_LAST_DETECT = cid_RPT_BAD_CHCKSUM, /**< Equals last report code enum */
  
/** @brief Generator Report Codes */
  cid_RPT_END_GNRT    = 9,  /**< generator completed successfully */
  cid_RPT_GNRT_DEACT  = 10, /**< generator deactivated during generation */
  cid_RPT_BAD_PARITY  = 11, /**< bad parity bit detected - NTT standard */
  cid_RPT_BAD_CRC     = 12, /**< message with bad CRC detected */
  cid_RPT_BAD_STD     = 13, /**< standard not supported within the build */
  
  cid_RPT_MULTI_RQST    = 20, /**< Generation message exceeded buffer - request additional fragment */
  cid_RPT_END_OF_ACTION = 21, /**< Request for object de-allocation */

  cid_RPT_VALID_MULTI = 255 /**< a valid message detected - part of multi-part message */
};
/*  @} */
/** @} */

/** @defgroup exception_codes CID Exception Codes
 *  These are the exception codes for the CID component.
 *  
 * @{
 * @name CID Exception Codes
 *
 */
/* @{ */
enum {
   cid_EXC_OPEN      = 1,  /**< Opened an already open channel */
   cid_EXC_DELETE    = 2,  /**< Deleted an open instance */
   cid_EXC_FRAMESIZE = 3,  /**< bad frame size */
   cid_EXC_CONTROL   = 4,  /**< Control request received by a closed channel */
   cid_EXC_DST_NTT   = 5,  /**< bad DST_NTT state */
   cid_EXC_GST_NTT   = 6,  /**< bad GST_NTT state */
   cid_EXC_DST       = 7   /**< bad state */
};
/*  @} */
/** @} */

/** @brief Configuration structure passed to cidNew().
 */

typedef struct {
  tuint ID;                /**<! ID used to identify this instance. */
} cidNewConfig_t;

/** @brief Control message structure. Defines the message specific content fields for each<br>
 *  of the control messages passed to cidControl(). The value stored in the ctlCode field<br>
 *  determines which fields in the @ref cidCtlMsg_t structure are to be set.
 *  - If a generator related control code is being passed, the fields in the gnrt structure are set.
 *  - If a detector related control code is being passed, the fields in the dtct structure are set.
 *  - If the @ref cid_CTL_MULTI_RQST control code is being passed, the fields in the mgnrt structure are set.
 *
 */
typedef struct {
  tint ctlCode;                   /**< control code */
  tbool call_waiting;             /**< TRUE: caller ID with call waiting
                                       FALSE: simple caller ID */
  union {
    struct {
      tuint  marks_gain;          /**< bit field indicating count of leading marks (upper 10 bits)
                                        and output gain (lower 6 bits) */
      tint  msg_type;             /**< low 8 bits contains message type */
      tint  msg_length;           /**< message length in bytes */
      tuint *msg;                 /**< msg bytes packeted in words(big endian) */
    }gnrt;

    struct {
      tint fragment_offset;       /**< Fragment byte offset (w.r. complete long message) */
      tint fragment_size;         /**< Fragment size in bytes */
      tuint *msg;
    }mgnrt ;

    struct {
      tuint timeout;              /**< the time interval (in ms) within which the msg must be detected */
      tint  direction;            /**< detector position determination */
      tint  leading_marks;        /**< min qualification count of marks */
    }dtct ;
  }u;
} cidCtlMsg_t;


/**
 *  @brief Configuration structure passed to cidCreate().
 */
typedef struct {
  dbgInfo_t debugInfo;  /**< Debug callback function. dbgInfo_t is defined in the ti.mas.util package. */

  /**
   *  @brief reportOutFcn is a callback function to report generator or detector events.
   *
   *  @param[in]  ID            Instance ID passed to @ref cidNew.<br>
   *
   *  @param[in]  rcode         Report code. Definitions start at @ref cid_RPT_VALID_DTCT.<br>
   *
   *  @param[in]  final_state   Detector or generator state.<br>
   *
   *  @param[in]  dropout_ct    Dropout count. The detector increments this count when an error in the Channel Seizure Signal is found.<br>
   *
   *  @param[in]  bad_mtype_ct  Bad message type count. The detector increments this count when an undefined message type is found.<br>
   *
   *  @param[in]  type          Message type as defined by CID standard being used. <br>
   *
   *  @param[in]  len           Total number of bytes in CID message or the offset within the message of where the segment starts if the <br>
   *                            generator requests a new segment.<br>
   *
   *  @param[in]  msg           Pointer to CID message. <br>
   *
   *  @param[in]  len_in_word   Number of words in current CID message or the number of words requested if the generator is requesting<br>
   *                            a new segment. <br>
   *
   *
   */
  void (*reportOutFcn) (tuint ID, tint rcode, tint final_state,
               tint dropout_ct, tint bad_mtype_ct, tint type, tint len, tuint* msg, tint len_in_word);

  tint maxSamplesPerFrame;      /**< Maximum number of samples per frame. Used by cidGetSizes() to determine the size
                                     of the demodulation work buffer. */
  tint maxFragmentSize;         /**< Maximum count of type tuint that can fit into message buffer. */
} cidCreateConfig_t;


/**
 *  @brief Standard related information in @ref cidBindConfig_t structure.
 */
typedef struct {
  tuint standard;                   /**< CID standard. Definitions start at @ref cid_STD_US.<br>
                                         disables caller ID in this element */
  tint  (*gnrt_fsm)  (void*);       /**< generation FSM function pointer: @ref cidGnrtFsmUsEtsi(), cidGnrtFsmNtt() 
                                         or NULL (generation disabled for this standard) */
  void  (*dtct_fsm)  (void*, tint); /**< detection FSM function pointer: @ref cidDtctFsmUsEtsi(), cidDtctFsmNtt()
                                         or NULL (detection disabled for this standard)*/
} cidBindStandard_t;

/**
 *  @brief Configuration structure passed to cidBind().
 */
 typedef struct {
  void  (*mod)       (void*, linSample*);    /**< modulator function for generation */
  tbool (*modCtrl)   (void*, cidCtlMsg_t*);  /**< modulator control function */
  void  (*demod)     (void*, linSample*);    /**< demodulator function for detection */
  tbool (*demodCtrl) (void*, cidCtlMsg_t*);  /**< demodulator control function */
  cidBindStandard_t cidBindStandard[cid_MAXNUM_STANDARDS];
} cidBindConfig_t;

/** @brief CID Open configuration structure. Contains parameters needed to open a CID instance.
 *
 */
typedef struct {
  tuint samples_per_frame;  /**< Used by generator and detector when each frame is processed.
                                 Cannot exceed the maximum allowed value passed to cidCreate() */
} cidOpenConfig_t;

/** @name ECO (Embedded Communication Object) APIs
 *  When the system is initialized, cidCreate() must be called followed by cidBind() before any other<br>
 *  APIs are called. These functions have global scope and are not CID instance specific. Once these 2 global<br>
 *  functions have been called the instance specific functions can be called in the proper order to make an<br>
 *  instance ready for detection or generation: cidGetSizes(), cidNew() and cidOpen().<br>
 *  cidControl() is used for control operations.<br>
 *  cidSendIn() is called for CID detection in the PCM to Network direction.<br>
 *  cidReceiveIn() is called for CID detection or generation in the Network to PCM direction.<br>
 *  The instance can be deleted by calling cidClose() followed by cidDelete().
 */
//@{


/**
 *  @brief Stores CID instance independent information needed during generation and detection.<br>
 *         It must be called during system initialization before any other API is called.<br>
 *         An error is returned if the function is called more than once.
 *
 *
 *  @param[in]  *create_cfg Pointer to instance independent information.
 *
 *  @return     @ref cid_NOERR<br>
 *              @ref cid_ERROR_CREATE_PARAMS<br>
 *              @ref cid_ERROR_CREATE
 *
 */
tint  cidCreate     (cidCreateConfig_t *create_cfg);


/**
 *  @brief      Returns the number of buffers and the buffer descriptors.<br>
 *              cidCreate() must have been previously called to prevent cidGetSizes() from returning an error.
 *
 *  @param[in,out] *nbufs  Pointer to number of buffers.
 *
 *  @param[in,out] **bufs  Address of pointer to buffer descriptors
 *
 *  @return     @ref cid_NOERR<br>
 *              @ref cid_ERROR_GS
 *
 */
tint  cidGetSizes   (tint *nbufs, const ecomemBuffer_t **bufs);


/**
 *  @brief      Creates a CID instance.
 *
 *  @param[in,out] **cidInst Address of pointer to instance. After this function returns an instance<br>
 *                 pointer, the functions @ref cidOpen(), @ref cidClose() and cidDelete() may be called.
 *
 *  @param[in]  nbufs       Number of memory buffers.
 *
 *  @param[in]  *bufs       Address of buffer descriptors.
 *
 *  @param[in]  *cfg        Pointer to configuration structure.
 *
 *  @return     @ref cid_NOERR<br>
 *              @ref cid_ERROR_NEW_PARAMS<br>
 *              @ref cid_ERROR_NEW_BASE<br>
 *              @ref cid_ERROR_NEW_MSG<br>
 *              @ref cid_ERROR_NEW_INST<br>
 *              @ref cid_ERROR_NEW_DEM_INST<br>
 *              @ref cid_ERROR_NEW_DEM_WORK
 */
tint  cidNew        (void **cidInst, tint nbufs, ecomemBuffer_t *bufs,
                          cidNewConfig_t *cfg);


/**
 *  @brief      Sets the state of a CID instance to indicate it's closed.
 *
 *  @param[in]  *cidInst     Pointer to instance data.
 *
 */
void  cidClose      (void *cidInst);


/**
 *  @brief      Deletes an instance of the CID.
 *
 *              Actual "deallocation" of instance should be done elsewhere after this function is<br>
 *              called. Hence, one has to save the buffer descriptors to make "deallocation" possible.
 *
 *  @param[in]  **cidInst   Address of pointer to instance data.
 *
 *  @param[in]  nbufs       Number of buffers to free
 *
 *  @param[in]  *bufs       Address of buffer descriptors
 *
 *  @return     @ref cid_NOERR<br>
 *              @ref cid_ERROR_DEL_CLOSE
 */
tint  cidDelete     (void **cidInst, tint nbufs, ecomemBuffer_t *bufs);


/**
 *  @brief Binds implementations of supported CID features.<br>
 *         It must be called before cidOpen().<br>
 *         An error is returned if the function is called more than once.
 *
 *
 *  @param[in]  *cidInst Instance pointer - must be NULL.
 *
 *  @param[in]  *cfg Pointer to configuration structure of type @ref cidBindConfig_t.
 *
 *  @return     @ref cid_NOERR<br>
 *              @ref cid_ERROR_BIND_BND<br>
 *              @ref cid_ERROR_BIND_PARAMS<br>
 *              @ref cid_ERROR_BIND_INST<br>
 *              @ref cid_ERROR_BIND_CFG<br>
 *              @ref cid_ERROR_BIND_CREATE<br>
 *              @ref cid_ERROR_BIND_FSM<br>
 *
 *  The @ref cidBindConfig_t structure passed to cidBind() determines which caller ID features and standards are linked.<br>
 *  Linking only what is needed from the CID component library minimizes the size of the application image.
 *  - If CID generation is required, cidModulator() is in the "mod" field and cidModCtrl() is in the "modCtrl" field.<br>
 *    These fields are NULL if CID generation is not needed.<br><br>
 *  - If CID detection is required, cidDetect() is in the "demod" field and cidDemodCtrl() is in the "demodCtrl" field.<br>
 *    These fields are NULL if CID detection is not needed.<br><br>
 *  - The elements in the cidBindStandard[] array determine the standards to be used and whether they support generation<br>
 *    or detection. In each element the "standard" field is one of the standard definitions starting at @ref cid_STD_US. Using<br>
 *    the @ref cid_STD_UNDEFINED standard results in this element being ignored. When using @ref cid_STD_UNDEFINED, the "gnrt_fsm"<br>
 *    and "dtct_fsm" pointers <b>MUST</b> be defined as "NULL" to prevent linking unneeded functions.<br><br>
 *    The "gnrt_fsm" field is set to cidGnrtFsmNtt() if the standard is @ref cid_STD_NTT. The "gnrt_fsm" field is set to<br>
 *    cidGnrtFsmUsEtsi() if the standard is @ref cid_STD_US, @ref cid_STD_ETSI, @ref cid_STD_YDN, @ref cid_STD_BT or @ref cid_STD_AUS.<br>
 *    Setting the "gnrt_fsm" field to NULL disables generation for this standard.<br><br>
 *    The "dtct_fsm" field is set to cidDtctFsmNtt() if the standard is @ref cid_STD_NTT. The "dtct_fsm" field is set to<br>
 *    cidDtctFsmUsEtsi() if the standard is @ref cid_STD_US, @ref cid_STD_ETSI, @ref cid_STD_YDN, @ref cid_STD_BT or @ref cid_STD_AUS.<br>
 *    Setting the "dtct_fsm" field to NULL disables detection for this standard. 
 *  @verbatim

Example of cidBindConfig_t structure passed to cidBind() that includes generation and detection for all standards.

cidBindConfig_t cidBindConfig = {
  cidModulator,
  cidModCtrl,
  cidDetect,
  cidDemodCtrl,
  {

    {
      cid_STD_US,
      cidGnrtFsmUsEtsi,
      cidDtctFsmUsEtsi,
    },
    {
      cid_STD_AUS,
      cidGnrtFsmUsEtsi,
      cidDtctFsmUsEtsi,
    },
    {
      cid_STD_BT,
      cidGnrtFsmUsEtsi,
      cidDtctFsmUsEtsi,
    },
    {
      cid_STD_NTT,
      cidGnrtFsmNtt,
      cidDtctFsmNtt,
    },
    {
      cid_STD_ETSI,
      cidGnrtFsmUsEtsi,
      cidDtctFsmUsEtsi,
    },
    {
      cid_STD_YDN,
      cidGnrtFsmUsEtsi,
      cidDtctFsmUsEtsi,
    },

  }
};


Example of cidBindConfig_t structure passed to cidBind() that includes generation only for the US and Japanese standards.
Note that the "dtct_fsm" pointers MUST be defined to be "NULL" when using the "cid_STD_US" and "cid_STD_NTT" standards because
detection has been disabled. 

When using the standard "cid_STD_UNDEFINED", the "gnrt_fsm" and "dtct_fsm" pointers MUST be defined as "NULL" to prevent 
linking unneeded functions.

cidBindConfig_t cidBindConfig = {
  cidModulator,
  cidModCtrl,
  NULL,
  NULL,
  {

    {
      cid_STD_US,
      cidGnrtFsmUsEtsi,
      NULL,
    },
    {
      cid_STD_UNDEFINED,
      NULL,
      NULL,
    },
    {
      cid_STD_UNDEFINED,
      NULL,
      NULL,
    },
    {
      cid_STD_NTT,
      cidGnrtFsmNtt,
      NULL,
    },
    {
      cid_STD_UNDEFINED,
      NULL,
      NULL,
    },
    {
      cid_STD_UNDEFINED,
      NULL,
      NULL,
    },

  }
};

Calling cidBind():
if(cidBind(NULL, &cidBindConfig) != cid_NOERR)
{
-------error processing------
}
@endverbatim
 */

tint cidBind   (void *cidInst, cidBindConfig_t *cfg);

/**
 *  @brief      Opens and configures a CID instance. cidBind() must have been previously called.
 *
 *  @param[in]  *cidInst    Pointer to instance data.
 *
 *  @param[in]  *cfg        Pointer to configuration structure of type @ref cidOpenConfig_t
 *
 *  @return     @ref cid_NOERR<br>
 *              @ref cid_ERROR_OPEN_CREATE<br>
 *              @ref cid_ERROR_OPEN_BND<br>
 *              @ref cid_ERROR_OPEN_SAMP<br>
 *              @ref cid_ERROR_OPEN_OPN 
 */
tint  cidOpen       (void *cidInst, cidOpenConfig_t *cfg);


/**
 *  @brief      Changes the operating mode of a CID instance.
 *
 *  @param[in]  *cidInst    Pointer to instance data.
 *
 *  @param[in]  *ctlMsg     Pointer to control message of type @ref cidCtlMsg_t.
 */
void  cidControl    (void *cidInst, cidCtlMsg_t *ctlMsg);


/**
 *  @brief      Processes samples in the receive path (Packet/Rx side).<br>
 *              If generator is active, the linear input samples are replaced with the modulated caller ID signal.<br>
 *              If the detector is active, the linear input samples are demodulated. If caller ID is detected it is<br.
 *              reported with the cidCreateConfig_t::reportOutFcn callback.
 *
 *              Otherwise, the samples pass through.
 *
 *  @param[in]  cidInst      Pointer to instance data
 *
 *  @param[in,out]  samples_in   Pointer to input linear sample frame that will be
 *                           replaced with modulated FSK samples 
 *
 *  @param[in] gnrtPos       If set to TRUE, generation is performed. If set to FALSE, detection is performed.
 *
 *  @param[in,out] rxReplace Pointer to flag that caller sets to FALSE if generation is to be performed. This<br>
 *                           function sets the flag to TRUE if samples from the CID generator are produced.
 */
void  cidReceiveIn  (void *cidInst, void *samples_in, tbool gnrtPos, 
                     tbool *rxReplace);
/**
 *  @brief      Performs CID detection by processing linear PCM samples in the send path (PCM to Network).<br>
 *              If caller ID is detected it is reported with the cidCreateConfig_t::reportOutFcn callback.
 *
 *  @param[in]  cidInst      Pointer to instance data
 *
 *  @param[in]  samples_in   Pointer to input sample frame (linear buffer,
 *                           linSample internal representation, buffer size
 *                           is inst->samples_per_frame).
 */
 void  cidSendIn     (void *cidInst, void *samples_in);
//@}

/**
 *  @brief      Modulate Caller ID signal. Generate a linear PCM sample frame containing BFSK<br>
 *              modulated caller ID signal. If the CID signal finishes in the middle of a frame,<br>
 *              the rest samples in the frame will be filled with 0.
 *
 *  @param[in]  cidInst    Pointer to instance data.
 *
 *  @param[out] *frame      output sample frame contains the CID signal.
 *
 *                          length: inst->samples_per_frame.
 */
extern void cidModulator    (void *cidInst, linSample *frame);


/**
 *  @brief      Control function for CID generation.
 *
 *  @param[in]  cidInst     Pointer to instance data.
 *
 *  @param[in]  *ctlMsg     Pointer to control message @ref cidCtlMsg_t.
 *
 *  @return     TRUE if message processed.
 *
 */
extern tbool cidModCtrl   (void *cidInst, cidCtlMsg_t *ctlMsg);

/**
 *  @brief      Demodulate and detect in-band signal. The physical layer demodulator is invoked<br>
 8              followed by the data link layer state machine.
 *
 *  @param[in]  *cidInst   Pointer to instance data
 *
 *  @param[in]  *frame     Pointer to a frame of input samples
 *
 */
extern void cidDetect       (void *cidInst, linSample *frame);


/**
 *  @brief      Control function for CID detection.
 *
 *  @param[in]  *cidInst    Pointer to instance data
 *
 *  @param[in]  *ctlMsg     Pointer to control message of type @ref cidCtlMsg_t
 *
 *  @return     TRUE if message processed.
 *
 *
 */
extern tbool cidDemodCtrl (void *cidInst, cidCtlMsg_t *ctlMsg);


/**
 *  @brief      Runs the NTT detector state machine for every demodulated bit at 1200 bps rate.<br>
 *              Reports the final message when completely received or in case of error.
 *
 *  @param[in]  *cidInst   Pointer to instance data
 *
 *  @param[in]  bit        The demodulated bit, 0 or 1.
 *
 */
extern void cidDtctFsmNtt  (void *cidInst, tint bit);


/**
 *  @brief      Runs the NTT generator state machine to find the next bit to generate. Executes once<br>
 *              for each bit at 1200bps.
 *
 *  @param[in]  *cidInst  Pointer to instance data
 *
 *  @return     Next bit (0 or 1)
 *
 */
extern tint cidGnrtFsmNtt  (void *cidInst);


/**
 *  @brief      Runs the detector state machine for all supported standards except NTT for every demodulated<br>
 *              bit at 1200 bps rate. Reports the final message when completely received or in case of error.
 *
 *  @param[in]  *cidInst   Pointer to instance data
 *
 *  @param[in]  bit         The demodulated bit, 0 or 1.
 *
 */
extern void cidDtctFsmUsEtsi (void *cidInst, tint bit);


/**
 *  @brief      Runs the generator state machine to find the next bit to generate. Executes once for each bit at 1200bps.
 *
 *  @param[in]  *cidInst   Pointer to instance data
 *
 *  @return     Next bit (0 or 1)
 *
 */
extern tint cidGnrtFsmUsEtsi (void *cidInst);

/* @} */ /* ingroup CID */

#endif
/* nothing past this point */


