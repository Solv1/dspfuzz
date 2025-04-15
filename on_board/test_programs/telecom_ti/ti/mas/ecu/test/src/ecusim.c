/******************************************************************************
 * FILE PURPOSE: Main program and supporting routines for the simulation of ECU.
 ******************************************************************************
 * FILE NAME:   ecusim.c
 *
 * DESCRIPTION: Contains main program and supporting routines for the
 *              simulation of ECU. Depends on SIU support module.
 *
 * TABS: NONE
 *
 * REVISION HISTORY:
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
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
 
/* Test include files */
#include <ti/mas/ecu/test/src/ecusim.h>     /* for simulation-specific defines */
#include <ti/mas/ecu/test/src/ecufio.h>     /* file I/O functions */
#include <ti/mas/ecu/test/src/ecuprof.h>    /* ECU profiling */
#include <ti/mas/ecu/test/src/vheap.h>      /* Voice heap */
#include <ti/mas/ecu/test/src/cheap.h>      /* Core heap */
 
/* global pointers */
linSample *piu_segment_in;       /* PCM buffers for piuPcmIo() */
linSample *piu_segment_out;
linSample *segment_in;      /* linear buffer for Tx generator */
linSample *rx_segment_out;  /* linear buffer for Rx out display */
linSample *rx_frame_in;     /* linear buffer for Rx generator */

/* ecuGetFilter() support data */
#define SIU_MAX_GETFLT    64
Fract siu_getflt[SIU_MAX_GETFLT];   /* coefficient buffer */

/* Signal Generator Instances */
extern void  *sgnTxInst;
extern void  *sgnRxInst;

/* Hybrid Instance and hybrid filter */
extern void  *hybTxInst;

/* Input streams */
extern tint  siuInStream[];       /* input samples in Q0 */
extern tuint siuInUCmpStream[];   /* u-law coded input samples */
extern tuint siuInACmpStream[];   /* A-law coded input samples */
extern linSample siuRxInStream[]; /* Rx input samples in Q0 */

/* Output streams */
extern linSample siuOutErrStream[];   /* output error in Q0   */
/* simulation setup structure */
extern volatile siuSetup_t *ecuSim;

/* function prototypes used in this file */
extern void generate_tx_tone_frame (tint frame_size, linSample *frame);
extern void convert_tx_tone_frame (tint frame_length, tint pcm_law, linSample *frame);
extern tint generate_rx_tone_frame (tint frame_size, linSample *frame);
extern void ecu_send_out (void *ecuSoInst, void *samples_in);
extern void siu_new_ecu (tint chnum);
extern void siu_open_ecu (tint chnum, tint frame_size);
extern void siu_open_txhyb (tint chnum, tint frame_length, tint filter_length);
 
extern void siu_open_rxsgn (tint chnum);
extern void siu_open_txsgn (tint chnum);
extern void siu_set_sgn (void *inst, siuSGNPars_t *sgn);
extern void siuTxRxSendIn (void *siuInst, void *send_frame, void *recv_frame, tint queue_id);
extern void siuPcmSampleTrace (tint chnum, tint pcm_size, void *pcm_in, tuint dir);
extern void siuPiuReport (void *siuInst, tint report_code);
extern void siuDebugInfoNew (tuint moduleID, tuint msgType, tuint messageCode, 
                      tuint msgLength, tuint *messageData);
extern void ecu_sim_init(void);

void ecu_halt (volatile tbool *exec)
{
  /* Wait for further actions - run when user sets "exec" to TRUE, i.e., 1 */
  while (!(*exec)) {
    asm ("  NOP");
    asm ("Set_BP_Here:  ");
    asm ("  NOP");
    asm ("  NOP");
  }
}


/******************************************************************************
 * FUNCTION PURPOSE: Main program.
 ******************************************************************************
 * DESCRIPTION: Main program. Starts the system.
 *
 *****************************************************************************/

void main (void) 
{
  int i;
  piuControl_t piuCtrl;
  siuConfig_t  siuCfg;
#if ECU_SIM_USE_VPE  
  slmConfig_t  slmCfg;
#endif  
  siuInst_t    *inst;
  void *cheap;
  void *vheap;
  tint chnum;
  tint frame_size;
  tint ulaw;
  tint hyb_filter_length;
  tint seg_count;
  tbool do_freerun = FALSE; 
  tint  dataIn = 1;
  linSample ecu_out_buf[ecuSIM_MAXSENDOUT_LENGTH+1],*ecu_out_buf_start;
#if ECU_SIM_USE_VPE  
  tint slmSize, retVal;
#endif  
  tuint sample_count = 0;
  tuint sec_count = 0;

  /* align ecu out buf */
  ecu_out_buf_start = typChkAlign(ecu_out_buf,1)? ecu_out_buf : (ecu_out_buf+1);

  /* We may need exception routines rather soon */
  siuCfg.ID             = siuMakeID (SIU_MID_SIU, 0); /* use chnum 0 this time */
# ifndef _HWDSKT
    siuCfg.exception    = siuException;
    siuCfg.debug        = siuDebug;
# else
    siuCfg.exception    = exception_fcn;
    siuCfg.debug        = debug_fcn;
# endif

  /* Initialize simulation parameters */
  ecu_sim_init();
  /* wait here, change any simulation parameters before run again */
  //ecu_halt (&ecuSim->exec);
  /*----------------------------------------------*/
  /* Set the clock mode register.                 */
  /*----------------------------------------------*/
#if 0  /* Remove for now until c55x target hardware utilities are defined */
  if (ecuSim->clock_mul != 0)
    thwClockSet (ecuSim->clock_mul);
#endif

  /*----------------------------------------------*/
  /* Set some simulation configuration parameters */
  /*----------------------------------------------*/
  ulaw = ecuSim->pcm_format;         /* specify type of physical I/O */
  siu_exc_assert (ulaw >= -1 && ulaw <= 2, &siuCfg);

  /* NOTE: physical I/O type is used for Voice Coding Companding Law!!! */
  /*-----------------------------*/
  /* Initialize DSP Architecture */
  /*-----------------------------*/

  /* Initialize profiling */
  ecusim_profile_init ();
  
  /* Initialize heaps */
  cheap = mhmCreate (siu_core_heap, SIU_CORE_HEAP_SIZE,0);
  siu_exc_assert (cheap != NULL, &siuCfg);
  vheap = mhmCreate (siu_voice_heap, SIU_VOICE_HEAP_SIZE,0);
  siu_exc_assert (vheap != NULL, &siuCfg);

  /* Init SIU */
  siuCfg.companding_law = ulaw;                 /* physical I/O type */
  siuCfg.pcm_bits       = ecuSim->pcm_bits;    /* # of bits in physical I/O */
  siuCfg.core_heap      = cheap;
  siuCfg.voice_heap     = vheap;
  siuInit (&siuCfg);                /* inits siuContext & siuInst[] */

  /* from now on, deal with channel #1 */
  chnum = 1;
  inst = &siuInst[chnum-1];       /* SIU instance for channel #1 */

  frame_size = ecuSim->frame_size;     /* 5ms default */
  siu_exc_assert ((frame_size >= ecuSim->rxSGN.delay     &&  
                   frame_size >= ecuSim->txSGN.delay)    ||  
                  (ecuSim->rxSGN.wftype != sgn_WFT_FILE  &&  
                   ecuSim->txSGN.wftype != sgn_WFT_FILE), &siuCfg);
  do_freerun = FALSE;                   /* No free run until toggled */
  hyb_filter_length = ecuSim->hyb_filter_length;

  /* Alter ECU context based on siuSetup selections */
  ecuContext.max_filter_seg_length = ecuSim->ecu_fltseg_length; 
  ecuContext.max_filter_seg_count  = ecuSim->ecu_num_fltseg;

  /* Print some parameters (sorry, no printer available at this time) */

  /* Create some modules. Order is important:
   *  ECU, PIU must be in this order. */

  /* Create ECU module */
  siu_new_ecu (chnum);

  /* Create PIU module */
  siu_new_piu (chnum, (tint)SIU_MAX_FRAME_LENGTH);

#if ECU_SIM_USE_VPE  
  /* initialize signal limiter */
  retVal = slmGetSizes(&slmSize);
  if (retVal != slm_NOERR){
    ecuSim->error_id = ecu_SIM_ERR_SLM;
    ecuSim->exec = FALSE;
    ecu_halt (&ecuSim->exec);
  }
  inst->slmInst = malloc(slmSize);
  /* configure slm */
  slmCfg.valid_bf = 0;
  /* configure sampling rate */
  slmCfg.valid_bf |= 0x01;
  if (ecuSim->Fs == ecu_SIM_DEF_FS)
    slmCfg.srate_factor = slm_SRATE_FACTOR_8K;
  else
    slmCfg.srate_factor = slm_SRATE_FACTOR_16K;
  slmInit (inst->slmInst, &slmCfg);
#endif

  /* Allocate PIU Sample Segment Buffers */
  segment_in = (linSample*)siuCAlloc (FILEIO_FRM_FACTOR*frame_size*sizeof(linSample));
  inst->cheap_used += frame_size*sizeof(linSample);
  siu_exc_assert (segment_in != NULL, inst);
  utlLsMemSet (&segment_in[0], (linSample)0,FILEIO_FRM_FACTOR*frame_size);

  rx_segment_out = (linSample*)siuCAlloc (frame_size*sizeof(linSample));
  inst->cheap_used += frame_size*sizeof(linSample);
  siu_exc_assert (rx_segment_out != NULL, inst);
  /* Zero it out! */
  for (i = 0; i < frame_size; i++)
    rx_segment_out[i] = (linSample)0;

  /* Allocate receive in samples segment buffer */
  rx_frame_in = (linSample*)siuCAlloc(FILEIO_FRM_FACTOR*frame_size*sizeof(linSample));
  inst->cheap_used += frame_size*sizeof(linSample);
  siu_exc_assert (rx_frame_in != NULL, inst);
  utlLsMemSet (&rx_frame_in[0], (linSample)0,FILEIO_FRM_FACTOR*frame_size);

   /* Open Tx Task */
  siu_open_tx (chnum, frame_size);
  /* Open ECU module */
  siu_open_ecu (chnum, frame_size);

  /* Open PIU module */
  siu_open_piu (chnum, frame_size);

  /* Open Hybrid in Tx Path */
  siu_open_txhyb (chnum, frame_size, hyb_filter_length);
  /* Open Tx Signal Generator */
  siu_open_txsgn (chnum);
  /* Open Rx Signal Generator */
  siu_open_rxsgn (chnum);

  /* sync signal generation with PIU */
  piuCtrl.ctl_code                 = piu_SET_FRAME_SIZE;
  piuCtrl.u.set_frame.frame_size   = frame_size;
  piuControl (inst->piuInst, &piuCtrl);
  piu_segment_in  = (linSample *)(piuCtrl.u.set_frame.send_out_buf);
  piu_segment_out = (linSample *)(piuCtrl.u.set_frame.receive_in_buf);

  if (ecuSim->sig_src == ecu_SIM_SIG_SRC_FILE){
    /* open the input files */
    ecu_sim_fileio_init (&ecuSim->rin, ecu_SIM_FILEIO_READ);
    ecu_sim_fileio_init (&ecuSim->sin, ecu_SIM_FILEIO_READ);
    /* open output files */
    ecu_sim_fileio_init (&ecuSim->rout, ecu_SIM_FILEIO_WRITE);
    ecu_sim_fileio_init (&ecuSim->sout, ecu_SIM_FILEIO_WRITE);
  }
  else if (ecuSim->save_to_file == TRUE){
    /* rin file I/O init */
    strcpy((char *)ecuSim->rin.fname, "rin_sgn.pcm");
    /* sin file I/O init */
    strcpy((char *)ecuSim->sin.fname, "sin_sgn.pcm");
    /* rout file I/O init */
    strcpy((char *)ecuSim->rout.fname, "rout_sgn.pcm");
    /* sout file I/O init */
    strcpy((char *)ecuSim->sout.fname, "sout_sgn.pcm");
    ecu_sim_fileio_init (&ecuSim->rin, ecu_SIM_FILEIO_WRITE);
    ecu_sim_fileio_init (&ecuSim->sin, ecu_SIM_FILEIO_WRITE);
	  /* open output files */
    ecu_sim_fileio_init (&ecuSim->rout, ecu_SIM_FILEIO_WRITE);
    ecu_sim_fileio_init (&ecuSim->sout, ecu_SIM_FILEIO_WRITE);
  }


  /* Enter main loop */
  while (dataIn) {
    /* one segment of Tx samples generated in each pass!
     *  Rx frames are generated every segs_per_frame segments! */
    if (ecuSim->toggle_getflt) {
      ecuSim->toggle_getflt = FALSE;
      if (ecuSim->getflt.ncoeff > SIU_MAX_GETFLT) {
        ecuSim->getflt.ncoeff = SIU_MAX_GETFLT;
      }
      ecuSim->getflt.retstat = ecuGetFilter (inst->ecuInst,
                               ecuSim->getflt.select, ecuSim->getflt.start,
                               ecuSim->getflt.ncoeff, &siu_getflt[0]);
    }
    if (ecuSim->toggle_ecu) {
      ecuSim->toggle_ecu = FALSE;
      ecuControl (inst->ecuInst, (ecuControl_t*)&ecuSim->ecuCtl);
    }
    if (ecuSim->toggle_piu) {
      ecuSim->toggle_piu = FALSE;
      piuControl (inst->piuInst, (piuControl_t*)&ecuSim->piuCtl);
    }
    if (ecuSim->toggle_tx_sg) {
      ecuSim->toggle_tx_sg = FALSE;
      ecuSim->txSGN.state = !ecuSim->txSGN.state;
      siu_set_sgn (sgnTxInst, (siuSGNPars_t*)&ecuSim->txSGN);
    }
    if (ecuSim->toggle_rx_sg) {
      ecuSim->toggle_rx_sg = FALSE;
      ecuSim->rxSGN.state = !ecuSim->rxSGN.state;
      siu_set_sgn (sgnRxInst, (siuSGNPars_t*)&ecuSim->rxSGN);
    }
    if (ecuSim->toggle_hyb) {
      ecuSim->toggle_hyb = FALSE;
      hybControl (hybTxInst, (hybControl_t*)&ecuSim->hybCtl);
    }
    if (ecuSim->toggle_freerun) {
      ecuSim->toggle_freerun = FALSE;
      seg_count  = ecuSim->freerun_frame_cnt;
      do_freerun = TRUE;
    }
#if ECU_SIM_USE_VPE  
    if (ecuSim->toggle_slm) {
      ecuSim->toggle_slm = FALSE;
      slmControl (inst->slmInst, ecuSim->slm_mode);
    }
#endif      

    /* Allow dynamic profiling enable/disable */
    ecuProfile.enabled = ecuSim->profile_enable;

    /* Free running over many frames */
    if (do_freerun) {
      if (seg_count-- < 0) {
        /* Place breakpoint here */
        do_freerun = FALSE;
        asm (" nop");
        asm (" nop");
      }
    }

    /* RX Frame MUST be generated before piuPcmIo() starts!!! */
    dataIn = generate_rx_tone_frame (frame_size, rx_frame_in);

	  /* if signal is from SGN and want to save to a file */
    if ((ecuSim->sig_src      == ecu_SIM_SIG_SRC_SGN) && 
        (ecuSim->save_to_file == TRUE)) {
      /* write rin to a file */
      ecu_sim_output (rinBuffer, rx_frame_in);
      ecu_sim_fwrite (rinBuffer, ecuSim->frame_size, &ecuSim->rin);
    }
#if ECU_SIM_USE_VPE  
    slmProcess (inst->slmInst, rx_frame_in, frame_size);
#endif
    piuReceiveIn (inst->piuInst, rx_frame_in);

    /* Now generate TX segment */
    if (ecuSim->sig_src == ecu_SIM_SIG_SRC_SGN) {
      generate_tx_tone_frame (frame_size, segment_in);
      /* Implement hybrid simulation */
      hybAddEcho (hybTxInst, &segment_in[0], &rx_segment_out[0]);
      /* if signal is from SGN and want to save to a file */
      if ((ecuSim->sig_src      == ecu_SIM_SIG_SRC_SGN) && 
          (ecuSim->save_to_file == TRUE)){
        ecu_sim_output (sinBuffer, segment_in);
        ecu_sim_fwrite (sinBuffer, ecuSim->frame_size, &ecuSim->sin);
	    }
    }
    else {
      dataIn &= ecu_sim_fread (sinBuffer, frame_size, &ecuSim->sin);
      ecu_sim_input (sinBuffer, segment_in);
    }

    /* Convert near-end signal into u/A-law */
    convert_tx_tone_frame (frame_size, inst->companding_law, &segment_in[0]);

    piuSendIn (inst->piuInst, (tword **) &piu_segment_in, 0, frame_size);
    piuReceiveOut (inst->piuInst, (tword **) &piu_segment_out, 0, frame_size);

    /* Explicitly call ecuSendIn() every frame */
    ecusim_profile_start ();
    ecuSendIn (inst->TxInst.TxSendOut.targetInst, inst->TxInst.send_frame_ptr,
               inst->TxInst.recv_frame_ptr, ecu_out_buf_start);
    ecusim_profile_stop ();
    ecusim_profile_print ();
    
    /* copy out resulting samples */
    for (i=0; i<inst->TxInst.send_frame_length; i++) {
      siuOutErrStream[i] = ecu_out_buf_start[i];
    }

    /* write Sout to output file */
    if ( (ecuSim->sig_src == ecu_SIM_SIG_SRC_FILE) || 
	      ((ecuSim->sig_src == ecu_SIM_SIG_SRC_SGN ) && 
         (ecuSim->save_to_file == TRUE))) {
      ecu_sim_output (soutBuffer, siuOutErrStream);
      ecu_sim_fwrite (soutBuffer, ecuSim->frame_size, &ecuSim->sout);
	  }

    /* Convert piu_segment_out to rx_segment_out */
    if (inst->companding_law == const_COMP_MULAW_8) {
      for (i=0; i<frame_size; i++) {
        rx_segment_out[i] = (linSample)muaTblUlaw[piu_segment_out[i]];
      }
    }
    else if (inst->companding_law == const_COMP_ALAW_8) {
      for (i=0; i<frame_size; i++) {
        rx_segment_out[i] = (linSample)muaTblAlaw[piu_segment_out[i]];
      }
    }
    else if (inst->companding_law == const_COMP_LINEAR) {
      for (i=0; i<frame_size; i++) {
        rx_segment_out[i] = (linSample) (piu_segment_out[i] << (16 - inst->pcm_bits));
      }
    }
    else {                          /* use u-law in transparent mode */
      for (i=0; i<frame_size; i++) {
        rx_segment_out[i] = (linSample)muaTblUlaw[piu_segment_out[i]];
      }
    }

    /* write rout (really Rin) to output file */
    if ( (ecuSim->sig_src == ecu_SIM_SIG_SRC_FILE) || 
	      ((ecuSim->sig_src == ecu_SIM_SIG_SRC_SGN ) && 
         (ecuSim->save_to_file == TRUE))) {
      ecu_sim_output (routBuffer, rx_segment_out);
      ecu_sim_fwrite (routBuffer, ecuSim->frame_size, &ecuSim->rout);
	  }

    /* Update sample count and notify time progress */
    sample_count += ecuSim->frame_size;
    if (sample_count >= ecuSim->Fs) {
      sample_count -= ecuSim->Fs;
      sec_count++;
      printf (" - Progress: %d seconds\n", sec_count);
    }

    /* Check for simulation progress */
    ecuSim->sample_cnt = ((tulong)sec_count * ecuSim->Fs) + sample_count;
  }
  /* Close profiling */
  ecusim_profile_close ();
  
  /* close files if needed */
  if ( (ecuSim->sig_src == ecu_SIM_SIG_SRC_FILE) || 
	    ((ecuSim->sig_src == ecu_SIM_SIG_SRC_SGN)  && 
       (ecuSim->save_to_file == TRUE))) {
    ecu_sim_fileio_end (&ecuSim->rin);   
    ecu_sim_fileio_end (&ecuSim->sin);
    ecu_sim_fileio_end (&ecuSim->rout);
    ecu_sim_fileio_end (&ecuSim->sout);
  }
  ecuSim->error_id = ecu_SIM_END;
  ecuSim->exec     = FALSE;
  //ecu_halt (&ecuSim->exec);
} /* main */                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
 
/* end of ecusim.c*/


