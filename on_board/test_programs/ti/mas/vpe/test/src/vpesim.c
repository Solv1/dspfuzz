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
#include <ti/mas/vpe/asnr.h>
#include <ti/mas/vpe/test/src/nrbufst.h>
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


/* Global simulation data */
char vpe_sim_global_str[vpe_SIM_MAX_STRING];
char vpe_sim_print_str[vpe_SIM_MAX_STRING];

tint vpe_sim_fsk_data[vpe_SGN_DEF_FSK_DATA_LEN] = {0x7e7e};


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
void *nr_handle = NULL;

/* sgn instance */
void *sgnInst_ptr = NULL;


void  vpe_sim_fileio_init   (vpeSimFileIo_t *fioptr, tuint code);
void  vpe_sim_fileio_end    (vpeSimFileIo_t *fioptr);
void  vpe_sim_init          (int16_t * input);
int16_t  vpe_init              (int16_t * input);
// extern tbool vpe_sim_fread         (linSample *buf, tint buf_size, vpeSimFileIo_t *fioptr);
tbool vpe_sim_fread         (linSample *buf, tint buf_size, int16_t * inptr, int16_t size);
void  vpe_sim_fwrite        (linSample *buf, tint buf_size, vpeSimFileIo_t *fioptr);
void  vpe_sim_input_mux     (void);
void  vpe_sim_output_mux    (void);
void  vpe_print             (char *str);
void  vpe_iprint            (char *str, tlong ivar);
void  vpe_sprint            (char *str, char *svar);
void  vpe_sim_open_sgn      (void *inst, int16_t * input);
void  vpe_sim_set_sgn (void *inst, vpeSGNPars_t *sgn, tint Fs);
void  vpe_sim_gen_frame     (void *inst, tint frame_size, linSample *frame);
sgnFileIo_t *vpe_sim_in_file(sgnFileIo_t *dsc);
int16_t  vpe_instantiate_nr(tint srate);
int16_t  vpe_config_nr(vpeASNRPars_t *asnr_params);
int16_t  vpe_deinstantiate_nr();
void  vpe_sim_flush_cache();
void  vpe_sim_read_cfg(int16_t * input);

int16_t vpe_deinstantiate_nr();
int16_t vpe_config_nr(vpeASNRPars_t *asnr_params);
int16_t vpe_instantiate_nr(tint srate);

/*-----------------------------------------------------------------
 * Filename:  main
 *                            
 * Description: Test the vpe API functions.
 *-----------------------------------------------------------------*/
int16_t telecom_test(int16_t * input, int16_t size)
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
  vpe_sim_init(input);

  /* read VPE simulation configuration */
  vpe_sim_read_cfg(input);
  
  if(vpeSim->exec == 0){
  
    return 1;
  }
  retVal = vpe_init(input);
  if (retVal > 0){
  
    return retVal;
  }
  

  /* Main (file) simulation loop */ 
//  while (vpeSim->exec) {
    /* Simulation pass initialization */
    vpeSim->data = TRUE;

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
      // else{
      //   /* Read input data from file */
      //   num_tuint_in = vpeSim->frame_size_in;
      //   if(vpeSim->ulaw_dec_on || vpeSim->alaw_dec_on) {
      //     num_tuint_in /= 2; /* mu-law or A-law input is byte */
      //   }
      //   sigIn_data = vpe_sim_fread (vpeIOBufs, num_tuint_in, input, size);
      //   vpeSim->data = sigIn_data;

      //   /* change little endian to big endian */
      //   if(vpeSim->ulaw_dec_on || vpeSim->alaw_dec_on) {
      //     for (i=0; i<num_tuint_in; i++) {
      //       vpeIOBufs[i] = ((vpeIOBufs[i]>>8)&0x0ff) | ((vpeIOBufs[i]&0x0ff)<<8);
      //     }
      //   }
      // }

      // if (vpeSim->ulaw_dec_on) {
      //   pcmUlawDecoderP((tuint *)vpeIOBufs, buf_Inptr, vpeSim->frame_size_out);
      // }
      // else if (vpeSim->alaw_dec_on) {
      //   pcmAlawDecoderP((tuint *)vpeIOBufs, buf_Inptr, vpeSim->frame_size_out);
      // }
      for (i=0;i<vpeSim->frame_size_in;i++){
        buf_Inptr[i] = vpeIOBufs[i]; 
      }

      /* Run NR if enabled */
      if(vpeSim->nr_on) {
        retVal = asnrProcess(nrInst_ptr, buf_Inptr, buf_Inptr);
        if (retVal != asnr_NOERR) {
        
          return retVal;
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
          
            return vpe_SIM_ERR_5;
          }
        }
        retVal = hlcProcess(hlcInst_ptr, buf_Inptr);
        if (retVal != hlc_NOERR){
          vpeSim->error_id = vpe_SIM_ERR_1;
          vpeSim->exec = FALSE;
        
          return vpe_SIM_ERR_1;

        }
      }
	  
      //  if(vpeSim->decim_on) {
      //    /* form the input buffer - holding delay line and input data */
      //    for (i=0;i<vpeSim->frame_size_in;i++){
      //      decimDelayLine[VPE_SIM_DECIM_FILT_DEL+i] = buf_Inptr[i];
      //    }
        
      //    /* decimate by 2 */
      //    sfcDecimationBy2(decimDelayLine, buf_Inptr, NULL,
      //                     sfc_DEF_FILT_LEN, vpeSim->frame_size_in);

      //    /* shift samples in the delay line */
      //    for (i=0;i<VPE_SIM_DECIM_FILT_DEL;i++){
      //      decimDelayLine[i] = decimDelayLine[vpeSim->frame_size_in+i];
      //    }
      //  }

      //  if(vpeSim->interp_on) {
      //    /* form the input buffer - holding delay line and input data */
      //    for (i=0;i<vpeSim->frame_size_in;i++){
      //      interpDelayLine[VPE_SIM_INTERP_FILT_DEL+i] = buf_Inptr[i];
      //    }
        
      //    /* interpolate by 2 */
      //    sfcInterpolationBy2(interpDelayLine, buf_Inptr, NULL,
      //                        sfc_DEF_FILT_LEN, vpeSim->frame_size_in);

      //    /* shift samples in the delay line */
      //    for (i=0;i<VPE_SIM_INTERP_FILT_DEL;i++){
      //      interpDelayLine[i] = interpDelayLine[vpeSim->frame_size_in+i];
      //    }
      //  }
      
      /* Run snl if enabled */
      if (vpeSim->snl_on ){
        /* calculate snl */
        retVal = snlProcess (snlInst_ptr, buf_Inptr, vpeSim->frame_size_out);
        if(retVal != 0){
        
          return 1;
        }
        retVal = snlGetLevels (snlInst_ptr, &spchLevdB, &noiseLevdB, &Nthresh);
        if(retVal != 0){
        
          return 1;
        }

        /* write SNL results to a file */
//        vpe_sim_fwrite (&spchLevdB, 1, &snlLevOut);
//        vpe_sim_fwrite (&noiseLevdB, 1, &snlLevOut);
//        vpe_sim_fwrite ((Fract *)&Nthresh, 1, &snlLevOut);
      }

      /* Run svd if enabled */
      if (vpeSim->svd_on ){
        /* run svd and get decisions */
        retVal = svdProcess (svdInst_ptr, buf_Inptr, vpeSim->frame_size_out);
        if(retVal != 0){
        
          return 1;
        }
        vad_flag = svdGetDecision (svdInst_ptr, &svd_sig_pow);
        retVal = svdGetLevels (svdInst_ptr, &spchLevdB, &noiseLevdB, &Nthresh);
        if(retVal != 0){
        
          return 1;
        }
        
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
          
            return vpe_SIM_ERR_8;
            // vpe_halt (&vpeSim->exec);
          }
        }
        retVal = slmProcess (slmInst_ptr, buf_Outptr, vpeSim->frame_size_out);
        if (retVal != slm_NOERR){
          vpeSim->error_id = vpe_SIM_ERR_2;
          vpeSim->exec = FALSE;
        
          return vpe_SIM_ERR_2;
          // vpe_halt (&vpeSim->exec);
        }
      }
      
      // if (vpeSim->ulaw_enc_on) {
      //   pcmUlawEncoderP(buf_Outptr, (tuint *)vpeIOBufs, vpeSim->frame_size_out);
      // }
      // else if (vpeSim->alaw_enc_on) {
      //   pcmAlawEncoderP(buf_Outptr, (tuint *)vpeIOBufs, vpeSim->frame_size_out);
      // }

      // /* copy to intermediate storage buffer */
      // for (i=0;i<vpeSim->frame_size_out;i++){
      //   vpeIOBufs[i] = buf_Outptr[i]; 
      // }
            
//       /* copy to storage buffer if not using sgn */
//       if (!vpeSim->sgn){
//         num_tuint_out = vpeSim->frame_size_out;
//         if(vpeSim->ulaw_enc_on || vpeSim->alaw_enc_on) {
//           num_tuint_out /= 2;
          
//           /* change big endian to little endian */
//             for (i=0; i<num_tuint_out; i++) {
//             buf_Outptr[i] = ((vpeIOBufs[i]>>8)&0x0ff) | ((vpeIOBufs[i]&0x0ff)<<8);
//           }          
//         }
//         /* copy to a output buffer */
//         for (i=0;i<num_tuint_out;i++){
//           vpeIOBufs[i] = buf_Outptr[i];
//         }
//         /* write to a file */
// //        vpe_sim_fwrite (buf_Outptr, num_tuint_out, &vpeSim->sigOut);
//       }// end of if (vpeSim->sgn)
 
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
        // return vpe_SIM_ERR_5;
        // vpe_halt (&vpeSim->exec);
      }
      vpeSim->sample_cnt = sample_total;

  if(vpeSim->nr_on) {
    retVal = vpe_deinstantiate_nr();
    if (retVal != 0){
      return 1;
    }
  }
   /* main */
  return 0;
}
#define VPESIM_NUM_BYTES_LINSAMP 2
tword vpe_temp_io_buf[vpe_SIM_MAX_SAMPLES*VPESIM_NUM_BYTES_LINSAMP];

// tbool vpe_sim_fread (linSample *buf, tint buf_size, vpeSimFileIo_t *fioptr)
// tbool vpe_sim_fread (linSample *buf, tint buf_size, int16_t * inptr, int16_t size)
// {
//   //tuint num_read;
//   tint  i, j;

//   if(inptr == NULL){
//     return FALSE;
//   }
  
//   /* read the file*/
//   memcpy(vpe_temp_io_buf, inptr, size);
//   // num_read = fread(vpe_temp_io_buf, VPESIM_NUM_BYTES_LINSAMP, buf_size, fioptr->fptr);
  
//   // /* check for endo of file */
//   // if (num_read != (buf_size)) {
//   //     fioptr->eof = TRUE;
//   //     return FALSE;
//   // }


//   /* pack bytes into words */
//   for (i = 0, j = 0; i < buf_size; i++, j+=2)
//   {
//     buf[i]  = vpe_temp_io_buf[j] | (vpe_temp_io_buf[j+1] << 8);
//   }

//   return TRUE;
// }

/*-----------------------------------------------------------------
 * Function:  vpe_sim_init
 *                            
 * Description: vpe simulation initialization.
 *-----------------------------------------------------------------*/
void vpe_sim_init (int16_t * input)
{
  vpeSim->exec          = input[0];
  vpeSim->hlc_on        = input[1];
  vpeSim->slm_on        = input[2];
  vpeSim->snl_on        = input[3];
  vpeSim->svd_on        = input[4];
  vpeSim->nr_on         = input[5];
  vpeSim->decim_on      = input[6];
  vpeSim->interp_on     = input[7];
  vpeSim->ulaw_enc_on   = input[8];
  // vpeSim->ulaw_dec_on   = input[9];
  vpeSim->alaw_enc_on   = input[9];
  // vpeSim->alaw_dec_on   = input[11];
  // vpeSim->sgn           = input[12];
  // vpeSim->cfg_sgn       = input[13];
  vpeSim->sgn           = TRUE;
  vpeSim->cfg_sgn       = TRUE;
  vpeSim->cfg_hlc       = input[10];
  vpeSim->cfg_slm       = input[11];
  vpeSim->slm_mod       = slm_MODE5;

  vpeSim->sample_cnt    = 0;
  vpeSim->error_id      = 0;
  vpeSim->sample_bp     = 0L;
  vpeSim->pcmin_format  = vpe_SIM_PCM_LIN;
  vpeSim->pcmout_format = vpe_SIM_PCM_LIN;
   
  /* Simulation file I/O initialization */
 vpeSim->sigIn.fio   = FALSE;
 vpeSim->sigOut.fio  = FALSE;
 vpeSim->sigIn.fptr  = (FILE *) NULL;
 vpeSim->sigOut.fptr  = (FILE *) NULL;
//  strcpy (vpeSim->baseDir     , vpe_SIM_DEF_BASE_DIR);
//  strcpy (vpeSim->sigIn.fname , vpe_SIM_DEF_SIGIN_FNAME);
//  strcpy (vpeSim->sigOut.fname, vpe_SIM_DEF_SIGOUT_FNAME);
//  strcpy (vpeSim->config.fname, vpe_SIM_DEF_CONFIG_FNAME);
} /* vpe_sim_init */


/*-----------------------------------------------------------------
 * Function:  vpe_sim_read_cfg
 *                            
 * Description: Read vpe simulation configuration.
 *-----------------------------------------------------------------*/
void vpe_sim_read_cfg(int16_t * input)
{
  //FILE *test_cfg;
  int samp_freq;
  //, asnr_delay, asnr_band_bin1, asnr_band_bin2, asnr_noise_thresh; 
  //int asnr_sig_upd_rate_max, asnr_sig_upd_rate_min, asnr_noise_hangover; 
  //int asnr_band1_max_atten, asnr_band2_max_atten, asnr_band3_max_atten; 
  
  /* Create file path string */
//  strcpy (vpe_sim_global_str, vpeSim->baseDir);
//  strcat (vpe_sim_global_str, vpeSim->config.fname);
 
  /* Open file (read/write binary) and assign file pointer */
//  test_cfg = fopen (vpe_sim_global_str, "r");
//  if(test_cfg == NULL) {
//    printf("VPE configuration file does NOT exist!\n");
//    exit(0);
//  }
//
//  fscanf(test_cfg, "%d\n", &samp_freq);
//  fscanf(test_cfg, "%d\n", &asnr_delay);
//  fscanf(test_cfg, "%d\n", &asnr_band_bin1);
//  fscanf(test_cfg, "%d\n", &asnr_band_bin2);
//  fscanf(test_cfg, "%d\n", &asnr_band1_max_atten);
//  fscanf(test_cfg, "%d\n", &asnr_band2_max_atten);
//  fscanf(test_cfg, "%d\n", &asnr_band3_max_atten);
//  fscanf(test_cfg, "%d\n", &asnr_sig_upd_rate_max);
//  fscanf(test_cfg, "%d\n", &asnr_sig_upd_rate_min);
//  fscanf(test_cfg, "%d\n", &asnr_noise_thresh);
//  fscanf(test_cfg, "%d\n", &asnr_noise_hangover);
// TRYING THIS NEW
//  vpeSim->Fs = (tint)samp_freq;
samp_freq = input[0];
  vpeSim->Fs = samp_freq;
  if(samp_freq == VPE_SIM_SAMPLE_FREQ_16000) {
    vpeSim->asnrParam.samp_rate = asnr_SRATE_16K;
  }
  else {
    vpeSim->asnrParam.samp_rate = asnr_SRATE_8K;
  }

  // vpeSim->asnrParam.delay           = (tint)5;
  //   vpeSim->asnrParam.band_bin1       = (tint)10;
  //   vpeSim->asnrParam.band_bin2       = (tint)32;
  //   vpeSim->asnrParam.band1_max_atten = (tint)9;
  //   vpeSim->asnrParam.band2_max_atten = (tint)9;
  //   vpeSim->asnrParam.band3_max_atten = (tint)9;
  //   vpeSim->asnrParam.sig_upd_rate_max= (tint)31129;
  //   vpeSim->asnrParam.sig_upd_rate_min= (tint)29818;
  //   vpeSim->asnrParam.noise_thresh    = (tint)-75;
  //   vpeSim->asnrParam.noise_hangover  = (tint)150;
 vpeSim->asnrParam.delay           = (tint)input[12];
 vpeSim->asnrParam.band_bin1       = (tint)input[13];
 vpeSim->asnrParam.band_bin2       = (tint)input[14];
 vpeSim->asnrParam.band1_max_atten = (tint)input[15];
 vpeSim->asnrParam.band2_max_atten = (tint)input[16];
 vpeSim->asnrParam.band3_max_atten = (tint)input[17];
 vpeSim->asnrParam.sig_upd_rate_max= (tint)input[18];
 vpeSim->asnrParam.sig_upd_rate_min= (tint)input[19];
 vpeSim->asnrParam.noise_thresh    = (tint)input[20];
 vpeSim->asnrParam.noise_hangover  = (tint)input[21];
  
} /* vpe_sim_read_cfg */

/*-----------------------------------------------------------------
 * Function:  vpe_init
 *                            
 * Description: Create and initialize VPE modules.
 *-----------------------------------------------------------------*/

int16_t vpe_init (int16_t * input)
{
  hlcConfig_t hlc_cfg_info;
  slmConfig_t slm_cfg_info;
  tint hlcSize, slmSize, snlSize, svdSize, sgnSize;
  tint srate_factor, frame_size;
  
  tint retVal;

  if(vpeSim->Fs == VPE_SIM_SAMPLE_FREQ_16000) {  /* Fs is read from cfg file */
    frame_size = VPE_SIM_FRAME_SIZE_16000;
  }
  else {
    frame_size = VPE_SIM_FRAME_SIZE_8000;
    // frame_size = 1;
  }
  
  /* Simulation structure initialization */ 
  vpeSim->frame_size_in = frame_size;
  vpeSim->frame_size_out= frame_size;
  if(vpeSim->decim_on) {
    vpeSim->frame_size_out = frame_size/2;
    memset(decimDelayLine, 0, sizeof(linSample)*VPE_SIM_DECIM_FILT_DEL);
  }
  if(vpeSim->interp_on) {
    vpeSim->frame_size_out = frame_size * 2;
    memset(interpDelayLine, 0, sizeof(linSample)*VPE_SIM_INTERP_FILT_DEL);
  }  
  
  if (vpeSim->hlc_on){
    /* allocate memory for HLC */
    retVal = hlcGetSizes(&hlcSize);
    if (retVal != hlc_NOERR){
      vpeSim->error_id = vpe_SIM_ERR_3;
      vpeSim->exec = FALSE;
      return vpe_SIM_ERR_3;
      // vpe_halt (&vpeSim->exec);
    }

    hlcInst_ptr = malloc (hlcSize);
    /* init hlc */
    hlc_cfg_info.valid_bf = 0x00;  

    /* configure sampling rate */    
    hlc_cfg_info.valid_bf |= 0x10;  

    if (vpeSim->Fs == VPE_SIM_SAMPLE_FREQ_8000) {
      hlc_cfg_info.srate_factor = hlc_SRATE_FACTOR_8K;  /* 8kHz sampling rate */
    }
    else {
    hlc_cfg_info.srate_factor = hlc_SRATE_FACTOR_16K; /* 16kHz sampling rate */
    }

    /* configure frm_len */
    if (vpeSim->frame_size_out <= vpe_SIM_MAX_SAMPLES){
      hlc_cfg_info.valid_bf |= 0x08; /* configure frame length */
      hlc_cfg_info.frm_len = vpeSim->frame_size_out;
    }
    else{
      vpeSim->error_id = vpe_SIM_ERR_4;
      vpeSim->exec = FALSE;
      return vpe_SIM_ERR_4;
      // vpe_halt (&vpeSim->exec);
    }

    retVal = hlcInit(hlcInst_ptr, &hlc_cfg_info);
    if (retVal != hlc_NOERR){
      vpeSim->error_id = vpe_SIM_ERR_4;
      vpeSim->exec = FALSE;
      return vpe_SIM_ERR_4;
      // vpe_halt (&vpeSim->exec);
    }
    /* Enable HLC */
    hctrlInst_ptr->ctl_code = hlc_CTL_ENA;
    retVal = hlcControl(hlcInst_ptr, hctrlInst_ptr);
    if (retVal != hlc_NOERR){
      vpeSim->error_id = vpe_SIM_ERR_6;
      vpeSim->exec = FALSE;
      return vpe_SIM_ERR_6;
      // vpe_halt (&vpeSim->exec);
    }
  } /* if testing HLC */

  /* testing SLM */
  if (vpeSim->slm_on){
    /* allocate memory for SLM */
    retVal = slmGetSizes(&slmSize);
    if (retVal != slm_NOERR){
      vpeSim->error_id = vpe_SIM_ERR_9;
      vpeSim->exec = FALSE;
      return vpe_SIM_ERR_9;
      // vpe_halt (&vpeSim->exec);
    }
    slmInst_ptr = malloc (slmSize);

    /* init SLM, SLM is disabled */
    slm_cfg_info.valid_bf  = 0x00;
    /* configure sampling rate */
    slm_cfg_info.valid_bf |= 0x01; 
    if (vpeSim->Fs == VPE_SIM_SAMPLE_FREQ_8000) {
      slm_cfg_info.srate_factor = slm_SRATE_FACTOR_8K;
    }
    else {
      slm_cfg_info.srate_factor = slm_SRATE_FACTOR_16K;
    }

    retVal = slmInit (slmInst_ptr, &slm_cfg_info);
    if (retVal != slm_NOERR){
      vpeSim->error_id = vpe_SIM_ERR_7;
      vpeSim->exec = FALSE;
      return vpe_SIM_ERR_7;
      // vpe_halt (&vpeSim->exec);
    }
  } /* if testing SLM */

  /* testing SNL*/
  if (vpeSim->snl_on){
    retVal = snlGetSizes(&snlSize);
    if (retVal != snl_NOERR){
      vpeSim->error_id = vpe_SIM_ERR_10;
      vpeSim->exec = FALSE;
      return vpe_SIM_ERR_10;
      // vpe_halt (&vpeSim->exec);
    }
    snlInst_ptr = malloc (snlSize); 
    /* initialize SNL */
    if (vpeSim->Fs == VPE_SIM_SAMPLE_FREQ_8000) {
      srate_factor = snl_SRATE_FACTOR_8K;
    }
    else {
      srate_factor = snl_SRATE_FACTOR_16K;
    }

    retVal = snlInit (snlInst_ptr, srate_factor);
    if (retVal != snl_NOERR){
      vpeSim->error_id = vpe_SIM_ERR_11;
      vpeSim->exec = FALSE;
      return vpe_SIM_ERR_11;
      // vpe_halt (&vpeSim->exec);
    }
   strcpy (snlLevOut.fname, "snlLevOut.pcm");
   snlLevOut.fio   = FALSE;
   snlLevOut.fptr  = (FILE *) NULL;
  } /* end of testing SNL */

  /* testing SVD*/
  if (vpeSim->svd_on){
    retVal = svdGetSizes(&svdSize);
    if (retVal != svd_NOERR){
      vpeSim->error_id = vpe_SIM_ERR_17;
      vpeSim->exec = FALSE;
      return vpe_SIM_ERR_17;
      // vpe_halt (&vpeSim->exec);
    }
    svdInst_ptr = malloc (svdSize); 
    /* initialize SVD */
    if (vpeSim->Fs == VPE_SIM_SAMPLE_FREQ_8000) {
      srate_factor = svd_SRATE_8K;
    }
    else {
      srate_factor = svd_SRATE_16K;
    }

    retVal = svdInit (svdInst_ptr, srate_factor);
    if (retVal != svd_NOERR){
      vpeSim->error_id = vpe_SIM_ERR_18;
      vpeSim->exec = FALSE;
      return vpe_SIM_ERR_18;
      // vpe_halt (&vpeSim->exec);
    }

    strcpy (svdOut.fname, "svdOut.pcm");
    svdOut.fio   = FALSE;
    svdOut.fptr  = (FILE *) NULL;
  } /* end of testing SVD */
  
  if(vpeSim->nr_on) {
    if (vpeSim->Fs == VPE_SIM_SAMPLE_FREQ_8000) {
      srate_factor = asnr_SRATE_8K;
    }
    else {
    srate_factor = asnr_SRATE_16K;
    }
  
  retVal = vpe_instantiate_nr(srate_factor);
  if (retVal != 0){
    return retVal;
  }
	
	retVal = vpe_config_nr(&vpeSim->asnrParam);
  if (retVal != 0){
    return retVal;
  }

  }

  /* init sgn */
  // vpeSim->sgnParam.state     = 1;     
  // vpeSim->sgnParam.dcoffset  = vpe_SGN_DEF_DC_OFFSET;  
  // vpeSim->sgnParam.wftype    = vpe_SGN_DEF_WF_TYPE;    
  // vpeSim->sgnParam.f1        = vpe_SGN_DEF_F1;        
  // vpeSim->sgnParam.f2        = vpe_SGN_DEF_F2;        
  // vpeSim->sgnParam.amp1      = vpe_SGN_DEF_T_AMP1;      
  // vpeSim->sgnParam.amp2      = vpe_SGN_DEF_T_AMP2; 
  // vpeSim->sgnParam.nlevel    = vpe_SGN_DEF_NOISE_LEVEL;    
  // vpeSim->sgnParam.nseed     = vpe_SGN_DEF_NOISE_SEED;     
  // vpeSim->sgnParam.ntype     = vpe_SGN_DEF_NOISE_TYPE;     
  // vpeSim->sgnParam.pow_level = vpe_SGN_DEF_POWER_LEVEL; 
  // vpeSim->sgnParam.hoth_seed = vpe_SGN_DEF_HOTH_WNG_SEED; 
  vpeSim->sgnParam.state     = input[22];     
  vpeSim->sgnParam.dcoffset  = input[23];
  vpeSim->sgnParam.wftype    = input[24];
  vpeSim->sgnParam.f1        = input[25];        
  vpeSim->sgnParam.f2        = input[26];        
  vpeSim->sgnParam.amp1      = input[27];
  vpeSim->sgnParam.amp2      = input[28]; 
  vpeSim->sgnParam.nlevel    = input[29];    
  vpeSim->sgnParam.nseed     = input[30];     
  vpeSim->sgnParam.ntype     = input[31];     
  vpeSim->sgnParam.pow_level = input[32]; 
  vpeSim->sgnParam.hoth_seed = input[33]; 
        
  retVal = sgnGetSizes (&sgnSize);    
  sgnInst_ptr = malloc (sgnSize); 
  vpe_sim_open_sgn (sgnInst_ptr, input);

  return 0;
} /* vpe_init */

/*-----------------------------------------------------------------
 * Function:  vpe_sim_open_sgn
 *                            
 * Description: vpe simulation open signal generator
 *-----------------------------------------------------------------*/

void vpe_sim_open_sgn (void *inst, int16_t * input )
{
  sgnConfig_t cfg;  

  // cfg.dc_offset     = vpe_SGN_DEF_DC_OFFSET;
  // cfg.wf_type       = vpe_SGN_DEF_WF_TYPE;
  // cfg.f1            = vpe_SGN_DEF_F1;
  // cfg.f2            = vpe_SGN_DEF_F2;
  // cfg.Fs            = vpeSim->Fs;
  // cfg.t_amp1        = vpe_SGN_DEF_T_AMP1;
  // cfg.t_amp2        = vpe_SGN_DEF_T_AMP2;
  // cfg.pr_period     = vpe_SGN_DEF_PR_PERIOD;     /* # of samples between phase reversals */
  // cfg.pr_enable     = vpe_SGN_DEF_PR_ENABLE;     /* disable phase reversal */
  // cfg.noise_level   = vpe_SGN_DEF_NOISE_LEVEL;
  // cfg.noise_seed    = vpe_SGN_DEF_NOISE_SEED;
  // cfg.noise_type    = vpe_SGN_DEF_NOISE_TYPE;
  // cfg.fsk_duration  = vpe_SGN_DEF_FSK_DURATION;  /* 90/300 = 300ms */
  // cfg.fsk_dataptr   = &vpe_sim_fsk_data[vpe_SGN_DEF_FSK_DATA_LEN];
  // cfg.fsk_numword   = vpe_SGN_DEF_FSK_DATA_LEN;
  // cfg.power_level   = vpe_SGN_DEF_POWER_LEVEL;
  // cfg.hoth_wng_seed = vpe_SGN_DEF_HOTH_WNG_SEED;
  cfg.dc_offset     = input[23];
  cfg.wf_type       = input[24];
  cfg.f1            = input[25];
  cfg.f2            = input[26];
  cfg.Fs            = vpeSim->Fs;
  cfg.t_amp1        = input[27];
  cfg.t_amp2        = input[28];
  cfg.pr_period     = input[34];     /* # of samples between phase reversals */
  cfg.pr_enable     = input[35];     /* disable phase reversal */
  cfg.noise_level   = input[29];
  cfg.noise_seed    = input[30];
  cfg.noise_type    = input[31];
  cfg.fsk_duration  = input[36];  /* 90/300 = 300ms */
  cfg.fsk_dataptr   = &vpe_sim_fsk_data[vpe_SGN_DEF_FSK_DATA_LEN];
  cfg.fsk_numword   = vpe_SGN_DEF_FSK_DATA_LEN;
  cfg.power_level   = input[32];
  cfg.hoth_wng_seed = input[33];
  cfg.file_io_fcn   = vpe_sim_in_file;

  sgnInit (inst, &cfg);
} /* vpe_sim_open_sgn */

/*-----------------------------------------------------------------
 * Function:  vpe_sim_open_sgn
 *                            
 * Description: vpe simulation open signal generator
 *-----------------------------------------------------------------*/

void vpe_sim_set_sgn (void *inst, vpeSGNPars_t *sgn, tint Fs)
{
  sgnControl_t  ctl;

  if (sgn->state) {
    ctl.Fs        = Fs;
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
} /* set_sgn */


/******************************************************************************
 * FUNCTION PURPOSE: Generate a signal frame
 ******************************************************************************
 * DESCRIPTION: Generate a frame
 *
 *****************************************************************************/
void vpe_sim_gen_frame (void *inst, tint frame_size, linSample *frame)
{
  /* Generate one frame of samples */
  sgnGenerateFrame (inst, frame_size, frame);

} /* vpe_sim_gen_frame */

/* used to set probe point for the Tx/Rx input signal(s) */
linSample *inFrame, *outFrame;
tint      inCnt, outCnt;

sgnFileIo_t *vpe_sim_in_file (sgnFileIo_t *dsc)
{
  inFrame = dsc->frame;
  inCnt   = dsc->cnt;    
  asm (" nop");
  asm (" nop");
  asm (" nop");
  return (dsc);
} /* vpe_sim_in_file */

// sgnFileIo_t *vpe_sim_out_file (sgnFileIo_t *dsc)
// {
//   outFrame = dsc->frame;
//   outCnt   = dsc->cnt;    
//   asm (" nop");
//   asm (" nop");
//   asm (" nop");
//   return (dsc);
// } /* vpe_sim_out_file */


void vpe_sim_flush_cache() {
  return;
}

int16_t vpe_instantiate_nr(tint srate)
{
  const ecomemBuffer_t *bufs_req_by_nr;
  ecomemBuffer_t        bufs_alloc_for_nr[VPE_NR_NUM_BUFS];
  asnrSizeConfig_t        nr_size_cfg;
  asnrNewConfig_t         nr_new_cfg;
  asnrOpenConfig_t        nr_open_cfg;
  tint                  num_bufs_req_by_nr, status;
  int i;

  /* Get NR memory buffer requirements */
  nr_size_cfg.max_sampling_rate=srate;
  status = asnrGetSizes(&num_bufs_req_by_nr, &bufs_req_by_nr, &nr_size_cfg);
  if(status != asnr_NOERR) {
    // printf("Error returned by asnrGetSizes() = %d\n",status);
    // exit(0);
    return status;
  }
  
  if(num_bufs_req_by_nr != VPE_NR_NUM_BUFS) {
    // printf("NR needs %d buffers, but %d buffers are allocated!\n", 
    //         num_bufs_req_by_nr, VPE_NR_NUM_BUFS);
    // exit(0);
    return 3;
  }

  
  /* Statically allocate buffers for NR */ 
  for (i=0; i<num_bufs_req_by_nr; i++) {
    bufs_alloc_for_nr[i].mclass = ecomem_CLASS_INTERNAL; 
    bufs_alloc_for_nr[i].volat  = FALSE;         /* initialized to permanent */
  }
  bufs_alloc_for_nr[0].base      = &nr_buff0[0];
  bufs_alloc_for_nr[0].size      = NR_SIM_BUF0_SIZE;
  bufs_alloc_for_nr[0].log2align = NR_SIM_BUF0_ALGN_LOG2;  
  
  bufs_alloc_for_nr[1].base      = &nr_buff1[0];
  bufs_alloc_for_nr[1].size      = NR_SIM_BUF1_SIZE;
  bufs_alloc_for_nr[1].log2align = NR_SIM_BUF1_ALGN_LOG2;  
  bufs_alloc_for_nr[1].volat     = TRUE;
  
  bufs_alloc_for_nr[2].base      = &nr_buff2[0];
  bufs_alloc_for_nr[2].size      = NR_SIM_BUF2_SIZE;
  bufs_alloc_for_nr[2].log2align = NR_SIM_BUF2_ALGN_LOG2;  
  bufs_alloc_for_nr[2].volat     = TRUE;
  
  bufs_alloc_for_nr[3].base      = &nr_buff3[0];
  bufs_alloc_for_nr[3].size      = NR_SIM_BUF3_SIZE;
  bufs_alloc_for_nr[3].log2align = NR_SIM_BUF3_ALGN_LOG2;  
  bufs_alloc_for_nr[3].volat     = TRUE;
  
  bufs_alloc_for_nr[4].base      = &nr_buff4[0];
  bufs_alloc_for_nr[4].size      = NR_SIM_BUF4_SIZE;
  bufs_alloc_for_nr[4].log2align = NR_SIM_BUF4_ALGN_LOG2;  
  
  bufs_alloc_for_nr[5].base      = &nr_buff5[0];
  bufs_alloc_for_nr[5].size      = NR_SIM_BUF5_SIZE;
  bufs_alloc_for_nr[5].log2align = NR_SIM_BUF5_ALGN_LOG2;  

  bufs_alloc_for_nr[6].base      = &nr_buff6[0];
  bufs_alloc_for_nr[6].size      = NR_SIM_BUF6_SIZE;
  bufs_alloc_for_nr[6].log2align = NR_SIM_BUF6_ALGN_LOG2;  
  
  /* Create NR instance */
  nr_new_cfg.handle  = &nr_handle;
  nr_new_cfg.sizeCfg = nr_size_cfg;
  status = asnrNew(&nrInst_ptr, num_bufs_req_by_nr, bufs_alloc_for_nr, &nr_new_cfg);
  if (status != asnr_NOERR) {
    // printf("Error returned by asnrNew() = %d\n",status);
    // exit(0);
    return status;
  }
  
  /* Open newly created NR instance */
  nr_open_cfg.sampling_rate = srate;
  status = asnrOpen(nrInst_ptr, &nr_open_cfg);
  if (status != asnr_NOERR) {
    // printf("Error returned by asnrOpen() = %d!\n", status);
    // exit(0);
    return status;
  }
 return 0;
}  /* vpe_instantiate_nr */


/*-----------------------------------------------------------------
 * Function:  vpe_config_nr
 *                            
 * Description: Configure ASNR instance
 *-----------------------------------------------------------------*/
int16_t vpe_config_nr(vpeASNRPars_t *asnr_params)
{
  asnrControl_t nr_control_cfg;
  tint status;

  /* Configure NR parameters */
  nr_control_cfg.valid_bitfield =   asnr_CTL_VALID_ENABLE
                                  | asnr_CTL_VALID_SAMP_RATE
                                  | asnr_CTL_VALID_DELAY
                                  | asnr_CTL_VALID_BAND_BIN1
                                  | asnr_CTL_VALID_BAND_BIN2
                                  | asnr_CTL_VALID_BAND1_MAX_ATTEN
                                  | asnr_CTL_VALID_BAND2_MAX_ATTEN
                                  | asnr_CTL_VALID_BAND3_MAX_ATTEN
                                  | asnr_CTL_VALID_SIG_UPD_RATE_MIN
                                  | asnr_CTL_VALID_SIG_UPD_RATE_MAX
                                  | asnr_CTL_VALID_NOISE_THRESH
                                  | asnr_CTL_VALID_NOISE_HANGOVER;
  nr_control_cfg.enable          = 1;                                  
  nr_control_cfg.samp_rate       = asnr_params->samp_rate;
  nr_control_cfg.delay           = asnr_params->delay;
  nr_control_cfg.band_bin1       = asnr_params->band_bin1;
  nr_control_cfg.band_bin2       = asnr_params->band_bin2;
  nr_control_cfg.band1_max_atten = asnr_params->band1_max_atten;
  nr_control_cfg.band2_max_atten = asnr_params->band2_max_atten;
  nr_control_cfg.band3_max_atten = asnr_params->band3_max_atten;
  nr_control_cfg.sig_upd_rate_max= asnr_params->sig_upd_rate_max;
  nr_control_cfg.sig_upd_rate_min= asnr_params->sig_upd_rate_min;  
  nr_control_cfg.noise_thresh    = asnr_params->noise_thresh;
  nr_control_cfg.noise_hangover  = asnr_params->noise_hangover;
  
  status = asnrControl(nrInst_ptr, &nr_control_cfg);
  if (status != asnr_NOERR) {
    // printf("Error returned by asnrControl = %d!\n", status);
    // exit(0);
    return 1;
  } 
  return 0;
} /* vpe_config_nr */

/*-----------------------------------------------------------------
 * Function:  vpe_deinstantiate_nr
 *                            
 * Description: Deinstantiate ASNR module
 *-----------------------------------------------------------------*/
int16_t vpe_deinstantiate_nr()
{ 
  ecomemBuffer_t bufs_returned_by_nr[VPE_NR_NUM_BUFS];
  tint           status, error;
 
  status = asnrClose(nrInst_ptr);
  if(status != asnr_NOERR) {
    // printf("Error returned by asnrClose() = %d!\n", status);
    // exit(0);
    return status;
  }

  status = asnrDelete(&nrInst_ptr, VPE_NR_NUM_BUFS, bufs_returned_by_nr);
  if(status != asnr_NOERR) {
    // printf("Error returned by asnrDelete() = %d!\n", status);
    // exit(0);
    return status;
  }
  
  error =    (bufs_returned_by_nr[0].base != nr_buff0)
           | (bufs_returned_by_nr[1].base != nr_buff1)
           | (bufs_returned_by_nr[2].base != nr_buff2)
           | (bufs_returned_by_nr[3].base != nr_buff3)
           | (bufs_returned_by_nr[4].base != nr_buff4)
           | (bufs_returned_by_nr[5].base != nr_buff5); 
  if(error) {
    // printf("Buffers returned by asnrDelete() are wrong!\n");
    // exit(0);
    return 3;
  }
  return 0;
} /* vpe_deinstantiate_nr */



/* Nothing past this point */
