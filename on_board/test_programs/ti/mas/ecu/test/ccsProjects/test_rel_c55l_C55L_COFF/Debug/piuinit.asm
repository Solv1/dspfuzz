;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                          PC v4.4.1 *
;* Date/Time created: Fri Jul 05 14:12:15 2013                                 *
;*******************************************************************************
	.compiler_opts --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=coff --silicon_core_2_1 --symdebug:dwarf 
	.mmregs
	.cpl_on
	.arms_on
	.c54cm_off
	.asg AR6, FP
	.asg XAR6, XFP
	.model call=c55_std
	.model mem=large
	.noremark 5503  ; code avoids SE CPU_84 MMR write
	.noremark 5505  ; code avoids SE CPU_84 MMR read
	.noremark 5673  ; code avoids SE CPU_89
	.noremark 5684  ; code avoids SE CPU_116 indirect write
	.noremark 5002  ; code respects overwrite rules
;*******************************************************************************
;* GLOBAL FILE PARAMETERS                                                      *
;*                                                                             *
;*   Architecture       : TMS320C55x                                           *
;*   Optimizing for     : Speed                                                *
;*   Memory             : Large Model (23-Bit Data Pointers)                   *
;*   Calls              : Normal Library ASM calls                             *
;*   Debug Info         : Optimized TI Debug Information                       *
;*******************************************************************************

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuinit.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen PC v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\ecu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug")
;******************************************************************************
;* CINIT RECORDS                                                              *
;******************************************************************************
	.sect	".cinit"
	.align	1
	.field  	$C$IR_1,16
	.field  	_piuBufs+0,24
	.field  	0,8
	.field	0,16			; _piuBufs[0]._mclass @ 0
	.field	0,16			; _piuBufs[0]._log2align @ 16
	.field	0,16			; _piuBufs[0]._size @ 32
	.field	0,16			; _piuBufs[0]._volat @ 48
	.field	0,32			; _piuBufs[0]._base @ 64
	.field	0,16			; _piuBufs[1]._mclass @ 96
	.field	0,16			; _piuBufs[1]._log2align @ 112
	.field	0,16			; _piuBufs[1]._size @ 128
	.field	0,16			; _piuBufs[1]._volat @ 144
	.field	0,32			; _piuBufs[1]._base @ 160
	.field	0,16			; _piuBufs[2]._mclass @ 192
	.field	0,16			; _piuBufs[2]._log2align @ 208
	.field	0,16			; _piuBufs[2]._size @ 224
	.field	0,16			; _piuBufs[2]._volat @ 240
	.field	0,32			; _piuBufs[2]._base @ 256
	.field	0,16			; _piuBufs[3]._mclass @ 288
	.field	0,16			; _piuBufs[3]._log2align @ 304
	.field	0,16			; _piuBufs[3]._size @ 320
	.field	0,16			; _piuBufs[3]._volat @ 336
	.field	0,32			; _piuBufs[3]._base @ 352
$C$IR_1:	.set	24

$C$DW$1	.dwtag  DW_TAG_variable, DW_AT_name("piuContext")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_piuContext")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.bss	_piuBufs,24,0,2
$C$DW$2	.dwtag  DW_TAG_variable, DW_AT_name("piuBufs")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("_piuBufs")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$2, DW_AT_location[DW_OP_addr _piuBufs]
;	C:\MAS_Tools\CCSV5_2_1\ccsv5\tools\compiler\c5500_4.4.1\bin\acp55.exe -@C:\\DOCUME~1\\a0868396\\LOCALS~1\\Temp\\1152012 
	.sect	".text"
	.global	_piuGetSizes

$C$DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("piuGetSizes")
	.dwattr $C$DW$3, DW_AT_low_pc(_piuGetSizes)
	.dwattr $C$DW$3, DW_AT_high_pc(0x00)
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_piuGetSizes")
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$3, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuinit.c")
	.dwattr $C$DW$3, DW_AT_TI_begin_line(0x7a)
	.dwattr $C$DW$3, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$3, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuinit.c",line 123,column 1,is_stmt,address _piuGetSizes

	.dwfde $C$DW$CIE, _piuGetSizes
$C$DW$4	.dwtag  DW_TAG_formal_parameter, DW_AT_name("nbufs")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_nbufs")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$4, DW_AT_location[DW_OP_reg17]
$C$DW$5	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bufs")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_bufs")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_reg19]
$C$DW$6	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cfg")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_cfg")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_reg21]
;----------------------------------------------------------------------
; 122 | tint piuGetSizes (tint *nbufs, const ecomemBuffer_t **bufs, piuSizeConf
;     | ig_t *cfg)                                                             
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: piuGetSizes                                                  *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,   *
;*                        CARRY,M40,SATA,SATD,RDM,FRCT,SMUL                    *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_piuGetSizes:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-7
	.dwcfi	cfa_offset, 8
$C$DW$7	.dwtag  DW_TAG_variable, DW_AT_name("nbufs")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_nbufs")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$8	.dwtag  DW_TAG_variable, DW_AT_name("bufs")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_bufs")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$9	.dwtag  DW_TAG_variable, DW_AT_name("cfg")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_cfg")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_bregx 0x24 4]
        dbl(*SP(#4)) = XAR2
        dbl(*SP(#2)) = XAR1
        dbl(*SP(#0)) = XAR0
        XAR3 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuinit.c",line 124,column 3,is_stmt
;----------------------------------------------------------------------
; 124 | *nbufs = piu_NBUFS;                                                    
;----------------------------------------------------------------------
        *AR3 = #4 ; |124| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuinit.c",line 126,column 3,is_stmt
;----------------------------------------------------------------------
; 126 | piuBufs[piu_INSTANCE_BUFN].size = sizeof(piuInst_t);                   
;----------------------------------------------------------------------
        *(#(_piuBufs+2)) = #64 ; |126| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuinit.c",line 127,column 3,is_stmt
;----------------------------------------------------------------------
; 127 | piuBufs[piu_SENDOUT_BUFN].size  = piu_NUMSEGM_TX *                     
; 128 |                                   cfg->max_samples_per_segment *       
; 129 |                                   sizeof(linSample);                   
;----------------------------------------------------------------------
        AR1 = *AR3 ; |127| 
        AR1 = AR1 <<< #1 ; |127| 
        *(#(_piuBufs+8)) = AR1 ; |127| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuinit.c",line 131,column 3,is_stmt
;----------------------------------------------------------------------
; 131 | if (cfg->rx_triple_buffering) {                                        
;----------------------------------------------------------------------
        AR1 = *AR3(short(#1)) ; |131| 
        if (AR1 == #0) goto $C$L1 ; |131| 
                                        ; branchcc occurs ; |131| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuinit.c",line 133,column 6,is_stmt
;----------------------------------------------------------------------
; 133 | piuBufs[piu_RECVIN_BUFN].size   = piu_NUMSEGM_RX3 *                    
; 134 |                                   cfg->max_samples_per_segment *       
; 135 |                                   sizeof(linSample);                   
; 136 | #if PIUDLCOMP_ENABLE                                                   
;----------------------------------------------------------------------
        AC0 = *AR3 * #3 ; |133| 
        *(#(_piuBufs+14)) = AC0 ; |133| 
        AC0 = *AR3 << #16
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuinit.c",line 137,column 7,is_stmt
;----------------------------------------------------------------------
; 137 | piuBufs[piu_RECVOUT_BUFN].size= piu_NUMSEGM_RX3 *                      
; 138 |                                 (cfg->max_samples_per_segment>>1) *    
; 139 |                                  sizeof(linSample);                    
; 140 | #else                                                                  
; 141 | piuBufs[piu_RECVOUT_BUFN].size= piu_NUMSEGM_RX3 *                      
; 142 |                                 cfg->max_samples_per_segment *         
; 143 |                                  sizeof(linSample);                    
; 144 | #endif                                                                 
;----------------------------------------------------------------------
        AC0 = AC0 >> #1 ; |137| 
        AC0 = AC0 * #3 ; |137| 
        *(#(_piuBufs+20)) = AC0 ; |137| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuinit.c",line 145,column 3,is_stmt
;----------------------------------------------------------------------
; 146 | else {                                                                 
;----------------------------------------------------------------------
        goto $C$L2 ; |145| 
                                        ; branch occurs ; |145| 
$C$L1:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuinit.c",line 148,column 5,is_stmt
;----------------------------------------------------------------------
; 148 | piuBufs[piu_RECVIN_BUFN].size   = piu_NUMSEGM_RX2 *                    
; 149 |                                    cfg->max_samples_per_segment *      
; 150 |                                    sizeof(linSample);                  
; 151 | #if PIUDLCOMP_ENABLE                                                   
;----------------------------------------------------------------------
        AR1 = *AR3 ; |148| 
        AR1 = AR1 <<< #1 ; |148| 
        *(#(_piuBufs+14)) = AR1 ; |148| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuinit.c",line 152,column 7,is_stmt
;----------------------------------------------------------------------
; 152 | piuBufs[piu_RECVOUT_BUFN].size= piu_NUMSEGM_RX2 *                      
; 153 |                                 (cfg->max_samples_per_segment>>1) *    
; 154 |                                  sizeof(linSample);                    
; 155 | #else                                                                  
; 156 | piuBufs[piu_RECVOUT_BUFN].size= piu_NUMSEGM_RX2 *                      
; 157 |                                 cfg->max_samples_per_segment *         
; 158 |                                  sizeof(linSample);                    
; 159 | #endif                                                                 
;----------------------------------------------------------------------
        AR1 = *AR3 ; |152| 
        AR1 = AR1 >> #1 ; |152| 
        AR1 = AR1 <<< #1 ; |152| 
        *(#(_piuBufs+20)) = AR1 ; |152| 
$C$L2:    
        XAR2 = dbl(*SP(#2))
        T0 = #0
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuinit.c",line 162,column 3,is_stmt
;----------------------------------------------------------------------
; 162 | *bufs = piuBufs ;      /* Return pointer to instance */                
; 164 | return (piu_NOERR);                                                    
;----------------------------------------------------------------------
        XAR3 = #_piuBufs ; |162| 
        dbl(*AR2) = XAR3
        SP = SP + #7
	.dwcfi	cfa_offset, 1
$C$DW$10	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$10, DW_AT_low_pc(0x00)
	.dwattr $C$DW$10, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$3, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuinit.c")
	.dwattr $C$DW$3, DW_AT_TI_end_line(0xa5)
	.dwattr $C$DW$3, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$3

	.sect	".text"
	.global	_piuNew

$C$DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("piuNew")
	.dwattr $C$DW$11, DW_AT_low_pc(_piuNew)
	.dwattr $C$DW$11, DW_AT_high_pc(0x00)
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_piuNew")
	.dwattr $C$DW$11, DW_AT_external
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$11, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuinit.c")
	.dwattr $C$DW$11, DW_AT_TI_begin_line(0xb7)
	.dwattr $C$DW$11, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$11, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuinit.c",line 184,column 1,is_stmt,address _piuNew

	.dwfde $C$DW$CIE, _piuNew
$C$DW$12	.dwtag  DW_TAG_formal_parameter, DW_AT_name("piuInst")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_piuInst")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_reg17]
$C$DW$13	.dwtag  DW_TAG_formal_parameter, DW_AT_name("nbufs")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_nbufs")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_reg12]
$C$DW$14	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bufs")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_bufs")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_reg19]
$C$DW$15	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cfg")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_cfg")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_reg21]
;----------------------------------------------------------------------
; 183 | tint piuNew (void **piuInst, tint nbufs, ecomemBuffer_t *bufs, piuNewCo
;     | nfig_t *cfg)                                                           
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: piuNew                                                       *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,   *
;*                        CSR,RPTC,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL       *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 16 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (14 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_piuNew:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-15
	.dwcfi	cfa_offset, 16
$C$DW$16	.dwtag  DW_TAG_variable, DW_AT_name("piuInst")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_piuInst")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$17	.dwtag  DW_TAG_variable, DW_AT_name("nbufs")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_nbufs")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$18	.dwtag  DW_TAG_variable, DW_AT_name("bufs")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_bufs")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$19	.dwtag  DW_TAG_variable, DW_AT_name("cfg")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_cfg")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$20	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$21	.dwtag  DW_TAG_variable, DW_AT_name("failed")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_failed")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_bregx 0x24 9]
$C$DW$22	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$23	.dwtag  DW_TAG_variable, DW_AT_name("bufp")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_bufp")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_bregx 0x24 12]
        dbl(*SP(#6)) = XAR2
        dbl(*SP(#4)) = XAR1
;----------------------------------------------------------------------
; 185 | int   i;                                                               
; 186 | tbool  failed;                                                         
; 187 | piuInst_t   *inst;                                                     
; 188 | ecomemBuffer_t *bufp;                                                  
;----------------------------------------------------------------------
        *SP(#2) = T0 ; |184| 
        dbl(*SP(#0)) = XAR0
        XAR3 = dbl(*SP(#0))
        XAR3 = dbl(*AR3)
        AC0 = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuinit.c",line 191,column 3,is_stmt
;----------------------------------------------------------------------
; 191 | if (*piuInst != NULL || nbufs != piu_NBUFS) return (piu_ERROR) ;       
;----------------------------------------------------------------------
        if (AC0 != #0) goto $C$L3 ; |191| 
                                        ; branchcc occurs ; |191| 
        TC1 = (*SP(#2) == #4) ; |191| 
        if (TC1) goto $C$L4 ; |191| 
                                        ; branchcc occurs ; |191| 
$C$L3:    
        T0 = #1
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuinit.c",line 191,column 47,is_stmt
        goto $C$L12 ; |191| 
                                        ; branch occurs ; |191| 
$C$L4:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuinit.c",line 194,column 3,is_stmt
;----------------------------------------------------------------------
; 194 | failed = FALSE;                                                        
;----------------------------------------------------------------------
        *SP(#9) = #0 ; |194| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuinit.c",line 195,column 8,is_stmt
;----------------------------------------------------------------------
; 195 | for (i = 0, bufp = &bufs[0]; i<nbufs; i++, bufp++) {                   
;----------------------------------------------------------------------
        *SP(#8) = #0 ; |195| 
        XAR3 = dbl(*SP(#4))
        dbl(*SP(#12)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuinit.c",line 195,column 32,is_stmt
        AR1 = *SP(#2) ; |195| 
        AR2 = *SP(#8) ; |195| 
        TC1 = (AR2 >= AR1) ; |195| 
        if (TC1) goto $C$L7 ; |195| 
                                        ; branchcc occurs ; |195| 
$C$L5:    
$C$DW$L$_piuNew$5$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuinit.c",line 197,column 5,is_stmt
;----------------------------------------------------------------------
; 197 | failed = failed || (bufp->base == NULL);                               
;----------------------------------------------------------------------
        AR1 = *SP(#9) ; |197| 
        AR2 = #1
        if (AR1 != #0) goto $C$L6 ; |197| 
                                        ; branchcc occurs ; |197| 
$C$DW$L$_piuNew$5$E:
$C$DW$L$_piuNew$6$B:
        XAR3 = dbl(*AR3(short(#4)))
        AC0 = XAR3
        if (AC0 != #0) execute (D_Unit) ||
           AR2 = #0
$C$DW$L$_piuNew$6$E:
$C$L6:    
$C$DW$L$_piuNew$7$B:
        *SP(#9) = AR2 ; |197| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuinit.c",line 195,column 41,is_stmt
        *SP(#8) = *SP(#8) + #1 ; |195| 
        XAR3 = dbl(*SP(#12))

        dbl(*SP(#12)) = XAR3
||      mar(AR3 + #6) ; |195| 

	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuinit.c",line 195,column 32,is_stmt
        AR1 = *SP(#2) ; |195| 
        AR2 = *SP(#8) ; |195| 
        TC1 = (AR2 < AR1) ; |195| 
        if (TC1) goto $C$L5 ; |195| 
                                        ; branchcc occurs ; |195| 
$C$DW$L$_piuNew$7$E:
$C$L7:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuinit.c",line 199,column 3,is_stmt
;----------------------------------------------------------------------
; 199 | if (failed)                                                            
;----------------------------------------------------------------------
        AR1 = *SP(#9) ; |199| 
        if (AR1 != #0) execute (D_Unit) ||
           T0 = #-1
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuinit.c",line 200,column 5,is_stmt
;----------------------------------------------------------------------
; 200 | return (piu_NOMEMORY);                                                 
; 203 | bufp = &bufs[piu_INSTANCE_BUFN];                                       
;----------------------------------------------------------------------
        if (AR1 != #0) goto $C$L12 ; |200| 
                                        ; branchcc occurs ; |200| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuinit.c",line 204,column 3,is_stmt
;----------------------------------------------------------------------
; 204 | if (bufp->size < sizeof(piuInst_t)) return (piu_ERROR);                
;----------------------------------------------------------------------
        AR2 = #64 ; |204| 
        dbl(*SP(#12)) = XAR3
        AR1 = *AR3(short(#2)) ; |204| 
        TC1 = uns(AR1 >= AR2) ; |204| 
        if (!TC1) execute (D_Unit) ||
           T0 = #1
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuinit.c",line 204,column 39,is_stmt
;----------------------------------------------------------------------
; 205 | inst = (piuInst_t *)bufp->base;                                        
; 208 | bufp = &bufs[piu_SENDOUT_BUFN];                                        
; 209 | inst->send_out_buf = (linSample *)bufp->base;                          
; 212 | bufp = &bufs[piu_RECVIN_BUFN];                                         
; 213 | inst->receive_in_buf.start_ptr = (linSample *)bufp->base;              
; 216 | bufp = &bufs[piu_RECVOUT_BUFN];                                        
; 217 | inst->receive_out_buf = (linSample *)bufp->base;                       
;----------------------------------------------------------------------
        if (!TC1) goto $C$L12 ; |204| 
                                        ; branchcc occurs ; |204| 
        XAR3 = dbl(*AR3(short(#4)))
        dbl(*SP(#10)) = XAR3
        XAR3 = dbl(*SP(#4))

        dbl(*SP(#12)) = XAR3
||      mar(AR3 + #6) ; |208| 

        XAR2 = dbl(*SP(#10))
        XAR3 = dbl(*AR3(short(#4)))
        dbl(*AR2(#16)) = XAR3
        XAR3 = dbl(*SP(#4))

        dbl(*SP(#12)) = XAR3
||      mar(AR3 + #12) ; |212| 

        XAR2 = dbl(*SP(#10))
        XAR3 = dbl(*AR3(short(#4)))
        dbl(*AR2(#40)) = XAR3
        XAR3 = dbl(*SP(#4))

        dbl(*SP(#12)) = XAR3
||      mar(AR3 + #18) ; |216| 

        XAR2 = dbl(*SP(#10))
        XAR3 = dbl(*AR3(short(#4)))
        dbl(*AR2(#12)) = XAR3
        XAR3 = dbl(*SP(#10))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuinit.c",line 219,column 3,is_stmt
;----------------------------------------------------------------------
; 219 | inst->mode_bitfield          = 0;                                      
; 220 | inst->receive_in_buf.end_ptr = inst->receive_in_buf.start_ptr;         
;----------------------------------------------------------------------
        *AR3(short(#2)) = #0 ; |219| 
        XAR3 = dbl(*SP(#10))
        XAR2 = dbl(*SP(#10))
        XAR3 = dbl(*AR3(#40))
        dbl(*AR2(#42)) = XAR3
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuinit.c",line 221,column 3,is_stmt
;----------------------------------------------------------------------
; 221 | if (cfg->sizeCfg.rx_triple_buffering) {                                
;----------------------------------------------------------------------
        AR1 = *AR3(#15) ; |221| 
        if (AR1 == #0) goto $C$L8 ; |221| 
                                        ; branchcc occurs ; |221| 
        XAR2 = dbl(*SP(#10))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuinit.c",line 224,column 5,is_stmt
;----------------------------------------------------------------------
; 224 | inst->receive_in_buf.end_ptr += (piu_NUMSEGM_RX3 * cfg->sizeCfg.max_sam
;     | ples_per_segment);                                                     
;----------------------------------------------------------------------
        AC0 = *AR3(#14) * #3 ; |224| 
        AR1 = AC0 ; |224| 
        XAR3 = dbl(*AR2(#42))
        mar(AR3 + AR1) ; |224| 
        dbl(*AR2(#42)) = XAR3
        XAR3 = dbl(*SP(#10))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuinit.c",line 225,column 5,is_stmt
;----------------------------------------------------------------------
; 225 | inst->mode_bitfield |= piu_CTRL_BIT_TRIPLE_RX_BUF;                     
;----------------------------------------------------------------------
        *AR3(short(#2)) = *AR3(short(#2)) | #0x0200 ; |225| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuinit.c",line 226,column 3,is_stmt
;----------------------------------------------------------------------
; 226 | } else {                                                               
;----------------------------------------------------------------------
        goto $C$L9 ; |226| 
                                        ; branch occurs ; |226| 
$C$L8:    
        XAR2 = dbl(*SP(#10))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuinit.c",line 228,column 5,is_stmt
;----------------------------------------------------------------------
; 228 | inst->receive_in_buf.end_ptr += (piu_NUMSEGM_RX2 * cfg->sizeCfg.max_sam
;     | ples_per_segment);                                                     
; 230 | inst->receive_in_buf.top_ptr   = inst->receive_in_buf.end_ptr;
;     |                                                                        
;----------------------------------------------------------------------
        AR1 = *AR3(#14) ; |228| 
        AR1 = AR1 <<< #1 ; |228| 
        XAR3 = dbl(*AR2(#42))
        mar(AR3 + AR1) ; |228| 
        dbl(*AR2(#42)) = XAR3
$C$L9:    
        XAR3 = dbl(*SP(#10))
        XAR2 = dbl(*SP(#10))
        XAR3 = dbl(*AR3(#42))
        dbl(*AR2(#44)) = XAR3
        XAR2 = dbl(*SP(#10))
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuinit.c",line 233,column 3,is_stmt
;----------------------------------------------------------------------
; 233 | inst->ID      = cfg->ID;                                               
;----------------------------------------------------------------------
        *AR2 = *AR3 ; |233| 
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuinit.c",line 234,column 3,is_stmt
;----------------------------------------------------------------------
; 234 | piuContext    = cfg->context;                                          
;----------------------------------------------------------------------
        XAR2 = #_piuContext ; |234| 
        mar(AR3 + #2) ; |234| 
        repeat(#5) ; |234| 
                                            ; loop starts ; |234| 
$C$L10:    
$C$DW$L$_piuNew$14$B:
            dbl(*AR2+) = dbl(*AR3+) ; |234| 
                                        ; loop ends ; |234| 
$C$DW$L$_piuNew$14$E:
$C$L11:    
        XAR3 = dbl(*SP(#10))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuinit.c",line 235,column 3,is_stmt
;----------------------------------------------------------------------
; 235 | inst->state   = piu_CLOSED;     /* state is set to closed */           
; 237 | *piuInst = (void *)inst;          /* return the instance pointer */    
; 239 | return (piu_NOERR);                                                    
;----------------------------------------------------------------------
        *AR3(short(#1)) = #0 ; |235| 
        XAR2 = dbl(*SP(#0))
        T0 = #0
        XAR3 = dbl(*SP(#10))
        dbl(*AR2) = XAR3
$C$L12:    
        SP = SP + #15
	.dwcfi	cfa_offset, 1
$C$DW$24	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$24, DW_AT_low_pc(0x00)
	.dwattr $C$DW$24, DW_AT_TI_return
        return
                                        ; return occurs

$C$DW$25	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$25, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\ecu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\piuinit.asm:$C$L10:1:1373047935")
	.dwattr $C$DW$25, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuinit.c")
	.dwattr $C$DW$25, DW_AT_TI_begin_line(0xea)
	.dwattr $C$DW$25, DW_AT_TI_end_line(0xea)
$C$DW$26	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$26, DW_AT_low_pc($C$DW$L$_piuNew$14$B)
	.dwattr $C$DW$26, DW_AT_high_pc($C$DW$L$_piuNew$14$E)
	.dwendtag $C$DW$25


$C$DW$27	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$27, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\ecu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\piuinit.asm:$C$L5:1:1373047935")
	.dwattr $C$DW$27, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuinit.c")
	.dwattr $C$DW$27, DW_AT_TI_begin_line(0xc3)
	.dwattr $C$DW$27, DW_AT_TI_end_line(0xc6)
$C$DW$28	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$28, DW_AT_low_pc($C$DW$L$_piuNew$5$B)
	.dwattr $C$DW$28, DW_AT_high_pc($C$DW$L$_piuNew$5$E)
$C$DW$29	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$29, DW_AT_low_pc($C$DW$L$_piuNew$6$B)
	.dwattr $C$DW$29, DW_AT_high_pc($C$DW$L$_piuNew$6$E)
$C$DW$30	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$30, DW_AT_low_pc($C$DW$L$_piuNew$7$B)
	.dwattr $C$DW$30, DW_AT_high_pc($C$DW$L$_piuNew$7$E)
	.dwendtag $C$DW$27

	.dwattr $C$DW$11, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuinit.c")
	.dwattr $C$DW$11, DW_AT_TI_end_line(0xf0)
	.dwattr $C$DW$11, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$11

;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_piuContext

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x06)
$C$DW$31	.dwtag  DW_TAG_member
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$31, DW_AT_name("mclass")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_mclass")
	.dwattr $C$DW$31, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$31, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$32	.dwtag  DW_TAG_member
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$32, DW_AT_name("log2align")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_log2align")
	.dwattr $C$DW$32, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$32, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$33	.dwtag  DW_TAG_member
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$33, DW_AT_name("size")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$33, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$33, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$34	.dwtag  DW_TAG_member
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$34, DW_AT_name("volat")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_volat")
	.dwattr $C$DW$34, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$34, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$35	.dwtag  DW_TAG_member
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$35, DW_AT_name("base")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_base")
	.dwattr $C$DW$35, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$35, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$29

$C$DW$T$62	.dwtag  DW_TAG_typedef, DW_AT_name("ecomemBuffer_t")
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$62, DW_AT_language(DW_LANG_C)
$C$DW$T$63	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$T$63, DW_AT_address_class(0x17)

$C$DW$T$64	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$T$64, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$64, DW_AT_byte_size(0x18)
$C$DW$36	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$36, DW_AT_upper_bound(0x03)
	.dwendtag $C$DW$T$64

$C$DW$37	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$62)
$C$DW$T$66	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$37)
$C$DW$T$67	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$T$67, DW_AT_address_class(0x17)
$C$DW$T$68	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$T$68, DW_AT_address_class(0x17)

$C$DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x02)
$C$DW$38	.dwtag  DW_TAG_member
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$38, DW_AT_name("max_samples_per_segment")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_max_samples_per_segment")
	.dwattr $C$DW$38, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$38, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$39	.dwtag  DW_TAG_member
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$39, DW_AT_name("rx_triple_buffering")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_rx_triple_buffering")
	.dwattr $C$DW$39, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$39, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$30

$C$DW$T$43	.dwtag  DW_TAG_typedef, DW_AT_name("piuSizeConfig_t")
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$43, DW_AT_language(DW_LANG_C)
$C$DW$T$69	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$69, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$69, DW_AT_address_class(0x17)

$C$DW$T$41	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x0c)
$C$DW$40	.dwtag  DW_TAG_member
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$40, DW_AT_name("max_pcm_val")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_max_pcm_val")
	.dwattr $C$DW$40, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$40, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$41	.dwtag  DW_TAG_member
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$41, DW_AT_name("debugInfo")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_debugInfo")
	.dwattr $C$DW$41, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$41, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$42	.dwtag  DW_TAG_member
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$42, DW_AT_name("reportOutFcn")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_reportOutFcn")
	.dwattr $C$DW$42, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$42, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$43	.dwtag  DW_TAG_member
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$43, DW_AT_name("sendOutProcFcn")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_sendOutProcFcn")
	.dwattr $C$DW$43, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$43, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$44	.dwtag  DW_TAG_member
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$44, DW_AT_name("sendOutIsrFcn")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_sendOutIsrFcn")
	.dwattr $C$DW$44, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$44, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$45	.dwtag  DW_TAG_member
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$45, DW_AT_name("pcmSampleTrace")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_pcmSampleTrace")
	.dwattr $C$DW$45, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$45, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$41

$C$DW$T$42	.dwtag  DW_TAG_typedef, DW_AT_name("piuContext_t")
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$42, DW_AT_language(DW_LANG_C)

$C$DW$T$44	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x10)
$C$DW$46	.dwtag  DW_TAG_member
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$46, DW_AT_name("ID")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_ID")
	.dwattr $C$DW$46, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$46, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$47	.dwtag  DW_TAG_member
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$47, DW_AT_name("context")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_context")
	.dwattr $C$DW$47, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$47, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$48	.dwtag  DW_TAG_member
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$48, DW_AT_name("sizeCfg")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_sizeCfg")
	.dwattr $C$DW$48, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$48, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$44

$C$DW$T$70	.dwtag  DW_TAG_typedef, DW_AT_name("piuNewConfig_t")
	.dwattr $C$DW$T$70, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$70, DW_AT_language(DW_LANG_C)
$C$DW$T$71	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$71, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$T$71, DW_AT_address_class(0x17)

$C$DW$T$49	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$49, DW_AT_byte_size(0x08)
$C$DW$49	.dwtag  DW_TAG_member
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$49, DW_AT_name("txEnergy")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_txEnergy")
	.dwattr $C$DW$49, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$49, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$50	.dwtag  DW_TAG_member
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$50, DW_AT_name("rxEnergy")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_rxEnergy")
	.dwattr $C$DW$50, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$50, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$51	.dwtag  DW_TAG_member
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$51, DW_AT_name("txDClevel")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_txDClevel")
	.dwattr $C$DW$51, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$51, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$52	.dwtag  DW_TAG_member
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$52, DW_AT_name("rxDClevel")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_rxDClevel")
	.dwattr $C$DW$52, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$52, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$49

$C$DW$T$57	.dwtag  DW_TAG_typedef, DW_AT_name("piuEnergyDCLevel_t")
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$T$57, DW_AT_language(DW_LANG_C)

$C$DW$T$52	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x0c)
$C$DW$53	.dwtag  DW_TAG_member
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$53, DW_AT_name("in_ptr")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_in_ptr")
	.dwattr $C$DW$53, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$53, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$54	.dwtag  DW_TAG_member
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$54, DW_AT_name("out_ptr")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_out_ptr")
	.dwattr $C$DW$54, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$54, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$55	.dwtag  DW_TAG_member
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$55, DW_AT_name("start_ptr")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_start_ptr")
	.dwattr $C$DW$55, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$55, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$56	.dwtag  DW_TAG_member
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$56, DW_AT_name("end_ptr")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_end_ptr")
	.dwattr $C$DW$56, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$56, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$57	.dwtag  DW_TAG_member
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$57, DW_AT_name("top_ptr")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_top_ptr")
	.dwattr $C$DW$57, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$57, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$58	.dwtag  DW_TAG_member
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$58, DW_AT_name("segment_count")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_segment_count")
	.dwattr $C$DW$58, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$58, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$52

$C$DW$T$58	.dwtag  DW_TAG_typedef, DW_AT_name("receive_in_buf_t")
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$T$58, DW_AT_language(DW_LANG_C)

$C$DW$T$53	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x08)
$C$DW$59	.dwtag  DW_TAG_member
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$59, DW_AT_name("txSilDetEnergy")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_txSilDetEnergy")
	.dwattr $C$DW$59, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$59, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$60	.dwtag  DW_TAG_member
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$60, DW_AT_name("rxSilDetEnergy")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_rxSilDetEnergy")
	.dwattr $C$DW$60, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$60, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$61	.dwtag  DW_TAG_member
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$61, DW_AT_name("threshold")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_threshold")
	.dwattr $C$DW$61, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$61, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$62	.dwtag  DW_TAG_member
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$62, DW_AT_name("cnt")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_cnt")
	.dwattr $C$DW$62, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$62, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$63	.dwtag  DW_TAG_member
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$63, DW_AT_name("initCnt")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_initCnt")
	.dwattr $C$DW$63, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$63, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$53

$C$DW$T$59	.dwtag  DW_TAG_typedef, DW_AT_name("bidSilenceCtrl_t")
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$T$59, DW_AT_language(DW_LANG_C)

$C$DW$T$54	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$54, DW_AT_byte_size(0x06)
$C$DW$64	.dwtag  DW_TAG_member
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$64, DW_AT_name("type")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_type")
	.dwattr $C$DW$64, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$64, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$65	.dwtag  DW_TAG_member
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$65, DW_AT_name("custom")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_custom")
	.dwattr $C$DW$65, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$65, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$66	.dwtag  DW_TAG_member
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$66, DW_AT_name("cnt")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_cnt")
	.dwattr $C$DW$66, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$66, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$67	.dwtag  DW_TAG_member
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$67, DW_AT_name("initCnt")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_initCnt")
	.dwattr $C$DW$67, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$67, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$54

$C$DW$T$60	.dwtag  DW_TAG_typedef, DW_AT_name("piuPcmPatternDetect_t")
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$T$60, DW_AT_language(DW_LANG_C)
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x17)
$C$DW$T$72	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$72, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$T$72, DW_AT_address_class(0x17)

$C$DW$T$32	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$32, DW_AT_language(DW_LANG_C)
$C$DW$68	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$3)
$C$DW$69	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$24)
$C$DW$70	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$24)
$C$DW$71	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$24)
$C$DW$72	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$31)
	.dwendtag $C$DW$T$32

$C$DW$T$33	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$33, DW_AT_address_class(0x20)
$C$DW$T$34	.dwtag  DW_TAG_typedef, DW_AT_name("dbgInfo_t")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)

$C$DW$T$35	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$35, DW_AT_language(DW_LANG_C)
$C$DW$73	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$3)
$C$DW$74	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$T$35

$C$DW$T$36	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$36, DW_AT_address_class(0x20)

$C$DW$T$37	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
$C$DW$75	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$3)
$C$DW$76	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$3)
$C$DW$77	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$3)
$C$DW$78	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$T$37

$C$DW$T$38	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$38, DW_AT_address_class(0x20)

$C$DW$T$39	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$39, DW_AT_language(DW_LANG_C)
$C$DW$79	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$21)
$C$DW$80	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$21)
$C$DW$81	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$3)
$C$DW$82	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$24)
	.dwendtag $C$DW$T$39

$C$DW$T$40	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$40, DW_AT_address_class(0x20)
$C$DW$T$4	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$4, DW_AT_encoding(DW_ATE_boolean)
	.dwattr $C$DW$T$4, DW_AT_name("bool")
	.dwattr $C$DW$T$4, DW_AT_byte_size(0x01)
$C$DW$T$5	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$5, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$5, DW_AT_name("signed char")
	.dwattr $C$DW$T$5, DW_AT_byte_size(0x01)
$C$DW$T$6	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)
$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x01)
$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x01)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)
$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x01)
$C$DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("int16_t")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
$C$DW$T$20	.dwtag  DW_TAG_typedef, DW_AT_name("int_least16_t")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_language(DW_LANG_C)
$C$DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("tint")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
$C$DW$T$73	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$73, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$73, DW_AT_address_class(0x17)
$C$DW$T$50	.dwtag  DW_TAG_typedef, DW_AT_name("linSample")
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$50, DW_AT_language(DW_LANG_C)
$C$DW$T$51	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$51, DW_AT_address_class(0x17)
$C$DW$83	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$21)
$C$DW$T$55	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$83)
$C$DW$T$56	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$T$56, DW_AT_address_class(0x17)
$C$DW$T$26	.dwtag  DW_TAG_typedef, DW_AT_name("int_least8_t")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)
$C$DW$T$27	.dwtag  DW_TAG_typedef, DW_AT_name("tshort")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)
$C$DW$T$28	.dwtag  DW_TAG_typedef, DW_AT_name("tbool")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)
$C$DW$T$22	.dwtag  DW_TAG_typedef, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
$C$DW$T$23	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least16_t")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
$C$DW$T$24	.dwtag  DW_TAG_typedef, DW_AT_name("tuint")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
$C$DW$T$31	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$31, DW_AT_address_class(0x17)
$C$DW$T$25	.dwtag  DW_TAG_typedef, DW_AT_name("tsize")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$25, DW_AT_language(DW_LANG_C)
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)
$C$DW$T$45	.dwtag  DW_TAG_typedef, DW_AT_name("int32_t")
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$45, DW_AT_language(DW_LANG_C)
$C$DW$T$46	.dwtag  DW_TAG_typedef, DW_AT_name("int_least32_t")
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$46, DW_AT_language(DW_LANG_C)
$C$DW$T$47	.dwtag  DW_TAG_typedef, DW_AT_name("tlong")
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$47, DW_AT_language(DW_LANG_C)
$C$DW$T$48	.dwtag  DW_TAG_typedef, DW_AT_name("LFract")
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$48, DW_AT_language(DW_LANG_C)
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)
$C$DW$T$14	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_name("long long")
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x04)
	.dwattr $C$DW$T$14, DW_AT_bit_size(0x28)
	.dwattr $C$DW$T$14, DW_AT_bit_offset(0x18)
$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x04)
	.dwattr $C$DW$T$15, DW_AT_bit_size(0x28)
	.dwattr $C$DW$T$15, DW_AT_bit_offset(0x18)
$C$DW$T$16	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x02)
$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x02)
$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x02)

$C$DW$T$61	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$61, DW_AT_name("piuInst_s")
	.dwattr $C$DW$T$61, DW_AT_byte_size(0x40)
$C$DW$84	.dwtag  DW_TAG_member
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$84, DW_AT_name("ID")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_ID")
	.dwattr $C$DW$84, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$84, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$85	.dwtag  DW_TAG_member
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$85, DW_AT_name("state")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_state")
	.dwattr $C$DW$85, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$85, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$86	.dwtag  DW_TAG_member
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$86, DW_AT_name("mode_bitfield")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("_mode_bitfield")
	.dwattr $C$DW$86, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$86, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$87	.dwtag  DW_TAG_member
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$87, DW_AT_name("pcm_expand_table")
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("_pcm_expand_table")
	.dwattr $C$DW$87, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$87, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$88	.dwtag  DW_TAG_member
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$88, DW_AT_name("pcm_format")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("_pcm_format")
	.dwattr $C$DW$88, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$88, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$89	.dwtag  DW_TAG_member
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$89, DW_AT_name("segment_size")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_segment_size")
	.dwattr $C$DW$89, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$89, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$90	.dwtag  DW_TAG_member
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$90, DW_AT_name("rx_delay")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_rx_delay")
	.dwattr $C$DW$90, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$90, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$91	.dwtag  DW_TAG_member
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$91, DW_AT_name("rx_underflow_cnt")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_rx_underflow_cnt")
	.dwattr $C$DW$91, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$91, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$92	.dwtag  DW_TAG_member
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$92, DW_AT_name("rx_overflow_cnt")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_rx_overflow_cnt")
	.dwattr $C$DW$92, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$92, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$93	.dwtag  DW_TAG_member
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$93, DW_AT_name("receive_out_buf")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_receive_out_buf")
	.dwattr $C$DW$93, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$93, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$94	.dwtag  DW_TAG_member
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$94, DW_AT_name("receive_out_buf_ptr")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("_receive_out_buf_ptr")
	.dwattr $C$DW$94, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$94, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$95	.dwtag  DW_TAG_member
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$95, DW_AT_name("send_out_buf")
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("_send_out_buf")
	.dwattr $C$DW$95, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$95, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$96	.dwtag  DW_TAG_member
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$96, DW_AT_name("send_out_buf_ptr")
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("_send_out_buf_ptr")
	.dwattr $C$DW$96, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$96, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$97	.dwtag  DW_TAG_member
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$97, DW_AT_name("reportOutTargetInst")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("_reportOutTargetInst")
	.dwattr $C$DW$97, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$97, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$98	.dwtag  DW_TAG_member
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$98, DW_AT_name("sendOutProcTargetInst")
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("_sendOutProcTargetInst")
	.dwattr $C$DW$98, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$98, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$99	.dwtag  DW_TAG_member
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$99, DW_AT_name("sendOutIsrTargetInst")
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_sendOutIsrTargetInst")
	.dwattr $C$DW$99, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$99, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$100	.dwtag  DW_TAG_member
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$100, DW_AT_name("energy_DClevel")
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("_energy_DClevel")
	.dwattr $C$DW$100, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$100, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$101	.dwtag  DW_TAG_member
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$101, DW_AT_name("generatePattern")
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_generatePattern")
	.dwattr $C$DW$101, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$101, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$102	.dwtag  DW_TAG_member
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$102, DW_AT_name("receive_in_buf")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("_receive_in_buf")
	.dwattr $C$DW$102, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$102, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$103	.dwtag  DW_TAG_member
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$103, DW_AT_name("bidSilence")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("_bidSilence")
	.dwattr $C$DW$103, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$103, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$104	.dwtag  DW_TAG_member
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$104, DW_AT_name("pcmPattern")
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_pcmPattern")
	.dwattr $C$DW$104, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$104, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$105	.dwtag  DW_TAG_member
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$105, DW_AT_name("silence_pattern")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_silence_pattern")
	.dwattr $C$DW$105, DW_AT_data_member_location[DW_OP_plus_uconst 0x3e]
	.dwattr $C$DW$105, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$61

$C$DW$T$76	.dwtag  DW_TAG_typedef, DW_AT_name("piuInst_t")
	.dwattr $C$DW$T$76, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$T$76, DW_AT_language(DW_LANG_C)
$C$DW$T$77	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$77, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$T$77, DW_AT_address_class(0x17)
	.dwattr $C$DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF CIE ENTRIES                                           *
;***************************************************************

$C$DW$CIE	.dwcie 91
	.dwcfi	cfa_register, 36
	.dwcfi	cfa_offset, 0
	.dwcfi	undefined, 0
	.dwcfi	undefined, 1
	.dwcfi	undefined, 2
	.dwcfi	undefined, 3
	.dwcfi	undefined, 4
	.dwcfi	undefined, 5
	.dwcfi	undefined, 6
	.dwcfi	undefined, 7
	.dwcfi	undefined, 8
	.dwcfi	undefined, 9
	.dwcfi	undefined, 10
	.dwcfi	undefined, 11
	.dwcfi	undefined, 12
	.dwcfi	undefined, 13
	.dwcfi	same_value, 14
	.dwcfi	same_value, 15
	.dwcfi	undefined, 16
	.dwcfi	undefined, 17
	.dwcfi	undefined, 18
	.dwcfi	undefined, 19
	.dwcfi	undefined, 20
	.dwcfi	undefined, 21
	.dwcfi	undefined, 22
	.dwcfi	undefined, 23
	.dwcfi	undefined, 24
	.dwcfi	undefined, 25
	.dwcfi	same_value, 26
	.dwcfi	same_value, 27
	.dwcfi	same_value, 28
	.dwcfi	same_value, 29
	.dwcfi	same_value, 30
	.dwcfi	same_value, 31
	.dwcfi	undefined, 32
	.dwcfi	undefined, 33
	.dwcfi	undefined, 34
	.dwcfi	undefined, 35
	.dwcfi	undefined, 36
	.dwcfi	undefined, 37
	.dwcfi	undefined, 38
	.dwcfi	undefined, 39
	.dwcfi	undefined, 40
	.dwcfi	undefined, 41
	.dwcfi	undefined, 42
	.dwcfi	undefined, 43
	.dwcfi	undefined, 44
	.dwcfi	undefined, 45
	.dwcfi	undefined, 46
	.dwcfi	undefined, 47
	.dwcfi	undefined, 48
	.dwcfi	undefined, 49
	.dwcfi	undefined, 50
	.dwcfi	undefined, 51
	.dwcfi	undefined, 52
	.dwcfi	undefined, 53
	.dwcfi	undefined, 54
	.dwcfi	undefined, 55
	.dwcfi	undefined, 56
	.dwcfi	undefined, 57
	.dwcfi	undefined, 58
	.dwcfi	undefined, 59
	.dwcfi	undefined, 60
	.dwcfi	undefined, 61
	.dwcfi	undefined, 62
	.dwcfi	undefined, 63
	.dwcfi	undefined, 64
	.dwcfi	undefined, 65
	.dwcfi	undefined, 66
	.dwcfi	undefined, 67
	.dwcfi	undefined, 68
	.dwcfi	undefined, 69
	.dwcfi	undefined, 70
	.dwcfi	undefined, 71
	.dwcfi	undefined, 72
	.dwcfi	undefined, 73
	.dwcfi	undefined, 74
	.dwcfi	undefined, 75
	.dwcfi	undefined, 76
	.dwcfi	undefined, 77
	.dwcfi	undefined, 78
	.dwcfi	undefined, 79
	.dwcfi	undefined, 80
	.dwcfi	undefined, 81
	.dwcfi	undefined, 82
	.dwcfi	undefined, 83
	.dwcfi	undefined, 84
	.dwcfi	undefined, 85
	.dwcfi	undefined, 86
	.dwcfi	undefined, 87
	.dwcfi	undefined, 88
	.dwcfi	undefined, 89
	.dwcfi	undefined, 90
	.dwcfi	undefined, 91
	.dwendentry

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

$C$DW$106	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$106, DW_AT_location[DW_OP_reg0]
$C$DW$107	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$107, DW_AT_location[DW_OP_reg1]
$C$DW$108	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$108, DW_AT_location[DW_OP_reg2]
$C$DW$109	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$109, DW_AT_location[DW_OP_reg3]
$C$DW$110	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$110, DW_AT_location[DW_OP_reg4]
$C$DW$111	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$111, DW_AT_location[DW_OP_reg5]
$C$DW$112	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$112, DW_AT_location[DW_OP_reg6]
$C$DW$113	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$113, DW_AT_location[DW_OP_reg7]
$C$DW$114	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$114, DW_AT_location[DW_OP_reg8]
$C$DW$115	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$115, DW_AT_location[DW_OP_reg9]
$C$DW$116	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$116, DW_AT_location[DW_OP_reg10]
$C$DW$117	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$117, DW_AT_location[DW_OP_reg11]
$C$DW$118	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$118, DW_AT_location[DW_OP_reg12]
$C$DW$119	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$119, DW_AT_location[DW_OP_reg13]
$C$DW$120	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$120, DW_AT_location[DW_OP_reg14]
$C$DW$121	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$121, DW_AT_location[DW_OP_reg15]
$C$DW$122	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$122, DW_AT_location[DW_OP_reg16]
$C$DW$123	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$123, DW_AT_location[DW_OP_reg17]
$C$DW$124	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$124, DW_AT_location[DW_OP_reg18]
$C$DW$125	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$125, DW_AT_location[DW_OP_reg19]
$C$DW$126	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$126, DW_AT_location[DW_OP_reg20]
$C$DW$127	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$127, DW_AT_location[DW_OP_reg21]
$C$DW$128	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$128, DW_AT_location[DW_OP_reg22]
$C$DW$129	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$129, DW_AT_location[DW_OP_reg23]
$C$DW$130	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$130, DW_AT_location[DW_OP_reg24]
$C$DW$131	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$131, DW_AT_location[DW_OP_reg25]
$C$DW$132	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$132, DW_AT_location[DW_OP_reg26]
$C$DW$133	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$133, DW_AT_location[DW_OP_reg27]
$C$DW$134	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$134, DW_AT_location[DW_OP_reg28]
$C$DW$135	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$135, DW_AT_location[DW_OP_reg29]
$C$DW$136	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$136, DW_AT_location[DW_OP_reg30]
$C$DW$137	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$137, DW_AT_location[DW_OP_reg31]
$C$DW$138	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$138, DW_AT_location[DW_OP_regx 0x20]
$C$DW$139	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$139, DW_AT_location[DW_OP_regx 0x21]
$C$DW$140	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$140, DW_AT_location[DW_OP_regx 0x22]
$C$DW$141	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$141, DW_AT_location[DW_OP_regx 0x23]
$C$DW$142	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$142, DW_AT_location[DW_OP_regx 0x24]
$C$DW$143	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$143, DW_AT_location[DW_OP_regx 0x25]
$C$DW$144	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$144, DW_AT_location[DW_OP_regx 0x26]
$C$DW$145	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$145, DW_AT_location[DW_OP_regx 0x27]
$C$DW$146	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$146, DW_AT_location[DW_OP_regx 0x28]
$C$DW$147	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$147, DW_AT_location[DW_OP_regx 0x29]
$C$DW$148	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$148, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$149	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$149, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$150	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$150, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$151	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$151, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$152	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$152, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$153	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$153, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$154	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$154, DW_AT_location[DW_OP_regx 0x30]
$C$DW$155	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$155, DW_AT_location[DW_OP_regx 0x31]
$C$DW$156	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$156, DW_AT_location[DW_OP_regx 0x32]
$C$DW$157	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$157, DW_AT_location[DW_OP_regx 0x33]
$C$DW$158	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$158, DW_AT_location[DW_OP_regx 0x34]
$C$DW$159	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$159, DW_AT_location[DW_OP_regx 0x35]
$C$DW$160	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$160, DW_AT_location[DW_OP_regx 0x36]
$C$DW$161	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$161, DW_AT_location[DW_OP_regx 0x37]
$C$DW$162	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$162, DW_AT_location[DW_OP_regx 0x38]
$C$DW$163	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$163, DW_AT_location[DW_OP_regx 0x39]
$C$DW$164	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$164, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$165	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$165, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$166	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$166, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$167	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$167, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$168	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$168, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$169	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$169, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$170	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$170, DW_AT_location[DW_OP_regx 0x40]
$C$DW$171	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$171, DW_AT_location[DW_OP_regx 0x41]
$C$DW$172	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$172, DW_AT_location[DW_OP_regx 0x42]
$C$DW$173	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$173, DW_AT_location[DW_OP_regx 0x43]
$C$DW$174	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$174, DW_AT_location[DW_OP_regx 0x44]
$C$DW$175	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$175, DW_AT_location[DW_OP_regx 0x45]
$C$DW$176	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$176, DW_AT_location[DW_OP_regx 0x46]
$C$DW$177	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$177, DW_AT_location[DW_OP_regx 0x47]
$C$DW$178	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$178, DW_AT_location[DW_OP_regx 0x48]
$C$DW$179	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$179, DW_AT_location[DW_OP_regx 0x49]
$C$DW$180	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$180, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$181	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$181, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$182	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$182, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$183	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$183, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$184	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$184, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$185	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$185, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$186	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$186, DW_AT_location[DW_OP_regx 0x50]
$C$DW$187	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$187, DW_AT_location[DW_OP_regx 0x51]
$C$DW$188	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$188, DW_AT_location[DW_OP_regx 0x52]
$C$DW$189	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$189, DW_AT_location[DW_OP_regx 0x53]
$C$DW$190	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$190, DW_AT_location[DW_OP_regx 0x54]
$C$DW$191	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$191, DW_AT_location[DW_OP_regx 0x55]
$C$DW$192	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$192, DW_AT_location[DW_OP_regx 0x56]
$C$DW$193	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$193, DW_AT_location[DW_OP_regx 0x57]
$C$DW$194	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$194, DW_AT_location[DW_OP_regx 0x58]
$C$DW$195	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$195, DW_AT_location[DW_OP_regx 0x59]
$C$DW$196	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$196, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$197	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$197, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

