/*-----------------------------------------------------------------
 * Filename:  nrsim.c
 *                            
 * Description: Example and testing code of the NR API functions.
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

/* system headers */
#include <ti/mas/types/types.h>
#include <ti/mas/fract/fract.h>
#include <ti/mas/util/ecomem.h>

/* NR header */
#include <ti/mas/vpe/asnr.h>

/* unit test includes */
#include <ti/mas/vpe/test/src/vpesim.h>
#include <ti/mas/vpe/test/src/nrbufst.h>

void *nr_handle = NULL;
extern void *nrInst_ptr;

/*-----------------------------------------------------------------
 * Function:  vpe_instantiate_nr
 *                            
 * Description: Instantiate ASNR module
 *-----------------------------------------------------------------*/
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

  // printf("Buffers requested by NR:\n");
  // printf("    Buffer    Size(twords)    Alignment    Volatile\n");
  // for(i=0; i<num_bufs_req_by_nr; i++) {
  //   printf("     %3d       %7d         %4d       ", 
  //                i, (int)bufs_req_by_nr[i].size, (int)bufs_req_by_nr[i].log2align);
  //   if(bufs_req_by_nr[i].volat)
  //     printf("    yes\n");
  //   else  
  //     printf("    no \n");
  // }
  
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

  // printf("Buffers allocated for NR:\n");
  // printf("    Buffer    Size(twords)    Alignment    Volatile   address\n");
  // for(i=0; i<num_bufs_req_by_nr; i++) {
  //   printf("     %3d       %7d         %4d       ", 
  //                i, (int)bufs_alloc_for_nr[i].size, (int)bufs_alloc_for_nr[i].log2align);
  //   if(bufs_alloc_for_nr[i].volat)
  //     printf("    yes   ");
  //   else  
  //     printf("    no    ");
    
  //   printf("    0x%x\n", bufs_alloc_for_nr[i].base);
  // }
  
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
