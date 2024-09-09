/******************************************************************************
 * FILE PURPOSE: ECU profiling commands.
 ******************************************************************************
 * FILE NAME:   ecuprof.c
 *
 * DESCRIPTION: Defines profiling routines used in the ECU simulation
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

#include <ti/mas/sdk/profile.h>
#include <ti/mas/sdk/memArchCfg.h>

#include <ti/mas/ecu/test/src/ecusim.h>   


/***********************************************************************
 * Profiling structure
 ***********************************************************************/
ecuProfile_t ecuProfile = {
  (FILE *) NULL,            /* fptr:  initialize to NULL    */
  FALSE,                     /* use_cache:  FALSE by default  */
  FALSE,                    /* enabled:    FALSE by default */
  0L,                       /* overhead:   cleared          */
  0L,                       /* start_cnt:  cleared          */
  0L                        /* cycles:     cleared          */
};


/***********************************************************************
 * Profiling routines
 ***********************************************************************/

 /* ============ ecusim_profile_start () ========== */
void ecusim_profile_start (void)
{
  /* Flush the cache */
  if (ecuProfile.use_cache) {
    memarchcfg_cacheFlush ();
  }
  
  /* Clear the total cycles and get the start count */
  ecuProfile.cycles     = 0L;
  ecuProfile.start_cnt  = profile_getCPUcycleCount ();
} 

/* ============ ecusim_profile_stop () ========== */
void ecusim_profile_stop (void)
{
  /* Get end cycles */
  tlong count = profile_getCPUcycleCount();

  /* Calculate total cycles (correct for timer wrap) */
  count -= ecuProfile.start_cnt;
  if (count < 0) {
    count += sdk_PROFILE_MAXCNT;
  }
  
  /* Store adjusted total cycles */
  ecuProfile.cycles = count - ecuProfile.overhead;
} 
 
/* ============ ecusim_profile_init () ========== */
void ecusim_profile_init (void)
{
  /* Always open in the "disabled mode" */
  ecuProfile.enabled = FALSE;

  /* Initialize SDK profiling and cache */
  profile_initCycleProfiling ();
  if (ecuProfile.use_cache) {
    memarchcfg_cacheEnable ();
  }
  
  /* Get estimate of profile cycle call overhead */
  ecuProfile.overhead = 0L;
  ecusim_profile_start ();
  ecusim_profile_stop  ();
  ecuProfile.overhead = ecuProfile.cycles;

  /* Open profiling data file */
  ecuProfile.fptr = fopen (ecusim_PROFILE_FNAME, "w");
  if (ecuProfile.fptr == (FILE *) NULL) {
    fprintf (stderr, "Unable to open profiling file");
  }
  else {
    fprintf (stdout, " - Opened file: %s\n", ecusim_PROFILE_FNAME);
  }
} /* ecusim_profile_init */


/* ============ ecusim_profile_close () ========== */
void ecusim_profile_close (void)
{
  /* Ensure profiling is disabled */
  ecuProfile.enabled = FALSE;
 
  /* Close SDK profiler */
  profile_closeCycleProfiling ();
  
  /* Close profiling data file */
  if (ecuProfile.fptr != NULL) {
    fclose (ecuProfile.fptr);
    fprintf (stdout, " - Closed file: %s\n", ecusim_PROFILE_FNAME);
  }
} /* ecusim_profile_close */


/* ============ ecusim_profile_print () ========== */
void ecusim_profile_print (void)
{
  /* Only report if profiling is enabled */
  if (ecuProfile.enabled && ecuProfile.fptr != NULL) {
    fprintf (ecuProfile.fptr, "%8d\n", ecuProfile.cycles);
    fflush  (ecuProfile.fptr);
  }
} /* ecusim_profile_print */

/* nothing past this point */
