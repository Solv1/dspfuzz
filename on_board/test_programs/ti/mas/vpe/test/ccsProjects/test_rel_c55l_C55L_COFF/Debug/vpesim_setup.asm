;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                          PC v4.4.1 *
;* Date/Time created: Fri Jul 05 14:18:08 2013                                 *
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
;*   Optimizing for     : Size                                                 *
;*   Memory             : Large Model (23-Bit Data Pointers)                   *
;*   Calls              : Normal Library ASM calls                             *
;*   Debug Info         : Optimized TI Debug Information                       *
;*******************************************************************************

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen PC v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\vpe\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug")
;******************************************************************************
;* CINIT RECORDS                                                              *
;******************************************************************************
	.sect	".cinit"
	.align	1
	.field  	$C$IR_1,16
	.field  	_vpe_sim_fsk_data+0,24
	.field  	0,8
	.field	32382,16			; _vpe_sim_fsk_data[0] @ 0
$C$IR_1:	.set	1


$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("malloc")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_malloc")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$91)
	.dwendtag $C$DW$1


$C$DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("exit")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_exit")
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$3


$C$DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("fclose")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_fclose")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$60)
	.dwendtag $C$DW$5


$C$DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("fopen")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_fopen")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$74)
$C$DW$9	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$74)
	.dwendtag $C$DW$7


$C$DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("fscanf")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_fscanf")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$10, DW_AT_declaration
	.dwattr $C$DW$10, DW_AT_external
$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$60)
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$74)
$C$DW$13	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag $C$DW$10


$C$DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("printf")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_printf")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$14, DW_AT_declaration
	.dwattr $C$DW$14, DW_AT_external
$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$74)
$C$DW$16	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag $C$DW$14


$C$DW$17	.dwtag  DW_TAG_subprogram, DW_AT_name("sprintf")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_sprintf")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$17, DW_AT_declaration
	.dwattr $C$DW$17, DW_AT_external
$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$50)
$C$DW$19	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$74)
$C$DW$20	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag $C$DW$17


$C$DW$21	.dwtag  DW_TAG_subprogram, DW_AT_name("fread")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_fread")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$21, DW_AT_declaration
	.dwattr $C$DW$21, DW_AT_external
$C$DW$22	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$3)
$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$91)
$C$DW$24	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$91)
$C$DW$25	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$60)
	.dwendtag $C$DW$21


$C$DW$26	.dwtag  DW_TAG_subprogram, DW_AT_name("fwrite")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_fwrite")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$26, DW_AT_declaration
	.dwattr $C$DW$26, DW_AT_external
$C$DW$27	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$99)
$C$DW$28	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$91)
$C$DW$29	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$91)
$C$DW$30	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$60)
	.dwendtag $C$DW$26


$C$DW$31	.dwtag  DW_TAG_subprogram, DW_AT_name("strcpy")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_strcpy")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$31, DW_AT_declaration
	.dwattr $C$DW$31, DW_AT_external
$C$DW$32	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$50)
$C$DW$33	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$74)
	.dwendtag $C$DW$31


$C$DW$34	.dwtag  DW_TAG_subprogram, DW_AT_name("strcat")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_strcat")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$34, DW_AT_declaration
	.dwattr $C$DW$34, DW_AT_external
$C$DW$35	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$50)
$C$DW$36	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$74)
	.dwendtag $C$DW$34


$C$DW$37	.dwtag  DW_TAG_subprogram, DW_AT_name("memset")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_memset")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$37, DW_AT_declaration
	.dwattr $C$DW$37, DW_AT_external
$C$DW$38	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$3)
$C$DW$39	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$10)
$C$DW$40	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$91)
	.dwendtag $C$DW$37


$C$DW$41	.dwtag  DW_TAG_subprogram, DW_AT_name("sgnGetSizes")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_sgnGetSizes")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$41, DW_AT_declaration
	.dwattr $C$DW$41, DW_AT_external
$C$DW$42	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$29)
	.dwendtag $C$DW$41


$C$DW$43	.dwtag  DW_TAG_subprogram, DW_AT_name("sgnControl")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_sgnControl")
	.dwattr $C$DW$43, DW_AT_declaration
	.dwattr $C$DW$43, DW_AT_external
$C$DW$44	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$3)
$C$DW$45	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$78)
	.dwendtag $C$DW$43


$C$DW$46	.dwtag  DW_TAG_subprogram, DW_AT_name("sgnGenerateFrame")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_sgnGenerateFrame")
	.dwattr $C$DW$46, DW_AT_declaration
	.dwattr $C$DW$46, DW_AT_external
$C$DW$47	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$3)
$C$DW$48	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$23)
$C$DW$49	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$46


$C$DW$50	.dwtag  DW_TAG_subprogram, DW_AT_name("sgnInit")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_sgnInit")
	.dwattr $C$DW$50, DW_AT_declaration
	.dwattr $C$DW$50, DW_AT_external
$C$DW$51	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$3)
$C$DW$52	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$80)
	.dwendtag $C$DW$50


$C$DW$53	.dwtag  DW_TAG_subprogram, DW_AT_name("hlcGetSizes")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_hlcGetSizes")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$53, DW_AT_declaration
	.dwattr $C$DW$53, DW_AT_external
$C$DW$54	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$29)
	.dwendtag $C$DW$53


$C$DW$55	.dwtag  DW_TAG_subprogram, DW_AT_name("hlcInit")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_hlcInit")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$55, DW_AT_declaration
	.dwattr $C$DW$55, DW_AT_external
$C$DW$56	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$3)
$C$DW$57	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$82)
	.dwendtag $C$DW$55


$C$DW$58	.dwtag  DW_TAG_subprogram, DW_AT_name("hlcControl")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_hlcControl")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$58, DW_AT_declaration
	.dwattr $C$DW$58, DW_AT_external
$C$DW$59	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$3)
$C$DW$60	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$83)
	.dwendtag $C$DW$58


$C$DW$61	.dwtag  DW_TAG_subprogram, DW_AT_name("slmGetSizes")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_slmGetSizes")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$61, DW_AT_declaration
	.dwattr $C$DW$61, DW_AT_external
$C$DW$62	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$29)
	.dwendtag $C$DW$61


$C$DW$63	.dwtag  DW_TAG_subprogram, DW_AT_name("slmInit")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_slmInit")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$63, DW_AT_declaration
	.dwattr $C$DW$63, DW_AT_external
$C$DW$64	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$3)
$C$DW$65	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$85)
	.dwendtag $C$DW$63


$C$DW$66	.dwtag  DW_TAG_subprogram, DW_AT_name("snlGetSizes")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_snlGetSizes")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$66, DW_AT_declaration
	.dwattr $C$DW$66, DW_AT_external
$C$DW$67	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$29)
	.dwendtag $C$DW$66


$C$DW$68	.dwtag  DW_TAG_subprogram, DW_AT_name("snlInit")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_snlInit")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$68, DW_AT_declaration
	.dwattr $C$DW$68, DW_AT_external
$C$DW$69	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$3)
$C$DW$70	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$23)
	.dwendtag $C$DW$68


$C$DW$71	.dwtag  DW_TAG_subprogram, DW_AT_name("svdGetSizes")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_svdGetSizes")
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$71, DW_AT_declaration
	.dwattr $C$DW$71, DW_AT_external
$C$DW$72	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$29)
	.dwendtag $C$DW$71


$C$DW$73	.dwtag  DW_TAG_subprogram, DW_AT_name("svdInit")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_svdInit")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$73, DW_AT_declaration
	.dwattr $C$DW$73, DW_AT_external
$C$DW$74	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$3)
$C$DW$75	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$23)
	.dwendtag $C$DW$73


$C$DW$76	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_instantiate_nr")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_vpe_instantiate_nr")
	.dwattr $C$DW$76, DW_AT_declaration
	.dwattr $C$DW$76, DW_AT_external
$C$DW$77	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$23)
	.dwendtag $C$DW$76


$C$DW$78	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_config_nr")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_vpe_config_nr")
	.dwattr $C$DW$78, DW_AT_declaration
	.dwattr $C$DW$78, DW_AT_external
$C$DW$79	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$86)
	.dwendtag $C$DW$78

	.global	_vpe_sim_global_str
	.bss	_vpe_sim_global_str,256,0,0
$C$DW$80	.dwtag  DW_TAG_variable, DW_AT_name("vpe_sim_global_str")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_vpe_sim_global_str")
	.dwattr $C$DW$80, DW_AT_location[DW_OP_addr _vpe_sim_global_str]
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$80, DW_AT_external
	.global	_vpe_sim_print_str
	.bss	_vpe_sim_print_str,256,0,0
$C$DW$81	.dwtag  DW_TAG_variable, DW_AT_name("vpe_sim_print_str")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_vpe_sim_print_str")
	.dwattr $C$DW$81, DW_AT_location[DW_OP_addr _vpe_sim_print_str]
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$81, DW_AT_external
$C$DW$82	.dwtag  DW_TAG_variable, DW_AT_name("decimDelayLine")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_decimDelayLine")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$148)
	.dwattr $C$DW$82, DW_AT_declaration
	.dwattr $C$DW$82, DW_AT_external
$C$DW$83	.dwtag  DW_TAG_variable, DW_AT_name("interpDelayLine")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_interpDelayLine")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$150)
	.dwattr $C$DW$83, DW_AT_declaration
	.dwattr $C$DW$83, DW_AT_external
	.global	_vpe_sim_fsk_data
	.bss	_vpe_sim_fsk_data,1,0,0
$C$DW$84	.dwtag  DW_TAG_variable, DW_AT_name("vpe_sim_fsk_data")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_vpe_sim_fsk_data")
	.dwattr $C$DW$84, DW_AT_location[DW_OP_addr _vpe_sim_fsk_data]
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$84, DW_AT_external
$C$DW$85	.dwtag  DW_TAG_variable, DW_AT_name("vpeSim")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_vpeSim")
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$85, DW_AT_declaration
	.dwattr $C$DW$85, DW_AT_external
$C$DW$86	.dwtag  DW_TAG_variable, DW_AT_name("slmInst_ptr")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("_slmInst_ptr")
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$86, DW_AT_declaration
	.dwattr $C$DW$86, DW_AT_external
$C$DW$87	.dwtag  DW_TAG_variable, DW_AT_name("hlcInst_ptr")
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("_hlcInst_ptr")
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$87, DW_AT_declaration
	.dwattr $C$DW$87, DW_AT_external
$C$DW$88	.dwtag  DW_TAG_variable, DW_AT_name("hctrlInst_ptr")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("_hctrlInst_ptr")
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$88, DW_AT_declaration
	.dwattr $C$DW$88, DW_AT_external
$C$DW$89	.dwtag  DW_TAG_variable, DW_AT_name("snlInst_ptr")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_snlInst_ptr")
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$89, DW_AT_declaration
	.dwattr $C$DW$89, DW_AT_external
$C$DW$90	.dwtag  DW_TAG_variable, DW_AT_name("snlLevOut")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_snlLevOut")
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$90, DW_AT_declaration
	.dwattr $C$DW$90, DW_AT_external
$C$DW$91	.dwtag  DW_TAG_variable, DW_AT_name("svdInst_ptr")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_svdInst_ptr")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$91, DW_AT_declaration
	.dwattr $C$DW$91, DW_AT_external
$C$DW$92	.dwtag  DW_TAG_variable, DW_AT_name("svdOut")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_svdOut")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$92, DW_AT_declaration
	.dwattr $C$DW$92, DW_AT_external
$C$DW$93	.dwtag  DW_TAG_variable, DW_AT_name("sgnInst_ptr")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_sgnInst_ptr")
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$93, DW_AT_declaration
	.dwattr $C$DW$93, DW_AT_external
	.global	_vpe_temp_io_buf
	.bss	_vpe_temp_io_buf,640,0,0
$C$DW$94	.dwtag  DW_TAG_variable, DW_AT_name("vpe_temp_io_buf")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("_vpe_temp_io_buf")
	.dwattr $C$DW$94, DW_AT_location[DW_OP_addr _vpe_temp_io_buf]
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$159)
	.dwattr $C$DW$94, DW_AT_external
	.global	_inFrame
	.bss	_inFrame,2,0,2
$C$DW$95	.dwtag  DW_TAG_variable, DW_AT_name("inFrame")
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("_inFrame")
	.dwattr $C$DW$95, DW_AT_location[DW_OP_addr _inFrame]
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$95, DW_AT_external
	.global	_outFrame
	.bss	_outFrame,2,0,2
$C$DW$96	.dwtag  DW_TAG_variable, DW_AT_name("outFrame")
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("_outFrame")
	.dwattr $C$DW$96, DW_AT_location[DW_OP_addr _outFrame]
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$96, DW_AT_external
	.global	_inCnt
	.bss	_inCnt,1,0,0
$C$DW$97	.dwtag  DW_TAG_variable, DW_AT_name("inCnt")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("_inCnt")
	.dwattr $C$DW$97, DW_AT_location[DW_OP_addr _inCnt]
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$97, DW_AT_external
	.global	_outCnt
	.bss	_outCnt,1,0,0
$C$DW$98	.dwtag  DW_TAG_variable, DW_AT_name("outCnt")
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("_outCnt")
	.dwattr $C$DW$98, DW_AT_location[DW_OP_addr _outCnt]
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$98, DW_AT_external
;	C:\MAS_Tools\CCSV5_2_1\ccsv5\tools\compiler\c5500_4.4.1\bin\acp55.exe -@C:\\DOCUME~1\\a0868396\\LOCALS~1\\Temp\\0420812 
	.sect	".text"
	.global	_vpe_halt

$C$DW$99	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_halt")
	.dwattr $C$DW$99, DW_AT_low_pc(_vpe_halt)
	.dwattr $C$DW$99, DW_AT_high_pc(0x00)
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_vpe_halt")
	.dwattr $C$DW$99, DW_AT_external
	.dwattr $C$DW$99, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c")
	.dwattr $C$DW$99, DW_AT_TI_begin_line(0x7c)
	.dwattr $C$DW$99, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$99, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 125,column 1,is_stmt,address _vpe_halt

	.dwfde $C$DW$CIE, _vpe_halt
$C$DW$100	.dwtag  DW_TAG_formal_parameter, DW_AT_name("exec")
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("_exec")
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$100, DW_AT_location[DW_OP_reg17]
;----------------------------------------------------------------------
; 124 | void vpe_halt (tbool *exec)                                            
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: vpe_halt                                                     *
;*                                                                             *
;*   Function Uses Regs : AR0,XAR0,AR1,AR3,XAR3,SP,M40,SATA,SATD,RDM,FRCT,SMUL *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_vpe_halt:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-3
	.dwcfi	cfa_offset, 4
$C$DW$101	.dwtag  DW_TAG_variable, DW_AT_name("exec")
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_exec")
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$101, DW_AT_location[DW_OP_bregx 0x24 0]
        dbl(*SP(#0)) = XAR0
        XAR3 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 127,column 10,is_stmt
;----------------------------------------------------------------------
; 127 | while (!(*exec)) {                                                     
; 128 |   asm ("  NOP");                                                       
; 129 |   asm ("Set_BP_Here:  ");                                              
; 130 |   asm ("  NOP");                                                       
; 131 |   asm ("  NOP");                                                       
;----------------------------------------------------------------------
        AR1 = *AR3 ; |127| 
        if (AR1 != #0) goto $C$L2 ; |127| 
                                        ; branchcc occurs ; |127| 
$C$L1:    
$C$DW$L$_vpe_halt$2$B:
  NOP
Set_BP_Here:  
  NOP
  NOP
        AR1 = *AR3 ; |127| 
        if (AR1 == #0) goto $C$L1 ; |127| 
                                        ; branchcc occurs ; |127| 
$C$DW$L$_vpe_halt$2$E:
$C$L2:    
        SP = SP + #3
	.dwcfi	cfa_offset, 1
$C$DW$102	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$102, DW_AT_low_pc(0x00)
	.dwattr $C$DW$102, DW_AT_TI_return
        return
                                        ; return occurs

$C$DW$103	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$103, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\vpe\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\vpesim_setup.asm:$C$L1:1:1373048288")
	.dwattr $C$DW$103, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c")
	.dwattr $C$DW$103, DW_AT_TI_begin_line(0x7f)
	.dwattr $C$DW$103, DW_AT_TI_end_line(0x84)
$C$DW$104	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$104, DW_AT_low_pc($C$DW$L$_vpe_halt$2$B)
	.dwattr $C$DW$104, DW_AT_high_pc($C$DW$L$_vpe_halt$2$E)
	.dwendtag $C$DW$103

	.dwattr $C$DW$99, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c")
	.dwattr $C$DW$99, DW_AT_TI_end_line(0x85)
	.dwattr $C$DW$99, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$99

	.sect	".text"
	.global	_vpe_print

$C$DW$105	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_print")
	.dwattr $C$DW$105, DW_AT_low_pc(_vpe_print)
	.dwattr $C$DW$105, DW_AT_high_pc(0x00)
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_vpe_print")
	.dwattr $C$DW$105, DW_AT_external
	.dwattr $C$DW$105, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c")
	.dwattr $C$DW$105, DW_AT_TI_begin_line(0xa3)
	.dwattr $C$DW$105, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$105, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 164,column 1,is_stmt,address _vpe_print

	.dwfde $C$DW$CIE, _vpe_print
$C$DW$106	.dwtag  DW_TAG_formal_parameter, DW_AT_name("str")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_str")
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$106, DW_AT_location[DW_OP_reg17]
;----------------------------------------------------------------------
; 163 | void vpe_print (char *str)                                             
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: vpe_print                                                    *
;*                                                                             *
;*   Function Uses Regs : AR0,XAR0,AR1,AR3,XAR3,SP,M40,SATA,SATD,RDM,FRCT,SMUL *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 function parameters)                              *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_vpe_print:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-5
	.dwcfi	cfa_offset, 6
$C$DW$107	.dwtag  DW_TAG_variable, DW_AT_name("str")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_str")
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$107, DW_AT_location[DW_OP_bregx 0x24 2]
        XAR3 = dbl(*(#_vpeSim))
        dbl(*SP(#2)) = XAR0
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 165,column 3,is_stmt
;----------------------------------------------------------------------
; 165 | if (vpeSim->exec) {                                                    
;----------------------------------------------------------------------
        AR1 = *AR3 ; |165| 
        if (AR1 == #0) goto $C$L3 ; |165| 
                                        ; branchcc occurs ; |165| 
        XAR3 = dbl(*SP(#2))
        dbl(*SP(#0)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 166,column 5,is_stmt
;----------------------------------------------------------------------
; 166 | printf (str);                                                          
;----------------------------------------------------------------------
$C$DW$108	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$108, DW_AT_low_pc(0x00)
	.dwattr $C$DW$108, DW_AT_name("_printf")
	.dwattr $C$DW$108, DW_AT_TI_call
        call #_printf ; |166| 
                                        ; call occurs [#_printf] ; |166| 
$C$L3:    
        SP = SP + #5
	.dwcfi	cfa_offset, 1
$C$DW$109	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$109, DW_AT_low_pc(0x00)
	.dwattr $C$DW$109, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$105, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c")
	.dwattr $C$DW$105, DW_AT_TI_end_line(0xa8)
	.dwattr $C$DW$105, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$105

	.sect	".text"
	.global	_vpe_iprint

$C$DW$110	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_iprint")
	.dwattr $C$DW$110, DW_AT_low_pc(_vpe_iprint)
	.dwattr $C$DW$110, DW_AT_high_pc(0x00)
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_vpe_iprint")
	.dwattr $C$DW$110, DW_AT_external
	.dwattr $C$DW$110, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c")
	.dwattr $C$DW$110, DW_AT_TI_begin_line(0xb0)
	.dwattr $C$DW$110, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$110, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 177,column 1,is_stmt,address _vpe_iprint

	.dwfde $C$DW$CIE, _vpe_iprint
$C$DW$111	.dwtag  DW_TAG_formal_parameter, DW_AT_name("str")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_str")
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$111, DW_AT_location[DW_OP_reg17]
$C$DW$112	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ivar")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_ivar")
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$112, DW_AT_location[DW_OP_reg0]
;----------------------------------------------------------------------
; 176 | void vpe_iprint (char *str, tlong ivar)                                
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: vpe_iprint                                                   *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AR0,XAR0,AR3,XAR3,SP,M40,SATA,SATD,RDM,FRCT, *
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (4 function parameters)                              *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_vpe_iprint:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-9
	.dwcfi	cfa_offset, 10
$C$DW$113	.dwtag  DW_TAG_variable, DW_AT_name("str")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_str")
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$113, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$114	.dwtag  DW_TAG_variable, DW_AT_name("ivar")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_ivar")
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$114, DW_AT_location[DW_OP_bregx 0x24 6]
        dbl(*SP(#6)) = AC0 ; |177| 
        dbl(*SP(#4)) = XAR0
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 178,column 3,is_stmt
;----------------------------------------------------------------------
; 178 | sprintf   (vpe_sim_print_str, str, ivar);                              
;----------------------------------------------------------------------
        XAR0 = #_vpe_sim_print_str ; |178| 
        dbl(*SP(#0)) = XAR3
        AC0 = dbl(*SP(#6)) ; |178| 
        dbl(*SP(#2)) = AC0 ; |178| 
$C$DW$115	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$115, DW_AT_low_pc(0x00)
	.dwattr $C$DW$115, DW_AT_name("_sprintf")
	.dwattr $C$DW$115, DW_AT_TI_call
        call #_sprintf ; |178| 
                                        ; call occurs [#_sprintf] ; |178| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 179,column 3,is_stmt
;----------------------------------------------------------------------
; 179 | vpe_print (vpe_sim_print_str);                                         
;----------------------------------------------------------------------
        XAR0 = #_vpe_sim_print_str ; |179| 
$C$DW$116	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$116, DW_AT_low_pc(0x00)
	.dwattr $C$DW$116, DW_AT_name("_vpe_print")
	.dwattr $C$DW$116, DW_AT_TI_call
        call #_vpe_print ; |179| 
                                        ; call occurs [#_vpe_print] ; |179| 
        SP = SP + #9
	.dwcfi	cfa_offset, 1
$C$DW$117	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$117, DW_AT_low_pc(0x00)
	.dwattr $C$DW$117, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$110, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c")
	.dwattr $C$DW$110, DW_AT_TI_end_line(0xb4)
	.dwattr $C$DW$110, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$110

	.sect	".text"
	.global	_vpe_sprint

$C$DW$118	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_sprint")
	.dwattr $C$DW$118, DW_AT_low_pc(_vpe_sprint)
	.dwattr $C$DW$118, DW_AT_high_pc(0x00)
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_vpe_sprint")
	.dwattr $C$DW$118, DW_AT_external
	.dwattr $C$DW$118, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c")
	.dwattr $C$DW$118, DW_AT_TI_begin_line(0xbc)
	.dwattr $C$DW$118, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$118, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 189,column 1,is_stmt,address _vpe_sprint

	.dwfde $C$DW$CIE, _vpe_sprint
$C$DW$119	.dwtag  DW_TAG_formal_parameter, DW_AT_name("str")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_str")
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$119, DW_AT_location[DW_OP_reg17]
$C$DW$120	.dwtag  DW_TAG_formal_parameter, DW_AT_name("svar")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_svar")
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$120, DW_AT_location[DW_OP_reg19]
;----------------------------------------------------------------------
; 188 | void vpe_sprint (char *str, char *svar)                                
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: vpe_sprint                                                   *
;*                                                                             *
;*   Function Uses Regs : AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,M40,SATA,SATD,RDM,FRCT,*
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (4 function parameters)                              *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_vpe_sprint:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-9
	.dwcfi	cfa_offset, 10
$C$DW$121	.dwtag  DW_TAG_variable, DW_AT_name("str")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("_str")
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$121, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$122	.dwtag  DW_TAG_variable, DW_AT_name("svar")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_svar")
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$122, DW_AT_location[DW_OP_bregx 0x24 6]
        dbl(*SP(#6)) = XAR1
        dbl(*SP(#4)) = XAR0
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 190,column 3,is_stmt
;----------------------------------------------------------------------
; 190 | sprintf   (vpe_sim_print_str, str, svar);                              
;----------------------------------------------------------------------
        XAR0 = #_vpe_sim_print_str ; |190| 
        dbl(*SP(#0)) = XAR3
        XAR3 = dbl(*SP(#6))
        dbl(*SP(#2)) = XAR3
$C$DW$123	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$123, DW_AT_low_pc(0x00)
	.dwattr $C$DW$123, DW_AT_name("_sprintf")
	.dwattr $C$DW$123, DW_AT_TI_call
        call #_sprintf ; |190| 
                                        ; call occurs [#_sprintf] ; |190| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 191,column 3,is_stmt
;----------------------------------------------------------------------
; 191 | vpe_print (vpe_sim_print_str);                                         
;----------------------------------------------------------------------
        XAR0 = #_vpe_sim_print_str ; |191| 
$C$DW$124	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$124, DW_AT_low_pc(0x00)
	.dwattr $C$DW$124, DW_AT_name("_vpe_print")
	.dwattr $C$DW$124, DW_AT_TI_call
        call #_vpe_print ; |191| 
                                        ; call occurs [#_vpe_print] ; |191| 
        SP = SP + #9
	.dwcfi	cfa_offset, 1
$C$DW$125	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$125, DW_AT_low_pc(0x00)
	.dwattr $C$DW$125, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$118, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c")
	.dwattr $C$DW$118, DW_AT_TI_end_line(0xc0)
	.dwattr $C$DW$118, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$118

	.sect	".text"
	.global	_vpe_sim_fileio_init

$C$DW$126	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_sim_fileio_init")
	.dwattr $C$DW$126, DW_AT_low_pc(_vpe_sim_fileio_init)
	.dwattr $C$DW$126, DW_AT_high_pc(0x00)
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_vpe_sim_fileio_init")
	.dwattr $C$DW$126, DW_AT_external
	.dwattr $C$DW$126, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c")
	.dwattr $C$DW$126, DW_AT_TI_begin_line(0xc7)
	.dwattr $C$DW$126, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$126, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 200,column 1,is_stmt,address _vpe_sim_fileio_init

	.dwfde $C$DW$CIE, _vpe_sim_fileio_init
$C$DW$127	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fioptr")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_fioptr")
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$127, DW_AT_location[DW_OP_reg17]
$C$DW$128	.dwtag  DW_TAG_formal_parameter, DW_AT_name("code")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_code")
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$128, DW_AT_location[DW_OP_reg12]
;----------------------------------------------------------------------
; 199 | void vpe_sim_fileio_init (vpeSimFileIo_t *fioptr, tuint code)          
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: vpe_sim_fileio_init                                          *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,TC1,M40,    *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_vpe_sim_fileio_init:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-3
	.dwcfi	cfa_offset, 4
$C$DW$129	.dwtag  DW_TAG_variable, DW_AT_name("fioptr")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_fioptr")
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$129, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$130	.dwtag  DW_TAG_variable, DW_AT_name("code")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("_code")
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$130, DW_AT_location[DW_OP_bregx 0x24 2]
        *SP(#2) = T0 ; |200| 
        dbl(*SP(#0)) = XAR0
        XAR3 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 201,column 3,is_stmt
;----------------------------------------------------------------------
; 201 | if (fioptr->fio) {                                                     
;----------------------------------------------------------------------
        AR1 = *AR3 ; |201| 
        if (AR1 == #0) goto $C$L10 ; |201| 
                                        ; branchcc occurs ; |201| 
        XAR1 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 203,column 5,is_stmt
;----------------------------------------------------------------------
; 203 | strcpy (vpe_sim_global_str, vpeSim->baseDir);                          
;----------------------------------------------------------------------
        XAR0 = #_vpe_sim_global_str ; |203| 
        mar(*+AR1(#836)) ; |203| 
$C$DW$131	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$131, DW_AT_low_pc(0x00)
	.dwattr $C$DW$131, DW_AT_name("_strcpy")
	.dwattr $C$DW$131, DW_AT_TI_call
        call #_strcpy ; |203| 
                                        ; call occurs [#_strcpy] ; |203| 
        XAR1 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 204,column 5,is_stmt
;----------------------------------------------------------------------
; 204 | strcat (vpe_sim_global_str, fioptr->fname);                            
;----------------------------------------------------------------------
        XAR0 = #_vpe_sim_global_str ; |204| 
        mar(AR1 + #4) ; |204| 
$C$DW$132	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$132, DW_AT_low_pc(0x00)
	.dwattr $C$DW$132, DW_AT_name("_strcat")
	.dwattr $C$DW$132, DW_AT_TI_call
        call #_strcat ; |204| 
                                        ; call occurs [#_strcat] ; |204| 
        XAR3 = dbl(*SP(#0))
        XAR3 = dbl(*AR3(short(#2)))
        AC0 = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 207,column 5,is_stmt
;----------------------------------------------------------------------
; 207 | if (fioptr->fptr != NULL) {                                            
;----------------------------------------------------------------------
        if (AC0 == #0) goto $C$L4 ; |207| 
                                        ; branchcc occurs ; |207| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 208,column 7,is_stmt
;----------------------------------------------------------------------
; 208 | vpe_sprint (" - File already open: %s\n", vpe_sim_global_str);         
;----------------------------------------------------------------------
        XAR1 = #_vpe_sim_global_str ; |208| 
        XAR0 = #$C$FSL1 ; |208| 
$C$DW$133	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$133, DW_AT_low_pc(0x00)
	.dwattr $C$DW$133, DW_AT_name("_vpe_sprint")
	.dwattr $C$DW$133, DW_AT_TI_call
        call #_vpe_sprint ; |208| 
                                        ; call occurs [#_vpe_sprint] ; |208| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 209,column 7,is_stmt
;----------------------------------------------------------------------
; 209 | return;                                                                
;----------------------------------------------------------------------
        goto $C$L10 ; |209| 
                                        ; branch occurs ; |209| 
$C$L4:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 213,column 5,is_stmt
;----------------------------------------------------------------------
; 213 | if (code == vpe_SIM_FILEIO_READ) {                                     
;----------------------------------------------------------------------
        AR1 = *SP(#2) ; |213| 
        if (AR1 != #0) goto $C$L5 ; |213| 
                                        ; branchcc occurs ; |213| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 214,column 7,is_stmt
;----------------------------------------------------------------------
; 214 | fioptr->fptr = fopen (vpe_sim_global_str, "rb");                       
;----------------------------------------------------------------------
        XAR1 = #$C$FSL2 ; |214| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 215,column 5,is_stmt
        goto $C$L6 ; |215| 
                                        ; branch occurs ; |215| 
$C$L5:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 216,column 10,is_stmt
;----------------------------------------------------------------------
; 216 | else if (code == vpe_SIM_FILEIO_WRITE) {                               
;----------------------------------------------------------------------
        TC1 = (*SP(#2) == #1) ; |216| 
        if (!TC1) goto $C$L7 ; |216| 
                                        ; branchcc occurs ; |216| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 217,column 7,is_stmt
;----------------------------------------------------------------------
; 217 | fioptr->fptr = fopen (vpe_sim_global_str, "wb");                       
;----------------------------------------------------------------------
        XAR1 = #$C$FSL3 ; |217| 
$C$L6:    
        XAR0 = #_vpe_sim_global_str ; |217| 
$C$DW$134	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$134, DW_AT_low_pc(0x00)
	.dwattr $C$DW$134, DW_AT_name("_fopen")
	.dwattr $C$DW$134, DW_AT_TI_call
        call #_fopen ; |217| 
                                        ; call occurs [#_fopen] ; |217| 
        XAR3 = dbl(*SP(#0))
        dbl(*AR3(short(#2))) = XAR0
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 218,column 5,is_stmt
;----------------------------------------------------------------------
; 219 | else {                                                                 
;----------------------------------------------------------------------
        goto $C$L8 ; |218| 
                                        ; branch occurs ; |218| 
$C$L7:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 220,column 7,is_stmt
;----------------------------------------------------------------------
; 220 | vpe_iprint ("Error: unrecognized file action %d \n", code);            
;----------------------------------------------------------------------
        AC0 = uns(*SP(#2)) ; |220| 
        XAR0 = #$C$FSL4 ; |220| 
$C$DW$135	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$135, DW_AT_low_pc(0x00)
	.dwattr $C$DW$135, DW_AT_name("_vpe_iprint")
	.dwattr $C$DW$135, DW_AT_TI_call
        call #_vpe_iprint ; |220| 
                                        ; call occurs [#_vpe_iprint] ; |220| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 221,column 7,is_stmt
;----------------------------------------------------------------------
; 221 | return;                                                                
;----------------------------------------------------------------------
        goto $C$L10 ; |221| 
                                        ; branch occurs ; |221| 
$C$L8:    
        XAR3 = dbl(*SP(#0))
        XAR3 = dbl(*AR3(short(#2)))
        AC0 = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 225,column 5,is_stmt
;----------------------------------------------------------------------
; 225 | if (fioptr->fptr == NULL) {                                            
;----------------------------------------------------------------------
        if (AC0 != #0) goto $C$L9 ; |225| 
                                        ; branchcc occurs ; |225| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 226,column 7,is_stmt
;----------------------------------------------------------------------
; 226 | vpe_sprint ("Unable to open file: %s\n", vpe_sim_global_str);          
;----------------------------------------------------------------------
        XAR1 = #_vpe_sim_global_str ; |226| 
        XAR0 = #$C$FSL5 ; |226| 
$C$DW$136	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$136, DW_AT_low_pc(0x00)
	.dwattr $C$DW$136, DW_AT_name("_vpe_sprint")
	.dwattr $C$DW$136, DW_AT_TI_call
        call #_vpe_sprint ; |226| 
                                        ; call occurs [#_vpe_sprint] ; |226| 
        XAR3 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 227,column 7,is_stmt
;----------------------------------------------------------------------
; 227 | fioptr->fio = FALSE;                                                   
;----------------------------------------------------------------------
        *AR3 = #0 ; |227| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 228,column 5,is_stmt
;----------------------------------------------------------------------
; 229 | else {                                                                 
;----------------------------------------------------------------------
        goto $C$L10 ; |228| 
                                        ; branch occurs ; |228| 
$C$L9:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 230,column 7,is_stmt
;----------------------------------------------------------------------
; 230 | vpe_sprint (" - Opened file: %s\n", vpe_sim_global_str);               
;----------------------------------------------------------------------
        XAR1 = #_vpe_sim_global_str ; |230| 
        XAR0 = #$C$FSL6 ; |230| 
$C$DW$137	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$137, DW_AT_low_pc(0x00)
	.dwattr $C$DW$137, DW_AT_name("_vpe_sprint")
	.dwattr $C$DW$137, DW_AT_TI_call
        call #_vpe_sprint ; |230| 
                                        ; call occurs [#_vpe_sprint] ; |230| 
        XAR3 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 231,column 7,is_stmt
;----------------------------------------------------------------------
; 231 | fioptr->eof = FALSE;                                                   
;----------------------------------------------------------------------
        *AR3(short(#1)) = #0 ; |231| 
$C$L10:    
        SP = SP + #3
	.dwcfi	cfa_offset, 1
$C$DW$138	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$138, DW_AT_low_pc(0x00)
	.dwattr $C$DW$138, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$126, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c")
	.dwattr $C$DW$126, DW_AT_TI_end_line(0xea)
	.dwattr $C$DW$126, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$126

	.sect	".text"
	.global	_vpe_sim_fileio_end

$C$DW$139	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_sim_fileio_end")
	.dwattr $C$DW$139, DW_AT_low_pc(_vpe_sim_fileio_end)
	.dwattr $C$DW$139, DW_AT_high_pc(0x00)
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_vpe_sim_fileio_end")
	.dwattr $C$DW$139, DW_AT_external
	.dwattr $C$DW$139, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c")
	.dwattr $C$DW$139, DW_AT_TI_begin_line(0xf2)
	.dwattr $C$DW$139, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$139, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 243,column 1,is_stmt,address _vpe_sim_fileio_end

	.dwfde $C$DW$CIE, _vpe_sim_fileio_end
$C$DW$140	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fioptr")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_fioptr")
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$140, DW_AT_location[DW_OP_reg17]
;----------------------------------------------------------------------
; 242 | void vpe_sim_fileio_end (vpeSimFileIo_t *fioptr)                       
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: vpe_sim_fileio_end                                           *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,M40,SATA,SATD, *
;*                        RDM,FRCT,SMUL                                        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_vpe_sim_fileio_end:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-3
	.dwcfi	cfa_offset, 4
$C$DW$141	.dwtag  DW_TAG_variable, DW_AT_name("fioptr")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("_fioptr")
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$141, DW_AT_location[DW_OP_bregx 0x24 0]
        dbl(*SP(#0)) = XAR0
        XAR3 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 244,column 3,is_stmt
;----------------------------------------------------------------------
; 244 | if (fioptr->fio) {                                                     
;----------------------------------------------------------------------
        AR1 = *AR3 ; |244| 
        if (AR1 == #0) goto $C$L12 ; |244| 
                                        ; branchcc occurs ; |244| 
        XAR3 = dbl(*AR3(short(#2)))
        AC0 = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 246,column 5,is_stmt
;----------------------------------------------------------------------
; 246 | if (fioptr->fptr == NULL) {                                            
;----------------------------------------------------------------------
        if (AC0 != #0) goto $C$L11 ; |246| 
                                        ; branchcc occurs ; |246| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 247,column 7,is_stmt
;----------------------------------------------------------------------
; 247 | vpe_print ("Warning: premature file close\n");                         
;----------------------------------------------------------------------
        XAR0 = #$C$FSL7 ; |247| 
$C$DW$142	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$142, DW_AT_low_pc(0x00)
	.dwattr $C$DW$142, DW_AT_name("_vpe_print")
	.dwattr $C$DW$142, DW_AT_TI_call
        call #_vpe_print ; |247| 
                                        ; call occurs [#_vpe_print] ; |247| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 248,column 5,is_stmt
;----------------------------------------------------------------------
; 249 | else {                                                                 
;----------------------------------------------------------------------
        goto $C$L12 ; |248| 
                                        ; branch occurs ; |248| 
$C$L11:    
        XAR3 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 250,column 7,is_stmt
;----------------------------------------------------------------------
; 250 | if (fioptr->eof) {                                                     
;----------------------------------------------------------------------
        AR1 = *AR3(short(#1)) ; |250| 
        if (AR1 == #0) goto $C$L12 ; |250| 
                                        ; branchcc occurs ; |250| 
        XAR0 = dbl(*AR3(short(#2)))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 251,column 9,is_stmt
;----------------------------------------------------------------------
; 251 | fclose (fioptr->fptr);                                                 
;----------------------------------------------------------------------
$C$DW$143	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$143, DW_AT_low_pc(0x00)
	.dwattr $C$DW$143, DW_AT_name("_fclose")
	.dwattr $C$DW$143, DW_AT_TI_call
        call #_fclose ; |251| 
                                        ; call occurs [#_fclose] ; |251| 
        XAR3 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 252,column 9,is_stmt
;----------------------------------------------------------------------
; 252 | fioptr->fptr = (FILE *) NULL;                                          
;----------------------------------------------------------------------
        AC0 = #0  ; |252| 
        dbl(*AR3(short(#2))) = AC0
        XAR1 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 254,column 9,is_stmt
;----------------------------------------------------------------------
; 254 | strcpy (vpe_sim_global_str, vpeSim->baseDir);                          
;----------------------------------------------------------------------
        XAR0 = #_vpe_sim_global_str ; |254| 
        mar(*+AR1(#836)) ; |254| 
$C$DW$144	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$144, DW_AT_low_pc(0x00)
	.dwattr $C$DW$144, DW_AT_name("_strcpy")
	.dwattr $C$DW$144, DW_AT_TI_call
        call #_strcpy ; |254| 
                                        ; call occurs [#_strcpy] ; |254| 
        XAR1 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 255,column 9,is_stmt
;----------------------------------------------------------------------
; 255 | strcat (vpe_sim_global_str, fioptr->fname);                            
;----------------------------------------------------------------------
        XAR0 = #_vpe_sim_global_str ; |255| 
        mar(AR1 + #4) ; |255| 
$C$DW$145	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$145, DW_AT_low_pc(0x00)
	.dwattr $C$DW$145, DW_AT_name("_strcat")
	.dwattr $C$DW$145, DW_AT_TI_call
        call #_strcat ; |255| 
                                        ; call occurs [#_strcat] ; |255| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 256,column 9,is_stmt
;----------------------------------------------------------------------
; 256 | vpe_sprint (" - Closed file: %s\n", vpe_sim_global_str);               
;----------------------------------------------------------------------
        XAR0 = #$C$FSL8 ; |256| 
        XAR1 = #_vpe_sim_global_str ; |256| 
$C$DW$146	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$146, DW_AT_low_pc(0x00)
	.dwattr $C$DW$146, DW_AT_name("_vpe_sprint")
	.dwattr $C$DW$146, DW_AT_TI_call
        call #_vpe_sprint ; |256| 
                                        ; call occurs [#_vpe_sprint] ; |256| 
$C$L12:    
        SP = SP + #3
	.dwcfi	cfa_offset, 1
$C$DW$147	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$147, DW_AT_low_pc(0x00)
	.dwattr $C$DW$147, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$139, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c")
	.dwattr $C$DW$139, DW_AT_TI_end_line(0x104)
	.dwattr $C$DW$139, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$139

	.sect	".text"
	.global	_vpe_sim_fread

$C$DW$148	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_sim_fread")
	.dwattr $C$DW$148, DW_AT_low_pc(_vpe_sim_fread)
	.dwattr $C$DW$148, DW_AT_high_pc(0x00)
	.dwattr $C$DW$148, DW_AT_TI_symbol_name("_vpe_sim_fread")
	.dwattr $C$DW$148, DW_AT_external
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$148, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c")
	.dwattr $C$DW$148, DW_AT_TI_begin_line(0x110)
	.dwattr $C$DW$148, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$148, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 273,column 1,is_stmt,address _vpe_sim_fread

	.dwfde $C$DW$CIE, _vpe_sim_fread
$C$DW$149	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buf")
	.dwattr $C$DW$149, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$149, DW_AT_location[DW_OP_reg17]
$C$DW$150	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buf_size")
	.dwattr $C$DW$150, DW_AT_TI_symbol_name("_buf_size")
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$150, DW_AT_location[DW_OP_reg12]
$C$DW$151	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fioptr")
	.dwattr $C$DW$151, DW_AT_TI_symbol_name("_fioptr")
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$151, DW_AT_location[DW_OP_reg19]
;----------------------------------------------------------------------
; 272 | tbool vpe_sim_fread (linSample *buf, tint buf_size, vpeSimFileIo_t *fio
;     | ptr)                                                                   
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: vpe_sim_fread                                                *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP, *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (9 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_vpe_sim_fread:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-9
	.dwcfi	cfa_offset, 10
$C$DW$152	.dwtag  DW_TAG_variable, DW_AT_name("buf")
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$152, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$153	.dwtag  DW_TAG_variable, DW_AT_name("buf_size")
	.dwattr $C$DW$153, DW_AT_TI_symbol_name("_buf_size")
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$153, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$154	.dwtag  DW_TAG_variable, DW_AT_name("fioptr")
	.dwattr $C$DW$154, DW_AT_TI_symbol_name("_fioptr")
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$154, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$155	.dwtag  DW_TAG_variable, DW_AT_name("num_read")
	.dwattr $C$DW$155, DW_AT_TI_symbol_name("_num_read")
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$155, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$156	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$156, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$156, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$157	.dwtag  DW_TAG_variable, DW_AT_name("j")
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$157, DW_AT_location[DW_OP_bregx 0x24 8]
        dbl(*SP(#4)) = XAR1
;----------------------------------------------------------------------
; 274 | tuint num_read;                                                        
; 275 | tint  i, j;                                                            
;----------------------------------------------------------------------
        *SP(#2) = T0 ; |273| 
        dbl(*SP(#0)) = XAR0
        XAR3 = dbl(*SP(#4))
        XAR3 = dbl(*AR3(short(#2)))
        AC0 = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 277,column 3,is_stmt
;----------------------------------------------------------------------
; 277 | if(fioptr->fptr == NULL){                                              
; 278 |   return FALSE;                                                        
;----------------------------------------------------------------------
        if (AC0 == #0) goto $C$L13 ; |277| 
                                        ; branchcc occurs ; |277| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 282,column 3,is_stmt
;----------------------------------------------------------------------
; 282 | num_read = fread(vpe_temp_io_buf, VPESIM_NUM_BYTES_LINSAMP, buf_size, f
;     | ioptr->fptr);                                                          
;----------------------------------------------------------------------
        XAR0 = #_vpe_temp_io_buf ; |282| 

        T0 = #2
||      T1 = *SP(#2) ; |282| 

        XAR1 = dbl(*AR3(short(#2)))
$C$DW$158	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$158, DW_AT_low_pc(0x00)
	.dwattr $C$DW$158, DW_AT_name("_fread")
	.dwattr $C$DW$158, DW_AT_TI_call
        call #_fread ; |282| 
                                        ; call occurs [#_fread] ; |282| 
        *SP(#6) = T0 ; |282| 

        AR1 = *SP(#2) ; |285| 
||      AR2 = T0  ; |285| 

	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 285,column 3,is_stmt
;----------------------------------------------------------------------
; 285 | if (num_read != (buf_size)) {                                          
;----------------------------------------------------------------------
        TC1 = uns(AR2 == AR1) ; |285| 
        if (TC1) goto $C$L14 ; |285| 
                                        ; branchcc occurs ; |285| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 286,column 7,is_stmt
;----------------------------------------------------------------------
; 286 | fioptr->eof = TRUE;                                                    
;----------------------------------------------------------------------
        *AR3(short(#1)) = #1 ; |286| 
$C$L13:    
        T0 = #0
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 287,column 7,is_stmt
;----------------------------------------------------------------------
; 287 | return FALSE;                                                          
;----------------------------------------------------------------------
        goto $C$L17 ; |287| 
                                        ; branch occurs ; |287| 
$C$L14:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 291,column 8,is_stmt
;----------------------------------------------------------------------
; 291 | for (i = 0, j = 0; i < buf_size; i++, j+=2)                            
;----------------------------------------------------------------------
        *SP(#7) = #0 ; |291| 
        *SP(#8) = #0 ; |291| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 291,column 22,is_stmt
        AR1 = *SP(#2) ; |291| 
        AR2 = *SP(#7) ; |291| 
        TC1 = (AR2 >= AR1) ; |291| 
        if (TC1) goto $C$L16 ; |291| 
                                        ; branchcc occurs ; |291| 
$C$L15:    
$C$DW$L$_vpe_sim_fread$6$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 293,column 5,is_stmt
;----------------------------------------------------------------------
; 293 | buf[i]  = vpe_temp_io_buf[j] | (vpe_temp_io_buf[j+1] << 8);            
; 296 | return TRUE;                                                           
;----------------------------------------------------------------------
        T0 = *SP(#8) ; |293| 
        T0 = T0 + #1 ; |293| 
        XAR3 = #_vpe_temp_io_buf ; |293| 
        AC1 = *AR3(T0) ; |293| 
        T0 = *SP(#8) ; |293| 

        T0 = AR2
||      AC0 = *AR3(T0) ; |293| 

        XAR3 = dbl(*SP(#0))
        AC0 = AC0 | (AC1 <<< #8) ; |293| 
        *AR3(T0) = AC0 ; |293| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 291,column 36,is_stmt
        *SP(#7) = *SP(#7) + #1 ; |291| 
        *SP(#8) = *SP(#8) + #2 ; |291| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 291,column 22,is_stmt
        AR1 = *SP(#2) ; |291| 
        AR2 = *SP(#7) ; |291| 
        TC1 = (AR2 < AR1) ; |291| 
        if (TC1) goto $C$L15 ; |291| 
                                        ; branchcc occurs ; |291| 
$C$DW$L$_vpe_sim_fread$6$E:
$C$L16:    
        T0 = #1
$C$L17:    
        SP = SP + #9
	.dwcfi	cfa_offset, 1
$C$DW$159	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$159, DW_AT_low_pc(0x00)
	.dwattr $C$DW$159, DW_AT_TI_return
        return
                                        ; return occurs

$C$DW$160	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$160, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\vpe\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\vpesim_setup.asm:$C$L15:1:1373048288")
	.dwattr $C$DW$160, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c")
	.dwattr $C$DW$160, DW_AT_TI_begin_line(0x123)
	.dwattr $C$DW$160, DW_AT_TI_end_line(0x126)
$C$DW$161	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$161, DW_AT_low_pc($C$DW$L$_vpe_sim_fread$6$B)
	.dwattr $C$DW$161, DW_AT_high_pc($C$DW$L$_vpe_sim_fread$6$E)
	.dwendtag $C$DW$160

	.dwattr $C$DW$148, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c")
	.dwattr $C$DW$148, DW_AT_TI_end_line(0x129)
	.dwattr $C$DW$148, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$148

	.sect	".text"
	.global	_vpe_sim_fwrite

$C$DW$162	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_sim_fwrite")
	.dwattr $C$DW$162, DW_AT_low_pc(_vpe_sim_fwrite)
	.dwattr $C$DW$162, DW_AT_high_pc(0x00)
	.dwattr $C$DW$162, DW_AT_TI_symbol_name("_vpe_sim_fwrite")
	.dwattr $C$DW$162, DW_AT_external
	.dwattr $C$DW$162, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c")
	.dwattr $C$DW$162, DW_AT_TI_begin_line(0x130)
	.dwattr $C$DW$162, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$162, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 305,column 1,is_stmt,address _vpe_sim_fwrite

	.dwfde $C$DW$CIE, _vpe_sim_fwrite
$C$DW$163	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buf")
	.dwattr $C$DW$163, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$163, DW_AT_location[DW_OP_reg17]
$C$DW$164	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buf_size")
	.dwattr $C$DW$164, DW_AT_TI_symbol_name("_buf_size")
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$164, DW_AT_location[DW_OP_reg12]
$C$DW$165	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fioptr")
	.dwattr $C$DW$165, DW_AT_TI_symbol_name("_fioptr")
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$165, DW_AT_location[DW_OP_reg19]
;----------------------------------------------------------------------
; 304 | void vpe_sim_fwrite (linSample *buf, tint buf_size, vpeSimFileIo_t *fio
;     | ptr)                                                                   
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: vpe_sim_fwrite                                               *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,     *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (8 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_vpe_sim_fwrite:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-9
	.dwcfi	cfa_offset, 10
$C$DW$166	.dwtag  DW_TAG_variable, DW_AT_name("buf")
	.dwattr $C$DW$166, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$166, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$167	.dwtag  DW_TAG_variable, DW_AT_name("buf_size")
	.dwattr $C$DW$167, DW_AT_TI_symbol_name("_buf_size")
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$167, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$168	.dwtag  DW_TAG_variable, DW_AT_name("fioptr")
	.dwattr $C$DW$168, DW_AT_TI_symbol_name("_fioptr")
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$168, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$169	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$169, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$169, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$170	.dwtag  DW_TAG_variable, DW_AT_name("j")
	.dwattr $C$DW$170, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$170, DW_AT_location[DW_OP_bregx 0x24 7]
        dbl(*SP(#4)) = XAR1
;----------------------------------------------------------------------
; 306 | tuint i, j;                                                            
;----------------------------------------------------------------------
        *SP(#2) = T0 ; |305| 
        dbl(*SP(#0)) = XAR0
        XAR3 = dbl(*SP(#4))
        XAR3 = dbl(*AR3(short(#2)))
        AC0 = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 308,column 3,is_stmt
;----------------------------------------------------------------------
; 308 | if(fioptr->fptr == NULL){                                              
; 309 |   return;                                                              
;----------------------------------------------------------------------
        if (AC0 == #0) goto $C$L20 ; |308| 
                                        ; branchcc occurs ; |308| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 312,column 8,is_stmt
;----------------------------------------------------------------------
; 312 | for (i = 0, j = 0; i < buf_size; i++, j+=2)                            
;----------------------------------------------------------------------
        *SP(#6) = #0 ; |312| 
        *SP(#7) = #0 ; |312| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 312,column 22,is_stmt
        AR1 = *SP(#2) ; |312| 
        AR2 = *SP(#6) ; |312| 
        TC1 = uns(AR2 >= AR1) ; |312| 
        if (TC1) goto $C$L19 ; |312| 
                                        ; branchcc occurs ; |312| 
$C$L18:    
$C$DW$L$_vpe_sim_fwrite$3$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 314,column 5,is_stmt
;----------------------------------------------------------------------
; 314 | vpe_temp_io_buf[j]   = (buf[i]     ) & 0x00ff;                         
;----------------------------------------------------------------------
        T0 = *SP(#6) ; |314| 
        XAR3 = dbl(*SP(#0))
        AR1 = *AR3(T0) ; |314| 
        T0 = *SP(#7) ; |314| 
        AC0 = AR1 & #0x00ff ; |314| 
        XAR3 = #_vpe_temp_io_buf ; |314| 
        *AR3(T0) = AC0 ; |314| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 315,column 5,is_stmt
;----------------------------------------------------------------------
; 315 | vpe_temp_io_buf[j+1] = (buf[i] >> 8) & 0x00ff;                         
;----------------------------------------------------------------------
        T0 = *SP(#6) ; |315| 
        XAR3 = dbl(*SP(#0))
        AR1 = high_byte(*AR3(T0)) ; |315| 
        T0 = *SP(#7) ; |315| 
        T0 = T0 + #1 ; |315| 
        AC0 = AR1 & #0x00ff ; |315| 
        XAR3 = #_vpe_temp_io_buf ; |315| 
        *AR3(T0) = AC0 ; |315| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 312,column 36,is_stmt
        *SP(#6) = *SP(#6) + #1 ; |312| 
        *SP(#7) = *SP(#7) + #2 ; |312| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 312,column 22,is_stmt
        AR2 = *SP(#6) ; |312| 
        AR1 = *SP(#2) ; |312| 
        TC1 = uns(AR2 < AR1) ; |312| 
        if (TC1) goto $C$L18 ; |312| 
                                        ; branchcc occurs ; |312| 
$C$DW$L$_vpe_sim_fwrite$3$E:
$C$L19:    
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 318,column 3,is_stmt
;----------------------------------------------------------------------
; 318 | fwrite(vpe_temp_io_buf, VPESIM_NUM_BYTES_LINSAMP, buf_size, fioptr->fpt
;     | r);                                                                    
;----------------------------------------------------------------------
        XAR0 = #_vpe_temp_io_buf ; |318| 

        T0 = #2
||      T1 = AR1

        XAR1 = dbl(*AR3(short(#2)))
$C$DW$171	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$171, DW_AT_low_pc(0x00)
	.dwattr $C$DW$171, DW_AT_name("_fwrite")
	.dwattr $C$DW$171, DW_AT_TI_call
        call #_fwrite ; |318| 
                                        ; call occurs [#_fwrite] ; |318| 
$C$L20:    
        SP = SP + #9
	.dwcfi	cfa_offset, 1
$C$DW$172	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$172, DW_AT_low_pc(0x00)
	.dwattr $C$DW$172, DW_AT_TI_return
        return
                                        ; return occurs

$C$DW$173	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$173, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\vpe\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\vpesim_setup.asm:$C$L18:1:1373048288")
	.dwattr $C$DW$173, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c")
	.dwattr $C$DW$173, DW_AT_TI_begin_line(0x138)
	.dwattr $C$DW$173, DW_AT_TI_end_line(0x13c)
$C$DW$174	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$174, DW_AT_low_pc($C$DW$L$_vpe_sim_fwrite$3$B)
	.dwattr $C$DW$174, DW_AT_high_pc($C$DW$L$_vpe_sim_fwrite$3$E)
	.dwendtag $C$DW$173

	.dwattr $C$DW$162, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c")
	.dwattr $C$DW$162, DW_AT_TI_end_line(0x140)
	.dwattr $C$DW$162, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$162

	.sect	".text"
	.global	_vpe_sim_init

$C$DW$175	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_sim_init")
	.dwattr $C$DW$175, DW_AT_low_pc(_vpe_sim_init)
	.dwattr $C$DW$175, DW_AT_high_pc(0x00)
	.dwattr $C$DW$175, DW_AT_TI_symbol_name("_vpe_sim_init")
	.dwattr $C$DW$175, DW_AT_external
	.dwattr $C$DW$175, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c")
	.dwattr $C$DW$175, DW_AT_TI_begin_line(0x147)
	.dwattr $C$DW$175, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$175, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 328,column 1,is_stmt,address _vpe_sim_init

	.dwfde $C$DW$CIE, _vpe_sim_init
;----------------------------------------------------------------------
; 327 | void vpe_sim_init ()                                                   
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: vpe_sim_init                                                 *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,M40,SATA,SATD, *
;*                        RDM,FRCT,SMUL                                        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 2 words                                              *
;*                        (2 return address/alignment)                         *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_vpe_sim_init:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-1
	.dwcfi	cfa_offset, 2
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 329,column 3,is_stmt
;----------------------------------------------------------------------
; 329 | vpeSim->exec          = TRUE;                                          
;----------------------------------------------------------------------
        *AR3 = #1 ; |329| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 330,column 3,is_stmt
;----------------------------------------------------------------------
; 330 | vpeSim->hlc_on        = FALSE;                                         
;----------------------------------------------------------------------
        *AR3(short(#1)) = #0 ; |330| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 331,column 3,is_stmt
;----------------------------------------------------------------------
; 331 | vpeSim->slm_on        = FALSE;                                         
;----------------------------------------------------------------------
        *AR3(short(#2)) = #0 ; |331| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 332,column 3,is_stmt
;----------------------------------------------------------------------
; 332 | vpeSim->snl_on        = FALSE;                                         
;----------------------------------------------------------------------
        *AR3(short(#3)) = #0 ; |332| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 333,column 3,is_stmt
;----------------------------------------------------------------------
; 333 | vpeSim->svd_on        = FALSE;                                         
;----------------------------------------------------------------------
        *AR3(short(#4)) = #0 ; |333| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 334,column 3,is_stmt
;----------------------------------------------------------------------
; 334 | vpeSim->nr_on         = TRUE;                                          
;----------------------------------------------------------------------
        *AR3(short(#5)) = #1 ; |334| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 335,column 3,is_stmt
;----------------------------------------------------------------------
; 335 | vpeSim->decim_on      = FALSE;                                         
;----------------------------------------------------------------------
        *AR3(short(#6)) = #0 ; |335| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 336,column 3,is_stmt
;----------------------------------------------------------------------
; 336 | vpeSim->interp_on     = FALSE;                                         
;----------------------------------------------------------------------
        *AR3(short(#7)) = #0 ; |336| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 337,column 3,is_stmt
;----------------------------------------------------------------------
; 337 | vpeSim->ulaw_enc_on   = FALSE;                                         
;----------------------------------------------------------------------
        *AR3(#8) = #0 ; |337| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 338,column 3,is_stmt
;----------------------------------------------------------------------
; 338 | vpeSim->ulaw_dec_on   = FALSE;                                         
;----------------------------------------------------------------------
        *AR3(#9) = #0 ; |338| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 339,column 3,is_stmt
;----------------------------------------------------------------------
; 339 | vpeSim->alaw_enc_on   = FALSE;                                         
;----------------------------------------------------------------------
        *AR3(#10) = #0 ; |339| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 340,column 3,is_stmt
;----------------------------------------------------------------------
; 340 | vpeSim->alaw_dec_on   = FALSE;                                         
;----------------------------------------------------------------------
        *AR3(#11) = #0 ; |340| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 341,column 3,is_stmt
;----------------------------------------------------------------------
; 341 | vpeSim->sgn           = FALSE;                                         
;----------------------------------------------------------------------
        *AR3(#16) = #0 ; |341| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 342,column 3,is_stmt
;----------------------------------------------------------------------
; 342 | vpeSim->cfg_sgn       = FALSE;                                         
;----------------------------------------------------------------------
        *AR3(#17) = #0 ; |342| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 343,column 3,is_stmt
;----------------------------------------------------------------------
; 343 | vpeSim->cfg_hlc       = FALSE;                                         
;----------------------------------------------------------------------
        *AR3(#18) = #0 ; |343| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 344,column 3,is_stmt
;----------------------------------------------------------------------
; 344 | vpeSim->cfg_slm       = TRUE;                                          
;----------------------------------------------------------------------
        *AR3(#19) = #1 ; |344| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 345,column 3,is_stmt
;----------------------------------------------------------------------
; 345 | vpeSim->slm_mod       = slm_MODE5;                                     
;----------------------------------------------------------------------
        *AR3(#20) = #5 ; |345| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 347,column 3,is_stmt
;----------------------------------------------------------------------
; 347 | vpeSim->sample_cnt    = 0;                                             
;----------------------------------------------------------------------
        AC0 = #0  ; |347| 
        dbl(*AR3(#12)) = AC0 ; |347| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 348,column 3,is_stmt
;----------------------------------------------------------------------
; 348 | vpeSim->error_id      = 0;                                             
;----------------------------------------------------------------------
        *AR3(#833) = #0 ; |348| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 349,column 3,is_stmt
;----------------------------------------------------------------------
; 349 | vpeSim->sample_bp     = 0L;                                            
;----------------------------------------------------------------------
        dbl(*AR3(#14)) = AC0 ; |349| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 350,column 3,is_stmt
;----------------------------------------------------------------------
; 350 | vpeSim->pcmin_format  = vpe_SIM_PCM_LIN;                               
;----------------------------------------------------------------------
        *AR3(#830) = #2 ; |350| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 351,column 3,is_stmt
;----------------------------------------------------------------------
; 351 | vpeSim->pcmout_format = vpe_SIM_PCM_LIN;                               
;----------------------------------------------------------------------
        *AR3(#831) = #2 ; |351| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 354,column 3,is_stmt
;----------------------------------------------------------------------
; 354 | vpeSim->sigIn.fio   = TRUE;                                            
;----------------------------------------------------------------------
        *AR3(#50) = #1 ; |354| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 355,column 3,is_stmt
;----------------------------------------------------------------------
; 355 | vpeSim->sigOut.fio  = TRUE;                                            
; 356 | vpeSim->sigIn.fptr  = (FILE *) NULL;                                   
; 357 | vpeSim->sigOut.fptr  = (FILE *) NULL;                                  
;----------------------------------------------------------------------
        *AR3(#310) = #1 ; |355| 
        XAR3 = dbl(*(#_vpeSim))
        dbl(*AR3(#52)) = AC0
        XAR3 = dbl(*(#_vpeSim))
        dbl(*AR3(#312)) = AC0
        XAR0 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 358,column 3,is_stmt
;----------------------------------------------------------------------
; 358 | strcpy (vpeSim->baseDir     , vpe_SIM_DEF_BASE_DIR);                   
;----------------------------------------------------------------------
        XAR1 = #$C$FSL9 ; |358| 
        mar(*+AR0(#836)) ; |358| 
$C$DW$176	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$176, DW_AT_low_pc(0x00)
	.dwattr $C$DW$176, DW_AT_name("_strcpy")
	.dwattr $C$DW$176, DW_AT_TI_call
        call #_strcpy ; |358| 
                                        ; call occurs [#_strcpy] ; |358| 
        XAR0 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 359,column 3,is_stmt
;----------------------------------------------------------------------
; 359 | strcpy (vpeSim->sigIn.fname , vpe_SIM_DEF_SIGIN_FNAME);                
;----------------------------------------------------------------------
        XAR1 = #$C$FSL10 ; |359| 
        mar(AR0 + #54) ; |359| 
$C$DW$177	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$177, DW_AT_low_pc(0x00)
	.dwattr $C$DW$177, DW_AT_name("_strcpy")
	.dwattr $C$DW$177, DW_AT_TI_call
        call #_strcpy ; |359| 
                                        ; call occurs [#_strcpy] ; |359| 
        XAR0 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 360,column 3,is_stmt
;----------------------------------------------------------------------
; 360 | strcpy (vpeSim->sigOut.fname, vpe_SIM_DEF_SIGOUT_FNAME);               
;----------------------------------------------------------------------
        XAR1 = #$C$FSL11 ; |360| 
        mar(*+AR0(#314)) ; |360| 
$C$DW$178	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$178, DW_AT_low_pc(0x00)
	.dwattr $C$DW$178, DW_AT_name("_strcpy")
	.dwattr $C$DW$178, DW_AT_TI_call
        call #_strcpy ; |360| 
                                        ; call occurs [#_strcpy] ; |360| 
        XAR0 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 361,column 3,is_stmt
;----------------------------------------------------------------------
; 361 | strcpy (vpeSim->config.fname, vpe_SIM_DEF_CONFIG_FNAME);               
;----------------------------------------------------------------------
        XAR1 = #$C$FSL12 ; |361| 
        mar(*+AR0(#574)) ; |361| 
$C$DW$179	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$179, DW_AT_low_pc(0x00)
	.dwattr $C$DW$179, DW_AT_name("_strcpy")
	.dwattr $C$DW$179, DW_AT_TI_call
        call #_strcpy ; |361| 
                                        ; call occurs [#_strcpy] ; |361| 
        SP = SP + #1
	.dwcfi	cfa_offset, 1
$C$DW$180	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$180, DW_AT_low_pc(0x00)
	.dwattr $C$DW$180, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$175, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c")
	.dwattr $C$DW$175, DW_AT_TI_end_line(0x16a)
	.dwattr $C$DW$175, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$175

	.sect	".text"
	.global	_vpe_sim_read_cfg

$C$DW$181	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_sim_read_cfg")
	.dwattr $C$DW$181, DW_AT_low_pc(_vpe_sim_read_cfg)
	.dwattr $C$DW$181, DW_AT_high_pc(0x00)
	.dwattr $C$DW$181, DW_AT_TI_symbol_name("_vpe_sim_read_cfg")
	.dwattr $C$DW$181, DW_AT_external
	.dwattr $C$DW$181, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c")
	.dwattr $C$DW$181, DW_AT_TI_begin_line(0x172)
	.dwattr $C$DW$181, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$181, DW_AT_TI_max_frame_size(0x12)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 371,column 1,is_stmt,address _vpe_sim_read_cfg

	.dwfde $C$DW$CIE, _vpe_sim_read_cfg
;----------------------------------------------------------------------
; 370 | void vpe_sim_read_cfg()                                                
; 372 | FILE *test_cfg;                                                        
; 373 | int samp_freq, asnr_delay, asnr_band_bin1, asnr_band_bin2, asnr_noise_t
;     | hresh;                                                                 
; 374 | int asnr_sig_upd_rate_max, asnr_sig_upd_rate_min, asnr_noise_hangover; 
; 375 | int asnr_band1_max_atten, asnr_band2_max_atten, asnr_band3_max_atten;  
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: vpe_sim_read_cfg                                             *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,TC1,M40,    *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 18 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (4 function parameters)                              *
;*                        (13 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_vpe_sim_read_cfg:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-17
	.dwcfi	cfa_offset, 18
$C$DW$182	.dwtag  DW_TAG_variable, DW_AT_name("test_cfg")
	.dwattr $C$DW$182, DW_AT_TI_symbol_name("_test_cfg")
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$182, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$183	.dwtag  DW_TAG_variable, DW_AT_name("samp_freq")
	.dwattr $C$DW$183, DW_AT_TI_symbol_name("_samp_freq")
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$183, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$184	.dwtag  DW_TAG_variable, DW_AT_name("asnr_delay")
	.dwattr $C$DW$184, DW_AT_TI_symbol_name("_asnr_delay")
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$184, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$185	.dwtag  DW_TAG_variable, DW_AT_name("asnr_band_bin1")
	.dwattr $C$DW$185, DW_AT_TI_symbol_name("_asnr_band_bin1")
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$185, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$186	.dwtag  DW_TAG_variable, DW_AT_name("asnr_band_bin2")
	.dwattr $C$DW$186, DW_AT_TI_symbol_name("_asnr_band_bin2")
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$186, DW_AT_location[DW_OP_bregx 0x24 9]
$C$DW$187	.dwtag  DW_TAG_variable, DW_AT_name("asnr_noise_thresh")
	.dwattr $C$DW$187, DW_AT_TI_symbol_name("_asnr_noise_thresh")
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$187, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$188	.dwtag  DW_TAG_variable, DW_AT_name("asnr_sig_upd_rate_max")
	.dwattr $C$DW$188, DW_AT_TI_symbol_name("_asnr_sig_upd_rate_max")
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$188, DW_AT_location[DW_OP_bregx 0x24 11]
$C$DW$189	.dwtag  DW_TAG_variable, DW_AT_name("asnr_sig_upd_rate_min")
	.dwattr $C$DW$189, DW_AT_TI_symbol_name("_asnr_sig_upd_rate_min")
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$189, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$190	.dwtag  DW_TAG_variable, DW_AT_name("asnr_noise_hangover")
	.dwattr $C$DW$190, DW_AT_TI_symbol_name("_asnr_noise_hangover")
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$190, DW_AT_location[DW_OP_bregx 0x24 13]
$C$DW$191	.dwtag  DW_TAG_variable, DW_AT_name("asnr_band1_max_atten")
	.dwattr $C$DW$191, DW_AT_TI_symbol_name("_asnr_band1_max_atten")
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$191, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$192	.dwtag  DW_TAG_variable, DW_AT_name("asnr_band2_max_atten")
	.dwattr $C$DW$192, DW_AT_TI_symbol_name("_asnr_band2_max_atten")
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$192, DW_AT_location[DW_OP_bregx 0x24 15]
$C$DW$193	.dwtag  DW_TAG_variable, DW_AT_name("asnr_band3_max_atten")
	.dwattr $C$DW$193, DW_AT_TI_symbol_name("_asnr_band3_max_atten")
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$193, DW_AT_location[DW_OP_bregx 0x24 16]
        XAR1 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 378,column 3,is_stmt
;----------------------------------------------------------------------
; 378 | strcpy (vpe_sim_global_str, vpeSim->baseDir);                          
;----------------------------------------------------------------------
        XAR0 = #_vpe_sim_global_str ; |378| 
        mar(*+AR1(#836)) ; |378| 
$C$DW$194	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$194, DW_AT_low_pc(0x00)
	.dwattr $C$DW$194, DW_AT_name("_strcpy")
	.dwattr $C$DW$194, DW_AT_TI_call
        call #_strcpy ; |378| 
                                        ; call occurs [#_strcpy] ; |378| 
        XAR1 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 379,column 3,is_stmt
;----------------------------------------------------------------------
; 379 | strcat (vpe_sim_global_str, vpeSim->config.fname);                     
;----------------------------------------------------------------------
        XAR0 = #_vpe_sim_global_str ; |379| 
        mar(*+AR1(#574)) ; |379| 
$C$DW$195	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$195, DW_AT_low_pc(0x00)
	.dwattr $C$DW$195, DW_AT_name("_strcat")
	.dwattr $C$DW$195, DW_AT_TI_call
        call #_strcat ; |379| 
                                        ; call occurs [#_strcat] ; |379| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 382,column 3,is_stmt
;----------------------------------------------------------------------
; 382 | test_cfg = fopen (vpe_sim_global_str, "r");                            
;----------------------------------------------------------------------
        XAR1 = #$C$FSL13 ; |382| 
        XAR0 = #_vpe_sim_global_str ; |382| 
$C$DW$196	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$196, DW_AT_low_pc(0x00)
	.dwattr $C$DW$196, DW_AT_name("_fopen")
	.dwattr $C$DW$196, DW_AT_TI_call
        call #_fopen ; |382| 
                                        ; call occurs [#_fopen] ; |382| 
        dbl(*SP(#4)) = XAR0
        XAR3 = dbl(*SP(#4))
        AC0 = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 383,column 3,is_stmt
;----------------------------------------------------------------------
; 383 | if(test_cfg == NULL) {                                                 
;----------------------------------------------------------------------
        if (AC0 != #0) goto $C$L21 ; |383| 
                                        ; branchcc occurs ; |383| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 384,column 5,is_stmt
;----------------------------------------------------------------------
; 384 | printf("VPE configuration file does NOT exist!\n");                    
;----------------------------------------------------------------------
        XAR3 = #$C$FSL14 ; |384| 
        dbl(*SP(#0)) = XAR3
$C$DW$197	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$197, DW_AT_low_pc(0x00)
	.dwattr $C$DW$197, DW_AT_name("_printf")
	.dwattr $C$DW$197, DW_AT_TI_call
        call #_printf ; |384| 
                                        ; call occurs [#_printf] ; |384| 
        T0 = #0
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 385,column 5,is_stmt
;----------------------------------------------------------------------
; 385 | exit(0);                                                               
;----------------------------------------------------------------------
$C$DW$198	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$198, DW_AT_low_pc(0x00)
	.dwattr $C$DW$198, DW_AT_name("_exit")
	.dwattr $C$DW$198, DW_AT_TI_call
        call #_exit ; |385| 
                                        ; call occurs [#_exit] ; |385| 
$C$L21:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 388,column 3,is_stmt
;----------------------------------------------------------------------
; 388 | fscanf(test_cfg, "%d\n", &samp_freq);                                  
;----------------------------------------------------------------------
        XAR3 = #$C$FSL15 ; |388| 
        dbl(*SP(#0)) = XAR3
        XAR3 = mar(*SP(#6))
        dbl(*SP(#2)) = XAR3
        XAR0 = dbl(*SP(#4))
$C$DW$199	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$199, DW_AT_low_pc(0x00)
	.dwattr $C$DW$199, DW_AT_name("_fscanf")
	.dwattr $C$DW$199, DW_AT_TI_call
        call #_fscanf ; |388| 
                                        ; call occurs [#_fscanf] ; |388| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 389,column 3,is_stmt
;----------------------------------------------------------------------
; 389 | fscanf(test_cfg, "%d\n", &asnr_delay);                                 
;----------------------------------------------------------------------
        XAR3 = #$C$FSL15 ; |389| 
        dbl(*SP(#0)) = XAR3
        XAR3 = mar(*SP(#7))
        dbl(*SP(#2)) = XAR3
        XAR0 = dbl(*SP(#4))
$C$DW$200	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$200, DW_AT_low_pc(0x00)
	.dwattr $C$DW$200, DW_AT_name("_fscanf")
	.dwattr $C$DW$200, DW_AT_TI_call
        call #_fscanf ; |389| 
                                        ; call occurs [#_fscanf] ; |389| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 390,column 3,is_stmt
;----------------------------------------------------------------------
; 390 | fscanf(test_cfg, "%d\n", &asnr_band_bin1);                             
;----------------------------------------------------------------------
        XAR3 = #$C$FSL15 ; |390| 
        dbl(*SP(#0)) = XAR3
        XAR3 = mar(*SP(#8))
        dbl(*SP(#2)) = XAR3
        XAR0 = dbl(*SP(#4))
$C$DW$201	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$201, DW_AT_low_pc(0x00)
	.dwattr $C$DW$201, DW_AT_name("_fscanf")
	.dwattr $C$DW$201, DW_AT_TI_call
        call #_fscanf ; |390| 
                                        ; call occurs [#_fscanf] ; |390| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 391,column 3,is_stmt
;----------------------------------------------------------------------
; 391 | fscanf(test_cfg, "%d\n", &asnr_band_bin2);                             
;----------------------------------------------------------------------
        XAR3 = #$C$FSL15 ; |391| 
        dbl(*SP(#0)) = XAR3
        XAR3 = mar(*SP(#9))
        dbl(*SP(#2)) = XAR3
        XAR0 = dbl(*SP(#4))
$C$DW$202	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$202, DW_AT_low_pc(0x00)
	.dwattr $C$DW$202, DW_AT_name("_fscanf")
	.dwattr $C$DW$202, DW_AT_TI_call
        call #_fscanf ; |391| 
                                        ; call occurs [#_fscanf] ; |391| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 392,column 3,is_stmt
;----------------------------------------------------------------------
; 392 | fscanf(test_cfg, "%d\n", &asnr_band1_max_atten);                       
;----------------------------------------------------------------------
        XAR3 = #$C$FSL15 ; |392| 
        dbl(*SP(#0)) = XAR3
        XAR3 = mar(*SP(#14))
        dbl(*SP(#2)) = XAR3
        XAR0 = dbl(*SP(#4))
$C$DW$203	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$203, DW_AT_low_pc(0x00)
	.dwattr $C$DW$203, DW_AT_name("_fscanf")
	.dwattr $C$DW$203, DW_AT_TI_call
        call #_fscanf ; |392| 
                                        ; call occurs [#_fscanf] ; |392| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 393,column 3,is_stmt
;----------------------------------------------------------------------
; 393 | fscanf(test_cfg, "%d\n", &asnr_band2_max_atten);                       
;----------------------------------------------------------------------
        XAR3 = #$C$FSL15 ; |393| 
        dbl(*SP(#0)) = XAR3
        XAR3 = mar(*SP(#15))
        dbl(*SP(#2)) = XAR3
        XAR0 = dbl(*SP(#4))
$C$DW$204	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$204, DW_AT_low_pc(0x00)
	.dwattr $C$DW$204, DW_AT_name("_fscanf")
	.dwattr $C$DW$204, DW_AT_TI_call
        call #_fscanf ; |393| 
                                        ; call occurs [#_fscanf] ; |393| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 394,column 3,is_stmt
;----------------------------------------------------------------------
; 394 | fscanf(test_cfg, "%d\n", &asnr_band3_max_atten);                       
;----------------------------------------------------------------------
        XAR3 = #$C$FSL15 ; |394| 
        dbl(*SP(#0)) = XAR3
        XAR3 = mar(*SP(#16))
        dbl(*SP(#2)) = XAR3
        XAR0 = dbl(*SP(#4))
$C$DW$205	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$205, DW_AT_low_pc(0x00)
	.dwattr $C$DW$205, DW_AT_name("_fscanf")
	.dwattr $C$DW$205, DW_AT_TI_call
        call #_fscanf ; |394| 
                                        ; call occurs [#_fscanf] ; |394| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 395,column 3,is_stmt
;----------------------------------------------------------------------
; 395 | fscanf(test_cfg, "%d\n", &asnr_sig_upd_rate_max);                      
;----------------------------------------------------------------------
        XAR3 = #$C$FSL15 ; |395| 
        dbl(*SP(#0)) = XAR3
        XAR3 = mar(*SP(#11))
        dbl(*SP(#2)) = XAR3
        XAR0 = dbl(*SP(#4))
$C$DW$206	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$206, DW_AT_low_pc(0x00)
	.dwattr $C$DW$206, DW_AT_name("_fscanf")
	.dwattr $C$DW$206, DW_AT_TI_call
        call #_fscanf ; |395| 
                                        ; call occurs [#_fscanf] ; |395| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 396,column 3,is_stmt
;----------------------------------------------------------------------
; 396 | fscanf(test_cfg, "%d\n", &asnr_sig_upd_rate_min);                      
;----------------------------------------------------------------------
        XAR3 = #$C$FSL15 ; |396| 
        dbl(*SP(#0)) = XAR3
        XAR3 = mar(*SP(#12))
        dbl(*SP(#2)) = XAR3
        XAR0 = dbl(*SP(#4))
$C$DW$207	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$207, DW_AT_low_pc(0x00)
	.dwattr $C$DW$207, DW_AT_name("_fscanf")
	.dwattr $C$DW$207, DW_AT_TI_call
        call #_fscanf ; |396| 
                                        ; call occurs [#_fscanf] ; |396| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 397,column 3,is_stmt
;----------------------------------------------------------------------
; 397 | fscanf(test_cfg, "%d\n", &asnr_noise_thresh);                          
;----------------------------------------------------------------------
        XAR3 = #$C$FSL15 ; |397| 
        dbl(*SP(#0)) = XAR3
        XAR3 = mar(*SP(#10))
        dbl(*SP(#2)) = XAR3
        XAR0 = dbl(*SP(#4))
$C$DW$208	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$208, DW_AT_low_pc(0x00)
	.dwattr $C$DW$208, DW_AT_name("_fscanf")
	.dwattr $C$DW$208, DW_AT_TI_call
        call #_fscanf ; |397| 
                                        ; call occurs [#_fscanf] ; |397| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 398,column 3,is_stmt
;----------------------------------------------------------------------
; 398 | fscanf(test_cfg, "%d\n", &asnr_noise_hangover);                        
;----------------------------------------------------------------------
        XAR3 = #$C$FSL15 ; |398| 
        dbl(*SP(#0)) = XAR3
        XAR3 = mar(*SP(#13))
        dbl(*SP(#2)) = XAR3
        XAR0 = dbl(*SP(#4))
$C$DW$209	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$209, DW_AT_low_pc(0x00)
	.dwattr $C$DW$209, DW_AT_name("_fscanf")
	.dwattr $C$DW$209, DW_AT_TI_call
        call #_fscanf ; |398| 
                                        ; call occurs [#_fscanf] ; |398| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 400,column 3,is_stmt
;----------------------------------------------------------------------
; 400 | vpeSim->Fs = (tint)samp_freq;                                          
;----------------------------------------------------------------------
        AR1 = *SP(#6) ; |400| 
        *AR3(#21) = AR1 ; |400| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 401,column 3,is_stmt
;----------------------------------------------------------------------
; 401 | if(samp_freq == VPE_SIM_SAMPLE_FREQ_16000) {                           
;----------------------------------------------------------------------
        TC1 = (*SP(#6) == #16000) ; |401| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 402,column 5,is_stmt
;----------------------------------------------------------------------
; 402 | vpeSim->asnrParam.samp_rate = asnr_SRATE_16K;                          
; 404 | else {                                                                 
;----------------------------------------------------------------------
        if (TC1) execute (D_Unit)
           *AR3(#24) = #1 ; |402| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 405,column 5,is_stmt
;----------------------------------------------------------------------
; 405 | vpeSim->asnrParam.samp_rate = asnr_SRATE_8K;                           
;----------------------------------------------------------------------
        if (!TC1) execute (D_Unit)
           *AR3(#24) = #0 ; |405| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 407,column 3,is_stmt
;----------------------------------------------------------------------
; 407 | vpeSim->asnrParam.delay           = (tint)asnr_delay;                  
;----------------------------------------------------------------------
        AR1 = *SP(#7) ; |407| 
        *AR3(#25) = AR1 ; |407| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 408,column 3,is_stmt
;----------------------------------------------------------------------
; 408 | vpeSim->asnrParam.band_bin1       = (tint)asnr_band_bin1;              
;----------------------------------------------------------------------
        AR1 = *SP(#8) ; |408| 
        *AR3(#26) = AR1 ; |408| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 409,column 3,is_stmt
;----------------------------------------------------------------------
; 409 | vpeSim->asnrParam.band_bin2       = (tint)asnr_band_bin2;              
;----------------------------------------------------------------------
        AR1 = *SP(#9) ; |409| 
        *AR3(#27) = AR1 ; |409| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 410,column 3,is_stmt
;----------------------------------------------------------------------
; 410 | vpeSim->asnrParam.band1_max_atten = (tint)asnr_band1_max_atten;        
;----------------------------------------------------------------------
        AR1 = *SP(#14) ; |410| 
        *AR3(#28) = AR1 ; |410| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 411,column 3,is_stmt
;----------------------------------------------------------------------
; 411 | vpeSim->asnrParam.band2_max_atten = (tint)asnr_band2_max_atten;        
;----------------------------------------------------------------------
        AR1 = *SP(#15) ; |411| 
        *AR3(#29) = AR1 ; |411| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 412,column 3,is_stmt
;----------------------------------------------------------------------
; 412 | vpeSim->asnrParam.band3_max_atten = (tint)asnr_band3_max_atten;        
;----------------------------------------------------------------------
        AR1 = *SP(#16) ; |412| 
        *AR3(#30) = AR1 ; |412| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 413,column 3,is_stmt
;----------------------------------------------------------------------
; 413 | vpeSim->asnrParam.sig_upd_rate_max= (tint)asnr_sig_upd_rate_max;       
;----------------------------------------------------------------------
        AR1 = *SP(#11) ; |413| 
        *AR3(#31) = AR1 ; |413| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 414,column 3,is_stmt
;----------------------------------------------------------------------
; 414 | vpeSim->asnrParam.sig_upd_rate_min= (tint)asnr_sig_upd_rate_min;       
;----------------------------------------------------------------------
        AR1 = *SP(#12) ; |414| 
        *AR3(#32) = AR1 ; |414| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 415,column 3,is_stmt
;----------------------------------------------------------------------
; 415 | vpeSim->asnrParam.noise_thresh    = (tint)asnr_noise_thresh;           
;----------------------------------------------------------------------
        AR1 = *SP(#10) ; |415| 
        *AR3(#33) = AR1 ; |415| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 416,column 3,is_stmt
;----------------------------------------------------------------------
; 416 | vpeSim->asnrParam.noise_hangover  = (tint)asnr_noise_hangover;         
;----------------------------------------------------------------------
        AR1 = *SP(#13) ; |416| 
        *AR3(#34) = AR1 ; |416| 
        SP = SP + #17
	.dwcfi	cfa_offset, 1
$C$DW$210	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$210, DW_AT_low_pc(0x00)
	.dwattr $C$DW$210, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$181, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c")
	.dwattr $C$DW$181, DW_AT_TI_end_line(0x1a2)
	.dwattr $C$DW$181, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$181

	.sect	".text"
	.global	_vpe_init

$C$DW$211	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_init")
	.dwattr $C$DW$211, DW_AT_low_pc(_vpe_init)
	.dwattr $C$DW$211, DW_AT_high_pc(0x00)
	.dwattr $C$DW$211, DW_AT_TI_symbol_name("_vpe_init")
	.dwattr $C$DW$211, DW_AT_external
	.dwattr $C$DW$211, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c")
	.dwattr $C$DW$211, DW_AT_TI_begin_line(0x1a9)
	.dwattr $C$DW$211, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$211, DW_AT_TI_max_frame_size(0x12)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 426,column 1,is_stmt,address _vpe_init

	.dwfde $C$DW$CIE, _vpe_init
;----------------------------------------------------------------------
; 425 | void vpe_init (void)                                                   
; 427 | hlcConfig_t hlc_cfg_info;                                              
; 428 | slmConfig_t slm_cfg_info;                                              
; 429 | tint hlcSize, slmSize, snlSize, svdSize, sgnSize;                      
; 430 | tint srate_factor, frame_size;                                         
; 432 | tint retVal;                                                           
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: vpe_init                                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,     *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 18 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (16 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_vpe_init:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-17
	.dwcfi	cfa_offset, 18
$C$DW$212	.dwtag  DW_TAG_variable, DW_AT_name("hlc_cfg_info")
	.dwattr $C$DW$212, DW_AT_TI_symbol_name("_hlc_cfg_info")
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$212, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$213	.dwtag  DW_TAG_variable, DW_AT_name("slm_cfg_info")
	.dwattr $C$DW$213, DW_AT_TI_symbol_name("_slm_cfg_info")
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$213, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$214	.dwtag  DW_TAG_variable, DW_AT_name("hlcSize")
	.dwattr $C$DW$214, DW_AT_TI_symbol_name("_hlcSize")
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$214, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$215	.dwtag  DW_TAG_variable, DW_AT_name("slmSize")
	.dwattr $C$DW$215, DW_AT_TI_symbol_name("_slmSize")
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$215, DW_AT_location[DW_OP_bregx 0x24 9]
$C$DW$216	.dwtag  DW_TAG_variable, DW_AT_name("snlSize")
	.dwattr $C$DW$216, DW_AT_TI_symbol_name("_snlSize")
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$216, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$217	.dwtag  DW_TAG_variable, DW_AT_name("svdSize")
	.dwattr $C$DW$217, DW_AT_TI_symbol_name("_svdSize")
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$217, DW_AT_location[DW_OP_bregx 0x24 11]
$C$DW$218	.dwtag  DW_TAG_variable, DW_AT_name("sgnSize")
	.dwattr $C$DW$218, DW_AT_TI_symbol_name("_sgnSize")
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$218, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$219	.dwtag  DW_TAG_variable, DW_AT_name("srate_factor")
	.dwattr $C$DW$219, DW_AT_TI_symbol_name("_srate_factor")
	.dwattr $C$DW$219, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$219, DW_AT_location[DW_OP_bregx 0x24 13]
$C$DW$220	.dwtag  DW_TAG_variable, DW_AT_name("frame_size")
	.dwattr $C$DW$220, DW_AT_TI_symbol_name("_frame_size")
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$220, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$221	.dwtag  DW_TAG_variable, DW_AT_name("retVal")
	.dwattr $C$DW$221, DW_AT_TI_symbol_name("_retVal")
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$221, DW_AT_location[DW_OP_bregx 0x24 15]
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 434,column 3,is_stmt
;----------------------------------------------------------------------
; 434 | if(vpeSim->Fs == VPE_SIM_SAMPLE_FREQ_16000) {  /* Fs is read from cfg f
;     | ile */                                                                 
;----------------------------------------------------------------------
        TC1 = (*AR3(#21) == #16000) ; |434| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 435,column 5,is_stmt
;----------------------------------------------------------------------
; 435 | frame_size = VPE_SIM_FRAME_SIZE_16000;                                 
; 437 | else {                                                                 
;----------------------------------------------------------------------
        if (TC1) execute (D_Unit) ||
           *SP(#14) = #160 ; |435| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 438,column 5,is_stmt
;----------------------------------------------------------------------
; 438 | frame_size = VPE_SIM_FRAME_SIZE_8000;                                  
;----------------------------------------------------------------------
        if (!TC1) execute (D_Unit) ||
           *SP(#14) = #80 ; |438| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 442,column 3,is_stmt
;----------------------------------------------------------------------
; 442 | vpeSim->frame_size_in = frame_size;                                    
;----------------------------------------------------------------------
        AR1 = *SP(#14) ; |442| 
        *AR3(#834) = AR1 ; |442| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 443,column 3,is_stmt
;----------------------------------------------------------------------
; 443 | vpeSim->frame_size_out= frame_size;                                    
;----------------------------------------------------------------------
        AR1 = *SP(#14) ; |443| 
        *AR3(#835) = AR1 ; |443| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 444,column 3,is_stmt
;----------------------------------------------------------------------
; 444 | if(vpeSim->decim_on) {                                                 
;----------------------------------------------------------------------
        AR1 = *AR3(short(#6)) ; |444| 
        if (AR1 == #0) goto $C$L22 ; |444| 
                                        ; branchcc occurs ; |444| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 445,column 5,is_stmt
;----------------------------------------------------------------------
; 445 | vpeSim->frame_size_out = frame_size/2;                                 
;----------------------------------------------------------------------
        AC0 = *SP(#14) ; |445| 
        AR1 = field_extract(AC0, #0x8000) ; |445| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 446,column 5,is_stmt
;----------------------------------------------------------------------
; 446 | memset(decimDelayLine, 0, sizeof(linSample)*VPE_SIM_DECIM_FILT_DEL);   
;----------------------------------------------------------------------
        XAR0 = #_decimDelayLine ; |446| 

        AR1 = AR1 + AC0 ; |445| 
||      T0 = #0

        AR1 = AR1 >> #1 ; |445| 
||      T1 = #32  ; |446| 

	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 445,column 5,is_stmt
        *AR3(#835) = AR1 ; |445| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 446,column 5,is_stmt
$C$DW$222	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$222, DW_AT_low_pc(0x00)
	.dwattr $C$DW$222, DW_AT_name("_memset")
	.dwattr $C$DW$222, DW_AT_TI_call
        call #_memset ; |446| 
                                        ; call occurs [#_memset] ; |446| 
$C$L22:    
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 448,column 3,is_stmt
;----------------------------------------------------------------------
; 448 | if(vpeSim->interp_on) {                                                
;----------------------------------------------------------------------
        AR1 = *AR3(short(#7)) ; |448| 
        if (AR1 == #0) goto $C$L23 ; |448| 
                                        ; branchcc occurs ; |448| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 449,column 5,is_stmt
;----------------------------------------------------------------------
; 449 | vpeSim->frame_size_out = frame_size * 2;                               
;----------------------------------------------------------------------
        AR1 = *SP(#14) ; |449| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 450,column 5,is_stmt
;----------------------------------------------------------------------
; 450 | memset(interpDelayLine, 0, sizeof(linSample)*VPE_SIM_INTERP_FILT_DEL); 
;----------------------------------------------------------------------
        XAR0 = #_interpDelayLine ; |450| 
        T1 = #16  ; |450| 

        T0 = #0
||      AR1 = AR1 <<< #1 ; |449| 

	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 449,column 5,is_stmt
        *AR3(#835) = AR1 ; |449| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 450,column 5,is_stmt
$C$DW$223	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$223, DW_AT_low_pc(0x00)
	.dwattr $C$DW$223, DW_AT_name("_memset")
	.dwattr $C$DW$223, DW_AT_TI_call
        call #_memset ; |450| 
                                        ; call occurs [#_memset] ; |450| 
$C$L23:    
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 453,column 3,is_stmt
;----------------------------------------------------------------------
; 453 | if (vpeSim->hlc_on){                                                   
;----------------------------------------------------------------------
        AR1 = *AR3(short(#1)) ; |453| 
        if (AR1 == #0) goto $C$L28 ; |453| 
                                        ; branchcc occurs ; |453| 
        XAR0 = mar(*SP(#8))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 455,column 5,is_stmt
;----------------------------------------------------------------------
; 455 | retVal = hlcGetSizes(&hlcSize);                                        
;----------------------------------------------------------------------
$C$DW$224	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$224, DW_AT_low_pc(0x00)
	.dwattr $C$DW$224, DW_AT_name("_hlcGetSizes")
	.dwattr $C$DW$224, DW_AT_TI_call
        call #_hlcGetSizes ; |455| 
                                        ; call occurs [#_hlcGetSizes] ; |455| 
        AR1 = T0  ; |455| 
        *SP(#15) = T0 ; |455| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 456,column 5,is_stmt
;----------------------------------------------------------------------
; 456 | if (retVal != hlc_NOERR){                                              
;----------------------------------------------------------------------
        if (AR1 == #0) goto $C$L24 ; |456| 
                                        ; branchcc occurs ; |456| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 457,column 7,is_stmt
;----------------------------------------------------------------------
; 457 | vpeSim->error_id = vpe_SIM_ERR_3;                                      
;----------------------------------------------------------------------
        *AR3(#833) = #4 ; |457| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 458,column 7,is_stmt
;----------------------------------------------------------------------
; 458 | vpeSim->exec = FALSE;                                                  
;----------------------------------------------------------------------
        *AR3 = #0 ; |458| 
        XAR0 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 459,column 7,is_stmt
;----------------------------------------------------------------------
; 459 | vpe_halt (&vpeSim->exec);                                              
;----------------------------------------------------------------------
$C$DW$225	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$225, DW_AT_low_pc(0x00)
	.dwattr $C$DW$225, DW_AT_name("_vpe_halt")
	.dwattr $C$DW$225, DW_AT_TI_call
        call #_vpe_halt ; |459| 
                                        ; call occurs [#_vpe_halt] ; |459| 
$C$L24:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 462,column 5,is_stmt
;----------------------------------------------------------------------
; 462 | hlcInst_ptr = malloc (hlcSize);                                        
;----------------------------------------------------------------------
        T0 = *SP(#8) ; |462| 
$C$DW$226	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$226, DW_AT_low_pc(0x00)
	.dwattr $C$DW$226, DW_AT_name("_malloc")
	.dwattr $C$DW$226, DW_AT_TI_call
        call #_malloc ; |462| 
                                        ; call occurs [#_malloc] ; |462| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 464,column 5,is_stmt
;----------------------------------------------------------------------
; 464 | hlc_cfg_info.valid_bf = 0x00;                                          
; 467 | hlc_cfg_info.valid_bf |= 0x10;                                         
; 469 | if (vpeSim->Fs == VPE_SIM_SAMPLE_FREQ_8000) {                          
; 470 |   hlc_cfg_info.srate_factor = hlc_SRATE_FACTOR_8K;  /* 8kHz sampling ra
;     | te */                                                                  
; 472 | else {                                                                 
; 473 |   hlc_cfg_info.srate_factor = hlc_SRATE_FACTOR_16K; /* 16kHz sampling r
;     | ate */                                                                 
;----------------------------------------------------------------------
        *SP(#0) = #0 ; |464| 
        dbl(*(#_hlcInst_ptr)) = XAR0
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 477,column 5,is_stmt
;----------------------------------------------------------------------
; 477 | if (vpeSim->frame_size_out <= vpe_SIM_MAX_SAMPLES){                    
;----------------------------------------------------------------------
        AR2 = #320 ; |477| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 467,column 5,is_stmt
        *SP(#0) = *SP(#0) | #0x0010 ; |467| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 469,column 5,is_stmt
        TC1 = (*AR3(#21) == #8000) ; |469| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 470,column 7,is_stmt
        if (TC1) execute (D_Unit) ||
           *SP(#4) = #1 ; |470| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 473,column 7,is_stmt
        if (!TC1) execute (D_Unit) ||
           *SP(#4) = #2 ; |473| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 477,column 5,is_stmt
        AR1 = *AR3(#835) ; |477| 
        TC1 = uns(AR1 > AR2) ; |477| 
        if (TC1) goto $C$L25 ; |477| 
                                        ; branchcc occurs ; |477| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 478,column 7,is_stmt
;----------------------------------------------------------------------
; 478 | hlc_cfg_info.valid_bf |= 0x08; /* configure frame length */            
;----------------------------------------------------------------------
        *SP(#0) = *SP(#0) | #0x0008 ; |478| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 479,column 7,is_stmt
;----------------------------------------------------------------------
; 479 | hlc_cfg_info.frm_len = vpeSim->frame_size_out;                         
;----------------------------------------------------------------------
        AR1 = *AR3(#835) ; |479| 
        *SP(#5) = AR1 ; |479| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 480,column 5,is_stmt
;----------------------------------------------------------------------
; 481 | else{                                                                  
;----------------------------------------------------------------------
        goto $C$L26 ; |480| 
                                        ; branch occurs ; |480| 
$C$L25:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 482,column 7,is_stmt
;----------------------------------------------------------------------
; 482 | vpeSim->error_id = vpe_SIM_ERR_4;                                      
;----------------------------------------------------------------------
        *AR3(#833) = #5 ; |482| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 483,column 7,is_stmt
;----------------------------------------------------------------------
; 483 | vpeSim->exec = FALSE;                                                  
;----------------------------------------------------------------------
        *AR3 = #0 ; |483| 
        XAR0 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 484,column 7,is_stmt
;----------------------------------------------------------------------
; 484 | vpe_halt (&vpeSim->exec);                                              
;----------------------------------------------------------------------
$C$DW$227	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$227, DW_AT_low_pc(0x00)
	.dwattr $C$DW$227, DW_AT_name("_vpe_halt")
	.dwattr $C$DW$227, DW_AT_TI_call
        call #_vpe_halt ; |484| 
                                        ; call occurs [#_vpe_halt] ; |484| 
$C$L26:    
        XAR1 = mar(*SP(#0))
        XAR0 = dbl(*(#_hlcInst_ptr))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 487,column 5,is_stmt
;----------------------------------------------------------------------
; 487 | retVal = hlcInit(hlcInst_ptr, &hlc_cfg_info);                          
;----------------------------------------------------------------------
$C$DW$228	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$228, DW_AT_low_pc(0x00)
	.dwattr $C$DW$228, DW_AT_name("_hlcInit")
	.dwattr $C$DW$228, DW_AT_TI_call
        call #_hlcInit ; |487| 
                                        ; call occurs [#_hlcInit] ; |487| 
        AR1 = T0  ; |487| 
        *SP(#15) = T0 ; |487| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 488,column 5,is_stmt
;----------------------------------------------------------------------
; 488 | if (retVal != hlc_NOERR){                                              
;----------------------------------------------------------------------
        if (AR1 == #0) goto $C$L27 ; |488| 
                                        ; branchcc occurs ; |488| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 489,column 7,is_stmt
;----------------------------------------------------------------------
; 489 | vpeSim->error_id = vpe_SIM_ERR_4;                                      
;----------------------------------------------------------------------
        *AR3(#833) = #5 ; |489| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 490,column 7,is_stmt
;----------------------------------------------------------------------
; 490 | vpeSim->exec = FALSE;                                                  
;----------------------------------------------------------------------
        *AR3 = #0 ; |490| 
        XAR0 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 491,column 7,is_stmt
;----------------------------------------------------------------------
; 491 | vpe_halt (&vpeSim->exec);                                              
;----------------------------------------------------------------------
$C$DW$229	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$229, DW_AT_low_pc(0x00)
	.dwattr $C$DW$229, DW_AT_name("_vpe_halt")
	.dwattr $C$DW$229, DW_AT_TI_call
        call #_vpe_halt ; |491| 
                                        ; call occurs [#_vpe_halt] ; |491| 
$C$L27:    
        XAR3 = dbl(*(#_hctrlInst_ptr))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 494,column 5,is_stmt
;----------------------------------------------------------------------
; 494 | hctrlInst_ptr->ctl_code = hlc_CTL_ENA;                                 
;----------------------------------------------------------------------
        *AR3 = #1 ; |494| 
        XAR0 = dbl(*(#_hlcInst_ptr))
        XAR1 = dbl(*(#_hctrlInst_ptr))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 495,column 5,is_stmt
;----------------------------------------------------------------------
; 495 | retVal = hlcControl(hlcInst_ptr, hctrlInst_ptr);                       
;----------------------------------------------------------------------
$C$DW$230	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$230, DW_AT_low_pc(0x00)
	.dwattr $C$DW$230, DW_AT_name("_hlcControl")
	.dwattr $C$DW$230, DW_AT_TI_call
        call #_hlcControl ; |495| 
                                        ; call occurs [#_hlcControl] ; |495| 
        AR1 = T0  ; |495| 
        *SP(#15) = T0 ; |495| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 496,column 5,is_stmt
;----------------------------------------------------------------------
; 496 | if (retVal != hlc_NOERR){                                              
;----------------------------------------------------------------------
        if (AR1 == #0) goto $C$L28 ; |496| 
                                        ; branchcc occurs ; |496| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 497,column 7,is_stmt
;----------------------------------------------------------------------
; 497 | vpeSim->error_id = vpe_SIM_ERR_6;                                      
;----------------------------------------------------------------------
        *AR3(#833) = #7 ; |497| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 498,column 7,is_stmt
;----------------------------------------------------------------------
; 498 | vpeSim->exec = FALSE;                                                  
;----------------------------------------------------------------------
        *AR3 = #0 ; |498| 
        XAR0 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 499,column 7,is_stmt
;----------------------------------------------------------------------
; 499 | vpe_halt (&vpeSim->exec);                                              
;----------------------------------------------------------------------
$C$DW$231	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$231, DW_AT_low_pc(0x00)
	.dwattr $C$DW$231, DW_AT_name("_vpe_halt")
	.dwattr $C$DW$231, DW_AT_TI_call
        call #_vpe_halt ; |499| 
                                        ; call occurs [#_vpe_halt] ; |499| 
$C$L28:    
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 504,column 3,is_stmt
;----------------------------------------------------------------------
; 504 | if (vpeSim->slm_on){                                                   
;----------------------------------------------------------------------
        AR1 = *AR3(short(#2)) ; |504| 
        if (AR1 == #0) goto $C$L30 ; |504| 
                                        ; branchcc occurs ; |504| 
        XAR0 = mar(*SP(#9))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 506,column 5,is_stmt
;----------------------------------------------------------------------
; 506 | retVal = slmGetSizes(&slmSize);                                        
;----------------------------------------------------------------------
$C$DW$232	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$232, DW_AT_low_pc(0x00)
	.dwattr $C$DW$232, DW_AT_name("_slmGetSizes")
	.dwattr $C$DW$232, DW_AT_TI_call
        call #_slmGetSizes ; |506| 
                                        ; call occurs [#_slmGetSizes] ; |506| 
        AR1 = T0  ; |506| 
        *SP(#15) = T0 ; |506| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 507,column 5,is_stmt
;----------------------------------------------------------------------
; 507 | if (retVal != slm_NOERR){                                              
;----------------------------------------------------------------------
        if (AR1 == #0) goto $C$L29 ; |507| 
                                        ; branchcc occurs ; |507| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 508,column 7,is_stmt
;----------------------------------------------------------------------
; 508 | vpeSim->error_id = vpe_SIM_ERR_9;                                      
;----------------------------------------------------------------------
        *AR3(#833) = #10 ; |508| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 509,column 7,is_stmt
;----------------------------------------------------------------------
; 509 | vpeSim->exec = FALSE;                                                  
;----------------------------------------------------------------------
        *AR3 = #0 ; |509| 
        XAR0 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 510,column 7,is_stmt
;----------------------------------------------------------------------
; 510 | vpe_halt (&vpeSim->exec);                                              
;----------------------------------------------------------------------
$C$DW$233	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$233, DW_AT_low_pc(0x00)
	.dwattr $C$DW$233, DW_AT_name("_vpe_halt")
	.dwattr $C$DW$233, DW_AT_TI_call
        call #_vpe_halt ; |510| 
                                        ; call occurs [#_vpe_halt] ; |510| 
$C$L29:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 512,column 5,is_stmt
;----------------------------------------------------------------------
; 512 | slmInst_ptr = malloc (slmSize);                                        
;----------------------------------------------------------------------
        T0 = *SP(#9) ; |512| 
$C$DW$234	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$234, DW_AT_low_pc(0x00)
	.dwattr $C$DW$234, DW_AT_name("_malloc")
	.dwattr $C$DW$234, DW_AT_TI_call
        call #_malloc ; |512| 
                                        ; call occurs [#_malloc] ; |512| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 515,column 5,is_stmt
;----------------------------------------------------------------------
; 515 | slm_cfg_info.valid_bf  = 0x00;                                         
;----------------------------------------------------------------------
        *SP(#6) = #0 ; |515| 
        dbl(*(#_slmInst_ptr)) = XAR0
        XAR1 = mar(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 517,column 5,is_stmt
;----------------------------------------------------------------------
; 517 | slm_cfg_info.valid_bf |= 0x01;                                         
;----------------------------------------------------------------------
        *SP(#6) = *SP(#6) | #0x0001 ; |517| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 518,column 5,is_stmt
;----------------------------------------------------------------------
; 518 | if (vpeSim->Fs == VPE_SIM_SAMPLE_FREQ_8000) {                          
;----------------------------------------------------------------------
        TC1 = (*AR3(#21) == #8000) ; |518| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 519,column 7,is_stmt
;----------------------------------------------------------------------
; 519 | slm_cfg_info.srate_factor = slm_SRATE_FACTOR_8K;                       
; 521 | else {                                                                 
;----------------------------------------------------------------------
        if (TC1) execute (D_Unit) ||
           *SP(#7) = #2 ; |519| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 522,column 7,is_stmt
;----------------------------------------------------------------------
; 522 | slm_cfg_info.srate_factor = slm_SRATE_FACTOR_16K;                      
;----------------------------------------------------------------------
        if (!TC1) execute (D_Unit) ||
           *SP(#7) = #1 ; |522| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 525,column 5,is_stmt
;----------------------------------------------------------------------
; 525 | retVal = slmInit (slmInst_ptr, &slm_cfg_info);                         
;----------------------------------------------------------------------
$C$DW$235	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$235, DW_AT_low_pc(0x00)
	.dwattr $C$DW$235, DW_AT_name("_slmInit")
	.dwattr $C$DW$235, DW_AT_TI_call
        call #_slmInit ; |525| 
                                        ; call occurs [#_slmInit] ; |525| 
        AR1 = T0  ; |525| 
        *SP(#15) = T0 ; |525| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 526,column 5,is_stmt
;----------------------------------------------------------------------
; 526 | if (retVal != slm_NOERR){                                              
;----------------------------------------------------------------------
        if (AR1 == #0) goto $C$L30 ; |526| 
                                        ; branchcc occurs ; |526| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 527,column 7,is_stmt
;----------------------------------------------------------------------
; 527 | vpeSim->error_id = vpe_SIM_ERR_7;                                      
;----------------------------------------------------------------------
        *AR3(#833) = #8 ; |527| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 528,column 7,is_stmt
;----------------------------------------------------------------------
; 528 | vpeSim->exec = FALSE;                                                  
;----------------------------------------------------------------------
        *AR3 = #0 ; |528| 
        XAR0 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 529,column 7,is_stmt
;----------------------------------------------------------------------
; 529 | vpe_halt (&vpeSim->exec);                                              
;----------------------------------------------------------------------
$C$DW$236	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$236, DW_AT_low_pc(0x00)
	.dwattr $C$DW$236, DW_AT_name("_vpe_halt")
	.dwattr $C$DW$236, DW_AT_TI_call
        call #_vpe_halt ; |529| 
                                        ; call occurs [#_vpe_halt] ; |529| 
$C$L30:    
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 534,column 3,is_stmt
;----------------------------------------------------------------------
; 534 | if (vpeSim->snl_on){                                                   
;----------------------------------------------------------------------
        AR1 = *AR3(short(#3)) ; |534| 
        if (AR1 == #0) goto $C$L33 ; |534| 
                                        ; branchcc occurs ; |534| 
        XAR0 = mar(*SP(#10))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 535,column 5,is_stmt
;----------------------------------------------------------------------
; 535 | retVal = snlGetSizes(&snlSize);                                        
;----------------------------------------------------------------------
$C$DW$237	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$237, DW_AT_low_pc(0x00)
	.dwattr $C$DW$237, DW_AT_name("_snlGetSizes")
	.dwattr $C$DW$237, DW_AT_TI_call
        call #_snlGetSizes ; |535| 
                                        ; call occurs [#_snlGetSizes] ; |535| 
        AR1 = T0  ; |535| 
        *SP(#15) = T0 ; |535| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 536,column 5,is_stmt
;----------------------------------------------------------------------
; 536 | if (retVal != snl_NOERR){                                              
;----------------------------------------------------------------------
        if (AR1 == #0) goto $C$L31 ; |536| 
                                        ; branchcc occurs ; |536| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 537,column 7,is_stmt
;----------------------------------------------------------------------
; 537 | vpeSim->error_id = vpe_SIM_ERR_10;                                     
;----------------------------------------------------------------------
        *AR3(#833) = #11 ; |537| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 538,column 7,is_stmt
;----------------------------------------------------------------------
; 538 | vpeSim->exec = FALSE;                                                  
;----------------------------------------------------------------------
        *AR3 = #0 ; |538| 
        XAR0 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 539,column 7,is_stmt
;----------------------------------------------------------------------
; 539 | vpe_halt (&vpeSim->exec);                                              
;----------------------------------------------------------------------
$C$DW$238	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$238, DW_AT_low_pc(0x00)
	.dwattr $C$DW$238, DW_AT_name("_vpe_halt")
	.dwattr $C$DW$238, DW_AT_TI_call
        call #_vpe_halt ; |539| 
                                        ; call occurs [#_vpe_halt] ; |539| 
$C$L31:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 541,column 5,is_stmt
;----------------------------------------------------------------------
; 541 | snlInst_ptr = malloc (snlSize);                                        
;----------------------------------------------------------------------
        T0 = *SP(#10) ; |541| 
$C$DW$239	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$239, DW_AT_low_pc(0x00)
	.dwattr $C$DW$239, DW_AT_name("_malloc")
	.dwattr $C$DW$239, DW_AT_TI_call
        call #_malloc ; |541| 
                                        ; call occurs [#_malloc] ; |541| 
        XAR3 = dbl(*(#_vpeSim))
        dbl(*(#_snlInst_ptr)) = XAR0
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 543,column 5,is_stmt
;----------------------------------------------------------------------
; 543 | if (vpeSim->Fs == VPE_SIM_SAMPLE_FREQ_8000) {                          
;----------------------------------------------------------------------
        TC1 = (*AR3(#21) == #8000) ; |543| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 544,column 7,is_stmt
;----------------------------------------------------------------------
; 544 | srate_factor = snl_SRATE_FACTOR_8K;                                    
; 546 | else {                                                                 
;----------------------------------------------------------------------
        if (TC1) execute (D_Unit) ||
           *SP(#13) = #1 ; |544| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 547,column 7,is_stmt
;----------------------------------------------------------------------
; 547 | srate_factor = snl_SRATE_FACTOR_16K;                                   
;----------------------------------------------------------------------
        if (!TC1) execute (D_Unit) ||
           *SP(#13) = #2 ; |547| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 550,column 5,is_stmt
;----------------------------------------------------------------------
; 550 | retVal = snlInit (snlInst_ptr, srate_factor);                          
;----------------------------------------------------------------------
        T0 = *SP(#13) ; |550| 
$C$DW$240	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$240, DW_AT_low_pc(0x00)
	.dwattr $C$DW$240, DW_AT_name("_snlInit")
	.dwattr $C$DW$240, DW_AT_TI_call
        call #_snlInit ; |550| 
                                        ; call occurs [#_snlInit] ; |550| 
        AR1 = T0  ; |550| 
        *SP(#15) = T0 ; |550| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 551,column 5,is_stmt
;----------------------------------------------------------------------
; 551 | if (retVal != snl_NOERR){                                              
;----------------------------------------------------------------------
        if (AR1 == #0) goto $C$L32 ; |551| 
                                        ; branchcc occurs ; |551| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 552,column 7,is_stmt
;----------------------------------------------------------------------
; 552 | vpeSim->error_id = vpe_SIM_ERR_11;                                     
;----------------------------------------------------------------------
        *AR3(#833) = #12 ; |552| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 553,column 7,is_stmt
;----------------------------------------------------------------------
; 553 | vpeSim->exec = FALSE;                                                  
;----------------------------------------------------------------------
        *AR3 = #0 ; |553| 
        XAR0 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 554,column 7,is_stmt
;----------------------------------------------------------------------
; 554 | vpe_halt (&vpeSim->exec);                                              
;----------------------------------------------------------------------
$C$DW$241	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$241, DW_AT_low_pc(0x00)
	.dwattr $C$DW$241, DW_AT_name("_vpe_halt")
	.dwattr $C$DW$241, DW_AT_TI_call
        call #_vpe_halt ; |554| 
                                        ; call occurs [#_vpe_halt] ; |554| 
$C$L32:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 556,column 5,is_stmt
;----------------------------------------------------------------------
; 556 | strcpy (snlLevOut.fname, "snlLevOut.pcm");                             
;----------------------------------------------------------------------
        XAR1 = #$C$FSL16 ; |556| 
        XAR0 = #(_snlLevOut+4) ; |556| 
$C$DW$242	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$242, DW_AT_low_pc(0x00)
	.dwattr $C$DW$242, DW_AT_name("_strcpy")
	.dwattr $C$DW$242, DW_AT_TI_call
        call #_strcpy ; |556| 
                                        ; call occurs [#_strcpy] ; |556| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 557,column 5,is_stmt
;----------------------------------------------------------------------
; 557 | snlLevOut.fio   = TRUE;                                                
;----------------------------------------------------------------------
        *(#_snlLevOut) = #1 ; |557| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 558,column 5,is_stmt
;----------------------------------------------------------------------
; 558 | snlLevOut.fptr  = (FILE *) NULL;                                       
;----------------------------------------------------------------------
        AC0 = #0  ; |558| 
        dbl(*(#(_snlLevOut+2))) = AC0
$C$L33:    
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 562,column 3,is_stmt
;----------------------------------------------------------------------
; 562 | if (vpeSim->svd_on){                                                   
;----------------------------------------------------------------------
        AR1 = *AR3(short(#4)) ; |562| 
        if (AR1 == #0) goto $C$L36 ; |562| 
                                        ; branchcc occurs ; |562| 
        XAR0 = mar(*SP(#11))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 563,column 5,is_stmt
;----------------------------------------------------------------------
; 563 | retVal = svdGetSizes(&svdSize);                                        
;----------------------------------------------------------------------
$C$DW$243	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$243, DW_AT_low_pc(0x00)
	.dwattr $C$DW$243, DW_AT_name("_svdGetSizes")
	.dwattr $C$DW$243, DW_AT_TI_call
        call #_svdGetSizes ; |563| 
                                        ; call occurs [#_svdGetSizes] ; |563| 
        AR1 = T0  ; |563| 
        *SP(#15) = T0 ; |563| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 564,column 5,is_stmt
;----------------------------------------------------------------------
; 564 | if (retVal != svd_NOERR){                                              
;----------------------------------------------------------------------
        if (AR1 == #0) goto $C$L34 ; |564| 
                                        ; branchcc occurs ; |564| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 565,column 7,is_stmt
;----------------------------------------------------------------------
; 565 | vpeSim->error_id = vpe_SIM_ERR_17;                                     
;----------------------------------------------------------------------
        *AR3(#833) = #18 ; |565| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 566,column 7,is_stmt
;----------------------------------------------------------------------
; 566 | vpeSim->exec = FALSE;                                                  
;----------------------------------------------------------------------
        *AR3 = #0 ; |566| 
        XAR0 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 567,column 7,is_stmt
;----------------------------------------------------------------------
; 567 | vpe_halt (&vpeSim->exec);                                              
;----------------------------------------------------------------------
$C$DW$244	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$244, DW_AT_low_pc(0x00)
	.dwattr $C$DW$244, DW_AT_name("_vpe_halt")
	.dwattr $C$DW$244, DW_AT_TI_call
        call #_vpe_halt ; |567| 
                                        ; call occurs [#_vpe_halt] ; |567| 
$C$L34:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 569,column 5,is_stmt
;----------------------------------------------------------------------
; 569 | svdInst_ptr = malloc (svdSize);                                        
;----------------------------------------------------------------------
        T0 = *SP(#11) ; |569| 
$C$DW$245	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$245, DW_AT_low_pc(0x00)
	.dwattr $C$DW$245, DW_AT_name("_malloc")
	.dwattr $C$DW$245, DW_AT_TI_call
        call #_malloc ; |569| 
                                        ; call occurs [#_malloc] ; |569| 
        XAR3 = dbl(*(#_vpeSim))
        dbl(*(#_svdInst_ptr)) = XAR0
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 571,column 5,is_stmt
;----------------------------------------------------------------------
; 571 | if (vpeSim->Fs == VPE_SIM_SAMPLE_FREQ_8000) {                          
;----------------------------------------------------------------------
        TC1 = (*AR3(#21) == #8000) ; |571| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 572,column 7,is_stmt
;----------------------------------------------------------------------
; 572 | srate_factor = svd_SRATE_8K;                                           
; 574 | else {                                                                 
;----------------------------------------------------------------------
        if (TC1) execute (D_Unit) ||
           *SP(#13) = #1 ; |572| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 575,column 7,is_stmt
;----------------------------------------------------------------------
; 575 | srate_factor = svd_SRATE_16K;                                          
;----------------------------------------------------------------------
        if (!TC1) execute (D_Unit) ||
           *SP(#13) = #2 ; |575| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 578,column 5,is_stmt
;----------------------------------------------------------------------
; 578 | retVal = svdInit (svdInst_ptr, srate_factor);                          
;----------------------------------------------------------------------
        T0 = *SP(#13) ; |578| 
$C$DW$246	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$246, DW_AT_low_pc(0x00)
	.dwattr $C$DW$246, DW_AT_name("_svdInit")
	.dwattr $C$DW$246, DW_AT_TI_call
        call #_svdInit ; |578| 
                                        ; call occurs [#_svdInit] ; |578| 
        AR1 = T0  ; |578| 
        *SP(#15) = T0 ; |578| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 579,column 5,is_stmt
;----------------------------------------------------------------------
; 579 | if (retVal != svd_NOERR){                                              
;----------------------------------------------------------------------
        if (AR1 == #0) goto $C$L35 ; |579| 
                                        ; branchcc occurs ; |579| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 580,column 7,is_stmt
;----------------------------------------------------------------------
; 580 | vpeSim->error_id = vpe_SIM_ERR_18;                                     
;----------------------------------------------------------------------
        *AR3(#833) = #19 ; |580| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 581,column 7,is_stmt
;----------------------------------------------------------------------
; 581 | vpeSim->exec = FALSE;                                                  
;----------------------------------------------------------------------
        *AR3 = #0 ; |581| 
        XAR0 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 582,column 7,is_stmt
;----------------------------------------------------------------------
; 582 | vpe_halt (&vpeSim->exec);                                              
;----------------------------------------------------------------------
$C$DW$247	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$247, DW_AT_low_pc(0x00)
	.dwattr $C$DW$247, DW_AT_name("_vpe_halt")
	.dwattr $C$DW$247, DW_AT_TI_call
        call #_vpe_halt ; |582| 
                                        ; call occurs [#_vpe_halt] ; |582| 
$C$L35:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 585,column 5,is_stmt
;----------------------------------------------------------------------
; 585 | strcpy (svdOut.fname, "svdOut.pcm");                                   
;----------------------------------------------------------------------
        XAR1 = #$C$FSL17 ; |585| 
        XAR0 = #(_svdOut+4) ; |585| 
$C$DW$248	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$248, DW_AT_low_pc(0x00)
	.dwattr $C$DW$248, DW_AT_name("_strcpy")
	.dwattr $C$DW$248, DW_AT_TI_call
        call #_strcpy ; |585| 
                                        ; call occurs [#_strcpy] ; |585| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 586,column 5,is_stmt
;----------------------------------------------------------------------
; 586 | svdOut.fio   = TRUE;                                                   
;----------------------------------------------------------------------
        *(#_svdOut) = #1 ; |586| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 587,column 5,is_stmt
;----------------------------------------------------------------------
; 587 | svdOut.fptr  = (FILE *) NULL;                                          
;----------------------------------------------------------------------
        AC0 = #0  ; |587| 
        dbl(*(#(_svdOut+2))) = AC0
$C$L36:    
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 590,column 3,is_stmt
;----------------------------------------------------------------------
; 590 | if(vpeSim->nr_on) {                                                    
;----------------------------------------------------------------------
        AR1 = *AR3(short(#5)) ; |590| 
        if (AR1 == #0) goto $C$L37 ; |590| 
                                        ; branchcc occurs ; |590| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 591,column 5,is_stmt
;----------------------------------------------------------------------
; 591 | if (vpeSim->Fs == VPE_SIM_SAMPLE_FREQ_8000) {                          
;----------------------------------------------------------------------
        TC1 = (*AR3(#21) == #8000) ; |591| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 592,column 7,is_stmt
;----------------------------------------------------------------------
; 592 | srate_factor = asnr_SRATE_8K;                                          
; 594 | else {                                                                 
;----------------------------------------------------------------------
        if (TC1) execute (D_Unit) ||
           *SP(#13) = #0 ; |592| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 595,column 7,is_stmt
;----------------------------------------------------------------------
; 595 | srate_factor = asnr_SRATE_16K;                                         
;----------------------------------------------------------------------
        if (!TC1) execute (D_Unit) ||
           *SP(#13) = #1 ; |595| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 598,column 5,is_stmt
;----------------------------------------------------------------------
; 598 | vpe_instantiate_nr(srate_factor);                                      
;----------------------------------------------------------------------
        T0 = *SP(#13) ; |598| 
$C$DW$249	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$249, DW_AT_low_pc(0x00)
	.dwattr $C$DW$249, DW_AT_name("_vpe_instantiate_nr")
	.dwattr $C$DW$249, DW_AT_TI_call
        call #_vpe_instantiate_nr ; |598| 
                                        ; call occurs [#_vpe_instantiate_nr] ; |598| 
        XAR0 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 600,column 2,is_stmt
;----------------------------------------------------------------------
; 600 | vpe_config_nr(&vpeSim->asnrParam);                                     
;----------------------------------------------------------------------
        mar(AR0 + #24) ; |600| 
$C$DW$250	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$250, DW_AT_low_pc(0x00)
	.dwattr $C$DW$250, DW_AT_name("_vpe_config_nr")
	.dwattr $C$DW$250, DW_AT_TI_call
        call #_vpe_config_nr ; |600| 
                                        ; call occurs [#_vpe_config_nr] ; |600| 
$C$L37:    
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 604,column 3,is_stmt
;----------------------------------------------------------------------
; 604 | vpeSim->sgnParam.state     = 1;                                        
;----------------------------------------------------------------------
        *AR3(#36) = #1 ; |604| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 605,column 3,is_stmt
;----------------------------------------------------------------------
; 605 | vpeSim->sgnParam.dcoffset  = vpe_SGN_DEF_DC_OFFSET;                    
;----------------------------------------------------------------------
        *AR3(#37) = #0 ; |605| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 606,column 3,is_stmt
;----------------------------------------------------------------------
; 606 | vpeSim->sgnParam.wftype    = vpe_SGN_DEF_WF_TYPE;                      
;----------------------------------------------------------------------
        *AR3(#38) = #1 ; |606| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 607,column 3,is_stmt
;----------------------------------------------------------------------
; 607 | vpeSim->sgnParam.f1        = vpe_SGN_DEF_F1;                           
;----------------------------------------------------------------------
        *AR3(#39) = #1000 ; |607| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 608,column 3,is_stmt
;----------------------------------------------------------------------
; 608 | vpeSim->sgnParam.f2        = vpe_SGN_DEF_F2;                           
;----------------------------------------------------------------------
        *AR3(#40) = #400 ; |608| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 609,column 3,is_stmt
;----------------------------------------------------------------------
; 609 | vpeSim->sgnParam.amp1      = vpe_SGN_DEF_T_AMP1;                       
;----------------------------------------------------------------------
        *AR3(#41) = #5120 ; |609| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 610,column 3,is_stmt
;----------------------------------------------------------------------
; 610 | vpeSim->sgnParam.amp2      = vpe_SGN_DEF_T_AMP2;                       
;----------------------------------------------------------------------
        *AR3(#42) = #14080 ; |610| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 611,column 3,is_stmt
;----------------------------------------------------------------------
; 611 | vpeSim->sgnParam.nlevel    = vpe_SGN_DEF_NOISE_LEVEL;                  
;----------------------------------------------------------------------
        *AR3(#43) = #-100 ; |611| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 612,column 3,is_stmt
;----------------------------------------------------------------------
; 612 | vpeSim->sgnParam.nseed     = vpe_SGN_DEF_NOISE_SEED;                   
;----------------------------------------------------------------------
        AC0 = #40 ; |612| 
        dbl(*AR3(#44)) = AC0 ; |612| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 613,column 3,is_stmt
;----------------------------------------------------------------------
; 613 | vpeSim->sgnParam.ntype     = vpe_SGN_DEF_NOISE_TYPE;                   
;----------------------------------------------------------------------
        *AR3(#46) = #1 ; |613| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 614,column 3,is_stmt
;----------------------------------------------------------------------
; 614 | vpeSim->sgnParam.pow_level = vpe_SGN_DEF_POWER_LEVEL;                  
;----------------------------------------------------------------------
        *AR3(#47) = #-10 ; |614| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 615,column 3,is_stmt
;----------------------------------------------------------------------
; 615 | vpeSim->sgnParam.hoth_seed = vpe_SGN_DEF_HOTH_WNG_SEED;                
;----------------------------------------------------------------------
        AC0 = #20 ; |615| 
        XAR0 = mar(*SP(#12))
        dbl(*AR3(#48)) = AC0 ; |615| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 617,column 3,is_stmt
;----------------------------------------------------------------------
; 617 | retVal = sgnGetSizes (&sgnSize);                                       
;----------------------------------------------------------------------
$C$DW$251	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$251, DW_AT_low_pc(0x00)
	.dwattr $C$DW$251, DW_AT_name("_sgnGetSizes")
	.dwattr $C$DW$251, DW_AT_TI_call
        call #_sgnGetSizes ; |617| 
                                        ; call occurs [#_sgnGetSizes] ; |617| 
        *SP(#15) = T0 ; |617| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 618,column 3,is_stmt
;----------------------------------------------------------------------
; 618 | sgnInst_ptr = malloc (sgnSize);                                        
;----------------------------------------------------------------------
        T0 = *SP(#12) ; |618| 
$C$DW$252	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$252, DW_AT_low_pc(0x00)
	.dwattr $C$DW$252, DW_AT_name("_malloc")
	.dwattr $C$DW$252, DW_AT_TI_call
        call #_malloc ; |618| 
                                        ; call occurs [#_malloc] ; |618| 
        dbl(*(#_sgnInst_ptr)) = XAR0
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 619,column 3,is_stmt
;----------------------------------------------------------------------
; 619 | vpe_sim_open_sgn (sgnInst_ptr);                                        
; 623 | #if _VPESIM_C64P||_VPESIM_C64P_BIG_ENDIAN                              
; 624 | cacheConfig.L2sizeCfg = L2_SIZE_32KB;                                  
; 625 | #endif                                                                 
; 626 | #if _VPESIM_C64||_VPESIM_C64_BIG_ENDIAN||_VPESIM_C64P||_VPESIM_C64P_BIG
;     | _ENDIAN                                                                
; 627 | memarchcfg_cacheEnable();                                              
; 628 | #endif                                                                 
;----------------------------------------------------------------------
$C$DW$253	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$253, DW_AT_low_pc(0x00)
	.dwattr $C$DW$253, DW_AT_name("_vpe_sim_open_sgn")
	.dwattr $C$DW$253, DW_AT_TI_call
        call #_vpe_sim_open_sgn ; |619| 
                                        ; call occurs [#_vpe_sim_open_sgn] ; |619| 
        SP = SP + #17
	.dwcfi	cfa_offset, 1
$C$DW$254	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$254, DW_AT_low_pc(0x00)
	.dwattr $C$DW$254, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$211, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c")
	.dwattr $C$DW$211, DW_AT_TI_end_line(0x275)
	.dwattr $C$DW$211, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$211

	.sect	".text"
	.global	_vpe_sim_open_sgn

$C$DW$255	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_sim_open_sgn")
	.dwattr $C$DW$255, DW_AT_low_pc(_vpe_sim_open_sgn)
	.dwattr $C$DW$255, DW_AT_high_pc(0x00)
	.dwattr $C$DW$255, DW_AT_TI_symbol_name("_vpe_sim_open_sgn")
	.dwattr $C$DW$255, DW_AT_external
	.dwattr $C$DW$255, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c")
	.dwattr $C$DW$255, DW_AT_TI_begin_line(0x27d)
	.dwattr $C$DW$255, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$255, DW_AT_TI_max_frame_size(0x24)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 638,column 1,is_stmt,address _vpe_sim_open_sgn

	.dwfde $C$DW$CIE, _vpe_sim_open_sgn
$C$DW$256	.dwtag  DW_TAG_formal_parameter, DW_AT_name("inst")
	.dwattr $C$DW$256, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$256, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$256, DW_AT_location[DW_OP_reg17]
;----------------------------------------------------------------------
; 637 | void vpe_sim_open_sgn (void *inst)                                     
; 639 | sgnConfig_t cfg;                                                       
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: vpe_sim_open_sgn                                             *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,M40,SATA,SATD, *
;*                        RDM,FRCT,SMUL                                        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 36 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (34 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_vpe_sim_open_sgn:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-35
	.dwcfi	cfa_offset, 36
$C$DW$257	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$257, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$257, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$257, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$258	.dwtag  DW_TAG_variable, DW_AT_name("cfg")
	.dwattr $C$DW$258, DW_AT_TI_symbol_name("_cfg")
	.dwattr $C$DW$258, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$258, DW_AT_location[DW_OP_bregx 0x24 2]
        dbl(*SP(#0)) = XAR0
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 641,column 3,is_stmt
;----------------------------------------------------------------------
; 641 | cfg.dc_offset     = vpe_SGN_DEF_DC_OFFSET;                             
;----------------------------------------------------------------------
        *SP(#3) = #0 ; |641| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 642,column 3,is_stmt
;----------------------------------------------------------------------
; 642 | cfg.wf_type       = vpe_SGN_DEF_WF_TYPE;                               
;----------------------------------------------------------------------
        *SP(#4) = #1 ; |642| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 643,column 3,is_stmt
;----------------------------------------------------------------------
; 643 | cfg.f1            = vpe_SGN_DEF_F1;                                    
;----------------------------------------------------------------------
        *SP(#5) = #1000 ; |643| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 644,column 3,is_stmt
;----------------------------------------------------------------------
; 644 | cfg.f2            = vpe_SGN_DEF_F2;                                    
;----------------------------------------------------------------------
        *SP(#6) = #400 ; |644| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 645,column 3,is_stmt
;----------------------------------------------------------------------
; 645 | cfg.Fs            = vpeSim->Fs;                                        
; 646 | cfg.t_amp1        = vpe_SGN_DEF_T_AMP1;                                
; 647 | cfg.t_amp2        = vpe_SGN_DEF_T_AMP2;                                
; 648 | cfg.pr_period     = vpe_SGN_DEF_PR_PERIOD;     /* # of samples between
;     | phase reversals */                                                     
; 649 | cfg.pr_enable     = vpe_SGN_DEF_PR_ENABLE;     /* disable phase reversa
;     | l */                                                                   
; 650 | cfg.noise_level   = vpe_SGN_DEF_NOISE_LEVEL;                           
; 651 | cfg.noise_seed    = vpe_SGN_DEF_NOISE_SEED;                            
; 652 | cfg.noise_type    = vpe_SGN_DEF_NOISE_TYPE;                            
;----------------------------------------------------------------------
        AR1 = *AR3(#21) ; |645| 
        *SP(#7) = AR1 ; |645| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 653,column 3,is_stmt
;----------------------------------------------------------------------
; 653 | cfg.fsk_duration  = vpe_SGN_DEF_FSK_DURATION;  /* 90/300 = 300ms */    
;----------------------------------------------------------------------
        AC0 = #90 ; |653| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 654,column 3,is_stmt
;----------------------------------------------------------------------
; 654 | cfg.fsk_dataptr   = &vpe_sim_fsk_data[vpe_SGN_DEF_FSK_DATA_LEN];       
; 655 | cfg.fsk_numword   = vpe_SGN_DEF_FSK_DATA_LEN;                          
; 656 | cfg.power_level   = vpe_SGN_DEF_POWER_LEVEL;                           
; 657 | cfg.hoth_wng_seed = vpe_SGN_DEF_HOTH_WNG_SEED;                         
;----------------------------------------------------------------------
        XAR3 = #(_vpe_sim_fsk_data+1) ; |654| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 646,column 3,is_stmt
        *SP(#8) = #5120 ; |646| 
        XAR1 = mar(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 647,column 3,is_stmt
        *SP(#9) = #14080 ; |647| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 648,column 3,is_stmt
        *SP(#10) = #1000 ; |648| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 649,column 3,is_stmt
        *SP(#11) = #0 ; |649| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 650,column 3,is_stmt
        *SP(#17) = #-100 ; |650| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 651,column 3,is_stmt
        *SP(#18) = #40 ; |651| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 652,column 3,is_stmt
        *SP(#19) = #1 ; |652| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 653,column 3,is_stmt
        dbl(*SP(#12)) = AC0 ; |653| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 658,column 3,is_stmt
;----------------------------------------------------------------------
; 658 | cfg.file_io_fcn   = vpe_sim_in_file;                                   
;----------------------------------------------------------------------
        AC0 = #(_vpe_sim_in_file >> 16) << #16 ; |658| 
        AC0 = AC0 | #(_vpe_sim_in_file & 0xffff) ; |658| 
        dbl(*SP(#14)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 655,column 3,is_stmt
        *SP(#16) = #1 ; |655| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 656,column 3,is_stmt
        *SP(#20) = #-10 ; |656| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 657,column 3,is_stmt
        *SP(#21) = #20 ; |657| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 658,column 3,is_stmt
        dbl(*SP(#22)) = AC0 ; |658| 
        XAR0 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 660,column 3,is_stmt
;----------------------------------------------------------------------
; 660 | sgnInit (inst, &cfg);                                                  
;----------------------------------------------------------------------
$C$DW$259	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$259, DW_AT_low_pc(0x00)
	.dwattr $C$DW$259, DW_AT_name("_sgnInit")
	.dwattr $C$DW$259, DW_AT_TI_call
        call #_sgnInit ; |660| 
                                        ; call occurs [#_sgnInit] ; |660| 
        SP = SP + #35
	.dwcfi	cfa_offset, 1
$C$DW$260	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$260, DW_AT_low_pc(0x00)
	.dwattr $C$DW$260, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$255, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c")
	.dwattr $C$DW$255, DW_AT_TI_end_line(0x295)
	.dwattr $C$DW$255, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$255

	.sect	".text"
	.global	_vpe_sim_set_sgn

$C$DW$261	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_sim_set_sgn")
	.dwattr $C$DW$261, DW_AT_low_pc(_vpe_sim_set_sgn)
	.dwattr $C$DW$261, DW_AT_high_pc(0x00)
	.dwattr $C$DW$261, DW_AT_TI_symbol_name("_vpe_sim_set_sgn")
	.dwattr $C$DW$261, DW_AT_external
	.dwattr $C$DW$261, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c")
	.dwattr $C$DW$261, DW_AT_TI_begin_line(0x29d)
	.dwattr $C$DW$261, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$261, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 670,column 1,is_stmt,address _vpe_sim_set_sgn

	.dwfde $C$DW$CIE, _vpe_sim_set_sgn
$C$DW$262	.dwtag  DW_TAG_formal_parameter, DW_AT_name("inst")
	.dwattr $C$DW$262, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$262, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$262, DW_AT_location[DW_OP_reg17]
$C$DW$263	.dwtag  DW_TAG_formal_parameter, DW_AT_name("sgn")
	.dwattr $C$DW$263, DW_AT_TI_symbol_name("_sgn")
	.dwattr $C$DW$263, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$263, DW_AT_location[DW_OP_reg19]
$C$DW$264	.dwtag  DW_TAG_formal_parameter, DW_AT_name("Fs")
	.dwattr $C$DW$264, DW_AT_TI_symbol_name("_Fs")
	.dwattr $C$DW$264, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$264, DW_AT_location[DW_OP_reg12]
;----------------------------------------------------------------------
; 669 | void vpe_sim_set_sgn (void *inst, vpeSGNPars_t *sgn, tint Fs)          
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: vpe_sim_set_sgn                                              *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,TC1,M40,SATA,SATD,  *
;*                        RDM,FRCT,SMUL                                        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 16 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (14 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_vpe_sim_set_sgn:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-15
	.dwcfi	cfa_offset, 16
$C$DW$265	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$265, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$265, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$265, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$266	.dwtag  DW_TAG_variable, DW_AT_name("sgn")
	.dwattr $C$DW$266, DW_AT_TI_symbol_name("_sgn")
	.dwattr $C$DW$266, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$266, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$267	.dwtag  DW_TAG_variable, DW_AT_name("Fs")
	.dwattr $C$DW$267, DW_AT_TI_symbol_name("_Fs")
	.dwattr $C$DW$267, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$267, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$268	.dwtag  DW_TAG_variable, DW_AT_name("ctl")
	.dwattr $C$DW$268, DW_AT_TI_symbol_name("_ctl")
	.dwattr $C$DW$268, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$268, DW_AT_location[DW_OP_bregx 0x24 6]
;----------------------------------------------------------------------
; 671 | sgnControl_t  ctl;                                                     
;----------------------------------------------------------------------
        *SP(#4) = T0 ; |670| 
        dbl(*SP(#2)) = XAR1
        dbl(*SP(#0)) = XAR0
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 673,column 3,is_stmt
;----------------------------------------------------------------------
; 673 | if (sgn->state) {                                                      
;----------------------------------------------------------------------
        AR1 = *AR3 ; |673| 
        if (AR1 == #0) goto $C$L43 ; |673| 
                                        ; branchcc occurs ; |673| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 674,column 5,is_stmt
;----------------------------------------------------------------------
; 674 | ctl.Fs        = Fs;                                                    
;----------------------------------------------------------------------
        AR1 = *SP(#4) ; |674| 
        *SP(#7) = AR1 ; |674| 
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 675,column 5,is_stmt
;----------------------------------------------------------------------
; 675 | if (sgn->wftype == sgn_WFT_CSS || sgn->wftype == sgn_WFT_CSS_DTK) {    
;----------------------------------------------------------------------
        TC1 = (*AR3(short(#2)) == #4) ; |675| 
        if (TC1) goto $C$L38 ; |675| 
                                        ; branchcc occurs ; |675| 
        TC1 = (*AR3(short(#2)) == #5) ; |675| 
        if (!TC1) goto $C$L39 ; |675| 
                                        ; branchcc occurs ; |675| 
$C$L38:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 676,column 7,is_stmt
;----------------------------------------------------------------------
; 676 | ctl.code          = sgn_CTL_CSS_POW;                                   
; 677 | ctl.u.power_level = sgn->pow_level;                                    
;----------------------------------------------------------------------
        *SP(#6) = #6 ; |676| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 678,column 5,is_stmt
        goto $C$L40 ; |678| 
                                        ; branch occurs ; |678| 
$C$L39:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 679,column 10,is_stmt
;----------------------------------------------------------------------
; 679 | else if (sgn->wftype == sgn_WFT_HOTH) {                                
;----------------------------------------------------------------------
        TC1 = (*AR3(short(#2)) == #7) ; |679| 
        if (!TC1) goto $C$L41 ; |679| 
                                        ; branchcc occurs ; |679| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 680,column 7,is_stmt
;----------------------------------------------------------------------
; 680 | ctl.code          = sgn_CTL_HOTH_POW;                                  
;----------------------------------------------------------------------
        *SP(#6) = #8 ; |680| 
$C$L40:    
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 681,column 7,is_stmt
;----------------------------------------------------------------------
; 681 | ctl.u.power_level = sgn->pow_level;                                    
;----------------------------------------------------------------------
        AR1 = *AR3(#11) ; |681| 
        *SP(#8) = AR1 ; |681| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 682,column 5,is_stmt
;----------------------------------------------------------------------
; 683 | else {                                                                 
;----------------------------------------------------------------------
        goto $C$L42 ; |682| 
                                        ; branch occurs ; |682| 
$C$L41:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 684,column 7,is_stmt
;----------------------------------------------------------------------
; 684 | ctl.code      = sgn_CTL_TONE;                                          
;----------------------------------------------------------------------
        *SP(#6) = #1 ; |684| 
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 685,column 7,is_stmt
;----------------------------------------------------------------------
; 685 | ctl.u.t.f1    = sgn->f1;                                               
;----------------------------------------------------------------------
        AR1 = *AR3(short(#3)) ; |685| 
        *SP(#8) = AR1 ; |685| 
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 686,column 7,is_stmt
;----------------------------------------------------------------------
; 686 | ctl.u.t.f2    = sgn->f2;                                               
;----------------------------------------------------------------------
        AR1 = *AR3(short(#4)) ; |686| 
        *SP(#9) = AR1 ; |686| 
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 687,column 7,is_stmt
;----------------------------------------------------------------------
; 687 | ctl.u.t.amp1  = sgn->amp1;                                             
;----------------------------------------------------------------------
        AR1 = *AR3(short(#5)) ; |687| 
        *SP(#10) = AR1 ; |687| 
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 688,column 7,is_stmt
;----------------------------------------------------------------------
; 688 | ctl.u.t.amp2  = sgn->amp2;                                             
;----------------------------------------------------------------------
        AR1 = *AR3(short(#6)) ; |688| 
        *SP(#11) = AR1 ; |688| 
$C$L42:    
        XAR0 = dbl(*SP(#0))
        XAR1 = mar(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 690,column 5,is_stmt
;----------------------------------------------------------------------
; 690 | sgnControl (inst, &ctl);                                               
;----------------------------------------------------------------------
$C$DW$269	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$269, DW_AT_low_pc(0x00)
	.dwattr $C$DW$269, DW_AT_name("_sgnControl")
	.dwattr $C$DW$269, DW_AT_TI_call
        call #_sgnControl ; |690| 
                                        ; call occurs [#_sgnControl] ; |690| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 692,column 5,is_stmt
;----------------------------------------------------------------------
; 692 | ctl.code           = sgn_CTL_NOISE;                                    
;----------------------------------------------------------------------
        *SP(#6) = #2 ; |692| 
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 693,column 5,is_stmt
;----------------------------------------------------------------------
; 693 | ctl.u.noise_level  = sgn->nlevel;                                      
;----------------------------------------------------------------------
        AR1 = *AR3(short(#7)) ; |693| 
        *SP(#8) = AR1 ; |693| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 694,column 3,is_stmt
;----------------------------------------------------------------------
; 695 | else {                                                                 
;----------------------------------------------------------------------
        goto $C$L49 ; |694| 
                                        ; branch occurs ; |694| 
$C$L43:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 696,column 5,is_stmt
;----------------------------------------------------------------------
; 696 | if (sgn->wftype == sgn_WFT_CSS || sgn->wftype == sgn_WFT_CSS_DTK) {    
;----------------------------------------------------------------------
        TC1 = (*AR3(short(#2)) == #4) ; |696| 
        if (TC1) goto $C$L44 ; |696| 
                                        ; branchcc occurs ; |696| 
        TC1 = (*AR3(short(#2)) == #5) ; |696| 
        if (!TC1) goto $C$L45 ; |696| 
                                        ; branchcc occurs ; |696| 
$C$L44:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 697,column 7,is_stmt
;----------------------------------------------------------------------
; 697 | ctl.code          = sgn_CTL_CSS_POW;                                   
; 698 | ctl.u.power_level = -80;                                               
;----------------------------------------------------------------------
        *SP(#6) = #6 ; |697| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 699,column 5,is_stmt
        goto $C$L46 ; |699| 
                                        ; branch occurs ; |699| 
$C$L45:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 700,column 10,is_stmt
;----------------------------------------------------------------------
; 700 | else if (sgn->wftype == sgn_WFT_HOTH) {                                
;----------------------------------------------------------------------
        TC1 = (*AR3(short(#2)) == #7) ; |700| 
        if (!TC1) goto $C$L47 ; |700| 
                                        ; branchcc occurs ; |700| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 701,column 7,is_stmt
;----------------------------------------------------------------------
; 701 | ctl.code          = sgn_CTL_HOTH_POW;                                  
;----------------------------------------------------------------------
        *SP(#6) = #8 ; |701| 
$C$L46:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 702,column 7,is_stmt
;----------------------------------------------------------------------
; 702 | ctl.u.power_level = -80;                                               
;----------------------------------------------------------------------
        *SP(#8) = #-80 ; |702| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 703,column 5,is_stmt
;----------------------------------------------------------------------
; 704 | else {                                                                 
;----------------------------------------------------------------------
        goto $C$L48 ; |703| 
                                        ; branch occurs ; |703| 
$C$L47:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 705,column 7,is_stmt
;----------------------------------------------------------------------
; 705 | ctl.code     = sgn_CTL_TONE;                                           
;----------------------------------------------------------------------
        *SP(#6) = #1 ; |705| 
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 706,column 7,is_stmt
;----------------------------------------------------------------------
; 706 | ctl.u.t.f1   = sgn->f1;                                                
;----------------------------------------------------------------------
        AR1 = *AR3(short(#3)) ; |706| 
        *SP(#8) = AR1 ; |706| 
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 707,column 7,is_stmt
;----------------------------------------------------------------------
; 707 | ctl.u.t.f2   = sgn->f2;                                                
;----------------------------------------------------------------------
        AR1 = *AR3(short(#4)) ; |707| 
        *SP(#9) = AR1 ; |707| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 708,column 7,is_stmt
;----------------------------------------------------------------------
; 708 | ctl.u.t.amp1 = 0;                                                      
;----------------------------------------------------------------------
        *SP(#10) = #0 ; |708| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 709,column 7,is_stmt
;----------------------------------------------------------------------
; 709 | ctl.u.t.amp2 = 0;                                                      
;----------------------------------------------------------------------
        *SP(#11) = #0 ; |709| 
$C$L48:    
        XAR0 = dbl(*SP(#0))
        XAR1 = mar(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 711,column 5,is_stmt
;----------------------------------------------------------------------
; 711 | sgnControl (inst, &ctl);                                               
;----------------------------------------------------------------------
$C$DW$270	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$270, DW_AT_low_pc(0x00)
	.dwattr $C$DW$270, DW_AT_name("_sgnControl")
	.dwattr $C$DW$270, DW_AT_TI_call
        call #_sgnControl ; |711| 
                                        ; call occurs [#_sgnControl] ; |711| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 713,column 5,is_stmt
;----------------------------------------------------------------------
; 713 | ctl.code           = sgn_CTL_NOISE;                                    
;----------------------------------------------------------------------
        *SP(#6) = #2 ; |713| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 714,column 5,is_stmt
;----------------------------------------------------------------------
; 714 | ctl.u.noise_level  = -80;                                              
;----------------------------------------------------------------------
        *SP(#8) = #-80 ; |714| 
$C$L49:    
        XAR0 = dbl(*SP(#0))
        XAR1 = mar(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 716,column 3,is_stmt
;----------------------------------------------------------------------
; 716 | sgnControl (inst, &ctl);                                               
;----------------------------------------------------------------------
$C$DW$271	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$271, DW_AT_low_pc(0x00)
	.dwattr $C$DW$271, DW_AT_name("_sgnControl")
	.dwattr $C$DW$271, DW_AT_TI_call
        call #_sgnControl ; |716| 
                                        ; call occurs [#_sgnControl] ; |716| 
        SP = SP + #15
	.dwcfi	cfa_offset, 1
$C$DW$272	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$272, DW_AT_low_pc(0x00)
	.dwattr $C$DW$272, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$261, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c")
	.dwattr $C$DW$261, DW_AT_TI_end_line(0x2cd)
	.dwattr $C$DW$261, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$261

	.sect	".text"
	.global	_vpe_sim_gen_frame

$C$DW$273	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_sim_gen_frame")
	.dwattr $C$DW$273, DW_AT_low_pc(_vpe_sim_gen_frame)
	.dwattr $C$DW$273, DW_AT_high_pc(0x00)
	.dwattr $C$DW$273, DW_AT_TI_symbol_name("_vpe_sim_gen_frame")
	.dwattr $C$DW$273, DW_AT_external
	.dwattr $C$DW$273, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c")
	.dwattr $C$DW$273, DW_AT_TI_begin_line(0x2d6)
	.dwattr $C$DW$273, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$273, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 727,column 1,is_stmt,address _vpe_sim_gen_frame

	.dwfde $C$DW$CIE, _vpe_sim_gen_frame
$C$DW$274	.dwtag  DW_TAG_formal_parameter, DW_AT_name("inst")
	.dwattr $C$DW$274, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$274, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$274, DW_AT_location[DW_OP_reg17]
$C$DW$275	.dwtag  DW_TAG_formal_parameter, DW_AT_name("frame_size")
	.dwattr $C$DW$275, DW_AT_TI_symbol_name("_frame_size")
	.dwattr $C$DW$275, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$275, DW_AT_location[DW_OP_reg12]
$C$DW$276	.dwtag  DW_TAG_formal_parameter, DW_AT_name("frame")
	.dwattr $C$DW$276, DW_AT_TI_symbol_name("_frame")
	.dwattr $C$DW$276, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$276, DW_AT_location[DW_OP_reg19]
;----------------------------------------------------------------------
; 726 | void vpe_sim_gen_frame (void *inst, tint frame_size, linSample *frame) 
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: vpe_sim_gen_frame                                            *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR1,XAR1,SP,M40,SATA,SATD,RDM,FRCT,SMUL  *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_vpe_sim_gen_frame:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-7
	.dwcfi	cfa_offset, 8
$C$DW$277	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$277, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$277, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$277, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$278	.dwtag  DW_TAG_variable, DW_AT_name("frame_size")
	.dwattr $C$DW$278, DW_AT_TI_symbol_name("_frame_size")
	.dwattr $C$DW$278, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$278, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$279	.dwtag  DW_TAG_variable, DW_AT_name("frame")
	.dwattr $C$DW$279, DW_AT_TI_symbol_name("_frame")
	.dwattr $C$DW$279, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$279, DW_AT_location[DW_OP_bregx 0x24 4]
        dbl(*SP(#4)) = XAR1
        *SP(#2) = T0 ; |727| 
        dbl(*SP(#0)) = XAR0
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 729,column 3,is_stmt
;----------------------------------------------------------------------
; 729 | sgnGenerateFrame (inst, frame_size, frame);                            
;----------------------------------------------------------------------
        T0 = *SP(#2) ; |729| 
        XAR1 = dbl(*SP(#4))
$C$DW$280	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$280, DW_AT_low_pc(0x00)
	.dwattr $C$DW$280, DW_AT_name("_sgnGenerateFrame")
	.dwattr $C$DW$280, DW_AT_TI_call
        call #_sgnGenerateFrame ; |729| 
                                        ; call occurs [#_sgnGenerateFrame] ; |729| 
        SP = SP + #7
	.dwcfi	cfa_offset, 1
$C$DW$281	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$281, DW_AT_low_pc(0x00)
	.dwattr $C$DW$281, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$273, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c")
	.dwattr $C$DW$273, DW_AT_TI_end_line(0x2db)
	.dwattr $C$DW$273, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$273

	.sect	".text"
	.global	_vpe_sim_in_file

$C$DW$282	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_sim_in_file")
	.dwattr $C$DW$282, DW_AT_low_pc(_vpe_sim_in_file)
	.dwattr $C$DW$282, DW_AT_high_pc(0x00)
	.dwattr $C$DW$282, DW_AT_TI_symbol_name("_vpe_sim_in_file")
	.dwattr $C$DW$282, DW_AT_external
	.dwattr $C$DW$282, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$282, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c")
	.dwattr $C$DW$282, DW_AT_TI_begin_line(0x2e1)
	.dwattr $C$DW$282, DW_AT_TI_begin_column(0x0e)
	.dwattr $C$DW$282, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 738,column 1,is_stmt,address _vpe_sim_in_file

	.dwfde $C$DW$CIE, _vpe_sim_in_file
$C$DW$283	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dsc")
	.dwattr $C$DW$283, DW_AT_TI_symbol_name("_dsc")
	.dwattr $C$DW$283, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$283, DW_AT_location[DW_OP_reg17]
;----------------------------------------------------------------------
; 737 | sgnFileIo_t *vpe_sim_in_file (sgnFileIo_t *dsc)                        
; 739 | inFrame = dsc->frame;                                                  
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: vpe_sim_in_file                                              *
;*                                                                             *
;*   Function Uses Regs : AR0,XAR0,AR1,AR3,XAR3,SP,M40,SATA,SATD,RDM,FRCT,SMUL *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_vpe_sim_in_file:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-3
	.dwcfi	cfa_offset, 4
$C$DW$284	.dwtag  DW_TAG_variable, DW_AT_name("dsc")
	.dwattr $C$DW$284, DW_AT_TI_symbol_name("_dsc")
	.dwattr $C$DW$284, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$284, DW_AT_location[DW_OP_bregx 0x24 0]
        dbl(*SP(#0)) = XAR0
        XAR3 = dbl(*SP(#0))
        XAR3 = dbl(*AR3)
        dbl(*(#_inFrame)) = XAR3
        XAR3 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 740,column 3,is_stmt
;----------------------------------------------------------------------
; 740 | inCnt   = dsc->cnt;                                                    
; 741 | asm (" nop");                                                          
; 742 | asm (" nop");                                                          
; 743 | asm (" nop");                                                          
; 744 | return (dsc);                                                          
;----------------------------------------------------------------------
        AR1 = *AR3(short(#2)) ; |740| 
        *(#_inCnt) = AR1 ; |740| 
 nop
 nop
 nop
        SP = SP + #3
	.dwcfi	cfa_offset, 1
$C$DW$285	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$285, DW_AT_low_pc(0x00)
	.dwattr $C$DW$285, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$282, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c")
	.dwattr $C$DW$282, DW_AT_TI_end_line(0x2e9)
	.dwattr $C$DW$282, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$282

	.sect	".text"
	.global	_vpe_sim_out_file

$C$DW$286	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_sim_out_file")
	.dwattr $C$DW$286, DW_AT_low_pc(_vpe_sim_out_file)
	.dwattr $C$DW$286, DW_AT_high_pc(0x00)
	.dwattr $C$DW$286, DW_AT_TI_symbol_name("_vpe_sim_out_file")
	.dwattr $C$DW$286, DW_AT_external
	.dwattr $C$DW$286, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$286, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c")
	.dwattr $C$DW$286, DW_AT_TI_begin_line(0x2eb)
	.dwattr $C$DW$286, DW_AT_TI_begin_column(0x0e)
	.dwattr $C$DW$286, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 748,column 1,is_stmt,address _vpe_sim_out_file

	.dwfde $C$DW$CIE, _vpe_sim_out_file
$C$DW$287	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dsc")
	.dwattr $C$DW$287, DW_AT_TI_symbol_name("_dsc")
	.dwattr $C$DW$287, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$287, DW_AT_location[DW_OP_reg17]
;----------------------------------------------------------------------
; 747 | sgnFileIo_t *vpe_sim_out_file (sgnFileIo_t *dsc)                       
; 749 | outFrame = dsc->frame;                                                 
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: vpe_sim_out_file                                             *
;*                                                                             *
;*   Function Uses Regs : AR0,XAR0,AR1,AR3,XAR3,SP,M40,SATA,SATD,RDM,FRCT,SMUL *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_vpe_sim_out_file:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-3
	.dwcfi	cfa_offset, 4
$C$DW$288	.dwtag  DW_TAG_variable, DW_AT_name("dsc")
	.dwattr $C$DW$288, DW_AT_TI_symbol_name("_dsc")
	.dwattr $C$DW$288, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$288, DW_AT_location[DW_OP_bregx 0x24 0]
        dbl(*SP(#0)) = XAR0
        XAR3 = dbl(*SP(#0))
        XAR3 = dbl(*AR3)
        dbl(*(#_outFrame)) = XAR3
        XAR3 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 750,column 3,is_stmt
;----------------------------------------------------------------------
; 750 | outCnt   = dsc->cnt;                                                   
; 751 | asm (" nop");                                                          
; 752 | asm (" nop");                                                          
; 753 | asm (" nop");                                                          
; 754 | return (dsc);                                                          
;----------------------------------------------------------------------
        AR1 = *AR3(short(#2)) ; |750| 
        *(#_outCnt) = AR1 ; |750| 
 nop
 nop
 nop
        SP = SP + #3
	.dwcfi	cfa_offset, 1
$C$DW$289	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$289, DW_AT_low_pc(0x00)
	.dwattr $C$DW$289, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$286, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c")
	.dwattr $C$DW$286, DW_AT_TI_end_line(0x2f3)
	.dwattr $C$DW$286, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$286

	.sect	".text"
	.global	_vpe_sim_flush_cache

$C$DW$290	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_sim_flush_cache")
	.dwattr $C$DW$290, DW_AT_low_pc(_vpe_sim_flush_cache)
	.dwattr $C$DW$290, DW_AT_high_pc(0x00)
	.dwattr $C$DW$290, DW_AT_TI_symbol_name("_vpe_sim_flush_cache")
	.dwattr $C$DW$290, DW_AT_external
	.dwattr $C$DW$290, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c")
	.dwattr $C$DW$290, DW_AT_TI_begin_line(0x2f6)
	.dwattr $C$DW$290, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$290, DW_AT_TI_max_frame_size(0x01)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c",line 758,column 28,is_stmt,address _vpe_sim_flush_cache

	.dwfde $C$DW$CIE, _vpe_sim_flush_cache
;----------------------------------------------------------------------
; 758 | void vpe_sim_flush_cache() {                                           
; 759 | #if _VPESIM_C64||_VPESIM_C64_BIG_ENDIAN||_VPESIM_C64P||_VPESIM_C64P_BIG
;     | _ENDIAN |_VPESIM_C66||_VPESIM_C66_BIG_ENDIAN                           
; 761 | memarchcfg_cacheFlush();                                               
; 762 | #endif                                                                 
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: vpe_sim_flush_cache                                          *
;*                                                                             *
;*   Function Uses Regs : SP,M40,SATA,SATD,RDM,FRCT,SMUL                       *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 1 word                                               *
;*                        (1 return address/alignment)                         *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_vpe_sim_flush_cache:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
$C$DW$291	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$291, DW_AT_low_pc(0x00)
	.dwattr $C$DW$291, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$290, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim_setup.c")
	.dwattr $C$DW$290, DW_AT_TI_end_line(0x2fb)
	.dwattr $C$DW$290, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$290

;*******************************************************************************
;* FAR STRINGS                                                                 *
;*******************************************************************************
	.sect	".const:.string"
	.align	2
$C$FSL1:	.string	" - File already open: %s",10,0
	.align	2
$C$FSL2:	.string	"rb",0
	.align	2
$C$FSL3:	.string	"wb",0
	.align	2
$C$FSL4:	.string	"Error: unrecognized file action %d ",10,0
	.align	2
$C$FSL5:	.string	"Unable to open file: %s",10,0
	.align	2
$C$FSL6:	.string	" - Opened file: %s",10,0
	.align	2
$C$FSL7:	.string	"Warning: premature file close",10,0
	.align	2
$C$FSL8:	.string	" - Closed file: %s",10,0
	.align	2
$C$FSL9:	.string	"../../../vectors/",0
	.align	2
$C$FSL10:	.string	"sigIn.pcm",0
	.align	2
$C$FSL11:	.string	"sigOut.pcm",0
	.align	2
$C$FSL12:	.string	"vpecfg.txt",0
	.align	2
$C$FSL13:	.string	"r",0
	.align	2
$C$FSL14:	.string	"VPE configuration file does NOT exist!",10,0
	.align	2
$C$FSL15:	.string	"%d",10,0
	.align	2
$C$FSL16:	.string	"snlLevOut.pcm",0
	.align	2
$C$FSL17:	.string	"svdOut.pcm",0
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_malloc
	.global	_exit
	.global	_fclose
	.global	_fopen
	.global	_fscanf
	.global	_printf
	.global	_sprintf
	.global	_fread
	.global	_fwrite
	.global	_strcpy
	.global	_strcat
	.global	_memset
	.global	_sgnGetSizes
	.global	_sgnControl
	.global	_sgnGenerateFrame
	.global	_sgnInit
	.global	_hlcGetSizes
	.global	_hlcInit
	.global	_hlcControl
	.global	_slmGetSizes
	.global	_slmInit
	.global	_snlGetSizes
	.global	_snlInit
	.global	_svdGetSizes
	.global	_svdInit
	.global	_vpe_instantiate_nr
	.global	_vpe_config_nr
	.global	_decimDelayLine
	.global	_interpDelayLine
	.global	_vpeSim
	.global	_slmInst_ptr
	.global	_hlcInst_ptr
	.global	_hctrlInst_ptr
	.global	_snlInst_ptr
	.global	_snlLevOut
	.global	_svdInst_ptr
	.global	_svdOut
	.global	_sgnInst_ptr

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$68	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$68, DW_AT_byte_size(0x01)
$C$DW$292	.dwtag  DW_TAG_enumerator, DW_AT_name("vpe_SIM_PCM_ALAW"), DW_AT_const_value(0x00)
$C$DW$293	.dwtag  DW_TAG_enumerator, DW_AT_name("vpe_SIM_PCM_ULAW"), DW_AT_const_value(0x01)
$C$DW$294	.dwtag  DW_TAG_enumerator, DW_AT_name("vpe_SIM_PCM_LIN"), DW_AT_const_value(0x02)
	.dwendtag $C$DW$T$68

$C$DW$T$69	.dwtag  DW_TAG_typedef, DW_AT_name("vpeSimPcm_e")
	.dwattr $C$DW$T$69, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$T$69, DW_AT_language(DW_LANG_C)

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x0c)
$C$DW$295	.dwtag  DW_TAG_member
	.dwattr $C$DW$295, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$295, DW_AT_name("fd")
	.dwattr $C$DW$295, DW_AT_TI_symbol_name("_fd")
	.dwattr $C$DW$295, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$295, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$296	.dwtag  DW_TAG_member
	.dwattr $C$DW$296, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$296, DW_AT_name("buf")
	.dwattr $C$DW$296, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$296, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$296, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$297	.dwtag  DW_TAG_member
	.dwattr $C$DW$297, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$297, DW_AT_name("pos")
	.dwattr $C$DW$297, DW_AT_TI_symbol_name("_pos")
	.dwattr $C$DW$297, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$297, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$298	.dwtag  DW_TAG_member
	.dwattr $C$DW$298, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$298, DW_AT_name("bufend")
	.dwattr $C$DW$298, DW_AT_TI_symbol_name("_bufend")
	.dwattr $C$DW$298, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$298, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$299	.dwtag  DW_TAG_member
	.dwattr $C$DW$299, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$299, DW_AT_name("buff_stop")
	.dwattr $C$DW$299, DW_AT_TI_symbol_name("_buff_stop")
	.dwattr $C$DW$299, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$299, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$300	.dwtag  DW_TAG_member
	.dwattr $C$DW$300, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$300, DW_AT_name("flags")
	.dwattr $C$DW$300, DW_AT_TI_symbol_name("_flags")
	.dwattr $C$DW$300, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$300, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$20

$C$DW$T$59	.dwtag  DW_TAG_typedef, DW_AT_name("FILE")
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$59, DW_AT_language(DW_LANG_C)
$C$DW$T$60	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$T$60, DW_AT_address_class(0x17)

$C$DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x04)
$C$DW$301	.dwtag  DW_TAG_member
	.dwattr $C$DW$301, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$301, DW_AT_name("f1")
	.dwattr $C$DW$301, DW_AT_TI_symbol_name("_f1")
	.dwattr $C$DW$301, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$301, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$302	.dwtag  DW_TAG_member
	.dwattr $C$DW$302, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$302, DW_AT_name("f2")
	.dwattr $C$DW$302, DW_AT_TI_symbol_name("_f2")
	.dwattr $C$DW$302, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$302, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$303	.dwtag  DW_TAG_member
	.dwattr $C$DW$303, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$303, DW_AT_name("amp1")
	.dwattr $C$DW$303, DW_AT_TI_symbol_name("_amp1")
	.dwattr $C$DW$303, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$303, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$304	.dwtag  DW_TAG_member
	.dwattr $C$DW$304, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$304, DW_AT_name("amp2")
	.dwattr $C$DW$304, DW_AT_TI_symbol_name("_amp2")
	.dwattr $C$DW$304, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$304, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$25


$C$DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x06)
$C$DW$305	.dwtag  DW_TAG_member
	.dwattr $C$DW$305, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$305, DW_AT_name("duration")
	.dwattr $C$DW$305, DW_AT_TI_symbol_name("_duration")
	.dwattr $C$DW$305, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$305, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$306	.dwtag  DW_TAG_member
	.dwattr $C$DW$306, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$306, DW_AT_name("dataptr")
	.dwattr $C$DW$306, DW_AT_TI_symbol_name("_dataptr")
	.dwattr $C$DW$306, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$306, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$307	.dwtag  DW_TAG_member
	.dwattr $C$DW$307, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$307, DW_AT_name("numword")
	.dwattr $C$DW$307, DW_AT_TI_symbol_name("_numword")
	.dwattr $C$DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$307, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$30


$C$DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x08)
$C$DW$308	.dwtag  DW_TAG_member
	.dwattr $C$DW$308, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$308, DW_AT_name("code")
	.dwattr $C$DW$308, DW_AT_TI_symbol_name("_code")
	.dwattr $C$DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$308, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$309	.dwtag  DW_TAG_member
	.dwattr $C$DW$309, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$309, DW_AT_name("Fs")
	.dwattr $C$DW$309, DW_AT_TI_symbol_name("_Fs")
	.dwattr $C$DW$309, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$309, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$310	.dwtag  DW_TAG_member
	.dwattr $C$DW$310, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$310, DW_AT_name("u")
	.dwattr $C$DW$310, DW_AT_TI_symbol_name("_u")
	.dwattr $C$DW$310, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$310, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$31

$C$DW$T$77	.dwtag  DW_TAG_typedef, DW_AT_name("sgnControl_t")
	.dwattr $C$DW$T$77, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$77, DW_AT_language(DW_LANG_C)
$C$DW$T$78	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$78, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$T$78, DW_AT_address_class(0x17)

$C$DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x04)
$C$DW$311	.dwtag  DW_TAG_member
	.dwattr $C$DW$311, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$311, DW_AT_name("frame")
	.dwattr $C$DW$311, DW_AT_TI_symbol_name("_frame")
	.dwattr $C$DW$311, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$311, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$312	.dwtag  DW_TAG_member
	.dwattr $C$DW$312, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$312, DW_AT_name("cnt")
	.dwattr $C$DW$312, DW_AT_TI_symbol_name("_cnt")
	.dwattr $C$DW$312, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$312, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$33

$C$DW$T$40	.dwtag  DW_TAG_typedef, DW_AT_name("sgnFileIo_t")
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$40, DW_AT_language(DW_LANG_C)
$C$DW$T$41	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$41, DW_AT_address_class(0x17)

$C$DW$T$42	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$42, DW_AT_language(DW_LANG_C)
$C$DW$313	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$313, DW_AT_type(*$C$DW$T$41)
	.dwendtag $C$DW$T$42

$C$DW$T$43	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$43, DW_AT_address_class(0x20)

$C$DW$T$53	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x20)
$C$DW$314	.dwtag  DW_TAG_member
	.dwattr $C$DW$314, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$314, DW_AT_name("delay")
	.dwattr $C$DW$314, DW_AT_TI_symbol_name("_delay")
	.dwattr $C$DW$314, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$314, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$315	.dwtag  DW_TAG_member
	.dwattr $C$DW$315, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$315, DW_AT_name("dc_offset")
	.dwattr $C$DW$315, DW_AT_TI_symbol_name("_dc_offset")
	.dwattr $C$DW$315, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$315, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$316	.dwtag  DW_TAG_member
	.dwattr $C$DW$316, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$316, DW_AT_name("wf_type")
	.dwattr $C$DW$316, DW_AT_TI_symbol_name("_wf_type")
	.dwattr $C$DW$316, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$316, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$317	.dwtag  DW_TAG_member
	.dwattr $C$DW$317, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$317, DW_AT_name("f1")
	.dwattr $C$DW$317, DW_AT_TI_symbol_name("_f1")
	.dwattr $C$DW$317, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$317, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$318	.dwtag  DW_TAG_member
	.dwattr $C$DW$318, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$318, DW_AT_name("f2")
	.dwattr $C$DW$318, DW_AT_TI_symbol_name("_f2")
	.dwattr $C$DW$318, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$318, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$319	.dwtag  DW_TAG_member
	.dwattr $C$DW$319, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$319, DW_AT_name("Fs")
	.dwattr $C$DW$319, DW_AT_TI_symbol_name("_Fs")
	.dwattr $C$DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$319, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$320	.dwtag  DW_TAG_member
	.dwattr $C$DW$320, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$320, DW_AT_name("t_amp1")
	.dwattr $C$DW$320, DW_AT_TI_symbol_name("_t_amp1")
	.dwattr $C$DW$320, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$320, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$321	.dwtag  DW_TAG_member
	.dwattr $C$DW$321, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$321, DW_AT_name("t_amp2")
	.dwattr $C$DW$321, DW_AT_TI_symbol_name("_t_amp2")
	.dwattr $C$DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$321, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$322	.dwtag  DW_TAG_member
	.dwattr $C$DW$322, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$322, DW_AT_name("pr_period")
	.dwattr $C$DW$322, DW_AT_TI_symbol_name("_pr_period")
	.dwattr $C$DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$322, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$323	.dwtag  DW_TAG_member
	.dwattr $C$DW$323, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$323, DW_AT_name("pr_enable")
	.dwattr $C$DW$323, DW_AT_TI_symbol_name("_pr_enable")
	.dwattr $C$DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$323, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$324	.dwtag  DW_TAG_member
	.dwattr $C$DW$324, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$324, DW_AT_name("fsk_duration")
	.dwattr $C$DW$324, DW_AT_TI_symbol_name("_fsk_duration")
	.dwattr $C$DW$324, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$324, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$325	.dwtag  DW_TAG_member
	.dwattr $C$DW$325, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$325, DW_AT_name("fsk_dataptr")
	.dwattr $C$DW$325, DW_AT_TI_symbol_name("_fsk_dataptr")
	.dwattr $C$DW$325, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$325, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$326	.dwtag  DW_TAG_member
	.dwattr $C$DW$326, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$326, DW_AT_name("fsk_numword")
	.dwattr $C$DW$326, DW_AT_TI_symbol_name("_fsk_numword")
	.dwattr $C$DW$326, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$326, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$327	.dwtag  DW_TAG_member
	.dwattr $C$DW$327, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$327, DW_AT_name("noise_level")
	.dwattr $C$DW$327, DW_AT_TI_symbol_name("_noise_level")
	.dwattr $C$DW$327, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$327, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$328	.dwtag  DW_TAG_member
	.dwattr $C$DW$328, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$328, DW_AT_name("noise_seed")
	.dwattr $C$DW$328, DW_AT_TI_symbol_name("_noise_seed")
	.dwattr $C$DW$328, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$328, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$329	.dwtag  DW_TAG_member
	.dwattr $C$DW$329, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$329, DW_AT_name("noise_type")
	.dwattr $C$DW$329, DW_AT_TI_symbol_name("_noise_type")
	.dwattr $C$DW$329, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$329, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$330	.dwtag  DW_TAG_member
	.dwattr $C$DW$330, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$330, DW_AT_name("power_level")
	.dwattr $C$DW$330, DW_AT_TI_symbol_name("_power_level")
	.dwattr $C$DW$330, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$330, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$331	.dwtag  DW_TAG_member
	.dwattr $C$DW$331, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$331, DW_AT_name("hoth_wng_seed")
	.dwattr $C$DW$331, DW_AT_TI_symbol_name("_hoth_wng_seed")
	.dwattr $C$DW$331, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$331, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$332	.dwtag  DW_TAG_member
	.dwattr $C$DW$332, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$332, DW_AT_name("file_io_fcn")
	.dwattr $C$DW$332, DW_AT_TI_symbol_name("_file_io_fcn")
	.dwattr $C$DW$332, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$332, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$333	.dwtag  DW_TAG_member
	.dwattr $C$DW$333, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$333, DW_AT_name("addr")
	.dwattr $C$DW$333, DW_AT_TI_symbol_name("_addr")
	.dwattr $C$DW$333, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$333, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$334	.dwtag  DW_TAG_member
	.dwattr $C$DW$334, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$334, DW_AT_name("count")
	.dwattr $C$DW$334, DW_AT_TI_symbol_name("_count")
	.dwattr $C$DW$334, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$334, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$335	.dwtag  DW_TAG_member
	.dwattr $C$DW$335, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$335, DW_AT_name("pcmtbl")
	.dwattr $C$DW$335, DW_AT_TI_symbol_name("_pcmtbl")
	.dwattr $C$DW$335, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$335, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$336	.dwtag  DW_TAG_member
	.dwattr $C$DW$336, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$336, DW_AT_name("exception")
	.dwattr $C$DW$336, DW_AT_TI_symbol_name("_exception")
	.dwattr $C$DW$336, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$336, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$337	.dwtag  DW_TAG_member
	.dwattr $C$DW$337, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$337, DW_AT_name("debug")
	.dwattr $C$DW$337, DW_AT_TI_symbol_name("_debug")
	.dwattr $C$DW$337, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$337, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$53

$C$DW$T$79	.dwtag  DW_TAG_typedef, DW_AT_name("sgnConfig_t")
	.dwattr $C$DW$T$79, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$T$79, DW_AT_language(DW_LANG_C)
$C$DW$T$80	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$80, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$T$80, DW_AT_address_class(0x17)

$C$DW$T$55	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x06)
$C$DW$338	.dwtag  DW_TAG_member
	.dwattr $C$DW$338, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$338, DW_AT_name("valid_bf")
	.dwattr $C$DW$338, DW_AT_TI_symbol_name("_valid_bf")
	.dwattr $C$DW$338, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$338, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$339	.dwtag  DW_TAG_member
	.dwattr $C$DW$339, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$339, DW_AT_name("thresh")
	.dwattr $C$DW$339, DW_AT_TI_symbol_name("_thresh")
	.dwattr $C$DW$339, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$339, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$340	.dwtag  DW_TAG_member
	.dwattr $C$DW$340, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$340, DW_AT_name("ramp_out_period")
	.dwattr $C$DW$340, DW_AT_TI_symbol_name("_ramp_out_period")
	.dwattr $C$DW$340, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$340, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$341	.dwtag  DW_TAG_member
	.dwattr $C$DW$341, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$341, DW_AT_name("power_tc")
	.dwattr $C$DW$341, DW_AT_TI_symbol_name("_power_tc")
	.dwattr $C$DW$341, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$341, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$342	.dwtag  DW_TAG_member
	.dwattr $C$DW$342, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$342, DW_AT_name("srate_factor")
	.dwattr $C$DW$342, DW_AT_TI_symbol_name("_srate_factor")
	.dwattr $C$DW$342, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$342, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$343	.dwtag  DW_TAG_member
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$343, DW_AT_name("frm_len")
	.dwattr $C$DW$343, DW_AT_TI_symbol_name("_frm_len")
	.dwattr $C$DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$343, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$55

$C$DW$T$81	.dwtag  DW_TAG_typedef, DW_AT_name("hlcConfig_t")
	.dwattr $C$DW$T$81, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$T$81, DW_AT_language(DW_LANG_C)
$C$DW$T$82	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$T$82, DW_AT_address_class(0x17)

$C$DW$T$56	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$56, DW_AT_byte_size(0x02)
$C$DW$344	.dwtag  DW_TAG_member
	.dwattr $C$DW$344, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$344, DW_AT_name("ctl_code")
	.dwattr $C$DW$344, DW_AT_TI_symbol_name("_ctl_code")
	.dwattr $C$DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$344, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$345	.dwtag  DW_TAG_member
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$345, DW_AT_name("u")
	.dwattr $C$DW$345, DW_AT_TI_symbol_name("_u")
	.dwattr $C$DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$345, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$56

$C$DW$T$64	.dwtag  DW_TAG_typedef, DW_AT_name("hlcControl_t")
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$T$64, DW_AT_language(DW_LANG_C)
$C$DW$T$83	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$83, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$83, DW_AT_address_class(0x17)

$C$DW$T$57	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$57, DW_AT_byte_size(0x02)
$C$DW$346	.dwtag  DW_TAG_member
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$346, DW_AT_name("valid_bf")
	.dwattr $C$DW$346, DW_AT_TI_symbol_name("_valid_bf")
	.dwattr $C$DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$346, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$347	.dwtag  DW_TAG_member
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$347, DW_AT_name("srate_factor")
	.dwattr $C$DW$347, DW_AT_TI_symbol_name("_srate_factor")
	.dwattr $C$DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$347, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$57

$C$DW$T$84	.dwtag  DW_TAG_typedef, DW_AT_name("slmConfig_t")
	.dwattr $C$DW$T$84, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$84, DW_AT_language(DW_LANG_C)
$C$DW$T$85	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$85, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$T$85, DW_AT_address_class(0x17)

$C$DW$T$58	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$58, DW_AT_byte_size(0x0b)
$C$DW$348	.dwtag  DW_TAG_member
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$348, DW_AT_name("samp_rate")
	.dwattr $C$DW$348, DW_AT_TI_symbol_name("_samp_rate")
	.dwattr $C$DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$348, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$349	.dwtag  DW_TAG_member
	.dwattr $C$DW$349, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$349, DW_AT_name("delay")
	.dwattr $C$DW$349, DW_AT_TI_symbol_name("_delay")
	.dwattr $C$DW$349, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$349, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$350	.dwtag  DW_TAG_member
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$350, DW_AT_name("band_bin1")
	.dwattr $C$DW$350, DW_AT_TI_symbol_name("_band_bin1")
	.dwattr $C$DW$350, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$350, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$351	.dwtag  DW_TAG_member
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$351, DW_AT_name("band_bin2")
	.dwattr $C$DW$351, DW_AT_TI_symbol_name("_band_bin2")
	.dwattr $C$DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$351, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$352	.dwtag  DW_TAG_member
	.dwattr $C$DW$352, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$352, DW_AT_name("band1_max_atten")
	.dwattr $C$DW$352, DW_AT_TI_symbol_name("_band1_max_atten")
	.dwattr $C$DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$352, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$353	.dwtag  DW_TAG_member
	.dwattr $C$DW$353, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$353, DW_AT_name("band2_max_atten")
	.dwattr $C$DW$353, DW_AT_TI_symbol_name("_band2_max_atten")
	.dwattr $C$DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$353, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$354	.dwtag  DW_TAG_member
	.dwattr $C$DW$354, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$354, DW_AT_name("band3_max_atten")
	.dwattr $C$DW$354, DW_AT_TI_symbol_name("_band3_max_atten")
	.dwattr $C$DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$354, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$355	.dwtag  DW_TAG_member
	.dwattr $C$DW$355, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$355, DW_AT_name("sig_upd_rate_max")
	.dwattr $C$DW$355, DW_AT_TI_symbol_name("_sig_upd_rate_max")
	.dwattr $C$DW$355, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$355, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$356	.dwtag  DW_TAG_member
	.dwattr $C$DW$356, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$356, DW_AT_name("sig_upd_rate_min")
	.dwattr $C$DW$356, DW_AT_TI_symbol_name("_sig_upd_rate_min")
	.dwattr $C$DW$356, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$356, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$357	.dwtag  DW_TAG_member
	.dwattr $C$DW$357, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$357, DW_AT_name("noise_thresh")
	.dwattr $C$DW$357, DW_AT_TI_symbol_name("_noise_thresh")
	.dwattr $C$DW$357, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$357, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$358	.dwtag  DW_TAG_member
	.dwattr $C$DW$358, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$358, DW_AT_name("noise_hangover")
	.dwattr $C$DW$358, DW_AT_TI_symbol_name("_noise_hangover")
	.dwattr $C$DW$358, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$358, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$58

$C$DW$T$65	.dwtag  DW_TAG_typedef, DW_AT_name("vpeASNRPars_t")
	.dwattr $C$DW$T$65, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$T$65, DW_AT_language(DW_LANG_C)
$C$DW$T$86	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$86, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$T$86, DW_AT_address_class(0x17)

$C$DW$T$62	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$62, DW_AT_byte_size(0x104)
$C$DW$359	.dwtag  DW_TAG_member
	.dwattr $C$DW$359, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$359, DW_AT_name("fio")
	.dwattr $C$DW$359, DW_AT_TI_symbol_name("_fio")
	.dwattr $C$DW$359, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$359, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$360	.dwtag  DW_TAG_member
	.dwattr $C$DW$360, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$360, DW_AT_name("eof")
	.dwattr $C$DW$360, DW_AT_TI_symbol_name("_eof")
	.dwattr $C$DW$360, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$360, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$361	.dwtag  DW_TAG_member
	.dwattr $C$DW$361, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$361, DW_AT_name("fptr")
	.dwattr $C$DW$361, DW_AT_TI_symbol_name("_fptr")
	.dwattr $C$DW$361, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$361, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$362	.dwtag  DW_TAG_member
	.dwattr $C$DW$362, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$362, DW_AT_name("fname")
	.dwattr $C$DW$362, DW_AT_TI_symbol_name("_fname")
	.dwattr $C$DW$362, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$362, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$62

$C$DW$T$67	.dwtag  DW_TAG_typedef, DW_AT_name("vpeSimFileIo_t")
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$T$67, DW_AT_language(DW_LANG_C)
$C$DW$T$87	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$87, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$T$87, DW_AT_address_class(0x17)

$C$DW$T$63	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$63, DW_AT_byte_size(0x0e)
$C$DW$363	.dwtag  DW_TAG_member
	.dwattr $C$DW$363, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$363, DW_AT_name("state")
	.dwattr $C$DW$363, DW_AT_TI_symbol_name("_state")
	.dwattr $C$DW$363, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$363, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$364	.dwtag  DW_TAG_member
	.dwattr $C$DW$364, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$364, DW_AT_name("dcoffset")
	.dwattr $C$DW$364, DW_AT_TI_symbol_name("_dcoffset")
	.dwattr $C$DW$364, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$364, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$365	.dwtag  DW_TAG_member
	.dwattr $C$DW$365, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$365, DW_AT_name("wftype")
	.dwattr $C$DW$365, DW_AT_TI_symbol_name("_wftype")
	.dwattr $C$DW$365, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$365, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$366	.dwtag  DW_TAG_member
	.dwattr $C$DW$366, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$366, DW_AT_name("f1")
	.dwattr $C$DW$366, DW_AT_TI_symbol_name("_f1")
	.dwattr $C$DW$366, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$366, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$367	.dwtag  DW_TAG_member
	.dwattr $C$DW$367, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$367, DW_AT_name("f2")
	.dwattr $C$DW$367, DW_AT_TI_symbol_name("_f2")
	.dwattr $C$DW$367, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$367, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$368	.dwtag  DW_TAG_member
	.dwattr $C$DW$368, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$368, DW_AT_name("amp1")
	.dwattr $C$DW$368, DW_AT_TI_symbol_name("_amp1")
	.dwattr $C$DW$368, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$368, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$369	.dwtag  DW_TAG_member
	.dwattr $C$DW$369, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$369, DW_AT_name("amp2")
	.dwattr $C$DW$369, DW_AT_TI_symbol_name("_amp2")
	.dwattr $C$DW$369, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$369, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$370	.dwtag  DW_TAG_member
	.dwattr $C$DW$370, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$370, DW_AT_name("nlevel")
	.dwattr $C$DW$370, DW_AT_TI_symbol_name("_nlevel")
	.dwattr $C$DW$370, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$370, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$371	.dwtag  DW_TAG_member
	.dwattr $C$DW$371, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$371, DW_AT_name("nseed")
	.dwattr $C$DW$371, DW_AT_TI_symbol_name("_nseed")
	.dwattr $C$DW$371, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$371, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$372	.dwtag  DW_TAG_member
	.dwattr $C$DW$372, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$372, DW_AT_name("ntype")
	.dwattr $C$DW$372, DW_AT_TI_symbol_name("_ntype")
	.dwattr $C$DW$372, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$372, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$373	.dwtag  DW_TAG_member
	.dwattr $C$DW$373, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$373, DW_AT_name("pow_level")
	.dwattr $C$DW$373, DW_AT_TI_symbol_name("_pow_level")
	.dwattr $C$DW$373, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$373, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$374	.dwtag  DW_TAG_member
	.dwattr $C$DW$374, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$374, DW_AT_name("hoth_seed")
	.dwattr $C$DW$374, DW_AT_TI_symbol_name("_hoth_seed")
	.dwattr $C$DW$374, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$374, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$63

$C$DW$T$66	.dwtag  DW_TAG_typedef, DW_AT_name("vpeSGNPars_t")
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$66, DW_AT_language(DW_LANG_C)
$C$DW$T$88	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$88, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$T$88, DW_AT_address_class(0x17)

$C$DW$T$70	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$70, DW_AT_byte_size(0x444)
$C$DW$375	.dwtag  DW_TAG_member
	.dwattr $C$DW$375, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$375, DW_AT_name("exec")
	.dwattr $C$DW$375, DW_AT_TI_symbol_name("_exec")
	.dwattr $C$DW$375, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$375, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$376	.dwtag  DW_TAG_member
	.dwattr $C$DW$376, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$376, DW_AT_name("hlc_on")
	.dwattr $C$DW$376, DW_AT_TI_symbol_name("_hlc_on")
	.dwattr $C$DW$376, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$376, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$377	.dwtag  DW_TAG_member
	.dwattr $C$DW$377, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$377, DW_AT_name("slm_on")
	.dwattr $C$DW$377, DW_AT_TI_symbol_name("_slm_on")
	.dwattr $C$DW$377, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$377, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$378	.dwtag  DW_TAG_member
	.dwattr $C$DW$378, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$378, DW_AT_name("snl_on")
	.dwattr $C$DW$378, DW_AT_TI_symbol_name("_snl_on")
	.dwattr $C$DW$378, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$378, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$379	.dwtag  DW_TAG_member
	.dwattr $C$DW$379, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$379, DW_AT_name("svd_on")
	.dwattr $C$DW$379, DW_AT_TI_symbol_name("_svd_on")
	.dwattr $C$DW$379, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$379, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$380	.dwtag  DW_TAG_member
	.dwattr $C$DW$380, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$380, DW_AT_name("nr_on")
	.dwattr $C$DW$380, DW_AT_TI_symbol_name("_nr_on")
	.dwattr $C$DW$380, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$380, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$381	.dwtag  DW_TAG_member
	.dwattr $C$DW$381, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$381, DW_AT_name("decim_on")
	.dwattr $C$DW$381, DW_AT_TI_symbol_name("_decim_on")
	.dwattr $C$DW$381, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$381, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$382	.dwtag  DW_TAG_member
	.dwattr $C$DW$382, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$382, DW_AT_name("interp_on")
	.dwattr $C$DW$382, DW_AT_TI_symbol_name("_interp_on")
	.dwattr $C$DW$382, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$382, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$383	.dwtag  DW_TAG_member
	.dwattr $C$DW$383, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$383, DW_AT_name("ulaw_enc_on")
	.dwattr $C$DW$383, DW_AT_TI_symbol_name("_ulaw_enc_on")
	.dwattr $C$DW$383, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$383, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$384	.dwtag  DW_TAG_member
	.dwattr $C$DW$384, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$384, DW_AT_name("ulaw_dec_on")
	.dwattr $C$DW$384, DW_AT_TI_symbol_name("_ulaw_dec_on")
	.dwattr $C$DW$384, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$384, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$385	.dwtag  DW_TAG_member
	.dwattr $C$DW$385, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$385, DW_AT_name("alaw_enc_on")
	.dwattr $C$DW$385, DW_AT_TI_symbol_name("_alaw_enc_on")
	.dwattr $C$DW$385, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$385, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$386	.dwtag  DW_TAG_member
	.dwattr $C$DW$386, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$386, DW_AT_name("alaw_dec_on")
	.dwattr $C$DW$386, DW_AT_TI_symbol_name("_alaw_dec_on")
	.dwattr $C$DW$386, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$386, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$387	.dwtag  DW_TAG_member
	.dwattr $C$DW$387, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$387, DW_AT_name("sample_cnt")
	.dwattr $C$DW$387, DW_AT_TI_symbol_name("_sample_cnt")
	.dwattr $C$DW$387, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$387, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$388	.dwtag  DW_TAG_member
	.dwattr $C$DW$388, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$388, DW_AT_name("sample_bp")
	.dwattr $C$DW$388, DW_AT_TI_symbol_name("_sample_bp")
	.dwattr $C$DW$388, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$388, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$389	.dwtag  DW_TAG_member
	.dwattr $C$DW$389, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$389, DW_AT_name("sgn")
	.dwattr $C$DW$389, DW_AT_TI_symbol_name("_sgn")
	.dwattr $C$DW$389, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$389, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$390	.dwtag  DW_TAG_member
	.dwattr $C$DW$390, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$390, DW_AT_name("cfg_sgn")
	.dwattr $C$DW$390, DW_AT_TI_symbol_name("_cfg_sgn")
	.dwattr $C$DW$390, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$390, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$391	.dwtag  DW_TAG_member
	.dwattr $C$DW$391, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$391, DW_AT_name("cfg_hlc")
	.dwattr $C$DW$391, DW_AT_TI_symbol_name("_cfg_hlc")
	.dwattr $C$DW$391, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$391, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$392	.dwtag  DW_TAG_member
	.dwattr $C$DW$392, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$392, DW_AT_name("cfg_slm")
	.dwattr $C$DW$392, DW_AT_TI_symbol_name("_cfg_slm")
	.dwattr $C$DW$392, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$392, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$393	.dwtag  DW_TAG_member
	.dwattr $C$DW$393, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$393, DW_AT_name("slm_mod")
	.dwattr $C$DW$393, DW_AT_TI_symbol_name("_slm_mod")
	.dwattr $C$DW$393, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$393, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$394	.dwtag  DW_TAG_member
	.dwattr $C$DW$394, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$394, DW_AT_name("Fs")
	.dwattr $C$DW$394, DW_AT_TI_symbol_name("_Fs")
	.dwattr $C$DW$394, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$394, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$395	.dwtag  DW_TAG_member
	.dwattr $C$DW$395, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$395, DW_AT_name("hlc_ctrl")
	.dwattr $C$DW$395, DW_AT_TI_symbol_name("_hlc_ctrl")
	.dwattr $C$DW$395, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$395, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$396	.dwtag  DW_TAG_member
	.dwattr $C$DW$396, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$396, DW_AT_name("asnrParam")
	.dwattr $C$DW$396, DW_AT_TI_symbol_name("_asnrParam")
	.dwattr $C$DW$396, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$396, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$397	.dwtag  DW_TAG_member
	.dwattr $C$DW$397, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$397, DW_AT_name("sgnParam")
	.dwattr $C$DW$397, DW_AT_TI_symbol_name("_sgnParam")
	.dwattr $C$DW$397, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$397, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$398	.dwtag  DW_TAG_member
	.dwattr $C$DW$398, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$398, DW_AT_name("sigIn")
	.dwattr $C$DW$398, DW_AT_TI_symbol_name("_sigIn")
	.dwattr $C$DW$398, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$398, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$399	.dwtag  DW_TAG_member
	.dwattr $C$DW$399, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$399, DW_AT_name("sigOut")
	.dwattr $C$DW$399, DW_AT_TI_symbol_name("_sigOut")
	.dwattr $C$DW$399, DW_AT_data_member_location[DW_OP_plus_uconst 0x136]
	.dwattr $C$DW$399, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$400	.dwtag  DW_TAG_member
	.dwattr $C$DW$400, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$400, DW_AT_name("config")
	.dwattr $C$DW$400, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$400, DW_AT_data_member_location[DW_OP_plus_uconst 0x23a]
	.dwattr $C$DW$400, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$401	.dwtag  DW_TAG_member
	.dwattr $C$DW$401, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$401, DW_AT_name("pcmin_format")
	.dwattr $C$DW$401, DW_AT_TI_symbol_name("_pcmin_format")
	.dwattr $C$DW$401, DW_AT_data_member_location[DW_OP_plus_uconst 0x33e]
	.dwattr $C$DW$401, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$402	.dwtag  DW_TAG_member
	.dwattr $C$DW$402, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$402, DW_AT_name("pcmout_format")
	.dwattr $C$DW$402, DW_AT_TI_symbol_name("_pcmout_format")
	.dwattr $C$DW$402, DW_AT_data_member_location[DW_OP_plus_uconst 0x33f]
	.dwattr $C$DW$402, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$403	.dwtag  DW_TAG_member
	.dwattr $C$DW$403, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$403, DW_AT_name("data")
	.dwattr $C$DW$403, DW_AT_TI_symbol_name("_data")
	.dwattr $C$DW$403, DW_AT_data_member_location[DW_OP_plus_uconst 0x340]
	.dwattr $C$DW$403, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$404	.dwtag  DW_TAG_member
	.dwattr $C$DW$404, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$404, DW_AT_name("error_id")
	.dwattr $C$DW$404, DW_AT_TI_symbol_name("_error_id")
	.dwattr $C$DW$404, DW_AT_data_member_location[DW_OP_plus_uconst 0x341]
	.dwattr $C$DW$404, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$405	.dwtag  DW_TAG_member
	.dwattr $C$DW$405, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$405, DW_AT_name("frame_size_in")
	.dwattr $C$DW$405, DW_AT_TI_symbol_name("_frame_size_in")
	.dwattr $C$DW$405, DW_AT_data_member_location[DW_OP_plus_uconst 0x342]
	.dwattr $C$DW$405, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$406	.dwtag  DW_TAG_member
	.dwattr $C$DW$406, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$406, DW_AT_name("frame_size_out")
	.dwattr $C$DW$406, DW_AT_TI_symbol_name("_frame_size_out")
	.dwattr $C$DW$406, DW_AT_data_member_location[DW_OP_plus_uconst 0x343]
	.dwattr $C$DW$406, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$407	.dwtag  DW_TAG_member
	.dwattr $C$DW$407, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$407, DW_AT_name("baseDir")
	.dwattr $C$DW$407, DW_AT_TI_symbol_name("_baseDir")
	.dwattr $C$DW$407, DW_AT_data_member_location[DW_OP_plus_uconst 0x344]
	.dwattr $C$DW$407, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$70

$C$DW$T$89	.dwtag  DW_TAG_typedef, DW_AT_name("vpeSimConfig_t")
	.dwattr $C$DW$T$89, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$T$89, DW_AT_language(DW_LANG_C)
$C$DW$T$90	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$90, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$T$90, DW_AT_address_class(0x17)

$C$DW$T$71	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$71, DW_AT_byte_size(0x06)
$C$DW$408	.dwtag  DW_TAG_member
	.dwattr $C$DW$408, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$408, DW_AT_name("dc_offset")
	.dwattr $C$DW$408, DW_AT_TI_symbol_name("_dc_offset")
	.dwattr $C$DW$408, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$408, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$409	.dwtag  DW_TAG_member
	.dwattr $C$DW$409, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$409, DW_AT_name("pr_period")
	.dwattr $C$DW$409, DW_AT_TI_symbol_name("_pr_period")
	.dwattr $C$DW$409, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$409, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$410	.dwtag  DW_TAG_member
	.dwattr $C$DW$410, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$410, DW_AT_name("t")
	.dwattr $C$DW$410, DW_AT_TI_symbol_name("_t")
	.dwattr $C$DW$410, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$410, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$411	.dwtag  DW_TAG_member
	.dwattr $C$DW$411, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$411, DW_AT_name("noise_level")
	.dwattr $C$DW$411, DW_AT_TI_symbol_name("_noise_level")
	.dwattr $C$DW$411, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$411, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$412	.dwtag  DW_TAG_member
	.dwattr $C$DW$412, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$412, DW_AT_name("fsk")
	.dwattr $C$DW$412, DW_AT_TI_symbol_name("_fsk")
	.dwattr $C$DW$412, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$412, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$413	.dwtag  DW_TAG_member
	.dwattr $C$DW$413, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$413, DW_AT_name("power_level")
	.dwattr $C$DW$413, DW_AT_TI_symbol_name("_power_level")
	.dwattr $C$DW$413, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$413, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$71


$C$DW$T$72	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$72, DW_AT_byte_size(0x01)
$C$DW$414	.dwtag  DW_TAG_member
	.dwattr $C$DW$414, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$414, DW_AT_name("thresh")
	.dwattr $C$DW$414, DW_AT_TI_symbol_name("_thresh")
	.dwattr $C$DW$414, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$414, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$72

$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x17)

$C$DW$T$51	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$51, DW_AT_language(DW_LANG_C)
$C$DW$415	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$415, DW_AT_type(*$C$DW$T$39)
$C$DW$416	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$416, DW_AT_type(*$C$DW$T$50)
	.dwendtag $C$DW$T$51

$C$DW$T$52	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$T$52, DW_AT_address_class(0x20)
$C$DW$417	.dwtag  DW_TAG_TI_far_type
$C$DW$T$98	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$98, DW_AT_type(*$C$DW$417)
$C$DW$T$99	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$99, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$T$99, DW_AT_address_class(0x17)
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
$C$DW$T$19	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$19, DW_AT_address_class(0x17)
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
$C$DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("int16_t")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
$C$DW$T$22	.dwtag  DW_TAG_typedef, DW_AT_name("int_least16_t")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
$C$DW$T$23	.dwtag  DW_TAG_typedef, DW_AT_name("tint")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
$C$DW$T$54	.dwtag  DW_TAG_typedef, DW_AT_name("Fract")
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$54, DW_AT_language(DW_LANG_C)
$C$DW$T$29	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$29, DW_AT_address_class(0x17)

$C$DW$T$147	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$147, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$147, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$147, DW_AT_byte_size(0x01)
$C$DW$418	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$418, DW_AT_upper_bound(0x00)
	.dwendtag $C$DW$T$147

$C$DW$T$24	.dwtag  DW_TAG_typedef, DW_AT_name("linSample")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
$C$DW$T$32	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$32, DW_AT_address_class(0x17)

$C$DW$T$148	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$148, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$148, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$148, DW_AT_byte_size(0xc0)
$C$DW$419	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$419, DW_AT_upper_bound(0xbf)
	.dwendtag $C$DW$T$148


$C$DW$T$150	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$150, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$150, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$150, DW_AT_byte_size(0xb0)
$C$DW$420	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$420, DW_AT_upper_bound(0xaf)
	.dwendtag $C$DW$T$150

$C$DW$421	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$421, DW_AT_type(*$C$DW$T$23)
$C$DW$T$47	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$421)
$C$DW$T$48	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$48, DW_AT_address_class(0x17)
$C$DW$T$34	.dwtag  DW_TAG_typedef, DW_AT_name("int_least8_t")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)
$C$DW$T$35	.dwtag  DW_TAG_typedef, DW_AT_name("tshort")
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$35, DW_AT_language(DW_LANG_C)
$C$DW$T$36	.dwtag  DW_TAG_typedef, DW_AT_name("tbool")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)
$C$DW$T$110	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$110, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$110, DW_AT_address_class(0x17)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)
$C$DW$T$91	.dwtag  DW_TAG_typedef, DW_AT_name("size_t")
	.dwattr $C$DW$T$91, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$91, DW_AT_language(DW_LANG_C)
$C$DW$T$37	.dwtag  DW_TAG_typedef, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
$C$DW$T$38	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least16_t")
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$38, DW_AT_language(DW_LANG_C)
$C$DW$T$39	.dwtag  DW_TAG_typedef, DW_AT_name("tuint")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$39, DW_AT_language(DW_LANG_C)
$C$DW$T$157	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least8_t")
	.dwattr $C$DW$T$157, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$157, DW_AT_language(DW_LANG_C)
$C$DW$T$158	.dwtag  DW_TAG_typedef, DW_AT_name("tword")
	.dwattr $C$DW$T$158, DW_AT_type(*$C$DW$T$157)
	.dwattr $C$DW$T$158, DW_AT_language(DW_LANG_C)

$C$DW$T$159	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$159, DW_AT_type(*$C$DW$T$158)
	.dwattr $C$DW$T$159, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$159, DW_AT_byte_size(0x280)
$C$DW$422	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$422, DW_AT_upper_bound(0x27f)
	.dwendtag $C$DW$T$159

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)
$C$DW$T$26	.dwtag  DW_TAG_typedef, DW_AT_name("int32_t")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)
$C$DW$T$27	.dwtag  DW_TAG_typedef, DW_AT_name("int_least32_t")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)
$C$DW$T$28	.dwtag  DW_TAG_typedef, DW_AT_name("tlong")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C)
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)
$C$DW$T$44	.dwtag  DW_TAG_typedef, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)
$C$DW$T$45	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least32_t")
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$45, DW_AT_language(DW_LANG_C)
$C$DW$T$46	.dwtag  DW_TAG_typedef, DW_AT_name("tulong")
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$46, DW_AT_language(DW_LANG_C)
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
$C$DW$T$49	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$49, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$49, DW_AT_name("signed char")
	.dwattr $C$DW$T$49, DW_AT_byte_size(0x01)
$C$DW$T$50	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$T$50, DW_AT_address_class(0x17)

$C$DW$T$61	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$61, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$T$61, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$61, DW_AT_byte_size(0x100)
$C$DW$423	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$423, DW_AT_upper_bound(0xff)
	.dwendtag $C$DW$T$61

$C$DW$424	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$424, DW_AT_type(*$C$DW$T$49)
$C$DW$T$73	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$73, DW_AT_type(*$C$DW$424)
$C$DW$T$74	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$74, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$T$74, DW_AT_address_class(0x17)
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

$C$DW$425	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$425, DW_AT_location[DW_OP_reg0]
$C$DW$426	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$426, DW_AT_location[DW_OP_reg1]
$C$DW$427	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$427, DW_AT_location[DW_OP_reg2]
$C$DW$428	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$428, DW_AT_location[DW_OP_reg3]
$C$DW$429	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$429, DW_AT_location[DW_OP_reg4]
$C$DW$430	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$430, DW_AT_location[DW_OP_reg5]
$C$DW$431	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$431, DW_AT_location[DW_OP_reg6]
$C$DW$432	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$432, DW_AT_location[DW_OP_reg7]
$C$DW$433	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$433, DW_AT_location[DW_OP_reg8]
$C$DW$434	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$434, DW_AT_location[DW_OP_reg9]
$C$DW$435	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$435, DW_AT_location[DW_OP_reg10]
$C$DW$436	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$436, DW_AT_location[DW_OP_reg11]
$C$DW$437	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$437, DW_AT_location[DW_OP_reg12]
$C$DW$438	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$438, DW_AT_location[DW_OP_reg13]
$C$DW$439	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$439, DW_AT_location[DW_OP_reg14]
$C$DW$440	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$440, DW_AT_location[DW_OP_reg15]
$C$DW$441	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$441, DW_AT_location[DW_OP_reg16]
$C$DW$442	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$442, DW_AT_location[DW_OP_reg17]
$C$DW$443	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$443, DW_AT_location[DW_OP_reg18]
$C$DW$444	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$444, DW_AT_location[DW_OP_reg19]
$C$DW$445	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$445, DW_AT_location[DW_OP_reg20]
$C$DW$446	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$446, DW_AT_location[DW_OP_reg21]
$C$DW$447	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$447, DW_AT_location[DW_OP_reg22]
$C$DW$448	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$448, DW_AT_location[DW_OP_reg23]
$C$DW$449	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$449, DW_AT_location[DW_OP_reg24]
$C$DW$450	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$450, DW_AT_location[DW_OP_reg25]
$C$DW$451	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$451, DW_AT_location[DW_OP_reg26]
$C$DW$452	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$452, DW_AT_location[DW_OP_reg27]
$C$DW$453	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$453, DW_AT_location[DW_OP_reg28]
$C$DW$454	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$454, DW_AT_location[DW_OP_reg29]
$C$DW$455	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$455, DW_AT_location[DW_OP_reg30]
$C$DW$456	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$456, DW_AT_location[DW_OP_reg31]
$C$DW$457	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$457, DW_AT_location[DW_OP_regx 0x20]
$C$DW$458	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$458, DW_AT_location[DW_OP_regx 0x21]
$C$DW$459	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$459, DW_AT_location[DW_OP_regx 0x22]
$C$DW$460	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$460, DW_AT_location[DW_OP_regx 0x23]
$C$DW$461	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$461, DW_AT_location[DW_OP_regx 0x24]
$C$DW$462	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$462, DW_AT_location[DW_OP_regx 0x25]
$C$DW$463	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$463, DW_AT_location[DW_OP_regx 0x26]
$C$DW$464	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$464, DW_AT_location[DW_OP_regx 0x27]
$C$DW$465	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$465, DW_AT_location[DW_OP_regx 0x28]
$C$DW$466	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$466, DW_AT_location[DW_OP_regx 0x29]
$C$DW$467	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$467, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$468	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$468, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$469	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$469, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$470	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$470, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$471	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$471, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$472	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$472, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$473	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$473, DW_AT_location[DW_OP_regx 0x30]
$C$DW$474	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$474, DW_AT_location[DW_OP_regx 0x31]
$C$DW$475	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$475, DW_AT_location[DW_OP_regx 0x32]
$C$DW$476	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$476, DW_AT_location[DW_OP_regx 0x33]
$C$DW$477	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$477, DW_AT_location[DW_OP_regx 0x34]
$C$DW$478	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$478, DW_AT_location[DW_OP_regx 0x35]
$C$DW$479	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$479, DW_AT_location[DW_OP_regx 0x36]
$C$DW$480	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$480, DW_AT_location[DW_OP_regx 0x37]
$C$DW$481	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$481, DW_AT_location[DW_OP_regx 0x38]
$C$DW$482	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$482, DW_AT_location[DW_OP_regx 0x39]
$C$DW$483	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$483, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$484	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$484, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$485	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$485, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$486	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$486, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$487	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$487, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$488	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$488, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$489	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$489, DW_AT_location[DW_OP_regx 0x40]
$C$DW$490	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$490, DW_AT_location[DW_OP_regx 0x41]
$C$DW$491	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$491, DW_AT_location[DW_OP_regx 0x42]
$C$DW$492	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$492, DW_AT_location[DW_OP_regx 0x43]
$C$DW$493	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$493, DW_AT_location[DW_OP_regx 0x44]
$C$DW$494	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$494, DW_AT_location[DW_OP_regx 0x45]
$C$DW$495	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$495, DW_AT_location[DW_OP_regx 0x46]
$C$DW$496	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$496, DW_AT_location[DW_OP_regx 0x47]
$C$DW$497	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$497, DW_AT_location[DW_OP_regx 0x48]
$C$DW$498	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$498, DW_AT_location[DW_OP_regx 0x49]
$C$DW$499	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$499, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$500	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$500, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$501	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$501, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$502	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$502, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$503	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$503, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$504	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$504, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$505	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$505, DW_AT_location[DW_OP_regx 0x50]
$C$DW$506	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$506, DW_AT_location[DW_OP_regx 0x51]
$C$DW$507	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$507, DW_AT_location[DW_OP_regx 0x52]
$C$DW$508	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$508, DW_AT_location[DW_OP_regx 0x53]
$C$DW$509	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$509, DW_AT_location[DW_OP_regx 0x54]
$C$DW$510	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$510, DW_AT_location[DW_OP_regx 0x55]
$C$DW$511	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$511, DW_AT_location[DW_OP_regx 0x56]
$C$DW$512	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$512, DW_AT_location[DW_OP_regx 0x57]
$C$DW$513	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$513, DW_AT_location[DW_OP_regx 0x58]
$C$DW$514	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$514, DW_AT_location[DW_OP_regx 0x59]
$C$DW$515	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$515, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$516	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$516, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

