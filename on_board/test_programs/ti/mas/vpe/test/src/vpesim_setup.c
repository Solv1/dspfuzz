/*-----------------------------------------------------------------
 * Filename:  vpesim.c
 *                            
 * Description: Test the vpe API functions.
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

#if _VPESIM_C64||_VPESIM_C64_BIG_ENDIAN||_VPESIM_C64P||_VPESIM_C64P_BIG_ENDIAN |_VPESIM_C66||_VPESIM_C66_BIG_ENDIAN
#include <ti/mas/sdk/memArchCfg.h>
#endif

/* sgn defaults */
#define  vpe_SGN_DEF_DC_OFFSET        0
#define  vpe_SGN_DEF_WF_TYPE          1     
#define  vpe_SGN_DEF_F1               1000  
#define  vpe_SGN_DEF_F2               400
#define  vpe_SGN_DEF_T_AMP1           0x1400
#define  vpe_SGN_DEF_T_AMP2           0x3700
#define  vpe_SGN_DEF_PR_PERIOD        1000
#define  vpe_SGN_DEF_PR_ENABLE        FALSE
#define  vpe_SGN_DEF_NOISE_LEVEL      (-100)
#define  vpe_SGN_DEF_NOISE_SEED       40
#define  vpe_SGN_DEF_NOISE_TYPE       sgn_NT_GAUSS
#define  vpe_SGN_DEF_FSK_DURATION     90
#define  vpe_SGN_DEF_FSK_DATA_LEN     1
#define  vpe_SGN_DEF_POWER_LEVEL      (-10)
#define  vpe_SGN_DEF_HOTH_WNG_SEED    20

/* Global simulation data */
char vpe_sim_global_str[vpe_SIM_MAX_STRING];
char vpe_sim_print_str[vpe_SIM_MAX_STRING];

/* Delay line and input buffer for source rate converter */
extern linSample decimDelayLine[VPE_SIM_DECIM_DELAY_LEN];
extern linSample interpDelayLine[VPE_SIM_INTERP_DELAY_LEN];

tint vpe_sim_fsk_data[vpe_SGN_DEF_FSK_DATA_LEN] = {0x7e7e};

extern vpeSimConfig_t *vpeSim;    

/*-----------------------------------------------------------------
 * Function:  vpe_halt
 *                            
 * Description: Utility to provide simulation breakpoint.
 *-----------------------------------------------------------------*/
// void vpe_halt (tbool *exec)
// {
//   /* Wait for further actions - exit when user sets "halt" to FALSE */
//   while (!(*exec)) {
//     asm ("  NOP");
//     asm ("Set_BP_Here:  ");
//     asm ("  NOP");
//     asm ("  NOP");
//   }
// }

/* slm instance */
extern void *slmInst_ptr;

/* hlc instance */
extern void *hlcInst_ptr;
extern hlcControl_t *hctrlInst_ptr;

/* snl instance */
extern void *snlInst_ptr;

/* snl result out file I/O structure */
extern vpeSimFileIo_t snlLevOut;    

/* svd instance */
extern void *svdInst_ptr;

/* svd result out file I/O structure */
extern vpeSimFileIo_t svdOut;    

/* sgn instance */
extern void *sgnInst_ptr;


/*-----------------------------------------------------------------
 * Function:  vpe_print
 *                            
 * Description: Utility to provide static progress information.
 *-----------------------------------------------------------------*/
// void vpe_print (char *str)
// {
//   if (vpeSim->exec) {
//     printf (str);
//   }
// }


/*-----------------------------------------------------------------
 * Function:  vpe_iprint
 *                            
 * Description: Utility to provide integer progress information.
 *-----------------------------------------------------------------*/
// void vpe_iprint (char *str, tlong ivar)
// {
//   sprintf   (vpe_sim_print_str, str, ivar);
//   vpe_print (vpe_sim_print_str);
// }


/*-----------------------------------------------------------------
 * Function:  vpe_sprint
 *                            
 * Description: Utility to provide string progress information.
 *-----------------------------------------------------------------*/
// void vpe_sprint (char *str, char *svar)
// {
//   sprintf   (vpe_sim_print_str, str, svar);
//   vpe_print (vpe_sim_print_str);
// }

/*-----------------------------------------------------------------
 * Function:  vpe_sim_fileio_init
 *                            
 * Description: Initialize simulation for file I/O
 *-----------------------------------------------------------------*/
// void vpe_sim_fileio_init (vpeSimFileIo_t *fioptr, tuint code)
// {
//   if (fioptr->fio) {
//     /* Create file path string */
//     strcpy (vpe_sim_global_str, vpeSim->baseDir);
//     strcat (vpe_sim_global_str, fioptr->fname);

//     /* Ensure that file pointer is NULL (closed) */
//     if (fioptr->fptr != NULL) {
//       vpe_sprint (" - File already open: %s\n", vpe_sim_global_str);
//       return;
//     }
    
//     /* Open file (read/write binary) and assign file pointer */
//     if (code == vpe_SIM_FILEIO_READ) {
//       fioptr->fptr = fopen (vpe_sim_global_str, "rb");
//     }
//     else if (code == vpe_SIM_FILEIO_WRITE) {
//       fioptr->fptr = fopen (vpe_sim_global_str, "wb");
//     }
//     else {
//       vpe_iprint ("Error: unrecognized file action %d \n", code);
//       return;
//     }

//     /* Ensure open success */
//     if (fioptr->fptr == NULL) {
//       vpe_sprint ("Unable to open file: %s\n", vpe_sim_global_str);
//       fioptr->fio = FALSE;
//     }
//     else {
//       vpe_sprint (" - Opened file: %s\n", vpe_sim_global_str);
//       fioptr->eof = FALSE;      
//     }
//   }
// }


/*-----------------------------------------------------------------
 * Function:  vpe_sim_fileio_end
 *                            
 * Description: Clear simulation after file I/O
 *-----------------------------------------------------------------*/
// void vpe_sim_fileio_end (vpeSimFileIo_t *fioptr)
// {
//   if (fioptr->fio) {
//     /* Close file pointer */
//     if (fioptr->fptr == NULL) {
//       vpe_print ("Warning: premature file close\n");
//     }
//     else {
//       if (fioptr->eof) {
//         fclose (fioptr->fptr);
//         fioptr->fptr = (FILE *) NULL;
//         /* Print progress */
//         strcpy (vpe_sim_global_str, vpeSim->baseDir);
//         strcat (vpe_sim_global_str, fioptr->fname);
//         vpe_sprint (" - Closed file: %s\n", vpe_sim_global_str);
//       }
//     }
//   }    
// }



/*-----------------------------------------------------------------
 * Function:  vpe_sim_fread
 *                            
 * Description: Perform file input
 *-----------------------------------------------------------------*/
#define VPESIM_NUM_BYTES_LINSAMP 2
tword vpe_temp_io_buf[vpe_SIM_MAX_SAMPLES*VPESIM_NUM_BYTES_LINSAMP];

// tbool vpe_sim_fread (linSample *buf, tint buf_size, vpeSimFileIo_t *fioptr)
tbool vpe_sim_fread (linSample *buf, tint buf_size, int16_t * inptr, int16_t size)
{
  //tuint num_read;
  tint  i, j;

  if(inptr == NULL){
    return FALSE;
  }
  
  /* read the file*/
  memcpy(vpe_temp_io_buf, inptr, size);
  // num_read = fread(vpe_temp_io_buf, VPESIM_NUM_BYTES_LINSAMP, buf_size, fioptr->fptr);
  
  // /* check for endo of file */
  // if (num_read != (buf_size)) {
  //     fioptr->eof = TRUE;
  //     return FALSE;
  // }


  /* pack bytes into words */
  for (i = 0, j = 0; i < buf_size; i++, j+=2)
  {
    buf[i]  = vpe_temp_io_buf[j] | (vpe_temp_io_buf[j+1] << 8);
  }

  return TRUE;
}

/*-----------------------------------------------------------------
 * Function:  vpe_sim_fwrite
 *                            
 * Description: Perform file output
 *-----------------------------------------------------------------*/
// void vpe_sim_fwrite (linSample *buf, tint buf_size, vpeSimFileIo_t *fioptr)
// {
//   tuint i, j;

//   if(fioptr->fptr == NULL){
//     return;
//   }

//   for (i = 0, j = 0; i < buf_size; i++, j+=2)
//   {
//     vpe_temp_io_buf[j]   = (buf[i]     ) & 0x00ff;
//     vpe_temp_io_buf[j+1] = (buf[i] >> 8) & 0x00ff;
//   }

//   fwrite(vpe_temp_io_buf, VPESIM_NUM_BYTES_LINSAMP, buf_size, fioptr->fptr);

// }

/*-----------------------------------------------------------------
 * Function:  vpe_sim_init
 *                            
 * Description: vpe simulation initialization.
 *-----------------------------------------------------------------*/
void vpe_sim_init ()
{
  vpeSim->exec          = TRUE;
  vpeSim->hlc_on        = FALSE;
  vpeSim->slm_on        = FALSE;
  vpeSim->snl_on        = FALSE;
  vpeSim->svd_on        = TRUE;
  vpeSim->nr_on         = TRUE;
  vpeSim->decim_on      = FALSE;
  vpeSim->interp_on     = FALSE;
  vpeSim->ulaw_enc_on   = FALSE;
  vpeSim->ulaw_dec_on   = FALSE;
  vpeSim->alaw_enc_on   = FALSE;
  vpeSim->alaw_dec_on   = FALSE;
  vpeSim->sgn           = FALSE;
  vpeSim->cfg_sgn       = FALSE;
  vpeSim->cfg_hlc       = FALSE;
  vpeSim->cfg_slm       = TRUE;
  vpeSim->slm_mod       = slm_MODE5;

  vpeSim->sample_cnt    = 0;
  vpeSim->error_id      = 0;
  vpeSim->sample_bp     = 0L;
  vpeSim->pcmin_format  = vpe_SIM_PCM_LIN;
  vpeSim->pcmout_format = vpe_SIM_PCM_LIN;
   
  /* Simulation file I/O initialization */
//  vpeSim->sigIn.fio   = TRUE;
//  vpeSim->sigOut.fio  = TRUE;
//  vpeSim->sigIn.fptr  = (FILE *) NULL;
//  vpeSim->sigOut.fptr  = (FILE *) NULL;
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
void vpe_sim_read_cfg()
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
//
//  vpeSim->Fs = (tint)samp_freq;
samp_freq = 16000;
  vpeSim->Fs = 16000;
  if(samp_freq == VPE_SIM_SAMPLE_FREQ_16000) {
    vpeSim->asnrParam.samp_rate = asnr_SRATE_16K;
  }
  else {
    vpeSim->asnrParam.samp_rate = asnr_SRATE_8K;
  }
  vpeSim->asnrParam.delay           = (tint)5;
    vpeSim->asnrParam.band_bin1       = (tint)10;
    vpeSim->asnrParam.band_bin2       = (tint)32;
    vpeSim->asnrParam.band1_max_atten = (tint)9;
    vpeSim->asnrParam.band2_max_atten = (tint)9;
    vpeSim->asnrParam.band3_max_atten = (tint)9;
    vpeSim->asnrParam.sig_upd_rate_max= (tint)31129;
    vpeSim->asnrParam.sig_upd_rate_min= (tint)29818;
    vpeSim->asnrParam.noise_thresh    = (tint)-75;
    vpeSim->asnrParam.noise_hangover  = (tint)150;
//  vpeSim->asnrParam.delay           = (tint)asnr_delay;
//  vpeSim->asnrParam.band_bin1       = (tint)asnr_band_bin1;
//  vpeSim->asnrParam.band_bin2       = (tint)asnr_band_bin2;
//  vpeSim->asnrParam.band1_max_atten = (tint)asnr_band1_max_atten;
//  vpeSim->asnrParam.band2_max_atten = (tint)asnr_band2_max_atten;
//  vpeSim->asnrParam.band3_max_atten = (tint)asnr_band3_max_atten;
//  vpeSim->asnrParam.sig_upd_rate_max= (tint)asnr_sig_upd_rate_max;
//  vpeSim->asnrParam.sig_upd_rate_min= (tint)asnr_sig_upd_rate_min;
//  vpeSim->asnrParam.noise_thresh    = (tint)asnr_noise_thresh;
//  vpeSim->asnrParam.noise_hangover  = (tint)asnr_noise_hangover;
  
} /* vpe_sim_read_cfg */

/*-----------------------------------------------------------------
 * Function:  vpe_init
 *                            
 * Description: Create and initialize VPE modules.
 *-----------------------------------------------------------------*/
int16_t vpe_init (void)
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
//    strcpy (snlLevOut.fname, "snlLevOut.pcm");
//    snlLevOut.fio   = TRUE;
//    snlLevOut.fptr  = (FILE *) NULL;
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

//    strcpy (svdOut.fname, "svdOut.pcm");
//    svdOut.fio   = TRUE;
//    svdOut.fptr  = (FILE *) NULL;
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
  vpeSim->sgnParam.state     = 1;     
  vpeSim->sgnParam.dcoffset  = vpe_SGN_DEF_DC_OFFSET;  
  vpeSim->sgnParam.wftype    = vpe_SGN_DEF_WF_TYPE;    
  vpeSim->sgnParam.f1        = vpe_SGN_DEF_F1;        
  vpeSim->sgnParam.f2        = vpe_SGN_DEF_F2;        
  vpeSim->sgnParam.amp1      = vpe_SGN_DEF_T_AMP1;      
  vpeSim->sgnParam.amp2      = vpe_SGN_DEF_T_AMP2; 
  vpeSim->sgnParam.nlevel    = vpe_SGN_DEF_NOISE_LEVEL;    
  vpeSim->sgnParam.nseed     = vpe_SGN_DEF_NOISE_SEED;     
  vpeSim->sgnParam.ntype     = vpe_SGN_DEF_NOISE_TYPE;     
  vpeSim->sgnParam.pow_level = vpe_SGN_DEF_POWER_LEVEL; 
  vpeSim->sgnParam.hoth_seed = vpe_SGN_DEF_HOTH_WNG_SEED; 
     
  retVal = sgnGetSizes (&sgnSize);    
  sgnInst_ptr = malloc (sgnSize); 
  vpe_sim_open_sgn (sgnInst_ptr);

  /* Init cache, L1D, L1P as cache, L2 32kB cache */

#if _VPESIM_C64P||_VPESIM_C64P_BIG_ENDIAN
  cacheConfig.L2sizeCfg = L2_SIZE_32KB;
#endif
#if _VPESIM_C64||_VPESIM_C64_BIG_ENDIAN||_VPESIM_C64P||_VPESIM_C64P_BIG_ENDIAN
  memarchcfg_cacheEnable();
#endif
  return 0;
} /* vpe_init */

/*-----------------------------------------------------------------
 * Function:  vpe_sim_open_sgn
 *                            
 * Description: vpe simulation open signal generator
 *-----------------------------------------------------------------*/

void vpe_sim_open_sgn (void *inst)
{
  sgnConfig_t cfg;  

  cfg.dc_offset     = vpe_SGN_DEF_DC_OFFSET;
  cfg.wf_type       = vpe_SGN_DEF_WF_TYPE;
  cfg.f1            = vpe_SGN_DEF_F1;
  cfg.f2            = vpe_SGN_DEF_F2;
  cfg.Fs            = vpeSim->Fs;
  cfg.t_amp1        = vpe_SGN_DEF_T_AMP1;
  cfg.t_amp2        = vpe_SGN_DEF_T_AMP2;
  cfg.pr_period     = vpe_SGN_DEF_PR_PERIOD;     /* # of samples between phase reversals */
  cfg.pr_enable     = vpe_SGN_DEF_PR_ENABLE;     /* disable phase reversal */
  cfg.noise_level   = vpe_SGN_DEF_NOISE_LEVEL;
  cfg.noise_seed    = vpe_SGN_DEF_NOISE_SEED;
  cfg.noise_type    = vpe_SGN_DEF_NOISE_TYPE;
  cfg.fsk_duration  = vpe_SGN_DEF_FSK_DURATION;  /* 90/300 = 300ms */
  cfg.fsk_dataptr   = &vpe_sim_fsk_data[vpe_SGN_DEF_FSK_DATA_LEN];
  cfg.fsk_numword   = vpe_SGN_DEF_FSK_DATA_LEN;
  cfg.power_level   = vpe_SGN_DEF_POWER_LEVEL;
  cfg.hoth_wng_seed = vpe_SGN_DEF_HOTH_WNG_SEED;
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

sgnFileIo_t *vpe_sim_out_file (sgnFileIo_t *dsc)
{
  outFrame = dsc->frame;
  outCnt   = dsc->cnt;    
  asm (" nop");
  asm (" nop");
  asm (" nop");
  return (dsc);
} /* vpe_sim_out_file */


void vpe_sim_flush_cache() {
#if _VPESIM_C64||_VPESIM_C64_BIG_ENDIAN||_VPESIM_C64P||_VPESIM_C64P_BIG_ENDIAN |_VPESIM_C66||_VPESIM_C66_BIG_ENDIAN
  /* flush cache */
  memarchcfg_cacheFlush();
#endif
}

/* Nothing past this point */
