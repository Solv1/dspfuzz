/****************************************************************************** 
 * FILE PURPOSE: Functions to support file read/write 
 ****************************************************************************** 
 * FILE NAME:   ecufio.c
 * 
 * DESCRIPTION: Contains routines to support file read and write operations.
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

#include <string.h>

#include <ti/mas/util/mua.h>
/* Associated header */
#include <ti/mas/ecu/test/src/ecufio.h>
#include <ti/mas/ecu/test/src/ecusim.h>

/* External references */
extern volatile siuSetup_t *ecuSim;


/*-----------------------------------------------------------------
 * Function:  ecu_sim_fileio_init
 *							  
 * Description: Initialize simulation for file I/O
 *-----------------------------------------------------------------*/
void ecu_sim_fileio_init (volatile ecuSimFileIo_t *fioptr, tuint code)
{
  if (fioptr->fio) {
    /* Ensure that file pointer is NULL (closed) */
    if (fioptr->fptr != NULL) {
      printf (" - File already open: %s\n", fioptr->fname);
      return;
    }
    
    /* Open file (read/write binary) and assign file pointer */
    if (code == ecu_SIM_FILEIO_READ) {
      fioptr->fptr = fopen ((const char *) fioptr->fname, "rb");
    }
    else if (code == ecu_SIM_FILEIO_WRITE) {
      fioptr->fptr = fopen ((const char *) fioptr->fname, "wb");
    }
    else {
      printf ("Error: unrecognized file action %d \n", code);
      return;
    }

    /* Ensure open success */
    if (fioptr->fptr == NULL) {
      printf ("Unable to open file: %s\n", fioptr->fname);
      fioptr->fio = FALSE;
    }
    else {
      printf (" - Opened file: %s\n", fioptr->fname);
      fioptr->eof = FALSE;      
    }
  }
}


/*-----------------------------------------------------------------
 * Function:  ecu_sim_fileio_end
 *							  
 * Description: Clear simulation after file I/O
 *-----------------------------------------------------------------*/
void ecu_sim_fileio_end (volatile ecuSimFileIo_t *fioptr)
{
  if (fioptr->fio) {
    /* Close file pointer */
    if (fioptr->fptr == NULL) {
      printf ("Warning: premature file close\n");
    }
    else {
      if (fioptr->eof) {
        fclose (fioptr->fptr);
        fioptr->fptr = (FILE *) NULL;
        /* Print progress */
        printf (" - Closed file: %s\n", fioptr->fname);
      }
    }
  }    
}
/*-----------------------------------------------------------------
 * Function:  ecu_sim_fread
 *							  
 * Description: Perform file input
 *-----------------------------------------------------------------*/
tbool ecu_sim_fread (tword *buf, tint buf_size, volatile ecuSimFileIo_t *fioptr)
{
  tuint num;
  tuint sample_size;

  tbool ret_code = FALSE;

  if (fioptr->fio) {
    /* Set the sample size (in twords) */
    sample_size = sizeof(tword);
    if (ecuSim->pcm_format == const_COMP_LINEAR) {
      sample_size = sizeof(linSample)/sizeof(tword);

    }

    /* Read from the file */
    num = fread (buf, sample_size, buf_size, fioptr->fptr);
  
    /* check for end of file */
    if (num != (sample_size * buf_size)) {
      fioptr->eof = TRUE;
    }
    else {
      ret_code = TRUE;
    }
  } 
  /* Indicate if EOF has been reached */
  return (ret_code);
}


/*-----------------------------------------------------------------
 * Function:  ecu_sim_get_xlaw
 *							  
 * Description: Copy and expand U/A-law PCM samples
 *-----------------------------------------------------------------*/
void ecu_sim_get_xlaw (tword *src, linSample *dst, tint n, const tint *tbl)
{
  tuint i;
  tuint index;

  for (i=0; i<n; i++) {
    index  = (tuint) src[i];
    dst[i] = (linSample) tbl[index];
  }
}


/*-----------------------------------------------------------------
 * Function:  ecu_sim_get_linear
 *							  
 * Description: Copy linear PCM samples
 *-----------------------------------------------------------------*/
void ecu_sim_get_linear (tword *src, linSample *dst, tint n)
{
  tuint i;
  linSample *pcm = (linSample *) src;

  for (i=0; i<n; i++) {
    dst[i] = pcm[i];
  }
}


/*-----------------------------------------------------------------
 * Function:  ecu_sim_put_linear
 *							  
 * Description: Copy linear PCM samples
 *-----------------------------------------------------------------*/
void ecu_sim_put_linear (linSample *src, tword *dst, tint n)
{
  tuint i;
  linSample *pcm = (linSample *) dst;

  for (i=0; i<n; i++) {
    pcm[i] = src[i];
  }
}


/*-----------------------------------------------------------------
 * Function:  ecu_sim_input_mux
 *							  
 * Description: Get input samples and expand/shift before
 *              broadcasting to all active channels.
 *-----------------------------------------------------------------*/
void ecu_sim_input(tword *buf, linSample *linbuf)
{
  /* Convert to linear PCM format (if necessary) */
  switch (ecuSim->pcm_format) {
  /* A-law 8-bit PCM */
  case const_COMP_ALAW_8:
    ecu_sim_get_xlaw (buf, linbuf, ecuSim->frame_size, muaTblAlaw);
    break;
  /* U-law 8-bit PCM */
  case const_COMP_MULAW_8:
    ecu_sim_get_xlaw (buf, linbuf, ecuSim->frame_size, muaTblUlaw);
    break;
  /* Linear 16-bit PCM */
  case const_COMP_LINEAR:
    ecu_sim_get_linear (buf, linbuf, ecuSim->frame_size);
    break;
  }
}


/*-----------------------------------------------------------------
 * Function:  ecu_sim_fwrite
 *							  
 * Description: Perform file output
 *-----------------------------------------------------------------*/
void ecu_sim_fwrite (tword *buf, tint buf_size, volatile ecuSimFileIo_t *fioptr)
{
  tuint sample_size;
  tuint start;
  tint  i, j;

  /* */
  if (fioptr->fio) {
    /* Set the sample size (in twords) */
    sample_size = sizeof(tword);
    if (ecuSim->pcm_format == const_COMP_LINEAR) {
      sample_size = sizeof(linSample)/sizeof(tword);
    }

    /* Pack to 8-bit data */
    else {
#ifdef _BIG_ENDIAN
      start = 1;
#else
      start = 0;
#endif
      for (i=0, j=start; i<buf_size; i++, j+=2) {
        buf[i] = buf[j];
      }
    }

    /* Write to the file */
    fwrite (buf, sample_size, buf_size, fioptr->fptr);
  }
}


/*-----------------------------------------------------------------
 * Function:  ecu_sim_output
 *							  
 * Description: Perform file output
 *-----------------------------------------------------------------*/
void ecu_sim_output (tword *buf, linSample *linbuf)
{
#if _ECUSIMPORT_C55 || _ECUSIMPORT_C55L
  tint i;
  linSample temp_buffer[SIU_MAX_FRAME_LENGTH*2];

  for (i = 0; i<ecuSim->frame_size; i++) {
    temp_buffer[2*i+0] = linbuf[i];
	  temp_buffer[2*i+1] = 0;
  }
#endif

  /* Convert to linear PCM format (if necessary) */
  switch (ecuSim->pcm_format) {
    /* A-law 8-bit PCM */
    case const_COMP_ALAW_8:
      muaTblAlawCmpr (ecuSim->frame_size, linbuf, (tint *) buf);
      break;
  
    /* U-law 8-bit PCM */
    case const_COMP_MULAW_8:
#if _ECUSIMPORT_C55 || _ECUSIMPORT_C55L
      muaTblUlawCmpr (ecuSim->frame_size*2, temp_buffer, (tint *) buf);
#else
      muaTblUlawCmpr (ecuSim->frame_size, linbuf, (tint *) buf);
#endif
      break;
  
    /* Linear 16-bit PCM */
    case const_COMP_LINEAR:
      ecu_sim_put_linear (linbuf, buf, ecuSim->frame_size);
      break;
  }
}

/* nothing past this point */
