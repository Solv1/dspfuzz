/******************************************************************************
 * FILE PURPOSE: Header file ECU context. 
 ******************************************************************************
 * FILE NAME: ecusim.h
 *
 * DESCRIPTION: Header file for ECU context initialization.
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
#ifndef _ECUSIM_H
#define _ECUSIM_H

#include <stdio.h>

/* System level includes */
#include <ti/mas/types/types.h>
#include <ti/mas/util/utl.h>
#include <ti/mas/sdk/sgn.h>
#include <ti/mas/sdk/hyb.h>
#include <ti/mas/util/mua.h>
#include <ti/mas/mhm/mhm.h>

/* ECU includes */
#include <ti/mas/ecu/ecu.h>        /* for ecuGetSizes(), ecuNew(), ecuOpen(),... */

/* SIU header files */
#include <ti/mas/ecu/test/src/siu.h>
#include <ti/mas/ecu/test/src/siuloc.h>
#include <ti/mas/ecu/test/src/siuport.h>

/* Test include files */
#include <ti/mas/ecu/test/src/ecusimport.h>
#include <ti/mas/ecu/test/src/piu.h>        /* for piuPcmIo() */

/* Options */
#define ECUSIM_INCLUDE_MAG  0
#define ECU_SIM_USE_VPE     0

#if ECU_SIM_USE_VPE  
#include <ti/mas/vpe/slm.h>
#endif

#if ECUSIM_INCLUDE_MAG
#include <ti/mas/ecu/mag.h>
#endif


#define NUMBER_OF_FRAMES          1       /* # of frames to save */

#if ecu_5P5MS_FRAME_ENABLE
#define SIU_MAX_FRAME_LENGTH      88      /* 11ms maximum frame duration */
#define SIU_MAX_SYSTEM_DELAY      44      /* maximum extra system delay in samples */
#else
#define SIU_MAX_FRAME_LENGTH      80      /* 10ms maximum frame duration */
#define SIU_MAX_SYSTEM_DELAY      40      /* maximum extra system delay in samples */
#endif
#define MAX_STREAM_SIZE   (NUMBER_OF_FRAMES*SIU_MAX_FRAME_LENGTH)
#define MAX_HYBSEG_LENGTH         256     /* maximum hybrid segment length */
#define MAX_HYB_SAMPLES_PER_FRAME SIU_MAX_FRAME_LENGTH
#define MAX_HYB_FILTER_LEN        1024
#define MAX_HYB_RX_DELAY          0
#define MAX_HYB_TX_DELAY          SIU_MAX_SYSTEM_DELAY
#define ecu_HYB_SIM_MAX_ECOBUFS   5
/* Define search related constants */
#if ecu_SEARCH_ENABLE  
#define SIU_MAX_ECU_FILTER_LENGTH 1024    /* maximum echo tail in taps */
#define SIU_MAX_HYBRID_LENGTH     1024    /* maximum hybrid filter length in taps */
#define SIU_MAX_ECU_FLTSEG        3       /* maximum number of filter segments */
#define SIU_MAX_ECU_FLTSEG_LENGTH 256     /* maximum taps for all filter segments */
#else
#define SIU_MAX_ECU_FILTER_LENGTH 256     /* maximum echo tail in taps */
#define SIU_MAX_HYBRID_LENGTH     256     /* maximum hybrid filter length in taps */
#define SIU_MAX_ECU_FLTSEG        1       /* maximum number of filter segments */
#define SIU_MAX_ECU_FLTSEG_LENGTH 256     /* maximum taps for all filter segments */
#endif

#if ECUSIM_INCLUDE_MAG
/* MIPS Agent Required definitions */
#define MAX_CHANNELS   10          /* Number of channels for the build */      
#define MAX_MIPS       0x00017C00L /* maximum MIPS = 95.0 in U22.10 */
#define mag_INIT_CHANNEL_STRUCT {0, 0, 0, {0, 0, 0}, {0, 0}, {0, 0}}
#endif

/* SIU channel state definitions */
#define SIU_CHST_CLOSED 0
#define SIU_CHST_IDLE   1
#define SIU_CHST_VOICE  2
#define SIU_CHST_DTMF   3

/* Simulation constraints */
#define ecu_SIM_MAX_CHANNELS         16          // Maximum number of channels to simulate
#define ecu_SIM_MAX_SAMPLES    MAX_STREAM_SIZE   // Maximum frame_size
#define ecu_SIM_MAX_TAIL_LEN        128          // Maximum tail length
#define ecu_SIM_MAX_ECOBUFS           5          // Maximum module buffers
#define ecu_SIM_MAX_STRING          256          // Maximum string size
#define ecu_SIM_MAX_BSIZE           128          // Maximum filter block size

/* Simulation file open actions */
#define ecu_SIM_FILEIO_READ         ( 0)    // Open file for read (binary)
#define ecu_SIM_FILEIO_WRITE        ( 1)    // Open file for write (binary)

/* Simulation error identifiers */
#define ecu_SIM_ERR_SLM             ( 1)    /* SLM related errors   */
#define ecu_SIM_ERR_HYB             ( 2)    /* HYB related errors   */
#define ecu_SIM_ERR_SGN             ( 4)    /* SGN related errors   */
#define ecu_SIM_ERR_5               ( 5)    /* related errors   */
#define ecu_SIM_ERR_6               ( 6)    /* related errors   */
#define ecu_SIM_ERR_7               ( 7)    /* related errors   */
#define ecu_SIM_ERR_8               ( 8)    /* related errors   */
#define ecu_SIM_ERR_9               ( 9)    /* related errors   */
#define ecu_SIM_ERR_10              (10)    /* related errors   */
#define ecu_SIM_ERR_11              (11)    /* related errors   */
#define ecu_SIM_ERR_12              (12)    /* related errors   */
#define ecu_SIM_ERR_13              (13)    /* related errors   */
#define ecu_SIM_ERR_14              (14)    /* related errors   */
#define ecu_SIM_ERR_15              (15)    /* related errors   */
#define ecu_SIM_END                 (16)    /* simulation ends  */

/* simulation signal source */
#define ecu_SIM_SIG_SRC_FILE        0
#define ecu_SIM_SIG_SRC_SGN         1

/* simulation default settings */                                            
#define ecu_SIM_DEF_FS             8000     /* default sampling rate 8kHz */
#define ecu_SIM_DEF_RIN_FNAME      "rin.pcm"
#define ecu_SIM_DEF_SIN_FNAME      "sin.pcm"
#define ecu_SIM_DEF_ROUT_FNAME     "rout.pcm"
#define ecu_SIM_DEF_SOUT_FNAME     "sout.pcm"
#define ecu_SIM_DEF_FILT_FNAME     "hreg.txt"

/* Handle CCS Project paths */
#ifdef  __CCS_PROJECT_REL_PATH
#define ecusim_PROFILE_FNAME       "../../../vectors/profile/profile.txt"
#define ecu_SIM_DEF_BASE_INDIR     "../../../vectors/inp/"
#define ecu_SIM_DEF_BASE_OUTDIR    "../../../vectors/out/"
#else
#define ecusim_PROFILE_FNAME       "../../vectors/profile/profile.txt"
#define ecu_SIM_DEF_BASE_INDIR     "../../vectors/inp/"
#define ecu_SIM_DEF_BASE_OUTDIR    "../../vectors/out/"
#endif

/* Miscellaneous defines */
#define FILEIO_FRM_FACTOR   3    /* Increase RX/TX frames by this factor when */
                                 /* using file I/O to allow for delay */         

#define SEG_END_TBLSIZE   8     /* number of u/A-law segments */
#define ecuSIM_MAXSENDOUT_LENGTH   88      /* 10ms for 8kHz */

/* Signal Generator Parameters */
typedef struct {
  tbool      state;     /* TRUE: generator is on. */
  tbool      reset;     /* TRUE: reset the generator (only for CSS) */
  tint      delay;      /* number of samples to delay signal generation */
  linSample dcoffset;   /* dc offset (Q0 format) */
  tint      wftype;     /* one of sgn_WFT_'s */
  tint      f1;         /* the first frequency in Hz */
  tint      f2;         /* the second frequency in Hz */
  linSample amp1;       /* amplitude of the first component (Q0) */
  linSample amp2;       /* amplitude of the second component (Q0) */
  tint      nlevel;     /* idle noise level in dBm0 */
  tuint     nseed;      /* idle noise seed */
  tint      ntype;      /* noise type sgn_NT_xxx */
  tint      pow_level;  /* Hoth or CSS power level in dBm0 */
  tuint     hoth_seed;  /* Hoth noise seed */
  tulong    sdram_addr; /* Address of SDRAM samples */
  tulong    num_sample; /* Number of SDRAM samples */
} siuSGNPars_t;

/* Get filter parameters */
typedef struct {
  tint  select;       /* 0 - FG, 1 - BG */
  tint  start;        /* starting index */
  tint  ncoeff;       /* # of coefficients (up to SIU_MAX_GETFLT) */
  tint  retstat;      /* most recent return status */
} siuGetFlt_t;

#if ECUSIM_INCLUDE_MAG
typedef struct {
  tint    event;        /* Event type generated */
  union {                
    tint ecu_event;     /* ECU event code */  
    struct {             
      tint id;          /* Channel ID (indexing starts at 1) */
      tint codec;       /* Codec code (see vctypes.h) */
      tint event;       /* Codec event (open/close) */  
      tint type;        /* Codec type (encoder/decoder) */  
    } codec;                
    struct {            
      tint id;          /* Channel ID (indexing starts at 1) */
      tint ostate;      /* Old channel state */  
      tint nstate;      /* New channel state */  
    } channel;  
    magControl_t ctl; /* MIPS Agent control structure */
  } u;
} siuMaEvt_t;
#endif

typedef struct {
  tbool fio;                            // TRUE: Get/put samples from/to file
  tbool eof;                            // TRUE: End of file reached
  FILE  *fptr;                          // File pointer for read/write
  char  fname[ecu_SIM_MAX_STRING];      // File name to open/close
} ecuSimFileIo_t;

typedef struct {
  FILE  *fptr;              /* FILE pointer for profiling data */
  tbool use_cache;          /* Boolean to enable/disable cache usage/flush */
  tbool enabled;            /* Boolean to enable disable internally */
  tlong overhead;           /* Cycle overhead for profile cycle measurement */
  tlong start_cnt;          /* Cycle start count prior to profile call */
  tlong cycles;             /* Total cycles for ecuSendIn() */
} ecuProfile_t;

/* SIU Setup Structure (simulator configuration) */
typedef struct siuSetup_s {
  tbool           exec;               /* execution flag */
  tulong          sample_cnt;         /* number of samples executed */
  tuint           clock_mul;          /* Clock multiplier value (1-16) */
  tint            pcm_format;         /* companding law -1 (transparent),
                                       *  0 (A-law), 1 (u-law), 2 (linear) */
  tint            pcm_bits;           /* (1-16), number of bits in a pcm-sample */
  tint            frame_size;         /* # samples in frame */
  tint            ecu_y2x_delay;      /* ECU y2x delay (0 for SDRAM input) */
  tint            ecu_fltseg_length;  /* max # taps total for filter segments */
  tint            ecu_num_fltseg;     /* max # filter segments */
  tint            ecu_filter_length;  /* # taps in ECU tail */
  tint            hyb_filter_length;  /* # taps in hybrid filter */
  tbool           toggle_ecu;         /* TRUE: change ECU control parameters */
  ecuControl_t    ecuCtl;             /* ECU control parameters */
  tbool           toggle_hyb;         /* TRUE: change hybrid parameters */
  hybControl_t    hybCtl;             /* Hybrid control parameters */
  tbool           toggle_tx_sg;       /* TRUE: toggle Tx signal generator */
  siuSGNPars_t    txSGN;              /* Tx Signal Generator Parameters */
  tbool           toggle_rx_sg;       /* TRUE: toggle Rx signal generator */
  siuSGNPars_t    rxSGN;              /* Rx Signal Generator Parameters */
  tbool           toggle_piu;         /* TRUE: change ECU control parameters */
  piuControl_t    piuCtl;             /* PIU control parameters */
  tbool           toggle_getflt;      /* TRUE: get filter coefficients */
  siuGetFlt_t     getflt;             /* Get filter parameters */
#if ECUSIM_INCLUDE_MAG
  tbool           toggle_mipsevt;     /* TRUE: Generate event for MIPS Agent */
  siuMaEvt_t      mipsEvt;            /* MIPS Agent event parameters */
#endif
  tbool           profile_enable;     /* TRUE: enable ECU profiling */
#if ECU_SIM_USE_VPE
  tbool           toggle_slm;         /* TRUE: change signal limiter mode */
  tint            slm_mode;           /* signal limiter mode */               
#endif
  tbool           toggle_freerun;     /* TRUE: Run "free" for a scpecific period */
  tuint           freerun_frame_cnt;  /* Number of frames to run "free" */ 
  tuint           Fs;                 /* sampling rate */    
  tuint           error_id;           /* error return ID */     
  tuint           sig_src;            /* signal source, from SGN or from file */  
  tbool           save_to_file;       /* if signal source is from SGN, whether save to a file*/           
  tuint           num_channel;        /* number of channels in the simulation */ 
  tuint           output_chnum;       /* output channel number */       
  ecuSimFileIo_t  rin;                /* rin file I/O structure  */
  ecuSimFileIo_t  sin;                /* sin file I/O structure  */
  ecuSimFileIo_t  rout;               /* rout file I/O structure */
  ecuSimFileIo_t  sout;               /* sout file I/O structure */  
} siuSetup_t;


/* Prototypes needed for initialization */
void  ecu_send_out   (void *ecuSoInst, void *samples_in);

#if ECUSIM_INCLUDE_MAG
tuint mag_dummy_dp (tint code, tint action);
#endif

#endif /* _ECUSIM_H */
/* nothing after this point */
