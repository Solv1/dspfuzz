;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                          PC v4.4.1 *
;* Date/Time created: Fri Jul 05 14:12:12 2013                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen PC v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\ecu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug")
;******************************************************************************
;* CINIT RECORDS                                                              *
;******************************************************************************
	.sect	".cinit"
	.align	1
	.field  	2,16
	.field  	_sgnTxInst+0,24
	.field  	0,8
	.field	0,32			; _sgnTxInst @ 0

	.sect	".cinit"
	.align	1
	.field  	2,16
	.field  	_sgnRxInst+0,24
	.field  	0,8
	.field	0,32			; _sgnRxInst @ 0

	.sect	".cinit"
	.align	1
	.field  	2,16
	.field  	_hybTxInst+0,24
	.field  	0,8
	.field	0,32			; _hybTxInst @ 0

	.sect	".cinit"
	.align	1
	.field  	1,16
	.field  	_v21_flags+0,24
	.field  	0,8
	.field	32382,16			; _v21_flags @ 0

	.sect	".cinit"
	.align	1
	.field  	1,16
	.field  	_gelFlag+0,24
	.field  	0,8
	.field	0,16			; _gelFlag @ 0

	.sect	".cinit"
	.align	1
	.field  	$C$IR_1,16
	.field  	_seg_end+0,24
	.field  	0,8
	.field	255,16			; _seg_end[0] @ 0
	.field	511,16			; _seg_end[1] @ 16
	.field	1023,16			; _seg_end[2] @ 32
	.field	2047,16			; _seg_end[3] @ 48
	.field	4095,16			; _seg_end[4] @ 64
	.field	8191,16			; _seg_end[5] @ 80
	.field	16383,16			; _seg_end[6] @ 96
	.field	32767,16			; _seg_end[7] @ 112
$C$IR_1:	.set	8

	.sect	".cinit"
	.align	1
	.field  	2,16
	.field  	_ecuSim+0,24
	.field  	0,8
	.field	_siuSetup,32		; _ecuSim @ 0


$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("malloc")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_malloc")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$156)
	.dwendtag $C$DW$1


$C$DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("strcpy")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_strcpy")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$48)
$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$234)
	.dwendtag $C$DW$3


$C$DW$6	.dwtag  DW_TAG_subprogram, DW_AT_name("strcat")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_strcat")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$6, DW_AT_declaration
	.dwattr $C$DW$6, DW_AT_external
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$48)
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$234)
	.dwendtag $C$DW$6


$C$DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("sgnGetSizes")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_sgnGetSizes")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$9, DW_AT_declaration
	.dwattr $C$DW$9, DW_AT_external
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$27)
	.dwendtag $C$DW$9


$C$DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("sgnControl")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_sgnControl")
	.dwattr $C$DW$11, DW_AT_declaration
	.dwattr $C$DW$11, DW_AT_external
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$3)
$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$118)
	.dwendtag $C$DW$11


$C$DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("sgnGenerateFrame")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_sgnGenerateFrame")
	.dwattr $C$DW$14, DW_AT_declaration
	.dwattr $C$DW$14, DW_AT_external
$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$3)
$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$21)
$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$14


$C$DW$18	.dwtag  DW_TAG_subprogram, DW_AT_name("sgnInit")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_sgnInit")
	.dwattr $C$DW$18, DW_AT_declaration
	.dwattr $C$DW$18, DW_AT_external
$C$DW$19	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$3)
$C$DW$20	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$120)
	.dwendtag $C$DW$18


$C$DW$21	.dwtag  DW_TAG_subprogram, DW_AT_name("hybOpen")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_hybOpen")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$21, DW_AT_declaration
	.dwattr $C$DW$21, DW_AT_external
$C$DW$22	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$3)
$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$122)
	.dwendtag $C$DW$21


$C$DW$24	.dwtag  DW_TAG_subprogram, DW_AT_name("hybNew")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_hybNew")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$24, DW_AT_declaration
	.dwattr $C$DW$24, DW_AT_external
$C$DW$25	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$159)
$C$DW$26	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$21)
$C$DW$27	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$124)
$C$DW$28	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$131)
	.dwendtag $C$DW$24


$C$DW$29	.dwtag  DW_TAG_subprogram, DW_AT_name("hybGetSizes")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_hybGetSizes")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$29, DW_AT_declaration
	.dwattr $C$DW$29, DW_AT_external
$C$DW$30	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$27)
$C$DW$31	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$129)
$C$DW$32	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$133)
	.dwendtag $C$DW$29


$C$DW$33	.dwtag  DW_TAG_subprogram, DW_AT_name("mhmAlloc")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_mhmAlloc")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$33, DW_AT_declaration
	.dwattr $C$DW$33, DW_AT_external
$C$DW$34	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$3)
$C$DW$35	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$37)
	.dwendtag $C$DW$33


$C$DW$36	.dwtag  DW_TAG_subprogram, DW_AT_name("ecuOpen")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_ecuOpen")
	.dwattr $C$DW$36, DW_AT_declaration
	.dwattr $C$DW$36, DW_AT_external
$C$DW$37	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$3)
$C$DW$38	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$135)
	.dwendtag $C$DW$36


$C$DW$39	.dwtag  DW_TAG_subprogram, DW_AT_name("ecuGetSizes")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_ecuGetSizes")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$39, DW_AT_declaration
	.dwattr $C$DW$39, DW_AT_external
$C$DW$40	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$27)
$C$DW$41	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$129)
$C$DW$42	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$196)
	.dwendtag $C$DW$39


$C$DW$43	.dwtag  DW_TAG_subprogram, DW_AT_name("ecuNew")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_ecuNew")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$43, DW_AT_declaration
	.dwattr $C$DW$43, DW_AT_external
$C$DW$44	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$159)
$C$DW$45	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$21)
$C$DW$46	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$124)
$C$DW$47	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$137)
	.dwendtag $C$DW$43


$C$DW$48	.dwtag  DW_TAG_subprogram, DW_AT_name("siuException")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_siuException")
	.dwattr $C$DW$48, DW_AT_declaration
	.dwattr $C$DW$48, DW_AT_external
$C$DW$49	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$37)
$C$DW$50	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$48)
	.dwendtag $C$DW$48


$C$DW$51	.dwtag  DW_TAG_subprogram, DW_AT_name("piuTxRxProc")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_piuTxRxProc")
	.dwattr $C$DW$51, DW_AT_declaration
	.dwattr $C$DW$51, DW_AT_external
$C$DW$52	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$3)
$C$DW$53	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$30)
$C$DW$54	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$30)
	.dwendtag $C$DW$51


$C$DW$55	.dwtag  DW_TAG_subprogram, DW_AT_name("ecu_sim_input")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_ecu_sim_input")
	.dwattr $C$DW$55, DW_AT_declaration
	.dwattr $C$DW$55, DW_AT_external
$C$DW$56	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$80)
$C$DW$57	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$30)
	.dwendtag $C$DW$55


$C$DW$58	.dwtag  DW_TAG_subprogram, DW_AT_name("ecu_sim_fread")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_ecu_sim_fread")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$58, DW_AT_declaration
	.dwattr $C$DW$58, DW_AT_external
$C$DW$59	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$80)
$C$DW$60	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$21)
$C$DW$61	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$140)
	.dwendtag $C$DW$58


$C$DW$62	.dwtag  DW_TAG_subprogram, DW_AT_name("ecu_halt")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_ecu_halt")
	.dwattr $C$DW$62, DW_AT_declaration
	.dwattr $C$DW$62, DW_AT_external
$C$DW$63	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$177)
	.dwendtag $C$DW$62

$C$DW$64	.dwtag  DW_TAG_variable, DW_AT_name("muaTblAlaw")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_muaTblAlaw")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$219)
	.dwattr $C$DW$64, DW_AT_declaration
	.dwattr $C$DW$64, DW_AT_external
$C$DW$65	.dwtag  DW_TAG_variable, DW_AT_name("muaTblUlaw")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_muaTblUlaw")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$219)
	.dwattr $C$DW$65, DW_AT_declaration
	.dwattr $C$DW$65, DW_AT_external
$C$DW$66	.dwtag  DW_TAG_variable, DW_AT_name("siuContext")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_siuContext")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$66, DW_AT_declaration
	.dwattr $C$DW$66, DW_AT_external
$C$DW$67	.dwtag  DW_TAG_variable, DW_AT_name("siuInst")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_siuInst")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$145)
	.dwattr $C$DW$67, DW_AT_declaration
	.dwattr $C$DW$67, DW_AT_external
$C$DW$68	.dwtag  DW_TAG_variable, DW_AT_name("iramSeg")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_iramSeg")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$68, DW_AT_declaration
	.dwattr $C$DW$68, DW_AT_external
	.global	_siuInStream
	.bss	_siuInStream,80,0,0
$C$DW$69	.dwtag  DW_TAG_variable, DW_AT_name("siuInStream")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_siuInStream")
	.dwattr $C$DW$69, DW_AT_location[DW_OP_addr _siuInStream]
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$215)
	.dwattr $C$DW$69, DW_AT_external
	.global	_siuInUCmpStream
	.bss	_siuInUCmpStream,80,0,0
$C$DW$70	.dwtag  DW_TAG_variable, DW_AT_name("siuInUCmpStream")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_siuInUCmpStream")
	.dwattr $C$DW$70, DW_AT_location[DW_OP_addr _siuInUCmpStream]
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$227)
	.dwattr $C$DW$70, DW_AT_external
	.global	_siuInACmpStream
	.bss	_siuInACmpStream,80,0,0
$C$DW$71	.dwtag  DW_TAG_variable, DW_AT_name("siuInACmpStream")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_siuInACmpStream")
	.dwattr $C$DW$71, DW_AT_location[DW_OP_addr _siuInACmpStream]
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$227)
	.dwattr $C$DW$71, DW_AT_external
	.global	_siuRxInStream
	.bss	_siuRxInStream,80,0,0
$C$DW$72	.dwtag  DW_TAG_variable, DW_AT_name("siuRxInStream")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_siuRxInStream")
	.dwattr $C$DW$72, DW_AT_location[DW_OP_addr _siuRxInStream]
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$217)
	.dwattr $C$DW$72, DW_AT_external
	.global	_siuOutStream
	.bss	_siuOutStream,80,0,0
$C$DW$73	.dwtag  DW_TAG_variable, DW_AT_name("siuOutStream")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_siuOutStream")
	.dwattr $C$DW$73, DW_AT_location[DW_OP_addr _siuOutStream]
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$217)
	.dwattr $C$DW$73, DW_AT_external
	.global	_siuOutErrStream
	.bss	_siuOutErrStream,80,0,0
$C$DW$74	.dwtag  DW_TAG_variable, DW_AT_name("siuOutErrStream")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_siuOutErrStream")
	.dwattr $C$DW$74, DW_AT_location[DW_OP_addr _siuOutErrStream]
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$217)
	.dwattr $C$DW$74, DW_AT_external
$C$DW$75	.dwtag  DW_TAG_variable, DW_AT_name("piu_segment_in")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_piu_segment_in")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$75, DW_AT_declaration
	.dwattr $C$DW$75, DW_AT_external
	.global	_sgnTxInst
	.bss	_sgnTxInst,2,0,2
$C$DW$76	.dwtag  DW_TAG_variable, DW_AT_name("sgnTxInst")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_sgnTxInst")
	.dwattr $C$DW$76, DW_AT_location[DW_OP_addr _sgnTxInst]
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$76, DW_AT_external
	.global	_sgnRxInst
	.bss	_sgnRxInst,2,0,2
$C$DW$77	.dwtag  DW_TAG_variable, DW_AT_name("sgnRxInst")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_sgnRxInst")
	.dwattr $C$DW$77, DW_AT_location[DW_OP_addr _sgnRxInst]
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$77, DW_AT_external
	.global	_hybTxInst
	.bss	_hybTxInst,2,0,2
$C$DW$78	.dwtag  DW_TAG_variable, DW_AT_name("hybTxInst")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_hybTxInst")
	.dwattr $C$DW$78, DW_AT_location[DW_OP_addr _hybTxInst]
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$78, DW_AT_external
	.global	_hybUserFilter
	.bss	_hybUserFilter,256,0,0
$C$DW$79	.dwtag  DW_TAG_variable, DW_AT_name("hybUserFilter")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_hybUserFilter")
	.dwattr $C$DW$79, DW_AT_location[DW_OP_addr _hybUserFilter]
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$197)
	.dwattr $C$DW$79, DW_AT_external
	.global	_v21_flags
	.bss	_v21_flags,1,0,0
$C$DW$80	.dwtag  DW_TAG_variable, DW_AT_name("v21_flags")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_v21_flags")
	.dwattr $C$DW$80, DW_AT_location[DW_OP_addr _v21_flags]
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$80, DW_AT_external
	.global	_gelFlag
	.bss	_gelFlag,1,0,0
$C$DW$81	.dwtag  DW_TAG_variable, DW_AT_name("gelFlag")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_gelFlag")
	.dwattr $C$DW$81, DW_AT_location[DW_OP_addr _gelFlag]
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$81, DW_AT_external
	.bss	_seg_end,8,0,0
$C$DW$82	.dwtag  DW_TAG_variable, DW_AT_name("seg_end")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_seg_end")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$216)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_addr _seg_end]
	.global	_siuSetup
	.bss	_siuSetup,1134,0,2
$C$DW$83	.dwtag  DW_TAG_variable, DW_AT_name("siuSetup")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_siuSetup")
	.dwattr $C$DW$83, DW_AT_location[DW_OP_addr _siuSetup]
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$252)
	.dwattr $C$DW$83, DW_AT_external
	.global	_ecuSim
	.bss	_ecuSim,2,0,2
$C$DW$84	.dwtag  DW_TAG_variable, DW_AT_name("ecuSim")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_ecuSim")
	.dwattr $C$DW$84, DW_AT_location[DW_OP_addr _ecuSim]
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$253)
	.dwattr $C$DW$84, DW_AT_external
	.global	_rinBuffer
	.bss	_rinBuffer,80,0,0
$C$DW$85	.dwtag  DW_TAG_variable, DW_AT_name("rinBuffer")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_rinBuffer")
	.dwattr $C$DW$85, DW_AT_location[DW_OP_addr _rinBuffer]
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$231)
	.dwattr $C$DW$85, DW_AT_external
	.global	_sinBuffer
	.bss	_sinBuffer,80,0,0
$C$DW$86	.dwtag  DW_TAG_variable, DW_AT_name("sinBuffer")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("_sinBuffer")
	.dwattr $C$DW$86, DW_AT_location[DW_OP_addr _sinBuffer]
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$231)
	.dwattr $C$DW$86, DW_AT_external
	.global	_routBuffer
	.bss	_routBuffer,80,0,0
$C$DW$87	.dwtag  DW_TAG_variable, DW_AT_name("routBuffer")
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("_routBuffer")
	.dwattr $C$DW$87, DW_AT_location[DW_OP_addr _routBuffer]
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$231)
	.dwattr $C$DW$87, DW_AT_external
	.global	_soutBuffer
	.bss	_soutBuffer,80,0,0
$C$DW$88	.dwtag  DW_TAG_variable, DW_AT_name("soutBuffer")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("_soutBuffer")
	.dwattr $C$DW$88, DW_AT_location[DW_OP_addr _soutBuffer]
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$231)
	.dwattr $C$DW$88, DW_AT_external
	.global	_siu_piu_report_code
	.bss	_siu_piu_report_code,1,0,0
$C$DW$89	.dwtag  DW_TAG_variable, DW_AT_name("siu_piu_report_code")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_siu_piu_report_code")
	.dwattr $C$DW$89, DW_AT_location[DW_OP_addr _siu_piu_report_code]
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$89, DW_AT_external
;	C:\MAS_Tools\CCSV5_2_1\ccsv5\tools\compiler\c5500_4.4.1\bin\acp55.exe -@C:\\DOCUME~1\\a0868396\\LOCALS~1\\Temp\\1115612 
	.sect	".text"

$C$DW$90	.dwtag  DW_TAG_subprogram, DW_AT_name("siuVAlloc")
	.dwattr $C$DW$90, DW_AT_low_pc(_siuVAlloc)
	.dwattr $C$DW$90, DW_AT_high_pc(0x00)
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_siuVAlloc")
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$90, DW_AT_TI_begin_file("../../../../../../../ti/mas/ecu/test/src/siuloc.h")
	.dwattr $C$DW$90, DW_AT_TI_begin_line(0xed)
	.dwattr $C$DW$90, DW_AT_TI_begin_column(0x15)
	.dwattr $C$DW$90, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "../../../../../../../ti/mas/ecu/test/src/siuloc.h",line 238,column 1,is_stmt,address _siuVAlloc

	.dwfde $C$DW$CIE, _siuVAlloc
$C$DW$91	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$91, DW_AT_location[DW_OP_reg12]
;----------------------------------------------------------------------
; 237 | static inline void *siuVAlloc (tuint size)                             
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: siuVAlloc                                                    *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,SP,M40,SATA,SATD,RDM,FRCT,SMUL           *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 2 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (1 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_siuVAlloc:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-1
	.dwcfi	cfa_offset, 2
$C$DW$92	.dwtag  DW_TAG_variable, DW_AT_name("size")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_bregx 0x24 0]
        XAR0 = dbl(*(#(_siuContext+12)))
        *SP(#0) = T0 ; |238| 
	.dwpsn	file "../../../../../../../ti/mas/ecu/test/src/siuloc.h",line 239,column 3,is_stmt
;----------------------------------------------------------------------
; 239 | return (mhmAlloc (siuContext.vheap, size));                            
;----------------------------------------------------------------------
$C$DW$93	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$93, DW_AT_low_pc(0x00)
	.dwattr $C$DW$93, DW_AT_name("_mhmAlloc")
	.dwattr $C$DW$93, DW_AT_TI_call
        call #_mhmAlloc ; |239| 
                                        ; call occurs [#_mhmAlloc] ; |239| 
        SP = SP + #1
	.dwcfi	cfa_offset, 1
$C$DW$94	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$94, DW_AT_low_pc(0x00)
	.dwattr $C$DW$94, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$90, DW_AT_TI_end_file("../../../../../../../ti/mas/ecu/test/src/siuloc.h")
	.dwattr $C$DW$90, DW_AT_TI_end_line(0xf0)
	.dwattr $C$DW$90, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$90

	.sect	".text"

$C$DW$95	.dwtag  DW_TAG_subprogram, DW_AT_name("search")
	.dwattr $C$DW$95, DW_AT_low_pc(_search)
	.dwattr $C$DW$95, DW_AT_high_pc(0x00)
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("_search")
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$95, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c")
	.dwattr $C$DW$95, DW_AT_TI_begin_line(0xb1)
	.dwattr $C$DW$95, DW_AT_TI_begin_column(0x14)
	.dwattr $C$DW$95, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 178,column 1,is_stmt,address _search

	.dwfde $C$DW$CIE, _search
$C$DW$96	.dwtag  DW_TAG_formal_parameter, DW_AT_name("val")
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("_val")
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$96, DW_AT_location[DW_OP_reg12]
$C$DW$97	.dwtag  DW_TAG_formal_parameter, DW_AT_name("table")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("_table")
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$97, DW_AT_location[DW_OP_reg17]
$C$DW$98	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size")
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$98, DW_AT_location[DW_OP_reg13]
;----------------------------------------------------------------------
; 177 | static inline tint search (tint val, tint *table, tint size)           
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: search                                                       *
;*                                                                             *
;*   Function Uses Regs : T0,T1,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,CARRY,TC1,M40,    *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_search:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-7
	.dwcfi	cfa_offset, 8
$C$DW$99	.dwtag  DW_TAG_variable, DW_AT_name("val")
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_val")
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$99, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$100	.dwtag  DW_TAG_variable, DW_AT_name("table")
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("_table")
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$100, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$101	.dwtag  DW_TAG_variable, DW_AT_name("size")
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$101, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$102	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$102, DW_AT_location[DW_OP_bregx 0x24 5]
;----------------------------------------------------------------------
; 179 | int i;                                                                 
;----------------------------------------------------------------------
        *SP(#4) = T1 ; |178| 
        dbl(*SP(#2)) = XAR0
        *SP(#0) = T0 ; |178| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 181,column 8,is_stmt
;----------------------------------------------------------------------
; 181 | for (i = 0; i < size; i++) {                                           
;----------------------------------------------------------------------
        *SP(#5) = #0 ; |181| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 181,column 15,is_stmt
        AR1 = *SP(#4) ; |181| 
        AR2 = *SP(#5) ; |181| 
        TC1 = (AR2 >= AR1) ; |181| 
        if (TC1) goto $C$L2 ; |181| 
                                        ; branchcc occurs ; |181| 
$C$L1:    
$C$DW$L$_search$2$B:
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 182,column 5,is_stmt
;----------------------------------------------------------------------
; 182 | if (val <= *table++)                                                   
;----------------------------------------------------------------------
        AR1 = *AR3+ ; |182| 
        dbl(*SP(#2)) = XAR3
        AR2 = *SP(#0) ; |182| 
        TC1 = (AR2 > AR1) ; |182| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 183,column 7,is_stmt
;----------------------------------------------------------------------
; 183 | return (i);                                                            
; 185 | return (size);                                                         
;----------------------------------------------------------------------
        if (!TC1) execute (D_Unit) ||
           T0 = *SP(#5) ; |183| 
        if (!TC1) goto $C$L3 ; |183| 
                                        ; branchcc occurs ; |183| 
$C$DW$L$_search$2$E:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 182,column 5,is_stmt
$C$DW$L$_search$3$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 181,column 25,is_stmt
        *SP(#5) = *SP(#5) + #1 ; |181| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 181,column 15,is_stmt
        AR1 = *SP(#4) ; |181| 
        AR2 = *SP(#5) ; |181| 
        TC1 = (AR2 < AR1) ; |181| 
        if (TC1) goto $C$L1 ; |181| 
                                        ; branchcc occurs ; |181| 
$C$DW$L$_search$3$E:
$C$L2:    
        T0 = AR1
$C$L3:    
        SP = SP + #7
	.dwcfi	cfa_offset, 1
$C$DW$103	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$103, DW_AT_low_pc(0x00)
	.dwattr $C$DW$103, DW_AT_TI_return
        return
                                        ; return occurs

$C$DW$104	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$104, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\ecu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\ecusimfunc.asm:$C$L1:1:1373047932")
	.dwattr $C$DW$104, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c")
	.dwattr $C$DW$104, DW_AT_TI_begin_line(0xb5)
	.dwattr $C$DW$104, DW_AT_TI_end_line(0xb8)
$C$DW$105	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$105, DW_AT_low_pc($C$DW$L$_search$2$B)
	.dwattr $C$DW$105, DW_AT_high_pc($C$DW$L$_search$2$E)
$C$DW$106	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$106, DW_AT_low_pc($C$DW$L$_search$3$B)
	.dwattr $C$DW$106, DW_AT_high_pc($C$DW$L$_search$3$E)
	.dwendtag $C$DW$104

	.dwattr $C$DW$95, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c")
	.dwattr $C$DW$95, DW_AT_TI_end_line(0xba)
	.dwattr $C$DW$95, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$95

	.sect	".text"

$C$DW$107	.dwtag  DW_TAG_subprogram, DW_AT_name("acmpr")
	.dwattr $C$DW$107, DW_AT_low_pc(_acmpr)
	.dwattr $C$DW$107, DW_AT_high_pc(0x00)
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_acmpr")
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$107, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c")
	.dwattr $C$DW$107, DW_AT_TI_begin_line(0xbc)
	.dwattr $C$DW$107, DW_AT_TI_begin_column(0x14)
	.dwattr $C$DW$107, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 189,column 1,is_stmt,address _acmpr

	.dwfde $C$DW$CIE, _acmpr
$C$DW$108	.dwtag  DW_TAG_formal_parameter, DW_AT_name("sample")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_sample")
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$108, DW_AT_location[DW_OP_reg12]
;----------------------------------------------------------------------
; 188 | static inline tint acmpr (tint sample)                                 
; 190 | tint mask, seg, pcm_val, pcm_code;                                     
; 191 | tuint aval;                                                            
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: acmpr                                                        *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,AR1,AR2,SP,CARRY,TC1,M40,SATA,*
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_acmpr:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-7
	.dwcfi	cfa_offset, 8
$C$DW$109	.dwtag  DW_TAG_variable, DW_AT_name("sample")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_sample")
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$109, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$110	.dwtag  DW_TAG_variable, DW_AT_name("mask")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_mask")
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$110, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$111	.dwtag  DW_TAG_variable, DW_AT_name("seg")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_seg")
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$111, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$112	.dwtag  DW_TAG_variable, DW_AT_name("pcm_val")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_pcm_val")
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$112, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$113	.dwtag  DW_TAG_variable, DW_AT_name("pcm_code")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_pcm_code")
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$113, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$114	.dwtag  DW_TAG_variable, DW_AT_name("aval")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_aval")
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$114, DW_AT_location[DW_OP_bregx 0x24 5]

        *SP(#0) = T0 ; |189| 
||      AR1 = T0  ; |189| 

	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 193,column 3,is_stmt
;----------------------------------------------------------------------
; 193 | pcm_val = sample;                                                      
; 195 | if (pcm_val >= 0)                                                      
;----------------------------------------------------------------------
        *SP(#3) = AR1 ; |193| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 196,column 5,is_stmt
;----------------------------------------------------------------------
; 196 | mask = 0xD5;            /* sign (7th) bit = 1 */                       
; 197 | else {                                                                 
;----------------------------------------------------------------------
        if (AR1 >= #0) execute (D_Unit) ||
           *SP(#1) = #213 ; |196| 
        if (AR1 >= #0) goto $C$L4 ; |196| 
                                        ; branchcc occurs ; |196| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 198,column 5,is_stmt
;----------------------------------------------------------------------
; 198 | mask = 0x55;            /* sign bit = 0 */                             
;----------------------------------------------------------------------
        *SP(#1) = #85 ; |198| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 199,column 5,is_stmt
;----------------------------------------------------------------------
; 199 | pcm_val = -pcm_val;                                                    
;----------------------------------------------------------------------
        AR1 = *SP(#3) ; |199| 
        AR1 = -AR1 ; |199| 
        *SP(#3) = AR1 ; |199| 
$C$L4:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 203,column 3,is_stmt
;----------------------------------------------------------------------
; 203 | seg = search (pcm_val, seg_end, SEG_END_TBLSIZE);                      
; 206 | if (seg >= SEG_END_TBLSIZE)     /* out of range, return maximum value.
;     | */                                                                     
;----------------------------------------------------------------------
        XAR0 = #_seg_end ; |203| 

        T1 = #8
||      T0 = *SP(#3) ; |203| 

$C$DW$115	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$115, DW_AT_low_pc(0x00)
	.dwattr $C$DW$115, DW_AT_name("_search")
	.dwattr $C$DW$115, DW_AT_TI_call
        call #_search ; |203| 
                                        ; call occurs [#_search] ; |203| 

        AR1 = T0
||      AR2 = #8

        TC1 = (AR1 < AR2) ; |206| 
||      *SP(#2) = T0 ; |203| 

	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 207,column 5,is_stmt
;----------------------------------------------------------------------
; 207 | pcm_code =  0x7F ^ mask;                                               
; 208 | else {                                                                 
;----------------------------------------------------------------------
        if (!TC1) execute (D_Unit) ||
           AR1 = *SP(#1) ; |207| 
        AR1 = AR1 ^ #0x007f ; |207| 
        if (!TC1) execute (D_Unit) ||
           *SP(#4) = AR1 ; |207| 
        if (!TC1) goto $C$L7 ; |207| 
                                        ; branchcc occurs ; |207| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 209,column 5,is_stmt
;----------------------------------------------------------------------
; 209 | aval = seg << SEG_SHIFT;                                               
;----------------------------------------------------------------------
        AC0 = *SP(#2) << #4 ; |209| 
        *SP(#5) = AC0 ; |209| 

        AR1 = *SP(#2) ; |210| 
||      AR2 = #2

	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 210,column 5,is_stmt
;----------------------------------------------------------------------
; 210 | if (seg < 2)                                                           
;----------------------------------------------------------------------
        TC1 = (AR1 >= AR2) ; |210| 
        if (TC1) goto $C$L5 ; |210| 
                                        ; branchcc occurs ; |210| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 211,column 7,is_stmt
;----------------------------------------------------------------------
; 211 | aval |= (pcm_val >> 4) & QUANT_MASK;                                   
; 212 | else                                                                   
;----------------------------------------------------------------------
        AC0 = *SP(#3) ; |211| 
        AC0 = AC0 << #-4 ; |211| 
        goto $C$L6 ; |211| 
                                        ; branch occurs ; |211| 
$C$L5:    
        AR1 = #-3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 213,column 7,is_stmt
;----------------------------------------------------------------------
; 213 | aval |= (pcm_val >> (seg + 3)) & QUANT_MASK;                           
;----------------------------------------------------------------------
        T1 = AR1 - *SP(#2) ; |213| 
        AC0 = *SP(#3) ; |213| 
        AC0 = AC0 << T1 ; |213| 
$C$L6:    
        AC0 = AC0 & #0x000f ; |213| 
        AC0 = AC0 | *SP(#5) ; |213| 
        *SP(#5) = AC0 ; |213| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 214,column 5,is_stmt
;----------------------------------------------------------------------
; 214 | pcm_code = aval ^ mask;                                                
;----------------------------------------------------------------------
        AR1 = *SP(#1) ; |214| 
        AR1 = AR1 ^ *SP(#5) ; |214| 
        *SP(#4) = AR1 ; |214| 
$C$L7:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 216,column 3,is_stmt
;----------------------------------------------------------------------
; 216 | return(pcm_code);                                                      
;----------------------------------------------------------------------
        T0 = *SP(#4) ; |216| 
        SP = SP + #7
	.dwcfi	cfa_offset, 1
$C$DW$116	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$116, DW_AT_low_pc(0x00)
	.dwattr $C$DW$116, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$107, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c")
	.dwattr $C$DW$107, DW_AT_TI_end_line(0xd9)
	.dwattr $C$DW$107, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$107

	.sect	".text"

$C$DW$117	.dwtag  DW_TAG_subprogram, DW_AT_name("mucmpr")
	.dwattr $C$DW$117, DW_AT_low_pc(_mucmpr)
	.dwattr $C$DW$117, DW_AT_high_pc(0x00)
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_mucmpr")
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$117, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c")
	.dwattr $C$DW$117, DW_AT_TI_begin_line(0xdb)
	.dwattr $C$DW$117, DW_AT_TI_begin_column(0x14)
	.dwattr $C$DW$117, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 220,column 1,is_stmt,address _mucmpr

	.dwfde $C$DW$CIE, _mucmpr
$C$DW$118	.dwtag  DW_TAG_formal_parameter, DW_AT_name("sample")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_sample")
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$118, DW_AT_location[DW_OP_reg12]
;----------------------------------------------------------------------
; 219 | static inline tint mucmpr (tint sample)                                
; 221 | tint mask, seg, pcm_val, pcm_code;                                     
; 222 | tuint uval;                                                            
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: mucmpr                                                       *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,AR2,SP,CARRY,TC1, *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_mucmpr:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-7
	.dwcfi	cfa_offset, 8
$C$DW$119	.dwtag  DW_TAG_variable, DW_AT_name("sample")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_sample")
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$119, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$120	.dwtag  DW_TAG_variable, DW_AT_name("mask")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_mask")
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$120, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$121	.dwtag  DW_TAG_variable, DW_AT_name("seg")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("_seg")
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$121, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$122	.dwtag  DW_TAG_variable, DW_AT_name("pcm_val")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_pcm_val")
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$122, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$123	.dwtag  DW_TAG_variable, DW_AT_name("pcm_code")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_pcm_code")
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$123, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$124	.dwtag  DW_TAG_variable, DW_AT_name("uval")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_uval")
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$124, DW_AT_location[DW_OP_bregx 0x24 5]

        *SP(#0) = T0 ; |220| 
||      AR1 = T0  ; |220| 

	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 224,column 3,is_stmt
;----------------------------------------------------------------------
; 224 | pcm_val = sample;                                                      
;----------------------------------------------------------------------
        *SP(#3) = AR1 ; |224| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 227,column 3,is_stmt
;----------------------------------------------------------------------
; 227 | if (pcm_val < 0) {                                                     
;----------------------------------------------------------------------
        if (AR1 >= #0) goto $C$L8 ; |227| 
                                        ; branchcc occurs ; |227| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 228,column 5,is_stmt
;----------------------------------------------------------------------
; 228 | pcm_val = BIAS - pcm_val;                                              
;----------------------------------------------------------------------
        AR1 = #132 ; |228| 
        AR1 = AR1 - *SP(#3) ; |228| 
        *SP(#3) = AR1 ; |228| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 229,column 5,is_stmt
;----------------------------------------------------------------------
; 229 | mask = 0x7F;                                                           
;----------------------------------------------------------------------
        *SP(#1) = #127 ; |229| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 230,column 3,is_stmt
;----------------------------------------------------------------------
; 231 | else {                                                                 
;----------------------------------------------------------------------
        goto $C$L9 ; |230| 
                                        ; branch occurs ; |230| 
$C$L8:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 232,column 5,is_stmt
;----------------------------------------------------------------------
; 232 | pcm_val += BIAS;                                                       
;----------------------------------------------------------------------
        *SP(#3) = *SP(#3) + #132 ; |232| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 233,column 5,is_stmt
;----------------------------------------------------------------------
; 233 | mask = 0xFF;                                                           
;----------------------------------------------------------------------
        *SP(#1) = #255 ; |233| 
$C$L9:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 237,column 3,is_stmt
;----------------------------------------------------------------------
; 237 | seg = search(pcm_val, seg_end, SEG_END_TBLSIZE);                       
; 240 | if (seg >= SEG_END_TBLSIZE)         /* out of range, return maximum val
;     | ue. */                                                                 
;----------------------------------------------------------------------
        XAR0 = #_seg_end ; |237| 

        T1 = #8
||      T0 = *SP(#3) ; |237| 

$C$DW$125	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$125, DW_AT_low_pc(0x00)
	.dwattr $C$DW$125, DW_AT_name("_search")
	.dwattr $C$DW$125, DW_AT_TI_call
        call #_search ; |237| 
                                        ; call occurs [#_search] ; |237| 

        AR1 = T0
||      AR2 = #8

        TC1 = (AR1 < AR2) ; |240| 
||      *SP(#2) = T0 ; |237| 

	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 241,column 5,is_stmt
;----------------------------------------------------------------------
; 241 | pcm_code = 0x7F ^ mask;                                                
; 242 | else {                                                                 
;----------------------------------------------------------------------
        if (!TC1) execute (D_Unit) ||
           AR1 = *SP(#1) ; |241| 
        AR1 = AR1 ^ #0x007f ; |241| 
        if (!TC1) execute (D_Unit) ||
           *SP(#4) = AR1 ; |241| 
        if (!TC1) goto $C$L10 ; |241| 
                                        ; branchcc occurs ; |241| 

        AC1 = *SP(#2) ; |243| 
||      AR1 = #-3

	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 243,column 5,is_stmt
;----------------------------------------------------------------------
; 243 | uval = (seg << 4) | ((pcm_val >> (seg + 3)) & 0xF);                    
;----------------------------------------------------------------------
        T1 = AR1 - *SP(#2) ; |243| 

        AC1 = AC1 << #4 ; |243| 
||      AC0 = *SP(#3) ; |243| 

        AC0 = AC0 << T1 ; |243| 
        AC0 = AC0 & #0x000f ; |243| 
        AC0 = AC0 | AC1 ; |243| 
        *SP(#5) = AC0 ; |243| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 244,column 5,is_stmt
;----------------------------------------------------------------------
; 244 | pcm_code = uval ^ mask;                                                
;----------------------------------------------------------------------
        AR1 = *SP(#1) ; |244| 
        AR1 = AR1 ^ *SP(#5) ; |244| 
        *SP(#4) = AR1 ; |244| 
$C$L10:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 246,column 3,is_stmt
;----------------------------------------------------------------------
; 246 | return(pcm_code);                                                      
;----------------------------------------------------------------------
        T0 = *SP(#4) ; |246| 
        SP = SP + #7
	.dwcfi	cfa_offset, 1
$C$DW$126	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$126, DW_AT_low_pc(0x00)
	.dwattr $C$DW$126, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$117, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c")
	.dwattr $C$DW$117, DW_AT_TI_end_line(0xf7)
	.dwattr $C$DW$117, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$117

	.sect	".text"

$C$DW$127	.dwtag  DW_TAG_subprogram, DW_AT_name("siu_tuint_to_hex")
	.dwattr $C$DW$127, DW_AT_low_pc(_siu_tuint_to_hex)
	.dwattr $C$DW$127, DW_AT_high_pc(0x00)
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_siu_tuint_to_hex")
	.dwattr $C$DW$127, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c")
	.dwattr $C$DW$127, DW_AT_TI_begin_line(0x3c9)
	.dwattr $C$DW$127, DW_AT_TI_begin_column(0x14)
	.dwattr $C$DW$127, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 970,column 1,is_stmt,address _siu_tuint_to_hex

	.dwfde $C$DW$CIE, _siu_tuint_to_hex
$C$DW$128	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dest")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_dest")
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$128, DW_AT_location[DW_OP_reg17]
$C$DW$129	.dwtag  DW_TAG_formal_parameter, DW_AT_name("val")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_val")
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$129, DW_AT_location[DW_OP_reg12]
;----------------------------------------------------------------------
; 969 | static inline void siu_tuint_to_hex (char *dest, tuint val)            
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: siu_tuint_to_hex                                             *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,CARRY,TC1,   *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_siu_tuint_to_hex:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-5
	.dwcfi	cfa_offset, 6
$C$DW$130	.dwtag  DW_TAG_variable, DW_AT_name("dest")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("_dest")
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$130, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$131	.dwtag  DW_TAG_variable, DW_AT_name("val")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("_val")
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$131, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$132	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$132, DW_AT_location[DW_OP_bregx 0x24 3]
;----------------------------------------------------------------------
; 971 | tint i;                                                                
;----------------------------------------------------------------------
        *SP(#2) = T0 ; |970| 
        dbl(*SP(#0)) = XAR0
        XAR3 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 973,column 3,is_stmt
;----------------------------------------------------------------------
; 973 | dest[4] = 0; /* Null terminate */                                      
;----------------------------------------------------------------------
        *AR3(short(#4)) = #0 ; |973| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 975,column 8,is_stmt
;----------------------------------------------------------------------
; 975 | for (i=3; i>=0; i--) {                                                 
;----------------------------------------------------------------------
        *SP(#3) = #3 ; |975| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 975,column 13,is_stmt
        AR1 = *SP(#3) ; |975| 
        if (AR1 < #0) goto $C$L12 ; |975| 
                                        ; branchcc occurs ; |975| 
$C$L11:    
$C$DW$L$_siu_tuint_to_hex$2$B:
        T0 = AR1
        XAR3 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 976,column 5,is_stmt
;----------------------------------------------------------------------
; 976 | dest[i] = (val & 0xF);                                                 
;----------------------------------------------------------------------
        AR1 = *SP(#2) ; |976| 
        AC0 = AR1 & #0x000f ; |976| 
        *AR3(T0) = AC0 ; |976| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 977,column 5,is_stmt
;----------------------------------------------------------------------
; 977 | if (dest[i] > 9)                                                       
;----------------------------------------------------------------------
        T0 = *SP(#3) ; |977| 
        XAR3 = dbl(*SP(#0))

        AR1 = *AR3(T0) ; |977| 
||      AR2 = #9

        TC1 = (AR1 <= AR2) ; |977| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 978,column 7,is_stmt
;----------------------------------------------------------------------
; 978 | dest[i] += 'A' - 10;                                                   
; 979 | else                                                                   
;----------------------------------------------------------------------
        if (!TC1) execute (AD_Unit) ||
           *AR3(T0) = *AR3(T0) + #55 ; |978| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 980,column 7,is_stmt
;----------------------------------------------------------------------
; 980 | dest[i] += '0';                                                        
;----------------------------------------------------------------------
        T0 = *SP(#3) ; |980| 
        XAR3 = dbl(*SP(#0))
        if (TC1) execute (AD_Unit) ||
           *AR3(T0) = *AR3(T0) + #48 ; |980| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 981,column 5,is_stmt
;----------------------------------------------------------------------
; 981 | val >>= 4;                                                             
;----------------------------------------------------------------------
        AC0 = uns(*SP(#2)) ; |981| 
        AC0 = AC0 << #-4 ; |981| 
        *SP(#2) = AC0 ; |981| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 975,column 19,is_stmt
        *SP(#3) = *SP(#3) - #1 ; |975| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 975,column 13,is_stmt
        AR1 = *SP(#3) ; |975| 
        if (AR1 >= #0) goto $C$L11 ; |975| 
                                        ; branchcc occurs ; |975| 
$C$DW$L$_siu_tuint_to_hex$2$E:
$C$L12:    
        SP = SP + #5
	.dwcfi	cfa_offset, 1
$C$DW$133	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$133, DW_AT_low_pc(0x00)
	.dwattr $C$DW$133, DW_AT_TI_return
        return
                                        ; return occurs

$C$DW$134	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$134, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\ecu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\ecusimfunc.asm:$C$L11:1:1373047932")
	.dwattr $C$DW$134, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c")
	.dwattr $C$DW$134, DW_AT_TI_begin_line(0x3cf)
	.dwattr $C$DW$134, DW_AT_TI_end_line(0x3d6)
$C$DW$135	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$135, DW_AT_low_pc($C$DW$L$_siu_tuint_to_hex$2$B)
	.dwattr $C$DW$135, DW_AT_high_pc($C$DW$L$_siu_tuint_to_hex$2$E)
	.dwendtag $C$DW$134

	.dwattr $C$DW$127, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c")
	.dwattr $C$DW$127, DW_AT_TI_end_line(0x3d7)
	.dwattr $C$DW$127, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$127

	.sect	".text"
	.global	_siu_tx_file

$C$DW$136	.dwtag  DW_TAG_subprogram, DW_AT_name("siu_tx_file")
	.dwattr $C$DW$136, DW_AT_low_pc(_siu_tx_file)
	.dwattr $C$DW$136, DW_AT_high_pc(0x00)
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("_siu_tx_file")
	.dwattr $C$DW$136, DW_AT_external
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$136, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c")
	.dwattr $C$DW$136, DW_AT_TI_begin_line(0xfc)
	.dwattr $C$DW$136, DW_AT_TI_begin_column(0x0e)
	.dwattr $C$DW$136, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 253,column 1,is_stmt,address _siu_tx_file

	.dwfde $C$DW$CIE, _siu_tx_file
$C$DW$137	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dsc")
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("_dsc")
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$137, DW_AT_location[DW_OP_reg17]
;----------------------------------------------------------------------
; 252 | sgnFileIo_t *siu_tx_file (sgnFileIo_t *dsc)                            
; 254 | #ifndef _HWDSKT                                                        
; 255 | asm (" nop");                                                          
; 256 | asm (" nop");                                                          
; 257 | asm (" nop");                                                          
; 258 | asm (" nop");                                                          
; 259 | asm (" nop");                                                          
; 260 | asm (" nop");                                                          
; 261 | #endif                                                                 
; 262 | return (dsc);                                                          
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: siu_tx_file                                                  *
;*                                                                             *
;*   Function Uses Regs : AR0,XAR0,SP,M40,SATA,SATD,RDM,FRCT,SMUL              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_siu_tx_file:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-3
	.dwcfi	cfa_offset, 4
$C$DW$138	.dwtag  DW_TAG_variable, DW_AT_name("dsc")
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("_dsc")
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$138, DW_AT_location[DW_OP_bregx 0x24 0]
        dbl(*SP(#0)) = XAR0
 nop
 nop
 nop
 nop
 nop
 nop
        SP = SP + #3
	.dwcfi	cfa_offset, 1
$C$DW$139	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$139, DW_AT_low_pc(0x00)
	.dwattr $C$DW$139, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$136, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c")
	.dwattr $C$DW$136, DW_AT_TI_end_line(0x107)
	.dwattr $C$DW$136, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$136

	.sect	".text"
	.global	_siu_rx_file

$C$DW$140	.dwtag  DW_TAG_subprogram, DW_AT_name("siu_rx_file")
	.dwattr $C$DW$140, DW_AT_low_pc(_siu_rx_file)
	.dwattr $C$DW$140, DW_AT_high_pc(0x00)
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_siu_rx_file")
	.dwattr $C$DW$140, DW_AT_external
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$140, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c")
	.dwattr $C$DW$140, DW_AT_TI_begin_line(0x109)
	.dwattr $C$DW$140, DW_AT_TI_begin_column(0x0e)
	.dwattr $C$DW$140, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 266,column 1,is_stmt,address _siu_rx_file

	.dwfde $C$DW$CIE, _siu_rx_file
$C$DW$141	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dsc")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("_dsc")
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$141, DW_AT_location[DW_OP_reg17]
;----------------------------------------------------------------------
; 265 | sgnFileIo_t *siu_rx_file (sgnFileIo_t *dsc)                            
; 267 | #ifndef _HWDKST                                                        
; 268 | asm (" nop");                                                          
; 269 | asm (" nop");                                                          
; 270 | asm (" nop");                                                          
; 271 | asm (" nop");                                                          
; 272 | asm (" nop");                                                          
; 273 | asm (" nop");                                                          
; 274 | #endif                                                                 
; 275 | return (dsc);                                                          
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: siu_rx_file                                                  *
;*                                                                             *
;*   Function Uses Regs : AR0,XAR0,SP,M40,SATA,SATD,RDM,FRCT,SMUL              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_siu_rx_file:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-3
	.dwcfi	cfa_offset, 4
$C$DW$142	.dwtag  DW_TAG_variable, DW_AT_name("dsc")
	.dwattr $C$DW$142, DW_AT_TI_symbol_name("_dsc")
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$142, DW_AT_location[DW_OP_bregx 0x24 0]
        dbl(*SP(#0)) = XAR0
 nop
 nop
 nop
 nop
 nop
 nop
        SP = SP + #3
	.dwcfi	cfa_offset, 1
$C$DW$143	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$143, DW_AT_low_pc(0x00)
	.dwattr $C$DW$143, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$140, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c")
	.dwattr $C$DW$140, DW_AT_TI_end_line(0x114)
	.dwattr $C$DW$140, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$140

	.sect	".text"
	.global	_generate_tx_tone_frame

$C$DW$144	.dwtag  DW_TAG_subprogram, DW_AT_name("generate_tx_tone_frame")
	.dwattr $C$DW$144, DW_AT_low_pc(_generate_tx_tone_frame)
	.dwattr $C$DW$144, DW_AT_high_pc(0x00)
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_generate_tx_tone_frame")
	.dwattr $C$DW$144, DW_AT_external
	.dwattr $C$DW$144, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c")
	.dwattr $C$DW$144, DW_AT_TI_begin_line(0x116)
	.dwattr $C$DW$144, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$144, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 279,column 1,is_stmt,address _generate_tx_tone_frame

	.dwfde $C$DW$CIE, _generate_tx_tone_frame
$C$DW$145	.dwtag  DW_TAG_formal_parameter, DW_AT_name("frame_size")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_frame_size")
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$145, DW_AT_location[DW_OP_reg12]
$C$DW$146	.dwtag  DW_TAG_formal_parameter, DW_AT_name("frame")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("_frame")
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$146, DW_AT_location[DW_OP_reg17]
;----------------------------------------------------------------------
; 278 | void generate_tx_tone_frame (tint frame_size, linSample *frame)        
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: generate_tx_tone_frame                                       *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR1,XAR1,SP,M40,SATA,SATD,RDM,FRCT,SMUL  *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_generate_tx_tone_frame:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-5
	.dwcfi	cfa_offset, 6
$C$DW$147	.dwtag  DW_TAG_variable, DW_AT_name("frame_size")
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("_frame_size")
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$147, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$148	.dwtag  DW_TAG_variable, DW_AT_name("frame")
	.dwattr $C$DW$148, DW_AT_TI_symbol_name("_frame")
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$148, DW_AT_location[DW_OP_bregx 0x24 2]
        dbl(*SP(#2)) = XAR0
        XAR0 = dbl(*(#_sgnTxInst))
        *SP(#0) = T0 ; |279| 
        XAR1 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 281,column 3,is_stmt
;----------------------------------------------------------------------
; 281 | sgnGenerateFrame (sgnTxInst, frame_size, frame);                       
;----------------------------------------------------------------------
$C$DW$149	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$149, DW_AT_low_pc(0x00)
	.dwattr $C$DW$149, DW_AT_name("_sgnGenerateFrame")
	.dwattr $C$DW$149, DW_AT_TI_call
        call #_sgnGenerateFrame ; |281| 
                                        ; call occurs [#_sgnGenerateFrame] ; |281| 
        SP = SP + #5
	.dwcfi	cfa_offset, 1
$C$DW$150	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$150, DW_AT_low_pc(0x00)
	.dwattr $C$DW$150, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$144, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c")
	.dwattr $C$DW$144, DW_AT_TI_end_line(0x11b)
	.dwattr $C$DW$144, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$144

	.sect	".text"
	.global	_convert_tx_tone_frame

$C$DW$151	.dwtag  DW_TAG_subprogram, DW_AT_name("convert_tx_tone_frame")
	.dwattr $C$DW$151, DW_AT_low_pc(_convert_tx_tone_frame)
	.dwattr $C$DW$151, DW_AT_high_pc(0x00)
	.dwattr $C$DW$151, DW_AT_TI_symbol_name("_convert_tx_tone_frame")
	.dwattr $C$DW$151, DW_AT_external
	.dwattr $C$DW$151, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c")
	.dwattr $C$DW$151, DW_AT_TI_begin_line(0x11d)
	.dwattr $C$DW$151, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$151, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 286,column 1,is_stmt,address _convert_tx_tone_frame

	.dwfde $C$DW$CIE, _convert_tx_tone_frame
$C$DW$152	.dwtag  DW_TAG_formal_parameter, DW_AT_name("frame_length")
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("_frame_length")
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$152, DW_AT_location[DW_OP_reg12]
$C$DW$153	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pcm_law")
	.dwattr $C$DW$153, DW_AT_TI_symbol_name("_pcm_law")
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$153, DW_AT_location[DW_OP_reg13]
$C$DW$154	.dwtag  DW_TAG_formal_parameter, DW_AT_name("frame")
	.dwattr $C$DW$154, DW_AT_TI_symbol_name("_frame")
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$154, DW_AT_location[DW_OP_reg17]
;----------------------------------------------------------------------
; 285 | void convert_tx_tone_frame (tint frame_length, tint pcm_law, linSample
;     | *frame)                                                                
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: convert_tx_tone_frame                                        *
;*                                                                             *
;*   Function Uses Regs : T0,T1,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,CARRY,TC1,M40,    *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (8 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_convert_tx_tone_frame:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-9
	.dwcfi	cfa_offset, 10
$C$DW$155	.dwtag  DW_TAG_variable, DW_AT_name("frame_length")
	.dwattr $C$DW$155, DW_AT_TI_symbol_name("_frame_length")
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$155, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$156	.dwtag  DW_TAG_variable, DW_AT_name("pcm_law")
	.dwattr $C$DW$156, DW_AT_TI_symbol_name("_pcm_law")
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$156, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$157	.dwtag  DW_TAG_variable, DW_AT_name("frame")
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("_frame")
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$157, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$158	.dwtag  DW_TAG_variable, DW_AT_name("k")
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("_k")
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$158, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$159	.dwtag  DW_TAG_variable, DW_AT_name("u_code")
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("_u_code")
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$159, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$160	.dwtag  DW_TAG_variable, DW_AT_name("a_code")
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("_a_code")
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$160, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$161	.dwtag  DW_TAG_variable, DW_AT_name("pcm_value")
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("_pcm_value")
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$161, DW_AT_location[DW_OP_bregx 0x24 7]
        dbl(*SP(#2)) = XAR0
;----------------------------------------------------------------------
; 287 | int k;                                                                 
; 288 | tint u_code;                                                           
; 289 | tint a_code;                                                           
; 290 | tint pcm_value;                                                        
;----------------------------------------------------------------------
        *SP(#1) = T1 ; |286| 
        *SP(#0) = T0 ; |286| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 293,column 8,is_stmt
;----------------------------------------------------------------------
; 293 | for (k=0; k<frame_length; k++) {                                       
;----------------------------------------------------------------------
        *SP(#4) = #0 ; |293| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 293,column 13,is_stmt
;----------------------------------------------------------------------
; 294 | pcm_value = (int)frame[k];                                             
;----------------------------------------------------------------------
        AR1 = *SP(#0) ; |293| 
        AR2 = *SP(#4) ; |293| 
        TC1 = (AR2 >= AR1) ; |293| 
        if (TC1) goto $C$L20 ; |293| 
                                        ; branchcc occurs ; |293| 
$C$L13:    
$C$DW$L$_convert_tx_tone_frame$2$B:
        T0 = AR2
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 295,column 5,is_stmt
;----------------------------------------------------------------------
; 295 | if (pcm_value > mua_TBL_MAX_PCM_VAL) {                                 
;----------------------------------------------------------------------
        AR2 = #32632 ; |295| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 294,column 5,is_stmt
        AR1 = *AR3(T0) ; |294| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 295,column 5,is_stmt
        TC1 = (AR1 <= AR2) ; |295| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 294,column 5,is_stmt
        *SP(#7) = AR1 ; |294| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 295,column 5,is_stmt
        if (TC1) goto $C$L14 ; |295| 
                                        ; branchcc occurs ; |295| 
$C$DW$L$_convert_tx_tone_frame$2$E:
$C$DW$L$_convert_tx_tone_frame$3$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 296,column 7,is_stmt
;----------------------------------------------------------------------
; 296 | pcm_value = mua_TBL_MAX_PCM_VAL;                                       
; 297 | frame[k] = (linSample)pcm_value;  /* make sure frame is saturated */   
;----------------------------------------------------------------------
        *SP(#7) = #32632 ; |296| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 298,column 5,is_stmt
        goto $C$L15 ; |298| 
                                        ; branch occurs ; |298| 
$C$DW$L$_convert_tx_tone_frame$3$E:
$C$L14:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 295,column 5,is_stmt
$C$DW$L$_convert_tx_tone_frame$4$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 299,column 10,is_stmt
;----------------------------------------------------------------------
; 299 | else if (pcm_value < -mua_TBL_MAX_PCM_VAL) {                           
;----------------------------------------------------------------------
        AR2 = #-32632 ; |299| 
        TC1 = (AR1 >= AR2) ; |299| 
        if (TC1) goto $C$L16 ; |299| 
                                        ; branchcc occurs ; |299| 
$C$DW$L$_convert_tx_tone_frame$4$E:
$C$DW$L$_convert_tx_tone_frame$5$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 300,column 7,is_stmt
;----------------------------------------------------------------------
; 300 | pcm_value = -mua_TBL_MAX_PCM_VAL;                                      
;----------------------------------------------------------------------
        *SP(#7) = #-32632 ; |300| 
$C$DW$L$_convert_tx_tone_frame$5$E:
$C$L15:    
$C$DW$L$_convert_tx_tone_frame$6$B:
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 301,column 7,is_stmt
;----------------------------------------------------------------------
; 301 | frame[k] = (linSample)pcm_value;                                       
;----------------------------------------------------------------------
        T0 = *SP(#4) ; |301| 
        AR1 = AR2 ; |301| 
        *AR3(T0) = AR1 ; |301| 
$C$DW$L$_convert_tx_tone_frame$6$E:
$C$L16:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 298,column 5,is_stmt
$C$DW$L$_convert_tx_tone_frame$7$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 303,column 5,is_stmt
;----------------------------------------------------------------------
; 303 | u_code = mucmpr (pcm_value);                                           
;----------------------------------------------------------------------
        T0 = *SP(#7) ; |303| 
$C$DW$162	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$162, DW_AT_low_pc(0x00)
	.dwattr $C$DW$162, DW_AT_name("_mucmpr")
	.dwattr $C$DW$162, DW_AT_TI_call
        call #_mucmpr ; |303| 
                                        ; call occurs [#_mucmpr] ; |303| 
        *SP(#5) = T0 ; |303| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 304,column 5,is_stmt
;----------------------------------------------------------------------
; 304 | a_code = acmpr  (pcm_value);                                           
;----------------------------------------------------------------------
        T0 = *SP(#7) ; |304| 
$C$DW$163	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$163, DW_AT_low_pc(0x00)
	.dwattr $C$DW$163, DW_AT_name("_acmpr")
	.dwattr $C$DW$163, DW_AT_TI_call
        call #_acmpr ; |304| 
                                        ; call occurs [#_acmpr] ; |304| 
        *SP(#6) = T0 ; |304| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 306,column 5,is_stmt
;----------------------------------------------------------------------
; 306 | siuInStream[k]     = pcm_value;                                        
;----------------------------------------------------------------------
        T0 = *SP(#4) ; |306| 
        XAR3 = #_siuInStream ; |306| 
        AR1 = *SP(#7) ; |306| 
        *AR3(T0) = AR1 ; |306| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 307,column 5,is_stmt
;----------------------------------------------------------------------
; 307 | siuInUCmpStream[k] = u_code;                                           
;----------------------------------------------------------------------
        T0 = *SP(#4) ; |307| 
        XAR3 = #_siuInUCmpStream ; |307| 
        AR1 = *SP(#5) ; |307| 
        *AR3(T0) = AR1 ; |307| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 308,column 5,is_stmt
;----------------------------------------------------------------------
; 308 | siuInACmpStream[k] = a_code;                                           
;----------------------------------------------------------------------
        T0 = *SP(#4) ; |308| 
        XAR3 = #_siuInACmpStream ; |308| 
        AR1 = *SP(#6) ; |308| 
        *AR3(T0) = AR1 ; |308| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 311,column 5,is_stmt
;----------------------------------------------------------------------
; 311 | if (pcm_law == const_COMP_MULAW_8) {                                   
; 312 |   piu_segment_in[k] = u_code;                                          
;----------------------------------------------------------------------
        TC1 = (*SP(#1) == #1) ; |311| 
        if (TC1) goto $C$L18 ; |311| 
                                        ; branchcc occurs ; |311| 
$C$DW$L$_convert_tx_tone_frame$7$E:
$C$DW$L$_convert_tx_tone_frame$8$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 314,column 10,is_stmt
;----------------------------------------------------------------------
; 314 | else if (pcm_law == const_COMP_ALAW_8) {                               
;----------------------------------------------------------------------
        AR1 = *SP(#1) ; |314| 
        if (AR1 != #0) goto $C$L17 ; |314| 
                                        ; branchcc occurs ; |314| 
$C$DW$L$_convert_tx_tone_frame$8$E:
$C$DW$L$_convert_tx_tone_frame$9$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 315,column 7,is_stmt
;----------------------------------------------------------------------
; 315 | piu_segment_in[k] = a_code;                                            
;----------------------------------------------------------------------
        AR1 = *SP(#6) ; |315| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 316,column 5,is_stmt
        goto $C$L19 ; |316| 
                                        ; branch occurs ; |316| 
$C$DW$L$_convert_tx_tone_frame$9$E:
$C$L17:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 314,column 10,is_stmt
$C$DW$L$_convert_tx_tone_frame$10$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 317,column 10,is_stmt
;----------------------------------------------------------------------
; 317 | else if (pcm_law == const_COMP_LINEAR) {                               
;----------------------------------------------------------------------
        TC1 = (*SP(#1) == #2) ; |317| 
        if (!TC1) goto $C$L18 ; |317| 
                                        ; branchcc occurs ; |317| 
$C$DW$L$_convert_tx_tone_frame$10$E:
$C$DW$L$_convert_tx_tone_frame$11$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 318,column 7,is_stmt
;----------------------------------------------------------------------
; 318 | piu_segment_in[k] = pcm_value;                                         
;----------------------------------------------------------------------
        AR1 = *SP(#7) ; |318| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 319,column 5,is_stmt
;----------------------------------------------------------------------
; 320 | else {                                                                 
;----------------------------------------------------------------------
        goto $C$L19 ; |319| 
                                        ; branch occurs ; |319| 
$C$DW$L$_convert_tx_tone_frame$11$E:
$C$L18:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 317,column 10,is_stmt
$C$DW$L$_convert_tx_tone_frame$12$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 321,column 7,is_stmt
;----------------------------------------------------------------------
; 321 | piu_segment_in[k] = u_code;                                            
;----------------------------------------------------------------------
        AR1 = *SP(#5) ; |321| 
$C$DW$L$_convert_tx_tone_frame$12$E:
$C$L19:    
$C$DW$L$_convert_tx_tone_frame$13$B:
        XAR3 = dbl(*(#_piu_segment_in))
        T0 = *SP(#4) ; |321| 
        *AR3(T0) = AR1 ; |321| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 293,column 29,is_stmt
        *SP(#4) = *SP(#4) + #1 ; |293| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 293,column 13,is_stmt
        AR2 = *SP(#4) ; |293| 
        AR1 = *SP(#0) ; |293| 
        TC1 = (AR2 < AR1) ; |293| 
        if (TC1) goto $C$L13 ; |293| 
                                        ; branchcc occurs ; |293| 
$C$DW$L$_convert_tx_tone_frame$13$E:
$C$L20:    
        SP = SP + #9
	.dwcfi	cfa_offset, 1
$C$DW$164	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$164, DW_AT_low_pc(0x00)
	.dwattr $C$DW$164, DW_AT_TI_return
        return
                                        ; return occurs

$C$DW$165	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$165, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\ecu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\ecusimfunc.asm:$C$L13:1:1373047932")
	.dwattr $C$DW$165, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c")
	.dwattr $C$DW$165, DW_AT_TI_begin_line(0x125)
	.dwattr $C$DW$165, DW_AT_TI_end_line(0x143)
$C$DW$166	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$166, DW_AT_low_pc($C$DW$L$_convert_tx_tone_frame$2$B)
	.dwattr $C$DW$166, DW_AT_high_pc($C$DW$L$_convert_tx_tone_frame$2$E)
$C$DW$167	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$167, DW_AT_low_pc($C$DW$L$_convert_tx_tone_frame$10$B)
	.dwattr $C$DW$167, DW_AT_high_pc($C$DW$L$_convert_tx_tone_frame$10$E)
$C$DW$168	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$168, DW_AT_low_pc($C$DW$L$_convert_tx_tone_frame$3$B)
	.dwattr $C$DW$168, DW_AT_high_pc($C$DW$L$_convert_tx_tone_frame$3$E)
$C$DW$169	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$169, DW_AT_low_pc($C$DW$L$_convert_tx_tone_frame$5$B)
	.dwattr $C$DW$169, DW_AT_high_pc($C$DW$L$_convert_tx_tone_frame$5$E)
$C$DW$170	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$170, DW_AT_low_pc($C$DW$L$_convert_tx_tone_frame$4$B)
	.dwattr $C$DW$170, DW_AT_high_pc($C$DW$L$_convert_tx_tone_frame$4$E)
$C$DW$171	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$171, DW_AT_low_pc($C$DW$L$_convert_tx_tone_frame$6$B)
	.dwattr $C$DW$171, DW_AT_high_pc($C$DW$L$_convert_tx_tone_frame$6$E)
$C$DW$172	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$172, DW_AT_low_pc($C$DW$L$_convert_tx_tone_frame$7$B)
	.dwattr $C$DW$172, DW_AT_high_pc($C$DW$L$_convert_tx_tone_frame$7$E)
$C$DW$173	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$173, DW_AT_low_pc($C$DW$L$_convert_tx_tone_frame$8$B)
	.dwattr $C$DW$173, DW_AT_high_pc($C$DW$L$_convert_tx_tone_frame$8$E)
$C$DW$174	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$174, DW_AT_low_pc($C$DW$L$_convert_tx_tone_frame$9$B)
	.dwattr $C$DW$174, DW_AT_high_pc($C$DW$L$_convert_tx_tone_frame$9$E)
$C$DW$175	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$175, DW_AT_low_pc($C$DW$L$_convert_tx_tone_frame$11$B)
	.dwattr $C$DW$175, DW_AT_high_pc($C$DW$L$_convert_tx_tone_frame$11$E)
$C$DW$176	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$176, DW_AT_low_pc($C$DW$L$_convert_tx_tone_frame$12$B)
	.dwattr $C$DW$176, DW_AT_high_pc($C$DW$L$_convert_tx_tone_frame$12$E)
$C$DW$177	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$177, DW_AT_low_pc($C$DW$L$_convert_tx_tone_frame$13$B)
	.dwattr $C$DW$177, DW_AT_high_pc($C$DW$L$_convert_tx_tone_frame$13$E)
	.dwendtag $C$DW$165

	.dwattr $C$DW$151, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c")
	.dwattr $C$DW$151, DW_AT_TI_end_line(0x144)
	.dwattr $C$DW$151, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$151

	.sect	".text"
	.global	_generate_rx_tone_frame

$C$DW$178	.dwtag  DW_TAG_subprogram, DW_AT_name("generate_rx_tone_frame")
	.dwattr $C$DW$178, DW_AT_low_pc(_generate_rx_tone_frame)
	.dwattr $C$DW$178, DW_AT_high_pc(0x00)
	.dwattr $C$DW$178, DW_AT_TI_symbol_name("_generate_rx_tone_frame")
	.dwattr $C$DW$178, DW_AT_external
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$178, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c")
	.dwattr $C$DW$178, DW_AT_TI_begin_line(0x146)
	.dwattr $C$DW$178, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$178, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 327,column 1,is_stmt,address _generate_rx_tone_frame

	.dwfde $C$DW$CIE, _generate_rx_tone_frame
$C$DW$179	.dwtag  DW_TAG_formal_parameter, DW_AT_name("frame_size")
	.dwattr $C$DW$179, DW_AT_TI_symbol_name("_frame_size")
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$179, DW_AT_location[DW_OP_reg12]
$C$DW$180	.dwtag  DW_TAG_formal_parameter, DW_AT_name("frame")
	.dwattr $C$DW$180, DW_AT_TI_symbol_name("_frame")
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$180, DW_AT_location[DW_OP_reg17]
;----------------------------------------------------------------------
; 326 | tint generate_rx_tone_frame (tint frame_size, linSample *frame)        
; 328 | tint k;                                                                
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: generate_rx_tone_frame                                       *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,CARRY,  *
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (10 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_generate_rx_tone_frame:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-11
	.dwcfi	cfa_offset, 12
$C$DW$181	.dwtag  DW_TAG_variable, DW_AT_name("frame_size")
	.dwattr $C$DW$181, DW_AT_TI_symbol_name("_frame_size")
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$181, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$182	.dwtag  DW_TAG_variable, DW_AT_name("frame")
	.dwattr $C$DW$182, DW_AT_TI_symbol_name("_frame")
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$182, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$183	.dwtag  DW_TAG_variable, DW_AT_name("k")
	.dwattr $C$DW$183, DW_AT_TI_symbol_name("_k")
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$183, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$184	.dwtag  DW_TAG_variable, DW_AT_name("value")
	.dwattr $C$DW$184, DW_AT_TI_symbol_name("_value")
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$184, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$185	.dwtag  DW_TAG_variable, DW_AT_name("data")
	.dwattr $C$DW$185, DW_AT_TI_symbol_name("_data")
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$185, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$186	.dwtag  DW_TAG_variable, DW_AT_name("smpidx")
	.dwattr $C$DW$186, DW_AT_TI_symbol_name("_smpidx")
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$186, DW_AT_location[DW_OP_bregx 0x24 8]
        XAR3 = dbl(*(#_ecuSim))
        dbl(*SP(#2)) = XAR0

        *SP(#0) = T0 ; |327| 
||      AC0 = #0  ; |330| 

	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 329,column 15,is_stmt
;----------------------------------------------------------------------
; 329 | tint value, data = 1;                                                  
;----------------------------------------------------------------------
        *SP(#6) = #1 ; |329| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 330,column 9,is_stmt
;----------------------------------------------------------------------
; 330 | tlong smpidx = 0;                                                      
;----------------------------------------------------------------------
        dbl(*SP(#8)) = AC0 ; |330| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 333,column 3,is_stmt
;----------------------------------------------------------------------
; 333 | if (ecuSim->sig_src == ecu_SIM_SIG_SRC_SGN){                           
;----------------------------------------------------------------------
        TC1 = (*AR3(#90) == #1) ; |333| 
        if (!TC1) goto $C$L21 ; |333| 
                                        ; branchcc occurs ; |333| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 334,column 5,is_stmt
;----------------------------------------------------------------------
; 334 | sgnGenerateFrame (sgnRxInst, frame_size, frame);                       
;----------------------------------------------------------------------
        T0 = *SP(#0) ; |334| 
        XAR1 = dbl(*SP(#2))
        XAR0 = dbl(*(#_sgnRxInst))
$C$DW$187	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$187, DW_AT_low_pc(0x00)
	.dwattr $C$DW$187, DW_AT_name("_sgnGenerateFrame")
	.dwattr $C$DW$187, DW_AT_TI_call
        call #_sgnGenerateFrame ; |334| 
                                        ; call occurs [#_sgnGenerateFrame] ; |334| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 335,column 3,is_stmt
;----------------------------------------------------------------------
; 336 | else{                                                                  
;----------------------------------------------------------------------
        goto $C$L22 ; |335| 
                                        ; branch occurs ; |335| 
$C$L21:    
        XAR1 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 337,column 5,is_stmt
;----------------------------------------------------------------------
; 337 | data = ecu_sim_fread (rinBuffer, ecuSim->frame_size, &ecuSim->rin);    
;----------------------------------------------------------------------
        XAR0 = #_rinBuffer ; |337| 

        mar(AR1 + #94) ; |337| 
||      T0 = *AR3(short(#7)) ; |337| 

$C$DW$188	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$188, DW_AT_low_pc(0x00)
	.dwattr $C$DW$188, DW_AT_name("_ecu_sim_fread")
	.dwattr $C$DW$188, DW_AT_TI_call
        call #_ecu_sim_fread ; |337| 
                                        ; call occurs [#_ecu_sim_fread] ; |337| 
        *SP(#6) = T0 ; |337| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 338,column 5,is_stmt
;----------------------------------------------------------------------
; 338 | ecu_sim_input(rinBuffer, frame);                                       
;----------------------------------------------------------------------
        XAR0 = #_rinBuffer ; |338| 
        XAR1 = dbl(*SP(#2))
$C$DW$189	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$189, DW_AT_low_pc(0x00)
	.dwattr $C$DW$189, DW_AT_name("_ecu_sim_input")
	.dwattr $C$DW$189, DW_AT_TI_call
        call #_ecu_sim_input ; |338| 
                                        ; call occurs [#_ecu_sim_input] ; |338| 
$C$L22:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 342,column 8,is_stmt
;----------------------------------------------------------------------
; 342 | for (k = 0; k < frame_size; k++) {                                     
;----------------------------------------------------------------------
        *SP(#4) = #0 ; |342| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 342,column 15,is_stmt
;----------------------------------------------------------------------
; 343 | value = (int)frame[k];                                                 
;----------------------------------------------------------------------
        AR1 = *SP(#0) ; |342| 
        AR2 = *SP(#4) ; |342| 
        TC1 = (AR2 >= AR1) ; |342| 
        if (TC1) goto $C$L27 ; |342| 
                                        ; branchcc occurs ; |342| 
$C$L23:    
$C$DW$L$_generate_rx_tone_frame$5$B:
        T0 = AR2
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 344,column 5,is_stmt
;----------------------------------------------------------------------
; 344 | if (value > mua_TBL_MAX_PCM_VAL) {                                     
;----------------------------------------------------------------------
        AR2 = #32632 ; |344| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 343,column 5,is_stmt
        AR1 = *AR3(T0) ; |343| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 344,column 5,is_stmt
        TC1 = (AR1 <= AR2) ; |344| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 343,column 5,is_stmt
        *SP(#5) = AR1 ; |343| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 344,column 5,is_stmt
        if (TC1) goto $C$L24 ; |344| 
                                        ; branchcc occurs ; |344| 
$C$DW$L$_generate_rx_tone_frame$5$E:
$C$DW$L$_generate_rx_tone_frame$6$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 345,column 7,is_stmt
;----------------------------------------------------------------------
; 345 | value = mua_TBL_MAX_PCM_VAL;                                           
; 346 | frame[k] = (linSample)value;                                           
;----------------------------------------------------------------------
        *SP(#5) = #32632 ; |345| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 347,column 5,is_stmt
        goto $C$L25 ; |347| 
                                        ; branch occurs ; |347| 
$C$DW$L$_generate_rx_tone_frame$6$E:
$C$L24:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 344,column 5,is_stmt
$C$DW$L$_generate_rx_tone_frame$7$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 348,column 10,is_stmt
;----------------------------------------------------------------------
; 348 | else if (value < -mua_TBL_MAX_PCM_VAL) {                               
;----------------------------------------------------------------------
        AR2 = #-32632 ; |348| 
        TC1 = (AR1 >= AR2) ; |348| 
        if (TC1) goto $C$L26 ; |348| 
                                        ; branchcc occurs ; |348| 
$C$DW$L$_generate_rx_tone_frame$7$E:
$C$DW$L$_generate_rx_tone_frame$8$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 349,column 7,is_stmt
;----------------------------------------------------------------------
; 349 | value = -mua_TBL_MAX_PCM_VAL;                                          
;----------------------------------------------------------------------
        *SP(#5) = #-32632 ; |349| 
$C$DW$L$_generate_rx_tone_frame$8$E:
$C$L25:    
$C$DW$L$_generate_rx_tone_frame$9$B:
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 350,column 7,is_stmt
;----------------------------------------------------------------------
; 350 | frame[k] = (linSample)value;                                           
;----------------------------------------------------------------------
        T0 = *SP(#4) ; |350| 
        AR1 = AR2 ; |350| 
        *AR3(T0) = AR1 ; |350| 
$C$DW$L$_generate_rx_tone_frame$9$E:
$C$L26:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 347,column 5,is_stmt
$C$DW$L$_generate_rx_tone_frame$10$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 353,column 5,is_stmt
;----------------------------------------------------------------------
; 353 | siuRxInStream[smpidx] = value;                                         
;----------------------------------------------------------------------
        T0 = *SP(#9) ; |353| 
        AR1 = *SP(#5) ; |353| 
        XAR3 = #_siuRxInStream ; |353| 
        *AR3(T0) = AR1 ; |353| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 354,column 5,is_stmt
;----------------------------------------------------------------------
; 354 | smpidx++;                                                              
;----------------------------------------------------------------------
        AC0 = dbl(*SP(#8)) ; |354| 
        AC0 = AC0 + #1 ; |354| 
        dbl(*SP(#8)) = AC0 ; |354| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 342,column 31,is_stmt
        *SP(#4) = *SP(#4) + #1 ; |342| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 342,column 15,is_stmt
        AR2 = *SP(#4) ; |342| 
        AR1 = *SP(#0) ; |342| 
        TC1 = (AR2 < AR1) ; |342| 
        if (TC1) goto $C$L23 ; |342| 
                                        ; branchcc occurs ; |342| 
$C$DW$L$_generate_rx_tone_frame$10$E:
$C$L27:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 356,column 3,is_stmt
;----------------------------------------------------------------------
; 356 | return data;                                                           
;----------------------------------------------------------------------
        T0 = *SP(#6) ; |356| 
        SP = SP + #11
	.dwcfi	cfa_offset, 1
$C$DW$190	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$190, DW_AT_low_pc(0x00)
	.dwattr $C$DW$190, DW_AT_TI_return
        return
                                        ; return occurs

$C$DW$191	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$191, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\ecu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\ecusimfunc.asm:$C$L23:1:1373047932")
	.dwattr $C$DW$191, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c")
	.dwattr $C$DW$191, DW_AT_TI_begin_line(0x156)
	.dwattr $C$DW$191, DW_AT_TI_end_line(0x163)
$C$DW$192	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$192, DW_AT_low_pc($C$DW$L$_generate_rx_tone_frame$5$B)
	.dwattr $C$DW$192, DW_AT_high_pc($C$DW$L$_generate_rx_tone_frame$5$E)
$C$DW$193	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$193, DW_AT_low_pc($C$DW$L$_generate_rx_tone_frame$6$B)
	.dwattr $C$DW$193, DW_AT_high_pc($C$DW$L$_generate_rx_tone_frame$6$E)
$C$DW$194	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$194, DW_AT_low_pc($C$DW$L$_generate_rx_tone_frame$8$B)
	.dwattr $C$DW$194, DW_AT_high_pc($C$DW$L$_generate_rx_tone_frame$8$E)
$C$DW$195	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$195, DW_AT_low_pc($C$DW$L$_generate_rx_tone_frame$7$B)
	.dwattr $C$DW$195, DW_AT_high_pc($C$DW$L$_generate_rx_tone_frame$7$E)
$C$DW$196	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$196, DW_AT_low_pc($C$DW$L$_generate_rx_tone_frame$9$B)
	.dwattr $C$DW$196, DW_AT_high_pc($C$DW$L$_generate_rx_tone_frame$9$E)
$C$DW$197	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$197, DW_AT_low_pc($C$DW$L$_generate_rx_tone_frame$10$B)
	.dwattr $C$DW$197, DW_AT_high_pc($C$DW$L$_generate_rx_tone_frame$10$E)
	.dwendtag $C$DW$191

	.dwattr $C$DW$178, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c")
	.dwattr $C$DW$178, DW_AT_TI_end_line(0x165)
	.dwattr $C$DW$178, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$178

	.sect	".text"
	.global	_ecu_send_out

$C$DW$198	.dwtag  DW_TAG_subprogram, DW_AT_name("ecu_send_out")
	.dwattr $C$DW$198, DW_AT_low_pc(_ecu_send_out)
	.dwattr $C$DW$198, DW_AT_high_pc(0x00)
	.dwattr $C$DW$198, DW_AT_TI_symbol_name("_ecu_send_out")
	.dwattr $C$DW$198, DW_AT_external
	.dwattr $C$DW$198, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c")
	.dwattr $C$DW$198, DW_AT_TI_begin_line(0x168)
	.dwattr $C$DW$198, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$198, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 361,column 1,is_stmt,address _ecu_send_out

	.dwfde $C$DW$CIE, _ecu_send_out
$C$DW$199	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ecuSoInst")
	.dwattr $C$DW$199, DW_AT_TI_symbol_name("_ecuSoInst")
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$199, DW_AT_location[DW_OP_reg17]
$C$DW$200	.dwtag  DW_TAG_formal_parameter, DW_AT_name("samples_in")
	.dwattr $C$DW$200, DW_AT_TI_symbol_name("_samples_in")
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$200, DW_AT_location[DW_OP_reg19]
;----------------------------------------------------------------------
; 360 | void ecu_send_out (void *ecuSoInst, void *samples_in)                  
; 362 | int k;                                                                 
; 363 | siuInst_t *inst   = (siuInst_t*)ecuSoInst;                             
; 364 | linSample *insamp = (linSample*)samples_in;                            
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: ecu_send_out                                                 *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,CARRY,TC1, *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (10 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_ecu_send_out:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-11
	.dwcfi	cfa_offset, 12
$C$DW$201	.dwtag  DW_TAG_variable, DW_AT_name("ecuSoInst")
	.dwattr $C$DW$201, DW_AT_TI_symbol_name("_ecuSoInst")
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$201, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$202	.dwtag  DW_TAG_variable, DW_AT_name("samples_in")
	.dwattr $C$DW$202, DW_AT_TI_symbol_name("_samples_in")
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$202, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$203	.dwtag  DW_TAG_variable, DW_AT_name("k")
	.dwattr $C$DW$203, DW_AT_TI_symbol_name("_k")
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$203, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$204	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$204, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$204, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$205	.dwtag  DW_TAG_variable, DW_AT_name("insamp")
	.dwattr $C$DW$205, DW_AT_TI_symbol_name("_insamp")
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$205, DW_AT_location[DW_OP_bregx 0x24 8]
        dbl(*SP(#2)) = XAR1
        dbl(*SP(#0)) = XAR0
        XAR3 = dbl(*SP(#0))
        dbl(*SP(#6)) = XAR3
        XAR3 = dbl(*SP(#2))
        dbl(*SP(#8)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 367,column 8,is_stmt
;----------------------------------------------------------------------
; 367 | for (k = 0; k < inst->TxInst.send_frame_length; k++) {                 
;----------------------------------------------------------------------
        *SP(#4) = #0 ; |367| 
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 367,column 15,is_stmt
        AR2 = *SP(#4) ; |367| 
        AR1 = *AR3(short(#7)) ; |367| 
        TC1 = (AR2 >= AR1) ; |367| 
        if (TC1) goto $C$L29 ; |367| 
                                        ; branchcc occurs ; |367| 
$C$L28:    
$C$DW$L$_ecu_send_out$2$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 368,column 5,is_stmt
;----------------------------------------------------------------------
; 368 | siuOutErrStream[k] = insamp[k];                                        
;----------------------------------------------------------------------
        T0 = *SP(#4) ; |368| 
        AR1 = T0  ; |368| 
        XAR2 = dbl(*SP(#8))
        XAR3 = #_siuOutErrStream ; |368| 
        mar(AR3 + AR1) ; |368| 
        *AR3 = *AR2(T0) ; |368| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 367,column 51,is_stmt
        *SP(#4) = *SP(#4) + #1 ; |367| 
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 367,column 15,is_stmt
        AR2 = *SP(#4) ; |367| 
        AR1 = *AR3(short(#7)) ; |367| 
        TC1 = (AR2 < AR1) ; |367| 
        if (TC1) goto $C$L28 ; |367| 
                                        ; branchcc occurs ; |367| 
$C$DW$L$_ecu_send_out$2$E:
$C$L29:    
        SP = SP + #11
	.dwcfi	cfa_offset, 1
$C$DW$206	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$206, DW_AT_low_pc(0x00)
	.dwattr $C$DW$206, DW_AT_TI_return
        return
                                        ; return occurs

$C$DW$207	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$207, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\ecu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\ecusimfunc.asm:$C$L28:1:1373047932")
	.dwattr $C$DW$207, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c")
	.dwattr $C$DW$207, DW_AT_TI_begin_line(0x16f)
	.dwattr $C$DW$207, DW_AT_TI_end_line(0x171)
$C$DW$208	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$208, DW_AT_low_pc($C$DW$L$_ecu_send_out$2$B)
	.dwattr $C$DW$208, DW_AT_high_pc($C$DW$L$_ecu_send_out$2$E)
	.dwendtag $C$DW$207

	.dwattr $C$DW$198, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c")
	.dwattr $C$DW$198, DW_AT_TI_end_line(0x172)
	.dwattr $C$DW$198, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$198

	.sect	".text"
	.global	_siu_new_ecu

$C$DW$209	.dwtag  DW_TAG_subprogram, DW_AT_name("siu_new_ecu")
	.dwattr $C$DW$209, DW_AT_low_pc(_siu_new_ecu)
	.dwattr $C$DW$209, DW_AT_high_pc(0x00)
	.dwattr $C$DW$209, DW_AT_TI_symbol_name("_siu_new_ecu")
	.dwattr $C$DW$209, DW_AT_external
	.dwattr $C$DW$209, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c")
	.dwattr $C$DW$209, DW_AT_TI_begin_line(0x18d)
	.dwattr $C$DW$209, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$209, DW_AT_TI_max_frame_size(0x0e)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 398,column 1,is_stmt,address _siu_new_ecu

	.dwfde $C$DW$CIE, _siu_new_ecu
$C$DW$210	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chnum")
	.dwattr $C$DW$210, DW_AT_TI_symbol_name("_chnum")
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$210, DW_AT_location[DW_OP_reg12]
;----------------------------------------------------------------------
; 397 | void siu_new_ecu (tint chnum)                                          
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: siu_new_ecu                                                  *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,   *
;*                        CSR,RPTC,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL       *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 14 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (12 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_siu_new_ecu:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-13
	.dwcfi	cfa_offset, 14
$C$DW$211	.dwtag  DW_TAG_variable, DW_AT_name("chnum")
	.dwattr $C$DW$211, DW_AT_TI_symbol_name("_chnum")
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$211, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$212	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$212, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$212, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$213	.dwtag  DW_TAG_variable, DW_AT_name("stat")
	.dwattr $C$DW$213, DW_AT_TI_symbol_name("_stat")
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$213, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$214	.dwtag  DW_TAG_variable, DW_AT_name("ecuNbufs")
	.dwattr $C$DW$214, DW_AT_TI_symbol_name("_ecuNbufs")
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$214, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$215	.dwtag  DW_TAG_variable, DW_AT_name("bufs")
	.dwattr $C$DW$215, DW_AT_TI_symbol_name("_bufs")
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$128)
	.dwattr $C$DW$215, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$216	.dwtag  DW_TAG_variable, DW_AT_name("ecuBufs")
	.dwattr $C$DW$216, DW_AT_TI_symbol_name("_ecuBufs")
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$124)
	.dwattr $C$DW$216, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$217	.dwtag  DW_TAG_variable, DW_AT_name("ecuCfgNew")
	.dwattr $C$DW$217, DW_AT_TI_symbol_name("_ecuCfgNew")
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$136)
	.dwattr $C$DW$217, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$218	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$218, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$218, DW_AT_location[DW_OP_bregx 0x24 10]
;----------------------------------------------------------------------
; 399 | int i;                                                                 
; 400 | tint stat, ecuNbufs;                                                   
; 401 | #if !ecu_DELAY_LINE_COMPRESS                                           
; 402 | tint length;                                                           
; 403 | #endif                                                                 
; 405 | const ecomemBuffer_t *bufs;                                            
; 406 | ecomemBuffer_t       *ecuBufs;                                         
; 407 | ecuNewConfig_t    ecuCfgNew;                                           
;----------------------------------------------------------------------
        *SP(#0) = T0 ; |398| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 409,column 14,is_stmt
;----------------------------------------------------------------------
; 409 | siuInst_t *inst = &siuInst[chnum-1];                                   
;----------------------------------------------------------------------
        AC0 = *SP(#0) * #28 ; |409| 
        AR1 = AC0 - #28 ; |409| 
        XAR3 = #_siuInst ; |409| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 412,column 3,is_stmt
;----------------------------------------------------------------------
; 412 | stat = ecuGetSizes (&ecuNbufs, &bufs, (void *)NULL);                   
;----------------------------------------------------------------------
        XAR2 = #0 ; |412| 
        XAR0 = mar(*SP(#3))

        dbl(*SP(#10)) = XAR3
||      mar(AR3 + AR1) ; |409| 

        XAR1 = mar(*SP(#4))
$C$DW$219	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$219, DW_AT_low_pc(0x00)
	.dwattr $C$DW$219, DW_AT_name("_ecuGetSizes")
	.dwattr $C$DW$219, DW_AT_TI_call
        call #_ecuGetSizes ; |412| 
                                        ; call occurs [#_ecuGetSizes] ; |412| 
        AR1 = T0  ; |412| 
        *SP(#2) = T0 ; |412| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 413,column 3,is_stmt
;----------------------------------------------------------------------
; 413 | siu_exc_assert (stat == ecu_NOERR, inst);                              
;----------------------------------------------------------------------
        if (AR1 == #0) goto $C$L30 ; |413| 
                                        ; branchcc occurs ; |413| 
        XAR3 = dbl(*SP(#10))
        XAR0 = #$C$FSL1 ; |413| 
        AC0 = dbl(*AR3(short(#2))) ; |413| 
        T0 = *AR3 ; |413| 
$C$DW$220	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$220, DW_AT_low_pc(0x00)
	.dwattr $C$DW$220, DW_AT_TI_call
	.dwattr $C$DW$220, DW_AT_TI_indirect
        call AC0  ; |413| 
                                        ; call occurs [AC0] ; |413| 
$C$L30:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 415,column 3,is_stmt
;----------------------------------------------------------------------
; 415 | ecuBufs = (ecomemBuffer_t*)siuVAlloc (ecuNbufs*sizeof(ecomemBuffer_t));
;----------------------------------------------------------------------
        AC0 = *SP(#3) * #6 ; |415| 
        T0 = AC0  ; |415| 
$C$DW$221	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$221, DW_AT_low_pc(0x00)
	.dwattr $C$DW$221, DW_AT_name("_siuVAlloc")
	.dwattr $C$DW$221, DW_AT_TI_call
        call #_siuVAlloc ; |415| 
                                        ; call occurs [#_siuVAlloc] ; |415| 
        dbl(*SP(#6)) = XAR0
        XAR3 = dbl(*SP(#10))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 416,column 3,is_stmt
;----------------------------------------------------------------------
; 416 | inst->vheap_used += ecuNbufs*sizeof(ecomemBuffer_t);                   
;----------------------------------------------------------------------
        AC0 = *AR3(#21) ; |416| 
        AC0 = AC0 + (*SP(#3) * #6) ; |416| 
        *AR3(#21) = AC0 ; |416| 
        XAR3 = dbl(*SP(#6))
        AC0 = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 417,column 3,is_stmt
;----------------------------------------------------------------------
; 417 | siu_exc_assert (ecuBufs != NULL, inst);                                
;----------------------------------------------------------------------
        if (AC0 != #0) goto $C$L31 ; |417| 
                                        ; branchcc occurs ; |417| 
        XAR3 = dbl(*SP(#10))
        XAR0 = #$C$FSL2 ; |417| 
        AC0 = dbl(*AR3(short(#2))) ; |417| 
        T0 = *AR3 ; |417| 
$C$DW$222	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$222, DW_AT_low_pc(0x00)
	.dwattr $C$DW$222, DW_AT_TI_call
	.dwattr $C$DW$222, DW_AT_TI_indirect
        call AC0  ; |417| 
                                        ; call occurs [AC0] ; |417| 
$C$L31:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 421,column 8,is_stmt
;----------------------------------------------------------------------
; 421 | for (i = 0; i < ecuNbufs; i++) {                                       
;----------------------------------------------------------------------
        *SP(#1) = #0 ; |421| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 421,column 15,is_stmt
        AR1 = *SP(#3) ; |421| 
        AR2 = *SP(#1) ; |421| 
        TC1 = (AR2 >= AR1) ; |421| 
        if (TC1) goto $C$L46 ; |421| 
                                        ; branchcc occurs ; |421| 
$C$L32:    
$C$DW$L$_siu_new_ecu$6$B:
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 422,column 5,is_stmt
;----------------------------------------------------------------------
; 422 | ecuBufs[i] = bufs[i];                                                  
;----------------------------------------------------------------------
        AC0 = *SP(#1) * #6 ; |422| 
        AR1 = AC0 ; |422| 
        XAR2 = dbl(*SP(#6))
        AC0 = *SP(#1) * #6 ; |422| 

        AR1 = AC0 ; |422| 
||      mar(AR3 + AR1) ; |422| 

        repeat(#2) ; |422| 
||      mar(AR2 + AR1) ; |422| 

                                            ; loop starts ; |422| 
$C$DW$L$_siu_new_ecu$6$E:
$C$L33:    
$C$DW$L$_siu_new_ecu$7$B:
            dbl(*AR2+) = dbl(*AR3+) ; |422| 
                                        ; loop ends ; |422| 
$C$DW$L$_siu_new_ecu$7$E:
$C$L34:    
$C$DW$L$_siu_new_ecu$8$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 423,column 5,is_stmt
;----------------------------------------------------------------------
; 423 | if (i == ecu_FG_FLTSEG) {   /* FG Filter */                            
; 424 |   ecuBufs[i].base = iramSeg.ecu_fg_filter_ptr;                         
; 425 |   ecuBufs[i].size = IRAM_ECU_FG_FLTSEG_LENGTH*sizeof(Fract);           
;----------------------------------------------------------------------
        TC1 = (*SP(#1) == #1) ; |423| 
        if (!TC1) goto $C$L35 ; |423| 
                                        ; branchcc occurs ; |423| 
$C$DW$L$_siu_new_ecu$8$E:
$C$DW$L$_siu_new_ecu$9$B:
        XAR2 = dbl(*(#(_iramSeg+12)))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 426,column 5,is_stmt
        goto $C$L36 ; |426| 
                                        ; branch occurs ; |426| 
$C$DW$L$_siu_new_ecu$9$E:
$C$L35:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 423,column 5,is_stmt
$C$DW$L$_siu_new_ecu$10$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 427,column 10,is_stmt
;----------------------------------------------------------------------
; 427 | else if (i == ecu_BG_FLTSEG) {  /* BG Filter */                        
;----------------------------------------------------------------------
        TC1 = (*SP(#1) == #2) ; |427| 
        if (!TC1) goto $C$L37 ; |427| 
                                        ; branchcc occurs ; |427| 
$C$DW$L$_siu_new_ecu$10$E:
$C$DW$L$_siu_new_ecu$11$B:
        XAR2 = dbl(*(#(_iramSeg+10)))
$C$DW$L$_siu_new_ecu$11$E:
$C$L36:    
$C$DW$L$_siu_new_ecu$12$B:
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 428,column 7,is_stmt
;----------------------------------------------------------------------
; 428 | ecuBufs[i].base = iramSeg.ecu_bg_filter_ptr;                           
;----------------------------------------------------------------------
        AC0 = *SP(#1) * #6 ; |428| 
        AR1 = AC0 ; |428| 
        mar(AR3 + AR1) ; |428| 
        dbl(*AR3(short(#4))) = XAR2
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 429,column 7,is_stmt
;----------------------------------------------------------------------
; 429 | ecuBufs[i].size = IRAM_ECU_BG_FLTSEG_LENGTH*sizeof(Fract);             
;----------------------------------------------------------------------
        AC0 = *SP(#1) * #6 ; |429| 
        AR1 = AC0 ; |429| 
        mar(AR3 + AR1) ; |429| 
        *AR3(short(#2)) = #256 ; |429| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 430,column 5,is_stmt
        goto $C$L45 ; |430| 
                                        ; branch occurs ; |430| 
$C$DW$L$_siu_new_ecu$12$E:
$C$L37:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 427,column 10,is_stmt
$C$DW$L$_siu_new_ecu$13$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 431,column 10,is_stmt
;----------------------------------------------------------------------
; 431 | else if (i == ecu_BG_E_BUF) {  /* BG Error Buffer IRAM */              
;----------------------------------------------------------------------
        TC1 = (*SP(#1) == #3) ; |431| 
        if (!TC1) goto $C$L38 ; |431| 
                                        ; branchcc occurs ; |431| 
$C$DW$L$_siu_new_ecu$13$E:
$C$DW$L$_siu_new_ecu$14$B:
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 432,column 7,is_stmt
;----------------------------------------------------------------------
; 432 | ecuBufs[i].base = iramSeg.ecu_bg_e_ptr;                                
;----------------------------------------------------------------------
        AC0 = *SP(#1) * #6 ; |432| 
        AR1 = AC0 ; |432| 
        XAR2 = dbl(*(#(_iramSeg+8)))
        mar(AR3 + AR1) ; |432| 
        dbl(*AR3(short(#4))) = XAR2
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 433,column 7,is_stmt
;----------------------------------------------------------------------
; 433 | ecuBufs[i].size = IRAM_ECU_BG_E_LENGTH*sizeof(linSample);              
;----------------------------------------------------------------------
        AC0 = *SP(#1) * #6 ; |433| 
        AR1 = AC0 ; |433| 
        mar(AR3 + AR1) ; |433| 
        *AR3(short(#2)) = #40 ; |433| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 434,column 5,is_stmt
;----------------------------------------------------------------------
; 435 | #if ecu_DELAY_LINE_COMPRESS                                            
;----------------------------------------------------------------------
        goto $C$L45 ; |434| 
                                        ; branch occurs ; |434| 
$C$DW$L$_siu_new_ecu$14$E:
$C$L38:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 431,column 10,is_stmt
$C$DW$L$_siu_new_ecu$15$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 436,column 10,is_stmt
;----------------------------------------------------------------------
; 436 | else if (i == ecu_RECEIVE_IN) {  /* ECU's recv-in buffer is aligned! */
;----------------------------------------------------------------------
        TC1 = (*SP(#1) == #4) ; |436| 
        if (!TC1) goto $C$L39 ; |436| 
                                        ; branchcc occurs ; |436| 
$C$DW$L$_siu_new_ecu$15$E:
$C$DW$L$_siu_new_ecu$16$B:
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 437,column 7,is_stmt
;----------------------------------------------------------------------
; 437 | ecuBufs[i].volat  = FALSE;                                             
;----------------------------------------------------------------------
        AC0 = *SP(#1) * #6 ; |437| 
        AR1 = AC0 ; |437| 
        mar(AR3 + AR1) ; |437| 
        *AR3(short(#3)) = #0 ; |437| 
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 438,column 7,is_stmt
;----------------------------------------------------------------------
; 438 | ecuBufs[i].base   = iramSeg.piu_ecu_receive_ptr;                       
;----------------------------------------------------------------------
        AC0 = *SP(#1) * #6 ; |438| 
        AR1 = AC0 ; |438| 
        XAR2 = dbl(*(#(_iramSeg+2)))
        mar(AR3 + AR1) ; |438| 
        dbl(*AR3(short(#4))) = XAR2
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 439,column 7,is_stmt
;----------------------------------------------------------------------
; 439 | ecuBufs[i].size   = IRAM_PIU_ECU_RECEIVE_LENGTH*sizeof(linSample);     
;----------------------------------------------------------------------
        AC0 = *SP(#1) * #6 ; |439| 
        AR1 = AC0 ; |439| 
        mar(AR3 + AR1) ; |439| 
        *AR3(short(#2)) = #612 ; |439| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 440,column 5,is_stmt
        goto $C$L45 ; |440| 
                                        ; branch occurs ; |440| 
$C$DW$L$_siu_new_ecu$16$E:
$C$L39:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 436,column 10,is_stmt
$C$DW$L$_siu_new_ecu$17$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 441,column 10,is_stmt
;----------------------------------------------------------------------
; 441 | else if (i == ecu_EXPAND_DL_BUF) {  /* ECU's recv-in buffer is aligned!
;     |  */                                                                    
;----------------------------------------------------------------------
        TC1 = (*SP(#1) == #5) ; |441| 
        if (!TC1) goto $C$L40 ; |441| 
                                        ; branchcc occurs ; |441| 
$C$DW$L$_siu_new_ecu$17$E:
$C$DW$L$_siu_new_ecu$18$B:
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 442,column 7,is_stmt
;----------------------------------------------------------------------
; 442 | ecuBufs[i].volat  = TRUE;                                              
;----------------------------------------------------------------------
        AC0 = *SP(#1) * #6 ; |442| 
        AR1 = AC0 ; |442| 
        mar(AR3 + AR1) ; |442| 
        *AR3(short(#3)) = #1 ; |442| 
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 443,column 7,is_stmt
;----------------------------------------------------------------------
; 443 | ecuBufs[i].base   = iramSeg.ecu_pcm_expand_ptr;                        
;----------------------------------------------------------------------
        AC0 = *SP(#1) * #6 ; |443| 
        AR1 = AC0 ; |443| 
        XAR2 = dbl(*(#_iramSeg))
        mar(AR3 + AR1) ; |443| 
        dbl(*AR3(short(#4))) = XAR2
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 444,column 7,is_stmt
;----------------------------------------------------------------------
; 444 | ecuBufs[i].size   = IRAM_ECU_EXPAND_LENGTH*sizeof(linSample);          
;----------------------------------------------------------------------
        AC0 = *SP(#1) * #6 ; |444| 
        AR1 = AC0 ; |444| 
        mar(AR3 + AR1) ; |444| 
        *AR3(short(#2)) = #1184 ; |444| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 445,column 5,is_stmt
;----------------------------------------------------------------------
; 446 | #else                                                                  
; 447 | else if (i == ecu_RECEIVE_IN) {  /* ECU's recv-in buffer is aligned! */
; 448 |   ecuBufs[i].volat  = FALSE;                                           
; 449 |   ecuBufs[i].base   = iramSeg.piu_ecu_receive_ptr;                     
; 451 |   length = IRAM_PIU_ECU_RECEIVE_LENGTH;                                
; 452 |   ecuBufs[i].size   = length * sizeof(linSample);                      
; 455 | #endif                                                                 
;----------------------------------------------------------------------
        goto $C$L45 ; |445| 
                                        ; branch occurs ; |445| 
$C$DW$L$_siu_new_ecu$18$E:
$C$L40:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 441,column 10,is_stmt
$C$DW$L$_siu_new_ecu$19$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 456,column 10,is_stmt
;----------------------------------------------------------------------
; 456 | else if (i == ecu_BG_UPDATE_BUF) {  /* BG Work Buffer IRAM */          
;----------------------------------------------------------------------
        TC1 = (*SP(#1) == #6) ; |456| 
        if (!TC1) goto $C$L41 ; |456| 
                                        ; branchcc occurs ; |456| 
$C$DW$L$_siu_new_ecu$19$E:
$C$DW$L$_siu_new_ecu$20$B:
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 457,column 7,is_stmt
;----------------------------------------------------------------------
; 457 | if (ecuBufs[i].size > 0) {                                             
; 458 |   ecuBufs[i].base = iramSeg.ecu_bg_work_ptr;                           
; 459 |   ecuBufs[i].size = IRAM_ECU_BG_WORK_LENGTH*sizeof(Fract);             
;----------------------------------------------------------------------
        AC0 = *SP(#1) * #6 ; |457| 
        AR1 = AC0 ; |457| 
        mar(AR3 + AR1) ; |457| 
        AR1 = *AR3(short(#2)) ; |457| 
        if (AR1 == #0) goto $C$L44 ; |457| 
                                        ; branchcc occurs ; |457| 
$C$DW$L$_siu_new_ecu$20$E:
$C$DW$L$_siu_new_ecu$21$B:
        XAR2 = dbl(*(#(_iramSeg+6)))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 460,column 7,is_stmt
;----------------------------------------------------------------------
; 461 | else {    /* Float version may not use this buffer */                  
; 462 |   ecuBufs[i].base = NULL;                                              
; 463 |   ecuBufs[i].size = 0;                                                 
; 466 | #if ecu_SEARCH_ENABLE                                                  
;----------------------------------------------------------------------
        goto $C$L42 ; |460| 
                                        ; branch occurs ; |460| 
$C$DW$L$_siu_new_ecu$21$E:
$C$L41:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 456,column 10,is_stmt
$C$DW$L$_siu_new_ecu$22$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 467,column 10,is_stmt
;----------------------------------------------------------------------
; 467 | else if (i == ecu_SEARCH_FILTER_BUF) {  /* Search filter buffer IRAM */
;----------------------------------------------------------------------
        TC1 = (*SP(#1) == #14) ; |467| 
        if (!TC1) goto $C$L43 ; |467| 
                                        ; branchcc occurs ; |467| 
$C$DW$L$_siu_new_ecu$22$E:
$C$DW$L$_siu_new_ecu$23$B:
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 468,column 7,is_stmt
;----------------------------------------------------------------------
; 468 | ecuBufs[i].volat  = FALSE;                                             
;----------------------------------------------------------------------
        AC0 = *SP(#1) * #6 ; |468| 
        AR1 = AC0 ; |468| 
        mar(AR3 + AR1) ; |468| 
        *AR3(short(#3)) = #0 ; |468| 
        XAR2 = dbl(*(#(_iramSeg+4)))
$C$DW$L$_siu_new_ecu$23$E:
$C$L42:    
$C$DW$L$_siu_new_ecu$24$B:
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 469,column 7,is_stmt
;----------------------------------------------------------------------
; 469 | ecuBufs[i].base   = iramSeg.ecu_srch_filter_ptr;                       
;----------------------------------------------------------------------
        AC0 = *SP(#1) * #6 ; |469| 
        AR1 = AC0 ; |469| 
        mar(AR3 + AR1) ; |469| 
        dbl(*AR3(short(#4))) = XAR2
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 470,column 7,is_stmt
;----------------------------------------------------------------------
; 470 | ecuBufs[i].size   = IRAM_ECU_SRCH_FILTER_LENGTH*sizeof(Fract);         
;----------------------------------------------------------------------
        AC0 = *SP(#1) * #6 ; |470| 
        AR1 = AC0 ; |470| 
        mar(AR3 + AR1) ; |470| 
        *AR3(short(#2)) = #1024 ; |470| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 471,column 5,is_stmt
;----------------------------------------------------------------------
; 472 | #endif                                                                 
; 473 | else {                                                                 
;----------------------------------------------------------------------
        goto $C$L45 ; |471| 
                                        ; branch occurs ; |471| 
$C$DW$L$_siu_new_ecu$24$E:
$C$L43:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 467,column 10,is_stmt
$C$DW$L$_siu_new_ecu$25$B:
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 474,column 7,is_stmt
;----------------------------------------------------------------------
; 474 | if (ecuBufs[i].size > 0) {                                             
;----------------------------------------------------------------------
        AC0 = *SP(#1) * #6 ; |474| 
        AR1 = AC0 ; |474| 
        mar(AR3 + AR1) ; |474| 
        AR1 = *AR3(short(#2)) ; |474| 
        if (AR1 == #0) goto $C$L44 ; |474| 
                                        ; branchcc occurs ; |474| 
$C$DW$L$_siu_new_ecu$25$E:
$C$DW$L$_siu_new_ecu$26$B:
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 475,column 9,is_stmt
;----------------------------------------------------------------------
; 475 | ecuBufs[i].volat  = FALSE;                                             
;----------------------------------------------------------------------
        AC0 = *SP(#1) * #6 ; |475| 
        AR1 = AC0 ; |475| 
        mar(AR3 + AR1) ; |475| 
        *AR3(short(#3)) = #0 ; |475| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 476,column 9,is_stmt
;----------------------------------------------------------------------
; 476 | ecuBufs[i].base   = siuVAlloc (bufs[i].size);                          
;----------------------------------------------------------------------
        AC0 = *SP(#1) * #6 ; |476| 
        AR1 = AC0 ; |476| 
        mar(AR3 + AR1) ; |476| 
        T0 = *AR3(short(#2)) ; |476| 
$C$DW$223	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$223, DW_AT_low_pc(0x00)
	.dwattr $C$DW$223, DW_AT_name("_siuVAlloc")
	.dwattr $C$DW$223, DW_AT_TI_call
        call #_siuVAlloc ; |476| 
                                        ; call occurs [#_siuVAlloc] ; |476| 
        XAR3 = dbl(*SP(#6))
        AC0 = *SP(#1) * #6 ; |476| 
        AR1 = AC0 ; |476| 
        mar(AR3 + AR1) ; |476| 
        dbl(*AR3(short(#4))) = XAR0
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 477,column 9,is_stmt
;----------------------------------------------------------------------
; 477 | inst->vheap_used += bufs[i].size;                                      
;----------------------------------------------------------------------
        AC0 = *SP(#1) * #6 ; |477| 
        AR1 = AC0 ; |477| 
        XAR2 = dbl(*SP(#10))
        mar(AR3 + AR1) ; |477| 
        AR1 = *AR3(short(#2)) ; |477| 
        AR1 = AR1 + *AR2(#21) ; |477| 
        *AR2(#21) = AR1 ; |477| 
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 478,column 9,is_stmt
;----------------------------------------------------------------------
; 478 | siu_exc_assert (ecuBufs[i].base != NULL, inst);                        
;----------------------------------------------------------------------
        AC0 = *SP(#1) * #6 ; |478| 
        AR1 = AC0 ; |478| 
        mar(AR3 + AR1) ; |478| 
        XAR3 = dbl(*AR3(short(#4)))
        AC0 = XAR3
        if (AC0 != #0) goto $C$L45 ; |478| 
                                        ; branchcc occurs ; |478| 
$C$DW$L$_siu_new_ecu$26$E:
$C$DW$L$_siu_new_ecu$27$B:
        XAR3 = dbl(*SP(#10))
        XAR0 = #$C$FSL3 ; |478| 
        AC0 = dbl(*AR3(short(#2))) ; |478| 
        T0 = *AR3 ; |478| 
$C$DW$224	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$224, DW_AT_low_pc(0x00)
	.dwattr $C$DW$224, DW_AT_TI_call
	.dwattr $C$DW$224, DW_AT_TI_indirect
        call AC0  ; |478| 
                                        ; call occurs [AC0] ; |478| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 479,column 7,is_stmt
;----------------------------------------------------------------------
; 480 | else {    /* no buffer allocated if size zero or less */               
;----------------------------------------------------------------------
        goto $C$L45 ; |479| 
                                        ; branch occurs ; |479| 
$C$DW$L$_siu_new_ecu$27$E:
$C$L44:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 474,column 7,is_stmt
$C$DW$L$_siu_new_ecu$28$B:
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 481,column 9,is_stmt
;----------------------------------------------------------------------
; 481 | ecuBufs[i].base = NULL;                                                
;----------------------------------------------------------------------
        AC0 = *SP(#1) * #6 ; |481| 
        AR1 = AC0 ; |481| 

        mar(AR3 + AR1) ; |481| 
||      AC0 = #0  ; |481| 

        dbl(*AR3(short(#4))) = AC0
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 482,column 9,is_stmt
;----------------------------------------------------------------------
; 482 | ecuBufs[i].size = 0;                                                   
;----------------------------------------------------------------------
        AC0 = *SP(#1) * #6 ; |482| 
        AR1 = AC0 ; |482| 
        mar(AR3 + AR1) ; |482| 
        *AR3(short(#2)) = #0 ; |482| 
$C$DW$L$_siu_new_ecu$28$E:
$C$L45:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 426,column 5,is_stmt
$C$DW$L$_siu_new_ecu$29$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 421,column 29,is_stmt
        *SP(#1) = *SP(#1) + #1 ; |421| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 421,column 15,is_stmt
        AR1 = *SP(#3) ; |421| 
        AR2 = *SP(#1) ; |421| 
        TC1 = (AR2 < AR1) ; |421| 
        if (TC1) goto $C$L32 ; |421| 
                                        ; branchcc occurs ; |421| 
$C$DW$L$_siu_new_ecu$29$E:
$C$L46:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 490,column 3,is_stmt
;----------------------------------------------------------------------
; 490 | ecuCfgNew.ID = siuMakeID (SIU_MID_ECU, chnum);                         
;----------------------------------------------------------------------
        AR1 = *SP(#0) ; |490| 
        AR1 = AR1 | #0x0500 ; |490| 
        *SP(#8) = AR1 ; |490| 
        XAR0 = dbl(*SP(#10))
        XAR2 = mar(*SP(#8))
        XAR1 = dbl(*SP(#6))

        mar(AR0 + #26) ; |491| 
||      T0 = *SP(#3) ; |491| 

	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 491,column 3,is_stmt
;----------------------------------------------------------------------
; 491 | stat = ecuNew (&inst->ecuInst, ecuNbufs, ecuBufs, &ecuCfgNew);         
;----------------------------------------------------------------------
$C$DW$225	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$225, DW_AT_low_pc(0x00)
	.dwattr $C$DW$225, DW_AT_name("_ecuNew")
	.dwattr $C$DW$225, DW_AT_TI_call
        call #_ecuNew ; |491| 
                                        ; call occurs [#_ecuNew] ; |491| 
        AR1 = T0  ; |491| 
        *SP(#2) = T0 ; |491| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 492,column 3,is_stmt
;----------------------------------------------------------------------
; 492 | siu_exc_assert (stat == ecu_NOERR, inst);                              
;----------------------------------------------------------------------
        if (AR1 == #0) goto $C$L47 ; |492| 
                                        ; branchcc occurs ; |492| 
        XAR3 = dbl(*SP(#10))
        XAR0 = #$C$FSL4 ; |492| 
        AC0 = dbl(*AR3(short(#2))) ; |492| 
        T0 = *AR3 ; |492| 
$C$DW$226	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$226, DW_AT_low_pc(0x00)
	.dwattr $C$DW$226, DW_AT_TI_call
	.dwattr $C$DW$226, DW_AT_TI_indirect
        call AC0  ; |492| 
                                        ; call occurs [AC0] ; |492| 
$C$L47:    
        SP = SP + #13
	.dwcfi	cfa_offset, 1
$C$DW$227	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$227, DW_AT_low_pc(0x00)
	.dwattr $C$DW$227, DW_AT_TI_return
        return
                                        ; return occurs

$C$DW$228	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$228, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\ecu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\ecusimfunc.asm:$C$L32:1:1373047932")
	.dwattr $C$DW$228, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c")
	.dwattr $C$DW$228, DW_AT_TI_begin_line(0x1a5)
	.dwattr $C$DW$228, DW_AT_TI_end_line(0x1e5)
$C$DW$229	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$229, DW_AT_low_pc($C$DW$L$_siu_new_ecu$6$B)
	.dwattr $C$DW$229, DW_AT_high_pc($C$DW$L$_siu_new_ecu$6$E)
$C$DW$230	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$230, DW_AT_low_pc($C$DW$L$_siu_new_ecu$25$B)
	.dwattr $C$DW$230, DW_AT_high_pc($C$DW$L$_siu_new_ecu$25$E)
$C$DW$231	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$231, DW_AT_low_pc($C$DW$L$_siu_new_ecu$22$B)
	.dwattr $C$DW$231, DW_AT_high_pc($C$DW$L$_siu_new_ecu$22$E)
$C$DW$232	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$232, DW_AT_low_pc($C$DW$L$_siu_new_ecu$19$B)
	.dwattr $C$DW$232, DW_AT_high_pc($C$DW$L$_siu_new_ecu$19$E)
$C$DW$233	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$233, DW_AT_low_pc($C$DW$L$_siu_new_ecu$20$B)
	.dwattr $C$DW$233, DW_AT_high_pc($C$DW$L$_siu_new_ecu$20$E)
$C$DW$234	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$234, DW_AT_low_pc($C$DW$L$_siu_new_ecu$21$B)
	.dwattr $C$DW$234, DW_AT_high_pc($C$DW$L$_siu_new_ecu$21$E)
$C$DW$235	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$235, DW_AT_low_pc($C$DW$L$_siu_new_ecu$23$B)
	.dwattr $C$DW$235, DW_AT_high_pc($C$DW$L$_siu_new_ecu$23$E)
$C$DW$236	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$236, DW_AT_low_pc($C$DW$L$_siu_new_ecu$17$B)
	.dwattr $C$DW$236, DW_AT_high_pc($C$DW$L$_siu_new_ecu$17$E)
$C$DW$237	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$237, DW_AT_low_pc($C$DW$L$_siu_new_ecu$15$B)
	.dwattr $C$DW$237, DW_AT_high_pc($C$DW$L$_siu_new_ecu$15$E)
$C$DW$238	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$238, DW_AT_low_pc($C$DW$L$_siu_new_ecu$13$B)
	.dwattr $C$DW$238, DW_AT_high_pc($C$DW$L$_siu_new_ecu$13$E)
$C$DW$239	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$239, DW_AT_low_pc($C$DW$L$_siu_new_ecu$10$B)
	.dwattr $C$DW$239, DW_AT_high_pc($C$DW$L$_siu_new_ecu$10$E)
$C$DW$240	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$240, DW_AT_low_pc($C$DW$L$_siu_new_ecu$8$B)
	.dwattr $C$DW$240, DW_AT_high_pc($C$DW$L$_siu_new_ecu$8$E)
$C$DW$241	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$241, DW_AT_low_pc($C$DW$L$_siu_new_ecu$9$B)
	.dwattr $C$DW$241, DW_AT_high_pc($C$DW$L$_siu_new_ecu$9$E)
$C$DW$242	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$242, DW_AT_low_pc($C$DW$L$_siu_new_ecu$11$B)
	.dwattr $C$DW$242, DW_AT_high_pc($C$DW$L$_siu_new_ecu$11$E)
$C$DW$243	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$243, DW_AT_low_pc($C$DW$L$_siu_new_ecu$12$B)
	.dwattr $C$DW$243, DW_AT_high_pc($C$DW$L$_siu_new_ecu$12$E)
$C$DW$244	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$244, DW_AT_low_pc($C$DW$L$_siu_new_ecu$14$B)
	.dwattr $C$DW$244, DW_AT_high_pc($C$DW$L$_siu_new_ecu$14$E)
$C$DW$245	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$245, DW_AT_low_pc($C$DW$L$_siu_new_ecu$16$B)
	.dwattr $C$DW$245, DW_AT_high_pc($C$DW$L$_siu_new_ecu$16$E)
$C$DW$246	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$246, DW_AT_low_pc($C$DW$L$_siu_new_ecu$18$B)
	.dwattr $C$DW$246, DW_AT_high_pc($C$DW$L$_siu_new_ecu$18$E)
$C$DW$247	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$247, DW_AT_low_pc($C$DW$L$_siu_new_ecu$24$B)
	.dwattr $C$DW$247, DW_AT_high_pc($C$DW$L$_siu_new_ecu$24$E)
$C$DW$248	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$248, DW_AT_low_pc($C$DW$L$_siu_new_ecu$26$B)
	.dwattr $C$DW$248, DW_AT_high_pc($C$DW$L$_siu_new_ecu$26$E)
$C$DW$249	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$249, DW_AT_low_pc($C$DW$L$_siu_new_ecu$27$B)
	.dwattr $C$DW$249, DW_AT_high_pc($C$DW$L$_siu_new_ecu$27$E)
$C$DW$250	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$250, DW_AT_low_pc($C$DW$L$_siu_new_ecu$28$B)
	.dwattr $C$DW$250, DW_AT_high_pc($C$DW$L$_siu_new_ecu$28$E)
$C$DW$251	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$251, DW_AT_low_pc($C$DW$L$_siu_new_ecu$29$B)
	.dwattr $C$DW$251, DW_AT_high_pc($C$DW$L$_siu_new_ecu$29$E)

$C$DW$252	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$252, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\ecu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\ecusimfunc.asm:$C$L33:2:1373047932")
	.dwattr $C$DW$252, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c")
	.dwattr $C$DW$252, DW_AT_TI_begin_line(0x1a6)
	.dwattr $C$DW$252, DW_AT_TI_end_line(0x1a6)
$C$DW$253	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$253, DW_AT_low_pc($C$DW$L$_siu_new_ecu$7$B)
	.dwattr $C$DW$253, DW_AT_high_pc($C$DW$L$_siu_new_ecu$7$E)
	.dwendtag $C$DW$252

	.dwendtag $C$DW$228

	.dwattr $C$DW$209, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c")
	.dwattr $C$DW$209, DW_AT_TI_end_line(0x1ee)
	.dwattr $C$DW$209, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$209

	.sect	".text"
	.global	_siu_open_ecu

$C$DW$254	.dwtag  DW_TAG_subprogram, DW_AT_name("siu_open_ecu")
	.dwattr $C$DW$254, DW_AT_low_pc(_siu_open_ecu)
	.dwattr $C$DW$254, DW_AT_high_pc(0x00)
	.dwattr $C$DW$254, DW_AT_TI_symbol_name("_siu_open_ecu")
	.dwattr $C$DW$254, DW_AT_external
	.dwattr $C$DW$254, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c")
	.dwattr $C$DW$254, DW_AT_TI_begin_line(0x1fd)
	.dwattr $C$DW$254, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$254, DW_AT_TI_max_frame_size(0x18)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 510,column 1,is_stmt,address _siu_open_ecu

	.dwfde $C$DW$CIE, _siu_open_ecu
$C$DW$255	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chnum")
	.dwattr $C$DW$255, DW_AT_TI_symbol_name("_chnum")
	.dwattr $C$DW$255, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$255, DW_AT_location[DW_OP_reg12]
$C$DW$256	.dwtag  DW_TAG_formal_parameter, DW_AT_name("frame_size")
	.dwattr $C$DW$256, DW_AT_TI_symbol_name("_frame_size")
	.dwattr $C$DW$256, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$256, DW_AT_location[DW_OP_reg13]
;----------------------------------------------------------------------
; 509 | void siu_open_ecu (tint chnum, tint frame_size)                        
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: siu_open_ecu                                                 *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,CARRY,   *
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 24 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (23 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_siu_open_ecu:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-23
	.dwcfi	cfa_offset, 24
$C$DW$257	.dwtag  DW_TAG_variable, DW_AT_name("chnum")
	.dwattr $C$DW$257, DW_AT_TI_symbol_name("_chnum")
	.dwattr $C$DW$257, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$257, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$258	.dwtag  DW_TAG_variable, DW_AT_name("frame_size")
	.dwattr $C$DW$258, DW_AT_TI_symbol_name("_frame_size")
	.dwattr $C$DW$258, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$258, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$259	.dwtag  DW_TAG_variable, DW_AT_name("ecuCfg")
	.dwattr $C$DW$259, DW_AT_TI_symbol_name("_ecuCfg")
	.dwattr $C$DW$259, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$259, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$260	.dwtag  DW_TAG_variable, DW_AT_name("cfgParam")
	.dwattr $C$DW$260, DW_AT_TI_symbol_name("_cfgParam")
	.dwattr $C$DW$260, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$260, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$261	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$261, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$261, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$261, DW_AT_location[DW_OP_bregx 0x24 20]
$C$DW$262	.dwtag  DW_TAG_variable, DW_AT_name("pcm")
	.dwattr $C$DW$262, DW_AT_TI_symbol_name("_pcm")
	.dwattr $C$DW$262, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$262, DW_AT_location[DW_OP_bregx 0x24 22]
;----------------------------------------------------------------------
; 511 | ecuConfig_t      ecuCfg;                                               
; 512 | ecuConfigParam_t cfgParam;                                             
;----------------------------------------------------------------------
        *SP(#1) = T1 ; |510| 
        *SP(#0) = T0 ; |510| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 513,column 21,is_stmt
;----------------------------------------------------------------------
; 513 | siuInst_t        *inst = &siuInst[chnum-1];                            
;----------------------------------------------------------------------
        AC0 = *SP(#0) * #28 ; |513| 
        AR1 = AC0 - #28 ; |513| 
        XAR3 = #_siuInst ; |513| 

        dbl(*SP(#20)) = XAR3
||      mar(AR3 + AR1) ; |513| 

        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 514,column 20,is_stmt
;----------------------------------------------------------------------
; 514 | tint             pcm   = ecuSim->pcm_format;                           
; 516 | ecuCfg.cfgParam              = &cfgParam;                              
; 517 | ecuCfg.y2x_delay             = ecuSim->ecu_y2x_delay;                  
; 518 | ecuCfg.samples_per_frame     = frame_size;                             
; 520 | #if ecu_DELAY_LINE_COMPRESS                                            
;----------------------------------------------------------------------
        AR1 = *AR3(short(#5)) ; |514| 
        *SP(#22) = AR1 ; |514| 
        XAR3 = mar(*SP(#14))
        dbl(*SP(#8)) = XAR3
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 521,column 3,is_stmt
;----------------------------------------------------------------------
; 521 | siu_exc_assert (pcm == const_COMP_MULAW_8 ||                           
;----------------------------------------------------------------------
        TC1 = (*SP(#22) == #1) ; |521| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 517,column 3,is_stmt
        AR1 = *AR3(#8) ; |517| 
        *SP(#3) = AR1 ; |517| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 518,column 3,is_stmt
        AR1 = *SP(#1) ; |518| 
        *SP(#2) = AR1 ; |518| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 521,column 3,is_stmt
;----------------------------------------------------------------------
; 522 | pcm == const_COMP_ALAW_8, inst);                                       
;----------------------------------------------------------------------
        if (TC1) goto $C$L48 ; |521| 
                                        ; branchcc occurs ; |521| 
        AR1 = *SP(#22) ; |521| 
        if (AR1 == #0) goto $C$L48 ; |521| 
                                        ; branchcc occurs ; |521| 
        XAR3 = dbl(*SP(#20))
        XAR0 = #$C$FSL5 ; |521| 
        AC0 = dbl(*AR3(short(#2))) ; |521| 
        T0 = *AR3 ; |521| 
$C$DW$263	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$263, DW_AT_low_pc(0x00)
	.dwattr $C$DW$263, DW_AT_TI_call
	.dwattr $C$DW$263, DW_AT_TI_indirect
        call AC0  ; |521| 
                                        ; call occurs [AC0] ; |521| 
$C$L48:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 523,column 3,is_stmt
;----------------------------------------------------------------------
; 523 | if (pcm == const_COMP_MULAW_8) {                                       
;----------------------------------------------------------------------
        TC1 = (*SP(#22) == #1) ; |523| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 524,column 5,is_stmt
;----------------------------------------------------------------------
; 524 | ecuCfg.pcm_expand_tbl = &muaTblUlaw[0];                                
;----------------------------------------------------------------------
        XAR3 = #_muaTblUlaw ; |524| 
        if (TC1) execute (D_Unit) ||
           dbl(*SP(#10)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 525,column 5,is_stmt
;----------------------------------------------------------------------
; 525 | ecuCfg.pcm_zero       = SIU_ULAW_ZERO;                                 
; 527 | else {                                                                 
;----------------------------------------------------------------------
        if (TC1) execute (D_Unit) ||
           *SP(#12) = #65535 ; |525| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 528,column 5,is_stmt
;----------------------------------------------------------------------
; 528 | ecuCfg.pcm_expand_tbl = &muaTblAlaw[0];                                
;----------------------------------------------------------------------
        XAR3 = #_muaTblAlaw ; |528| 
        if (!TC1) execute (D_Unit) ||
           dbl(*SP(#10)) = XAR3
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 529,column 5,is_stmt
;----------------------------------------------------------------------
; 529 | ecuCfg.pcm_zero       = SIU_ALAW_ZERO;                                 
; 531 | #endif                                                                 
;----------------------------------------------------------------------
        if (!TC1) execute (D_Unit) ||
           *SP(#12) = #21973 ; |529| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 532,column 3,is_stmt
;----------------------------------------------------------------------
; 532 | cfgParam.filter_length       = ecuSim->ecu_filter_length;              
;----------------------------------------------------------------------
        AR1 = *AR3(#11) ; |532| 
        *SP(#14) = AR1 ; |532| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 533,column 3,is_stmt
;----------------------------------------------------------------------
; 533 | cfgParam.noise_level         = 0;   /* Use default (-70) if fixed */   
;----------------------------------------------------------------------
        *SP(#17) = #0 ; |533| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 534,column 3,is_stmt
;----------------------------------------------------------------------
; 534 | cfgParam.config_bitfield     = ecuSim->ecuCtl.u.ctl_mask[0];           
;----------------------------------------------------------------------
        AR1 = *AR3(#15) ; |534| 
        *SP(#15) = AR1 ; |534| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 535,column 3,is_stmt
;----------------------------------------------------------------------
; 535 | cfgParam.config_bitfield1    = ecuSim->ecuCtl.u.ctl_mask[1];           
;----------------------------------------------------------------------
        AR1 = *AR3(#16) ; |535| 
        *SP(#16) = AR1 ; |535| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 536,column 3,is_stmt
;----------------------------------------------------------------------
; 536 | cfgParam.nlp_aggress         = 0;   /* balance performance */          
;----------------------------------------------------------------------
        *SP(#18) = #0 ; |536| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 537,column 3,is_stmt
;----------------------------------------------------------------------
; 537 | cfgParam.cn_config           = 0;   /* pink noise */                   
;----------------------------------------------------------------------
        *SP(#19) = #0 ; |537| 
        XAR3 = dbl(*SP(#20))
        XAR1 = mar(*SP(#2))
        XAR0 = dbl(*AR3(#26))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 538,column 3,is_stmt
;----------------------------------------------------------------------
; 538 | ecuOpen (inst->ecuInst, &ecuCfg);                                      
;----------------------------------------------------------------------
$C$DW$264	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$264, DW_AT_low_pc(0x00)
	.dwattr $C$DW$264, DW_AT_name("_ecuOpen")
	.dwattr $C$DW$264, DW_AT_TI_call
        call #_ecuOpen ; |538| 
                                        ; call occurs [#_ecuOpen] ; |538| 
        SP = SP + #23
	.dwcfi	cfa_offset, 1
$C$DW$265	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$265, DW_AT_low_pc(0x00)
	.dwattr $C$DW$265, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$254, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c")
	.dwattr $C$DW$254, DW_AT_TI_end_line(0x21b)
	.dwattr $C$DW$254, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$254

	.sect	".text"
	.global	_siu_open_txhyb

$C$DW$266	.dwtag  DW_TAG_subprogram, DW_AT_name("siu_open_txhyb")
	.dwattr $C$DW$266, DW_AT_low_pc(_siu_open_txhyb)
	.dwattr $C$DW$266, DW_AT_high_pc(0x00)
	.dwattr $C$DW$266, DW_AT_TI_symbol_name("_siu_open_txhyb")
	.dwattr $C$DW$266, DW_AT_external
	.dwattr $C$DW$266, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c")
	.dwattr $C$DW$266, DW_AT_TI_begin_line(0x21d)
	.dwattr $C$DW$266, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$266, DW_AT_TI_max_frame_size(0x3a)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 543,column 1,is_stmt,address _siu_open_txhyb

	.dwfde $C$DW$CIE, _siu_open_txhyb
$C$DW$267	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chnum")
	.dwattr $C$DW$267, DW_AT_TI_symbol_name("_chnum")
	.dwattr $C$DW$267, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$267, DW_AT_location[DW_OP_reg12]
$C$DW$268	.dwtag  DW_TAG_formal_parameter, DW_AT_name("frame_length")
	.dwattr $C$DW$268, DW_AT_TI_symbol_name("_frame_length")
	.dwattr $C$DW$268, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$268, DW_AT_location[DW_OP_reg13]
$C$DW$269	.dwtag  DW_TAG_formal_parameter, DW_AT_name("filter_length")
	.dwattr $C$DW$269, DW_AT_TI_symbol_name("_filter_length")
	.dwattr $C$DW$269, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$269, DW_AT_location[DW_OP_reg16]
;----------------------------------------------------------------------
; 541 | void siu_open_txhyb (tint chnum, tint frame_length,                    
; 542 | tint filter_length)                                                    
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: siu_open_txhyb                                               *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,    *
;*                        XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 58 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (56 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_siu_open_txhyb:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-57
	.dwcfi	cfa_offset, 58
$C$DW$270	.dwtag  DW_TAG_variable, DW_AT_name("chnum")
	.dwattr $C$DW$270, DW_AT_TI_symbol_name("_chnum")
	.dwattr $C$DW$270, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$270, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$271	.dwtag  DW_TAG_variable, DW_AT_name("frame_length")
	.dwattr $C$DW$271, DW_AT_TI_symbol_name("_frame_length")
	.dwattr $C$DW$271, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$271, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$272	.dwtag  DW_TAG_variable, DW_AT_name("filter_length")
	.dwattr $C$DW$272, DW_AT_TI_symbol_name("_filter_length")
	.dwattr $C$DW$272, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$272, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$273	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$273, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$273, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$273, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$274	.dwtag  DW_TAG_variable, DW_AT_name("hybsizeBufs")
	.dwattr $C$DW$274, DW_AT_TI_symbol_name("_hybsizeBufs")
	.dwattr $C$DW$274, DW_AT_type(*$C$DW$T$128)
	.dwattr $C$DW$274, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$275	.dwtag  DW_TAG_variable, DW_AT_name("hybBufs")
	.dwattr $C$DW$275, DW_AT_TI_symbol_name("_hybBufs")
	.dwattr $C$DW$275, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$275, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$276	.dwtag  DW_TAG_variable, DW_AT_name("sizeCfg")
	.dwattr $C$DW$276, DW_AT_TI_symbol_name("_sizeCfg")
	.dwattr $C$DW$276, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$276, DW_AT_location[DW_OP_bregx 0x24 38]
$C$DW$277	.dwtag  DW_TAG_variable, DW_AT_name("hybnbufs")
	.dwattr $C$DW$277, DW_AT_TI_symbol_name("_hybnbufs")
	.dwattr $C$DW$277, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$277, DW_AT_location[DW_OP_bregx 0x24 42]
$C$DW$278	.dwtag  DW_TAG_variable, DW_AT_name("retVal")
	.dwattr $C$DW$278, DW_AT_TI_symbol_name("_retVal")
	.dwattr $C$DW$278, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$278, DW_AT_location[DW_OP_bregx 0x24 43]
$C$DW$279	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$279, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$279, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$279, DW_AT_location[DW_OP_bregx 0x24 44]
$C$DW$280	.dwtag  DW_TAG_variable, DW_AT_name("newcfg")
	.dwattr $C$DW$280, DW_AT_TI_symbol_name("_newcfg")
	.dwattr $C$DW$280, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$280, DW_AT_location[DW_OP_bregx 0x24 45]
$C$DW$281	.dwtag  DW_TAG_variable, DW_AT_name("cfg")
	.dwattr $C$DW$281, DW_AT_TI_symbol_name("_cfg")
	.dwattr $C$DW$281, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$281, DW_AT_location[DW_OP_bregx 0x24 50]
;----------------------------------------------------------------------
; 544 | siuInst_t *inst = &siuInst[chnum-1];                                   
; 545 | const ecomemBuffer_t *hybsizeBufs;                                     
; 546 | ecomemBuffer_t  hybBufs[ecu_HYB_SIM_MAX_ECOBUFS];                      
; 547 | hybSizeConfig_t sizeCfg;                                               
; 548 | tint      hybnbufs, retVal, i;                                         
; 549 | hybNewConfig_t newcfg;                                                 
; 550 | hybConfig_t cfg;                                                       
;----------------------------------------------------------------------
        *SP(#2) = AR0 ; |543| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 553,column 3,is_stmt
;----------------------------------------------------------------------
; 553 | sizeCfg.max_filter_length = MAX_HYB_FILTER_LEN;                        
;----------------------------------------------------------------------
        *SP(#39) = #1024 ; |553| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 543,column 1,is_stmt
        *SP(#1) = T1 ; |543| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 554,column 3,is_stmt
;----------------------------------------------------------------------
; 554 | sizeCfg.max_rx_delay = MAX_HYB_RX_DELAY;                               
;----------------------------------------------------------------------
        *SP(#40) = #0 ; |554| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 543,column 1,is_stmt
        *SP(#0) = T0 ; |543| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 544,column 14,is_stmt
        AC0 = *SP(#0) * #28 ; |544| 
        AR1 = AC0 - #28 ; |544| 
        XAR3 = #_siuInst ; |544| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 555,column 3,is_stmt
;----------------------------------------------------------------------
; 555 | sizeCfg.max_samples_per_frame = MAX_HYB_SAMPLES_PER_FRAME;             
; 556 | sizeCfg.max_tx_delay = MAX_HYB_TX_DELAY;                               
;----------------------------------------------------------------------
        *SP(#38) = #80 ; |555| 
        XAR2 = mar(*SP(#38))
        XAR0 = mar(*SP(#42))

        mar(AR3 + AR1) ; |544| 
||      *SP(#41) = #40 ; |556| 

        XAR1 = mar(*SP(#6))
        dbl(*SP(#4)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 558,column 3,is_stmt
;----------------------------------------------------------------------
; 558 | retVal = hybGetSizes(&hybnbufs, &hybsizeBufs, &sizeCfg);               
;----------------------------------------------------------------------
$C$DW$282	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$282, DW_AT_low_pc(0x00)
	.dwattr $C$DW$282, DW_AT_name("_hybGetSizes")
	.dwattr $C$DW$282, DW_AT_TI_call
        call #_hybGetSizes ; |558| 
                                        ; call occurs [#_hybGetSizes] ; |558| 
        AR1 = T0  ; |558| 
        *SP(#43) = T0 ; |558| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 559,column 3,is_stmt
;----------------------------------------------------------------------
; 559 | if (retVal != hyb_NOERR){                                              
;----------------------------------------------------------------------
        if (AR1 == #0) goto $C$L49 ; |559| 
                                        ; branchcc occurs ; |559| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 560,column 5,is_stmt
;----------------------------------------------------------------------
; 560 | ecuSim->error_id = ecu_SIM_ERR_HYB;                                    
;----------------------------------------------------------------------
        *AR3(#89) = #2 ; |560| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 561,column 5,is_stmt
;----------------------------------------------------------------------
; 561 | ecuSim->exec = FALSE;                                                  
;----------------------------------------------------------------------
        *AR3 = #0 ; |561| 
        XAR0 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 562,column 5,is_stmt
;----------------------------------------------------------------------
; 562 | ecu_halt (&ecuSim->exec);                                              
;----------------------------------------------------------------------
$C$DW$283	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$283, DW_AT_low_pc(0x00)
	.dwattr $C$DW$283, DW_AT_name("_ecu_halt")
	.dwattr $C$DW$283, DW_AT_TI_call
        call #_ecu_halt ; |562| 
                                        ; call occurs [#_ecu_halt] ; |562| 
$C$L49:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 566,column 3,is_stmt
;----------------------------------------------------------------------
; 566 | newcfg.ID                    = chnum;                                  
;----------------------------------------------------------------------
        AR1 = *SP(#0) ; |566| 
        *SP(#45) = AR1 ; |566| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 567,column 3,is_stmt
;----------------------------------------------------------------------
; 567 | newcfg.max_samples_per_frame = frame_length;                           
;----------------------------------------------------------------------
        AR1 = *SP(#1) ; |567| 
        *SP(#46) = AR1 ; |567| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 568,column 3,is_stmt
;----------------------------------------------------------------------
; 568 | newcfg.max_filter_length     = filter_length;                          
;----------------------------------------------------------------------
        AR1 = *SP(#2) ; |568| 
        *SP(#47) = AR1 ; |568| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 569,column 3,is_stmt
;----------------------------------------------------------------------
; 569 | newcfg.max_rx_delay          = 0;                                      
;----------------------------------------------------------------------
        *SP(#48) = #0 ; |569| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 570,column 3,is_stmt
;----------------------------------------------------------------------
; 570 | newcfg.max_tx_delay          = 0;                                      
;----------------------------------------------------------------------
        *SP(#49) = #0 ; |570| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 572,column 8,is_stmt
;----------------------------------------------------------------------
; 572 | for (i=0; i<hybnbufs; i++) {                                           
;----------------------------------------------------------------------
        *SP(#44) = #0 ; |572| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 572,column 13,is_stmt
        AR2 = *SP(#44) ; |572| 
        AR1 = *SP(#42) ; |572| 
        TC1 = (AR2 >= AR1) ; |572| 
        if (TC1) goto $C$L51 ; |572| 
                                        ; branchcc occurs ; |572| 
$C$L50:    
$C$DW$L$_siu_open_txhyb$4$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 573,column 5,is_stmt
;----------------------------------------------------------------------
; 573 | hybBufs[i].mclass = hybsizeBufs[i].mclass;                             
;----------------------------------------------------------------------
        AC1 = *SP(#44) * #6 ; |573| 
        AR1 = AC1 ; |573| 
        XAR2 = dbl(*SP(#6))
        AC0 = *SP(#44) * #6 ; |573| 
        T0 = AC0  ; |573| 
        XAR3 = mar(*SP(#8))
        mar(AR3 + AR1) ; |573| 
        *AR3 = *AR2(T0) ; |573| 
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 574,column 5,is_stmt
;----------------------------------------------------------------------
; 574 | hybBufs[i].log2align = hybsizeBufs[i].log2align;                       
;----------------------------------------------------------------------
        AC0 = *SP(#44) * #6 ; |574| 
        AR1 = AC0 ; |574| 
        AC0 = *SP(#44) * #6 ; |574| 
        T0 = AC0  ; |574| 
        mar(AR3 + AR1) ; |574| 
        AR1 = *AR3(short(#1)) ; |574| 
        XAR3 = mar(*SP(#9))
        *AR3(T0) = AR1 ; |574| 
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 575,column 5,is_stmt
;----------------------------------------------------------------------
; 575 | hybBufs[i].size = hybsizeBufs[i].size;                                 
;----------------------------------------------------------------------
        AC0 = *SP(#44) * #6 ; |575| 
        AR1 = AC0 ; |575| 
        AC0 = *SP(#44) * #6 ; |575| 
        T0 = AC0  ; |575| 
        mar(AR3 + AR1) ; |575| 
        AR1 = *AR3(short(#2)) ; |575| 
        XAR3 = mar(*SP(#10))
        *AR3(T0) = AR1 ; |575| 
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 576,column 5,is_stmt
;----------------------------------------------------------------------
; 576 | hybBufs[i].volat = hybsizeBufs[i].volat;                               
;----------------------------------------------------------------------
        AC0 = *SP(#44) * #6 ; |576| 
        AR1 = AC0 ; |576| 
        AC0 = *SP(#44) * #6 ; |576| 
        T0 = AC0  ; |576| 
        mar(AR3 + AR1) ; |576| 
        AR1 = *AR3(short(#3)) ; |576| 
        XAR3 = mar(*SP(#11))
        *AR3(T0) = AR1 ; |576| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 577,column 5,is_stmt
;----------------------------------------------------------------------
; 577 | hybBufs[i].base = malloc(hybBufs[i].size);                             
;----------------------------------------------------------------------
        AC0 = *SP(#44) * #6 ; |577| 
        T0 = AC0  ; |577| 
        XAR3 = mar(*SP(#10))
        T0 = *AR3(T0) ; |577| 
$C$DW$284	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$284, DW_AT_low_pc(0x00)
	.dwattr $C$DW$284, DW_AT_name("_malloc")
	.dwattr $C$DW$284, DW_AT_TI_call
        call #_malloc ; |577| 
                                        ; call occurs [#_malloc] ; |577| 
        AC0 = *SP(#44) * #6 ; |577| 
        T0 = AC0  ; |577| 
        XAR3 = mar(*SP(#12))
        dbl(*AR3(T0)) = XAR0
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 572,column 25,is_stmt
        *SP(#44) = *SP(#44) + #1 ; |572| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 572,column 13,is_stmt
        AR1 = *SP(#42) ; |572| 
        AR2 = *SP(#44) ; |572| 
        TC1 = (AR2 < AR1) ; |572| 
        if (TC1) goto $C$L50 ; |572| 
                                        ; branchcc occurs ; |572| 
$C$DW$L$_siu_open_txhyb$4$E:
$C$L51:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 579,column 3,is_stmt
;----------------------------------------------------------------------
; 579 | retVal = hybNew(&hybTxInst, hybnbufs, hybBufs, &newcfg);               
;----------------------------------------------------------------------
        T0 = AR1  ; |579| 
        XAR2 = mar(*SP(#45))
        XAR0 = #_hybTxInst ; |579| 
        XAR1 = mar(*SP(#8))
$C$DW$285	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$285, DW_AT_low_pc(0x00)
	.dwattr $C$DW$285, DW_AT_name("_hybNew")
	.dwattr $C$DW$285, DW_AT_TI_call
        call #_hybNew ; |579| 
                                        ; call occurs [#_hybNew] ; |579| 
        AR1 = T0  ; |579| 
        *SP(#43) = T0 ; |579| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 580,column 3,is_stmt
;----------------------------------------------------------------------
; 580 | if (retVal != hyb_NOERR){                                              
;----------------------------------------------------------------------
        if (AR1 == #0) goto $C$L52 ; |580| 
                                        ; branchcc occurs ; |580| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 581,column 5,is_stmt
;----------------------------------------------------------------------
; 581 | ecuSim->error_id = ecu_SIM_ERR_HYB;                                    
;----------------------------------------------------------------------
        *AR3(#89) = #2 ; |581| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 582,column 5,is_stmt
;----------------------------------------------------------------------
; 582 | ecuSim->exec = FALSE;                                                  
;----------------------------------------------------------------------
        *AR3 = #0 ; |582| 
        XAR0 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 583,column 5,is_stmt
;----------------------------------------------------------------------
; 583 | ecu_halt (&ecuSim->exec);                                              
;----------------------------------------------------------------------
$C$DW$286	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$286, DW_AT_low_pc(0x00)
	.dwattr $C$DW$286, DW_AT_name("_ecu_halt")
	.dwattr $C$DW$286, DW_AT_TI_call
        call #_ecu_halt ; |583| 
                                        ; call occurs [#_ecu_halt] ; |583| 
$C$L52:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 586,column 3,is_stmt
;----------------------------------------------------------------------
; 586 | cfg.samples_per_frame = frame_length;                                  
;----------------------------------------------------------------------
        AR1 = *SP(#1) ; |586| 
        *SP(#50) = AR1 ; |586| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 587,column 3,is_stmt
;----------------------------------------------------------------------
; 587 | cfg.filter_length     = filter_length;                                 
;----------------------------------------------------------------------
        AR1 = *SP(#2) ; |587| 
        XAR3 = dbl(*SP(#4))
        *SP(#51) = AR1 ; |587| 
        XAR0 = dbl(*(#_hybTxInst))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 588,column 3,is_stmt
;----------------------------------------------------------------------
; 588 | cfg.rx_delay          = 0;                                             
;----------------------------------------------------------------------
        *SP(#52) = #0 ; |588| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 589,column 3,is_stmt
;----------------------------------------------------------------------
; 589 | cfg.tx_delay          = 0;                                             
;----------------------------------------------------------------------
        *SP(#53) = #0 ; |589| 
        XAR1 = mar(*SP(#50))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 590,column 3,is_stmt
;----------------------------------------------------------------------
; 590 | cfg.exception         = inst->exception;                               
;----------------------------------------------------------------------
        AC0 = dbl(*AR3(short(#2))) ; |590| 
        dbl(*SP(#54)) = AC0 ; |590| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 592,column 3,is_stmt
;----------------------------------------------------------------------
; 592 | hybOpen (hybTxInst, &cfg);                                             
;----------------------------------------------------------------------
$C$DW$287	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$287, DW_AT_low_pc(0x00)
	.dwattr $C$DW$287, DW_AT_name("_hybOpen")
	.dwattr $C$DW$287, DW_AT_TI_call
        call #_hybOpen ; |592| 
                                        ; call occurs [#_hybOpen] ; |592| 
        SP = SP + #57
	.dwcfi	cfa_offset, 1
$C$DW$288	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$288, DW_AT_low_pc(0x00)
	.dwattr $C$DW$288, DW_AT_TI_return
        return
                                        ; return occurs

$C$DW$289	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$289, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\ecu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\ecusimfunc.asm:$C$L50:1:1373047932")
	.dwattr $C$DW$289, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c")
	.dwattr $C$DW$289, DW_AT_TI_begin_line(0x23c)
	.dwattr $C$DW$289, DW_AT_TI_end_line(0x242)
$C$DW$290	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$290, DW_AT_low_pc($C$DW$L$_siu_open_txhyb$4$B)
	.dwattr $C$DW$290, DW_AT_high_pc($C$DW$L$_siu_open_txhyb$4$E)
	.dwendtag $C$DW$289

	.dwattr $C$DW$266, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c")
	.dwattr $C$DW$266, DW_AT_TI_end_line(0x251)
	.dwattr $C$DW$266, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$266

	.sect	".text"
	.global	_siu_open_rxsgn

$C$DW$291	.dwtag  DW_TAG_subprogram, DW_AT_name("siu_open_rxsgn")
	.dwattr $C$DW$291, DW_AT_low_pc(_siu_open_rxsgn)
	.dwattr $C$DW$291, DW_AT_high_pc(0x00)
	.dwattr $C$DW$291, DW_AT_TI_symbol_name("_siu_open_rxsgn")
	.dwattr $C$DW$291, DW_AT_external
	.dwattr $C$DW$291, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c")
	.dwattr $C$DW$291, DW_AT_TI_begin_line(0x253)
	.dwattr $C$DW$291, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$291, DW_AT_TI_max_frame_size(0x28)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 596,column 1,is_stmt,address _siu_open_rxsgn

	.dwfde $C$DW$CIE, _siu_open_rxsgn
$C$DW$292	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chnum")
	.dwattr $C$DW$292, DW_AT_TI_symbol_name("_chnum")
	.dwattr $C$DW$292, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$292, DW_AT_location[DW_OP_reg12]
;----------------------------------------------------------------------
; 595 | void siu_open_rxsgn (tint chnum)                                       
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: siu_open_rxsgn                                               *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,CARRY,TC1,  *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 40 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (38 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_siu_open_rxsgn:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-39
	.dwcfi	cfa_offset, 40
$C$DW$293	.dwtag  DW_TAG_variable, DW_AT_name("chnum")
	.dwattr $C$DW$293, DW_AT_TI_symbol_name("_chnum")
	.dwattr $C$DW$293, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$293, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$294	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$294, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$294, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$294, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$295	.dwtag  DW_TAG_variable, DW_AT_name("cfg")
	.dwattr $C$DW$295, DW_AT_TI_symbol_name("_cfg")
	.dwattr $C$DW$295, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$295, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$296	.dwtag  DW_TAG_variable, DW_AT_name("sgnSize")
	.dwattr $C$DW$296, DW_AT_TI_symbol_name("_sgnSize")
	.dwattr $C$DW$296, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$296, DW_AT_location[DW_OP_bregx 0x24 36]
$C$DW$297	.dwtag  DW_TAG_variable, DW_AT_name("retVal")
	.dwattr $C$DW$297, DW_AT_TI_symbol_name("_retVal")
	.dwattr $C$DW$297, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$297, DW_AT_location[DW_OP_bregx 0x24 37]
        *SP(#0) = T0 ; |596| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 597,column 14,is_stmt
;----------------------------------------------------------------------
; 597 | siuInst_t *inst = &siuInst[chnum-1];                                   
; 598 | sgnConfig_t cfg;                                                       
; 599 | tint sgnSize, retVal;                                                  
;----------------------------------------------------------------------
        AC0 = *SP(#0) * #28 ; |597| 
        AR1 = AC0 - #28 ; |597| 
        XAR3 = #_siuInst ; |597| 
        XAR0 = mar(*SP(#36))

        dbl(*SP(#2)) = XAR3
||      mar(AR3 + AR1) ; |597| 

	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 602,column 3,is_stmt
;----------------------------------------------------------------------
; 602 | retVal = sgnGetSizes(&sgnSize);                                        
;----------------------------------------------------------------------
$C$DW$298	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$298, DW_AT_low_pc(0x00)
	.dwattr $C$DW$298, DW_AT_name("_sgnGetSizes")
	.dwattr $C$DW$298, DW_AT_TI_call
        call #_sgnGetSizes ; |602| 
                                        ; call occurs [#_sgnGetSizes] ; |602| 
        AR1 = T0  ; |602| 
        *SP(#37) = T0 ; |602| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 603,column 3,is_stmt
;----------------------------------------------------------------------
; 603 | if (retVal != sgn_NOERR){                                              
;----------------------------------------------------------------------
        if (AR1 == #0) goto $C$L53 ; |603| 
                                        ; branchcc occurs ; |603| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 604,column 5,is_stmt
;----------------------------------------------------------------------
; 604 | ecuSim->error_id = ecu_SIM_ERR_SGN;                                    
;----------------------------------------------------------------------
        *AR3(#89) = #4 ; |604| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 605,column 5,is_stmt
;----------------------------------------------------------------------
; 605 | ecuSim->exec = FALSE;                                                  
;----------------------------------------------------------------------
        *AR3 = #0 ; |605| 
        XAR0 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 606,column 5,is_stmt
;----------------------------------------------------------------------
; 606 | ecu_halt (&ecuSim->exec);                                              
;----------------------------------------------------------------------
$C$DW$299	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$299, DW_AT_low_pc(0x00)
	.dwattr $C$DW$299, DW_AT_name("_ecu_halt")
	.dwattr $C$DW$299, DW_AT_TI_call
        call #_ecu_halt ; |606| 
                                        ; call occurs [#_ecu_halt] ; |606| 
$C$L53:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 609,column 3,is_stmt
;----------------------------------------------------------------------
; 609 | sgnRxInst = malloc(sgnSize);                                           
;----------------------------------------------------------------------
        T0 = *SP(#36) ; |609| 
$C$DW$300	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$300, DW_AT_low_pc(0x00)
	.dwattr $C$DW$300, DW_AT_name("_malloc")
	.dwattr $C$DW$300, DW_AT_TI_call
        call #_malloc ; |609| 
                                        ; call occurs [#_malloc] ; |609| 
        XAR3 = dbl(*(#_ecuSim))
        dbl(*(#_sgnRxInst)) = XAR0
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 611,column 3,is_stmt
;----------------------------------------------------------------------
; 611 | cfg.delay         = ecuSim->rxSGN.delay;                               
; 612 | cfg.dc_offset     = ecuSim->rxSGN.dcoffset;                            
; 613 | cfg.wf_type       = ecuSim->rxSGN.wftype;                              
; 614 | cfg.f1            = ecuSim->rxSGN.f1;                                  
; 615 | cfg.f2            = ecuSim->rxSGN.f2;                                  
; 616 | cfg.t_amp1        = ecuSim->rxSGN.amp1;                                
; 617 | cfg.t_amp2        = ecuSim->rxSGN.amp2;                                
; 618 | cfg.pr_period     = 1000;      /* # of samples between phase reversals
;     | */                                                                     
; 619 | cfg.pr_enable     = FALSE;     /* disable phase reversal */            
; 620 | cfg.noise_level   = ecuSim->rxSGN.nlevel;                              
; 621 | cfg.noise_seed    = ecuSim->rxSGN.nseed;                               
; 622 | cfg.noise_type    = ecuSim->rxSGN.ntype;                               
;----------------------------------------------------------------------
        AR1 = *AR3(#54) ; |611| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 623,column 3,is_stmt
;----------------------------------------------------------------------
; 623 | cfg.fsk_duration  = 90;           /* 90/300 = 300ms */                 
;----------------------------------------------------------------------
        AC0 = #90 ; |623| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 611,column 3,is_stmt
        *SP(#4) = AR1 ; |611| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 612,column 3,is_stmt
        AR1 = *AR3(#55) ; |612| 
        *SP(#5) = AR1 ; |612| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 613,column 3,is_stmt
        AR1 = *AR3(#56) ; |613| 
        *SP(#6) = AR1 ; |613| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 614,column 3,is_stmt
        AR1 = *AR3(#57) ; |614| 
        *SP(#7) = AR1 ; |614| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 615,column 3,is_stmt
        AR1 = *AR3(#58) ; |615| 
        *SP(#8) = AR1 ; |615| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 616,column 3,is_stmt
        AR1 = *AR3(#59) ; |616| 
        *SP(#10) = AR1 ; |616| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 617,column 3,is_stmt
        AR1 = *AR3(#60) ; |617| 
        *SP(#11) = AR1 ; |617| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 618,column 3,is_stmt
        *SP(#12) = #1000 ; |618| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 619,column 3,is_stmt
        *SP(#13) = #0 ; |619| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 620,column 3,is_stmt
        AR1 = *AR3(#61) ; |620| 
        *SP(#19) = AR1 ; |620| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 621,column 3,is_stmt
        AR1 = *AR3(#62) ; |621| 
        *SP(#20) = AR1 ; |621| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 622,column 3,is_stmt
        AR1 = *AR3(#63) ; |622| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 624,column 3,is_stmt
;----------------------------------------------------------------------
; 624 | cfg.fsk_dataptr   = &v21_flags;   /* V.21 flags */                     
; 625 | cfg.fsk_numword   = 1;                                                 
; 626 | cfg.power_level   = ecuSim->rxSGN.pow_level;                           
; 627 | cfg.hoth_wng_seed = ecuSim->rxSGN.hoth_seed;                           
;----------------------------------------------------------------------
        XAR3 = #_v21_flags ; |624| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 622,column 3,is_stmt
        *SP(#21) = AR1 ; |622| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 623,column 3,is_stmt
        dbl(*SP(#14)) = AC0 ; |623| 
        dbl(*SP(#16)) = XAR3
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 628,column 3,is_stmt
;----------------------------------------------------------------------
; 628 | cfg.file_io_fcn   = siu_rx_file;                                       
;----------------------------------------------------------------------
        AC0 = #(_siu_rx_file >> 16) << #16 ; |628| 
        AC0 = AC0 | #(_siu_rx_file & 0xffff) ; |628| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 625,column 3,is_stmt
        *SP(#18) = #1 ; |625| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 626,column 3,is_stmt
        AR1 = *AR3(#64) ; |626| 
        *SP(#22) = AR1 ; |626| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 627,column 3,is_stmt
        AR1 = *AR3(#65) ; |627| 
        *SP(#23) = AR1 ; |627| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 628,column 3,is_stmt
        dbl(*SP(#24)) = AC0 ; |628| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 629,column 3,is_stmt
;----------------------------------------------------------------------
; 629 | cfg.addr          = ecuSim->rxSGN.sdram_addr;                          
;----------------------------------------------------------------------
        AC0 = dbl(*AR3(#66)) ; |629| 
        dbl(*SP(#26)) = AC0 ; |629| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 630,column 3,is_stmt
;----------------------------------------------------------------------
; 630 | cfg.count         = ecuSim->rxSGN.num_sample;                          
;----------------------------------------------------------------------
        AC0 = dbl(*AR3(#68)) ; |630| 
        dbl(*SP(#28)) = AC0 ; |630| 
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 631,column 3,is_stmt
;----------------------------------------------------------------------
; 631 | if (inst->companding_law == const_COMP_MULAW_8)                        
;----------------------------------------------------------------------
        TC1 = (*AR3(#22) == #1) ; |631| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 632,column 5,is_stmt
;----------------------------------------------------------------------
; 632 | cfg.pcmtbl      = &muaTblUlaw[0];                                      
;----------------------------------------------------------------------
        XAR3 = #_muaTblUlaw ; |632| 
        if (TC1) execute (D_Unit) ||
           dbl(*SP(#30)) = XAR3
        if (TC1) goto $C$L54 ; |632| 
                                        ; branchcc occurs ; |632| 
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 633,column 8,is_stmt
;----------------------------------------------------------------------
; 633 | else if (inst->companding_law == const_COMP_ALAW_8)                    
;----------------------------------------------------------------------
        AR1 = *AR3(#22) ; |633| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 634,column 5,is_stmt
;----------------------------------------------------------------------
; 634 | cfg.pcmtbl      = &muaTblAlaw[0];                                      
;----------------------------------------------------------------------
        XAR3 = #_muaTblAlaw ; |634| 
        if (AR1 == #0) execute (D_Unit) ||
           dbl(*SP(#30)) = XAR3
$C$L54:    
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 635,column 3,is_stmt
;----------------------------------------------------------------------
; 635 | cfg.exception     = inst->exception;                                   
;----------------------------------------------------------------------
        AC0 = dbl(*AR3(short(#2))) ; |635| 
        dbl(*SP(#32)) = AC0 ; |635| 
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 636,column 3,is_stmt
;----------------------------------------------------------------------
; 636 | cfg.debug         = inst->debug;                                       
;----------------------------------------------------------------------
        AC0 = dbl(*AR3(short(#4))) ; |636| 
        XAR3 = dbl(*(#_ecuSim))
        dbl(*SP(#34)) = AC0 ; |636| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 637,column 3,is_stmt
;----------------------------------------------------------------------
; 637 | cfg.Fs            = ecuSim->Fs;                                        
;----------------------------------------------------------------------
        AR1 = *AR3(#88) ; |637| 
        *SP(#9) = AR1 ; |637| 
        XAR1 = mar(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 638,column 3,is_stmt
;----------------------------------------------------------------------
; 638 | sgnInit (sgnRxInst, &cfg);                                             
;----------------------------------------------------------------------
$C$DW$301	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$301, DW_AT_low_pc(0x00)
	.dwattr $C$DW$301, DW_AT_name("_sgnInit")
	.dwattr $C$DW$301, DW_AT_TI_call
        call #_sgnInit ; |638| 
                                        ; call occurs [#_sgnInit] ; |638| 
        SP = SP + #39
	.dwcfi	cfa_offset, 1
$C$DW$302	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$302, DW_AT_low_pc(0x00)
	.dwattr $C$DW$302, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$291, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c")
	.dwattr $C$DW$291, DW_AT_TI_end_line(0x27f)
	.dwattr $C$DW$291, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$291

	.sect	".text"
	.global	_siu_open_txsgn

$C$DW$303	.dwtag  DW_TAG_subprogram, DW_AT_name("siu_open_txsgn")
	.dwattr $C$DW$303, DW_AT_low_pc(_siu_open_txsgn)
	.dwattr $C$DW$303, DW_AT_high_pc(0x00)
	.dwattr $C$DW$303, DW_AT_TI_symbol_name("_siu_open_txsgn")
	.dwattr $C$DW$303, DW_AT_external
	.dwattr $C$DW$303, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c")
	.dwattr $C$DW$303, DW_AT_TI_begin_line(0x281)
	.dwattr $C$DW$303, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$303, DW_AT_TI_max_frame_size(0x28)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 642,column 1,is_stmt,address _siu_open_txsgn

	.dwfde $C$DW$CIE, _siu_open_txsgn
$C$DW$304	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chnum")
	.dwattr $C$DW$304, DW_AT_TI_symbol_name("_chnum")
	.dwattr $C$DW$304, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$304, DW_AT_location[DW_OP_reg12]
;----------------------------------------------------------------------
; 641 | void siu_open_txsgn (tint chnum)                                       
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: siu_open_txsgn                                               *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,CARRY,TC1,  *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 40 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (38 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_siu_open_txsgn:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-39
	.dwcfi	cfa_offset, 40
$C$DW$305	.dwtag  DW_TAG_variable, DW_AT_name("chnum")
	.dwattr $C$DW$305, DW_AT_TI_symbol_name("_chnum")
	.dwattr $C$DW$305, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$305, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$306	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$306, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$306, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$306, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$307	.dwtag  DW_TAG_variable, DW_AT_name("cfg")
	.dwattr $C$DW$307, DW_AT_TI_symbol_name("_cfg")
	.dwattr $C$DW$307, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$307, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$308	.dwtag  DW_TAG_variable, DW_AT_name("sgnSize")
	.dwattr $C$DW$308, DW_AT_TI_symbol_name("_sgnSize")
	.dwattr $C$DW$308, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$308, DW_AT_location[DW_OP_bregx 0x24 36]
$C$DW$309	.dwtag  DW_TAG_variable, DW_AT_name("retVal")
	.dwattr $C$DW$309, DW_AT_TI_symbol_name("_retVal")
	.dwattr $C$DW$309, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$309, DW_AT_location[DW_OP_bregx 0x24 37]
        *SP(#0) = T0 ; |642| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 643,column 14,is_stmt
;----------------------------------------------------------------------
; 643 | siuInst_t *inst = &siuInst[chnum-1];                                   
; 644 | sgnConfig_t cfg;                                                       
; 645 | tint sgnSize, retVal;                                                  
;----------------------------------------------------------------------
        AC0 = *SP(#0) * #28 ; |643| 
        AR1 = AC0 - #28 ; |643| 
        XAR3 = #_siuInst ; |643| 
        XAR0 = mar(*SP(#36))

        dbl(*SP(#2)) = XAR3
||      mar(AR3 + AR1) ; |643| 

	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 648,column 3,is_stmt
;----------------------------------------------------------------------
; 648 | retVal = sgnGetSizes(&sgnSize);                                        
;----------------------------------------------------------------------
$C$DW$310	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$310, DW_AT_low_pc(0x00)
	.dwattr $C$DW$310, DW_AT_name("_sgnGetSizes")
	.dwattr $C$DW$310, DW_AT_TI_call
        call #_sgnGetSizes ; |648| 
                                        ; call occurs [#_sgnGetSizes] ; |648| 
        AR1 = T0  ; |648| 
        *SP(#37) = T0 ; |648| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 649,column 3,is_stmt
;----------------------------------------------------------------------
; 649 | if (retVal != sgn_NOERR){                                              
;----------------------------------------------------------------------
        if (AR1 == #0) goto $C$L55 ; |649| 
                                        ; branchcc occurs ; |649| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 650,column 5,is_stmt
;----------------------------------------------------------------------
; 650 | ecuSim->error_id = ecu_SIM_ERR_SGN;                                    
;----------------------------------------------------------------------
        *AR3(#89) = #4 ; |650| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 651,column 5,is_stmt
;----------------------------------------------------------------------
; 651 | ecuSim->exec = FALSE;                                                  
;----------------------------------------------------------------------
        *AR3 = #0 ; |651| 
        XAR0 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 652,column 5,is_stmt
;----------------------------------------------------------------------
; 652 | ecu_halt (&ecuSim->exec);                                              
;----------------------------------------------------------------------
$C$DW$311	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$311, DW_AT_low_pc(0x00)
	.dwattr $C$DW$311, DW_AT_name("_ecu_halt")
	.dwattr $C$DW$311, DW_AT_TI_call
        call #_ecu_halt ; |652| 
                                        ; call occurs [#_ecu_halt] ; |652| 
$C$L55:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 654,column 3,is_stmt
;----------------------------------------------------------------------
; 654 | sgnTxInst = malloc(sgnSize);                                           
;----------------------------------------------------------------------
        T0 = *SP(#36) ; |654| 
$C$DW$312	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$312, DW_AT_low_pc(0x00)
	.dwattr $C$DW$312, DW_AT_name("_malloc")
	.dwattr $C$DW$312, DW_AT_TI_call
        call #_malloc ; |654| 
                                        ; call occurs [#_malloc] ; |654| 
        XAR3 = dbl(*(#_ecuSim))
        dbl(*(#_sgnTxInst)) = XAR0
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 656,column 3,is_stmt
;----------------------------------------------------------------------
; 656 | cfg.delay         = ecuSim->txSGN.delay;                               
; 657 | cfg.dc_offset     = ecuSim->txSGN.dcoffset;                            
; 658 | cfg.wf_type       = ecuSim->txSGN.wftype;                              
; 659 | cfg.f1            = ecuSim->txSGN.f1;                                  
; 660 | cfg.f2            = ecuSim->txSGN.f2;                                  
; 661 | cfg.t_amp1        = ecuSim->txSGN.amp1;                                
; 662 | cfg.t_amp2        = ecuSim->txSGN.amp2;                                
; 663 | cfg.pr_period     = 1000;      /* # of samples between phase reversals
;     | */                                                                     
; 664 | cfg.pr_enable     = FALSE;     /* disable phase reversal */            
; 665 | cfg.noise_level   = ecuSim->txSGN.nlevel;                              
; 666 | cfg.noise_seed    = ecuSim->txSGN.nseed;                               
; 667 | cfg.noise_type    = ecuSim->txSGN.ntype;                               
;----------------------------------------------------------------------
        AR1 = *AR3(#34) ; |656| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 668,column 3,is_stmt
;----------------------------------------------------------------------
; 668 | cfg.fsk_duration  = 90;           /* 90/300 = 300ms */                 
;----------------------------------------------------------------------
        AC0 = #90 ; |668| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 656,column 3,is_stmt
        *SP(#4) = AR1 ; |656| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 657,column 3,is_stmt
        AR1 = *AR3(#35) ; |657| 
        *SP(#5) = AR1 ; |657| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 658,column 3,is_stmt
        AR1 = *AR3(#36) ; |658| 
        *SP(#6) = AR1 ; |658| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 659,column 3,is_stmt
        AR1 = *AR3(#37) ; |659| 
        *SP(#7) = AR1 ; |659| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 660,column 3,is_stmt
        AR1 = *AR3(#38) ; |660| 
        *SP(#8) = AR1 ; |660| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 661,column 3,is_stmt
        AR1 = *AR3(#39) ; |661| 
        *SP(#10) = AR1 ; |661| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 662,column 3,is_stmt
        AR1 = *AR3(#40) ; |662| 
        *SP(#11) = AR1 ; |662| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 663,column 3,is_stmt
        *SP(#12) = #1000 ; |663| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 664,column 3,is_stmt
        *SP(#13) = #0 ; |664| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 665,column 3,is_stmt
        AR1 = *AR3(#41) ; |665| 
        *SP(#19) = AR1 ; |665| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 666,column 3,is_stmt
        AR1 = *AR3(#42) ; |666| 
        *SP(#20) = AR1 ; |666| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 667,column 3,is_stmt
        AR1 = *AR3(#43) ; |667| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 669,column 3,is_stmt
;----------------------------------------------------------------------
; 669 | cfg.fsk_dataptr   = &v21_flags;   /* V.21 flags */                     
; 670 | cfg.fsk_numword   = 1;                                                 
; 671 | cfg.power_level   = ecuSim->txSGN.pow_level;                           
; 672 | cfg.hoth_wng_seed = ecuSim->txSGN.hoth_seed;                           
;----------------------------------------------------------------------
        XAR3 = #_v21_flags ; |669| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 667,column 3,is_stmt
        *SP(#21) = AR1 ; |667| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 668,column 3,is_stmt
        dbl(*SP(#14)) = AC0 ; |668| 
        dbl(*SP(#16)) = XAR3
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 673,column 3,is_stmt
;----------------------------------------------------------------------
; 673 | cfg.file_io_fcn   = siu_tx_file;                                       
;----------------------------------------------------------------------
        AC0 = #(_siu_tx_file >> 16) << #16 ; |673| 
        AC0 = AC0 | #(_siu_tx_file & 0xffff) ; |673| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 670,column 3,is_stmt
        *SP(#18) = #1 ; |670| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 671,column 3,is_stmt
        AR1 = *AR3(#44) ; |671| 
        *SP(#22) = AR1 ; |671| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 672,column 3,is_stmt
        AR1 = *AR3(#45) ; |672| 
        *SP(#23) = AR1 ; |672| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 673,column 3,is_stmt
        dbl(*SP(#24)) = AC0 ; |673| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 674,column 3,is_stmt
;----------------------------------------------------------------------
; 674 | cfg.addr          = ecuSim->txSGN.sdram_addr;                          
;----------------------------------------------------------------------
        AC0 = dbl(*AR3(#46)) ; |674| 
        dbl(*SP(#26)) = AC0 ; |674| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 675,column 3,is_stmt
;----------------------------------------------------------------------
; 675 | cfg.count         = ecuSim->txSGN.num_sample;                          
;----------------------------------------------------------------------
        AC0 = dbl(*AR3(#48)) ; |675| 
        dbl(*SP(#28)) = AC0 ; |675| 
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 676,column 3,is_stmt
;----------------------------------------------------------------------
; 676 | if (inst->companding_law == const_COMP_MULAW_8)                        
;----------------------------------------------------------------------
        TC1 = (*AR3(#22) == #1) ; |676| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 677,column 5,is_stmt
;----------------------------------------------------------------------
; 677 | cfg.pcmtbl      = &muaTblUlaw[0];                                      
;----------------------------------------------------------------------
        XAR3 = #_muaTblUlaw ; |677| 
        if (TC1) execute (D_Unit) ||
           dbl(*SP(#30)) = XAR3
        if (TC1) goto $C$L56 ; |677| 
                                        ; branchcc occurs ; |677| 
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 678,column 8,is_stmt
;----------------------------------------------------------------------
; 678 | else if (inst->companding_law == const_COMP_ALAW_8)                    
;----------------------------------------------------------------------
        AR1 = *AR3(#22) ; |678| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 679,column 5,is_stmt
;----------------------------------------------------------------------
; 679 | cfg.pcmtbl      = &muaTblAlaw[0];                                      
;----------------------------------------------------------------------
        XAR3 = #_muaTblAlaw ; |679| 
        if (AR1 == #0) execute (D_Unit) ||
           dbl(*SP(#30)) = XAR3
$C$L56:    
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 680,column 3,is_stmt
;----------------------------------------------------------------------
; 680 | cfg.exception     = inst->exception;                                   
;----------------------------------------------------------------------
        AC0 = dbl(*AR3(short(#2))) ; |680| 
        dbl(*SP(#32)) = AC0 ; |680| 
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 681,column 3,is_stmt
;----------------------------------------------------------------------
; 681 | cfg.debug         = inst->debug;                                       
;----------------------------------------------------------------------
        AC0 = dbl(*AR3(short(#4))) ; |681| 
        XAR3 = dbl(*(#_ecuSim))
        dbl(*SP(#34)) = AC0 ; |681| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 682,column 3,is_stmt
;----------------------------------------------------------------------
; 682 | cfg.Fs            = ecuSim->Fs;                                        
;----------------------------------------------------------------------
        AR1 = *AR3(#88) ; |682| 
        *SP(#9) = AR1 ; |682| 
        XAR1 = mar(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 683,column 3,is_stmt
;----------------------------------------------------------------------
; 683 | sgnInit (sgnTxInst, &cfg);                                             
;----------------------------------------------------------------------
$C$DW$313	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$313, DW_AT_low_pc(0x00)
	.dwattr $C$DW$313, DW_AT_name("_sgnInit")
	.dwattr $C$DW$313, DW_AT_TI_call
        call #_sgnInit ; |683| 
                                        ; call occurs [#_sgnInit] ; |683| 
        SP = SP + #39
	.dwcfi	cfa_offset, 1
$C$DW$314	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$314, DW_AT_low_pc(0x00)
	.dwattr $C$DW$314, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$303, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c")
	.dwattr $C$DW$303, DW_AT_TI_end_line(0x2ac)
	.dwattr $C$DW$303, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$303

	.sect	".text"
	.global	_siu_set_sgn

$C$DW$315	.dwtag  DW_TAG_subprogram, DW_AT_name("siu_set_sgn")
	.dwattr $C$DW$315, DW_AT_low_pc(_siu_set_sgn)
	.dwattr $C$DW$315, DW_AT_high_pc(0x00)
	.dwattr $C$DW$315, DW_AT_TI_symbol_name("_siu_set_sgn")
	.dwattr $C$DW$315, DW_AT_external
	.dwattr $C$DW$315, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c")
	.dwattr $C$DW$315, DW_AT_TI_begin_line(0x2ae)
	.dwattr $C$DW$315, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$315, DW_AT_TI_max_frame_size(0x0e)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 687,column 1,is_stmt,address _siu_set_sgn

	.dwfde $C$DW$CIE, _siu_set_sgn
$C$DW$316	.dwtag  DW_TAG_formal_parameter, DW_AT_name("inst")
	.dwattr $C$DW$316, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$316, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$316, DW_AT_location[DW_OP_reg17]
$C$DW$317	.dwtag  DW_TAG_formal_parameter, DW_AT_name("sgn")
	.dwattr $C$DW$317, DW_AT_TI_symbol_name("_sgn")
	.dwattr $C$DW$317, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$317, DW_AT_location[DW_OP_reg19]
;----------------------------------------------------------------------
; 686 | void siu_set_sgn (void *inst, siuSGNPars_t *sgn)                       
; 688 | sgnControl_t  ctl;                                                     
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: siu_set_sgn                                                  *
;*                                                                             *
;*   Function Uses Regs : AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,TC1,M40,SATA,SATD,RDM, *
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 14 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (12 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_siu_set_sgn:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-13
	.dwcfi	cfa_offset, 14
$C$DW$318	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$318, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$318, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$318, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$319	.dwtag  DW_TAG_variable, DW_AT_name("sgn")
	.dwattr $C$DW$319, DW_AT_TI_symbol_name("_sgn")
	.dwattr $C$DW$319, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$319, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$320	.dwtag  DW_TAG_variable, DW_AT_name("ctl")
	.dwattr $C$DW$320, DW_AT_TI_symbol_name("_ctl")
	.dwattr $C$DW$320, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$320, DW_AT_location[DW_OP_bregx 0x24 4]
        dbl(*SP(#2)) = XAR1
        dbl(*SP(#0)) = XAR0
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 690,column 3,is_stmt
;----------------------------------------------------------------------
; 690 | if (sgn->state) {                                                      
;----------------------------------------------------------------------
        AR1 = *AR3 ; |690| 
        if (AR1 == #0) goto $C$L62 ; |690| 
                                        ; branchcc occurs ; |690| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 691,column 5,is_stmt
;----------------------------------------------------------------------
; 691 | if (sgn->wftype == sgn_WFT_CSS || sgn->wftype == sgn_WFT_CSS_DTK) {    
;----------------------------------------------------------------------
        TC1 = (*AR3(short(#4)) == #4) ; |691| 
        if (TC1) goto $C$L57 ; |691| 
                                        ; branchcc occurs ; |691| 
        TC1 = (*AR3(short(#4)) == #5) ; |691| 
        if (!TC1) goto $C$L58 ; |691| 
                                        ; branchcc occurs ; |691| 
$C$L57:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 692,column 7,is_stmt
;----------------------------------------------------------------------
; 692 | ctl.code          = sgn_CTL_CSS_POW;                                   
; 693 | ctl.u.power_level = sgn->pow_level;                                    
;----------------------------------------------------------------------
        *SP(#4) = #6 ; |692| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 694,column 5,is_stmt
        goto $C$L59 ; |694| 
                                        ; branch occurs ; |694| 
$C$L58:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 695,column 10,is_stmt
;----------------------------------------------------------------------
; 695 | else if (sgn->wftype == sgn_WFT_HOTH) {                                
;----------------------------------------------------------------------
        TC1 = (*AR3(short(#4)) == #7) ; |695| 
        if (!TC1) goto $C$L60 ; |695| 
                                        ; branchcc occurs ; |695| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 696,column 7,is_stmt
;----------------------------------------------------------------------
; 696 | ctl.code          = sgn_CTL_HOTH_POW;                                  
;----------------------------------------------------------------------
        *SP(#4) = #8 ; |696| 
$C$L59:    
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 697,column 7,is_stmt
;----------------------------------------------------------------------
; 697 | ctl.u.power_level = sgn->pow_level;                                    
;----------------------------------------------------------------------
        AR1 = *AR3(#12) ; |697| 
        *SP(#6) = AR1 ; |697| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 698,column 5,is_stmt
;----------------------------------------------------------------------
; 699 | else {                                                                 
;----------------------------------------------------------------------
        goto $C$L61 ; |698| 
                                        ; branch occurs ; |698| 
$C$L60:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 700,column 7,is_stmt
;----------------------------------------------------------------------
; 700 | ctl.code      = sgn_CTL_TONE;                                          
;----------------------------------------------------------------------
        *SP(#4) = #1 ; |700| 
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 701,column 7,is_stmt
;----------------------------------------------------------------------
; 701 | ctl.u.t.f1    = sgn->f1;                                               
;----------------------------------------------------------------------
        AR1 = *AR3(short(#5)) ; |701| 
        *SP(#6) = AR1 ; |701| 
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 702,column 7,is_stmt
;----------------------------------------------------------------------
; 702 | ctl.u.t.f2    = sgn->f2;                                               
;----------------------------------------------------------------------
        AR1 = *AR3(short(#6)) ; |702| 
        *SP(#7) = AR1 ; |702| 
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 703,column 7,is_stmt
;----------------------------------------------------------------------
; 703 | ctl.u.t.amp1  = sgn->amp1;                                             
;----------------------------------------------------------------------
        AR1 = *AR3(short(#7)) ; |703| 
        *SP(#8) = AR1 ; |703| 
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 704,column 7,is_stmt
;----------------------------------------------------------------------
; 704 | ctl.u.t.amp2  = sgn->amp2;                                             
;----------------------------------------------------------------------
        AR1 = *AR3(#8) ; |704| 
        *SP(#9) = AR1 ; |704| 
$C$L61:    
        XAR0 = dbl(*SP(#0))
        XAR1 = mar(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 706,column 5,is_stmt
;----------------------------------------------------------------------
; 706 | sgnControl (inst, &ctl);                                               
;----------------------------------------------------------------------
$C$DW$321	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$321, DW_AT_low_pc(0x00)
	.dwattr $C$DW$321, DW_AT_name("_sgnControl")
	.dwattr $C$DW$321, DW_AT_TI_call
        call #_sgnControl ; |706| 
                                        ; call occurs [#_sgnControl] ; |706| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 708,column 5,is_stmt
;----------------------------------------------------------------------
; 708 | ctl.code           = sgn_CTL_NOISE;                                    
;----------------------------------------------------------------------
        *SP(#4) = #2 ; |708| 
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 709,column 5,is_stmt
;----------------------------------------------------------------------
; 709 | ctl.u.noise_level  = sgn->nlevel;                                      
;----------------------------------------------------------------------
        AR1 = *AR3(#9) ; |709| 
        *SP(#6) = AR1 ; |709| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 710,column 3,is_stmt
;----------------------------------------------------------------------
; 711 | else {                                                                 
;----------------------------------------------------------------------
        goto $C$L66 ; |710| 
                                        ; branch occurs ; |710| 
$C$L62:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 712,column 5,is_stmt
;----------------------------------------------------------------------
; 712 | if (sgn->wftype == sgn_WFT_CSS || sgn->wftype == sgn_WFT_CSS_DTK) {    
;----------------------------------------------------------------------
        TC1 = (*AR3(short(#4)) == #4) ; |712| 
        if (TC1) goto $C$L63 ; |712| 
                                        ; branchcc occurs ; |712| 
        TC1 = (*AR3(short(#4)) == #5) ; |712| 
        if (!TC1) goto $C$L64 ; |712| 
                                        ; branchcc occurs ; |712| 
$C$L63:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 713,column 7,is_stmt
;----------------------------------------------------------------------
; 713 | ctl.code          = sgn_CTL_CSS_POW;                                   
;----------------------------------------------------------------------
        *SP(#4) = #6 ; |713| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 714,column 7,is_stmt
;----------------------------------------------------------------------
; 714 | ctl.u.power_level = -100;                                              
;----------------------------------------------------------------------
        *SP(#6) = #-100 ; |714| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 715,column 5,is_stmt
        goto $C$L65 ; |715| 
                                        ; branch occurs ; |715| 
$C$L64:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 716,column 10,is_stmt
;----------------------------------------------------------------------
; 716 | else if (sgn->wftype == sgn_WFT_HOTH) {                                
;----------------------------------------------------------------------
        TC1 = (*AR3(short(#4)) == #7) ; |716| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 717,column 7,is_stmt
;----------------------------------------------------------------------
; 717 | ctl.code          = sgn_CTL_HOTH_POW;                                  
;----------------------------------------------------------------------
        if (TC1) execute (D_Unit) ||
           *SP(#4) = #8 ; |717| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 718,column 7,is_stmt
;----------------------------------------------------------------------
; 718 | ctl.u.power_level = -80;                                               
;----------------------------------------------------------------------
        if (TC1) execute (D_Unit) ||
           *SP(#6) = #-80 ; |718| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 719,column 5,is_stmt
;----------------------------------------------------------------------
; 720 | else {                                                                 
;----------------------------------------------------------------------
        if (TC1) goto $C$L65 ; |719| 
                                        ; branchcc occurs ; |719| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 721,column 7,is_stmt
;----------------------------------------------------------------------
; 721 | ctl.code     = sgn_CTL_TONE;                                           
;----------------------------------------------------------------------
        *SP(#4) = #1 ; |721| 
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 722,column 7,is_stmt
;----------------------------------------------------------------------
; 722 | ctl.u.t.f1   = sgn->f1;                                                
;----------------------------------------------------------------------
        AR1 = *AR3(short(#5)) ; |722| 
        *SP(#6) = AR1 ; |722| 
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 723,column 7,is_stmt
;----------------------------------------------------------------------
; 723 | ctl.u.t.f2   = sgn->f2;                                                
;----------------------------------------------------------------------
        AR1 = *AR3(short(#6)) ; |723| 
        *SP(#7) = AR1 ; |723| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 724,column 7,is_stmt
;----------------------------------------------------------------------
; 724 | ctl.u.t.amp1 = 0;                                                      
;----------------------------------------------------------------------
        *SP(#8) = #0 ; |724| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 725,column 7,is_stmt
;----------------------------------------------------------------------
; 725 | ctl.u.t.amp2 = 0;                                                      
;----------------------------------------------------------------------
        *SP(#9) = #0 ; |725| 
$C$L65:    
        XAR0 = dbl(*SP(#0))
        XAR1 = mar(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 727,column 5,is_stmt
;----------------------------------------------------------------------
; 727 | sgnControl (inst, &ctl);                                               
;----------------------------------------------------------------------
$C$DW$322	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$322, DW_AT_low_pc(0x00)
	.dwattr $C$DW$322, DW_AT_name("_sgnControl")
	.dwattr $C$DW$322, DW_AT_TI_call
        call #_sgnControl ; |727| 
                                        ; call occurs [#_sgnControl] ; |727| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 729,column 5,is_stmt
;----------------------------------------------------------------------
; 729 | ctl.code           = sgn_CTL_NOISE;                                    
;----------------------------------------------------------------------
        *SP(#4) = #2 ; |729| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 730,column 5,is_stmt
;----------------------------------------------------------------------
; 730 | ctl.u.noise_level  = -80;                                              
;----------------------------------------------------------------------
        *SP(#6) = #-80 ; |730| 
$C$L66:    
        XAR0 = dbl(*SP(#0))
        XAR1 = mar(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 732,column 3,is_stmt
;----------------------------------------------------------------------
; 732 | sgnControl (inst, &ctl);                                               
;----------------------------------------------------------------------
$C$DW$323	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$323, DW_AT_low_pc(0x00)
	.dwattr $C$DW$323, DW_AT_name("_sgnControl")
	.dwattr $C$DW$323, DW_AT_TI_call
        call #_sgnControl ; |732| 
                                        ; call occurs [#_sgnControl] ; |732| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 734,column 3,is_stmt
;----------------------------------------------------------------------
; 734 | ctl.code = sgn_CTL_DCOFFSET;                                           
;----------------------------------------------------------------------
        *SP(#4) = #0 ; |734| 
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 735,column 3,is_stmt
;----------------------------------------------------------------------
; 735 | ctl.u.dc_offset = sgn->dcoffset;                                       
;----------------------------------------------------------------------
        AR1 = *AR3(short(#3)) ; |735| 
        *SP(#6) = AR1 ; |735| 
        XAR0 = dbl(*SP(#0))
        XAR1 = mar(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 736,column 3,is_stmt
;----------------------------------------------------------------------
; 736 | sgnControl (inst, &ctl);                                               
;----------------------------------------------------------------------
$C$DW$324	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$324, DW_AT_low_pc(0x00)
	.dwattr $C$DW$324, DW_AT_name("_sgnControl")
	.dwattr $C$DW$324, DW_AT_TI_call
        call #_sgnControl ; |736| 
                                        ; call occurs [#_sgnControl] ; |736| 
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 739,column 3,is_stmt
;----------------------------------------------------------------------
; 739 | if (sgn->reset) {                                                      
;----------------------------------------------------------------------
        AR1 = *AR3(short(#1)) ; |739| 
        if (AR1 == #0) goto $C$L70 ; |739| 
                                        ; branchcc occurs ; |739| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 740,column 5,is_stmt
;----------------------------------------------------------------------
; 740 | if (sgn->wftype == sgn_WFT_CSS || sgn->wftype == sgn_WFT_CSS_DTK )     
;----------------------------------------------------------------------
        TC1 = (*AR3(short(#4)) == #4) ; |740| 
        if (TC1) goto $C$L67 ; |740| 
                                        ; branchcc occurs ; |740| 
        TC1 = (*AR3(short(#4)) == #5) ; |740| 
        if (!TC1) goto $C$L68 ; |740| 
                                        ; branchcc occurs ; |740| 
$C$L67:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 741,column 7,is_stmt
;----------------------------------------------------------------------
; 741 | ctl.code = sgn_CTL_CSS_RESET;                                          
;----------------------------------------------------------------------
        *SP(#4) = #7 ; |741| 
        goto $C$L69 ; |741| 
                                        ; branch occurs ; |741| 
$C$L68:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 742,column 10,is_stmt
;----------------------------------------------------------------------
; 742 | else if (sgn->wftype == sgn_WFT_SDRAM)                                 
;----------------------------------------------------------------------
        TC1 = (*AR3(short(#4)) == #9) ; |742| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 743,column 7,is_stmt
;----------------------------------------------------------------------
; 743 | ctl.code = sgn_CTL_SDRAM_RST;                                          
;----------------------------------------------------------------------
        if (TC1) execute (D_Unit) ||
           *SP(#4) = #9 ; |743| 
$C$L69:    
        XAR0 = dbl(*SP(#0))
        XAR1 = mar(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 744,column 5,is_stmt
;----------------------------------------------------------------------
; 744 | sgnControl (inst, &ctl);                                               
;----------------------------------------------------------------------
$C$DW$325	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$325, DW_AT_low_pc(0x00)
	.dwattr $C$DW$325, DW_AT_name("_sgnControl")
	.dwattr $C$DW$325, DW_AT_TI_call
        call #_sgnControl ; |744| 
                                        ; call occurs [#_sgnControl] ; |744| 
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 745,column 5,is_stmt
;----------------------------------------------------------------------
; 745 | sgn->reset = FALSE;                                                    
;----------------------------------------------------------------------
        *AR3(short(#1)) = #0 ; |745| 
$C$L70:    
        SP = SP + #13
	.dwcfi	cfa_offset, 1
$C$DW$326	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$326, DW_AT_low_pc(0x00)
	.dwattr $C$DW$326, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$315, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c")
	.dwattr $C$DW$315, DW_AT_TI_end_line(0x2eb)
	.dwattr $C$DW$315, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$315

	.sect	".text"
	.global	_ecu_sim_init

$C$DW$327	.dwtag  DW_TAG_subprogram, DW_AT_name("ecu_sim_init")
	.dwattr $C$DW$327, DW_AT_low_pc(_ecu_sim_init)
	.dwattr $C$DW$327, DW_AT_high_pc(0x00)
	.dwattr $C$DW$327, DW_AT_TI_symbol_name("_ecu_sim_init")
	.dwattr $C$DW$327, DW_AT_external
	.dwattr $C$DW$327, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c")
	.dwattr $C$DW$327, DW_AT_TI_begin_line(0x2ee)
	.dwattr $C$DW$327, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$327, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 751,column 1,is_stmt,address _ecu_sim_init

	.dwfde $C$DW$CIE, _ecu_sim_init
;----------------------------------------------------------------------
; 750 | void ecu_sim_init(void)                                                
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: ecu_sim_init                                                 *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,M40,SATA,SATD, *
;*                        RDM,FRCT,SMUL                                        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 2 words                                              *
;*                        (2 return address/alignment)                         *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_ecu_sim_init:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-1
	.dwcfi	cfa_offset, 2
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 752,column 3,is_stmt
;----------------------------------------------------------------------
; 752 | ecuSim->exec        = FALSE;                                           
;----------------------------------------------------------------------
        *AR3 = #0 ; |752| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 753,column 3,is_stmt
;----------------------------------------------------------------------
; 753 | ecuSim->sample_cnt  = 0;                                               
;----------------------------------------------------------------------
        AC0 = #0  ; |753| 
        dbl(*AR3(short(#2))) = AC0 ; |753| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 754,column 3,is_stmt
;----------------------------------------------------------------------
; 754 | ecuSim->clock_mul   = 0;                                /* default cloc
;     | k multiplier is 0 (bypass) */                                          
;----------------------------------------------------------------------
        *AR3(short(#4)) = #0 ; |754| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 755,column 3,is_stmt
;----------------------------------------------------------------------
; 755 | ecuSim->pcm_format  = const_COMP_MULAW_8;               /* u-law is def
;     | ault companding law */                                                 
;----------------------------------------------------------------------
        *AR3(short(#5)) = #1 ; |755| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 756,column 3,is_stmt
;----------------------------------------------------------------------
; 756 | ecuSim->pcm_bits          = 8;                          /* u-law uses 8
;     | -bits */                                                               
;----------------------------------------------------------------------
        *AR3(short(#6)) = #8 ; |756| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 757,column 3,is_stmt
;----------------------------------------------------------------------
; 757 | ecuSim->frame_size        = 5*8;                        /* 5ms default
;     | frame duration */                                                      
;----------------------------------------------------------------------
        *AR3(short(#7)) = #40 ; |757| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 758,column 3,is_stmt
;----------------------------------------------------------------------
; 758 | ecuSim->ecu_y2x_delay     = 5*8;                        /* One frame de
;     | fault y2x delay */                                                     
;----------------------------------------------------------------------
        *AR3(#8) = #40 ; |758| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 759,column 3,is_stmt
;----------------------------------------------------------------------
; 759 | ecuSim->ecu_fltseg_length = SIU_MAX_ECU_FLTSEG_LENGTH;  /* 32ms default
;     |  ECU segment duration */                                               
;----------------------------------------------------------------------
        *AR3(#9) = #256 ; |759| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 760,column 3,is_stmt
;----------------------------------------------------------------------
; 760 | ecuSim->ecu_num_fltseg    = SIU_MAX_ECU_FLTSEG;
;     |          /* default 3 active filter segments max */                    
;----------------------------------------------------------------------
        *AR3(#10) = #3 ; |760| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 761,column 3,is_stmt
;----------------------------------------------------------------------
; 761 | ecuSim->ecu_filter_length = SIU_MAX_ECU_FILTER_LENGTH ; /* 128ms defaul
;     | t ECU tail */                                                          
;----------------------------------------------------------------------
        *AR3(#11) = #1024 ; |761| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 762,column 3,is_stmt
;----------------------------------------------------------------------
; 762 | ecuSim->hyb_filter_length = SIU_MAX_HYBRID_LENGTH;      /* 128ms defaul
;     | t hybrid path */                                                       
;----------------------------------------------------------------------
        *AR3(#12) = #1024 ; |762| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 765,column 3,is_stmt
;----------------------------------------------------------------------
; 765 | ecuSim->toggle_ecu           = TRUE;                         /* toggle
;     | ECU mode */                                                            
;----------------------------------------------------------------------
        *AR3(#13) = #1 ; |765| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 766,column 3,is_stmt
;----------------------------------------------------------------------
; 766 | ecuSim->ecuCtl.ctl_code      = ecu_CTL_MASK;                           
;----------------------------------------------------------------------
        *AR3(#14) = #0 ; |766| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 767,column 3,is_stmt
;----------------------------------------------------------------------
; 767 | ecuSim->ecuCtl.u.ctl_mask[0] = ecu_ENABLE_ECHO_CANCELLER |   /* ENABLE
;     | ECU, ENABLE NLP, ENABLE UPDATE */                                      
; 768 |                                ecu_ENABLE_UPDATE         |             
; 769 |                               // ecu_ENABLE_NLP            |           
; 770 |                                ecu_ENABLE_AUTO_UPDATE    |             
; 771 |                                ecu_ENABLE_SEARCH         |             
; 772 |                                ecu_ENABLE_CNG_ADAPT      |             
; 773 |                                ecu_ENABLE_OPNLP_DETECT;                
;----------------------------------------------------------------------
        *AR3(#15) = #467 ; |767| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 774,column 3,is_stmt
;----------------------------------------------------------------------
; 774 | ecuSim->ecuCtl.u.ctl_mask[1] = ecu_ENABLE_NLP_PHASE_RND;               
;----------------------------------------------------------------------
        *AR3(#16) = #1 ; |774| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 777,column 3,is_stmt
;----------------------------------------------------------------------
; 777 | ecuSim->toggle_hyb                      = TRUE;                 /* togg
;     | le hybrid parameters */                                                
;----------------------------------------------------------------------
        *AR3(#17) = #1 ; |777| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 778,column 3,is_stmt
;----------------------------------------------------------------------
; 778 | ecuSim->hybCtl.code                     = hyb_CTL_FIRST_SEG;    /* Set
;     | the first segment */                                                   
;----------------------------------------------------------------------
        *AR3(#18) = #3 ; |778| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 779,column 3,is_stmt
;----------------------------------------------------------------------
; 779 | ecuSim->hybCtl.u.segment.type           = hyb_ST_G168_M1;       /* M1 *
;     | /                                                                      
;----------------------------------------------------------------------
        *AR3(#20) = #1 ; |779| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 780,column 3,is_stmt
;----------------------------------------------------------------------
; 780 | ecuSim->hybCtl.u.segment.erl            = 12;                   /* 12dB
;     | */                                                                     
;----------------------------------------------------------------------
        *AR3(#21) = #12 ; |780| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 781,column 3,is_stmt
;----------------------------------------------------------------------
; 781 | ecuSim->hybCtl.u.segment.delay          = 10*8;                 /* 10ms
;     |  delay*/                                                               
;----------------------------------------------------------------------
        *AR3(#22) = #80 ; |781| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 782,column 3,is_stmt
;----------------------------------------------------------------------
; 782 | ecuSim->hybCtl.u.segment.negative_phase = FALSE;                /* posi
;     | tive phase */                                                          
;----------------------------------------------------------------------
        *AR3(#23) = #0 ; |782| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 785,column 3,is_stmt
;----------------------------------------------------------------------
; 785 | ecuSim->toggle_tx_sg    = FALSE;           /* toggle Tx generator at th
;     | e beginning */                                                         
;----------------------------------------------------------------------
        *AR3(#30) = #0 ; |785| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 786,column 3,is_stmt
;----------------------------------------------------------------------
; 786 | ecuSim->txSGN.state     = TRUE;            /* default state is on */   
;----------------------------------------------------------------------
        *AR3(#32) = #1 ; |786| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 787,column 3,is_stmt
;----------------------------------------------------------------------
; 787 | ecuSim->txSGN.reset     = FALSE;           /* default to no reset */   
;----------------------------------------------------------------------
        *AR3(#33) = #0 ; |787| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 788,column 3,is_stmt
;----------------------------------------------------------------------
; 788 | ecuSim->txSGN.delay     = 0;               /* default is no delay */   
;----------------------------------------------------------------------
        *AR3(#34) = #0 ; |788| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 789,column 3,is_stmt
;----------------------------------------------------------------------
; 789 | ecuSim->txSGN.dcoffset  = 0;               /* default dc-offset */     
; 790 | //  ecuSim->txSGN.wftype    = sgn_WFT_COSINE;  /* default waveform */  
;----------------------------------------------------------------------
        *AR3(#35) = #0 ; |789| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 791,column 3,is_stmt
;----------------------------------------------------------------------
; 791 | ecuSim->txSGN.wftype    = sgn_WFT_SILENCE;                             
;----------------------------------------------------------------------
        *AR3(#36) = #0 ; |791| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 792,column 3,is_stmt
;----------------------------------------------------------------------
; 792 | ecuSim->txSGN.f1        = 500;             /* default frequencies for t
;     | one generator in Hz (Q0) */                                            
;----------------------------------------------------------------------
        *AR3(#37) = #500 ; |792| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 793,column 3,is_stmt
;----------------------------------------------------------------------
; 793 | ecuSim->txSGN.f2        = 0;                                           
;----------------------------------------------------------------------
        *AR3(#38) = #0 ; |793| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 794,column 3,is_stmt
;----------------------------------------------------------------------
; 794 | ecuSim->txSGN.amp1      = 0;               /* default amplitudes of the
;     |  two frequencies */                                                    
;----------------------------------------------------------------------
        *AR3(#39) = #0 ; |794| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 795,column 3,is_stmt
;----------------------------------------------------------------------
; 795 | ecuSim->txSGN.amp2      = 0;                                           
;----------------------------------------------------------------------
        *AR3(#40) = #0 ; |795| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 796,column 3,is_stmt
;----------------------------------------------------------------------
; 796 | ecuSim->txSGN.nlevel    = -80;             /* default noise generator l
;     | evel in dBm0 */                                                        
;----------------------------------------------------------------------
        *AR3(#41) = #-80 ; |796| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 797,column 3,is_stmt
;----------------------------------------------------------------------
; 797 | ecuSim->txSGN.nseed     = 0;               /* initial noise generator s
;     | eed */                                                                 
;----------------------------------------------------------------------
        *AR3(#42) = #0 ; |797| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 798,column 3,is_stmt
;----------------------------------------------------------------------
; 798 | ecuSim->txSGN.ntype     = sgn_NT_GAUSS;    /* Gaussian white noise */  
;----------------------------------------------------------------------
        *AR3(#43) = #1 ; |798| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 799,column 3,is_stmt
;----------------------------------------------------------------------
; 799 | ecuSim->txSGN.pow_level = -70;             /* default HOTH/CSS power le
;     | vel in dBm0 */                                                         
;----------------------------------------------------------------------
        *AR3(#44) = #-70 ; |799| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 800,column 3,is_stmt
;----------------------------------------------------------------------
; 800 | ecuSim->txSGN.hoth_seed = 8477;            /* initial HOTH generator se
;     | ed */                                                                  
;----------------------------------------------------------------------
        *AR3(#45) = #8477 ; |800| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 803,column 3,is_stmt
;----------------------------------------------------------------------
; 803 | ecuSim->toggle_rx_sg    = FALSE;           /* do not toggle Rx generato
;     | r */                                                                   
;----------------------------------------------------------------------
        *AR3(#50) = #0 ; |803| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 804,column 3,is_stmt
;----------------------------------------------------------------------
; 804 | ecuSim->rxSGN.state     = TRUE;            /* default state is on */   
;----------------------------------------------------------------------
        *AR3(#52) = #1 ; |804| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 805,column 3,is_stmt
;----------------------------------------------------------------------
; 805 | ecuSim->rxSGN.reset     = FALSE;           /* default to no reset */   
;----------------------------------------------------------------------
        *AR3(#53) = #0 ; |805| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 806,column 3,is_stmt
;----------------------------------------------------------------------
; 806 | ecuSim->rxSGN.delay     = 0;               /* default is no delay */   
;----------------------------------------------------------------------
        *AR3(#54) = #0 ; |806| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 807,column 3,is_stmt
;----------------------------------------------------------------------
; 807 | ecuSim->rxSGN.dcoffset  = 0;               /* default dc-offset */     
; 808 | //  ecuSim->rxSGN.wftype    =   sgn_WFT_COSINE;  /* default waveform */
;----------------------------------------------------------------------
        *AR3(#55) = #0 ; |807| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 809,column 3,is_stmt
;----------------------------------------------------------------------
; 809 | ecuSim->rxSGN.wftype    = sgn_WFT_CSS;                                 
;----------------------------------------------------------------------
        *AR3(#56) = #4 ; |809| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 810,column 3,is_stmt
;----------------------------------------------------------------------
; 810 | ecuSim->rxSGN.f1        = 1000;            /* default frequencies for t
;     | one generator in Hz (Q0) */                                            
;----------------------------------------------------------------------
        *AR3(#57) = #1000 ; |810| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 811,column 3,is_stmt
;----------------------------------------------------------------------
; 811 | ecuSim->rxSGN.f2        = 0;                                           
;----------------------------------------------------------------------
        *AR3(#58) = #0 ; |811| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 812,column 3,is_stmt
;----------------------------------------------------------------------
; 812 | ecuSim->rxSGN.amp1      = 0;               /* default amplitudes of the
;     |  two frequencies */                                                    
;----------------------------------------------------------------------
        *AR3(#59) = #0 ; |812| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 813,column 3,is_stmt
;----------------------------------------------------------------------
; 813 | ecuSim->rxSGN.amp2      = 0,                                           
; 814 | ecuSim->rxSGN.nlevel    = -100;             /* default noise generator
;     | level in dBm0 */                                                       
;----------------------------------------------------------------------
        *AR3(#60) = #0 ; |813| 
        XAR3 = dbl(*(#_ecuSim))
        *AR3(#61) = #-100 ; |813| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 815,column 3,is_stmt
;----------------------------------------------------------------------
; 815 | ecuSim->rxSGN.nseed     = 1531;            /* initial noise generator s
;     | eed */                                                                 
;----------------------------------------------------------------------
        *AR3(#62) = #1531 ; |815| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 816,column 3,is_stmt
;----------------------------------------------------------------------
; 816 | ecuSim->rxSGN.ntype     = sgn_NT_GAUSS;    /* Gaussian white noise */  
;----------------------------------------------------------------------
        *AR3(#63) = #1 ; |816| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 817,column 3,is_stmt
;----------------------------------------------------------------------
; 817 | ecuSim->rxSGN.pow_level = -10;             /* default HOTH/CSS power le
;     | vel in dBm0 */                                                         
;----------------------------------------------------------------------
        *AR3(#64) = #-10 ; |817| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 818,column 3,is_stmt
;----------------------------------------------------------------------
; 818 | ecuSim->rxSGN.hoth_seed = 9184;            /* initial HOTH generator se
;     | ed */                                                                  
;----------------------------------------------------------------------
        *AR3(#65) = #9184 ; |818| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 821,column 3,is_stmt
;----------------------------------------------------------------------
; 821 | ecuSim->toggle_piu      = FALSE;           /* do not toggle PIU */
;     |                                                                        
;----------------------------------------------------------------------
        *AR3(#70) = #0 ; |821| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 823,column 3,is_stmt
;----------------------------------------------------------------------
; 823 | ecuSim->piuCtl.ctl_code                   = piu_DC_OFFSET_REMOVAL;     
;----------------------------------------------------------------------
        *AR3(#72) = #10 ; |823| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 824,column 3,is_stmt
;----------------------------------------------------------------------
; 824 | ecuSim->piuCtl.u.dc_offset_removal_select = piu_DC_OFFSET_MODE2;       
;----------------------------------------------------------------------
        *AR3(#74) = #2 ; |824| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 827,column 3,is_stmt
;----------------------------------------------------------------------
; 827 | ecuSim->toggle_getflt   = FALSE;  /* do not ask for filter coefficients
;     |  */                                                                    
;----------------------------------------------------------------------
        *AR3(#80) = #0 ; |827| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 829,column 3,is_stmt
;----------------------------------------------------------------------
; 829 | ecuSim->getflt.select   = 0;      /* FG */                             
;----------------------------------------------------------------------
        *AR3(#81) = #0 ; |829| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 830,column 3,is_stmt
;----------------------------------------------------------------------
; 830 | ecuSim->getflt.start    = 0;      /* start=0               */          
;----------------------------------------------------------------------
        *AR3(#82) = #0 ; |830| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 831,column 3,is_stmt
;----------------------------------------------------------------------
; 831 | ecuSim->getflt.ncoeff   = 8;      /* get 8 coefficients    */          
;----------------------------------------------------------------------
        *AR3(#83) = #8 ; |831| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 832,column 3,is_stmt
;----------------------------------------------------------------------
; 832 | ecuSim->getflt.retstat  = 0;      /* ecu_NOERR             */          
; 835 | #if ECUSIM_INCLUDE_MAG                                                 
; 837 | ecuSim->toggle_mipsevt       = FALSE;         /* do not generate a MIPS
;     |  Agent event */                                                        
; 838 | ecuSim->mipsEvt.event        = MIPS_AGENT_CTRL;                        
; 839 | ecuSim->mipsEvt.u.channel.id = 0;                                      
; 840 | #endif                                                                 
; 843 | #if ECU_SIM_USE_VPE                                                    
; 844 | ecuSim->toggle_slm        = FALSE;        /* do not change signal limit
;     | er mode */                                                             
; 845 | ecuSim->slm_mode          = slm_DISABLE;  /* signal limiter disabled */
; 846 | #endif                                                                 
;----------------------------------------------------------------------
        *AR3(#84) = #0 ; |832| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 849,column 3,is_stmt
;----------------------------------------------------------------------
; 849 | ecuSim->toggle_freerun    = FALSE;        /* do not do free run */     
;----------------------------------------------------------------------
        *AR3(#86) = #0 ; |849| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 850,column 3,is_stmt
;----------------------------------------------------------------------
; 850 | ecuSim->freerun_frame_cnt = 0;                                         
;----------------------------------------------------------------------
        *AR3(#87) = #0 ; |850| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 853,column 3,is_stmt
;----------------------------------------------------------------------
; 853 | ecuSim->profile_enable = FALSE;                                        
;----------------------------------------------------------------------
        *AR3(#85) = #0 ; |853| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 854,column 3,is_stmt
;----------------------------------------------------------------------
; 854 | ecuSim->Fs             = ecu_SIM_DEF_FS;        /* sampling rate 8kHz *
;     | /                                                                      
;----------------------------------------------------------------------
        *AR3(#88) = #8000 ; |854| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 855,column 3,is_stmt
;----------------------------------------------------------------------
; 855 | ecuSim->error_id       = 0;                     /* no error */         
;----------------------------------------------------------------------
        *AR3(#89) = #0 ; |855| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 856,column 3,is_stmt
;----------------------------------------------------------------------
; 856 | ecuSim->sig_src        = ecu_SIM_SIG_SRC_FILE;  /* signals from file */
;     |                                                                        
;----------------------------------------------------------------------
        *AR3(#90) = #0 ; |856| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 857,column 3,is_stmt
;----------------------------------------------------------------------
; 857 | ecuSim->save_to_file   = FALSE;                 /* if signal source is
;     | from SGN,                                                              
; 858 |                                                    don't save the signa
;     | ls to files */                                                         
;----------------------------------------------------------------------
        *AR3(#91) = #0 ; |857| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 859,column 3,is_stmt
;----------------------------------------------------------------------
; 859 | ecuSim->ecu_y2x_delay  = 0;                     /* 0 y2x delay when rea
;     | ding from files */                                                     
;----------------------------------------------------------------------
        *AR3(#8) = #0 ; |859| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 860,column 3,is_stmt
;----------------------------------------------------------------------
; 860 | ecuSim->num_channel    = 1;                     /* 1 channel active */ 
;----------------------------------------------------------------------
        *AR3(#92) = #1 ; |860| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 861,column 3,is_stmt
;----------------------------------------------------------------------
; 861 | ecuSim->output_chnum   = 0;                     /* channel 0 as output
;     | */                                                                     
;----------------------------------------------------------------------
        *AR3(#93) = #0 ; |861| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 864,column 3,is_stmt
;----------------------------------------------------------------------
; 864 | ecuSim->rin.eof        = FALSE;                                        
;----------------------------------------------------------------------
        *AR3(#95) = #0 ; |864| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 865,column 3,is_stmt
;----------------------------------------------------------------------
; 865 | ecuSim->rin.fio        = TRUE;                                         
;----------------------------------------------------------------------
        *AR3(#94) = #1 ; |865| 
        XAR0 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 866,column 3,is_stmt
;----------------------------------------------------------------------
; 866 | strcpy ((char *)ecuSim->rin.fname, ecu_SIM_DEF_BASE_INDIR);            
;----------------------------------------------------------------------
        XAR1 = #$C$FSL6 ; |866| 
        mar(AR0 + #98) ; |866| 
$C$DW$328	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$328, DW_AT_low_pc(0x00)
	.dwattr $C$DW$328, DW_AT_name("_strcpy")
	.dwattr $C$DW$328, DW_AT_TI_call
        call #_strcpy ; |866| 
                                        ; call occurs [#_strcpy] ; |866| 
        XAR0 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 867,column 3,is_stmt
;----------------------------------------------------------------------
; 867 | strcat ((char *)ecuSim->rin.fname, ecu_SIM_DEF_RIN_FNAME);             
;----------------------------------------------------------------------
        XAR1 = #$C$FSL7 ; |867| 
        mar(AR0 + #98) ; |867| 
$C$DW$329	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$329, DW_AT_low_pc(0x00)
	.dwattr $C$DW$329, DW_AT_name("_strcat")
	.dwattr $C$DW$329, DW_AT_TI_call
        call #_strcat ; |867| 
                                        ; call occurs [#_strcat] ; |867| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 868,column 3,is_stmt
;----------------------------------------------------------------------
; 868 | ecuSim->rin.fptr       = (FILE *) NULL;                                
;----------------------------------------------------------------------
        AC0 = #0  ; |868| 
        dbl(*AR3(#96)) = AC0
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 871,column 3,is_stmt
;----------------------------------------------------------------------
; 871 | ecuSim->sin.eof        = FALSE;                                        
;----------------------------------------------------------------------
        *AR3(#355) = #0 ; |871| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 872,column 3,is_stmt
;----------------------------------------------------------------------
; 872 | ecuSim->sin.fio        = TRUE;                                         
;----------------------------------------------------------------------
        *AR3(#354) = #1 ; |872| 
        XAR0 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 873,column 3,is_stmt
;----------------------------------------------------------------------
; 873 | strcpy ((char *)ecuSim->sin.fname, ecu_SIM_DEF_BASE_INDIR);            
;----------------------------------------------------------------------
        XAR1 = #$C$FSL6 ; |873| 
        mar(*+AR0(#358)) ; |873| 
$C$DW$330	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$330, DW_AT_low_pc(0x00)
	.dwattr $C$DW$330, DW_AT_name("_strcpy")
	.dwattr $C$DW$330, DW_AT_TI_call
        call #_strcpy ; |873| 
                                        ; call occurs [#_strcpy] ; |873| 
        XAR0 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 874,column 3,is_stmt
;----------------------------------------------------------------------
; 874 | strcat ((char *)ecuSim->sin.fname, ecu_SIM_DEF_SIN_FNAME);             
;----------------------------------------------------------------------
        XAR1 = #$C$FSL8 ; |874| 
        mar(*+AR0(#358)) ; |874| 
$C$DW$331	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$331, DW_AT_low_pc(0x00)
	.dwattr $C$DW$331, DW_AT_name("_strcat")
	.dwattr $C$DW$331, DW_AT_TI_call
        call #_strcat ; |874| 
                                        ; call occurs [#_strcat] ; |874| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 875,column 3,is_stmt
;----------------------------------------------------------------------
; 875 | ecuSim->sin.fptr       = (FILE *) NULL;                                
;----------------------------------------------------------------------
        AC0 = #0  ; |875| 
        dbl(*AR3(#356)) = AC0
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 878,column 3,is_stmt
;----------------------------------------------------------------------
; 878 | ecuSim->rout.eof        = FALSE;                                       
;----------------------------------------------------------------------
        *AR3(#615) = #0 ; |878| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 879,column 3,is_stmt
;----------------------------------------------------------------------
; 879 | ecuSim->rout.fio        = TRUE;                                        
;----------------------------------------------------------------------
        *AR3(#614) = #1 ; |879| 
        XAR0 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 880,column 3,is_stmt
;----------------------------------------------------------------------
; 880 | strcpy ((char *)ecuSim->rout.fname, ecu_SIM_DEF_BASE_OUTDIR);          
;----------------------------------------------------------------------
        XAR1 = #$C$FSL9 ; |880| 
        mar(*+AR0(#618)) ; |880| 
$C$DW$332	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$332, DW_AT_low_pc(0x00)
	.dwattr $C$DW$332, DW_AT_name("_strcpy")
	.dwattr $C$DW$332, DW_AT_TI_call
        call #_strcpy ; |880| 
                                        ; call occurs [#_strcpy] ; |880| 
        XAR0 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 881,column 3,is_stmt
;----------------------------------------------------------------------
; 881 | strcat ((char *)ecuSim->rout.fname, ecu_SIM_DEF_ROUT_FNAME);           
;----------------------------------------------------------------------
        XAR1 = #$C$FSL10 ; |881| 
        mar(*+AR0(#618)) ; |881| 
$C$DW$333	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$333, DW_AT_low_pc(0x00)
	.dwattr $C$DW$333, DW_AT_name("_strcat")
	.dwattr $C$DW$333, DW_AT_TI_call
        call #_strcat ; |881| 
                                        ; call occurs [#_strcat] ; |881| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 882,column 3,is_stmt
;----------------------------------------------------------------------
; 882 | ecuSim->rout.fptr       = (FILE *) NULL;                               
;----------------------------------------------------------------------
        AC0 = #0  ; |882| 
        dbl(*AR3(#616)) = AC0
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 885,column 3,is_stmt
;----------------------------------------------------------------------
; 885 | ecuSim->sout.eof        = FALSE;                                       
;----------------------------------------------------------------------
        *AR3(#875) = #0 ; |885| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 886,column 3,is_stmt
;----------------------------------------------------------------------
; 886 | ecuSim->sout.fio        = TRUE;                                        
;----------------------------------------------------------------------
        *AR3(#874) = #1 ; |886| 
        XAR0 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 887,column 3,is_stmt
;----------------------------------------------------------------------
; 887 | strcpy ((char *)ecuSim->sout.fname, ecu_SIM_DEF_BASE_OUTDIR);          
;----------------------------------------------------------------------
        XAR1 = #$C$FSL9 ; |887| 
        mar(*+AR0(#878)) ; |887| 
$C$DW$334	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$334, DW_AT_low_pc(0x00)
	.dwattr $C$DW$334, DW_AT_name("_strcpy")
	.dwattr $C$DW$334, DW_AT_TI_call
        call #_strcpy ; |887| 
                                        ; call occurs [#_strcpy] ; |887| 
        XAR0 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 888,column 3,is_stmt
;----------------------------------------------------------------------
; 888 | strcat ((char *)ecuSim->sout.fname, ecu_SIM_DEF_SOUT_FNAME);           
;----------------------------------------------------------------------
        XAR1 = #$C$FSL11 ; |888| 
        mar(*+AR0(#878)) ; |888| 
$C$DW$335	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$335, DW_AT_low_pc(0x00)
	.dwattr $C$DW$335, DW_AT_name("_strcat")
	.dwattr $C$DW$335, DW_AT_TI_call
        call #_strcat ; |888| 
                                        ; call occurs [#_strcat] ; |888| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 889,column 3,is_stmt
;----------------------------------------------------------------------
; 889 | ecuSim->sout.fptr       = (FILE *) NULL;                               
;----------------------------------------------------------------------
        AC0 = #0  ; |889| 
        dbl(*AR3(#876)) = AC0
        SP = SP + #1
	.dwcfi	cfa_offset, 1
$C$DW$336	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$336, DW_AT_low_pc(0x00)
	.dwattr $C$DW$336, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$327, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c")
	.dwattr $C$DW$327, DW_AT_TI_end_line(0x37a)
	.dwattr $C$DW$327, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$327

	.sect	".text"
	.global	_siuUpdateECUPowers

$C$DW$337	.dwtag  DW_TAG_subprogram, DW_AT_name("siuUpdateECUPowers")
	.dwattr $C$DW$337, DW_AT_low_pc(_siuUpdateECUPowers)
	.dwattr $C$DW$337, DW_AT_high_pc(0x00)
	.dwattr $C$DW$337, DW_AT_TI_symbol_name("_siuUpdateECUPowers")
	.dwattr $C$DW$337, DW_AT_external
	.dwattr $C$DW$337, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c")
	.dwattr $C$DW$337, DW_AT_TI_begin_line(0x3b4)
	.dwattr $C$DW$337, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$337, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 949,column 1,is_stmt,address _siuUpdateECUPowers

	.dwfde $C$DW$CIE, _siuUpdateECUPowers
$C$DW$338	.dwtag  DW_TAG_formal_parameter, DW_AT_name("siuInst")
	.dwattr $C$DW$338, DW_AT_TI_symbol_name("_siuInst")
	.dwattr $C$DW$338, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$338, DW_AT_location[DW_OP_reg17]
$C$DW$339	.dwtag  DW_TAG_formal_parameter, DW_AT_name("send_in")
	.dwattr $C$DW$339, DW_AT_TI_symbol_name("_send_in")
	.dwattr $C$DW$339, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$339, DW_AT_location[DW_OP_reg19]
$C$DW$340	.dwtag  DW_TAG_formal_parameter, DW_AT_name("recv_in")
	.dwattr $C$DW$340, DW_AT_TI_symbol_name("_recv_in")
	.dwattr $C$DW$340, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$340, DW_AT_location[DW_OP_reg21]
;----------------------------------------------------------------------
; 948 | void siuUpdateECUPowers (siuInst_t *siuInst, linSample *send_in, linSam
;     | ple *recv_in)                                                          
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: siuUpdateECUPowers                                           *
;*                                                                             *
;*   Function Uses Regs : AR0,XAR0,AR1,XAR1,AR2,XAR2,SP,M40,SATA,SATD,RDM,FRCT,*
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_siuUpdateECUPowers:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-7
	.dwcfi	cfa_offset, 8
$C$DW$341	.dwtag  DW_TAG_variable, DW_AT_name("siuInst")
	.dwattr $C$DW$341, DW_AT_TI_symbol_name("_siuInst")
	.dwattr $C$DW$341, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$341, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$342	.dwtag  DW_TAG_variable, DW_AT_name("send_in")
	.dwattr $C$DW$342, DW_AT_TI_symbol_name("_send_in")
	.dwattr $C$DW$342, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$342, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$343	.dwtag  DW_TAG_variable, DW_AT_name("recv_in")
	.dwattr $C$DW$343, DW_AT_TI_symbol_name("_recv_in")
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$343, DW_AT_location[DW_OP_bregx 0x24 4]
        dbl(*SP(#4)) = XAR2
        dbl(*SP(#2)) = XAR1
        dbl(*SP(#0)) = XAR0
        SP = SP + #7
	.dwcfi	cfa_offset, 1
$C$DW$344	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$344, DW_AT_low_pc(0x00)
	.dwattr $C$DW$344, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$337, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c")
	.dwattr $C$DW$337, DW_AT_TI_end_line(0x3b5)
	.dwattr $C$DW$337, DW_AT_TI_end_column(0x02)
	.dwendentry
	.dwendtag $C$DW$337

	.sect	".text"
	.global	_siuDebugInfoNew

$C$DW$345	.dwtag  DW_TAG_subprogram, DW_AT_name("siuDebugInfoNew")
	.dwattr $C$DW$345, DW_AT_low_pc(_siuDebugInfoNew)
	.dwattr $C$DW$345, DW_AT_high_pc(0x00)
	.dwattr $C$DW$345, DW_AT_TI_symbol_name("_siuDebugInfoNew")
	.dwattr $C$DW$345, DW_AT_external
	.dwattr $C$DW$345, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c")
	.dwattr $C$DW$345, DW_AT_TI_begin_line(0x3d8)
	.dwattr $C$DW$345, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$345, DW_AT_TI_max_frame_size(0x20)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 986,column 1,is_stmt,address _siuDebugInfoNew

	.dwfde $C$DW$CIE, _siuDebugInfoNew
$C$DW$346	.dwtag  DW_TAG_formal_parameter, DW_AT_name("moduleID")
	.dwattr $C$DW$346, DW_AT_TI_symbol_name("_moduleID")
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$346, DW_AT_location[DW_OP_reg12]
$C$DW$347	.dwtag  DW_TAG_formal_parameter, DW_AT_name("msgType")
	.dwattr $C$DW$347, DW_AT_TI_symbol_name("_msgType")
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$347, DW_AT_location[DW_OP_reg13]
$C$DW$348	.dwtag  DW_TAG_formal_parameter, DW_AT_name("messageCode")
	.dwattr $C$DW$348, DW_AT_TI_symbol_name("_messageCode")
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$348, DW_AT_location[DW_OP_reg16]
$C$DW$349	.dwtag  DW_TAG_formal_parameter, DW_AT_name("msgLength")
	.dwattr $C$DW$349, DW_AT_TI_symbol_name("_msgLength")
	.dwattr $C$DW$349, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$349, DW_AT_location[DW_OP_reg18]
$C$DW$350	.dwtag  DW_TAG_formal_parameter, DW_AT_name("messageData")
	.dwattr $C$DW$350, DW_AT_TI_symbol_name("_messageData")
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$350, DW_AT_location[DW_OP_reg21]
;----------------------------------------------------------------------
; 984 | void siuDebugInfoNew (tuint moduleID, tuint msgType, tuint messageCode,
;     |                                                                        
; 985 | tuint msgLength, tuint *messageData)                                   
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: siuDebugInfoNew                                              *
;*                                                                             *
;*   Function Uses Regs : AC0,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,SP,TC1,M40, *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 32 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (31 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_siuDebugInfoNew:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-31
	.dwcfi	cfa_offset, 32
$C$DW$351	.dwtag  DW_TAG_variable, DW_AT_name("moduleID")
	.dwattr $C$DW$351, DW_AT_TI_symbol_name("_moduleID")
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$351, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$352	.dwtag  DW_TAG_variable, DW_AT_name("msgType")
	.dwattr $C$DW$352, DW_AT_TI_symbol_name("_msgType")
	.dwattr $C$DW$352, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$352, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$353	.dwtag  DW_TAG_variable, DW_AT_name("messageCode")
	.dwattr $C$DW$353, DW_AT_TI_symbol_name("_messageCode")
	.dwattr $C$DW$353, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$353, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$354	.dwtag  DW_TAG_variable, DW_AT_name("msgLength")
	.dwattr $C$DW$354, DW_AT_TI_symbol_name("_msgLength")
	.dwattr $C$DW$354, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$354, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$355	.dwtag  DW_TAG_variable, DW_AT_name("messageData")
	.dwattr $C$DW$355, DW_AT_TI_symbol_name("_messageData")
	.dwattr $C$DW$355, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$355, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$356	.dwtag  DW_TAG_variable, DW_AT_name("exc_string")
	.dwattr $C$DW$356, DW_AT_TI_symbol_name("_exc_string")
	.dwattr $C$DW$356, DW_AT_type(*$C$DW$T$247)
	.dwattr $C$DW$356, DW_AT_location[DW_OP_bregx 0x24 6]
        dbl(*SP(#4)) = XAR2
;----------------------------------------------------------------------
; 987 | char exc_string[25];                                                   
;----------------------------------------------------------------------
        *SP(#3) = AR1 ; |986| 
        *SP(#2) = AR0 ; |986| 
        *SP(#1) = T1 ; |986| 
        *SP(#0) = T0 ; |986| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 989,column 3,is_stmt
;----------------------------------------------------------------------
; 989 | switch (msgType)                                                       
; 991 |    case SIU_DEBUG_FATAL:                                               
;----------------------------------------------------------------------
        goto $C$L72 ; |989| 
                                        ; branch occurs ; |989| 
$C$L71:    
        XAR0 = mar(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 993,column 9,is_stmt
;----------------------------------------------------------------------
; 993 | strcpy (exc_string, "Exception 0x");                                   
;----------------------------------------------------------------------
        XAR1 = #$C$FSL12 ; |993| 
$C$DW$357	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$357, DW_AT_low_pc(0x00)
	.dwattr $C$DW$357, DW_AT_name("_strcpy")
	.dwattr $C$DW$357, DW_AT_TI_call
        call #_strcpy ; |993| 
        nop       ;                     avoids Silicon Exception CPU_90
                                        ; call occurs [#_strcpy] ; |993| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 995,column 9,is_stmt
;----------------------------------------------------------------------
; 995 | siu_tuint_to_hex (exc_string+12,                                       
; 996 |                   ((moduleID & 0xFF00) << 2) | (messageCode & 0x3FF)); 
;----------------------------------------------------------------------
        AR1 = *SP(#0) ; |995| 
        AC1 = AR1 & #0xff00 ; |995| 
        AR1 = *SP(#2) ; |995| 
        AC0 = AR1 & #0x03ff ; |995| 
        AC0 = AC0 | (AC1 <<< #2) ; |995| 

        T0 = AC0  ; |995| 
||      XAR0 = mar(*SP(#18))

$C$DW$358	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$358, DW_AT_low_pc(0x00)
	.dwattr $C$DW$358, DW_AT_name("_siu_tuint_to_hex")
	.dwattr $C$DW$358, DW_AT_TI_call
        call #_siu_tuint_to_hex ; |995| 
                                        ; call occurs [#_siu_tuint_to_hex] ; |995| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 997,column 9,is_stmt
;----------------------------------------------------------------------
; 997 | siuException (moduleID, exc_string);                                   
;----------------------------------------------------------------------
        T0 = *SP(#0) ; |997| 
        XAR0 = mar(*SP(#6))
$C$DW$359	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$359, DW_AT_low_pc(0x00)
	.dwattr $C$DW$359, DW_AT_name("_siuException")
	.dwattr $C$DW$359, DW_AT_TI_call
        call #_siuException ; |997| 
                                        ; call occurs [#_siuException] ; |997| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 999,column 13,is_stmt
;----------------------------------------------------------------------
; 999 | default:                                                               
; 1000 |    break;  /* Ignore other message types */                            
;----------------------------------------------------------------------
        goto $C$L73 ; |999| 
                                        ; branch occurs ; |999| 
$C$L72:    

        AR1 = *SP(#1) ; |989| 
||      AR2 = #2

	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 989,column 3,is_stmt
        TC1 = uns(AR1 == AR2) ; |989| 
        if (TC1) goto $C$L71 ; |989| 
                                        ; branchcc occurs ; |989| 
$C$L73:    
        SP = SP + #31
	.dwcfi	cfa_offset, 1
$C$DW$360	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$360, DW_AT_low_pc(0x00)
	.dwattr $C$DW$360, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$345, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c")
	.dwattr $C$DW$345, DW_AT_TI_end_line(0x3ea)
	.dwattr $C$DW$345, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$345

	.sect	".text"
	.global	_siuPiuReport

$C$DW$361	.dwtag  DW_TAG_subprogram, DW_AT_name("siuPiuReport")
	.dwattr $C$DW$361, DW_AT_low_pc(_siuPiuReport)
	.dwattr $C$DW$361, DW_AT_high_pc(0x00)
	.dwattr $C$DW$361, DW_AT_TI_symbol_name("_siuPiuReport")
	.dwattr $C$DW$361, DW_AT_external
	.dwattr $C$DW$361, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c")
	.dwattr $C$DW$361, DW_AT_TI_begin_line(0x3fa)
	.dwattr $C$DW$361, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$361, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 1019,column 1,is_stmt,address _siuPiuReport

	.dwfde $C$DW$CIE, _siuPiuReport
$C$DW$362	.dwtag  DW_TAG_formal_parameter, DW_AT_name("siuInst")
	.dwattr $C$DW$362, DW_AT_TI_symbol_name("_siuInst")
	.dwattr $C$DW$362, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$362, DW_AT_location[DW_OP_reg17]
$C$DW$363	.dwtag  DW_TAG_formal_parameter, DW_AT_name("report_code")
	.dwattr $C$DW$363, DW_AT_TI_symbol_name("_report_code")
	.dwattr $C$DW$363, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$363, DW_AT_location[DW_OP_reg12]
;----------------------------------------------------------------------
; 1018 | void siuPiuReport (void *siuInst, tint report_code)                    
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: siuPiuReport                                                 *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR1,SP,M40,SATA,SATD,RDM,FRCT,SMUL       *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_siuPiuReport:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-3
	.dwcfi	cfa_offset, 4
$C$DW$364	.dwtag  DW_TAG_variable, DW_AT_name("siuInst")
	.dwattr $C$DW$364, DW_AT_TI_symbol_name("_siuInst")
	.dwattr $C$DW$364, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$364, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$365	.dwtag  DW_TAG_variable, DW_AT_name("report_code")
	.dwattr $C$DW$365, DW_AT_TI_symbol_name("_report_code")
	.dwattr $C$DW$365, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$365, DW_AT_location[DW_OP_bregx 0x24 2]
        *SP(#2) = T0 ; |1019| 
        dbl(*SP(#0)) = XAR0
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 1020,column 3,is_stmt
;----------------------------------------------------------------------
; 1020 | siu_piu_report_code = report_code;                                     
;----------------------------------------------------------------------
        AR1 = *SP(#2) ; |1020| 
        *(#_siu_piu_report_code) = AR1 ; |1020| 
        SP = SP + #3
	.dwcfi	cfa_offset, 1
$C$DW$366	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$366, DW_AT_low_pc(0x00)
	.dwattr $C$DW$366, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$361, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c")
	.dwattr $C$DW$361, DW_AT_TI_end_line(0x3fd)
	.dwattr $C$DW$361, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$361

	.sect	".text"
	.global	_siuPcmSampleTrace

$C$DW$367	.dwtag  DW_TAG_subprogram, DW_AT_name("siuPcmSampleTrace")
	.dwattr $C$DW$367, DW_AT_low_pc(_siuPcmSampleTrace)
	.dwattr $C$DW$367, DW_AT_high_pc(0x00)
	.dwattr $C$DW$367, DW_AT_TI_symbol_name("_siuPcmSampleTrace")
	.dwattr $C$DW$367, DW_AT_external
	.dwattr $C$DW$367, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c")
	.dwattr $C$DW$367, DW_AT_TI_begin_line(0x405)
	.dwattr $C$DW$367, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$367, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 1030,column 1,is_stmt,address _siuPcmSampleTrace

	.dwfde $C$DW$CIE, _siuPcmSampleTrace
$C$DW$368	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chnum")
	.dwattr $C$DW$368, DW_AT_TI_symbol_name("_chnum")
	.dwattr $C$DW$368, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$368, DW_AT_location[DW_OP_reg12]
$C$DW$369	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pcm_size")
	.dwattr $C$DW$369, DW_AT_TI_symbol_name("_pcm_size")
	.dwattr $C$DW$369, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$369, DW_AT_location[DW_OP_reg13]
$C$DW$370	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pcm_in")
	.dwattr $C$DW$370, DW_AT_TI_symbol_name("_pcm_in")
	.dwattr $C$DW$370, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$370, DW_AT_location[DW_OP_reg17]
$C$DW$371	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dir")
	.dwattr $C$DW$371, DW_AT_TI_symbol_name("_dir")
	.dwattr $C$DW$371, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$371, DW_AT_location[DW_OP_reg18]
;----------------------------------------------------------------------
; 1029 | void siuPcmSampleTrace (tint chnum, tint pcm_size, void *pcm_in, tuint
;     | dir)                                                                   
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: siuPcmSampleTrace                                            *
;*                                                                             *
;*   Function Uses Regs : T0,T1,AR0,XAR0,AR1,SP,M40,SATA,SATD,RDM,FRCT,SMUL    *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_siuPcmSampleTrace:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-5
	.dwcfi	cfa_offset, 6
$C$DW$372	.dwtag  DW_TAG_variable, DW_AT_name("chnum")
	.dwattr $C$DW$372, DW_AT_TI_symbol_name("_chnum")
	.dwattr $C$DW$372, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$372, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$373	.dwtag  DW_TAG_variable, DW_AT_name("pcm_size")
	.dwattr $C$DW$373, DW_AT_TI_symbol_name("_pcm_size")
	.dwattr $C$DW$373, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$373, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$374	.dwtag  DW_TAG_variable, DW_AT_name("pcm_in")
	.dwattr $C$DW$374, DW_AT_TI_symbol_name("_pcm_in")
	.dwattr $C$DW$374, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$374, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$375	.dwtag  DW_TAG_variable, DW_AT_name("dir")
	.dwattr $C$DW$375, DW_AT_TI_symbol_name("_dir")
	.dwattr $C$DW$375, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$375, DW_AT_location[DW_OP_bregx 0x24 4]
        *SP(#4) = AR1 ; |1030| 
        dbl(*SP(#2)) = XAR0
        *SP(#1) = T1 ; |1030| 
        *SP(#0) = T0 ; |1030| 
        SP = SP + #5
	.dwcfi	cfa_offset, 1
$C$DW$376	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$376, DW_AT_low_pc(0x00)
	.dwattr $C$DW$376, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$367, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c")
	.dwattr $C$DW$367, DW_AT_TI_end_line(0x408)
	.dwattr $C$DW$367, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$367

	.sect	".text"
	.global	_siuTxRxSendIn

$C$DW$377	.dwtag  DW_TAG_subprogram, DW_AT_name("siuTxRxSendIn")
	.dwattr $C$DW$377, DW_AT_low_pc(_siuTxRxSendIn)
	.dwattr $C$DW$377, DW_AT_high_pc(0x00)
	.dwattr $C$DW$377, DW_AT_TI_symbol_name("_siuTxRxSendIn")
	.dwattr $C$DW$377, DW_AT_external
	.dwattr $C$DW$377, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c")
	.dwattr $C$DW$377, DW_AT_TI_begin_line(0x411)
	.dwattr $C$DW$377, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$377, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 1043,column 1,is_stmt,address _siuTxRxSendIn

	.dwfde $C$DW$CIE, _siuTxRxSendIn
$C$DW$378	.dwtag  DW_TAG_formal_parameter, DW_AT_name("siuInst")
	.dwattr $C$DW$378, DW_AT_TI_symbol_name("_siuInst")
	.dwattr $C$DW$378, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$378, DW_AT_location[DW_OP_reg17]
$C$DW$379	.dwtag  DW_TAG_formal_parameter, DW_AT_name("send_frame")
	.dwattr $C$DW$379, DW_AT_TI_symbol_name("_send_frame")
	.dwattr $C$DW$379, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$379, DW_AT_location[DW_OP_reg19]
$C$DW$380	.dwtag  DW_TAG_formal_parameter, DW_AT_name("recv_frame")
	.dwattr $C$DW$380, DW_AT_TI_symbol_name("_recv_frame")
	.dwattr $C$DW$380, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$380, DW_AT_location[DW_OP_reg21]
$C$DW$381	.dwtag  DW_TAG_formal_parameter, DW_AT_name("queue_id")
	.dwattr $C$DW$381, DW_AT_TI_symbol_name("_queue_id")
	.dwattr $C$DW$381, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$381, DW_AT_location[DW_OP_reg12]
;----------------------------------------------------------------------
; 1041 | void siuTxRxSendIn (void *siuInst, void *send_frame, void *recv_frame, 
; 1042 | tint queue_id)                                                         
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: siuTxRxSendIn                                                *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,M40,SATA,  *
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (10 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_siuTxRxSendIn:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-11
	.dwcfi	cfa_offset, 12
$C$DW$382	.dwtag  DW_TAG_variable, DW_AT_name("siuInst")
	.dwattr $C$DW$382, DW_AT_TI_symbol_name("_siuInst")
	.dwattr $C$DW$382, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$382, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$383	.dwtag  DW_TAG_variable, DW_AT_name("send_frame")
	.dwattr $C$DW$383, DW_AT_TI_symbol_name("_send_frame")
	.dwattr $C$DW$383, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$383, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$384	.dwtag  DW_TAG_variable, DW_AT_name("recv_frame")
	.dwattr $C$DW$384, DW_AT_TI_symbol_name("_recv_frame")
	.dwattr $C$DW$384, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$384, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$385	.dwtag  DW_TAG_variable, DW_AT_name("queue_id")
	.dwattr $C$DW$385, DW_AT_TI_symbol_name("_queue_id")
	.dwattr $C$DW$385, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$385, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$386	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$386, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$386, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$386, DW_AT_location[DW_OP_bregx 0x24 8]
;----------------------------------------------------------------------
; 1044 | siuInst_t *inst = (siuInst_t*)siuInst;                                 
;----------------------------------------------------------------------
        *SP(#6) = T0 ; |1043| 
        dbl(*SP(#4)) = XAR2
        dbl(*SP(#2)) = XAR1
        dbl(*SP(#0)) = XAR0
        XAR3 = dbl(*SP(#0))
        dbl(*SP(#8)) = XAR3
        XAR1 = dbl(*SP(#2))
        XAR2 = dbl(*SP(#4))
        XAR0 = dbl(*AR3(#24))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c",line 1046,column 3,is_stmt
;----------------------------------------------------------------------
; 1046 | piuTxRxProc (inst->piuInst, send_frame, recv_frame);                   
;----------------------------------------------------------------------
$C$DW$387	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$387, DW_AT_low_pc(0x00)
	.dwattr $C$DW$387, DW_AT_name("_piuTxRxProc")
	.dwattr $C$DW$387, DW_AT_TI_call
        call #_piuTxRxProc ; |1046| 
                                        ; call occurs [#_piuTxRxProc] ; |1046| 
        SP = SP + #11
	.dwcfi	cfa_offset, 1
$C$DW$388	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$388, DW_AT_low_pc(0x00)
	.dwattr $C$DW$388, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$377, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusimfunc.c")
	.dwattr $C$DW$377, DW_AT_TI_end_line(0x417)
	.dwattr $C$DW$377, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$377

;*******************************************************************************
;* FAR STRINGS                                                                 *
;*******************************************************************************
	.sect	".const:.string"
	.align	2
$C$FSL1:	.string	"M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test"
	.string	"/src/ecusimfunc.c(413)",0
	.align	2
$C$FSL2:	.string	"M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test"
	.string	"/src/ecusimfunc.c(417)",0
	.align	2
$C$FSL3:	.string	"M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test"
	.string	"/src/ecusimfunc.c(478)",0
	.align	2
$C$FSL4:	.string	"M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test"
	.string	"/src/ecusimfunc.c(492)",0
	.align	2
$C$FSL5:	.string	"M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test"
	.string	"/src/ecusimfunc.c(521)",0
	.align	2
$C$FSL6:	.string	"../../../vectors/inp/",0
	.align	2
$C$FSL7:	.string	"rin.pcm",0
	.align	2
$C$FSL8:	.string	"sin.pcm",0
	.align	2
$C$FSL9:	.string	"../../../vectors/out/",0
	.align	2
$C$FSL10:	.string	"rout.pcm",0
	.align	2
$C$FSL11:	.string	"sout.pcm",0
	.align	2
$C$FSL12:	.string	"Exception 0x",0
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_malloc
	.global	_strcpy
	.global	_strcat
	.global	_sgnGetSizes
	.global	_sgnControl
	.global	_sgnGenerateFrame
	.global	_sgnInit
	.global	_hybOpen
	.global	_hybNew
	.global	_hybGetSizes
	.global	_mhmAlloc
	.global	_ecuOpen
	.global	_ecuGetSizes
	.global	_ecuNew
	.global	_siuException
	.global	_piuTxRxProc
	.global	_ecu_sim_input
	.global	_ecu_sim_fread
	.global	_ecu_halt
	.global	_muaTblAlaw
	.global	_muaTblUlaw
	.global	_siuContext
	.global	_siuInst
	.global	_iramSeg
	.global	_piu_segment_in

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x04)
$C$DW$389	.dwtag  DW_TAG_member
	.dwattr $C$DW$389, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$389, DW_AT_name("f1")
	.dwattr $C$DW$389, DW_AT_TI_symbol_name("_f1")
	.dwattr $C$DW$389, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$389, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$390	.dwtag  DW_TAG_member
	.dwattr $C$DW$390, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$390, DW_AT_name("f2")
	.dwattr $C$DW$390, DW_AT_TI_symbol_name("_f2")
	.dwattr $C$DW$390, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$390, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$391	.dwtag  DW_TAG_member
	.dwattr $C$DW$391, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$391, DW_AT_name("amp1")
	.dwattr $C$DW$391, DW_AT_TI_symbol_name("_amp1")
	.dwattr $C$DW$391, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$391, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$392	.dwtag  DW_TAG_member
	.dwattr $C$DW$392, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$392, DW_AT_name("amp2")
	.dwattr $C$DW$392, DW_AT_TI_symbol_name("_amp2")
	.dwattr $C$DW$392, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$392, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$23


$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x06)
$C$DW$393	.dwtag  DW_TAG_member
	.dwattr $C$DW$393, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$393, DW_AT_name("duration")
	.dwattr $C$DW$393, DW_AT_TI_symbol_name("_duration")
	.dwattr $C$DW$393, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$393, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$394	.dwtag  DW_TAG_member
	.dwattr $C$DW$394, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$394, DW_AT_name("dataptr")
	.dwattr $C$DW$394, DW_AT_TI_symbol_name("_dataptr")
	.dwattr $C$DW$394, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$394, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$395	.dwtag  DW_TAG_member
	.dwattr $C$DW$395, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$395, DW_AT_name("numword")
	.dwattr $C$DW$395, DW_AT_TI_symbol_name("_numword")
	.dwattr $C$DW$395, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$395, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$28


$C$DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x08)
$C$DW$396	.dwtag  DW_TAG_member
	.dwattr $C$DW$396, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$396, DW_AT_name("code")
	.dwattr $C$DW$396, DW_AT_TI_symbol_name("_code")
	.dwattr $C$DW$396, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$396, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$397	.dwtag  DW_TAG_member
	.dwattr $C$DW$397, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$397, DW_AT_name("Fs")
	.dwattr $C$DW$397, DW_AT_TI_symbol_name("_Fs")
	.dwattr $C$DW$397, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$397, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$398	.dwtag  DW_TAG_member
	.dwattr $C$DW$398, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$398, DW_AT_name("u")
	.dwattr $C$DW$398, DW_AT_TI_symbol_name("_u")
	.dwattr $C$DW$398, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$398, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$29

$C$DW$T$117	.dwtag  DW_TAG_typedef, DW_AT_name("sgnControl_t")
	.dwattr $C$DW$T$117, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$117, DW_AT_language(DW_LANG_C)
$C$DW$T$118	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$118, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$T$118, DW_AT_address_class(0x17)

$C$DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x04)
$C$DW$399	.dwtag  DW_TAG_member
	.dwattr $C$DW$399, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$399, DW_AT_name("frame")
	.dwattr $C$DW$399, DW_AT_TI_symbol_name("_frame")
	.dwattr $C$DW$399, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$399, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$400	.dwtag  DW_TAG_member
	.dwattr $C$DW$400, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$400, DW_AT_name("cnt")
	.dwattr $C$DW$400, DW_AT_TI_symbol_name("_cnt")
	.dwattr $C$DW$400, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$400, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$31

$C$DW$T$38	.dwtag  DW_TAG_typedef, DW_AT_name("sgnFileIo_t")
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$38, DW_AT_language(DW_LANG_C)
$C$DW$T$39	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$39, DW_AT_address_class(0x17)

$C$DW$T$40	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$40, DW_AT_language(DW_LANG_C)
$C$DW$401	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$401, DW_AT_type(*$C$DW$T$39)
	.dwendtag $C$DW$T$40

$C$DW$T$41	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$41, DW_AT_address_class(0x20)

$C$DW$T$51	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x20)
$C$DW$402	.dwtag  DW_TAG_member
	.dwattr $C$DW$402, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$402, DW_AT_name("delay")
	.dwattr $C$DW$402, DW_AT_TI_symbol_name("_delay")
	.dwattr $C$DW$402, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$402, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$403	.dwtag  DW_TAG_member
	.dwattr $C$DW$403, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$403, DW_AT_name("dc_offset")
	.dwattr $C$DW$403, DW_AT_TI_symbol_name("_dc_offset")
	.dwattr $C$DW$403, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$403, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$404	.dwtag  DW_TAG_member
	.dwattr $C$DW$404, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$404, DW_AT_name("wf_type")
	.dwattr $C$DW$404, DW_AT_TI_symbol_name("_wf_type")
	.dwattr $C$DW$404, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$404, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$405	.dwtag  DW_TAG_member
	.dwattr $C$DW$405, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$405, DW_AT_name("f1")
	.dwattr $C$DW$405, DW_AT_TI_symbol_name("_f1")
	.dwattr $C$DW$405, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$405, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$406	.dwtag  DW_TAG_member
	.dwattr $C$DW$406, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$406, DW_AT_name("f2")
	.dwattr $C$DW$406, DW_AT_TI_symbol_name("_f2")
	.dwattr $C$DW$406, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$406, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$407	.dwtag  DW_TAG_member
	.dwattr $C$DW$407, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$407, DW_AT_name("Fs")
	.dwattr $C$DW$407, DW_AT_TI_symbol_name("_Fs")
	.dwattr $C$DW$407, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$407, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$408	.dwtag  DW_TAG_member
	.dwattr $C$DW$408, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$408, DW_AT_name("t_amp1")
	.dwattr $C$DW$408, DW_AT_TI_symbol_name("_t_amp1")
	.dwattr $C$DW$408, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$408, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$409	.dwtag  DW_TAG_member
	.dwattr $C$DW$409, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$409, DW_AT_name("t_amp2")
	.dwattr $C$DW$409, DW_AT_TI_symbol_name("_t_amp2")
	.dwattr $C$DW$409, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$409, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$410	.dwtag  DW_TAG_member
	.dwattr $C$DW$410, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$410, DW_AT_name("pr_period")
	.dwattr $C$DW$410, DW_AT_TI_symbol_name("_pr_period")
	.dwattr $C$DW$410, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$410, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$411	.dwtag  DW_TAG_member
	.dwattr $C$DW$411, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$411, DW_AT_name("pr_enable")
	.dwattr $C$DW$411, DW_AT_TI_symbol_name("_pr_enable")
	.dwattr $C$DW$411, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$411, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$412	.dwtag  DW_TAG_member
	.dwattr $C$DW$412, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$412, DW_AT_name("fsk_duration")
	.dwattr $C$DW$412, DW_AT_TI_symbol_name("_fsk_duration")
	.dwattr $C$DW$412, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$412, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$413	.dwtag  DW_TAG_member
	.dwattr $C$DW$413, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$413, DW_AT_name("fsk_dataptr")
	.dwattr $C$DW$413, DW_AT_TI_symbol_name("_fsk_dataptr")
	.dwattr $C$DW$413, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$413, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$414	.dwtag  DW_TAG_member
	.dwattr $C$DW$414, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$414, DW_AT_name("fsk_numword")
	.dwattr $C$DW$414, DW_AT_TI_symbol_name("_fsk_numword")
	.dwattr $C$DW$414, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$414, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$415	.dwtag  DW_TAG_member
	.dwattr $C$DW$415, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$415, DW_AT_name("noise_level")
	.dwattr $C$DW$415, DW_AT_TI_symbol_name("_noise_level")
	.dwattr $C$DW$415, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$415, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$416	.dwtag  DW_TAG_member
	.dwattr $C$DW$416, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$416, DW_AT_name("noise_seed")
	.dwattr $C$DW$416, DW_AT_TI_symbol_name("_noise_seed")
	.dwattr $C$DW$416, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$416, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$417	.dwtag  DW_TAG_member
	.dwattr $C$DW$417, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$417, DW_AT_name("noise_type")
	.dwattr $C$DW$417, DW_AT_TI_symbol_name("_noise_type")
	.dwattr $C$DW$417, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$417, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$418	.dwtag  DW_TAG_member
	.dwattr $C$DW$418, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$418, DW_AT_name("power_level")
	.dwattr $C$DW$418, DW_AT_TI_symbol_name("_power_level")
	.dwattr $C$DW$418, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$418, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$419	.dwtag  DW_TAG_member
	.dwattr $C$DW$419, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$419, DW_AT_name("hoth_wng_seed")
	.dwattr $C$DW$419, DW_AT_TI_symbol_name("_hoth_wng_seed")
	.dwattr $C$DW$419, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$419, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$420	.dwtag  DW_TAG_member
	.dwattr $C$DW$420, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$420, DW_AT_name("file_io_fcn")
	.dwattr $C$DW$420, DW_AT_TI_symbol_name("_file_io_fcn")
	.dwattr $C$DW$420, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$420, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$421	.dwtag  DW_TAG_member
	.dwattr $C$DW$421, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$421, DW_AT_name("addr")
	.dwattr $C$DW$421, DW_AT_TI_symbol_name("_addr")
	.dwattr $C$DW$421, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$421, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$422	.dwtag  DW_TAG_member
	.dwattr $C$DW$422, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$422, DW_AT_name("count")
	.dwattr $C$DW$422, DW_AT_TI_symbol_name("_count")
	.dwattr $C$DW$422, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$422, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$423	.dwtag  DW_TAG_member
	.dwattr $C$DW$423, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$423, DW_AT_name("pcmtbl")
	.dwattr $C$DW$423, DW_AT_TI_symbol_name("_pcmtbl")
	.dwattr $C$DW$423, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$423, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$424	.dwtag  DW_TAG_member
	.dwattr $C$DW$424, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$424, DW_AT_name("exception")
	.dwattr $C$DW$424, DW_AT_TI_symbol_name("_exception")
	.dwattr $C$DW$424, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$424, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$425	.dwtag  DW_TAG_member
	.dwattr $C$DW$425, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$425, DW_AT_name("debug")
	.dwattr $C$DW$425, DW_AT_TI_symbol_name("_debug")
	.dwattr $C$DW$425, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$425, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$51

$C$DW$T$119	.dwtag  DW_TAG_typedef, DW_AT_name("sgnConfig_t")
	.dwattr $C$DW$T$119, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$T$119, DW_AT_language(DW_LANG_C)
$C$DW$T$120	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$120, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$T$120, DW_AT_address_class(0x17)

$C$DW$T$52	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x06)
$C$DW$426	.dwtag  DW_TAG_member
	.dwattr $C$DW$426, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$426, DW_AT_name("samples_per_frame")
	.dwattr $C$DW$426, DW_AT_TI_symbol_name("_samples_per_frame")
	.dwattr $C$DW$426, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$426, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$427	.dwtag  DW_TAG_member
	.dwattr $C$DW$427, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$427, DW_AT_name("filter_length")
	.dwattr $C$DW$427, DW_AT_TI_symbol_name("_filter_length")
	.dwattr $C$DW$427, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$427, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$428	.dwtag  DW_TAG_member
	.dwattr $C$DW$428, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$428, DW_AT_name("rx_delay")
	.dwattr $C$DW$428, DW_AT_TI_symbol_name("_rx_delay")
	.dwattr $C$DW$428, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$428, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$429	.dwtag  DW_TAG_member
	.dwattr $C$DW$429, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$429, DW_AT_name("tx_delay")
	.dwattr $C$DW$429, DW_AT_TI_symbol_name("_tx_delay")
	.dwattr $C$DW$429, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$429, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$430	.dwtag  DW_TAG_member
	.dwattr $C$DW$430, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$430, DW_AT_name("exception")
	.dwattr $C$DW$430, DW_AT_TI_symbol_name("_exception")
	.dwattr $C$DW$430, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$430, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$52

$C$DW$T$121	.dwtag  DW_TAG_typedef, DW_AT_name("hybConfig_t")
	.dwattr $C$DW$T$121, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$T$121, DW_AT_language(DW_LANG_C)
$C$DW$T$122	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$122, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$T$122, DW_AT_address_class(0x17)

$C$DW$T$54	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$54, DW_AT_byte_size(0x06)
$C$DW$431	.dwtag  DW_TAG_member
	.dwattr $C$DW$431, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$431, DW_AT_name("mclass")
	.dwattr $C$DW$431, DW_AT_TI_symbol_name("_mclass")
	.dwattr $C$DW$431, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$431, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$432	.dwtag  DW_TAG_member
	.dwattr $C$DW$432, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$432, DW_AT_name("log2align")
	.dwattr $C$DW$432, DW_AT_TI_symbol_name("_log2align")
	.dwattr $C$DW$432, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$432, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$433	.dwtag  DW_TAG_member
	.dwattr $C$DW$433, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$433, DW_AT_name("size")
	.dwattr $C$DW$433, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$433, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$433, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$434	.dwtag  DW_TAG_member
	.dwattr $C$DW$434, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$434, DW_AT_name("volat")
	.dwattr $C$DW$434, DW_AT_TI_symbol_name("_volat")
	.dwattr $C$DW$434, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$434, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$435	.dwtag  DW_TAG_member
	.dwattr $C$DW$435, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$435, DW_AT_name("base")
	.dwattr $C$DW$435, DW_AT_TI_symbol_name("_base")
	.dwattr $C$DW$435, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$435, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$54

$C$DW$T$123	.dwtag  DW_TAG_typedef, DW_AT_name("ecomemBuffer_t")
	.dwattr $C$DW$T$123, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$T$123, DW_AT_language(DW_LANG_C)
$C$DW$T$124	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$124, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$124, DW_AT_address_class(0x17)

$C$DW$T$125	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$125, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$125, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$125, DW_AT_byte_size(0x1e)
$C$DW$436	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$436, DW_AT_upper_bound(0x04)
	.dwendtag $C$DW$T$125

$C$DW$437	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$437, DW_AT_type(*$C$DW$T$123)
$C$DW$T$127	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$127, DW_AT_type(*$C$DW$437)
$C$DW$T$128	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$128, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$T$128, DW_AT_address_class(0x17)
$C$DW$T$129	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$129, DW_AT_type(*$C$DW$T$128)
	.dwattr $C$DW$T$129, DW_AT_address_class(0x17)

$C$DW$T$55	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x05)
$C$DW$438	.dwtag  DW_TAG_member
	.dwattr $C$DW$438, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$438, DW_AT_name("ID")
	.dwattr $C$DW$438, DW_AT_TI_symbol_name("_ID")
	.dwattr $C$DW$438, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$438, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$439	.dwtag  DW_TAG_member
	.dwattr $C$DW$439, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$439, DW_AT_name("max_samples_per_frame")
	.dwattr $C$DW$439, DW_AT_TI_symbol_name("_max_samples_per_frame")
	.dwattr $C$DW$439, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$439, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$440	.dwtag  DW_TAG_member
	.dwattr $C$DW$440, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$440, DW_AT_name("max_filter_length")
	.dwattr $C$DW$440, DW_AT_TI_symbol_name("_max_filter_length")
	.dwattr $C$DW$440, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$440, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$441	.dwtag  DW_TAG_member
	.dwattr $C$DW$441, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$441, DW_AT_name("max_rx_delay")
	.dwattr $C$DW$441, DW_AT_TI_symbol_name("_max_rx_delay")
	.dwattr $C$DW$441, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$441, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$442	.dwtag  DW_TAG_member
	.dwattr $C$DW$442, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$442, DW_AT_name("max_tx_delay")
	.dwattr $C$DW$442, DW_AT_TI_symbol_name("_max_tx_delay")
	.dwattr $C$DW$442, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$442, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$55

$C$DW$T$130	.dwtag  DW_TAG_typedef, DW_AT_name("hybNewConfig_t")
	.dwattr $C$DW$T$130, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$T$130, DW_AT_language(DW_LANG_C)
$C$DW$T$131	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$131, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$T$131, DW_AT_address_class(0x17)

$C$DW$T$56	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$56, DW_AT_byte_size(0x04)
$C$DW$443	.dwtag  DW_TAG_member
	.dwattr $C$DW$443, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$443, DW_AT_name("max_samples_per_frame")
	.dwattr $C$DW$443, DW_AT_TI_symbol_name("_max_samples_per_frame")
	.dwattr $C$DW$443, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$443, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$444	.dwtag  DW_TAG_member
	.dwattr $C$DW$444, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$444, DW_AT_name("max_filter_length")
	.dwattr $C$DW$444, DW_AT_TI_symbol_name("_max_filter_length")
	.dwattr $C$DW$444, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$444, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$445	.dwtag  DW_TAG_member
	.dwattr $C$DW$445, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$445, DW_AT_name("max_rx_delay")
	.dwattr $C$DW$445, DW_AT_TI_symbol_name("_max_rx_delay")
	.dwattr $C$DW$445, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$445, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$446	.dwtag  DW_TAG_member
	.dwattr $C$DW$446, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$446, DW_AT_name("max_tx_delay")
	.dwattr $C$DW$446, DW_AT_TI_symbol_name("_max_tx_delay")
	.dwattr $C$DW$446, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$446, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$56

$C$DW$T$132	.dwtag  DW_TAG_typedef, DW_AT_name("hybSizeConfig_t")
	.dwattr $C$DW$T$132, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$T$132, DW_AT_language(DW_LANG_C)
$C$DW$T$133	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$133, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$T$133, DW_AT_address_class(0x17)

$C$DW$T$58	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$58, DW_AT_byte_size(0x06)
$C$DW$447	.dwtag  DW_TAG_member
	.dwattr $C$DW$447, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$447, DW_AT_name("filter_length")
	.dwattr $C$DW$447, DW_AT_TI_symbol_name("_filter_length")
	.dwattr $C$DW$447, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$447, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$448	.dwtag  DW_TAG_member
	.dwattr $C$DW$448, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$448, DW_AT_name("config_bitfield")
	.dwattr $C$DW$448, DW_AT_TI_symbol_name("_config_bitfield")
	.dwattr $C$DW$448, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$448, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$449	.dwtag  DW_TAG_member
	.dwattr $C$DW$449, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$449, DW_AT_name("config_bitfield1")
	.dwattr $C$DW$449, DW_AT_TI_symbol_name("_config_bitfield1")
	.dwattr $C$DW$449, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$449, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$450	.dwtag  DW_TAG_member
	.dwattr $C$DW$450, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$450, DW_AT_name("noise_level")
	.dwattr $C$DW$450, DW_AT_TI_symbol_name("_noise_level")
	.dwattr $C$DW$450, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$450, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$451	.dwtag  DW_TAG_member
	.dwattr $C$DW$451, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$451, DW_AT_name("nlp_aggress")
	.dwattr $C$DW$451, DW_AT_TI_symbol_name("_nlp_aggress")
	.dwattr $C$DW$451, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$451, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$452	.dwtag  DW_TAG_member
	.dwattr $C$DW$452, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$452, DW_AT_name("cn_config")
	.dwattr $C$DW$452, DW_AT_TI_symbol_name("_cn_config")
	.dwattr $C$DW$452, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$452, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$58

$C$DW$T$59	.dwtag  DW_TAG_typedef, DW_AT_name("ecuConfigParam_t")
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$T$59, DW_AT_language(DW_LANG_C)
$C$DW$T$60	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$T$60, DW_AT_address_class(0x17)

$C$DW$T$61	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$61, DW_AT_byte_size(0x0c)
$C$DW$453	.dwtag  DW_TAG_member
	.dwattr $C$DW$453, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$453, DW_AT_name("samples_per_frame")
	.dwattr $C$DW$453, DW_AT_TI_symbol_name("_samples_per_frame")
	.dwattr $C$DW$453, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$453, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$454	.dwtag  DW_TAG_member
	.dwattr $C$DW$454, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$454, DW_AT_name("y2x_delay")
	.dwattr $C$DW$454, DW_AT_TI_symbol_name("_y2x_delay")
	.dwattr $C$DW$454, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$454, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$455	.dwtag  DW_TAG_member
	.dwattr $C$DW$455, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$455, DW_AT_name("sendOutInst")
	.dwattr $C$DW$455, DW_AT_TI_symbol_name("_sendOutInst")
	.dwattr $C$DW$455, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$455, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$456	.dwtag  DW_TAG_member
	.dwattr $C$DW$456, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$456, DW_AT_name("recOutInst")
	.dwattr $C$DW$456, DW_AT_TI_symbol_name("_recOutInst")
	.dwattr $C$DW$456, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$456, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$457	.dwtag  DW_TAG_member
	.dwattr $C$DW$457, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$457, DW_AT_name("cfgParam")
	.dwattr $C$DW$457, DW_AT_TI_symbol_name("_cfgParam")
	.dwattr $C$DW$457, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$457, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$458	.dwtag  DW_TAG_member
	.dwattr $C$DW$458, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$458, DW_AT_name("pcm_expand_tbl")
	.dwattr $C$DW$458, DW_AT_TI_symbol_name("_pcm_expand_tbl")
	.dwattr $C$DW$458, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$458, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$459	.dwtag  DW_TAG_member
	.dwattr $C$DW$459, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$459, DW_AT_name("pcm_zero")
	.dwattr $C$DW$459, DW_AT_TI_symbol_name("_pcm_zero")
	.dwattr $C$DW$459, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$459, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$61

$C$DW$T$134	.dwtag  DW_TAG_typedef, DW_AT_name("ecuConfig_t")
	.dwattr $C$DW$T$134, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$T$134, DW_AT_language(DW_LANG_C)
$C$DW$T$135	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$135, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$T$135, DW_AT_address_class(0x17)

$C$DW$T$62	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$62, DW_AT_byte_size(0x01)
$C$DW$460	.dwtag  DW_TAG_member
	.dwattr $C$DW$460, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$460, DW_AT_name("ID")
	.dwattr $C$DW$460, DW_AT_TI_symbol_name("_ID")
	.dwattr $C$DW$460, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$460, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$62

$C$DW$T$136	.dwtag  DW_TAG_typedef, DW_AT_name("ecuNewConfig_t")
	.dwattr $C$DW$T$136, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$T$136, DW_AT_language(DW_LANG_C)
$C$DW$T$137	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$137, DW_AT_type(*$C$DW$T$136)
	.dwattr $C$DW$T$137, DW_AT_address_class(0x17)

$C$DW$T$64	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$64, DW_AT_byte_size(0x0c)
$C$DW$461	.dwtag  DW_TAG_member
	.dwattr $C$DW$461, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$461, DW_AT_name("fd")
	.dwattr $C$DW$461, DW_AT_TI_symbol_name("_fd")
	.dwattr $C$DW$461, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$461, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$462	.dwtag  DW_TAG_member
	.dwattr $C$DW$462, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$462, DW_AT_name("buf")
	.dwattr $C$DW$462, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$462, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$462, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$463	.dwtag  DW_TAG_member
	.dwattr $C$DW$463, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$463, DW_AT_name("pos")
	.dwattr $C$DW$463, DW_AT_TI_symbol_name("_pos")
	.dwattr $C$DW$463, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$463, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$464	.dwtag  DW_TAG_member
	.dwattr $C$DW$464, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$464, DW_AT_name("bufend")
	.dwattr $C$DW$464, DW_AT_TI_symbol_name("_bufend")
	.dwattr $C$DW$464, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$464, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$465	.dwtag  DW_TAG_member
	.dwattr $C$DW$465, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$465, DW_AT_name("buff_stop")
	.dwattr $C$DW$465, DW_AT_TI_symbol_name("_buff_stop")
	.dwattr $C$DW$465, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$465, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$466	.dwtag  DW_TAG_member
	.dwattr $C$DW$466, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$466, DW_AT_name("flags")
	.dwattr $C$DW$466, DW_AT_TI_symbol_name("_flags")
	.dwattr $C$DW$466, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$466, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$64

$C$DW$T$65	.dwtag  DW_TAG_typedef, DW_AT_name("FILE")
	.dwattr $C$DW$T$65, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$65, DW_AT_language(DW_LANG_C)
$C$DW$T$66	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$T$66, DW_AT_address_class(0x17)

$C$DW$T$68	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$68, DW_AT_byte_size(0x104)
$C$DW$467	.dwtag  DW_TAG_member
	.dwattr $C$DW$467, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$467, DW_AT_name("fio")
	.dwattr $C$DW$467, DW_AT_TI_symbol_name("_fio")
	.dwattr $C$DW$467, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$467, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$468	.dwtag  DW_TAG_member
	.dwattr $C$DW$468, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$468, DW_AT_name("eof")
	.dwattr $C$DW$468, DW_AT_TI_symbol_name("_eof")
	.dwattr $C$DW$468, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$468, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$469	.dwtag  DW_TAG_member
	.dwattr $C$DW$469, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$469, DW_AT_name("fptr")
	.dwattr $C$DW$469, DW_AT_TI_symbol_name("_fptr")
	.dwattr $C$DW$469, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$469, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$470	.dwtag  DW_TAG_member
	.dwattr $C$DW$470, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$470, DW_AT_name("fname")
	.dwattr $C$DW$470, DW_AT_TI_symbol_name("_fname")
	.dwattr $C$DW$470, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$470, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$68

$C$DW$T$115	.dwtag  DW_TAG_typedef, DW_AT_name("ecuSimFileIo_t")
	.dwattr $C$DW$T$115, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$T$115, DW_AT_language(DW_LANG_C)
$C$DW$471	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$471, DW_AT_type(*$C$DW$T$115)
$C$DW$T$139	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$139, DW_AT_type(*$C$DW$471)
$C$DW$T$140	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$140, DW_AT_type(*$C$DW$T$139)
	.dwattr $C$DW$T$140, DW_AT_address_class(0x17)

$C$DW$T$69	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$69, DW_AT_byte_size(0x12)
$C$DW$472	.dwtag  DW_TAG_member
	.dwattr $C$DW$472, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$472, DW_AT_name("state")
	.dwattr $C$DW$472, DW_AT_TI_symbol_name("_state")
	.dwattr $C$DW$472, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$472, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$473	.dwtag  DW_TAG_member
	.dwattr $C$DW$473, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$473, DW_AT_name("reset")
	.dwattr $C$DW$473, DW_AT_TI_symbol_name("_reset")
	.dwattr $C$DW$473, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$473, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$474	.dwtag  DW_TAG_member
	.dwattr $C$DW$474, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$474, DW_AT_name("delay")
	.dwattr $C$DW$474, DW_AT_TI_symbol_name("_delay")
	.dwattr $C$DW$474, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$474, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$475	.dwtag  DW_TAG_member
	.dwattr $C$DW$475, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$475, DW_AT_name("dcoffset")
	.dwattr $C$DW$475, DW_AT_TI_symbol_name("_dcoffset")
	.dwattr $C$DW$475, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$475, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$476	.dwtag  DW_TAG_member
	.dwattr $C$DW$476, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$476, DW_AT_name("wftype")
	.dwattr $C$DW$476, DW_AT_TI_symbol_name("_wftype")
	.dwattr $C$DW$476, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$476, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$477	.dwtag  DW_TAG_member
	.dwattr $C$DW$477, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$477, DW_AT_name("f1")
	.dwattr $C$DW$477, DW_AT_TI_symbol_name("_f1")
	.dwattr $C$DW$477, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$477, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$478	.dwtag  DW_TAG_member
	.dwattr $C$DW$478, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$478, DW_AT_name("f2")
	.dwattr $C$DW$478, DW_AT_TI_symbol_name("_f2")
	.dwattr $C$DW$478, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$478, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$479	.dwtag  DW_TAG_member
	.dwattr $C$DW$479, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$479, DW_AT_name("amp1")
	.dwattr $C$DW$479, DW_AT_TI_symbol_name("_amp1")
	.dwattr $C$DW$479, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$479, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$480	.dwtag  DW_TAG_member
	.dwattr $C$DW$480, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$480, DW_AT_name("amp2")
	.dwattr $C$DW$480, DW_AT_TI_symbol_name("_amp2")
	.dwattr $C$DW$480, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$480, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$481	.dwtag  DW_TAG_member
	.dwattr $C$DW$481, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$481, DW_AT_name("nlevel")
	.dwattr $C$DW$481, DW_AT_TI_symbol_name("_nlevel")
	.dwattr $C$DW$481, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$481, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$482	.dwtag  DW_TAG_member
	.dwattr $C$DW$482, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$482, DW_AT_name("nseed")
	.dwattr $C$DW$482, DW_AT_TI_symbol_name("_nseed")
	.dwattr $C$DW$482, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$482, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$483	.dwtag  DW_TAG_member
	.dwattr $C$DW$483, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$483, DW_AT_name("ntype")
	.dwattr $C$DW$483, DW_AT_TI_symbol_name("_ntype")
	.dwattr $C$DW$483, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$483, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$484	.dwtag  DW_TAG_member
	.dwattr $C$DW$484, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$484, DW_AT_name("pow_level")
	.dwattr $C$DW$484, DW_AT_TI_symbol_name("_pow_level")
	.dwattr $C$DW$484, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$484, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$485	.dwtag  DW_TAG_member
	.dwattr $C$DW$485, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$485, DW_AT_name("hoth_seed")
	.dwattr $C$DW$485, DW_AT_TI_symbol_name("_hoth_seed")
	.dwattr $C$DW$485, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$485, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$486	.dwtag  DW_TAG_member
	.dwattr $C$DW$486, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$486, DW_AT_name("sdram_addr")
	.dwattr $C$DW$486, DW_AT_TI_symbol_name("_sdram_addr")
	.dwattr $C$DW$486, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$486, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$487	.dwtag  DW_TAG_member
	.dwattr $C$DW$487, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$487, DW_AT_name("num_sample")
	.dwattr $C$DW$487, DW_AT_TI_symbol_name("_num_sample")
	.dwattr $C$DW$487, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$487, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$69

$C$DW$T$112	.dwtag  DW_TAG_typedef, DW_AT_name("siuSGNPars_t")
	.dwattr $C$DW$T$112, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$T$112, DW_AT_language(DW_LANG_C)
$C$DW$T$141	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$141, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$T$141, DW_AT_address_class(0x17)

$C$DW$T$72	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$72, DW_AT_byte_size(0x04)
$C$DW$488	.dwtag  DW_TAG_member
	.dwattr $C$DW$488, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$488, DW_AT_name("fcn")
	.dwattr $C$DW$488, DW_AT_TI_symbol_name("_fcn")
	.dwattr $C$DW$488, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$488, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$489	.dwtag  DW_TAG_member
	.dwattr $C$DW$489, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$489, DW_AT_name("targetInst")
	.dwattr $C$DW$489, DW_AT_TI_symbol_name("_targetInst")
	.dwattr $C$DW$489, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$489, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$72

$C$DW$T$73	.dwtag  DW_TAG_typedef, DW_AT_name("siuTxSendOut_t")
	.dwattr $C$DW$T$73, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$T$73, DW_AT_language(DW_LANG_C)

$C$DW$T$74	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$74, DW_AT_byte_size(0x0c)
$C$DW$490	.dwtag  DW_TAG_member
	.dwattr $C$DW$490, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$490, DW_AT_name("enabled")
	.dwattr $C$DW$490, DW_AT_TI_symbol_name("_enabled")
	.dwattr $C$DW$490, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$490, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$491	.dwtag  DW_TAG_member
	.dwattr $C$DW$491, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$491, DW_AT_name("send_frame_length")
	.dwattr $C$DW$491, DW_AT_TI_symbol_name("_send_frame_length")
	.dwattr $C$DW$491, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$491, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$492	.dwtag  DW_TAG_member
	.dwattr $C$DW$492, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$492, DW_AT_name("recv_frame_length")
	.dwattr $C$DW$492, DW_AT_TI_symbol_name("_recv_frame_length")
	.dwattr $C$DW$492, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$492, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$493	.dwtag  DW_TAG_member
	.dwattr $C$DW$493, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$493, DW_AT_name("send_frame_ptr")
	.dwattr $C$DW$493, DW_AT_TI_symbol_name("_send_frame_ptr")
	.dwattr $C$DW$493, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$493, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$494	.dwtag  DW_TAG_member
	.dwattr $C$DW$494, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$494, DW_AT_name("recv_frame_ptr")
	.dwattr $C$DW$494, DW_AT_TI_symbol_name("_recv_frame_ptr")
	.dwattr $C$DW$494, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$494, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$495	.dwtag  DW_TAG_member
	.dwattr $C$DW$495, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$495, DW_AT_name("TxSendOut")
	.dwattr $C$DW$495, DW_AT_TI_symbol_name("_TxSendOut")
	.dwattr $C$DW$495, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$495, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$74

$C$DW$T$75	.dwtag  DW_TAG_typedef, DW_AT_name("siuTxInst_t")
	.dwattr $C$DW$T$75, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$T$75, DW_AT_language(DW_LANG_C)

$C$DW$T$76	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$76, DW_AT_byte_size(0x1c)
$C$DW$496	.dwtag  DW_TAG_member
	.dwattr $C$DW$496, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$496, DW_AT_name("ID")
	.dwattr $C$DW$496, DW_AT_TI_symbol_name("_ID")
	.dwattr $C$DW$496, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$496, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$497	.dwtag  DW_TAG_member
	.dwattr $C$DW$497, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$497, DW_AT_name("exception")
	.dwattr $C$DW$497, DW_AT_TI_symbol_name("_exception")
	.dwattr $C$DW$497, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$497, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$498	.dwtag  DW_TAG_member
	.dwattr $C$DW$498, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$498, DW_AT_name("debug")
	.dwattr $C$DW$498, DW_AT_TI_symbol_name("_debug")
	.dwattr $C$DW$498, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$498, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$499	.dwtag  DW_TAG_member
	.dwattr $C$DW$499, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$499, DW_AT_name("TxInst")
	.dwattr $C$DW$499, DW_AT_TI_symbol_name("_TxInst")
	.dwattr $C$DW$499, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$499, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$500	.dwtag  DW_TAG_member
	.dwattr $C$DW$500, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$500, DW_AT_name("slmInst")
	.dwattr $C$DW$500, DW_AT_TI_symbol_name("_slmInst")
	.dwattr $C$DW$500, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$500, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$501	.dwtag  DW_TAG_member
	.dwattr $C$DW$501, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$501, DW_AT_name("cheap_used")
	.dwattr $C$DW$501, DW_AT_TI_symbol_name("_cheap_used")
	.dwattr $C$DW$501, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$501, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$502	.dwtag  DW_TAG_member
	.dwattr $C$DW$502, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$502, DW_AT_name("vheap_used")
	.dwattr $C$DW$502, DW_AT_TI_symbol_name("_vheap_used")
	.dwattr $C$DW$502, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$502, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$503	.dwtag  DW_TAG_member
	.dwattr $C$DW$503, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$503, DW_AT_name("companding_law")
	.dwattr $C$DW$503, DW_AT_TI_symbol_name("_companding_law")
	.dwattr $C$DW$503, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$503, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$504	.dwtag  DW_TAG_member
	.dwattr $C$DW$504, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$504, DW_AT_name("pcm_bits")
	.dwattr $C$DW$504, DW_AT_TI_symbol_name("_pcm_bits")
	.dwattr $C$DW$504, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$504, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$505	.dwtag  DW_TAG_member
	.dwattr $C$DW$505, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$505, DW_AT_name("piuInst")
	.dwattr $C$DW$505, DW_AT_TI_symbol_name("_piuInst")
	.dwattr $C$DW$505, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$505, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$506	.dwtag  DW_TAG_member
	.dwattr $C$DW$506, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$506, DW_AT_name("ecuInst")
	.dwattr $C$DW$506, DW_AT_TI_symbol_name("_ecuInst")
	.dwattr $C$DW$506, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$506, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$76

$C$DW$T$143	.dwtag  DW_TAG_typedef, DW_AT_name("siuInst_t")
	.dwattr $C$DW$T$143, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$T$143, DW_AT_language(DW_LANG_C)
$C$DW$T$144	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$144, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$T$144, DW_AT_address_class(0x17)

$C$DW$T$145	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$145, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$T$145, DW_AT_language(DW_LANG_C)
$C$DW$507	.dwtag  DW_TAG_subrange_type
	.dwendtag $C$DW$T$145


$C$DW$T$77	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$77, DW_AT_byte_size(0x0e)
$C$DW$508	.dwtag  DW_TAG_member
	.dwattr $C$DW$508, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$508, DW_AT_name("ID")
	.dwattr $C$DW$508, DW_AT_TI_symbol_name("_ID")
	.dwattr $C$DW$508, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$508, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$509	.dwtag  DW_TAG_member
	.dwattr $C$DW$509, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$509, DW_AT_name("exception")
	.dwattr $C$DW$509, DW_AT_TI_symbol_name("_exception")
	.dwattr $C$DW$509, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$509, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$510	.dwtag  DW_TAG_member
	.dwattr $C$DW$510, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$510, DW_AT_name("debug")
	.dwattr $C$DW$510, DW_AT_TI_symbol_name("_debug")
	.dwattr $C$DW$510, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$510, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$511	.dwtag  DW_TAG_member
	.dwattr $C$DW$511, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$511, DW_AT_name("cheap_used")
	.dwattr $C$DW$511, DW_AT_TI_symbol_name("_cheap_used")
	.dwattr $C$DW$511, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$511, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$512	.dwtag  DW_TAG_member
	.dwattr $C$DW$512, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$512, DW_AT_name("cheap")
	.dwattr $C$DW$512, DW_AT_TI_symbol_name("_cheap")
	.dwattr $C$DW$512, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$512, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$513	.dwtag  DW_TAG_member
	.dwattr $C$DW$513, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$513, DW_AT_name("vheap_used")
	.dwattr $C$DW$513, DW_AT_TI_symbol_name("_vheap_used")
	.dwattr $C$DW$513, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$513, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$514	.dwtag  DW_TAG_member
	.dwattr $C$DW$514, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$514, DW_AT_name("vheap")
	.dwattr $C$DW$514, DW_AT_TI_symbol_name("_vheap")
	.dwattr $C$DW$514, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$514, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$77

$C$DW$T$146	.dwtag  DW_TAG_typedef, DW_AT_name("siuContext_t")
	.dwattr $C$DW$T$146, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$T$146, DW_AT_language(DW_LANG_C)

$C$DW$T$82	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$82, DW_AT_byte_size(0x0e)
$C$DW$515	.dwtag  DW_TAG_member
	.dwattr $C$DW$515, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$515, DW_AT_name("ecu_pcm_expand_ptr")
	.dwattr $C$DW$515, DW_AT_TI_symbol_name("_ecu_pcm_expand_ptr")
	.dwattr $C$DW$515, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$515, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$516	.dwtag  DW_TAG_member
	.dwattr $C$DW$516, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$516, DW_AT_name("piu_ecu_receive_ptr")
	.dwattr $C$DW$516, DW_AT_TI_symbol_name("_piu_ecu_receive_ptr")
	.dwattr $C$DW$516, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$516, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$517	.dwtag  DW_TAG_member
	.dwattr $C$DW$517, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$517, DW_AT_name("ecu_srch_filter_ptr")
	.dwattr $C$DW$517, DW_AT_TI_symbol_name("_ecu_srch_filter_ptr")
	.dwattr $C$DW$517, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$517, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$518	.dwtag  DW_TAG_member
	.dwattr $C$DW$518, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$518, DW_AT_name("ecu_bg_work_ptr")
	.dwattr $C$DW$518, DW_AT_TI_symbol_name("_ecu_bg_work_ptr")
	.dwattr $C$DW$518, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$518, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$519	.dwtag  DW_TAG_member
	.dwattr $C$DW$519, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$519, DW_AT_name("ecu_bg_e_ptr")
	.dwattr $C$DW$519, DW_AT_TI_symbol_name("_ecu_bg_e_ptr")
	.dwattr $C$DW$519, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$519, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$520	.dwtag  DW_TAG_member
	.dwattr $C$DW$520, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$520, DW_AT_name("ecu_bg_filter_ptr")
	.dwattr $C$DW$520, DW_AT_TI_symbol_name("_ecu_bg_filter_ptr")
	.dwattr $C$DW$520, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$520, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$521	.dwtag  DW_TAG_member
	.dwattr $C$DW$521, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$521, DW_AT_name("ecu_fg_filter_ptr")
	.dwattr $C$DW$521, DW_AT_TI_symbol_name("_ecu_fg_filter_ptr")
	.dwattr $C$DW$521, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$521, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$82

$C$DW$T$147	.dwtag  DW_TAG_typedef, DW_AT_name("iramSeg_t")
	.dwattr $C$DW$T$147, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$T$147, DW_AT_language(DW_LANG_C)

$C$DW$T$83	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$83, DW_AT_byte_size(0x03)
$C$DW$522	.dwtag  DW_TAG_member
	.dwattr $C$DW$522, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$522, DW_AT_name("ctl_code")
	.dwattr $C$DW$522, DW_AT_TI_symbol_name("_ctl_code")
	.dwattr $C$DW$522, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$522, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$523	.dwtag  DW_TAG_member
	.dwattr $C$DW$523, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$523, DW_AT_name("u")
	.dwattr $C$DW$523, DW_AT_TI_symbol_name("_u")
	.dwattr $C$DW$523, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$523, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$83

$C$DW$T$110	.dwtag  DW_TAG_typedef, DW_AT_name("ecuControl_t")
	.dwattr $C$DW$T$110, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$T$110, DW_AT_language(DW_LANG_C)

$C$DW$T$84	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$84, DW_AT_byte_size(0x06)
$C$DW$524	.dwtag  DW_TAG_member
	.dwattr $C$DW$524, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$524, DW_AT_name("length")
	.dwattr $C$DW$524, DW_AT_TI_symbol_name("_length")
	.dwattr $C$DW$524, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$524, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$525	.dwtag  DW_TAG_member
	.dwattr $C$DW$525, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$525, DW_AT_name("h")
	.dwattr $C$DW$525, DW_AT_TI_symbol_name("_h")
	.dwattr $C$DW$525, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$525, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$526	.dwtag  DW_TAG_member
	.dwattr $C$DW$526, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$526, DW_AT_name("exp")
	.dwattr $C$DW$526, DW_AT_TI_symbol_name("_exp")
	.dwattr $C$DW$526, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$526, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$527	.dwtag  DW_TAG_member
	.dwattr $C$DW$527, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$527, DW_AT_name("erl0")
	.dwattr $C$DW$527, DW_AT_TI_symbol_name("_erl0")
	.dwattr $C$DW$527, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$527, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$84


$C$DW$T$85	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$85, DW_AT_byte_size(0x01)
$C$DW$528	.dwtag  DW_TAG_member
	.dwattr $C$DW$528, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$528, DW_AT_name("tone_scaling")
	.dwattr $C$DW$528, DW_AT_TI_symbol_name("_tone_scaling")
	.dwattr $C$DW$528, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$528, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$85


$C$DW$T$86	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$86, DW_AT_byte_size(0x0a)
$C$DW$529	.dwtag  DW_TAG_member
	.dwattr $C$DW$529, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$529, DW_AT_name("type")
	.dwattr $C$DW$529, DW_AT_TI_symbol_name("_type")
	.dwattr $C$DW$529, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$529, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$530	.dwtag  DW_TAG_member
	.dwattr $C$DW$530, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$530, DW_AT_name("erl")
	.dwattr $C$DW$530, DW_AT_TI_symbol_name("_erl")
	.dwattr $C$DW$530, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$530, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$531	.dwtag  DW_TAG_member
	.dwattr $C$DW$531, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$531, DW_AT_name("delay")
	.dwattr $C$DW$531, DW_AT_TI_symbol_name("_delay")
	.dwattr $C$DW$531, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$531, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$532	.dwtag  DW_TAG_member
	.dwattr $C$DW$532, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$532, DW_AT_name("negative_phase")
	.dwattr $C$DW$532, DW_AT_TI_symbol_name("_negative_phase")
	.dwattr $C$DW$532, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$532, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$533	.dwtag  DW_TAG_member
	.dwattr $C$DW$533, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$533, DW_AT_name("u")
	.dwattr $C$DW$533, DW_AT_TI_symbol_name("_u")
	.dwattr $C$DW$533, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$533, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$86

$C$DW$T$101	.dwtag  DW_TAG_typedef, DW_AT_name("hybSegment_t")
	.dwattr $C$DW$T$101, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$T$101, DW_AT_language(DW_LANG_C)

$C$DW$T$87	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$87, DW_AT_byte_size(0x0c)
$C$DW$534	.dwtag  DW_TAG_member
	.dwattr $C$DW$534, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$534, DW_AT_name("code")
	.dwattr $C$DW$534, DW_AT_TI_symbol_name("_code")
	.dwattr $C$DW$534, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$534, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$535	.dwtag  DW_TAG_member
	.dwattr $C$DW$535, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$535, DW_AT_name("u")
	.dwattr $C$DW$535, DW_AT_TI_symbol_name("_u")
	.dwattr $C$DW$535, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$535, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$87

$C$DW$T$111	.dwtag  DW_TAG_typedef, DW_AT_name("hybControl_t")
	.dwattr $C$DW$T$111, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$T$111, DW_AT_language(DW_LANG_C)

$C$DW$T$89	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$89, DW_AT_byte_size(0x06)
$C$DW$536	.dwtag  DW_TAG_member
	.dwattr $C$DW$536, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$536, DW_AT_name("frame_size")
	.dwattr $C$DW$536, DW_AT_TI_symbol_name("_frame_size")
	.dwattr $C$DW$536, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$536, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$537	.dwtag  DW_TAG_member
	.dwattr $C$DW$537, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$537, DW_AT_name("send_out_buf")
	.dwattr $C$DW$537, DW_AT_TI_symbol_name("_send_out_buf")
	.dwattr $C$DW$537, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$537, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$538	.dwtag  DW_TAG_member
	.dwattr $C$DW$538, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$538, DW_AT_name("receive_in_buf")
	.dwattr $C$DW$538, DW_AT_TI_symbol_name("_receive_in_buf")
	.dwattr $C$DW$538, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$538, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$89

$C$DW$T$103	.dwtag  DW_TAG_typedef, DW_AT_name("setFrame_t")
	.dwattr $C$DW$T$103, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$T$103, DW_AT_language(DW_LANG_C)

$C$DW$T$90	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$90, DW_AT_byte_size(0x05)
$C$DW$539	.dwtag  DW_TAG_member
	.dwattr $C$DW$539, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$539, DW_AT_name("send_out")
	.dwattr $C$DW$539, DW_AT_TI_symbol_name("_send_out")
	.dwattr $C$DW$539, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$539, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$540	.dwtag  DW_TAG_member
	.dwattr $C$DW$540, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$540, DW_AT_name("send_out_mean")
	.dwattr $C$DW$540, DW_AT_TI_symbol_name("_send_out_mean")
	.dwattr $C$DW$540, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$540, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$541	.dwtag  DW_TAG_member
	.dwattr $C$DW$541, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$541, DW_AT_name("receive_out")
	.dwattr $C$DW$541, DW_AT_TI_symbol_name("_receive_out")
	.dwattr $C$DW$541, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$541, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$542	.dwtag  DW_TAG_member
	.dwattr $C$DW$542, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$542, DW_AT_name("receive_out_mean")
	.dwattr $C$DW$542, DW_AT_TI_symbol_name("_receive_out_mean")
	.dwattr $C$DW$542, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$542, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$543	.dwtag  DW_TAG_member
	.dwattr $C$DW$543, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$543, DW_AT_name("underrun")
	.dwattr $C$DW$543, DW_AT_TI_symbol_name("_underrun")
	.dwattr $C$DW$543, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$543, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$90

$C$DW$T$104	.dwtag  DW_TAG_typedef, DW_AT_name("piuStats_t")
	.dwattr $C$DW$T$104, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$T$104, DW_AT_language(DW_LANG_C)

$C$DW$T$91	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$91, DW_AT_byte_size(0x03)
$C$DW$544	.dwtag  DW_TAG_member
	.dwattr $C$DW$544, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$544, DW_AT_name("enable")
	.dwattr $C$DW$544, DW_AT_TI_symbol_name("_enable")
	.dwattr $C$DW$544, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$544, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$545	.dwtag  DW_TAG_member
	.dwattr $C$DW$545, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$545, DW_AT_name("threshold")
	.dwattr $C$DW$545, DW_AT_TI_symbol_name("_threshold")
	.dwattr $C$DW$545, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$545, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$546	.dwtag  DW_TAG_member
	.dwattr $C$DW$546, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$546, DW_AT_name("hangover")
	.dwattr $C$DW$546, DW_AT_TI_symbol_name("_hangover")
	.dwattr $C$DW$546, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$546, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$91

$C$DW$T$105	.dwtag  DW_TAG_typedef, DW_AT_name("bidSilenceDet_t")
	.dwattr $C$DW$T$105, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$T$105, DW_AT_language(DW_LANG_C)

$C$DW$T$92	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$92, DW_AT_byte_size(0x04)
$C$DW$547	.dwtag  DW_TAG_member
	.dwattr $C$DW$547, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$547, DW_AT_name("enable")
	.dwattr $C$DW$547, DW_AT_TI_symbol_name("_enable")
	.dwattr $C$DW$547, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$547, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$548	.dwtag  DW_TAG_member
	.dwattr $C$DW$548, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$548, DW_AT_name("type")
	.dwattr $C$DW$548, DW_AT_TI_symbol_name("_type")
	.dwattr $C$DW$548, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$548, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$549	.dwtag  DW_TAG_member
	.dwattr $C$DW$549, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$549, DW_AT_name("time")
	.dwattr $C$DW$549, DW_AT_TI_symbol_name("_time")
	.dwattr $C$DW$549, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$549, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$550	.dwtag  DW_TAG_member
	.dwattr $C$DW$550, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$550, DW_AT_name("custom")
	.dwattr $C$DW$550, DW_AT_TI_symbol_name("_custom")
	.dwattr $C$DW$550, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$550, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$92

$C$DW$T$106	.dwtag  DW_TAG_typedef, DW_AT_name("pcmPatternDet_t")
	.dwattr $C$DW$T$106, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$T$106, DW_AT_language(DW_LANG_C)

$C$DW$T$93	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$93, DW_AT_byte_size(0x02)
$C$DW$551	.dwtag  DW_TAG_member
	.dwattr $C$DW$551, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$551, DW_AT_name("enable")
	.dwattr $C$DW$551, DW_AT_TI_symbol_name("_enable")
	.dwattr $C$DW$551, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$551, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$552	.dwtag  DW_TAG_member
	.dwattr $C$DW$552, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$552, DW_AT_name("pattern")
	.dwattr $C$DW$552, DW_AT_TI_symbol_name("_pattern")
	.dwattr $C$DW$552, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$552, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$93

$C$DW$T$107	.dwtag  DW_TAG_typedef, DW_AT_name("pcmPatternGen_t")
	.dwattr $C$DW$T$107, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$T$107, DW_AT_language(DW_LANG_C)

$C$DW$T$94	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$94, DW_AT_byte_size(0x04)
$C$DW$553	.dwtag  DW_TAG_member
	.dwattr $C$DW$553, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$553, DW_AT_name("law")
	.dwattr $C$DW$553, DW_AT_TI_symbol_name("_law")
	.dwattr $C$DW$553, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$553, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$554	.dwtag  DW_TAG_member
	.dwattr $C$DW$554, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$554, DW_AT_name("pcm_expand_table")
	.dwattr $C$DW$554, DW_AT_TI_symbol_name("_pcm_expand_table")
	.dwattr $C$DW$554, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$554, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$94

$C$DW$T$108	.dwtag  DW_TAG_typedef, DW_AT_name("piuCompandingCfg_t")
	.dwattr $C$DW$T$108, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$T$108, DW_AT_language(DW_LANG_C)

$C$DW$T$95	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$95, DW_AT_byte_size(0x08)
$C$DW$555	.dwtag  DW_TAG_member
	.dwattr $C$DW$555, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$555, DW_AT_name("ctl_code")
	.dwattr $C$DW$555, DW_AT_TI_symbol_name("_ctl_code")
	.dwattr $C$DW$555, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$555, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$556	.dwtag  DW_TAG_member
	.dwattr $C$DW$556, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$556, DW_AT_name("u")
	.dwattr $C$DW$556, DW_AT_TI_symbol_name("_u")
	.dwattr $C$DW$556, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$556, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$95

$C$DW$T$113	.dwtag  DW_TAG_typedef, DW_AT_name("piuControl_t")
	.dwattr $C$DW$T$113, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$T$113, DW_AT_language(DW_LANG_C)

$C$DW$T$96	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$96, DW_AT_byte_size(0x04)
$C$DW$557	.dwtag  DW_TAG_member
	.dwattr $C$DW$557, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$557, DW_AT_name("select")
	.dwattr $C$DW$557, DW_AT_TI_symbol_name("_select")
	.dwattr $C$DW$557, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$557, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$558	.dwtag  DW_TAG_member
	.dwattr $C$DW$558, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$558, DW_AT_name("start")
	.dwattr $C$DW$558, DW_AT_TI_symbol_name("_start")
	.dwattr $C$DW$558, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$558, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$559	.dwtag  DW_TAG_member
	.dwattr $C$DW$559, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$559, DW_AT_name("ncoeff")
	.dwattr $C$DW$559, DW_AT_TI_symbol_name("_ncoeff")
	.dwattr $C$DW$559, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$559, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$560	.dwtag  DW_TAG_member
	.dwattr $C$DW$560, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$560, DW_AT_name("retstat")
	.dwattr $C$DW$560, DW_AT_TI_symbol_name("_retstat")
	.dwattr $C$DW$560, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$560, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$96

$C$DW$T$114	.dwtag  DW_TAG_typedef, DW_AT_name("siuGetFlt_t")
	.dwattr $C$DW$T$114, DW_AT_type(*$C$DW$T$96)
	.dwattr $C$DW$T$114, DW_AT_language(DW_LANG_C)

$C$DW$T$97	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$97, DW_AT_byte_size(0x06)
$C$DW$561	.dwtag  DW_TAG_member
	.dwattr $C$DW$561, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$561, DW_AT_name("dc_offset")
	.dwattr $C$DW$561, DW_AT_TI_symbol_name("_dc_offset")
	.dwattr $C$DW$561, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$561, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$562	.dwtag  DW_TAG_member
	.dwattr $C$DW$562, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$562, DW_AT_name("pr_period")
	.dwattr $C$DW$562, DW_AT_TI_symbol_name("_pr_period")
	.dwattr $C$DW$562, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$562, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$563	.dwtag  DW_TAG_member
	.dwattr $C$DW$563, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$563, DW_AT_name("t")
	.dwattr $C$DW$563, DW_AT_TI_symbol_name("_t")
	.dwattr $C$DW$563, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$563, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$564	.dwtag  DW_TAG_member
	.dwattr $C$DW$564, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$564, DW_AT_name("noise_level")
	.dwattr $C$DW$564, DW_AT_TI_symbol_name("_noise_level")
	.dwattr $C$DW$564, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$564, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$565	.dwtag  DW_TAG_member
	.dwattr $C$DW$565, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$565, DW_AT_name("fsk")
	.dwattr $C$DW$565, DW_AT_TI_symbol_name("_fsk")
	.dwattr $C$DW$565, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$565, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$566	.dwtag  DW_TAG_member
	.dwattr $C$DW$566, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$566, DW_AT_name("power_level")
	.dwattr $C$DW$566, DW_AT_TI_symbol_name("_power_level")
	.dwattr $C$DW$566, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$566, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$97


$C$DW$T$99	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$99, DW_AT_byte_size(0x02)
$C$DW$567	.dwtag  DW_TAG_member
	.dwattr $C$DW$567, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$567, DW_AT_name("ctl_mask")
	.dwattr $C$DW$567, DW_AT_TI_symbol_name("_ctl_mask")
	.dwattr $C$DW$567, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$567, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$568	.dwtag  DW_TAG_member
	.dwattr $C$DW$568, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$568, DW_AT_name("bg_speed")
	.dwattr $C$DW$568, DW_AT_TI_symbol_name("_bg_speed")
	.dwattr $C$DW$568, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$568, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$569	.dwtag  DW_TAG_member
	.dwattr $C$DW$569, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$569, DW_AT_name("srch_speed")
	.dwattr $C$DW$569, DW_AT_TI_symbol_name("_srch_speed")
	.dwattr $C$DW$569, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$569, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$570	.dwtag  DW_TAG_member
	.dwattr $C$DW$570, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$570, DW_AT_name("place_speed")
	.dwattr $C$DW$570, DW_AT_TI_symbol_name("_place_speed")
	.dwattr $C$DW$570, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$570, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$571	.dwtag  DW_TAG_member
	.dwattr $C$DW$571, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$571, DW_AT_name("enable")
	.dwattr $C$DW$571, DW_AT_TI_symbol_name("_enable")
	.dwattr $C$DW$571, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$571, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$572	.dwtag  DW_TAG_member
	.dwattr $C$DW$572, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$572, DW_AT_name("n_level")
	.dwattr $C$DW$572, DW_AT_TI_symbol_name("_n_level")
	.dwattr $C$DW$572, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$572, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$573	.dwtag  DW_TAG_member
	.dwattr $C$DW$573, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$573, DW_AT_name("nlp_aggress")
	.dwattr $C$DW$573, DW_AT_TI_symbol_name("_nlp_aggress")
	.dwattr $C$DW$573, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$573, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$574	.dwtag  DW_TAG_member
	.dwattr $C$DW$574, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$574, DW_AT_name("cn_config")
	.dwattr $C$DW$574, DW_AT_TI_symbol_name("_cn_config")
	.dwattr $C$DW$574, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$574, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$99


$C$DW$T$100	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$100, DW_AT_byte_size(0x06)
$C$DW$575	.dwtag  DW_TAG_member
	.dwattr $C$DW$575, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$575, DW_AT_name("uhseg")
	.dwattr $C$DW$575, DW_AT_TI_symbol_name("_uhseg")
	.dwattr $C$DW$575, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$575, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$576	.dwtag  DW_TAG_member
	.dwattr $C$DW$576, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$576, DW_AT_name("g168hseg")
	.dwattr $C$DW$576, DW_AT_TI_symbol_name("_g168hseg")
	.dwattr $C$DW$576, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$576, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$100


$C$DW$T$102	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$102, DW_AT_byte_size(0x0a)
$C$DW$577	.dwtag  DW_TAG_member
	.dwattr $C$DW$577, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$577, DW_AT_name("segment")
	.dwattr $C$DW$577, DW_AT_TI_symbol_name("_segment")
	.dwattr $C$DW$577, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$577, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$578	.dwtag  DW_TAG_member
	.dwattr $C$DW$578, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$578, DW_AT_name("dgain_l2")
	.dwattr $C$DW$578, DW_AT_TI_symbol_name("_dgain_l2")
	.dwattr $C$DW$578, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$578, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$102


$C$DW$T$109	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$109, DW_AT_byte_size(0x06)
$C$DW$579	.dwtag  DW_TAG_member
	.dwattr $C$DW$579, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$579, DW_AT_name("loopback_select")
	.dwattr $C$DW$579, DW_AT_TI_symbol_name("_loopback_select")
	.dwattr $C$DW$579, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$579, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$580	.dwtag  DW_TAG_member
	.dwattr $C$DW$580, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$580, DW_AT_name("frame_size")
	.dwattr $C$DW$580, DW_AT_TI_symbol_name("_frame_size")
	.dwattr $C$DW$580, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$580, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$581	.dwtag  DW_TAG_member
	.dwattr $C$DW$581, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$581, DW_AT_name("set_frame")
	.dwattr $C$DW$581, DW_AT_TI_symbol_name("_set_frame")
	.dwattr $C$DW$581, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$581, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$582	.dwtag  DW_TAG_member
	.dwattr $C$DW$582, DW_AT_type(*$C$DW$T$104)
	.dwattr $C$DW$582, DW_AT_name("stats")
	.dwattr $C$DW$582, DW_AT_TI_symbol_name("_stats")
	.dwattr $C$DW$582, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$582, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$583	.dwtag  DW_TAG_member
	.dwattr $C$DW$583, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$583, DW_AT_name("bid_silence_detect")
	.dwattr $C$DW$583, DW_AT_TI_symbol_name("_bid_silence_detect")
	.dwattr $C$DW$583, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$583, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$584	.dwtag  DW_TAG_member
	.dwattr $C$DW$584, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$584, DW_AT_name("pattern_detect")
	.dwattr $C$DW$584, DW_AT_TI_symbol_name("_pattern_detect")
	.dwattr $C$DW$584, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$584, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$585	.dwtag  DW_TAG_member
	.dwattr $C$DW$585, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$585, DW_AT_name("pattern_generate")
	.dwattr $C$DW$585, DW_AT_TI_symbol_name("_pattern_generate")
	.dwattr $C$DW$585, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$585, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$586	.dwtag  DW_TAG_member
	.dwattr $C$DW$586, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$586, DW_AT_name("companding")
	.dwattr $C$DW$586, DW_AT_TI_symbol_name("_companding")
	.dwattr $C$DW$586, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$586, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$587	.dwtag  DW_TAG_member
	.dwattr $C$DW$587, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$587, DW_AT_name("dc_offset_removal_select")
	.dwattr $C$DW$587, DW_AT_TI_symbol_name("_dc_offset_removal_select")
	.dwattr $C$DW$587, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$587, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$109

$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x17)
$C$DW$T$159	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$159, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$T$159, DW_AT_address_class(0x17)

$C$DW$T$49	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$49, DW_AT_language(DW_LANG_C)
$C$DW$588	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$588, DW_AT_type(*$C$DW$T$37)
$C$DW$589	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$589, DW_AT_type(*$C$DW$T$48)
	.dwendtag $C$DW$T$49

$C$DW$T$50	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$T$50, DW_AT_address_class(0x20)

$C$DW$T$70	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$70, DW_AT_language(DW_LANG_C)
$C$DW$590	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$590, DW_AT_type(*$C$DW$T$3)
$C$DW$591	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$591, DW_AT_type(*$C$DW$T$3)
$C$DW$592	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$592, DW_AT_type(*$C$DW$T$3)
$C$DW$593	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$593, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$T$70

$C$DW$T$71	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$71, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$T$71, DW_AT_address_class(0x20)
$C$DW$T$195	.dwtag  DW_TAG_typedef, DW_AT_name("ecuSizeConfig_t")
	.dwattr $C$DW$T$195, DW_AT_language(DW_LANG_C)
$C$DW$T$196	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$196, DW_AT_address_class(0x17)
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
$C$DW$T$63	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$63, DW_AT_address_class(0x17)
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
$C$DW$T$57	.dwtag  DW_TAG_typedef, DW_AT_name("Fract")
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$57, DW_AT_language(DW_LANG_C)
$C$DW$T$81	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$81, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$81, DW_AT_address_class(0x17)

$C$DW$T$197	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$197, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$197, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$197, DW_AT_byte_size(0x100)
$C$DW$594	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$594, DW_AT_upper_bound(0xff)
	.dwendtag $C$DW$T$197

$C$DW$T$27	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$27, DW_AT_address_class(0x17)

$C$DW$T$98	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$98, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$98, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$98, DW_AT_byte_size(0x02)
$C$DW$595	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$595, DW_AT_upper_bound(0x01)
	.dwendtag $C$DW$T$98


$C$DW$T$215	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$215, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$215, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$215, DW_AT_byte_size(0x50)
$C$DW$596	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$596, DW_AT_upper_bound(0x4f)
	.dwendtag $C$DW$T$215


$C$DW$T$216	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$216, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$216, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$216, DW_AT_byte_size(0x08)
$C$DW$597	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$597, DW_AT_upper_bound(0x07)
	.dwendtag $C$DW$T$216

$C$DW$T$22	.dwtag  DW_TAG_typedef, DW_AT_name("linSample")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
$C$DW$T$30	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$30, DW_AT_address_class(0x17)

$C$DW$T$217	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$217, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$217, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$217, DW_AT_byte_size(0x50)
$C$DW$598	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$598, DW_AT_upper_bound(0x4f)
	.dwendtag $C$DW$T$217

$C$DW$599	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$599, DW_AT_type(*$C$DW$T$21)
$C$DW$T$45	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$599)
$C$DW$T$46	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$46, DW_AT_address_class(0x17)

$C$DW$T$219	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$219, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$219, DW_AT_language(DW_LANG_C)
$C$DW$600	.dwtag  DW_TAG_subrange_type
	.dwendtag $C$DW$T$219

$C$DW$T$32	.dwtag  DW_TAG_typedef, DW_AT_name("int_least8_t")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$32, DW_AT_language(DW_LANG_C)
$C$DW$T$33	.dwtag  DW_TAG_typedef, DW_AT_name("tshort")
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$33, DW_AT_language(DW_LANG_C)
$C$DW$T$34	.dwtag  DW_TAG_typedef, DW_AT_name("tbool")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)
$C$DW$601	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$601, DW_AT_type(*$C$DW$T$34)
$C$DW$T$176	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$176, DW_AT_type(*$C$DW$601)
$C$DW$T$177	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$177, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$T$177, DW_AT_address_class(0x17)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)
$C$DW$T$156	.dwtag  DW_TAG_typedef, DW_AT_name("size_t")
	.dwattr $C$DW$T$156, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$156, DW_AT_language(DW_LANG_C)
$C$DW$T$35	.dwtag  DW_TAG_typedef, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$35, DW_AT_language(DW_LANG_C)
$C$DW$T$36	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least16_t")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)
$C$DW$T$37	.dwtag  DW_TAG_typedef, DW_AT_name("tuint")
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
$C$DW$T$88	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$88, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$88, DW_AT_address_class(0x17)

$C$DW$T$227	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$227, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$227, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$227, DW_AT_byte_size(0x50)
$C$DW$602	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$602, DW_AT_upper_bound(0x4f)
	.dwendtag $C$DW$T$227

$C$DW$T$53	.dwtag  DW_TAG_typedef, DW_AT_name("tsize")
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$53, DW_AT_language(DW_LANG_C)
$C$DW$T$78	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least8_t")
	.dwattr $C$DW$T$78, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$78, DW_AT_language(DW_LANG_C)
$C$DW$T$79	.dwtag  DW_TAG_typedef, DW_AT_name("tword")
	.dwattr $C$DW$T$79, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$T$79, DW_AT_language(DW_LANG_C)
$C$DW$T$80	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$80, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$T$80, DW_AT_address_class(0x17)

$C$DW$T$231	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$231, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$T$231, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$231, DW_AT_byte_size(0x50)
$C$DW$603	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$603, DW_AT_upper_bound(0x4f)
	.dwendtag $C$DW$T$231

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)
$C$DW$T$24	.dwtag  DW_TAG_typedef, DW_AT_name("int32_t")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
$C$DW$T$25	.dwtag  DW_TAG_typedef, DW_AT_name("int_least32_t")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$25, DW_AT_language(DW_LANG_C)
$C$DW$T$26	.dwtag  DW_TAG_typedef, DW_AT_name("tlong")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)
$C$DW$T$42	.dwtag  DW_TAG_typedef, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$42, DW_AT_language(DW_LANG_C)
$C$DW$T$43	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least32_t")
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$43, DW_AT_language(DW_LANG_C)
$C$DW$T$44	.dwtag  DW_TAG_typedef, DW_AT_name("tulong")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)
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
$C$DW$T$47	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$47, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$47, DW_AT_name("signed char")
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x01)
$C$DW$T$48	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$48, DW_AT_address_class(0x17)

$C$DW$T$67	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$67, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$67, DW_AT_byte_size(0x100)
$C$DW$604	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$604, DW_AT_upper_bound(0xff)
	.dwendtag $C$DW$T$67

$C$DW$605	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$605, DW_AT_type(*$C$DW$T$47)
$C$DW$T$233	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$233, DW_AT_type(*$C$DW$605)
$C$DW$T$234	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$234, DW_AT_type(*$C$DW$T$233)
	.dwattr $C$DW$T$234, DW_AT_address_class(0x17)

$C$DW$T$247	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$247, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$247, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$247, DW_AT_byte_size(0x19)
$C$DW$606	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$606, DW_AT_upper_bound(0x18)
	.dwendtag $C$DW$T$247


$C$DW$T$116	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$116, DW_AT_name("siuSetup_s")
	.dwattr $C$DW$T$116, DW_AT_byte_size(0x46e)
$C$DW$607	.dwtag  DW_TAG_member
	.dwattr $C$DW$607, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$607, DW_AT_name("exec")
	.dwattr $C$DW$607, DW_AT_TI_symbol_name("_exec")
	.dwattr $C$DW$607, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$607, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$608	.dwtag  DW_TAG_member
	.dwattr $C$DW$608, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$608, DW_AT_name("sample_cnt")
	.dwattr $C$DW$608, DW_AT_TI_symbol_name("_sample_cnt")
	.dwattr $C$DW$608, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$608, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$609	.dwtag  DW_TAG_member
	.dwattr $C$DW$609, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$609, DW_AT_name("clock_mul")
	.dwattr $C$DW$609, DW_AT_TI_symbol_name("_clock_mul")
	.dwattr $C$DW$609, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$609, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$610	.dwtag  DW_TAG_member
	.dwattr $C$DW$610, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$610, DW_AT_name("pcm_format")
	.dwattr $C$DW$610, DW_AT_TI_symbol_name("_pcm_format")
	.dwattr $C$DW$610, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$610, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$611	.dwtag  DW_TAG_member
	.dwattr $C$DW$611, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$611, DW_AT_name("pcm_bits")
	.dwattr $C$DW$611, DW_AT_TI_symbol_name("_pcm_bits")
	.dwattr $C$DW$611, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$611, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$612	.dwtag  DW_TAG_member
	.dwattr $C$DW$612, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$612, DW_AT_name("frame_size")
	.dwattr $C$DW$612, DW_AT_TI_symbol_name("_frame_size")
	.dwattr $C$DW$612, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$612, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$613	.dwtag  DW_TAG_member
	.dwattr $C$DW$613, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$613, DW_AT_name("ecu_y2x_delay")
	.dwattr $C$DW$613, DW_AT_TI_symbol_name("_ecu_y2x_delay")
	.dwattr $C$DW$613, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$613, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$614	.dwtag  DW_TAG_member
	.dwattr $C$DW$614, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$614, DW_AT_name("ecu_fltseg_length")
	.dwattr $C$DW$614, DW_AT_TI_symbol_name("_ecu_fltseg_length")
	.dwattr $C$DW$614, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$614, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$615	.dwtag  DW_TAG_member
	.dwattr $C$DW$615, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$615, DW_AT_name("ecu_num_fltseg")
	.dwattr $C$DW$615, DW_AT_TI_symbol_name("_ecu_num_fltseg")
	.dwattr $C$DW$615, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$615, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$616	.dwtag  DW_TAG_member
	.dwattr $C$DW$616, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$616, DW_AT_name("ecu_filter_length")
	.dwattr $C$DW$616, DW_AT_TI_symbol_name("_ecu_filter_length")
	.dwattr $C$DW$616, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$616, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$617	.dwtag  DW_TAG_member
	.dwattr $C$DW$617, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$617, DW_AT_name("hyb_filter_length")
	.dwattr $C$DW$617, DW_AT_TI_symbol_name("_hyb_filter_length")
	.dwattr $C$DW$617, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$617, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$618	.dwtag  DW_TAG_member
	.dwattr $C$DW$618, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$618, DW_AT_name("toggle_ecu")
	.dwattr $C$DW$618, DW_AT_TI_symbol_name("_toggle_ecu")
	.dwattr $C$DW$618, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$618, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$619	.dwtag  DW_TAG_member
	.dwattr $C$DW$619, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$619, DW_AT_name("ecuCtl")
	.dwattr $C$DW$619, DW_AT_TI_symbol_name("_ecuCtl")
	.dwattr $C$DW$619, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$619, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$620	.dwtag  DW_TAG_member
	.dwattr $C$DW$620, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$620, DW_AT_name("toggle_hyb")
	.dwattr $C$DW$620, DW_AT_TI_symbol_name("_toggle_hyb")
	.dwattr $C$DW$620, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$620, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$621	.dwtag  DW_TAG_member
	.dwattr $C$DW$621, DW_AT_type(*$C$DW$T$111)
	.dwattr $C$DW$621, DW_AT_name("hybCtl")
	.dwattr $C$DW$621, DW_AT_TI_symbol_name("_hybCtl")
	.dwattr $C$DW$621, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$621, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$622	.dwtag  DW_TAG_member
	.dwattr $C$DW$622, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$622, DW_AT_name("toggle_tx_sg")
	.dwattr $C$DW$622, DW_AT_TI_symbol_name("_toggle_tx_sg")
	.dwattr $C$DW$622, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$622, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$623	.dwtag  DW_TAG_member
	.dwattr $C$DW$623, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$623, DW_AT_name("txSGN")
	.dwattr $C$DW$623, DW_AT_TI_symbol_name("_txSGN")
	.dwattr $C$DW$623, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$623, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$624	.dwtag  DW_TAG_member
	.dwattr $C$DW$624, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$624, DW_AT_name("toggle_rx_sg")
	.dwattr $C$DW$624, DW_AT_TI_symbol_name("_toggle_rx_sg")
	.dwattr $C$DW$624, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$624, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$625	.dwtag  DW_TAG_member
	.dwattr $C$DW$625, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$625, DW_AT_name("rxSGN")
	.dwattr $C$DW$625, DW_AT_TI_symbol_name("_rxSGN")
	.dwattr $C$DW$625, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$625, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$626	.dwtag  DW_TAG_member
	.dwattr $C$DW$626, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$626, DW_AT_name("toggle_piu")
	.dwattr $C$DW$626, DW_AT_TI_symbol_name("_toggle_piu")
	.dwattr $C$DW$626, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr $C$DW$626, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$627	.dwtag  DW_TAG_member
	.dwattr $C$DW$627, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$627, DW_AT_name("piuCtl")
	.dwattr $C$DW$627, DW_AT_TI_symbol_name("_piuCtl")
	.dwattr $C$DW$627, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr $C$DW$627, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$628	.dwtag  DW_TAG_member
	.dwattr $C$DW$628, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$628, DW_AT_name("toggle_getflt")
	.dwattr $C$DW$628, DW_AT_TI_symbol_name("_toggle_getflt")
	.dwattr $C$DW$628, DW_AT_data_member_location[DW_OP_plus_uconst 0x50]
	.dwattr $C$DW$628, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$629	.dwtag  DW_TAG_member
	.dwattr $C$DW$629, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$629, DW_AT_name("getflt")
	.dwattr $C$DW$629, DW_AT_TI_symbol_name("_getflt")
	.dwattr $C$DW$629, DW_AT_data_member_location[DW_OP_plus_uconst 0x51]
	.dwattr $C$DW$629, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$630	.dwtag  DW_TAG_member
	.dwattr $C$DW$630, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$630, DW_AT_name("profile_enable")
	.dwattr $C$DW$630, DW_AT_TI_symbol_name("_profile_enable")
	.dwattr $C$DW$630, DW_AT_data_member_location[DW_OP_plus_uconst 0x55]
	.dwattr $C$DW$630, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$631	.dwtag  DW_TAG_member
	.dwattr $C$DW$631, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$631, DW_AT_name("toggle_freerun")
	.dwattr $C$DW$631, DW_AT_TI_symbol_name("_toggle_freerun")
	.dwattr $C$DW$631, DW_AT_data_member_location[DW_OP_plus_uconst 0x56]
	.dwattr $C$DW$631, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$632	.dwtag  DW_TAG_member
	.dwattr $C$DW$632, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$632, DW_AT_name("freerun_frame_cnt")
	.dwattr $C$DW$632, DW_AT_TI_symbol_name("_freerun_frame_cnt")
	.dwattr $C$DW$632, DW_AT_data_member_location[DW_OP_plus_uconst 0x57]
	.dwattr $C$DW$632, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$633	.dwtag  DW_TAG_member
	.dwattr $C$DW$633, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$633, DW_AT_name("Fs")
	.dwattr $C$DW$633, DW_AT_TI_symbol_name("_Fs")
	.dwattr $C$DW$633, DW_AT_data_member_location[DW_OP_plus_uconst 0x58]
	.dwattr $C$DW$633, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$634	.dwtag  DW_TAG_member
	.dwattr $C$DW$634, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$634, DW_AT_name("error_id")
	.dwattr $C$DW$634, DW_AT_TI_symbol_name("_error_id")
	.dwattr $C$DW$634, DW_AT_data_member_location[DW_OP_plus_uconst 0x59]
	.dwattr $C$DW$634, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$635	.dwtag  DW_TAG_member
	.dwattr $C$DW$635, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$635, DW_AT_name("sig_src")
	.dwattr $C$DW$635, DW_AT_TI_symbol_name("_sig_src")
	.dwattr $C$DW$635, DW_AT_data_member_location[DW_OP_plus_uconst 0x5a]
	.dwattr $C$DW$635, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$636	.dwtag  DW_TAG_member
	.dwattr $C$DW$636, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$636, DW_AT_name("save_to_file")
	.dwattr $C$DW$636, DW_AT_TI_symbol_name("_save_to_file")
	.dwattr $C$DW$636, DW_AT_data_member_location[DW_OP_plus_uconst 0x5b]
	.dwattr $C$DW$636, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$637	.dwtag  DW_TAG_member
	.dwattr $C$DW$637, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$637, DW_AT_name("num_channel")
	.dwattr $C$DW$637, DW_AT_TI_symbol_name("_num_channel")
	.dwattr $C$DW$637, DW_AT_data_member_location[DW_OP_plus_uconst 0x5c]
	.dwattr $C$DW$637, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$638	.dwtag  DW_TAG_member
	.dwattr $C$DW$638, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$638, DW_AT_name("output_chnum")
	.dwattr $C$DW$638, DW_AT_TI_symbol_name("_output_chnum")
	.dwattr $C$DW$638, DW_AT_data_member_location[DW_OP_plus_uconst 0x5d]
	.dwattr $C$DW$638, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$639	.dwtag  DW_TAG_member
	.dwattr $C$DW$639, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$639, DW_AT_name("rin")
	.dwattr $C$DW$639, DW_AT_TI_symbol_name("_rin")
	.dwattr $C$DW$639, DW_AT_data_member_location[DW_OP_plus_uconst 0x5e]
	.dwattr $C$DW$639, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$640	.dwtag  DW_TAG_member
	.dwattr $C$DW$640, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$640, DW_AT_name("sin")
	.dwattr $C$DW$640, DW_AT_TI_symbol_name("_sin")
	.dwattr $C$DW$640, DW_AT_data_member_location[DW_OP_plus_uconst 0x162]
	.dwattr $C$DW$640, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$641	.dwtag  DW_TAG_member
	.dwattr $C$DW$641, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$641, DW_AT_name("rout")
	.dwattr $C$DW$641, DW_AT_TI_symbol_name("_rout")
	.dwattr $C$DW$641, DW_AT_data_member_location[DW_OP_plus_uconst 0x266]
	.dwattr $C$DW$641, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$642	.dwtag  DW_TAG_member
	.dwattr $C$DW$642, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$642, DW_AT_name("sout")
	.dwattr $C$DW$642, DW_AT_TI_symbol_name("_sout")
	.dwattr $C$DW$642, DW_AT_data_member_location[DW_OP_plus_uconst 0x36a]
	.dwattr $C$DW$642, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$116

$C$DW$T$251	.dwtag  DW_TAG_typedef, DW_AT_name("siuSetup_t")
	.dwattr $C$DW$T$251, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$T$251, DW_AT_language(DW_LANG_C)
$C$DW$643	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$643, DW_AT_type(*$C$DW$T$251)
$C$DW$T$252	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$252, DW_AT_type(*$C$DW$643)
$C$DW$T$253	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$253, DW_AT_type(*$C$DW$T$252)
	.dwattr $C$DW$T$253, DW_AT_address_class(0x17)
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

$C$DW$644	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$644, DW_AT_location[DW_OP_reg0]
$C$DW$645	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$645, DW_AT_location[DW_OP_reg1]
$C$DW$646	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$646, DW_AT_location[DW_OP_reg2]
$C$DW$647	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$647, DW_AT_location[DW_OP_reg3]
$C$DW$648	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$648, DW_AT_location[DW_OP_reg4]
$C$DW$649	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$649, DW_AT_location[DW_OP_reg5]
$C$DW$650	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$650, DW_AT_location[DW_OP_reg6]
$C$DW$651	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$651, DW_AT_location[DW_OP_reg7]
$C$DW$652	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$652, DW_AT_location[DW_OP_reg8]
$C$DW$653	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$653, DW_AT_location[DW_OP_reg9]
$C$DW$654	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$654, DW_AT_location[DW_OP_reg10]
$C$DW$655	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$655, DW_AT_location[DW_OP_reg11]
$C$DW$656	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$656, DW_AT_location[DW_OP_reg12]
$C$DW$657	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$657, DW_AT_location[DW_OP_reg13]
$C$DW$658	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$658, DW_AT_location[DW_OP_reg14]
$C$DW$659	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$659, DW_AT_location[DW_OP_reg15]
$C$DW$660	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$660, DW_AT_location[DW_OP_reg16]
$C$DW$661	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$661, DW_AT_location[DW_OP_reg17]
$C$DW$662	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$662, DW_AT_location[DW_OP_reg18]
$C$DW$663	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$663, DW_AT_location[DW_OP_reg19]
$C$DW$664	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$664, DW_AT_location[DW_OP_reg20]
$C$DW$665	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$665, DW_AT_location[DW_OP_reg21]
$C$DW$666	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$666, DW_AT_location[DW_OP_reg22]
$C$DW$667	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$667, DW_AT_location[DW_OP_reg23]
$C$DW$668	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$668, DW_AT_location[DW_OP_reg24]
$C$DW$669	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$669, DW_AT_location[DW_OP_reg25]
$C$DW$670	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$670, DW_AT_location[DW_OP_reg26]
$C$DW$671	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$671, DW_AT_location[DW_OP_reg27]
$C$DW$672	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$672, DW_AT_location[DW_OP_reg28]
$C$DW$673	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$673, DW_AT_location[DW_OP_reg29]
$C$DW$674	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$674, DW_AT_location[DW_OP_reg30]
$C$DW$675	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$675, DW_AT_location[DW_OP_reg31]
$C$DW$676	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$676, DW_AT_location[DW_OP_regx 0x20]
$C$DW$677	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$677, DW_AT_location[DW_OP_regx 0x21]
$C$DW$678	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$678, DW_AT_location[DW_OP_regx 0x22]
$C$DW$679	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$679, DW_AT_location[DW_OP_regx 0x23]
$C$DW$680	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$680, DW_AT_location[DW_OP_regx 0x24]
$C$DW$681	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$681, DW_AT_location[DW_OP_regx 0x25]
$C$DW$682	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$682, DW_AT_location[DW_OP_regx 0x26]
$C$DW$683	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$683, DW_AT_location[DW_OP_regx 0x27]
$C$DW$684	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$684, DW_AT_location[DW_OP_regx 0x28]
$C$DW$685	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$685, DW_AT_location[DW_OP_regx 0x29]
$C$DW$686	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$686, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$687	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$687, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$688	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$688, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$689	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$689, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$690	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$690, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$691	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$691, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$692	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$692, DW_AT_location[DW_OP_regx 0x30]
$C$DW$693	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$693, DW_AT_location[DW_OP_regx 0x31]
$C$DW$694	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$694, DW_AT_location[DW_OP_regx 0x32]
$C$DW$695	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$695, DW_AT_location[DW_OP_regx 0x33]
$C$DW$696	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$696, DW_AT_location[DW_OP_regx 0x34]
$C$DW$697	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$697, DW_AT_location[DW_OP_regx 0x35]
$C$DW$698	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$698, DW_AT_location[DW_OP_regx 0x36]
$C$DW$699	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$699, DW_AT_location[DW_OP_regx 0x37]
$C$DW$700	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$700, DW_AT_location[DW_OP_regx 0x38]
$C$DW$701	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$701, DW_AT_location[DW_OP_regx 0x39]
$C$DW$702	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$702, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$703	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$703, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$704	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$704, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$705	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$705, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$706	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$706, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$707	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$707, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$708	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$708, DW_AT_location[DW_OP_regx 0x40]
$C$DW$709	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$709, DW_AT_location[DW_OP_regx 0x41]
$C$DW$710	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$710, DW_AT_location[DW_OP_regx 0x42]
$C$DW$711	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$711, DW_AT_location[DW_OP_regx 0x43]
$C$DW$712	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$712, DW_AT_location[DW_OP_regx 0x44]
$C$DW$713	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$713, DW_AT_location[DW_OP_regx 0x45]
$C$DW$714	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$714, DW_AT_location[DW_OP_regx 0x46]
$C$DW$715	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$715, DW_AT_location[DW_OP_regx 0x47]
$C$DW$716	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$716, DW_AT_location[DW_OP_regx 0x48]
$C$DW$717	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$717, DW_AT_location[DW_OP_regx 0x49]
$C$DW$718	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$718, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$719	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$719, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$720	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$720, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$721	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$721, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$722	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$722, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$723	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$723, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$724	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$724, DW_AT_location[DW_OP_regx 0x50]
$C$DW$725	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$725, DW_AT_location[DW_OP_regx 0x51]
$C$DW$726	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$726, DW_AT_location[DW_OP_regx 0x52]
$C$DW$727	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$727, DW_AT_location[DW_OP_regx 0x53]
$C$DW$728	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$728, DW_AT_location[DW_OP_regx 0x54]
$C$DW$729	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$729, DW_AT_location[DW_OP_regx 0x55]
$C$DW$730	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$730, DW_AT_location[DW_OP_regx 0x56]
$C$DW$731	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$731, DW_AT_location[DW_OP_regx 0x57]
$C$DW$732	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$732, DW_AT_location[DW_OP_regx 0x58]
$C$DW$733	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$733, DW_AT_location[DW_OP_regx 0x59]
$C$DW$734	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$734, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$735	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$735, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

