;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                          PC v4.4.1 *
;* Date/Time created: Fri Jul 05 14:12:19 2013                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siutx.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen PC v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\ecu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug")
$C$DW$1	.dwtag  DW_TAG_variable, DW_AT_name("siuOutStream")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_siuOutStream")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
;	C:\MAS_Tools\CCSV5_2_1\ccsv5\tools\compiler\c5500_4.4.1\bin\acp55.exe -@C:\\DOCUME~1\\a0868396\\LOCALS~1\\Temp\\0915613 
	.sect	".text"

$C$DW$2	.dwtag  DW_TAG_subprogram, DW_AT_name("siu_tx_execute")
	.dwattr $C$DW$2, DW_AT_low_pc(_siu_tx_execute)
	.dwattr $C$DW$2, DW_AT_high_pc(0x00)
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("_siu_tx_execute")
	.dwattr $C$DW$2, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siutx.c")
	.dwattr $C$DW$2, DW_AT_TI_begin_line(0x57)
	.dwattr $C$DW$2, DW_AT_TI_begin_column(0x14)
	.dwattr $C$DW$2, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siutx.c",line 88,column 1,is_stmt,address _siu_tx_execute

	.dwfde $C$DW$CIE, _siu_tx_execute
$C$DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_name("inst")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$3, DW_AT_location[DW_OP_reg17]
;----------------------------------------------------------------------
;  87 | static inline void siu_tx_execute (siuInst_t *inst)                    
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: siu_tx_execute                                               *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR1,AR2,XAR2,AR3,XAR3,SP,CARRY,TC1,M40,  *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_siu_tx_execute:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-3
	.dwcfi	cfa_offset, 4
$C$DW$4	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$4, DW_AT_location[DW_OP_bregx 0x24 0]
        dbl(*SP(#0)) = XAR0
        XAR3 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siutx.c",line 89,column 3,is_stmt
;----------------------------------------------------------------------
;  89 | if (inst->TxInst.enabled) {                                            
;----------------------------------------------------------------------
        AR1 = *AR3(short(#6)) ; |89| 
        if (AR1 == #0) goto $C$L3 ; |89| 
                                        ; branchcc occurs ; |89| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siutx.c",line 89,column 29,is_stmt
;----------------------------------------------------------------------
;  90 | int k;                                                                 
;  91 | extern linSample  siuOutStream[];                                      
;  92 | extern void siuUpdateECUPowers (siuInst_t *inst, linSample *send_in,   
;  93 |                                 linSample *recv_in);                   
;----------------------------------------------------------------------

$C$DW$5	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$6	.dwtag  DW_TAG_variable, DW_AT_name("k")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_k")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_bregx 0x24 2]
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siutx.c",line 101,column 10,is_stmt
;----------------------------------------------------------------------
; 101 | for (k = 0; k < inst->TxInst.send_frame_length; k++) {                 
;----------------------------------------------------------------------
        *SP(#2) = #0 ; |101| 
        XAR3 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siutx.c",line 101,column 17,is_stmt
        AR2 = *SP(#2) ; |101| 
        AR1 = *AR3(short(#7)) ; |101| 
        TC1 = (AR2 >= AR1) ; |101| 
        if (TC1) goto $C$L2 ; |101| 
                                        ; branchcc occurs ; |101| 
$C$L1:    
$C$DW$L$_siu_tx_execute$3$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siutx.c",line 102,column 7,is_stmt
;----------------------------------------------------------------------
; 102 | siuOutStream[k] = inst->TxInst.send_frame_ptr[k];                      
;----------------------------------------------------------------------
        T0 = *SP(#2) ; |102| 
        AR1 = T0  ; |102| 
        XAR2 = dbl(*AR3(#10))
        XAR3 = #_siuOutStream ; |102| 
        mar(AR3 + AR1) ; |102| 
        *AR3 = *AR2(T0) ; |102| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siutx.c",line 101,column 53,is_stmt
        *SP(#2) = *SP(#2) + #1 ; |101| 
        XAR3 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siutx.c",line 101,column 17,is_stmt
        AR2 = *SP(#2) ; |101| 
        AR1 = *AR3(short(#7)) ; |101| 
        TC1 = (AR2 < AR1) ; |101| 
        if (TC1) goto $C$L1 ; |101| 
                                        ; branchcc occurs ; |101| 
$C$DW$L$_siu_tx_execute$3$E:
$C$L2:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siutx.c",line 104,column 3,is_stmt
	.dwendtag $C$DW$5

$C$L3:    
        SP = SP + #3
	.dwcfi	cfa_offset, 1
$C$DW$7	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$7, DW_AT_low_pc(0x00)
	.dwattr $C$DW$7, DW_AT_TI_return
        return
                                        ; return occurs

$C$DW$8	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$8, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\ecu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\siutx.asm:$C$L1:1:1373047939")
	.dwattr $C$DW$8, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siutx.c")
	.dwattr $C$DW$8, DW_AT_TI_begin_line(0x65)
	.dwattr $C$DW$8, DW_AT_TI_end_line(0x67)
$C$DW$9	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$9, DW_AT_low_pc($C$DW$L$_siu_tx_execute$3$B)
	.dwattr $C$DW$9, DW_AT_high_pc($C$DW$L$_siu_tx_execute$3$E)
	.dwendtag $C$DW$8

	.dwattr $C$DW$2, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siutx.c")
	.dwattr $C$DW$2, DW_AT_TI_end_line(0x69)
	.dwattr $C$DW$2, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$2

	.sect	".text"

$C$DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("siu_tx_sleep")
	.dwattr $C$DW$10, DW_AT_low_pc(_siu_tx_sleep)
	.dwattr $C$DW$10, DW_AT_high_pc(0x00)
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_siu_tx_sleep")
	.dwattr $C$DW$10, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siutx.c")
	.dwattr $C$DW$10, DW_AT_TI_begin_line(0x6b)
	.dwattr $C$DW$10, DW_AT_TI_begin_column(0x14)
	.dwattr $C$DW$10, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siutx.c",line 108,column 1,is_stmt,address _siu_tx_sleep

	.dwfde $C$DW$CIE, _siu_tx_sleep
$C$DW$11	.dwtag  DW_TAG_formal_parameter, DW_AT_name("inst")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_reg17]
;----------------------------------------------------------------------
; 107 | static inline void siu_tx_sleep (siuInst_t *inst)                      
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: siu_tx_sleep                                                 *
;*                                                                             *
;*   Function Uses Regs : AR0,XAR0,SP,M40,SATA,SATD,RDM,FRCT,SMUL              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_siu_tx_sleep:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-3
	.dwcfi	cfa_offset, 4
$C$DW$12	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_bregx 0x24 0]
        dbl(*SP(#0)) = XAR0
        SP = SP + #3
	.dwcfi	cfa_offset, 1
$C$DW$13	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$13, DW_AT_low_pc(0x00)
	.dwattr $C$DW$13, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$10, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siutx.c")
	.dwattr $C$DW$10, DW_AT_TI_end_line(0x6e)
	.dwattr $C$DW$10, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$10

	.sect	".text"

$C$DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("siu_tx_wake_up")
	.dwattr $C$DW$14, DW_AT_low_pc(_siu_tx_wake_up)
	.dwattr $C$DW$14, DW_AT_high_pc(0x00)
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_siu_tx_wake_up")
	.dwattr $C$DW$14, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siutx.c")
	.dwattr $C$DW$14, DW_AT_TI_begin_line(0x70)
	.dwattr $C$DW$14, DW_AT_TI_begin_column(0x14)
	.dwattr $C$DW$14, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siutx.c",line 113,column 1,is_stmt,address _siu_tx_wake_up

	.dwfde $C$DW$CIE, _siu_tx_wake_up
$C$DW$15	.dwtag  DW_TAG_formal_parameter, DW_AT_name("inst")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_reg17]
;----------------------------------------------------------------------
; 112 | static inline void siu_tx_wake_up (siuInst_t *inst)                    
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: siu_tx_wake_up                                               *
;*                                                                             *
;*   Function Uses Regs : AR0,XAR0,SP,M40,SATA,SATD,RDM,FRCT,SMUL              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_siu_tx_wake_up:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-3
	.dwcfi	cfa_offset, 4
$C$DW$16	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_bregx 0x24 0]
        dbl(*SP(#0)) = XAR0
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siutx.c",line 114,column 3,is_stmt
;----------------------------------------------------------------------
; 114 | siu_tx_execute (inst);    /* currently we directly execute Tx task here
;     |  */                                                                    
;----------------------------------------------------------------------
$C$DW$17	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$17, DW_AT_low_pc(0x00)
	.dwattr $C$DW$17, DW_AT_name("_siu_tx_execute")
	.dwattr $C$DW$17, DW_AT_TI_call
        call #_siu_tx_execute ; |114| 
                                        ; call occurs [#_siu_tx_execute] ; |114| 
        SP = SP + #3
	.dwcfi	cfa_offset, 1
$C$DW$18	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$18, DW_AT_low_pc(0x00)
	.dwattr $C$DW$18, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$14, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siutx.c")
	.dwattr $C$DW$14, DW_AT_TI_end_line(0x73)
	.dwattr $C$DW$14, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$14

	.sect	".text"
	.global	_siuTxMain

$C$DW$19	.dwtag  DW_TAG_subprogram, DW_AT_name("siuTxMain")
	.dwattr $C$DW$19, DW_AT_low_pc(_siuTxMain)
	.dwattr $C$DW$19, DW_AT_high_pc(0x00)
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_siuTxMain")
	.dwattr $C$DW$19, DW_AT_external
	.dwattr $C$DW$19, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siutx.c")
	.dwattr $C$DW$19, DW_AT_TI_begin_line(0x7d)
	.dwattr $C$DW$19, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$19, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siutx.c",line 126,column 1,is_stmt,address _siuTxMain

	.dwfde $C$DW$CIE, _siuTxMain
$C$DW$20	.dwtag  DW_TAG_formal_parameter, DW_AT_name("siuInst")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_siuInst")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_reg17]
;----------------------------------------------------------------------
; 125 | void siuTxMain (void *siuInst)                                         
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: siuTxMain                                                    *
;*                                                                             *
;*   Function Uses Regs : AR0,XAR0,AR3,XAR3,SP,M40,SATA,SATD,RDM,FRCT,SMUL     *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_siuTxMain:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-5
	.dwcfi	cfa_offset, 6
$C$DW$21	.dwtag  DW_TAG_variable, DW_AT_name("siuInst")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_siuInst")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$22	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_bregx 0x24 2]
        dbl(*SP(#0)) = XAR0
        XAR3 = dbl(*SP(#0))
        dbl(*SP(#2)) = XAR3
$C$L4:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siutx.c",line 127,column 14,is_stmt
;----------------------------------------------------------------------
; 127 | siuInst_t *inst = (siuInst_t*)siuInst;                                 
; 129 | loop {                                                                 
;----------------------------------------------------------------------
$C$DW$L$_siuTxMain$2$B:
        XAR0 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siutx.c",line 130,column 5,is_stmt
;----------------------------------------------------------------------
; 130 | siu_tx_sleep (inst);                                                   
;----------------------------------------------------------------------
$C$DW$23	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$23, DW_AT_low_pc(0x00)
	.dwattr $C$DW$23, DW_AT_name("_siu_tx_sleep")
	.dwattr $C$DW$23, DW_AT_TI_call
        call #_siu_tx_sleep ; |130| 
                                        ; call occurs [#_siu_tx_sleep] ; |130| 
        XAR0 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siutx.c",line 131,column 5,is_stmt
;----------------------------------------------------------------------
; 131 | siu_tx_execute (inst);                                                 
;----------------------------------------------------------------------
$C$DW$24	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$24, DW_AT_low_pc(0x00)
	.dwattr $C$DW$24, DW_AT_name("_siu_tx_execute")
	.dwattr $C$DW$24, DW_AT_TI_call
        call #_siu_tx_execute ; |131| 
                                        ; call occurs [#_siu_tx_execute] ; |131| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siutx.c",line 132,column 3,is_stmt
        goto $C$L4 ; |132| 
                                        ; branch occurs ; |132| 
$C$DW$L$_siuTxMain$2$E:
	.dwcfi	cfa_offset, 1

$C$DW$25	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$25, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\ecu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\siutx.asm:$C$L4:1:1373047939")
	.dwattr $C$DW$25, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siutx.c")
	.dwattr $C$DW$25, DW_AT_TI_begin_line(0x81)
	.dwattr $C$DW$25, DW_AT_TI_end_line(0x84)
$C$DW$26	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$26, DW_AT_low_pc($C$DW$L$_siuTxMain$2$B)
	.dwattr $C$DW$26, DW_AT_high_pc($C$DW$L$_siuTxMain$2$E)
	.dwendtag $C$DW$25

	.dwattr $C$DW$19, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siutx.c")
	.dwattr $C$DW$19, DW_AT_TI_end_line(0x85)
	.dwattr $C$DW$19, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$19

	.sect	".text"
	.global	_siuTxOpen

$C$DW$27	.dwtag  DW_TAG_subprogram, DW_AT_name("siuTxOpen")
	.dwattr $C$DW$27, DW_AT_low_pc(_siuTxOpen)
	.dwattr $C$DW$27, DW_AT_high_pc(0x00)
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_siuTxOpen")
	.dwattr $C$DW$27, DW_AT_external
	.dwattr $C$DW$27, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siutx.c")
	.dwattr $C$DW$27, DW_AT_TI_begin_line(0x8e)
	.dwattr $C$DW$27, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$27, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siutx.c",line 143,column 1,is_stmt,address _siuTxOpen

	.dwfde $C$DW$CIE, _siuTxOpen
$C$DW$28	.dwtag  DW_TAG_formal_parameter, DW_AT_name("siuInst")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_siuInst")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_reg17]
$C$DW$29	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cfg")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_cfg")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_reg19]
;----------------------------------------------------------------------
; 142 | void siuTxOpen (void *siuInst, siuTxConfig_t *cfg)                     
; 144 | siuInst_t *inst = (siuInst_t *)siuInst;                                
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: siuTxOpen                                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,CSR,  *
;*                        RPTC,M40,SATA,SATD,RDM,FRCT,SMUL                     *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_siuTxOpen:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-7
	.dwcfi	cfa_offset, 8
$C$DW$30	.dwtag  DW_TAG_variable, DW_AT_name("siuInst")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_siuInst")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$31	.dwtag  DW_TAG_variable, DW_AT_name("cfg")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_cfg")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$32	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_bregx 0x24 4]
        dbl(*SP(#2)) = XAR1
        dbl(*SP(#0)) = XAR0
        XAR3 = dbl(*SP(#0))
        dbl(*SP(#4)) = XAR3
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siutx.c",line 146,column 3,is_stmt
;----------------------------------------------------------------------
; 146 | inst->TxInst.send_frame_length  = cfg->send_frame_length;              
;----------------------------------------------------------------------
        AR1 = *AR3 ; |146| 
        XAR3 = dbl(*SP(#4))
        *AR3(short(#7)) = AR1 ; |146| 
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siutx.c",line 147,column 3,is_stmt
;----------------------------------------------------------------------
; 147 | inst->TxInst.recv_frame_length  = cfg->recv_frame_length;              
;----------------------------------------------------------------------
        AR1 = *AR3(short(#1)) ; |147| 
        XAR3 = dbl(*SP(#4))
        *AR3(#8) = AR1 ; |147| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siutx.c",line 148,column 3,is_stmt
;----------------------------------------------------------------------
; 148 | inst->TxInst.send_frame_ptr     = NULL;                                
; 149 | inst->TxInst.recv_frame_ptr     = NULL;                                
;----------------------------------------------------------------------
        AC0 = #0  ; |148| 
        dbl(*AR3(#10)) = AC0
        XAR3 = dbl(*SP(#4))
        dbl(*AR3(#12)) = AC0
        XAR2 = dbl(*SP(#4))
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siutx.c",line 150,column 3,is_stmt
;----------------------------------------------------------------------
; 150 | inst->TxInst.TxSendOut          = cfg->TxSendOut;                      
;----------------------------------------------------------------------
        mar(AR2 + #14) ; |150| 
        mar(AR3 + #2) ; |150| 
        repeat(#1) ; |150| 
                                            ; loop starts ; |150| 
$C$L5:    
$C$DW$L$_siuTxOpen$2$B:
            dbl(*AR2+) = dbl(*AR3+) ; |150| 
                                        ; loop ends ; |150| 
$C$DW$L$_siuTxOpen$2$E:
$C$L6:    
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siutx.c",line 151,column 3,is_stmt
;----------------------------------------------------------------------
; 151 | inst->TxInst.enabled            = TRUE;                                
;----------------------------------------------------------------------
        *AR3(short(#6)) = #1 ; |151| 
        SP = SP + #7
	.dwcfi	cfa_offset, 1
$C$DW$33	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$33, DW_AT_low_pc(0x00)
	.dwattr $C$DW$33, DW_AT_TI_return
        return
                                        ; return occurs

$C$DW$34	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$34, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\ecu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\siutx.asm:$C$L5:1:1373047939")
	.dwattr $C$DW$34, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siutx.c")
	.dwattr $C$DW$34, DW_AT_TI_begin_line(0x96)
	.dwattr $C$DW$34, DW_AT_TI_end_line(0x96)
$C$DW$35	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$35, DW_AT_low_pc($C$DW$L$_siuTxOpen$2$B)
	.dwattr $C$DW$35, DW_AT_high_pc($C$DW$L$_siuTxOpen$2$E)
	.dwendtag $C$DW$34

	.dwattr $C$DW$27, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siutx.c")
	.dwattr $C$DW$27, DW_AT_TI_end_line(0x98)
	.dwattr $C$DW$27, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$27

	.sect	".text"
	.global	_siuTxSendIn

$C$DW$36	.dwtag  DW_TAG_subprogram, DW_AT_name("siuTxSendIn")
	.dwattr $C$DW$36, DW_AT_low_pc(_siuTxSendIn)
	.dwattr $C$DW$36, DW_AT_high_pc(0x00)
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_siuTxSendIn")
	.dwattr $C$DW$36, DW_AT_external
	.dwattr $C$DW$36, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siutx.c")
	.dwattr $C$DW$36, DW_AT_TI_begin_line(0xa2)
	.dwattr $C$DW$36, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$36, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siutx.c",line 164,column 1,is_stmt,address _siuTxSendIn

	.dwfde $C$DW$CIE, _siuTxSendIn
$C$DW$37	.dwtag  DW_TAG_formal_parameter, DW_AT_name("siuInst")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_siuInst")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_reg17]
$C$DW$38	.dwtag  DW_TAG_formal_parameter, DW_AT_name("send_frame")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_send_frame")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_reg19]
$C$DW$39	.dwtag  DW_TAG_formal_parameter, DW_AT_name("recv_frame")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_recv_frame")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_reg21]
$C$DW$40	.dwtag  DW_TAG_formal_parameter, DW_AT_name("queue_id")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_queue_id")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_reg12]
;----------------------------------------------------------------------
; 162 | void siuTxSendIn (void *siuInst, void *send_frame, void *recv_frame,   
; 163 | tint queue_id)                                                         
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: siuTxSendIn                                                  *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,M40,SATA,  *
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (10 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_siuTxSendIn:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-11
	.dwcfi	cfa_offset, 12
$C$DW$41	.dwtag  DW_TAG_variable, DW_AT_name("siuInst")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_siuInst")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$42	.dwtag  DW_TAG_variable, DW_AT_name("send_frame")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_send_frame")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$43	.dwtag  DW_TAG_variable, DW_AT_name("recv_frame")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_recv_frame")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$44	.dwtag  DW_TAG_variable, DW_AT_name("queue_id")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_queue_id")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$45	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_bregx 0x24 8]
;----------------------------------------------------------------------
; 165 | siuInst_t *inst = (siuInst_t*)siuInst;                                 
; 169 | inst->TxInst.send_frame_ptr = (linSample *) send_frame;                
; 170 | inst->TxInst.recv_frame_ptr = (linSample *) recv_frame;     /* store fr
;     | ame pointers */                                                        
;----------------------------------------------------------------------
        *SP(#6) = T0 ; |164| 
        dbl(*SP(#4)) = XAR2
        dbl(*SP(#2)) = XAR1
        dbl(*SP(#0)) = XAR0
        XAR3 = dbl(*SP(#0))
        dbl(*SP(#8)) = XAR3
        XAR2 = dbl(*SP(#8))
        XAR3 = dbl(*SP(#2))
        dbl(*AR2(#10)) = XAR3
        XAR2 = dbl(*SP(#8))
        XAR3 = dbl(*SP(#4))
        dbl(*AR2(#12)) = XAR3
        XAR0 = dbl(*SP(#8))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siutx.c",line 172,column 3,is_stmt
;----------------------------------------------------------------------
; 172 | siu_tx_wake_up (inst);                    /* wake up Tx task */        
;----------------------------------------------------------------------
$C$DW$46	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$46, DW_AT_low_pc(0x00)
	.dwattr $C$DW$46, DW_AT_name("_siu_tx_wake_up")
	.dwattr $C$DW$46, DW_AT_TI_call
        call #_siu_tx_wake_up ; |172| 
                                        ; call occurs [#_siu_tx_wake_up] ; |172| 
        SP = SP + #11
	.dwcfi	cfa_offset, 1
$C$DW$47	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$47, DW_AT_low_pc(0x00)
	.dwattr $C$DW$47, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$36, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siutx.c")
	.dwattr $C$DW$36, DW_AT_TI_end_line(0xad)
	.dwattr $C$DW$36, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$36

;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_siuOutStream

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x04)
$C$DW$48	.dwtag  DW_TAG_member
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$48, DW_AT_name("fcn")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_fcn")
	.dwattr $C$DW$48, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$48, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$49	.dwtag  DW_TAG_member
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$49, DW_AT_name("targetInst")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_targetInst")
	.dwattr $C$DW$49, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$49, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$21

$C$DW$T$30	.dwtag  DW_TAG_typedef, DW_AT_name("siuTxSendOut_t")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$30, DW_AT_language(DW_LANG_C)

$C$DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x0c)
$C$DW$50	.dwtag  DW_TAG_member
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$50, DW_AT_name("enabled")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_enabled")
	.dwattr $C$DW$50, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$50, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$51	.dwtag  DW_TAG_member
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$51, DW_AT_name("send_frame_length")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_send_frame_length")
	.dwattr $C$DW$51, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$51, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$52	.dwtag  DW_TAG_member
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$52, DW_AT_name("recv_frame_length")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_recv_frame_length")
	.dwattr $C$DW$52, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$52, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$53	.dwtag  DW_TAG_member
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$53, DW_AT_name("send_frame_ptr")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_send_frame_ptr")
	.dwattr $C$DW$53, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$53, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$54	.dwtag  DW_TAG_member
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$54, DW_AT_name("recv_frame_ptr")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_recv_frame_ptr")
	.dwattr $C$DW$54, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$54, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$55	.dwtag  DW_TAG_member
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$55, DW_AT_name("TxSendOut")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_TxSendOut")
	.dwattr $C$DW$55, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$55, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$31

$C$DW$T$39	.dwtag  DW_TAG_typedef, DW_AT_name("siuTxInst_t")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$39, DW_AT_language(DW_LANG_C)

$C$DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x1c)
$C$DW$56	.dwtag  DW_TAG_member
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$56, DW_AT_name("ID")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_ID")
	.dwattr $C$DW$56, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$56, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$57	.dwtag  DW_TAG_member
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$57, DW_AT_name("exception")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_exception")
	.dwattr $C$DW$57, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$57, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$58	.dwtag  DW_TAG_member
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$58, DW_AT_name("debug")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_debug")
	.dwattr $C$DW$58, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$58, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$59	.dwtag  DW_TAG_member
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$59, DW_AT_name("TxInst")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_TxInst")
	.dwattr $C$DW$59, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$59, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$60	.dwtag  DW_TAG_member
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$60, DW_AT_name("slmInst")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_slmInst")
	.dwattr $C$DW$60, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$60, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$61	.dwtag  DW_TAG_member
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$61, DW_AT_name("cheap_used")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_cheap_used")
	.dwattr $C$DW$61, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$61, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$62	.dwtag  DW_TAG_member
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$62, DW_AT_name("vheap_used")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_vheap_used")
	.dwattr $C$DW$62, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$62, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$63	.dwtag  DW_TAG_member
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$63, DW_AT_name("companding_law")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_companding_law")
	.dwattr $C$DW$63, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$63, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$64	.dwtag  DW_TAG_member
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$64, DW_AT_name("pcm_bits")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_pcm_bits")
	.dwattr $C$DW$64, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$64, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$65	.dwtag  DW_TAG_member
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$65, DW_AT_name("piuInst")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_piuInst")
	.dwattr $C$DW$65, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$65, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$66	.dwtag  DW_TAG_member
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$66, DW_AT_name("ecuInst")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_ecuInst")
	.dwattr $C$DW$66, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$66, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$40

$C$DW$T$42	.dwtag  DW_TAG_typedef, DW_AT_name("siuInst_t")
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$42, DW_AT_language(DW_LANG_C)
$C$DW$T$43	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$43, DW_AT_address_class(0x17)

$C$DW$T$41	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x06)
$C$DW$67	.dwtag  DW_TAG_member
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$67, DW_AT_name("send_frame_length")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_send_frame_length")
	.dwattr $C$DW$67, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$67, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$68	.dwtag  DW_TAG_member
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$68, DW_AT_name("recv_frame_length")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_recv_frame_length")
	.dwattr $C$DW$68, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$68, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$69	.dwtag  DW_TAG_member
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$69, DW_AT_name("TxSendOut")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_TxSendOut")
	.dwattr $C$DW$69, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$69, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$41

$C$DW$T$44	.dwtag  DW_TAG_typedef, DW_AT_name("siuTxConfig_t")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)
$C$DW$T$45	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$45, DW_AT_address_class(0x17)
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x17)

$C$DW$T$19	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
$C$DW$70	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$3)
$C$DW$71	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$3)
$C$DW$72	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$3)
$C$DW$73	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$T$19

$C$DW$T$20	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_address_class(0x20)

$C$DW$T$37	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
$C$DW$74	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$34)
$C$DW$75	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$36)
	.dwendtag $C$DW$T$37

$C$DW$T$38	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$38, DW_AT_address_class(0x20)
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
$C$DW$T$22	.dwtag  DW_TAG_typedef, DW_AT_name("int16_t")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
$C$DW$T$26	.dwtag  DW_TAG_typedef, DW_AT_name("int_least16_t")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)
$C$DW$T$27	.dwtag  DW_TAG_typedef, DW_AT_name("tint")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)
$C$DW$T$28	.dwtag  DW_TAG_typedef, DW_AT_name("linSample")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C)
$C$DW$T$29	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$29, DW_AT_address_class(0x17)

$C$DW$T$51	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$51, DW_AT_language(DW_LANG_C)
$C$DW$76	.dwtag  DW_TAG_subrange_type
	.dwendtag $C$DW$T$51

$C$DW$T$23	.dwtag  DW_TAG_typedef, DW_AT_name("int_least8_t")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
$C$DW$T$24	.dwtag  DW_TAG_typedef, DW_AT_name("tshort")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
$C$DW$T$25	.dwtag  DW_TAG_typedef, DW_AT_name("tbool")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$25, DW_AT_language(DW_LANG_C)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)
$C$DW$T$32	.dwtag  DW_TAG_typedef, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$32, DW_AT_language(DW_LANG_C)
$C$DW$T$33	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least16_t")
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$33, DW_AT_language(DW_LANG_C)
$C$DW$T$34	.dwtag  DW_TAG_typedef, DW_AT_name("tuint")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)
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
$C$DW$T$35	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$35, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$35, DW_AT_name("signed char")
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x01)
$C$DW$T$36	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$36, DW_AT_address_class(0x17)
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

$C$DW$77	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$77, DW_AT_location[DW_OP_reg0]
$C$DW$78	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$78, DW_AT_location[DW_OP_reg1]
$C$DW$79	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$79, DW_AT_location[DW_OP_reg2]
$C$DW$80	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$80, DW_AT_location[DW_OP_reg3]
$C$DW$81	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$81, DW_AT_location[DW_OP_reg4]
$C$DW$82	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$82, DW_AT_location[DW_OP_reg5]
$C$DW$83	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$83, DW_AT_location[DW_OP_reg6]
$C$DW$84	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$84, DW_AT_location[DW_OP_reg7]
$C$DW$85	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$85, DW_AT_location[DW_OP_reg8]
$C$DW$86	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$86, DW_AT_location[DW_OP_reg9]
$C$DW$87	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$87, DW_AT_location[DW_OP_reg10]
$C$DW$88	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$88, DW_AT_location[DW_OP_reg11]
$C$DW$89	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$89, DW_AT_location[DW_OP_reg12]
$C$DW$90	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$90, DW_AT_location[DW_OP_reg13]
$C$DW$91	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$91, DW_AT_location[DW_OP_reg14]
$C$DW$92	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$92, DW_AT_location[DW_OP_reg15]
$C$DW$93	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$93, DW_AT_location[DW_OP_reg16]
$C$DW$94	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$94, DW_AT_location[DW_OP_reg17]
$C$DW$95	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$95, DW_AT_location[DW_OP_reg18]
$C$DW$96	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$96, DW_AT_location[DW_OP_reg19]
$C$DW$97	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$97, DW_AT_location[DW_OP_reg20]
$C$DW$98	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$98, DW_AT_location[DW_OP_reg21]
$C$DW$99	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$99, DW_AT_location[DW_OP_reg22]
$C$DW$100	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$100, DW_AT_location[DW_OP_reg23]
$C$DW$101	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$101, DW_AT_location[DW_OP_reg24]
$C$DW$102	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$102, DW_AT_location[DW_OP_reg25]
$C$DW$103	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$103, DW_AT_location[DW_OP_reg26]
$C$DW$104	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$104, DW_AT_location[DW_OP_reg27]
$C$DW$105	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$105, DW_AT_location[DW_OP_reg28]
$C$DW$106	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$106, DW_AT_location[DW_OP_reg29]
$C$DW$107	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$107, DW_AT_location[DW_OP_reg30]
$C$DW$108	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$108, DW_AT_location[DW_OP_reg31]
$C$DW$109	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$109, DW_AT_location[DW_OP_regx 0x20]
$C$DW$110	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$110, DW_AT_location[DW_OP_regx 0x21]
$C$DW$111	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$111, DW_AT_location[DW_OP_regx 0x22]
$C$DW$112	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$112, DW_AT_location[DW_OP_regx 0x23]
$C$DW$113	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$113, DW_AT_location[DW_OP_regx 0x24]
$C$DW$114	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$114, DW_AT_location[DW_OP_regx 0x25]
$C$DW$115	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$115, DW_AT_location[DW_OP_regx 0x26]
$C$DW$116	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$116, DW_AT_location[DW_OP_regx 0x27]
$C$DW$117	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$117, DW_AT_location[DW_OP_regx 0x28]
$C$DW$118	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$118, DW_AT_location[DW_OP_regx 0x29]
$C$DW$119	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$119, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$120	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$120, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$121	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$121, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$122	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$122, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$123	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$123, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$124	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$124, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$125	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$125, DW_AT_location[DW_OP_regx 0x30]
$C$DW$126	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$126, DW_AT_location[DW_OP_regx 0x31]
$C$DW$127	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$127, DW_AT_location[DW_OP_regx 0x32]
$C$DW$128	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$128, DW_AT_location[DW_OP_regx 0x33]
$C$DW$129	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$129, DW_AT_location[DW_OP_regx 0x34]
$C$DW$130	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$130, DW_AT_location[DW_OP_regx 0x35]
$C$DW$131	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$131, DW_AT_location[DW_OP_regx 0x36]
$C$DW$132	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$132, DW_AT_location[DW_OP_regx 0x37]
$C$DW$133	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$133, DW_AT_location[DW_OP_regx 0x38]
$C$DW$134	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$134, DW_AT_location[DW_OP_regx 0x39]
$C$DW$135	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$135, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$136	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$136, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$137	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$137, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$138	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$138, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$139	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$139, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$140	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$140, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$141	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$141, DW_AT_location[DW_OP_regx 0x40]
$C$DW$142	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$142, DW_AT_location[DW_OP_regx 0x41]
$C$DW$143	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$143, DW_AT_location[DW_OP_regx 0x42]
$C$DW$144	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$144, DW_AT_location[DW_OP_regx 0x43]
$C$DW$145	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$145, DW_AT_location[DW_OP_regx 0x44]
$C$DW$146	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$146, DW_AT_location[DW_OP_regx 0x45]
$C$DW$147	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$147, DW_AT_location[DW_OP_regx 0x46]
$C$DW$148	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$148, DW_AT_location[DW_OP_regx 0x47]
$C$DW$149	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$149, DW_AT_location[DW_OP_regx 0x48]
$C$DW$150	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$150, DW_AT_location[DW_OP_regx 0x49]
$C$DW$151	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$151, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$152	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$152, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$153	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$153, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$154	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$154, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$155	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$155, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$156	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$156, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$157	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$157, DW_AT_location[DW_OP_regx 0x50]
$C$DW$158	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$158, DW_AT_location[DW_OP_regx 0x51]
$C$DW$159	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$159, DW_AT_location[DW_OP_regx 0x52]
$C$DW$160	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$160, DW_AT_location[DW_OP_regx 0x53]
$C$DW$161	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$161, DW_AT_location[DW_OP_regx 0x54]
$C$DW$162	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$162, DW_AT_location[DW_OP_regx 0x55]
$C$DW$163	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$163, DW_AT_location[DW_OP_regx 0x56]
$C$DW$164	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$164, DW_AT_location[DW_OP_regx 0x57]
$C$DW$165	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$165, DW_AT_location[DW_OP_regx 0x58]
$C$DW$166	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$166, DW_AT_location[DW_OP_regx 0x59]
$C$DW$167	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$167, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$168	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$168, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

