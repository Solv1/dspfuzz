/******************************************************************************
 * FILE PURPOSE: Memory definition/allocation/initialization for ECU &
 *               MAG simulation.
 ******************************************************************************
 * FILE NAME:   ecmemdef.c
 *
 * DESCRIPTION: Contains memory declarations for ECU & MAG simulation.  
 *              Most structures/tables here are declared in the system in
 *              ggcfg.c or ggmemdef.c.
 *
 * TABS: NONE
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

/* Definition of NULL */
#include <stdlib.h>

/* ECU header files */
#include <ti/mas/ecu/ecu.h>
#include <ti/mas/ecu/test/src/ecusim.h>

/* MAG header file */
#if ECUSIM_INCLUDE_MAG
#include <ti/mas/ecu/mag.h>
#endif

/* SIU header files */
#include <ti/mas/ecu/test/src/siu.h>
#include <ti/mas/ecu/test/src/siuloc.h>
#include <ti/mas/ecu/test/src/siuport.h>
#include <ti/mas/ecu/test/src/vctypes.h>

/* Other ECO files */
#include <ti/mas/ecu/test/src/piu.h>

/* System header files */
#include <ti/mas/types/types.h>

/******************************************************************************/
/*****************      START OF ECU CONTEXT         **************************/
/******************************************************************************/
 
ecuContext_t ecuContext = {
#ifndef _HWDSKT
  (vfnptr) siuDebugInfo,      /* Void function pointer to SIU exception handler */
#else
  exception_fcn,
#endif
  NULL,                       /* Debug streaming function pointer */
#if ECUSIM_INCLUDE_MAG
  magEvtEcuInst,              /* MIPS Agent open/close event handler */
#else
  NULL,
#endif
  NULL,                       /* Search filter swapping function */
  ecu_send_out,               /* Send out function pointer */
  piuReceiveIn,               /* Receive out function pointer */
  SIU_MAX_FRAME_LENGTH,       /* Maximum number of samples per frame */
  SIU_MAX_ECU_FILTER_LENGTH,  /* Maximum filter length in taps */
  SIU_MAX_ECU_FLTSEG_LENGTH,  /* Maximum filter segment buffer length in taps */
  SIU_MAX_ECU_FLTSEG,         /* Maximum allowed active filter segments */
  SIU_MAX_SYSTEM_DELAY + SIU_MAX_FRAME_LENGTH,
                              /* Maximum y2x delay in samples */
  0L,                         /* Bitfield representing those portions of the 
                               * delay line already expanded. */
  NULL,                       /* Pointer to base of the scratch delay line */
  NULL,                       /* TDM aligned pointer within scratch delay line */
  NULL,                       /* TDM aligned pointer within packed delay line */
};

/******************************************************************************/
/*****************       END OF ECU CONTEXT          **************************/
/******************************************************************************/


#if ECUSIM_INCLUDE_MAG
/******************************************************************************/
/***************** START OF MIPS AGENT MIPS TABLES   **************************/
/******************************************************************************/

/******************************************************************************
 * DATA DEFINITION: ECU static MIPS structure
 ******************************************************************************
 * DESCRIPTION: FG overhead MIPS.
 *
 *****************************************************************************/
magEcuMips_t magEcuStaticMips = {
  /* FG overhead MIPS */
  mag_MIPS_CONVERT(1.414)
};

/******************************************************************************
 * DATA DEFINITION: ECU Search Function 5ms frame Cycle coefficients table
 ******************************************************************************
 * DESCRIPTION: Cycle coefficients for MSEC Search Function.
 *
 *****************************************************************************/
tuint magTblEcuSearch[][mag_NUM_COEFF] = {
  /* 40Nt + 0Ns + 2547 */
  { mag_SEARCH_CYCLES_CONVERT(40), 
    mag_SEARCH_CYCLES_CONVERT(0) , 
    mag_SEARCH_CYCLES_CONVERT(2400) },
  /* TODO */
  { mag_SEARCH_CYCLES_CONVERT(80), 
    mag_SEARCH_CYCLES_CONVERT(0) , 
    mag_SEARCH_CYCLES_CONVERT(4100) } 
};


/******************************************************************************
 * DATA DEFINITION: ECU Update Function 5ms frame Cycle coefficients table
 ******************************************************************************
 * DESCRIPTION: Cycle coefficients for MSEC BG Update Function.  States supported 
 *              are: mag_ECU_UPDATE_SLOW, mag_ECU_UPDATE_FAST.
 *
 *****************************************************************************/
tuint magTblEcuUpdate[][mag_NUM_COEFF] = {
  /* 41Nt + 381Ns + 2920 */
  { mag_UPDATE_CYCLES_CONVERT(41)  , 
    mag_UPDATE_CYCLES_CONVERT(381) , 
    mag_UPDATE_CYCLES_CONVERT(2920) },
  /* 81Nt + 760Ns + 4034 */
  { mag_UPDATE_CYCLES_CONVERT(81)  , 
    mag_UPDATE_CYCLES_CONVERT(760) , 
    mag_UPDATE_CYCLES_CONVERT(4034) }  
};

/******************************************************************************
 * DATA DEFINITION: ECU Echo Removal Function 5ms frame Cycle coefficients 
 *                  table.
 ******************************************************************************
 * DESCRIPTION: Cycle coefficients for MSEC Echo Removal Function.  Only one 
 *              state supported.
 *
 *****************************************************************************/
tuint magTblEcuRemove[][mag_NUM_COEFF] = {
  /*  40Nt + 520Ns + 1372 */
  { mag_REMOVE_CYCLES_CONVERT(40)  , 
    mag_REMOVE_CYCLES_CONVERT(520) , 
    mag_REMOVE_CYCLES_CONVERT(1372) }
};

/******************************************************************************
 * DATA DEFINITION: ECU PCM expansion Cycle coefficients table.
 ******************************************************************************
 * DESCRIPTION: Cycle coefficients for MSEC PCM delay line expansion.  
 *              The first row is for 5ms/5.5ms frame sizes and the second
 *              row for 10ms/11ms frame sizes.
 *
 *****************************************************************************/
tuint magTblPcmExpand[][mag_NUM_COEFF] = {
  /* 5ms/5.5ms frame -- 4Nt + 1200 Cycles */
  { mag_EXPAND_CYCLES_CONVERT(4)   , 
    mag_EXPAND_CYCLES_CONVERT(0)   , 
    mag_EXPAND_CYCLES_CONVERT(1200)},
  /* 10ms/11ms frame -- 2Nt + 600 Cycles (equiv) */
  { mag_EXPAND_CYCLES_CONVERT(2)   , 
    mag_EXPAND_CYCLES_CONVERT(0)   , 
    mag_EXPAND_CYCLES_CONVERT(600) }  
};

/******************************************************************************
 * DATA DEFINITION: Codec encode/decode MIPS table
 ******************************************************************************
 * DESCRIPTION: Codec type followed by MIPS consumption (U6.10) for encode and
 *              decode respectively.
 *
 *****************************************************************************/
magCodecMips_t magTblCodecMips[] = {
  /*--------------------------------------------------------------*/
  /* Coding type   Encoder MIPS               Decoder MIPS        */
  /*--------------------------------------------------------------*/
  {VCT_8APCM,    mag_MIPS_CONVERT(0.16), mag_MIPS_CONVERT(0.13) }, /* A-law */
  {VCT_8MUPCM,   mag_MIPS_CONVERT(0.16), mag_MIPS_CONVERT(0.13) }, /* U-law */
  {VCT_2ADPCM,   mag_MIPS_CONVERT(4.80), mag_MIPS_CONVERT(5.30) }, /* G.726 16K */ 
  {VCT_3ADPCM,   mag_MIPS_CONVERT(4.90), mag_MIPS_CONVERT(5.40) }, /* G.726 24K */ 
  {VCT_4ADPCM,   mag_MIPS_CONVERT(5.00), mag_MIPS_CONVERT(5.40) }, /* G.726 32K */ 
  {VCT_5ADPCM,   mag_MIPS_CONVERT(5.10), mag_MIPS_CONVERT(5.60) }  /* G.726 40K */
};
 
/******************************************************************************
 * DATA DEFINITION: Channel overhead MIPS table
 ******************************************************************************
 * DESCRIPTION: MIPS consumption (U6.10) for each channel state. Note that only
 *              those channel states valid for this build need to be supplied
 *
 *****************************************************************************/
magChStateMips_t magTblChanMips[] = {
  {SIU_CHST_CLOSED ,mag_MIPS_CONVERT(0)    },    
  /* IDLE = 0.20 + 0.6 HPIint + 0.83 PCMint + 0.1 mag + 0.46 RXTX =  2.19 MIPS  */
  {SIU_CHST_IDLE   ,mag_MIPS_CONVERT(2.19) }, 
  /* VOICE = 3.45 + 0.6 HPIint + 0.83 PCMint + 0.1 mag + 0.46 RXTX =  5.44 MIPS */
  {SIU_CHST_VOICE  ,mag_MIPS_CONVERT(5.44) },
  /* DTMF = 3.30 + 0.6 HPIint + 0.83 PCMint + 0.1 mag + 0.46 RXTX =  5.29 MIPS  */
  {SIU_CHST_DTMF   ,mag_MIPS_CONVERT(5.29) }
};   

/******************************************************************************/
/***************** END OF MIPS AGENT MIPS TABLES   ****************************/
/******************************************************************************/


/******************************************************************************/
/***************** START OF MIPS AGENT BUFFERS     ****************************/
/******************************************************************************/

tint           queue1[MAX_CHANNELS];
tint           queue2[MAX_CHANNELS];
UFract         priority[MAX_CHANNELS];
magChannel_t buf1[MAX_CHANNELS] = 
{
  mag_INIT_CHANNEL_STRUCT, /* Channel  1 context */
  mag_INIT_CHANNEL_STRUCT, /* Channel  2 context */
  mag_INIT_CHANNEL_STRUCT, /* Channel  3 context */
  mag_INIT_CHANNEL_STRUCT, /* Channel  4 context */
  mag_INIT_CHANNEL_STRUCT, /* Channel  5 context */
  mag_INIT_CHANNEL_STRUCT, /* Channel  6 context */
  mag_INIT_CHANNEL_STRUCT, /* Channel  7 context */
  mag_INIT_CHANNEL_STRUCT, /* Channel  8 context */
  mag_INIT_CHANNEL_STRUCT, /* Channel  9 context */
  mag_INIT_CHANNEL_STRUCT  /* Channel 10 context */
};

/******************************************************************************/
/***************** END OF MIPS AGENT BUFFERS       ****************************/
/******************************************************************************/


/******************************************************************************/
/***************** START OF MIPS AGENT CONTEXT     ****************************/
/******************************************************************************/

magContext_t mipsAgent = {
  siuMakeID(SIU_MID_ECU,0), /* mag module ID (ECU module, channel 0) */
  0,                        /* Clock */
  TRUE,                     /* Clock is enabled */
  0,                        /* No tasks scheduled */
  3,                        /* Search scheduling tick */
  2,                        /* Update scheduling tick */
  1,                        /* MIPS allocation tick */
  4,                        /* Refresh rate (ticks) */ 
  80*65,                    /* Time increment for fuzzy scheduler */
  MAX_MIPS,                 /* allotted_mips      MIPS in U22.10 */
  0L,                       /* offset_mips        MIPS in U22.10 (0) */
  0L,                       /* channel_mips       MIPS in U22.10 (0) */
  0L,                       /* codec_mips         MIPS in U22.10 (0) */
  0L,                       /* ecufg_mips         MIPS in U22.10 (0) */
  MAX_MIPS,                 /* ecu_function_mips  MIPS in U22.10 */
  &magEcuStaticMips,      /* Pointer to ECU static MIPS structure */  
  magTblCodecMips,        /* Pointer to codec MIPS table */
  0,                        /* Number of codec records */
  magTblChanMips,         /* Pointer to channel state MIPS table */
  0,                        /* Number of channel state records */
  magTblPcmExpand,        /* Pointer to PCM expansion MIPS table */
  /* mipTrack_t structures */
  {
    /* mipTrack_t structure for Search function */
    {
      0,                  /* Total MIPS in U6.10 (0)*/
      0,                  /* Zero Search instances open */
      0,                  /* Zero Search instances active */
      magTblEcuSearch   /* Pointer to Search MIPS coeff table */
    },
    /* mipTrack_t structure for BG Update function */
    {
      0,                  /* Total MIPS in U6.10 (0)*/
      0,                  /* Zero BG Update instances open */
      0,                  /* Zero BG Update instances active */
      magTblEcuUpdate   /* Pointer to BG Update MIPS coeff table */
    },
    /* mipTrack_t structure for Echo Removal function */
    {
      0,                  /* Total MIPS in U6.10 (0)*/
      0,                  /* Zero echo removal instances open */
      0,                  /* Zero echo removal instances active */
      magTblEcuRemove   /* Pointer to Echo Removal MIPS coeff table */
    }
  },
  /* Queue pointers */
  {
    &queue1[0],           /* Search Queue (no init necessary) */
    &queue2[0]            /* Update Queue (no init necessary)*/
  },                      
  &buf1[0],               /* Channel structures (no init necessary)*/
  &priority[0],           /* channel priority array */
  mag_dummy_dp,         /* Dummy function pointer */
  NULL,                   /* Debug streaming function pointer */
  (vfnptr) siuDebugInfo   /* Exception function pointer */
};

/******************************************************************************/
/*****************   END OF MIPS AGENT CONTEXT     ****************************/
/******************************************************************************/

/******************************************************************************
 * FUNCTION PURPOSE:  Initialization of some MIPS agent structure fields
 ******************************************************************************
 * DESCRIPTION: Fills some fields of MIPS agent table that cannot be inserted in the
 *              mipsAgent table in ggcfg.c directly. 
 *              Also, this function cannot be in ggcfg.c file because
 *              it needs to be where the above tables for codec and chan mips are
 *              created due to reference to their sizes i.e. in THIS file.
 *
 *****************************************************************************/

void ggmagTblInit(void)
{   
  mipsAgent.codecTableNumRecords    = sizeof(magTblCodecMips)/sizeof(magCodecMips_t);
  mipsAgent.chStateMipTblNumRecords = sizeof(magTblChanMips)/sizeof(magChStateMips_t);
}
#endif

/* nothing past this point */
