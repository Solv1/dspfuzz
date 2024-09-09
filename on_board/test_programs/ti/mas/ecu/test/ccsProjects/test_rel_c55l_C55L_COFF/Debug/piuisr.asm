;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                          PC v4.4.1 *
;* Date/Time created: Fri Jul 05 14:12:16 2013                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuisr.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen PC v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\ecu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug")

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("utlLsMemSet")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_utlLsMemSet")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$28)
$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$27)
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$26)
	.dwendtag $C$DW$1


$C$DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("pktPackBytesIntoWords")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_pktPackBytesIntoWords")
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$59)
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$59)
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$26)
$C$DW$9	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$26)
	.dwendtag $C$DW$5


$C$DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("piu_update_buf_ptr")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_piu_update_buf_ptr")
	.dwattr $C$DW$10, DW_AT_declaration
	.dwattr $C$DW$10, DW_AT_external
$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$65)
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$68)
$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$69)
	.dwendtag $C$DW$10

$C$DW$14	.dwtag  DW_TAG_variable, DW_AT_name("piuContext")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_piuContext")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$14, DW_AT_declaration
	.dwattr $C$DW$14, DW_AT_external
;	C:\MAS_Tools\CCSV5_2_1\ccsv5\tools\compiler\c5500_4.4.1\bin\acp55.exe -@C:\\DOCUME~1\\a0868396\\LOCALS~1\\Temp\\0418412 
	.sect	".text"

$C$DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("ecuSim_packLSBof16bitsIntoWords")
	.dwattr $C$DW$15, DW_AT_low_pc(_ecuSim_packLSBof16bitsIntoWords)
	.dwattr $C$DW$15, DW_AT_high_pc(0x00)
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_ecuSim_packLSBof16bitsIntoWords")
	.dwattr $C$DW$15, DW_AT_TI_begin_file("../../../../../../../ti/mas/ecu/test/src/c55/piuport.h")
	.dwattr $C$DW$15, DW_AT_TI_begin_line(0x74)
	.dwattr $C$DW$15, DW_AT_TI_begin_column(0x14)
	.dwattr $C$DW$15, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "../../../../../../../ti/mas/ecu/test/src/c55/piuport.h",line 117,column 1,is_stmt,address _ecuSim_packLSBof16bitsIntoWords

	.dwfde $C$DW$CIE, _ecuSim_packLSBof16bitsIntoWords
$C$DW$16	.dwtag  DW_TAG_formal_parameter, DW_AT_name("src")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_src")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_reg17]
$C$DW$17	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dst")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_dst")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_reg19]
$C$DW$18	.dwtag  DW_TAG_formal_parameter, DW_AT_name("nbyte")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_nbyte")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_reg12]
;----------------------------------------------------------------------
; 116 | static inline void ecuSim_packLSBof16bitsIntoWords (linSample *src, two
;     | rd *dst, tint nbyte)                                                   
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: ecuSim_packLSBof16bitsIntoWords                              *
;*                                                                             *
;*   Function Uses Regs : T0,T1,AR0,XAR0,AR1,XAR1,SP,M40,SATA,SATD,RDM,FRCT,   *
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_ecuSim_packLSBof16bitsIntoWords:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-5
	.dwcfi	cfa_offset, 6
$C$DW$19	.dwtag  DW_TAG_variable, DW_AT_name("src")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_src")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$20	.dwtag  DW_TAG_variable, DW_AT_name("dst")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_dst")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$21	.dwtag  DW_TAG_variable, DW_AT_name("nbyte")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_nbyte")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_bregx 0x24 4]
        *SP(#4) = T0 ; |117| 
        dbl(*SP(#2)) = XAR1
        dbl(*SP(#0)) = XAR0

        T0 = *SP(#4) ; |118| 
||      T1 = #0

        XAR1 = dbl(*SP(#2))
	.dwpsn	file "../../../../../../../ti/mas/ecu/test/src/c55/piuport.h",line 118,column 3,is_stmt
;----------------------------------------------------------------------
; 118 | pktPackBytesIntoWords ((tword *) src, dst, nbyte, 0);                  
;----------------------------------------------------------------------
$C$DW$22	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$22, DW_AT_low_pc(0x00)
	.dwattr $C$DW$22, DW_AT_name("_pktPackBytesIntoWords")
	.dwattr $C$DW$22, DW_AT_TI_call
        call #_pktPackBytesIntoWords ; |118| 
                                        ; call occurs [#_pktPackBytesIntoWords] ; |118| 
        SP = SP + #5
	.dwcfi	cfa_offset, 1
$C$DW$23	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$23, DW_AT_low_pc(0x00)
	.dwattr $C$DW$23, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$15, DW_AT_TI_end_file("../../../../../../../ti/mas/ecu/test/src/c55/piuport.h")
	.dwattr $C$DW$15, DW_AT_TI_end_line(0x77)
	.dwattr $C$DW$15, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$15

	.sect	".text"
	.global	_piuReceiveOut

$C$DW$24	.dwtag  DW_TAG_subprogram, DW_AT_name("piuReceiveOut")
	.dwattr $C$DW$24, DW_AT_low_pc(_piuReceiveOut)
	.dwattr $C$DW$24, DW_AT_high_pc(0x00)
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_piuReceiveOut")
	.dwattr $C$DW$24, DW_AT_external
	.dwattr $C$DW$24, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuisr.c")
	.dwattr $C$DW$24, DW_AT_TI_begin_line(0x66)
	.dwattr $C$DW$24, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$24, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuisr.c",line 103,column 1,is_stmt,address _piuReceiveOut

	.dwfde $C$DW$CIE, _piuReceiveOut
$C$DW$25	.dwtag  DW_TAG_formal_parameter, DW_AT_name("piuInst")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_piuInst")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_reg17]
$C$DW$26	.dwtag  DW_TAG_formal_parameter, DW_AT_name("toTdm")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_toTdm")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_reg19]
$C$DW$27	.dwtag  DW_TAG_formal_parameter, DW_AT_name("timestamp")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_timestamp")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_reg12]
$C$DW$28	.dwtag  DW_TAG_formal_parameter, DW_AT_name("frameLength")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_frameLength")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_reg13]
;----------------------------------------------------------------------
; 102 | void piuReceiveOut (void *piuInst, tword **toTdm , tuint timestamp, tui
;     | nt frameLength)                                                        
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: piuReceiveOut                                                *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,*
;*                        XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 16 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (14 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_piuReceiveOut:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-15
	.dwcfi	cfa_offset, 16
$C$DW$29	.dwtag  DW_TAG_variable, DW_AT_name("piuInst")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_piuInst")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$30	.dwtag  DW_TAG_variable, DW_AT_name("toTdm")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_toTdm")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$31	.dwtag  DW_TAG_variable, DW_AT_name("timestamp")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_timestamp")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$32	.dwtag  DW_TAG_variable, DW_AT_name("frameLength")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_frameLength")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$33	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$34	.dwtag  DW_TAG_variable, DW_AT_name("context")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_context")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$35	.dwtag  DW_TAG_variable, DW_AT_name("s_ptr")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_s_ptr")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$36	.dwtag  DW_TAG_variable, DW_AT_name("r_ptr")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_r_ptr")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_bregx 0x24 12]
;----------------------------------------------------------------------
; 104 | piuInst_t *inst = (piuInst_t *)piuInst;                                
;----------------------------------------------------------------------
        *SP(#5) = T1 ; |103| 
        *SP(#4) = T0 ; |103| 
        dbl(*SP(#2)) = XAR1
        dbl(*SP(#0)) = XAR0
        XAR3 = dbl(*SP(#0))
        dbl(*SP(#6)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuisr.c",line 105,column 17,is_stmt
;----------------------------------------------------------------------
; 105 | piuContext_t *context = &piuContext;                                   
; 106 | linSample *s_ptr,*r_ptr;                                               
; 107 | #if !PIUDLCOMP_ENABLE                                                  
; 108 | tuint ratio = sizeof(linSample)/sizeof(tword);                         
; 109 | #endif                                                                 
;----------------------------------------------------------------------
        XAR3 = #_piuContext ; |105| 
        dbl(*SP(#8)) = XAR3
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuisr.c",line 111,column 3,is_stmt
;----------------------------------------------------------------------
; 111 | if (inst->state != piu_OPEN)                                           
; 112 |   return;                                                              
;----------------------------------------------------------------------
        TC1 = (*AR3(short(#1)) == #1) ; |111| 
        if (!TC1) goto $C$L4 ; |111| 
                                        ; branchcc occurs ; |111| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuisr.c",line 117,column 3,is_stmt
;----------------------------------------------------------------------
; 117 | if (inst->receive_in_buf.segment_count <= 0)  {                        
;----------------------------------------------------------------------
        AR1 = *AR3(#46) ; |117| 
        if (AR1 > #0) goto $C$L1 ; |117| 
                                        ; branchcc occurs ; |117| 
        XAR0 = dbl(*AR3(#36))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuisr.c",line 118,column 5,is_stmt
;----------------------------------------------------------------------
; 118 | utlLsMemSet (inst->receive_in_buf.in_ptr, inst->silence_pattern,       
; 119 |              inst->segment_size);                                      
;----------------------------------------------------------------------
        T0 = *AR3(#62) ; |118| 
        T1 = *AR3(short(#7)) ; |118| 
$C$DW$37	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$37, DW_AT_low_pc(0x00)
	.dwattr $C$DW$37, DW_AT_name("_utlLsMemSet")
	.dwattr $C$DW$37, DW_AT_TI_call
        call #_utlLsMemSet ; |118| 
                                        ; call occurs [#_utlLsMemSet] ; |118| 
        XAR1 = dbl(*SP(#6))
        XAR0 = dbl(*SP(#6))

        mar(AR1 + #36) ; |120| 
||      T0 = #0

	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuisr.c",line 120,column 5,is_stmt
;----------------------------------------------------------------------
; 120 | piu_update_buf_ptr (inst, 0, &inst->receive_in_buf.in_ptr);            
;----------------------------------------------------------------------
$C$DW$38	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$38, DW_AT_low_pc(0x00)
	.dwattr $C$DW$38, DW_AT_name("_piu_update_buf_ptr")
	.dwattr $C$DW$38, DW_AT_TI_call
        call #_piu_update_buf_ptr ; |120| 
                                        ; call occurs [#_piu_update_buf_ptr] ; |120| 
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuisr.c",line 121,column 5,is_stmt
;----------------------------------------------------------------------
; 121 | inst->rx_underflow_cnt++;                                              
; 125 | *toTdm = (tword *)inst->receive_in_buf.out_ptr;                        
;----------------------------------------------------------------------
        *AR3(#9) = *AR3(#9) + #1 ; |121| 
$C$L1:    
        XAR3 = dbl(*SP(#6))
        XAR2 = dbl(*SP(#2))
        XAR3 = dbl(*AR3(#38))
        dbl(*AR2) = XAR3
        XAR1 = dbl(*SP(#6))
        XAR0 = dbl(*SP(#6))

        mar(AR1 + #38) ; |126| 
||      T0 = #1

	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuisr.c",line 126,column 3,is_stmt
;----------------------------------------------------------------------
; 126 | piu_update_buf_ptr (inst, 1, &inst->receive_in_buf.out_ptr);           
; 131 | r_ptr = inst->receive_out_buf_ptr;  /* Store send out value before upda
;     | te */                                                                  
;----------------------------------------------------------------------
$C$DW$39	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$39, DW_AT_low_pc(0x00)
	.dwattr $C$DW$39, DW_AT_name("_piu_update_buf_ptr")
	.dwattr $C$DW$39, DW_AT_TI_call
        call #_piu_update_buf_ptr ; |126| 
                                        ; call occurs [#_piu_update_buf_ptr] ; |126| 
        XAR3 = dbl(*SP(#6))
        XAR3 = dbl(*AR3(#14))
        dbl(*SP(#12)) = XAR3
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuisr.c",line 132,column 3,is_stmt
;----------------------------------------------------------------------
; 132 | if (inst->mode_bitfield & piu_CTRL_BIT_USE_RECV_OUT_BUF) {             
; 134 | #if PIUDLCOMP_ENABLE                                                   
;----------------------------------------------------------------------
        TC1 = bit(*AR3(short(#2)),#8) ; |132| 
        if (!TC1) goto $C$L2 ; |132| 
                                        ; branchcc occurs ; |132| 
        XAR3 = dbl(*SP(#2))
        XAR0 = dbl(*AR3)
        XAR3 = dbl(*SP(#6))
        XAR1 = dbl(*AR3(#14))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuisr.c",line 135,column 5,is_stmt
;----------------------------------------------------------------------
; 135 | ecuSim_packLSBof16bitsIntoWords ((linSample *) *toTdm, (tword *)inst->r
;     | eceive_out_buf_ptr,                                                    
; 136 |                                  inst->segment_size);                  
;----------------------------------------------------------------------
        T0 = *AR3(short(#7)) ; |135| 
$C$DW$40	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$40, DW_AT_low_pc(0x00)
	.dwattr $C$DW$40, DW_AT_name("_ecuSim_packLSBof16bitsIntoWords")
	.dwattr $C$DW$40, DW_AT_TI_call
        call #_ecuSim_packLSBof16bitsIntoWords ; |135| 
                                        ; call occurs [#_ecuSim_packLSBof16bitsIntoWords] ; |135| 
        XAR3 = dbl(*SP(#6))
        XAR2 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuisr.c",line 137,column 5,is_stmt
;----------------------------------------------------------------------
; 137 | inst->receive_out_buf_ptr += inst->segment_size >> 1; /* store the new
;     | value! */                                                              
; 138 | #else                                                                  
; 139 | utlCopy((tword *)*toTdm, (tword *)inst->receive_out_buf_ptr, ratio*inst
;     | ->segment_size);                                                       
; 140 | inst->receive_out_buf_ptr += inst->segment_size;    /* store the new va
;     | lue! */                                                                
; 141 | #endif                                                                 
; 148 | s_ptr = inst->send_out_buf_ptr;                                        
;----------------------------------------------------------------------
        AR1 = *AR3(short(#7)) ; |137| 
        AR1 = AR1 >> #1 ; |137| 
        XAR3 = dbl(*AR2(#14))
        mar(AR3 + AR1) ; |137| 
        dbl(*AR2(#14)) = XAR3
$C$L2:    
        XAR3 = dbl(*SP(#6))
        XAR3 = dbl(*AR3(#18))
        dbl(*SP(#10)) = XAR3
        XAR3 = dbl(*SP(#6))
        XAR3 = dbl(*AR3(#12))
        AC0 = XAR3
        XAR3 = dbl(*SP(#12))
        AC1 = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuisr.c",line 151,column 3,is_stmt
;----------------------------------------------------------------------
; 151 | if (r_ptr != inst->receive_out_buf) {                                  
; 152 |   inst->receive_out_buf_ptr = inst->receive_out_buf;                   
;----------------------------------------------------------------------
        TC1 = uns(AC1 == AC0) ; |151| 
        if (TC1) goto $C$L3 ; |151| 
                                        ; branchcc occurs ; |151| 
        XAR3 = dbl(*SP(#6))
        XAR2 = dbl(*SP(#6))
        XAR3 = dbl(*AR3(#12))
        dbl(*AR2(#14)) = XAR3
$C$L3:    
        XAR3 = dbl(*SP(#8))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuisr.c",line 157,column 3,is_stmt
;----------------------------------------------------------------------
; 157 | (*context->pcmSampleTrace)(((inst->ID&0xFF)-1), inst->segment_size,    
; 158 |                            *toTdm, 1);                                 
;----------------------------------------------------------------------
        AC0 = dbl(*AR3(#10)) ; |157| 
        XAR3 = dbl(*SP(#6))
        AR1 = uns(low_byte(*AR3)) ; |157| 
        T1 = *AR3(short(#7)) ; |157| 
        XAR3 = dbl(*SP(#2))
        T0 = AR1 - #1 ; |157| 
        AR1 = #1
        XAR0 = dbl(*AR3)
$C$DW$41	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$41, DW_AT_low_pc(0x00)
	.dwattr $C$DW$41, DW_AT_TI_call
	.dwattr $C$DW$41, DW_AT_TI_indirect
        call AC0  ; |157| 
                                        ; call occurs [AC0] ; |157| 
        XAR3 = dbl(*SP(#8))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuisr.c",line 161,column 3,is_stmt
;----------------------------------------------------------------------
; 161 | (*context->sendOutIsrFcn)(inst->sendOutIsrTargetInst, s_ptr, r_ptr,    
; 162 |                           piu_TXRX_TASK_ID);                           
;----------------------------------------------------------------------
        AC0 = dbl(*AR3(#8)) ; |161| 
        XAR3 = dbl(*SP(#6))
        T0 = #0
        XAR2 = dbl(*SP(#12))
        XAR1 = dbl(*SP(#10))
        XAR0 = dbl(*AR3(#24))
$C$DW$42	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$42, DW_AT_low_pc(0x00)
	.dwattr $C$DW$42, DW_AT_TI_call
	.dwattr $C$DW$42, DW_AT_TI_indirect
        call AC0  ; |161| 
                                        ; call occurs [AC0] ; |161| 
$C$L4:    
        SP = SP + #15
	.dwcfi	cfa_offset, 1
$C$DW$43	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$43, DW_AT_low_pc(0x00)
	.dwattr $C$DW$43, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$24, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuisr.c")
	.dwattr $C$DW$24, DW_AT_TI_end_line(0xa4)
	.dwattr $C$DW$24, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$24

	.sect	".text"
	.global	_piuSendIn

$C$DW$44	.dwtag  DW_TAG_subprogram, DW_AT_name("piuSendIn")
	.dwattr $C$DW$44, DW_AT_low_pc(_piuSendIn)
	.dwattr $C$DW$44, DW_AT_high_pc(0x00)
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_piuSendIn")
	.dwattr $C$DW$44, DW_AT_external
	.dwattr $C$DW$44, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuisr.c")
	.dwattr $C$DW$44, DW_AT_TI_begin_line(0xb6)
	.dwattr $C$DW$44, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$44, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuisr.c",line 183,column 1,is_stmt,address _piuSendIn

	.dwfde $C$DW$CIE, _piuSendIn
$C$DW$45	.dwtag  DW_TAG_formal_parameter, DW_AT_name("piuInst")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_piuInst")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_reg17]
$C$DW$46	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fromTdm")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_fromTdm")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_reg19]
$C$DW$47	.dwtag  DW_TAG_formal_parameter, DW_AT_name("timeStamp")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_timeStamp")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_reg12]
$C$DW$48	.dwtag  DW_TAG_formal_parameter, DW_AT_name("frameLength")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_frameLength")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_reg13]
;----------------------------------------------------------------------
; 182 | void piuSendIn (void *piuInst, tword **fromTdm, tuint timeStamp, tuint
;     | frameLength)                                                           
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: piuSendIn                                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,*
;*                        XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (10 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_piuSendIn:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-11
	.dwcfi	cfa_offset, 12
$C$DW$49	.dwtag  DW_TAG_variable, DW_AT_name("piuInst")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_piuInst")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$50	.dwtag  DW_TAG_variable, DW_AT_name("fromTdm")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_fromTdm")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$51	.dwtag  DW_TAG_variable, DW_AT_name("timeStamp")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_timeStamp")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$52	.dwtag  DW_TAG_variable, DW_AT_name("frameLength")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_frameLength")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$53	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$54	.dwtag  DW_TAG_variable, DW_AT_name("context")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_context")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_bregx 0x24 8]
;----------------------------------------------------------------------
; 184 | piuInst_t    *inst = (piuInst_t *)piuInst;                             
;----------------------------------------------------------------------
        *SP(#5) = T1 ; |183| 
        *SP(#4) = T0 ; |183| 
        dbl(*SP(#2)) = XAR1
        dbl(*SP(#0)) = XAR0
        XAR3 = dbl(*SP(#0))
        dbl(*SP(#6)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuisr.c",line 185,column 17,is_stmt
;----------------------------------------------------------------------
; 185 | piuContext_t *context = &piuContext;                                   
;----------------------------------------------------------------------
        XAR3 = #_piuContext ; |185| 
        dbl(*SP(#8)) = XAR3
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuisr.c",line 187,column 3,is_stmt
;----------------------------------------------------------------------
; 187 | if (inst->state != piu_OPEN)                                           
; 188 |   return;                                                              
; 192 | inst->send_out_buf_ptr = (linSample *)*fromTdm;                        
;----------------------------------------------------------------------
        TC1 = (*AR3(short(#1)) == #1) ; |187| 
        if (!TC1) goto $C$L7 ; |187| 
                                        ; branchcc occurs ; |187| 
        XAR3 = dbl(*SP(#2))
        XAR2 = dbl(*SP(#6))
        XAR3 = dbl(*AR3)
        dbl(*AR2(#18)) = XAR3
        XAR3 = dbl(*SP(#8))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuisr.c",line 195,column 3,is_stmt
;----------------------------------------------------------------------
; 195 | (*context->pcmSampleTrace)(((inst->ID&0xFF)-1), inst->segment_size,    
; 196 |                            inst->send_out_buf_ptr, 0);                 
;----------------------------------------------------------------------
        AC0 = dbl(*AR3(#10)) ; |195| 
        XAR3 = dbl(*SP(#6))
        AR1 = uns(low_byte(*AR3)) ; |195| 
        XAR0 = dbl(*AR3(#18))
        T0 = AR1 - #1 ; |195| 

        AR1 = #0
||      T1 = *AR3(short(#7)) ; |195| 

$C$DW$55	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$55, DW_AT_low_pc(0x00)
	.dwattr $C$DW$55, DW_AT_TI_call
	.dwattr $C$DW$55, DW_AT_TI_indirect
        call AC0  ; |195| 
                                        ; call occurs [AC0] ; |195| 
        XAR3 = dbl(*SP(#6))
        XAR3 = dbl(*AR3(#16))
        AC0 = XAR3
        XAR3 = dbl(*SP(#6))
        XAR3 = dbl(*AR3(#18))
        AC1 = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuisr.c",line 202,column 3,is_stmt
;----------------------------------------------------------------------
; 202 | if (inst->send_out_buf_ptr == inst->send_out_buf)                      
;----------------------------------------------------------------------
        TC1 = uns(AC1 != AC0) ; |202| 
        if (TC1) goto $C$L5 ; |202| 
                                        ; branchcc occurs ; |202| 
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuisr.c",line 203,column 5,is_stmt
;----------------------------------------------------------------------
; 203 | *fromTdm = (tword *)&(inst->send_out_buf_ptr[inst->segment_size]);     
; 204 | else                                                                   
; 205 | *fromTdm = (tword *)inst->send_out_buf;                                
;----------------------------------------------------------------------
        AR1 = *AR3(short(#7)) ; |203| 
        XAR3 = dbl(*AR3(#18))
        mar(AR3 + AR1) ; |203| 
        goto $C$L6 ; |203| 
                                        ; branch occurs ; |203| 
$C$L5:    
        XAR3 = dbl(*SP(#6))
        XAR3 = dbl(*AR3(#16))
$C$L6:    
        XAR2 = dbl(*SP(#2))
        dbl(*AR2) = XAR3
$C$L7:    
        SP = SP + #11
	.dwcfi	cfa_offset, 1
$C$DW$56	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$56, DW_AT_low_pc(0x00)
	.dwattr $C$DW$56, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$44, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piuisr.c")
	.dwattr $C$DW$44, DW_AT_TI_end_line(0xcf)
	.dwattr $C$DW$44, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$44

;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_utlLsMemSet
	.global	_pktPackBytesIntoWords
	.global	_piu_update_buf_ptr
	.global	_piuContext

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x08)
$C$DW$57	.dwtag  DW_TAG_member
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$57, DW_AT_name("txEnergy")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_txEnergy")
	.dwattr $C$DW$57, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$57, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$58	.dwtag  DW_TAG_member
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$58, DW_AT_name("rxEnergy")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_rxEnergy")
	.dwattr $C$DW$58, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$58, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$59	.dwtag  DW_TAG_member
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$59, DW_AT_name("txDClevel")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_txDClevel")
	.dwattr $C$DW$59, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$59, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$60	.dwtag  DW_TAG_member
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$60, DW_AT_name("rxDClevel")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_rxDClevel")
	.dwattr $C$DW$60, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$60, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$23

$C$DW$T$48	.dwtag  DW_TAG_typedef, DW_AT_name("piuEnergyDCLevel_t")
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$48, DW_AT_language(DW_LANG_C)

$C$DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x0c)
$C$DW$61	.dwtag  DW_TAG_member
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$61, DW_AT_name("in_ptr")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_in_ptr")
	.dwattr $C$DW$61, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$61, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$62	.dwtag  DW_TAG_member
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$62, DW_AT_name("out_ptr")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_out_ptr")
	.dwattr $C$DW$62, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$62, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$63	.dwtag  DW_TAG_member
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$63, DW_AT_name("start_ptr")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_start_ptr")
	.dwattr $C$DW$63, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$63, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$64	.dwtag  DW_TAG_member
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$64, DW_AT_name("end_ptr")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_end_ptr")
	.dwattr $C$DW$64, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$64, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$65	.dwtag  DW_TAG_member
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$65, DW_AT_name("top_ptr")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_top_ptr")
	.dwattr $C$DW$65, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$65, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$66	.dwtag  DW_TAG_member
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$66, DW_AT_name("segment_count")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_segment_count")
	.dwattr $C$DW$66, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$66, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$29

$C$DW$T$49	.dwtag  DW_TAG_typedef, DW_AT_name("receive_in_buf_t")
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$49, DW_AT_language(DW_LANG_C)

$C$DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x08)
$C$DW$67	.dwtag  DW_TAG_member
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$67, DW_AT_name("txSilDetEnergy")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_txSilDetEnergy")
	.dwattr $C$DW$67, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$67, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$68	.dwtag  DW_TAG_member
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$68, DW_AT_name("rxSilDetEnergy")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_rxSilDetEnergy")
	.dwattr $C$DW$68, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$68, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$69	.dwtag  DW_TAG_member
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$69, DW_AT_name("threshold")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_threshold")
	.dwattr $C$DW$69, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$69, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$70	.dwtag  DW_TAG_member
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$70, DW_AT_name("cnt")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_cnt")
	.dwattr $C$DW$70, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$70, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$71	.dwtag  DW_TAG_member
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$71, DW_AT_name("initCnt")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_initCnt")
	.dwattr $C$DW$71, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$71, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$33

$C$DW$T$50	.dwtag  DW_TAG_typedef, DW_AT_name("bidSilenceCtrl_t")
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$50, DW_AT_language(DW_LANG_C)

$C$DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x06)
$C$DW$72	.dwtag  DW_TAG_member
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$72, DW_AT_name("type")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_type")
	.dwattr $C$DW$72, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$72, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$73	.dwtag  DW_TAG_member
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$73, DW_AT_name("custom")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_custom")
	.dwattr $C$DW$73, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$73, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$74	.dwtag  DW_TAG_member
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$74, DW_AT_name("cnt")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_cnt")
	.dwattr $C$DW$74, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$74, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$75	.dwtag  DW_TAG_member
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$75, DW_AT_name("initCnt")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_initCnt")
	.dwattr $C$DW$75, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$75, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$34

$C$DW$T$51	.dwtag  DW_TAG_typedef, DW_AT_name("piuPcmPatternDetect_t")
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$51, DW_AT_language(DW_LANG_C)

$C$DW$T$45	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x0c)
$C$DW$76	.dwtag  DW_TAG_member
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$76, DW_AT_name("max_pcm_val")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_max_pcm_val")
	.dwattr $C$DW$76, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$76, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$77	.dwtag  DW_TAG_member
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$77, DW_AT_name("debugInfo")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_debugInfo")
	.dwattr $C$DW$77, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$77, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$78	.dwtag  DW_TAG_member
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$78, DW_AT_name("reportOutFcn")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_reportOutFcn")
	.dwattr $C$DW$78, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$78, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$79	.dwtag  DW_TAG_member
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$79, DW_AT_name("sendOutProcFcn")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_sendOutProcFcn")
	.dwattr $C$DW$79, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$79, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$80	.dwtag  DW_TAG_member
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$80, DW_AT_name("sendOutIsrFcn")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_sendOutIsrFcn")
	.dwattr $C$DW$80, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$80, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$81	.dwtag  DW_TAG_member
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$81, DW_AT_name("pcmSampleTrace")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_pcmSampleTrace")
	.dwattr $C$DW$81, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$81, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$45

$C$DW$T$53	.dwtag  DW_TAG_typedef, DW_AT_name("piuContext_t")
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$53, DW_AT_language(DW_LANG_C)
$C$DW$T$54	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$T$54, DW_AT_address_class(0x17)
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x17)

$C$DW$T$36	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)
$C$DW$82	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$3)
$C$DW$83	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$32)
$C$DW$84	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$32)
$C$DW$85	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$32)
$C$DW$86	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$35)
	.dwendtag $C$DW$T$36

$C$DW$T$37	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$37, DW_AT_address_class(0x20)
$C$DW$T$38	.dwtag  DW_TAG_typedef, DW_AT_name("dbgInfo_t")
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$38, DW_AT_language(DW_LANG_C)

$C$DW$T$39	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$39, DW_AT_language(DW_LANG_C)
$C$DW$87	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$3)
$C$DW$88	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$26)
	.dwendtag $C$DW$T$39

$C$DW$T$40	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$40, DW_AT_address_class(0x20)

$C$DW$T$41	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$41, DW_AT_language(DW_LANG_C)
$C$DW$89	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$3)
$C$DW$90	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$3)
$C$DW$91	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$3)
$C$DW$92	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$26)
	.dwendtag $C$DW$T$41

$C$DW$T$42	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$42, DW_AT_address_class(0x20)

$C$DW$T$43	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$43, DW_AT_language(DW_LANG_C)
$C$DW$93	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$26)
$C$DW$94	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$26)
$C$DW$95	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$3)
$C$DW$96	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$32)
	.dwendtag $C$DW$T$43

$C$DW$T$44	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$44, DW_AT_address_class(0x20)
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
$C$DW$T$24	.dwtag  DW_TAG_typedef, DW_AT_name("int16_t")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
$C$DW$T$25	.dwtag  DW_TAG_typedef, DW_AT_name("int_least16_t")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$25, DW_AT_language(DW_LANG_C)
$C$DW$T$26	.dwtag  DW_TAG_typedef, DW_AT_name("tint")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)
$C$DW$T$27	.dwtag  DW_TAG_typedef, DW_AT_name("linSample")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)
$C$DW$T$28	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$28, DW_AT_address_class(0x17)
$C$DW$T$69	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$69, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$69, DW_AT_address_class(0x17)
$C$DW$97	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$26)
$C$DW$T$46	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$97)
$C$DW$T$47	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$47, DW_AT_address_class(0x17)
$C$DW$T$66	.dwtag  DW_TAG_typedef, DW_AT_name("int_least8_t")
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$66, DW_AT_language(DW_LANG_C)
$C$DW$T$67	.dwtag  DW_TAG_typedef, DW_AT_name("tshort")
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$T$67, DW_AT_language(DW_LANG_C)
$C$DW$T$68	.dwtag  DW_TAG_typedef, DW_AT_name("tbool")
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$T$68, DW_AT_language(DW_LANG_C)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)
$C$DW$T$30	.dwtag  DW_TAG_typedef, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$30, DW_AT_language(DW_LANG_C)
$C$DW$T$31	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least16_t")
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$31, DW_AT_language(DW_LANG_C)
$C$DW$T$32	.dwtag  DW_TAG_typedef, DW_AT_name("tuint")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$32, DW_AT_language(DW_LANG_C)
$C$DW$T$35	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$35, DW_AT_address_class(0x17)
$C$DW$T$57	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least8_t")
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$57, DW_AT_language(DW_LANG_C)
$C$DW$T$58	.dwtag  DW_TAG_typedef, DW_AT_name("tword")
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$58, DW_AT_language(DW_LANG_C)
$C$DW$T$59	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$T$59, DW_AT_address_class(0x17)
$C$DW$T$72	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$72, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$T$72, DW_AT_address_class(0x17)
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)
$C$DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("int32_t")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
$C$DW$T$20	.dwtag  DW_TAG_typedef, DW_AT_name("int_least32_t")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_language(DW_LANG_C)
$C$DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("tlong")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
$C$DW$T$22	.dwtag  DW_TAG_typedef, DW_AT_name("LFract")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
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

$C$DW$T$52	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$52, DW_AT_name("piuInst_s")
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x40)
$C$DW$98	.dwtag  DW_TAG_member
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$98, DW_AT_name("ID")
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("_ID")
	.dwattr $C$DW$98, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$98, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$99	.dwtag  DW_TAG_member
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$99, DW_AT_name("state")
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_state")
	.dwattr $C$DW$99, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$99, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$100	.dwtag  DW_TAG_member
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$100, DW_AT_name("mode_bitfield")
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("_mode_bitfield")
	.dwattr $C$DW$100, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$100, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$101	.dwtag  DW_TAG_member
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$101, DW_AT_name("pcm_expand_table")
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_pcm_expand_table")
	.dwattr $C$DW$101, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$101, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$102	.dwtag  DW_TAG_member
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$102, DW_AT_name("pcm_format")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("_pcm_format")
	.dwattr $C$DW$102, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$102, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$103	.dwtag  DW_TAG_member
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$103, DW_AT_name("segment_size")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("_segment_size")
	.dwattr $C$DW$103, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$103, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$104	.dwtag  DW_TAG_member
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$104, DW_AT_name("rx_delay")
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_rx_delay")
	.dwattr $C$DW$104, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$104, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$105	.dwtag  DW_TAG_member
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$105, DW_AT_name("rx_underflow_cnt")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_rx_underflow_cnt")
	.dwattr $C$DW$105, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$105, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$106	.dwtag  DW_TAG_member
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$106, DW_AT_name("rx_overflow_cnt")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_rx_overflow_cnt")
	.dwattr $C$DW$106, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$106, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$107	.dwtag  DW_TAG_member
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$107, DW_AT_name("receive_out_buf")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_receive_out_buf")
	.dwattr $C$DW$107, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$107, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$108	.dwtag  DW_TAG_member
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$108, DW_AT_name("receive_out_buf_ptr")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_receive_out_buf_ptr")
	.dwattr $C$DW$108, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$108, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$109	.dwtag  DW_TAG_member
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$109, DW_AT_name("send_out_buf")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_send_out_buf")
	.dwattr $C$DW$109, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$109, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$110	.dwtag  DW_TAG_member
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$110, DW_AT_name("send_out_buf_ptr")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_send_out_buf_ptr")
	.dwattr $C$DW$110, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$110, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$111	.dwtag  DW_TAG_member
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$111, DW_AT_name("reportOutTargetInst")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_reportOutTargetInst")
	.dwattr $C$DW$111, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$111, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$112	.dwtag  DW_TAG_member
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$112, DW_AT_name("sendOutProcTargetInst")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_sendOutProcTargetInst")
	.dwattr $C$DW$112, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$112, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$113	.dwtag  DW_TAG_member
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$113, DW_AT_name("sendOutIsrTargetInst")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_sendOutIsrTargetInst")
	.dwattr $C$DW$113, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$113, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$114	.dwtag  DW_TAG_member
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$114, DW_AT_name("energy_DClevel")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_energy_DClevel")
	.dwattr $C$DW$114, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$114, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$115	.dwtag  DW_TAG_member
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$115, DW_AT_name("generatePattern")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_generatePattern")
	.dwattr $C$DW$115, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$115, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$116	.dwtag  DW_TAG_member
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$116, DW_AT_name("receive_in_buf")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("_receive_in_buf")
	.dwattr $C$DW$116, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$116, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$117	.dwtag  DW_TAG_member
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$117, DW_AT_name("bidSilence")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_bidSilence")
	.dwattr $C$DW$117, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$117, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$118	.dwtag  DW_TAG_member
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$118, DW_AT_name("pcmPattern")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_pcmPattern")
	.dwattr $C$DW$118, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$118, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$119	.dwtag  DW_TAG_member
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$119, DW_AT_name("silence_pattern")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_silence_pattern")
	.dwattr $C$DW$119, DW_AT_data_member_location[DW_OP_plus_uconst 0x3e]
	.dwattr $C$DW$119, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$52

$C$DW$T$64	.dwtag  DW_TAG_typedef, DW_AT_name("piuInst_t")
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$T$64, DW_AT_language(DW_LANG_C)
$C$DW$T$65	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$65, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$65, DW_AT_address_class(0x17)
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

$C$DW$120	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$120, DW_AT_location[DW_OP_reg0]
$C$DW$121	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$121, DW_AT_location[DW_OP_reg1]
$C$DW$122	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$122, DW_AT_location[DW_OP_reg2]
$C$DW$123	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$123, DW_AT_location[DW_OP_reg3]
$C$DW$124	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$124, DW_AT_location[DW_OP_reg4]
$C$DW$125	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$125, DW_AT_location[DW_OP_reg5]
$C$DW$126	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$126, DW_AT_location[DW_OP_reg6]
$C$DW$127	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$127, DW_AT_location[DW_OP_reg7]
$C$DW$128	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$128, DW_AT_location[DW_OP_reg8]
$C$DW$129	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$129, DW_AT_location[DW_OP_reg9]
$C$DW$130	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$130, DW_AT_location[DW_OP_reg10]
$C$DW$131	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$131, DW_AT_location[DW_OP_reg11]
$C$DW$132	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$132, DW_AT_location[DW_OP_reg12]
$C$DW$133	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$133, DW_AT_location[DW_OP_reg13]
$C$DW$134	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$134, DW_AT_location[DW_OP_reg14]
$C$DW$135	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$135, DW_AT_location[DW_OP_reg15]
$C$DW$136	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$136, DW_AT_location[DW_OP_reg16]
$C$DW$137	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$137, DW_AT_location[DW_OP_reg17]
$C$DW$138	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$138, DW_AT_location[DW_OP_reg18]
$C$DW$139	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$139, DW_AT_location[DW_OP_reg19]
$C$DW$140	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$140, DW_AT_location[DW_OP_reg20]
$C$DW$141	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$141, DW_AT_location[DW_OP_reg21]
$C$DW$142	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$142, DW_AT_location[DW_OP_reg22]
$C$DW$143	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$143, DW_AT_location[DW_OP_reg23]
$C$DW$144	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$144, DW_AT_location[DW_OP_reg24]
$C$DW$145	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$145, DW_AT_location[DW_OP_reg25]
$C$DW$146	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$146, DW_AT_location[DW_OP_reg26]
$C$DW$147	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$147, DW_AT_location[DW_OP_reg27]
$C$DW$148	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$148, DW_AT_location[DW_OP_reg28]
$C$DW$149	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$149, DW_AT_location[DW_OP_reg29]
$C$DW$150	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$150, DW_AT_location[DW_OP_reg30]
$C$DW$151	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$151, DW_AT_location[DW_OP_reg31]
$C$DW$152	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$152, DW_AT_location[DW_OP_regx 0x20]
$C$DW$153	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$153, DW_AT_location[DW_OP_regx 0x21]
$C$DW$154	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$154, DW_AT_location[DW_OP_regx 0x22]
$C$DW$155	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$155, DW_AT_location[DW_OP_regx 0x23]
$C$DW$156	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$156, DW_AT_location[DW_OP_regx 0x24]
$C$DW$157	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$157, DW_AT_location[DW_OP_regx 0x25]
$C$DW$158	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$158, DW_AT_location[DW_OP_regx 0x26]
$C$DW$159	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$159, DW_AT_location[DW_OP_regx 0x27]
$C$DW$160	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$160, DW_AT_location[DW_OP_regx 0x28]
$C$DW$161	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$161, DW_AT_location[DW_OP_regx 0x29]
$C$DW$162	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$162, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$163	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$163, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$164	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$164, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$165	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$165, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$166	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$166, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$167	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$167, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$168	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$168, DW_AT_location[DW_OP_regx 0x30]
$C$DW$169	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$169, DW_AT_location[DW_OP_regx 0x31]
$C$DW$170	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$170, DW_AT_location[DW_OP_regx 0x32]
$C$DW$171	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$171, DW_AT_location[DW_OP_regx 0x33]
$C$DW$172	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$172, DW_AT_location[DW_OP_regx 0x34]
$C$DW$173	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$173, DW_AT_location[DW_OP_regx 0x35]
$C$DW$174	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$174, DW_AT_location[DW_OP_regx 0x36]
$C$DW$175	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$175, DW_AT_location[DW_OP_regx 0x37]
$C$DW$176	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$176, DW_AT_location[DW_OP_regx 0x38]
$C$DW$177	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$177, DW_AT_location[DW_OP_regx 0x39]
$C$DW$178	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$178, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$179	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$179, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$180	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$180, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$181	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$181, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$182	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$182, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$183	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$183, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$184	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$184, DW_AT_location[DW_OP_regx 0x40]
$C$DW$185	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$185, DW_AT_location[DW_OP_regx 0x41]
$C$DW$186	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$186, DW_AT_location[DW_OP_regx 0x42]
$C$DW$187	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$187, DW_AT_location[DW_OP_regx 0x43]
$C$DW$188	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$188, DW_AT_location[DW_OP_regx 0x44]
$C$DW$189	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$189, DW_AT_location[DW_OP_regx 0x45]
$C$DW$190	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$190, DW_AT_location[DW_OP_regx 0x46]
$C$DW$191	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$191, DW_AT_location[DW_OP_regx 0x47]
$C$DW$192	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$192, DW_AT_location[DW_OP_regx 0x48]
$C$DW$193	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$193, DW_AT_location[DW_OP_regx 0x49]
$C$DW$194	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$194, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$195	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$195, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$196	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$196, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$197	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$197, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$198	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$198, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$199	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$199, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$200	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$200, DW_AT_location[DW_OP_regx 0x50]
$C$DW$201	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$201, DW_AT_location[DW_OP_regx 0x51]
$C$DW$202	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$202, DW_AT_location[DW_OP_regx 0x52]
$C$DW$203	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$203, DW_AT_location[DW_OP_regx 0x53]
$C$DW$204	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$204, DW_AT_location[DW_OP_regx 0x54]
$C$DW$205	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$205, DW_AT_location[DW_OP_regx 0x55]
$C$DW$206	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$206, DW_AT_location[DW_OP_regx 0x56]
$C$DW$207	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$207, DW_AT_location[DW_OP_regx 0x57]
$C$DW$208	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$208, DW_AT_location[DW_OP_regx 0x58]
$C$DW$209	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$209, DW_AT_location[DW_OP_regx 0x59]
$C$DW$210	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$210, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$211	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$211, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

