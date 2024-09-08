/*-----------------------------------------------------------------
 * Filename:  vpesim.c
 *                            
 * Description: Test the vpe API functions.
 * 
 *        Copyright (c) 2007 � 2013 Texas Instruments Incorporated                
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
 *  other than combinations with devices manufactured by or for TI (�TI           
 *  Devices�).  No hardware patent is licensed hereunder.                         
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
 *  THIS SOFTWARE IS PROVIDED BY TI AND TI�S LICENSORS "AS IS" AND ANY EXPRESS    
 *  OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED             
 *  WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE        
 *  DISCLAIMED. IN NO EVENT SHALL TI AND TI�S LICENSORS BE LIABLE FOR ANY         
 *  DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES    
 *  (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR            
 *  SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER    
 *  CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT            
 *  LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY     
 *  OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH   
 *  DAMAGE.                                                                       
 *-----------------------------------------------------------------*/

/* ANSI C headers */
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

/* RTSC headers */
#include <ti/mas/types/types.h>
#include <ti/mas/fract/fract.h>
#include <ti/mas/types/const.h>
#include <ti/mas/util/ecomem.h>

/* for signal generator */
#include <ti/mas/sdk/sgn.h>

/* unit test includes */
#include <ti/mas/vpe/test/src/vpesim.h>
//
/* Global simulation data */
linSample vpeIOBufs[vpe_SIM_MAX_SAMPLES];
vpeSimConfig_t  vpeSimC;
vpeSimConfig_t *vpeSim = &vpeSimC;

/* Global PCM data buffers */
linSample sigInBuffer [2*vpe_SIM_MAX_SAMPLES * sizeof(linSample)/sizeof(tword)];
linSample sigOutBuffer[2*vpe_SIM_MAX_SAMPLES * sizeof(linSample)/sizeof(tword)];

/* Delay line and input buffer for source rate converter */
linSample decimDelayLine[VPE_SIM_DECIM_DELAY_LEN];
linSample interpDelayLine[VPE_SIM_INTERP_DELAY_LEN];


/*-----------------------------------------------------------------
 * Function:  vpe_banner_print
 *                            
 * Description: Utility to provide major progress information.
 *-----------------------------------------------------------------*/
static inline void vpe_banner_print (char *str)
{
  vpe_print ("\n");
  vpe_print ("------------------------------\n");
  vpe_print (str);
  vpe_print ("------------------------------\n");
  vpe_print ("\n");
}


/* slm instance */
void *slmInst_ptr = NULL;

/* hlc instance */
void *hlcInst_ptr = NULL;
hlcControl_t hctrlInst, *hctrlInst_ptr = &hctrlInst;

/* snl instance */
void *snlInst_ptr = NULL;
/* snl results */
Fract spchLevdB = frct_MAX, noiseLevdB = frct_MAX;
UFract Nthresh = frct_MAX;
/* snl result out file I/O structure */
vpeSimFileIo_t snlLevOut;    

/* svd instance */
void *svdInst_ptr = NULL;

/* svd result out file I/O structure */
vpeSimFileIo_t svdOut;    

/* nr instance */
void *nrInst_ptr  = NULL;

/* sgn instance */
void *sgnInst_ptr = NULL;

/*-----------------------------------------------------------------
 * Filename:  main
 *                            
 * Description: Test the vpe API functions.
 *-----------------------------------------------------------------*/
void test(void)
{
  linSample *buf_Inptr = (linSample *)sigInBuffer;
  linSample *buf_Outptr = (linSample *)sigOutBuffer;
  LFract svd_sig_pow;
  
  tulong sample_total;
  tbool sigIn_data; 
  tuint second_count;
  tuint sample_count, num_tuint_in, num_tuint_out;
  tint  i, retVal, vad_flag;

  /* Initialize for simulation */
  vpe_sim_init();

  /* read VPE simulation configuration */
  vpe_sim_read_cfg();
  
  /* Opportunity to uniquely configure simulation */
  vpe_halt (&vpeSim->exec);

  /* Progress (verbose only) */
//  vpe_banner_print ("Simulation:  BEGIN\n");

  vpe_init();
  
  /* Main (file) simulation loop */ 
//  while (vpeSim->exec) {
    /* Simulation pass initialization */
    vpeSim->data = TRUE;
    if (!vpeSim->sgn){
      /* Load I/O files */
      vpe_sim_fileio_init (&vpeSim->sigIn,  vpe_SIM_FILEIO_READ);
      vpe_sim_fileio_init (&vpeSim->sigOut, vpe_SIM_FILEIO_WRITE);
    }
    if(vpeSim->snl_on){
      /* Load I/O files */
      vpe_sim_fileio_init (&snlLevOut, vpe_SIM_FILEIO_WRITE);
    }
    if(vpeSim->svd_on){
      /* Load I/O files */
      vpe_sim_fileio_init (&svdOut, vpe_SIM_FILEIO_WRITE);
    }

    /* Single test/example simulation loop */
    second_count = 0;
    sample_count = 0;
//    while (vpeSim->data) {
    
      vpe_sim_flush_cache();

      /* if use sgn */
      if (vpeSim->sgn){
        /* configure sgn */
        if (vpeSim->cfg_sgn) {
          vpeSim->cfg_sgn = FALSE;
          vpe_sim_set_sgn (sgnInst_ptr, &vpeSim->sgnParam, vpeSim->Fs);
        }
        vpe_sim_gen_frame (sgnInst_ptr, vpeSim->frame_size_in, buf_Inptr);
      }
      else{
        /* Read input data from file */
        num_tuint_in = vpeSim->frame_size_in;
        if(vpeSim->ulaw_dec_on || vpeSim->alaw_dec_on) {
          num_tuint_in /= 2; /* mu-law or A-law input is byte */
        }
        sigIn_data = vpe_sim_fread (vpeIOBufs, num_tuint_in, &vpeSim->sigIn);
        vpeSim->data = sigIn_data;

        /* change little endian to big endian */
        if(vpeSim->ulaw_dec_on || vpeSim->alaw_dec_on) {
          for (i=0; i<num_tuint_in; i++) {
            vpeIOBufs[i] = ((vpeIOBufs[i]>>8)&0x0ff) | ((vpeIOBufs[i]&0x0ff)<<8);
          }
        }
      }

      if (vpeSim->ulaw_dec_on) {
        pcmUlawDecoderP((tuint *)vpeIOBufs, buf_Inptr, vpeSim->frame_size_out);
      }
      else if (vpeSim->alaw_dec_on) {
        pcmAlawDecoderP((tuint *)vpeIOBufs, buf_Inptr, vpeSim->frame_size_out);
      }
      else {
        for (i=0;i<vpeSim->frame_size_in;i++){
          buf_Inptr[i] = vpeIOBufs[i]; 
        }
      }

      /* Run NR if enabled */
      if(vpeSim->nr_on) {
        retVal = asnrProcess(nrInst_ptr, buf_Inptr, buf_Inptr);
        if (retVal != asnr_NOERR) {
          printf("Error returned by asnrProcessn() = %d!\n", retVal);
          exit(0);
        }
      }
      
      /* Run hlc if enabled */
      if (vpeSim->hlc_on){
        if (vpeSim->cfg_hlc) {
          vpeSim->cfg_hlc = FALSE;
          retVal = hlcControl(hlcInst_ptr, &vpeSim->hlc_ctrl);
          if (retVal != hlc_NOERR){
            vpeSim->error_id = vpe_SIM_ERR_5;
            vpeSim->exec = FALSE;
            vpe_halt (&vpeSim->exec);
          }
        }
        retVal = hlcProcess(hlcInst_ptr, buf_Inptr);
        if (retVal != hlc_NOERR){
          vpeSim->error_id = vpe_SIM_ERR_1;
          vpeSim->exec = FALSE;
          vpe_halt (&vpeSim->exec);
        }
      }
	  
      if(vpeSim->decim_on) {
        /* form the input buffer - holding delay line and input data */
        for (i=0;i<vpeSim->frame_size_in;i++){
          decimDelayLine[VPE_SIM_DECIM_FILT_DEL+i] = buf_Inptr[i]; 
        }
        
        /* decimate by 2 */
        sfcDecimationBy2(decimDelayLine, buf_Inptr, NULL,
                         sfc_DEF_FILT_LEN, vpeSim->frame_size_in);

        /* shift samples in the delay line */                         
        for (i=0;i<VPE_SIM_DECIM_FILT_DEL;i++){
          decimDelayLine[i] = decimDelayLine[vpeSim->frame_size_in+i]; 
        }
      }

      if(vpeSim->interp_on) {
        /* form the input buffer - holding delay line and input data */
        for (i=0;i<vpeSim->frame_size_in;i++){
          interpDelayLine[VPE_SIM_INTERP_FILT_DEL+i] = buf_Inptr[i]; 
        }
        
        /* interpolate by 2 */
        sfcInterpolationBy2(interpDelayLine, buf_Inptr, NULL, 
                            sfc_DEF_FILT_LEN, vpeSim->frame_size_in);

        /* shift samples in the delay line */                         
        for (i=0;i<VPE_SIM_INTERP_FILT_DEL;i++){
          interpDelayLine[i] = interpDelayLine[vpeSim->frame_size_in+i]; 
        }
      }
      
      /* Run snl if enabled */
      if (vpeSim->snl_on ){
        /* calculate snl */
        retVal = snlProcess (snlInst_ptr, buf_Inptr, vpeSim->frame_size_out);
        retVal = snlGetLevels (snlInst_ptr, &spchLevdB, &noiseLevdB, &Nthresh);

        /* write SNL results to a file */
//        vpe_sim_fwrite (&spchLevdB, 1, &snlLevOut);
//        vpe_sim_fwrite (&noiseLevdB, 1, &snlLevOut);
//        vpe_sim_fwrite ((Fract *)&Nthresh, 1, &snlLevOut);
      }

      /* Run svd if enabled */
      if (vpeSim->svd_on ){
        /* run svd and get decisions */
        retVal = svdProcess (svdInst_ptr, buf_Inptr, vpeSim->frame_size_out);
        vad_flag = svdGetDecision (svdInst_ptr, &svd_sig_pow);
        retVal = svdGetLevels (svdInst_ptr, &spchLevdB, &noiseLevdB, &Nthresh);
        
        /* write SVD results to a file */
//        vpe_sim_fwrite (&vad_flag, 1, &svdOut);
//        vpe_sim_fwrite (&spchLevdB, 1, &svdOut);
//        vpe_sim_fwrite (&noiseLevdB, 1, &svdOut);
//        vpe_sim_fwrite ((linSample *)&Nthresh, 1, &svdOut);
//        vpe_sim_fwrite ((linSample *)&svd_sig_pow, 2, &svdOut);
      }

      /* copy to output buffer */
      for (i=0;i<vpeSim->frame_size_out;i++){
        buf_Outptr[i] = buf_Inptr[i]; 
      }   
	  
      /* Run slm if enabled */
      if(vpeSim->slm_on){
        if(vpeSim->cfg_slm){
          vpeSim->cfg_slm = FALSE;
          retVal = slmControl(slmInst_ptr, vpeSim->slm_mod);
          if (retVal != slm_NOERR){
            vpeSim->error_id = vpe_SIM_ERR_8;
            vpeSim->exec = FALSE;
            vpe_halt (&vpeSim->exec);
          }
        }
        retVal = slmProcess (slmInst_ptr, buf_Outptr, vpeSim->frame_size_out);
        if (retVal != slm_NOERR){
          vpeSim->error_id = vpe_SIM_ERR_2;
          vpeSim->exec = FALSE;
          vpe_halt (&vpeSim->exec);
        }
      }
      
      if (vpeSim->ulaw_enc_on) {
        pcmUlawEncoderP(buf_Outptr, (tuint *)vpeIOBufs, vpeSim->frame_size_out);
      }
      else if (vpeSim->alaw_enc_on) {
        pcmAlawEncoderP(buf_Outptr, (tuint *)vpeIOBufs, vpeSim->frame_size_out);
      }

      /* copy to intermediate storage buffer */
      for (i=0;i<vpeSim->frame_size_out;i++){
        vpeIOBufs[i] = buf_Outptr[i]; 
      }
            
      /* copy to storage buffer if not using sgn */
      if (!vpeSim->sgn){
        num_tuint_out = vpeSim->frame_size_out;
        if(vpeSim->ulaw_enc_on || vpeSim->alaw_enc_on) {
          num_tuint_out /= 2;
          
          /* change big endian to little endian */
            for (i=0; i<num_tuint_out; i++) {
            buf_Outptr[i] = ((vpeIOBufs[i]>>8)&0x0ff) | ((vpeIOBufs[i]&0x0ff)<<8);
          }          
        }
        /* copy to a output buffer */
        for (i=0;i<num_tuint_out;i++){
          vpeIOBufs[i] = buf_Outptr[i];
        }
        /* write to a file */
//        vpe_sim_fwrite (buf_Outptr, num_tuint_out, &vpeSim->sigOut);
      }// end of if (vpeSim->sgn)
 
      /* Update sample count and notify time progress */
      sample_count += vpeSim->frame_size_in;
      if (sample_count >= vpeSim->Fs) {
        sample_count -= vpeSim->Fs;
        second_count++;
//        printf (" - Progress: %d seconds\n", second_count);
      }

      /* Check for simulation halt */
      sample_total = (tulong) second_count * vpeSim->Fs + sample_count;
      if ((vpeSim->sample_bp != 0)            &&
          (sample_total >= vpeSim->sample_bp) && 
          (sample_total  - vpeSim->sample_bp) < vpeSim->frame_size_in) {
//        vpe_iprint (" - Halting after %d samples\n", sample_total);
        vpeSim->exec = FALSE;
        vpe_halt (&vpeSim->exec);
      }
      vpeSim->sample_cnt = sample_total;
//    } /* vpeSim->data */
//
    vpeSim->exec = FALSE;
//    if (!vpeSim->sgn) {
//      /* Close input files if using file I/O */
//      vpe_sim_fileio_end (&vpeSim->sigIn);
//      /* Check for output file close */
//      vpe_sim_fileio_end (&vpeSim->sigOut);
//    }
//    if(vpeSim->snl_on) {
//      /* Check for output file close */
//      vpe_sim_fileio_end (&snlLevOut);
//    }
//
//    if(vpeSim->svd_on) {
//      /* Check for output file close */
//      vpe_sim_fileio_end (&svdOut);
//    }

    /* Progress (verbose only) */
//    vpe_banner_print ("Simulation:  END\n");
    /* End of current simulation test/example */

//  } /* vpeSim->exec */

  if(vpeSim->nr_on) {
    vpe_deinstantiate_nr();
  }
  
  /* End of simulation */
//  printf("Simulation done.\n");
} /* main */

/* Nothing past this point */
