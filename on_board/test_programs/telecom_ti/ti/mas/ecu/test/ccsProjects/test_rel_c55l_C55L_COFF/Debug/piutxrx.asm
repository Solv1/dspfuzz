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
	.dwattr $C$DW$CU, DW_AT_name("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen PC v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\ecu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug")

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("memset")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_memset")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$3)
$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$10)
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$60)
	.dwendtag $C$DW$1


$C$DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("utlLin2dBPower")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_utlLin2dBPower")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$22)
	.dwendtag $C$DW$5


$C$DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("utlLsMemSet")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_utlLsMemSet")
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$28)
$C$DW$9	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$27)
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$26)
	.dwendtag $C$DW$7


$C$DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("muaTblUlawCmpr")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_muaTblUlawCmpr")
	.dwattr $C$DW$11, DW_AT_declaration
	.dwattr $C$DW$11, DW_AT_external
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$26)
$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$28)
$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$70)
	.dwendtag $C$DW$11


$C$DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("muaTblAlawCmpr")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_muaTblAlawCmpr")
	.dwattr $C$DW$15, DW_AT_declaration
	.dwattr $C$DW$15, DW_AT_external
$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$26)
$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$28)
$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$70)
	.dwendtag $C$DW$15


$C$DW$19	.dwtag  DW_TAG_subprogram, DW_AT_name("UAExpand")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_UAExpand")
	.dwattr $C$DW$19, DW_AT_declaration
	.dwattr $C$DW$19, DW_AT_external
$C$DW$20	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$26)
$C$DW$21	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$67)
$C$DW$22	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$73)
$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$48)
	.dwendtag $C$DW$19


$C$DW$24	.dwtag  DW_TAG_subprogram, DW_AT_name("piu_frame_energy")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_piu_frame_energy")
	.dwattr $C$DW$24, DW_AT_declaration
	.dwattr $C$DW$24, DW_AT_external
$C$DW$25	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$26)
$C$DW$26	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$77)
$C$DW$27	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$78)
	.dwendtag $C$DW$24


$C$DW$28	.dwtag  DW_TAG_subprogram, DW_AT_name("piu_frame_DClevel")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_piu_frame_DClevel")
	.dwattr $C$DW$28, DW_AT_declaration
	.dwattr $C$DW$28, DW_AT_external
$C$DW$29	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$26)
$C$DW$30	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$77)
$C$DW$31	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$78)
	.dwendtag $C$DW$28


$C$DW$32	.dwtag  DW_TAG_subprogram, DW_AT_name("piu_remove_dc_component")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_piu_remove_dc_component")
	.dwattr $C$DW$32, DW_AT_declaration
	.dwattr $C$DW$32, DW_AT_external
$C$DW$33	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$26)
$C$DW$34	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$77)
$C$DW$35	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$78)
$C$DW$36	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$26)
	.dwendtag $C$DW$32

$C$DW$37	.dwtag  DW_TAG_variable, DW_AT_name("piuContext")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_piuContext")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$37, DW_AT_declaration
	.dwattr $C$DW$37, DW_AT_external
;	C:\MAS_Tools\CCSV5_2_1\ccsv5\tools\compiler\c5500_4.4.1\bin\acp55.exe -@C:\\DOCUME~1\\a0868396\\LOCALS~1\\Temp\\0960812 
	.sect	".text"

$C$DW$38	.dwtag  DW_TAG_subprogram, DW_AT_name("utlCopy")
	.dwattr $C$DW$38, DW_AT_low_pc(_utlCopy)
	.dwattr $C$DW$38, DW_AT_high_pc(0x00)
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_utlCopy")
	.dwattr $C$DW$38, DW_AT_TI_begin_file("../../../../../../../ti/mas/util/utl.h")
	.dwattr $C$DW$38, DW_AT_TI_begin_line(0x198)
	.dwattr $C$DW$38, DW_AT_TI_begin_column(0x14)
	.dwattr $C$DW$38, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../../../../../../../ti/mas/util/utl.h",line 409,column 1,is_stmt,address _utlCopy

	.dwfde $C$DW$CIE, _utlCopy
$C$DW$39	.dwtag  DW_TAG_formal_parameter, DW_AT_name("inBuf")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_inBuf")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_reg17]
$C$DW$40	.dwtag  DW_TAG_formal_parameter, DW_AT_name("outBuf")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_outBuf")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_reg19]
$C$DW$41	.dwtag  DW_TAG_formal_parameter, DW_AT_name("length")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_length")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_reg12]
;----------------------------------------------------------------------
; 408 | static inline void utlCopy (tword *inBuf, tword *outBuf, tint length)  
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: utlCopy                                                      *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,CARRY,TC1, *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_utlCopy:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-7
	.dwcfi	cfa_offset, 8
$C$DW$42	.dwtag  DW_TAG_variable, DW_AT_name("inBuf")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_inBuf")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$43	.dwtag  DW_TAG_variable, DW_AT_name("outBuf")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_outBuf")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$44	.dwtag  DW_TAG_variable, DW_AT_name("length")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_length")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$45	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_bregx 0x24 5]
;----------------------------------------------------------------------
; 410 | int i;                                                                 
;----------------------------------------------------------------------
        *SP(#4) = T0 ; |409| 
        dbl(*SP(#2)) = XAR1
        dbl(*SP(#0)) = XAR0
	.dwpsn	file "../../../../../../../ti/mas/util/utl.h",line 411,column 7,is_stmt
;----------------------------------------------------------------------
; 411 | for(i = 0; i < length; i++) {                                          
;----------------------------------------------------------------------
        *SP(#5) = #0 ; |411| 
	.dwpsn	file "../../../../../../../ti/mas/util/utl.h",line 411,column 14,is_stmt
        AR2 = *SP(#5) ; |411| 
        AR1 = *SP(#4) ; |411| 
        TC1 = (AR2 >= AR1) ; |411| 
        if (TC1) goto $C$L2 ; |411| 
                                        ; branchcc occurs ; |411| 
$C$L1:    
$C$DW$L$_utlCopy$2$B:
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "../../../../../../../ti/mas/util/utl.h",line 412,column 5,is_stmt
;----------------------------------------------------------------------
; 412 | outBuf[i] = inBuf[i];                                                  
;----------------------------------------------------------------------
        T0 = *SP(#5) ; |412| 
        AR1 = T0
        XAR2 = dbl(*SP(#0))
        mar(AR3 + AR1) ; |412| 
        *AR3 = *AR2(T0) ; |412| 
	.dwpsn	file "../../../../../../../ti/mas/util/utl.h",line 411,column 26,is_stmt
        *SP(#5) = *SP(#5) + #1 ; |411| 
	.dwpsn	file "../../../../../../../ti/mas/util/utl.h",line 411,column 14,is_stmt
        AR1 = *SP(#4) ; |411| 
        AR2 = *SP(#5) ; |411| 
        TC1 = (AR2 < AR1) ; |411| 
        if (TC1) goto $C$L1 ; |411| 
                                        ; branchcc occurs ; |411| 
$C$DW$L$_utlCopy$2$E:
$C$L2:    
        SP = SP + #7
	.dwcfi	cfa_offset, 1
$C$DW$46	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$46, DW_AT_low_pc(0x00)
	.dwattr $C$DW$46, DW_AT_TI_return
        return
                                        ; return occurs

$C$DW$47	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$47, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\ecu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\piutxrx.asm:$C$L1:1:1373047936")
	.dwattr $C$DW$47, DW_AT_TI_begin_file("../../../../../../../ti/mas/util/utl.h")
	.dwattr $C$DW$47, DW_AT_TI_begin_line(0x19b)
	.dwattr $C$DW$47, DW_AT_TI_end_line(0x19d)
$C$DW$48	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$48, DW_AT_low_pc($C$DW$L$_utlCopy$2$B)
	.dwattr $C$DW$48, DW_AT_high_pc($C$DW$L$_utlCopy$2$E)
	.dwendtag $C$DW$47

	.dwattr $C$DW$38, DW_AT_TI_end_file("../../../../../../../ti/mas/util/utl.h")
	.dwattr $C$DW$38, DW_AT_TI_end_line(0x19e)
	.dwattr $C$DW$38, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$38

	.sect	".text"
	.global	_piu_pcm_compressing

$C$DW$49	.dwtag  DW_TAG_subprogram, DW_AT_name("piu_pcm_compressing")
	.dwattr $C$DW$49, DW_AT_low_pc(_piu_pcm_compressing)
	.dwattr $C$DW$49, DW_AT_high_pc(0x00)
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_piu_pcm_compressing")
	.dwattr $C$DW$49, DW_AT_external
	.dwattr $C$DW$49, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c")
	.dwattr $C$DW$49, DW_AT_TI_begin_line(0x61)
	.dwattr $C$DW$49, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$49, DW_AT_TI_max_frame_size(0x0e)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 99,column 1,is_stmt,address _piu_pcm_compressing

	.dwfde $C$DW$CIE, _piu_pcm_compressing
$C$DW$50	.dwtag  DW_TAG_formal_parameter, DW_AT_name("inst")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_reg17]
$C$DW$51	.dwtag  DW_TAG_formal_parameter, DW_AT_name("linear_in")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_linear_in")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_reg19]
$C$DW$52	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pcm_out")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_pcm_out")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_reg21]
$C$DW$53	.dwtag  DW_TAG_formal_parameter, DW_AT_name("length")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_length")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_reg12]
;----------------------------------------------------------------------
;  97 | void piu_pcm_compressing (piuInst_t *inst, tint *linear_in,            
;  98 | tint *pcm_out, tint length)                                            
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: piu_pcm_compressing                                          *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,TC1,M40,   *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 14 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (12 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_piu_pcm_compressing:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-13
	.dwcfi	cfa_offset, 14
$C$DW$54	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$55	.dwtag  DW_TAG_variable, DW_AT_name("linear_in")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_linear_in")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$55, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$56	.dwtag  DW_TAG_variable, DW_AT_name("pcm_out")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_pcm_out")
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$56, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$57	.dwtag  DW_TAG_variable, DW_AT_name("length")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_length")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$58	.dwtag  DW_TAG_variable, DW_AT_name("in_ptr")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_in_ptr")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$59	.dwtag  DW_TAG_variable, DW_AT_name("out_ptr")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_out_ptr")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_bregx 0x24 10]
;----------------------------------------------------------------------
; 100 | linSample *in_ptr, *out_ptr;                                           
; 103 | in_ptr  = linear_in;                                                   
; 104 | out_ptr = pcm_out;                                                     
;----------------------------------------------------------------------
        *SP(#6) = T0 ; |99| 
        dbl(*SP(#4)) = XAR2
        dbl(*SP(#2)) = XAR1
        dbl(*SP(#0)) = XAR0
        XAR3 = dbl(*SP(#2))
        dbl(*SP(#8)) = XAR3
        XAR3 = dbl(*SP(#4))
        dbl(*SP(#10)) = XAR3
        XAR3 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 105,column 3,is_stmt
;----------------------------------------------------------------------
; 105 | if ((inst->mode_bitfield&piu_CTRL_BIT_TRANSPARENT_MODE)) {             
; 106 |   utlCopy((tword *)in_ptr, (tword *)out_ptr, length);                  
; 108 | else {                                                                 
;----------------------------------------------------------------------
        TC1 = bit(*AR3(short(#2)),#0) ; |105| 
        if (TC1) goto $C$L4 ; |105| 
                                        ; branchcc occurs ; |105| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 110,column 5,is_stmt
;----------------------------------------------------------------------
; 110 | if (inst->pcm_format == piu_COMP_ULAW)        /* u-law + saturation */ 
;----------------------------------------------------------------------
        TC1 = (*AR3(short(#6)) == #1) ; |110| 
        if (!TC1) goto $C$L3 ; |110| 
                                        ; branchcc occurs ; |110| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 111,column 7,is_stmt
;----------------------------------------------------------------------
; 111 | muaTblUlawCmpr (length, in_ptr, out_ptr);                              
;----------------------------------------------------------------------
        T0 = *SP(#6) ; |111| 
        XAR0 = dbl(*SP(#8))
        XAR1 = dbl(*SP(#10))
$C$DW$60	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$60, DW_AT_low_pc(0x00)
	.dwattr $C$DW$60, DW_AT_name("_muaTblUlawCmpr")
	.dwattr $C$DW$60, DW_AT_TI_call
        call #_muaTblUlawCmpr ; |111| 
                                        ; call occurs [#_muaTblUlawCmpr] ; |111| 
        goto $C$L5 ; |111| 
                                        ; branch occurs ; |111| 
$C$L3:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 112,column 10,is_stmt
;----------------------------------------------------------------------
; 112 | else if (inst->pcm_format == piu_COMP_ALAW)   /* A-law + saturation */ 
;----------------------------------------------------------------------
        AR1 = *AR3(short(#6)) ; |112| 
        if (AR1 != #0) goto $C$L4 ; |112| 
                                        ; branchcc occurs ; |112| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 113,column 7,is_stmt
;----------------------------------------------------------------------
; 113 | muaTblAlawCmpr (length, in_ptr, out_ptr);                              
; 114 | else                         /* linear 16 bit data, out = in */        
;----------------------------------------------------------------------
        T0 = *SP(#6) ; |113| 
        XAR0 = dbl(*SP(#8))
        XAR1 = dbl(*SP(#10))
$C$DW$61	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$61, DW_AT_low_pc(0x00)
	.dwattr $C$DW$61, DW_AT_name("_muaTblAlawCmpr")
	.dwattr $C$DW$61, DW_AT_TI_call
        call #_muaTblAlawCmpr ; |113| 
                                        ; call occurs [#_muaTblAlawCmpr] ; |113| 
        goto $C$L5 ; |113| 
                                        ; branch occurs ; |113| 
$C$L4:    
        XAR0 = dbl(*SP(#8))
        XAR1 = dbl(*SP(#10))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 115,column 7,is_stmt
;----------------------------------------------------------------------
; 115 | utlCopy((tword *)in_ptr, (tword *)out_ptr, length);                    
;----------------------------------------------------------------------
        T0 = *SP(#6) ; |115| 
$C$DW$62	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$62, DW_AT_low_pc(0x00)
	.dwattr $C$DW$62, DW_AT_name("_utlCopy")
	.dwattr $C$DW$62, DW_AT_TI_call
        call #_utlCopy ; |115| 
                                        ; call occurs [#_utlCopy] ; |115| 
$C$L5:    
        SP = SP + #13
	.dwcfi	cfa_offset, 1
$C$DW$63	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$63, DW_AT_low_pc(0x00)
	.dwattr $C$DW$63, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$49, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c")
	.dwattr $C$DW$49, DW_AT_TI_end_line(0x75)
	.dwattr $C$DW$49, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$49

	.sect	".text"
	.global	_piu_pcm_companding

$C$DW$64	.dwtag  DW_TAG_subprogram, DW_AT_name("piu_pcm_companding")
	.dwattr $C$DW$64, DW_AT_low_pc(_piu_pcm_companding)
	.dwattr $C$DW$64, DW_AT_high_pc(0x00)
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_piu_pcm_companding")
	.dwattr $C$DW$64, DW_AT_external
	.dwattr $C$DW$64, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c")
	.dwattr $C$DW$64, DW_AT_TI_begin_line(0x83)
	.dwattr $C$DW$64, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$64, DW_AT_TI_max_frame_size(0x0e)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 133,column 1,is_stmt,address _piu_pcm_companding

	.dwfde $C$DW$CIE, _piu_pcm_companding
$C$DW$65	.dwtag  DW_TAG_formal_parameter, DW_AT_name("inst")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_reg17]
$C$DW$66	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pcm_in")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_pcm_in")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_reg19]
$C$DW$67	.dwtag  DW_TAG_formal_parameter, DW_AT_name("linear_out")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_linear_out")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$67, DW_AT_location[DW_OP_reg21]
$C$DW$68	.dwtag  DW_TAG_formal_parameter, DW_AT_name("length")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_length")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$68, DW_AT_location[DW_OP_reg12]
;----------------------------------------------------------------------
; 131 | void piu_pcm_companding (piuInst_t *inst, tint *pcm_in,                
; 132 | tint *linear_out, tint length)                                         
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: piu_pcm_companding                                           *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,   *
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 14 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (12 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_piu_pcm_companding:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-13
	.dwcfi	cfa_offset, 14
$C$DW$69	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$69, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$70	.dwtag  DW_TAG_variable, DW_AT_name("pcm_in")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_pcm_in")
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$70, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$71	.dwtag  DW_TAG_variable, DW_AT_name("linear_out")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_linear_out")
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$71, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$72	.dwtag  DW_TAG_variable, DW_AT_name("length")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_length")
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$72, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$73	.dwtag  DW_TAG_variable, DW_AT_name("linear_out_ptr")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_linear_out_ptr")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$74	.dwtag  DW_TAG_variable, DW_AT_name("pcm_expand_table")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_pcm_expand_table")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_bregx 0x24 10]
;----------------------------------------------------------------------
; 134 | tint  *linear_out_ptr;                                                 
; 135 | const tint *pcm_expand_table;                                          
; 137 | linear_out_ptr = linear_out;                                           
;----------------------------------------------------------------------
        *SP(#6) = T0 ; |133| 
        dbl(*SP(#4)) = XAR2
        dbl(*SP(#2)) = XAR1
        dbl(*SP(#0)) = XAR0
        XAR3 = dbl(*SP(#4))
        dbl(*SP(#8)) = XAR3
        XAR3 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 139,column 3,is_stmt
;----------------------------------------------------------------------
; 139 | if ((!(inst->mode_bitfield&piu_CTRL_BIT_TRANSPARENT_MODE)) &&          
; 140 |   (inst->pcm_expand_table != NULL)) {                                  
; 141 |   pcm_expand_table = inst->pcm_expand_table;                           
;----------------------------------------------------------------------
        TC1 = bit(*AR3(short(#2)),#0) ; |139| 
        if (TC1) goto $C$L6 ; |139| 
                                        ; branchcc occurs ; |139| 
        XAR3 = dbl(*AR3(short(#4)))
        AC0 = XAR3
        if (AC0 == #0) goto $C$L6 ; |139| 
                                        ; branchcc occurs ; |139| 
        XAR3 = dbl(*SP(#0))
        XAR1 = mar(*SP(#8))
        XAR3 = dbl(*AR3(short(#4)))
        dbl(*SP(#10)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 142,column 5,is_stmt
;----------------------------------------------------------------------
; 142 | UAExpand(length, (tword *)pcm_in, &linear_out_ptr, pcm_expand_table);  
;----------------------------------------------------------------------
        T0 = *SP(#6) ; |142| 
        XAR0 = dbl(*SP(#2))
        XAR2 = dbl(*SP(#10))
$C$DW$75	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$75, DW_AT_low_pc(0x00)
	.dwattr $C$DW$75, DW_AT_name("_UAExpand")
	.dwattr $C$DW$75, DW_AT_TI_call
        call #_UAExpand ; |142| 
                                        ; call occurs [#_UAExpand] ; |142| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 143,column 3,is_stmt
;----------------------------------------------------------------------
; 144 | else {    /* no processing in transparent mode or linear expansion */  
;----------------------------------------------------------------------
        goto $C$L7 ; |143| 
                                        ; branch occurs ; |143| 
$C$L6:    
        XAR0 = dbl(*SP(#2))
        XAR1 = dbl(*SP(#8))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 145,column 5,is_stmt
;----------------------------------------------------------------------
; 145 | utlCopy((tword *)pcm_in, (tword *)linear_out_ptr, length);             
;----------------------------------------------------------------------
        T0 = *SP(#6) ; |145| 
$C$DW$76	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$76, DW_AT_low_pc(0x00)
	.dwattr $C$DW$76, DW_AT_name("_utlCopy")
	.dwattr $C$DW$76, DW_AT_TI_call
        call #_utlCopy ; |145| 
                                        ; call occurs [#_utlCopy] ; |145| 
$C$L7:    
        SP = SP + #13
	.dwcfi	cfa_offset, 1
$C$DW$77	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$77, DW_AT_low_pc(0x00)
	.dwattr $C$DW$77, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$64, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c")
	.dwattr $C$DW$64, DW_AT_TI_end_line(0x93)
	.dwattr $C$DW$64, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$64

	.sect	".text"
	.global	_piu_update_buf_ptr

$C$DW$78	.dwtag  DW_TAG_subprogram, DW_AT_name("piu_update_buf_ptr")
	.dwattr $C$DW$78, DW_AT_low_pc(_piu_update_buf_ptr)
	.dwattr $C$DW$78, DW_AT_high_pc(0x00)
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_piu_update_buf_ptr")
	.dwattr $C$DW$78, DW_AT_external
	.dwattr $C$DW$78, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c")
	.dwattr $C$DW$78, DW_AT_TI_begin_line(0xa2)
	.dwattr $C$DW$78, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$78, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 163,column 1,is_stmt,address _piu_update_buf_ptr

	.dwfde $C$DW$CIE, _piu_update_buf_ptr
$C$DW$79	.dwtag  DW_TAG_formal_parameter, DW_AT_name("inst")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$79, DW_AT_location[DW_OP_reg17]
$C$DW$80	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dir")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_dir")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$80, DW_AT_location[DW_OP_reg12]
$C$DW$81	.dwtag  DW_TAG_formal_parameter, DW_AT_name("in_ptr")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_in_ptr")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$81, DW_AT_location[DW_OP_reg19]
;----------------------------------------------------------------------
; 162 | void piu_update_buf_ptr (piuInst_t *inst, tbool dir, linSample **in_ptr
;     | )                                                                      
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: piu_update_buf_ptr                                           *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,   *
;*                        XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_piu_update_buf_ptr:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-7
	.dwcfi	cfa_offset, 8
$C$DW$82	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$83	.dwtag  DW_TAG_variable, DW_AT_name("dir")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_dir")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$83, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$84	.dwtag  DW_TAG_variable, DW_AT_name("in_ptr")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_in_ptr")
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$84, DW_AT_location[DW_OP_bregx 0x24 4]
        dbl(*SP(#4)) = XAR1
        *SP(#2) = T0 ; |163| 
        dbl(*SP(#0)) = XAR0
        XAR3 = dbl(*SP(#0))
        XAR2 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 164,column 3,is_stmt
;----------------------------------------------------------------------
; 164 | *in_ptr += inst->segment_size;                                         
;----------------------------------------------------------------------
        AR1 = *AR3(short(#7)) ; |164| 
        XAR3 = dbl(*AR2)

        dbl(*AR2) = XAR3
||      mar(AR3 + AR1) ; |164| 

        XAR3 = dbl(*SP(#0))
        XAR3 = dbl(*AR3(#42))
        AC0 = XAR3
        XAR3 = dbl(*SP(#4))
        XAR3 = dbl(*AR3)
        AC1 = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 165,column 3,is_stmt
;----------------------------------------------------------------------
; 165 | if (*in_ptr == inst->receive_in_buf.end_ptr) {                         
; 166 |   *in_ptr = inst->receive_in_buf.start_ptr;                            
;----------------------------------------------------------------------
        TC1 = uns(AC1 != AC0) ; |165| 
        if (TC1) goto $C$L8 ; |165| 
                                        ; branchcc occurs ; |165| 
        XAR3 = dbl(*SP(#0))
        XAR2 = dbl(*SP(#4))
        XAR3 = dbl(*AR3(#40))
        dbl(*AR2) = XAR3
$C$L8:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 168,column 3,is_stmt
;----------------------------------------------------------------------
; 168 | if (dir)                                                               
;----------------------------------------------------------------------
        AR1 = *SP(#2) ; |168| 
        XAR3 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 169,column 5,is_stmt
;----------------------------------------------------------------------
; 169 | inst->receive_in_buf.segment_count--;                                  
; 170 | else                                                                   
;----------------------------------------------------------------------
        if (AR1 != #0) execute (AD_Unit)
           *AR3(#46) = *AR3(#46) - #1 ; |169| 
        XAR3 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 171,column 5,is_stmt
;----------------------------------------------------------------------
; 171 | inst->receive_in_buf.segment_count++;                                  
;----------------------------------------------------------------------
        if (AR1 == #0) execute (AD_Unit)
           *AR3(#46) = *AR3(#46) + #1 ; |171| 
        SP = SP + #7
	.dwcfi	cfa_offset, 1
$C$DW$85	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$85, DW_AT_low_pc(0x00)
	.dwattr $C$DW$85, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$78, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c")
	.dwattr $C$DW$78, DW_AT_TI_end_line(0xac)
	.dwattr $C$DW$78, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$78

	.sect	".text"
	.global	_piu_get_stats

$C$DW$86	.dwtag  DW_TAG_subprogram, DW_AT_name("piu_get_stats")
	.dwattr $C$DW$86, DW_AT_low_pc(_piu_get_stats)
	.dwattr $C$DW$86, DW_AT_high_pc(0x00)
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("_piu_get_stats")
	.dwattr $C$DW$86, DW_AT_external
	.dwattr $C$DW$86, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c")
	.dwattr $C$DW$86, DW_AT_TI_begin_line(0xbc)
	.dwattr $C$DW$86, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$86, DW_AT_TI_max_frame_size(0x0e)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 189,column 1,is_stmt,address _piu_get_stats

	.dwfde $C$DW$CIE, _piu_get_stats
$C$DW$87	.dwtag  DW_TAG_formal_parameter, DW_AT_name("piuInst")
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("_piuInst")
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$87, DW_AT_location[DW_OP_reg17]
$C$DW$88	.dwtag  DW_TAG_formal_parameter, DW_AT_name("stats")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("_stats")
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$88, DW_AT_location[DW_OP_reg19]
;----------------------------------------------------------------------
; 188 | void piu_get_stats (void *piuInst, piuStats_t *stats)                  
; 190 | tint db;                                                               
; 191 | LFract lin;                                                            
; 192 | piuInst_t          *inst       = (piuInst_t *)piuInst;                 
; 193 | piuEnergyDCLevel_t *lin_levels = (piuEnergyDCLevel_t *)&inst->energy_DC
;     | level;                                                                 
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: piu_get_stats                                                *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,M40,SATA,   *
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 14 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (12 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_piu_get_stats:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-13
	.dwcfi	cfa_offset, 14
$C$DW$89	.dwtag  DW_TAG_variable, DW_AT_name("piuInst")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_piuInst")
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$89, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$90	.dwtag  DW_TAG_variable, DW_AT_name("stats")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_stats")
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$90, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$91	.dwtag  DW_TAG_variable, DW_AT_name("db")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_db")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$91, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$92	.dwtag  DW_TAG_variable, DW_AT_name("lin")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_lin")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$93	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$93, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$94	.dwtag  DW_TAG_variable, DW_AT_name("lin_levels")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("_lin_levels")
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$94, DW_AT_location[DW_OP_bregx 0x24 10]
        dbl(*SP(#2)) = XAR1
        dbl(*SP(#0)) = XAR0
        XAR3 = dbl(*SP(#0))
        dbl(*SP(#8)) = XAR3

        dbl(*SP(#10)) = XAR3
||      mar(AR3 + #26) ; |193| 

	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 196,column 3,is_stmt
;----------------------------------------------------------------------
; 196 | stats->send_out_mean     = frctLF2F(lin_levels->txDClevel, piu_MEAN_Q,
;     | 0);                                                                    
;----------------------------------------------------------------------
        AC0 = dbl(*AR3(short(#4))) ; |196| 
        XAR3 = dbl(*SP(#2))
        AC0 = AC0 << #-13 ; |196| 
        AC0 = AC0 & #0xffff ; |196| 
        *AR3(short(#1)) = AC0 ; |196| 
        XAR3 = dbl(*SP(#10))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 197,column 3,is_stmt
;----------------------------------------------------------------------
; 197 | stats->receive_out_mean  = frctLF2F(lin_levels->rxDClevel, piu_MEAN_Q,
;     | 0);                                                                    
;----------------------------------------------------------------------
        AC0 = dbl(*AR3(short(#6))) ; |197| 
        XAR3 = dbl(*SP(#2))
        AC0 = AC0 << #-13 ; |197| 
        AC0 = AC0 & #0xffff ; |197| 
        *AR3(short(#3)) = AC0 ; |197| 
        XAR3 = dbl(*SP(#10))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 200,column 3,is_stmt
;----------------------------------------------------------------------
; 200 | lin = frctAdjustQ (lin_levels->txEnergy, piu_ENERGY_Q, 0);             
;----------------------------------------------------------------------
        AC0 = dbl(*AR3) ; |200| 
        AC0 = AC0 << #-2 ; |200| 
        dbl(*SP(#6)) = AC0 ; |200| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 201,column 3,is_stmt
;----------------------------------------------------------------------
; 201 | if (lin <= 0) /* input to utlLin2dBPower must be > 0 */                
;----------------------------------------------------------------------
        AC0 = dbl(*SP(#6)) ; |201| 
        if (AC0 > #0) goto $C$L9 ; |201| 
                                        ; branchcc occurs ; |201| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 202,column 5,is_stmt
;----------------------------------------------------------------------
; 202 | lin = 1;    /* -84 dBm0 */                                             
;----------------------------------------------------------------------
        AC0 = #1  ; |202| 
        dbl(*SP(#6)) = AC0 ; |202| 
$C$L9:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 203,column 3,is_stmt
;----------------------------------------------------------------------
; 203 | db = utlLin2dBPower (lin);                                             
;----------------------------------------------------------------------
        AC0 = dbl(*SP(#6)) ; |203| 
$C$DW$95	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$95, DW_AT_low_pc(0x00)
	.dwattr $C$DW$95, DW_AT_name("_utlLin2dBPower")
	.dwattr $C$DW$95, DW_AT_TI_call
        call #_utlLin2dBPower ; |203| 
                                        ; call occurs [#_utlLin2dBPower] ; |203| 
        *SP(#4) = T0 ; |203| 
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 204,column 3,is_stmt
;----------------------------------------------------------------------
; 204 | stats->send_out = frctAdjustQ (db, piu_POWER_DB_Q, 0);                 
;----------------------------------------------------------------------
        AC0 = *SP(#4) ; |204| 
        AC0 = AC0 << #-4 ; |204| 
        *AR3 = AC0 ; |204| 
        XAR3 = dbl(*SP(#10))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 206,column 3,is_stmt
;----------------------------------------------------------------------
; 206 | lin = frctAdjustQ (lin_levels->rxEnergy, piu_ENERGY_Q, 0);             
;----------------------------------------------------------------------
        AC0 = dbl(*AR3(short(#2))) ; |206| 
        AC0 = AC0 << #-2 ; |206| 
        dbl(*SP(#6)) = AC0 ; |206| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 207,column 3,is_stmt
;----------------------------------------------------------------------
; 207 | if (lin <= 0) /* input to utlLin2dBPower must be > 0 */                
;----------------------------------------------------------------------
        AC0 = dbl(*SP(#6)) ; |207| 
        if (AC0 > #0) goto $C$L10 ; |207| 
                                        ; branchcc occurs ; |207| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 208,column 5,is_stmt
;----------------------------------------------------------------------
; 208 | lin = 1;    /* -84 dBm0 */                                             
;----------------------------------------------------------------------
        AC0 = #1  ; |208| 
        dbl(*SP(#6)) = AC0 ; |208| 
$C$L10:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 209,column 3,is_stmt
;----------------------------------------------------------------------
; 209 | db = utlLin2dBPower (lin);                                             
;----------------------------------------------------------------------
        AC0 = dbl(*SP(#6)) ; |209| 
$C$DW$96	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$96, DW_AT_low_pc(0x00)
	.dwattr $C$DW$96, DW_AT_name("_utlLin2dBPower")
	.dwattr $C$DW$96, DW_AT_TI_call
        call #_utlLin2dBPower ; |209| 
                                        ; call occurs [#_utlLin2dBPower] ; |209| 
        *SP(#4) = T0 ; |209| 
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 210,column 3,is_stmt
;----------------------------------------------------------------------
; 210 | stats->receive_out = frctAdjustQ (db, piu_POWER_DB_Q, 0);              
;----------------------------------------------------------------------
        AC0 = *SP(#4) ; |210| 
        AC0 = AC0 << #-4 ; |210| 
        *AR3(short(#2)) = AC0 ; |210| 
        XAR3 = dbl(*SP(#8))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 211,column 3,is_stmt
;----------------------------------------------------------------------
; 211 | stats->underrun    = inst->rx_underflow_cnt;                           
;----------------------------------------------------------------------
        AR1 = *AR3(#9) ; |211| 
        XAR3 = dbl(*SP(#2))
        *AR3(short(#4)) = AR1 ; |211| 
        SP = SP + #13
	.dwcfi	cfa_offset, 1
$C$DW$97	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$97, DW_AT_low_pc(0x00)
	.dwattr $C$DW$97, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$86, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c")
	.dwattr $C$DW$86, DW_AT_TI_end_line(0xd4)
	.dwattr $C$DW$86, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$86

	.sect	".text"
	.global	_piu_bid_silence_detect

$C$DW$98	.dwtag  DW_TAG_subprogram, DW_AT_name("piu_bid_silence_detect")
	.dwattr $C$DW$98, DW_AT_low_pc(_piu_bid_silence_detect)
	.dwattr $C$DW$98, DW_AT_high_pc(0x00)
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("_piu_bid_silence_detect")
	.dwattr $C$DW$98, DW_AT_external
	.dwattr $C$DW$98, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c")
	.dwattr $C$DW$98, DW_AT_TI_begin_line(0xdf)
	.dwattr $C$DW$98, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$98, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 224,column 1,is_stmt,address _piu_bid_silence_detect

	.dwfde $C$DW$CIE, _piu_bid_silence_detect
$C$DW$99	.dwtag  DW_TAG_formal_parameter, DW_AT_name("inst")
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$99, DW_AT_location[DW_OP_reg17]
;----------------------------------------------------------------------
; 223 | void piu_bid_silence_detect (piuInst_t *inst)                          
; 225 | LFract lin_thres;                                                      
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: piu_bid_silence_detect                                       *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR2,XAR2,AR3,XAR3,SP,*
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_piu_bid_silence_detect:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-7
	.dwcfi	cfa_offset, 8
$C$DW$100	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$100, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$101	.dwtag  DW_TAG_variable, DW_AT_name("lin_thres")
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_lin_thres")
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$101, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$102	.dwtag  DW_TAG_variable, DW_AT_name("context")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("_context")
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$102, DW_AT_location[DW_OP_bregx 0x24 4]
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 226,column 17,is_stmt
;----------------------------------------------------------------------
; 226 | piuContext_t *context = &piuContext;                                   
;----------------------------------------------------------------------
        XAR3 = #_piuContext ; |226| 
        dbl(*SP(#0)) = XAR0
        dbl(*SP(#4)) = XAR3
        XAR3 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 228,column 3,is_stmt
;----------------------------------------------------------------------
; 228 | lin_thres = inst->bidSilence.threshold*8;                              
;----------------------------------------------------------------------
        AC0 = dbl(*AR3(#52)) ; |228| 
        AC0 = AC0 << #3 ; |228| 
        dbl(*SP(#2)) = AC0 ; |228| 
        XAR3 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 229,column 3,is_stmt
;----------------------------------------------------------------------
; 229 | if (inst->bidSilence.txSilDetEnergy > lin_thres)                       
;----------------------------------------------------------------------
        AC0 = dbl(*SP(#2)) ; |229| 
        AC1 = dbl(*AR3(#48)) ; |229| 
        TC1 = (AC1 <= AC0) ; |229| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 230,column 5,is_stmt
;----------------------------------------------------------------------
; 230 | inst->bidSilence.txSilDetEnergy = lin_thres;                           
;----------------------------------------------------------------------
        AC0 = dbl(*SP(#2)) ; |230| 
        if (!TC1) execute (D_Unit)
           dbl(*AR3(#48)) = AC0 ; |230| 
        XAR3 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 231,column 3,is_stmt
;----------------------------------------------------------------------
; 231 | if (inst->bidSilence.rxSilDetEnergy > lin_thres)                       
;----------------------------------------------------------------------
        AC0 = dbl(*SP(#2)) ; |231| 
        AC1 = dbl(*AR3(#50)) ; |231| 
        TC1 = (AC1 <= AC0) ; |231| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 232,column 5,is_stmt
;----------------------------------------------------------------------
; 232 | inst->bidSilence.rxSilDetEnergy = lin_thres;                           
;----------------------------------------------------------------------
        AC0 = dbl(*SP(#2)) ; |232| 
        if (!TC1) execute (D_Unit)
           dbl(*AR3(#50)) = AC0 ; |232| 
        XAR3 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 234,column 3,is_stmt
;----------------------------------------------------------------------
; 234 | if ((inst->bidSilence.txSilDetEnergy < inst->bidSilence.threshold) &&  
; 235 |     (inst->bidSilence.rxSilDetEnergy < inst->bidSilence.threshold))    
;----------------------------------------------------------------------
        AC1 = dbl(*AR3(#48)) ; |234| 
        AC0 = dbl(*AR3(#52)) ; |234| 
        TC1 = (AC1 >= AC0) ; |234| 
        if (TC1) goto $C$L11 ; |234| 
                                        ; branchcc occurs ; |234| 
        AC0 = dbl(*AR3(#52)) ; |234| 
        AC1 = dbl(*AR3(#50)) ; |234| 
        TC1 = (AC1 >= AC0) ; |234| 
        if (TC1) goto $C$L11 ; |234| 
                                        ; branchcc occurs ; |234| 
        XAR2 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 237,column 5,is_stmt
;----------------------------------------------------------------------
; 237 | inst->bidSilence.cnt -= (inst->segment_size) >> piu_BIDIR_SILENCE_LOG2_
;     | FRAME_DECIMATION;  /* Since the                                        
; 238 |                                                       counter is decrem
;     | ented once every 4 samples */                                          
;----------------------------------------------------------------------
        AC0 = *AR3(short(#7)) ; |237| 
        AC0 = AC0 << #-2 ; |237| 
        AR1 = *AR2(#54) - AC0 ; |237| 
        *AR2(#54) = AR1 ; |237| 
        XAR3 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 240,column 5,is_stmt
;----------------------------------------------------------------------
; 240 | if (inst->bidSilence.cnt <= 0)                                         
;----------------------------------------------------------------------
        AR1 = *AR3(#54) ; |240| 
        if (AR1 != #0) goto $C$L12 ; |240| 
                                        ; branchcc occurs ; |240| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 243,column 7,is_stmt
;----------------------------------------------------------------------
; 243 | inst->mode_bitfield &= (~piu_CTRL_BIT_BID_SILENCE_DET);                
;----------------------------------------------------------------------
        *AR3(short(#2)) = *AR3(short(#2)) & #0xffdf ; |243| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 246,column 7,is_stmt
;----------------------------------------------------------------------
; 246 | (*context->reportOutFcn) (inst->reportOutTargetInst,                   
; 247 |                           piu_BIDIR_SILENCE_DETECTED);                 
;----------------------------------------------------------------------
        AC0 = dbl(*AR3(short(#4))) ; |246| 
        XAR3 = dbl(*SP(#0))
        T0 = #0
        XAR0 = dbl(*AR3(#20))
$C$DW$103	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$103, DW_AT_low_pc(0x00)
	.dwattr $C$DW$103, DW_AT_TI_call
	.dwattr $C$DW$103, DW_AT_TI_indirect
        call AC0  ; |246| 
                                        ; call occurs [AC0] ; |246| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 249,column 3,is_stmt
;----------------------------------------------------------------------
; 250 | else                                                                   
;----------------------------------------------------------------------
        goto $C$L12 ; |249| 
                                        ; branch occurs ; |249| 
$C$L11:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 251,column 5,is_stmt
;----------------------------------------------------------------------
; 251 | inst->bidSilence.cnt = inst->bidSilence.initCnt; /* re-initialize cntr
;     | */                                                                     
;----------------------------------------------------------------------
        AR1 = *AR3(#55) ; |251| 
        *AR3(#54) = AR1 ; |251| 
$C$L12:    
        SP = SP + #7
	.dwcfi	cfa_offset, 1
$C$DW$104	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$104, DW_AT_low_pc(0x00)
	.dwattr $C$DW$104, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$98, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c")
	.dwattr $C$DW$98, DW_AT_TI_end_line(0xfc)
	.dwattr $C$DW$98, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$98

	.sect	".text"
	.global	_piu_pcm_pattern_detect

$C$DW$105	.dwtag  DW_TAG_subprogram, DW_AT_name("piu_pcm_pattern_detect")
	.dwattr $C$DW$105, DW_AT_low_pc(_piu_pcm_pattern_detect)
	.dwattr $C$DW$105, DW_AT_high_pc(0x00)
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_piu_pcm_pattern_detect")
	.dwattr $C$DW$105, DW_AT_external
	.dwattr $C$DW$105, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c")
	.dwattr $C$DW$105, DW_AT_TI_begin_line(0x10a)
	.dwattr $C$DW$105, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$105, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 267,column 1,is_stmt,address _piu_pcm_pattern_detect

	.dwfde $C$DW$CIE, _piu_pcm_pattern_detect
$C$DW$106	.dwtag  DW_TAG_formal_parameter, DW_AT_name("inst")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$106, DW_AT_location[DW_OP_reg17]
$C$DW$107	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pcm_in")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_pcm_in")
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$107, DW_AT_location[DW_OP_reg19]
;----------------------------------------------------------------------
; 266 | void piu_pcm_pattern_detect (piuInst_t *inst, tint *pcm_in)            
; 268 | piuPcmPatternDetect_t *pcmPattern    = &inst->pcmPattern;              
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: piu_pcm_pattern_detect                                       *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,   *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 16 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (14 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_piu_pcm_pattern_detect:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-15
	.dwcfi	cfa_offset, 16
$C$DW$108	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$108, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$109	.dwtag  DW_TAG_variable, DW_AT_name("pcm_in")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_pcm_in")
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$109, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$110	.dwtag  DW_TAG_variable, DW_AT_name("pcmPattern")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_pcmPattern")
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$110, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$111	.dwtag  DW_TAG_variable, DW_AT_name("context")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_context")
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$111, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$112	.dwtag  DW_TAG_variable, DW_AT_name("patternPresent")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_patternPresent")
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$112, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$113	.dwtag  DW_TAG_variable, DW_AT_name("pattern1")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_pattern1")
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$113, DW_AT_location[DW_OP_bregx 0x24 9]
$C$DW$114	.dwtag  DW_TAG_variable, DW_AT_name("pattern2")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_pattern2")
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$114, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$115	.dwtag  DW_TAG_variable, DW_AT_name("pattern3")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_pattern3")
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$115, DW_AT_location[DW_OP_bregx 0x24 11]
$C$DW$116	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$116, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$117	.dwtag  DW_TAG_variable, DW_AT_name("sample")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_sample")
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$117, DW_AT_location[DW_OP_bregx 0x24 13]
        dbl(*SP(#2)) = XAR1
        dbl(*SP(#0)) = XAR0
        XAR3 = dbl(*SP(#0))

        dbl(*SP(#4)) = XAR3
||      mar(AR3 + #56) ; |268| 

	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 269,column 26,is_stmt
;----------------------------------------------------------------------
; 269 | piuContext_t          *context       = &piuContext;                    
;----------------------------------------------------------------------
        XAR3 = #_piuContext ; |269| 
        dbl(*SP(#6)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 270,column 26,is_stmt
;----------------------------------------------------------------------
; 270 | tbool                  patternPresent = TRUE;                          
; 271 | tuint                 pattern1, pattern2,pattern3;                     
; 272 | tint                  i, sample;                                       
;----------------------------------------------------------------------
        *SP(#8) = #1 ; |270| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 274,column 3,is_stmt
;----------------------------------------------------------------------
; 274 | if (pcmPattern->type == piu_PCM_PATTERN_E1) {                          
;----------------------------------------------------------------------
        TC1 = (*AR3 == #2) ; |274| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 276,column 5,is_stmt
;----------------------------------------------------------------------
; 276 | pattern1 = 0x54; pattern2 = 0xD4; pattern3 = 0xD5;                     
;----------------------------------------------------------------------
        if (TC1) execute (D_Unit) ||
           *SP(#9) = #84 ; |276| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 276,column 22,is_stmt
        if (TC1) execute (D_Unit) ||
           *SP(#10) = #212 ; |276| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 276,column 39,is_stmt
        if (TC1) execute (D_Unit) ||
           *SP(#11) = #213 ; |276| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 277,column 3,is_stmt
;----------------------------------------------------------------------
; 278 | else {                                                                 
;----------------------------------------------------------------------
        if (TC1) goto $C$L19 ; |277| 
                                        ; branchcc occurs ; |277| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 279,column 5,is_stmt
;----------------------------------------------------------------------
; 279 | if (pcmPattern->type == piu_PCM_PATTERN_CUSTOM){                       
;----------------------------------------------------------------------
        AR1 = *AR3 ; |279| 
        if (AR1 != #0) goto $C$L13 ; |279| 
                                        ; branchcc occurs ; |279| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 281,column 7,is_stmt
;----------------------------------------------------------------------
; 281 | pattern1 = pattern2 = pattern3 = pcmPattern->custom;                   
;----------------------------------------------------------------------
        AR1 = *AR3(short(#1)) ; |281| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 282,column 5,is_stmt
        goto $C$L14 ; |282| 
                                        ; branch occurs ; |282| 
$C$L13:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 283,column 10,is_stmt
;----------------------------------------------------------------------
; 283 | else if (pcmPattern->type == piu_PCM_PATTERN_T1) {                     
;----------------------------------------------------------------------
        TC1 = (*AR3 == #1) ; |283| 
        if (!TC1) goto $C$L15 ; |283| 
                                        ; branchcc occurs ; |283| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 285,column 7,is_stmt
;----------------------------------------------------------------------
; 285 | pattern1 = pattern2 = pattern3 = 0x7f;                                 
;----------------------------------------------------------------------
        AR1 = #127 ; |285| 
$C$L14:    
        *SP(#11) = AR1 ; |285| 
        *SP(#10) = AR1 ; |285| 
        *SP(#9) = AR1 ; |285| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 286,column 5,is_stmt
        goto $C$L16 ; |286| 
                                        ; branch occurs ; |286| 
$C$L15:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 287,column 10,is_stmt
;----------------------------------------------------------------------
; 287 | else patternPresent = FALSE;                                           
;----------------------------------------------------------------------
        *SP(#8) = #0 ; |287| 
$C$L16:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 288,column 10,is_stmt
;----------------------------------------------------------------------
; 288 | for (i = 0; i < inst->segment_size; i++) {                             
;----------------------------------------------------------------------
        *SP(#12) = #0 ; |288| 
        XAR3 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 288,column 17,is_stmt
        AR2 = *SP(#12) ; |288| 
        AR1 = *AR3(short(#7)) ; |288| 
        TC1 = (AR2 >= AR1) ; |288| 
        if (TC1) goto $C$L19 ; |288| 
                                        ; branchcc occurs ; |288| 
$C$L17:    
$C$DW$L$_piu_pcm_pattern_detect$9$B:
        T0 = AR2
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 289,column 7,is_stmt
;----------------------------------------------------------------------
; 289 | sample = pcm_in[i] & 0xFF;                                             
;----------------------------------------------------------------------
        AR1 = *AR3(T0) ; |289| 
        AC0 = AR1 & #0x00ff ; |289| 
        *SP(#13) = AC0 ; |289| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 290,column 7,is_stmt
;----------------------------------------------------------------------
; 290 | if ((sample != pattern1) && (sample != pattern2) && (sample != pattern3
;     | ))                                                                     
;----------------------------------------------------------------------
        AR2 = *SP(#13) ; |290| 
        AR1 = *SP(#9) ; |290| 
        TC1 = uns(AR2 == AR1) ; |290| 
        if (TC1) goto $C$L18 ; |290| 
                                        ; branchcc occurs ; |290| 
$C$DW$L$_piu_pcm_pattern_detect$9$E:
$C$DW$L$_piu_pcm_pattern_detect$10$B:
        AR1 = *SP(#10) ; |290| 
        TC1 = uns(AR2 == AR1) ; |290| 
        if (TC1) goto $C$L18 ; |290| 
                                        ; branchcc occurs ; |290| 
$C$DW$L$_piu_pcm_pattern_detect$10$E:
$C$DW$L$_piu_pcm_pattern_detect$11$B:
        AR1 = *SP(#11) ; |290| 
        TC1 = uns(AR2 == AR1) ; |290| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 291,column 9,is_stmt
;----------------------------------------------------------------------
; 291 | patternPresent = FALSE;                                                
;----------------------------------------------------------------------
        if (!TC1) execute (D_Unit) ||
           *SP(#8) = #0 ; |291| 
$C$DW$L$_piu_pcm_pattern_detect$11$E:
$C$L18:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 290,column 7,is_stmt
$C$DW$L$_piu_pcm_pattern_detect$12$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 288,column 41,is_stmt
        *SP(#12) = *SP(#12) + #1 ; |288| 
        XAR3 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 288,column 17,is_stmt
        AR2 = *SP(#12) ; |288| 
        AR1 = *AR3(short(#7)) ; |288| 
        TC1 = (AR2 < AR1) ; |288| 
        if (TC1) goto $C$L17 ; |288| 
                                        ; branchcc occurs ; |288| 
$C$DW$L$_piu_pcm_pattern_detect$12$E:
$C$L19:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 294,column 3,is_stmt
;----------------------------------------------------------------------
; 294 | if (patternPresent) {                                                  
;----------------------------------------------------------------------
        AR1 = *SP(#8) ; |294| 
        if (AR1 == #0) goto $C$L20 ; |294| 
                                        ; branchcc occurs ; |294| 
        XAR2 = dbl(*SP(#0))
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 295,column 5,is_stmt
;----------------------------------------------------------------------
; 295 | pcmPattern->cnt -= inst->segment_size;                                 
;----------------------------------------------------------------------
        AC0 = *AR2(short(#7)) ; |295| 
        AC0 = dbl(*AR3(short(#2))) - AC0 ; |295| 
        dbl(*AR3(short(#2))) = AC0 ; |295| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 296,column 5,is_stmt
;----------------------------------------------------------------------
; 296 | if (pcmPattern->cnt <= 0)                                              
;----------------------------------------------------------------------
        AC0 = dbl(*AR3(short(#2))) ; |296| 
        if (AC0 > #0) goto $C$L21 ; |296| 
                                        ; branchcc occurs ; |296| 
        XAR3 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 298,column 7,is_stmt
;----------------------------------------------------------------------
; 298 | inst->mode_bitfield &= (~piu_CTRL_BIT_PATTERN_DETECT);                 
;----------------------------------------------------------------------
        *AR3(short(#2)) = *AR3(short(#2)) & #0xffbf ; |298| 
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 301,column 7,is_stmt
;----------------------------------------------------------------------
; 301 | (*context->reportOutFcn) (inst->reportOutTargetInst, piu_PATTERN_DETECT
;     | ED);                                                                   
;----------------------------------------------------------------------
        AC0 = dbl(*AR3(short(#4))) ; |301| 
        XAR3 = dbl(*SP(#0))
        T0 = #1
        XAR0 = dbl(*AR3(#20))
$C$DW$118	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$118, DW_AT_low_pc(0x00)
	.dwattr $C$DW$118, DW_AT_TI_call
	.dwattr $C$DW$118, DW_AT_TI_indirect
        call AC0  ; |301| 
                                        ; call occurs [AC0] ; |301| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 303,column 3,is_stmt
;----------------------------------------------------------------------
; 304 | else /* pattern is not present consecutively, re-initialize cntr */    
;----------------------------------------------------------------------
        goto $C$L21 ; |303| 
                                        ; branch occurs ; |303| 
$C$L20:    
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 305,column 5,is_stmt
;----------------------------------------------------------------------
; 305 | pcmPattern->cnt = (pcmPattern->initCnt*8);                             
;----------------------------------------------------------------------
        AC0 = *AR3(short(#4)) << #3 ; |305| 

        AC0 = @AC0_L ; |305| 
||      mmap()

        dbl(*AR3(short(#2))) = AC0 ; |305| 
$C$L21:    
        SP = SP + #15
	.dwcfi	cfa_offset, 1
$C$DW$119	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$119, DW_AT_low_pc(0x00)
	.dwattr $C$DW$119, DW_AT_TI_return
        return
                                        ; return occurs

$C$DW$120	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$120, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\ecu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\piutxrx.asm:$C$L17:1:1373047936")
	.dwattr $C$DW$120, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c")
	.dwattr $C$DW$120, DW_AT_TI_begin_line(0x120)
	.dwattr $C$DW$120, DW_AT_TI_end_line(0x124)
$C$DW$121	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$121, DW_AT_low_pc($C$DW$L$_piu_pcm_pattern_detect$9$B)
	.dwattr $C$DW$121, DW_AT_high_pc($C$DW$L$_piu_pcm_pattern_detect$9$E)
$C$DW$122	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$122, DW_AT_low_pc($C$DW$L$_piu_pcm_pattern_detect$10$B)
	.dwattr $C$DW$122, DW_AT_high_pc($C$DW$L$_piu_pcm_pattern_detect$10$E)
$C$DW$123	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$123, DW_AT_low_pc($C$DW$L$_piu_pcm_pattern_detect$11$B)
	.dwattr $C$DW$123, DW_AT_high_pc($C$DW$L$_piu_pcm_pattern_detect$11$E)
$C$DW$124	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$124, DW_AT_low_pc($C$DW$L$_piu_pcm_pattern_detect$12$B)
	.dwattr $C$DW$124, DW_AT_high_pc($C$DW$L$_piu_pcm_pattern_detect$12$E)
	.dwendtag $C$DW$120

	.dwattr $C$DW$105, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c")
	.dwattr $C$DW$105, DW_AT_TI_end_line(0x132)
	.dwattr $C$DW$105, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$105

	.sect	".text"
	.global	_piu_pcm_pattern_generate

$C$DW$125	.dwtag  DW_TAG_subprogram, DW_AT_name("piu_pcm_pattern_generate")
	.dwattr $C$DW$125, DW_AT_low_pc(_piu_pcm_pattern_generate)
	.dwattr $C$DW$125, DW_AT_high_pc(0x00)
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_piu_pcm_pattern_generate")
	.dwattr $C$DW$125, DW_AT_external
	.dwattr $C$DW$125, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c")
	.dwattr $C$DW$125, DW_AT_TI_begin_line(0x13e)
	.dwattr $C$DW$125, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$125, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 319,column 1,is_stmt,address _piu_pcm_pattern_generate

	.dwfde $C$DW$CIE, _piu_pcm_pattern_generate
$C$DW$126	.dwtag  DW_TAG_formal_parameter, DW_AT_name("inst")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$126, DW_AT_location[DW_OP_reg17]
;----------------------------------------------------------------------
; 318 | void piu_pcm_pattern_generate (piuInst_t *inst)                        
; 320 | int i;                                                                 
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: piu_pcm_pattern_generate                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,*
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_piu_pcm_pattern_generate:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-3
	.dwcfi	cfa_offset, 4
$C$DW$127	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$127, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$128	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$128, DW_AT_location[DW_OP_bregx 0x24 2]
        dbl(*SP(#0)) = XAR0
        XAR3 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 322,column 3,is_stmt
;----------------------------------------------------------------------
; 322 | if ((inst->pcm_format == piu_COMP_ULAW)||(inst->pcm_format == piu_COMP_
;     | ALAW)){                                                                
;----------------------------------------------------------------------
        TC1 = (*AR3(short(#6)) == #1) ; |322| 
        if (TC1) goto $C$L22 ; |322| 
                                        ; branchcc occurs ; |322| 
        AR1 = *AR3(short(#6)) ; |322| 
        if (AR1 != #0) goto $C$L24 ; |322| 
                                        ; branchcc occurs ; |322| 
$C$L22:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 324,column 9,is_stmt
;----------------------------------------------------------------------
; 324 | for(i=0; i < inst->segment_size; i+=2) {                               
;----------------------------------------------------------------------
        *SP(#2) = #0 ; |324| 
        XAR3 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 324,column 14,is_stmt
        AR2 = *SP(#2) ; |324| 
        AR1 = *AR3(short(#7)) ; |324| 
        TC1 = (AR2 >= AR1) ; |324| 
        if (TC1) goto $C$L25 ; |324| 
                                        ; branchcc occurs ; |324| 
$C$L23:    
$C$DW$L$_piu_pcm_pattern_generate$4$B:
        T0 = AR2
        XAR2 = dbl(*SP(#0))
        XAR3 = dbl(*AR3(#36))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 325,column 7,is_stmt
;----------------------------------------------------------------------
; 325 | inst->receive_in_buf.in_ptr[i]  =(tint)((inst->generatePattern>>8)&0x00
;     | ff);                                                                   
;----------------------------------------------------------------------
        AR1 = uns(high_byte(*AR2(#34))) ; |325| 
        AC0 = AR1 & #0x00ff ; |325| 
        *AR3(T0) = AC0 ; |325| 
        XAR3 = dbl(*SP(#0))
        XAR2 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 326,column 7,is_stmt
;----------------------------------------------------------------------
; 326 | inst->receive_in_buf.in_ptr[i+1]=(tint)(inst->generatePattern & 0x00ff)
;     | ;                                                                      
;----------------------------------------------------------------------
        T0 = *SP(#2) ; |326| 
        T0 = T0 + #1 ; |326| 
        XAR3 = dbl(*AR3(#36))
        AR1 = uns(low_byte(*AR2(#34))) ; |326| 
        *AR3(T0) = AR1 ; |326| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 324,column 38,is_stmt
        *SP(#2) = *SP(#2) + #2 ; |324| 
        XAR3 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 324,column 14,is_stmt
        AR2 = *SP(#2) ; |324| 
        AR1 = *AR3(short(#7)) ; |324| 
        TC1 = (AR2 < AR1) ; |324| 
        if (TC1) goto $C$L23 ; |324| 
                                        ; branchcc occurs ; |324| 
$C$DW$L$_piu_pcm_pattern_generate$4$E:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 328,column 3,is_stmt
;----------------------------------------------------------------------
; 329 | else {                                                                 
;----------------------------------------------------------------------
        goto $C$L25 ; |328| 
                                        ; branch occurs ; |328| 
$C$L24:    
        XAR0 = dbl(*AR3(#36))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 331,column 5,is_stmt
;----------------------------------------------------------------------
; 331 | utlLsMemSet (inst->receive_in_buf.in_ptr, (tint) (inst->generatePattern
;     | ),                                                                     
; 332 |              inst->segment_size );                                     
;----------------------------------------------------------------------
        T0 = *AR3(#34) ; |331| 
        T1 = *AR3(short(#7)) ; |331| 
$C$DW$129	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$129, DW_AT_low_pc(0x00)
	.dwattr $C$DW$129, DW_AT_name("_utlLsMemSet")
	.dwattr $C$DW$129, DW_AT_TI_call
        call #_utlLsMemSet ; |331| 
                                        ; call occurs [#_utlLsMemSet] ; |331| 
$C$L25:    
        XAR1 = dbl(*SP(#0))
        XAR0 = dbl(*SP(#0))

        mar(AR1 + #36) ; |334| 
||      T0 = #0

	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 334,column 3,is_stmt
;----------------------------------------------------------------------
; 334 | piu_update_buf_ptr (inst, 0, &inst->receive_in_buf.in_ptr);            
;----------------------------------------------------------------------
$C$DW$130	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$130, DW_AT_low_pc(0x00)
	.dwattr $C$DW$130, DW_AT_name("_piu_update_buf_ptr")
	.dwattr $C$DW$130, DW_AT_TI_call
        call #_piu_update_buf_ptr ; |334| 
                                        ; call occurs [#_piu_update_buf_ptr] ; |334| 
        SP = SP + #3
	.dwcfi	cfa_offset, 1
$C$DW$131	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$131, DW_AT_low_pc(0x00)
	.dwattr $C$DW$131, DW_AT_TI_return
        return
                                        ; return occurs

$C$DW$132	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$132, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\ecu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\piutxrx.asm:$C$L23:1:1373047936")
	.dwattr $C$DW$132, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c")
	.dwattr $C$DW$132, DW_AT_TI_begin_line(0x144)
	.dwattr $C$DW$132, DW_AT_TI_end_line(0x147)
$C$DW$133	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$133, DW_AT_low_pc($C$DW$L$_piu_pcm_pattern_generate$4$B)
	.dwattr $C$DW$133, DW_AT_high_pc($C$DW$L$_piu_pcm_pattern_generate$4$E)
	.dwendtag $C$DW$132

	.dwattr $C$DW$125, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c")
	.dwattr $C$DW$125, DW_AT_TI_end_line(0x14f)
	.dwattr $C$DW$125, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$125

	.sect	".text"
	.global	_piuReceiveIn

$C$DW$134	.dwtag  DW_TAG_subprogram, DW_AT_name("piuReceiveIn")
	.dwattr $C$DW$134, DW_AT_low_pc(_piuReceiveIn)
	.dwattr $C$DW$134, DW_AT_high_pc(0x00)
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("_piuReceiveIn")
	.dwattr $C$DW$134, DW_AT_external
	.dwattr $C$DW$134, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c")
	.dwattr $C$DW$134, DW_AT_TI_begin_line(0x15c)
	.dwattr $C$DW$134, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$134, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 349,column 1,is_stmt,address _piuReceiveIn

	.dwfde $C$DW$CIE, _piuReceiveIn
$C$DW$135	.dwtag  DW_TAG_formal_parameter, DW_AT_name("piuInst")
	.dwattr $C$DW$135, DW_AT_TI_symbol_name("_piuInst")
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$135, DW_AT_location[DW_OP_reg17]
$C$DW$136	.dwtag  DW_TAG_formal_parameter, DW_AT_name("speech_samples")
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("_speech_samples")
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$136, DW_AT_location[DW_OP_reg19]
;----------------------------------------------------------------------
; 348 | void piuReceiveIn ( void *piuInst, void *speech_samples )              
; 350 | piuInst_t *inst          = (piuInst_t *) piuInst;                      
; 351 | linSample *voice_samples = (linSample *) speech_samples;               
; 352 | tuint segment_rxcount;                                                 
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: piuReceiveIn                                                 *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,CARRY,TC1, *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (9 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_piuReceiveIn:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-9
	.dwcfi	cfa_offset, 10
$C$DW$137	.dwtag  DW_TAG_variable, DW_AT_name("piuInst")
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("_piuInst")
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$137, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$138	.dwtag  DW_TAG_variable, DW_AT_name("speech_samples")
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("_speech_samples")
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$138, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$139	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$139, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$140	.dwtag  DW_TAG_variable, DW_AT_name("voice_samples")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_voice_samples")
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$140, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$141	.dwtag  DW_TAG_variable, DW_AT_name("segment_rxcount")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("_segment_rxcount")
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$141, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$142	.dwtag  DW_TAG_label, DW_AT_name("EXIT"), DW_AT_low_pc($C$L27)
	.dwattr $C$DW$142, DW_AT_TI_symbol_name("_EXIT")
        dbl(*SP(#2)) = XAR1
        dbl(*SP(#0)) = XAR0
        XAR3 = dbl(*SP(#0))
        dbl(*SP(#4)) = XAR3
        XAR3 = dbl(*SP(#2))
        dbl(*SP(#6)) = XAR3
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 354,column 3,is_stmt
;----------------------------------------------------------------------
; 354 | if (inst->state != piu_OPEN)                                           
; 355 |   return;                                                              
;----------------------------------------------------------------------
        TC1 = (*AR3(short(#1)) == #1) ; |354| 
        if (!TC1) goto $C$L28 ; |354| 
                                        ; branchcc occurs ; |354| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 357,column 3,is_stmt
;----------------------------------------------------------------------
; 357 | if(inst->mode_bitfield & (piu_CTRL_BIT_DO_PCM_LOOPBACK|                
; 358 |    piu_CTRL_BIT_PATTERN_GENERATE))                                     
; 359 |   return;                                                              
; 361 | PIU_BEGIN_CRITICAL_SECTION();                                          
;----------------------------------------------------------------------
        TC1 = *AR3(short(#2)) & #130 ; |357| 
        if (TC1) goto $C$L28 ; |357| 
                                        ; branchcc occurs ; |357| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 364,column 3,is_stmt
;----------------------------------------------------------------------
; 364 | segment_rxcount =                                                      
; 365 |   (inst->mode_bitfield & piu_CTRL_BIT_TRIPLE_RX_BUF ? piu_NUMSEGM_RX3 :
;     |  piu_NUMSEGM_RX2);                                                     
;----------------------------------------------------------------------
        TC1 = bit(*AR3(short(#2)),#9) ; |364| 
        AR1 = #3
        if (!TC1) execute (D_Unit) ||
           AR1 = #2
        *SP(#8) = AR1 ; |364| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 368,column 3,is_stmt
;----------------------------------------------------------------------
; 368 | if (inst->receive_in_buf.segment_count >= segment_rxcount - 1)         
;----------------------------------------------------------------------
        AR1 = AR1 - #1 ; |368| 
        AR2 = *AR3(#46) ; |368| 
        TC1 = uns(AR2 < AR1) ; |368| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 370,column 5,is_stmt
;----------------------------------------------------------------------
; 370 | inst->rx_overflow_cnt++;                                               
;----------------------------------------------------------------------
        if (!TC1) execute (AD_Unit)
           *AR3(#10) = *AR3(#10) + #1 ; |370| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 371,column 5,is_stmt
;----------------------------------------------------------------------
; 371 | goto EXIT;                                                             
;----------------------------------------------------------------------
        if (!TC1) goto $C$L28 ; |371| 
                                        ; branchcc occurs ; |371| 
        XAR3 = dbl(*SP(#4))
        XAR1 = dbl(*SP(#4))
        XAR0 = dbl(*SP(#6))

        mar(AR1 + #28) ; |374| 
||      T0 = *AR3(short(#7)) ; |374| 

	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 374,column 3,is_stmt
;----------------------------------------------------------------------
; 374 | piu_frame_energy (inst->segment_size, voice_samples, &inst->energy_DCle
;     | vel.rxEnergy);                                                         
;----------------------------------------------------------------------
$C$DW$143	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$143, DW_AT_low_pc(0x00)
	.dwattr $C$DW$143, DW_AT_name("_piu_frame_energy")
	.dwattr $C$DW$143, DW_AT_TI_call
        call #_piu_frame_energy ; |374| 
                                        ; call occurs [#_piu_frame_energy] ; |374| 
        XAR1 = dbl(*SP(#4))
        XAR3 = dbl(*SP(#4))
        XAR0 = dbl(*SP(#6))

        T0 = *AR3(short(#7)) ; |375| 
||      mar(AR1 + #32) ; |375| 

	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 375,column 3,is_stmt
;----------------------------------------------------------------------
; 375 | piu_frame_DClevel(inst->segment_size, voice_samples, &inst->energy_DCle
;     | vel.rxDClevel);                                                        
;----------------------------------------------------------------------
$C$DW$144	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$144, DW_AT_low_pc(0x00)
	.dwattr $C$DW$144, DW_AT_name("_piu_frame_DClevel")
	.dwattr $C$DW$144, DW_AT_TI_call
        call #_piu_frame_DClevel ; |375| 
                                        ; call occurs [#_piu_frame_DClevel] ; |375| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 376,column 3,is_stmt
;----------------------------------------------------------------------
; 376 | if (inst->mode_bitfield & piu_CTRL_BIT_BID_SILENCE_DET) {              
;----------------------------------------------------------------------
        TC1 = bit(*AR3(short(#2)),#5) ; |376| 
        if (!TC1) goto $C$L26 ; |376| 
                                        ; branchcc occurs ; |376| 
        XAR1 = dbl(*SP(#4))
        XAR0 = dbl(*SP(#6))

        mar(AR1 + #50) ; |377| 
||      T0 = *AR3(short(#7)) ; |377| 

	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 377,column 5,is_stmt
;----------------------------------------------------------------------
; 377 | piu_frame_energy (inst->segment_size, voice_samples,                   
; 378 |                   &inst->bidSilence.rxSilDetEnergy);                   
;----------------------------------------------------------------------
$C$DW$145	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$145, DW_AT_low_pc(0x00)
	.dwattr $C$DW$145, DW_AT_name("_piu_frame_energy")
	.dwattr $C$DW$145, DW_AT_TI_call
        call #_piu_frame_energy ; |377| 
                                        ; call occurs [#_piu_frame_energy] ; |377| 
$C$L26:    
        XAR3 = dbl(*SP(#4))
        XAR0 = dbl(*SP(#4))
        XAR1 = dbl(*SP(#6))
        XAR2 = dbl(*AR3(#36))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 381,column 3,is_stmt
;----------------------------------------------------------------------
; 381 | piu_pcm_compressing(inst, voice_samples, inst->receive_in_buf.in_ptr,  
; 382 |                     inst->segment_size);                               
;----------------------------------------------------------------------
        T0 = *AR3(short(#7)) ; |381| 
$C$DW$146	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$146, DW_AT_low_pc(0x00)
	.dwattr $C$DW$146, DW_AT_name("_piu_pcm_compressing")
	.dwattr $C$DW$146, DW_AT_TI_call
        call #_piu_pcm_compressing ; |381| 
                                        ; call occurs [#_piu_pcm_compressing] ; |381| 
        XAR1 = dbl(*SP(#4))
        XAR0 = dbl(*SP(#4))

        mar(AR1 + #36) ; |385| 
||      T0 = #0

	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 385,column 3,is_stmt
;----------------------------------------------------------------------
; 385 | piu_update_buf_ptr (inst, 0, &inst->receive_in_buf.in_ptr);            
; 387 | EXIT:                                                                  
; 388 | PIU_END_CRITICAL_SECTION();                                            
;----------------------------------------------------------------------
$C$DW$147	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$147, DW_AT_low_pc(0x00)
	.dwattr $C$DW$147, DW_AT_name("_piu_update_buf_ptr")
	.dwattr $C$DW$147, DW_AT_TI_call
        call #_piu_update_buf_ptr ; |385| 
                                        ; call occurs [#_piu_update_buf_ptr] ; |385| 
$C$L27:    
$C$L28:    
        SP = SP + #9
	.dwcfi	cfa_offset, 1
$C$DW$148	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$148, DW_AT_low_pc(0x00)
	.dwattr $C$DW$148, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$134, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c")
	.dwattr $C$DW$134, DW_AT_TI_end_line(0x185)
	.dwattr $C$DW$134, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$134

	.sect	".text"
	.global	_piuTxRxProc

$C$DW$149	.dwtag  DW_TAG_subprogram, DW_AT_name("piuTxRxProc")
	.dwattr $C$DW$149, DW_AT_low_pc(_piuTxRxProc)
	.dwattr $C$DW$149, DW_AT_high_pc(0x00)
	.dwattr $C$DW$149, DW_AT_TI_symbol_name("_piuTxRxProc")
	.dwattr $C$DW$149, DW_AT_external
	.dwattr $C$DW$149, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c")
	.dwattr $C$DW$149, DW_AT_TI_begin_line(0x193)
	.dwattr $C$DW$149, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$149, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 404,column 1,is_stmt,address _piuTxRxProc

	.dwfde $C$DW$CIE, _piuTxRxProc
$C$DW$150	.dwtag  DW_TAG_formal_parameter, DW_AT_name("piuInst")
	.dwattr $C$DW$150, DW_AT_TI_symbol_name("_piuInst")
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$150, DW_AT_location[DW_OP_reg17]
$C$DW$151	.dwtag  DW_TAG_formal_parameter, DW_AT_name("tx_ptr")
	.dwattr $C$DW$151, DW_AT_TI_symbol_name("_tx_ptr")
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$151, DW_AT_location[DW_OP_reg19]
$C$DW$152	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rx_ptr")
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("_rx_ptr")
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$152, DW_AT_location[DW_OP_reg21]
;----------------------------------------------------------------------
; 403 | void piuTxRxProc (void *piuInst, linSample *tx_ptr, linSample *rx_ptr) 
; 405 | piuInst_t    *inst    = (piuInst_t *) piuInst;                         
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: piuTxRxProc                                                  *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,*
;*                        XAR3,SP,TC1,M40,SATA,SATD,RDM,FRCT,SMUL              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 16 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (15 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_piuTxRxProc:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-15
	.dwcfi	cfa_offset, 16
$C$DW$153	.dwtag  DW_TAG_variable, DW_AT_name("piuInst")
	.dwattr $C$DW$153, DW_AT_TI_symbol_name("_piuInst")
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$153, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$154	.dwtag  DW_TAG_variable, DW_AT_name("tx_ptr")
	.dwattr $C$DW$154, DW_AT_TI_symbol_name("_tx_ptr")
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$154, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$155	.dwtag  DW_TAG_variable, DW_AT_name("rx_ptr")
	.dwattr $C$DW$155, DW_AT_TI_symbol_name("_rx_ptr")
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$155, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$156	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$156, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$156, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$157	.dwtag  DW_TAG_variable, DW_AT_name("context")
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("_context")
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$157, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$158	.dwtag  DW_TAG_variable, DW_AT_name("send_out_ptr")
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("_send_out_ptr")
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$158, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$159	.dwtag  DW_TAG_variable, DW_AT_name("linear_loopback_ptr")
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("_linear_loopback_ptr")
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$159, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$160	.dwtag  DW_TAG_variable, DW_AT_name("ratio")
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("_ratio")
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$160, DW_AT_location[DW_OP_bregx 0x24 14]
        dbl(*SP(#4)) = XAR2
        dbl(*SP(#2)) = XAR1
        dbl(*SP(#0)) = XAR0
        XAR3 = dbl(*SP(#0))
        dbl(*SP(#6)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 406,column 17,is_stmt
;----------------------------------------------------------------------
; 406 | piuContext_t *context = &piuContext;                                   
; 407 | tint         *send_out_ptr, *linear_loopback_ptr;                      
;----------------------------------------------------------------------
        XAR3 = #_piuContext ; |406| 
        dbl(*SP(#8)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 408,column 9,is_stmt
;----------------------------------------------------------------------
; 408 | tuint ratio = sizeof(linSample)/sizeof(tword);                         
; 410 | #if !PIUDLCOMP_ENABLE                                                  
; 411 | tint         *receive_out_ptr;                                         
; 412 | #endif                                                                 
;----------------------------------------------------------------------
        *SP(#14) = #1 ; |408| 
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 414,column 3,is_stmt
;----------------------------------------------------------------------
; 414 | if (inst->state != piu_OPEN) return ;                                  
; 416 | send_out_ptr    = (tint *)tx_ptr;                                      
; 417 | #if !PIUDLCOMP_ENABLE                                                  
; 418 | receive_out_ptr = (tint *)rx_ptr;                                      
; 419 | #endif                                                                 
;----------------------------------------------------------------------
        TC1 = (*AR3(short(#1)) == #1) ; |414| 
        if (!TC1) goto $C$L41 ; |414| 
                                        ; branchcc occurs ; |414| 
        XAR3 = dbl(*SP(#2))
        dbl(*SP(#10)) = XAR3
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 422,column 3,is_stmt
;----------------------------------------------------------------------
; 422 | if(inst->mode_bitfield & piu_CTRL_BIT_PATTERN_GENERATE)                
;----------------------------------------------------------------------
        TC1 = bit(*AR3(short(#2)),#7) ; |422| 
        if (!TC1) goto $C$L29 ; |422| 
                                        ; branchcc occurs ; |422| 
        XAR0 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 423,column 5,is_stmt
;----------------------------------------------------------------------
; 423 | piu_pcm_pattern_generate (inst);                                       
;----------------------------------------------------------------------
$C$DW$161	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$161, DW_AT_low_pc(0x00)
	.dwattr $C$DW$161, DW_AT_name("_piu_pcm_pattern_generate")
	.dwattr $C$DW$161, DW_AT_TI_call
        call #_piu_pcm_pattern_generate ; |423| 
                                        ; call occurs [#_piu_pcm_pattern_generate] ; |423| 
$C$L29:    
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 426,column 3,is_stmt
;----------------------------------------------------------------------
; 426 | if (inst->mode_bitfield & piu_CTRL_BIT_DO_PCM_LOOPBACK) {              
;----------------------------------------------------------------------
        TC1 = bit(*AR3(short(#2)),#1) ; |426| 
        if (!TC1) goto $C$L30 ; |426| 
                                        ; branchcc occurs ; |426| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 428,column 5,is_stmt
;----------------------------------------------------------------------
; 428 | utlCopy((tword *)send_out_ptr, (tword *)inst->receive_in_buf.in_ptr, ra
;     | tio*inst->segment_size);                                               
;----------------------------------------------------------------------
        T1 = *AR3(short(#7)) ; |428| 
        XAR1 = dbl(*AR3(#36))
        XAR0 = dbl(*SP(#10))
        AC0 = T1 * *SP(#14) ; |428| 
        T0 = AC0  ; |428| 
$C$DW$162	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$162, DW_AT_low_pc(0x00)
	.dwattr $C$DW$162, DW_AT_name("_utlCopy")
	.dwattr $C$DW$162, DW_AT_TI_call
        call #_utlCopy ; |428| 
                                        ; call occurs [#_utlCopy] ; |428| 
        XAR1 = dbl(*SP(#6))
        XAR0 = dbl(*SP(#6))

        mar(AR1 + #36) ; |429| 
||      T0 = #0

	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 429,column 5,is_stmt
;----------------------------------------------------------------------
; 429 | piu_update_buf_ptr (inst, 0, &inst->receive_in_buf.in_ptr);            
;----------------------------------------------------------------------
$C$DW$163	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$163, DW_AT_low_pc(0x00)
	.dwattr $C$DW$163, DW_AT_name("_piu_update_buf_ptr")
	.dwattr $C$DW$163, DW_AT_TI_call
        call #_piu_update_buf_ptr ; |429| 
                                        ; call occurs [#_piu_update_buf_ptr] ; |429| 
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 430,column 5,is_stmt
;----------------------------------------------------------------------
; 430 | if (inst->mode_bitfield & piu_CTRL_BIT_LOOPBACK_NOPASS) {              
; 431 |   memset (send_out_ptr, inst->silence_pattern, inst->segment_size);    
;----------------------------------------------------------------------
        TC1 = bit(*AR3(short(#2)),#4) ; |430| 
        if (!TC1) goto $C$L34 ; |430| 
                                        ; branchcc occurs ; |430| 
        XAR0 = dbl(*SP(#10))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 433,column 3,is_stmt
        goto $C$L33 ; |433| 
                                        ; branch occurs ; |433| 
$C$L30:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 434,column 8,is_stmt
;----------------------------------------------------------------------
; 434 | else if (inst->mode_bitfield & piu_CTRL_BIT_DO_LIN_LOOPBACK) {         
;----------------------------------------------------------------------
        TC1 = bit(*AR3(short(#2)),#2) ; |434| 
        if (!TC1) goto $C$L34 ; |434| 
                                        ; branchcc occurs ; |434| 
        XAR3 = dbl(*AR3(#40))
        AC0 = XAR3
        XAR3 = dbl(*SP(#6))
        XAR3 = dbl(*AR3(#36))
        AC1 = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 436,column 5,is_stmt
;----------------------------------------------------------------------
; 436 | if (inst->receive_in_buf.in_ptr == inst->receive_in_buf.start_ptr)     
;----------------------------------------------------------------------
        TC1 = uns(AC1 != AC0) ; |436| 
        if (TC1) goto $C$L31 ; |436| 
                                        ; branchcc occurs ; |436| 
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 437,column 7,is_stmt
;----------------------------------------------------------------------
; 437 | linear_loopback_ptr = inst->receive_in_buf.end_ptr - inst->segment_size
;     | ;                                                                      
; 438 | else                                                                   
;----------------------------------------------------------------------
        AR1 = *AR3(short(#7)) ; |437| 
        XAR3 = dbl(*AR3(#42))
        goto $C$L32 ; |437| 
                                        ; branch occurs ; |437| 
$C$L31:    
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 439,column 7,is_stmt
;----------------------------------------------------------------------
; 439 | linear_loopback_ptr = inst->receive_in_buf.in_ptr - inst->segment_size;
;----------------------------------------------------------------------
        AR1 = *AR3(short(#7)) ; |439| 
        XAR3 = dbl(*AR3(#36))
$C$L32:    

        dbl(*SP(#12)) = XAR3
||      mar(AR3 - AR1) ; |439| 

        XAR3 = dbl(*SP(#6))
        XAR0 = dbl(*SP(#12))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 440,column 5,is_stmt
;----------------------------------------------------------------------
; 440 | utlCopy((tword *)linear_loopback_ptr, (tword *)send_out_ptr, ratio*inst
;     | ->segment_size);                                                       
;----------------------------------------------------------------------
        T1 = *AR3(short(#7)) ; |440| 
        XAR1 = dbl(*SP(#10))
        AC0 = T1 * *SP(#14) ; |440| 
        T0 = AC0  ; |440| 
$C$DW$164	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$164, DW_AT_low_pc(0x00)
	.dwattr $C$DW$164, DW_AT_name("_utlCopy")
	.dwattr $C$DW$164, DW_AT_TI_call
        call #_utlCopy ; |440| 
                                        ; call occurs [#_utlCopy] ; |440| 
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 441,column 5,is_stmt
;----------------------------------------------------------------------
; 441 | if (inst->mode_bitfield & piu_CTRL_BIT_LOOPBACK_NOPASS) {              
;----------------------------------------------------------------------
        TC1 = bit(*AR3(short(#2)),#4) ; |441| 
        if (!TC1) goto $C$L34 ; |441| 
                                        ; branchcc occurs ; |441| 
        XAR0 = dbl(*SP(#12))
$C$L33:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 442,column 7,is_stmt
;----------------------------------------------------------------------
; 442 | memset (linear_loopback_ptr, inst->silence_pattern, inst->segment_size)
;     | ;                                                                      
;----------------------------------------------------------------------
        T0 = *AR3(#62) ; |442| 
        T1 = *AR3(short(#7)) ; |442| 
$C$DW$165	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$165, DW_AT_low_pc(0x00)
	.dwattr $C$DW$165, DW_AT_name("_memset")
	.dwattr $C$DW$165, DW_AT_TI_call
        call #_memset ; |442| 
                                        ; call occurs [#_memset] ; |442| 
$C$L34:    
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 447,column 3,is_stmt
;----------------------------------------------------------------------
; 447 | if (inst->mode_bitfield&piu_CTRL_BIT_PATTERN_DETECT)                   
;----------------------------------------------------------------------
        TC1 = bit(*AR3(short(#2)),#6) ; |447| 
        if (!TC1) goto $C$L35 ; |447| 
                                        ; branchcc occurs ; |447| 
        XAR0 = dbl(*SP(#6))
        XAR1 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 448,column 5,is_stmt
;----------------------------------------------------------------------
; 448 | piu_pcm_pattern_detect (inst, tx_ptr);                                 
;----------------------------------------------------------------------
$C$DW$166	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$166, DW_AT_low_pc(0x00)
	.dwattr $C$DW$166, DW_AT_name("_piu_pcm_pattern_detect")
	.dwattr $C$DW$166, DW_AT_TI_call
        call #_piu_pcm_pattern_detect ; |448| 
                                        ; call occurs [#_piu_pcm_pattern_detect] ; |448| 
$C$L35:    
        XAR3 = dbl(*SP(#6))
        XAR0 = dbl(*SP(#6))
        XAR1 = dbl(*SP(#10))
        XAR2 = dbl(*SP(#10))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 450,column 3,is_stmt
;----------------------------------------------------------------------
; 450 | piu_pcm_companding(inst, send_out_ptr, send_out_ptr, inst->segment_size
;     | );                                                                     
; 451 | #if !PIUDLCOMP_ENABLE                                                  
; 452 | if (inst->mode_bitfield & piu_CTRL_BIT_USE_RECV_OUT_BUF){              
; 453 |     piu_pcm_companding(inst, receive_out_ptr, receive_out_ptr,         
; 454 |                        inst->segment_size);                            
; 456 | #endif                                                                 
;----------------------------------------------------------------------
        T0 = *AR3(short(#7)) ; |450| 
$C$DW$167	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$167, DW_AT_low_pc(0x00)
	.dwattr $C$DW$167, DW_AT_name("_piu_pcm_companding")
	.dwattr $C$DW$167, DW_AT_TI_call
        call #_piu_pcm_companding ; |450| 
                                        ; call occurs [#_piu_pcm_companding] ; |450| 
        XAR1 = dbl(*SP(#6))
        XAR3 = dbl(*SP(#6))
        XAR0 = dbl(*SP(#2))

        T0 = *AR3(short(#7)) ; |458| 
||      mar(AR1 + #26) ; |458| 

	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 458,column 3,is_stmt
;----------------------------------------------------------------------
; 458 | piu_frame_energy (inst->segment_size, tx_ptr, &inst->energy_DClevel.txE
;     | nergy);                                                                
;----------------------------------------------------------------------
$C$DW$168	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$168, DW_AT_low_pc(0x00)
	.dwattr $C$DW$168, DW_AT_name("_piu_frame_energy")
	.dwattr $C$DW$168, DW_AT_TI_call
        call #_piu_frame_energy ; |458| 
                                        ; call occurs [#_piu_frame_energy] ; |458| 
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 460,column 3,is_stmt
;----------------------------------------------------------------------
; 460 | if(!(inst->mode_bitfield & piu_CTRL_BIT_REMOVE_DC_COMP))               
;----------------------------------------------------------------------
        TC1 = bit(*AR3(short(#2)),#3) ; |460| 
        if (TC1) goto $C$L36 ; |460| 
                                        ; branchcc occurs ; |460| 
        XAR1 = dbl(*SP(#6))
        XAR0 = dbl(*SP(#2))

        mar(AR1 + #30) ; |463| 
||      T0 = *AR3(short(#7)) ; |463| 

	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 463,column 5,is_stmt
;----------------------------------------------------------------------
; 463 | piu_frame_DClevel(inst->segment_size, tx_ptr, &inst->energy_DClevel.txD
;     | Clevel);                                                               
;----------------------------------------------------------------------
$C$DW$169	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$169, DW_AT_low_pc(0x00)
	.dwattr $C$DW$169, DW_AT_name("_piu_frame_DClevel")
	.dwattr $C$DW$169, DW_AT_TI_call
        call #_piu_frame_DClevel ; |463| 
                                        ; call occurs [#_piu_frame_DClevel] ; |463| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 464,column 3,is_stmt
;----------------------------------------------------------------------
; 465 | else                                                                   
;----------------------------------------------------------------------
        goto $C$L39 ; |464| 
                                        ; branch occurs ; |464| 
$C$L36:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 467,column 5,is_stmt
;----------------------------------------------------------------------
; 467 | if (inst->mode_bitfield & piu_CTRL_BIT_DC_FILTR_SELECT_MODE1)          
; 470 |     piu_remove_dc_component(inst->segment_size, tx_ptr, &inst->energy_D
;     | Clevel.txDClevel,                                                      
; 471 |     piu_DC_FILTER_MODE1_MINUS_ALPHA_SHIFT);                            
;----------------------------------------------------------------------
        TC1 = bit(*AR3(short(#2)),#12) ; |467| 
        if (!TC1) goto $C$L37 ; |467| 
                                        ; branchcc occurs ; |467| 

        goto $C$L38 ; |472| 
||      T1 = #-6

	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 472,column 5,is_stmt
;----------------------------------------------------------------------
; 473 | else                                                                   
;----------------------------------------------------------------------
                                        ; branch occurs ; |472| 
$C$L37:    
        T1 = #-2
$C$L38:    
        XAR1 = dbl(*SP(#6))
        XAR0 = dbl(*SP(#2))

        mar(AR1 + #30) ; |476| 
||      T0 = *AR3(short(#7)) ; |476| 

	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 476,column 9,is_stmt
;----------------------------------------------------------------------
; 476 | piu_remove_dc_component(inst->segment_size, tx_ptr, &inst->energy_DClev
;     | el.txDClevel,                                                          
; 477 | piu_DC_FILTER_MODE2_MINUS_ALPHA_SHIFT);                                
;----------------------------------------------------------------------
$C$DW$170	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$170, DW_AT_low_pc(0x00)
	.dwattr $C$DW$170, DW_AT_name("_piu_remove_dc_component")
	.dwattr $C$DW$170, DW_AT_TI_call
        call #_piu_remove_dc_component ; |476| 
                                        ; call occurs [#_piu_remove_dc_component] ; |476| 
$C$L39:    
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 483,column 3,is_stmt
;----------------------------------------------------------------------
; 483 | if (inst->mode_bitfield&piu_CTRL_BIT_BID_SILENCE_DET) {                
;----------------------------------------------------------------------
        TC1 = bit(*AR3(short(#2)),#5) ; |483| 
        if (!TC1) goto $C$L40 ; |483| 
                                        ; branchcc occurs ; |483| 
        XAR1 = dbl(*SP(#6))
        XAR0 = dbl(*SP(#2))

        mar(AR1 + #48) ; |484| 
||      T0 = *AR3(short(#7)) ; |484| 

	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 484,column 5,is_stmt
;----------------------------------------------------------------------
; 484 | piu_frame_energy (inst->segment_size, tx_ptr, &inst->bidSilence.txSilDe
;     | tEnergy);                                                              
;----------------------------------------------------------------------
$C$DW$171	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$171, DW_AT_low_pc(0x00)
	.dwattr $C$DW$171, DW_AT_name("_piu_frame_energy")
	.dwattr $C$DW$171, DW_AT_TI_call
        call #_piu_frame_energy ; |484| 
                                        ; call occurs [#_piu_frame_energy] ; |484| 
        XAR0 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 485,column 5,is_stmt
;----------------------------------------------------------------------
; 485 | piu_bid_silence_detect (inst);                                         
; 488 | #if 0 /* remove the underrun report for now */                         
; 490 | if ((inst->mode_bitfield&piu_CTRL_BIT_RECV_IN_BUF_EMPTY)&&             
; 491 |   (inst->mode_bitfield&piu_CTRL_BIT_UNDERRUN_REPORT))                  
; 492 | (*context->reportOutFcn)(inst->reportOutTargetInst, piu_UNDERRUN);     
; 493 | #endif                                                                 
;----------------------------------------------------------------------
$C$DW$172	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$172, DW_AT_low_pc(0x00)
	.dwattr $C$DW$172, DW_AT_name("_piu_bid_silence_detect")
	.dwattr $C$DW$172, DW_AT_TI_call
        call #_piu_bid_silence_detect ; |485| 
                                        ; call occurs [#_piu_bid_silence_detect] ; |485| 
$C$L40:    
        XAR3 = dbl(*SP(#8))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c",line 496,column 3,is_stmt
;----------------------------------------------------------------------
; 496 | (*context->sendOutProcFcn)(inst->sendOutProcTargetInst, (void *)tx_ptr,
;     |  (void *) rx_ptr,                                                      
; 497 |                            piu_TX_TASK_ID);                            
;----------------------------------------------------------------------
        AC0 = dbl(*AR3(short(#6))) ; |496| 
        XAR3 = dbl(*SP(#6))
        XAR1 = dbl(*SP(#2))
        XAR2 = dbl(*SP(#4))
        T0 = #2
        XAR0 = dbl(*AR3(#22))
$C$DW$173	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$173, DW_AT_low_pc(0x00)
	.dwattr $C$DW$173, DW_AT_TI_call
	.dwattr $C$DW$173, DW_AT_TI_indirect
        call AC0  ; |496| 
                                        ; call occurs [AC0] ; |496| 
$C$L41:    
        SP = SP + #15
	.dwcfi	cfa_offset, 1
$C$DW$174	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$174, DW_AT_low_pc(0x00)
	.dwattr $C$DW$174, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$149, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piutxrx.c")
	.dwattr $C$DW$149, DW_AT_TI_end_line(0x1f2)
	.dwattr $C$DW$149, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$149

;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_memset
	.global	_utlLin2dBPower
	.global	_utlLsMemSet
	.global	_muaTblUlawCmpr
	.global	_muaTblAlawCmpr
	.global	_UAExpand
	.global	_piu_frame_energy
	.global	_piu_frame_DClevel
	.global	_piu_remove_dc_component
	.global	_piuContext

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x08)
$C$DW$175	.dwtag  DW_TAG_member
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$175, DW_AT_name("txEnergy")
	.dwattr $C$DW$175, DW_AT_TI_symbol_name("_txEnergy")
	.dwattr $C$DW$175, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$175, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$176	.dwtag  DW_TAG_member
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$176, DW_AT_name("rxEnergy")
	.dwattr $C$DW$176, DW_AT_TI_symbol_name("_rxEnergy")
	.dwattr $C$DW$176, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$176, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$177	.dwtag  DW_TAG_member
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$177, DW_AT_name("txDClevel")
	.dwattr $C$DW$177, DW_AT_TI_symbol_name("_txDClevel")
	.dwattr $C$DW$177, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$177, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$178	.dwtag  DW_TAG_member
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$178, DW_AT_name("rxDClevel")
	.dwattr $C$DW$178, DW_AT_TI_symbol_name("_rxDClevel")
	.dwattr $C$DW$178, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$178, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$23

$C$DW$T$49	.dwtag  DW_TAG_typedef, DW_AT_name("piuEnergyDCLevel_t")
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$49, DW_AT_language(DW_LANG_C)
$C$DW$T$54	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$T$54, DW_AT_address_class(0x17)

$C$DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x0c)
$C$DW$179	.dwtag  DW_TAG_member
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$179, DW_AT_name("in_ptr")
	.dwattr $C$DW$179, DW_AT_TI_symbol_name("_in_ptr")
	.dwattr $C$DW$179, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$179, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$180	.dwtag  DW_TAG_member
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$180, DW_AT_name("out_ptr")
	.dwattr $C$DW$180, DW_AT_TI_symbol_name("_out_ptr")
	.dwattr $C$DW$180, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$180, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$181	.dwtag  DW_TAG_member
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$181, DW_AT_name("start_ptr")
	.dwattr $C$DW$181, DW_AT_TI_symbol_name("_start_ptr")
	.dwattr $C$DW$181, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$181, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$182	.dwtag  DW_TAG_member
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$182, DW_AT_name("end_ptr")
	.dwattr $C$DW$182, DW_AT_TI_symbol_name("_end_ptr")
	.dwattr $C$DW$182, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$182, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$183	.dwtag  DW_TAG_member
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$183, DW_AT_name("top_ptr")
	.dwattr $C$DW$183, DW_AT_TI_symbol_name("_top_ptr")
	.dwattr $C$DW$183, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$183, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$184	.dwtag  DW_TAG_member
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$184, DW_AT_name("segment_count")
	.dwattr $C$DW$184, DW_AT_TI_symbol_name("_segment_count")
	.dwattr $C$DW$184, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$184, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$29

$C$DW$T$50	.dwtag  DW_TAG_typedef, DW_AT_name("receive_in_buf_t")
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$50, DW_AT_language(DW_LANG_C)

$C$DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x08)
$C$DW$185	.dwtag  DW_TAG_member
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$185, DW_AT_name("txSilDetEnergy")
	.dwattr $C$DW$185, DW_AT_TI_symbol_name("_txSilDetEnergy")
	.dwattr $C$DW$185, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$185, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$186	.dwtag  DW_TAG_member
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$186, DW_AT_name("rxSilDetEnergy")
	.dwattr $C$DW$186, DW_AT_TI_symbol_name("_rxSilDetEnergy")
	.dwattr $C$DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$186, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$187	.dwtag  DW_TAG_member
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$187, DW_AT_name("threshold")
	.dwattr $C$DW$187, DW_AT_TI_symbol_name("_threshold")
	.dwattr $C$DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$187, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$188	.dwtag  DW_TAG_member
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$188, DW_AT_name("cnt")
	.dwattr $C$DW$188, DW_AT_TI_symbol_name("_cnt")
	.dwattr $C$DW$188, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$188, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$189	.dwtag  DW_TAG_member
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$189, DW_AT_name("initCnt")
	.dwattr $C$DW$189, DW_AT_TI_symbol_name("_initCnt")
	.dwattr $C$DW$189, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$189, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$33

$C$DW$T$51	.dwtag  DW_TAG_typedef, DW_AT_name("bidSilenceCtrl_t")
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$51, DW_AT_language(DW_LANG_C)

$C$DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x06)
$C$DW$190	.dwtag  DW_TAG_member
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$190, DW_AT_name("type")
	.dwattr $C$DW$190, DW_AT_TI_symbol_name("_type")
	.dwattr $C$DW$190, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$190, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$191	.dwtag  DW_TAG_member
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$191, DW_AT_name("custom")
	.dwattr $C$DW$191, DW_AT_TI_symbol_name("_custom")
	.dwattr $C$DW$191, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$191, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$192	.dwtag  DW_TAG_member
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$192, DW_AT_name("cnt")
	.dwattr $C$DW$192, DW_AT_TI_symbol_name("_cnt")
	.dwattr $C$DW$192, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$192, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$193	.dwtag  DW_TAG_member
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$193, DW_AT_name("initCnt")
	.dwattr $C$DW$193, DW_AT_TI_symbol_name("_initCnt")
	.dwattr $C$DW$193, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$193, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$34

$C$DW$T$52	.dwtag  DW_TAG_typedef, DW_AT_name("piuPcmPatternDetect_t")
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$52, DW_AT_language(DW_LANG_C)
$C$DW$T$55	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$T$55, DW_AT_address_class(0x17)

$C$DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x05)
$C$DW$194	.dwtag  DW_TAG_member
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$194, DW_AT_name("send_out")
	.dwattr $C$DW$194, DW_AT_TI_symbol_name("_send_out")
	.dwattr $C$DW$194, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$194, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$195	.dwtag  DW_TAG_member
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$195, DW_AT_name("send_out_mean")
	.dwattr $C$DW$195, DW_AT_TI_symbol_name("_send_out_mean")
	.dwattr $C$DW$195, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$195, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$196	.dwtag  DW_TAG_member
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$196, DW_AT_name("receive_out")
	.dwattr $C$DW$196, DW_AT_TI_symbol_name("_receive_out")
	.dwattr $C$DW$196, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$196, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$197	.dwtag  DW_TAG_member
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$197, DW_AT_name("receive_out_mean")
	.dwattr $C$DW$197, DW_AT_TI_symbol_name("_receive_out_mean")
	.dwattr $C$DW$197, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$197, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$198	.dwtag  DW_TAG_member
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$198, DW_AT_name("underrun")
	.dwattr $C$DW$198, DW_AT_TI_symbol_name("_underrun")
	.dwattr $C$DW$198, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$198, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$35

$C$DW$T$56	.dwtag  DW_TAG_typedef, DW_AT_name("piuStats_t")
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$56, DW_AT_language(DW_LANG_C)
$C$DW$T$57	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$T$57, DW_AT_address_class(0x17)

$C$DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$46, DW_AT_byte_size(0x0c)
$C$DW$199	.dwtag  DW_TAG_member
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$199, DW_AT_name("max_pcm_val")
	.dwattr $C$DW$199, DW_AT_TI_symbol_name("_max_pcm_val")
	.dwattr $C$DW$199, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$199, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$200	.dwtag  DW_TAG_member
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$200, DW_AT_name("debugInfo")
	.dwattr $C$DW$200, DW_AT_TI_symbol_name("_debugInfo")
	.dwattr $C$DW$200, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$200, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$201	.dwtag  DW_TAG_member
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$201, DW_AT_name("reportOutFcn")
	.dwattr $C$DW$201, DW_AT_TI_symbol_name("_reportOutFcn")
	.dwattr $C$DW$201, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$201, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$202	.dwtag  DW_TAG_member
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$202, DW_AT_name("sendOutProcFcn")
	.dwattr $C$DW$202, DW_AT_TI_symbol_name("_sendOutProcFcn")
	.dwattr $C$DW$202, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$202, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$203	.dwtag  DW_TAG_member
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$203, DW_AT_name("sendOutIsrFcn")
	.dwattr $C$DW$203, DW_AT_TI_symbol_name("_sendOutIsrFcn")
	.dwattr $C$DW$203, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$203, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$204	.dwtag  DW_TAG_member
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$204, DW_AT_name("pcmSampleTrace")
	.dwattr $C$DW$204, DW_AT_TI_symbol_name("_pcmSampleTrace")
	.dwattr $C$DW$204, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$204, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$46

$C$DW$T$58	.dwtag  DW_TAG_typedef, DW_AT_name("piuContext_t")
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$58, DW_AT_language(DW_LANG_C)
$C$DW$T$59	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$T$59, DW_AT_address_class(0x17)
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x17)

$C$DW$T$37	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
$C$DW$205	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$3)
$C$DW$206	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$32)
$C$DW$207	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$32)
$C$DW$208	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$32)
$C$DW$209	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$36)
	.dwendtag $C$DW$T$37

$C$DW$T$38	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$38, DW_AT_address_class(0x20)
$C$DW$T$39	.dwtag  DW_TAG_typedef, DW_AT_name("dbgInfo_t")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$39, DW_AT_language(DW_LANG_C)

$C$DW$T$40	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$40, DW_AT_language(DW_LANG_C)
$C$DW$210	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$3)
$C$DW$211	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$26)
	.dwendtag $C$DW$T$40

$C$DW$T$41	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$41, DW_AT_address_class(0x20)

$C$DW$T$42	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$42, DW_AT_language(DW_LANG_C)
$C$DW$212	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$3)
$C$DW$213	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$3)
$C$DW$214	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$3)
$C$DW$215	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$26)
	.dwendtag $C$DW$T$42

$C$DW$T$43	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$43, DW_AT_address_class(0x20)

$C$DW$T$44	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)
$C$DW$216	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$26)
$C$DW$217	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$26)
$C$DW$218	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$3)
$C$DW$219	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$219, DW_AT_type(*$C$DW$T$32)
	.dwendtag $C$DW$T$44

$C$DW$T$45	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$45, DW_AT_address_class(0x20)
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
$C$DW$T$76	.dwtag  DW_TAG_typedef, DW_AT_name("Fract")
	.dwattr $C$DW$T$76, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$76, DW_AT_language(DW_LANG_C)
$C$DW$T$77	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$77, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$T$77, DW_AT_address_class(0x17)
$C$DW$T$70	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$70, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$70, DW_AT_address_class(0x17)
$C$DW$T$27	.dwtag  DW_TAG_typedef, DW_AT_name("linSample")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)
$C$DW$T$28	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$28, DW_AT_address_class(0x17)
$C$DW$T$73	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$73, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$73, DW_AT_address_class(0x17)
$C$DW$220	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$26)
$C$DW$T$47	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$220)
$C$DW$T$48	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$48, DW_AT_address_class(0x17)
$C$DW$T$87	.dwtag  DW_TAG_typedef, DW_AT_name("int_least8_t")
	.dwattr $C$DW$T$87, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$87, DW_AT_language(DW_LANG_C)
$C$DW$T$88	.dwtag  DW_TAG_typedef, DW_AT_name("tshort")
	.dwattr $C$DW$T$88, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$T$88, DW_AT_language(DW_LANG_C)
$C$DW$T$89	.dwtag  DW_TAG_typedef, DW_AT_name("tbool")
	.dwattr $C$DW$T$89, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$T$89, DW_AT_language(DW_LANG_C)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)
$C$DW$T$60	.dwtag  DW_TAG_typedef, DW_AT_name("size_t")
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$60, DW_AT_language(DW_LANG_C)
$C$DW$T$30	.dwtag  DW_TAG_typedef, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$30, DW_AT_language(DW_LANG_C)
$C$DW$T$31	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least16_t")
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$31, DW_AT_language(DW_LANG_C)
$C$DW$T$32	.dwtag  DW_TAG_typedef, DW_AT_name("tuint")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$32, DW_AT_language(DW_LANG_C)
$C$DW$T$36	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$36, DW_AT_address_class(0x17)
$C$DW$T$65	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least8_t")
	.dwattr $C$DW$T$65, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$65, DW_AT_language(DW_LANG_C)
$C$DW$T$66	.dwtag  DW_TAG_typedef, DW_AT_name("tword")
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$T$66, DW_AT_language(DW_LANG_C)
$C$DW$T$67	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$T$67, DW_AT_address_class(0x17)
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
$C$DW$T$78	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$78, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$78, DW_AT_address_class(0x17)
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

$C$DW$T$53	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$53, DW_AT_name("piuInst_s")
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x40)
$C$DW$221	.dwtag  DW_TAG_member
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$221, DW_AT_name("ID")
	.dwattr $C$DW$221, DW_AT_TI_symbol_name("_ID")
	.dwattr $C$DW$221, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$221, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$222	.dwtag  DW_TAG_member
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$222, DW_AT_name("state")
	.dwattr $C$DW$222, DW_AT_TI_symbol_name("_state")
	.dwattr $C$DW$222, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$222, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$223	.dwtag  DW_TAG_member
	.dwattr $C$DW$223, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$223, DW_AT_name("mode_bitfield")
	.dwattr $C$DW$223, DW_AT_TI_symbol_name("_mode_bitfield")
	.dwattr $C$DW$223, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$223, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$224	.dwtag  DW_TAG_member
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$224, DW_AT_name("pcm_expand_table")
	.dwattr $C$DW$224, DW_AT_TI_symbol_name("_pcm_expand_table")
	.dwattr $C$DW$224, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$224, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$225	.dwtag  DW_TAG_member
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$225, DW_AT_name("pcm_format")
	.dwattr $C$DW$225, DW_AT_TI_symbol_name("_pcm_format")
	.dwattr $C$DW$225, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$225, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$226	.dwtag  DW_TAG_member
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$226, DW_AT_name("segment_size")
	.dwattr $C$DW$226, DW_AT_TI_symbol_name("_segment_size")
	.dwattr $C$DW$226, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$226, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$227	.dwtag  DW_TAG_member
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$227, DW_AT_name("rx_delay")
	.dwattr $C$DW$227, DW_AT_TI_symbol_name("_rx_delay")
	.dwattr $C$DW$227, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$227, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$228	.dwtag  DW_TAG_member
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$228, DW_AT_name("rx_underflow_cnt")
	.dwattr $C$DW$228, DW_AT_TI_symbol_name("_rx_underflow_cnt")
	.dwattr $C$DW$228, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$228, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$229	.dwtag  DW_TAG_member
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$229, DW_AT_name("rx_overflow_cnt")
	.dwattr $C$DW$229, DW_AT_TI_symbol_name("_rx_overflow_cnt")
	.dwattr $C$DW$229, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$229, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$230	.dwtag  DW_TAG_member
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$230, DW_AT_name("receive_out_buf")
	.dwattr $C$DW$230, DW_AT_TI_symbol_name("_receive_out_buf")
	.dwattr $C$DW$230, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$230, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$231	.dwtag  DW_TAG_member
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$231, DW_AT_name("receive_out_buf_ptr")
	.dwattr $C$DW$231, DW_AT_TI_symbol_name("_receive_out_buf_ptr")
	.dwattr $C$DW$231, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$231, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$232	.dwtag  DW_TAG_member
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$232, DW_AT_name("send_out_buf")
	.dwattr $C$DW$232, DW_AT_TI_symbol_name("_send_out_buf")
	.dwattr $C$DW$232, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$232, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$233	.dwtag  DW_TAG_member
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$233, DW_AT_name("send_out_buf_ptr")
	.dwattr $C$DW$233, DW_AT_TI_symbol_name("_send_out_buf_ptr")
	.dwattr $C$DW$233, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$233, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$234	.dwtag  DW_TAG_member
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$234, DW_AT_name("reportOutTargetInst")
	.dwattr $C$DW$234, DW_AT_TI_symbol_name("_reportOutTargetInst")
	.dwattr $C$DW$234, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$234, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$235	.dwtag  DW_TAG_member
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$235, DW_AT_name("sendOutProcTargetInst")
	.dwattr $C$DW$235, DW_AT_TI_symbol_name("_sendOutProcTargetInst")
	.dwattr $C$DW$235, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$235, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$236	.dwtag  DW_TAG_member
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$236, DW_AT_name("sendOutIsrTargetInst")
	.dwattr $C$DW$236, DW_AT_TI_symbol_name("_sendOutIsrTargetInst")
	.dwattr $C$DW$236, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$236, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$237	.dwtag  DW_TAG_member
	.dwattr $C$DW$237, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$237, DW_AT_name("energy_DClevel")
	.dwattr $C$DW$237, DW_AT_TI_symbol_name("_energy_DClevel")
	.dwattr $C$DW$237, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$237, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$238	.dwtag  DW_TAG_member
	.dwattr $C$DW$238, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$238, DW_AT_name("generatePattern")
	.dwattr $C$DW$238, DW_AT_TI_symbol_name("_generatePattern")
	.dwattr $C$DW$238, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$238, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$239	.dwtag  DW_TAG_member
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$239, DW_AT_name("receive_in_buf")
	.dwattr $C$DW$239, DW_AT_TI_symbol_name("_receive_in_buf")
	.dwattr $C$DW$239, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$239, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$240	.dwtag  DW_TAG_member
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$240, DW_AT_name("bidSilence")
	.dwattr $C$DW$240, DW_AT_TI_symbol_name("_bidSilence")
	.dwattr $C$DW$240, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$240, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$241	.dwtag  DW_TAG_member
	.dwattr $C$DW$241, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$241, DW_AT_name("pcmPattern")
	.dwattr $C$DW$241, DW_AT_TI_symbol_name("_pcmPattern")
	.dwattr $C$DW$241, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$241, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$242	.dwtag  DW_TAG_member
	.dwattr $C$DW$242, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$242, DW_AT_name("silence_pattern")
	.dwattr $C$DW$242, DW_AT_TI_symbol_name("_silence_pattern")
	.dwattr $C$DW$242, DW_AT_data_member_location[DW_OP_plus_uconst 0x3e]
	.dwattr $C$DW$242, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$53

$C$DW$T$83	.dwtag  DW_TAG_typedef, DW_AT_name("piuInst_t")
	.dwattr $C$DW$T$83, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$T$83, DW_AT_language(DW_LANG_C)
$C$DW$T$84	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$84, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$T$84, DW_AT_address_class(0x17)
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

$C$DW$243	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$243, DW_AT_location[DW_OP_reg0]
$C$DW$244	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$244, DW_AT_location[DW_OP_reg1]
$C$DW$245	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$245, DW_AT_location[DW_OP_reg2]
$C$DW$246	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$246, DW_AT_location[DW_OP_reg3]
$C$DW$247	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$247, DW_AT_location[DW_OP_reg4]
$C$DW$248	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$248, DW_AT_location[DW_OP_reg5]
$C$DW$249	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$249, DW_AT_location[DW_OP_reg6]
$C$DW$250	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$250, DW_AT_location[DW_OP_reg7]
$C$DW$251	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$251, DW_AT_location[DW_OP_reg8]
$C$DW$252	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$252, DW_AT_location[DW_OP_reg9]
$C$DW$253	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$253, DW_AT_location[DW_OP_reg10]
$C$DW$254	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$254, DW_AT_location[DW_OP_reg11]
$C$DW$255	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$255, DW_AT_location[DW_OP_reg12]
$C$DW$256	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$256, DW_AT_location[DW_OP_reg13]
$C$DW$257	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$257, DW_AT_location[DW_OP_reg14]
$C$DW$258	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$258, DW_AT_location[DW_OP_reg15]
$C$DW$259	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$259, DW_AT_location[DW_OP_reg16]
$C$DW$260	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$260, DW_AT_location[DW_OP_reg17]
$C$DW$261	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$261, DW_AT_location[DW_OP_reg18]
$C$DW$262	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$262, DW_AT_location[DW_OP_reg19]
$C$DW$263	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$263, DW_AT_location[DW_OP_reg20]
$C$DW$264	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$264, DW_AT_location[DW_OP_reg21]
$C$DW$265	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$265, DW_AT_location[DW_OP_reg22]
$C$DW$266	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$266, DW_AT_location[DW_OP_reg23]
$C$DW$267	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$267, DW_AT_location[DW_OP_reg24]
$C$DW$268	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$268, DW_AT_location[DW_OP_reg25]
$C$DW$269	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$269, DW_AT_location[DW_OP_reg26]
$C$DW$270	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$270, DW_AT_location[DW_OP_reg27]
$C$DW$271	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$271, DW_AT_location[DW_OP_reg28]
$C$DW$272	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$272, DW_AT_location[DW_OP_reg29]
$C$DW$273	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$273, DW_AT_location[DW_OP_reg30]
$C$DW$274	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$274, DW_AT_location[DW_OP_reg31]
$C$DW$275	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$275, DW_AT_location[DW_OP_regx 0x20]
$C$DW$276	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$276, DW_AT_location[DW_OP_regx 0x21]
$C$DW$277	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$277, DW_AT_location[DW_OP_regx 0x22]
$C$DW$278	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$278, DW_AT_location[DW_OP_regx 0x23]
$C$DW$279	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$279, DW_AT_location[DW_OP_regx 0x24]
$C$DW$280	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$280, DW_AT_location[DW_OP_regx 0x25]
$C$DW$281	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$281, DW_AT_location[DW_OP_regx 0x26]
$C$DW$282	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$282, DW_AT_location[DW_OP_regx 0x27]
$C$DW$283	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$283, DW_AT_location[DW_OP_regx 0x28]
$C$DW$284	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$284, DW_AT_location[DW_OP_regx 0x29]
$C$DW$285	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$285, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$286	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$286, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$287	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$287, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$288	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$288, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$289	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$289, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$290	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$290, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$291	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$291, DW_AT_location[DW_OP_regx 0x30]
$C$DW$292	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$292, DW_AT_location[DW_OP_regx 0x31]
$C$DW$293	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$293, DW_AT_location[DW_OP_regx 0x32]
$C$DW$294	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$294, DW_AT_location[DW_OP_regx 0x33]
$C$DW$295	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$295, DW_AT_location[DW_OP_regx 0x34]
$C$DW$296	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$296, DW_AT_location[DW_OP_regx 0x35]
$C$DW$297	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$297, DW_AT_location[DW_OP_regx 0x36]
$C$DW$298	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$298, DW_AT_location[DW_OP_regx 0x37]
$C$DW$299	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$299, DW_AT_location[DW_OP_regx 0x38]
$C$DW$300	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$300, DW_AT_location[DW_OP_regx 0x39]
$C$DW$301	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$301, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$302	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$302, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$303	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$303, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$304	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$304, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$305	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$305, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$306	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$306, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$307	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$307, DW_AT_location[DW_OP_regx 0x40]
$C$DW$308	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$308, DW_AT_location[DW_OP_regx 0x41]
$C$DW$309	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$309, DW_AT_location[DW_OP_regx 0x42]
$C$DW$310	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$310, DW_AT_location[DW_OP_regx 0x43]
$C$DW$311	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$311, DW_AT_location[DW_OP_regx 0x44]
$C$DW$312	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$312, DW_AT_location[DW_OP_regx 0x45]
$C$DW$313	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$313, DW_AT_location[DW_OP_regx 0x46]
$C$DW$314	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$314, DW_AT_location[DW_OP_regx 0x47]
$C$DW$315	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$315, DW_AT_location[DW_OP_regx 0x48]
$C$DW$316	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$316, DW_AT_location[DW_OP_regx 0x49]
$C$DW$317	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$317, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$318	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$318, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$319	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$319, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$320	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$320, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$321	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$321, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$322	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$322, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$323	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$323, DW_AT_location[DW_OP_regx 0x50]
$C$DW$324	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$324, DW_AT_location[DW_OP_regx 0x51]
$C$DW$325	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$325, DW_AT_location[DW_OP_regx 0x52]
$C$DW$326	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$326, DW_AT_location[DW_OP_regx 0x53]
$C$DW$327	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$327, DW_AT_location[DW_OP_regx 0x54]
$C$DW$328	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$328, DW_AT_location[DW_OP_regx 0x55]
$C$DW$329	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$329, DW_AT_location[DW_OP_regx 0x56]
$C$DW$330	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$330, DW_AT_location[DW_OP_regx 0x57]
$C$DW$331	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$331, DW_AT_location[DW_OP_regx 0x58]
$C$DW$332	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$332, DW_AT_location[DW_OP_regx 0x59]
$C$DW$333	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$333, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$334	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$334, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

