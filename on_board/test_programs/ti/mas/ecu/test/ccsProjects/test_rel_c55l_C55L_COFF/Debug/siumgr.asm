;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                          PC v4.4.1 *
;* Date/Time created: Fri Jul 05 14:12:18 2013                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen PC v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\ecu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug")

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("piuGetSizes")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_piuGetSizes")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$93)
$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$69)
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$70)
	.dwendtag $C$DW$1


$C$DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("piuNew")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_piuNew")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$81)
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$21)
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$66)
$C$DW$9	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$72)
	.dwendtag $C$DW$5


$C$DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("piuOpen")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_piuOpen")
	.dwattr $C$DW$10, DW_AT_declaration
	.dwattr $C$DW$10, DW_AT_external
$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$3)
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$74)
	.dwendtag $C$DW$10


$C$DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("siuTxOpen")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_siuTxOpen")
	.dwattr $C$DW$13, DW_AT_declaration
	.dwattr $C$DW$13, DW_AT_external
$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$3)
$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$76)
	.dwendtag $C$DW$13


$C$DW$16	.dwtag  DW_TAG_subprogram, DW_AT_name("siuTxSendIn")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_siuTxSendIn")
	.dwattr $C$DW$16, DW_AT_declaration
	.dwattr $C$DW$16, DW_AT_external
$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$3)
$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$3)
$C$DW$19	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$3)
$C$DW$20	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$16


$C$DW$21	.dwtag  DW_TAG_subprogram, DW_AT_name("siuPiuReport")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_siuPiuReport")
	.dwattr $C$DW$21, DW_AT_declaration
	.dwattr $C$DW$21, DW_AT_external
$C$DW$22	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$3)
$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$21


$C$DW$24	.dwtag  DW_TAG_subprogram, DW_AT_name("siuPcmSampleTrace")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_siuPcmSampleTrace")
	.dwattr $C$DW$24, DW_AT_declaration
	.dwattr $C$DW$24, DW_AT_external
$C$DW$25	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$21)
$C$DW$26	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$21)
$C$DW$27	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$3)
$C$DW$28	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$24)
	.dwendtag $C$DW$24


$C$DW$29	.dwtag  DW_TAG_subprogram, DW_AT_name("siuTxRxSendIn")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_siuTxRxSendIn")
	.dwattr $C$DW$29, DW_AT_declaration
	.dwattr $C$DW$29, DW_AT_external
$C$DW$30	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$3)
$C$DW$31	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$3)
$C$DW$32	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$3)
$C$DW$33	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$29


$C$DW$34	.dwtag  DW_TAG_subprogram, DW_AT_name("siuDebugInfoNew")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_siuDebugInfoNew")
	.dwattr $C$DW$34, DW_AT_declaration
	.dwattr $C$DW$34, DW_AT_external
$C$DW$35	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$24)
$C$DW$36	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$24)
$C$DW$37	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$24)
$C$DW$38	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$24)
$C$DW$39	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$31)
	.dwendtag $C$DW$34


$C$DW$40	.dwtag  DW_TAG_subprogram, DW_AT_name("mhmAlloc")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_mhmAlloc")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$40, DW_AT_declaration
	.dwattr $C$DW$40, DW_AT_external
$C$DW$41	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$3)
$C$DW$42	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$24)
	.dwendtag $C$DW$40


$C$DW$43	.dwtag  DW_TAG_subprogram, DW_AT_name("ecuSendIn")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_ecuSendIn")
	.dwattr $C$DW$43, DW_AT_declaration
	.dwattr $C$DW$43, DW_AT_external
$C$DW$44	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$3)
$C$DW$45	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$3)
$C$DW$46	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$3)
$C$DW$47	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$43

$C$DW$48	.dwtag  DW_TAG_variable, DW_AT_name("muaTblAlaw")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_muaTblAlaw")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$48, DW_AT_declaration
	.dwattr $C$DW$48, DW_AT_external
$C$DW$49	.dwtag  DW_TAG_variable, DW_AT_name("muaTblUlaw")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_muaTblUlaw")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$49, DW_AT_declaration
	.dwattr $C$DW$49, DW_AT_external
$C$DW$50	.dwtag  DW_TAG_variable, DW_AT_name("siuContext")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_siuContext")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$50, DW_AT_declaration
	.dwattr $C$DW$50, DW_AT_external
$C$DW$51	.dwtag  DW_TAG_variable, DW_AT_name("siuInst")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_siuInst")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$51, DW_AT_declaration
	.dwattr $C$DW$51, DW_AT_external
;	C:\MAS_Tools\CCSV5_2_1\ccsv5\tools\compiler\c5500_4.4.1\bin\acp55.exe -@C:\\DOCUME~1\\a0868396\\LOCALS~1\\Temp\\1112812 
	.sect	".text"

$C$DW$52	.dwtag  DW_TAG_subprogram, DW_AT_name("siuCAlloc")
	.dwattr $C$DW$52, DW_AT_low_pc(_siuCAlloc)
	.dwattr $C$DW$52, DW_AT_high_pc(0x00)
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_siuCAlloc")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$52, DW_AT_TI_begin_file("../../../../../../../ti/mas/ecu/test/src/siuloc.h")
	.dwattr $C$DW$52, DW_AT_TI_begin_line(0xdc)
	.dwattr $C$DW$52, DW_AT_TI_begin_column(0x15)
	.dwattr $C$DW$52, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "../../../../../../../ti/mas/ecu/test/src/siuloc.h",line 221,column 1,is_stmt,address _siuCAlloc

	.dwfde $C$DW$CIE, _siuCAlloc
$C$DW$53	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_reg12]
;----------------------------------------------------------------------
; 220 | static inline void *siuCAlloc (tuint size)                             
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: siuCAlloc                                                    *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,SP,M40,SATA,SATD,RDM,FRCT,SMUL           *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 2 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (1 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_siuCAlloc:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-1
	.dwcfi	cfa_offset, 2
$C$DW$54	.dwtag  DW_TAG_variable, DW_AT_name("size")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_bregx 0x24 0]
        XAR0 = dbl(*(#(_siuContext+8)))
        *SP(#0) = T0 ; |221| 
	.dwpsn	file "../../../../../../../ti/mas/ecu/test/src/siuloc.h",line 222,column 3,is_stmt
;----------------------------------------------------------------------
; 222 | return (mhmAlloc (siuContext.cheap, size));                            
;----------------------------------------------------------------------
$C$DW$55	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$55, DW_AT_low_pc(0x00)
	.dwattr $C$DW$55, DW_AT_name("_mhmAlloc")
	.dwattr $C$DW$55, DW_AT_TI_call
        call #_mhmAlloc ; |222| 
                                        ; call occurs [#_mhmAlloc] ; |222| 
        SP = SP + #1
	.dwcfi	cfa_offset, 1
$C$DW$56	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$56, DW_AT_low_pc(0x00)
	.dwattr $C$DW$56, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$52, DW_AT_TI_end_file("../../../../../../../ti/mas/ecu/test/src/siuloc.h")
	.dwattr $C$DW$52, DW_AT_TI_end_line(0xdf)
	.dwattr $C$DW$52, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$52

	.sect	".text"
	.global	_siu_new_piu

$C$DW$57	.dwtag  DW_TAG_subprogram, DW_AT_name("siu_new_piu")
	.dwattr $C$DW$57, DW_AT_low_pc(_siu_new_piu)
	.dwattr $C$DW$57, DW_AT_high_pc(0x00)
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_siu_new_piu")
	.dwattr $C$DW$57, DW_AT_external
	.dwattr $C$DW$57, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c")
	.dwattr $C$DW$57, DW_AT_TI_begin_line(0x6a)
	.dwattr $C$DW$57, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$57, DW_AT_TI_max_frame_size(0x20)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 107,column 1,is_stmt,address _siu_new_piu

	.dwfde $C$DW$CIE, _siu_new_piu
$C$DW$58	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chnum")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_chnum")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_reg12]
$C$DW$59	.dwtag  DW_TAG_formal_parameter, DW_AT_name("max_frame_length")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_max_frame_length")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_reg13]
;----------------------------------------------------------------------
; 106 | void siu_new_piu (tint chnum, tint max_frame_length)                   
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: siu_new_piu                                                  *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,*
;*                        CSR,RPTC,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL       *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 32 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (30 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_siu_new_piu:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-31
	.dwcfi	cfa_offset, 32
$C$DW$60	.dwtag  DW_TAG_variable, DW_AT_name("chnum")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_chnum")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$61	.dwtag  DW_TAG_variable, DW_AT_name("max_frame_length")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_max_frame_length")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$61, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$62	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$63	.dwtag  DW_TAG_variable, DW_AT_name("stat")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_stat")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$63, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$64	.dwtag  DW_TAG_variable, DW_AT_name("piuNbufs")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_piuNbufs")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$65	.dwtag  DW_TAG_variable, DW_AT_name("bufs")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_bufs")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$66	.dwtag  DW_TAG_variable, DW_AT_name("piuBufs")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_piuBufs")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$67	.dwtag  DW_TAG_variable, DW_AT_name("piuCfgSize")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_piuCfgSize")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$67, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$68	.dwtag  DW_TAG_variable, DW_AT_name("piuCfgNew")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_piuCfgNew")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$68, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$69	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$69, DW_AT_location[DW_OP_bregx 0x24 28]
;----------------------------------------------------------------------
; 108 | int i;                                                                 
; 109 | tint stat, piuNbufs;                                                   
; 111 | const ecomemBuffer_t *bufs;                                            
; 112 | ecomemBuffer_t    *piuBufs;                                            
; 113 | piuSizeConfig_t   piuCfgSize;                                          
; 114 | piuNewConfig_t    piuCfgNew;                                           
;----------------------------------------------------------------------
        *SP(#1) = T1 ; |107| 
        *SP(#0) = T0 ; |107| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 116,column 14,is_stmt
;----------------------------------------------------------------------
; 116 | siuInst_t *inst = &siuInst[chnum-1];                                   
;----------------------------------------------------------------------
        AC0 = *SP(#0) * #28 ; |116| 
        AR1 = AC0 - #28 ; |116| 
        XAR3 = #_siuInst ; |116| 

        AR1 = *SP(#1) ; |118| 
||      mar(AR3 + AR1) ; |116| 

        dbl(*SP(#28)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 118,column 3,is_stmt
;----------------------------------------------------------------------
; 118 | piuCfgSize.max_samples_per_segment = max_frame_length;  /* x-ms at 8kHz
;     |  */                                                                    
;----------------------------------------------------------------------
        *SP(#10) = AR1 ; |118| 
        XAR0 = mar(*SP(#4))
        XAR2 = mar(*SP(#10))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 122,column 3,is_stmt
;----------------------------------------------------------------------
; 122 | piuCfgSize.rx_triple_buffering     = TRUE;                             
;----------------------------------------------------------------------
        *SP(#11) = #1 ; |122| 
        XAR1 = mar(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 125,column 3,is_stmt
;----------------------------------------------------------------------
; 125 | stat = piuGetSizes (&piuNbufs, &bufs, &piuCfgSize);                    
;----------------------------------------------------------------------
$C$DW$70	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$70, DW_AT_low_pc(0x00)
	.dwattr $C$DW$70, DW_AT_name("_piuGetSizes")
	.dwattr $C$DW$70, DW_AT_TI_call
        call #_piuGetSizes ; |125| 
                                        ; call occurs [#_piuGetSizes] ; |125| 
        AR1 = T0  ; |125| 
        *SP(#3) = T0 ; |125| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 126,column 3,is_stmt
;----------------------------------------------------------------------
; 126 | siu_exc_assert (stat == piu_NOERR, inst);                              
;----------------------------------------------------------------------
        if (AR1 == #0) goto $C$L1 ; |126| 
                                        ; branchcc occurs ; |126| 
        XAR3 = dbl(*SP(#28))
        XAR0 = #$C$FSL1 ; |126| 
        AC0 = dbl(*AR3(short(#2))) ; |126| 
        T0 = *AR3 ; |126| 
$C$DW$71	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$71, DW_AT_low_pc(0x00)
	.dwattr $C$DW$71, DW_AT_TI_call
	.dwattr $C$DW$71, DW_AT_TI_indirect
        call AC0  ; |126| 
                                        ; call occurs [AC0] ; |126| 
$C$L1:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 128,column 3,is_stmt
;----------------------------------------------------------------------
; 128 | piuBufs = (ecomemBuffer_t*)siuCAlloc (piuNbufs*sizeof(ecomemBuffer_t));
;----------------------------------------------------------------------
        AC0 = *SP(#4) * #6 ; |128| 
        T0 = AC0  ; |128| 
$C$DW$72	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$72, DW_AT_low_pc(0x00)
	.dwattr $C$DW$72, DW_AT_name("_siuCAlloc")
	.dwattr $C$DW$72, DW_AT_TI_call
        call #_siuCAlloc ; |128| 
                                        ; call occurs [#_siuCAlloc] ; |128| 
        dbl(*SP(#8)) = XAR0
        XAR3 = dbl(*SP(#28))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 129,column 3,is_stmt
;----------------------------------------------------------------------
; 129 | inst->cheap_used += piuNbufs*sizeof(ecomemBuffer_t);                   
;----------------------------------------------------------------------
        AC0 = *AR3(#20) ; |129| 
        AC0 = AC0 + (*SP(#4) * #6) ; |129| 
        *AR3(#20) = AC0 ; |129| 
        XAR3 = dbl(*SP(#8))
        AC0 = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 130,column 3,is_stmt
;----------------------------------------------------------------------
; 130 | siu_exc_assert (piuBufs != NULL, inst);                                
;----------------------------------------------------------------------
        if (AC0 != #0) goto $C$L2 ; |130| 
                                        ; branchcc occurs ; |130| 
        XAR3 = dbl(*SP(#28))
        XAR0 = #$C$FSL2 ; |130| 
        AC0 = dbl(*AR3(short(#2))) ; |130| 
        T0 = *AR3 ; |130| 
$C$DW$73	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$73, DW_AT_low_pc(0x00)
	.dwattr $C$DW$73, DW_AT_TI_call
	.dwattr $C$DW$73, DW_AT_TI_indirect
        call AC0  ; |130| 
                                        ; call occurs [AC0] ; |130| 
$C$L2:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 133,column 8,is_stmt
;----------------------------------------------------------------------
; 133 | for (i = 0; i < piuNbufs; i++) {                                       
;----------------------------------------------------------------------
        *SP(#2) = #0 ; |133| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 133,column 15,is_stmt
        AR1 = *SP(#4) ; |133| 
        AR2 = *SP(#2) ; |133| 
        TC1 = (AR2 >= AR1) ; |133| 
        if (TC1) goto $C$L7 ; |133| 
                                        ; branchcc occurs ; |133| 
$C$L3:    
$C$DW$L$_siu_new_piu$6$B:
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 134,column 5,is_stmt
;----------------------------------------------------------------------
; 134 | piuBufs[i]        = bufs[i];                                           
;----------------------------------------------------------------------
        AC0 = *SP(#2) * #6 ; |134| 
        AR1 = AC0 ; |134| 
        XAR2 = dbl(*SP(#8))
        AC0 = *SP(#2) * #6 ; |134| 

        AR1 = AC0 ; |134| 
||      mar(AR3 + AR1) ; |134| 

        repeat(#2) ; |134| 
||      mar(AR2 + AR1) ; |134| 

                                            ; loop starts ; |134| 
$C$DW$L$_siu_new_piu$6$E:
$C$L4:    
$C$DW$L$_siu_new_piu$7$B:
            dbl(*AR2+) = dbl(*AR3+) ; |134| 
                                        ; loop ends ; |134| 
$C$DW$L$_siu_new_piu$7$E:
$C$L5:    
$C$DW$L$_siu_new_piu$8$B:
        XAR3 = dbl(*SP(#8))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 135,column 5,is_stmt
;----------------------------------------------------------------------
; 135 | piuBufs[i].volat  = FALSE;                                             
;----------------------------------------------------------------------
        AC0 = *SP(#2) * #6 ; |135| 
        AR1 = AC0 ; |135| 
        mar(AR3 + AR1) ; |135| 
        *AR3(short(#3)) = #0 ; |135| 
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 136,column 5,is_stmt
;----------------------------------------------------------------------
; 136 | piuBufs[i].base   = siuCAlloc (bufs[i].size);                          
;----------------------------------------------------------------------
        AC0 = *SP(#2) * #6 ; |136| 
        AR1 = AC0 ; |136| 
        mar(AR3 + AR1) ; |136| 
        T0 = *AR3(short(#2)) ; |136| 
$C$DW$74	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$74, DW_AT_low_pc(0x00)
	.dwattr $C$DW$74, DW_AT_name("_siuCAlloc")
	.dwattr $C$DW$74, DW_AT_TI_call
        call #_siuCAlloc ; |136| 
                                        ; call occurs [#_siuCAlloc] ; |136| 
        XAR3 = dbl(*SP(#8))
        AC0 = *SP(#2) * #6 ; |136| 
        AR1 = AC0 ; |136| 
        mar(AR3 + AR1) ; |136| 
        dbl(*AR3(short(#4))) = XAR0
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 137,column 5,is_stmt
;----------------------------------------------------------------------
; 137 | inst->cheap_used += bufs[i].size;                                      
;----------------------------------------------------------------------
        AC0 = *SP(#2) * #6 ; |137| 
        AR1 = AC0 ; |137| 
        XAR2 = dbl(*SP(#28))
        mar(AR3 + AR1) ; |137| 
        AR1 = *AR3(short(#2)) ; |137| 
        AR1 = AR1 + *AR2(#20) ; |137| 
        *AR2(#20) = AR1 ; |137| 
        XAR3 = dbl(*SP(#8))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 138,column 5,is_stmt
;----------------------------------------------------------------------
; 138 | siu_exc_assert (piuBufs[i].base != NULL, inst);                        
;----------------------------------------------------------------------
        AC0 = *SP(#2) * #6 ; |138| 
        AR1 = AC0 ; |138| 
        mar(AR3 + AR1) ; |138| 
        XAR3 = dbl(*AR3(short(#4)))
        AC0 = XAR3
        if (AC0 != #0) goto $C$L6 ; |138| 
                                        ; branchcc occurs ; |138| 
$C$DW$L$_siu_new_piu$8$E:
$C$DW$L$_siu_new_piu$9$B:
        XAR3 = dbl(*SP(#28))
        XAR0 = #$C$FSL3 ; |138| 
        AC0 = dbl(*AR3(short(#2))) ; |138| 
        T0 = *AR3 ; |138| 
$C$DW$75	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$75, DW_AT_low_pc(0x00)
	.dwattr $C$DW$75, DW_AT_TI_call
	.dwattr $C$DW$75, DW_AT_TI_indirect
        call AC0  ; |138| 
                                        ; call occurs [AC0] ; |138| 
$C$DW$L$_siu_new_piu$9$E:
$C$L6:    
$C$DW$L$_siu_new_piu$10$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 133,column 29,is_stmt
        *SP(#2) = *SP(#2) + #1 ; |133| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 133,column 15,is_stmt
        AR1 = *SP(#4) ; |133| 
        AR2 = *SP(#2) ; |133| 
        TC1 = (AR2 < AR1) ; |133| 
        if (TC1) goto $C$L3 ; |133| 
                                        ; branchcc occurs ; |133| 
$C$DW$L$_siu_new_piu$10$E:
$C$L7:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 144,column 3,is_stmt
;----------------------------------------------------------------------
; 144 | piuCfgNew.ID                      = siuMakeID (SIU_MID_PIU, chnum);    
; 145 | piuCfgNew.context.max_pcm_val     = mua_TBL_MAX_PCM_VAL;               
;----------------------------------------------------------------------
        AR1 = *SP(#0) ; |144| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 146,column 3,is_stmt
;----------------------------------------------------------------------
; 146 | piuCfgNew.context.debugInfo       = (dbgInfo_t)(siuDebugInfoNew);      
;----------------------------------------------------------------------
        AC0 = #(_siuDebugInfoNew >> 16) << #16 ; |146| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 144,column 3,is_stmt
        bit(AR1, @#10) = #1 ; |144| 
        *SP(#12) = AR1 ; |144| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 146,column 3,is_stmt
        AC0 = AC0 | #(_siuDebugInfoNew & 0xffff) ; |146| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 145,column 3,is_stmt
        *SP(#14) = #32632 ; |145| 
        XAR3 = mar(*SP(#10))
        XAR2 = mar(*SP(#26))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 146,column 3,is_stmt
        dbl(*SP(#16)) = AC0 ; |146| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 147,column 3,is_stmt
;----------------------------------------------------------------------
; 147 | piuCfgNew.context.sendOutProcFcn  = siuTxSendIn;                       
;----------------------------------------------------------------------
        AC0 = #(_siuTxSendIn >> 16) << #16 ; |147| 
        AC0 = AC0 | #(_siuTxSendIn & 0xffff) ; |147| 
        dbl(*SP(#20)) = AC0 ; |147| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 148,column 3,is_stmt
;----------------------------------------------------------------------
; 148 | piuCfgNew.context.sendOutIsrFcn   = siuTxRxSendIn;                     
;----------------------------------------------------------------------
        AC0 = #(_siuTxRxSendIn >> 16) << #16 ; |148| 
        AC0 = AC0 | #(_siuTxRxSendIn & 0xffff) ; |148| 
        dbl(*SP(#22)) = AC0 ; |148| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 149,column 3,is_stmt
;----------------------------------------------------------------------
; 149 | piuCfgNew.context.reportOutFcn    = siuPiuReport;                      
;----------------------------------------------------------------------
        AC0 = #(_siuPiuReport >> 16) << #16 ; |149| 
        AC0 = AC0 | #(_siuPiuReport & 0xffff) ; |149| 
        dbl(*SP(#18)) = AC0 ; |149| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 150,column 3,is_stmt
;----------------------------------------------------------------------
; 150 | piuCfgNew.context.pcmSampleTrace  = siuPcmSampleTrace;                 
;----------------------------------------------------------------------
        AC0 = #(_siuPcmSampleTrace >> 16) << #16 ; |150| 
        AC0 = AC0 | #(_siuPcmSampleTrace & 0xffff) ; |150| 

        repeat(#1) ; |151| 
||      dbl(*SP(#24)) = AC0 ; |150| 

	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 151,column 3,is_stmt
;----------------------------------------------------------------------
; 151 | piuCfgNew.sizeCfg                 = piuCfgSize;                        
;----------------------------------------------------------------------
                                            ; loop starts ; |151| 
$C$L8:    
$C$DW$L$_siu_new_piu$12$B:
            *AR2+ = *AR3+ ; |151| 
                                        ; loop ends ; |151| 
$C$DW$L$_siu_new_piu$12$E:
$C$L9:    
        XAR0 = dbl(*SP(#28))
        XAR1 = dbl(*SP(#8))
        XAR2 = mar(*SP(#12))

        mar(AR0 + #24) ; |152| 
||      T0 = *SP(#4) ; |152| 

	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 152,column 3,is_stmt
;----------------------------------------------------------------------
; 152 | stat = piuNew (&inst->piuInst, piuNbufs, piuBufs, &piuCfgNew);         
;----------------------------------------------------------------------
$C$DW$76	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$76, DW_AT_low_pc(0x00)
	.dwattr $C$DW$76, DW_AT_name("_piuNew")
	.dwattr $C$DW$76, DW_AT_TI_call
        call #_piuNew ; |152| 
                                        ; call occurs [#_piuNew] ; |152| 
        AR1 = T0  ; |152| 
        *SP(#3) = T0 ; |152| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 153,column 3,is_stmt
;----------------------------------------------------------------------
; 153 | siu_exc_assert (stat == piu_NOERR, inst);                              
;----------------------------------------------------------------------
        if (AR1 == #0) goto $C$L10 ; |153| 
                                        ; branchcc occurs ; |153| 
        XAR3 = dbl(*SP(#28))
        XAR0 = #$C$FSL4 ; |153| 
        AC0 = dbl(*AR3(short(#2))) ; |153| 
        T0 = *AR3 ; |153| 
$C$DW$77	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$77, DW_AT_low_pc(0x00)
	.dwattr $C$DW$77, DW_AT_TI_call
	.dwattr $C$DW$77, DW_AT_TI_indirect
        call AC0  ; |153| 
                                        ; call occurs [AC0] ; |153| 
$C$L10:    
        SP = SP + #31
	.dwcfi	cfa_offset, 1
$C$DW$78	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$78, DW_AT_low_pc(0x00)
	.dwattr $C$DW$78, DW_AT_TI_return
        return
                                        ; return occurs

$C$DW$79	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$79, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\ecu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\siumgr.asm:$C$L8:1:1373047938")
	.dwattr $C$DW$79, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c")
	.dwattr $C$DW$79, DW_AT_TI_begin_line(0x97)
	.dwattr $C$DW$79, DW_AT_TI_end_line(0x97)
$C$DW$80	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$80, DW_AT_low_pc($C$DW$L$_siu_new_piu$12$B)
	.dwattr $C$DW$80, DW_AT_high_pc($C$DW$L$_siu_new_piu$12$E)
	.dwendtag $C$DW$79


$C$DW$81	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$81, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\ecu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\siumgr.asm:$C$L3:1:1373047938")
	.dwattr $C$DW$81, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c")
	.dwattr $C$DW$81, DW_AT_TI_begin_line(0x85)
	.dwattr $C$DW$81, DW_AT_TI_end_line(0x8b)
$C$DW$82	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$82, DW_AT_low_pc($C$DW$L$_siu_new_piu$6$B)
	.dwattr $C$DW$82, DW_AT_high_pc($C$DW$L$_siu_new_piu$6$E)
$C$DW$83	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$83, DW_AT_low_pc($C$DW$L$_siu_new_piu$8$B)
	.dwattr $C$DW$83, DW_AT_high_pc($C$DW$L$_siu_new_piu$8$E)
$C$DW$84	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$84, DW_AT_low_pc($C$DW$L$_siu_new_piu$9$B)
	.dwattr $C$DW$84, DW_AT_high_pc($C$DW$L$_siu_new_piu$9$E)
$C$DW$85	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$85, DW_AT_low_pc($C$DW$L$_siu_new_piu$10$B)
	.dwattr $C$DW$85, DW_AT_high_pc($C$DW$L$_siu_new_piu$10$E)

$C$DW$86	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$86, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\ecu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\siumgr.asm:$C$L4:2:1373047938")
	.dwattr $C$DW$86, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c")
	.dwattr $C$DW$86, DW_AT_TI_begin_line(0x86)
	.dwattr $C$DW$86, DW_AT_TI_end_line(0x86)
$C$DW$87	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$87, DW_AT_low_pc($C$DW$L$_siu_new_piu$7$B)
	.dwattr $C$DW$87, DW_AT_high_pc($C$DW$L$_siu_new_piu$7$E)
	.dwendtag $C$DW$86

	.dwendtag $C$DW$81

	.dwattr $C$DW$57, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c")
	.dwattr $C$DW$57, DW_AT_TI_end_line(0x9a)
	.dwattr $C$DW$57, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$57

	.sect	".text"
	.global	_siu_open_piu

$C$DW$88	.dwtag  DW_TAG_subprogram, DW_AT_name("siu_open_piu")
	.dwattr $C$DW$88, DW_AT_low_pc(_siu_open_piu)
	.dwattr $C$DW$88, DW_AT_high_pc(0x00)
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("_siu_open_piu")
	.dwattr $C$DW$88, DW_AT_external
	.dwattr $C$DW$88, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c")
	.dwattr $C$DW$88, DW_AT_TI_begin_line(0xb0)
	.dwattr $C$DW$88, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$88, DW_AT_TI_max_frame_size(0x16)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 177,column 1,is_stmt,address _siu_open_piu

	.dwfde $C$DW$CIE, _siu_open_piu
$C$DW$89	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chnum")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_chnum")
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$89, DW_AT_location[DW_OP_reg12]
$C$DW$90	.dwtag  DW_TAG_formal_parameter, DW_AT_name("frame_size")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_frame_size")
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$90, DW_AT_location[DW_OP_reg13]
;----------------------------------------------------------------------
; 176 | void siu_open_piu (tint chnum, tint frame_size)                        
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: siu_open_piu                                                 *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,CARRY,   *
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 22 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (20 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_siu_open_piu:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-21
	.dwcfi	cfa_offset, 22
$C$DW$91	.dwtag  DW_TAG_variable, DW_AT_name("chnum")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_chnum")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$91, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$92	.dwtag  DW_TAG_variable, DW_AT_name("frame_size")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_frame_size")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$93	.dwtag  DW_TAG_variable, DW_AT_name("piuCfg")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_piuCfg")
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$93, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$94	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$94, DW_AT_location[DW_OP_bregx 0x24 18]
;----------------------------------------------------------------------
; 178 | piuConfig_t piuCfg;                                                    
;----------------------------------------------------------------------
        *SP(#1) = T1 ; |177| 
        *SP(#0) = T0 ; |177| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 179,column 14,is_stmt
;----------------------------------------------------------------------
; 179 | siuInst_t *inst = &siuInst[chnum-1];                                   
;----------------------------------------------------------------------
        AC0 = *SP(#0) * #28 ; |179| 
        AR1 = AC0 - #28 ; |179| 
        XAR3 = #_siuInst ; |179| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 181,column 3,is_stmt
;----------------------------------------------------------------------
; 181 | piuCfg.transp_mode      = FALSE;                                       
;----------------------------------------------------------------------
        *SP(#2) = #0 ; |181| 

        dbl(*SP(#18)) = XAR3
||      mar(AR3 + AR1) ; |179| 

	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 182,column 3,is_stmt
;----------------------------------------------------------------------
; 182 | piuCfg.use_recv_out_buf = TRUE;                                        
;----------------------------------------------------------------------
        *SP(#12) = #1 ; |182| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 184,column 3,is_stmt
;----------------------------------------------------------------------
; 184 | piuCfg.rx_delay                 = 0;    /* removes jitter in piuReceive
;     | In() */                                                                
;----------------------------------------------------------------------
        *SP(#11) = #0 ; |184| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 185,column 3,is_stmt
;----------------------------------------------------------------------
; 185 | piuCfg.segment_size             = frame_size;                          
; 186 | piuCfg.sendOutProcTargetInst    = inst;                                
; 187 | piuCfg.sendOutIsrTargetInst     = inst;                                
; 188 | piuCfg.reportOutTargetInst      = inst;                                
;----------------------------------------------------------------------
        AR1 = *SP(#1) ; |185| 
        *SP(#3) = AR1 ; |185| 
        XAR3 = dbl(*SP(#18))
        dbl(*SP(#4)) = XAR3
        XAR3 = dbl(*SP(#18))
        dbl(*SP(#6)) = XAR3
        XAR3 = dbl(*SP(#18))
        dbl(*SP(#8)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 189,column 3,is_stmt
;----------------------------------------------------------------------
; 189 | piuCfg.max_pcm_val              = mua_TBL_MAX_PCM_VAL;                 
;----------------------------------------------------------------------
        *SP(#10) = #32632 ; |189| 
        XAR3 = dbl(*SP(#18))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 190,column 3,is_stmt
;----------------------------------------------------------------------
; 190 | if (inst->companding_law == const_COMP_MULAW_8) {                      
; 191 |   piuCfg.companding.law   = piu_COMP_ULAW;                             
;----------------------------------------------------------------------
        TC1 = (*AR3(#22) == #1) ; |190| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 192,column 5,is_stmt
;----------------------------------------------------------------------
; 192 | piuCfg.companding.pcm_expand_table = muaTblUlaw;                       
;----------------------------------------------------------------------
        XAR3 = #_muaTblUlaw ; |192| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 191,column 5,is_stmt
        if (TC1) execute (D_Unit) ||
           *SP(#14) = #1 ; |191| 
        if (TC1) execute (D_Unit) ||
           dbl(*SP(#16)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 193,column 3,is_stmt
        if (TC1) goto $C$L11 ; |193| 
                                        ; branchcc occurs ; |193| 
        XAR3 = dbl(*SP(#18))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 194,column 8,is_stmt
;----------------------------------------------------------------------
; 194 | else if (inst->companding_law == const_COMP_ALAW_8) {                  
;----------------------------------------------------------------------
        AR1 = *AR3(#22) ; |194| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 195,column 5,is_stmt
;----------------------------------------------------------------------
; 195 | piuCfg.companding.law   = piu_COMP_ALAW;                               
;----------------------------------------------------------------------
        if (AR1 == #0) execute (D_Unit) ||
           *SP(#14) = #0 ; |195| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 196,column 5,is_stmt
;----------------------------------------------------------------------
; 196 | piuCfg.companding.pcm_expand_table = muaTblAlaw;                       
;----------------------------------------------------------------------
        XAR3 = #_muaTblAlaw ; |196| 
        if (AR1 == #0) execute (D_Unit) ||
           dbl(*SP(#16)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 197,column 3,is_stmt
        if (AR1 == #0) goto $C$L11 ; |197| 
                                        ; branchcc occurs ; |197| 
        XAR3 = dbl(*SP(#18))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 198,column 8,is_stmt
;----------------------------------------------------------------------
; 198 | else if (inst->companding_law == const_COMP_LINEAR) {                  
; 199 |   piuCfg.companding.law   = piu_COMP_LINEAR;                           
;----------------------------------------------------------------------
        TC1 = (*AR3(#22) == #2) ; |198| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 200,column 5,is_stmt
;----------------------------------------------------------------------
; 200 | piuCfg.companding.pcm_expand_table = NULL;                             
;----------------------------------------------------------------------
        AC0 = #0  ; |200| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 199,column 5,is_stmt
        if (TC1) execute (D_Unit) ||
           *SP(#14) = #2 ; |199| 
        if (TC1) execute (D_Unit) ||
           dbl(*SP(#16)) = AC0
$C$L11:    
        XAR3 = dbl(*SP(#18))
        XAR1 = mar(*SP(#2))
        XAR0 = dbl(*AR3(#24))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 203,column 3,is_stmt
;----------------------------------------------------------------------
; 203 | piuOpen (inst->piuInst, &piuCfg);                                      
;----------------------------------------------------------------------
$C$DW$95	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$95, DW_AT_low_pc(0x00)
	.dwattr $C$DW$95, DW_AT_name("_piuOpen")
	.dwattr $C$DW$95, DW_AT_TI_call
        call #_piuOpen ; |203| 
                                        ; call occurs [#_piuOpen] ; |203| 
        SP = SP + #21
	.dwcfi	cfa_offset, 1
$C$DW$96	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$96, DW_AT_low_pc(0x00)
	.dwattr $C$DW$96, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$88, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c")
	.dwattr $C$DW$88, DW_AT_TI_end_line(0xcc)
	.dwattr $C$DW$88, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$88

	.sect	".text"
	.global	_siu_open_tx

$C$DW$97	.dwtag  DW_TAG_subprogram, DW_AT_name("siu_open_tx")
	.dwattr $C$DW$97, DW_AT_low_pc(_siu_open_tx)
	.dwattr $C$DW$97, DW_AT_high_pc(0x00)
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("_siu_open_tx")
	.dwattr $C$DW$97, DW_AT_external
	.dwattr $C$DW$97, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c")
	.dwattr $C$DW$97, DW_AT_TI_begin_line(0xd9)
	.dwattr $C$DW$97, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$97, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 218,column 1,is_stmt,address _siu_open_tx

	.dwfde $C$DW$CIE, _siu_open_tx
$C$DW$98	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chnum")
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("_chnum")
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$98, DW_AT_location[DW_OP_reg12]
$C$DW$99	.dwtag  DW_TAG_formal_parameter, DW_AT_name("frame_size")
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_frame_size")
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$99, DW_AT_location[DW_OP_reg13]
;----------------------------------------------------------------------
; 217 | void siu_open_tx (tint chnum, tint frame_size)                         
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: siu_open_tx                                                  *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,CARRY,   *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (10 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_siu_open_tx:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-11
	.dwcfi	cfa_offset, 12
$C$DW$100	.dwtag  DW_TAG_variable, DW_AT_name("chnum")
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("_chnum")
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$100, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$101	.dwtag  DW_TAG_variable, DW_AT_name("frame_size")
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_frame_size")
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$101, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$102	.dwtag  DW_TAG_variable, DW_AT_name("siuTxCfg")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("_siuTxCfg")
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$102, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$103	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$103, DW_AT_location[DW_OP_bregx 0x24 8]
;----------------------------------------------------------------------
; 219 | siuTxConfig_t siuTxCfg;                                                
;----------------------------------------------------------------------
        *SP(#1) = T1 ; |218| 
        *SP(#0) = T0 ; |218| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 220,column 14,is_stmt
;----------------------------------------------------------------------
; 220 | siuInst_t *inst = &siuInst[chnum-1];                                   
; 222 | siuTxCfg.send_frame_length    = frame_size;                            
; 223 | siuTxCfg.recv_frame_length    = frame_size;       /* same size for now
;     | */                                                                     
; 224 | #if SIU_TEC_ENABLE                                                     
; 225 | siuTxCfg.TxSendOut.fcn        = NULL;             /* Not used */       
; 226 | siuTxCfg.TxSendOut.targetInst = NULL;                                  
; 227 | #else                                                                  
;----------------------------------------------------------------------
        AC0 = *SP(#0) * #28 ; |220| 
        AR1 = AC0 - #28 ; |220| 
        XAR3 = #_siuInst ; |220| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 228,column 3,is_stmt
;----------------------------------------------------------------------
; 228 | siuTxCfg.TxSendOut.fcn        = ecuSendIn;        /* send samples to EC
;     | U */                                                                   
;----------------------------------------------------------------------
        AC0 = #(_ecuSendIn >> 16) << #16 ; |228| 

        dbl(*SP(#8)) = XAR3
||      mar(AR3 + AR1) ; |220| 

	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 222,column 3,is_stmt
        AR1 = *SP(#1) ; |222| 
        *SP(#2) = AR1 ; |222| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 223,column 3,is_stmt
        AR1 = *SP(#1) ; |223| 
        *SP(#3) = AR1 ; |223| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 228,column 3,is_stmt
;----------------------------------------------------------------------
; 229 | siuTxCfg.TxSendOut.targetInst = inst->ecuInst;                         
; 230 | #endif                                                                 
;----------------------------------------------------------------------
        AC0 = AC0 | #(_ecuSendIn & 0xffff) ; |228| 
        dbl(*SP(#4)) = AC0 ; |228| 
        XAR3 = dbl(*SP(#8))
        XAR1 = mar(*SP(#2))
        XAR3 = dbl(*AR3(#26))
        dbl(*SP(#6)) = XAR3
        XAR0 = dbl(*SP(#8))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c",line 231,column 3,is_stmt
;----------------------------------------------------------------------
; 231 | siuTxOpen (inst, &siuTxCfg);                                           
;----------------------------------------------------------------------
$C$DW$104	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$104, DW_AT_low_pc(0x00)
	.dwattr $C$DW$104, DW_AT_name("_siuTxOpen")
	.dwattr $C$DW$104, DW_AT_TI_call
        call #_siuTxOpen ; |231| 
                                        ; call occurs [#_siuTxOpen] ; |231| 
        SP = SP + #11
	.dwcfi	cfa_offset, 1
$C$DW$105	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$105, DW_AT_low_pc(0x00)
	.dwattr $C$DW$105, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$97, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siumgr.c")
	.dwattr $C$DW$97, DW_AT_TI_end_line(0xe8)
	.dwattr $C$DW$97, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$97

;*******************************************************************************
;* FAR STRINGS                                                                 *
;*******************************************************************************
	.sect	".const:.string"
	.align	2
$C$FSL1:	.string	"M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test"
	.string	"/src/siumgr.c(126)",0
	.align	2
$C$FSL2:	.string	"M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test"
	.string	"/src/siumgr.c(130)",0
	.align	2
$C$FSL3:	.string	"M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test"
	.string	"/src/siumgr.c(138)",0
	.align	2
$C$FSL4:	.string	"M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test"
	.string	"/src/siumgr.c(153)",0
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_piuGetSizes
	.global	_piuNew
	.global	_piuOpen
	.global	_siuTxOpen
	.global	_siuTxSendIn
	.global	_siuPiuReport
	.global	_siuPcmSampleTrace
	.global	_siuTxRxSendIn
	.global	_siuDebugInfoNew
	.global	_mhmAlloc
	.global	_ecuSendIn
	.global	_muaTblAlaw
	.global	_muaTblUlaw
	.global	_siuContext
	.global	_siuInst

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x06)
$C$DW$106	.dwtag  DW_TAG_member
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$106, DW_AT_name("mclass")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_mclass")
	.dwattr $C$DW$106, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$106, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$107	.dwtag  DW_TAG_member
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$107, DW_AT_name("log2align")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_log2align")
	.dwattr $C$DW$107, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$107, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$108	.dwtag  DW_TAG_member
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$108, DW_AT_name("size")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$108, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$108, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$109	.dwtag  DW_TAG_member
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$109, DW_AT_name("volat")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_volat")
	.dwattr $C$DW$109, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$109, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$110	.dwtag  DW_TAG_member
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$110, DW_AT_name("base")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_base")
	.dwattr $C$DW$110, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$110, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$29

$C$DW$T$65	.dwtag  DW_TAG_typedef, DW_AT_name("ecomemBuffer_t")
	.dwattr $C$DW$T$65, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$65, DW_AT_language(DW_LANG_C)
$C$DW$T$66	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$T$66, DW_AT_address_class(0x17)
$C$DW$111	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$65)
$C$DW$T$67	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$111)
$C$DW$T$68	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$T$68, DW_AT_address_class(0x17)
$C$DW$T$69	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$69, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$T$69, DW_AT_address_class(0x17)

$C$DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x02)
$C$DW$112	.dwtag  DW_TAG_member
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$112, DW_AT_name("max_samples_per_segment")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_max_samples_per_segment")
	.dwattr $C$DW$112, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$112, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$113	.dwtag  DW_TAG_member
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$113, DW_AT_name("rx_triple_buffering")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_rx_triple_buffering")
	.dwattr $C$DW$113, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$113, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$30

$C$DW$T$43	.dwtag  DW_TAG_typedef, DW_AT_name("piuSizeConfig_t")
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$43, DW_AT_language(DW_LANG_C)
$C$DW$T$70	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$70, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$70, DW_AT_address_class(0x17)

$C$DW$T$41	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x0c)
$C$DW$114	.dwtag  DW_TAG_member
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$114, DW_AT_name("max_pcm_val")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_max_pcm_val")
	.dwattr $C$DW$114, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$114, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$115	.dwtag  DW_TAG_member
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$115, DW_AT_name("debugInfo")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_debugInfo")
	.dwattr $C$DW$115, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$115, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$116	.dwtag  DW_TAG_member
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$116, DW_AT_name("reportOutFcn")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("_reportOutFcn")
	.dwattr $C$DW$116, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$116, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$117	.dwtag  DW_TAG_member
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$117, DW_AT_name("sendOutProcFcn")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_sendOutProcFcn")
	.dwattr $C$DW$117, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$117, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$118	.dwtag  DW_TAG_member
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$118, DW_AT_name("sendOutIsrFcn")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_sendOutIsrFcn")
	.dwattr $C$DW$118, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$118, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$119	.dwtag  DW_TAG_member
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$119, DW_AT_name("pcmSampleTrace")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_pcmSampleTrace")
	.dwattr $C$DW$119, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$119, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$41

$C$DW$T$42	.dwtag  DW_TAG_typedef, DW_AT_name("piuContext_t")
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$42, DW_AT_language(DW_LANG_C)

$C$DW$T$44	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x10)
$C$DW$120	.dwtag  DW_TAG_member
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$120, DW_AT_name("ID")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_ID")
	.dwattr $C$DW$120, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$120, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$121	.dwtag  DW_TAG_member
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$121, DW_AT_name("context")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("_context")
	.dwattr $C$DW$121, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$121, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$122	.dwtag  DW_TAG_member
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$122, DW_AT_name("sizeCfg")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_sizeCfg")
	.dwattr $C$DW$122, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$122, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$44

$C$DW$T$71	.dwtag  DW_TAG_typedef, DW_AT_name("piuNewConfig_t")
	.dwattr $C$DW$T$71, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$71, DW_AT_language(DW_LANG_C)
$C$DW$T$72	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$72, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$T$72, DW_AT_address_class(0x17)

$C$DW$T$47	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x04)
$C$DW$123	.dwtag  DW_TAG_member
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$123, DW_AT_name("law")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_law")
	.dwattr $C$DW$123, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$123, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$124	.dwtag  DW_TAG_member
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$124, DW_AT_name("pcm_expand_table")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_pcm_expand_table")
	.dwattr $C$DW$124, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$124, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$47

$C$DW$T$48	.dwtag  DW_TAG_typedef, DW_AT_name("piuCompandingCfg_t")
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$48, DW_AT_language(DW_LANG_C)

$C$DW$T$49	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$49, DW_AT_byte_size(0x10)
$C$DW$125	.dwtag  DW_TAG_member
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$125, DW_AT_name("transp_mode")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_transp_mode")
	.dwattr $C$DW$125, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$125, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$126	.dwtag  DW_TAG_member
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$126, DW_AT_name("segment_size")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_segment_size")
	.dwattr $C$DW$126, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$126, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$127	.dwtag  DW_TAG_member
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$127, DW_AT_name("sendOutProcTargetInst")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_sendOutProcTargetInst")
	.dwattr $C$DW$127, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$127, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$128	.dwtag  DW_TAG_member
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$128, DW_AT_name("sendOutIsrTargetInst")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_sendOutIsrTargetInst")
	.dwattr $C$DW$128, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$128, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$129	.dwtag  DW_TAG_member
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$129, DW_AT_name("reportOutTargetInst")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_reportOutTargetInst")
	.dwattr $C$DW$129, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$129, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$130	.dwtag  DW_TAG_member
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$130, DW_AT_name("max_pcm_val")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("_max_pcm_val")
	.dwattr $C$DW$130, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$130, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$131	.dwtag  DW_TAG_member
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$131, DW_AT_name("rx_delay")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("_rx_delay")
	.dwattr $C$DW$131, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$131, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$132	.dwtag  DW_TAG_member
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$132, DW_AT_name("use_recv_out_buf")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("_use_recv_out_buf")
	.dwattr $C$DW$132, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$132, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$133	.dwtag  DW_TAG_member
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$133, DW_AT_name("companding")
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("_companding")
	.dwattr $C$DW$133, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$133, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$49

$C$DW$T$73	.dwtag  DW_TAG_typedef, DW_AT_name("piuConfig_t")
	.dwattr $C$DW$T$73, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$T$73, DW_AT_language(DW_LANG_C)
$C$DW$T$74	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$74, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$T$74, DW_AT_address_class(0x17)

$C$DW$T$52	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x04)
$C$DW$134	.dwtag  DW_TAG_member
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$134, DW_AT_name("fcn")
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("_fcn")
	.dwattr $C$DW$134, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$134, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$135	.dwtag  DW_TAG_member
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$135, DW_AT_name("targetInst")
	.dwattr $C$DW$135, DW_AT_TI_symbol_name("_targetInst")
	.dwattr $C$DW$135, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$135, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$52

$C$DW$T$53	.dwtag  DW_TAG_typedef, DW_AT_name("siuTxSendOut_t")
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$T$53, DW_AT_language(DW_LANG_C)

$C$DW$T$54	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$54, DW_AT_byte_size(0x06)
$C$DW$136	.dwtag  DW_TAG_member
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$136, DW_AT_name("send_frame_length")
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("_send_frame_length")
	.dwattr $C$DW$136, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$136, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$137	.dwtag  DW_TAG_member
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$137, DW_AT_name("recv_frame_length")
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("_recv_frame_length")
	.dwattr $C$DW$137, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$137, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$138	.dwtag  DW_TAG_member
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$138, DW_AT_name("TxSendOut")
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("_TxSendOut")
	.dwattr $C$DW$138, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$138, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$54

$C$DW$T$75	.dwtag  DW_TAG_typedef, DW_AT_name("siuTxConfig_t")
	.dwattr $C$DW$T$75, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$T$75, DW_AT_language(DW_LANG_C)
$C$DW$T$76	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$76, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$T$76, DW_AT_address_class(0x17)

$C$DW$T$59	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$59, DW_AT_byte_size(0x0e)
$C$DW$139	.dwtag  DW_TAG_member
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$139, DW_AT_name("ID")
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_ID")
	.dwattr $C$DW$139, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$139, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$140	.dwtag  DW_TAG_member
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$140, DW_AT_name("exception")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_exception")
	.dwattr $C$DW$140, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$140, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$141	.dwtag  DW_TAG_member
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$141, DW_AT_name("debug")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("_debug")
	.dwattr $C$DW$141, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$141, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$142	.dwtag  DW_TAG_member
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$142, DW_AT_name("cheap_used")
	.dwattr $C$DW$142, DW_AT_TI_symbol_name("_cheap_used")
	.dwattr $C$DW$142, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$142, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$143	.dwtag  DW_TAG_member
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$143, DW_AT_name("cheap")
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("_cheap")
	.dwattr $C$DW$143, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$143, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$144	.dwtag  DW_TAG_member
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$144, DW_AT_name("vheap_used")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_vheap_used")
	.dwattr $C$DW$144, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$144, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$145	.dwtag  DW_TAG_member
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$145, DW_AT_name("vheap")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_vheap")
	.dwattr $C$DW$145, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$145, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$59

$C$DW$T$77	.dwtag  DW_TAG_typedef, DW_AT_name("siuContext_t")
	.dwattr $C$DW$T$77, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$T$77, DW_AT_language(DW_LANG_C)

$C$DW$T$62	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$62, DW_AT_byte_size(0x0c)
$C$DW$146	.dwtag  DW_TAG_member
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$146, DW_AT_name("enabled")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("_enabled")
	.dwattr $C$DW$146, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$146, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$147	.dwtag  DW_TAG_member
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$147, DW_AT_name("send_frame_length")
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("_send_frame_length")
	.dwattr $C$DW$147, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$147, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$148	.dwtag  DW_TAG_member
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$148, DW_AT_name("recv_frame_length")
	.dwattr $C$DW$148, DW_AT_TI_symbol_name("_recv_frame_length")
	.dwattr $C$DW$148, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$148, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$149	.dwtag  DW_TAG_member
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$149, DW_AT_name("send_frame_ptr")
	.dwattr $C$DW$149, DW_AT_TI_symbol_name("_send_frame_ptr")
	.dwattr $C$DW$149, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$149, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$150	.dwtag  DW_TAG_member
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$150, DW_AT_name("recv_frame_ptr")
	.dwattr $C$DW$150, DW_AT_TI_symbol_name("_recv_frame_ptr")
	.dwattr $C$DW$150, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$150, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$151	.dwtag  DW_TAG_member
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$151, DW_AT_name("TxSendOut")
	.dwattr $C$DW$151, DW_AT_TI_symbol_name("_TxSendOut")
	.dwattr $C$DW$151, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$151, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$62

$C$DW$T$63	.dwtag  DW_TAG_typedef, DW_AT_name("siuTxInst_t")
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$T$63, DW_AT_language(DW_LANG_C)

$C$DW$T$64	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$64, DW_AT_byte_size(0x1c)
$C$DW$152	.dwtag  DW_TAG_member
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$152, DW_AT_name("ID")
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("_ID")
	.dwattr $C$DW$152, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$152, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$153	.dwtag  DW_TAG_member
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$153, DW_AT_name("exception")
	.dwattr $C$DW$153, DW_AT_TI_symbol_name("_exception")
	.dwattr $C$DW$153, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$153, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$154	.dwtag  DW_TAG_member
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$154, DW_AT_name("debug")
	.dwattr $C$DW$154, DW_AT_TI_symbol_name("_debug")
	.dwattr $C$DW$154, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$154, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$155	.dwtag  DW_TAG_member
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$155, DW_AT_name("TxInst")
	.dwattr $C$DW$155, DW_AT_TI_symbol_name("_TxInst")
	.dwattr $C$DW$155, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$155, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$156	.dwtag  DW_TAG_member
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$156, DW_AT_name("slmInst")
	.dwattr $C$DW$156, DW_AT_TI_symbol_name("_slmInst")
	.dwattr $C$DW$156, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$156, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$157	.dwtag  DW_TAG_member
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$157, DW_AT_name("cheap_used")
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("_cheap_used")
	.dwattr $C$DW$157, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$157, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$158	.dwtag  DW_TAG_member
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$158, DW_AT_name("vheap_used")
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("_vheap_used")
	.dwattr $C$DW$158, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$158, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$159	.dwtag  DW_TAG_member
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$159, DW_AT_name("companding_law")
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("_companding_law")
	.dwattr $C$DW$159, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$159, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$160	.dwtag  DW_TAG_member
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$160, DW_AT_name("pcm_bits")
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("_pcm_bits")
	.dwattr $C$DW$160, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$160, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$161	.dwtag  DW_TAG_member
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$161, DW_AT_name("piuInst")
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("_piuInst")
	.dwattr $C$DW$161, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$161, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$162	.dwtag  DW_TAG_member
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$162, DW_AT_name("ecuInst")
	.dwattr $C$DW$162, DW_AT_TI_symbol_name("_ecuInst")
	.dwattr $C$DW$162, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$162, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$64

$C$DW$T$78	.dwtag  DW_TAG_typedef, DW_AT_name("siuInst_t")
	.dwattr $C$DW$T$78, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$78, DW_AT_language(DW_LANG_C)

$C$DW$T$79	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$79, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$T$79, DW_AT_language(DW_LANG_C)
$C$DW$163	.dwtag  DW_TAG_subrange_type
	.dwendtag $C$DW$T$79

$C$DW$T$80	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$80, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$T$80, DW_AT_address_class(0x17)
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x17)
$C$DW$T$81	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$81, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$T$81, DW_AT_address_class(0x17)

$C$DW$T$32	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$32, DW_AT_language(DW_LANG_C)
$C$DW$164	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$3)
$C$DW$165	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$24)
$C$DW$166	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$24)
$C$DW$167	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$24)
$C$DW$168	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$31)
	.dwendtag $C$DW$T$32

$C$DW$T$33	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$33, DW_AT_address_class(0x20)
$C$DW$T$34	.dwtag  DW_TAG_typedef, DW_AT_name("dbgInfo_t")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)

$C$DW$T$35	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$35, DW_AT_language(DW_LANG_C)
$C$DW$169	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$3)
$C$DW$170	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$T$35

$C$DW$T$36	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$36, DW_AT_address_class(0x20)

$C$DW$T$37	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
$C$DW$171	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$3)
$C$DW$172	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$3)
$C$DW$173	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$3)
$C$DW$174	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$T$37

$C$DW$T$38	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$38, DW_AT_address_class(0x20)

$C$DW$T$39	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$39, DW_AT_language(DW_LANG_C)
$C$DW$175	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$21)
$C$DW$176	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$21)
$C$DW$177	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$3)
$C$DW$178	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$24)
	.dwendtag $C$DW$T$39

$C$DW$T$40	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$40, DW_AT_address_class(0x20)

$C$DW$T$50	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$50, DW_AT_language(DW_LANG_C)
$C$DW$179	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$3)
$C$DW$180	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$3)
$C$DW$181	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$3)
$C$DW$182	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$T$50

$C$DW$T$51	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$51, DW_AT_address_class(0x20)

$C$DW$T$57	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$57, DW_AT_language(DW_LANG_C)
$C$DW$183	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$24)
$C$DW$184	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$56)
	.dwendtag $C$DW$T$57

$C$DW$T$58	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$58, DW_AT_address_class(0x20)
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
$C$DW$T$93	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$93, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$93, DW_AT_address_class(0x17)
$C$DW$T$60	.dwtag  DW_TAG_typedef, DW_AT_name("linSample")
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$60, DW_AT_language(DW_LANG_C)
$C$DW$T$61	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$61, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$T$61, DW_AT_address_class(0x17)
$C$DW$185	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$21)
$C$DW$T$45	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$185)
$C$DW$T$46	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$46, DW_AT_address_class(0x17)

$C$DW$T$98	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$98, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$98, DW_AT_language(DW_LANG_C)
$C$DW$186	.dwtag  DW_TAG_subrange_type
	.dwendtag $C$DW$T$98

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
$C$DW$T$55	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$55, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$55, DW_AT_name("signed char")
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x01)
$C$DW$T$56	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$T$56, DW_AT_address_class(0x17)
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

$C$DW$187	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$187, DW_AT_location[DW_OP_reg0]
$C$DW$188	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$188, DW_AT_location[DW_OP_reg1]
$C$DW$189	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$189, DW_AT_location[DW_OP_reg2]
$C$DW$190	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$190, DW_AT_location[DW_OP_reg3]
$C$DW$191	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$191, DW_AT_location[DW_OP_reg4]
$C$DW$192	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$192, DW_AT_location[DW_OP_reg5]
$C$DW$193	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$193, DW_AT_location[DW_OP_reg6]
$C$DW$194	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$194, DW_AT_location[DW_OP_reg7]
$C$DW$195	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$195, DW_AT_location[DW_OP_reg8]
$C$DW$196	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$196, DW_AT_location[DW_OP_reg9]
$C$DW$197	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$197, DW_AT_location[DW_OP_reg10]
$C$DW$198	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$198, DW_AT_location[DW_OP_reg11]
$C$DW$199	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$199, DW_AT_location[DW_OP_reg12]
$C$DW$200	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$200, DW_AT_location[DW_OP_reg13]
$C$DW$201	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$201, DW_AT_location[DW_OP_reg14]
$C$DW$202	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$202, DW_AT_location[DW_OP_reg15]
$C$DW$203	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$203, DW_AT_location[DW_OP_reg16]
$C$DW$204	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$204, DW_AT_location[DW_OP_reg17]
$C$DW$205	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$205, DW_AT_location[DW_OP_reg18]
$C$DW$206	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$206, DW_AT_location[DW_OP_reg19]
$C$DW$207	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$207, DW_AT_location[DW_OP_reg20]
$C$DW$208	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$208, DW_AT_location[DW_OP_reg21]
$C$DW$209	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$209, DW_AT_location[DW_OP_reg22]
$C$DW$210	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$210, DW_AT_location[DW_OP_reg23]
$C$DW$211	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$211, DW_AT_location[DW_OP_reg24]
$C$DW$212	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$212, DW_AT_location[DW_OP_reg25]
$C$DW$213	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$213, DW_AT_location[DW_OP_reg26]
$C$DW$214	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$214, DW_AT_location[DW_OP_reg27]
$C$DW$215	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$215, DW_AT_location[DW_OP_reg28]
$C$DW$216	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$216, DW_AT_location[DW_OP_reg29]
$C$DW$217	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$217, DW_AT_location[DW_OP_reg30]
$C$DW$218	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$218, DW_AT_location[DW_OP_reg31]
$C$DW$219	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$219, DW_AT_location[DW_OP_regx 0x20]
$C$DW$220	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$220, DW_AT_location[DW_OP_regx 0x21]
$C$DW$221	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$221, DW_AT_location[DW_OP_regx 0x22]
$C$DW$222	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$222, DW_AT_location[DW_OP_regx 0x23]
$C$DW$223	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$223, DW_AT_location[DW_OP_regx 0x24]
$C$DW$224	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$224, DW_AT_location[DW_OP_regx 0x25]
$C$DW$225	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$225, DW_AT_location[DW_OP_regx 0x26]
$C$DW$226	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$226, DW_AT_location[DW_OP_regx 0x27]
$C$DW$227	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$227, DW_AT_location[DW_OP_regx 0x28]
$C$DW$228	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$228, DW_AT_location[DW_OP_regx 0x29]
$C$DW$229	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$229, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$230	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$230, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$231	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$231, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$232	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$232, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$233	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$233, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$234	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$234, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$235	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$235, DW_AT_location[DW_OP_regx 0x30]
$C$DW$236	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$236, DW_AT_location[DW_OP_regx 0x31]
$C$DW$237	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$237, DW_AT_location[DW_OP_regx 0x32]
$C$DW$238	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$238, DW_AT_location[DW_OP_regx 0x33]
$C$DW$239	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$239, DW_AT_location[DW_OP_regx 0x34]
$C$DW$240	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$240, DW_AT_location[DW_OP_regx 0x35]
$C$DW$241	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$241, DW_AT_location[DW_OP_regx 0x36]
$C$DW$242	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$242, DW_AT_location[DW_OP_regx 0x37]
$C$DW$243	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$243, DW_AT_location[DW_OP_regx 0x38]
$C$DW$244	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$244, DW_AT_location[DW_OP_regx 0x39]
$C$DW$245	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$245, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$246	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$246, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$247	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$247, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$248	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$248, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$249	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$249, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$250	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$250, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$251	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$251, DW_AT_location[DW_OP_regx 0x40]
$C$DW$252	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$252, DW_AT_location[DW_OP_regx 0x41]
$C$DW$253	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$253, DW_AT_location[DW_OP_regx 0x42]
$C$DW$254	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$254, DW_AT_location[DW_OP_regx 0x43]
$C$DW$255	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$255, DW_AT_location[DW_OP_regx 0x44]
$C$DW$256	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$256, DW_AT_location[DW_OP_regx 0x45]
$C$DW$257	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$257, DW_AT_location[DW_OP_regx 0x46]
$C$DW$258	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$258, DW_AT_location[DW_OP_regx 0x47]
$C$DW$259	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$259, DW_AT_location[DW_OP_regx 0x48]
$C$DW$260	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$260, DW_AT_location[DW_OP_regx 0x49]
$C$DW$261	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$261, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$262	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$262, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$263	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$263, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$264	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$264, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$265	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$265, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$266	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$266, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$267	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$267, DW_AT_location[DW_OP_regx 0x50]
$C$DW$268	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$268, DW_AT_location[DW_OP_regx 0x51]
$C$DW$269	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$269, DW_AT_location[DW_OP_regx 0x52]
$C$DW$270	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$270, DW_AT_location[DW_OP_regx 0x53]
$C$DW$271	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$271, DW_AT_location[DW_OP_regx 0x54]
$C$DW$272	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$272, DW_AT_location[DW_OP_regx 0x55]
$C$DW$273	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$273, DW_AT_location[DW_OP_regx 0x56]
$C$DW$274	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$274, DW_AT_location[DW_OP_regx 0x57]
$C$DW$275	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$275, DW_AT_location[DW_OP_regx 0x58]
$C$DW$276	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$276, DW_AT_location[DW_OP_regx 0x59]
$C$DW$277	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$277, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$278	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$278, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

