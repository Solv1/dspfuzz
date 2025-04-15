/**
 *  @file   cidsim.c
 *  @brief  CID test main program
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

/** @defgroup  CIDTEST */

/** @ingroup CIDTEST */
/* @{ */

#include <stdio.h>
#include <stdlib.h>

#include <ti/mas/types/types.h>
#include <ti/mas/util/ecomem.h>
#include <ti/mas/fract/fract.h>
#include <ti/mas/util/utl.h>

#include <ti/mas/cid/cid.h>    /**< for cidGetSizes(), cidNew(), cidOpen(),... */
//#include <ti/mas/cid/src/cidloc.h>

/* Test include files */
#include <ti/mas/util/wng.h>
#include <ti/mas/sdk/sgn.h>
#include <ti/mas/sdk/profile.h>
#include <ti/mas/sdk/memArchCfg.h>

/* Current frame length */
#define SIU_FRAME_LENGTH 40

#define SIU_NUMBER_OF_CHANNELS 2

#define SIU_MAX_FRAME_LENGTH 44	/* 5.5 ms */
/* Bellcore - 39, ETSI - 106, NTT - 39. Bounds imposed by SIU message buffer
 * limitation. */
#define SIU_MAX_BYTES       39

#define NUMBER_OF_FRAMES    1   /* # of frames to save */
#define MAX_STREAM_SIZE    (NUMBER_OF_FRAMES*SIU_MAX_FRAME_LENGTH)
#define MSG_BUF_LEN         50  /* message buffer length */

/* PCM streams */
linSample siuRxInStream[MAX_STREAM_SIZE];   /**< Rx input samples to GNRT */
linSample siuPcmOutStream[MAX_STREAM_SIZE]; /**< PCM output samples from GNRT */
linSample siuPcmInStream[MAX_STREAM_SIZE];  /**< PCM input samples to DTCT */

/* For SGN FSK */
tint v21_flags = 0x7e7e;

extern void tstgmpInit();

extern const tint tblUlaw[];
extern const tint tblAlaw[];

/* Global SIU instance structure */
typedef struct {
	ecomemBuffer_t *cidBufs;  /* Pointer to base of CID buffer space */
  
  /* CID elements */
  tuint ID;                 /* ID of current SIU instance */
  void  *cidInst;           /* CID instance pointer */
	tint  cidNbufs;           /* Number of allocated CID buffers */
	tint  cid_heap_size;      /* Heap allocation for CID */

  /* Other elements */
  tint aux_heap_size;       /* Auxiliary heap allocation */
} siuInst_t;


/* Global variables */
siuInst_t siuInst[SIU_NUMBER_OF_CHANNELS];
linSample *frame_in;  


#define SIU_DBGMSG_SIZE 256
char siu_dbg_message [SIU_DBGMSG_SIZE];
tuint siu_dbg_id;
tint rptBuff;			/**< Indicator of instance */
tuint multi_msg_idx = 0;
tuint multi_msg_len = 0;
tint *multi_msg;

/* Signal Generator Instances */
void *sgnRxInst = (void *) NULL;
tint flog = 0;

/***********************************************************************
 * Profiling defines and structures 
 ***********************************************************************/
#define cidsim_PROFILE_FNAME    "profile.txt"
#define cidsim_PROFILE_SND_IDX  0
#define cidsim_PROFILE_RCV_IDX  1

typedef struct {
  FILE  *fptr;              /**< FILE pointer for profiling data */
  tbool use_cache;          /**< Boolean to enable/disable cache usage/flush */
  tbool enabled;            /**< Boolean to enable disable internally */
  tlong profile_ovrhd;      /**< Cycle overhead for profile cycle measurement */
  tlong profile_start;      /**< Cycle start count prior to profile call */
  tlong profile_cycles[2];  /**< Total cycles for RX/TX */
  tlong ignore_ovrhd;       /**< Cycle overhead for ignored cycle measurement */
  tlong ignore_start;       /**< Cycle start count prior to ignore call */
  tlong ignore_cycles;      /**< Cycle count for calls to be ignored */
} cidProfile_t;

cidProfile_t cidProfile = {
  (FILE *) NULL,          /**< fptr:  initialize to NULL    */
  TRUE,                   /**< use_cache:  TRUE by default  */
  FALSE,                  /**< enabled:  FALSE by default   */
  0L,                     /**< profile_ovrhd:  cleared      */
  0L,                     /**< profile_start:  cleared      */
  {0L,0L},                /**< profile_cycles[2]:  cleared  */
  0L,                     /**< ignore_ovrhd:  cleared       */
  0L,                     /**< ignore_start:  cleared       */
  0L,                     /**< ignore_cycles:  cleared      */
};


/* ============ cidsim_profile_enable () ========== */
static inline void cidsim_profile_enable (void)
{
  cidProfile.enabled = TRUE;
} 

/* ============ cidsim_profile_disable () ========== */
static inline void cidsim_profile_disable (void)
{
  cidProfile.enabled = FALSE;
} 

/* ============ cidsim_profile_start () ========== */
static inline void cidsim_profile_start (tint code)
{
  /* Flush the cache */
  if (cidProfile.use_cache) {
    memarchcfg_cacheFlush ();
  }
  
  /* Clear the selected and ignored cycle counts */
  cidProfile.profile_cycles[code] = 0L;
  cidProfile.ignore_cycles        = 0L;
  
  /* Get cycle count*/
  cidProfile.profile_start = profile_getCPUcycleCount ();
} 

/* ============ cidsim_profile_stop() ========== */
static inline void cidsim_profile_stop (tint code)
{
  /* Get end cycles */
  tlong count = profile_getCPUcycleCount();

  /* Calculate total cycles (correct for timer wrap) */
  count -= cidProfile.profile_start;
  if (count < 0) {
    count += sdk_PROFILE_MAXCNT;
  }
  
  /* Store adjusted total cycles */
  cidProfile.profile_cycles[code] = (count - cidProfile.profile_ovrhd - cidProfile.ignore_cycles);
} 

/* ============ cidsim_ignore_start () ========== */
static inline void cidsim_ignore_start (void)
{
  /* Set ignored cycle start */
  cidProfile.ignore_start = profile_getCPUcycleCount ();
} 

/* ============ cidsim_ignore_stop () ========== */
static inline void cidsim_ignore_stop (void)
{
  /* Get end cycles */
  tlong count = profile_getCPUcycleCount();

  /* Calculate total cycles (correct for timer wrap) */
  count -= cidProfile.ignore_start;
  if (count < 0) {
    count += sdk_PROFILE_MAXCNT;
  }
  
  /* Accumulate ignored cycles */
  cidProfile.ignore_cycles += (count - cidProfile.ignore_ovrhd);
} 

/***********************************************************************/
/***********************************************************************/


/* Channel Simulator Instance */
struct {
  tint    nscale;
  tuint   rng_state;
} csmInst;

/* Useful macros */
#define loop    for(;;)     /* endless loop */

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

#define NTT_MSG_LENGTH 90
tint ntt_message[] =
{
  0x020a, 0x1011, 0x1213, 0x1415, 0x1617, 0x1819, 0x2021, 0x2223, 0x2425, 
  0x2627, 0x2829, 0x3031, 0x3233, 0x3435, 0x3637, 0x3839, 0x4041, 0x4243,
  0x4445, 0x4647, 0x4849, 0x5051, 0x5253, 0x5455, 0x5657, 0x5859, 0x6061,
  0x6263, 0x6465, 0x6667, 0x6869, 0x7071, 0x7273, 0x7475, 0x7677, 0x7879,
  0x1a1b, 0x1c1d, 0x1e1f, 0x2a2b, 0x2c2d, 0x2e2f, 0x3a3b, 0x3c3d, 0x3e3f
};

#define BELLCORE_MSG_LENGTH 26
tint bellcore_message[] =
{
  0x0216, 0x3033, 0x3531, 0x2d33, 0x3231, 0x3030, 0x3334, 
          0x3536, 0x3738, 0x3930, 0x3132, 0x3334, 0x3938
};

/** @brief Control information that may be set-up from the simulator to 
 *         change operating parameters.
 */
typedef struct {
  tbool      state;      /**< TRUE: generator is on. */
  linSample dcoffset;   /**< dc offset (Q0 format) */
  tint      wftype;     /**< one of sgn_WFT_'s */
  tint      f1;         /**< the first frequency in Hz */
  tint      f2;         /**< the second frequency in Hz */
  linSample amp1;       /**< amplitude of the first component (Q0) */
  linSample amp2;       /**< amplitude of the second component (Q0) */
  tint      nlevel;     /**< idle noise level in dBm0 */
  tuint     nseed;      /**< idle noise seed */
  tint      ntype;      /**< noise type sgn_NT_xxx */
  tint      pow_level;  /**< Hoth or CSS power level in dBm0 */
  tuint     hoth_seed;  /**< Hoth noise seed */
} siuSGNPars_t;

/* Channel Simulator Parameters */
typedef struct {
  tbool     chnl_sim_on;  /**< TRUE: channel simulator is on */
  tint      nlevel;       /**< channel noise level in dBm0 */
  tuint     nseed;        /**< channel noise seed */
} siuCHSMPars_t;

typedef struct {
  tint          pcm_bits;     /**< (1-16), number of bits in a pcm-sample */
  tint          frame_size;   /**< # samples in frame (80 for 10ms frame) */
  tint          tog_cid1;     /**< TRUE: change CID control parameters in cid_ctlMsg1 for ch1 */
  cidCtlMsg_t   cid_ctlMsg1;  /**< CID control message for ch1 */
  tint          tog_cid2;     /**< TRUE: change CID control parameters for ch2 */
  cidCtlMsg_t   cid_ctlMsg2;  /**< CID control message in cid_ctlMsg2 for ch2 */
  tbool          tog_chnl_sim; /**< TRUE: toggle channel simulator */
  siuCHSMPars_t chSim;        /**< channel simulator parameters */  
  tbool          tog_rx_SGN;   /**< TRUE: toggle rx signal generator */
  siuSGNPars_t  rxSGN;        /**< Rx Signal Generator Parameters */
} siuSetup_t;

siuSetup_t siuSetup = {      /**< SIU setup information */
  8,                  /**< pcm_bits: u-law uses 8-bits */
  40,                 /**< frame_size: 5 ms default frame duration */
  FALSE,              /**< tog_cid1: If not 0, toggle CID for ch1 */

  /* cidCtlMsg_t cid_ctlMsg1 for channel 1 */
  {
    -1,               /**< ctlCode: control code: activate the CID generator */
    FALSE,            /**< call_waiting: if TRUE: caller ID with call waiting */

    /* union for gnrt structure */
    {
      0x0000,         /**< marks_gain parameter */
      0x080,          /**< 8-bit message type of MDMF */
      BELLCORE_MSG_LENGTH, /**< 8-bit message length in bytes */
      (tuint *)bellcore_message
    },

  },

  FALSE,              /**< tog_cid2: If not 0, toggle CID for ch2 */

  /* cidCtlMsg_t cid_ctlMsg2 for channel 2 */
  {
    -1,               /**< ctlCode: control code: activate the CID detector */
    FALSE,            /**< call_waiting: if TRUE: caller ID with call waiting  */

    /* union for dtct structure */
    {
      9999,           /**< timeout in milliseconds */
      0               /**< direction position of detector (0 - PCM Tx; 1 - Packet Rx) */  
    },

  },


  FALSE,              /**< tog_chnl_sim: if TRUE: toggle channel simulator */

  /* siuCHSMPars_t chSim: Channel Simulator Parameters */
  { 
    FALSE,            /**< chnl_sim_on: if TRUE: channel simulator is on */
    -40,              /**< nlevel: channel simulator noise level in dBm0 */
    1531              /**< nseed: initial noise generator seed */
  },  


  FALSE,              /**< tog_rx_SGN: if TRUE: toggle rx signal generator */

  /* siuSGNPars_t rxSGN: Rx Signal Generator Parameters */
  {
    TRUE,             /**< default state is on */
    0,                /**< default dc-offset */
    sgn_WFT_SAWTOOTH, /**< default waveform */
    1000, 0,          /**< default frequencies for tone generator in Hz (Q0) */
    0, 0,             /**< default amplitudes of the two frequencies */
    0,                /**< default noise generator level in dBm0 */
    1531,             /**< initial noise generator seed */
    sgn_NT_GAUSS,     /**< Gaussian white noise */
    -70,              /**< default HOTH/CSS power level in dBm0 */
    18401             /**< initial HOTH generator seed */
  },
};      

/** @brief Debug & exception functions.
 */
static inline void siuDebugInternal (tuint id, char *str)
{
  tint i;
  char *src;
  char *dst;

  printf("ID=%d %s\n", id, str);
  
  /* Copy id and message in a safe place */
  siu_dbg_id = id;
  src = str; 
  dst = (char*) &siu_dbg_message[0];
  for (i=0; i<SIU_DBGMSG_SIZE; i++) {
    *dst++ = *src++;
  }
} /* siuDebugInternal */

void siuException (tuint id, char *s)
{
  volatile tint exit_code = 0;
  siuDebugInternal (id, s);

  loop {
    if(exit_code)
      break;
  };     /* loop forever */
} /* siuException */

volatile tbool glob_flg;
tuint glob_msgLength;
tuint glob_moduleID, glob_msgType, glob_messageCode;
tuint glob_msgData[4];

void siuDebugInfo (void * moduleID, tuint msgType, tuint messageCode, 
                   tuint msgLength, tuint *messageData) {
  tint i;
  
  /* Begin cycles to be ignored for profiling purposes */
  cidsim_ignore_start();
  
  glob_flg         = TRUE;
  glob_moduleID    = *((tuint *) moduleID);
  glob_msgType     = msgType;
  glob_messageCode = messageCode;
  glob_msgLength   = msgLength;
  for (i = 0; i < msgLength; i ++)
    glob_msgData[i++] = messageData[i];

  /* get stuck here, as long as glob_flg is TRUE */
  while(glob_msgLength);
  
  /* End cycles to be ignored for profiling purposes */
  cidsim_ignore_stop();
} /* debug info */

/* Rx file inputs */
sgnFileIo_t *siu_rx_file (sgnFileIo_t *dsc)
{
#ifndef _HWDKST
  asm (" nop");
  asm (" nop");
  asm (" nop");
  asm (" nop");
  asm (" nop");
  asm (" nop");
#endif
  return (dsc);
} /* siu_rx_file */

/* ============ generate_rx_frame () ========== */
/**
 *  @brief      Generate rx sample frames.
 *
 *  @param[in]  frame_size     # samples in frame
 *
 *  @param[in,out]  *frame     Pointer to linear PCM sample buffer
 *
 */
void generate_rx_frame (tint frame_size, linSample *frame)
{
  int k;

  if (siuSetup.rxSGN.state) {                         /* rx SGN is on */
    sgnGenerateFrame (sgnRxInst, frame_size, frame);  /* Generate a frame */
  }
  else {                                              /* SGN is off */
    for (k = 0; k < frame_size; k++)                  /* send a 0 frame */
      frame[k] = 0;
  }
} /* generate_rx_frame */


/* ============ cidsim_profile_init () ========== */
void cidsim_profile_init (void)
{
  /* Always open in the "disabled mode" */
  cidsim_profile_disable ();

  /* Initialize SDK profiling and cache */
  profile_initCycleProfiling ();
  if (cidProfile.use_cache) {
    memarchcfg_cacheEnable ();
  }
  
  /* Get estimate of profile cycle call overhead */
  cidProfile.profile_ovrhd = 0L;
  cidsim_profile_start (0);
  cidsim_profile_stop (0);
  cidProfile.profile_ovrhd = cidProfile.profile_cycles[0];

  /* Get estimate of ignored cycle call overhead */
  cidProfile.ignore_ovrhd = 0L;
  cidsim_ignore_start ();
  cidsim_ignore_stop ();
  cidProfile.ignore_ovrhd = cidProfile.ignore_cycles;

  /* Open profiling data file */
  cidProfile.fptr = fopen (cidsim_PROFILE_FNAME,"w");
  if (cidProfile.fptr == (FILE *) NULL) {
    fprintf (stderr, "Unable to open profiling file");
    exit (-1);
  }
} /* cidsim_profile_init */

/* ============ cidsim_profile_close () ========== */
void cidsim_profile_close (void)
{
  /* Ensure porilfing is disabled */
  cidsim_profile_disable ();
 
  /* Close SDK profiler */
  profile_closeCycleProfiling ();
  
  /* Close profiling data file */
  fclose (cidProfile.fptr);
} /* cidsim_profile_close */

/* ============ cidsim_profile_print () ========== */
void cidsim_profile_print (char *msg)
{
  /* Only report if profiling is enabled */
  if (cidProfile.enabled) {
    /* Write message if non-NULL */
    if (msg) {
      fprintf (cidProfile.fptr, msg);
    }
    else {
      float mips;
      /* Dump rx MIPS to the file */
      mips = (float) cidProfile.profile_cycles[cidsim_PROFILE_RCV_IDX] * 8000 / 
                     siuSetup.frame_size / 1e6;
      fprintf (cidProfile.fptr, "  %6.2f", mips);
      /* Dump tx MIPS to the file */
      mips = (float) cidProfile.profile_cycles[cidsim_PROFILE_SND_IDX] * 8000 / 
                     siuSetup.frame_size / 1e6;
      fprintf (cidProfile.fptr, "  %6.2f\n", mips);
    }
    /* Flush the output */
    fflush (cidProfile.fptr);
  }
} /* cidsim_profile_print */


/* ============ siuChSim () ========== */
/**
 *  @brief      Simulate PCM channel, introduce distortion, etc.
 *
 *  @param[in,out]  *sample_in     Pointer to linear PCM sample buffer
 *
 */
void siuChSim (void *sample_in)
{
  int i;
  linSample *sample = (linSample *) sample_in;

  /* Save output from CID generator into buffer */
  for (i = 0; i < siuSetup.frame_size; i++) {
    siuPcmOutStream[i] = sample[i];
  }

  /* Channel Simulator */
  if (siuSetup.chSim.chnl_sim_on) {
    /* add noise */
    for (i=0; i<siuSetup.frame_size; i++) {
      sample[i] += wngGenNoiseSample (csmInst.nscale, &csmInst.rng_state);
    }
  }
} /* siuChSim */


/* ============ siuCidRptIn () ========== */
/**
 *  @brief      Save the CID report into buffer.
 *
 *  @param[in]  ID        Channel number.
 *
 *  @param[in]  rcode     Report code.
 *
 *  @param[in]  final_state  Final state of generator or detector.
 *
 *  @param[in]  dropout_ct   Count of state machine errors.
 *
 *  @param[in]  bad_mtype_ct Count of bad msg types.
 *
 *  @param[in]  type         Caller ID message type.
 *
 *  @param[in]  len          Length of message in bytes.
 *
 *  @param[in]  *msg         Pointer to message.
 *
 *  @param[in]  len_in_word  Length of message in words.
 *
 */
void siuCidRptIn (tuint ID, tint rcode, tint final_state,
                  tint dropout_ct, tint bad_mtype_ct, tint type, tint len,
                  tuint *msg, tint len_in_word)
{
  tint  i;

  /* Begin cycles to be ignored for profiling purposes */
  cidsim_ignore_start ();
  
  printf ("siuCidRptIn(): ID=%d rcode=%d length=%d word length=%d\n", ID, rcode, 
          len, len_in_word);
	  
  if (rcode == cid_RPT_MULTI_RQST) {
    multi_msg_idx = len;
    multi_msg_len = len_in_word;
    siuSetup.tog_cid1 = 9; /* This will initiate a cid_CTL_MULTI_RQST message */
  }
  else if (rcode == cid_RPT_GNRT_DEACT) {
	  if (ID == 1) {
      siuSetup.tog_cid1 = 10;
    }
    else {
      siuSetup.tog_cid2 = 10;
    }
  }
  else {
    for (i=0; i<len_in_word; i++) {
	    printf("msg[%d]=0x%x\n", i, msg[i]);
	  }
  }

  /* If this is end of CID generation, disable profiling */
  if (rcode == cid_RPT_END_GNRT) {
    cidsim_profile_disable ();
  }
    
  /* End cycles to be ignored for profiling purposes */
  cidsim_ignore_stop ();
} /* siuCidRptIn */


/* ============ siu_new_cid () ========== */
/**
 *  @brief      Creates a CID instance.
 *
 *  @param[in]  chnum             Channel number
 *
 */
void siu_new_cid (tint chnum)
{
  int i;
  tint stat, cidNbufs;
  siuInst_t            *inst = &siuInst[chnum - 1];
  const ecomemBuffer_t *bufs;
  ecomemBuffer_t       *cidBufs;
  cidNewConfig_t        cidCfgNew;

  /* CID get sizes */
  stat = cidGetSizes (&cidNbufs, &bufs);

  if (stat != cid_NOERR) {
	  siuException (chnum, "Error in GetSizes");
  }

  cidBufs = (ecomemBuffer_t*)malloc (cidNbufs*sizeof(ecomemBuffer_t));
  inst->aux_heap_size += cidNbufs * sizeof(ecomemBuffer_t);

  if (cidBufs == NULL) {
    siuException (chnum, "No memory");
  }

  /* assume all buffers are in external memory, no alignment requests */
  for (i = 0; i < cidNbufs; i++) {
    cidBufs[i] = bufs[i];
    cidBufs[i].volat  = FALSE;
    if(bufs[i].size) {
      cidBufs[i].base   = malloc (bufs[i].size);
      if (cidBufs[i].base == NULL) {
        siuException (chnum, "No memory");
      }
    } 
    else {
      cidBufs[i].base   = NULL;
    }
  }

  /* cidNew */
  cidCfgNew.ID        = chnum;

  /* Need these as a handle to delete this channel's CID someday */
  inst->cidInst = NULL;
  inst->cidNbufs = cidNbufs;
  inst->cidBufs  = &cidBufs[0];

  stat = cidNew (&inst->cidInst, cidNbufs, cidBufs, &cidCfgNew);
  if (stat != cid_NOERR) {
    siuException (chnum, "Errors in cidNew");
  }
} /* siu_new_cid */


/* ============ siu_open_cid () ========== */
/**
 *  @brief      Opens a CID instance.
 *
 *  @param[in]  chnum       Channel number
 *
 */
void siu_open_cid (tint chnum)
{
  cidOpenConfig_t cidCfg;
  tint stat;
  siuInst_t      *inst = &siuInst[chnum - 1];

  cidCfg.samples_per_frame = SIU_FRAME_LENGTH;

  stat = cidOpen (inst->cidInst, &cidCfg);
	  
  if (stat != cid_NOERR) {
    siuException (chnum, "Error in cidOpen");
  }
} /* siu_open_cid */

/******************************************************************************
 * FUNCTION PURPOSE: Close CID module
 ******************************************************************************
 * DESCRIPTION: Closes one instance of a CID module
 *
 * CALLING FORMAT:
 *   siu_close_cid   (tint chnum)      - channel number
 *
 * RETURN VALUES:
 *   None
 *    
 *****************************************************************************/

void siu_close_cid (tint chnum)
{
  siuInst_t *inst = &siuInst[chnum - 1];
  cidClose (inst->cidInst);
} /* siu_close_cid */


/******************************************************************************
 * FUNCTION PURPOSE: Delete CID module
 ******************************************************************************
 * DESCRIPTION: Deletes one instance of a CID module
 *
 * CALLING FORMAT:
 *   siu_delete_cid  (tint chnum)      - channel number
 *
 * RETURN VALUES:
 *   None
 *    
 *****************************************************************************/
void siu_delete_cid (tint chnum)
{
  tint i;
  siuInst_t *inst = &siuInst[chnum - 1];
  cidDelete (&(inst->cidInst),inst->cidNbufs,inst->cidBufs);

  /* Free memory allocated for CID buffers & adjust cid_heap_size */
  for (i = 0; i < inst->cidNbufs; i++) {
    free (inst->cidBufs[i].base);
    inst->cid_heap_size -= inst->cidBufs[i].size;
  }

  /* Free memory for CID buffer descriptors & adjust aux_heap_size */
  free (inst->cidBufs);
  inst->cidBufs = NULL;
  inst->aux_heap_size -= inst->cidNbufs * sizeof(ecomemBuffer_t);
  inst->cidNbufs = 0;

  /* Check for profiling disable */
} /* siu_delete_cid */

/* ============ siu_open_csm () ========== */
/**
 *  @brief      Open channel simulator
 *
 */
void siu_open_csm ()
{
  /* initialize white noise generator */
  wngInit (siuSetup.chSim.nlevel, siuSetup.chSim.nseed, &csmInst.nscale, 
           &csmInst.rng_state);
} /* siu_open_csm */

/* ============ siu_open_csm () ========== */
/**
 *  @brief      Open Rx Signal Generator.
 *
 */
void siu_open_rxsgn (tint chnum)
{
  sgnConfig_t cfg;
  tint sgnSize;
  tint retVal;

  /* Init SGN */
  retVal = sgnGetSizes(&sgnSize);
  if (retVal != sgn_NOERR){
    siuException (chnum, "Error in sgnCreate");
  }
  sgnRxInst = malloc (sgnSize);

  /* Configure SGN */
  cfg.dc_offset     = siuSetup.rxSGN.dcoffset;
  cfg.wf_type       = siuSetup.rxSGN.wftype;
  cfg.f1            = siuSetup.rxSGN.f1;
  cfg.f2            = siuSetup.rxSGN.f2;
  cfg.t_amp1        = siuSetup.rxSGN.amp1;
  cfg.t_amp2        = siuSetup.rxSGN.amp2;
  cfg.pr_period     = 1000;       /* # of samples between phase reversals */
  cfg.pr_enable     = FALSE;      /* disable phase reversal */
  cfg.noise_level   = siuSetup.rxSGN.nlevel;
  cfg.noise_seed    = siuSetup.rxSGN.nseed;
  cfg.noise_type    = siuSetup.rxSGN.ntype;
  cfg.fsk_duration  = 90;         /* 90/300 = 300ms */
  cfg.fsk_dataptr   = &v21_flags; 
  cfg.fsk_numword   = 1;          /* 1 word for V21 flags */ 
  cfg.power_level   = siuSetup.rxSGN.pow_level;
  cfg.hoth_wng_seed = siuSetup.rxSGN.hoth_seed;
  cfg.file_io_fcn   = siu_rx_file;
  cfg.exception     = siuException;
  cfg.debug         = siuDebugInternal;

  sgnInit (sgnRxInst, &cfg);
} /* siu_open_rxsgn */

/* ============ siu_set_sgn () ========== */
/**
 *  @brief      Set signal generator parameters.
 *
 *  @param[in]  *inst  Pointer to sgnInst_t instance.
 *
 *  @param[in]  *sgn   Parameters.
 *
 */
void siu_set_sgn (void *inst, siuSGNPars_t *sgn)
{
  sgnControl_t  ctl;

  if (sgn->state) {
    if (sgn->wftype == sgn_WFT_CSS || sgn->wftype == sgn_WFT_CSS_DTK) {
      ctl.code          = sgn_CTL_CSS_POW;
      ctl.u.power_level = sgn->pow_level;
    }
    else if (sgn->wftype == sgn_WFT_HOTH) {
      ctl.code          = sgn_CTL_HOTH_POW;
      ctl.u.power_level = sgn->pow_level;
    }
    else {
      ctl.code      = sgn_CTL_TONE;
      ctl.u.t.f1    = sgn->f1;
      ctl.u.t.f2    = sgn->f2;
      ctl.u.t.amp1  = sgn->amp1;
      ctl.u.t.amp2  = sgn->amp2;
    }
    sgnControl (inst, &ctl);

    ctl.code           = sgn_CTL_NOISE;
    ctl.u.noise_level  = sgn->nlevel;
  }
  else {
    if (sgn->wftype == sgn_WFT_CSS || sgn->wftype == sgn_WFT_CSS_DTK) {
      ctl.code          = sgn_CTL_CSS_POW;
      ctl.u.power_level = -80;
    }
    else if (sgn->wftype == sgn_WFT_HOTH) {
      ctl.code          = sgn_CTL_HOTH_POW;
      ctl.u.power_level = -80;
    }
    else {
      ctl.code     = sgn_CTL_TONE;
      ctl.u.t.f1   = sgn->f1;
      ctl.u.t.f2   = sgn->f2;
      ctl.u.t.amp1 = 0;
      ctl.u.t.amp2 = 0;
    }
    sgnControl (inst, &ctl);

    ctl.code           = sgn_CTL_NOISE;
    ctl.u.noise_level  = -80;
  }
  sgnControl (inst, &ctl);
} /* siu_set_sgn */


/******************************************************************************
 * FUNCTION PURPOSE: Main program.
 ******************************************************************************
 * DESCRIPTION: Main program. Starts the system.
 *
 *****************************************************************************/
int main (int argc, char *argv[]) 
{
  int i;
  tbool rxReplace, genWork;
  tint chnum, frame_size, error;
  cidCreateConfig_t create_cfg;

  printf("START TEST\n");
  
  /*-----------------------------*/
  /* Initialize DSP Architecture */
  /*-----------------------------*/

  frame_size = siuSetup.frame_size;
  /* Allocate linear PCM sample buffer */
  frame_in = (linSample*) malloc (frame_size*sizeof(linSample));
  if (frame_in == NULL) {
   siuException (3, "Can not allocate memory for frame");
  }

  /* Open Rx Signal Generator */
  chnum = 1;
  siu_open_rxsgn (chnum);

  /* Enable profiling */
  cidsim_profile_init ();
  
  /* Open channel simulator */
  siu_open_csm ();

#if cid_USE_GMP
  tstgmpInit (); /* GMP simulation initialization */
#endif

  /* Create channel independent context */
  create_cfg.debugInfo          = siuDebugInfo;
  create_cfg.reportOutFcn       = siuCidRptIn;
  create_cfg.maxSamplesPerFrame = SIU_MAX_FRAME_LENGTH;
  create_cfg.maxFragmentSize    = 20;

  error = cidCreate (&create_cfg);
  if (error != cid_NOERR) {
    siuException (chnum, "Error in cidCreate");
  }

  error = cidBind (NULL, &cidBindConfig);
  if (error != cid_NOERR) {
    siuException (chnum, "Error in cidBind");
  }
  
  /* Configure, initialize and open all CID instances */
   for (chnum=1; chnum<=SIU_NUMBER_OF_CHANNELS; chnum ++) {
     siu_new_cid  (chnum);           /* Create CID module*/
     siu_open_cid (chnum);           /* Open   CID module*/
   }

  /* Enter main loop */
  loop {
    if (siuSetup.tog_cid1 == -1) {
      cidsim_profile_close ();
      siuSetup.tog_cid1 = 0;
	    siu_close_cid (1); 
	    siu_delete_cid (1); 
      printf("Channel 1 closed and deleted\n");
    }

	  /* Toggle the CID for ch1 (generator) */
    if (siuSetup.tog_cid1 != 0) {
      cidsim_profile_enable ();

      /* 1 - US, 2- NTT, 3 - ETSI, 4 - YDN, 5 - BT 6 - AUS*/
  	  siuSetup.cid_ctlMsg1.ctlCode = ((siuSetup.tog_cid1 - 1) << 1) + 1;
  	  if (siuSetup.tog_cid1 == 1) {
        cidsim_profile_print ("CID Standard: US\n");
        siuSetup.cid_ctlMsg1.u.gnrt.msg_type = cid_US_SDMF_MSGTYPE; /* SDMF, US */ 
        siuSetup.cid_ctlMsg1.u.gnrt.msg_length = BELLCORE_MSG_LENGTH;
        siuSetup.cid_ctlMsg1.u.gnrt.msg = (tuint*) bellcore_message;
        multi_msg = bellcore_message;
      }
  	  else if (siuSetup.tog_cid1 == 2) {
        cidsim_profile_print ("CID Standard: Japan\n");
  	    siuSetup.cid_ctlMsg1.u.gnrt.msg_type = cid_NTT_BYTE_SERVICE; /* NTT */
        siuSetup.cid_ctlMsg1.u.gnrt.msg_length = NTT_MSG_LENGTH;
        siuSetup.cid_ctlMsg1.u.gnrt.msg = (tuint*)ntt_message;
        multi_msg = ntt_message;
      }
  		else if (siuSetup.tog_cid1 == 3) {
        cidsim_profile_print ("CID Standard: Europe\n");
  	    siuSetup.cid_ctlMsg1.u.gnrt.msg_type = cid_ETSI_SMS_MSGTYPE; /* SMS, ETSI only */
        siuSetup.cid_ctlMsg1.u.gnrt.msg_length = BELLCORE_MSG_LENGTH;
        siuSetup.cid_ctlMsg1.u.gnrt.msg = (tuint*)bellcore_message;
        multi_msg = bellcore_message;
      }
  		else if (siuSetup.tog_cid1 == 4) {
        cidsim_profile_print ("CID Standard: China\n");
  	    siuSetup.cid_ctlMsg1.u.gnrt.msg_type = cid_US_MDMF_MSGTYPE; /* MDMF, YDN */
        siuSetup.cid_ctlMsg1.u.gnrt.msg_length = BELLCORE_MSG_LENGTH;
        siuSetup.cid_ctlMsg1.u.gnrt.msg = (tuint*)bellcore_message;
        multi_msg = bellcore_message;
      }
  		else if (siuSetup.tog_cid1 == 5) {
        cidsim_profile_print ("CID Standard: UK\n");
  	    siuSetup.cid_ctlMsg1.u.gnrt.msg_type = cid_US_SDMF_MSGTYPE; /* SDMF, BT */
        siuSetup.cid_ctlMsg1.u.gnrt.msg_length = BELLCORE_MSG_LENGTH;
        siuSetup.cid_ctlMsg1.u.gnrt.msg = (tuint*)bellcore_message;
        multi_msg = bellcore_message;
      }
  		else if (siuSetup.tog_cid1 == 6) {
        cidsim_profile_print ("CID Standard: Australia\n");
  	    siuSetup.cid_ctlMsg1.u.gnrt.msg_type = cid_US_MDMF_MSGTYPE; /* MDMF, AUS */
        siuSetup.cid_ctlMsg1.u.gnrt.msg_length = BELLCORE_MSG_LENGTH;
        siuSetup.cid_ctlMsg1.u.gnrt.msg = (tuint*)bellcore_message;
        multi_msg = bellcore_message;
      }
      else if (siuSetup.tog_cid1 == 9) {            
        siuSetup.cid_ctlMsg1.ctlCode = cid_CTL_MULTI_RQST; /* Multi-part message */
        siuSetup.cid_ctlMsg1.u.mgnrt.fragment_offset = multi_msg_idx;
        siuSetup.cid_ctlMsg1.u.mgnrt.fragment_size   = multi_msg_len;
        siuSetup.cid_ctlMsg1.u.mgnrt.msg             = (tuint*)(&multi_msg[(multi_msg_idx >> 1)]);
      }
      else if (siuSetup.tog_cid1 == 10) {            
        siuSetup.cid_ctlMsg1.ctlCode = cid_CTL_DEACTIVATE;
      }

      siuSetup.tog_cid1 = 0;
      printf ("Send CID control message %d to channel 1\n", siuSetup.cid_ctlMsg1.ctlCode);
      cidControl (siuInst[0].cidInst, &siuSetup.cid_ctlMsg1);
    }

    if (siuSetup.tog_cid2 == -1) {
      siuSetup.tog_cid2 = 0;
	    siu_close_cid (2); 
	    siu_delete_cid (2);
      printf ("Channel 2 closed and deleted\n");
    }
    else if (siuSetup.tog_cid2 == 10) {            
      siuSetup.tog_cid2 = 0;
      siuSetup.cid_ctlMsg2.ctlCode = cid_CTL_DEACTIVATE;
      cidControl (siuInst[1].cidInst, &siuSetup.cid_ctlMsg2);
    }

	  /* Toggle the CID for ch2 (detector) */
    if (siuSetup.tog_cid2 != 0) {
	    
      /* 1 - US, 2- NTT, 3 - ETSI, 4 - YDN, 5 - BT 6 - AUS. This code should be same as tog_cid1, to
       * provide compatible operation */
	    siuSetup.cid_ctlMsg2.ctlCode = ((siuSetup.tog_cid2 - 1) << 1) + 2;
      siuSetup.tog_cid2 = 0;
      printf ("Send CID control message %d to channel 2\n", siuSetup.cid_ctlMsg2.ctlCode);
      cidControl (siuInst[1].cidInst, &siuSetup.cid_ctlMsg2);
    }

    /* Toggle the channel simulator */
    if (siuSetup.tog_chnl_sim) {
      siuSetup.tog_chnl_sim = FALSE;
      siuSetup.chSim.chnl_sim_on = !siuSetup.chSim.chnl_sim_on;
    }

    /* Toggle the RX signal generator */
    if (siuSetup.tog_rx_SGN) {
      siuSetup.tog_rx_SGN = FALSE;
      siuSetup.rxSGN.state = !siuSetup.rxSGN.state;
      siu_set_sgn (sgnRxInst, (siuSGNPars_t*)&siuSetup.rxSGN);
    }

    /* RX Frames MUST be generated before cidReceiveIn() starts!!! */
    generate_rx_frame (frame_size, frame_in);

    /* Save input to CID generator into buffer */
    for (i=0; i<frame_size; i++) {
      siuRxInStream[i] = frame_in[i];
    }

    /* CID generator */
    rptBuff = 0;
    /* This flag is set to TRUE by function cidReceiveIn, if samples are created by CID generator */
    rxReplace = FALSE;
    /* If set to TRUE, only generator can work */
    genWork   = TRUE;
    
    /* Input samples are replaced with CID generated sequence */
    cidsim_profile_start (cidsim_PROFILE_RCV_IDX);
    cidReceiveIn (siuInst[0].cidInst, frame_in, genWork, &rxReplace);
    cidsim_profile_stop (cidsim_PROFILE_RCV_IDX);
    
    /* Save input to CID detector into buffer */
    for (i=0; i<frame_size; i++) {
      siuPcmInStream[i] = frame_in[i];
    }

    siuChSim (frame_in);

    /* CID detector */
    rptBuff = 1;
    cidsim_profile_start (cidsim_PROFILE_SND_IDX);
    cidSendIn (siuInst[1].cidInst, frame_in);
    cidsim_profile_stop (cidsim_PROFILE_SND_IDX);
    cidsim_profile_print (NULL);
  }
} /* main */

/* @} */ /* ingroup */

/* nothing past this point */
