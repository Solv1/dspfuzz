/******************************************************************************
 * FILE PURPOSE: Echo Canceller Unit Definitions and API.
 ******************************************************************************
 * FILE NAME:   ecu.h
 *
 * DESCRIPTION: Contains definitions and API for the echo canceller unit.
 *
 * TABS: NONE
 *****************************************************************************/
#ifndef _ECU_H
#define _ECU_H
/**
 *  @file   ecu.h
 *  @brief  Contains external APIs for the ECU module.
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

/** @defgroup ECU Echo Canceller Unit (ECU)
 *
 *  @brief The ECU is a multi-segment echo canceller (MSEC) implemented to cancel
 *         the echo that's generated by the hybrid in the telephone network due to 
 *         impedance mismatch.\n
 *         There are three functional blocks:\n
 *         -# initialization, configuration, and control block
 *         -# foreground processing block
 *          -   Echo removal 
 *          -   Power measurements
 *          -   Doubletalk detection
 *          -   Nonlinear processor
 *          -   Preparation of update parameters
 *         -# background processing block   
 *          -   Convergence tracking and update control
 *          -   filter update (step size calculation, echo removal, coefficient update)
 *          -   search filter update (coefficient update, segment placement)
 *  Each ECU instance references up to fifteen buffers.  Three of the buffers are 
 *  necessary only if the ECU is configured for operation as an MSEC.  One additional 
 *  context buffer is shared by all instances.
 *
 *  The ECU implementation makes several important assumptions:
 *
 *	-# Zero mean signals - all input signals (near-end and far-end) are assumed to be 
 *     zero mean (desirable when implementing block LMS adaptive algorithm.)
 *	-# Power levels - all signals are scaled in such a way that a digital sine wave of 
 *     amplitude 32768 corresponds to the +3dBm0 analog sine wave. This is also the 
 *     saturation point for all signals.
 *	-# Synchronization and delay - the near-end and far-end signals are assumed to be 
 *     synchronized in time when presented to the echo canceller. Far-end delay line is 
 *     assumed to be of proper length to accommodate for all sources of signal delay 
 *     inside and outside of the DSP platform.
 *	-# Minimum hybrid loss - the minimum hybrid loss is assumed to be at least 6dB. 
 *     Otherwise the echo canceller may still work, but with degraded performance.
 *	-# Nonlinearities - it is assumed that there is no clipping in the input signals and 
 *     that the nonlinear distortion is negligible since the hybrid model is linear. 
 *     Clipping of the far-end signal may sometimes be acceptable if the near-end echo path 
 *     does not introduce additional nonlinear distortion or clipping, i.e. if the far-end 
 *     signal on its path towards the near-end input is not additionally distorted.
 *	-# Tone detection at near-end - the tone detection at near-end is not performed. It 
 *     is assumed that such processing will be done outside the echo canceller when necessary. 
 *     In such a case echo canceller may be disabled from the outside. Doubletalk detection 
 *     would take care of preventing the filter updates when tones are present at the 
 *     near-end in normal operation.
 * 
 */
/** @ingroup ECU */
/** @{ */

/* System include files */
#include <ti/mas/types/types.h>

/* System utilities' API's */
#include <ti/mas/util/ecomem.h>


/** @defgroup eco_api_return_codes ECO API return codes
 *  These codes are the return codes used by ecGetSizes() and ecuNew() APIs.
 *  
 * @{
 * @name ECU Return Codes
 *
 */
/* @{ */
enum {
  ecu_NOMEMORY  = -1, /**< no enough memory */
  ecu_NOERR     = 0,  /**< success */
  ecu_ERROR     = 1   /**< with error */
};
/*  @} */
/** @} */


/**
 * @name ecu filter selection codes - ecuGetFilter() 
 *
 */
enum {
  ecu_FLT_FOREGROUND = 0,  /**< get foreground filter */
  ecu_FLT_BACKGROUND = 1,  /**< get background filter */
  ecu_FLT_SEARCH     = 2   /**< get search filter */
};

/**
 * @name ECU Control Code 
 */
enum {
  ecu_CTL_MASK              = 0,  /**< control bits such as enable, freeze, etc. */
  ecu_CTL_BG_LMS_SPEED      = 1,  /**< slow or fast LMS in BG */
  ecu_CTL_BG_LMS_ENABLE     = 2,  /**< enable/disable BG update */
  ecu_CTL_SEARCH_LMS_SPEED  = 3,  /**< slow or fast LMS in search */ 
  ecu_CTL_SEARCH_LMS_ENABLE = 4,  /**< enable/disable search update */
  ecu_CTL_FIXED_NOISE_LEVEL = 5,  /**< fixed comfort noise level control */
  ecu_CTL_NLP_AGGRESSIVE    = 6,  /**< NLP aggressiveness control */
  ecu_CTL_NLP_CN_CONFIG     = 7   /**< NLP comfort noise configuration */
};

/**
 * @name ECU speed selection modes - ecuControl() 
 */
enum {
  ecu_FORCE_SLOW = 0,               /**< for \link ECU::ecu_CTL_BG_LMS_SPEED ecu_CTL_BG_LMS_SPEED \endlink \n
                                         and \link ECU::ecu_CTL_SEARCH_LMS_SPEED ecu_CTL_SEARCH_LMS_SPEED \endlink  */
  ecu_ALLOW_FAST = 1
};

/**
 * @name ECU_CTL_MASK mode bits used by ecuControl 
 *
 * \remark unless specified otherwise, the following bits will enable
 *         the corresponding functionality when SET, and disable when UNSET.
 */
#define ecu_ENABLE_ECHO_CANCELLER   0x0001   /**< Enable/disable echo canceller 
                                                  If enabled (set to 1), the echo canceller will be processing 
                                                  the near-end signal in attempt to remove the echo*/
#define ecu_ENABLE_UPDATE           0x0002	 /**< Enable/disable adaptation */
#define ecu_ENABLE_NLP              0x0004	 /**< Enable/disable NLP */
#define ecu_RESERVED_1              0x0008	 /**< reserved */
#define ecu_ENABLE_AUTO_UPDATE      0x0010	 /**< Enables/disable the automatic switch between fast 
                                                  and slow filter updates. 
                                                  If enabled, the echo canceller automatically 
                                                  switches to slow filter updates after convergence */
#define ecu_RESERVED_2              0x0020	 /**< reserved */
#define ecu_ENABLE_SEARCH           0x0040	 /**< Enables/disable the search filter updates as well as 
                                                  filter segment placement */
#define ecu_ENABLE_CNG_ADAPT        0x0080	 /**< Enables/disable adaptive comfort noise generation */
#define ecu_ENABLE_OPNLP_DETECT     0x0100   /**< Enables/disable detection for 4-wire condition */
#define ecu_CLEAR_FG                0x0200	 /**< Set: clear foreground filter coefficients */
#define ecu_CLEAR_BG                0x0400	 /**< Set: clear background filter coefficients */
#define ecu_CLEAR_SEARCH            0x0800	 /**< Set: clear search filter and initializes the hybrid 
                                                   search algorithm and related variables */
#define ecu_DISABLE_DEMEANING       0x1000	 /**< Enables/disable demeaning of search filter */
#define ecu_TEST_BIT_2              0x2000	 /**< test bit */
#define ecu_FORCED_NLP_CNG          0x4000	 /**< Enables/disable constant comfort noise generation */
#define ecu_NLP_NORMAL_LEVEL        0x8000	 /**< Enables/disable further NLP aggressiveness if it 
                                                  is known that the near-end and far-end levels are balanced. 
                                                  Note:  should be disabled by default*/
 
/**
 * @name ECU_CTL_MASK mode1 bits used by ecuControl 
 *
 * \remark unless specified otherwise, the following bits will enable
 *         the corresponding functionality when SET, and disable when CLEARED.
 */
#define ecu_ENABLE_NLP_PHASE_RND    0x0001   /**< Enables/disable NLP phase randomization */
#define ecu_ERL_CONFIG_BIT_0        0x0002	 /**< 0/3dB ERL configuration bit 0\n
                                                  see table below */
#define ecu_ERL_CONFIG_BIT_1        0x0004   /**< 0/3dB ERL configuration bit 1 
                                              * <table align=center>
                                              *   <tr>
                                              *     <td><B>Bit 1</B></td>
                                              *     <td><B>Bit 0</B></td>
                                              *     <td><B>Minimum ERL Assumption </B></td>
                                              *   </tr>
                                              *   <tr>
                                              *     <td>0</td>
                                              *     <td>0</td>
                                              *     <td>6 dB</td>
                                              *   </tr>
                                              *   <tr>
                                              *     <td>0</td>
                                              *     <td>1</td>
                                              *     <td>3 dB</td>
                                              *   </tr>
                                              *   <tr>
                                              *     <td>1</td>
                                              *     <td>0</td>
                                              *     <td>0 dB</td>
                                              *   </tr>
                                              *   <tr>
                                              *     <td>1</td>
                                              *     <td>1</td>
                                              *     <td>Not Valid</td>
                                              *   </tr>
                                              * </table>
										                          */
#define ecu_ENABLE_ECP_CHG_DETECT   0x0008	 /**< Enables/disable echo path change detection.  
                                                  Note: should be disabled by default */
#define ecu_ENABLE_CPD_DETECT       0x0010	 /**< Enables/disable constant PCM pattern detection */
#define ecu_ENABLE_NONLINEAR_EP     0x0020   /**< Enables/disable non-linear echo path handling.
                                                  Note: should be disabled by default	  */
#define ecu_ENABLE_FAST_CPS         0x0040	 /**<Enables/disables fast constant power signal 
                                                 detection. This feature is used to better handle modem signals */
#define ecu_ENABLE_WIDEBAND         0x0080   /**<Enables/disables wideband operational mode.  Only applies if 
                                                 ECU has been compiled with "wband" option */
#define ECU_ENABLE_RECEIVE_CPS      0x0100   /**<Enables/disables receive direction constant power signal detection. */

/**
 * @name ECU state bitfield 0 definitions 
 */
#define ecu_CTRL0_BIT_FIRST_TIME       0x0001 /**< SET: next open is the first one */
#define ecu_CTRL0_BIT_FREEZE_EC        0x0002 /**< SET: stop updating the BG filter */
#define ecu_CTRL0_BIT_USE_NLP          0x0004 /**< SET: use nonlinear processor */
#define ecu_CTRL0_BIT_ENABLE_EC        0x0008 /**< SET: EC is enabled */
#define ecu_CTRL0_BIT_CONVERGED        0x0010 /**< SET: FG filter is fully converged */
#define ecu_CTRL0_BIT_NO_SEARCH        0x0020 /**< SET: do short tail ecu */
#define ecu_CTRL0_BIT_SLOW_LMS_EN      0x0040 /**< SET: enable slow BG LMS update */
#define ecu_CTRL0_BIT_FORCE_SLOW_LMS   0x0080 /**< SET: force slow BG LMS update */
#define ecu_CTRL0_BIT_OPNLP_FOUND      0x0100 /**< SET: 4-wire currently detected */
#define ecu_CTRL0_BIT_FORCE_SLOW_SRCH  0x0200 /**< SET: force slow search LMS update */
#define ecu_CTRL0_BIT_RESERVED_2       0x0400 /**< Reserved bitfield position */
#define ecu_CTRL0_BIT_RESERVED_3       0x0800 /**< Reserved bitfield position */
#define ecu_CTRL0_BIT_NLP_ADAPT        0x1000 /**< SET: NLP uses adaptive comfort noise
                                               *   ELSE: NLP uses fixed comfort noise */
#define ecu_CTRL0_BIT_OPNLP_EN         0x2000 /**< SET: open loop detection enabled */
#define ecu_CTRL0_BIT_FREEZE_SRCH      0x4000 /**< SET: stop updating the search filter */
#define ecu_CTRL0_BIT_DEMEAN_EN        0x8000 /**< SET: enable search filter demeaning */
                                                
/**
 * @name ECU state bitfield 1 definitions 
 */
#define ecu_CTRL1_BIT_TONE_PRESENT     0x0001 /**< SET: Far-end tone present */
#define ecu_CTRL1_BIT_FORCED_NLP_CNG   0x0002 /**< SET: force NLP CN generation */
#define ecu_CTRL1_BIT_NLP_NORM_LEV     0x0004 /**< SET: assume normal levels */
#define ecu_CTRL1_BIT_ENABLE_SRCH      0x0008 /**< SET: search is enabled */
#define ecu_CTRL1_BIT_ENABLE_UPDATE    0x0010 /**< SET: enable BG LMS update */
#define ecu_CTRL1_BIT_NLP_PHASE_RND_EN 0x0020 /**< SET: enable phase randomization*/
#define ecu_CTRL1_0DB_CONFIG           0x0040 /**< SET: 0dB ERL configuration */
#define ecu_CTRL1_3DB_CONFIG           0x0080 /**< SET: 3dB ERL configuration */
#define ecu_CTRL1_ECP_CHG_DETECT_EN    0x0100 /**< SET: enable echo path change detect */
#define ecu_CTRL1_CPD_DETECT_EN        0x0200 /**< SET: enable constant PCM pattern detect */
#define ecu_CTRL1_PLACEMENT_OCCUR      0x0400 /**< SET: placement occurred since reset */
#define ecu_CTRL1_NONLINEAR_ECHO_PATH  0x0800 /**< SET: expect nonlinear echo path */
#define ecu_CTRL1_FAST_CPS             0x1000 /**< SET: do fast const power signal detection */
#define ecu_CTRL1_WIDEBAND             0x2000 /**< SET: enable wideband processing */
#define ecu_CTRL1_CPT_SUSPECT          0x4000 /**< SET: suspect CPT signal, block FG transfer */
#define ECU_CTRL1_RECEIVE_CPS          0x8000 /**< SET: do RCV constant power signal detection */

/**
 * @name ecu_VERF MASK mode bits 
 */
#define ecu_VERF_MULTISEGMENT          0x0001 /**< ecu_TAIL=YES */
#define ecu_VERF_5P5MS_FRAME           0x0002 /**< ecu_5P5MS=YES */
#define ecu_VERF_DLINE_COMPRESS        0x0004 /**< ecu_DLCOMP=YES */
#define ecu_VERF_DEBUG_STREAM          0x0008 /**< ecu_DEBUG=YES */
#define ecu_VERF_NEAR_MODE             0x0010 /**< ecu_NEAR=YES */
#define ecu_VERF_03DB_CONFIG           0x0040 /**< ecu_03DB=YES */
#define ecu_VERF_CONST_PCM_DETECT      0x0080 /**< ecu_CPD=YES */
#define ecu_VERF_INST_RELOCATION       0x0100 /**< ecu_RELOC=YES */
#define ecu_VERF_RERL_ESTIMATE         0x0200 /**< ecu_RERL=YES */
#define ecu_VERF_WIDE_BAND             0x0400 /**< ecu_WB=YES */
#define ecu_VERF_TELOGY_ECAN           0x8000 /**< it's Telogy EC */

/**
 * @name ECU Resource management notification bits 
 *
 */
enum {
  ecu_BIT_ACTION_SET = 0,  /**< notify manager that an ECU control bit is set */
  ecu_BIT_ACTION_CLR = 1   /**< notify manager that an ECU control bit is cleared */
};

/**
 * @name ECU search preparation events - (*ecuSrchPrep()), e.g. swapping 
 *
 */
enum {
  ecu_SEARCH_REQUEST = 0,           /**< request swapping or similar */
  ecu_SEARCH_FINISH  = 1            /**< indicate previous request if finished */
};

/** @defgroup exception_codes Exception codes
 *  These are fatal exceptions generally because of improper interaction between 
 *  the system and the ECU component
 *  
 * @{
 * @name ECU Exception Codes
 *
 */
/* @{ */
enum {
   ecu_EXC_OPEN      = 1, /**< open one ECU instance */
   ecu_EXC_DELETE    = 2, /**< delete one ECU instance */          
   ecu_EXC_SIZE      = 3, /**< sizes of different buffers */
   ecu_EXC_PXBUFSIZE = 4, /**< size of far-end energy buffer */
   ecu_EXC_OPEN_NLP  = 5  /**< 4-wire detection */
};
/*  @} */
/** @} */


/**
 * \brief ECU Version structure
 *
 * Contains ECU version information.
 */

typedef struct {
  tuint version;   /**< ECU version */
  tuint revision;  /**< ECU revision */
  tuint patch;     /**< ECU patch */
  tuint build; 	   /**<	ECU build number */
  tuint feature;   /**<	ECU compile time features for this build */
} ecuVersion_t;

/**
 * \brief ECU Control structure
 *
 * Contains parameters required for calls to ecuControl().
 *
 */

typedef struct {
  tint  ctl_code;       /**< Code indicating what ECU function will be controlled */
  union {
    tint  ctl_mask[2];  /**< Mask used to enable/disable selected features   */
    tint  bg_speed;     /**< BG LMS speed: ecu_FORCE_SLOW/ecu_ALLOW_FAST     */
    tint  srch_speed;   /**< Search LMS speed: ecu_FORCE_SLOW/ecu_ALLOW_FAST */
    tint  place_speed;  /**< Search placement speed: */
    tbool enable;       /**< BG/Search LMS enable/disable */
    tint  n_level;      /**< Fixed comfort noise level */
    tuint nlp_aggress;  /**< packed NLP aggressiveness, -1 to 1 in Q7
                             MSB: NLP aggressiveness during steady state
                             LSB: NLP aggressiveness during 6dB NLP */
    Fract cn_config;    /**< ecu_SET_NLPAGR_6DB Mix ratio of white and pink noise, 
                             0 to 1 in Q15 */
  } u;
} ecuControl_t;

/**
 * \brief Size configuration structure.
 *
 * Defined as void.  All prior variables are in context. 
 *
 */

typedef void ecuSizeConfig_t;

/**
 * \brief Creation configuration structure.
 *
 * Contains parameters needed at the creation of an ECU instance.
 *
 */

typedef struct {
  tuint ID;                   /**< ECU instance ID */
} ecuNewConfig_t;

/**
 * \brief ECU configuration parameter structure.
 *
 * Contains parameters that may be passed from the Micro for ECU configuration.
 * 
 */

typedef struct {
  tint  filter_length;    /**< Tail length in taps                              */
                          /**< (options=-v1)                                    */
  tint  config_bitfield;  /**< Configuation bitfield part 1                     */
                          /**< (options=-h-v3)                                  */
  tint  config_bitfield1; /**< Configuration bitfield, part 2                   */
                          /**< (options=-h-v3)                                  */
  tint  noise_level;      /**< Fixed noise level in dBm0 (0 means default -70).
                               Range: [-30,-70]                                 */
                          /**< (options=-v3)                                    */
  Fract nlp_aggress;      /**< NLP Agressiveness (-1 to 1 in Q15)               */
                          /**< (options=-v3)                                    */
  Fract cn_config;        /**< Ratio of white noise and pink noise (0-1 in Q15)   
                               0 indicates pink noise while 32767 indicates      
                               white noise                                      */
                          /**< (options=-v3)                                    */
} ecuConfigParam_t;

/**
 * \brief ECU configuration structure.
 *
 * Contains parameters needed to open an instance of ECU.
 *
 */

typedef struct {
  tint              samples_per_frame;  /**< number of samples per frame         */
  tint              y2x_delay;          /**< extra system delay in samples       */
  void              *sendOutInst;       /**< Send-out object instance pointer    */
  void              *recOutInst;        /**< Receive-out object instance pointer */
  ecuConfigParam_t  *cfgParam;          /**< Pointer to structure containing 
                                             CN level, tail length and 
                                             configuration bitfield.             */
  const tint        *pcm_expand_tbl;    /**< PCM expansion table pointer         */
  tuint             pcm_zero;           /**< PCM representation of 0             */
} ecuConfig_t;

/**
 * \brief ECU Performance Parameters
 *
 * Contains parameters that indicate ECU performance. Px, Py, and Pe reflect
 * performance of the foreground filter. They are measured whenever the 
 * coefficients of a background filter are updated.
 * 
 */

typedef struct {
  LFract  Px;         /**< power in x over last 20ms of update (Lrin) S31.0 */
  LFract  Py;         /**< power in y over last 20ms of update (Lsin) S31.0 */
  LFract  Pe;         /**< power in e over last 20ms of update (Lres) S31.0 */
  Fract   erlest;     /**< estimated erl in Q4  */
  Fract   acomest;    /**< estimated acom in Q4 */
} ecuPerform_t;

/**
 * \brief Update statistics
 *
 * This structure contains various counters that are useful in debugging or analyzing
 * the performance of the filter update.
 *              
 */

typedef struct {
  tulong attempt_update;  /**< # times ecu_adaptive_filter() executed           */
  tulong attempt_search;  /**< # blocks for which we called search FSM          */
  tulong erle_bypass;     /**< # update bypasses due to high ERLE               */
  tulong xtone_bypass;    /**< # blocks bypassed due to presence of tones in x  */
  tulong other_bypass;    /**< # blocks bypassed for other reasons
                              (e.g. delayed divergence)                         */
  tulong xidle;           /**< # segments declared as x-idle (see ecufg.c)      */
  tuint  double_talk;     /**< # segments declared as double talk (see ecufg.c) */
  tuint  dt_cps;          /**< # segs declared as const power signal DT (ecufg.c) */
  tuint  dt_cpt;          /**< # segs declared as const power tone DT (ecufg.c) */
  tuint  nlp;             /**< # segments nlp engaged (see ecufg.c)             */
  tuint  divergence;      /**< # times filters were reset due to divergence     */
  tuint  srch_divergence; /**< # times search filter was reset due to divergence*/
  tuint  fg_switch;       /**< # times FG filter was reset by BG filter         */
  tuint  bg_switch;       /**< # times BG filter was reset by FG filter         */
  tuint  openloop_found;  /**< # of times open loop was detected                */
  tuint  numseg_change;   /**< # times the number of bg filter segments has 
                               been changed by the segment placement routine    */
  tuint  segment_change;  /**< # times the filter segment placement changed while
                               the number of segments remained constant         */
  tuint  converge_exit;   /**< # times the converged state was exited           */
  tuint  txbssat_events;  /**< wide band tx saturation                          */
  tuint  rxbssat_events;  /**< wide band rx saturation                          */
} ecuUpdateStat_t;          

/**
 * \brief Void function pointer.
 *
 * Void function pointer for use in ECU context.
 *
 */

typedef void (*vfnptr)(void);

/**
 * \brief ECU context Structure.
 *
 * Contains information shared amongst ECU instances.
 *
 */

typedef struct ecuContext_s {
  vfnptr exception;       /**< For exception function pointer (typecast internally) */
  void (*debugStrmWrite)  (tuint id, tuint n, 
                           tuint chan, void *vptr, tuint type);
  void (*mipsEcuInstEvt)  (void *inst, tint event); /**< MAG ECU event handler */
  void (*srchPrep)        (tuint ID, tint event);   /**< search preparation */
  void (*sendOutFcn)      (void *targetInst, 
                           void *send_out_ptr);     /**< Send out function pointer */
                                          
  void (*receiveOutFcn)   (void *targetInst, 
                           void *receive_out_ptr);  /**< Receive out function pointer */

  tint max_samples_per_frame; /**< Maximum number of samples per frame           */
  tint max_filter_length;     /**< Maximum filter length in taps                 */
  tint max_filter_seg_length; /**< Maximum filter segment buffer length in taps  */
  tint max_filter_seg_count;  /**< Maximum allowed active filter segments        */
  tint max_y2x_delay;         /**< Maximum extra system delay in samples         */
  tulong     expanded_bf;     /**< Bitfield representing those portions of the 
                                   delay line already expanded.                  */
  linSample  *rxout_buf_base; /**< Pointer to base of the scratch delay line     */
  linSample  *expand_ptr;     /**< TDM aligned pointer within scratch delay line */
  tword      *pack_ptr;       /**< TDM aligned pointer within packed delay line  */
} ecuContext_t;                 

/* ECU context */
extern ecuContext_t ecuContext;

/**
 * @name ECU External API 
 */

/* ECU.c */
/**
 *  @brief To close an instance of ECU
 *            
 *  @param[in, out]   ecuInst  Pointer to the ECU instance.
 *            
 *  @return           void
 *                                        
 */ 
void  ecuClose          (void *ecuInst);

/**
 *  @brief Changes the operational mode of the ECU.      
 *               
 *  Change ECU mode by setting/clearing control flags and/or states within the ECU. 
 *
 *  @param[in, out]   ecuInst        Pointer to the ECU instance.
 *  @param[in]        ctl            Pointer to code/mode information
 *
 *  @return  \link ECU::ecu_NOERR  ecu_NOERR,   \endlink \n
 *           \link ECU::ecu_ERROR  ecu_ERROR (invalid control code or ecu not open) \endlink
 *                    
 */ 
tint  ecuControl        (void *ecuInst, ecuControl_t *ctl);

/**
 *  @brief To delete an instance of ECU
 *            
 *  @param[in, out]   ecuInst  Address of memory location that contains
 *                             a pointer to the ECU instance structure
 *  @param[in]        nbufs    Number of memory buffers.
 *  @param[in, out]   bufs     A vector of buffer descriptors.
 *            
 *  @return           void
 *                                        
 */ 
void  ecuDelete         (void **ecuInst, tint nbufs, ecomemBuffer_t *bufs);

/**
 *  @brief Returns the current EC filter coefficients.   
 *               
 *  \remark It may be necessary to call it several times for each filter
 *          (BG, FG) if the output buffer is not big enough to hold all
 *          coefficients.
 *
 *  @param[in, out]   ecuInst      Pointer to the ECU instance.
 *  @param[in]        select       FG/BG filter selection
 *  @param[in]        start        index of a starting coefficient
 *  @param[in]        num          number of coefficients to copy
 *  @param[in, out]   hbuf         pointer to output buffer
 *
 *  @return  \link ECU::ecu_NOERR  ecu_NOERR,   \endlink \n
 *           \link ECU::ecu_ERROR  ecu_ERROR(invalid input arguments, 
 *                                           or ECU not open)\endlink
 *                    
 */ 
tint  ecuGetFilter      (void *ecuInst, tint select, tint start, 
                         tint num, Fract *hbuf);

/**
 *  @brief Returns ECU performance parameters.   
 *               
 *  \remark Statistics must be read in order to reset it. That is,
 *          rustat flag would not be tested unless ustat != NULL.
 *          
 *
 *  @param[in, out]   ecuInst      Pointer to the ECU instance.
 *  @param[in, out]   state_bf     pointer to state bit fields (2 elements)
 *  @param[in, out]   version      pointer to ECU version structure
 *  @param[in, out]   perform      pointer to performance output buffer
 *  @param[in, out]   ustat        pointer to update statistics buffer
 *  @param[in, out]   noise_x      pointer to far-end noise estimate
 *  @param[in, out]   noise_y      pointer to near-end noise estimate
 *  @param[in, out]   rerl         pointer to RERL estimate
 *  @param[in, out]   tail_len     pointer to tail length
 *  @param[in]        rustat       TRUE: reset update statistics
 *
 *  @return           void
 *                    
 *                    
 */ 
void  ecuGetPerformance (void *ecuInst, tint *state_bf, ecuVersion_t *version, 
                         ecuPerform_t *perform, ecuUpdateStat_t *ustat,
                         LFract *noise_x, LFract *noise_y, Fract *rerl, tint *tail_len, 
                         tbool rustat);
/**
 *  @brief Open and configure an instance of ECU
 *            
 *  @param[in, out]   ecuInst  Pointer to ECU instance
 *  @param[in]        cfg      Pointer to ECU configuration structure
 *            
 *  @return           void
 *                                        
 */ 
void  ecuOpen           (void *ecuInst, ecuConfig_t *cfg);

/* ECUINIT.c */
/**
 *  @brief Calculate the worst case buffer sizes for the ECU     
 *
 *  @param[in, out]   nbufs      Number of buffers.
 *  @param[in, out]   bufs       Buffer descriptors
 *  @param[in]        cfg        Information to be used in estimating the
 *                               worst case buffer sizes (see ecu.h)
 *
 *  @return   \link ECU::ecu_NOERR  ecu_NOERR,   \endlink \n
 *            \link ECU::ecu_ERROR  ecu_ERROR (invalid maximum frame length) \endlink
 *                    
 */ 
tint  ecuGetSizes       (tint *nbufs, const ecomemBuffer_t **bufs,
                         ecuSizeConfig_t *cfg);

/**
 *  @brief Creates an instance of ECU and initializes memory buffers     
 *
 *  @param[in, out]   ecuInst     An address of memory location that will
 *                                receive a pointer to instance structure
 *  @param[in]        nbufs       Number of memory buffers
 *  @param[in]        bufs        A vector of buffer descriptors
 *  @param[in]        cfg         Pointer to configuration structure
 *                               
 *
 *  @return   \link ECU::ecu_NOERR     ecu_NOERR,    \endlink \n
 *            \link ECU::ecu_NOMEMORY  ecu_NOMEMORY (some buffers have
 *                                                   base address NULL),\endlink \n
 *            \link ECU::ecu_ERROR     ecu_ERROR (invalid input parameters) \endlink
 *                    
 */ 
tint  ecuNew            (void **ecuInst, tint nbufs, ecomemBuffer_t *bufs,
                         ecuNewConfig_t *cfg);
tint  ecuRelocate       (void **ecuInst, tint *numEcoBufs, tword *bufAdrs[]);

/* ECUFG.c */

/**
 *  @brief Signal an ECU to perform echo cancellation
 *
 *
 *  This function causes the ECU to perform echo cancellation on
 *  a frame of input data.
 *
 *  @param[in, out]   ecuInst     Pointer to ECU instance
 *  @param[in, out]   vsend_in    Send-in signal buffer pointer (linear buffer)
 *  @param[in, out]   vrecv_in    Recv-out signal buffer pointer (HW circular buffer)
 *  @param[in, out]   vsend_out   Send-out signal buffer pointer (linear buffer)
 *           
 *  @return           void
 *                                        
 */ 
void  ecuSendIn     (void *ecuInst, void *vsend_in, void *vrecv_in, void *vsend_out);

/**
 *  @brief Perform Rx path processing for ECU
 *            
 *  @param[in, out]   ecuInst           Pointer to ECU instance
 *  @param[in, out]   speech_samples    Pointer to a segment of voice samples
 *            
 *  @return           void
 *                                        
 */ 
void  ecuReceiveIn  (void *ecuInst, void *speech_samples);


/** @} */
/** @} */

#endif /* _ECU_H */
/* nothing past this point */
