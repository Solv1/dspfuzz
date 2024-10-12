;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                        Unix v4.4.1 *
;* Date/Time created: Sat Oct 12 13:49:47 2024                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("./src/fuzz.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen Unix v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/santiago/Research/DSPFuzz/on_board")
;******************************************************************************
;* CINIT RECORDS                                                              *
;******************************************************************************
	.sect	".cinit"
	.align	1
	.field  	1,16
	.field  	_current_seed_num+0,24
	.field  	0,8
	.field	0,16			; _current_seed_num @ 0

	.sect	".cinit"
	.align	1
	.field  	$C$IR_1,16
	.field  	_output_buffer+0,24
	.field  	0,8
	.field	0,16			; _output_buffer[0] @ 0
$C$IR_1:	.set	1

	.sect	".cinit"
	.align	1
	.field  	$C$IR_2,16
	.field  	_coverage_map+0,24
	.field  	0,8
	.field	0,16			; _coverage_map[0] @ 0
$C$IR_2:	.set	1

	.sect	".cinit"
	.align	1
	.field  	1,16
	.field  	_return_address+0,24
	.field  	0,8
	.field	0,16			; _return_address @ 0

	.sect	".cinit"
	.align	1
	.field  	1,16
	.field  	_seed_number+0,24
	.field  	0,8
	.field	0,16			; _seed_number @ 0

	.sect	".cinit"
	.align	1
	.field  	2,16
	.field  	_sut_start_address+0,24
	.field  	0,8
	.field	0,32			; _sut_start_address @ 0

	.sect	".cinit"
	.align	1
	.field  	1,16
	.field  	_seed_head+0,24
	.field  	0,8
	.field	0,16			; _seed_head @ 0

	.sect	".cinit"
	.align	1
	.field  	1,16
	.field  	_seed_tail+0,24
	.field  	0,8
	.field	14,16			; _seed_tail @ 0

	.sect	".cinit"
	.align	1
	.field  	1,16
	.field  	_cov_function_enter+0,24
	.field  	0,8
	.field	0,16			; _cov_function_enter @ 0

	.sect	".cinit"
	.align	1
	.field  	1,16
	.field  	_isIncreasing+0,24
	.field  	0,8
	.field	0,16			; _isIncreasing @ 0

	.sect	".cinit"
	.align	1
	.field  	1,16
	.field  	_stage_cycles+0,24
	.field  	0,8
	.field	0,16			; _stage_cycles @ 0

	.sect	".cinit"
	.align	1
	.field  	1,16
	.field  	_pool_loops+0,24
	.field  	0,8
	.field	0,16			; _pool_loops @ 0

	.sect	".cinit"
	.align	1
	.field  	1,16
	.field  	_iterations+0,24
	.field  	0,8
	.field	0,16			; _iterations @ 0

	.sect	".cinit"
	.align	1
	.field  	1,16
	.field  	_mutation_degression+0,24
	.field  	0,8
	.field	1,16			; _mutation_degression @ 0

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


$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("_assert")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("__assert")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$10)
$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$65)
	.dwendtag $C$DW$1


$C$DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("memcpy")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_memcpy")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$4, DW_AT_declaration
	.dwattr $C$DW$4, DW_AT_external
$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$3)
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$56)
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$57)
	.dwendtag $C$DW$4


$C$DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("rand")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_rand")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$8, DW_AT_declaration
	.dwattr $C$DW$8, DW_AT_external

$C$DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("srand")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_srand")
	.dwattr $C$DW$9, DW_AT_declaration
	.dwattr $C$DW$9, DW_AT_external
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$11)
	.dwendtag $C$DW$9


$C$DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("calloc")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_calloc")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$11, DW_AT_declaration
	.dwattr $C$DW$11, DW_AT_external
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$57)
$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$57)
	.dwendtag $C$DW$11


$C$DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("exit")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_exit")
	.dwattr $C$DW$14, DW_AT_declaration
	.dwattr $C$DW$14, DW_AT_external
$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$14


$C$DW$16	.dwtag  DW_TAG_subprogram, DW_AT_name("time")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_time")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$16, DW_AT_declaration
	.dwattr $C$DW$16, DW_AT_external
$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$130)
	.dwendtag $C$DW$16


$C$DW$18	.dwtag  DW_TAG_subprogram, DW_AT_name("GPT_open")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_GPT_open")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$18, DW_AT_declaration
	.dwattr $C$DW$18, DW_AT_external
$C$DW$19	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$23)
$C$DW$20	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$41)
$C$DW$21	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$45)
	.dwendtag $C$DW$18


$C$DW$22	.dwtag  DW_TAG_subprogram, DW_AT_name("GPT_reset")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_GPT_reset")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$22, DW_AT_declaration
	.dwattr $C$DW$22, DW_AT_external
$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$42)
	.dwendtag $C$DW$22


$C$DW$24	.dwtag  DW_TAG_subprogram, DW_AT_name("GPT_start")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_GPT_start")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$24, DW_AT_declaration
	.dwattr $C$DW$24, DW_AT_external
$C$DW$25	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$42)
	.dwendtag $C$DW$24


$C$DW$26	.dwtag  DW_TAG_subprogram, DW_AT_name("GPT_stop")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_GPT_stop")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$26, DW_AT_declaration
	.dwattr $C$DW$26, DW_AT_external
$C$DW$27	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$42)
	.dwendtag $C$DW$26


$C$DW$28	.dwtag  DW_TAG_subprogram, DW_AT_name("GPT_config")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_GPT_config")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$28, DW_AT_declaration
	.dwattr $C$DW$28, DW_AT_external
$C$DW$29	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$42)
$C$DW$30	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$50)
	.dwendtag $C$DW$28


$C$DW$31	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_plug")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_IRQ_plug")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$31, DW_AT_declaration
	.dwattr $C$DW$31, DW_AT_external
$C$DW$32	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$19)
$C$DW$33	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$73)
	.dwendtag $C$DW$31


$C$DW$34	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_clear")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_IRQ_clear")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$34, DW_AT_declaration
	.dwattr $C$DW$34, DW_AT_external
$C$DW$35	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$19)
	.dwendtag $C$DW$34


$C$DW$36	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_clearAll")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_IRQ_clearAll")
	.dwattr $C$DW$36, DW_AT_declaration
	.dwattr $C$DW$36, DW_AT_external

$C$DW$37	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_disableAll")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_IRQ_disableAll")
	.dwattr $C$DW$37, DW_AT_declaration
	.dwattr $C$DW$37, DW_AT_external

$C$DW$38	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_enable")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_IRQ_enable")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$38, DW_AT_declaration
	.dwattr $C$DW$38, DW_AT_external
$C$DW$39	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$19)
	.dwendtag $C$DW$38


$C$DW$40	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_setVecs")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_IRQ_setVecs")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$40, DW_AT_declaration
	.dwattr $C$DW$40, DW_AT_external
$C$DW$41	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$93)
	.dwendtag $C$DW$40


$C$DW$42	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_globalDisable")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_IRQ_globalDisable")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$42, DW_AT_declaration
	.dwattr $C$DW$42, DW_AT_external

$C$DW$43	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_globalEnable")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_IRQ_globalEnable")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$43, DW_AT_declaration
	.dwattr $C$DW$43, DW_AT_external

$C$DW$44	.dwtag  DW_TAG_subprogram, DW_AT_name("VECSTART")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_VECSTART")
	.dwattr $C$DW$44, DW_AT_declaration
	.dwattr $C$DW$44, DW_AT_external

$C$DW$45	.dwtag  DW_TAG_subprogram, DW_AT_name("printf")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_printf")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$45, DW_AT_declaration
	.dwattr $C$DW$45, DW_AT_external
$C$DW$46	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$65)
$C$DW$47	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag $C$DW$45


$C$DW$48	.dwtag  DW_TAG_subprogram, DW_AT_name("memset")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_memset")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$48, DW_AT_declaration
	.dwattr $C$DW$48, DW_AT_external
$C$DW$49	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$3)
$C$DW$50	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$10)
$C$DW$51	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$57)
	.dwendtag $C$DW$48


$C$DW$52	.dwtag  DW_TAG_subprogram, DW_AT_name("_setjmp")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("__setjmp")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$52, DW_AT_declaration
	.dwattr $C$DW$52, DW_AT_external
$C$DW$53	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$74)
	.dwendtag $C$DW$52


$C$DW$54	.dwtag  DW_TAG_subprogram, DW_AT_name("longjmp")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_longjmp")
	.dwattr $C$DW$54, DW_AT_declaration
	.dwattr $C$DW$54, DW_AT_external
$C$DW$55	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$74)
$C$DW$56	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$54


$C$DW$57	.dwtag  DW_TAG_subprogram, DW_AT_name("sonar_test")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_sonar_test")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$57, DW_AT_declaration
	.dwattr $C$DW$57, DW_AT_external
$C$DW$58	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$82)
$C$DW$59	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$81)
	.dwendtag $C$DW$57

	.global	_local_pool
_local_pool:	.usect	".program_sandbox",1920,0,0
$C$DW$60	.dwtag  DW_TAG_variable, DW_AT_name("local_pool")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_local_pool")
	.dwattr $C$DW$60, DW_AT_location[DW_OP_addr _local_pool]
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$60, DW_AT_external
	.global	_current_seed_num
	.bss	_current_seed_num,1,0,0
$C$DW$61	.dwtag  DW_TAG_variable, DW_AT_name("current_seed_num")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_current_seed_num")
	.dwattr $C$DW$61, DW_AT_location[DW_OP_addr _current_seed_num]
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$61, DW_AT_external
	.global	_current_input
	.bss	_current_input,2,0,2
$C$DW$62	.dwtag  DW_TAG_variable, DW_AT_name("current_input")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_current_input")
	.dwattr $C$DW$62, DW_AT_location[DW_OP_addr _current_input]
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$62, DW_AT_external
	.global	_output_buffer
_output_buffer:	.usect	".data_sandbox",128,0,0
$C$DW$63	.dwtag  DW_TAG_variable, DW_AT_name("output_buffer")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_output_buffer")
	.dwattr $C$DW$63, DW_AT_location[DW_OP_addr _output_buffer]
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$63, DW_AT_external
	.global	_coverage_map
	.bss	_coverage_map,200,0,0
$C$DW$64	.dwtag  DW_TAG_variable, DW_AT_name("coverage_map")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_coverage_map")
	.dwattr $C$DW$64, DW_AT_location[DW_OP_addr _coverage_map]
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$124)
	.dwattr $C$DW$64, DW_AT_external
	.global	_coverage_map_head
	.bss	_coverage_map_head,2,0,2
$C$DW$65	.dwtag  DW_TAG_variable, DW_AT_name("coverage_map_head")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_coverage_map_head")
	.dwattr $C$DW$65, DW_AT_location[DW_OP_addr _coverage_map_head]
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$65, DW_AT_external
	.global	_return_address
	.bss	_return_address,1,0,0
$C$DW$66	.dwtag  DW_TAG_variable, DW_AT_name("return_address")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_return_address")
	.dwattr $C$DW$66, DW_AT_location[DW_OP_addr _return_address]
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$66, DW_AT_external
	.global	_retVal
	.bss	_retVal,1,0,0
$C$DW$67	.dwtag  DW_TAG_variable, DW_AT_name("retVal")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_retVal")
	.dwattr $C$DW$67, DW_AT_location[DW_OP_addr _retVal]
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$67, DW_AT_external
	.global	_seed_number
	.bss	_seed_number,1,0,0
$C$DW$68	.dwtag  DW_TAG_variable, DW_AT_name("seed_number")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_seed_number")
	.dwattr $C$DW$68, DW_AT_location[DW_OP_addr _seed_number]
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$68, DW_AT_external
	.global	_sut_start_address
	.bss	_sut_start_address,2,0,2
$C$DW$69	.dwtag  DW_TAG_variable, DW_AT_name("sut_start_address")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_sut_start_address")
	.dwattr $C$DW$69, DW_AT_location[DW_OP_addr _sut_start_address]
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$69, DW_AT_external
	.global	_seed_head
	.bss	_seed_head,1,0,0
$C$DW$70	.dwtag  DW_TAG_variable, DW_AT_name("seed_head")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_seed_head")
	.dwattr $C$DW$70, DW_AT_location[DW_OP_addr _seed_head]
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$70, DW_AT_external
	.global	_seed_tail
	.bss	_seed_tail,1,0,0
$C$DW$71	.dwtag  DW_TAG_variable, DW_AT_name("seed_tail")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_seed_tail")
	.dwattr $C$DW$71, DW_AT_location[DW_OP_addr _seed_tail]
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$71, DW_AT_external
	.global	_cov_function_enter
	.bss	_cov_function_enter,1,0,0
$C$DW$72	.dwtag  DW_TAG_variable, DW_AT_name("cov_function_enter")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_cov_function_enter")
	.dwattr $C$DW$72, DW_AT_location[DW_OP_addr _cov_function_enter]
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$72, DW_AT_external
	.global	_isIncreasing
	.bss	_isIncreasing,1,0,0
$C$DW$73	.dwtag  DW_TAG_variable, DW_AT_name("isIncreasing")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_isIncreasing")
	.dwattr $C$DW$73, DW_AT_location[DW_OP_addr _isIncreasing]
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$73, DW_AT_external
	.global	_saved_context
	.bss	_saved_context,16,0,2
$C$DW$74	.dwtag  DW_TAG_variable, DW_AT_name("saved_context")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_saved_context")
	.dwattr $C$DW$74, DW_AT_location[DW_OP_addr _saved_context]
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$128)
	.dwattr $C$DW$74, DW_AT_external
	.global	_stage_cycles
	.bss	_stage_cycles,1,0,0
$C$DW$75	.dwtag  DW_TAG_variable, DW_AT_name("stage_cycles")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_stage_cycles")
	.dwattr $C$DW$75, DW_AT_location[DW_OP_addr _stage_cycles]
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$75, DW_AT_external
	.global	_pool_loops
	.bss	_pool_loops,1,0,0
$C$DW$76	.dwtag  DW_TAG_variable, DW_AT_name("pool_loops")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_pool_loops")
	.dwattr $C$DW$76, DW_AT_location[DW_OP_addr _pool_loops]
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$76, DW_AT_external
	.global	_iterations
	.bss	_iterations,1,0,0
$C$DW$77	.dwtag  DW_TAG_variable, DW_AT_name("iterations")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_iterations")
	.dwattr $C$DW$77, DW_AT_location[DW_OP_addr _iterations]
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$77, DW_AT_external
	.global	_mutation_degression
	.bss	_mutation_degression,1,0,0
$C$DW$78	.dwtag  DW_TAG_variable, DW_AT_name("mutation_degression")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_mutation_degression")
	.dwattr $C$DW$78, DW_AT_location[DW_OP_addr _mutation_degression]
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$78, DW_AT_external
	.global	_cpuCycleCount
	.bss	_cpuCycleCount,2,0,2
$C$DW$79	.dwtag  DW_TAG_variable, DW_AT_name("cpuCycleCount")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_cpuCycleCount")
	.dwattr $C$DW$79, DW_AT_location[DW_OP_addr _cpuCycleCount]
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$79, DW_AT_external
	.global	_sysClk
	.bss	_sysClk,2,0,2
$C$DW$80	.dwtag  DW_TAG_variable, DW_AT_name("sysClk")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_sysClk")
	.dwattr $C$DW$80, DW_AT_location[DW_OP_addr _sysClk]
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$80, DW_AT_external
	.global	_count
	.bss	_count,2,0,2
$C$DW$81	.dwtag  DW_TAG_variable, DW_AT_name("count")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_count")
	.dwattr $C$DW$81, DW_AT_location[DW_OP_addr _count]
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$81, DW_AT_external
	.global	_isTest
	.bss	_isTest,1,0,0
$C$DW$82	.dwtag  DW_TAG_variable, DW_AT_name("isTest")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_isTest")
	.dwattr $C$DW$82, DW_AT_location[DW_OP_addr _isTest]
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$82, DW_AT_external
;	/home/santiago/Research/Ti/C55_Tools/acp55 -@/tmp/410425ECKht 
	.sect	".text:retain"
	.global	_fuzzer_isr

$C$DW$83	.dwtag  DW_TAG_subprogram, DW_AT_name("fuzzer_isr")
	.dwattr $C$DW$83, DW_AT_low_pc(_fuzzer_isr)
	.dwattr $C$DW$83, DW_AT_high_pc(0x00)
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_fuzzer_isr")
	.dwattr $C$DW$83, DW_AT_external
	.dwattr $C$DW$83, DW_AT_TI_begin_file("./src/fuzz.c")
	.dwattr $C$DW$83, DW_AT_TI_begin_line(0x6f)
	.dwattr $C$DW$83, DW_AT_TI_begin_column(0x12)
	.dwattr $C$DW$83, DW_AT_TI_interrupt
	.dwattr $C$DW$83, DW_AT_TI_max_frame_size(0x31)
	.dwpsn	file "./src/fuzz.c",line 117,column 1,is_stmt,address _fuzzer_isr

	.dwfde $C$DW$CIE, _fuzzer_isr
;*******************************************************************************
;* INTERRUPT NAME: fuzzer_isr                                                  *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,AC2,AC2,AC3,AC3,T0,T1,AR0,AR1,AR2,   *
;*                        AR3,XAR3,AR4,SP,BKC,BK03,BK47,ST1,ST2,ST3,BRC0,RSA0, *
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
        AADD #-3, SP
	.dwcfi	cfa_offset, 49
	.dwpsn	file "./src/fuzz.c",line 118,column 5,is_stmt
        BCLR ST3_SATA
        BSET ST3_SMUL
$C$DW$84	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$84, DW_AT_low_pc(0x00)
	.dwattr $C$DW$84, DW_AT_name("_IRQ_clear")
	.dwattr $C$DW$84, DW_AT_TI_call

        CALL #_IRQ_clear ; |118| 
||      MOV #4, T0

                                        ; call occurs [#_IRQ_clear] ; |118| 
	.dwpsn	file "./src/fuzz.c",line 119,column 5,is_stmt
        MOV #1, *port(#7188) ; |119| 
	.dwpsn	file "./src/fuzz.c",line 120,column 5,is_stmt
        MOV dbl(*(#_count)), AC0 ; |120| 
        ADD #1, AC0 ; |120| 
        MOV AC0, dbl(*(#_count)) ; |120| 
	.dwpsn	file "./src/fuzz.c",line 121,column 5,is_stmt
        AMOV #100000, XAR3 ; |121| 
        MOV dbl(*(#_count)), AC0 ; |121| 
        MOV XAR3, AC1
$C$DW$85	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$85, DW_AT_low_pc(0x00)
	.dwattr $C$DW$85, DW_AT_name("__remul")
	.dwattr $C$DW$85, DW_AT_TI_call
        CALL #__remul ; |121| 
                                        ; call occurs [#__remul] ; |121| 
        BCC $C$L1,AC0 != #0 ; |121| 
                                        ; branchcc occurs ; |121| 
	.dwpsn	file "./src/fuzz.c",line 122,column 13,is_stmt
        MOV #0, AC0 ; |122| 
        MOV AC0, dbl(*(#_count)) ; |122| 
	.dwpsn	file "./src/fuzz.c",line 123,column 13,is_stmt
        AMOV #$C$FSL1, XAR3 ; |123| 
        MOV XAR3, dbl(*SP(#0))
$C$DW$86	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$86, DW_AT_low_pc(0x00)
	.dwattr $C$DW$86, DW_AT_name("_printf")
	.dwattr $C$DW$86, DW_AT_TI_call
        CALL #_printf ; |123| 
                                        ; call occurs [#_printf] ; |123| 
	.dwpsn	file "./src/fuzz.c",line 125,column 13,is_stmt
$C$DW$87	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$87, DW_AT_low_pc(0x00)
	.dwattr $C$DW$87, DW_AT_name("_IRQ_globalDisable")
	.dwattr $C$DW$87, DW_AT_TI_call
        CALL #_IRQ_globalDisable ; |125| 
                                        ; call occurs [#_IRQ_globalDisable] ; |125| 
	.dwpsn	file "./src/fuzz.c",line 126,column 13,is_stmt
$C$DW$88	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$88, DW_AT_low_pc(0x00)
	.dwattr $C$DW$88, DW_AT_name("_IRQ_clearAll")
	.dwattr $C$DW$88, DW_AT_TI_call
        CALL #_IRQ_clearAll ; |126| 
                                        ; call occurs [#_IRQ_clearAll] ; |126| 
	.dwpsn	file "./src/fuzz.c",line 127,column 13,is_stmt
$C$DW$89	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$89, DW_AT_low_pc(0x00)
	.dwattr $C$DW$89, DW_AT_name("_IRQ_disableAll")
	.dwattr $C$DW$89, DW_AT_TI_call
        CALL #_IRQ_disableAll ; |127| 
                                        ; call occurs [#_IRQ_disableAll] ; |127| 
	.dwpsn	file "./src/fuzz.c",line 128,column 13,is_stmt
$C$DW$90	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$90, DW_AT_low_pc(0x00)
	.dwattr $C$DW$90, DW_AT_name("_crash_void")
	.dwattr $C$DW$90, DW_AT_TI_call
        CALL #_crash_void ; |128| 
                                        ; call occurs [#_crash_void] ; |128| 
	.dwpsn	file "./src/fuzz.c",line 131,column 1,is_stmt
$C$L1:    
        AADD #3, SP
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
$C$DW$91	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$91, DW_AT_low_pc(0x00)
	.dwattr $C$DW$91, DW_AT_TI_return
        RETI
                                        ; return occurs
	.dwattr $C$DW$83, DW_AT_TI_end_file("./src/fuzz.c")
	.dwattr $C$DW$83, DW_AT_TI_end_line(0x83)
	.dwattr $C$DW$83, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$83

	.sect	".text:retain"
	.global	_bus_error_isr

$C$DW$92	.dwtag  DW_TAG_subprogram, DW_AT_name("bus_error_isr")
	.dwattr $C$DW$92, DW_AT_low_pc(_bus_error_isr)
	.dwattr $C$DW$92, DW_AT_high_pc(0x00)
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_bus_error_isr")
	.dwattr $C$DW$92, DW_AT_external
	.dwattr $C$DW$92, DW_AT_TI_begin_file("./src/fuzz.c")
	.dwattr $C$DW$92, DW_AT_TI_begin_line(0x85)
	.dwattr $C$DW$92, DW_AT_TI_begin_column(0x12)
	.dwattr $C$DW$92, DW_AT_TI_interrupt
	.dwattr $C$DW$92, DW_AT_TI_max_frame_size(0x31)
	.dwpsn	file "./src/fuzz.c",line 134,column 1,is_stmt,address _bus_error_isr

	.dwfde $C$DW$CIE, _bus_error_isr
;*******************************************************************************
;* INTERRUPT NAME: bus_error_isr                                               *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,AC2,AC2,AC3,AC3,T0,T1,AR0,AR1,AR2,   *
;*                        AR3,XAR3,AR4,SP,BKC,BK03,BK47,ST1,ST2,ST3,BRC0,RSA0, *
;*                        REA0,BRS1,BRC1,RSA1,REA1,CSR,RPTC,CDP,TRN0,TRN1,     *
;*                        BSA01,BSA23,BSA45,BSA67,BSAC,M40,SATA,SATD,RDM,FRCT, *
;*                        SMUL                                                 *
;*   Save On Entry Regs : AC0,AC0,AC1,AC1,AC2,AC2,AC3,AC3,T0,T1,AR0,AR1,AR2,   *
;*                        AR3,AR4,BKC,BK03,BK47,BRC0,RSA0,REA0,BRS1,BRC1,RSA1, *
;*                        REA1,CSR,RPTC,CDP,TRN0,TRN1,BSA01,BSA23,BSA45,BSA67, *
;*                        BSAC                                                 *
;*******************************************************************************
_bus_error_isr:
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
        AADD #-3, SP
	.dwcfi	cfa_offset, 49
	.dwpsn	file "./src/fuzz.c",line 136,column 5,is_stmt
        BCLR ST3_SATA

        MOV #24, T0 ; |136| 
||      BSET ST3_SMUL

$C$DW$93	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$93, DW_AT_low_pc(0x00)
	.dwattr $C$DW$93, DW_AT_name("_IRQ_clear")
	.dwattr $C$DW$93, DW_AT_TI_call
        CALL #_IRQ_clear ; |136| 
                                        ; call occurs [#_IRQ_clear] ; |136| 
	.dwpsn	file "./src/fuzz.c",line 137,column 5,is_stmt
$C$DW$94	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$94, DW_AT_low_pc(0x00)
	.dwattr $C$DW$94, DW_AT_name("_IRQ_clearAll")
	.dwattr $C$DW$94, DW_AT_TI_call
        CALL #_IRQ_clearAll ; |137| 
                                        ; call occurs [#_IRQ_clearAll] ; |137| 
	.dwpsn	file "./src/fuzz.c",line 138,column 5,is_stmt
        AMOV #$C$FSL2, XAR3 ; |138| 
        MOV XAR3, dbl(*SP(#0))
$C$DW$95	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$95, DW_AT_low_pc(0x00)
	.dwattr $C$DW$95, DW_AT_name("_printf")
	.dwattr $C$DW$95, DW_AT_TI_call
        CALL #_printf ; |138| 
                                        ; call occurs [#_printf] ; |138| 
	.dwpsn	file "./src/fuzz.c",line 139,column 5,is_stmt
$C$DW$96	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$96, DW_AT_low_pc(0x00)
	.dwattr $C$DW$96, DW_AT_name("_crash_void")
	.dwattr $C$DW$96, DW_AT_TI_call
        CALL #_crash_void ; |139| 
                                        ; call occurs [#_crash_void] ; |139| 
	.dwpsn	file "./src/fuzz.c",line 141,column 1,is_stmt
        AADD #3, SP
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
$C$DW$97	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$97, DW_AT_low_pc(0x00)
	.dwattr $C$DW$97, DW_AT_TI_return
        RETI
                                        ; return occurs
	.dwattr $C$DW$92, DW_AT_TI_end_file("./src/fuzz.c")
	.dwattr $C$DW$92, DW_AT_TI_end_line(0x8d)
	.dwattr $C$DW$92, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$92

	.sect	".text:retain"
	.global	_data_log_isr

$C$DW$98	.dwtag  DW_TAG_subprogram, DW_AT_name("data_log_isr")
	.dwattr $C$DW$98, DW_AT_low_pc(_data_log_isr)
	.dwattr $C$DW$98, DW_AT_high_pc(0x00)
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("_data_log_isr")
	.dwattr $C$DW$98, DW_AT_external
	.dwattr $C$DW$98, DW_AT_TI_begin_file("./src/fuzz.c")
	.dwattr $C$DW$98, DW_AT_TI_begin_line(0x8e)
	.dwattr $C$DW$98, DW_AT_TI_begin_column(0x12)
	.dwattr $C$DW$98, DW_AT_TI_interrupt
	.dwattr $C$DW$98, DW_AT_TI_max_frame_size(0x31)
	.dwpsn	file "./src/fuzz.c",line 143,column 1,is_stmt,address _data_log_isr

	.dwfde $C$DW$CIE, _data_log_isr
;*******************************************************************************
;* INTERRUPT NAME: data_log_isr                                                *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,AC2,AC2,AC3,AC3,T0,T1,AR0,AR1,AR2,   *
;*                        AR3,XAR3,AR4,SP,BKC,BK03,BK47,ST1,ST2,ST3,BRC0,RSA0, *
;*                        REA0,BRS1,BRC1,RSA1,REA1,CSR,RPTC,CDP,TRN0,TRN1,     *
;*                        BSA01,BSA23,BSA45,BSA67,BSAC,M40,SATA,SATD,RDM,FRCT, *
;*                        SMUL                                                 *
;*   Save On Entry Regs : AC0,AC0,AC1,AC1,AC2,AC2,AC3,AC3,T0,T1,AR0,AR1,AR2,   *
;*                        AR3,AR4,BKC,BK03,BK47,BRC0,RSA0,REA0,BRS1,BRC1,RSA1, *
;*                        REA1,CSR,RPTC,CDP,TRN0,TRN1,BSA01,BSA23,BSA45,BSA67, *
;*                        BSAC                                                 *
;*******************************************************************************
_data_log_isr:
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
        AADD #-3, SP
	.dwcfi	cfa_offset, 49
	.dwpsn	file "./src/fuzz.c",line 144,column 5,is_stmt
        BCLR ST3_SATA

        MOV #25, T0 ; |144| 
||      BSET ST3_SMUL

$C$DW$99	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$99, DW_AT_low_pc(0x00)
	.dwattr $C$DW$99, DW_AT_name("_IRQ_clear")
	.dwattr $C$DW$99, DW_AT_TI_call
        CALL #_IRQ_clear ; |144| 
                                        ; call occurs [#_IRQ_clear] ; |144| 
	.dwpsn	file "./src/fuzz.c",line 145,column 5,is_stmt
$C$DW$100	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$100, DW_AT_low_pc(0x00)
	.dwattr $C$DW$100, DW_AT_name("_IRQ_clearAll")
	.dwattr $C$DW$100, DW_AT_TI_call
        CALL #_IRQ_clearAll ; |145| 
                                        ; call occurs [#_IRQ_clearAll] ; |145| 
	.dwpsn	file "./src/fuzz.c",line 146,column 5,is_stmt
        AMOV #$C$FSL3, XAR3 ; |146| 
        MOV XAR3, dbl(*SP(#0))
$C$DW$101	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$101, DW_AT_low_pc(0x00)
	.dwattr $C$DW$101, DW_AT_name("_printf")
	.dwattr $C$DW$101, DW_AT_TI_call
        CALL #_printf ; |146| 
                                        ; call occurs [#_printf] ; |146| 
	.dwpsn	file "./src/fuzz.c",line 147,column 5,is_stmt
$C$DW$102	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$102, DW_AT_low_pc(0x00)
	.dwattr $C$DW$102, DW_AT_name("_crash_void")
	.dwattr $C$DW$102, DW_AT_TI_call
        CALL #_crash_void ; |147| 
                                        ; call occurs [#_crash_void] ; |147| 
	.dwpsn	file "./src/fuzz.c",line 148,column 1,is_stmt
        AADD #3, SP
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
$C$DW$103	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$103, DW_AT_low_pc(0x00)
	.dwattr $C$DW$103, DW_AT_TI_return
        RETI
                                        ; return occurs
	.dwattr $C$DW$98, DW_AT_TI_end_file("./src/fuzz.c")
	.dwattr $C$DW$98, DW_AT_TI_end_line(0x94)
	.dwattr $C$DW$98, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$98

	.sect	".text"
	.global	_crash_void

$C$DW$104	.dwtag  DW_TAG_subprogram, DW_AT_name("crash_void")
	.dwattr $C$DW$104, DW_AT_low_pc(_crash_void)
	.dwattr $C$DW$104, DW_AT_high_pc(0x00)
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_crash_void")
	.dwattr $C$DW$104, DW_AT_external
	.dwattr $C$DW$104, DW_AT_TI_begin_file("./src/fuzz.c")
	.dwattr $C$DW$104, DW_AT_TI_begin_line(0x96)
	.dwattr $C$DW$104, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$104, DW_AT_TI_max_frame_size(0x01)
	.dwpsn	file "./src/fuzz.c",line 150,column 18,is_stmt,address _crash_void

	.dwfde $C$DW$CIE, _crash_void
;*******************************************************************************
;* FUNCTION NAME: crash_void                                                   *
;*                                                                             *
;*   Function Uses Regs : SP,M40,SATA,SATD,RDM,FRCT,SMUL                       *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 1 word                                               *
;*                        (1 return address/alignment)                         *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_crash_void:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
	.dwpsn	file "./src/fuzz.c",line 151,column 11,is_stmt
$C$L2:    
$C$DW$L$_crash_void$2$B:
        B $C$L2   ; |151| 
                                        ; branch occurs ; |151| 
$C$DW$L$_crash_void$2$E:

$C$DW$105	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$105, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/fuzz.asm:$C$L2:1:1728755387")
	.dwattr $C$DW$105, DW_AT_TI_begin_file("./src/fuzz.c")
	.dwattr $C$DW$105, DW_AT_TI_begin_line(0x97)
	.dwattr $C$DW$105, DW_AT_TI_end_line(0x97)
$C$DW$106	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$106, DW_AT_low_pc($C$DW$L$_crash_void$2$B)
	.dwattr $C$DW$106, DW_AT_high_pc($C$DW$L$_crash_void$2$E)
	.dwendtag $C$DW$105

	.dwattr $C$DW$104, DW_AT_TI_end_file("./src/fuzz.c")
	.dwattr $C$DW$104, DW_AT_TI_end_line(0x98)
	.dwattr $C$DW$104, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$104

	.sect	".text"
	.global	_start_timer

$C$DW$107	.dwtag  DW_TAG_subprogram, DW_AT_name("start_timer")
	.dwattr $C$DW$107, DW_AT_low_pc(_start_timer)
	.dwattr $C$DW$107, DW_AT_high_pc(0x00)
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_start_timer")
	.dwattr $C$DW$107, DW_AT_external
	.dwattr $C$DW$107, DW_AT_TI_begin_file("./src/fuzz.c")
	.dwattr $C$DW$107, DW_AT_TI_begin_line(0x9a)
	.dwattr $C$DW$107, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$107, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "./src/fuzz.c",line 154,column 44,is_stmt,address _start_timer

	.dwfde $C$DW$CIE, _start_timer
$C$DW$108	.dwtag  DW_TAG_formal_parameter, DW_AT_name("timer_handle")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_timer_handle")
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$108, DW_AT_location[DW_OP_reg17]
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
$C$DW$109	.dwtag  DW_TAG_variable, DW_AT_name("timer_handle")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_timer_handle")
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$109, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$110	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$110, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$111	.dwtag  DW_TAG_variable, DW_AT_name("hwConfig")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_hwConfig")
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$111, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$112	.dwtag  DW_TAG_variable, DW_AT_name("gptObj")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_gptObj")
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$112, DW_AT_location[DW_OP_bregx 0x24 8]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./src/fuzz.c",line 163,column 5,is_stmt
        AMAR *SP(#2), XAR1
        AMAR *SP(#8), XAR0
$C$DW$113	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$113, DW_AT_low_pc(0x00)
	.dwattr $C$DW$113, DW_AT_name("_GPT_open")
	.dwattr $C$DW$113, DW_AT_TI_call

        CALL #_GPT_open ; |163| 
||      MOV #0, T0

                                        ; call occurs [#_GPT_open] ; |163| 
        MOV dbl(*SP(#0)), XAR3
        MOV XAR0, dbl(*AR3)
	.dwpsn	file "./src/fuzz.c",line 164,column 5,is_stmt
	.dwpsn	file "./src/fuzz.c",line 175,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3), XAR0
$C$DW$114	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$114, DW_AT_low_pc(0x00)
	.dwattr $C$DW$114, DW_AT_name("_GPT_reset")
	.dwattr $C$DW$114, DW_AT_TI_call
        CALL #_GPT_reset ; |175| 
                                        ; call occurs [#_GPT_reset] ; |175| 
        MOV T0, *SP(#2) ; |175| 
	.dwpsn	file "./src/fuzz.c",line 176,column 5,is_stmt
	.dwpsn	file "./src/fuzz.c",line 188,column 5,is_stmt
$C$DW$115	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$115, DW_AT_low_pc(0x00)
	.dwattr $C$DW$115, DW_AT_name("_IRQ_clearAll")
	.dwattr $C$DW$115, DW_AT_TI_call
        CALL #_IRQ_clearAll ; |188| 
                                        ; call occurs [#_IRQ_clearAll] ; |188| 
	.dwpsn	file "./src/fuzz.c",line 190,column 5,is_stmt
$C$DW$116	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$116, DW_AT_low_pc(0x00)
	.dwattr $C$DW$116, DW_AT_name("_IRQ_disableAll")
	.dwattr $C$DW$116, DW_AT_TI_call
        CALL #_IRQ_disableAll ; |190| 
                                        ; call occurs [#_IRQ_disableAll] ; |190| 
	.dwpsn	file "./src/fuzz.c",line 192,column 5,is_stmt
        MOV #(_VECSTART >> 16) << #16, AC0 ; |192| 
        OR #(_VECSTART & 0xffff), AC0, AC0 ; |192| 
$C$DW$117	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$117, DW_AT_low_pc(0x00)
	.dwattr $C$DW$117, DW_AT_name("_IRQ_setVecs")
	.dwattr $C$DW$117, DW_AT_TI_call
        CALL #_IRQ_setVecs ; |192| 
                                        ; call occurs [#_IRQ_setVecs] ; |192| 
	.dwpsn	file "./src/fuzz.c",line 193,column 5,is_stmt
        MOV #24, T0 ; |193| 
        MOV #(_bus_error_isr >> 16) << #16, AC0 ; |193| 
        OR #(_bus_error_isr & 0xffff), AC0, AC0 ; |193| 
$C$DW$118	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$118, DW_AT_low_pc(0x00)
	.dwattr $C$DW$118, DW_AT_name("_IRQ_plug")
	.dwattr $C$DW$118, DW_AT_TI_call
        CALL #_IRQ_plug ; |193| 
                                        ; call occurs [#_IRQ_plug] ; |193| 
	.dwpsn	file "./src/fuzz.c",line 195,column 5,is_stmt
        MOV #(_fuzzer_isr >> 16) << #16, AC0 ; |195| 
        OR #(_fuzzer_isr & 0xffff), AC0, AC0 ; |195| 
$C$DW$119	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$119, DW_AT_low_pc(0x00)
	.dwattr $C$DW$119, DW_AT_name("_IRQ_plug")
	.dwattr $C$DW$119, DW_AT_TI_call

        CALL #_IRQ_plug ; |195| 
||      MOV #4, T0

                                        ; call occurs [#_IRQ_plug] ; |195| 
	.dwpsn	file "./src/fuzz.c",line 196,column 5,is_stmt
        MOV #25, T0 ; |196| 
$C$DW$120	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$120, DW_AT_low_pc(0x00)
	.dwattr $C$DW$120, DW_AT_name("_IRQ_enable")
	.dwattr $C$DW$120, DW_AT_TI_call
        CALL #_IRQ_enable ; |196| 
                                        ; call occurs [#_IRQ_enable] ; |196| 
	.dwpsn	file "./src/fuzz.c",line 197,column 5,is_stmt
        MOV #24, T0 ; |197| 
$C$DW$121	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$121, DW_AT_low_pc(0x00)
	.dwattr $C$DW$121, DW_AT_name("_IRQ_enable")
	.dwattr $C$DW$121, DW_AT_TI_call
        CALL #_IRQ_enable ; |197| 
                                        ; call occurs [#_IRQ_enable] ; |197| 
	.dwpsn	file "./src/fuzz.c",line 198,column 5,is_stmt
$C$DW$122	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$122, DW_AT_low_pc(0x00)
	.dwattr $C$DW$122, DW_AT_name("_IRQ_enable")
	.dwattr $C$DW$122, DW_AT_TI_call

        CALL #_IRQ_enable ; |198| 
||      MOV #4, T0

                                        ; call occurs [#_IRQ_enable] ; |198| 
	.dwpsn	file "./src/fuzz.c",line 200,column 5,is_stmt
        MOV #1, *SP(#3) ; |200| 
	.dwpsn	file "./src/fuzz.c",line 201,column 5,is_stmt
        MOV #1, *SP(#5) ; |201| 
	.dwpsn	file "./src/fuzz.c",line 202,column 5,is_stmt
        MOV #0, *SP(#4) ; |202| 
	.dwpsn	file "./src/fuzz.c",line 203,column 5,is_stmt
        MOV dbl(*(#_sysClk)), AC0 ; |203| 
        SFTL AC0, #-2, AC0 ; |203| 
        MOV AC0, *SP(#6) ; |203| 
	.dwpsn	file "./src/fuzz.c",line 204,column 5,is_stmt
        MOV #0, *SP(#7) ; |204| 
	.dwpsn	file "./src/fuzz.c",line 206,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        AMAR *SP(#3), XAR1
        MOV dbl(*AR3), XAR0
$C$DW$123	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$123, DW_AT_low_pc(0x00)
	.dwattr $C$DW$123, DW_AT_name("_GPT_config")
	.dwattr $C$DW$123, DW_AT_TI_call
        CALL #_GPT_config ; |206| 
                                        ; call occurs [#_GPT_config] ; |206| 
        MOV T0, *SP(#2) ; |206| 
	.dwpsn	file "./src/fuzz.c",line 207,column 5,is_stmt
	.dwpsn	file "./src/fuzz.c",line 219,column 5,is_stmt
$C$DW$124	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$124, DW_AT_low_pc(0x00)
	.dwattr $C$DW$124, DW_AT_name("_IRQ_globalEnable")
	.dwattr $C$DW$124, DW_AT_TI_call
        CALL #_IRQ_globalEnable ; |219| 
                                        ; call occurs [#_IRQ_globalEnable] ; |219| 
	.dwpsn	file "./src/fuzz.c",line 221,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3), XAR0
$C$DW$125	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$125, DW_AT_low_pc(0x00)
	.dwattr $C$DW$125, DW_AT_name("_GPT_start")
	.dwattr $C$DW$125, DW_AT_TI_call
        CALL #_GPT_start ; |221| 
                                        ; call occurs [#_GPT_start] ; |221| 
	.dwpsn	file "./src/fuzz.c",line 223,column 1,is_stmt
        AADD #11, SP
	.dwcfi	cfa_offset, 1
$C$DW$126	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$126, DW_AT_low_pc(0x00)
	.dwattr $C$DW$126, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$107, DW_AT_TI_end_file("./src/fuzz.c")
	.dwattr $C$DW$107, DW_AT_TI_end_line(0xdf)
	.dwattr $C$DW$107, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$107

	.sect	".text"
	.global	_stop_timer

$C$DW$127	.dwtag  DW_TAG_subprogram, DW_AT_name("stop_timer")
	.dwattr $C$DW$127, DW_AT_low_pc(_stop_timer)
	.dwattr $C$DW$127, DW_AT_high_pc(0x00)
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_stop_timer")
	.dwattr $C$DW$127, DW_AT_external
	.dwattr $C$DW$127, DW_AT_TI_begin_file("./src/fuzz.c")
	.dwattr $C$DW$127, DW_AT_TI_begin_line(0xe2)
	.dwattr $C$DW$127, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$127, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./src/fuzz.c",line 226,column 43,is_stmt,address _stop_timer

	.dwfde $C$DW$CIE, _stop_timer
$C$DW$128	.dwtag  DW_TAG_formal_parameter, DW_AT_name("timer_handle")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_timer_handle")
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$128, DW_AT_location[DW_OP_reg17]
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
$C$DW$129	.dwtag  DW_TAG_variable, DW_AT_name("timer_handle")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_timer_handle")
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$129, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$130	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$130, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./src/fuzz.c",line 235,column 5,is_stmt
$C$DW$131	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$131, DW_AT_low_pc(0x00)
	.dwattr $C$DW$131, DW_AT_name("_IRQ_globalDisable")
	.dwattr $C$DW$131, DW_AT_TI_call
        CALL #_IRQ_globalDisable ; |235| 
                                        ; call occurs [#_IRQ_globalDisable] ; |235| 
	.dwpsn	file "./src/fuzz.c",line 237,column 5,is_stmt
$C$DW$132	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$132, DW_AT_low_pc(0x00)
	.dwattr $C$DW$132, DW_AT_name("_IRQ_clearAll")
	.dwattr $C$DW$132, DW_AT_TI_call
        CALL #_IRQ_clearAll ; |237| 
                                        ; call occurs [#_IRQ_clearAll] ; |237| 
	.dwpsn	file "./src/fuzz.c",line 239,column 5,is_stmt
$C$DW$133	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$133, DW_AT_low_pc(0x00)
	.dwattr $C$DW$133, DW_AT_name("_IRQ_disableAll")
	.dwattr $C$DW$133, DW_AT_TI_call
        CALL #_IRQ_disableAll ; |239| 
                                        ; call occurs [#_IRQ_disableAll] ; |239| 
	.dwpsn	file "./src/fuzz.c",line 241,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3), XAR0
$C$DW$134	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$134, DW_AT_low_pc(0x00)
	.dwattr $C$DW$134, DW_AT_name("_GPT_stop")
	.dwattr $C$DW$134, DW_AT_TI_call
        CALL #_GPT_stop ; |241| 
                                        ; call occurs [#_GPT_stop] ; |241| 
        MOV T0, *SP(#2) ; |241| 
	.dwpsn	file "./src/fuzz.c",line 242,column 5,is_stmt
	.dwpsn	file "./src/fuzz.c",line 254,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3), XAR0
$C$DW$135	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$135, DW_AT_low_pc(0x00)
	.dwattr $C$DW$135, DW_AT_name("_GPT_reset")
	.dwattr $C$DW$135, DW_AT_TI_call
        CALL #_GPT_reset ; |254| 
                                        ; call occurs [#_GPT_reset] ; |254| 
        MOV T0, *SP(#2) ; |254| 
	.dwpsn	file "./src/fuzz.c",line 256,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$136	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$136, DW_AT_low_pc(0x00)
	.dwattr $C$DW$136, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$127, DW_AT_TI_end_file("./src/fuzz.c")
	.dwattr $C$DW$127, DW_AT_TI_end_line(0x100)
	.dwattr $C$DW$127, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$127

	.sect	".text"
	.global	_setup

$C$DW$137	.dwtag  DW_TAG_subprogram, DW_AT_name("setup")
	.dwattr $C$DW$137, DW_AT_low_pc(_setup)
	.dwattr $C$DW$137, DW_AT_high_pc(0x00)
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("_setup")
	.dwattr $C$DW$137, DW_AT_external
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$137, DW_AT_TI_begin_file("./src/fuzz.c")
	.dwattr $C$DW$137, DW_AT_TI_begin_line(0x103)
	.dwattr $C$DW$137, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$137, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "./src/fuzz.c",line 259,column 39,is_stmt,address _setup

	.dwfde $C$DW$CIE, _setup
$C$DW$138	.dwtag  DW_TAG_formal_parameter, DW_AT_name("function_pointer")
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("_function_pointer")
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$138, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: setup                                                        *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,AR3,XAR3,SP,M40,SATA,SATD,RDM,*
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 function parameters)                              *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_setup:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$139	.dwtag  DW_TAG_variable, DW_AT_name("function_pointer")
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_function_pointer")
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$139, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#2))
	.dwpsn	file "./src/fuzz.c",line 267,column 5,is_stmt
        MOV #128, T0 ; |267| 
$C$DW$140	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$140, DW_AT_low_pc(0x00)
	.dwattr $C$DW$140, DW_AT_name("_calloc")
	.dwattr $C$DW$140, DW_AT_TI_call

        CALL #_calloc ; |267| 
||      MOV #1, T1

                                        ; call occurs [#_calloc] ; |267| 
        MOV XAR0, dbl(*(#_current_input))
	.dwpsn	file "./src/fuzz.c",line 268,column 5,is_stmt
        MOV dbl(*(#_current_input)), XAR3
        MOV XAR3, AC0
        BCC $C$L3,AC0 != #0 ; |268| 
                                        ; branchcc occurs ; |268| 
	.dwpsn	file "./src/fuzz.c",line 269,column 9,is_stmt
        AMOV #$C$FSL4, XAR3 ; |269| 
        MOV XAR3, dbl(*SP(#0))
$C$DW$141	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$141, DW_AT_low_pc(0x00)
	.dwattr $C$DW$141, DW_AT_name("_printf")
	.dwattr $C$DW$141, DW_AT_TI_call
        CALL #_printf ; |269| 
                                        ; call occurs [#_printf] ; |269| 
	.dwpsn	file "./src/fuzz.c",line 270,column 9,is_stmt
$C$DW$142	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$142, DW_AT_low_pc(0x00)
	.dwattr $C$DW$142, DW_AT_name("_exit")
	.dwattr $C$DW$142, DW_AT_TI_call

        CALL #_exit ; |270| 
||      MOV #-1, T0

                                        ; call occurs [#_exit] ; |270| 
$C$L3:    
	.dwpsn	file "./src/fuzz.c",line 273,column 5,is_stmt
        AMOV #_coverage_map, XAR0 ; |273| 
        MOV #200, T1 ; |273| 
$C$DW$143	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$143, DW_AT_low_pc(0x00)
	.dwattr $C$DW$143, DW_AT_name("_memset")
	.dwattr $C$DW$143, DW_AT_TI_call

        CALL #_memset ; |273| 
||      MOV #0, T0

                                        ; call occurs [#_memset] ; |273| 
	.dwpsn	file "./src/fuzz.c",line 274,column 5,is_stmt
        MOV #65535, *(#_coverage_map) ; |274| 
	.dwpsn	file "./src/fuzz.c",line 275,column 5,is_stmt
        MOV #1920, T1 ; |275| 
        AMOV #_local_pool, XAR0 ; |275| 
$C$DW$144	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$144, DW_AT_low_pc(0x00)
	.dwattr $C$DW$144, DW_AT_name("_memset")
	.dwattr $C$DW$144, DW_AT_TI_call

        CALL #_memset ; |275| 
||      MOV #0, T0

                                        ; call occurs [#_memset] ; |275| 
	.dwpsn	file "./src/fuzz.c",line 276,column 5,is_stmt
        AMOV #_coverage_map, XAR3 ; |276| 
        MOV XAR3, dbl(*(#_coverage_map_head))
	.dwpsn	file "./src/fuzz.c",line 277,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, dbl(*(#_sut_start_address))
	.dwpsn	file "./src/fuzz.c",line 279,column 9,is_stmt
        MOV #(_coverage_map >> 16) << #16, AC0 ; |279| 
        OR #(_coverage_map & 0xffff), AC0, AC0 ; |279| 
        BCC $C$L4,AC0 != #0 ; |279| 
                                        ; branchcc occurs ; |279| 
	.dwpsn	file "./src/fuzz.c",line 283,column 13,is_stmt
        MOV #-1, T0
        B $C$L5   ; |283| 
                                        ; branch occurs ; |283| 
$C$L4:    
	.dwpsn	file "./src/fuzz.c",line 288,column 5,is_stmt
        MOV #0, T0
$C$L5:    
	.dwpsn	file "./src/fuzz.c",line 290,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$145	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$145, DW_AT_low_pc(0x00)
	.dwattr $C$DW$145, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$137, DW_AT_TI_end_file("./src/fuzz.c")
	.dwattr $C$DW$137, DW_AT_TI_end_line(0x122)
	.dwattr $C$DW$137, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$137

	.sect	".text"
	.global	_mutator

$C$DW$146	.dwtag  DW_TAG_subprogram, DW_AT_name("mutator")
	.dwattr $C$DW$146, DW_AT_low_pc(_mutator)
	.dwattr $C$DW$146, DW_AT_high_pc(0x00)
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("_mutator")
	.dwattr $C$DW$146, DW_AT_external
	.dwattr $C$DW$146, DW_AT_TI_begin_file("./src/fuzz.c")
	.dwattr $C$DW$146, DW_AT_TI_begin_line(0x126)
	.dwattr $C$DW$146, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$146, DW_AT_TI_max_frame_size(0x0e)
	.dwpsn	file "./src/fuzz.c",line 294,column 49,is_stmt,address _mutator

	.dwfde $C$DW$CIE, _mutator
$C$DW$147	.dwtag  DW_TAG_formal_parameter, DW_AT_name("input")
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$147, DW_AT_location[DW_OP_reg17]
$C$DW$148	.dwtag  DW_TAG_formal_parameter, DW_AT_name("input_size")
	.dwattr $C$DW$148, DW_AT_TI_symbol_name("_input_size")
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$148, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: mutator                                                      *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,  *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 14 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (12 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_mutator:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-13, SP
	.dwcfi	cfa_offset, 14
$C$DW$149	.dwtag  DW_TAG_variable, DW_AT_name("input")
	.dwattr $C$DW$149, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$149, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$150	.dwtag  DW_TAG_variable, DW_AT_name("input_size")
	.dwattr $C$DW$150, DW_AT_TI_symbol_name("_input_size")
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$150, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$151	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$151, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$151, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$152	.dwtag  DW_TAG_variable, DW_AT_name("j")
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$152, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$153	.dwtag  DW_TAG_variable, DW_AT_name("rand_time")
	.dwattr $C$DW$153, DW_AT_TI_symbol_name("_rand_time")
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$153, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$154	.dwtag  DW_TAG_variable, DW_AT_name("rnd_int")
	.dwattr $C$DW$154, DW_AT_TI_symbol_name("_rnd_int")
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$154, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$155	.dwtag  DW_TAG_variable, DW_AT_name("rnd_bit")
	.dwattr $C$DW$155, DW_AT_TI_symbol_name("_rnd_bit")
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$155, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$156	.dwtag  DW_TAG_variable, DW_AT_name("rnd_value")
	.dwattr $C$DW$156, DW_AT_TI_symbol_name("_rnd_value")
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$156, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$157	.dwtag  DW_TAG_variable, DW_AT_name("start")
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("_start")
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$157, DW_AT_location[DW_OP_bregx 0x24 9]
$C$DW$158	.dwtag  DW_TAG_variable, DW_AT_name("mutation_amount")
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("_mutation_amount")
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$158, DW_AT_location[DW_OP_bregx 0x24 10]
        MOV T0, *SP(#2) ; |294| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./src/fuzz.c",line 332,column 5,is_stmt
        AMOV #0, XAR0 ; |332| 
$C$DW$159	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$159, DW_AT_low_pc(0x00)
	.dwattr $C$DW$159, DW_AT_name("_time")
	.dwattr $C$DW$159, DW_AT_TI_call
        CALL #_time ; |332| 
                                        ; call occurs [#_time] ; |332| 
        MOV AC0, *SP(#5) ; |332| 
	.dwpsn	file "./src/fuzz.c",line 333,column 5,is_stmt
$C$DW$160	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$160, DW_AT_low_pc(0x00)
	.dwattr $C$DW$160, DW_AT_name("_srand")
	.dwattr $C$DW$160, DW_AT_TI_call

        CALL #_srand ; |333| 
||      MOV AC0, T0

                                        ; call occurs [#_srand] ; |333| 
	.dwpsn	file "./src/fuzz.c",line 334,column 5,is_stmt
        MOV *SP(#2), AR1 ; |334| 
        BCC $C$L6,AR1 != #0 ; |334| 
                                        ; branchcc occurs ; |334| 
	.dwpsn	file "./src/fuzz.c",line 335,column 9,is_stmt
        AMOV #$C$FSL5, XAR3 ; |335| 
        MOV XAR3, AC0
        BCC $C$L6,AC0 != #0 ; |335| 
                                        ; branchcc occurs ; |335| 
        AMOV #$C$FSL6, XAR0 ; |335| 
$C$DW$161	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$161, DW_AT_low_pc(0x00)
	.dwattr $C$DW$161, DW_AT_name("__abort_msg")
	.dwattr $C$DW$161, DW_AT_TI_call
        CALL #__abort_msg ; |335| 
                                        ; call occurs [#__abort_msg] ; |335| 
$C$L6:    
	.dwpsn	file "./src/fuzz.c",line 350,column 5,is_stmt
        MOV #2, AR2
        MOV *(#_mutation_degression), AR1 ; |350| 
        CMPU AR1 <= AR2, TC1 ; |350| 
        BCC $C$L8,TC1 ; |350| 
                                        ; branchcc occurs ; |350| 
	.dwpsn	file "./src/fuzz.c",line 352,column 9,is_stmt
        MOV *SP(#2), T0 ; |352| 
        MOV *(#_mutation_degression), T1 ; |352| 
$C$DW$162	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$162, DW_AT_low_pc(0x00)
	.dwattr $C$DW$162, DW_AT_name("__divu")
	.dwattr $C$DW$162, DW_AT_TI_call
        CALL #__divu ; |352| 
                                        ; call occurs [#__divu] ; |352| 

        MOV *SP(#2), T0 ; |352| 
||      MOV T0, T1 ; |352| 

$C$DW$163	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$163, DW_AT_low_pc(0x00)
	.dwattr $C$DW$163, DW_AT_name("__divu")
	.dwattr $C$DW$163, DW_AT_TI_call
        CALL #__divu ; |352| 
                                        ; call occurs [#__divu] ; |352| 
        MOV T0, *SP(#10) ; |352| 
	.dwpsn	file "./src/fuzz.c",line 353,column 9,is_stmt
        MOV T0, AR1
        BCC $C$L7,AR1 != #0 ; |353| 
                                        ; branchcc occurs ; |353| 
	.dwpsn	file "./src/fuzz.c",line 354,column 13,is_stmt
        MOV #1, *SP(#10) ; |354| 
$C$L7:    
	.dwpsn	file "./src/fuzz.c",line 362,column 9,is_stmt
        MOV #0, *SP(#9) ; |362| 
	.dwpsn	file "./src/fuzz.c",line 363,column 5,is_stmt
        B $C$L9   ; |363| 
                                        ; branch occurs ; |363| 
$C$L8:    
	.dwpsn	file "./src/fuzz.c",line 365,column 9,is_stmt
        MOV #1, *SP(#10) ; |365| 
	.dwpsn	file "./src/fuzz.c",line 367,column 9,is_stmt
        MOV #0, *SP(#9) ; |367| 
$C$L9:    
	.dwpsn	file "./src/fuzz.c",line 380,column 5,is_stmt
        MOV *(#_stage_cycles), AR1 ; |380| 
        CMPU AR1 >= AR2, TC1 ; |380| 
        BCC $C$L13,TC1 ; |380| 
                                        ; branchcc occurs ; |380| 
	.dwpsn	file "./src/fuzz.c",line 381,column 13,is_stmt
        MOV *SP(#9), AR1 ; |381| 
        MOV AR1, *SP(#3) ; |381| 
	.dwpsn	file "./src/fuzz.c",line 381,column 24,is_stmt
        MOV *SP(#3), AR2 ; |381| 
        MOV *SP(#2), AR1 ; |381| 
        CMPU AR2 >= AR1, TC1 ; |381| 
        BCC $C$L48,TC1 ; |381| 
                                        ; branchcc occurs ; |381| 
$C$L10:    
$C$DW$L$_mutator$11$B:
	.dwpsn	file "./src/fuzz.c",line 383,column 17,is_stmt
        MOV *(#_stage_cycles), AR1 ; |383| 
        AND #0x0001, AR1, AC0 ; |383| 
        MOV AC0, *SP(#4) ; |383| 
	.dwpsn	file "./src/fuzz.c",line 383,column 39,is_stmt

        MOV AC0, AR1 ; |383| 
||      MOV #16, AR2 ; |383| 

        CMPU AR1 >= AR2, TC1 ; |383| 
        BCC $C$L12,TC1 ; |383| 
                                        ; branchcc occurs ; |383| 
$C$DW$L$_mutator$11$E:
$C$L11:    
$C$DW$L$_mutator$12$B:
	.dwpsn	file "./src/fuzz.c",line 384,column 17,is_stmt
        MOV *SP(#3), T0 ; |384| 
        MOV dbl(*SP(#0)), XAR3

        MOV #1, AC0
||      MOV *SP(#4), T1 ; |384| 

        SFTS AC0, T1, AC0 ; |384| 
        XOR *AR3(T0), AC0, AR1 ; |384| 
        MOV AR1, *AR3(T0) ; |384| 
	.dwpsn	file "./src/fuzz.c",line 385,column 17,is_stmt
        ADD #1, *SP(#4) ; |385| 
	.dwpsn	file "./src/fuzz.c",line 383,column 47,is_stmt
        ADD #1, *SP(#4) ; |383| 
	.dwpsn	file "./src/fuzz.c",line 383,column 39,is_stmt
        MOV *SP(#4), AR1 ; |383| 
        CMPU AR1 < AR2, TC1 ; |383| 
        BCC $C$L11,TC1 ; |383| 
                                        ; branchcc occurs ; |383| 
$C$DW$L$_mutator$12$E:
$C$L12:    
$C$DW$L$_mutator$13$B:
	.dwpsn	file "./src/fuzz.c",line 381,column 40,is_stmt
        MOV *SP(#10), AR1 ; |381| 
        ADD *SP(#3), AR1, AR1 ; |381| 
        MOV AR1, *SP(#3) ; |381| 
	.dwpsn	file "./src/fuzz.c",line 381,column 24,is_stmt
        MOV *SP(#3), AR2 ; |381| 
        MOV *SP(#2), AR1 ; |381| 
        CMPU AR2 < AR1, TC1 ; |381| 
        BCC $C$L10,TC1 ; |381| 
                                        ; branchcc occurs ; |381| 
$C$DW$L$_mutator$13$E:
	.dwpsn	file "./src/fuzz.c",line 388,column 5,is_stmt
        B $C$L48  ; |388| 
                                        ; branch occurs ; |388| 
$C$L13:    
	.dwpsn	file "./src/fuzz.c",line 390,column 10,is_stmt
        MOV #4, AR2
        CMPU AR1 >= AR2, TC1 ; |390| 
        BCC $C$L17,TC1 ; |390| 
                                        ; branchcc occurs ; |390| 
	.dwpsn	file "./src/fuzz.c",line 391,column 13,is_stmt
        MOV *SP(#9), AR1 ; |391| 
        MOV AR1, *SP(#3) ; |391| 
	.dwpsn	file "./src/fuzz.c",line 391,column 24,is_stmt
        MOV *SP(#3), AR2 ; |391| 
        MOV *SP(#2), AR1 ; |391| 
        CMPU AR2 >= AR1, TC1 ; |391| 
        BCC $C$L48,TC1 ; |391| 
                                        ; branchcc occurs ; |391| 
$C$L14:    
$C$DW$L$_mutator$17$B:
	.dwpsn	file "./src/fuzz.c",line 393,column 17,is_stmt
        MOV *(#_stage_cycles), AR1 ; |393| 
        AND #0x0001, AR1, AC0 ; |393| 
        MOV AC0, *SP(#4) ; |393| 
	.dwpsn	file "./src/fuzz.c",line 393,column 39,is_stmt

        MOV AC0, AR1 ; |393| 
||      MOV #16, AR2 ; |393| 

        CMPU AR1 >= AR2, TC1 ; |393| 
        BCC $C$L16,TC1 ; |393| 
                                        ; branchcc occurs ; |393| 
$C$DW$L$_mutator$17$E:
$C$L15:    
$C$DW$L$_mutator$18$B:
	.dwpsn	file "./src/fuzz.c",line 394,column 17,is_stmt
        MOV *SP(#3), T0 ; |394| 
        MOV dbl(*SP(#0)), XAR3

        MOV #1, AC0
||      MOV *SP(#4), T1 ; |394| 

        SFTS AC0, T1, AC0 ; |394| 
        XOR *AR3(T0), AC0, AR1 ; |394| 
        MOV AR1, *AR3(T0) ; |394| 
	.dwpsn	file "./src/fuzz.c",line 395,column 17,is_stmt
        MOV *SP(#3), T0 ; |395| 
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#4), T1 ; |395| 

        ADD #1, T1 ; |395| 
||      MOV #1, AC0

        SFTS AC0, T1, AC0 ; |395| 
        XOR *AR3(T0), AC0, AR1 ; |395| 
        MOV AR1, *AR3(T0) ; |395| 
	.dwpsn	file "./src/fuzz.c",line 396,column 17,is_stmt
        ADD #2, *SP(#4) ; |396| 
	.dwpsn	file "./src/fuzz.c",line 393,column 47,is_stmt
        ADD #1, *SP(#4) ; |393| 
	.dwpsn	file "./src/fuzz.c",line 393,column 39,is_stmt
        MOV *SP(#4), AR1 ; |393| 
        CMPU AR1 < AR2, TC1 ; |393| 
        BCC $C$L15,TC1 ; |393| 
                                        ; branchcc occurs ; |393| 
$C$DW$L$_mutator$18$E:
$C$L16:    
$C$DW$L$_mutator$19$B:
	.dwpsn	file "./src/fuzz.c",line 391,column 40,is_stmt
        MOV *SP(#10), AR1 ; |391| 
        ADD *SP(#3), AR1, AR1 ; |391| 
        MOV AR1, *SP(#3) ; |391| 
	.dwpsn	file "./src/fuzz.c",line 391,column 24,is_stmt
        MOV *SP(#3), AR2 ; |391| 
        MOV *SP(#2), AR1 ; |391| 
        CMPU AR2 < AR1, TC1 ; |391| 
        BCC $C$L14,TC1 ; |391| 
                                        ; branchcc occurs ; |391| 
$C$DW$L$_mutator$19$E:
	.dwpsn	file "./src/fuzz.c",line 399,column 5,is_stmt
        B $C$L48  ; |399| 
                                        ; branch occurs ; |399| 
$C$L17:    
	.dwpsn	file "./src/fuzz.c",line 400,column 10,is_stmt
        MOV #6, AR2
        CMPU AR1 >= AR2, TC1 ; |400| 
        BCC $C$L21,TC1 ; |400| 
                                        ; branchcc occurs ; |400| 
	.dwpsn	file "./src/fuzz.c",line 401,column 13,is_stmt
        MOV *SP(#9), AR1 ; |401| 
        MOV AR1, *SP(#3) ; |401| 
	.dwpsn	file "./src/fuzz.c",line 401,column 24,is_stmt
        MOV *SP(#3), AR2 ; |401| 
        MOV *SP(#2), AR1 ; |401| 
        CMPU AR2 >= AR1, TC1 ; |401| 
        BCC $C$L48,TC1 ; |401| 
                                        ; branchcc occurs ; |401| 
$C$L18:    
$C$DW$L$_mutator$23$B:
	.dwpsn	file "./src/fuzz.c",line 403,column 17,is_stmt
        MOV *(#_stage_cycles), AR1 ; |403| 
        AND #0x0001, AR1, AC0 ; |403| 
        MOV AC0, *SP(#4) ; |403| 
	.dwpsn	file "./src/fuzz.c",line 403,column 39,is_stmt

        MOV AC0, AR1 ; |403| 
||      MOV #16, AR2 ; |403| 

        CMPU AR1 >= AR2, TC1 ; |403| 
        BCC $C$L20,TC1 ; |403| 
                                        ; branchcc occurs ; |403| 
$C$DW$L$_mutator$23$E:
$C$L19:    
$C$DW$L$_mutator$24$B:
	.dwpsn	file "./src/fuzz.c",line 404,column 17,is_stmt
        MOV *SP(#3), T0 ; |404| 
        MOV dbl(*SP(#0)), XAR3

        MOV #1, AC0
||      MOV *SP(#4), T1 ; |404| 

        SFTS AC0, T1, AC0 ; |404| 
        XOR *AR3(T0), AC0, AR1 ; |404| 
        MOV AR1, *AR3(T0) ; |404| 
	.dwpsn	file "./src/fuzz.c",line 405,column 17,is_stmt
        MOV *SP(#3), T0 ; |405| 
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#4), T1 ; |405| 

        ADD #1, T1 ; |405| 
||      MOV #1, AC0

        SFTS AC0, T1, AC0 ; |405| 
        XOR *AR3(T0), AC0, AR1 ; |405| 
        MOV AR1, *AR3(T0) ; |405| 
	.dwpsn	file "./src/fuzz.c",line 406,column 17,is_stmt
        MOV *SP(#3), T0 ; |406| 
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#4), T1 ; |406| 

        ADD #2, T1 ; |406| 
||      MOV #1, AC0

        SFTS AC0, T1, AC0 ; |406| 
        XOR *AR3(T0), AC0, AR1 ; |406| 
        MOV AR1, *AR3(T0) ; |406| 
	.dwpsn	file "./src/fuzz.c",line 407,column 17,is_stmt
        MOV *SP(#3), T0 ; |407| 
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#4), T1 ; |407| 

        ADD #3, T1 ; |407| 
||      MOV #1, AC0

        SFTS AC0, T1, AC0 ; |407| 
        XOR *AR3(T0), AC0, AR1 ; |407| 
        MOV AR1, *AR3(T0) ; |407| 
	.dwpsn	file "./src/fuzz.c",line 408,column 17,is_stmt
        ADD #4, *SP(#4) ; |408| 
	.dwpsn	file "./src/fuzz.c",line 403,column 47,is_stmt
        ADD #1, *SP(#4) ; |403| 
	.dwpsn	file "./src/fuzz.c",line 403,column 39,is_stmt
        MOV *SP(#4), AR1 ; |403| 
        CMPU AR1 < AR2, TC1 ; |403| 
        BCC $C$L19,TC1 ; |403| 
                                        ; branchcc occurs ; |403| 
$C$DW$L$_mutator$24$E:
$C$L20:    
$C$DW$L$_mutator$25$B:
	.dwpsn	file "./src/fuzz.c",line 401,column 40,is_stmt
        MOV *SP(#10), AR1 ; |401| 
        ADD *SP(#3), AR1, AR1 ; |401| 
        MOV AR1, *SP(#3) ; |401| 
	.dwpsn	file "./src/fuzz.c",line 401,column 24,is_stmt
        MOV *SP(#3), AR2 ; |401| 
        MOV *SP(#2), AR1 ; |401| 
        CMPU AR2 < AR1, TC1 ; |401| 
        BCC $C$L18,TC1 ; |401| 
                                        ; branchcc occurs ; |401| 
$C$DW$L$_mutator$25$E:
	.dwpsn	file "./src/fuzz.c",line 411,column 5,is_stmt
        B $C$L48  ; |411| 
                                        ; branch occurs ; |411| 
$C$L21:    
	.dwpsn	file "./src/fuzz.c",line 412,column 10,is_stmt
        MOV #8, AR2
        CMPU AR1 >= AR2, TC1 ; |412| 
        BCC $C$L23,TC1 ; |412| 
                                        ; branchcc occurs ; |412| 
	.dwpsn	file "./src/fuzz.c",line 415,column 13,is_stmt
        MOV *SP(#9), AR1 ; |415| 
        MOV AR1, *SP(#3) ; |415| 
	.dwpsn	file "./src/fuzz.c",line 415,column 24,is_stmt
        MOV *SP(#3), AR2 ; |415| 
        MOV *SP(#2), AR1 ; |415| 
        CMPU AR2 >= AR1, TC1 ; |415| 
        BCC $C$L48,TC1 ; |415| 
                                        ; branchcc occurs ; |415| 
$C$L22:    
$C$DW$L$_mutator$29$B:
	.dwpsn	file "./src/fuzz.c",line 416,column 13,is_stmt
        MOV *(#_stage_cycles), AR1 ; |416| 
        MOV *SP(#3), T0 ; |416| 
        MOV dbl(*SP(#0)), XAR3
        AND #0x0001, AR1, AC0 ; |416| 
        SFTL AC0, #3, AC0 ; |416| 

        MOV AC0, T1 ; |416| 
||      MOV #255, AC1 ; |416| 

        SFTS AC1, T1, AC0 ; |416| 
        XOR *AR3(T0), AC0, AR1 ; |416| 
        MOV AR1, *AR3(T0) ; |416| 
	.dwpsn	file "./src/fuzz.c",line 415,column 40,is_stmt
        MOV *SP(#10), AR1 ; |415| 
        ADD *SP(#3), AR1, AR1 ; |415| 
        MOV AR1, *SP(#3) ; |415| 
	.dwpsn	file "./src/fuzz.c",line 415,column 24,is_stmt
        MOV *SP(#3), AR2 ; |415| 
        MOV *SP(#2), AR1 ; |415| 
        CMPU AR2 < AR1, TC1 ; |415| 
        BCC $C$L22,TC1 ; |415| 
                                        ; branchcc occurs ; |415| 
$C$DW$L$_mutator$29$E:
	.dwpsn	file "./src/fuzz.c",line 418,column 5,is_stmt
        B $C$L48  ; |418| 
                                        ; branch occurs ; |418| 
$C$L23:    
	.dwpsn	file "./src/fuzz.c",line 419,column 10,is_stmt
        MOV #10, AR2
        CMPU AR1 >= AR2, TC1 ; |419| 
        BCC $C$L25,TC1 ; |419| 
                                        ; branchcc occurs ; |419| 
	.dwpsn	file "./src/fuzz.c",line 421,column 13,is_stmt
        MOV *SP(#9), AR1 ; |421| 
        MOV AR1, *SP(#3) ; |421| 
	.dwpsn	file "./src/fuzz.c",line 421,column 24,is_stmt
        MOV *SP(#3), AR2 ; |421| 
        MOV *SP(#2), AR1 ; |421| 
        CMPU AR2 >= AR1, TC1 ; |421| 
        BCC $C$L48,TC1 ; |421| 
                                        ; branchcc occurs ; |421| 
$C$L24:    
$C$DW$L$_mutator$33$B:
	.dwpsn	file "./src/fuzz.c",line 422,column 13,is_stmt
        MOV *SP(#3), T0 ; |422| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(T0), AR1 ; |422| 
        XOR #0x00ff, AR1, AR1 ; |422| 
        MOV AR1, *AR3(T0) ; |422| 
	.dwpsn	file "./src/fuzz.c",line 423,column 13,is_stmt
        MOV *SP(#3), T0 ; |423| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(T0), AR1 ; |423| 
        XOR #0xffffff00, AR1, AR1 ; |423| 
        MOV AR1, *AR3(T0) ; |423| 
	.dwpsn	file "./src/fuzz.c",line 421,column 40,is_stmt
        MOV *SP(#10), AR1 ; |421| 
        ADD *SP(#3), AR1, AR1 ; |421| 
        MOV AR1, *SP(#3) ; |421| 
	.dwpsn	file "./src/fuzz.c",line 421,column 24,is_stmt
        MOV *SP(#3), AR2 ; |421| 
        MOV *SP(#2), AR1 ; |421| 
        CMPU AR2 < AR1, TC1 ; |421| 
        BCC $C$L24,TC1 ; |421| 
                                        ; branchcc occurs ; |421| 
$C$DW$L$_mutator$33$E:
	.dwpsn	file "./src/fuzz.c",line 425,column 5,is_stmt
        B $C$L48  ; |425| 
                                        ; branch occurs ; |425| 
$C$L25:    
	.dwpsn	file "./src/fuzz.c",line 426,column 10,is_stmt
        MOV #12, AR2
        CMPU AR1 >= AR2, TC1 ; |426| 
        BCC $C$L27,TC1 ; |426| 
                                        ; branchcc occurs ; |426| 
	.dwpsn	file "./src/fuzz.c",line 428,column 13,is_stmt
        MOV *SP(#9), AR1 ; |428| 
        MOV AR1, *SP(#3) ; |428| 
	.dwpsn	file "./src/fuzz.c",line 428,column 24,is_stmt
        MOV *SP(#3), AR2 ; |428| 
        MOV *SP(#2), AR1 ; |428| 
        CMPU AR2 >= AR1, TC1 ; |428| 
        BCC $C$L48,TC1 ; |428| 
                                        ; branchcc occurs ; |428| 
$C$L26:    
$C$DW$L$_mutator$37$B:
	.dwpsn	file "./src/fuzz.c",line 429,column 13,is_stmt
        MOV *SP(#10), AR1 ; |429| 
        ADD *SP(#9), AR1, AR2 ; |429| 
        MOV *SP(#3), AR1 ; |429| 
        ADD #1, AR1 ; |429| 
        CMPU AR1 < AR2, TC1 ; |429| 
        BCC $C$L48,!TC1 ; |429| 
                                        ; branchcc occurs ; |429| 
$C$DW$L$_mutator$37$E:
$C$DW$L$_mutator$38$B:
	.dwpsn	file "./src/fuzz.c",line 430,column 17,is_stmt
	.dwpsn	file "./src/fuzz.c",line 432,column 13,is_stmt
        MOV *SP(#3), T0 ; |432| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(T0), AR1 ; |432| 
        XOR #0x00ff, AR1, AR1 ; |432| 
        MOV AR1, *AR3(T0) ; |432| 
	.dwpsn	file "./src/fuzz.c",line 433,column 13,is_stmt
        MOV *SP(#3), T0 ; |433| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(T0), AR1 ; |433| 
        XOR #0xffffff00, AR1, AR1 ; |433| 
        MOV AR1, *AR3(T0) ; |433| 
	.dwpsn	file "./src/fuzz.c",line 434,column 13,is_stmt
        MOV *SP(#3), T0 ; |434| 
        ADD #1, T0 ; |434| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(T0), AR1 ; |434| 
        MOV *SP(#3), T0 ; |434| 
        ADD #1, T0 ; |434| 
        XOR #0x00ff, AR1, AR1 ; |434| 
        MOV AR1, *AR3(T0) ; |434| 
	.dwpsn	file "./src/fuzz.c",line 435,column 13,is_stmt
        MOV *SP(#3), T0 ; |435| 
        ADD #1, T0 ; |435| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(T0), AR1 ; |435| 
        MOV *SP(#3), T0 ; |435| 
        ADD #1, T0 ; |435| 
        XOR #0xffffff00, AR1, AR1 ; |435| 
        MOV AR1, *AR3(T0) ; |435| 
	.dwpsn	file "./src/fuzz.c",line 428,column 40,is_stmt
        MOV *SP(#10), AR1 ; |428| 
        ADD *SP(#3), AR1, AR1 ; |428| 
        ADD #2, AR1 ; |428| 
        MOV AR1, *SP(#3) ; |428| 
	.dwpsn	file "./src/fuzz.c",line 428,column 24,is_stmt
        MOV *SP(#3), AR2 ; |428| 
        MOV *SP(#2), AR1 ; |428| 
        CMPU AR2 < AR1, TC1 ; |428| 
        BCC $C$L26,TC1 ; |428| 
                                        ; branchcc occurs ; |428| 
$C$DW$L$_mutator$38$E:
	.dwpsn	file "./src/fuzz.c",line 437,column 5,is_stmt
        B $C$L48  ; |437| 
                                        ; branch occurs ; |437| 
$C$L27:    
	.dwpsn	file "./src/fuzz.c",line 439,column 10,is_stmt
        MOV #48, AR2 ; |439| 
        CMPU AR1 >= AR2, TC1 ; |439| 
        BCC $C$L29,TC1 ; |439| 
                                        ; branchcc occurs ; |439| 
	.dwpsn	file "./src/fuzz.c",line 441,column 13,is_stmt
        MOV *SP(#9), AR1 ; |441| 
        MOV AR1, *SP(#3) ; |441| 
	.dwpsn	file "./src/fuzz.c",line 441,column 24,is_stmt
        MOV *SP(#3), AR2 ; |441| 
        MOV *SP(#2), AR1 ; |441| 
        CMPU AR2 >= AR1, TC1 ; |441| 
        BCC $C$L48,TC1 ; |441| 
                                        ; branchcc occurs ; |441| 
$C$L28:    
$C$DW$L$_mutator$42$B:
	.dwpsn	file "./src/fuzz.c",line 442,column 13,is_stmt
        MOV *(#_stage_cycles), T0 ; |442| 
        MOV #35, T1 ; |442| 
$C$DW$164	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$164, DW_AT_low_pc(0x00)
	.dwattr $C$DW$164, DW_AT_name("__remu")
	.dwattr $C$DW$164, DW_AT_TI_call
        CALL #__remu ; |442| 
                                        ; call occurs [#__remu] ; |442| 
        MOV dbl(*SP(#0)), XAR3

        MOV *SP(#3), T0 ; |442| 
||      MOV T0, AR1 ; |442| 

        ADD *AR3(T0), AR1, AR1 ; |442| 
        MOV AR1, *AR3(T0) ; |442| 
	.dwpsn	file "./src/fuzz.c",line 443,column 13,is_stmt
        ADD #1, *SP(#3) ; |443| 
	.dwpsn	file "./src/fuzz.c",line 441,column 40,is_stmt
        MOV *SP(#10), AR1 ; |441| 
        ADD *SP(#3), AR1, AR1 ; |441| 
        MOV AR1, *SP(#3) ; |441| 
	.dwpsn	file "./src/fuzz.c",line 441,column 24,is_stmt
        MOV *SP(#3), AR2 ; |441| 
        MOV *SP(#2), AR1 ; |441| 
        CMPU AR2 < AR1, TC1 ; |441| 
        BCC $C$L28,TC1 ; |441| 
                                        ; branchcc occurs ; |441| 
$C$DW$L$_mutator$42$E:
	.dwpsn	file "./src/fuzz.c",line 445,column 5,is_stmt
        B $C$L48  ; |445| 
                                        ; branch occurs ; |445| 
$C$L29:    
	.dwpsn	file "./src/fuzz.c",line 446,column 10,is_stmt
        MOV #82, AR2 ; |446| 
        CMPU AR1 >= AR2, TC1 ; |446| 
        BCC $C$L31,TC1 ; |446| 
                                        ; branchcc occurs ; |446| 
	.dwpsn	file "./src/fuzz.c",line 448,column 13,is_stmt
        MOV *SP(#9), AR1 ; |448| 
        MOV AR1, *SP(#3) ; |448| 
	.dwpsn	file "./src/fuzz.c",line 448,column 24,is_stmt
        MOV *SP(#3), AR2 ; |448| 
        MOV *SP(#2), AR1 ; |448| 
        CMPU AR2 >= AR1, TC1 ; |448| 
        BCC $C$L48,TC1 ; |448| 
                                        ; branchcc occurs ; |448| 
$C$L30:    
$C$DW$L$_mutator$46$B:
	.dwpsn	file "./src/fuzz.c",line 449,column 17,is_stmt
        MOV *(#_stage_cycles), T0 ; |449| 
        MOV #35, T1 ; |449| 
$C$DW$165	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$165, DW_AT_low_pc(0x00)
	.dwattr $C$DW$165, DW_AT_name("__remu")
	.dwattr $C$DW$165, DW_AT_TI_call
        CALL #__remu ; |449| 
                                        ; call occurs [#__remu] ; |449| 
        MOV dbl(*SP(#0)), XAR3

        MOV *SP(#3), T0 ; |449| 
||      MOV T0, AR1 ; |449| 

        SUB AR1, *AR3(T0), AR1 ; |449| 
        MOV AR1, *AR3(T0) ; |449| 
	.dwpsn	file "./src/fuzz.c",line 450,column 17,is_stmt
        ADD #1, *SP(#3) ; |450| 
	.dwpsn	file "./src/fuzz.c",line 448,column 40,is_stmt
        MOV *SP(#10), AR1 ; |448| 
        ADD *SP(#3), AR1, AR1 ; |448| 
        MOV AR1, *SP(#3) ; |448| 
	.dwpsn	file "./src/fuzz.c",line 448,column 24,is_stmt
        MOV *SP(#3), AR2 ; |448| 
        MOV *SP(#2), AR1 ; |448| 
        CMPU AR2 < AR1, TC1 ; |448| 
        BCC $C$L30,TC1 ; |448| 
                                        ; branchcc occurs ; |448| 
$C$DW$L$_mutator$46$E:
	.dwpsn	file "./src/fuzz.c",line 452,column 5,is_stmt
        B $C$L48  ; |452| 
                                        ; branch occurs ; |452| 
$C$L31:    
	.dwpsn	file "./src/fuzz.c",line 453,column 10,is_stmt
        MOV #250, AR2 ; |453| 
        CMPU AR1 > AR2, TC1 ; |453| 
        BCC $C$L48,TC1 ; |453| 
                                        ; branchcc occurs ; |453| 

$C$DW$166	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$167	.dwtag  DW_TAG_variable, DW_AT_name("mutation_pick")
	.dwattr $C$DW$167, DW_AT_TI_symbol_name("_mutation_pick")
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$167, DW_AT_location[DW_OP_bregx 0x24 11]
	.dwpsn	file "./src/fuzz.c",line 455,column 17,is_stmt
$C$DW$168	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$168, DW_AT_low_pc(0x00)
	.dwattr $C$DW$168, DW_AT_name("_rand")
	.dwattr $C$DW$168, DW_AT_TI_call
        CALL #_rand ; |455| 
                                        ; call occurs [#_rand] ; |455| 
$C$DW$169	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$169, DW_AT_low_pc(0x00)
	.dwattr $C$DW$169, DW_AT_name("__remi")
	.dwattr $C$DW$169, DW_AT_TI_call

        CALL #__remi ; |455| 
||      MOV #12, T1

                                        ; call occurs [#__remi] ; |455| 
        MOV T0, *SP(#11) ; |455| 
	.dwpsn	file "./src/fuzz.c",line 458,column 9,is_stmt
$C$DW$170	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$170, DW_AT_low_pc(0x00)
	.dwattr $C$DW$170, DW_AT_name("_rand")
	.dwattr $C$DW$170, DW_AT_TI_call
        CALL #_rand ; |458| 
                                        ; call occurs [#_rand] ; |458| 
        MOV *(#_mutation_degression), T1 ; |458| 

        MOV #100, T0 ; |458| 
||      MOV T0, AR1 ; |458| 

$C$DW$171	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$171, DW_AT_low_pc(0x00)
	.dwattr $C$DW$171, DW_AT_name("__divu")
	.dwattr $C$DW$171, DW_AT_TI_call
        CALL #__divu ; |458| 
                                        ; call occurs [#__divu] ; |458| 
        MOV T0, T1 ; |458| 
$C$DW$172	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$172, DW_AT_low_pc(0x00)
	.dwattr $C$DW$172, DW_AT_name("__remu")
	.dwattr $C$DW$172, DW_AT_TI_call

        CALL #__remu ; |458| 
||      MOV AR1, T0 ; |458| 

                                        ; call occurs [#__remu] ; |458| 
        MOV T0, *SP(#8) ; |458| 
	.dwpsn	file "./src/fuzz.c",line 465,column 13,is_stmt
        MOV #0, *SP(#3) ; |465| 
	.dwpsn	file "./src/fuzz.c",line 465,column 20,is_stmt
        MOV *SP(#8), AR1 ; |465| 
        MOV *SP(#3), AR2 ; |465| 
        CMPU AR2 >= AR1, TC1 ; |465| 
        BCC $C$L47,TC1 ; |465| 
                                        ; branchcc occurs ; |465| 
$C$L32:    
$C$DW$L$_mutator$50$B:
	.dwpsn	file "./src/fuzz.c",line 466,column 13,is_stmt
$C$DW$173	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$173, DW_AT_low_pc(0x00)
	.dwattr $C$DW$173, DW_AT_name("_rand")
	.dwattr $C$DW$173, DW_AT_TI_call
        CALL #_rand ; |466| 
                                        ; call occurs [#_rand] ; |466| 
        MOV *SP(#2), T1 ; |466| 
$C$DW$174	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$174, DW_AT_low_pc(0x00)
	.dwattr $C$DW$174, DW_AT_name("__remu")
	.dwattr $C$DW$174, DW_AT_TI_call
        CALL #__remu ; |466| 
                                        ; call occurs [#__remu] ; |466| 
        MOV T0, *SP(#6) ; |466| 
	.dwpsn	file "./src/fuzz.c",line 467,column 13,is_stmt
        B $C$L45  ; |467| 
                                        ; branch occurs ; |467| 
$C$DW$L$_mutator$50$E:
$C$L33:    
$C$DW$L$_mutator$52$B:
	.dwpsn	file "./src/fuzz.c",line 470,column 17,is_stmt
$C$DW$175	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$175, DW_AT_low_pc(0x00)
	.dwattr $C$DW$175, DW_AT_name("_rand")
	.dwattr $C$DW$175, DW_AT_TI_call
        CALL #_rand ; |470| 
                                        ; call occurs [#_rand] ; |470| 

        MOV T0, AC0
||      MOV #255, AR2 ; |470| 

        MOV dbl(*SP(#0)), XAR3

        SFTS AC0, #-7, AC0 ; |470| 
||      NOT AR2, AR2 ; |470| 

        BFXTR #0xff00, AC0, AR1 ; |470| 
        ADD T0, AR1 ; |470| 
        AND AR1, AR2 ; |470| 

        MOV *SP(#6), T0 ; |470| 
||      MOV T0, AR1 ; |470| 

        SUB AR2, AR1 ; |470| 
        MOV AR1, *AR3(T0) ; |470| 
	.dwpsn	file "./src/fuzz.c",line 471,column 22,is_stmt
        B $C$L46  ; |471| 
                                        ; branch occurs ; |471| 
$C$DW$L$_mutator$52$E:
$C$L34:    
$C$DW$L$_mutator$53$B:
	.dwpsn	file "./src/fuzz.c",line 473,column 17,is_stmt
        MOV *(#_stage_cycles), T0 ; |473| 
        MOV #34, T1 ; |473| 
$C$DW$176	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$176, DW_AT_low_pc(0x00)
	.dwattr $C$DW$176, DW_AT_name("__remu")
	.dwattr $C$DW$176, DW_AT_TI_call
        CALL #__remu ; |473| 
                                        ; call occurs [#__remu] ; |473| 
        MOV dbl(*SP(#0)), XAR3

        MOV *SP(#6), T0 ; |473| 
||      MOV T0, AR1 ; |473| 

        ADD *AR3(T0), AR1, AR1 ; |473| 
        MOV AR1, *AR3(T0) ; |473| 
	.dwpsn	file "./src/fuzz.c",line 474,column 22,is_stmt
        B $C$L46  ; |474| 
                                        ; branch occurs ; |474| 
$C$DW$L$_mutator$53$E:
$C$L35:    
$C$DW$L$_mutator$54$B:
	.dwpsn	file "./src/fuzz.c",line 476,column 17,is_stmt
        MOV *SP(#6), T0 ; |476| 
        MOV dbl(*SP(#0)), XAR3
        MOV uns(low_byte(*(#_stage_cycles))), AR1 ; |476| 
        ADD *AR3(T0), AR1, AR1 ; |476| 
        MOV AR1, *AR3(T0) ; |476| 
	.dwpsn	file "./src/fuzz.c",line 477,column 22,is_stmt
        B $C$L46  ; |477| 
                                        ; branch occurs ; |477| 
$C$DW$L$_mutator$54$E:
$C$L36:    
$C$DW$L$_mutator$55$B:
	.dwpsn	file "./src/fuzz.c",line 479,column 17,is_stmt
        MOV *SP(#6), T0 ; |479| 
        MOV dbl(*SP(#0)), XAR3
        MOV uns(low_byte(*(#_stage_cycles))), AR1 ; |479| 
        SUB AR1, *AR3(T0), AR1 ; |479| 
        MOV AR1, *AR3(T0) ; |479| 
	.dwpsn	file "./src/fuzz.c",line 480,column 22,is_stmt
        B $C$L46  ; |480| 
                                        ; branch occurs ; |480| 
$C$DW$L$_mutator$55$E:
$C$L37:    
$C$DW$L$_mutator$56$B:
	.dwpsn	file "./src/fuzz.c",line 482,column 17,is_stmt
        MOV *(#_stage_cycles), T0 ; |482| 
        MOV #34, T1 ; |482| 
$C$DW$177	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$177, DW_AT_low_pc(0x00)
	.dwattr $C$DW$177, DW_AT_name("__remu")
	.dwattr $C$DW$177, DW_AT_TI_call
        CALL #__remu ; |482| 
                                        ; call occurs [#__remu] ; |482| 
        MOV dbl(*SP(#0)), XAR3

        MOV *SP(#6), T0 ; |482| 
||      MOV T0, AR1 ; |482| 

        SUB AR1, *AR3(T0), AR1 ; |482| 
        MOV AR1, *AR3(T0) ; |482| 
	.dwpsn	file "./src/fuzz.c",line 483,column 22,is_stmt
        B $C$L46  ; |483| 
                                        ; branch occurs ; |483| 
$C$DW$L$_mutator$56$E:
$C$L38:    
$C$DW$L$_mutator$57$B:
	.dwpsn	file "./src/fuzz.c",line 485,column 17,is_stmt
$C$DW$178	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$178, DW_AT_low_pc(0x00)
	.dwattr $C$DW$178, DW_AT_name("_rand")
	.dwattr $C$DW$178, DW_AT_TI_call
        CALL #_rand ; |485| 
                                        ; call occurs [#_rand] ; |485| 
        MOV *SP(#2), T1 ; |485| 
$C$DW$179	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$179, DW_AT_low_pc(0x00)
	.dwattr $C$DW$179, DW_AT_name("__remu")
	.dwattr $C$DW$179, DW_AT_TI_call
        CALL #__remu ; |485| 
                                        ; call occurs [#__remu] ; |485| 
        SUB #1, T0, AR1 ; |485| 
        MOV AR1, *SP(#6) ; |485| 
	.dwpsn	file "./src/fuzz.c",line 486,column 17,is_stmt
$C$DW$180	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$180, DW_AT_low_pc(0x00)
	.dwattr $C$DW$180, DW_AT_name("_rand")
	.dwattr $C$DW$180, DW_AT_TI_call
        CALL #_rand ; |486| 
                                        ; call occurs [#_rand] ; |486| 

        MOV T0, AC0
||      MOV #15, AR2

        SFTS AC0, #-3, AC0 ; |486| 
||      NOT AR2, AR2 ; |486| 

        BFXTR #0xf000, AC0, AR1 ; |486| 
        ADD T0, AR1 ; |486| 
        AND AR1, AR2 ; |486| 
        SUB AR2, T0 ; |486| 
        MOV T0, *SP(#7) ; |486| 
	.dwpsn	file "./src/fuzz.c",line 487,column 17,is_stmt
        MOV *SP(#6), T0 ; |487| 
        MOV dbl(*SP(#0)), XAR3

        MOV *SP(#7), T1 ; |487| 
||      MOV #1, AC0

        SFTS AC0, T1, AC0 ; |487| 
        XOR *AR3(T0), AC0, AR1 ; |487| 
        MOV AR1, *AR3(T0) ; |487| 
	.dwpsn	file "./src/fuzz.c",line 488,column 22,is_stmt
        B $C$L46  ; |488| 
                                        ; branch occurs ; |488| 
$C$DW$L$_mutator$57$E:
$C$L39:    
$C$DW$L$_mutator$58$B:
	.dwpsn	file "./src/fuzz.c",line 490,column 17,is_stmt
$C$DW$181	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$181, DW_AT_low_pc(0x00)
	.dwattr $C$DW$181, DW_AT_name("_rand")
	.dwattr $C$DW$181, DW_AT_TI_call
        CALL #_rand ; |490| 
                                        ; call occurs [#_rand] ; |490| 
        MOV *SP(#2), T1 ; |490| 
$C$DW$182	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$182, DW_AT_low_pc(0x00)
	.dwattr $C$DW$182, DW_AT_name("__remu")
	.dwattr $C$DW$182, DW_AT_TI_call
        CALL #__remu ; |490| 
                                        ; call occurs [#__remu] ; |490| 
        SUB #1, T0, AR1 ; |490| 
        MOV AR1, *SP(#6) ; |490| 
	.dwpsn	file "./src/fuzz.c",line 491,column 17,is_stmt
$C$DW$183	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$183, DW_AT_low_pc(0x00)
	.dwattr $C$DW$183, DW_AT_name("_rand")
	.dwattr $C$DW$183, DW_AT_TI_call
        CALL #_rand ; |491| 
                                        ; call occurs [#_rand] ; |491| 

        MOV T0, AC0
||      MOV #15, AR2

        SFTS AC0, #-3, AC0 ; |491| 
||      NOT AR2, AR2 ; |491| 

        BFXTR #0xf000, AC0, AR1 ; |491| 
        ADD T0, AR1 ; |491| 
        AND AR1, AR2 ; |491| 
        SUB AR2, T0 ; |491| 
        MOV T0, *SP(#7) ; |491| 
	.dwpsn	file "./src/fuzz.c",line 492,column 17,is_stmt
        MOV *SP(#6), T0 ; |492| 
        MOV dbl(*SP(#0)), XAR3

        MOV *SP(#7), T1 ; |492| 
||      MOV #1, AC0

        SFTS AC0, T1, AC0 ; |492| 
        XOR *AR3(T0), AC0, AR1 ; |492| 
        MOV AR1, *AR3(T0) ; |492| 
	.dwpsn	file "./src/fuzz.c",line 493,column 17,is_stmt
        MOV *SP(#6), T0 ; |493| 
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#7), T1 ; |493| 

        ADD #1, T1 ; |493| 
||      MOV #1, AC0

        SFTS AC0, T1, AC0 ; |493| 
        XOR *AR3(T0), AC0, AR1 ; |493| 
        MOV AR1, *AR3(T0) ; |493| 
	.dwpsn	file "./src/fuzz.c",line 494,column 22,is_stmt
        B $C$L46  ; |494| 
                                        ; branch occurs ; |494| 
$C$DW$L$_mutator$58$E:
$C$L40:    
$C$DW$L$_mutator$59$B:
	.dwpsn	file "./src/fuzz.c",line 496,column 17,is_stmt
$C$DW$184	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$184, DW_AT_low_pc(0x00)
	.dwattr $C$DW$184, DW_AT_name("_rand")
	.dwattr $C$DW$184, DW_AT_TI_call
        CALL #_rand ; |496| 
                                        ; call occurs [#_rand] ; |496| 
        MOV *SP(#2), T1 ; |496| 
$C$DW$185	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$185, DW_AT_low_pc(0x00)
	.dwattr $C$DW$185, DW_AT_name("__remu")
	.dwattr $C$DW$185, DW_AT_TI_call
        CALL #__remu ; |496| 
                                        ; call occurs [#__remu] ; |496| 
        SUB #1, T0, AR1 ; |496| 
        MOV AR1, *SP(#6) ; |496| 
	.dwpsn	file "./src/fuzz.c",line 497,column 17,is_stmt
$C$DW$186	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$186, DW_AT_low_pc(0x00)
	.dwattr $C$DW$186, DW_AT_name("_rand")
	.dwattr $C$DW$186, DW_AT_TI_call
        CALL #_rand ; |497| 
                                        ; call occurs [#_rand] ; |497| 

        MOV T0, AC0
||      MOV #15, AR2

        SFTS AC0, #-3, AC0 ; |497| 
||      NOT AR2, AR2 ; |497| 

        BFXTR #0xf000, AC0, AR1 ; |497| 
        ADD T0, AR1 ; |497| 
        AND AR1, AR2 ; |497| 
        SUB AR2, T0 ; |497| 
        MOV T0, *SP(#7) ; |497| 
	.dwpsn	file "./src/fuzz.c",line 498,column 17,is_stmt
        MOV *SP(#6), T0 ; |498| 
        MOV dbl(*SP(#0)), XAR3

        MOV *SP(#7), T1 ; |498| 
||      MOV #1, AC0

        SFTS AC0, T1, AC0 ; |498| 
        XOR *AR3(T0), AC0, AR1 ; |498| 
        MOV AR1, *AR3(T0) ; |498| 
	.dwpsn	file "./src/fuzz.c",line 499,column 17,is_stmt
        MOV *SP(#6), T0 ; |499| 
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#7), T1 ; |499| 

        ADD #1, T1 ; |499| 
||      MOV #1, AC0

        SFTS AC0, T1, AC0 ; |499| 
        XOR *AR3(T0), AC0, AR1 ; |499| 
        MOV AR1, *AR3(T0) ; |499| 
	.dwpsn	file "./src/fuzz.c",line 500,column 17,is_stmt
        MOV *SP(#6), T0 ; |500| 
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#7), T1 ; |500| 

        ADD #2, T1 ; |500| 
||      MOV #1, AC0

        SFTS AC0, T1, AC0 ; |500| 
        XOR *AR3(T0), AC0, AR1 ; |500| 
        MOV AR1, *AR3(T0) ; |500| 
	.dwpsn	file "./src/fuzz.c",line 501,column 17,is_stmt
        MOV *SP(#6), T0 ; |501| 
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#7), T1 ; |501| 

        ADD #3, T1 ; |501| 
||      MOV #1, AC0

        SFTS AC0, T1, AC0 ; |501| 
        XOR *AR3(T0), AC0, AR1 ; |501| 
        MOV AR1, *AR3(T0) ; |501| 
	.dwpsn	file "./src/fuzz.c",line 502,column 22,is_stmt
        B $C$L46  ; |502| 
                                        ; branch occurs ; |502| 
$C$DW$L$_mutator$59$E:
$C$L41:    
$C$DW$L$_mutator$60$B:
	.dwpsn	file "./src/fuzz.c",line 504,column 17,is_stmt
$C$DW$187	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$187, DW_AT_low_pc(0x00)
	.dwattr $C$DW$187, DW_AT_name("_rand")
	.dwattr $C$DW$187, DW_AT_TI_call
        CALL #_rand ; |504| 
                                        ; call occurs [#_rand] ; |504| 
        MOV *SP(#2), T1 ; |504| 
$C$DW$188	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$188, DW_AT_low_pc(0x00)
	.dwattr $C$DW$188, DW_AT_name("__remu")
	.dwattr $C$DW$188, DW_AT_TI_call
        CALL #__remu ; |504| 
                                        ; call occurs [#__remu] ; |504| 
        SUB #1, T0, AR1 ; |504| 
        MOV AR1, *SP(#6) ; |504| 
	.dwpsn	file "./src/fuzz.c",line 505,column 17,is_stmt
        MOV *(#_stage_cycles), AR1 ; |505| 
        MOV *SP(#6), T0 ; |505| 
        MOV dbl(*SP(#0)), XAR3
        AND #0x0001, AR1, AC0 ; |505| 
        SFTL AC0, #3, AC0 ; |505| 

        MOV AC0, T1 ; |505| 
||      MOV #255, AC1 ; |505| 

        SFTS AC1, T1, AC0 ; |505| 
        XOR *AR3(T0), AC0, AR1 ; |505| 
        MOV AR1, *AR3(T0) ; |505| 
	.dwpsn	file "./src/fuzz.c",line 506,column 22,is_stmt
        B $C$L46  ; |506| 
                                        ; branch occurs ; |506| 
$C$DW$L$_mutator$60$E:
$C$L42:    
$C$DW$L$_mutator$61$B:
	.dwpsn	file "./src/fuzz.c",line 508,column 17,is_stmt
$C$DW$189	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$189, DW_AT_low_pc(0x00)
	.dwattr $C$DW$189, DW_AT_name("_rand")
	.dwattr $C$DW$189, DW_AT_TI_call
        CALL #_rand ; |508| 
                                        ; call occurs [#_rand] ; |508| 
        MOV *SP(#2), T1 ; |508| 
$C$DW$190	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$190, DW_AT_low_pc(0x00)
	.dwattr $C$DW$190, DW_AT_name("__remu")
	.dwattr $C$DW$190, DW_AT_TI_call
        CALL #__remu ; |508| 
                                        ; call occurs [#__remu] ; |508| 
        MOV T0, *SP(#6) ; |508| 
	.dwpsn	file "./src/fuzz.c",line 509,column 17,is_stmt
        MOV *SP(#6), T0 ; |509| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(T0), AR1 ; |509| 
        XOR #0x00ff, AR1, AR1 ; |509| 
        MOV AR1, *AR3(T0) ; |509| 
	.dwpsn	file "./src/fuzz.c",line 510,column 17,is_stmt
        MOV *SP(#6), T0 ; |510| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(T0), AR1 ; |510| 
        XOR #0xffffff00, AR1, AR1 ; |510| 
        MOV AR1, *AR3(T0) ; |510| 
	.dwpsn	file "./src/fuzz.c",line 511,column 22,is_stmt
        B $C$L46  ; |511| 
                                        ; branch occurs ; |511| 
$C$DW$L$_mutator$61$E:
$C$L43:    
$C$DW$L$_mutator$62$B:
	.dwpsn	file "./src/fuzz.c",line 513,column 17,is_stmt
$C$DW$191	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$191, DW_AT_low_pc(0x00)
	.dwattr $C$DW$191, DW_AT_name("_rand")
	.dwattr $C$DW$191, DW_AT_TI_call
        CALL #_rand ; |513| 
                                        ; call occurs [#_rand] ; |513| 
        MOV *SP(#2), T1 ; |513| 
$C$DW$192	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$192, DW_AT_low_pc(0x00)
	.dwattr $C$DW$192, DW_AT_name("__remu")
	.dwattr $C$DW$192, DW_AT_TI_call
        CALL #__remu ; |513| 
                                        ; call occurs [#__remu] ; |513| 
        SUB #1, T0, AR1 ; |513| 
        MOV AR1, *SP(#6) ; |513| 
	.dwpsn	file "./src/fuzz.c",line 514,column 17,is_stmt
        MOV *SP(#6), T0 ; |514| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(T0), AR1 ; |514| 
        XOR #0x00ff, AR1, AR1 ; |514| 
        MOV AR1, *AR3(T0) ; |514| 
	.dwpsn	file "./src/fuzz.c",line 515,column 17,is_stmt
        MOV *SP(#6), T0 ; |515| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(T0), AR1 ; |515| 
        XOR #0xffffff00, AR1, AR1 ; |515| 
        MOV AR1, *AR3(T0) ; |515| 
	.dwpsn	file "./src/fuzz.c",line 516,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#6), T0 ; |516| 
        ADD #1, T0 ; |516| 
        MOV *AR3(T0), AR1 ; |516| 
        MOV *SP(#6), T0 ; |516| 
        ADD #1, T0 ; |516| 
        XOR #0x00ff, AR1, AR1 ; |516| 
        MOV AR1, *AR3(T0) ; |516| 
	.dwpsn	file "./src/fuzz.c",line 517,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#6), T0 ; |517| 
        ADD #1, T0 ; |517| 
        MOV *AR3(T0), AR1 ; |517| 
        MOV *SP(#6), T0 ; |517| 
        ADD #1, T0 ; |517| 
        XOR #0xffffff00, AR1, AR1 ; |517| 
        MOV AR1, *AR3(T0) ; |517| 
	.dwpsn	file "./src/fuzz.c",line 519,column 22,is_stmt
        B $C$L46  ; |519| 
                                        ; branch occurs ; |519| 
$C$DW$L$_mutator$62$E:
$C$L44:    
$C$DW$L$_mutator$63$B:
	.dwpsn	file "./src/fuzz.c",line 522,column 17,is_stmt
$C$DW$193	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$193, DW_AT_low_pc(0x00)
	.dwattr $C$DW$193, DW_AT_name("_rand")
	.dwattr $C$DW$193, DW_AT_TI_call
        CALL #_rand ; |522| 
                                        ; call occurs [#_rand] ; |522| 
        MOV *SP(#2), T1 ; |522| 
$C$DW$194	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$194, DW_AT_low_pc(0x00)
	.dwattr $C$DW$194, DW_AT_name("__remu")
	.dwattr $C$DW$194, DW_AT_TI_call
        CALL #__remu ; |522| 
                                        ; call occurs [#__remu] ; |522| 
        SUB #1, T0, AR1 ; |522| 
        MOV AR1, *SP(#6) ; |522| 
	.dwpsn	file "./src/fuzz.c",line 523,column 17,is_stmt
        MOV *SP(#6), T0 ; |523| 
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3(T0) ; |523| 
	.dwpsn	file "./src/fuzz.c",line 524,column 22,is_stmt
        B $C$L46  ; |524| 
                                        ; branch occurs ; |524| 
$C$DW$L$_mutator$63$E:
$C$L45:    
$C$DW$L$_mutator$64$B:
	.dwpsn	file "./src/fuzz.c",line 467,column 13,is_stmt
        MOV *SP(#11), AC0 ; |467| 

        MOV AC0, AR1 ; |467| 
||      MOV #11, AR2

        CMPU AR1 <= AR2, TC1 ; |467| 
        BCC $C$L46,!TC1 ; |467| 
                                        ; branchcc occurs ; |467| 
$C$DW$L$_mutator$64$E:
$C$DW$L$_mutator$65$B:
        SFTS AC0, #1, AC0 ; |467| 
        MOV mmap(AC0L), AC1 ; |467| 
        MOV #($C$SW1 >> 16) << #16, AC0 ; |467| 
        OR #($C$SW1 & 0xffff), AC0, AC0 ; |467| 
        ADD AC1, AC0 ; |467| 
        MOV AC0, XAR3
        MOV dbl(*AR3), AC0 ; |467| 
        B AC0     ; |467| 
                                        ; branch occurs ; |467| 
	.sect	".switch:_mutator"
	.clink
$C$SW1:	.long	$C$L33	; 0
	.long	$C$L34	; 1
	.long	$C$L35	; 2
	.long	$C$L36	; 3
	.long	$C$L37	; 4
	.long	$C$L38	; 5
	.long	$C$L39	; 6
	.long	$C$L40	; 7
	.long	$C$L41	; 8
	.long	$C$L42	; 9
	.long	$C$L43	; 10
	.long	$C$L44	; 11
	.sect	".text"
$C$DW$L$_mutator$65$E:
$C$L46:    
$C$DW$L$_mutator$66$B:
	.dwpsn	file "./src/fuzz.c",line 527,column 13,is_stmt
$C$DW$195	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$195, DW_AT_low_pc(0x00)
	.dwattr $C$DW$195, DW_AT_name("_rand")
	.dwattr $C$DW$195, DW_AT_TI_call
        CALL #_rand ; |527| 
                                        ; call occurs [#_rand] ; |527| 
$C$DW$196	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$196, DW_AT_low_pc(0x00)
	.dwattr $C$DW$196, DW_AT_name("__remi")
	.dwattr $C$DW$196, DW_AT_TI_call

        CALL #__remi ; |527| 
||      MOV #12, T1

                                        ; call occurs [#__remi] ; |527| 
        MOV T0, *SP(#11) ; |527| 
	.dwpsn	file "./src/fuzz.c",line 465,column 35,is_stmt
        ADD #1, *SP(#3) ; |465| 
	.dwpsn	file "./src/fuzz.c",line 465,column 20,is_stmt
        MOV *SP(#8), AR1 ; |465| 
        MOV *SP(#3), AR2 ; |465| 
        CMPU AR2 < AR1, TC1 ; |465| 
        BCC $C$L32,TC1 ; |465| 
                                        ; branchcc occurs ; |465| 
$C$DW$L$_mutator$66$E:
$C$L47:    
	.dwendtag $C$DW$166

$C$L48:    
	.dwpsn	file "./src/fuzz.c",line 533,column 5,is_stmt
        ADD #1, *(#_stage_cycles) ; |533| 
	.dwpsn	file "./src/fuzz.c",line 534,column 1,is_stmt
        AADD #13, SP
	.dwcfi	cfa_offset, 1
$C$DW$197	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$197, DW_AT_low_pc(0x00)
	.dwattr $C$DW$197, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$198	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$198, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/fuzz.asm:$C$L32:1:1728755387")
	.dwattr $C$DW$198, DW_AT_TI_begin_file("./src/fuzz.c")
	.dwattr $C$DW$198, DW_AT_TI_begin_line(0x1d1)
	.dwattr $C$DW$198, DW_AT_TI_end_line(0x211)
$C$DW$199	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$199, DW_AT_low_pc($C$DW$L$_mutator$50$B)
	.dwattr $C$DW$199, DW_AT_high_pc($C$DW$L$_mutator$50$E)
$C$DW$200	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$200, DW_AT_low_pc($C$DW$L$_mutator$52$B)
	.dwattr $C$DW$200, DW_AT_high_pc($C$DW$L$_mutator$52$E)
$C$DW$201	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$201, DW_AT_low_pc($C$DW$L$_mutator$53$B)
	.dwattr $C$DW$201, DW_AT_high_pc($C$DW$L$_mutator$53$E)
$C$DW$202	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$202, DW_AT_low_pc($C$DW$L$_mutator$54$B)
	.dwattr $C$DW$202, DW_AT_high_pc($C$DW$L$_mutator$54$E)
$C$DW$203	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$203, DW_AT_low_pc($C$DW$L$_mutator$55$B)
	.dwattr $C$DW$203, DW_AT_high_pc($C$DW$L$_mutator$55$E)
$C$DW$204	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$204, DW_AT_low_pc($C$DW$L$_mutator$56$B)
	.dwattr $C$DW$204, DW_AT_high_pc($C$DW$L$_mutator$56$E)
$C$DW$205	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$205, DW_AT_low_pc($C$DW$L$_mutator$57$B)
	.dwattr $C$DW$205, DW_AT_high_pc($C$DW$L$_mutator$57$E)
$C$DW$206	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$206, DW_AT_low_pc($C$DW$L$_mutator$58$B)
	.dwattr $C$DW$206, DW_AT_high_pc($C$DW$L$_mutator$58$E)
$C$DW$207	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$207, DW_AT_low_pc($C$DW$L$_mutator$59$B)
	.dwattr $C$DW$207, DW_AT_high_pc($C$DW$L$_mutator$59$E)
$C$DW$208	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$208, DW_AT_low_pc($C$DW$L$_mutator$60$B)
	.dwattr $C$DW$208, DW_AT_high_pc($C$DW$L$_mutator$60$E)
$C$DW$209	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$209, DW_AT_low_pc($C$DW$L$_mutator$61$B)
	.dwattr $C$DW$209, DW_AT_high_pc($C$DW$L$_mutator$61$E)
$C$DW$210	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$210, DW_AT_low_pc($C$DW$L$_mutator$62$B)
	.dwattr $C$DW$210, DW_AT_high_pc($C$DW$L$_mutator$62$E)
$C$DW$211	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$211, DW_AT_low_pc($C$DW$L$_mutator$63$B)
	.dwattr $C$DW$211, DW_AT_high_pc($C$DW$L$_mutator$63$E)
$C$DW$212	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$212, DW_AT_low_pc($C$DW$L$_mutator$64$B)
	.dwattr $C$DW$212, DW_AT_high_pc($C$DW$L$_mutator$64$E)
$C$DW$213	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$213, DW_AT_low_pc($C$DW$L$_mutator$65$B)
	.dwattr $C$DW$213, DW_AT_high_pc($C$DW$L$_mutator$65$E)
$C$DW$214	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$214, DW_AT_low_pc($C$DW$L$_mutator$66$B)
	.dwattr $C$DW$214, DW_AT_high_pc($C$DW$L$_mutator$66$E)
	.dwendtag $C$DW$198


$C$DW$215	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$215, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/fuzz.asm:$C$L30:1:1728755387")
	.dwattr $C$DW$215, DW_AT_TI_begin_file("./src/fuzz.c")
	.dwattr $C$DW$215, DW_AT_TI_begin_line(0x1c0)
	.dwattr $C$DW$215, DW_AT_TI_end_line(0x1c3)
$C$DW$216	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$216, DW_AT_low_pc($C$DW$L$_mutator$46$B)
	.dwattr $C$DW$216, DW_AT_high_pc($C$DW$L$_mutator$46$E)
	.dwendtag $C$DW$215


$C$DW$217	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$217, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/fuzz.asm:$C$L28:1:1728755387")
	.dwattr $C$DW$217, DW_AT_TI_begin_file("./src/fuzz.c")
	.dwattr $C$DW$217, DW_AT_TI_begin_line(0x1b9)
	.dwattr $C$DW$217, DW_AT_TI_end_line(0x1bc)
$C$DW$218	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$218, DW_AT_low_pc($C$DW$L$_mutator$42$B)
	.dwattr $C$DW$218, DW_AT_high_pc($C$DW$L$_mutator$42$E)
	.dwendtag $C$DW$217


$C$DW$219	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$219, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/fuzz.asm:$C$L26:1:1728755387")
	.dwattr $C$DW$219, DW_AT_TI_begin_file("./src/fuzz.c")
	.dwattr $C$DW$219, DW_AT_TI_begin_line(0x1ac)
	.dwattr $C$DW$219, DW_AT_TI_end_line(0x1b4)
$C$DW$220	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$220, DW_AT_low_pc($C$DW$L$_mutator$37$B)
	.dwattr $C$DW$220, DW_AT_high_pc($C$DW$L$_mutator$37$E)
$C$DW$221	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$221, DW_AT_low_pc($C$DW$L$_mutator$38$B)
	.dwattr $C$DW$221, DW_AT_high_pc($C$DW$L$_mutator$38$E)
	.dwendtag $C$DW$219


$C$DW$222	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$222, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/fuzz.asm:$C$L24:1:1728755387")
	.dwattr $C$DW$222, DW_AT_TI_begin_file("./src/fuzz.c")
	.dwattr $C$DW$222, DW_AT_TI_begin_line(0x1a5)
	.dwattr $C$DW$222, DW_AT_TI_end_line(0x1a8)
$C$DW$223	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$223, DW_AT_low_pc($C$DW$L$_mutator$33$B)
	.dwattr $C$DW$223, DW_AT_high_pc($C$DW$L$_mutator$33$E)
	.dwendtag $C$DW$222


$C$DW$224	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$224, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/fuzz.asm:$C$L22:1:1728755387")
	.dwattr $C$DW$224, DW_AT_TI_begin_file("./src/fuzz.c")
	.dwattr $C$DW$224, DW_AT_TI_begin_line(0x19f)
	.dwattr $C$DW$224, DW_AT_TI_end_line(0x1a1)
$C$DW$225	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$225, DW_AT_low_pc($C$DW$L$_mutator$29$B)
	.dwattr $C$DW$225, DW_AT_high_pc($C$DW$L$_mutator$29$E)
	.dwendtag $C$DW$224


$C$DW$226	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$226, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/fuzz.asm:$C$L18:1:1728755387")
	.dwattr $C$DW$226, DW_AT_TI_begin_file("./src/fuzz.c")
	.dwattr $C$DW$226, DW_AT_TI_begin_line(0x191)
	.dwattr $C$DW$226, DW_AT_TI_end_line(0x19a)
$C$DW$227	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$227, DW_AT_low_pc($C$DW$L$_mutator$23$B)
	.dwattr $C$DW$227, DW_AT_high_pc($C$DW$L$_mutator$23$E)
$C$DW$228	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$228, DW_AT_low_pc($C$DW$L$_mutator$25$B)
	.dwattr $C$DW$228, DW_AT_high_pc($C$DW$L$_mutator$25$E)

$C$DW$229	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$229, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/fuzz.asm:$C$L19:2:1728755387")
	.dwattr $C$DW$229, DW_AT_TI_begin_file("./src/fuzz.c")
	.dwattr $C$DW$229, DW_AT_TI_begin_line(0x193)
	.dwattr $C$DW$229, DW_AT_TI_end_line(0x199)
$C$DW$230	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$230, DW_AT_low_pc($C$DW$L$_mutator$24$B)
	.dwattr $C$DW$230, DW_AT_high_pc($C$DW$L$_mutator$24$E)
	.dwendtag $C$DW$229

	.dwendtag $C$DW$226


$C$DW$231	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$231, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/fuzz.asm:$C$L14:1:1728755387")
	.dwattr $C$DW$231, DW_AT_TI_begin_file("./src/fuzz.c")
	.dwattr $C$DW$231, DW_AT_TI_begin_line(0x187)
	.dwattr $C$DW$231, DW_AT_TI_end_line(0x18e)
$C$DW$232	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$232, DW_AT_low_pc($C$DW$L$_mutator$17$B)
	.dwattr $C$DW$232, DW_AT_high_pc($C$DW$L$_mutator$17$E)
$C$DW$233	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$233, DW_AT_low_pc($C$DW$L$_mutator$19$B)
	.dwattr $C$DW$233, DW_AT_high_pc($C$DW$L$_mutator$19$E)

$C$DW$234	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$234, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/fuzz.asm:$C$L15:2:1728755387")
	.dwattr $C$DW$234, DW_AT_TI_begin_file("./src/fuzz.c")
	.dwattr $C$DW$234, DW_AT_TI_begin_line(0x189)
	.dwattr $C$DW$234, DW_AT_TI_end_line(0x18d)
$C$DW$235	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$235, DW_AT_low_pc($C$DW$L$_mutator$18$B)
	.dwattr $C$DW$235, DW_AT_high_pc($C$DW$L$_mutator$18$E)
	.dwendtag $C$DW$234

	.dwendtag $C$DW$231


$C$DW$236	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$236, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/fuzz.asm:$C$L10:1:1728755387")
	.dwattr $C$DW$236, DW_AT_TI_begin_file("./src/fuzz.c")
	.dwattr $C$DW$236, DW_AT_TI_begin_line(0x17d)
	.dwattr $C$DW$236, DW_AT_TI_end_line(0x183)
$C$DW$237	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$237, DW_AT_low_pc($C$DW$L$_mutator$11$B)
	.dwattr $C$DW$237, DW_AT_high_pc($C$DW$L$_mutator$11$E)
$C$DW$238	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$238, DW_AT_low_pc($C$DW$L$_mutator$13$B)
	.dwattr $C$DW$238, DW_AT_high_pc($C$DW$L$_mutator$13$E)

$C$DW$239	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$239, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/fuzz.asm:$C$L11:2:1728755387")
	.dwattr $C$DW$239, DW_AT_TI_begin_file("./src/fuzz.c")
	.dwattr $C$DW$239, DW_AT_TI_begin_line(0x17f)
	.dwattr $C$DW$239, DW_AT_TI_end_line(0x182)
$C$DW$240	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$240, DW_AT_low_pc($C$DW$L$_mutator$12$B)
	.dwattr $C$DW$240, DW_AT_high_pc($C$DW$L$_mutator$12$E)
	.dwendtag $C$DW$239

	.dwendtag $C$DW$236

	.dwattr $C$DW$146, DW_AT_TI_end_file("./src/fuzz.c")
	.dwattr $C$DW$146, DW_AT_TI_end_line(0x216)
	.dwattr $C$DW$146, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$146

	.sect	".text"
	.global	_dequeue_seed

$C$DW$241	.dwtag  DW_TAG_subprogram, DW_AT_name("dequeue_seed")
	.dwattr $C$DW$241, DW_AT_low_pc(_dequeue_seed)
	.dwattr $C$DW$241, DW_AT_high_pc(0x00)
	.dwattr $C$DW$241, DW_AT_TI_symbol_name("_dequeue_seed")
	.dwattr $C$DW$241, DW_AT_external
	.dwattr $C$DW$241, DW_AT_TI_begin_file("./src/fuzz.c")
	.dwattr $C$DW$241, DW_AT_TI_begin_line(0x219)
	.dwattr $C$DW$241, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$241, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "./src/fuzz.c",line 537,column 35,is_stmt,address _dequeue_seed

	.dwfde $C$DW$CIE, _dequeue_seed
$C$DW$242	.dwtag  DW_TAG_formal_parameter, DW_AT_name("input")
	.dwattr $C$DW$242, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$242, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$242, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: dequeue_seed                                                 *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,CSR,  *
;*                        RPTC,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL           *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 function parameters)                              *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_dequeue_seed:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$243	.dwtag  DW_TAG_variable, DW_AT_name("input")
	.dwattr $C$DW$243, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$243, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$243, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$244	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$244, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$244, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$244, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR0, dbl(*SP(#2))
	.dwpsn	file "./src/fuzz.c",line 547,column 5,is_stmt
        MOV *(#_seed_tail), AR1 ; |547| 
        MOV *(#_seed_head), AR2 ; |547| 
        CMPU AR2 != AR1, TC1 ; |547| 
        BCC $C$L49,TC1 ; |547| 
                                        ; branchcc occurs ; |547| 
	.dwpsn	file "./src/fuzz.c",line 548,column 9,is_stmt
        MOV #0, *(#_seed_head) ; |548| 
$C$L49:    
	.dwpsn	file "./src/fuzz.c",line 551,column 4,is_stmt
        CMP *(#_stage_cycles) == #250, TC1 ; |551| 
        BCC $C$L50,!TC1 ; |551| 
                                        ; branchcc occurs ; |551| 
	.dwpsn	file "./src/fuzz.c",line 552,column 2,is_stmt
        MOV #0, *(#_stage_cycles) ; |552| 
	.dwpsn	file "./src/fuzz.c",line 553,column 2,is_stmt
        ADD #1, *(#_seed_head) ; |553| 
$C$L50:    
	.dwpsn	file "./src/fuzz.c",line 555,column 4,is_stmt
        MOV *(#_current_seed_num), AR1 ; |555| 
        MOV *(#_seed_head), AR2 ; |555| 
        CMPU AR2 < AR1, TC1 ; |555| 
        BCC $C$L51,TC1 ; |555| 
                                        ; branchcc occurs ; |555| 
	.dwpsn	file "./src/fuzz.c",line 557,column 2,is_stmt
        MOV #0, *(#_seed_head) ; |557| 
	.dwpsn	file "./src/fuzz.c",line 558,column 5,is_stmt
        ADD #1, *(#_pool_loops) ; |558| 
$C$L51:    
	.dwpsn	file "./src/fuzz.c",line 565,column 4,is_stmt
        MOV #5, AR2
        MOV *(#_pool_loops), AR1 ; |565| 
        CMPU AR1 <= AR2, TC1 ; |565| 
        BCC $C$L53,TC1 ; |565| 
                                        ; branchcc occurs ; |565| 
	.dwpsn	file "./src/fuzz.c",line 566,column 8,is_stmt
        MOV #10, AR2
        MOV *(#_mutation_degression), AR1 ; |566| 
        CMPU AR1 >= AR2, TC1 ; |566| 
        BCC $C$L52,TC1 ; |566| 
                                        ; branchcc occurs ; |566| 
	.dwpsn	file "./src/fuzz.c",line 567,column 12,is_stmt
        ADD #1, *(#_mutation_degression) ; |567| 
$C$L52:    
	.dwpsn	file "./src/fuzz.c",line 569,column 8,is_stmt
        CMP *(#_mutation_degression) == #10, TC1 ; |569| 
        BCC $C$L53,!TC1 ; |569| 
                                        ; branchcc occurs ; |569| 
	.dwpsn	file "./src/fuzz.c",line 570,column 12,is_stmt
        MOV #1, *(#_mutation_degression) ; |570| 
$C$L53:    
	.dwpsn	file "./src/fuzz.c",line 573,column 5,is_stmt
        MOV *(#_seed_head) << #7, AC0 ; |573| 
        MOV AC0, AR1 ; |573| 
        MOV dbl(*SP(#2)), XAR2
        AMOV #_local_pool, XAR3 ; |573| 
        AADD AR1, AR3 ; |573| 

        RPT #127  ; |573| 
||      AMAR *AR2, XAR1

                                            ; loop starts ; |573| 
$C$L54:    
$C$DW$L$_dequeue_seed$13$B:
            MOV *AR3+, *AR2+ ; |573| 
                                        ; loop ends ; |573| 
$C$DW$L$_dequeue_seed$13$E:
$C$L55:    
        MOV XAR1, dbl(*SP(#4))
	.dwpsn	file "./src/fuzz.c",line 575,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV XAR3, AC0
        BCC $C$L56,AC0 != #0 ; |575| 
                                        ; branchcc occurs ; |575| 
	.dwpsn	file "./src/fuzz.c",line 576,column 9,is_stmt
        AMOV #$C$FSL7, XAR3 ; |576| 
        MOV XAR3, dbl(*SP(#0))
$C$DW$245	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$245, DW_AT_low_pc(0x00)
	.dwattr $C$DW$245, DW_AT_name("_printf")
	.dwattr $C$DW$245, DW_AT_TI_call
        CALL #_printf ; |576| 
                                        ; call occurs [#_printf] ; |576| 
	.dwpsn	file "./src/fuzz.c",line 579,column 1,is_stmt
$C$L56:    
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$246	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$246, DW_AT_low_pc(0x00)
	.dwattr $C$DW$246, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$247	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$247, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/fuzz.asm:$C$L54:1:1728755387")
	.dwattr $C$DW$247, DW_AT_TI_begin_file("./src/fuzz.c")
	.dwattr $C$DW$247, DW_AT_TI_begin_line(0x23d)
	.dwattr $C$DW$247, DW_AT_TI_end_line(0x23d)
$C$DW$248	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$248, DW_AT_low_pc($C$DW$L$_dequeue_seed$13$B)
	.dwattr $C$DW$248, DW_AT_high_pc($C$DW$L$_dequeue_seed$13$E)
	.dwendtag $C$DW$247

	.dwattr $C$DW$241, DW_AT_TI_end_file("./src/fuzz.c")
	.dwattr $C$DW$241, DW_AT_TI_end_line(0x243)
	.dwattr $C$DW$241, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$241

	.sect	".text"
	.global	_bubble_coverage

$C$DW$249	.dwtag  DW_TAG_subprogram, DW_AT_name("bubble_coverage")
	.dwattr $C$DW$249, DW_AT_low_pc(_bubble_coverage)
	.dwattr $C$DW$249, DW_AT_high_pc(0x00)
	.dwattr $C$DW$249, DW_AT_TI_symbol_name("_bubble_coverage")
	.dwattr $C$DW$249, DW_AT_external
	.dwattr $C$DW$249, DW_AT_TI_begin_file("./src/fuzz.c")
	.dwattr $C$DW$249, DW_AT_TI_begin_line(0x246)
	.dwattr $C$DW$249, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$249, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "./src/fuzz.c",line 582,column 23,is_stmt,address _bubble_coverage

	.dwfde $C$DW$CIE, _bubble_coverage
;*******************************************************************************
;* FUNCTION NAME: bubble_coverage                                              *
;*                                                                             *
;*   Function Uses Regs : SP,M40,SATA,SATD,RDM,FRCT,SMUL                       *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 2 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (1 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_bubble_coverage:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-1, SP
	.dwcfi	cfa_offset, 2
$C$DW$250	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$250, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$250, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$250, DW_AT_location[DW_OP_bregx 0x24 0]
	.dwpsn	file "./src/fuzz.c",line 583,column 13,is_stmt
        MOV #0, *SP(#0) ; |583| 
	.dwpsn	file "./src/fuzz.c",line 584,column 2,is_stmt
	.dwpsn	file "./src/fuzz.c",line 585,column 1,is_stmt
        AADD #1, SP
	.dwcfi	cfa_offset, 1
$C$DW$251	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$251, DW_AT_low_pc(0x00)
	.dwattr $C$DW$251, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$249, DW_AT_TI_end_file("./src/fuzz.c")
	.dwattr $C$DW$249, DW_AT_TI_end_line(0x249)
	.dwattr $C$DW$249, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$249

	.sect	".text"
	.global	_main_harness_loop

$C$DW$252	.dwtag  DW_TAG_subprogram, DW_AT_name("main_harness_loop")
	.dwattr $C$DW$252, DW_AT_low_pc(_main_harness_loop)
	.dwattr $C$DW$252, DW_AT_high_pc(0x00)
	.dwattr $C$DW$252, DW_AT_TI_symbol_name("_main_harness_loop")
	.dwattr $C$DW$252, DW_AT_external
	.dwattr $C$DW$252, DW_AT_TI_begin_file("./src/fuzz.c")
	.dwattr $C$DW$252, DW_AT_TI_begin_line(0x24c)
	.dwattr $C$DW$252, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$252, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "./src/fuzz.c",line 588,column 25,is_stmt,address _main_harness_loop

	.dwfde $C$DW$CIE, _main_harness_loop
;*******************************************************************************
;* FUNCTION NAME: main_harness_loop                                            *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,CARRY,TC1,   *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 function parameters)                              *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_main_harness_loop:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$253	.dwtag  DW_TAG_variable, DW_AT_name("test_case_size")
	.dwattr $C$DW$253, DW_AT_TI_symbol_name("_test_case_size")
	.dwattr $C$DW$253, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$253, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$254	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$254, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$254, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$255	.dwtag  DW_TAG_variable, DW_AT_name("timer_handle")
	.dwattr $C$DW$255, DW_AT_TI_symbol_name("_timer_handle")
	.dwattr $C$DW$255, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$255, DW_AT_location[DW_OP_bregx 0x24 4]
	.dwpsn	file "./src/fuzz.c",line 594,column 2,is_stmt
        MOV #0, *(#_retVal) ; |594| 
	.dwpsn	file "./src/fuzz.c",line 598,column 5,is_stmt
        MOV #125, *SP(#2) ; |598| 
	.dwpsn	file "./src/fuzz.c",line 601,column 5,is_stmt
        MOV #(_sonar_test >> 16) << #16, AC0 ; |601| 
        OR #(_sonar_test & 0xffff), AC0, AC0 ; |601| 
        MOV AC0, XAR0
$C$DW$256	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$256, DW_AT_low_pc(0x00)
	.dwattr $C$DW$256, DW_AT_name("_setup")
	.dwattr $C$DW$256, DW_AT_TI_call
        CALL #_setup ; |601| 
                                        ; call occurs [#_setup] ; |601| 
	.dwpsn	file "./src/fuzz.c",line 603,column 5,is_stmt
        AMOV #_saved_context, XAR0 ; |603| 
$C$DW$257	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$257, DW_AT_low_pc(0x00)
	.dwattr $C$DW$257, DW_AT_name("__setjmp")
	.dwattr $C$DW$257, DW_AT_TI_call
        CALL #__setjmp ; |603| 
                                        ; call occurs [#__setjmp] ; |603| 
	.dwpsn	file "./src/fuzz.c",line 606,column 11,is_stmt
$C$L57:    
$C$DW$L$_main_harness_loop$3$B:
	.dwpsn	file "./src/fuzz.c",line 608,column 2,is_stmt
        ADD #1, *(#_iterations) ; |608| 
	.dwpsn	file "./src/fuzz.c",line 609,column 2,is_stmt
        MOV dbl(*(#_current_input)), XAR0
$C$DW$258	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$258, DW_AT_low_pc(0x00)
	.dwattr $C$DW$258, DW_AT_name("_dequeue_seed")
	.dwattr $C$DW$258, DW_AT_TI_call
        CALL #_dequeue_seed ; |609| 
                                        ; call occurs [#_dequeue_seed] ; |609| 
	.dwpsn	file "./src/fuzz.c",line 612,column 5,is_stmt
        MOV *SP(#2), T0 ; |612| 
        MOV dbl(*(#_current_input)), XAR0
$C$DW$259	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$259, DW_AT_low_pc(0x00)
	.dwattr $C$DW$259, DW_AT_name("_mutator")
	.dwattr $C$DW$259, DW_AT_TI_call
        CALL #_mutator ; |612| 
                                        ; call occurs [#_mutator] ; |612| 
	.dwpsn	file "./src/fuzz.c",line 630,column 5,is_stmt
        AMAR *SP(#4), XAR0
$C$DW$260	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$260, DW_AT_low_pc(0x00)
	.dwattr $C$DW$260, DW_AT_name("_start_timer")
	.dwattr $C$DW$260, DW_AT_TI_call
        CALL #_start_timer ; |630| 
                                        ; call occurs [#_start_timer] ; |630| 
	.dwpsn	file "./src/fuzz.c",line 633,column 5,is_stmt
        MOV dbl(*(#_current_input)), XAR0
        MOV *SP(#2), T0 ; |633| 
$C$DW$261	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$261, DW_AT_low_pc(0x00)
	.dwattr $C$DW$261, DW_AT_name("_sonar_test")
	.dwattr $C$DW$261, DW_AT_TI_call
        CALL #_sonar_test ; |633| 
                                        ; call occurs [#_sonar_test] ; |633| 
	.dwpsn	file "./src/fuzz.c",line 635,column 5,is_stmt
        AMAR *SP(#4), XAR0
$C$DW$262	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$262, DW_AT_low_pc(0x00)
	.dwattr $C$DW$262, DW_AT_name("_stop_timer")
	.dwattr $C$DW$262, DW_AT_TI_call
        CALL #_stop_timer ; |635| 
                                        ; call occurs [#_stop_timer] ; |635| 
	.dwpsn	file "./src/fuzz.c",line 637,column 5,is_stmt
        MOV *(#_cov_function_enter), AR1 ; |637| 
        BCC $C$L60,AR1 == #0 ; |637| 
                                        ; branchcc occurs ; |637| 
$C$DW$L$_main_harness_loop$3$E:
$C$DW$L$_main_harness_loop$4$B:
        MOV #65535, AR2 ; |637| 
        MOV *(#_coverage_map), AR1 ; |637| 
        CMPU AR1 == AR2, TC1 ; |637| 
        BCC $C$L60,TC1 ; |637| 
                                        ; branchcc occurs ; |637| 
$C$DW$L$_main_harness_loop$4$E:
$C$DW$L$_main_harness_loop$5$B:
	.dwpsn	file "./src/fuzz.c",line 639,column 9,is_stmt
$C$DW$263	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$263, DW_AT_low_pc(0x00)
	.dwattr $C$DW$263, DW_AT_name("_bubble_coverage")
	.dwattr $C$DW$263, DW_AT_TI_call
        CALL #_bubble_coverage ; |639| 
                                        ; call occurs [#_bubble_coverage] ; |639| 
	.dwpsn	file "./src/fuzz.c",line 642,column 13,is_stmt
        MOV #0, *SP(#3) ; |642| 
	.dwpsn	file "./src/fuzz.c",line 642,column 20,is_stmt
        MOV #200, AR2 ; |642| 
        MOV *SP(#3), AR1 ; |642| 
        CMPU AR1 >= AR2, TC1 ; |642| 
        BCC $C$L59,TC1 ; |642| 
                                        ; branchcc occurs ; |642| 
$C$DW$L$_main_harness_loop$5$E:
$C$L58:    
$C$DW$L$_main_harness_loop$6$B:
	.dwpsn	file "./src/fuzz.c",line 643,column 13,is_stmt
        MOV *SP(#3), T0 ; |643| 
        AMOV #_coverage_map, XAR3 ; |643| 
        MOV #0, *AR3(T0) ; |643| 
	.dwpsn	file "./src/fuzz.c",line 642,column 46,is_stmt
        ADD #1, *SP(#3) ; |642| 
	.dwpsn	file "./src/fuzz.c",line 642,column 20,is_stmt
        MOV *SP(#3), AR1 ; |642| 
        CMPU AR1 < AR2, TC1 ; |642| 
        BCC $C$L58,TC1 ; |642| 
                                        ; branchcc occurs ; |642| 
$C$DW$L$_main_harness_loop$6$E:
$C$L59:    
$C$DW$L$_main_harness_loop$7$B:
	.dwpsn	file "./src/fuzz.c",line 645,column 9,is_stmt
        MOV #65535, *(#_coverage_map) ; |645| 
	.dwpsn	file "./src/fuzz.c",line 646,column 9,is_stmt
        AMOV #_coverage_map, XAR3 ; |646| 
        MOV XAR3, dbl(*(#_coverage_map_head))
	.dwpsn	file "./src/fuzz.c",line 647,column 9,is_stmt
        MOV #0, *(#_cov_function_enter) ; |647| 
	.dwpsn	file "./src/fuzz.c",line 648,column 9,is_stmt
        MOV #1, *(#_mutation_degression) ; |648| 
	.dwpsn	file "./src/fuzz.c",line 649,column 5,is_stmt
        B $C$L61  ; |649| 
                                        ; branch occurs ; |649| 
$C$DW$L$_main_harness_loop$7$E:
$C$L60:    
$C$DW$L$_main_harness_loop$8$B:
	.dwpsn	file "./src/fuzz.c",line 650,column 10,is_stmt
        MOV *(#_cov_function_enter), AR1 ; |650| 
        BCC $C$L61,AR1 == #0 ; |650| 
                                        ; branchcc occurs ; |650| 
$C$DW$L$_main_harness_loop$8$E:
$C$DW$L$_main_harness_loop$9$B:
	.dwpsn	file "./src/fuzz.c",line 651,column 5,is_stmt
        AMOV #$C$FSL8, XAR3 ; |651| 
        MOV XAR3, dbl(*SP(#0))
$C$DW$264	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$264, DW_AT_low_pc(0x00)
	.dwattr $C$DW$264, DW_AT_name("_printf")
	.dwattr $C$DW$264, DW_AT_TI_call
        CALL #_printf ; |651| 
                                        ; call occurs [#_printf] ; |651| 
$C$DW$L$_main_harness_loop$9$E:
$C$L61:    
$C$DW$L$_main_harness_loop$10$B:
	.dwpsn	file "./src/fuzz.c",line 654,column 5,is_stmt
        AMOV #_saved_context, XAR0 ; |654| 
$C$DW$265	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$265, DW_AT_low_pc(0x00)
	.dwattr $C$DW$265, DW_AT_name("_longjmp")
	.dwattr $C$DW$265, DW_AT_TI_call

        CALL #_longjmp ; |654| 
||      MOV #1, T0

                                        ; call occurs [#_longjmp] ; |654| 
	.dwpsn	file "./src/fuzz.c",line 606,column 11,is_stmt
        B $C$L57  ; |606| 
                                        ; branch occurs ; |606| 
$C$DW$L$_main_harness_loop$10$E:
	.dwcfi	cfa_offset, 1

$C$DW$266	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$266, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/fuzz.asm:$C$L57:1:1728755387")
	.dwattr $C$DW$266, DW_AT_TI_begin_file("./src/fuzz.c")
	.dwattr $C$DW$266, DW_AT_TI_begin_line(0x25e)
	.dwattr $C$DW$266, DW_AT_TI_end_line(0x290)
$C$DW$267	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$267, DW_AT_low_pc($C$DW$L$_main_harness_loop$3$B)
	.dwattr $C$DW$267, DW_AT_high_pc($C$DW$L$_main_harness_loop$3$E)
$C$DW$268	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$268, DW_AT_low_pc($C$DW$L$_main_harness_loop$4$B)
	.dwattr $C$DW$268, DW_AT_high_pc($C$DW$L$_main_harness_loop$4$E)
$C$DW$269	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$269, DW_AT_low_pc($C$DW$L$_main_harness_loop$5$B)
	.dwattr $C$DW$269, DW_AT_high_pc($C$DW$L$_main_harness_loop$5$E)
$C$DW$270	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$270, DW_AT_low_pc($C$DW$L$_main_harness_loop$7$B)
	.dwattr $C$DW$270, DW_AT_high_pc($C$DW$L$_main_harness_loop$7$E)
$C$DW$271	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$271, DW_AT_low_pc($C$DW$L$_main_harness_loop$8$B)
	.dwattr $C$DW$271, DW_AT_high_pc($C$DW$L$_main_harness_loop$8$E)
$C$DW$272	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$272, DW_AT_low_pc($C$DW$L$_main_harness_loop$9$B)
	.dwattr $C$DW$272, DW_AT_high_pc($C$DW$L$_main_harness_loop$9$E)
$C$DW$273	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$273, DW_AT_low_pc($C$DW$L$_main_harness_loop$10$B)
	.dwattr $C$DW$273, DW_AT_high_pc($C$DW$L$_main_harness_loop$10$E)

$C$DW$274	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$274, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/fuzz.asm:$C$L58:2:1728755387")
	.dwattr $C$DW$274, DW_AT_TI_begin_file("./src/fuzz.c")
	.dwattr $C$DW$274, DW_AT_TI_begin_line(0x282)
	.dwattr $C$DW$274, DW_AT_TI_end_line(0x284)
$C$DW$275	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$275, DW_AT_low_pc($C$DW$L$_main_harness_loop$6$B)
	.dwattr $C$DW$275, DW_AT_high_pc($C$DW$L$_main_harness_loop$6$E)
	.dwendtag $C$DW$274

	.dwendtag $C$DW$266

	.dwattr $C$DW$252, DW_AT_TI_end_file("./src/fuzz.c")
	.dwattr $C$DW$252, DW_AT_TI_end_line(0x291)
	.dwattr $C$DW$252, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$252

	.sect	".text"
	.global	_main

$C$DW$276	.dwtag  DW_TAG_subprogram, DW_AT_name("main")
	.dwattr $C$DW$276, DW_AT_low_pc(_main)
	.dwattr $C$DW$276, DW_AT_high_pc(0x00)
	.dwattr $C$DW$276, DW_AT_TI_symbol_name("_main")
	.dwattr $C$DW$276, DW_AT_external
	.dwattr $C$DW$276, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$276, DW_AT_TI_begin_file("./src/fuzz.c")
	.dwattr $C$DW$276, DW_AT_TI_begin_line(0x293)
	.dwattr $C$DW$276, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$276, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "./src/fuzz.c",line 659,column 15,is_stmt,address _main

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
	.dwpsn	file "./src/fuzz.c",line 661,column 5,is_stmt
$C$DW$277	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$277, DW_AT_low_pc(0x00)
	.dwattr $C$DW$277, DW_AT_name("_main_harness_loop")
	.dwattr $C$DW$277, DW_AT_TI_call
        CALL #_main_harness_loop ; |661| 
                                        ; call occurs [#_main_harness_loop] ; |661| 
	.dwpsn	file "./src/fuzz.c",line 662,column 1,is_stmt
        MOV #0, T0
        AADD #1, SP
	.dwcfi	cfa_offset, 1
$C$DW$278	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$278, DW_AT_low_pc(0x00)
	.dwattr $C$DW$278, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$276, DW_AT_TI_end_file("./src/fuzz.c")
	.dwattr $C$DW$276, DW_AT_TI_end_line(0x296)
	.dwattr $C$DW$276, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$276

;*******************************************************************************
;* FAR STRINGS                                                                 *
;*******************************************************************************
	.sect	".const:.string"
	.align	2
$C$FSL1:	.string	10,"LOG: Hit a software hang",10,0
	.align	2
$C$FSL2:	.string	"LOG: Found a bus error ",10,0
	.align	2
$C$FSL3:	.string	"LOG: Found a data log error ",10,0
	.align	2
$C$FSL4:	.string	"Failed to get memory for input buffer.",10,0
	.align	2
$C$FSL5:	.string	"Cannot fuzz a empty input...",0
	.align	2
$C$FSL6:	.string	"Assertion failed, (",34,"Cannot fuzz a empty input...",34,")"
	.string	", file ./src/fuzz.c, line 335",10,0
	.align	2
$C$FSL7:	.string	"ERROR: Failed to copy seed to input buffer. ",10,0
	.align	2
$C$FSL8:	.string	"ERROR: Coverage map is zeroed but flag is set. ",10,0
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_rand
	.global	_srand
	.global	_calloc
	.global	_exit
	.global	_time
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
	.global	_printf
	.global	_memset
	.global	__setjmp
	.global	_longjmp
	.global	_sonar_test
	.global	__remul
	.global	__abort_msg
	.global	__divu
	.global	__remu
	.global	__remi

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$22	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x01)
$C$DW$279	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_0"), DW_AT_const_value(0x00)
$C$DW$280	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_1"), DW_AT_const_value(0x01)
$C$DW$281	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_2"), DW_AT_const_value(0x02)
$C$DW$282	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_INVALID"), DW_AT_const_value(0x03)
	.dwendtag $C$DW$T$22

$C$DW$T$23	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_Instance")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)

$C$DW$T$29	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x01)
$C$DW$283	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_AUTO_DISABLE"), DW_AT_const_value(0x00)
$C$DW$284	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_AUTO_ENABLE"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$29

$C$DW$T$30	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_AutoReLoad")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$30, DW_AT_language(DW_LANG_C)

$C$DW$T$31	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x01)
$C$DW$285	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_PRE_SC_DIV_0"), DW_AT_const_value(0x00)
$C$DW$286	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_PRE_SC_DIV_1"), DW_AT_const_value(0x01)
$C$DW$287	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_PRE_SC_DIV_2"), DW_AT_const_value(0x02)
$C$DW$288	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_PRE_SC_DIV_3"), DW_AT_const_value(0x03)
$C$DW$289	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_PRE_SC_DIV_4"), DW_AT_const_value(0x04)
$C$DW$290	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_PRE_SC_DIV_5"), DW_AT_const_value(0x05)
$C$DW$291	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_PRE_SC_DIV_6"), DW_AT_const_value(0x06)
$C$DW$292	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_PRE_SC_DIV_7"), DW_AT_const_value(0x07)
$C$DW$293	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_PRE_SC_DIV_8"), DW_AT_const_value(0x08)
$C$DW$294	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_PRE_SC_DIV_9"), DW_AT_const_value(0x09)
$C$DW$295	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_PRE_SC_DIV_10"), DW_AT_const_value(0x0a)
$C$DW$296	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_PRE_SC_DIV_11"), DW_AT_const_value(0x0b)
$C$DW$297	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_PRE_SC_DIV_12"), DW_AT_const_value(0x0c)
$C$DW$298	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_PRE_SC_DIV_RESERVE"), DW_AT_const_value(0x0d)
	.dwendtag $C$DW$T$31

$C$DW$T$32	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_PreScale")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$32, DW_AT_language(DW_LANG_C)

$C$DW$T$33	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x01)
$C$DW$299	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_TIMER_DISABLE"), DW_AT_const_value(0x00)
$C$DW$300	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_TIMER_ENABLE"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$33

$C$DW$T$34	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_CtrlTimer")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)

$C$DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x06)
$C$DW$301	.dwtag  DW_TAG_member
	.dwattr $C$DW$301, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$301, DW_AT_name("TCR")
	.dwattr $C$DW$301, DW_AT_TI_symbol_name("_TCR")
	.dwattr $C$DW$301, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$301, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$302	.dwtag  DW_TAG_member
	.dwattr $C$DW$302, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$302, DW_AT_name("RSVD0")
	.dwattr $C$DW$302, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$302, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$302, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$303	.dwtag  DW_TAG_member
	.dwattr $C$DW$303, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$303, DW_AT_name("TIMPRD1")
	.dwattr $C$DW$303, DW_AT_TI_symbol_name("_TIMPRD1")
	.dwattr $C$DW$303, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$303, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$304	.dwtag  DW_TAG_member
	.dwattr $C$DW$304, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$304, DW_AT_name("TIMPRD2")
	.dwattr $C$DW$304, DW_AT_TI_symbol_name("_TIMPRD2")
	.dwattr $C$DW$304, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$304, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$305	.dwtag  DW_TAG_member
	.dwattr $C$DW$305, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$305, DW_AT_name("TIMCNT1")
	.dwattr $C$DW$305, DW_AT_TI_symbol_name("_TIMCNT1")
	.dwattr $C$DW$305, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$305, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$306	.dwtag  DW_TAG_member
	.dwattr $C$DW$306, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$306, DW_AT_name("TIMCNT2")
	.dwattr $C$DW$306, DW_AT_TI_symbol_name("_TIMCNT2")
	.dwattr $C$DW$306, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$306, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$21

$C$DW$T$24	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_TimRegs")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
$C$DW$307	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$307, DW_AT_type(*$C$DW$T$24)
$C$DW$308	.dwtag  DW_TAG_TI_ioport_type
	.dwattr $C$DW$308, DW_AT_type(*$C$DW$307)
$C$DW$T$25	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$308)
$C$DW$T$26	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_address_class(0x10)
$C$DW$T$27	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_TimRegsOvly")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)

$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x03)
$C$DW$309	.dwtag  DW_TAG_member
	.dwattr $C$DW$309, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$309, DW_AT_name("Instance")
	.dwattr $C$DW$309, DW_AT_TI_symbol_name("_Instance")
	.dwattr $C$DW$309, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$309, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$310	.dwtag  DW_TAG_member
	.dwattr $C$DW$310, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$310, DW_AT_name("EventId")
	.dwattr $C$DW$310, DW_AT_TI_symbol_name("_EventId")
	.dwattr $C$DW$310, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$310, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$311	.dwtag  DW_TAG_member
	.dwattr $C$DW$311, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$311, DW_AT_name("regs")
	.dwattr $C$DW$311, DW_AT_TI_symbol_name("_regs")
	.dwattr $C$DW$311, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$311, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$28

$C$DW$T$40	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_GptObj")
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$40, DW_AT_language(DW_LANG_C)
$C$DW$T$41	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$41, DW_AT_address_class(0x17)
$C$DW$T$42	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_Handle")
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$42, DW_AT_language(DW_LANG_C)
$C$DW$T$48	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$48, DW_AT_address_class(0x17)

$C$DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x05)
$C$DW$312	.dwtag  DW_TAG_member
	.dwattr $C$DW$312, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$312, DW_AT_name("autoLoad")
	.dwattr $C$DW$312, DW_AT_TI_symbol_name("_autoLoad")
	.dwattr $C$DW$312, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$312, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$313	.dwtag  DW_TAG_member
	.dwattr $C$DW$313, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$313, DW_AT_name("preScaleDiv")
	.dwattr $C$DW$313, DW_AT_TI_symbol_name("_preScaleDiv")
	.dwattr $C$DW$313, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$313, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$314	.dwtag  DW_TAG_member
	.dwattr $C$DW$314, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$314, DW_AT_name("ctrlTim")
	.dwattr $C$DW$314, DW_AT_TI_symbol_name("_ctrlTim")
	.dwattr $C$DW$314, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$314, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$315	.dwtag  DW_TAG_member
	.dwattr $C$DW$315, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$315, DW_AT_name("prdLow")
	.dwattr $C$DW$315, DW_AT_TI_symbol_name("_prdLow")
	.dwattr $C$DW$315, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$315, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$316	.dwtag  DW_TAG_member
	.dwattr $C$DW$316, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$316, DW_AT_name("prdHigh")
	.dwattr $C$DW$316, DW_AT_TI_symbol_name("_prdHigh")
	.dwattr $C$DW$316, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$316, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$35

$C$DW$T$49	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_Config")
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$49, DW_AT_language(DW_LANG_C)
$C$DW$T$50	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$T$50, DW_AT_address_class(0x17)

$C$DW$T$39	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x48)
$C$DW$317	.dwtag  DW_TAG_member
	.dwattr $C$DW$317, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$317, DW_AT_name("EBSR")
	.dwattr $C$DW$317, DW_AT_TI_symbol_name("_EBSR")
	.dwattr $C$DW$317, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$317, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$318	.dwtag  DW_TAG_member
	.dwattr $C$DW$318, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$318, DW_AT_name("RSVD0")
	.dwattr $C$DW$318, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$318, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$318, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$319	.dwtag  DW_TAG_member
	.dwattr $C$DW$319, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$319, DW_AT_name("PCGCR1")
	.dwattr $C$DW$319, DW_AT_TI_symbol_name("_PCGCR1")
	.dwattr $C$DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$319, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$320	.dwtag  DW_TAG_member
	.dwattr $C$DW$320, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$320, DW_AT_name("PCGCR2")
	.dwattr $C$DW$320, DW_AT_TI_symbol_name("_PCGCR2")
	.dwattr $C$DW$320, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$320, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$321	.dwtag  DW_TAG_member
	.dwattr $C$DW$321, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$321, DW_AT_name("PSRCR")
	.dwattr $C$DW$321, DW_AT_TI_symbol_name("_PSRCR")
	.dwattr $C$DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$321, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$322	.dwtag  DW_TAG_member
	.dwattr $C$DW$322, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$322, DW_AT_name("PRCR")
	.dwattr $C$DW$322, DW_AT_TI_symbol_name("_PRCR")
	.dwattr $C$DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$322, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$323	.dwtag  DW_TAG_member
	.dwattr $C$DW$323, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$323, DW_AT_name("RSVD1")
	.dwattr $C$DW$323, DW_AT_TI_symbol_name("_RSVD1")
	.dwattr $C$DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$323, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$324	.dwtag  DW_TAG_member
	.dwattr $C$DW$324, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$324, DW_AT_name("TIAFR")
	.dwattr $C$DW$324, DW_AT_TI_symbol_name("_TIAFR")
	.dwattr $C$DW$324, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$324, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$325	.dwtag  DW_TAG_member
	.dwattr $C$DW$325, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$325, DW_AT_name("RSVD2")
	.dwattr $C$DW$325, DW_AT_TI_symbol_name("_RSVD2")
	.dwattr $C$DW$325, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$325, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$326	.dwtag  DW_TAG_member
	.dwattr $C$DW$326, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$326, DW_AT_name("ODSCR")
	.dwattr $C$DW$326, DW_AT_TI_symbol_name("_ODSCR")
	.dwattr $C$DW$326, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$326, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$327	.dwtag  DW_TAG_member
	.dwattr $C$DW$327, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$327, DW_AT_name("PDINHIBR1")
	.dwattr $C$DW$327, DW_AT_TI_symbol_name("_PDINHIBR1")
	.dwattr $C$DW$327, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$327, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$328	.dwtag  DW_TAG_member
	.dwattr $C$DW$328, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$328, DW_AT_name("PDINHIBR2")
	.dwattr $C$DW$328, DW_AT_TI_symbol_name("_PDINHIBR2")
	.dwattr $C$DW$328, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$328, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$329	.dwtag  DW_TAG_member
	.dwattr $C$DW$329, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$329, DW_AT_name("PDINHIBR3")
	.dwattr $C$DW$329, DW_AT_TI_symbol_name("_PDINHIBR3")
	.dwattr $C$DW$329, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$329, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$330	.dwtag  DW_TAG_member
	.dwattr $C$DW$330, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$330, DW_AT_name("DMA0CESR1")
	.dwattr $C$DW$330, DW_AT_TI_symbol_name("_DMA0CESR1")
	.dwattr $C$DW$330, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$330, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$331	.dwtag  DW_TAG_member
	.dwattr $C$DW$331, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$331, DW_AT_name("DMA0CESR2")
	.dwattr $C$DW$331, DW_AT_TI_symbol_name("_DMA0CESR2")
	.dwattr $C$DW$331, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr $C$DW$331, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$332	.dwtag  DW_TAG_member
	.dwattr $C$DW$332, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$332, DW_AT_name("DMA1CESR1")
	.dwattr $C$DW$332, DW_AT_TI_symbol_name("_DMA1CESR1")
	.dwattr $C$DW$332, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$332, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$333	.dwtag  DW_TAG_member
	.dwattr $C$DW$333, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$333, DW_AT_name("DMA1CESR2")
	.dwattr $C$DW$333, DW_AT_TI_symbol_name("_DMA1CESR2")
	.dwattr $C$DW$333, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr $C$DW$333, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$334	.dwtag  DW_TAG_member
	.dwattr $C$DW$334, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$334, DW_AT_name("CCR1")
	.dwattr $C$DW$334, DW_AT_TI_symbol_name("_CCR1")
	.dwattr $C$DW$334, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$334, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$335	.dwtag  DW_TAG_member
	.dwattr $C$DW$335, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$335, DW_AT_name("CCR2")
	.dwattr $C$DW$335, DW_AT_TI_symbol_name("_CCR2")
	.dwattr $C$DW$335, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr $C$DW$335, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$336	.dwtag  DW_TAG_member
	.dwattr $C$DW$336, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$336, DW_AT_name("CGCR1")
	.dwattr $C$DW$336, DW_AT_TI_symbol_name("_CGCR1")
	.dwattr $C$DW$336, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$336, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$337	.dwtag  DW_TAG_member
	.dwattr $C$DW$337, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$337, DW_AT_name("CGCR2")
	.dwattr $C$DW$337, DW_AT_TI_symbol_name("_CGCR2")
	.dwattr $C$DW$337, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr $C$DW$337, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$338	.dwtag  DW_TAG_member
	.dwattr $C$DW$338, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$338, DW_AT_name("CGCR3")
	.dwattr $C$DW$338, DW_AT_TI_symbol_name("_CGCR3")
	.dwattr $C$DW$338, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$338, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$339	.dwtag  DW_TAG_member
	.dwattr $C$DW$339, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$339, DW_AT_name("CGCR4")
	.dwattr $C$DW$339, DW_AT_TI_symbol_name("_CGCR4")
	.dwattr $C$DW$339, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr $C$DW$339, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$340	.dwtag  DW_TAG_member
	.dwattr $C$DW$340, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$340, DW_AT_name("CCSSR")
	.dwattr $C$DW$340, DW_AT_TI_symbol_name("_CCSSR")
	.dwattr $C$DW$340, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$340, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$341	.dwtag  DW_TAG_member
	.dwattr $C$DW$341, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$341, DW_AT_name("RSVD3")
	.dwattr $C$DW$341, DW_AT_TI_symbol_name("_RSVD3")
	.dwattr $C$DW$341, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr $C$DW$341, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$342	.dwtag  DW_TAG_member
	.dwattr $C$DW$342, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$342, DW_AT_name("ECDR")
	.dwattr $C$DW$342, DW_AT_TI_symbol_name("_ECDR")
	.dwattr $C$DW$342, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$342, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$343	.dwtag  DW_TAG_member
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$343, DW_AT_name("RSVD4")
	.dwattr $C$DW$343, DW_AT_TI_symbol_name("_RSVD4")
	.dwattr $C$DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr $C$DW$343, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$344	.dwtag  DW_TAG_member
	.dwattr $C$DW$344, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$344, DW_AT_name("RAMSLPMDCNTLR1")
	.dwattr $C$DW$344, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR1")
	.dwattr $C$DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$344, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$345	.dwtag  DW_TAG_member
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$345, DW_AT_name("RSVD5")
	.dwattr $C$DW$345, DW_AT_TI_symbol_name("_RSVD5")
	.dwattr $C$DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr $C$DW$345, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$346	.dwtag  DW_TAG_member
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$346, DW_AT_name("RAMSLPMDCNTLR2")
	.dwattr $C$DW$346, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR2")
	.dwattr $C$DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$346, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$347	.dwtag  DW_TAG_member
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$347, DW_AT_name("RAMSLPMDCNTLR3")
	.dwattr $C$DW$347, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR3")
	.dwattr $C$DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr $C$DW$347, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$348	.dwtag  DW_TAG_member
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$348, DW_AT_name("RAMSLPMDCNTLR4")
	.dwattr $C$DW$348, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR4")
	.dwattr $C$DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$348, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$349	.dwtag  DW_TAG_member
	.dwattr $C$DW$349, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$349, DW_AT_name("RAMSLPMDCNTLR5")
	.dwattr $C$DW$349, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR5")
	.dwattr $C$DW$349, DW_AT_data_member_location[DW_OP_plus_uconst 0x2d]
	.dwattr $C$DW$349, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$350	.dwtag  DW_TAG_member
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$350, DW_AT_name("RSVD6")
	.dwattr $C$DW$350, DW_AT_TI_symbol_name("_RSVD6")
	.dwattr $C$DW$350, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr $C$DW$350, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$351	.dwtag  DW_TAG_member
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$351, DW_AT_name("DMAIFR")
	.dwattr $C$DW$351, DW_AT_TI_symbol_name("_DMAIFR")
	.dwattr $C$DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$351, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$352	.dwtag  DW_TAG_member
	.dwattr $C$DW$352, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$352, DW_AT_name("DMAIER")
	.dwattr $C$DW$352, DW_AT_TI_symbol_name("_DMAIER")
	.dwattr $C$DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0x31]
	.dwattr $C$DW$352, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$353	.dwtag  DW_TAG_member
	.dwattr $C$DW$353, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$353, DW_AT_name("USBSCR")
	.dwattr $C$DW$353, DW_AT_TI_symbol_name("_USBSCR")
	.dwattr $C$DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$353, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$354	.dwtag  DW_TAG_member
	.dwattr $C$DW$354, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$354, DW_AT_name("ESCR")
	.dwattr $C$DW$354, DW_AT_TI_symbol_name("_ESCR")
	.dwattr $C$DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0x33]
	.dwattr $C$DW$354, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$355	.dwtag  DW_TAG_member
	.dwattr $C$DW$355, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$355, DW_AT_name("RSVD7")
	.dwattr $C$DW$355, DW_AT_TI_symbol_name("_RSVD7")
	.dwattr $C$DW$355, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$355, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$356	.dwtag  DW_TAG_member
	.dwattr $C$DW$356, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$356, DW_AT_name("DMA2CESR1")
	.dwattr $C$DW$356, DW_AT_TI_symbol_name("_DMA2CESR1")
	.dwattr $C$DW$356, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$356, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$357	.dwtag  DW_TAG_member
	.dwattr $C$DW$357, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$357, DW_AT_name("DMA2CESR2")
	.dwattr $C$DW$357, DW_AT_TI_symbol_name("_DMA2CESR2")
	.dwattr $C$DW$357, DW_AT_data_member_location[DW_OP_plus_uconst 0x37]
	.dwattr $C$DW$357, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$358	.dwtag  DW_TAG_member
	.dwattr $C$DW$358, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$358, DW_AT_name("DMA3CESR1")
	.dwattr $C$DW$358, DW_AT_TI_symbol_name("_DMA3CESR1")
	.dwattr $C$DW$358, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$358, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$359	.dwtag  DW_TAG_member
	.dwattr $C$DW$359, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$359, DW_AT_name("DMA3CESR2")
	.dwattr $C$DW$359, DW_AT_TI_symbol_name("_DMA3CESR2")
	.dwattr $C$DW$359, DW_AT_data_member_location[DW_OP_plus_uconst 0x39]
	.dwattr $C$DW$359, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$360	.dwtag  DW_TAG_member
	.dwattr $C$DW$360, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$360, DW_AT_name("CLKSTOP")
	.dwattr $C$DW$360, DW_AT_TI_symbol_name("_CLKSTOP")
	.dwattr $C$DW$360, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr $C$DW$360, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$361	.dwtag  DW_TAG_member
	.dwattr $C$DW$361, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$361, DW_AT_name("RSVD8")
	.dwattr $C$DW$361, DW_AT_TI_symbol_name("_RSVD8")
	.dwattr $C$DW$361, DW_AT_data_member_location[DW_OP_plus_uconst 0x3b]
	.dwattr $C$DW$361, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$362	.dwtag  DW_TAG_member
	.dwattr $C$DW$362, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$362, DW_AT_name("DIEIDR0")
	.dwattr $C$DW$362, DW_AT_TI_symbol_name("_DIEIDR0")
	.dwattr $C$DW$362, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$362, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$363	.dwtag  DW_TAG_member
	.dwattr $C$DW$363, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$363, DW_AT_name("DIEIDR1")
	.dwattr $C$DW$363, DW_AT_TI_symbol_name("_DIEIDR1")
	.dwattr $C$DW$363, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr $C$DW$363, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$364	.dwtag  DW_TAG_member
	.dwattr $C$DW$364, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$364, DW_AT_name("DIEIDR2")
	.dwattr $C$DW$364, DW_AT_TI_symbol_name("_DIEIDR2")
	.dwattr $C$DW$364, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr $C$DW$364, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$365	.dwtag  DW_TAG_member
	.dwattr $C$DW$365, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$365, DW_AT_name("DIEIDR3")
	.dwattr $C$DW$365, DW_AT_TI_symbol_name("_DIEIDR3")
	.dwattr $C$DW$365, DW_AT_data_member_location[DW_OP_plus_uconst 0x43]
	.dwattr $C$DW$365, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$366	.dwtag  DW_TAG_member
	.dwattr $C$DW$366, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$366, DW_AT_name("DIEIDR4")
	.dwattr $C$DW$366, DW_AT_TI_symbol_name("_DIEIDR4")
	.dwattr $C$DW$366, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$366, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$367	.dwtag  DW_TAG_member
	.dwattr $C$DW$367, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$367, DW_AT_name("DIEIDR5")
	.dwattr $C$DW$367, DW_AT_TI_symbol_name("_DIEIDR5")
	.dwattr $C$DW$367, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr $C$DW$367, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$368	.dwtag  DW_TAG_member
	.dwattr $C$DW$368, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$368, DW_AT_name("DIEIDR6")
	.dwattr $C$DW$368, DW_AT_TI_symbol_name("_DIEIDR6")
	.dwattr $C$DW$368, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr $C$DW$368, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$369	.dwtag  DW_TAG_member
	.dwattr $C$DW$369, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$369, DW_AT_name("DIEIDR7")
	.dwattr $C$DW$369, DW_AT_TI_symbol_name("_DIEIDR7")
	.dwattr $C$DW$369, DW_AT_data_member_location[DW_OP_plus_uconst 0x47]
	.dwattr $C$DW$369, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$39

$C$DW$T$51	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SysRegs")
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$51, DW_AT_language(DW_LANG_C)
$C$DW$370	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$370, DW_AT_type(*$C$DW$T$51)
$C$DW$371	.dwtag  DW_TAG_TI_ioport_type
	.dwattr $C$DW$371, DW_AT_type(*$C$DW$370)
$C$DW$T$52	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$371)
$C$DW$T$53	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$T$53, DW_AT_address_class(0x10)
$C$DW$T$54	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SysRegsOvly")
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$T$54, DW_AT_language(DW_LANG_C)
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x17)
$C$DW$372	.dwtag  DW_TAG_TI_far_type
$C$DW$T$55	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$372)
$C$DW$T$56	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$T$56, DW_AT_address_class(0x17)

$C$DW$T$71	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$71, DW_AT_language(DW_LANG_C)
$C$DW$T$72	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$72, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$T$72, DW_AT_address_class(0x20)
$C$DW$T$73	.dwtag  DW_TAG_typedef, DW_AT_name("IRQ_IsrPtr")
	.dwattr $C$DW$T$73, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$T$73, DW_AT_language(DW_LANG_C)
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
$C$DW$T$43	.dwtag  DW_TAG_typedef, DW_AT_name("Int16")
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$43, DW_AT_language(DW_LANG_C)
$C$DW$T$44	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_Status")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)
$C$DW$T$45	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$45, DW_AT_address_class(0x17)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)
$C$DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
$C$DW$373	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$373, DW_AT_type(*$C$DW$T$19)
$C$DW$T$20	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$373)

$C$DW$T$36	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x0e)
$C$DW$374	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$374, DW_AT_upper_bound(0x0d)
	.dwendtag $C$DW$T$36


$C$DW$T$37	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x02)
$C$DW$375	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$375, DW_AT_upper_bound(0x01)
	.dwendtag $C$DW$T$37


$C$DW$T$38	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$38, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x05)
$C$DW$376	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$376, DW_AT_upper_bound(0x04)
	.dwendtag $C$DW$T$38

$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x01)
$C$DW$T$97	.dwtag  DW_TAG_typedef, DW_AT_name("Bool")
	.dwattr $C$DW$T$97, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$97, DW_AT_language(DW_LANG_C)
$C$DW$T$81	.dwtag  DW_TAG_typedef, DW_AT_name("int16_t")
	.dwattr $C$DW$T$81, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$81, DW_AT_language(DW_LANG_C)
$C$DW$T$82	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$T$82, DW_AT_address_class(0x17)

$C$DW$T$114	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$114, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$T$114, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$114, DW_AT_byte_size(0x80)
$C$DW$377	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$377, DW_AT_upper_bound(0x7f)
	.dwendtag $C$DW$T$114

$C$DW$378	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$378, DW_AT_type(*$C$DW$T$81)
$C$DW$T$115	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$115, DW_AT_type(*$C$DW$378)

$C$DW$T$116	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$116, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$T$116, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$116, DW_AT_byte_size(0x80)
$C$DW$379	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$379, DW_AT_upper_bound(0x7f)
	.dwendtag $C$DW$T$116


$C$DW$T$117	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$117, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$T$117, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$117, DW_AT_byte_size(0x780)
$C$DW$380	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$380, DW_AT_upper_bound(0x0e)
$C$DW$381	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$381, DW_AT_upper_bound(0x7f)
	.dwendtag $C$DW$T$117

$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)
$C$DW$T$121	.dwtag  DW_TAG_typedef, DW_AT_name("_Bool")
	.dwattr $C$DW$T$121, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$121, DW_AT_language(DW_LANG_C)
$C$DW$T$57	.dwtag  DW_TAG_typedef, DW_AT_name("size_t")
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$57, DW_AT_language(DW_LANG_C)
$C$DW$T$122	.dwtag  DW_TAG_typedef, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$122, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$122, DW_AT_language(DW_LANG_C)
$C$DW$382	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$382, DW_AT_type(*$C$DW$T$122)
$C$DW$T$123	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$123, DW_AT_type(*$C$DW$382)

$C$DW$T$124	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$124, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$124, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$124, DW_AT_byte_size(0xc8)
$C$DW$383	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$383, DW_AT_upper_bound(0xc7)
	.dwendtag $C$DW$T$124

$C$DW$T$126	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$126, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$126, DW_AT_address_class(0x17)
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)
$C$DW$T$74	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$74, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$74, DW_AT_address_class(0x17)

$C$DW$T$127	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$127, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$127, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$127, DW_AT_byte_size(0x10)
$C$DW$384	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$384, DW_AT_upper_bound(0x07)
	.dwendtag $C$DW$T$127

$C$DW$T$128	.dwtag  DW_TAG_typedef, DW_AT_name("jmp_buf")
	.dwattr $C$DW$T$128, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$T$128, DW_AT_language(DW_LANG_C)
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)
$C$DW$T$93	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32")
	.dwattr $C$DW$T$93, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$93, DW_AT_language(DW_LANG_C)
$C$DW$T$129	.dwtag  DW_TAG_typedef, DW_AT_name("time_t")
	.dwattr $C$DW$T$129, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$129, DW_AT_language(DW_LANG_C)
$C$DW$T$130	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$130, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$T$130, DW_AT_address_class(0x17)
$C$DW$T$133	.dwtag  DW_TAG_typedef, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$133, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$133, DW_AT_language(DW_LANG_C)
$C$DW$T$134	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$134, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$T$134, DW_AT_address_class(0x17)
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
$C$DW$T$63	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$63, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$63, DW_AT_name("signed char")
	.dwattr $C$DW$T$63, DW_AT_byte_size(0x01)
$C$DW$385	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$385, DW_AT_type(*$C$DW$T$63)
$C$DW$T$64	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$385)
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

$C$DW$386	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$386, DW_AT_location[DW_OP_reg0]
$C$DW$387	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$387, DW_AT_location[DW_OP_reg1]
$C$DW$388	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$388, DW_AT_location[DW_OP_reg2]
$C$DW$389	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$389, DW_AT_location[DW_OP_reg3]
$C$DW$390	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$390, DW_AT_location[DW_OP_reg4]
$C$DW$391	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$391, DW_AT_location[DW_OP_reg5]
$C$DW$392	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$392, DW_AT_location[DW_OP_reg6]
$C$DW$393	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$393, DW_AT_location[DW_OP_reg7]
$C$DW$394	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$394, DW_AT_location[DW_OP_reg8]
$C$DW$395	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$395, DW_AT_location[DW_OP_reg9]
$C$DW$396	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$396, DW_AT_location[DW_OP_reg10]
$C$DW$397	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$397, DW_AT_location[DW_OP_reg11]
$C$DW$398	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$398, DW_AT_location[DW_OP_reg12]
$C$DW$399	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$399, DW_AT_location[DW_OP_reg13]
$C$DW$400	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$400, DW_AT_location[DW_OP_reg14]
$C$DW$401	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$401, DW_AT_location[DW_OP_reg15]
$C$DW$402	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$402, DW_AT_location[DW_OP_reg16]
$C$DW$403	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$403, DW_AT_location[DW_OP_reg17]
$C$DW$404	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$404, DW_AT_location[DW_OP_reg18]
$C$DW$405	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$405, DW_AT_location[DW_OP_reg19]
$C$DW$406	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$406, DW_AT_location[DW_OP_reg20]
$C$DW$407	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$407, DW_AT_location[DW_OP_reg21]
$C$DW$408	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$408, DW_AT_location[DW_OP_reg22]
$C$DW$409	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$409, DW_AT_location[DW_OP_reg23]
$C$DW$410	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$410, DW_AT_location[DW_OP_reg24]
$C$DW$411	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$411, DW_AT_location[DW_OP_reg25]
$C$DW$412	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$412, DW_AT_location[DW_OP_reg26]
$C$DW$413	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$413, DW_AT_location[DW_OP_reg27]
$C$DW$414	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$414, DW_AT_location[DW_OP_reg28]
$C$DW$415	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$415, DW_AT_location[DW_OP_reg29]
$C$DW$416	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$416, DW_AT_location[DW_OP_reg30]
$C$DW$417	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$417, DW_AT_location[DW_OP_reg31]
$C$DW$418	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$418, DW_AT_location[DW_OP_regx 0x20]
$C$DW$419	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$419, DW_AT_location[DW_OP_regx 0x21]
$C$DW$420	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$420, DW_AT_location[DW_OP_regx 0x22]
$C$DW$421	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$421, DW_AT_location[DW_OP_regx 0x23]
$C$DW$422	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$422, DW_AT_location[DW_OP_regx 0x24]
$C$DW$423	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$423, DW_AT_location[DW_OP_regx 0x25]
$C$DW$424	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$424, DW_AT_location[DW_OP_regx 0x26]
$C$DW$425	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$425, DW_AT_location[DW_OP_regx 0x27]
$C$DW$426	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$426, DW_AT_location[DW_OP_regx 0x28]
$C$DW$427	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$427, DW_AT_location[DW_OP_regx 0x29]
$C$DW$428	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$428, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$429	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$429, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$430	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$430, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$431	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$431, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$432	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$432, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$433	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$433, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$434	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$434, DW_AT_location[DW_OP_regx 0x30]
$C$DW$435	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$435, DW_AT_location[DW_OP_regx 0x31]
$C$DW$436	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$436, DW_AT_location[DW_OP_regx 0x32]
$C$DW$437	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$437, DW_AT_location[DW_OP_regx 0x33]
$C$DW$438	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$438, DW_AT_location[DW_OP_regx 0x34]
$C$DW$439	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$439, DW_AT_location[DW_OP_regx 0x35]
$C$DW$440	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$440, DW_AT_location[DW_OP_regx 0x36]
$C$DW$441	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$441, DW_AT_location[DW_OP_regx 0x37]
$C$DW$442	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$442, DW_AT_location[DW_OP_regx 0x38]
$C$DW$443	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$443, DW_AT_location[DW_OP_regx 0x39]
$C$DW$444	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$444, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$445	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$445, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$446	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$446, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$447	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$447, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$448	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$448, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$449	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$449, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$450	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$450, DW_AT_location[DW_OP_regx 0x40]
$C$DW$451	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$451, DW_AT_location[DW_OP_regx 0x41]
$C$DW$452	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$452, DW_AT_location[DW_OP_regx 0x42]
$C$DW$453	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$453, DW_AT_location[DW_OP_regx 0x43]
$C$DW$454	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$454, DW_AT_location[DW_OP_regx 0x44]
$C$DW$455	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$455, DW_AT_location[DW_OP_regx 0x45]
$C$DW$456	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$456, DW_AT_location[DW_OP_regx 0x46]
$C$DW$457	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$457, DW_AT_location[DW_OP_regx 0x47]
$C$DW$458	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$458, DW_AT_location[DW_OP_regx 0x48]
$C$DW$459	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$459, DW_AT_location[DW_OP_regx 0x49]
$C$DW$460	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$460, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$461	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$461, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$462	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$462, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$463	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$463, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$464	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$464, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$465	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$465, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$466	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$466, DW_AT_location[DW_OP_regx 0x50]
$C$DW$467	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$467, DW_AT_location[DW_OP_regx 0x51]
$C$DW$468	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$468, DW_AT_location[DW_OP_regx 0x52]
$C$DW$469	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$469, DW_AT_location[DW_OP_regx 0x53]
$C$DW$470	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$470, DW_AT_location[DW_OP_regx 0x54]
$C$DW$471	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$471, DW_AT_location[DW_OP_regx 0x55]
$C$DW$472	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$472, DW_AT_location[DW_OP_regx 0x56]
$C$DW$473	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$473, DW_AT_location[DW_OP_regx 0x57]
$C$DW$474	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$474, DW_AT_location[DW_OP_regx 0x58]
$C$DW$475	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$475, DW_AT_location[DW_OP_regx 0x59]
$C$DW$476	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$476, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$477	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$477, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

