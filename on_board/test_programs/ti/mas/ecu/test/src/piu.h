#ifndef _PIU_H
#define _PIU_H
/******************************************************************************
 * FILE PURPOSE: Main header file for PCM Interface Unit (PIU).
 ******************************************************************************
 * FILE NAME:   piu.h
 *
 * DESCRIPTION: This file defines the API and public data definitions
 *              for the PIU.
 *
 * REQUIRES: types.h   (generic DSP ECO types)
 *           const.h   (companding laws)
 *           memmgm.h  (ecomemBuffer_t)
 *           
 * TABS: NONE   
 *
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

/* System level header files */
#include <ti/mas/types/types.h>
#include <ti/mas/types/const.h>

/* System utilities' API's */
#include <ti/mas/util/ecomem.h>
#include <ti/mas/util/debug.h>

/* PIU bit map definitions of different control mode */
#define piu_CTRL_BIT_TRANSPARENT_MODE             0x0001 /* TRUE: Transp. mode enabled */
#define piu_CTRL_BIT_DO_PCM_LOOPBACK              0x0002 /* TRUE: loopback PCM sample */
#define piu_CTRL_BIT_DO_LIN_LOOPBACK              0x0004 /* TRUE: loopback linear sample*/
#define piu_CTRL_BIT_REMOVE_DC_COMP               0x0008 /* TRUE: enables DC offset removal*/
#define piu_CTRL_BIT_LOOPBACK_NOPASS              0x0010 /* TRUE: pass through disabled */
#define piu_CTRL_BIT_BID_SILENCE_DET              0x0020 /* TRUE: Sil. Detection enabled*/
#define piu_CTRL_BIT_PATTERN_DETECT               0x0040 /* TRUE: Patt Detection enabled*/
#define piu_CTRL_BIT_PATTERN_GENERATE             0x0080 /* TRUE: Patt Generation enabled*/
#define piu_CTRL_BIT_USE_RECV_OUT_BUF             0x0100 /* TRUE: recv_out buf is used */
#define piu_CTRL_BIT_TRIPLE_RX_BUF                0x0200 /* TRUE: triple buffering in rx*/
#define piu_CTRL_BIT_RECV_IN_BUF_EMPTY            0x0400 /* TRUE: recv_in buf is empty */
#define piu_CTRL_BIT_UNDERRUN_REPORT              0x0800 /* TRUE: report */
#define piu_CTRL_BIT_DC_FILTR_SELECT_MODE1        0x1000 /* TRUE: Select mode 1, else mode 2 */

/* PIU error codes */
enum {
  piu_NOMEMORY = -1,        /* memory exhausted */
  piu_NOERR    =  0,        /* success */
  piu_ERROR    =  1         /* error */
};

/* PCM companding law flags */
enum {
  piu_COMP_FIRST  = const_COMP_FIRST,
  piu_COMP_ALAW   = const_COMP_ALAW_8,  /* 8-bit A-law */
  piu_COMP_ULAW   = const_COMP_MULAW_8, /* 8-bit u-law */
  piu_COMP_LINEAR = const_COMP_LINEAR,  /* 16 linear samples */
  piu_COMP_LAST   = const_COMP_LAST
};

#define piu_ALAW_SILENCE    0x55  /* Corresponds to -8.0F */
#define piu_MULAW_SILENCE   0x7F  /* Corresponds to 0.0F  */
#define piu_LINEAR_SILENCE     0  /* Any linear A/D & D/A */

/* control code definition */
enum {
  piu_SET_LOOPBACK    = 0,
  piu_SET_FRAME_SIZE,
  piu_SET_IDLE_NOISE_LEVEL,
  piu_GET_LEVELS,
  piu_PATTERN_GENERATION,
  piu_PATTERN_DETECTION,
  piu_BID_SILENCE_DETECTION,
  piu_ENABLE_UNDERRUN_REPORT,
  piu_DISABLE_UNDERRUN_REPORT,
  piu_SET_COMPANDING,
  piu_DC_OFFSET_REMOVAL
};

/* PIU loopback options */
#define LOOPBACK_OFF      0        
#define PCM_LOOPBACK_ON   0x1        
#define LIN_LOOPBACK_ON   0x2
#define DATA_FLOW_DISABLE 0x10        

/* PIU report options */
enum {
  piu_BIDIR_SILENCE_DETECTED = 0,
  piu_PATTERN_DETECTED       = 1,
  piu_UNDERRUN               = 2
};

/* Exception Messages */
enum {
   piu_EXC_OPEN         = 1, /* Opened an already open channel */
   piu_EXC_DELETE       = 2, /* Deleted an open instance */
   piu_EXC_SUBFRAMESIZE = 3  /* Control request received by a closed channel */
};

/* DC offset removal options */
enum {
  piu_DC_OFFSET_DISABLE = 0,
  piu_DC_OFFSET_MODE1 = 1, /* Satisfies the mask given by the standard */
  piu_DC_OFFSET_MODE2 = 2 /* Used for echo canceller */ 
};

/******************************************************************************
 * DATA DEFINITION: PIU signal level measurement structure
 ******************************************************************************
 * DESCRIPTION : This structure indicates the result of PIU
 * signal level measurements via piuGetLevels().
 ******************************************************************************/

typedef struct {
  tint  send_out;            /* send-out level in dBm0         */
  tint  send_out_mean;       /* send-out linear mean value     */
  tint  receive_out;         /* receive-out level in dBm0      */
  tint  receive_out_mean;    /* receive-out linear mean value  */
  tuint underrun;            /* underrun stats */
} piuStats_t;

/******************************************************************************
 * DATA DEFINITION: PIU size configuration structure
 ******************************************************************************
 * DESCRIPTION: This structure contains information used in memory
 *              configuration.
 *****************************************************************************/
 
typedef struct {
  tint max_samples_per_segment;     /* Maximum number of samples per segment */
#if 0
  /* TODO: if this functionality is needed, it has to be reworked */
  tbool alloc_recv_out_buf;          /* TRUE: allocate receive out buffer */
#endif
  tbool rx_triple_buffering;         /* true:  triple buffering in Rx direction */
                                    /* false: double buffering in Rx direction */
                                    /* NOTE:  Tx direction is always double buffered */
} piuSizeConfig_t;

typedef struct {
  tint max_pcm_val;        /* Max allowed PCM value */
  dbgInfo_t             debugInfo;
  void (*reportOutFcn)    (void *targetInst, tint report_code);
  void (*sendOutProcFcn)  (void *targetInst, void *send_data, void *rcv_data, 
                           tint task_id);
  void (*sendOutIsrFcn)   (void *targetInst, void *send_data, void *rcv_data, 
                           tint task_id);
  void (*pcmSampleTrace)  (tint chnum, tint pcm_size, void *pcm_in, tuint dir);
} piuContext_t;

/******************************************************************************
 * DATA DEFINITION: Configuration structure for piuNew()
 ******************************************************************************
 * DESCRIPTION: This structure is supplied by the user during piuNew() to
 *              create a PIU object.
 * 
 ******************************************************************************/
typedef struct {
  tuint ID;                                    /* user-defined ID field  */
  piuContext_t    context;                    /* context initialization */
  piuSizeConfig_t sizeCfg;	                  /* Size structure         */
} piuNewConfig_t;
 
/******************************************************************************
 * DATA DEFINITION: PIU Control structure
 ******************************************************************************
 * DESCRIPTION: Contains parameters required for calls to piuControl().
 *
 *****************************************************************************/
typedef struct {
  tbool enable;
  tint threshold;
  tuint hangover;
} bidSilenceDet_t;

   

typedef struct {
  tbool enable;
  tint type;
  tint time;
  tint custom;
} pcmPatternDet_t;

typedef struct {
  tbool  enable;
  tuint pattern;
} pcmPatternGen_t;

typedef struct {
  tint  law;                     /* A-law, Mu-law or Linear law */
  const tint *pcm_expand_table;  /* Pointer to expansion table (linear is using NULL) */
} piuCompandingCfg_t;

typedef struct {
  tuint frame_size;
  tuint *send_out_buf;
  tuint *receive_in_buf;
} setFrame_t;

typedef struct {
  tint  ctl_code;  /* Code indicating what PIU function will be controlled */
  union {
    tint                loopback_select;
    tuint               frame_size;
    setFrame_t          set_frame;
    piuStats_t          stats;
    bidSilenceDet_t     bid_silence_detect;
    pcmPatternDet_t     pattern_detect;
    pcmPatternGen_t     pattern_generate;
    piuCompandingCfg_t  companding;
    tint                dc_offset_removal_select; 
  } u;
} piuControl_t;

/******************************************************************************
 * DATA DEFINITION: PIU configuration structure.
 ******************************************************************************
 * DESCRIPTION: This structure contains information used to initialize a 
 *              PIU object for a specific configuration. The values defined in
 *              this structure apply to a specific instance of a PIU.
 * 
 *****************************************************************************/

typedef struct {
  tbool transp_mode;             /* if TRUE, transparent mode is enabled. No 
                                 *  conversion of PCM samples to linear samples
                                 *  is done. */
  tint segment_size;            /* Number of samples in a PIU voice segment */
  void *sendOutProcTargetInst;  /* Address of function and data structure to
                                 *  process voice samples sent from PIU from
                                 *  foreground processes */
  void *sendOutIsrTargetInst;   /* Address of function and data structure to
                                 *  process voice samples sent from PIU from
                                 *  ISR driven processes */
  void *reportOutTargetInst;    /* Bid Silence/pattern Out obj. descriptor */
  tint max_pcm_val;             /* Maximum allowed PCM value */
  tuint rx_delay;               /* delay length in samples */
  tbool  use_recv_out_buf;       /* if TRUE, receive_out_buf is be used */
  piuCompandingCfg_t companding; /* compading configuration data */
} piuConfig_t;

/* External references to the PIU context */
extern piuContext_t piuContext;

/***                         FUNCTION PROTOTYPES                         ***/
void piuClose     (void *piuInst);
void piuDelete    (void **piuInst, tint nbufs, ecomemBuffer_t *bufs);
tint piuGetSizes  (tint *nbufs, const ecomemBuffer_t **bufs,
                   piuSizeConfig_t *cfg);
tint piuNew       (void **piuInst, tint nbufs, ecomemBuffer_t *bufs,
                   piuNewConfig_t *cfg);
void piuOpen      (void *piuInst, piuConfig_t *cfg);
void piuReceiveIn (void *piuInst, void *speech_samples);
void piuTxRxProc  (void *piuInst, linSample *tx_ptr, linSample *rx_ptr);
tint piuControl   (void *piuInst, piuControl_t *ctl);
void piuDcOffsetRemoval (void *piuInst, tint mode);

/* in piuexpan.s, used by PCM codec as well */
void UAExpand	 (tint sub_segment_size, tword *pcm_in, 
						    linSample **send_out_buf_ptr_ptr, const tint *pcm_expand_table);
 
void piuSendIn (void *piuInst, tword **fromTdm, tuint timeStamp, 
                tuint frameLength);
void piuReceiveOut (void *piuInst, tword **toTdm, tuint timestamp, 
                    tuint frameLength);
#endif /* _PIU_H */
/* nothing past this point */
