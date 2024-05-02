;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                          PC v4.4.1 *
;* Date/Time created: Fri Apr 05 08:11:10 2024                                 *
;*******************************************************************************
	.compiler_opts --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=coff --silicon_core_3_3 --symdebug:dwarf 
	.mmregs
	.cpl_on
	.arms_on
	.c54cm_off
	.asg AR6, FP
	.asg XAR6, XFP
	.asg DPH, MDP
	.model call=c55_std
	.model mem=large
	.noremark 5002  ; code respects overwrite rules
;*******************************************************************************
;* GLOBAL FILE PARAMETERS                                                      *
;*                                                                             *
;*   Architecture       : TMS320C55x                                           *
;*   Optimizing for     : Speed                                                *
;*   Memory             : Large Model (23-Bit Data Pointers)                   *
;*   Calls              : Normal Library ASM calls                             *
;*   Debug Info         : Standard TI Debug Information                        *
;*******************************************************************************

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../fuzz.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen PC v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\garci\workspace_v12\DSP_Fuzzer\Debug")
;******************************************************************************
;* CINIT RECORDS                                                              *
;******************************************************************************
	.sect	".cinit"
	.align	1
	.field  	$C$IR_1,16
	.field  	_coverage_map+0,24
	.field  	0,8
	.field	0,16			; _coverage_map[0] @ 0
$C$IR_1:	.set	1

	.sect	".cinit"
	.align	1
	.field  	$C$IR_2,16
	.field  	_crash_buffer+0,24
	.field  	0,8
	.field	0,16			; _crash_buffer[0] @ 0
$C$IR_2:	.set	1

	.sect	".cinit"
	.align	1
	.field  	1,16
	.field  	_crash_iterator+0,24
	.field  	0,8
	.field	0,16			; _crash_iterator @ 0

	.sect	".cinit"
	.align	1
	.field  	$C$IR_3,16
	.field  	_hang_buffer+0,24
	.field  	0,8
	.field	0,16			; _hang_buffer[0] @ 0
$C$IR_3:	.set	1

	.sect	".cinit"
	.align	1
	.field  	1,16
	.field  	_hang_iterator+0,24
	.field  	0,8
	.field	0,16			; _hang_iterator @ 0

	.sect	".cinit"
	.align	1
	.field  	2,16
	.field  	_sut_start_address+0,24
	.field  	0,8
	.field	0,32			; _sut_start_address @ 0

	.sect	".cinit"
	.align	1
	.field  	1,16
	.field  	_isHang+0,24
	.field  	0,8
	.field	0,16			; _isHang @ 0

	.sect	".cinit"
	.align	1
	.field  	1,16
	.field  	_isIncreasing+0,24
	.field  	0,8
	.field	0,16			; _isIncreasing @ 0

	.sect	".cinit"
	.align	1
	.field  	1,16
	.field  	_isBufferFull+0,24
	.field  	0,8
	.field	0,16			; _isBufferFull @ 0

	.sect	".cinit"
	.align	1
	.field  	2,16
	.field  	_cpuCycleCount+0,24
	.field  	0,8
	.field	0,32			; _cpuCycleCount @ 0

	.sect	".cinit"
	.align	1
	.field  	2,16
	.field  	_count+0,24
	.field  	0,8
	.field	0,32			; _count @ 0

	.sect	".cinit"
	.align	1
	.field  	1,16
	.field  	_isTest+0,24
	.field  	0,8
	.field	1,16			; _isTest @ 0


$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("rand")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_rand")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external

$C$DW$2	.dwtag  DW_TAG_subprogram, DW_AT_name("srand")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("_srand")
	.dwattr $C$DW$2, DW_AT_declaration
	.dwattr $C$DW$2, DW_AT_external
$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$11)
	.dwendtag $C$DW$2


$C$DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("printf")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_printf")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$4, DW_AT_declaration
	.dwattr $C$DW$4, DW_AT_external
$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$95)
$C$DW$6	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag $C$DW$4


$C$DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("_setjmp")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("__setjmp")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$63)
	.dwendtag $C$DW$7


$C$DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("longjmp")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_longjmp")
	.dwattr $C$DW$9, DW_AT_declaration
	.dwattr $C$DW$9, DW_AT_external
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$63)
$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$9


$C$DW$12	.dwtag  DW_TAG_subprogram, DW_AT_name("memset")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_memset")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$12, DW_AT_declaration
	.dwattr $C$DW$12, DW_AT_external
$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$3)
$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$10)
$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$58)
	.dwendtag $C$DW$12


$C$DW$16	.dwtag  DW_TAG_subprogram, DW_AT_name("clock")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_clock")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$16, DW_AT_declaration
	.dwattr $C$DW$16, DW_AT_external

$C$DW$17	.dwtag  DW_TAG_subprogram, DW_AT_name("GPT_open")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_GPT_open")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$17, DW_AT_declaration
	.dwattr $C$DW$17, DW_AT_external
$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$23)
$C$DW$19	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$44)
$C$DW$20	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$48)
	.dwendtag $C$DW$17


$C$DW$21	.dwtag  DW_TAG_subprogram, DW_AT_name("GPT_reset")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_GPT_reset")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$21, DW_AT_declaration
	.dwattr $C$DW$21, DW_AT_external
$C$DW$22	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$45)
	.dwendtag $C$DW$21


$C$DW$23	.dwtag  DW_TAG_subprogram, DW_AT_name("GPT_start")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_GPT_start")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$23, DW_AT_declaration
	.dwattr $C$DW$23, DW_AT_external
$C$DW$24	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$45)
	.dwendtag $C$DW$23


$C$DW$25	.dwtag  DW_TAG_subprogram, DW_AT_name("GPT_stop")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_GPT_stop")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$25, DW_AT_declaration
	.dwattr $C$DW$25, DW_AT_external
$C$DW$26	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$45)
	.dwendtag $C$DW$25


$C$DW$27	.dwtag  DW_TAG_subprogram, DW_AT_name("GPT_config")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_GPT_config")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$27, DW_AT_declaration
	.dwattr $C$DW$27, DW_AT_external
$C$DW$28	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$45)
$C$DW$29	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$53)
	.dwendtag $C$DW$27


$C$DW$30	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_plug")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_IRQ_plug")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$30, DW_AT_declaration
	.dwattr $C$DW$30, DW_AT_external
$C$DW$31	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$19)
$C$DW$32	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$68)
	.dwendtag $C$DW$30


$C$DW$33	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_clear")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_IRQ_clear")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$33, DW_AT_declaration
	.dwattr $C$DW$33, DW_AT_external
$C$DW$34	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$19)
	.dwendtag $C$DW$33


$C$DW$35	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_clearAll")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_IRQ_clearAll")
	.dwattr $C$DW$35, DW_AT_declaration
	.dwattr $C$DW$35, DW_AT_external

$C$DW$36	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_disableAll")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_IRQ_disableAll")
	.dwattr $C$DW$36, DW_AT_declaration
	.dwattr $C$DW$36, DW_AT_external

$C$DW$37	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_enable")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_IRQ_enable")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$37, DW_AT_declaration
	.dwattr $C$DW$37, DW_AT_external
$C$DW$38	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$19)
	.dwendtag $C$DW$37


$C$DW$39	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_setVecs")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_IRQ_setVecs")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$39, DW_AT_declaration
	.dwattr $C$DW$39, DW_AT_external
$C$DW$40	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$84)
	.dwendtag $C$DW$39


$C$DW$41	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_globalDisable")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_IRQ_globalDisable")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$41, DW_AT_declaration
	.dwattr $C$DW$41, DW_AT_external

$C$DW$42	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_globalEnable")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_IRQ_globalEnable")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$42, DW_AT_declaration
	.dwattr $C$DW$42, DW_AT_external

$C$DW$43	.dwtag  DW_TAG_subprogram, DW_AT_name("VECSTART")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_VECSTART")
	.dwattr $C$DW$43, DW_AT_declaration
	.dwattr $C$DW$43, DW_AT_external

$C$DW$44	.dwtag  DW_TAG_subprogram, DW_AT_name("intial_fuzz")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_intial_fuzz")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$44, DW_AT_declaration
	.dwattr $C$DW$44, DW_AT_external
$C$DW$45	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$40)
$C$DW$46	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$104)
	.dwendtag $C$DW$44

	.global	_seed_corpus
	.bss	_seed_corpus,20,0,0
$C$DW$47	.dwtag  DW_TAG_variable, DW_AT_name("seed_corpus")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_seed_corpus")
	.dwattr $C$DW$47, DW_AT_location[DW_OP_addr _seed_corpus]
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$139)
	.dwattr $C$DW$47, DW_AT_external
	.global	_coverage_map
	.bss	_coverage_map,16384,0,0
$C$DW$48	.dwtag  DW_TAG_variable, DW_AT_name("coverage_map")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_coverage_map")
	.dwattr $C$DW$48, DW_AT_location[DW_OP_addr _coverage_map]
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$48, DW_AT_external
	.global	_crash_buffer
	.bss	_crash_buffer,50,0,0
$C$DW$49	.dwtag  DW_TAG_variable, DW_AT_name("crash_buffer")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_crash_buffer")
	.dwattr $C$DW$49, DW_AT_location[DW_OP_addr _crash_buffer]
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$49, DW_AT_external
	.global	_crash_iterator
	.bss	_crash_iterator,1,0,0
$C$DW$50	.dwtag  DW_TAG_variable, DW_AT_name("crash_iterator")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_crash_iterator")
	.dwattr $C$DW$50, DW_AT_location[DW_OP_addr _crash_iterator]
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$50, DW_AT_external
	.global	_hang_buffer
	.bss	_hang_buffer,50,0,0
$C$DW$51	.dwtag  DW_TAG_variable, DW_AT_name("hang_buffer")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_hang_buffer")
	.dwattr $C$DW$51, DW_AT_location[DW_OP_addr _hang_buffer]
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$51, DW_AT_external
	.global	_hang_iterator
	.bss	_hang_iterator,1,0,0
$C$DW$52	.dwtag  DW_TAG_variable, DW_AT_name("hang_iterator")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_hang_iterator")
	.dwattr $C$DW$52, DW_AT_location[DW_OP_addr _hang_iterator]
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$52, DW_AT_external
	.global	_sut_start_address
	.bss	_sut_start_address,2,0,2
$C$DW$53	.dwtag  DW_TAG_variable, DW_AT_name("sut_start_address")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_sut_start_address")
	.dwattr $C$DW$53, DW_AT_location[DW_OP_addr _sut_start_address]
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$53, DW_AT_external
	.global	_isHang
	.bss	_isHang,1,0,0
$C$DW$54	.dwtag  DW_TAG_variable, DW_AT_name("isHang")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_isHang")
	.dwattr $C$DW$54, DW_AT_location[DW_OP_addr _isHang]
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$54, DW_AT_external
	.global	_isIncreasing
	.bss	_isIncreasing,1,0,0
$C$DW$55	.dwtag  DW_TAG_variable, DW_AT_name("isIncreasing")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_isIncreasing")
	.dwattr $C$DW$55, DW_AT_location[DW_OP_addr _isIncreasing]
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$55, DW_AT_external
	.global	_isBufferFull
	.bss	_isBufferFull,1,0,0
$C$DW$56	.dwtag  DW_TAG_variable, DW_AT_name("isBufferFull")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_isBufferFull")
	.dwattr $C$DW$56, DW_AT_location[DW_OP_addr _isBufferFull]
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$56, DW_AT_external
	.global	_saved_context
	.bss	_saved_context,16,0,2
$C$DW$57	.dwtag  DW_TAG_variable, DW_AT_name("saved_context")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_saved_context")
	.dwattr $C$DW$57, DW_AT_location[DW_OP_addr _saved_context]
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$57, DW_AT_external
	.global	_cpuCycleCount
	.bss	_cpuCycleCount,2,0,2
$C$DW$58	.dwtag  DW_TAG_variable, DW_AT_name("cpuCycleCount")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_cpuCycleCount")
	.dwattr $C$DW$58, DW_AT_location[DW_OP_addr _cpuCycleCount]
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$58, DW_AT_external
	.global	_sysClk
	.bss	_sysClk,2,0,2
$C$DW$59	.dwtag  DW_TAG_variable, DW_AT_name("sysClk")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_sysClk")
	.dwattr $C$DW$59, DW_AT_location[DW_OP_addr _sysClk]
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$59, DW_AT_external
	.global	_count
	.bss	_count,2,0,2
$C$DW$60	.dwtag  DW_TAG_variable, DW_AT_name("count")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_count")
	.dwattr $C$DW$60, DW_AT_location[DW_OP_addr _count]
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$60, DW_AT_external
	.global	_isTest
	.bss	_isTest,1,0,0
$C$DW$61	.dwtag  DW_TAG_variable, DW_AT_name("isTest")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_isTest")
	.dwattr $C$DW$61, DW_AT_location[DW_OP_addr _isTest]
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$61, DW_AT_external
;	C:\ti\ccs1250\ccs\tools\compiler\c5500_4.4.1\bin\acp55.exe -@C:\\Users\\garci\\AppData\\Local\\Temp\\1081612 
	.sect	".text:retain"
	.global	_fuzzer_isr

$C$DW$62	.dwtag  DW_TAG_subprogram, DW_AT_name("fuzzer_isr")
	.dwattr $C$DW$62, DW_AT_low_pc(_fuzzer_isr)
	.dwattr $C$DW$62, DW_AT_high_pc(0x00)
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_fuzzer_isr")
	.dwattr $C$DW$62, DW_AT_external
	.dwattr $C$DW$62, DW_AT_TI_begin_file("../fuzz.c")
	.dwattr $C$DW$62, DW_AT_TI_begin_line(0x39)
	.dwattr $C$DW$62, DW_AT_TI_begin_column(0x10)
	.dwattr $C$DW$62, DW_AT_TI_interrupt
	.dwattr $C$DW$62, DW_AT_TI_max_frame_size(0x2f)
	.dwpsn	file "../fuzz.c",line 63,column 1,is_stmt,address _fuzzer_isr

	.dwfde $C$DW$CIE, _fuzzer_isr
;*******************************************************************************
;* INTERRUPT NAME: fuzzer_isr                                                  *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,AC2,AC2,AC3,AC3,T0,T1,AR0,XAR0,AR1,  *
;*                        AR2,AR3,AR4,SP,BKC,BK03,BK47,ST1,ST2,ST3,BRC0,RSA0,  *
;*                        REA0,BRS1,BRC1,RSA1,REA1,CSR,RPTC,CDP,TRN0,TRN1,     *
;*                        BSA01,BSA23,BSA45,BSA67,BSAC,CARRY,M40,SATA,SATD,RDM,*
;*                        FRCT,SMUL                                            *
;*   Save On Entry Regs : AC0,AC0,AC1,AC1,AC2,AC2,AC3,AC3,T0,T1,AR0,AR1,AR2,   *
;*                        AR3,AR4,BKC,BK03,BK47,BRC0,RSA0,REA0,BRS1,BRC1,RSA1, *
;*                        REA1,CSR,RPTC,CDP,TRN0,TRN1,BSA01,BSA23,BSA45,BSA67, *
;*                        BSAC                                                 *
;*******************************************************************************
_fuzzer_isr:
	.dwcfi	cfa_offset, 3
	.dwcfi	save_reg_to_mem, 91, -3
        AND #0xf91f, mmap(ST1_55)
        OR #0x4100, mmap(ST1_55)
        AND #0xfa00, mmap(ST2_55)
        OR #0x8000, mmap(ST2_55)
        PSH mmap(ST3_55)
	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 42, -4
        PSH dbl(AC0)
	.dwcfi	cfa_offset, 5
	.dwcfi	save_reg_to_mem, 0, -5
	.dwcfi	cfa_offset, 6
	.dwcfi	save_reg_to_mem, 1, -6
        PSH mmap(AC0G)
	.dwcfi	cfa_offset, 7
	.dwcfi	save_reg_to_mem, 2, -7
        PSH dbl(AC1)
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 3, -8
	.dwcfi	cfa_offset, 9
	.dwcfi	save_reg_to_mem, 4, -9
        PSH mmap(AC1G)
	.dwcfi	cfa_offset, 10
	.dwcfi	save_reg_to_mem, 5, -10
        PSH dbl(AC2)
	.dwcfi	cfa_offset, 11
	.dwcfi	save_reg_to_mem, 6, -11
	.dwcfi	cfa_offset, 12
	.dwcfi	save_reg_to_mem, 7, -12
        PSH mmap(AC2G)
	.dwcfi	cfa_offset, 13
	.dwcfi	save_reg_to_mem, 8, -13
        PSH dbl(AC3)
	.dwcfi	cfa_offset, 14
	.dwcfi	save_reg_to_mem, 9, -14
	.dwcfi	cfa_offset, 15
	.dwcfi	save_reg_to_mem, 10, -15
        PSH mmap(AC3G)
	.dwcfi	cfa_offset, 16
	.dwcfi	save_reg_to_mem, 11, -16
        PSH T0
	.dwcfi	cfa_offset, 17
	.dwcfi	save_reg_to_mem, 12, -17
        PSH T1
	.dwcfi	cfa_offset, 18
	.dwcfi	save_reg_to_mem, 13, -18
        PSHBOTH XAR0
	.dwcfi	cfa_offset, 19
	.dwcfi	save_reg_to_mem, 16, -19
        PSHBOTH XAR1
	.dwcfi	cfa_offset, 20
	.dwcfi	save_reg_to_mem, 18, -20
        PSHBOTH XAR2
	.dwcfi	cfa_offset, 21
	.dwcfi	save_reg_to_mem, 20, -21
        PSHBOTH XAR3
	.dwcfi	cfa_offset, 22
	.dwcfi	save_reg_to_mem, 22, -22
        PSHBOTH XAR4
	.dwcfi	cfa_offset, 23
	.dwcfi	save_reg_to_mem, 24, -23
        PSH mmap(BKC)
	.dwcfi	cfa_offset, 24
	.dwcfi	save_reg_to_mem, 37, -24
        PSH mmap(BK03)
	.dwcfi	cfa_offset, 25
	.dwcfi	save_reg_to_mem, 38, -25
        PSH mmap(BK47)
	.dwcfi	cfa_offset, 26
	.dwcfi	save_reg_to_mem, 39, -26
        PSH mmap(BRC0)
	.dwcfi	cfa_offset, 27
	.dwcfi	save_reg_to_mem, 47, -27
        PSH mmap(RSA0L)
	.dwcfi	cfa_offset, 28
	.dwcfi	save_reg_to_mem, 48, -28
        PSH mmap(RSA0H)
	.dwcfi	cfa_offset, 29
	.dwcfi	save_reg_to_mem, 49, -29
        PSH mmap(REA0L)
	.dwcfi	cfa_offset, 30
	.dwcfi	save_reg_to_mem, 50, -30
        PSH mmap(REA0H)
	.dwcfi	cfa_offset, 31
	.dwcfi	save_reg_to_mem, 51, -31
        PSH mmap(BRS1)
	.dwcfi	cfa_offset, 32
	.dwcfi	save_reg_to_mem, 52, -32
        PSH mmap(BRC1)
	.dwcfi	cfa_offset, 33
	.dwcfi	save_reg_to_mem, 53, -33
        PSH mmap(RSA1L)
	.dwcfi	cfa_offset, 34
	.dwcfi	save_reg_to_mem, 54, -34
        PSH mmap(RSA1H)
	.dwcfi	cfa_offset, 35
	.dwcfi	save_reg_to_mem, 55, -35
        PSH mmap(REA1L)
	.dwcfi	cfa_offset, 36
	.dwcfi	save_reg_to_mem, 56, -36
        PSH mmap(REA1H)
	.dwcfi	cfa_offset, 37
	.dwcfi	save_reg_to_mem, 57, -37
        PSH mmap(CSR)
	.dwcfi	cfa_offset, 38
	.dwcfi	save_reg_to_mem, 58, -38
        PSH mmap(RPTC)
	.dwcfi	cfa_offset, 39
	.dwcfi	save_reg_to_mem, 59, -39
        PSHBOTH XCDP
	.dwcfi	cfa_offset, 40
	.dwcfi	save_reg_to_mem, 60, -40
        PSH mmap(TRN0)
	.dwcfi	cfa_offset, 41
	.dwcfi	save_reg_to_mem, 62, -41
        PSH mmap(TRN1)
	.dwcfi	cfa_offset, 42
	.dwcfi	save_reg_to_mem, 63, -42
        PSH mmap(BSA01)
	.dwcfi	cfa_offset, 43
	.dwcfi	save_reg_to_mem, 64, -43
        PSH mmap(BSA23)
	.dwcfi	cfa_offset, 44
	.dwcfi	save_reg_to_mem, 65, -44
        PSH mmap(BSA45)
	.dwcfi	cfa_offset, 45
	.dwcfi	save_reg_to_mem, 66, -45
        PSH mmap(BSA67)
	.dwcfi	cfa_offset, 46
	.dwcfi	save_reg_to_mem, 67, -46
        PSH mmap(BSAC)
	.dwcfi	cfa_offset, 47
	.dwcfi	save_reg_to_mem, 68, -47
        AMAR *SP(#0), XAR1
        AND #0xfffe, mmap(SP)
        PSH AR1
        AADD #-1, SP
	.dwcfi	cfa_offset, 47
	.dwpsn	file "../fuzz.c",line 64,column 5,is_stmt
        BCLR ST3_SATA
        BSET ST3_SMUL
$C$DW$63	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$63, DW_AT_low_pc(0x00)
	.dwattr $C$DW$63, DW_AT_name("_IRQ_clear")
	.dwattr $C$DW$63, DW_AT_TI_call

        CALL #_IRQ_clear ; |64| 
||      MOV #4, T0

                                        ; call occurs [#_IRQ_clear] ; |64| 
	.dwpsn	file "../fuzz.c",line 65,column 5,is_stmt
        MOV #1, *port(#7188) ; |65| 
	.dwpsn	file "../fuzz.c",line 66,column 5,is_stmt
        MOV dbl(*(#_count)), AC0 ; |66| 
        ADD #1, AC0 ; |66| 
        MOV AC0, dbl(*(#_count)) ; |66| 
        NOP
        NOP
	.dwpsn	file "../fuzz.c",line 67,column 5,is_stmt
        MOV #2000, AC1 ; |67| 
        MOV dbl(*(#_count)), AC0 ; |67| 
$C$DW$64	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$64, DW_AT_low_pc(0x00)
	.dwattr $C$DW$64, DW_AT_name("__remul")
	.dwattr $C$DW$64, DW_AT_TI_call
        CALL #__remul ; |67| 
                                        ; call occurs [#__remul] ; |67| 
        BCC $C$L1,AC0 != #0 ; |67| 
                                        ; branchcc occurs ; |67| 
	.dwpsn	file "../fuzz.c",line 68,column 13,is_stmt
        MOV #1, *(#_isHang) ; |68| 
	.dwpsn	file "../fuzz.c",line 69,column 13,is_stmt
        MOV #0, AC0 ; |69| 
        MOV AC0, dbl(*(#_count)) ; |69| 
	.dwpsn	file "../fuzz.c",line 70,column 13,is_stmt
        AMOV #_saved_context, XAR0 ; |70| 
$C$DW$65	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$65, DW_AT_low_pc(0x00)
	.dwattr $C$DW$65, DW_AT_name("_longjmp")
	.dwattr $C$DW$65, DW_AT_TI_call

        CALL #_longjmp ; |70| 
||      MOV #1, T0

                                        ; call occurs [#_longjmp] ; |70| 
	.dwpsn	file "../fuzz.c",line 72,column 1,is_stmt
$C$L1:    
        AADD #1, SP
	.dwcfi	cfa_offset, 47
        POP mmap(SP)
        POP mmap(BSAC)
	.dwcfi	restore_reg, 68
	.dwcfi	cfa_offset, 46
        POP mmap(BSA67)
	.dwcfi	restore_reg, 67
	.dwcfi	cfa_offset, 45
        POP mmap(BSA45)
	.dwcfi	restore_reg, 66
	.dwcfi	cfa_offset, 44
        POP mmap(BSA23)
	.dwcfi	restore_reg, 65
	.dwcfi	cfa_offset, 43
        POP mmap(BSA01)
	.dwcfi	restore_reg, 64
	.dwcfi	cfa_offset, 42
        POP mmap(TRN1)
	.dwcfi	restore_reg, 63
	.dwcfi	cfa_offset, 41
        POP mmap(TRN0)
	.dwcfi	restore_reg, 62
	.dwcfi	cfa_offset, 40
        POPBOTH XCDP
	.dwcfi	restore_reg, 60
	.dwcfi	cfa_offset, 39
        POP mmap(RPTC)
	.dwcfi	restore_reg, 59
	.dwcfi	cfa_offset, 38
        POP mmap(CSR)
	.dwcfi	restore_reg, 58
	.dwcfi	cfa_offset, 37
        POP mmap(REA1H)
	.dwcfi	restore_reg, 57
	.dwcfi	cfa_offset, 36
        POP mmap(REA1L)
	.dwcfi	restore_reg, 56
	.dwcfi	cfa_offset, 35
        POP mmap(RSA1H)
	.dwcfi	restore_reg, 55
	.dwcfi	cfa_offset, 34
        POP mmap(RSA1L)
	.dwcfi	restore_reg, 54
	.dwcfi	cfa_offset, 33
        POP mmap(BRC1)
	.dwcfi	restore_reg, 53
	.dwcfi	cfa_offset, 32
        POP mmap(BRS1)
	.dwcfi	restore_reg, 52
	.dwcfi	cfa_offset, 31
        POP mmap(REA0H)
	.dwcfi	restore_reg, 51
	.dwcfi	cfa_offset, 30
        POP mmap(REA0L)
	.dwcfi	restore_reg, 50
	.dwcfi	cfa_offset, 29
        POP mmap(RSA0H)
	.dwcfi	restore_reg, 49
	.dwcfi	cfa_offset, 28
        POP mmap(RSA0L)
	.dwcfi	restore_reg, 48
	.dwcfi	cfa_offset, 27
        POP mmap(BRC0)
	.dwcfi	restore_reg, 47
	.dwcfi	cfa_offset, 26
        POP mmap(BK47)
	.dwcfi	restore_reg, 39
	.dwcfi	cfa_offset, 25
        POP mmap(BK03)
	.dwcfi	restore_reg, 38
	.dwcfi	cfa_offset, 24
        POP mmap(BKC)
	.dwcfi	restore_reg, 37
	.dwcfi	cfa_offset, 23
        POPBOTH XAR4
	.dwcfi	restore_reg, 24
	.dwcfi	cfa_offset, 22
        POPBOTH XAR3
	.dwcfi	restore_reg, 22
	.dwcfi	cfa_offset, 21
        POPBOTH XAR2
	.dwcfi	restore_reg, 20
	.dwcfi	cfa_offset, 20
        POPBOTH XAR1
	.dwcfi	restore_reg, 18
	.dwcfi	cfa_offset, 19
        POPBOTH XAR0
	.dwcfi	restore_reg, 16
	.dwcfi	cfa_offset, 18
        POP T1
	.dwcfi	restore_reg, 13
	.dwcfi	cfa_offset, 17
        POP T0
	.dwcfi	restore_reg, 12
	.dwcfi	cfa_offset, 16
        POP mmap(AC3G)
	.dwcfi	restore_reg, 11
	.dwcfi	cfa_offset, 15
	.dwcfi	restore_reg, 10
	.dwcfi	cfa_offset, 14
        POP dbl(AC3)
	.dwcfi	restore_reg, 9
	.dwcfi	cfa_offset, 13
        POP mmap(AC2G)
	.dwcfi	restore_reg, 8
	.dwcfi	cfa_offset, 12
	.dwcfi	restore_reg, 7
	.dwcfi	cfa_offset, 11
        POP dbl(AC2)
	.dwcfi	restore_reg, 6
	.dwcfi	cfa_offset, 10
        POP mmap(AC1G)
	.dwcfi	restore_reg, 5
	.dwcfi	cfa_offset, 9
	.dwcfi	restore_reg, 4
	.dwcfi	cfa_offset, 8
        POP dbl(AC1)
	.dwcfi	restore_reg, 3
	.dwcfi	cfa_offset, 7
        POP mmap(AC0G)
	.dwcfi	restore_reg, 2
	.dwcfi	cfa_offset, 6
	.dwcfi	restore_reg, 1
	.dwcfi	cfa_offset, 5
        POP dbl(AC0)
	.dwcfi	restore_reg, 0
	.dwcfi	cfa_offset, 4
        POP mmap(ST3_55)
	.dwcfi	restore_reg, 43
	.dwcfi	cfa_offset, 3
$C$DW$66	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$66, DW_AT_low_pc(0x00)
	.dwattr $C$DW$66, DW_AT_TI_return
        RETI
                                        ; return occurs
	.dwattr $C$DW$62, DW_AT_TI_end_file("../fuzz.c")
	.dwattr $C$DW$62, DW_AT_TI_end_line(0x48)
	.dwattr $C$DW$62, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$62

	.sect	".text"
	.global	_start_timer

$C$DW$67	.dwtag  DW_TAG_subprogram, DW_AT_name("start_timer")
	.dwattr $C$DW$67, DW_AT_low_pc(_start_timer)
	.dwattr $C$DW$67, DW_AT_high_pc(0x00)
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_start_timer")
	.dwattr $C$DW$67, DW_AT_external
	.dwattr $C$DW$67, DW_AT_TI_begin_file("../fuzz.c")
	.dwattr $C$DW$67, DW_AT_TI_begin_line(0x4c)
	.dwattr $C$DW$67, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$67, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "../fuzz.c",line 76,column 44,is_stmt,address _start_timer

	.dwfde $C$DW$CIE, _start_timer
$C$DW$68	.dwtag  DW_TAG_formal_parameter, DW_AT_name("timer_handle")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_timer_handle")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$68, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: start_timer                                                  *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,CARRY,M40,  *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (11 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_start_timer:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-11, SP
	.dwcfi	cfa_offset, 12
$C$DW$69	.dwtag  DW_TAG_variable, DW_AT_name("timer_handle")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_timer_handle")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$69, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$70	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$70, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$71	.dwtag  DW_TAG_variable, DW_AT_name("hwConfig")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_hwConfig")
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$71, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$72	.dwtag  DW_TAG_variable, DW_AT_name("gptObj")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_gptObj")
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$72, DW_AT_location[DW_OP_bregx 0x24 8]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "../fuzz.c",line 85,column 5,is_stmt
        AMAR *SP(#2), XAR1
        AMAR *SP(#8), XAR0
$C$DW$73	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$73, DW_AT_low_pc(0x00)
	.dwattr $C$DW$73, DW_AT_name("_GPT_open")
	.dwattr $C$DW$73, DW_AT_TI_call

        CALL #_GPT_open ; |85| 
||      MOV #0, T0

                                        ; call occurs [#_GPT_open] ; |85| 
        MOV dbl(*SP(#0)), XAR3
        MOV XAR0, dbl(*AR3)
	.dwpsn	file "../fuzz.c",line 86,column 5,is_stmt
	.dwpsn	file "../fuzz.c",line 97,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3), XAR0
$C$DW$74	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$74, DW_AT_low_pc(0x00)
	.dwattr $C$DW$74, DW_AT_name("_GPT_reset")
	.dwattr $C$DW$74, DW_AT_TI_call
        CALL #_GPT_reset ; |97| 
                                        ; call occurs [#_GPT_reset] ; |97| 
        MOV T0, *SP(#2) ; |97| 
	.dwpsn	file "../fuzz.c",line 98,column 5,is_stmt
	.dwpsn	file "../fuzz.c",line 110,column 5,is_stmt
$C$DW$75	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$75, DW_AT_low_pc(0x00)
	.dwattr $C$DW$75, DW_AT_name("_IRQ_clearAll")
	.dwattr $C$DW$75, DW_AT_TI_call
        CALL #_IRQ_clearAll ; |110| 
                                        ; call occurs [#_IRQ_clearAll] ; |110| 
	.dwpsn	file "../fuzz.c",line 112,column 5,is_stmt
$C$DW$76	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$76, DW_AT_low_pc(0x00)
	.dwattr $C$DW$76, DW_AT_name("_IRQ_disableAll")
	.dwattr $C$DW$76, DW_AT_TI_call
        CALL #_IRQ_disableAll ; |112| 
                                        ; call occurs [#_IRQ_disableAll] ; |112| 
	.dwpsn	file "../fuzz.c",line 114,column 5,is_stmt
        MOV #(_VECSTART >> 16) << #16, AC0 ; |114| 
        OR #(_VECSTART & 0xffff), AC0, AC0 ; |114| 
$C$DW$77	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$77, DW_AT_low_pc(0x00)
	.dwattr $C$DW$77, DW_AT_name("_IRQ_setVecs")
	.dwattr $C$DW$77, DW_AT_TI_call
        CALL #_IRQ_setVecs ; |114| 
                                        ; call occurs [#_IRQ_setVecs] ; |114| 
	.dwpsn	file "../fuzz.c",line 115,column 5,is_stmt
        MOV #(_fuzzer_isr >> 16) << #16, AC0 ; |115| 
        OR #(_fuzzer_isr & 0xffff), AC0, AC0 ; |115| 
$C$DW$78	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$78, DW_AT_low_pc(0x00)
	.dwattr $C$DW$78, DW_AT_name("_IRQ_plug")
	.dwattr $C$DW$78, DW_AT_TI_call

        CALL #_IRQ_plug ; |115| 
||      MOV #4, T0

                                        ; call occurs [#_IRQ_plug] ; |115| 
	.dwpsn	file "../fuzz.c",line 116,column 5,is_stmt
$C$DW$79	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$79, DW_AT_low_pc(0x00)
	.dwattr $C$DW$79, DW_AT_name("_IRQ_enable")
	.dwattr $C$DW$79, DW_AT_TI_call

        CALL #_IRQ_enable ; |116| 
||      MOV #4, T0

                                        ; call occurs [#_IRQ_enable] ; |116| 
	.dwpsn	file "../fuzz.c",line 118,column 5,is_stmt
        MOV #1, *SP(#3) ; |118| 
	.dwpsn	file "../fuzz.c",line 119,column 5,is_stmt
        MOV #1, *SP(#5) ; |119| 
	.dwpsn	file "../fuzz.c",line 120,column 5,is_stmt
        MOV #1, *SP(#4) ; |120| 
	.dwpsn	file "../fuzz.c",line 121,column 5,is_stmt
        MOV dbl(*(#_sysClk)), AC0 ; |121| 
        SFTL AC0, #-2, AC0 ; |121| 
        MOV AC0, *SP(#6) ; |121| 
	.dwpsn	file "../fuzz.c",line 122,column 5,is_stmt
        MOV #0, *SP(#7) ; |122| 
	.dwpsn	file "../fuzz.c",line 124,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        AMAR *SP(#3), XAR1
        MOV dbl(*AR3), XAR0
$C$DW$80	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$80, DW_AT_low_pc(0x00)
	.dwattr $C$DW$80, DW_AT_name("_GPT_config")
	.dwattr $C$DW$80, DW_AT_TI_call
        CALL #_GPT_config ; |124| 
                                        ; call occurs [#_GPT_config] ; |124| 
        MOV T0, *SP(#2) ; |124| 
	.dwpsn	file "../fuzz.c",line 125,column 5,is_stmt
	.dwpsn	file "../fuzz.c",line 137,column 5,is_stmt
$C$DW$81	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$81, DW_AT_low_pc(0x00)
	.dwattr $C$DW$81, DW_AT_name("_IRQ_globalEnable")
	.dwattr $C$DW$81, DW_AT_TI_call
        CALL #_IRQ_globalEnable ; |137| 
                                        ; call occurs [#_IRQ_globalEnable] ; |137| 
	.dwpsn	file "../fuzz.c",line 139,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3), XAR0
$C$DW$82	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$82, DW_AT_low_pc(0x00)
	.dwattr $C$DW$82, DW_AT_name("_GPT_start")
	.dwattr $C$DW$82, DW_AT_TI_call
        CALL #_GPT_start ; |139| 
                                        ; call occurs [#_GPT_start] ; |139| 
	.dwpsn	file "../fuzz.c",line 141,column 1,is_stmt
        AADD #11, SP
	.dwcfi	cfa_offset, 1
$C$DW$83	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$83, DW_AT_low_pc(0x00)
	.dwattr $C$DW$83, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$67, DW_AT_TI_end_file("../fuzz.c")
	.dwattr $C$DW$67, DW_AT_TI_end_line(0x8d)
	.dwattr $C$DW$67, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$67

	.sect	".text"
	.global	_stop_timer

$C$DW$84	.dwtag  DW_TAG_subprogram, DW_AT_name("stop_timer")
	.dwattr $C$DW$84, DW_AT_low_pc(_stop_timer)
	.dwattr $C$DW$84, DW_AT_high_pc(0x00)
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_stop_timer")
	.dwattr $C$DW$84, DW_AT_external
	.dwattr $C$DW$84, DW_AT_TI_begin_file("../fuzz.c")
	.dwattr $C$DW$84, DW_AT_TI_begin_line(0x8f)
	.dwattr $C$DW$84, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$84, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "../fuzz.c",line 143,column 43,is_stmt,address _stop_timer

	.dwfde $C$DW$CIE, _stop_timer
$C$DW$85	.dwtag  DW_TAG_formal_parameter, DW_AT_name("timer_handle")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_timer_handle")
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$85, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: stop_timer                                                   *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR3,XAR3,SP,M40,SATA,SATD,RDM,FRCT,SMUL  *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_stop_timer:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$86	.dwtag  DW_TAG_variable, DW_AT_name("timer_handle")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("_timer_handle")
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$86, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$87	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$87, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "../fuzz.c",line 152,column 5,is_stmt
$C$DW$88	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$88, DW_AT_low_pc(0x00)
	.dwattr $C$DW$88, DW_AT_name("_IRQ_globalDisable")
	.dwattr $C$DW$88, DW_AT_TI_call
        CALL #_IRQ_globalDisable ; |152| 
                                        ; call occurs [#_IRQ_globalDisable] ; |152| 
	.dwpsn	file "../fuzz.c",line 154,column 5,is_stmt
$C$DW$89	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$89, DW_AT_low_pc(0x00)
	.dwattr $C$DW$89, DW_AT_name("_IRQ_clearAll")
	.dwattr $C$DW$89, DW_AT_TI_call
        CALL #_IRQ_clearAll ; |154| 
                                        ; call occurs [#_IRQ_clearAll] ; |154| 
	.dwpsn	file "../fuzz.c",line 156,column 5,is_stmt
$C$DW$90	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$90, DW_AT_low_pc(0x00)
	.dwattr $C$DW$90, DW_AT_name("_IRQ_disableAll")
	.dwattr $C$DW$90, DW_AT_TI_call
        CALL #_IRQ_disableAll ; |156| 
                                        ; call occurs [#_IRQ_disableAll] ; |156| 
	.dwpsn	file "../fuzz.c",line 158,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3), XAR0
$C$DW$91	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$91, DW_AT_low_pc(0x00)
	.dwattr $C$DW$91, DW_AT_name("_GPT_stop")
	.dwattr $C$DW$91, DW_AT_TI_call
        CALL #_GPT_stop ; |158| 
                                        ; call occurs [#_GPT_stop] ; |158| 
        MOV T0, *SP(#2) ; |158| 
	.dwpsn	file "../fuzz.c",line 159,column 5,is_stmt
	.dwpsn	file "../fuzz.c",line 171,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3), XAR0
$C$DW$92	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$92, DW_AT_low_pc(0x00)
	.dwattr $C$DW$92, DW_AT_name("_GPT_reset")
	.dwattr $C$DW$92, DW_AT_TI_call
        CALL #_GPT_reset ; |171| 
                                        ; call occurs [#_GPT_reset] ; |171| 
        MOV T0, *SP(#2) ; |171| 
	.dwpsn	file "../fuzz.c",line 173,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$93	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$93, DW_AT_low_pc(0x00)
	.dwattr $C$DW$93, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$84, DW_AT_TI_end_file("../fuzz.c")
	.dwattr $C$DW$84, DW_AT_TI_end_line(0xad)
	.dwattr $C$DW$84, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$84

	.sect	".text"
	.global	_setup

$C$DW$94	.dwtag  DW_TAG_subprogram, DW_AT_name("setup")
	.dwattr $C$DW$94, DW_AT_low_pc(_setup)
	.dwattr $C$DW$94, DW_AT_high_pc(0x00)
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("_setup")
	.dwattr $C$DW$94, DW_AT_external
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$94, DW_AT_TI_begin_file("../fuzz.c")
	.dwattr $C$DW$94, DW_AT_TI_begin_line(0xb0)
	.dwattr $C$DW$94, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$94, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "../fuzz.c",line 176,column 16,is_stmt,address _setup

	.dwfde $C$DW$CIE, _setup
;*******************************************************************************
;* FUNCTION NAME: setup                                                        *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,SP,M40,SATA,SATD,RDM,FRCT,    *
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 2 words                                              *
;*                        (2 return address/alignment)                         *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_setup:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-1, SP
	.dwcfi	cfa_offset, 2
	.dwpsn	file "../fuzz.c",line 183,column 5,is_stmt
        AMOV #_coverage_map, XAR0 ; |183| 
        MOV #16384, T1 ; |183| 
$C$DW$95	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$95, DW_AT_low_pc(0x00)
	.dwattr $C$DW$95, DW_AT_name("_memset")
	.dwattr $C$DW$95, DW_AT_TI_call

        CALL #_memset ; |183| 
||      MOV #0, T0

                                        ; call occurs [#_memset] ; |183| 
	.dwpsn	file "../fuzz.c",line 184,column 5,is_stmt
        MOV #50, T1 ; |184| 
        AMOV #_hang_buffer, XAR0 ; |184| 
$C$DW$96	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$96, DW_AT_low_pc(0x00)
	.dwattr $C$DW$96, DW_AT_name("_memset")
	.dwattr $C$DW$96, DW_AT_TI_call

        CALL #_memset ; |184| 
||      MOV #0, T0

                                        ; call occurs [#_memset] ; |184| 
	.dwpsn	file "../fuzz.c",line 185,column 5,is_stmt
        MOV #50, T1 ; |185| 
        AMOV #_crash_buffer, XAR0 ; |185| 
$C$DW$97	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$97, DW_AT_low_pc(0x00)
	.dwattr $C$DW$97, DW_AT_name("_memset")
	.dwattr $C$DW$97, DW_AT_TI_call

        CALL #_memset ; |185| 
||      MOV #0, T0

                                        ; call occurs [#_memset] ; |185| 
	.dwpsn	file "../fuzz.c",line 187,column 5,is_stmt
        MOV #(_intial_fuzz >> 16) << #16, AC0 ; |187| 
        OR #(_intial_fuzz & 0xffff), AC0, AC0 ; |187| 
        MOV AC0, dbl(*(#_sut_start_address)) ; |187| 
	.dwpsn	file "../fuzz.c",line 189,column 5,is_stmt
        MOV #(_coverage_map >> 16) << #16, AC0 ; |189| 
        OR #(_coverage_map & 0xffff), AC0, AC0 ; |189| 
        BCC $C$L2,AC0 == #0 ; |189| 
                                        ; branchcc occurs ; |189| 
        MOV #(_hang_buffer >> 16) << #16, AC0 ; |189| 
        OR #(_hang_buffer & 0xffff), AC0, AC0 ; |189| 
        BCC $C$L2,AC0 == #0 ; |189| 
                                        ; branchcc occurs ; |189| 
        MOV #(_crash_buffer >> 16) << #16, AC0 ; |189| 
        OR #(_crash_buffer & 0xffff), AC0, AC0 ; |189| 
        BCC $C$L3,AC0 != #0 ; |189| 
                                        ; branchcc occurs ; |189| 
$C$L2:    
	.dwpsn	file "../fuzz.c",line 193,column 9,is_stmt
        MOV #-1, T0
        B $C$L4   ; |193| 
                                        ; branch occurs ; |193| 
$C$L3:    
	.dwpsn	file "../fuzz.c",line 197,column 5,is_stmt
        MOV #0, T0
$C$L4:    
	.dwpsn	file "../fuzz.c",line 199,column 1,is_stmt
        AADD #1, SP
	.dwcfi	cfa_offset, 1
$C$DW$98	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$98, DW_AT_low_pc(0x00)
	.dwattr $C$DW$98, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$94, DW_AT_TI_end_file("../fuzz.c")
	.dwattr $C$DW$94, DW_AT_TI_end_line(0xc7)
	.dwattr $C$DW$94, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$94

	.sect	".text"
	.global	_mutator

$C$DW$99	.dwtag  DW_TAG_subprogram, DW_AT_name("mutator")
	.dwattr $C$DW$99, DW_AT_low_pc(_mutator)
	.dwattr $C$DW$99, DW_AT_high_pc(0x00)
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_mutator")
	.dwattr $C$DW$99, DW_AT_external
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$99, DW_AT_TI_begin_file("../fuzz.c")
	.dwattr $C$DW$99, DW_AT_TI_begin_line(0xca)
	.dwattr $C$DW$99, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$99, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "../fuzz.c",line 202,column 30,is_stmt,address _mutator

	.dwfde $C$DW$CIE, _mutator
$C$DW$100	.dwtag  DW_TAG_formal_parameter, DW_AT_name("type")
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("_type")
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$100, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: mutator                                                      *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR1,AR2,AR3,XAR3,SP,CARRY,TC1,M40,SATA,   *
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_mutator:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$101	.dwtag  DW_TAG_variable, DW_AT_name("type")
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_type")
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$101, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV T0, *SP(#0) ; |202| 
	.dwpsn	file "../fuzz.c",line 208,column 5,is_stmt
        CMP *SP(#0) == #5, TC1 ; |208| 
        BCC $C$L7,!TC1 ; |208| 
                                        ; branchcc occurs ; |208| 

$C$DW$102	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$103	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$103, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$104	.dwtag  DW_TAG_variable, DW_AT_name("rand_time")
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_rand_time")
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$104, DW_AT_location[DW_OP_bregx 0x24 2]
	.dwpsn	file "../fuzz.c",line 211,column 14,is_stmt
        MOV #0, *SP(#1) ; |211| 
	.dwpsn	file "../fuzz.c",line 211,column 21,is_stmt

        MOV *SP(#1), AR1 ; |211| 
||      MOV #10, AR2

        CMP AR1 >= AR2, TC1 ; |211| 
        BCC $C$L6,TC1 ; |211| 
                                        ; branchcc occurs ; |211| 
$C$L5:    
$C$DW$L$_mutator$3$B:
	.dwpsn	file "../fuzz.c",line 212,column 14,is_stmt
$C$DW$105	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$105, DW_AT_low_pc(0x00)
	.dwattr $C$DW$105, DW_AT_name("_clock")
	.dwattr $C$DW$105, DW_AT_TI_call
        CALL #_clock ; |212| 
                                        ; call occurs [#_clock] ; |212| 
        MOV AC0, *SP(#2) ; |212| 
	.dwpsn	file "../fuzz.c",line 213,column 14,is_stmt
$C$DW$106	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$106, DW_AT_low_pc(0x00)
	.dwattr $C$DW$106, DW_AT_name("_srand")
	.dwattr $C$DW$106, DW_AT_TI_call

        CALL #_srand ; |213| 
||      MOV AC0, T0

                                        ; call occurs [#_srand] ; |213| 
	.dwpsn	file "../fuzz.c",line 214,column 14,is_stmt
$C$DW$107	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$107, DW_AT_low_pc(0x00)
	.dwattr $C$DW$107, DW_AT_name("_rand")
	.dwattr $C$DW$107, DW_AT_TI_call
        CALL #_rand ; |214| 
                                        ; call occurs [#_rand] ; |214| 

        MOV *SP(#1), T0 ; |214| 
||      MOV T0, AR1 ; |214| 

        SFTL T0, #1 ; |214| 
        AMOV #_seed_corpus, XAR3 ; |214| 
        MOV AR1, *AR3(T0) ; |214| 
	.dwpsn	file "../fuzz.c",line 211,column 40,is_stmt
        ADD #1, *SP(#1) ; |211| 
	.dwpsn	file "../fuzz.c",line 211,column 21,is_stmt

        MOV *SP(#1), AR1 ; |211| 
||      MOV #10, AR2

        CMP AR1 < AR2, TC1 ; |211| 
        BCC $C$L5,TC1 ; |211| 
                                        ; branchcc occurs ; |211| 
$C$DW$L$_mutator$3$E:
$C$L6:    
	.dwendtag $C$DW$102

$C$L7:    
	.dwpsn	file "../fuzz.c",line 218,column 5,is_stmt
        MOV #0, T0
	.dwpsn	file "../fuzz.c",line 219,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$108	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$108, DW_AT_low_pc(0x00)
	.dwattr $C$DW$108, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$109	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$109, DW_AT_name("C:\Users\garci\workspace_v12\DSP_Fuzzer\Debug\fuzz.asm:$C$L5:1:1712319070")
	.dwattr $C$DW$109, DW_AT_TI_begin_file("../fuzz.c")
	.dwattr $C$DW$109, DW_AT_TI_begin_line(0xd3)
	.dwattr $C$DW$109, DW_AT_TI_end_line(0xd7)
$C$DW$110	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$110, DW_AT_low_pc($C$DW$L$_mutator$3$B)
	.dwattr $C$DW$110, DW_AT_high_pc($C$DW$L$_mutator$3$E)
	.dwendtag $C$DW$109

	.dwattr $C$DW$99, DW_AT_TI_end_file("../fuzz.c")
	.dwattr $C$DW$99, DW_AT_TI_end_line(0xdb)
	.dwattr $C$DW$99, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$99

	.sect	".text"
	.global	_track_coverage

$C$DW$111	.dwtag  DW_TAG_subprogram, DW_AT_name("track_coverage")
	.dwattr $C$DW$111, DW_AT_low_pc(_track_coverage)
	.dwattr $C$DW$111, DW_AT_high_pc(0x00)
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_track_coverage")
	.dwattr $C$DW$111, DW_AT_external
	.dwattr $C$DW$111, DW_AT_TI_begin_file("../fuzz.c")
	.dwattr $C$DW$111, DW_AT_TI_begin_line(0xdd)
	.dwattr $C$DW$111, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$111, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "../fuzz.c",line 227,column 1,is_stmt,address _track_coverage

	.dwfde $C$DW$CIE, _track_coverage
$C$DW$112	.dwtag  DW_TAG_formal_parameter, DW_AT_name("raw_value")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_raw_value")
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$112, DW_AT_location[DW_OP_reg0]
;*******************************************************************************
;* FUNCTION NAME: track_coverage                                               *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR1,AR3,XAR3,SP,CARRY,M40,SATA,   *
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_track_coverage:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$113	.dwtag  DW_TAG_variable, DW_AT_name("raw_value")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_raw_value")
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$113, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$114	.dwtag  DW_TAG_variable, DW_AT_name("index")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_index")
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$114, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$115	.dwtag  DW_TAG_variable, DW_AT_name("byte_index")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_byte_index")
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$115, DW_AT_location[DW_OP_bregx 0x24 3]
        MOV AC0, dbl(*SP(#0)) ; |227| 
	.dwpsn	file "../fuzz.c",line 230,column 14,is_stmt
        MOV #0, *SP(#2) ; |230| 
	.dwpsn	file "../fuzz.c",line 231,column 14,is_stmt
        MOV #0, *SP(#3) ; |231| 
	.dwpsn	file "../fuzz.c",line 233,column 5,is_stmt
        MOV dbl(*(#_sut_start_address)), AC0 ; |233| 
        SUB AC0, dbl(*SP(#0)), AC0 ; |233| 
        MOV AC0, dbl(*SP(#0)) ; |233| 
	.dwpsn	file "../fuzz.c",line 235,column 5,is_stmt
        MOV #-1 << #16, AC1 ; |235| 
        OR #0x8000, AC1, AC1 ; |235| 
        MOV dbl(*SP(#0)), AC0 ; |235| 
$C$DW$116	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$116, DW_AT_low_pc(0x00)
	.dwattr $C$DW$116, DW_AT_name("__remul")
	.dwattr $C$DW$116, DW_AT_TI_call
        CALL #__remul ; |235| 
                                        ; call occurs [#__remul] ; |235| 
        MOV AC0, *SP(#2) ; |235| 
	.dwpsn	file "../fuzz.c",line 237,column 5,is_stmt
        MOV AC0, AR1
        SFTL AR1, #-1 ; |237| 
        MOV AR1, *SP(#2) ; |237| 
	.dwpsn	file "../fuzz.c",line 239,column 5,is_stmt
        MOV dbl(*SP(#0)), AC0 ; |239| 
        SFTL AC0, #-1 ; |239| 
        AND #0x0001, AC0, AC0 ; |239| 
        MOV AC0, *SP(#3) ; |239| 
	.dwpsn	file "../fuzz.c",line 241,column 5,is_stmt
        MOV AC0, AR1
        BCC $C$L8,AR1 == #0 ; |241| 
                                        ; branchcc occurs ; |241| 
	.dwpsn	file "../fuzz.c",line 242,column 9,is_stmt
        MOV *SP(#2), T0 ; |242| 
        AMOV #_coverage_map, XAR3 ; |242| 
        OR #0x0100, *AR3(T0) ; |242| 
	.dwpsn	file "../fuzz.c",line 243,column 5,is_stmt
        B $C$L9   ; |243| 
                                        ; branch occurs ; |243| 
$C$L8:    
	.dwpsn	file "../fuzz.c",line 245,column 9,is_stmt
        MOV *SP(#2), T0 ; |245| 
        AMOV #_coverage_map, XAR3 ; |245| 
        OR #0x0001, *AR3(T0) ; |245| 
	.dwpsn	file "../fuzz.c",line 248,column 1,is_stmt
$C$L9:    
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$117	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$117, DW_AT_low_pc(0x00)
	.dwattr $C$DW$117, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$111, DW_AT_TI_end_file("../fuzz.c")
	.dwattr $C$DW$111, DW_AT_TI_end_line(0xf8)
	.dwattr $C$DW$111, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$111

	.sect	".text"
	.global	_handle_results

$C$DW$118	.dwtag  DW_TAG_subprogram, DW_AT_name("handle_results")
	.dwattr $C$DW$118, DW_AT_low_pc(_handle_results)
	.dwattr $C$DW$118, DW_AT_high_pc(0x00)
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_handle_results")
	.dwattr $C$DW$118, DW_AT_external
	.dwattr $C$DW$118, DW_AT_TI_begin_file("../fuzz.c")
	.dwattr $C$DW$118, DW_AT_TI_begin_line(0x127)
	.dwattr $C$DW$118, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$118, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "../fuzz.c",line 302,column 1,is_stmt,address _handle_results

	.dwfde $C$DW$CIE, _handle_results
$C$DW$119	.dwtag  DW_TAG_formal_parameter, DW_AT_name("sid")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_sid")
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$119, DW_AT_location[DW_OP_reg12]
$C$DW$120	.dwtag  DW_TAG_formal_parameter, DW_AT_name("flag")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_flag")
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$120, DW_AT_location[DW_OP_reg13]
;*******************************************************************************
;* FUNCTION NAME: handle_results                                               *
;*                                                                             *
;*   Function Uses Regs : T0,T1,AR1,AR2,XAR2,AR3,XAR3,SP,CARRY,TC1,M40,SATA,   *
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_handle_results:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$121	.dwtag  DW_TAG_variable, DW_AT_name("sid")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("_sid")
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$121, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$122	.dwtag  DW_TAG_variable, DW_AT_name("flag")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_flag")
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$122, DW_AT_location[DW_OP_bregx 0x24 1]
        MOV T1, *SP(#1) ; |302| 
        MOV T0, *SP(#0) ; |302| 
	.dwpsn	file "../fuzz.c",line 303,column 5,is_stmt
        MOV #50, AR2 ; |303| 
        MOV *(#_hang_iterator), AR1 ; |303| 
        CMPU AR1 > AR2, TC1 ; |303| 
        BCC $C$L10,TC1 ; |303| 
                                        ; branchcc occurs ; |303| 
        MOV *(#_crash_iterator), AR1 ; |303| 
        CMPU AR1 <= AR2, TC1 ; |303| 
        BCC $C$L11,TC1 ; |303| 
                                        ; branchcc occurs ; |303| 
$C$L10:    
	.dwpsn	file "../fuzz.c",line 304,column 10,is_stmt
        MOV #1, *(#_isBufferFull) ; |304| 
$C$L11:    
	.dwpsn	file "../fuzz.c",line 307,column 5,is_stmt
        CMP *SP(#1) == #2, TC1 ; |307| 
        BCC $C$L12,!TC1 ; |307| 
                                        ; branchcc occurs ; |307| 
	.dwpsn	file "../fuzz.c",line 308,column 9,is_stmt
        MOV *(#_hang_iterator), AR1 ; |308| 
        MOV *SP(#0), T0 ; |308| 
        SFTL T0, #1 ; |308| 
        AMOV #_hang_buffer, XAR3 ; |308| 
        AMOV #_seed_corpus, XAR2 ; |308| 
        AADD AR1, AR3 ; |308| 
        MOV *AR2(T0), *AR3 ; |308| 
	.dwpsn	file "../fuzz.c",line 309,column 9,is_stmt
        ADD #1, *(#_hang_iterator) ; |309| 
	.dwpsn	file "../fuzz.c",line 310,column 5,is_stmt
        B $C$L14  ; |310| 
                                        ; branch occurs ; |310| 
$C$L12:    
	.dwpsn	file "../fuzz.c",line 311,column 10,is_stmt
        CMP *SP(#1) == #1, TC1 ; |311| 
        BCC $C$L13,!TC1 ; |311| 
                                        ; branchcc occurs ; |311| 
	.dwpsn	file "../fuzz.c",line 312,column 9,is_stmt
        MOV *(#_crash_iterator), AR1 ; |312| 
        MOV *SP(#0), T0 ; |312| 
        SFTL T0, #1 ; |312| 
        AMOV #_crash_buffer, XAR3 ; |312| 
        AMOV #_seed_corpus, XAR2 ; |312| 
        AADD AR1, AR3 ; |312| 
        MOV *AR2(T0), *AR3 ; |312| 
	.dwpsn	file "../fuzz.c",line 313,column 9,is_stmt
        ADD #1, *(#_crash_iterator) ; |313| 
	.dwpsn	file "../fuzz.c",line 314,column 5,is_stmt
        B $C$L14  ; |314| 
                                        ; branch occurs ; |314| 
$C$L13:    
	.dwpsn	file "../fuzz.c",line 315,column 10,is_stmt
        CMP *SP(#1) == #4, TC1 ; |315| 
        BCC $C$L14,!TC1 ; |315| 
                                        ; branchcc occurs ; |315| 
	.dwpsn	file "../fuzz.c",line 316,column 9,is_stmt
        MOV *SP(#0), T0 ; |316| 
        SFTL T0, #1 ; |316| 
        AMOV #(_seed_corpus+1), XAR3 ; |316| 
        MOV #1, *AR3(T0) ; |316| 
	.dwpsn	file "../fuzz.c",line 319,column 1,is_stmt
$C$L14:    
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$123	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$123, DW_AT_low_pc(0x00)
	.dwattr $C$DW$123, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$118, DW_AT_TI_end_file("../fuzz.c")
	.dwattr $C$DW$118, DW_AT_TI_end_line(0x13f)
	.dwattr $C$DW$118, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$118

	.sect	".text"
	.global	_fuzz_loop

$C$DW$124	.dwtag  DW_TAG_subprogram, DW_AT_name("fuzz_loop")
	.dwattr $C$DW$124, DW_AT_low_pc(_fuzz_loop)
	.dwattr $C$DW$124, DW_AT_high_pc(0x00)
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_fuzz_loop")
	.dwattr $C$DW$124, DW_AT_external
	.dwattr $C$DW$124, DW_AT_TI_begin_file("../fuzz.c")
	.dwattr $C$DW$124, DW_AT_TI_begin_line(0x143)
	.dwattr $C$DW$124, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$124, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "../fuzz.c",line 329,column 1,is_stmt,address _fuzz_loop

	.dwfde $C$DW$CIE, _fuzz_loop
;*******************************************************************************
;* FUNCTION NAME: fuzz_loop                                                    *
;*                                                                             *
;*   Function Uses Regs : T0,T1,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,CARRY,TC1,M40,    *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (4 function parameters)                              *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_fuzz_loop:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-11, SP
	.dwcfi	cfa_offset, 12
$C$DW$125	.dwtag  DW_TAG_variable, DW_AT_name("timer_handle")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_timer_handle")
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$125, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$126	.dwtag  DW_TAG_variable, DW_AT_name("iterations")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_iterations")
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$126, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$127	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$127, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$128	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$128, DW_AT_location[DW_OP_bregx 0x24 8]
	.dwpsn	file "../fuzz.c",line 331,column 14,is_stmt
        MOV #0, *SP(#6) ; |331| 
	.dwpsn	file "../fuzz.c",line 334,column 5,is_stmt
        MOV #0, *(#_isBufferFull) ; |334| 
	.dwpsn	file "../fuzz.c",line 337,column 5,is_stmt
$C$DW$129	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$129, DW_AT_low_pc(0x00)
	.dwattr $C$DW$129, DW_AT_name("_setup")
	.dwattr $C$DW$129, DW_AT_TI_call
        CALL #_setup ; |337| 
                                        ; call occurs [#_setup] ; |337| 
	.dwpsn	file "../fuzz.c",line 339,column 11,is_stmt
$C$L15:    
$C$DW$L$_fuzz_loop$2$B:
	.dwpsn	file "../fuzz.c",line 341,column 9,is_stmt
$C$DW$130	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$130, DW_AT_low_pc(0x00)
	.dwattr $C$DW$130, DW_AT_name("_mutator")
	.dwattr $C$DW$130, DW_AT_TI_call

        CALL #_mutator ; |341| 
||      MOV #5, T0

                                        ; call occurs [#_mutator] ; |341| 
	.dwpsn	file "../fuzz.c",line 344,column 13,is_stmt
        MOV #0, *SP(#7) ; |344| 
	.dwpsn	file "../fuzz.c",line 344,column 20,is_stmt

        MOV *SP(#7), AR1 ; |344| 
||      MOV #10, AR2

        CMPU AR1 >= AR2, TC1 ; |344| 
        BCC $C$L22,TC1 ; |344| 
                                        ; branchcc occurs ; |344| 
$C$DW$L$_fuzz_loop$2$E:
$C$L16:    
$C$DW$L$_fuzz_loop$3$B:
	.dwpsn	file "../fuzz.c",line 345,column 13,is_stmt
        MOV *(#_isBufferFull), AR1 ; |345| 
        BCC $C$L18,AR1 == #0 ; |345| 
                                        ; branchcc occurs ; |345| 
$C$DW$L$_fuzz_loop$3$E:
	.dwpsn	file "../fuzz.c",line 346,column 23,is_stmt
$C$L17:    
$C$DW$L$_fuzz_loop$5$B:
        B $C$L17  ; |346| 
                                        ; branch occurs ; |346| 
$C$DW$L$_fuzz_loop$5$E:
$C$L18:    
$C$DW$L$_fuzz_loop$6$B:
	.dwpsn	file "../fuzz.c",line 349,column 13,is_stmt
        AMOV #$C$FSL1, XAR3 ; |349| 
        MOV XAR3, dbl(*SP(#0))
        MOV *SP(#7), T0 ; |349| 
        SFTL T0, #1 ; |349| 
        AMOV #_seed_corpus, XAR3 ; |349| 
        MOV *AR3(T0), AR1 ; |349| 
        MOV AR1, *SP(#2) ; |349| 
        MOV *SP(#6), AR1 ; |349| 
        MOV AR1, *SP(#3) ; |349| 
$C$DW$131	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$131, DW_AT_low_pc(0x00)
	.dwattr $C$DW$131, DW_AT_name("_printf")
	.dwattr $C$DW$131, DW_AT_TI_call
        CALL #_printf ; |349| 
                                        ; call occurs [#_printf] ; |349| 
	.dwpsn	file "../fuzz.c",line 351,column 13,is_stmt
        AMOV #_saved_context, XAR0 ; |351| 
$C$DW$132	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$132, DW_AT_low_pc(0x00)
	.dwattr $C$DW$132, DW_AT_name("__setjmp")
	.dwattr $C$DW$132, DW_AT_TI_call
        CALL #__setjmp ; |351| 
                                        ; call occurs [#__setjmp] ; |351| 
$C$DW$L$_fuzz_loop$6$E:
$C$DW$L$_fuzz_loop$7$B:
	.dwpsn	file "../fuzz.c",line 353,column 13,is_stmt
        AMAR *SP(#4), XAR0
$C$DW$133	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$133, DW_AT_low_pc(0x00)
	.dwattr $C$DW$133, DW_AT_name("_start_timer")
	.dwattr $C$DW$133, DW_AT_TI_call
        CALL #_start_timer ; |353| 
                                        ; call occurs [#_start_timer] ; |353| 
	.dwpsn	file "../fuzz.c",line 355,column 13,is_stmt
        MOV *(#_isHang), AR1 ; |355| 
        BCC $C$L19,AR1 != #0 ; |355| 
                                        ; branchcc occurs ; |355| 
$C$DW$L$_fuzz_loop$7$E:
$C$DW$L$_fuzz_loop$8$B:
	.dwpsn	file "../fuzz.c",line 357,column 17,is_stmt
        MOV *SP(#7), AR1 ; |357| 
        SFTL AR1, #1 ; |357| 
        AMOV #_seed_corpus, XAR0 ; |357| 
        AADD AR1, AR0 ; |357| 
$C$DW$134	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$134, DW_AT_low_pc(0x00)
	.dwattr $C$DW$134, DW_AT_name("_intial_fuzz")
	.dwattr $C$DW$134, DW_AT_TI_call

        CALL #_intial_fuzz ; |357| 
||      MOV #1, T0

                                        ; call occurs [#_intial_fuzz] ; |357| 
        MOV T0, *SP(#8) ; |357| 
	.dwpsn	file "../fuzz.c",line 358,column 17,is_stmt
        AMAR *SP(#4), XAR0
$C$DW$135	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$135, DW_AT_low_pc(0x00)
	.dwattr $C$DW$135, DW_AT_name("_stop_timer")
	.dwattr $C$DW$135, DW_AT_TI_call
        CALL #_stop_timer ; |358| 
                                        ; call occurs [#_stop_timer] ; |358| 
	.dwpsn	file "../fuzz.c",line 360,column 17,is_stmt
        CMP *SP(#8) == #-1, TC1 ; |360| 
        BCC $C$L20,!TC1 ; |360| 
                                        ; branchcc occurs ; |360| 
$C$DW$L$_fuzz_loop$8$E:
$C$DW$L$_fuzz_loop$9$B:
	.dwpsn	file "../fuzz.c",line 361,column 21,is_stmt
        AMOV #$C$FSL2, XAR3 ; |361| 
        MOV XAR3, dbl(*SP(#0))
        MOV *SP(#7), T0 ; |361| 
        SFTL T0, #1 ; |361| 
        AMOV #_seed_corpus, XAR3 ; |361| 
        MOV *AR3(T0), AR1 ; |361| 
        MOV AR1, *SP(#2) ; |361| 
$C$DW$136	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$136, DW_AT_low_pc(0x00)
	.dwattr $C$DW$136, DW_AT_name("_printf")
	.dwattr $C$DW$136, DW_AT_TI_call
        CALL #_printf ; |361| 
                                        ; call occurs [#_printf] ; |361| 
	.dwpsn	file "../fuzz.c",line 362,column 21,is_stmt
        MOV *SP(#7), T0 ; |362| 
$C$DW$137	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$137, DW_AT_low_pc(0x00)
	.dwattr $C$DW$137, DW_AT_name("_handle_results")
	.dwattr $C$DW$137, DW_AT_TI_call

        CALL #_handle_results ; |362| 
||      MOV #1, T1

                                        ; call occurs [#_handle_results] ; |362| 
	.dwpsn	file "../fuzz.c",line 364,column 13,is_stmt
        B $C$L20  ; |364| 
                                        ; branch occurs ; |364| 
$C$DW$L$_fuzz_loop$9$E:
$C$L19:    
$C$DW$L$_fuzz_loop$10$B:
	.dwpsn	file "../fuzz.c",line 367,column 17,is_stmt
        AMAR *SP(#4), XAR0
$C$DW$138	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$138, DW_AT_low_pc(0x00)
	.dwattr $C$DW$138, DW_AT_name("_stop_timer")
	.dwattr $C$DW$138, DW_AT_TI_call
        CALL #_stop_timer ; |367| 
                                        ; call occurs [#_stop_timer] ; |367| 
	.dwpsn	file "../fuzz.c",line 368,column 17,is_stmt
        AMOV #$C$FSL3, XAR3 ; |368| 
        MOV XAR3, dbl(*SP(#0))
        MOV *SP(#7), T0 ; |368| 
        SFTL T0, #1 ; |368| 
        AMOV #_seed_corpus, XAR3 ; |368| 
        MOV *AR3(T0), AR1 ; |368| 
        MOV AR1, *SP(#2) ; |368| 
$C$DW$139	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$139, DW_AT_low_pc(0x00)
	.dwattr $C$DW$139, DW_AT_name("_printf")
	.dwattr $C$DW$139, DW_AT_TI_call
        CALL #_printf ; |368| 
                                        ; call occurs [#_printf] ; |368| 
	.dwpsn	file "../fuzz.c",line 369,column 17,is_stmt
        MOV *SP(#7), T0 ; |369| 
$C$DW$140	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$140, DW_AT_low_pc(0x00)
	.dwattr $C$DW$140, DW_AT_name("_handle_results")
	.dwattr $C$DW$140, DW_AT_TI_call

        CALL #_handle_results ; |369| 
||      MOV #2, T1

                                        ; call occurs [#_handle_results] ; |369| 
	.dwpsn	file "../fuzz.c",line 370,column 17,is_stmt
        MOV #0, *(#_isHang) ; |370| 
$C$DW$L$_fuzz_loop$10$E:
$C$L20:    
$C$DW$L$_fuzz_loop$11$B:
	.dwpsn	file "../fuzz.c",line 372,column 13,is_stmt
        MOV *(#_isIncreasing), AR1 ; |372| 
        BCC $C$L21,AR1 == #0 ; |372| 
                                        ; branchcc occurs ; |372| 
$C$DW$L$_fuzz_loop$11$E:
$C$DW$L$_fuzz_loop$12$B:
	.dwpsn	file "../fuzz.c",line 374,column 17,is_stmt
        AMOV #$C$FSL4, XAR3 ; |374| 
        MOV XAR3, dbl(*SP(#0))
        MOV *SP(#7), T0 ; |374| 
        SFTL T0, #1 ; |374| 
        AMOV #_seed_corpus, XAR3 ; |374| 
        MOV *AR3(T0), AR1 ; |374| 
        MOV AR1, *SP(#2) ; |374| 
$C$DW$141	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$141, DW_AT_low_pc(0x00)
	.dwattr $C$DW$141, DW_AT_name("_printf")
	.dwattr $C$DW$141, DW_AT_TI_call
        CALL #_printf ; |374| 
                                        ; call occurs [#_printf] ; |374| 
	.dwpsn	file "../fuzz.c",line 375,column 17,is_stmt
        MOV *SP(#7), T0 ; |375| 
$C$DW$142	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$142, DW_AT_low_pc(0x00)
	.dwattr $C$DW$142, DW_AT_name("_handle_results")
	.dwattr $C$DW$142, DW_AT_TI_call

        CALL #_handle_results ; |375| 
||      MOV #4, T1

                                        ; call occurs [#_handle_results] ; |375| 
	.dwpsn	file "../fuzz.c",line 376,column 17,is_stmt
        MOV #0, *(#_isIncreasing) ; |376| 
$C$DW$L$_fuzz_loop$12$E:
$C$L21:    
$C$DW$L$_fuzz_loop$13$B:
	.dwpsn	file "../fuzz.c",line 380,column 13,is_stmt
        ADD #1, *SP(#6) ; |380| 
	.dwpsn	file "../fuzz.c",line 344,column 39,is_stmt
        ADD #1, *SP(#7) ; |344| 
	.dwpsn	file "../fuzz.c",line 344,column 20,is_stmt

        MOV *SP(#7), AR1 ; |344| 
||      MOV #10, AR2

        CMPU AR1 < AR2, TC1 ; |344| 
        BCC $C$L16,TC1 ; |344| 
                                        ; branchcc occurs ; |344| 
$C$DW$L$_fuzz_loop$13$E:
$C$L22:    
$C$DW$L$_fuzz_loop$14$B:
	.dwpsn	file "../fuzz.c",line 383,column 9,is_stmt
        MOV *SP(#6), T0 ; |383| 
        MOV #20, T1 ; |383| 
$C$DW$143	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$143, DW_AT_low_pc(0x00)
	.dwattr $C$DW$143, DW_AT_name("__remu")
	.dwattr $C$DW$143, DW_AT_TI_call
        CALL #__remu ; |383| 
                                        ; call occurs [#__remu] ; |383| 
        BCC $C$L15,T0 != #0 ; |383| 
                                        ; branchcc occurs ; |383| 
$C$DW$L$_fuzz_loop$14$E:
$C$DW$L$_fuzz_loop$15$B:
	.dwpsn	file "../fuzz.c",line 384,column 13,is_stmt
        AMOV #$C$FSL5, XAR3 ; |384| 
        MOV XAR3, dbl(*SP(#0))
$C$DW$144	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$144, DW_AT_low_pc(0x00)
	.dwattr $C$DW$144, DW_AT_name("_printf")
	.dwattr $C$DW$144, DW_AT_TI_call
        CALL #_printf ; |384| 
                                        ; call occurs [#_printf] ; |384| 
	.dwpsn	file "../fuzz.c",line 385,column 17,is_stmt
        MOV #0, *SP(#7) ; |385| 
	.dwpsn	file "../fuzz.c",line 385,column 24,is_stmt
        MOV #50, AR2 ; |385| 
        MOV *SP(#7), AR1 ; |385| 
        CMPU AR1 >= AR2, TC1 ; |385| 
        BCC $C$L25,TC1 ; |385| 
                                        ; branchcc occurs ; |385| 
$C$DW$L$_fuzz_loop$15$E:
$C$L23:    
$C$DW$L$_fuzz_loop$16$B:

$C$DW$145	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$146	.dwtag  DW_TAG_variable, DW_AT_name("input")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$146, DW_AT_location[DW_OP_bregx 0x24 9]
	.dwpsn	file "../fuzz.c",line 386,column 26,is_stmt
        MOV *SP(#7), T0 ; |386| 
        AMOV #_hang_buffer, XAR3 ; |386| 
        MOV *AR3(T0), AR1 ; |386| 
        MOV AR1, *SP(#9) ; |386| 
	.dwpsn	file "../fuzz.c",line 387,column 17,is_stmt
        BCC $C$L24,AR1 != #0 ; |387| 
                                        ; branchcc occurs ; |387| 
$C$DW$L$_fuzz_loop$16$E:
$C$DW$L$_fuzz_loop$17$B:
	.dwpsn	file "../fuzz.c",line 388,column 21,is_stmt
        B $C$L25  ; |388| 
                                        ; branch occurs ; |388| 
$C$DW$L$_fuzz_loop$17$E:
$C$L24:    
$C$DW$L$_fuzz_loop$19$B:
	.dwpsn	file "../fuzz.c",line 391,column 21,is_stmt
        AMOV #$C$FSL6, XAR3 ; |391| 
        MOV XAR3, dbl(*SP(#0))
        MOV *SP(#9), AR1 ; |391| 
        MOV AR1, *SP(#2) ; |391| 
$C$DW$147	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$147, DW_AT_low_pc(0x00)
	.dwattr $C$DW$147, DW_AT_name("_printf")
	.dwattr $C$DW$147, DW_AT_TI_call
        CALL #_printf ; |391| 
                                        ; call occurs [#_printf] ; |391| 
	.dwendtag $C$DW$145

	.dwpsn	file "../fuzz.c",line 385,column 41,is_stmt
        ADD #1, *SP(#7) ; |385| 
	.dwpsn	file "../fuzz.c",line 385,column 24,is_stmt
        MOV #50, AR2 ; |385| 
        MOV *SP(#7), AR1 ; |385| 
        CMPU AR1 < AR2, TC1 ; |385| 
        BCC $C$L23,TC1 ; |385| 
                                        ; branchcc occurs ; |385| 
$C$DW$L$_fuzz_loop$19$E:
$C$L25:    
$C$DW$L$_fuzz_loop$20$B:
	.dwpsn	file "../fuzz.c",line 395,column 13,is_stmt
        AMOV #$C$FSL7, XAR3 ; |395| 
        MOV XAR3, dbl(*SP(#0))
$C$DW$148	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$148, DW_AT_low_pc(0x00)
	.dwattr $C$DW$148, DW_AT_name("_printf")
	.dwattr $C$DW$148, DW_AT_TI_call
        CALL #_printf ; |395| 
                                        ; call occurs [#_printf] ; |395| 
	.dwpsn	file "../fuzz.c",line 396,column 17,is_stmt
        MOV #0, *SP(#7) ; |396| 
	.dwpsn	file "../fuzz.c",line 396,column 24,is_stmt
        MOV #50, AR2 ; |396| 
        MOV *SP(#7), AR1 ; |396| 
        CMPU AR1 >= AR2, TC1 ; |396| 
        BCC $C$L15,TC1 ; |396| 
                                        ; branchcc occurs ; |396| 
$C$DW$L$_fuzz_loop$20$E:
$C$L26:    
$C$DW$L$_fuzz_loop$21$B:

$C$DW$149	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$150	.dwtag  DW_TAG_variable, DW_AT_name("input")
	.dwattr $C$DW$150, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$150, DW_AT_location[DW_OP_bregx 0x24 9]
	.dwpsn	file "../fuzz.c",line 397,column 26,is_stmt
        MOV *SP(#7), T0 ; |397| 
        AMOV #_crash_buffer, XAR3 ; |397| 
        MOV *AR3(T0), AR1 ; |397| 
        MOV AR1, *SP(#9) ; |397| 
	.dwpsn	file "../fuzz.c",line 398,column 17,is_stmt
        BCC $C$L27,AR1 != #0 ; |398| 
                                        ; branchcc occurs ; |398| 
$C$DW$L$_fuzz_loop$21$E:
$C$DW$L$_fuzz_loop$22$B:
	.dwpsn	file "../fuzz.c",line 399,column 21,is_stmt
        B $C$L15  ; |399| 
                                        ; branch occurs ; |399| 
$C$DW$L$_fuzz_loop$22$E:
$C$L27:    
$C$DW$L$_fuzz_loop$24$B:
	.dwpsn	file "../fuzz.c",line 402,column 21,is_stmt
        AMOV #$C$FSL6, XAR3 ; |402| 
        MOV XAR3, dbl(*SP(#0))
        MOV *SP(#9), AR1 ; |402| 
        MOV AR1, *SP(#2) ; |402| 
$C$DW$151	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$151, DW_AT_low_pc(0x00)
	.dwattr $C$DW$151, DW_AT_name("_printf")
	.dwattr $C$DW$151, DW_AT_TI_call
        CALL #_printf ; |402| 
                                        ; call occurs [#_printf] ; |402| 
	.dwendtag $C$DW$149

	.dwpsn	file "../fuzz.c",line 396,column 41,is_stmt
        ADD #1, *SP(#7) ; |396| 
	.dwpsn	file "../fuzz.c",line 396,column 24,is_stmt
        MOV #50, AR2 ; |396| 
        MOV *SP(#7), AR1 ; |396| 
        CMPU AR1 < AR2, TC1 ; |396| 
        BCC $C$L26,TC1 ; |396| 
                                        ; branchcc occurs ; |396| 
$C$DW$L$_fuzz_loop$24$E:
$C$DW$L$_fuzz_loop$25$B:
	.dwpsn	file "../fuzz.c",line 339,column 11,is_stmt
        B $C$L15  ; |339| 
                                        ; branch occurs ; |339| 
$C$DW$L$_fuzz_loop$25$E:
	.dwcfi	cfa_offset, 1

$C$DW$152	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$152, DW_AT_name("C:\Users\garci\workspace_v12\DSP_Fuzzer\Debug\fuzz.asm:$C$L17:1:1712319070")
	.dwattr $C$DW$152, DW_AT_TI_begin_file("../fuzz.c")
	.dwattr $C$DW$152, DW_AT_TI_begin_line(0x15a)
	.dwattr $C$DW$152, DW_AT_TI_end_line(0x15a)
$C$DW$153	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$153, DW_AT_low_pc($C$DW$L$_fuzz_loop$5$B)
	.dwattr $C$DW$153, DW_AT_high_pc($C$DW$L$_fuzz_loop$5$E)
	.dwendtag $C$DW$152


$C$DW$154	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$154, DW_AT_name("C:\Users\garci\workspace_v12\DSP_Fuzzer\Debug\fuzz.asm:$C$L15:1:1712319070")
	.dwattr $C$DW$154, DW_AT_TI_begin_file("../fuzz.c")
	.dwattr $C$DW$154, DW_AT_TI_begin_line(0x153)
	.dwattr $C$DW$154, DW_AT_TI_end_line(0x197)
$C$DW$155	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$155, DW_AT_low_pc($C$DW$L$_fuzz_loop$2$B)
	.dwattr $C$DW$155, DW_AT_high_pc($C$DW$L$_fuzz_loop$2$E)
$C$DW$156	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$156, DW_AT_low_pc($C$DW$L$_fuzz_loop$15$B)
	.dwattr $C$DW$156, DW_AT_high_pc($C$DW$L$_fuzz_loop$15$E)
$C$DW$157	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$157, DW_AT_low_pc($C$DW$L$_fuzz_loop$17$B)
	.dwattr $C$DW$157, DW_AT_high_pc($C$DW$L$_fuzz_loop$17$E)
$C$DW$158	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$158, DW_AT_low_pc($C$DW$L$_fuzz_loop$25$B)
	.dwattr $C$DW$158, DW_AT_high_pc($C$DW$L$_fuzz_loop$25$E)
$C$DW$159	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$159, DW_AT_low_pc($C$DW$L$_fuzz_loop$22$B)
	.dwattr $C$DW$159, DW_AT_high_pc($C$DW$L$_fuzz_loop$22$E)
$C$DW$160	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$160, DW_AT_low_pc($C$DW$L$_fuzz_loop$20$B)
	.dwattr $C$DW$160, DW_AT_high_pc($C$DW$L$_fuzz_loop$20$E)
$C$DW$161	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$161, DW_AT_low_pc($C$DW$L$_fuzz_loop$14$B)
	.dwattr $C$DW$161, DW_AT_high_pc($C$DW$L$_fuzz_loop$14$E)

$C$DW$162	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$162, DW_AT_name("C:\Users\garci\workspace_v12\DSP_Fuzzer\Debug\fuzz.asm:$C$L26:2:1712319070")
	.dwattr $C$DW$162, DW_AT_TI_begin_file("../fuzz.c")
	.dwattr $C$DW$162, DW_AT_TI_begin_line(0x18c)
	.dwattr $C$DW$162, DW_AT_TI_end_line(0x194)
$C$DW$163	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$163, DW_AT_low_pc($C$DW$L$_fuzz_loop$21$B)
	.dwattr $C$DW$163, DW_AT_high_pc($C$DW$L$_fuzz_loop$21$E)
$C$DW$164	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$164, DW_AT_low_pc($C$DW$L$_fuzz_loop$24$B)
	.dwattr $C$DW$164, DW_AT_high_pc($C$DW$L$_fuzz_loop$24$E)
	.dwendtag $C$DW$162


$C$DW$165	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$165, DW_AT_name("C:\Users\garci\workspace_v12\DSP_Fuzzer\Debug\fuzz.asm:$C$L23:2:1712319070")
	.dwattr $C$DW$165, DW_AT_TI_begin_file("../fuzz.c")
	.dwattr $C$DW$165, DW_AT_TI_begin_line(0x181)
	.dwattr $C$DW$165, DW_AT_TI_end_line(0x18a)
$C$DW$166	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$166, DW_AT_low_pc($C$DW$L$_fuzz_loop$16$B)
	.dwattr $C$DW$166, DW_AT_high_pc($C$DW$L$_fuzz_loop$16$E)
$C$DW$167	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$167, DW_AT_low_pc($C$DW$L$_fuzz_loop$19$B)
	.dwattr $C$DW$167, DW_AT_high_pc($C$DW$L$_fuzz_loop$19$E)
	.dwendtag $C$DW$165


$C$DW$168	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$168, DW_AT_name("C:\Users\garci\workspace_v12\DSP_Fuzzer\Debug\fuzz.asm:$C$L16:2:1712319070")
	.dwattr $C$DW$168, DW_AT_TI_begin_file("../fuzz.c")
	.dwattr $C$DW$168, DW_AT_TI_begin_line(0x158)
	.dwattr $C$DW$168, DW_AT_TI_end_line(0x17e)
$C$DW$169	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$169, DW_AT_low_pc($C$DW$L$_fuzz_loop$3$B)
	.dwattr $C$DW$169, DW_AT_high_pc($C$DW$L$_fuzz_loop$3$E)
$C$DW$170	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$170, DW_AT_low_pc($C$DW$L$_fuzz_loop$6$B)
	.dwattr $C$DW$170, DW_AT_high_pc($C$DW$L$_fuzz_loop$6$E)
$C$DW$171	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$171, DW_AT_low_pc($C$DW$L$_fuzz_loop$7$B)
	.dwattr $C$DW$171, DW_AT_high_pc($C$DW$L$_fuzz_loop$7$E)
$C$DW$172	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$172, DW_AT_low_pc($C$DW$L$_fuzz_loop$8$B)
	.dwattr $C$DW$172, DW_AT_high_pc($C$DW$L$_fuzz_loop$8$E)
$C$DW$173	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$173, DW_AT_low_pc($C$DW$L$_fuzz_loop$9$B)
	.dwattr $C$DW$173, DW_AT_high_pc($C$DW$L$_fuzz_loop$9$E)
$C$DW$174	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$174, DW_AT_low_pc($C$DW$L$_fuzz_loop$10$B)
	.dwattr $C$DW$174, DW_AT_high_pc($C$DW$L$_fuzz_loop$10$E)
$C$DW$175	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$175, DW_AT_low_pc($C$DW$L$_fuzz_loop$11$B)
	.dwattr $C$DW$175, DW_AT_high_pc($C$DW$L$_fuzz_loop$11$E)
$C$DW$176	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$176, DW_AT_low_pc($C$DW$L$_fuzz_loop$12$B)
	.dwattr $C$DW$176, DW_AT_high_pc($C$DW$L$_fuzz_loop$12$E)
$C$DW$177	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$177, DW_AT_low_pc($C$DW$L$_fuzz_loop$13$B)
	.dwattr $C$DW$177, DW_AT_high_pc($C$DW$L$_fuzz_loop$13$E)
	.dwendtag $C$DW$168

	.dwendtag $C$DW$154

	.dwattr $C$DW$124, DW_AT_TI_end_file("../fuzz.c")
	.dwattr $C$DW$124, DW_AT_TI_end_line(0x198)
	.dwattr $C$DW$124, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$124

	.sect	".text"
	.global	_main

$C$DW$178	.dwtag  DW_TAG_subprogram, DW_AT_name("main")
	.dwattr $C$DW$178, DW_AT_low_pc(_main)
	.dwattr $C$DW$178, DW_AT_high_pc(0x00)
	.dwattr $C$DW$178, DW_AT_TI_symbol_name("_main")
	.dwattr $C$DW$178, DW_AT_external
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$178, DW_AT_TI_begin_file("../fuzz.c")
	.dwattr $C$DW$178, DW_AT_TI_begin_line(0x19a)
	.dwattr $C$DW$178, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$178, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "../fuzz.c",line 410,column 15,is_stmt,address _main

	.dwfde $C$DW$CIE, _main
;*******************************************************************************
;* FUNCTION NAME: main                                                         *
;*                                                                             *
;*   Function Uses Regs : T0,SP,M40,SATA,SATD,RDM,FRCT,SMUL                    *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 2 words                                              *
;*                        (2 return address/alignment)                         *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_main:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-1, SP
	.dwcfi	cfa_offset, 2
	.dwpsn	file "../fuzz.c",line 412,column 5,is_stmt
$C$DW$179	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$179, DW_AT_low_pc(0x00)
	.dwattr $C$DW$179, DW_AT_name("_fuzz_loop")
	.dwattr $C$DW$179, DW_AT_TI_call
        CALL #_fuzz_loop ; |412| 
                                        ; call occurs [#_fuzz_loop] ; |412| 
	.dwpsn	file "../fuzz.c",line 413,column 1,is_stmt
        MOV #0, T0
        AADD #1, SP
	.dwcfi	cfa_offset, 1
$C$DW$180	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$180, DW_AT_low_pc(0x00)
	.dwattr $C$DW$180, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$178, DW_AT_TI_end_file("../fuzz.c")
	.dwattr $C$DW$178, DW_AT_TI_end_line(0x19d)
	.dwattr $C$DW$178, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$178

;*******************************************************************************
;* FAR STRINGS                                                                 *
;*******************************************************************************
	.sect	".const:.string"
	.align	2
$C$FSL1:	.string	10,"LOG: Trying %d, on loop interation %d ",10,0
	.align	2
$C$FSL2:	.string	"LOG: Found a 'crash' with input %d ",10,0
	.align	2
$C$FSL3:	.string	"LOG: Hang or Stall Detected with input %d ",10,0
	.align	2
$C$FSL4:	.string	"LOG: Interesting Input Increased Coverage %d ",10,0
	.align	2
$C$FSL5:	.string	"LOG: Hanged inputs ",0
	.align	2
$C$FSL6:	.string	"%d ",0
	.align	2
$C$FSL7:	.string	10,"LOG: Crashed inputs ",0
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_rand
	.global	_srand
	.global	_printf
	.global	__setjmp
	.global	_longjmp
	.global	_memset
	.global	_clock
	.global	_GPT_open
	.global	_GPT_reset
	.global	_GPT_start
	.global	_GPT_stop
	.global	_GPT_config
	.global	_IRQ_plug
	.global	_IRQ_clear
	.global	_IRQ_clearAll
	.global	_IRQ_disableAll
	.global	_IRQ_enable
	.global	_IRQ_setVecs
	.global	_IRQ_globalDisable
	.global	_IRQ_globalEnable
	.global	_VECSTART
	.global	_intial_fuzz
	.global	__remul
	.global	__remu

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$22	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x01)
$C$DW$181	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_0"), DW_AT_const_value(0x00)
$C$DW$182	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_1"), DW_AT_const_value(0x01)
$C$DW$183	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_2"), DW_AT_const_value(0x02)
$C$DW$184	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_INVALID"), DW_AT_const_value(0x03)
	.dwendtag $C$DW$T$22

$C$DW$T$23	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_Instance")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)

$C$DW$T$29	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x01)
$C$DW$185	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_AUTO_DISABLE"), DW_AT_const_value(0x00)
$C$DW$186	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_AUTO_ENABLE"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$29

$C$DW$T$30	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_AutoReLoad")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$30, DW_AT_language(DW_LANG_C)

$C$DW$T$31	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x01)
$C$DW$187	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_PRE_SC_DIV_0"), DW_AT_const_value(0x00)
$C$DW$188	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_PRE_SC_DIV_1"), DW_AT_const_value(0x01)
$C$DW$189	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_PRE_SC_DIV_2"), DW_AT_const_value(0x02)
$C$DW$190	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_PRE_SC_DIV_3"), DW_AT_const_value(0x03)
$C$DW$191	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_PRE_SC_DIV_4"), DW_AT_const_value(0x04)
$C$DW$192	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_PRE_SC_DIV_5"), DW_AT_const_value(0x05)
$C$DW$193	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_PRE_SC_DIV_6"), DW_AT_const_value(0x06)
$C$DW$194	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_PRE_SC_DIV_7"), DW_AT_const_value(0x07)
$C$DW$195	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_PRE_SC_DIV_8"), DW_AT_const_value(0x08)
$C$DW$196	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_PRE_SC_DIV_9"), DW_AT_const_value(0x09)
$C$DW$197	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_PRE_SC_DIV_10"), DW_AT_const_value(0x0a)
$C$DW$198	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_PRE_SC_DIV_11"), DW_AT_const_value(0x0b)
$C$DW$199	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_PRE_SC_DIV_12"), DW_AT_const_value(0x0c)
$C$DW$200	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_PRE_SC_DIV_RESERVE"), DW_AT_const_value(0x0d)
	.dwendtag $C$DW$T$31

$C$DW$T$32	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_PreScale")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$32, DW_AT_language(DW_LANG_C)

$C$DW$T$33	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x01)
$C$DW$201	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_TIMER_DISABLE"), DW_AT_const_value(0x00)
$C$DW$202	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_TIMER_ENABLE"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$33

$C$DW$T$34	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_CtrlTimer")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)

$C$DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x06)
$C$DW$203	.dwtag  DW_TAG_member
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$203, DW_AT_name("TCR")
	.dwattr $C$DW$203, DW_AT_TI_symbol_name("_TCR")
	.dwattr $C$DW$203, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$203, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$204	.dwtag  DW_TAG_member
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$204, DW_AT_name("RSVD0")
	.dwattr $C$DW$204, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$204, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$204, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$205	.dwtag  DW_TAG_member
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$205, DW_AT_name("TIMPRD1")
	.dwattr $C$DW$205, DW_AT_TI_symbol_name("_TIMPRD1")
	.dwattr $C$DW$205, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$205, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$206	.dwtag  DW_TAG_member
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$206, DW_AT_name("TIMPRD2")
	.dwattr $C$DW$206, DW_AT_TI_symbol_name("_TIMPRD2")
	.dwattr $C$DW$206, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$206, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$207	.dwtag  DW_TAG_member
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$207, DW_AT_name("TIMCNT1")
	.dwattr $C$DW$207, DW_AT_TI_symbol_name("_TIMCNT1")
	.dwattr $C$DW$207, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$207, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$208	.dwtag  DW_TAG_member
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$208, DW_AT_name("TIMCNT2")
	.dwattr $C$DW$208, DW_AT_TI_symbol_name("_TIMCNT2")
	.dwattr $C$DW$208, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$208, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$21

$C$DW$T$24	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_TimRegs")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
$C$DW$209	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$24)
$C$DW$210	.dwtag  DW_TAG_TI_ioport_type
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$209)
$C$DW$T$25	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$210)
$C$DW$T$26	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_address_class(0x10)
$C$DW$T$27	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_TimRegsOvly")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)

$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x03)
$C$DW$211	.dwtag  DW_TAG_member
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$211, DW_AT_name("Instance")
	.dwattr $C$DW$211, DW_AT_TI_symbol_name("_Instance")
	.dwattr $C$DW$211, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$211, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$212	.dwtag  DW_TAG_member
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$212, DW_AT_name("EventId")
	.dwattr $C$DW$212, DW_AT_TI_symbol_name("_EventId")
	.dwattr $C$DW$212, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$212, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$213	.dwtag  DW_TAG_member
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$213, DW_AT_name("regs")
	.dwattr $C$DW$213, DW_AT_TI_symbol_name("_regs")
	.dwattr $C$DW$213, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$213, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$28

$C$DW$T$43	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_GptObj")
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$43, DW_AT_language(DW_LANG_C)
$C$DW$T$44	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$44, DW_AT_address_class(0x17)
$C$DW$T$45	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_Handle")
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$45, DW_AT_language(DW_LANG_C)
$C$DW$T$51	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$51, DW_AT_address_class(0x17)

$C$DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x05)
$C$DW$214	.dwtag  DW_TAG_member
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$214, DW_AT_name("autoLoad")
	.dwattr $C$DW$214, DW_AT_TI_symbol_name("_autoLoad")
	.dwattr $C$DW$214, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$214, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$215	.dwtag  DW_TAG_member
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$215, DW_AT_name("preScaleDiv")
	.dwattr $C$DW$215, DW_AT_TI_symbol_name("_preScaleDiv")
	.dwattr $C$DW$215, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$215, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$216	.dwtag  DW_TAG_member
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$216, DW_AT_name("ctrlTim")
	.dwattr $C$DW$216, DW_AT_TI_symbol_name("_ctrlTim")
	.dwattr $C$DW$216, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$216, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$217	.dwtag  DW_TAG_member
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$217, DW_AT_name("prdLow")
	.dwattr $C$DW$217, DW_AT_TI_symbol_name("_prdLow")
	.dwattr $C$DW$217, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$217, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$218	.dwtag  DW_TAG_member
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$218, DW_AT_name("prdHigh")
	.dwattr $C$DW$218, DW_AT_TI_symbol_name("_prdHigh")
	.dwattr $C$DW$218, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$218, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$35

$C$DW$T$52	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_Config")
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$52, DW_AT_language(DW_LANG_C)
$C$DW$T$53	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$T$53, DW_AT_address_class(0x17)

$C$DW$T$39	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x48)
$C$DW$219	.dwtag  DW_TAG_member
	.dwattr $C$DW$219, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$219, DW_AT_name("EBSR")
	.dwattr $C$DW$219, DW_AT_TI_symbol_name("_EBSR")
	.dwattr $C$DW$219, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$219, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$220	.dwtag  DW_TAG_member
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$220, DW_AT_name("RSVD0")
	.dwattr $C$DW$220, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$220, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$220, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$221	.dwtag  DW_TAG_member
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$221, DW_AT_name("PCGCR1")
	.dwattr $C$DW$221, DW_AT_TI_symbol_name("_PCGCR1")
	.dwattr $C$DW$221, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$221, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$222	.dwtag  DW_TAG_member
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$222, DW_AT_name("PCGCR2")
	.dwattr $C$DW$222, DW_AT_TI_symbol_name("_PCGCR2")
	.dwattr $C$DW$222, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$222, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$223	.dwtag  DW_TAG_member
	.dwattr $C$DW$223, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$223, DW_AT_name("PSRCR")
	.dwattr $C$DW$223, DW_AT_TI_symbol_name("_PSRCR")
	.dwattr $C$DW$223, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$223, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$224	.dwtag  DW_TAG_member
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$224, DW_AT_name("PRCR")
	.dwattr $C$DW$224, DW_AT_TI_symbol_name("_PRCR")
	.dwattr $C$DW$224, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$224, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$225	.dwtag  DW_TAG_member
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$225, DW_AT_name("RSVD1")
	.dwattr $C$DW$225, DW_AT_TI_symbol_name("_RSVD1")
	.dwattr $C$DW$225, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$225, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$226	.dwtag  DW_TAG_member
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$226, DW_AT_name("TIAFR")
	.dwattr $C$DW$226, DW_AT_TI_symbol_name("_TIAFR")
	.dwattr $C$DW$226, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$226, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$227	.dwtag  DW_TAG_member
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$227, DW_AT_name("RSVD2")
	.dwattr $C$DW$227, DW_AT_TI_symbol_name("_RSVD2")
	.dwattr $C$DW$227, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$227, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$228	.dwtag  DW_TAG_member
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$228, DW_AT_name("ODSCR")
	.dwattr $C$DW$228, DW_AT_TI_symbol_name("_ODSCR")
	.dwattr $C$DW$228, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$228, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$229	.dwtag  DW_TAG_member
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$229, DW_AT_name("PDINHIBR1")
	.dwattr $C$DW$229, DW_AT_TI_symbol_name("_PDINHIBR1")
	.dwattr $C$DW$229, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$229, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$230	.dwtag  DW_TAG_member
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$230, DW_AT_name("PDINHIBR2")
	.dwattr $C$DW$230, DW_AT_TI_symbol_name("_PDINHIBR2")
	.dwattr $C$DW$230, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$230, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$231	.dwtag  DW_TAG_member
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$231, DW_AT_name("PDINHIBR3")
	.dwattr $C$DW$231, DW_AT_TI_symbol_name("_PDINHIBR3")
	.dwattr $C$DW$231, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$231, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$232	.dwtag  DW_TAG_member
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$232, DW_AT_name("DMA0CESR1")
	.dwattr $C$DW$232, DW_AT_TI_symbol_name("_DMA0CESR1")
	.dwattr $C$DW$232, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$232, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$233	.dwtag  DW_TAG_member
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$233, DW_AT_name("DMA0CESR2")
	.dwattr $C$DW$233, DW_AT_TI_symbol_name("_DMA0CESR2")
	.dwattr $C$DW$233, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr $C$DW$233, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$234	.dwtag  DW_TAG_member
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$234, DW_AT_name("DMA1CESR1")
	.dwattr $C$DW$234, DW_AT_TI_symbol_name("_DMA1CESR1")
	.dwattr $C$DW$234, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$234, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$235	.dwtag  DW_TAG_member
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$235, DW_AT_name("DMA1CESR2")
	.dwattr $C$DW$235, DW_AT_TI_symbol_name("_DMA1CESR2")
	.dwattr $C$DW$235, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr $C$DW$235, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$236	.dwtag  DW_TAG_member
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$236, DW_AT_name("CCR1")
	.dwattr $C$DW$236, DW_AT_TI_symbol_name("_CCR1")
	.dwattr $C$DW$236, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$236, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$237	.dwtag  DW_TAG_member
	.dwattr $C$DW$237, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$237, DW_AT_name("CCR2")
	.dwattr $C$DW$237, DW_AT_TI_symbol_name("_CCR2")
	.dwattr $C$DW$237, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr $C$DW$237, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$238	.dwtag  DW_TAG_member
	.dwattr $C$DW$238, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$238, DW_AT_name("CGCR1")
	.dwattr $C$DW$238, DW_AT_TI_symbol_name("_CGCR1")
	.dwattr $C$DW$238, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$238, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$239	.dwtag  DW_TAG_member
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$239, DW_AT_name("CGCR2")
	.dwattr $C$DW$239, DW_AT_TI_symbol_name("_CGCR2")
	.dwattr $C$DW$239, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr $C$DW$239, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$240	.dwtag  DW_TAG_member
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$240, DW_AT_name("CGCR3")
	.dwattr $C$DW$240, DW_AT_TI_symbol_name("_CGCR3")
	.dwattr $C$DW$240, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$240, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$241	.dwtag  DW_TAG_member
	.dwattr $C$DW$241, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$241, DW_AT_name("CGCR4")
	.dwattr $C$DW$241, DW_AT_TI_symbol_name("_CGCR4")
	.dwattr $C$DW$241, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr $C$DW$241, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$242	.dwtag  DW_TAG_member
	.dwattr $C$DW$242, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$242, DW_AT_name("CCSSR")
	.dwattr $C$DW$242, DW_AT_TI_symbol_name("_CCSSR")
	.dwattr $C$DW$242, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$242, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$243	.dwtag  DW_TAG_member
	.dwattr $C$DW$243, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$243, DW_AT_name("RSVD3")
	.dwattr $C$DW$243, DW_AT_TI_symbol_name("_RSVD3")
	.dwattr $C$DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr $C$DW$243, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$244	.dwtag  DW_TAG_member
	.dwattr $C$DW$244, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$244, DW_AT_name("ECDR")
	.dwattr $C$DW$244, DW_AT_TI_symbol_name("_ECDR")
	.dwattr $C$DW$244, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$244, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$245	.dwtag  DW_TAG_member
	.dwattr $C$DW$245, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$245, DW_AT_name("RSVD4")
	.dwattr $C$DW$245, DW_AT_TI_symbol_name("_RSVD4")
	.dwattr $C$DW$245, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr $C$DW$245, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$246	.dwtag  DW_TAG_member
	.dwattr $C$DW$246, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$246, DW_AT_name("RAMSLPMDCNTLR1")
	.dwattr $C$DW$246, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR1")
	.dwattr $C$DW$246, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$246, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$247	.dwtag  DW_TAG_member
	.dwattr $C$DW$247, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$247, DW_AT_name("RSVD5")
	.dwattr $C$DW$247, DW_AT_TI_symbol_name("_RSVD5")
	.dwattr $C$DW$247, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr $C$DW$247, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$248	.dwtag  DW_TAG_member
	.dwattr $C$DW$248, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$248, DW_AT_name("RAMSLPMDCNTLR2")
	.dwattr $C$DW$248, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR2")
	.dwattr $C$DW$248, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$248, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$249	.dwtag  DW_TAG_member
	.dwattr $C$DW$249, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$249, DW_AT_name("RAMSLPMDCNTLR3")
	.dwattr $C$DW$249, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR3")
	.dwattr $C$DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr $C$DW$249, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$250	.dwtag  DW_TAG_member
	.dwattr $C$DW$250, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$250, DW_AT_name("RAMSLPMDCNTLR4")
	.dwattr $C$DW$250, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR4")
	.dwattr $C$DW$250, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$250, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$251	.dwtag  DW_TAG_member
	.dwattr $C$DW$251, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$251, DW_AT_name("RAMSLPMDCNTLR5")
	.dwattr $C$DW$251, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR5")
	.dwattr $C$DW$251, DW_AT_data_member_location[DW_OP_plus_uconst 0x2d]
	.dwattr $C$DW$251, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$252	.dwtag  DW_TAG_member
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$252, DW_AT_name("RSVD6")
	.dwattr $C$DW$252, DW_AT_TI_symbol_name("_RSVD6")
	.dwattr $C$DW$252, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr $C$DW$252, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$253	.dwtag  DW_TAG_member
	.dwattr $C$DW$253, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$253, DW_AT_name("DMAIFR")
	.dwattr $C$DW$253, DW_AT_TI_symbol_name("_DMAIFR")
	.dwattr $C$DW$253, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$253, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$254	.dwtag  DW_TAG_member
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$254, DW_AT_name("DMAIER")
	.dwattr $C$DW$254, DW_AT_TI_symbol_name("_DMAIER")
	.dwattr $C$DW$254, DW_AT_data_member_location[DW_OP_plus_uconst 0x31]
	.dwattr $C$DW$254, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$255	.dwtag  DW_TAG_member
	.dwattr $C$DW$255, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$255, DW_AT_name("USBSCR")
	.dwattr $C$DW$255, DW_AT_TI_symbol_name("_USBSCR")
	.dwattr $C$DW$255, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$255, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$256	.dwtag  DW_TAG_member
	.dwattr $C$DW$256, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$256, DW_AT_name("ESCR")
	.dwattr $C$DW$256, DW_AT_TI_symbol_name("_ESCR")
	.dwattr $C$DW$256, DW_AT_data_member_location[DW_OP_plus_uconst 0x33]
	.dwattr $C$DW$256, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$257	.dwtag  DW_TAG_member
	.dwattr $C$DW$257, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$257, DW_AT_name("RSVD7")
	.dwattr $C$DW$257, DW_AT_TI_symbol_name("_RSVD7")
	.dwattr $C$DW$257, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$257, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$258	.dwtag  DW_TAG_member
	.dwattr $C$DW$258, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$258, DW_AT_name("DMA2CESR1")
	.dwattr $C$DW$258, DW_AT_TI_symbol_name("_DMA2CESR1")
	.dwattr $C$DW$258, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$258, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$259	.dwtag  DW_TAG_member
	.dwattr $C$DW$259, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$259, DW_AT_name("DMA2CESR2")
	.dwattr $C$DW$259, DW_AT_TI_symbol_name("_DMA2CESR2")
	.dwattr $C$DW$259, DW_AT_data_member_location[DW_OP_plus_uconst 0x37]
	.dwattr $C$DW$259, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$260	.dwtag  DW_TAG_member
	.dwattr $C$DW$260, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$260, DW_AT_name("DMA3CESR1")
	.dwattr $C$DW$260, DW_AT_TI_symbol_name("_DMA3CESR1")
	.dwattr $C$DW$260, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$260, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$261	.dwtag  DW_TAG_member
	.dwattr $C$DW$261, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$261, DW_AT_name("DMA3CESR2")
	.dwattr $C$DW$261, DW_AT_TI_symbol_name("_DMA3CESR2")
	.dwattr $C$DW$261, DW_AT_data_member_location[DW_OP_plus_uconst 0x39]
	.dwattr $C$DW$261, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$262	.dwtag  DW_TAG_member
	.dwattr $C$DW$262, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$262, DW_AT_name("CLKSTOP")
	.dwattr $C$DW$262, DW_AT_TI_symbol_name("_CLKSTOP")
	.dwattr $C$DW$262, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr $C$DW$262, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$263	.dwtag  DW_TAG_member
	.dwattr $C$DW$263, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$263, DW_AT_name("RSVD8")
	.dwattr $C$DW$263, DW_AT_TI_symbol_name("_RSVD8")
	.dwattr $C$DW$263, DW_AT_data_member_location[DW_OP_plus_uconst 0x3b]
	.dwattr $C$DW$263, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$264	.dwtag  DW_TAG_member
	.dwattr $C$DW$264, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$264, DW_AT_name("DIEIDR0")
	.dwattr $C$DW$264, DW_AT_TI_symbol_name("_DIEIDR0")
	.dwattr $C$DW$264, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$264, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$265	.dwtag  DW_TAG_member
	.dwattr $C$DW$265, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$265, DW_AT_name("DIEIDR1")
	.dwattr $C$DW$265, DW_AT_TI_symbol_name("_DIEIDR1")
	.dwattr $C$DW$265, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr $C$DW$265, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$266	.dwtag  DW_TAG_member
	.dwattr $C$DW$266, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$266, DW_AT_name("DIEIDR2")
	.dwattr $C$DW$266, DW_AT_TI_symbol_name("_DIEIDR2")
	.dwattr $C$DW$266, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr $C$DW$266, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$267	.dwtag  DW_TAG_member
	.dwattr $C$DW$267, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$267, DW_AT_name("DIEIDR3")
	.dwattr $C$DW$267, DW_AT_TI_symbol_name("_DIEIDR3")
	.dwattr $C$DW$267, DW_AT_data_member_location[DW_OP_plus_uconst 0x43]
	.dwattr $C$DW$267, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$268	.dwtag  DW_TAG_member
	.dwattr $C$DW$268, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$268, DW_AT_name("DIEIDR4")
	.dwattr $C$DW$268, DW_AT_TI_symbol_name("_DIEIDR4")
	.dwattr $C$DW$268, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$268, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$269	.dwtag  DW_TAG_member
	.dwattr $C$DW$269, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$269, DW_AT_name("DIEIDR5")
	.dwattr $C$DW$269, DW_AT_TI_symbol_name("_DIEIDR5")
	.dwattr $C$DW$269, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr $C$DW$269, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$270	.dwtag  DW_TAG_member
	.dwattr $C$DW$270, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$270, DW_AT_name("DIEIDR6")
	.dwattr $C$DW$270, DW_AT_TI_symbol_name("_DIEIDR6")
	.dwattr $C$DW$270, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr $C$DW$270, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$271	.dwtag  DW_TAG_member
	.dwattr $C$DW$271, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$271, DW_AT_name("DIEIDR7")
	.dwattr $C$DW$271, DW_AT_TI_symbol_name("_DIEIDR7")
	.dwattr $C$DW$271, DW_AT_data_member_location[DW_OP_plus_uconst 0x47]
	.dwattr $C$DW$271, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$39

$C$DW$T$54	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SysRegs")
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$54, DW_AT_language(DW_LANG_C)
$C$DW$272	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$272, DW_AT_type(*$C$DW$T$54)
$C$DW$273	.dwtag  DW_TAG_TI_ioport_type
	.dwattr $C$DW$273, DW_AT_type(*$C$DW$272)
$C$DW$T$55	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$273)
$C$DW$T$56	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$T$56, DW_AT_address_class(0x10)
$C$DW$T$57	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SysRegsOvly")
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$T$57, DW_AT_language(DW_LANG_C)
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x17)

$C$DW$T$66	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$66, DW_AT_language(DW_LANG_C)
$C$DW$T$67	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$T$67, DW_AT_address_class(0x20)
$C$DW$T$68	.dwtag  DW_TAG_typedef, DW_AT_name("IRQ_IsrPtr")
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$T$68, DW_AT_language(DW_LANG_C)
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
$C$DW$T$77	.dwtag  DW_TAG_typedef, DW_AT_name("uint8_t")
	.dwattr $C$DW$T$77, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$77, DW_AT_language(DW_LANG_C)
$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x01)
$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x01)
$C$DW$T$46	.dwtag  DW_TAG_typedef, DW_AT_name("Int16")
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$46, DW_AT_language(DW_LANG_C)
$C$DW$T$47	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_Status")
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$47, DW_AT_language(DW_LANG_C)
$C$DW$T$48	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$48, DW_AT_address_class(0x17)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)
$C$DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
$C$DW$274	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$274, DW_AT_type(*$C$DW$T$19)
$C$DW$T$20	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$274)

$C$DW$T$36	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x0e)
$C$DW$275	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$275, DW_AT_upper_bound(0x0d)
	.dwendtag $C$DW$T$36


$C$DW$T$37	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x02)
$C$DW$276	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$276, DW_AT_upper_bound(0x01)
	.dwendtag $C$DW$T$37


$C$DW$T$38	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$38, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x05)
$C$DW$277	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$277, DW_AT_upper_bound(0x04)
	.dwendtag $C$DW$T$38

$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x01)
$C$DW$T$88	.dwtag  DW_TAG_typedef, DW_AT_name("Bool")
	.dwattr $C$DW$T$88, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$88, DW_AT_language(DW_LANG_C)
$C$DW$T$107	.dwtag  DW_TAG_typedef, DW_AT_name("int16_t")
	.dwattr $C$DW$T$107, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$107, DW_AT_language(DW_LANG_C)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)
$C$DW$T$41	.dwtag  DW_TAG_typedef, DW_AT_name("_Bool")
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$41, DW_AT_language(DW_LANG_C)
$C$DW$278	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$278, DW_AT_type(*$C$DW$T$41)
$C$DW$T$113	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$113, DW_AT_type(*$C$DW$278)
$C$DW$T$58	.dwtag  DW_TAG_typedef, DW_AT_name("size_t")
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$58, DW_AT_language(DW_LANG_C)
$C$DW$T$40	.dwtag  DW_TAG_typedef, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$40, DW_AT_language(DW_LANG_C)
$C$DW$T$104	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$104, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$104, DW_AT_address_class(0x17)

$C$DW$T$114	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$114, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$114, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$114, DW_AT_byte_size(0x4000)
$C$DW$279	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$279, DW_AT_upper_bound(0x3fff)
	.dwendtag $C$DW$T$114


$C$DW$T$116	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$116, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$116, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$116, DW_AT_byte_size(0x32)
$C$DW$280	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$280, DW_AT_upper_bound(0x31)
	.dwendtag $C$DW$T$116

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)
$C$DW$T$63	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$63, DW_AT_address_class(0x17)

$C$DW$T$118	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$118, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$118, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$118, DW_AT_byte_size(0x10)
$C$DW$281	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$281, DW_AT_upper_bound(0x07)
	.dwendtag $C$DW$T$118

$C$DW$T$119	.dwtag  DW_TAG_typedef, DW_AT_name("jmp_buf")
	.dwattr $C$DW$T$119, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$T$119, DW_AT_language(DW_LANG_C)
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)
$C$DW$T$84	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32")
	.dwattr $C$DW$T$84, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$84, DW_AT_language(DW_LANG_C)
$C$DW$T$120	.dwtag  DW_TAG_typedef, DW_AT_name("clock_t")
	.dwattr $C$DW$T$120, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$120, DW_AT_language(DW_LANG_C)
$C$DW$T$71	.dwtag  DW_TAG_typedef, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$71, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$71, DW_AT_language(DW_LANG_C)
$C$DW$282	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$282, DW_AT_type(*$C$DW$T$71)
$C$DW$T$123	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$123, DW_AT_type(*$C$DW$282)
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
$C$DW$T$93	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$93, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$93, DW_AT_name("signed char")
	.dwattr $C$DW$T$93, DW_AT_byte_size(0x01)
$C$DW$283	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$283, DW_AT_type(*$C$DW$T$93)
$C$DW$T$94	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$94, DW_AT_type(*$C$DW$283)
$C$DW$T$95	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$95, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$T$95, DW_AT_address_class(0x17)

$C$DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$42, DW_AT_name("seed")
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x02)
$C$DW$284	.dwtag  DW_TAG_member
	.dwattr $C$DW$284, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$284, DW_AT_name("seed_input")
	.dwattr $C$DW$284, DW_AT_TI_symbol_name("_seed_input")
	.dwattr $C$DW$284, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$284, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$285	.dwtag  DW_TAG_member
	.dwattr $C$DW$285, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$285, DW_AT_name("isIncreasing")
	.dwattr $C$DW$285, DW_AT_TI_symbol_name("_isIncreasing")
	.dwattr $C$DW$285, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$285, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$42

$C$DW$T$138	.dwtag  DW_TAG_typedef, DW_AT_name("seed")
	.dwattr $C$DW$T$138, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$138, DW_AT_language(DW_LANG_C)

$C$DW$T$139	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$139, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$T$139, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$139, DW_AT_byte_size(0x14)
$C$DW$286	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$286, DW_AT_upper_bound(0x09)
	.dwendtag $C$DW$T$139

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

$C$DW$287	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$287, DW_AT_location[DW_OP_reg0]
$C$DW$288	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$288, DW_AT_location[DW_OP_reg1]
$C$DW$289	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$289, DW_AT_location[DW_OP_reg2]
$C$DW$290	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$290, DW_AT_location[DW_OP_reg3]
$C$DW$291	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$291, DW_AT_location[DW_OP_reg4]
$C$DW$292	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$292, DW_AT_location[DW_OP_reg5]
$C$DW$293	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$293, DW_AT_location[DW_OP_reg6]
$C$DW$294	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$294, DW_AT_location[DW_OP_reg7]
$C$DW$295	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$295, DW_AT_location[DW_OP_reg8]
$C$DW$296	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$296, DW_AT_location[DW_OP_reg9]
$C$DW$297	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$297, DW_AT_location[DW_OP_reg10]
$C$DW$298	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$298, DW_AT_location[DW_OP_reg11]
$C$DW$299	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$299, DW_AT_location[DW_OP_reg12]
$C$DW$300	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$300, DW_AT_location[DW_OP_reg13]
$C$DW$301	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$301, DW_AT_location[DW_OP_reg14]
$C$DW$302	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$302, DW_AT_location[DW_OP_reg15]
$C$DW$303	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$303, DW_AT_location[DW_OP_reg16]
$C$DW$304	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$304, DW_AT_location[DW_OP_reg17]
$C$DW$305	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$305, DW_AT_location[DW_OP_reg18]
$C$DW$306	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$306, DW_AT_location[DW_OP_reg19]
$C$DW$307	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$307, DW_AT_location[DW_OP_reg20]
$C$DW$308	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$308, DW_AT_location[DW_OP_reg21]
$C$DW$309	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$309, DW_AT_location[DW_OP_reg22]
$C$DW$310	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$310, DW_AT_location[DW_OP_reg23]
$C$DW$311	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$311, DW_AT_location[DW_OP_reg24]
$C$DW$312	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$312, DW_AT_location[DW_OP_reg25]
$C$DW$313	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$313, DW_AT_location[DW_OP_reg26]
$C$DW$314	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$314, DW_AT_location[DW_OP_reg27]
$C$DW$315	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$315, DW_AT_location[DW_OP_reg28]
$C$DW$316	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$316, DW_AT_location[DW_OP_reg29]
$C$DW$317	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$317, DW_AT_location[DW_OP_reg30]
$C$DW$318	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$318, DW_AT_location[DW_OP_reg31]
$C$DW$319	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$319, DW_AT_location[DW_OP_regx 0x20]
$C$DW$320	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$320, DW_AT_location[DW_OP_regx 0x21]
$C$DW$321	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$321, DW_AT_location[DW_OP_regx 0x22]
$C$DW$322	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$322, DW_AT_location[DW_OP_regx 0x23]
$C$DW$323	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$323, DW_AT_location[DW_OP_regx 0x24]
$C$DW$324	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$324, DW_AT_location[DW_OP_regx 0x25]
$C$DW$325	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$325, DW_AT_location[DW_OP_regx 0x26]
$C$DW$326	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$326, DW_AT_location[DW_OP_regx 0x27]
$C$DW$327	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$327, DW_AT_location[DW_OP_regx 0x28]
$C$DW$328	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$328, DW_AT_location[DW_OP_regx 0x29]
$C$DW$329	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$329, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$330	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$330, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$331	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$331, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$332	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$332, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$333	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$333, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$334	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$334, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$335	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$335, DW_AT_location[DW_OP_regx 0x30]
$C$DW$336	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$336, DW_AT_location[DW_OP_regx 0x31]
$C$DW$337	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$337, DW_AT_location[DW_OP_regx 0x32]
$C$DW$338	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$338, DW_AT_location[DW_OP_regx 0x33]
$C$DW$339	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$339, DW_AT_location[DW_OP_regx 0x34]
$C$DW$340	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$340, DW_AT_location[DW_OP_regx 0x35]
$C$DW$341	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$341, DW_AT_location[DW_OP_regx 0x36]
$C$DW$342	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$342, DW_AT_location[DW_OP_regx 0x37]
$C$DW$343	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$343, DW_AT_location[DW_OP_regx 0x38]
$C$DW$344	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$344, DW_AT_location[DW_OP_regx 0x39]
$C$DW$345	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$345, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$346	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$346, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$347	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$347, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$348	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$348, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$349	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$349, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$350	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$350, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$351	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$351, DW_AT_location[DW_OP_regx 0x40]
$C$DW$352	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$352, DW_AT_location[DW_OP_regx 0x41]
$C$DW$353	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$353, DW_AT_location[DW_OP_regx 0x42]
$C$DW$354	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$354, DW_AT_location[DW_OP_regx 0x43]
$C$DW$355	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$355, DW_AT_location[DW_OP_regx 0x44]
$C$DW$356	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$356, DW_AT_location[DW_OP_regx 0x45]
$C$DW$357	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$357, DW_AT_location[DW_OP_regx 0x46]
$C$DW$358	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$358, DW_AT_location[DW_OP_regx 0x47]
$C$DW$359	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$359, DW_AT_location[DW_OP_regx 0x48]
$C$DW$360	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$360, DW_AT_location[DW_OP_regx 0x49]
$C$DW$361	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$361, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$362	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$362, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$363	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$363, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$364	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$364, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$365	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$365, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$366	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$366, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$367	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$367, DW_AT_location[DW_OP_regx 0x50]
$C$DW$368	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$368, DW_AT_location[DW_OP_regx 0x51]
$C$DW$369	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$369, DW_AT_location[DW_OP_regx 0x52]
$C$DW$370	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$370, DW_AT_location[DW_OP_regx 0x53]
$C$DW$371	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$371, DW_AT_location[DW_OP_regx 0x54]
$C$DW$372	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$372, DW_AT_location[DW_OP_regx 0x55]
$C$DW$373	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$373, DW_AT_location[DW_OP_regx 0x56]
$C$DW$374	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$374, DW_AT_location[DW_OP_regx 0x57]
$C$DW$375	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$375, DW_AT_location[DW_OP_regx 0x58]
$C$DW$376	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$376, DW_AT_location[DW_OP_regx 0x59]
$C$DW$377	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$377, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$378	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$378, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

