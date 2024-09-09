#ifndef _VCTYPES_H
#define _VCTYPES_H
/******************************************************************************
 * FILE PURPOSE: Generic Voice Coding Types.
 ******************************************************************************
 * FILE NAME:   vctypes.h
 *
 * DESCRIPTION: Contains definitions for the generic voice coding types.
 *              Defines VCT_ and EVCT_ constants.
 *
 *              NOTE: This file may be used by both Micro and DSP software.
 *
 * TABS: NONE
 *
 * $Id: vctypes.h 1.11 1999/11/19 22:56:56 DThomas Exp $
 *
 * REVISION HISTORY:
 *
 * $Log: vctypes.h $
 * Revision 1.11  1999/11/19 22:56:56  DThomas
 *  - Added GSM EFR.
 * Revision 1.10  1999/08/08 16:23:27  DThomas
 *  - Added voice type for G.729E.
 * Revision 1.9  1998/12/07 23:41:46  gsisli
 *   EVCT_G729AB and EVCT_G729A are both 0x44.
 * Revision 1.8  1998/11/06 22:43:31  gsisli
 *   G729AB is added as a new EVCT.
 * Revision 1.7  1997/09/03 16:03:48  BONAL
 *     G723 numbers are increased to have more space in between 
 *     definitions. 
 *     Some comment bug corrected.
 * Revision 1.6  1997/08/19 13:58:06  BONAL
 *    G.723 types corrected.
 * Revision 1.5  1997/08/19 13:54:55  BONAL
 *    Voice coding type for G.723 is added.
 * Revision 1.4  1997/05/12 10:35:14  bogdank
 *     - CSACELP types changed to G729
 *    CSACELP types changed to G729.
 * Revision 1.3  1997/01/30 12:31:04  BOGDANK
 *     - adding more CS-ACELP coding types, specifying better data/modem types
 *    Adding additional coding types for G.729.
 * Revision 1.2  1996/09/12 13:56:58  BOGDANK
 *    Adding EVCT_DATA for transparent mode PCM (data).
 * Revision 1.1  1996/09/10 10:58:01  BOGDANK
 * Initial revision
 *    Obtained from vctypes.h (1.5) in cominc.pj.
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

/*--------------------------------------------------*/
/* Voice Coding Types (Figure 5/G.764) ('000nnnnn') */
/*--------------------------------------------------*/

/* Codings that are not listed are reserved for future use. */
#define EVCT_INVALID        0xFFu   /* Invalid Codec - used for initialization */
#define VCT_8BITS           0x00u   /* 8 bits/sample */
#define VCT_1BITS           0x01u   /* 1 bit/sample  */
#define VCT_2BITS           0x02u   /* 2 bits/sample */
#define VCT_3BITS           0x03u   /* 3 bits/sample */
#define VCT_4BITS           0x04u   /* 4 bits/sample */
#define VCT_5BITS           0x05u   /* 5 bits/sample */
#define VCT_6BITS           0x06u   /* 6 bits/sample */
#define VCT_7BITS           0x07u   /* 7 bits/sample */

#define VCT_8APCM           0x08u   /* 8 bit A-law PCM */
#define VCT_8MUPCM          0x09u   /* 8 bit mu-law PCM */
#define VCT_2ADPCM          0x0Au   /* 2 bits/sample ADPCM (G.726) */
#define VCT_3ADPCM          0x0Bu   /* 3 bits/sample ADPCM (G.726) */
#define VCT_4ADPCM          0x0Cu   /* 4 bits/sample ADPCM (G.726) */
#define VCT_5ADPCM          0x0Du   /* 5 bits/sample ADPCM (G.726) */

#define VCT_E4_2ADPCM       0x14u   /* (4,2) embedded ADPCM (G.727) */
#define VCT_E5_2ADPCM       0x15u   /* (5,2) embedded ADPCM (G.727) */

#define VCT_E8_6ADPCM       0x18u   /* (8,6) embedded ADPCM (G.722) */

/*---------------------------------------------------------------------*/
/* Extended Voice Coding Types (Fax, Modem, Voice Coders not in G.764) */
/*---------------------------------------------------------------------*/

/* Voice Types ('010nnnnn') */
#define EVCT_LDCELP_16K     0x42u       /* LD-CELP 16K (G.728) */
#define EVCT_G729           0x43u       /* CS-ACELP 8K (G.729) */
#define EVCT_CSACELP        EVCT_G729   /* obsolete! do not use it! */
#define EVCT_G729A          0x44u       /* CS_ACELP 8K (G.729A) */
#define EVCT_G729AB         0x44u       /* CS_ACELP 8K with int. vad (G.729AB)*/
#define EVCT_G729E          0x45u       /* CS_ACELP 11.8K (G.729E) */
#define EVCT_E2_2ADPCM      0x48u       /* (2,2) embedded ADPCM (G.727) */
#define EVCT_E3_2ADPCM      0x49u       /* (3,2) embedded ADPCM (G.727) */
#define EVCT_GSMEFR         0x4Au       /* GSM EFR                      */
#define EVCT_GSMFR          0x4Bu       /* GSM FR                       */
#define EVCT_G723_53        0x50u       /* G.723 at 5.3 kbits/s */
#define EVCT_G723_63        0x51u       /* G.723 at 6.3 kbits/s */

/* Fax Types ('1000nnnn') */
#define EVCT_FAX            0x80u   /* Fax */

/* Data Types ('1001nnnn') */
#define EVCT_DATA           0x90u   /* Data - transparent 8-bit PCM */

/* Modem Relay Types ('1011nnnn') */
#define EVCT_MRU            0xB2u   /* Modem Relay Unit */

/* Modem Types ('1011nnnn') */
/* currently none of EVCT_MDM_xxx */

/* Non ITU Types ('110nnnnn') */
#define EVCT_CSACELP_IS641  0xC1u   /* CS-ACELP 8K (TIAEIA IS641) */

/* TELOGY Types ('111nnnnn') */
/* currently none of EVCT_TNI_xxx */
#endif /* _VCTYPES_H */
/* nothing past this point */
