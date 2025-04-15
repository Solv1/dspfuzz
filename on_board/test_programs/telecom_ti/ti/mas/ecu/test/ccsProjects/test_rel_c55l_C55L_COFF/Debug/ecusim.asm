;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                          PC v4.4.1 *
;* Date/Time created: Fri Jul 05 14:12:11 2013                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen PC v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\ecu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug")

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("printf")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_printf")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$166)
$C$DW$3	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag $C$DW$1


$C$DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("strcpy")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_strcpy")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$4, DW_AT_declaration
	.dwattr $C$DW$4, DW_AT_external
$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$36)
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$166)
	.dwendtag $C$DW$4


$C$DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("utlLsMemSet")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_utlLsMemSet")
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$65)
$C$DW$9	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$56)
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$7


$C$DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("hybAddEcho")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_hybAddEcho")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$11, DW_AT_declaration
	.dwattr $C$DW$11, DW_AT_external
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$3)
$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$3)
$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$11


$C$DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("hybControl")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_hybControl")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$15, DW_AT_declaration
	.dwattr $C$DW$15, DW_AT_external
$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$3)
$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$109)
	.dwendtag $C$DW$15


$C$DW$18	.dwtag  DW_TAG_subprogram, DW_AT_name("mhmCreate")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_mhmCreate")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$18, DW_AT_declaration
	.dwattr $C$DW$18, DW_AT_external
$C$DW$19	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$3)
$C$DW$20	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$34)
$C$DW$21	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$99)
	.dwendtag $C$DW$18


$C$DW$22	.dwtag  DW_TAG_subprogram, DW_AT_name("mhmAlloc")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_mhmAlloc")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$22, DW_AT_declaration
	.dwattr $C$DW$22, DW_AT_external
$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$3)
$C$DW$24	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$34)
	.dwendtag $C$DW$22


$C$DW$25	.dwtag  DW_TAG_subprogram, DW_AT_name("ecuControl")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_ecuControl")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$25, DW_AT_declaration
	.dwattr $C$DW$25, DW_AT_external
$C$DW$26	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$3)
$C$DW$27	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$112)
	.dwendtag $C$DW$25


$C$DW$28	.dwtag  DW_TAG_subprogram, DW_AT_name("ecuGetFilter")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_ecuGetFilter")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$28, DW_AT_declaration
	.dwattr $C$DW$28, DW_AT_external
$C$DW$29	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$3)
$C$DW$30	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$21)
$C$DW$31	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$21)
$C$DW$32	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$21)
$C$DW$33	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$23)
	.dwendtag $C$DW$28


$C$DW$34	.dwtag  DW_TAG_subprogram, DW_AT_name("ecuSendIn")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_ecuSendIn")
	.dwattr $C$DW$34, DW_AT_declaration
	.dwattr $C$DW$34, DW_AT_external
$C$DW$35	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$3)
$C$DW$36	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$3)
$C$DW$37	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$3)
$C$DW$38	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$34


$C$DW$39	.dwtag  DW_TAG_subprogram, DW_AT_name("siuInit")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_siuInit")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$39, DW_AT_declaration
	.dwattr $C$DW$39, DW_AT_external
$C$DW$40	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$116)
	.dwendtag $C$DW$39


$C$DW$41	.dwtag  DW_TAG_subprogram, DW_AT_name("siuDebug")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_siuDebug")
	.dwattr $C$DW$41, DW_AT_declaration
	.dwattr $C$DW$41, DW_AT_external
$C$DW$42	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$34)
$C$DW$43	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$36)
	.dwendtag $C$DW$41


$C$DW$44	.dwtag  DW_TAG_subprogram, DW_AT_name("siuException")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_siuException")
	.dwattr $C$DW$44, DW_AT_declaration
	.dwattr $C$DW$44, DW_AT_external
$C$DW$45	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$34)
$C$DW$46	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$36)
	.dwendtag $C$DW$44


$C$DW$47	.dwtag  DW_TAG_subprogram, DW_AT_name("siu_new_piu")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_siu_new_piu")
	.dwattr $C$DW$47, DW_AT_declaration
	.dwattr $C$DW$47, DW_AT_external
$C$DW$48	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$21)
$C$DW$49	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$47


$C$DW$50	.dwtag  DW_TAG_subprogram, DW_AT_name("siu_open_piu")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_siu_open_piu")
	.dwattr $C$DW$50, DW_AT_declaration
	.dwattr $C$DW$50, DW_AT_external
$C$DW$51	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$21)
$C$DW$52	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$50


$C$DW$53	.dwtag  DW_TAG_subprogram, DW_AT_name("siu_open_tx")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_siu_open_tx")
	.dwattr $C$DW$53, DW_AT_declaration
	.dwattr $C$DW$53, DW_AT_external
$C$DW$54	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$21)
$C$DW$55	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$53


$C$DW$56	.dwtag  DW_TAG_subprogram, DW_AT_name("piuReceiveIn")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_piuReceiveIn")
	.dwattr $C$DW$56, DW_AT_declaration
	.dwattr $C$DW$56, DW_AT_external
$C$DW$57	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$3)
$C$DW$58	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$56


$C$DW$59	.dwtag  DW_TAG_subprogram, DW_AT_name("piuControl")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_piuControl")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$59, DW_AT_declaration
	.dwattr $C$DW$59, DW_AT_external
$C$DW$60	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$3)
$C$DW$61	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$117)
	.dwendtag $C$DW$59


$C$DW$62	.dwtag  DW_TAG_subprogram, DW_AT_name("piuSendIn")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_piuSendIn")
	.dwattr $C$DW$62, DW_AT_declaration
	.dwattr $C$DW$62, DW_AT_external
$C$DW$63	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$3)
$C$DW$64	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$141)
$C$DW$65	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$34)
$C$DW$66	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$34)
	.dwendtag $C$DW$62


$C$DW$67	.dwtag  DW_TAG_subprogram, DW_AT_name("piuReceiveOut")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_piuReceiveOut")
	.dwattr $C$DW$67, DW_AT_declaration
	.dwattr $C$DW$67, DW_AT_external
$C$DW$68	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$3)
$C$DW$69	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$141)
$C$DW$70	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$34)
$C$DW$71	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$34)
	.dwendtag $C$DW$67


$C$DW$72	.dwtag  DW_TAG_subprogram, DW_AT_name("ecu_sim_fileio_init")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_ecu_sim_fileio_init")
	.dwattr $C$DW$72, DW_AT_declaration
	.dwattr $C$DW$72, DW_AT_external
$C$DW$73	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$121)
$C$DW$74	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$34)
	.dwendtag $C$DW$72


$C$DW$75	.dwtag  DW_TAG_subprogram, DW_AT_name("ecu_sim_fileio_end")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_ecu_sim_fileio_end")
	.dwattr $C$DW$75, DW_AT_declaration
	.dwattr $C$DW$75, DW_AT_external
$C$DW$76	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$121)
	.dwendtag $C$DW$75


$C$DW$77	.dwtag  DW_TAG_subprogram, DW_AT_name("ecu_sim_input")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_ecu_sim_input")
	.dwattr $C$DW$77, DW_AT_declaration
	.dwattr $C$DW$77, DW_AT_external
$C$DW$78	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$100)
$C$DW$79	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$65)
	.dwendtag $C$DW$77


$C$DW$80	.dwtag  DW_TAG_subprogram, DW_AT_name("ecu_sim_output")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_ecu_sim_output")
	.dwattr $C$DW$80, DW_AT_declaration
	.dwattr $C$DW$80, DW_AT_external
$C$DW$81	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$100)
$C$DW$82	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$65)
	.dwendtag $C$DW$80


$C$DW$83	.dwtag  DW_TAG_subprogram, DW_AT_name("ecu_sim_fread")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_ecu_sim_fread")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$83, DW_AT_declaration
	.dwattr $C$DW$83, DW_AT_external
$C$DW$84	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$100)
$C$DW$85	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$21)
$C$DW$86	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$121)
	.dwendtag $C$DW$83


$C$DW$87	.dwtag  DW_TAG_subprogram, DW_AT_name("ecu_sim_fwrite")
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("_ecu_sim_fwrite")
	.dwattr $C$DW$87, DW_AT_declaration
	.dwattr $C$DW$87, DW_AT_external
$C$DW$88	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$100)
$C$DW$89	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$21)
$C$DW$90	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$121)
	.dwendtag $C$DW$87


$C$DW$91	.dwtag  DW_TAG_subprogram, DW_AT_name("ecusim_profile_close")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_ecusim_profile_close")
	.dwattr $C$DW$91, DW_AT_declaration
	.dwattr $C$DW$91, DW_AT_external

$C$DW$92	.dwtag  DW_TAG_subprogram, DW_AT_name("ecusim_profile_print")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_ecusim_profile_print")
	.dwattr $C$DW$92, DW_AT_declaration
	.dwattr $C$DW$92, DW_AT_external

$C$DW$93	.dwtag  DW_TAG_subprogram, DW_AT_name("ecusim_profile_init")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_ecusim_profile_init")
	.dwattr $C$DW$93, DW_AT_declaration
	.dwattr $C$DW$93, DW_AT_external

$C$DW$94	.dwtag  DW_TAG_subprogram, DW_AT_name("ecusim_profile_start")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("_ecusim_profile_start")
	.dwattr $C$DW$94, DW_AT_declaration
	.dwattr $C$DW$94, DW_AT_external

$C$DW$95	.dwtag  DW_TAG_subprogram, DW_AT_name("ecusim_profile_stop")
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("_ecusim_profile_stop")
	.dwattr $C$DW$95, DW_AT_declaration
	.dwattr $C$DW$95, DW_AT_external

$C$DW$96	.dwtag  DW_TAG_subprogram, DW_AT_name("generate_tx_tone_frame")
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("_generate_tx_tone_frame")
	.dwattr $C$DW$96, DW_AT_declaration
	.dwattr $C$DW$96, DW_AT_external
$C$DW$97	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$21)
$C$DW$98	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$65)
	.dwendtag $C$DW$96


$C$DW$99	.dwtag  DW_TAG_subprogram, DW_AT_name("convert_tx_tone_frame")
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_convert_tx_tone_frame")
	.dwattr $C$DW$99, DW_AT_declaration
	.dwattr $C$DW$99, DW_AT_external
$C$DW$100	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$21)
$C$DW$101	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$21)
$C$DW$102	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$65)
	.dwendtag $C$DW$99


$C$DW$103	.dwtag  DW_TAG_subprogram, DW_AT_name("generate_rx_tone_frame")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("_generate_rx_tone_frame")
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$103, DW_AT_declaration
	.dwattr $C$DW$103, DW_AT_external
$C$DW$104	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$21)
$C$DW$105	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$65)
	.dwendtag $C$DW$103


$C$DW$106	.dwtag  DW_TAG_subprogram, DW_AT_name("siu_new_ecu")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_siu_new_ecu")
	.dwattr $C$DW$106, DW_AT_declaration
	.dwattr $C$DW$106, DW_AT_external
$C$DW$107	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$106


$C$DW$108	.dwtag  DW_TAG_subprogram, DW_AT_name("siu_open_ecu")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_siu_open_ecu")
	.dwattr $C$DW$108, DW_AT_declaration
	.dwattr $C$DW$108, DW_AT_external
$C$DW$109	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$21)
$C$DW$110	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$108


$C$DW$111	.dwtag  DW_TAG_subprogram, DW_AT_name("siu_open_txhyb")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_siu_open_txhyb")
	.dwattr $C$DW$111, DW_AT_declaration
	.dwattr $C$DW$111, DW_AT_external
$C$DW$112	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$21)
$C$DW$113	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$21)
$C$DW$114	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$111


$C$DW$115	.dwtag  DW_TAG_subprogram, DW_AT_name("siu_open_rxsgn")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_siu_open_rxsgn")
	.dwattr $C$DW$115, DW_AT_declaration
	.dwattr $C$DW$115, DW_AT_external
$C$DW$116	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$115


$C$DW$117	.dwtag  DW_TAG_subprogram, DW_AT_name("siu_open_txsgn")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_siu_open_txsgn")
	.dwattr $C$DW$117, DW_AT_declaration
	.dwattr $C$DW$117, DW_AT_external
$C$DW$118	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$117


$C$DW$119	.dwtag  DW_TAG_subprogram, DW_AT_name("siu_set_sgn")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_siu_set_sgn")
	.dwattr $C$DW$119, DW_AT_declaration
	.dwattr $C$DW$119, DW_AT_external
$C$DW$120	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$3)
$C$DW$121	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$122)
	.dwendtag $C$DW$119


$C$DW$122	.dwtag  DW_TAG_subprogram, DW_AT_name("ecu_sim_init")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_ecu_sim_init")
	.dwattr $C$DW$122, DW_AT_declaration
	.dwattr $C$DW$122, DW_AT_external
$C$DW$123	.dwtag  DW_TAG_variable, DW_AT_name("muaTblAlaw")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_muaTblAlaw")
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$189)
	.dwattr $C$DW$123, DW_AT_declaration
	.dwattr $C$DW$123, DW_AT_external
$C$DW$124	.dwtag  DW_TAG_variable, DW_AT_name("muaTblUlaw")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_muaTblUlaw")
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$189)
	.dwattr $C$DW$124, DW_AT_declaration
	.dwattr $C$DW$124, DW_AT_external
$C$DW$125	.dwtag  DW_TAG_variable, DW_AT_name("ecuContext")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_ecuContext")
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$209)
	.dwattr $C$DW$125, DW_AT_declaration
	.dwattr $C$DW$125, DW_AT_external
$C$DW$126	.dwtag  DW_TAG_variable, DW_AT_name("siuContext")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_siuContext")
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$126, DW_AT_declaration
	.dwattr $C$DW$126, DW_AT_external
$C$DW$127	.dwtag  DW_TAG_variable, DW_AT_name("siuInst")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_siuInst")
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$127, DW_AT_declaration
	.dwattr $C$DW$127, DW_AT_external
$C$DW$128	.dwtag  DW_TAG_variable, DW_AT_name("rinBuffer")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_rinBuffer")
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$194)
	.dwattr $C$DW$128, DW_AT_declaration
	.dwattr $C$DW$128, DW_AT_external
$C$DW$129	.dwtag  DW_TAG_variable, DW_AT_name("sinBuffer")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_sinBuffer")
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$194)
	.dwattr $C$DW$129, DW_AT_declaration
	.dwattr $C$DW$129, DW_AT_external
$C$DW$130	.dwtag  DW_TAG_variable, DW_AT_name("routBuffer")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("_routBuffer")
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$194)
	.dwattr $C$DW$130, DW_AT_declaration
	.dwattr $C$DW$130, DW_AT_external
$C$DW$131	.dwtag  DW_TAG_variable, DW_AT_name("soutBuffer")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("_soutBuffer")
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$194)
	.dwattr $C$DW$131, DW_AT_declaration
	.dwattr $C$DW$131, DW_AT_external
$C$DW$132	.dwtag  DW_TAG_variable, DW_AT_name("ecuProfile")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("_ecuProfile")
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$132, DW_AT_declaration
	.dwattr $C$DW$132, DW_AT_external
$C$DW$133	.dwtag  DW_TAG_variable, DW_AT_name("siu_voice_heap")
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("_siu_voice_heap")
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$194)
	.dwattr $C$DW$133, DW_AT_declaration
	.dwattr $C$DW$133, DW_AT_external
$C$DW$134	.dwtag  DW_TAG_variable, DW_AT_name("siu_core_heap")
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("_siu_core_heap")
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$194)
	.dwattr $C$DW$134, DW_AT_declaration
	.dwattr $C$DW$134, DW_AT_external
	.global	_piu_segment_in
	.bss	_piu_segment_in,2,0,2
$C$DW$135	.dwtag  DW_TAG_variable, DW_AT_name("piu_segment_in")
	.dwattr $C$DW$135, DW_AT_TI_symbol_name("_piu_segment_in")
	.dwattr $C$DW$135, DW_AT_location[DW_OP_addr _piu_segment_in]
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$135, DW_AT_external
	.global	_piu_segment_out
	.bss	_piu_segment_out,2,0,2
$C$DW$136	.dwtag  DW_TAG_variable, DW_AT_name("piu_segment_out")
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("_piu_segment_out")
	.dwattr $C$DW$136, DW_AT_location[DW_OP_addr _piu_segment_out]
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$136, DW_AT_external
	.global	_segment_in
	.bss	_segment_in,2,0,2
$C$DW$137	.dwtag  DW_TAG_variable, DW_AT_name("segment_in")
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("_segment_in")
	.dwattr $C$DW$137, DW_AT_location[DW_OP_addr _segment_in]
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$137, DW_AT_external
	.global	_rx_segment_out
	.bss	_rx_segment_out,2,0,2
$C$DW$138	.dwtag  DW_TAG_variable, DW_AT_name("rx_segment_out")
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("_rx_segment_out")
	.dwattr $C$DW$138, DW_AT_location[DW_OP_addr _rx_segment_out]
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$138, DW_AT_external
	.global	_rx_frame_in
	.bss	_rx_frame_in,2,0,2
$C$DW$139	.dwtag  DW_TAG_variable, DW_AT_name("rx_frame_in")
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_rx_frame_in")
	.dwattr $C$DW$139, DW_AT_location[DW_OP_addr _rx_frame_in]
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$139, DW_AT_external
	.global	_siu_getflt
	.bss	_siu_getflt,64,0,0
$C$DW$140	.dwtag  DW_TAG_variable, DW_AT_name("siu_getflt")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_siu_getflt")
	.dwattr $C$DW$140, DW_AT_location[DW_OP_addr _siu_getflt]
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$170)
	.dwattr $C$DW$140, DW_AT_external
$C$DW$141	.dwtag  DW_TAG_variable, DW_AT_name("sgnTxInst")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("_sgnTxInst")
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$141, DW_AT_declaration
	.dwattr $C$DW$141, DW_AT_external
$C$DW$142	.dwtag  DW_TAG_variable, DW_AT_name("sgnRxInst")
	.dwattr $C$DW$142, DW_AT_TI_symbol_name("_sgnRxInst")
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$142, DW_AT_declaration
	.dwattr $C$DW$142, DW_AT_external
$C$DW$143	.dwtag  DW_TAG_variable, DW_AT_name("hybTxInst")
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("_hybTxInst")
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$143, DW_AT_declaration
	.dwattr $C$DW$143, DW_AT_external
$C$DW$144	.dwtag  DW_TAG_variable, DW_AT_name("siuOutErrStream")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_siuOutErrStream")
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$186)
	.dwattr $C$DW$144, DW_AT_declaration
	.dwattr $C$DW$144, DW_AT_external
$C$DW$145	.dwtag  DW_TAG_variable, DW_AT_name("ecuSim")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_ecuSim")
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$212)
	.dwattr $C$DW$145, DW_AT_declaration
	.dwattr $C$DW$145, DW_AT_external
;	C:\MAS_Tools\CCSV5_2_1\ccsv5\tools\compiler\c5500_4.4.1\bin\acp55.exe -@C:\\DOCUME~1\\a0868396\\LOCALS~1\\Temp\\0672012 
	.sect	".text"

$C$DW$146	.dwtag  DW_TAG_subprogram, DW_AT_name("siuCAlloc")
	.dwattr $C$DW$146, DW_AT_low_pc(_siuCAlloc)
	.dwattr $C$DW$146, DW_AT_high_pc(0x00)
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("_siuCAlloc")
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$146, DW_AT_TI_begin_file("../../../../../../../ti/mas/ecu/test/src/siuloc.h")
	.dwattr $C$DW$146, DW_AT_TI_begin_line(0xdc)
	.dwattr $C$DW$146, DW_AT_TI_begin_column(0x15)
	.dwattr $C$DW$146, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "../../../../../../../ti/mas/ecu/test/src/siuloc.h",line 221,column 1,is_stmt,address _siuCAlloc

	.dwfde $C$DW$CIE, _siuCAlloc
$C$DW$147	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size")
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$147, DW_AT_location[DW_OP_reg12]
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
$C$DW$148	.dwtag  DW_TAG_variable, DW_AT_name("size")
	.dwattr $C$DW$148, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$148, DW_AT_location[DW_OP_bregx 0x24 0]
        XAR0 = dbl(*(#(_siuContext+8)))
        *SP(#0) = T0 ; |221| 
	.dwpsn	file "../../../../../../../ti/mas/ecu/test/src/siuloc.h",line 222,column 3,is_stmt
;----------------------------------------------------------------------
; 222 | return (mhmAlloc (siuContext.cheap, size));                            
;----------------------------------------------------------------------
$C$DW$149	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$149, DW_AT_low_pc(0x00)
	.dwattr $C$DW$149, DW_AT_name("_mhmAlloc")
	.dwattr $C$DW$149, DW_AT_TI_call
        call #_mhmAlloc ; |222| 
                                        ; call occurs [#_mhmAlloc] ; |222| 
        SP = SP + #1
	.dwcfi	cfa_offset, 1
$C$DW$150	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$150, DW_AT_low_pc(0x00)
	.dwattr $C$DW$150, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$146, DW_AT_TI_end_file("../../../../../../../ti/mas/ecu/test/src/siuloc.h")
	.dwattr $C$DW$146, DW_AT_TI_end_line(0xdf)
	.dwattr $C$DW$146, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$146

	.sect	".text"
	.global	_ecu_halt

$C$DW$151	.dwtag  DW_TAG_subprogram, DW_AT_name("ecu_halt")
	.dwattr $C$DW$151, DW_AT_low_pc(_ecu_halt)
	.dwattr $C$DW$151, DW_AT_high_pc(0x00)
	.dwattr $C$DW$151, DW_AT_TI_symbol_name("_ecu_halt")
	.dwattr $C$DW$151, DW_AT_external
	.dwattr $C$DW$151, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c")
	.dwattr $C$DW$151, DW_AT_TI_begin_line(0x86)
	.dwattr $C$DW$151, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$151, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 135,column 1,is_stmt,address _ecu_halt

	.dwfde $C$DW$CIE, _ecu_halt
$C$DW$152	.dwtag  DW_TAG_formal_parameter, DW_AT_name("exec")
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("_exec")
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$163)
	.dwattr $C$DW$152, DW_AT_location[DW_OP_reg17]
;----------------------------------------------------------------------
; 134 | void ecu_halt (volatile tbool *exec)                                   
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: ecu_halt                                                     *
;*                                                                             *
;*   Function Uses Regs : AR0,XAR0,AR1,AR3,XAR3,SP,M40,SATA,SATD,RDM,FRCT,SMUL *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_ecu_halt:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-3
	.dwcfi	cfa_offset, 4
$C$DW$153	.dwtag  DW_TAG_variable, DW_AT_name("exec")
	.dwattr $C$DW$153, DW_AT_TI_symbol_name("_exec")
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$163)
	.dwattr $C$DW$153, DW_AT_location[DW_OP_bregx 0x24 0]
        dbl(*SP(#0)) = XAR0
        XAR3 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 137,column 10,is_stmt
;----------------------------------------------------------------------
; 137 | while (!(*exec)) {                                                     
; 138 |   asm ("  NOP");                                                       
; 139 |   asm ("Set_BP_Here:  ");                                              
; 140 |   asm ("  NOP");                                                       
; 141 |   asm ("  NOP");                                                       
;----------------------------------------------------------------------
        AR1 = *AR3 ; |137| 
        if (AR1 != #0) goto $C$L2 ; |137| 
                                        ; branchcc occurs ; |137| 
$C$L1:    
$C$DW$L$_ecu_halt$2$B:
  NOP
Set_BP_Here:  
  NOP
  NOP
        AR1 = *AR3 ; |137| 
        if (AR1 == #0) goto $C$L1 ; |137| 
                                        ; branchcc occurs ; |137| 
$C$DW$L$_ecu_halt$2$E:
$C$L2:    
        SP = SP + #3
	.dwcfi	cfa_offset, 1
$C$DW$154	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$154, DW_AT_low_pc(0x00)
	.dwattr $C$DW$154, DW_AT_TI_return
        return
                                        ; return occurs

$C$DW$155	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$155, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\ecu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\ecusim.asm:$C$L1:1:1373047931")
	.dwattr $C$DW$155, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c")
	.dwattr $C$DW$155, DW_AT_TI_begin_line(0x89)
	.dwattr $C$DW$155, DW_AT_TI_end_line(0x8e)
$C$DW$156	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$156, DW_AT_low_pc($C$DW$L$_ecu_halt$2$B)
	.dwattr $C$DW$156, DW_AT_high_pc($C$DW$L$_ecu_halt$2$E)
	.dwendtag $C$DW$155

	.dwattr $C$DW$151, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c")
	.dwattr $C$DW$151, DW_AT_TI_end_line(0x8f)
	.dwattr $C$DW$151, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$151

	.sect	".text"
	.global	_main

$C$DW$157	.dwtag  DW_TAG_subprogram, DW_AT_name("main")
	.dwattr $C$DW$157, DW_AT_low_pc(_main)
	.dwattr $C$DW$157, DW_AT_high_pc(0x00)
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("_main")
	.dwattr $C$DW$157, DW_AT_external
	.dwattr $C$DW$157, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c")
	.dwattr $C$DW$157, DW_AT_TI_begin_line(0x99)
	.dwattr $C$DW$157, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$157, DW_AT_TI_max_frame_size(0x84)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 154,column 1,is_stmt,address _main

	.dwfde $C$DW$CIE, _main
;----------------------------------------------------------------------
; 153 | void main (void)                                                       
; 155 | int i;                                                                 
; 156 | piuControl_t piuCtrl;                                                  
; 157 | siuConfig_t  siuCfg;                                                   
; 158 | #if ECU_SIM_USE_VPE                                                    
; 159 | slmConfig_t  slmCfg;                                                   
; 160 | #endif                                                                 
; 161 | siuInst_t    *inst;                                                    
; 162 | void *cheap;                                                           
; 163 | void *vheap;                                                           
; 164 | tint chnum;                                                            
; 165 | tint frame_size;                                                       
; 166 | tint ulaw;                                                             
; 167 | tint hyb_filter_length;                                                
; 168 | tint seg_count;                                                        
; 169 | tbool do_freerun = FALSE;                                              
; 170 | tint  dataIn = 1;                                                      
; 171 | linSample ecu_out_buf[ecuSIM_MAXSENDOUT_LENGTH+1],*ecu_out_buf_start;  
; 172 | #if ECU_SIM_USE_VPE                                                    
; 173 | tint slmSize, retVal;                                                  
; 174 | #endif                                                                 
; 175 | tuint sample_count = 0;                                                
; 176 | tuint sec_count = 0;                                                   
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: main                                                         *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,   *
;*                        AR4,FP,XFP,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL  *
;*   Save On Entry Regs : FP                                                   *
;*   Stack Frame        : Full (Frame Pointer in AR6, w/ debug)                *
;*   Total Frame Size   : 132 words                                            *
;*                        (1 return address/alignment)                         *
;*                        (3 function parameters)                              *
;*                        (127 local values)                                   *
;*                        (1 register save area)                               *
;*   Min System Stack   : 2 words                                              *
;*******************************************************************************
_main:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        pshboth(XFP)
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 32, -2

        @SP_L = @SP_L + #-130
||      mmap()

        XFP = mar(*SP)
	.dwcfi	cfa_offset, 132
$C$DW$158	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$158, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$159	.dwtag  DW_TAG_variable, DW_AT_name("piuCtrl")
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("_piuCtrl")
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$159, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$160	.dwtag  DW_TAG_variable, DW_AT_name("siuCfg")
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("_siuCfg")
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$160, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$161	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$128)
	.dwattr $C$DW$161, DW_AT_location[DW_OP_bregx 0x24 24]
$C$DW$162	.dwtag  DW_TAG_variable, DW_AT_name("cheap")
	.dwattr $C$DW$162, DW_AT_TI_symbol_name("_cheap")
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$162, DW_AT_location[DW_OP_bregx 0x24 26]
$C$DW$163	.dwtag  DW_TAG_variable, DW_AT_name("vheap")
	.dwattr $C$DW$163, DW_AT_TI_symbol_name("_vheap")
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$163, DW_AT_location[DW_OP_bregx 0x24 28]
$C$DW$164	.dwtag  DW_TAG_variable, DW_AT_name("chnum")
	.dwattr $C$DW$164, DW_AT_TI_symbol_name("_chnum")
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$164, DW_AT_location[DW_OP_bregx 0x24 30]
$C$DW$165	.dwtag  DW_TAG_variable, DW_AT_name("frame_size")
	.dwattr $C$DW$165, DW_AT_TI_symbol_name("_frame_size")
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$165, DW_AT_location[DW_OP_bregx 0x24 31]
$C$DW$166	.dwtag  DW_TAG_variable, DW_AT_name("ulaw")
	.dwattr $C$DW$166, DW_AT_TI_symbol_name("_ulaw")
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$166, DW_AT_location[DW_OP_bregx 0x24 32]
$C$DW$167	.dwtag  DW_TAG_variable, DW_AT_name("hyb_filter_length")
	.dwattr $C$DW$167, DW_AT_TI_symbol_name("_hyb_filter_length")
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$167, DW_AT_location[DW_OP_bregx 0x24 33]
$C$DW$168	.dwtag  DW_TAG_variable, DW_AT_name("seg_count")
	.dwattr $C$DW$168, DW_AT_TI_symbol_name("_seg_count")
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$168, DW_AT_location[DW_OP_bregx 0x24 34]
$C$DW$169	.dwtag  DW_TAG_variable, DW_AT_name("do_freerun")
	.dwattr $C$DW$169, DW_AT_TI_symbol_name("_do_freerun")
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$169, DW_AT_location[DW_OP_bregx 0x24 35]
$C$DW$170	.dwtag  DW_TAG_variable, DW_AT_name("dataIn")
	.dwattr $C$DW$170, DW_AT_TI_symbol_name("_dataIn")
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$170, DW_AT_location[DW_OP_bregx 0x24 36]
$C$DW$171	.dwtag  DW_TAG_variable, DW_AT_name("ecu_out_buf")
	.dwattr $C$DW$171, DW_AT_TI_symbol_name("_ecu_out_buf")
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$187)
	.dwattr $C$DW$171, DW_AT_location[DW_OP_bregx 0x24 37]
$C$DW$172	.dwtag  DW_TAG_variable, DW_AT_name("ecu_out_buf_start")
	.dwattr $C$DW$172, DW_AT_TI_symbol_name("_ecu_out_buf_start")
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$172, DW_AT_location[DW_OP_bregx 0x24 126]
$C$DW$173	.dwtag  DW_TAG_variable, DW_AT_name("sample_count")
	.dwattr $C$DW$173, DW_AT_TI_symbol_name("_sample_count")
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$173, DW_AT_location[DW_OP_bregx 0x24 128]
$C$DW$174	.dwtag  DW_TAG_variable, DW_AT_name("sec_count")
	.dwattr $C$DW$174, DW_AT_TI_symbol_name("_sec_count")
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$174, DW_AT_location[DW_OP_bregx 0x24 129]
        XAR3 = mar(*SP(#37))
        AC0 = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 179,column 3,is_stmt
;----------------------------------------------------------------------
; 179 | ecu_out_buf_start = typChkAlign(ecu_out_buf,1)? ecu_out_buf : (ecu_out_
;     | buf+1);                                                                
;----------------------------------------------------------------------
        AC0 = AC0 & #0x0001 ; |179| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 169,column 9,is_stmt
        *SP(#35) = #0 ; |169| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 170,column 9,is_stmt
        *SP(#36) = #1 ; |170| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 175,column 9,is_stmt
        *FP(#128) = #0 ; |175| 
        XAR3 = mar(*SP(#37))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 176,column 9,is_stmt
        *FP(#129) = #0 ; |176| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 182,column 3,is_stmt
;----------------------------------------------------------------------
; 182 | siuCfg.ID             = siuMakeID (SIU_MID_SIU, 0); /* use chnum 0 this
;     |  time */                                                               
; 183 | # ifndef _HWDSKT                                                       
;----------------------------------------------------------------------
        *SP(#12) = #256 ; |182| 
        if (AC0 != #0) execute (AD_Unit) ||
           XAR3 = mar(*SP(#38))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 184,column 5,is_stmt
;----------------------------------------------------------------------
; 184 | siuCfg.exception    = siuException;                                    
;----------------------------------------------------------------------
        AC0 = #(_siuException >> 16) << #16 ; |184| 
        AC0 = AC0 | #(_siuException & 0xffff) ; |184| 
        dbl(*SP(#126)) = XAR3
        dbl(*SP(#14)) = AC0 ; |184| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 185,column 5,is_stmt
;----------------------------------------------------------------------
; 185 | siuCfg.debug        = siuDebug;                                        
; 186 | # else                                                                 
; 187 | siuCfg.exception    = exception_fcn;                                   
; 188 | siuCfg.debug        = debug_fcn;                                       
; 189 | # endif                                                                
;----------------------------------------------------------------------
        AC0 = #(_siuDebug >> 16) << #16 ; |185| 
        AC0 = AC0 | #(_siuDebug & 0xffff) ; |185| 
        dbl(*SP(#16)) = AC0 ; |185| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 192,column 3,is_stmt
;----------------------------------------------------------------------
; 192 | ecu_sim_init();                                                        
; 194 | //ecu_halt (&ecuSim->exec);                                            
; 198 | #if 0  /* Remove for now until c55x target hardware utilities are defin
;     | ed */                                                                  
; 199 | if (ecuSim->clock_mul != 0)                                            
; 200 |   thwClockSet (ecuSim->clock_mul);                                     
; 201 | #endif                                                                 
; 206 | ulaw = ecuSim->pcm_format;         /* specify type of physical I/O */  
;----------------------------------------------------------------------
$C$DW$175	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$175, DW_AT_low_pc(0x00)
	.dwattr $C$DW$175, DW_AT_name("_ecu_sim_init")
	.dwattr $C$DW$175, DW_AT_TI_call
        call #_ecu_sim_init ; |192| 
                                        ; call occurs [#_ecu_sim_init] ; |192| 
        XAR3 = dbl(*(#_ecuSim))

        AR1 = *AR3(short(#5)) ; |206| 
||      AR2 = #-1

	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 207,column 3,is_stmt
;----------------------------------------------------------------------
; 207 | siu_exc_assert (ulaw >= -1 && ulaw <= 2, &siuCfg);                     
;----------------------------------------------------------------------
        TC1 = (AR1 < AR2) ; |207| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 206,column 3,is_stmt
        *SP(#32) = AR1 ; |206| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 207,column 3,is_stmt
        if (TC1) goto $C$L3 ; |207| 
                                        ; branchcc occurs ; |207| 
        AR2 = #2
        TC1 = (AR1 > AR2) ; |207| 
        if (!TC1) goto $C$L4 ; |207| 
                                        ; branchcc occurs ; |207| 
$C$L3:    
        T0 = *SP(#12) ; |207| 
        AC0 = dbl(*SP(#14)) ; |207| 
        XAR0 = #$C$FSL1 ; |207| 
$C$DW$176	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$176, DW_AT_low_pc(0x00)
	.dwattr $C$DW$176, DW_AT_TI_call
	.dwattr $C$DW$176, DW_AT_TI_indirect
        call AC0  ; |207| 
                                        ; call occurs [AC0] ; |207| 
$C$L4:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 215,column 3,is_stmt
;----------------------------------------------------------------------
; 215 | ecusim_profile_init ();                                                
;----------------------------------------------------------------------
$C$DW$177	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$177, DW_AT_low_pc(0x00)
	.dwattr $C$DW$177, DW_AT_name("_ecusim_profile_init")
	.dwattr $C$DW$177, DW_AT_TI_call
        call #_ecusim_profile_init ; |215| 
                                        ; call occurs [#_ecusim_profile_init] ; |215| 
        T1 = #0
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 218,column 3,is_stmt
;----------------------------------------------------------------------
; 218 | cheap = mhmCreate (siu_core_heap, SIU_CORE_HEAP_SIZE,0);               
;----------------------------------------------------------------------
        T0 = #3072 ; |218| 
        XAR0 = #_siu_core_heap ; |218| 
$C$DW$178	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$178, DW_AT_low_pc(0x00)
	.dwattr $C$DW$178, DW_AT_name("_mhmCreate")
	.dwattr $C$DW$178, DW_AT_TI_call
        call #_mhmCreate ; |218| 
                                        ; call occurs [#_mhmCreate] ; |218| 
        dbl(*SP(#26)) = XAR0
        XAR3 = dbl(*SP(#26))
        AC0 = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 219,column 3,is_stmt
;----------------------------------------------------------------------
; 219 | siu_exc_assert (cheap != NULL, &siuCfg);                               
;----------------------------------------------------------------------
        if (AC0 != #0) goto $C$L5 ; |219| 
                                        ; branchcc occurs ; |219| 
        T0 = *SP(#12) ; |219| 
        AC0 = dbl(*SP(#14)) ; |219| 
        XAR0 = #$C$FSL2 ; |219| 
$C$DW$179	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$179, DW_AT_low_pc(0x00)
	.dwattr $C$DW$179, DW_AT_TI_call
	.dwattr $C$DW$179, DW_AT_TI_indirect
        call AC0  ; |219| 
                                        ; call occurs [AC0] ; |219| 
$C$L5:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 220,column 3,is_stmt
;----------------------------------------------------------------------
; 220 | vheap = mhmCreate (siu_voice_heap, SIU_VOICE_HEAP_SIZE,0);             
;----------------------------------------------------------------------
        XAR0 = #_siu_voice_heap ; |220| 
        T1 = #0
        T0 = #2048 ; |220| 
$C$DW$180	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$180, DW_AT_low_pc(0x00)
	.dwattr $C$DW$180, DW_AT_name("_mhmCreate")
	.dwattr $C$DW$180, DW_AT_TI_call
        call #_mhmCreate ; |220| 
                                        ; call occurs [#_mhmCreate] ; |220| 
        dbl(*SP(#28)) = XAR0
        XAR3 = dbl(*SP(#28))
        AC0 = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 221,column 3,is_stmt
;----------------------------------------------------------------------
; 221 | siu_exc_assert (vheap != NULL, &siuCfg);                               
;----------------------------------------------------------------------
        if (AC0 != #0) goto $C$L6 ; |221| 
                                        ; branchcc occurs ; |221| 
        T0 = *SP(#12) ; |221| 
        AC0 = dbl(*SP(#14)) ; |221| 
        XAR0 = #$C$FSL3 ; |221| 
$C$DW$181	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$181, DW_AT_low_pc(0x00)
	.dwattr $C$DW$181, DW_AT_TI_call
	.dwattr $C$DW$181, DW_AT_TI_indirect
        call AC0  ; |221| 
                                        ; call occurs [AC0] ; |221| 
$C$L6:    
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 224,column 3,is_stmt
;----------------------------------------------------------------------
; 224 | siuCfg.companding_law = ulaw;                 /* physical I/O type */  
;----------------------------------------------------------------------
        AR1 = *SP(#32) ; |224| 
        *SP(#18) = AR1 ; |224| 
        XAR0 = mar(*SP(#12))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 225,column 3,is_stmt
;----------------------------------------------------------------------
; 225 | siuCfg.pcm_bits       = ecuSim->pcm_bits;    /* # of bits in physical I
;     | /O */                                                                  
; 226 | siuCfg.core_heap      = cheap;                                         
; 227 | siuCfg.voice_heap     = vheap;                                         
;----------------------------------------------------------------------
        AR1 = *AR3(short(#6)) ; |225| 
        *SP(#19) = AR1 ; |225| 
        XAR3 = dbl(*SP(#26))
        dbl(*SP(#20)) = XAR3
        XAR3 = dbl(*SP(#28))
        dbl(*SP(#22)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 228,column 3,is_stmt
;----------------------------------------------------------------------
; 228 | siuInit (&siuCfg);                /* inits siuContext & siuInst[] */   
;----------------------------------------------------------------------
$C$DW$182	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$182, DW_AT_low_pc(0x00)
	.dwattr $C$DW$182, DW_AT_name("_siuInit")
	.dwattr $C$DW$182, DW_AT_TI_call
        call #_siuInit ; |228| 
                                        ; call occurs [#_siuInit] ; |228| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 231,column 3,is_stmt
;----------------------------------------------------------------------
; 231 | chnum = 1;                                                             
;----------------------------------------------------------------------
        *SP(#30) = #1 ; |231| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 232,column 3,is_stmt
;----------------------------------------------------------------------
; 232 | inst = &siuInst[chnum-1];       /* SIU instance for channel #1 */      
;----------------------------------------------------------------------
        AC0 = *SP(#30) * #28 ; |232| 
        AR1 = AC0 - #28 ; |232| 
        XAR3 = #_siuInst ; |232| 

        dbl(*SP(#24)) = XAR3
||      mar(AR3 + AR1) ; |232| 

        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 234,column 3,is_stmt
;----------------------------------------------------------------------
; 234 | frame_size = ecuSim->frame_size;     /* 5ms default */                 
;----------------------------------------------------------------------
        AR1 = *AR3(short(#7)) ; |234| 
        *SP(#31) = AR1 ; |234| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 235,column 3,is_stmt
;----------------------------------------------------------------------
; 235 | siu_exc_assert ((frame_size >= ecuSim->rxSGN.delay     &&              
; 236 |                  frame_size >= ecuSim->txSGN.delay)    ||              
; 237 |                 (ecuSim->rxSGN.wftype != sgn_WFT_FILE  &&              
; 238 |                  ecuSim->txSGN.wftype != sgn_WFT_FILE), &siuCfg);      
;----------------------------------------------------------------------
        AR2 = *SP(#31) ; |235| 
        AR1 = *AR3(#54) ; |235| 
        TC1 = (AR2 < AR1) ; |235| 
        if (TC1) goto $C$L7 ; |235| 
                                        ; branchcc occurs ; |235| 
        AR1 = *AR3(#34) ; |235| 
        TC1 = (AR2 < AR1) ; |235| 
        if (!TC1) goto $C$L9 ; |235| 
                                        ; branchcc occurs ; |235| 
$C$L7:    
        TC1 = (*AR3(#56) == #6) ; |235| 
        if (TC1) goto $C$L8 ; |235| 
                                        ; branchcc occurs ; |235| 
        TC1 = (*AR3(#36) == #6) ; |235| 
        if (!TC1) goto $C$L9 ; |235| 
                                        ; branchcc occurs ; |235| 
$C$L8:    
        T0 = *SP(#12) ; |235| 
        AC0 = dbl(*SP(#14)) ; |235| 
        XAR0 = #$C$FSL4 ; |235| 
$C$DW$183	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$183, DW_AT_low_pc(0x00)
	.dwattr $C$DW$183, DW_AT_TI_call
	.dwattr $C$DW$183, DW_AT_TI_indirect
        call AC0  ; |235| 
                                        ; call occurs [AC0] ; |235| 
$C$L9:    
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 239,column 3,is_stmt
;----------------------------------------------------------------------
; 239 | do_freerun = FALSE;                   /* No free run until toggled */  
;----------------------------------------------------------------------
        *SP(#35) = #0 ; |239| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 240,column 3,is_stmt
;----------------------------------------------------------------------
; 240 | hyb_filter_length = ecuSim->hyb_filter_length;                         
; 243 | ecuContext.max_filter_seg_length = ecuSim->ecu_fltseg_length;          
; 244 | ecuContext.max_filter_seg_count  = ecuSim->ecu_num_fltseg;             
;----------------------------------------------------------------------
        AR1 = *AR3(#12) ; |240| 
        *SP(#33) = AR1 ; |240| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 252,column 3,is_stmt
;----------------------------------------------------------------------
; 252 | siu_new_ecu (chnum);                                                   
;----------------------------------------------------------------------
        T0 = *SP(#30) ; |252| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 243,column 3,is_stmt
        AR1 = *AR3(#9) ; |243| 
        *(#(_ecuContext+14)) = AR1 ; |243| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 244,column 3,is_stmt
        AR1 = *AR3(#10) ; |244| 
        *(#(_ecuContext+15)) = AR1 ; |244| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 252,column 3,is_stmt
$C$DW$184	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$184, DW_AT_low_pc(0x00)
	.dwattr $C$DW$184, DW_AT_name("_siu_new_ecu")
	.dwattr $C$DW$184, DW_AT_TI_call
        call #_siu_new_ecu ; |252| 
                                        ; call occurs [#_siu_new_ecu] ; |252| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 255,column 3,is_stmt
;----------------------------------------------------------------------
; 255 | siu_new_piu (chnum, (tint)SIU_MAX_FRAME_LENGTH);                       
; 257 | #if ECU_SIM_USE_VPE                                                    
; 259 | retVal = slmGetSizes(&slmSize);                                        
; 260 | if (retVal != slm_NOERR){                                              
; 261 |   ecuSim->error_id = ecu_SIM_ERR_SLM;                                  
; 262 |   ecuSim->exec = FALSE;                                                
; 263 |   ecu_halt (&ecuSim->exec);                                            
; 265 | inst->slmInst = malloc(slmSize);                                       
; 267 | slmCfg.valid_bf = 0;                                                   
; 269 | slmCfg.valid_bf |= 0x01;                                               
; 270 | if (ecuSim->Fs == ecu_SIM_DEF_FS)                                      
; 271 |   slmCfg.srate_factor = slm_SRATE_FACTOR_8K;                           
; 272 | else                                                                   
; 273 |   slmCfg.srate_factor = slm_SRATE_FACTOR_16K;                          
; 274 | slmInit (inst->slmInst, &slmCfg);                                      
; 275 | #endif                                                                 
;----------------------------------------------------------------------
        T1 = #80  ; |255| 
        T0 = *SP(#30) ; |255| 
$C$DW$185	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$185, DW_AT_low_pc(0x00)
	.dwattr $C$DW$185, DW_AT_name("_siu_new_piu")
	.dwattr $C$DW$185, DW_AT_TI_call
        call #_siu_new_piu ; |255| 
                                        ; call occurs [#_siu_new_piu] ; |255| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 278,column 3,is_stmt
;----------------------------------------------------------------------
; 278 | segment_in = (linSample*)siuCAlloc (FILEIO_FRM_FACTOR*frame_size*sizeof
;     | (linSample));                                                          
;----------------------------------------------------------------------
        AC0 = *SP(#31) * #3 ; |278| 
        T0 = AC0  ; |278| 
$C$DW$186	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$186, DW_AT_low_pc(0x00)
	.dwattr $C$DW$186, DW_AT_name("_siuCAlloc")
	.dwattr $C$DW$186, DW_AT_TI_call
        call #_siuCAlloc ; |278| 
                                        ; call occurs [#_siuCAlloc] ; |278| 
        XAR3 = dbl(*SP(#24))
        dbl(*(#_segment_in)) = XAR0
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 279,column 3,is_stmt
;----------------------------------------------------------------------
; 279 | inst->cheap_used += frame_size*sizeof(linSample);                      
;----------------------------------------------------------------------
        AR1 = *SP(#31) ; |279| 
        AR1 = AR1 + *AR3(#20) ; |279| 
        *AR3(#20) = AR1 ; |279| 
        XAR3 = dbl(*(#_segment_in))
        AC0 = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 280,column 3,is_stmt
;----------------------------------------------------------------------
; 280 | siu_exc_assert (segment_in != NULL, inst);                             
;----------------------------------------------------------------------
        if (AC0 != #0) goto $C$L10 ; |280| 
                                        ; branchcc occurs ; |280| 
        XAR3 = dbl(*SP(#24))
        XAR0 = #$C$FSL5 ; |280| 
        AC0 = dbl(*AR3(short(#2))) ; |280| 
        T0 = *AR3 ; |280| 
$C$DW$187	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$187, DW_AT_low_pc(0x00)
	.dwattr $C$DW$187, DW_AT_TI_call
	.dwattr $C$DW$187, DW_AT_TI_indirect
        call AC0  ; |280| 
                                        ; call occurs [AC0] ; |280| 
$C$L10:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 281,column 3,is_stmt
;----------------------------------------------------------------------
; 281 | utlLsMemSet (&segment_in[0], (linSample)0,FILEIO_FRM_FACTOR*frame_size)
;     | ;                                                                      
;----------------------------------------------------------------------
        AC0 = *SP(#31) * #3 ; |281| 
        XAR0 = dbl(*(#_segment_in))

        T1 = AC0  ; |281| 
||      T0 = #0

$C$DW$188	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$188, DW_AT_low_pc(0x00)
	.dwattr $C$DW$188, DW_AT_name("_utlLsMemSet")
	.dwattr $C$DW$188, DW_AT_TI_call
        call #_utlLsMemSet ; |281| 
                                        ; call occurs [#_utlLsMemSet] ; |281| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 283,column 3,is_stmt
;----------------------------------------------------------------------
; 283 | rx_segment_out = (linSample*)siuCAlloc (frame_size*sizeof(linSample)); 
;----------------------------------------------------------------------
        T0 = *SP(#31) ; |283| 
$C$DW$189	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$189, DW_AT_low_pc(0x00)
	.dwattr $C$DW$189, DW_AT_name("_siuCAlloc")
	.dwattr $C$DW$189, DW_AT_TI_call
        call #_siuCAlloc ; |283| 
                                        ; call occurs [#_siuCAlloc] ; |283| 
        XAR3 = dbl(*SP(#24))
        dbl(*(#_rx_segment_out)) = XAR0
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 284,column 3,is_stmt
;----------------------------------------------------------------------
; 284 | inst->cheap_used += frame_size*sizeof(linSample);                      
;----------------------------------------------------------------------
        AR1 = *SP(#31) ; |284| 
        AR1 = AR1 + *AR3(#20) ; |284| 
        *AR3(#20) = AR1 ; |284| 
        XAR3 = dbl(*(#_rx_segment_out))
        AC0 = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 285,column 3,is_stmt
;----------------------------------------------------------------------
; 285 | siu_exc_assert (rx_segment_out != NULL, inst);                         
;----------------------------------------------------------------------
        if (AC0 != #0) goto $C$L11 ; |285| 
                                        ; branchcc occurs ; |285| 
        XAR3 = dbl(*SP(#24))
        XAR0 = #$C$FSL6 ; |285| 
        AC0 = dbl(*AR3(short(#2))) ; |285| 
        T0 = *AR3 ; |285| 
$C$DW$190	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$190, DW_AT_low_pc(0x00)
	.dwattr $C$DW$190, DW_AT_TI_call
	.dwattr $C$DW$190, DW_AT_TI_indirect
        call AC0  ; |285| 
                                        ; call occurs [AC0] ; |285| 
$C$L11:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 287,column 8,is_stmt
;----------------------------------------------------------------------
; 287 | for (i = 0; i < frame_size; i++)                                       
;----------------------------------------------------------------------
        *SP(#3) = #0 ; |287| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 287,column 15,is_stmt
        AR1 = *SP(#31) ; |287| 
        AR2 = *SP(#3) ; |287| 
        TC1 = (AR2 >= AR1) ; |287| 
        if (TC1) goto $C$L13 ; |287| 
                                        ; branchcc occurs ; |287| 
$C$L12:    
$C$DW$L$_main$18$B:
        XAR3 = dbl(*(#_rx_segment_out))
        T0 = AR2
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 288,column 5,is_stmt
;----------------------------------------------------------------------
; 288 | rx_segment_out[i] = (linSample)0;                                      
;----------------------------------------------------------------------
        *AR3(T0) = #0 ; |288| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 287,column 31,is_stmt
        *SP(#3) = *SP(#3) + #1 ; |287| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 287,column 15,is_stmt
        AR1 = *SP(#31) ; |287| 
        AR2 = *SP(#3) ; |287| 
        TC1 = (AR2 < AR1) ; |287| 
        if (TC1) goto $C$L12 ; |287| 
                                        ; branchcc occurs ; |287| 
$C$DW$L$_main$18$E:
$C$L13:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 291,column 3,is_stmt
;----------------------------------------------------------------------
; 291 | rx_frame_in = (linSample*)siuCAlloc(FILEIO_FRM_FACTOR*frame_size*sizeof
;     | (linSample));                                                          
;----------------------------------------------------------------------
        AC0 = *SP(#31) * #3 ; |291| 
        T0 = AC0  ; |291| 
$C$DW$191	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$191, DW_AT_low_pc(0x00)
	.dwattr $C$DW$191, DW_AT_name("_siuCAlloc")
	.dwattr $C$DW$191, DW_AT_TI_call
        call #_siuCAlloc ; |291| 
                                        ; call occurs [#_siuCAlloc] ; |291| 
        XAR3 = dbl(*SP(#24))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 292,column 3,is_stmt
;----------------------------------------------------------------------
; 292 | inst->cheap_used += frame_size*sizeof(linSample);                      
;----------------------------------------------------------------------
        AR1 = *SP(#31) ; |292| 
        dbl(*(#_rx_frame_in)) = XAR0
        AR1 = AR1 + *AR3(#20) ; |292| 
        *AR3(#20) = AR1 ; |292| 
        XAR3 = dbl(*(#_rx_frame_in))
        AC0 = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 293,column 3,is_stmt
;----------------------------------------------------------------------
; 293 | siu_exc_assert (rx_frame_in != NULL, inst);                            
;----------------------------------------------------------------------
        if (AC0 != #0) goto $C$L14 ; |293| 
                                        ; branchcc occurs ; |293| 
        XAR3 = dbl(*SP(#24))
        XAR0 = #$C$FSL7 ; |293| 
        AC0 = dbl(*AR3(short(#2))) ; |293| 
        T0 = *AR3 ; |293| 
$C$DW$192	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$192, DW_AT_low_pc(0x00)
	.dwattr $C$DW$192, DW_AT_TI_call
	.dwattr $C$DW$192, DW_AT_TI_indirect
        call AC0  ; |293| 
                                        ; call occurs [AC0] ; |293| 
$C$L14:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 294,column 3,is_stmt
;----------------------------------------------------------------------
; 294 | utlLsMemSet (&rx_frame_in[0], (linSample)0,FILEIO_FRM_FACTOR*frame_size
;     | );                                                                     
;----------------------------------------------------------------------
        AC0 = *SP(#31) * #3 ; |294| 
        XAR0 = dbl(*(#_rx_frame_in))

        T1 = AC0  ; |294| 
||      T0 = #0

$C$DW$193	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$193, DW_AT_low_pc(0x00)
	.dwattr $C$DW$193, DW_AT_name("_utlLsMemSet")
	.dwattr $C$DW$193, DW_AT_TI_call
        call #_utlLsMemSet ; |294| 
                                        ; call occurs [#_utlLsMemSet] ; |294| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 297,column 3,is_stmt
;----------------------------------------------------------------------
; 297 | siu_open_tx (chnum, frame_size);                                       
;----------------------------------------------------------------------
        T0 = *SP(#30) ; |297| 
        T1 = *SP(#31) ; |297| 
$C$DW$194	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$194, DW_AT_low_pc(0x00)
	.dwattr $C$DW$194, DW_AT_name("_siu_open_tx")
	.dwattr $C$DW$194, DW_AT_TI_call
        call #_siu_open_tx ; |297| 
                                        ; call occurs [#_siu_open_tx] ; |297| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 299,column 3,is_stmt
;----------------------------------------------------------------------
; 299 | siu_open_ecu (chnum, frame_size);                                      
;----------------------------------------------------------------------
        T0 = *SP(#30) ; |299| 
        T1 = *SP(#31) ; |299| 
$C$DW$195	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$195, DW_AT_low_pc(0x00)
	.dwattr $C$DW$195, DW_AT_name("_siu_open_ecu")
	.dwattr $C$DW$195, DW_AT_TI_call
        call #_siu_open_ecu ; |299| 
                                        ; call occurs [#_siu_open_ecu] ; |299| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 302,column 3,is_stmt
;----------------------------------------------------------------------
; 302 | siu_open_piu (chnum, frame_size);                                      
;----------------------------------------------------------------------
        T0 = *SP(#30) ; |302| 
        T1 = *SP(#31) ; |302| 
$C$DW$196	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$196, DW_AT_low_pc(0x00)
	.dwattr $C$DW$196, DW_AT_name("_siu_open_piu")
	.dwattr $C$DW$196, DW_AT_TI_call
        call #_siu_open_piu ; |302| 
                                        ; call occurs [#_siu_open_piu] ; |302| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 305,column 3,is_stmt
;----------------------------------------------------------------------
; 305 | siu_open_txhyb (chnum, frame_size, hyb_filter_length);                 
;----------------------------------------------------------------------
        T0 = *SP(#30) ; |305| 
        T1 = *SP(#31) ; |305| 
        AR0 = *SP(#33) ; |305| 
$C$DW$197	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$197, DW_AT_low_pc(0x00)
	.dwattr $C$DW$197, DW_AT_name("_siu_open_txhyb")
	.dwattr $C$DW$197, DW_AT_TI_call
        call #_siu_open_txhyb ; |305| 
                                        ; call occurs [#_siu_open_txhyb] ; |305| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 307,column 3,is_stmt
;----------------------------------------------------------------------
; 307 | siu_open_txsgn (chnum);                                                
;----------------------------------------------------------------------
        T0 = *SP(#30) ; |307| 
$C$DW$198	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$198, DW_AT_low_pc(0x00)
	.dwattr $C$DW$198, DW_AT_name("_siu_open_txsgn")
	.dwattr $C$DW$198, DW_AT_TI_call
        call #_siu_open_txsgn ; |307| 
                                        ; call occurs [#_siu_open_txsgn] ; |307| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 309,column 3,is_stmt
;----------------------------------------------------------------------
; 309 | siu_open_rxsgn (chnum);                                                
; 312 | piuCtrl.ctl_code                 = piu_SET_FRAME_SIZE;                 
;----------------------------------------------------------------------
        T0 = *SP(#30) ; |309| 
$C$DW$199	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$199, DW_AT_low_pc(0x00)
	.dwattr $C$DW$199, DW_AT_name("_siu_open_rxsgn")
	.dwattr $C$DW$199, DW_AT_TI_call
        call #_siu_open_rxsgn ; |309| 
                                        ; call occurs [#_siu_open_rxsgn] ; |309| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 313,column 3,is_stmt
;----------------------------------------------------------------------
; 313 | piuCtrl.u.set_frame.frame_size   = frame_size;                         
;----------------------------------------------------------------------
        AR1 = *SP(#31) ; |313| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 312,column 3,is_stmt
        *SP(#4) = #1 ; |312| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 313,column 3,is_stmt
        *SP(#6) = AR1 ; |313| 
        XAR3 = dbl(*SP(#24))
        XAR1 = mar(*SP(#4))
        XAR0 = dbl(*AR3(#24))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 314,column 3,is_stmt
;----------------------------------------------------------------------
; 314 | piuControl (inst->piuInst, &piuCtrl);                                  
; 315 | piu_segment_in  = (linSample *)(piuCtrl.u.set_frame.send_out_buf);     
; 316 | piu_segment_out = (linSample *)(piuCtrl.u.set_frame.receive_in_buf);   
;----------------------------------------------------------------------
$C$DW$200	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$200, DW_AT_low_pc(0x00)
	.dwattr $C$DW$200, DW_AT_name("_piuControl")
	.dwattr $C$DW$200, DW_AT_TI_call
        call #_piuControl ; |314| 
                                        ; call occurs [#_piuControl] ; |314| 
        XAR3 = dbl(*SP(#8))
        dbl(*(#_piu_segment_in)) = XAR3
        XAR3 = dbl(*SP(#10))
        dbl(*(#_piu_segment_out)) = XAR3
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 318,column 3,is_stmt
;----------------------------------------------------------------------
; 318 | if (ecuSim->sig_src == ecu_SIM_SIG_SRC_FILE){                          
;----------------------------------------------------------------------
        AR1 = *AR3(#90) ; |318| 
        if (AR1 != #0) goto $C$L15 ; |318| 
                                        ; branchcc occurs ; |318| 
        XAR0 = dbl(*(#_ecuSim))

        mar(AR0 + #94) ; |320| 
||      T0 = #0

	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 320,column 5,is_stmt
;----------------------------------------------------------------------
; 320 | ecu_sim_fileio_init (&ecuSim->rin, ecu_SIM_FILEIO_READ);               
; 321 | ecu_sim_fileio_init (&ecuSim->sin, ecu_SIM_FILEIO_READ);               
; 323 | ecu_sim_fileio_init (&ecuSim->rout, ecu_SIM_FILEIO_WRITE);             
; 324 | ecu_sim_fileio_init (&ecuSim->sout, ecu_SIM_FILEIO_WRITE);             
;----------------------------------------------------------------------
$C$DW$201	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$201, DW_AT_low_pc(0x00)
	.dwattr $C$DW$201, DW_AT_name("_ecu_sim_fileio_init")
	.dwattr $C$DW$201, DW_AT_TI_call
        call #_ecu_sim_fileio_init ; |320| 
                                        ; call occurs [#_ecu_sim_fileio_init] ; |320| 

        goto $C$L16 ; |325| 
||      T0 = #0

	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 325,column 3,is_stmt
                                        ; branch occurs ; |325| 
$C$L15:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 326,column 8,is_stmt
;----------------------------------------------------------------------
; 326 | else if (ecuSim->save_to_file == TRUE){                                
;----------------------------------------------------------------------
        TC1 = (*AR3(#91) == #1) ; |326| 
        if (!TC1) goto $C$L17 ; |326| 
                                        ; branchcc occurs ; |326| 
        XAR0 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 328,column 5,is_stmt
;----------------------------------------------------------------------
; 328 | strcpy((char *)ecuSim->rin.fname, "rin_sgn.pcm");                      
;----------------------------------------------------------------------
        XAR1 = #$C$FSL8 ; |328| 
        mar(AR0 + #98) ; |328| 
$C$DW$202	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$202, DW_AT_low_pc(0x00)
	.dwattr $C$DW$202, DW_AT_name("_strcpy")
	.dwattr $C$DW$202, DW_AT_TI_call
        call #_strcpy ; |328| 
                                        ; call occurs [#_strcpy] ; |328| 
        XAR0 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 330,column 5,is_stmt
;----------------------------------------------------------------------
; 330 | strcpy((char *)ecuSim->sin.fname, "sin_sgn.pcm");                      
;----------------------------------------------------------------------
        XAR1 = #$C$FSL9 ; |330| 
        mar(*+AR0(#358)) ; |330| 
$C$DW$203	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$203, DW_AT_low_pc(0x00)
	.dwattr $C$DW$203, DW_AT_name("_strcpy")
	.dwattr $C$DW$203, DW_AT_TI_call
        call #_strcpy ; |330| 
                                        ; call occurs [#_strcpy] ; |330| 
        XAR0 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 332,column 5,is_stmt
;----------------------------------------------------------------------
; 332 | strcpy((char *)ecuSim->rout.fname, "rout_sgn.pcm");                    
;----------------------------------------------------------------------
        XAR1 = #$C$FSL10 ; |332| 
        mar(*+AR0(#618)) ; |332| 
$C$DW$204	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$204, DW_AT_low_pc(0x00)
	.dwattr $C$DW$204, DW_AT_name("_strcpy")
	.dwattr $C$DW$204, DW_AT_TI_call
        call #_strcpy ; |332| 
                                        ; call occurs [#_strcpy] ; |332| 
        XAR0 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 334,column 5,is_stmt
;----------------------------------------------------------------------
; 334 | strcpy((char *)ecuSim->sout.fname, "sout_sgn.pcm");                    
;----------------------------------------------------------------------
        XAR1 = #$C$FSL11 ; |334| 
        mar(*+AR0(#878)) ; |334| 
$C$DW$205	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$205, DW_AT_low_pc(0x00)
	.dwattr $C$DW$205, DW_AT_name("_strcpy")
	.dwattr $C$DW$205, DW_AT_TI_call
        call #_strcpy ; |334| 
                                        ; call occurs [#_strcpy] ; |334| 
        XAR0 = dbl(*(#_ecuSim))

        mar(AR0 + #94) ; |335| 
||      T0 = #1

	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 335,column 5,is_stmt
;----------------------------------------------------------------------
; 335 | ecu_sim_fileio_init (&ecuSim->rin, ecu_SIM_FILEIO_WRITE);              
;----------------------------------------------------------------------
$C$DW$206	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$206, DW_AT_low_pc(0x00)
	.dwattr $C$DW$206, DW_AT_name("_ecu_sim_fileio_init")
	.dwattr $C$DW$206, DW_AT_TI_call
        call #_ecu_sim_fileio_init ; |335| 
                                        ; call occurs [#_ecu_sim_fileio_init] ; |335| 
        T0 = #1
$C$L16:    
        XAR0 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 336,column 5,is_stmt
;----------------------------------------------------------------------
; 336 | ecu_sim_fileio_init (&ecuSim->sin, ecu_SIM_FILEIO_WRITE);              
;----------------------------------------------------------------------
        mar(*+AR0(#354)) ; |336| 
$C$DW$207	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$207, DW_AT_low_pc(0x00)
	.dwattr $C$DW$207, DW_AT_name("_ecu_sim_fileio_init")
	.dwattr $C$DW$207, DW_AT_TI_call
        call #_ecu_sim_fileio_init ; |336| 
                                        ; call occurs [#_ecu_sim_fileio_init] ; |336| 
        XAR0 = dbl(*(#_ecuSim))
        T0 = #1
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 338,column 5,is_stmt
;----------------------------------------------------------------------
; 338 | ecu_sim_fileio_init (&ecuSim->rout, ecu_SIM_FILEIO_WRITE);             
;----------------------------------------------------------------------
        mar(*+AR0(#614)) ; |338| 
$C$DW$208	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$208, DW_AT_low_pc(0x00)
	.dwattr $C$DW$208, DW_AT_name("_ecu_sim_fileio_init")
	.dwattr $C$DW$208, DW_AT_TI_call
        call #_ecu_sim_fileio_init ; |338| 
                                        ; call occurs [#_ecu_sim_fileio_init] ; |338| 
        XAR0 = dbl(*(#_ecuSim))
        T0 = #1
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 339,column 5,is_stmt
;----------------------------------------------------------------------
; 339 | ecu_sim_fileio_init (&ecuSim->sout, ecu_SIM_FILEIO_WRITE);             
;----------------------------------------------------------------------
        mar(*+AR0(#874)) ; |339| 
$C$DW$209	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$209, DW_AT_low_pc(0x00)
	.dwattr $C$DW$209, DW_AT_name("_ecu_sim_fileio_init")
	.dwattr $C$DW$209, DW_AT_TI_call
        call #_ecu_sim_fileio_init ; |339| 
                                        ; call occurs [#_ecu_sim_fileio_init] ; |339| 
$C$L17:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 344,column 3,is_stmt
;----------------------------------------------------------------------
; 344 | while (dataIn) {                                                       
;----------------------------------------------------------------------
        AR1 = *SP(#36) ; |344| 
        if (AR1 == #0) goto $C$L45 ; |344| 
                                        ; branchcc occurs ; |344| 
$C$L18:    
$C$DW$L$_main$27$B:
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 347,column 5,is_stmt
;----------------------------------------------------------------------
; 347 | if (ecuSim->toggle_getflt) {                                           
;----------------------------------------------------------------------
        AR1 = *AR3(#80) ; |347| 
        if (AR1 == #0) goto $C$L19 ; |347| 
                                        ; branchcc occurs ; |347| 
$C$DW$L$_main$27$E:
$C$DW$L$_main$28$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 348,column 7,is_stmt
;----------------------------------------------------------------------
; 348 | ecuSim->toggle_getflt = FALSE;                                         
;----------------------------------------------------------------------
        *AR3(#80) = #0 ; |348| 
        nop
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 349,column 7,is_stmt
;----------------------------------------------------------------------
; 349 | if (ecuSim->getflt.ncoeff > SIU_MAX_GETFLT) {                          
;----------------------------------------------------------------------
        AR2 = #64 ; |349| 
        AR1 = *AR3(#83) ; |349| 
        TC1 = (AR1 <= AR2) ; |349| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 350,column 9,is_stmt
;----------------------------------------------------------------------
; 350 | ecuSim->getflt.ncoeff = SIU_MAX_GETFLT;                                
;----------------------------------------------------------------------
        if (!TC1) execute (D_Unit)
           *AR3(#83) = #64 ; |350| 
        XAR3 = dbl(*SP(#24))
        XAR0 = dbl(*AR3(#26))
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 352,column 7,is_stmt
;----------------------------------------------------------------------
; 352 | ecuSim->getflt.retstat = ecuGetFilter (inst->ecuInst,                  
; 353 |                          ecuSim->getflt.select, ecuSim->getflt.start,  
; 354 |                          ecuSim->getflt.ncoeff, &siu_getflt[0]);       
;----------------------------------------------------------------------
        XAR2 = #_siu_getflt ; |352| 
        T0 = *AR3(#81) ; |352| 
        T1 = *AR3(#82) ; |352| 
        AR1 = *AR3(#83) ; |352| 
$C$DW$210	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$210, DW_AT_low_pc(0x00)
	.dwattr $C$DW$210, DW_AT_name("_ecuGetFilter")
	.dwattr $C$DW$210, DW_AT_TI_call
        call #_ecuGetFilter ; |352| 
                                        ; call occurs [#_ecuGetFilter] ; |352| 
        XAR3 = dbl(*(#_ecuSim))
        *AR3(#84) = T0 ; |352| 
$C$DW$L$_main$28$E:
$C$L19:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 347,column 5,is_stmt
$C$DW$L$_main$29$B:
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 356,column 5,is_stmt
;----------------------------------------------------------------------
; 356 | if (ecuSim->toggle_ecu) {                                              
;----------------------------------------------------------------------
        AR1 = *AR3(#13) ; |356| 
        if (AR1 == #0) goto $C$L20 ; |356| 
                                        ; branchcc occurs ; |356| 
$C$DW$L$_main$29$E:
$C$DW$L$_main$30$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 357,column 7,is_stmt
;----------------------------------------------------------------------
; 357 | ecuSim->toggle_ecu = FALSE;                                            
;----------------------------------------------------------------------
        *AR3(#13) = #0 ; |357| 
        XAR1 = dbl(*(#_ecuSim))
        XAR3 = dbl(*SP(#24))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 358,column 7,is_stmt
;----------------------------------------------------------------------
; 358 | ecuControl (inst->ecuInst, (ecuControl_t*)&ecuSim->ecuCtl);            
;----------------------------------------------------------------------
        mar(AR1 + #14) ; |358| 
        XAR0 = dbl(*AR3(#26))
$C$DW$211	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$211, DW_AT_low_pc(0x00)
	.dwattr $C$DW$211, DW_AT_name("_ecuControl")
	.dwattr $C$DW$211, DW_AT_TI_call
        call #_ecuControl ; |358| 
                                        ; call occurs [#_ecuControl] ; |358| 
$C$DW$L$_main$30$E:
$C$L20:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 356,column 5,is_stmt
$C$DW$L$_main$31$B:
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 360,column 5,is_stmt
;----------------------------------------------------------------------
; 360 | if (ecuSim->toggle_piu) {                                              
;----------------------------------------------------------------------
        AR1 = *AR3(#70) ; |360| 
        if (AR1 == #0) goto $C$L21 ; |360| 
                                        ; branchcc occurs ; |360| 
$C$DW$L$_main$31$E:
$C$DW$L$_main$32$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 361,column 7,is_stmt
;----------------------------------------------------------------------
; 361 | ecuSim->toggle_piu = FALSE;                                            
;----------------------------------------------------------------------
        *AR3(#70) = #0 ; |361| 
        XAR1 = dbl(*(#_ecuSim))
        XAR3 = dbl(*SP(#24))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 362,column 7,is_stmt
;----------------------------------------------------------------------
; 362 | piuControl (inst->piuInst, (piuControl_t*)&ecuSim->piuCtl);            
;----------------------------------------------------------------------
        mar(AR1 + #72) ; |362| 
        XAR0 = dbl(*AR3(#24))
$C$DW$212	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$212, DW_AT_low_pc(0x00)
	.dwattr $C$DW$212, DW_AT_name("_piuControl")
	.dwattr $C$DW$212, DW_AT_TI_call
        call #_piuControl ; |362| 
                                        ; call occurs [#_piuControl] ; |362| 
$C$DW$L$_main$32$E:
$C$L21:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 360,column 5,is_stmt
$C$DW$L$_main$33$B:
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 364,column 5,is_stmt
;----------------------------------------------------------------------
; 364 | if (ecuSim->toggle_tx_sg) {                                            
;----------------------------------------------------------------------
        AR1 = *AR3(#30) ; |364| 
        if (AR1 == #0) goto $C$L22 ; |364| 
                                        ; branchcc occurs ; |364| 
$C$DW$L$_main$33$E:
$C$DW$L$_main$34$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 365,column 7,is_stmt
;----------------------------------------------------------------------
; 365 | ecuSim->toggle_tx_sg = FALSE;                                          
;----------------------------------------------------------------------
        *AR3(#30) = #0 ; |365| 
        XAR3 = dbl(*(#_ecuSim))
        AR1 = #0
        AR4 = #0
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 366,column 7,is_stmt
;----------------------------------------------------------------------
; 366 | ecuSim->txSGN.state = !ecuSim->txSGN.state;                            
;----------------------------------------------------------------------
        AR2 = *AR3(#32) ; |366| 
        if (AR2 != #0) execute (D_Unit) ||
           AR1 = #1
        if (AR1 == #0) execute (D_Unit) ||
           AR4 = #1
        *AR3(#32) = AR4 ; |366| 
        XAR1 = dbl(*(#_ecuSim))
        XAR0 = dbl(*(#_sgnTxInst))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 367,column 7,is_stmt
;----------------------------------------------------------------------
; 367 | siu_set_sgn (sgnTxInst, (siuSGNPars_t*)&ecuSim->txSGN);                
;----------------------------------------------------------------------
        mar(AR1 + #32) ; |367| 
$C$DW$213	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$213, DW_AT_low_pc(0x00)
	.dwattr $C$DW$213, DW_AT_name("_siu_set_sgn")
	.dwattr $C$DW$213, DW_AT_TI_call
        call #_siu_set_sgn ; |367| 
                                        ; call occurs [#_siu_set_sgn] ; |367| 
$C$DW$L$_main$34$E:
$C$L22:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 364,column 5,is_stmt
$C$DW$L$_main$35$B:
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 369,column 5,is_stmt
;----------------------------------------------------------------------
; 369 | if (ecuSim->toggle_rx_sg) {                                            
;----------------------------------------------------------------------
        AR1 = *AR3(#50) ; |369| 
        if (AR1 == #0) goto $C$L23 ; |369| 
                                        ; branchcc occurs ; |369| 
$C$DW$L$_main$35$E:
$C$DW$L$_main$36$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 370,column 7,is_stmt
;----------------------------------------------------------------------
; 370 | ecuSim->toggle_rx_sg = FALSE;                                          
;----------------------------------------------------------------------
        *AR3(#50) = #0 ; |370| 
        XAR3 = dbl(*(#_ecuSim))
        AR1 = #0
        AR4 = #0
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 371,column 7,is_stmt
;----------------------------------------------------------------------
; 371 | ecuSim->rxSGN.state = !ecuSim->rxSGN.state;                            
;----------------------------------------------------------------------
        AR2 = *AR3(#52) ; |371| 
        if (AR2 != #0) execute (D_Unit) ||
           AR1 = #1
        if (AR1 == #0) execute (D_Unit) ||
           AR4 = #1
        *AR3(#52) = AR4 ; |371| 
        XAR1 = dbl(*(#_ecuSim))
        XAR0 = dbl(*(#_sgnRxInst))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 372,column 7,is_stmt
;----------------------------------------------------------------------
; 372 | siu_set_sgn (sgnRxInst, (siuSGNPars_t*)&ecuSim->rxSGN);                
;----------------------------------------------------------------------
        mar(AR1 + #52) ; |372| 
$C$DW$214	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$214, DW_AT_low_pc(0x00)
	.dwattr $C$DW$214, DW_AT_name("_siu_set_sgn")
	.dwattr $C$DW$214, DW_AT_TI_call
        call #_siu_set_sgn ; |372| 
                                        ; call occurs [#_siu_set_sgn] ; |372| 
$C$DW$L$_main$36$E:
$C$L23:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 369,column 5,is_stmt
$C$DW$L$_main$37$B:
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 374,column 5,is_stmt
;----------------------------------------------------------------------
; 374 | if (ecuSim->toggle_hyb) {                                              
;----------------------------------------------------------------------
        AR1 = *AR3(#17) ; |374| 
        if (AR1 == #0) goto $C$L24 ; |374| 
                                        ; branchcc occurs ; |374| 
$C$DW$L$_main$37$E:
$C$DW$L$_main$38$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 375,column 7,is_stmt
;----------------------------------------------------------------------
; 375 | ecuSim->toggle_hyb = FALSE;                                            
;----------------------------------------------------------------------
        *AR3(#17) = #0 ; |375| 
        XAR1 = dbl(*(#_ecuSim))
        XAR0 = dbl(*(#_hybTxInst))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 376,column 7,is_stmt
;----------------------------------------------------------------------
; 376 | hybControl (hybTxInst, (hybControl_t*)&ecuSim->hybCtl);                
;----------------------------------------------------------------------
        mar(AR1 + #18) ; |376| 
$C$DW$215	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$215, DW_AT_low_pc(0x00)
	.dwattr $C$DW$215, DW_AT_name("_hybControl")
	.dwattr $C$DW$215, DW_AT_TI_call
        call #_hybControl ; |376| 
                                        ; call occurs [#_hybControl] ; |376| 
$C$DW$L$_main$38$E:
$C$L24:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 374,column 5,is_stmt
$C$DW$L$_main$39$B:
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 378,column 5,is_stmt
;----------------------------------------------------------------------
; 378 | if (ecuSim->toggle_freerun) {                                          
;----------------------------------------------------------------------
        AR1 = *AR3(#86) ; |378| 
        if (AR1 == #0) goto $C$L25 ; |378| 
                                        ; branchcc occurs ; |378| 
$C$DW$L$_main$39$E:
$C$DW$L$_main$40$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 379,column 7,is_stmt
;----------------------------------------------------------------------
; 379 | ecuSim->toggle_freerun = FALSE;                                        
;----------------------------------------------------------------------
        *AR3(#86) = #0 ; |379| 
        nop
        nop
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 380,column 7,is_stmt
;----------------------------------------------------------------------
; 380 | seg_count  = ecuSim->freerun_frame_cnt;                                
;----------------------------------------------------------------------
        AR1 = *AR3(#87) ; |380| 
        *SP(#34) = AR1 ; |380| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 381,column 7,is_stmt
;----------------------------------------------------------------------
; 381 | do_freerun = TRUE;                                                     
; 383 | #if ECU_SIM_USE_VPE                                                    
; 384 | if (ecuSim->toggle_slm) {                                              
; 385 | ecuSim->toggle_slm = FALSE;                                            
; 386 | slmControl (inst->slmInst, ecuSim->slm_mode);                          
; 388 | #endif                                                                 
;----------------------------------------------------------------------
        *SP(#35) = #1 ; |381| 
$C$DW$L$_main$40$E:
$C$L25:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 378,column 5,is_stmt
$C$DW$L$_main$41$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 391,column 5,is_stmt
;----------------------------------------------------------------------
; 391 | ecuProfile.enabled = ecuSim->profile_enable;                           
;----------------------------------------------------------------------
        AR1 = *AR3(#85) ; |391| 
        *(#(_ecuProfile+3)) = AR1 ; |391| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 394,column 5,is_stmt
;----------------------------------------------------------------------
; 394 | if (do_freerun) {                                                      
;----------------------------------------------------------------------
        AR1 = *SP(#35) ; |394| 
        if (AR1 == #0) goto $C$L26 ; |394| 
                                        ; branchcc occurs ; |394| 
$C$DW$L$_main$41$E:
$C$DW$L$_main$42$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 395,column 7,is_stmt
;----------------------------------------------------------------------
; 395 | if (seg_count-- < 0) {                                                 
;----------------------------------------------------------------------
        AR1 = *SP(#34) ; |395| 
        AR2 = AR1 - #1 ; |395| 
        *SP(#34) = AR2 ; |395| 
        if (AR1 >= #0) goto $C$L26 ; |395| 
                                        ; branchcc occurs ; |395| 
$C$DW$L$_main$42$E:
$C$DW$L$_main$43$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 397,column 9,is_stmt
;----------------------------------------------------------------------
; 397 | do_freerun = FALSE;                                                    
; 398 | asm (" nop");                                                          
; 399 | asm (" nop");                                                          
;----------------------------------------------------------------------
        *SP(#35) = #0 ; |397| 
 nop
 nop
$C$DW$L$_main$43$E:
$C$L26:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 394,column 5,is_stmt
$C$DW$L$_main$44$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 404,column 5,is_stmt
;----------------------------------------------------------------------
; 404 | dataIn = generate_rx_tone_frame (frame_size, rx_frame_in);             
;----------------------------------------------------------------------
        T0 = *SP(#31) ; |404| 
        XAR0 = dbl(*(#_rx_frame_in))
$C$DW$216	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$216, DW_AT_low_pc(0x00)
	.dwattr $C$DW$216, DW_AT_name("_generate_rx_tone_frame")
	.dwattr $C$DW$216, DW_AT_TI_call
        call #_generate_rx_tone_frame ; |404| 
                                        ; call occurs [#_generate_rx_tone_frame] ; |404| 
        XAR3 = dbl(*(#_ecuSim))
        *SP(#36) = T0 ; |404| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 407,column 5,is_stmt
;----------------------------------------------------------------------
; 407 | if ((ecuSim->sig_src      == ecu_SIM_SIG_SRC_SGN) &&                   
; 408 |     (ecuSim->save_to_file == TRUE)) {                                  
;----------------------------------------------------------------------
        TC1 = (*AR3(#90) == #1) ; |407| 
        if (!TC1) goto $C$L27 ; |407| 
                                        ; branchcc occurs ; |407| 
$C$DW$L$_main$44$E:
$C$DW$L$_main$45$B:
        TC1 = (*AR3(#91) == #1) ; |407| 
        if (!TC1) goto $C$L27 ; |407| 
                                        ; branchcc occurs ; |407| 
$C$DW$L$_main$45$E:
$C$DW$L$_main$46$B:
        XAR1 = dbl(*(#_rx_frame_in))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 410,column 7,is_stmt
;----------------------------------------------------------------------
; 410 | ecu_sim_output (rinBuffer, rx_frame_in);                               
;----------------------------------------------------------------------
        XAR0 = #_rinBuffer ; |410| 
$C$DW$217	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$217, DW_AT_low_pc(0x00)
	.dwattr $C$DW$217, DW_AT_name("_ecu_sim_output")
	.dwattr $C$DW$217, DW_AT_TI_call
        call #_ecu_sim_output ; |410| 
                                        ; call occurs [#_ecu_sim_output] ; |410| 
        XAR3 = dbl(*(#_ecuSim))
        XAR1 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 411,column 7,is_stmt
;----------------------------------------------------------------------
; 411 | ecu_sim_fwrite (rinBuffer, ecuSim->frame_size, &ecuSim->rin);          
; 413 | #if ECU_SIM_USE_VPE                                                    
; 414 | slmProcess (inst->slmInst, rx_frame_in, frame_size);                   
; 415 | #endif                                                                 
;----------------------------------------------------------------------
        XAR0 = #_rinBuffer ; |411| 

        T0 = *AR3(short(#7)) ; |411| 
||      mar(AR1 + #94) ; |411| 

$C$DW$218	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$218, DW_AT_low_pc(0x00)
	.dwattr $C$DW$218, DW_AT_name("_ecu_sim_fwrite")
	.dwattr $C$DW$218, DW_AT_TI_call
        call #_ecu_sim_fwrite ; |411| 
                                        ; call occurs [#_ecu_sim_fwrite] ; |411| 
$C$DW$L$_main$46$E:
$C$L27:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 407,column 5,is_stmt
$C$DW$L$_main$47$B:
        XAR3 = dbl(*SP(#24))
        XAR1 = dbl(*(#_rx_frame_in))
        XAR0 = dbl(*AR3(#24))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 416,column 5,is_stmt
;----------------------------------------------------------------------
; 416 | piuReceiveIn (inst->piuInst, rx_frame_in);                             
;----------------------------------------------------------------------
$C$DW$219	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$219, DW_AT_low_pc(0x00)
	.dwattr $C$DW$219, DW_AT_name("_piuReceiveIn")
	.dwattr $C$DW$219, DW_AT_TI_call
        call #_piuReceiveIn ; |416| 
                                        ; call occurs [#_piuReceiveIn] ; |416| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 419,column 5,is_stmt
;----------------------------------------------------------------------
; 419 | if (ecuSim->sig_src == ecu_SIM_SIG_SRC_SGN) {                          
;----------------------------------------------------------------------
        TC1 = (*AR3(#90) == #1) ; |419| 
        if (!TC1) goto $C$L28 ; |419| 
                                        ; branchcc occurs ; |419| 
$C$DW$L$_main$47$E:
$C$DW$L$_main$48$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 420,column 7,is_stmt
;----------------------------------------------------------------------
; 420 | generate_tx_tone_frame (frame_size, segment_in);                       
;----------------------------------------------------------------------
        T0 = *SP(#31) ; |420| 
        XAR0 = dbl(*(#_segment_in))
$C$DW$220	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$220, DW_AT_low_pc(0x00)
	.dwattr $C$DW$220, DW_AT_name("_generate_tx_tone_frame")
	.dwattr $C$DW$220, DW_AT_TI_call
        call #_generate_tx_tone_frame ; |420| 
                                        ; call occurs [#_generate_tx_tone_frame] ; |420| 
        XAR1 = dbl(*(#_segment_in))
        XAR2 = dbl(*(#_rx_segment_out))
        XAR0 = dbl(*(#_hybTxInst))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 422,column 7,is_stmt
;----------------------------------------------------------------------
; 422 | hybAddEcho (hybTxInst, &segment_in[0], &rx_segment_out[0]);            
;----------------------------------------------------------------------
$C$DW$221	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$221, DW_AT_low_pc(0x00)
	.dwattr $C$DW$221, DW_AT_name("_hybAddEcho")
	.dwattr $C$DW$221, DW_AT_TI_call
        call #_hybAddEcho ; |422| 
                                        ; call occurs [#_hybAddEcho] ; |422| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 424,column 7,is_stmt
;----------------------------------------------------------------------
; 424 | if ((ecuSim->sig_src      == ecu_SIM_SIG_SRC_SGN) &&                   
; 425 |     (ecuSim->save_to_file == TRUE)){                                   
;----------------------------------------------------------------------
        TC1 = (*AR3(#90) == #1) ; |424| 
        if (!TC1) goto $C$L29 ; |424| 
                                        ; branchcc occurs ; |424| 
$C$DW$L$_main$48$E:
$C$DW$L$_main$49$B:
        TC1 = (*AR3(#91) == #1) ; |424| 
        if (!TC1) goto $C$L29 ; |424| 
                                        ; branchcc occurs ; |424| 
$C$DW$L$_main$49$E:
$C$DW$L$_main$50$B:
        XAR1 = dbl(*(#_segment_in))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 426,column 9,is_stmt
;----------------------------------------------------------------------
; 426 | ecu_sim_output (sinBuffer, segment_in);                                
;----------------------------------------------------------------------
        XAR0 = #_sinBuffer ; |426| 
$C$DW$222	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$222, DW_AT_low_pc(0x00)
	.dwattr $C$DW$222, DW_AT_name("_ecu_sim_output")
	.dwattr $C$DW$222, DW_AT_TI_call
        call #_ecu_sim_output ; |426| 
                                        ; call occurs [#_ecu_sim_output] ; |426| 
        XAR1 = dbl(*(#_ecuSim))
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 427,column 9,is_stmt
;----------------------------------------------------------------------
; 427 | ecu_sim_fwrite (sinBuffer, ecuSim->frame_size, &ecuSim->sin);          
;----------------------------------------------------------------------
        XAR0 = #_sinBuffer ; |427| 
        mar(*+AR1(#354)) ; |427| 
        T0 = *AR3(short(#7)) ; |427| 
$C$DW$223	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$223, DW_AT_low_pc(0x00)
	.dwattr $C$DW$223, DW_AT_name("_ecu_sim_fwrite")
	.dwattr $C$DW$223, DW_AT_TI_call
        call #_ecu_sim_fwrite ; |427| 
                                        ; call occurs [#_ecu_sim_fwrite] ; |427| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 429,column 5,is_stmt
;----------------------------------------------------------------------
; 430 | else {                                                                 
;----------------------------------------------------------------------
        goto $C$L29 ; |429| 
                                        ; branch occurs ; |429| 
$C$DW$L$_main$50$E:
$C$L28:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 419,column 5,is_stmt
$C$DW$L$_main$51$B:
        XAR1 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 431,column 7,is_stmt
;----------------------------------------------------------------------
; 431 | dataIn &= ecu_sim_fread (sinBuffer, frame_size, &ecuSim->sin);         
;----------------------------------------------------------------------
        T0 = *SP(#31) ; |431| 
        XAR0 = #_sinBuffer ; |431| 
        mar(*+AR1(#354)) ; |431| 
$C$DW$224	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$224, DW_AT_low_pc(0x00)
	.dwattr $C$DW$224, DW_AT_name("_ecu_sim_fread")
	.dwattr $C$DW$224, DW_AT_TI_call
        call #_ecu_sim_fread ; |431| 
                                        ; call occurs [#_ecu_sim_fread] ; |431| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 432,column 7,is_stmt
;----------------------------------------------------------------------
; 432 | ecu_sim_input (sinBuffer, segment_in);                                 
;----------------------------------------------------------------------
        XAR0 = #_sinBuffer ; |432| 
        XAR1 = dbl(*(#_segment_in))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 431,column 7,is_stmt
        AC0 = T0 & *SP(#36) ; |431| 
        *SP(#36) = AC0 ; |431| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 432,column 7,is_stmt
$C$DW$225	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$225, DW_AT_low_pc(0x00)
	.dwattr $C$DW$225, DW_AT_name("_ecu_sim_input")
	.dwattr $C$DW$225, DW_AT_TI_call
        call #_ecu_sim_input ; |432| 
                                        ; call occurs [#_ecu_sim_input] ; |432| 
$C$DW$L$_main$51$E:
$C$L29:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 429,column 5,is_stmt
$C$DW$L$_main$52$B:
        XAR3 = dbl(*SP(#24))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 436,column 5,is_stmt
;----------------------------------------------------------------------
; 436 | convert_tx_tone_frame (frame_size, inst->companding_law, &segment_in[0]
;     | );                                                                     
;----------------------------------------------------------------------
        T0 = *SP(#31) ; |436| 
        XAR0 = dbl(*(#_segment_in))
        T1 = *AR3(#22) ; |436| 
$C$DW$226	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$226, DW_AT_low_pc(0x00)
	.dwattr $C$DW$226, DW_AT_name("_convert_tx_tone_frame")
	.dwattr $C$DW$226, DW_AT_TI_call
        call #_convert_tx_tone_frame ; |436| 
                                        ; call occurs [#_convert_tx_tone_frame] ; |436| 
        XAR3 = dbl(*SP(#24))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 438,column 5,is_stmt
;----------------------------------------------------------------------
; 438 | piuSendIn (inst->piuInst, (tword **) &piu_segment_in, 0, frame_size);  
;----------------------------------------------------------------------
        XAR1 = #_piu_segment_in ; |438| 

        T1 = *SP(#31) ; |438| 
||      T0 = #0

        XAR0 = dbl(*AR3(#24))
$C$DW$227	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$227, DW_AT_low_pc(0x00)
	.dwattr $C$DW$227, DW_AT_name("_piuSendIn")
	.dwattr $C$DW$227, DW_AT_TI_call
        call #_piuSendIn ; |438| 
                                        ; call occurs [#_piuSendIn] ; |438| 
        XAR3 = dbl(*SP(#24))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 439,column 5,is_stmt
;----------------------------------------------------------------------
; 439 | piuReceiveOut (inst->piuInst, (tword **) &piu_segment_out, 0, frame_siz
;     | e);                                                                    
;----------------------------------------------------------------------
        XAR1 = #_piu_segment_out ; |439| 

        T1 = *SP(#31) ; |439| 
||      T0 = #0

        XAR0 = dbl(*AR3(#24))
$C$DW$228	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$228, DW_AT_low_pc(0x00)
	.dwattr $C$DW$228, DW_AT_name("_piuReceiveOut")
	.dwattr $C$DW$228, DW_AT_TI_call
        call #_piuReceiveOut ; |439| 
                                        ; call occurs [#_piuReceiveOut] ; |439| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 442,column 5,is_stmt
;----------------------------------------------------------------------
; 442 | ecusim_profile_start ();                                               
;----------------------------------------------------------------------
$C$DW$229	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$229, DW_AT_low_pc(0x00)
	.dwattr $C$DW$229, DW_AT_name("_ecusim_profile_start")
	.dwattr $C$DW$229, DW_AT_TI_call
        call #_ecusim_profile_start ; |442| 
                                        ; call occurs [#_ecusim_profile_start] ; |442| 
        XAR3 = dbl(*SP(#24))
        XAR0 = dbl(*AR3(#16))
        XAR1 = dbl(*AR3(#10))
        XAR2 = dbl(*AR3(#12))
        XAR3 = dbl(*SP(#126))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 443,column 5,is_stmt
;----------------------------------------------------------------------
; 443 | ecuSendIn (inst->TxInst.TxSendOut.targetInst, inst->TxInst.send_frame_p
;     | tr,                                                                    
; 444 |            inst->TxInst.recv_frame_ptr, ecu_out_buf_start);            
;----------------------------------------------------------------------
$C$DW$230	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$230, DW_AT_low_pc(0x00)
	.dwattr $C$DW$230, DW_AT_name("_ecuSendIn")
	.dwattr $C$DW$230, DW_AT_TI_call
        call #_ecuSendIn ; |443| 
                                        ; call occurs [#_ecuSendIn] ; |443| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 445,column 5,is_stmt
;----------------------------------------------------------------------
; 445 | ecusim_profile_stop ();                                                
;----------------------------------------------------------------------
$C$DW$231	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$231, DW_AT_low_pc(0x00)
	.dwattr $C$DW$231, DW_AT_name("_ecusim_profile_stop")
	.dwattr $C$DW$231, DW_AT_TI_call
        call #_ecusim_profile_stop ; |445| 
                                        ; call occurs [#_ecusim_profile_stop] ; |445| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 446,column 5,is_stmt
;----------------------------------------------------------------------
; 446 | ecusim_profile_print ();                                               
;----------------------------------------------------------------------
$C$DW$232	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$232, DW_AT_low_pc(0x00)
	.dwattr $C$DW$232, DW_AT_name("_ecusim_profile_print")
	.dwattr $C$DW$232, DW_AT_TI_call
        call #_ecusim_profile_print ; |446| 
                                        ; call occurs [#_ecusim_profile_print] ; |446| 
        XAR3 = dbl(*SP(#24))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 449,column 10,is_stmt
;----------------------------------------------------------------------
; 449 | for (i=0; i<inst->TxInst.send_frame_length; i++) {                     
;----------------------------------------------------------------------
        *SP(#3) = #0 ; |449| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 449,column 15,is_stmt
        AR2 = *SP(#3) ; |449| 
        AR1 = *AR3(short(#7)) ; |449| 
        TC1 = (AR2 >= AR1) ; |449| 
        if (TC1) goto $C$L31 ; |449| 
                                        ; branchcc occurs ; |449| 
$C$DW$L$_main$52$E:
$C$L30:    
$C$DW$L$_main$53$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 450,column 7,is_stmt
;----------------------------------------------------------------------
; 450 | siuOutErrStream[i] = ecu_out_buf_start[i];                             
;----------------------------------------------------------------------
        T0 = *SP(#3) ; |450| 
        AR1 = T0  ; |450| 
        XAR2 = dbl(*SP(#126))
        XAR3 = #_siuOutErrStream ; |450| 
        mar(AR3 + AR1) ; |450| 
        *AR3 = *AR2(T0) ; |450| 
        XAR3 = dbl(*SP(#24))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 449,column 49,is_stmt
        *SP(#3) = *SP(#3) + #1 ; |449| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 449,column 15,is_stmt
        AR2 = *SP(#3) ; |449| 
        AR1 = *AR3(short(#7)) ; |449| 
        TC1 = (AR2 < AR1) ; |449| 
        if (TC1) goto $C$L30 ; |449| 
                                        ; branchcc occurs ; |449| 
$C$DW$L$_main$53$E:
$C$L31:    
$C$DW$L$_main$54$B:
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 454,column 5,is_stmt
;----------------------------------------------------------------------
; 454 | if ( (ecuSim->sig_src == ecu_SIM_SIG_SRC_FILE) ||                      
; 455 |           ((ecuSim->sig_src == ecu_SIM_SIG_SRC_SGN ) &&                
; 456 |      (ecuSim->save_to_file == TRUE))) {                                
;----------------------------------------------------------------------
        AR1 = *AR3(#90) ; |454| 
        if (AR1 == #0) goto $C$L32 ; |454| 
                                        ; branchcc occurs ; |454| 
$C$DW$L$_main$54$E:
$C$DW$L$_main$55$B:
        TC1 = (*AR3(#90) == #1) ; |454| 
        if (!TC1) goto $C$L33 ; |454| 
                                        ; branchcc occurs ; |454| 
$C$DW$L$_main$55$E:
$C$DW$L$_main$56$B:
        TC1 = (*AR3(#91) == #1) ; |454| 
        if (!TC1) goto $C$L33 ; |454| 
                                        ; branchcc occurs ; |454| 
$C$DW$L$_main$56$E:
$C$L32:    
$C$DW$L$_main$57$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 457,column 7,is_stmt
;----------------------------------------------------------------------
; 457 | ecu_sim_output (soutBuffer, siuOutErrStream);                          
;----------------------------------------------------------------------
        XAR1 = #_siuOutErrStream ; |457| 
        XAR0 = #_soutBuffer ; |457| 
$C$DW$233	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$233, DW_AT_low_pc(0x00)
	.dwattr $C$DW$233, DW_AT_name("_ecu_sim_output")
	.dwattr $C$DW$233, DW_AT_TI_call
        call #_ecu_sim_output ; |457| 
                                        ; call occurs [#_ecu_sim_output] ; |457| 
        XAR1 = dbl(*(#_ecuSim))
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 458,column 7,is_stmt
;----------------------------------------------------------------------
; 458 | ecu_sim_fwrite (soutBuffer, ecuSim->frame_size, &ecuSim->sout);        
;----------------------------------------------------------------------
        XAR0 = #_soutBuffer ; |458| 
        mar(*+AR1(#874)) ; |458| 
        T0 = *AR3(short(#7)) ; |458| 
$C$DW$234	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$234, DW_AT_low_pc(0x00)
	.dwattr $C$DW$234, DW_AT_name("_ecu_sim_fwrite")
	.dwattr $C$DW$234, DW_AT_TI_call
        call #_ecu_sim_fwrite ; |458| 
                                        ; call occurs [#_ecu_sim_fwrite] ; |458| 
$C$DW$L$_main$57$E:
$C$L33:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 454,column 5,is_stmt
$C$DW$L$_main$58$B:
        XAR3 = dbl(*SP(#24))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 462,column 5,is_stmt
;----------------------------------------------------------------------
; 462 | if (inst->companding_law == const_COMP_MULAW_8) {                      
;----------------------------------------------------------------------
        TC1 = (*AR3(#22) == #1) ; |462| 
        if (!TC1) goto $C$L35 ; |462| 
                                        ; branchcc occurs ; |462| 
$C$DW$L$_main$58$E:
$C$DW$L$_main$59$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 463,column 12,is_stmt
;----------------------------------------------------------------------
; 463 | for (i=0; i<frame_size; i++) {                                         
;----------------------------------------------------------------------
        *SP(#3) = #0 ; |463| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 463,column 17,is_stmt
        AR1 = *SP(#31) ; |463| 
        AR2 = *SP(#3) ; |463| 
        TC1 = (AR2 >= AR1) ; |463| 
        if (TC1) goto $C$L41 ; |463| 
                                        ; branchcc occurs ; |463| 
$C$DW$L$_main$59$E:
$C$L34:    
$C$DW$L$_main$60$B:
        T0 = AR2
        XAR3 = dbl(*(#_piu_segment_out))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 464,column 9,is_stmt
;----------------------------------------------------------------------
; 464 | rx_segment_out[i] = (linSample)muaTblUlaw[piu_segment_out[i]];         
;----------------------------------------------------------------------
        AR1 = *SP(#3) ; |464| 
        T0 = *AR3(T0) ; |464| 
        XAR3 = dbl(*(#_rx_segment_out))
        XAR2 = #_muaTblUlaw ; |464| 
        mar(AR3 + AR1) ; |464| 
        *AR3 = *AR2(T0) ; |464| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 463,column 31,is_stmt
        *SP(#3) = *SP(#3) + #1 ; |463| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 463,column 17,is_stmt
        AR1 = *SP(#31) ; |463| 
        AR2 = *SP(#3) ; |463| 
        TC1 = (AR2 < AR1) ; |463| 
        if (TC1) goto $C$L34 ; |463| 
                                        ; branchcc occurs ; |463| 
$C$DW$L$_main$60$E:
$C$DW$L$_main$61$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 466,column 5,is_stmt
        goto $C$L41 ; |466| 
                                        ; branch occurs ; |466| 
$C$DW$L$_main$61$E:
$C$L35:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 462,column 5,is_stmt
$C$DW$L$_main$62$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 467,column 10,is_stmt
;----------------------------------------------------------------------
; 467 | else if (inst->companding_law == const_COMP_ALAW_8) {                  
;----------------------------------------------------------------------
        AR1 = *AR3(#22) ; |467| 
        if (AR1 != #0) goto $C$L37 ; |467| 
                                        ; branchcc occurs ; |467| 
$C$DW$L$_main$62$E:
$C$DW$L$_main$63$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 468,column 12,is_stmt
;----------------------------------------------------------------------
; 468 | for (i=0; i<frame_size; i++) {                                         
;----------------------------------------------------------------------
        *SP(#3) = #0 ; |468| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 468,column 17,is_stmt
        AR1 = *SP(#31) ; |468| 
        AR2 = *SP(#3) ; |468| 
        TC1 = (AR2 >= AR1) ; |468| 
        if (TC1) goto $C$L41 ; |468| 
                                        ; branchcc occurs ; |468| 
$C$DW$L$_main$63$E:
$C$L36:    
$C$DW$L$_main$64$B:
        T0 = AR2
        XAR3 = dbl(*(#_piu_segment_out))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 469,column 9,is_stmt
;----------------------------------------------------------------------
; 469 | rx_segment_out[i] = (linSample)muaTblAlaw[piu_segment_out[i]];         
;----------------------------------------------------------------------
        AR1 = *SP(#3) ; |469| 
        T0 = *AR3(T0) ; |469| 
        XAR3 = dbl(*(#_rx_segment_out))
        XAR2 = #_muaTblAlaw ; |469| 
        mar(AR3 + AR1) ; |469| 
        *AR3 = *AR2(T0) ; |469| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 468,column 31,is_stmt
        *SP(#3) = *SP(#3) + #1 ; |468| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 468,column 17,is_stmt
        AR1 = *SP(#31) ; |468| 
        AR2 = *SP(#3) ; |468| 
        TC1 = (AR2 < AR1) ; |468| 
        if (TC1) goto $C$L36 ; |468| 
                                        ; branchcc occurs ; |468| 
$C$DW$L$_main$64$E:
$C$DW$L$_main$65$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 471,column 5,is_stmt
        goto $C$L41 ; |471| 
                                        ; branch occurs ; |471| 
$C$DW$L$_main$65$E:
$C$L37:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 467,column 10,is_stmt
$C$DW$L$_main$66$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 472,column 10,is_stmt
;----------------------------------------------------------------------
; 472 | else if (inst->companding_law == const_COMP_LINEAR) {                  
;----------------------------------------------------------------------
        TC1 = (*AR3(#22) == #2) ; |472| 
        if (!TC1) goto $C$L39 ; |472| 
                                        ; branchcc occurs ; |472| 
$C$DW$L$_main$66$E:
$C$DW$L$_main$67$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 473,column 12,is_stmt
;----------------------------------------------------------------------
; 473 | for (i=0; i<frame_size; i++) {                                         
;----------------------------------------------------------------------
        *SP(#3) = #0 ; |473| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 473,column 17,is_stmt
        AR1 = *SP(#31) ; |473| 
        AR2 = *SP(#3) ; |473| 
        TC1 = (AR2 >= AR1) ; |473| 
        if (TC1) goto $C$L41 ; |473| 
                                        ; branchcc occurs ; |473| 
$C$DW$L$_main$67$E:
$C$L38:    
$C$DW$L$_main$68$B:
        XAR3 = dbl(*SP(#24))
        T0 = AR2
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 474,column 9,is_stmt
;----------------------------------------------------------------------
; 474 | rx_segment_out[i] = (linSample) (piu_segment_out[i] << (16 - inst->pcm_
;     | bits));                                                                
;----------------------------------------------------------------------
        AR1 = #16 ; |474| 
        T1 = AR1 - *AR3(#23) ; |474| 
        XAR3 = dbl(*(#_piu_segment_out))
        AC0 = *AR3(T0) ; |474| 
        XAR3 = dbl(*(#_rx_segment_out))
        AC0 = AC0 << T1 ; |474| 
        *AR3(T0) = AC0 ; |474| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 473,column 17,is_stmt
        AR1 = *SP(#31) ; |473| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 473,column 31,is_stmt
        *SP(#3) = *SP(#3) + #1 ; |473| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 473,column 17,is_stmt
        AR2 = *SP(#3) ; |473| 
        TC1 = (AR2 < AR1) ; |473| 
        if (TC1) goto $C$L38 ; |473| 
                                        ; branchcc occurs ; |473| 
$C$DW$L$_main$68$E:
$C$DW$L$_main$69$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 476,column 5,is_stmt
;----------------------------------------------------------------------
; 477 | else {                          /* use u-law in transparent mode */    
;----------------------------------------------------------------------
        goto $C$L41 ; |476| 
                                        ; branch occurs ; |476| 
$C$DW$L$_main$69$E:
$C$L39:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 472,column 10,is_stmt
$C$DW$L$_main$70$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 478,column 12,is_stmt
;----------------------------------------------------------------------
; 478 | for (i=0; i<frame_size; i++) {                                         
;----------------------------------------------------------------------
        *SP(#3) = #0 ; |478| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 478,column 17,is_stmt
        AR1 = *SP(#31) ; |478| 
        AR2 = *SP(#3) ; |478| 
        TC1 = (AR2 >= AR1) ; |478| 
        if (TC1) goto $C$L41 ; |478| 
                                        ; branchcc occurs ; |478| 
$C$DW$L$_main$70$E:
$C$L40:    
$C$DW$L$_main$71$B:
        T0 = AR2
        XAR3 = dbl(*(#_piu_segment_out))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 479,column 9,is_stmt
;----------------------------------------------------------------------
; 479 | rx_segment_out[i] = (linSample)muaTblUlaw[piu_segment_out[i]];         
;----------------------------------------------------------------------
        AR1 = *SP(#3) ; |479| 
        T0 = *AR3(T0) ; |479| 
        XAR3 = dbl(*(#_rx_segment_out))
        XAR2 = #_muaTblUlaw ; |479| 
        mar(AR3 + AR1) ; |479| 
        *AR3 = *AR2(T0) ; |479| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 478,column 31,is_stmt
        *SP(#3) = *SP(#3) + #1 ; |478| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 478,column 17,is_stmt
        AR1 = *SP(#31) ; |478| 
        AR2 = *SP(#3) ; |478| 
        TC1 = (AR2 < AR1) ; |478| 
        if (TC1) goto $C$L40 ; |478| 
                                        ; branchcc occurs ; |478| 
$C$DW$L$_main$71$E:
$C$L41:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 466,column 5,is_stmt
$C$DW$L$_main$72$B:
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 484,column 5,is_stmt
;----------------------------------------------------------------------
; 484 | if ( (ecuSim->sig_src == ecu_SIM_SIG_SRC_FILE) ||                      
; 485 |           ((ecuSim->sig_src == ecu_SIM_SIG_SRC_SGN ) &&                
; 486 |      (ecuSim->save_to_file == TRUE))) {                                
;----------------------------------------------------------------------
        AR1 = *AR3(#90) ; |484| 
        if (AR1 == #0) goto $C$L42 ; |484| 
                                        ; branchcc occurs ; |484| 
$C$DW$L$_main$72$E:
$C$DW$L$_main$73$B:
        TC1 = (*AR3(#90) == #1) ; |484| 
        if (!TC1) goto $C$L43 ; |484| 
                                        ; branchcc occurs ; |484| 
$C$DW$L$_main$73$E:
$C$DW$L$_main$74$B:
        TC1 = (*AR3(#91) == #1) ; |484| 
        if (!TC1) goto $C$L43 ; |484| 
                                        ; branchcc occurs ; |484| 
$C$DW$L$_main$74$E:
$C$L42:    
$C$DW$L$_main$75$B:
        XAR1 = dbl(*(#_rx_segment_out))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 487,column 7,is_stmt
;----------------------------------------------------------------------
; 487 | ecu_sim_output (routBuffer, rx_segment_out);                           
;----------------------------------------------------------------------
        XAR0 = #_routBuffer ; |487| 
$C$DW$235	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$235, DW_AT_low_pc(0x00)
	.dwattr $C$DW$235, DW_AT_name("_ecu_sim_output")
	.dwattr $C$DW$235, DW_AT_TI_call
        call #_ecu_sim_output ; |487| 
                                        ; call occurs [#_ecu_sim_output] ; |487| 
        XAR1 = dbl(*(#_ecuSim))
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 488,column 7,is_stmt
;----------------------------------------------------------------------
; 488 | ecu_sim_fwrite (routBuffer, ecuSim->frame_size, &ecuSim->rout);        
;----------------------------------------------------------------------
        XAR0 = #_routBuffer ; |488| 
        mar(*+AR1(#614)) ; |488| 
        T0 = *AR3(short(#7)) ; |488| 
$C$DW$236	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$236, DW_AT_low_pc(0x00)
	.dwattr $C$DW$236, DW_AT_name("_ecu_sim_fwrite")
	.dwattr $C$DW$236, DW_AT_TI_call
        call #_ecu_sim_fwrite ; |488| 
                                        ; call occurs [#_ecu_sim_fwrite] ; |488| 
$C$DW$L$_main$75$E:
$C$L43:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 484,column 5,is_stmt
$C$DW$L$_main$76$B:
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 492,column 5,is_stmt
;----------------------------------------------------------------------
; 492 | sample_count += ecuSim->frame_size;                                    
;----------------------------------------------------------------------
        AR1 = *AR3(short(#7)) ; |492| 
        AR1 = AR1 + *FP(#128) ; |492| 
        *FP(#128) = AR1 ; |492| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 493,column 5,is_stmt
;----------------------------------------------------------------------
; 493 | if (sample_count >= ecuSim->Fs) {                                      
;----------------------------------------------------------------------
        AR2 = *FP(#128) ; |493| 
        AR1 = *AR3(#88) ; |493| 
        TC1 = uns(AR2 < AR1) ; |493| 
        if (TC1) goto $C$L44 ; |493| 
                                        ; branchcc occurs ; |493| 
$C$DW$L$_main$76$E:
$C$DW$L$_main$77$B:
        AC0 = AR2
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 494,column 7,is_stmt
;----------------------------------------------------------------------
; 494 | sample_count -= ecuSim->Fs;                                            
; 495 | sec_count++;                                                           
;----------------------------------------------------------------------
        AC0 = AC0 - uns(*AR3(#88)) ; |494| 
        *FP(#128) = AC0 ; |494| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 496,column 7,is_stmt
;----------------------------------------------------------------------
; 496 | printf (" - Progress: %d seconds\n", sec_count);                       
;----------------------------------------------------------------------
        XAR3 = #$C$FSL12 ; |496| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 495,column 7,is_stmt
        *FP(#129) = *FP(#129) + #1 ; |495| 
        dbl(*SP(#0)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 496,column 7,is_stmt
        AR1 = *FP(#129) ; |496| 
        *SP(#2) = AR1 ; |496| 
$C$DW$237	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$237, DW_AT_low_pc(0x00)
	.dwattr $C$DW$237, DW_AT_name("_printf")
	.dwattr $C$DW$237, DW_AT_TI_call
        call #_printf ; |496| 
        nop       ;                     avoids Silicon Exception CPU_90
                                        ; call occurs [#_printf] ; |496| 
$C$DW$L$_main$77$E:
$C$L44:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 493,column 5,is_stmt
$C$DW$L$_main$78$B:
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 500,column 5,is_stmt
;----------------------------------------------------------------------
; 500 | ecuSim->sample_cnt = ((tulong)sec_count * ecuSim->Fs) + sample_count;  
;----------------------------------------------------------------------
        T1 = *AR3(#88) ; |500| 
        AC0 = uns(T1 * *FP(#129)) ; |500| 
        AC0 = AC0 + uns(*FP(#128)) ; |500| 
        dbl(*AR3(short(#2))) = AC0 ; |500| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 501,column 3,is_stmt
        AR1 = *SP(#36) ; |501| 
        if (AR1 != #0) goto $C$L18 ; |501| 
                                        ; branchcc occurs ; |501| 
$C$DW$L$_main$78$E:
$C$L45:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 503,column 3,is_stmt
;----------------------------------------------------------------------
; 503 | ecusim_profile_close ();                                               
;----------------------------------------------------------------------
$C$DW$238	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$238, DW_AT_low_pc(0x00)
	.dwattr $C$DW$238, DW_AT_name("_ecusim_profile_close")
	.dwattr $C$DW$238, DW_AT_TI_call
        call #_ecusim_profile_close ; |503| 
                                        ; call occurs [#_ecusim_profile_close] ; |503| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 506,column 3,is_stmt
;----------------------------------------------------------------------
; 506 | if ( (ecuSim->sig_src == ecu_SIM_SIG_SRC_FILE) ||                      
; 507 |           ((ecuSim->sig_src == ecu_SIM_SIG_SRC_SGN)  &&                
; 508 |      (ecuSim->save_to_file == TRUE))) {                                
;----------------------------------------------------------------------
        AR1 = *AR3(#90) ; |506| 
        if (AR1 == #0) goto $C$L46 ; |506| 
                                        ; branchcc occurs ; |506| 
        TC1 = (*AR3(#90) == #1) ; |506| 
        if (!TC1) goto $C$L47 ; |506| 
                                        ; branchcc occurs ; |506| 
        TC1 = (*AR3(#91) == #1) ; |506| 
        if (!TC1) goto $C$L47 ; |506| 
                                        ; branchcc occurs ; |506| 
$C$L46:    
        XAR0 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 509,column 5,is_stmt
;----------------------------------------------------------------------
; 509 | ecu_sim_fileio_end (&ecuSim->rin);                                     
;----------------------------------------------------------------------
        mar(AR0 + #94) ; |509| 
$C$DW$239	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$239, DW_AT_low_pc(0x00)
	.dwattr $C$DW$239, DW_AT_name("_ecu_sim_fileio_end")
	.dwattr $C$DW$239, DW_AT_TI_call
        call #_ecu_sim_fileio_end ; |509| 
                                        ; call occurs [#_ecu_sim_fileio_end] ; |509| 
        XAR0 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 510,column 5,is_stmt
;----------------------------------------------------------------------
; 510 | ecu_sim_fileio_end (&ecuSim->sin);                                     
;----------------------------------------------------------------------
        mar(*+AR0(#354)) ; |510| 
$C$DW$240	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$240, DW_AT_low_pc(0x00)
	.dwattr $C$DW$240, DW_AT_name("_ecu_sim_fileio_end")
	.dwattr $C$DW$240, DW_AT_TI_call
        call #_ecu_sim_fileio_end ; |510| 
                                        ; call occurs [#_ecu_sim_fileio_end] ; |510| 
        XAR0 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 511,column 5,is_stmt
;----------------------------------------------------------------------
; 511 | ecu_sim_fileio_end (&ecuSim->rout);                                    
;----------------------------------------------------------------------
        mar(*+AR0(#614)) ; |511| 
$C$DW$241	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$241, DW_AT_low_pc(0x00)
	.dwattr $C$DW$241, DW_AT_name("_ecu_sim_fileio_end")
	.dwattr $C$DW$241, DW_AT_TI_call
        call #_ecu_sim_fileio_end ; |511| 
                                        ; call occurs [#_ecu_sim_fileio_end] ; |511| 
        XAR0 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 512,column 5,is_stmt
;----------------------------------------------------------------------
; 512 | ecu_sim_fileio_end (&ecuSim->sout);                                    
;----------------------------------------------------------------------
        mar(*+AR0(#874)) ; |512| 
$C$DW$242	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$242, DW_AT_low_pc(0x00)
	.dwattr $C$DW$242, DW_AT_name("_ecu_sim_fileio_end")
	.dwattr $C$DW$242, DW_AT_TI_call
        call #_ecu_sim_fileio_end ; |512| 
                                        ; call occurs [#_ecu_sim_fileio_end] ; |512| 
$C$L47:    
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 514,column 3,is_stmt
;----------------------------------------------------------------------
; 514 | ecuSim->error_id = ecu_SIM_END;                                        
;----------------------------------------------------------------------
        *AR3(#89) = #16 ; |514| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c",line 515,column 3,is_stmt
;----------------------------------------------------------------------
; 515 | ecuSim->exec     = FALSE;                                              
; 516 | //ecu_halt (&ecuSim->exec);                                            
;----------------------------------------------------------------------
        *AR3 = #0 ; |515| 

        @SP_L = @SP_L + #130
||      mmap()

	.dwcfi	cfa_offset, 2
        XFP = popboth()
	.dwcfi	restore_reg, 32
	.dwcfi	cfa_offset, 1
$C$DW$243	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$243, DW_AT_low_pc(0x00)
	.dwattr $C$DW$243, DW_AT_TI_return
        return
                                        ; return occurs

$C$DW$244	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$244, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\ecu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\ecusim.asm:$C$L18:1:1373047931")
	.dwattr $C$DW$244, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c")
	.dwattr $C$DW$244, DW_AT_TI_begin_line(0x158)
	.dwattr $C$DW$244, DW_AT_TI_end_line(0x1f5)
$C$DW$245	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$245, DW_AT_low_pc($C$DW$L$_main$27$B)
	.dwattr $C$DW$245, DW_AT_high_pc($C$DW$L$_main$27$E)
$C$DW$246	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$246, DW_AT_low_pc($C$DW$L$_main$66$B)
	.dwattr $C$DW$246, DW_AT_high_pc($C$DW$L$_main$66$E)
$C$DW$247	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$247, DW_AT_low_pc($C$DW$L$_main$62$B)
	.dwattr $C$DW$247, DW_AT_high_pc($C$DW$L$_main$62$E)
$C$DW$248	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$248, DW_AT_low_pc($C$DW$L$_main$28$B)
	.dwattr $C$DW$248, DW_AT_high_pc($C$DW$L$_main$28$E)
$C$DW$249	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$249, DW_AT_low_pc($C$DW$L$_main$29$B)
	.dwattr $C$DW$249, DW_AT_high_pc($C$DW$L$_main$29$E)
$C$DW$250	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$250, DW_AT_low_pc($C$DW$L$_main$30$B)
	.dwattr $C$DW$250, DW_AT_high_pc($C$DW$L$_main$30$E)
$C$DW$251	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$251, DW_AT_low_pc($C$DW$L$_main$31$B)
	.dwattr $C$DW$251, DW_AT_high_pc($C$DW$L$_main$31$E)
$C$DW$252	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$252, DW_AT_low_pc($C$DW$L$_main$32$B)
	.dwattr $C$DW$252, DW_AT_high_pc($C$DW$L$_main$32$E)
$C$DW$253	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$253, DW_AT_low_pc($C$DW$L$_main$33$B)
	.dwattr $C$DW$253, DW_AT_high_pc($C$DW$L$_main$33$E)
$C$DW$254	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$254, DW_AT_low_pc($C$DW$L$_main$34$B)
	.dwattr $C$DW$254, DW_AT_high_pc($C$DW$L$_main$34$E)
$C$DW$255	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$255, DW_AT_low_pc($C$DW$L$_main$35$B)
	.dwattr $C$DW$255, DW_AT_high_pc($C$DW$L$_main$35$E)
$C$DW$256	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$256, DW_AT_low_pc($C$DW$L$_main$36$B)
	.dwattr $C$DW$256, DW_AT_high_pc($C$DW$L$_main$36$E)
$C$DW$257	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$257, DW_AT_low_pc($C$DW$L$_main$37$B)
	.dwattr $C$DW$257, DW_AT_high_pc($C$DW$L$_main$37$E)
$C$DW$258	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$258, DW_AT_low_pc($C$DW$L$_main$38$B)
	.dwattr $C$DW$258, DW_AT_high_pc($C$DW$L$_main$38$E)
$C$DW$259	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$259, DW_AT_low_pc($C$DW$L$_main$39$B)
	.dwattr $C$DW$259, DW_AT_high_pc($C$DW$L$_main$39$E)
$C$DW$260	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$260, DW_AT_low_pc($C$DW$L$_main$40$B)
	.dwattr $C$DW$260, DW_AT_high_pc($C$DW$L$_main$40$E)
$C$DW$261	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$261, DW_AT_low_pc($C$DW$L$_main$41$B)
	.dwattr $C$DW$261, DW_AT_high_pc($C$DW$L$_main$41$E)
$C$DW$262	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$262, DW_AT_low_pc($C$DW$L$_main$42$B)
	.dwattr $C$DW$262, DW_AT_high_pc($C$DW$L$_main$42$E)
$C$DW$263	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$263, DW_AT_low_pc($C$DW$L$_main$43$B)
	.dwattr $C$DW$263, DW_AT_high_pc($C$DW$L$_main$43$E)
$C$DW$264	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$264, DW_AT_low_pc($C$DW$L$_main$44$B)
	.dwattr $C$DW$264, DW_AT_high_pc($C$DW$L$_main$44$E)
$C$DW$265	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$265, DW_AT_low_pc($C$DW$L$_main$45$B)
	.dwattr $C$DW$265, DW_AT_high_pc($C$DW$L$_main$45$E)
$C$DW$266	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$266, DW_AT_low_pc($C$DW$L$_main$46$B)
	.dwattr $C$DW$266, DW_AT_high_pc($C$DW$L$_main$46$E)
$C$DW$267	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$267, DW_AT_low_pc($C$DW$L$_main$47$B)
	.dwattr $C$DW$267, DW_AT_high_pc($C$DW$L$_main$47$E)
$C$DW$268	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$268, DW_AT_low_pc($C$DW$L$_main$48$B)
	.dwattr $C$DW$268, DW_AT_high_pc($C$DW$L$_main$48$E)
$C$DW$269	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$269, DW_AT_low_pc($C$DW$L$_main$49$B)
	.dwattr $C$DW$269, DW_AT_high_pc($C$DW$L$_main$49$E)
$C$DW$270	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$270, DW_AT_low_pc($C$DW$L$_main$50$B)
	.dwattr $C$DW$270, DW_AT_high_pc($C$DW$L$_main$50$E)
$C$DW$271	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$271, DW_AT_low_pc($C$DW$L$_main$51$B)
	.dwattr $C$DW$271, DW_AT_high_pc($C$DW$L$_main$51$E)
$C$DW$272	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$272, DW_AT_low_pc($C$DW$L$_main$52$B)
	.dwattr $C$DW$272, DW_AT_high_pc($C$DW$L$_main$52$E)
$C$DW$273	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$273, DW_AT_low_pc($C$DW$L$_main$54$B)
	.dwattr $C$DW$273, DW_AT_high_pc($C$DW$L$_main$54$E)
$C$DW$274	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$274, DW_AT_low_pc($C$DW$L$_main$55$B)
	.dwattr $C$DW$274, DW_AT_high_pc($C$DW$L$_main$55$E)
$C$DW$275	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$275, DW_AT_low_pc($C$DW$L$_main$56$B)
	.dwattr $C$DW$275, DW_AT_high_pc($C$DW$L$_main$56$E)
$C$DW$276	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$276, DW_AT_low_pc($C$DW$L$_main$57$B)
	.dwattr $C$DW$276, DW_AT_high_pc($C$DW$L$_main$57$E)
$C$DW$277	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$277, DW_AT_low_pc($C$DW$L$_main$58$B)
	.dwattr $C$DW$277, DW_AT_high_pc($C$DW$L$_main$58$E)
$C$DW$278	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$278, DW_AT_low_pc($C$DW$L$_main$59$B)
	.dwattr $C$DW$278, DW_AT_high_pc($C$DW$L$_main$59$E)
$C$DW$279	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$279, DW_AT_low_pc($C$DW$L$_main$61$B)
	.dwattr $C$DW$279, DW_AT_high_pc($C$DW$L$_main$61$E)
$C$DW$280	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$280, DW_AT_low_pc($C$DW$L$_main$63$B)
	.dwattr $C$DW$280, DW_AT_high_pc($C$DW$L$_main$63$E)
$C$DW$281	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$281, DW_AT_low_pc($C$DW$L$_main$65$B)
	.dwattr $C$DW$281, DW_AT_high_pc($C$DW$L$_main$65$E)
$C$DW$282	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$282, DW_AT_low_pc($C$DW$L$_main$67$B)
	.dwattr $C$DW$282, DW_AT_high_pc($C$DW$L$_main$67$E)
$C$DW$283	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$283, DW_AT_low_pc($C$DW$L$_main$69$B)
	.dwattr $C$DW$283, DW_AT_high_pc($C$DW$L$_main$69$E)
$C$DW$284	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$284, DW_AT_low_pc($C$DW$L$_main$70$B)
	.dwattr $C$DW$284, DW_AT_high_pc($C$DW$L$_main$70$E)
$C$DW$285	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$285, DW_AT_low_pc($C$DW$L$_main$72$B)
	.dwattr $C$DW$285, DW_AT_high_pc($C$DW$L$_main$72$E)
$C$DW$286	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$286, DW_AT_low_pc($C$DW$L$_main$73$B)
	.dwattr $C$DW$286, DW_AT_high_pc($C$DW$L$_main$73$E)
$C$DW$287	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$287, DW_AT_low_pc($C$DW$L$_main$74$B)
	.dwattr $C$DW$287, DW_AT_high_pc($C$DW$L$_main$74$E)
$C$DW$288	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$288, DW_AT_low_pc($C$DW$L$_main$75$B)
	.dwattr $C$DW$288, DW_AT_high_pc($C$DW$L$_main$75$E)
$C$DW$289	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$289, DW_AT_low_pc($C$DW$L$_main$76$B)
	.dwattr $C$DW$289, DW_AT_high_pc($C$DW$L$_main$76$E)
$C$DW$290	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$290, DW_AT_low_pc($C$DW$L$_main$77$B)
	.dwattr $C$DW$290, DW_AT_high_pc($C$DW$L$_main$77$E)
$C$DW$291	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$291, DW_AT_low_pc($C$DW$L$_main$78$B)
	.dwattr $C$DW$291, DW_AT_high_pc($C$DW$L$_main$78$E)

$C$DW$292	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$292, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\ecu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\ecusim.asm:$C$L38:2:1373047931")
	.dwattr $C$DW$292, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c")
	.dwattr $C$DW$292, DW_AT_TI_begin_line(0x1d9)
	.dwattr $C$DW$292, DW_AT_TI_end_line(0x1db)
$C$DW$293	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$293, DW_AT_low_pc($C$DW$L$_main$68$B)
	.dwattr $C$DW$293, DW_AT_high_pc($C$DW$L$_main$68$E)
	.dwendtag $C$DW$292


$C$DW$294	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$294, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\ecu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\ecusim.asm:$C$L36:2:1373047931")
	.dwattr $C$DW$294, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c")
	.dwattr $C$DW$294, DW_AT_TI_begin_line(0x1d4)
	.dwattr $C$DW$294, DW_AT_TI_end_line(0x1d6)
$C$DW$295	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$295, DW_AT_low_pc($C$DW$L$_main$64$B)
	.dwattr $C$DW$295, DW_AT_high_pc($C$DW$L$_main$64$E)
	.dwendtag $C$DW$294


$C$DW$296	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$296, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\ecu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\ecusim.asm:$C$L34:2:1373047931")
	.dwattr $C$DW$296, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c")
	.dwattr $C$DW$296, DW_AT_TI_begin_line(0x1cf)
	.dwattr $C$DW$296, DW_AT_TI_end_line(0x1d1)
$C$DW$297	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$297, DW_AT_low_pc($C$DW$L$_main$60$B)
	.dwattr $C$DW$297, DW_AT_high_pc($C$DW$L$_main$60$E)
	.dwendtag $C$DW$296


$C$DW$298	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$298, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\ecu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\ecusim.asm:$C$L30:2:1373047931")
	.dwattr $C$DW$298, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c")
	.dwattr $C$DW$298, DW_AT_TI_begin_line(0x1c1)
	.dwattr $C$DW$298, DW_AT_TI_end_line(0x1c3)
$C$DW$299	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$299, DW_AT_low_pc($C$DW$L$_main$53$B)
	.dwattr $C$DW$299, DW_AT_high_pc($C$DW$L$_main$53$E)
	.dwendtag $C$DW$298


$C$DW$300	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$300, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\ecu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\ecusim.asm:$C$L40:2:1373047931")
	.dwattr $C$DW$300, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c")
	.dwattr $C$DW$300, DW_AT_TI_begin_line(0x1de)
	.dwattr $C$DW$300, DW_AT_TI_end_line(0x1e0)
$C$DW$301	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$301, DW_AT_low_pc($C$DW$L$_main$71$B)
	.dwattr $C$DW$301, DW_AT_high_pc($C$DW$L$_main$71$E)
	.dwendtag $C$DW$300

	.dwendtag $C$DW$244


$C$DW$302	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$302, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\ecu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\ecusim.asm:$C$L12:1:1373047931")
	.dwattr $C$DW$302, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c")
	.dwattr $C$DW$302, DW_AT_TI_begin_line(0x11f)
	.dwattr $C$DW$302, DW_AT_TI_end_line(0x120)
$C$DW$303	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$303, DW_AT_low_pc($C$DW$L$_main$18$B)
	.dwattr $C$DW$303, DW_AT_high_pc($C$DW$L$_main$18$E)
	.dwendtag $C$DW$302

	.dwattr $C$DW$157, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecusim.c")
	.dwattr $C$DW$157, DW_AT_TI_end_line(0x205)
	.dwattr $C$DW$157, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$157

;*******************************************************************************
;* FAR STRINGS                                                                 *
;*******************************************************************************
	.sect	".const:.string"
	.align	2
$C$FSL1:	.string	"M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test"
	.string	"/src/ecusim.c(207)",0
	.align	2
$C$FSL2:	.string	"M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test"
	.string	"/src/ecusim.c(219)",0
	.align	2
$C$FSL3:	.string	"M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test"
	.string	"/src/ecusim.c(221)",0
	.align	2
$C$FSL4:	.string	"M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test"
	.string	"/src/ecusim.c(235)",0
	.align	2
$C$FSL5:	.string	"M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test"
	.string	"/src/ecusim.c(280)",0
	.align	2
$C$FSL6:	.string	"M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test"
	.string	"/src/ecusim.c(285)",0
	.align	2
$C$FSL7:	.string	"M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test"
	.string	"/src/ecusim.c(293)",0
	.align	2
$C$FSL8:	.string	"rin_sgn.pcm",0
	.align	2
$C$FSL9:	.string	"sin_sgn.pcm",0
	.align	2
$C$FSL10:	.string	"rout_sgn.pcm",0
	.align	2
$C$FSL11:	.string	"sout_sgn.pcm",0
	.align	2
$C$FSL12:	.string	" - Progress: %d seconds",10,0
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_printf
	.global	_strcpy
	.global	_utlLsMemSet
	.global	_hybAddEcho
	.global	_hybControl
	.global	_mhmCreate
	.global	_mhmAlloc
	.global	_ecuControl
	.global	_ecuGetFilter
	.global	_ecuSendIn
	.global	_siuInit
	.global	_siuDebug
	.global	_siuException
	.global	_siu_new_piu
	.global	_siu_open_piu
	.global	_siu_open_tx
	.global	_piuReceiveIn
	.global	_piuControl
	.global	_piuSendIn
	.global	_piuReceiveOut
	.global	_ecu_sim_fileio_init
	.global	_ecu_sim_fileio_end
	.global	_ecu_sim_input
	.global	_ecu_sim_output
	.global	_ecu_sim_fread
	.global	_ecu_sim_fwrite
	.global	_ecusim_profile_close
	.global	_ecusim_profile_print
	.global	_ecusim_profile_init
	.global	_ecusim_profile_start
	.global	_ecusim_profile_stop
	.global	_generate_tx_tone_frame
	.global	_convert_tx_tone_frame
	.global	_generate_rx_tone_frame
	.global	_siu_new_ecu
	.global	_siu_open_ecu
	.global	_siu_open_txhyb
	.global	_siu_open_rxsgn
	.global	_siu_open_txsgn
	.global	_siu_set_sgn
	.global	_ecu_sim_init
	.global	_muaTblAlaw
	.global	_muaTblUlaw
	.global	_ecuContext
	.global	_siuContext
	.global	_siuInst
	.global	_rinBuffer
	.global	_sinBuffer
	.global	_routBuffer
	.global	_soutBuffer
	.global	_ecuProfile
	.global	_siu_voice_heap
	.global	_siu_core_heap
	.global	_sgnTxInst
	.global	_sgnRxInst
	.global	_hybTxInst
	.global	_siuOutErrStream
	.global	_ecuSim

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x06)
$C$DW$304	.dwtag  DW_TAG_member
	.dwattr $C$DW$304, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$304, DW_AT_name("length")
	.dwattr $C$DW$304, DW_AT_TI_symbol_name("_length")
	.dwattr $C$DW$304, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$304, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$305	.dwtag  DW_TAG_member
	.dwattr $C$DW$305, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$305, DW_AT_name("h")
	.dwattr $C$DW$305, DW_AT_TI_symbol_name("_h")
	.dwattr $C$DW$305, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$305, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$306	.dwtag  DW_TAG_member
	.dwattr $C$DW$306, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$306, DW_AT_name("exp")
	.dwattr $C$DW$306, DW_AT_TI_symbol_name("_exp")
	.dwattr $C$DW$306, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$306, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$307	.dwtag  DW_TAG_member
	.dwattr $C$DW$307, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$307, DW_AT_name("erl0")
	.dwattr $C$DW$307, DW_AT_TI_symbol_name("_erl0")
	.dwattr $C$DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$307, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$24


$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x01)
$C$DW$308	.dwtag  DW_TAG_member
	.dwattr $C$DW$308, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$308, DW_AT_name("tone_scaling")
	.dwattr $C$DW$308, DW_AT_TI_symbol_name("_tone_scaling")
	.dwattr $C$DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$308, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$28


$C$DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x0a)
$C$DW$309	.dwtag  DW_TAG_member
	.dwattr $C$DW$309, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$309, DW_AT_name("type")
	.dwattr $C$DW$309, DW_AT_TI_symbol_name("_type")
	.dwattr $C$DW$309, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$309, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$310	.dwtag  DW_TAG_member
	.dwattr $C$DW$310, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$310, DW_AT_name("erl")
	.dwattr $C$DW$310, DW_AT_TI_symbol_name("_erl")
	.dwattr $C$DW$310, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$310, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$311	.dwtag  DW_TAG_member
	.dwattr $C$DW$311, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$311, DW_AT_name("delay")
	.dwattr $C$DW$311, DW_AT_TI_symbol_name("_delay")
	.dwattr $C$DW$311, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$311, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$312	.dwtag  DW_TAG_member
	.dwattr $C$DW$312, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$312, DW_AT_name("negative_phase")
	.dwattr $C$DW$312, DW_AT_TI_symbol_name("_negative_phase")
	.dwattr $C$DW$312, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$312, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$313	.dwtag  DW_TAG_member
	.dwattr $C$DW$313, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$313, DW_AT_name("u")
	.dwattr $C$DW$313, DW_AT_TI_symbol_name("_u")
	.dwattr $C$DW$313, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$313, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$29

$C$DW$T$76	.dwtag  DW_TAG_typedef, DW_AT_name("hybSegment_t")
	.dwattr $C$DW$T$76, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$76, DW_AT_language(DW_LANG_C)

$C$DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x0c)
$C$DW$314	.dwtag  DW_TAG_member
	.dwattr $C$DW$314, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$314, DW_AT_name("code")
	.dwattr $C$DW$314, DW_AT_TI_symbol_name("_code")
	.dwattr $C$DW$314, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$314, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$315	.dwtag  DW_TAG_member
	.dwattr $C$DW$315, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$315, DW_AT_name("u")
	.dwattr $C$DW$315, DW_AT_TI_symbol_name("_u")
	.dwattr $C$DW$315, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$315, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$30

$C$DW$T$103	.dwtag  DW_TAG_typedef, DW_AT_name("hybControl_t")
	.dwattr $C$DW$T$103, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$103, DW_AT_language(DW_LANG_C)
$C$DW$T$109	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$109, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$T$109, DW_AT_address_class(0x17)

$C$DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x03)
$C$DW$316	.dwtag  DW_TAG_member
	.dwattr $C$DW$316, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$316, DW_AT_name("ctl_code")
	.dwattr $C$DW$316, DW_AT_TI_symbol_name("_ctl_code")
	.dwattr $C$DW$316, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$316, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$317	.dwtag  DW_TAG_member
	.dwattr $C$DW$317, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$317, DW_AT_name("u")
	.dwattr $C$DW$317, DW_AT_TI_symbol_name("_u")
	.dwattr $C$DW$317, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$317, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$31

$C$DW$T$102	.dwtag  DW_TAG_typedef, DW_AT_name("ecuControl_t")
	.dwattr $C$DW$T$102, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$102, DW_AT_language(DW_LANG_C)
$C$DW$T$112	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$112, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$T$112, DW_AT_address_class(0x17)

$C$DW$T$39	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x0c)
$C$DW$318	.dwtag  DW_TAG_member
	.dwattr $C$DW$318, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$318, DW_AT_name("ID")
	.dwattr $C$DW$318, DW_AT_TI_symbol_name("_ID")
	.dwattr $C$DW$318, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$318, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$319	.dwtag  DW_TAG_member
	.dwattr $C$DW$319, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$319, DW_AT_name("exception")
	.dwattr $C$DW$319, DW_AT_TI_symbol_name("_exception")
	.dwattr $C$DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$319, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$320	.dwtag  DW_TAG_member
	.dwattr $C$DW$320, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$320, DW_AT_name("debug")
	.dwattr $C$DW$320, DW_AT_TI_symbol_name("_debug")
	.dwattr $C$DW$320, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$320, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$321	.dwtag  DW_TAG_member
	.dwattr $C$DW$321, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$321, DW_AT_name("companding_law")
	.dwattr $C$DW$321, DW_AT_TI_symbol_name("_companding_law")
	.dwattr $C$DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$321, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$322	.dwtag  DW_TAG_member
	.dwattr $C$DW$322, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$322, DW_AT_name("pcm_bits")
	.dwattr $C$DW$322, DW_AT_TI_symbol_name("_pcm_bits")
	.dwattr $C$DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$322, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$323	.dwtag  DW_TAG_member
	.dwattr $C$DW$323, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$323, DW_AT_name("core_heap")
	.dwattr $C$DW$323, DW_AT_TI_symbol_name("_core_heap")
	.dwattr $C$DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$323, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$324	.dwtag  DW_TAG_member
	.dwattr $C$DW$324, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$324, DW_AT_name("voice_heap")
	.dwattr $C$DW$324, DW_AT_TI_symbol_name("_voice_heap")
	.dwattr $C$DW$324, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$324, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$39

$C$DW$T$115	.dwtag  DW_TAG_typedef, DW_AT_name("siuConfig_t")
	.dwattr $C$DW$T$115, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$115, DW_AT_language(DW_LANG_C)
$C$DW$T$116	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$116, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$T$116, DW_AT_address_class(0x17)

$C$DW$T$41	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x06)
$C$DW$325	.dwtag  DW_TAG_member
	.dwattr $C$DW$325, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$325, DW_AT_name("frame_size")
	.dwattr $C$DW$325, DW_AT_TI_symbol_name("_frame_size")
	.dwattr $C$DW$325, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$325, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$326	.dwtag  DW_TAG_member
	.dwattr $C$DW$326, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$326, DW_AT_name("send_out_buf")
	.dwattr $C$DW$326, DW_AT_TI_symbol_name("_send_out_buf")
	.dwattr $C$DW$326, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$326, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$327	.dwtag  DW_TAG_member
	.dwattr $C$DW$327, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$327, DW_AT_name("receive_in_buf")
	.dwattr $C$DW$327, DW_AT_TI_symbol_name("_receive_in_buf")
	.dwattr $C$DW$327, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$327, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$41

$C$DW$T$80	.dwtag  DW_TAG_typedef, DW_AT_name("setFrame_t")
	.dwattr $C$DW$T$80, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$80, DW_AT_language(DW_LANG_C)

$C$DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x05)
$C$DW$328	.dwtag  DW_TAG_member
	.dwattr $C$DW$328, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$328, DW_AT_name("send_out")
	.dwattr $C$DW$328, DW_AT_TI_symbol_name("_send_out")
	.dwattr $C$DW$328, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$328, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$329	.dwtag  DW_TAG_member
	.dwattr $C$DW$329, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$329, DW_AT_name("send_out_mean")
	.dwattr $C$DW$329, DW_AT_TI_symbol_name("_send_out_mean")
	.dwattr $C$DW$329, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$329, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$330	.dwtag  DW_TAG_member
	.dwattr $C$DW$330, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$330, DW_AT_name("receive_out")
	.dwattr $C$DW$330, DW_AT_TI_symbol_name("_receive_out")
	.dwattr $C$DW$330, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$330, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$331	.dwtag  DW_TAG_member
	.dwattr $C$DW$331, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$331, DW_AT_name("receive_out_mean")
	.dwattr $C$DW$331, DW_AT_TI_symbol_name("_receive_out_mean")
	.dwattr $C$DW$331, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$331, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$332	.dwtag  DW_TAG_member
	.dwattr $C$DW$332, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$332, DW_AT_name("underrun")
	.dwattr $C$DW$332, DW_AT_TI_symbol_name("_underrun")
	.dwattr $C$DW$332, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$332, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$42

$C$DW$T$81	.dwtag  DW_TAG_typedef, DW_AT_name("piuStats_t")
	.dwattr $C$DW$T$81, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$81, DW_AT_language(DW_LANG_C)

$C$DW$T$43	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x03)
$C$DW$333	.dwtag  DW_TAG_member
	.dwattr $C$DW$333, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$333, DW_AT_name("enable")
	.dwattr $C$DW$333, DW_AT_TI_symbol_name("_enable")
	.dwattr $C$DW$333, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$333, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$334	.dwtag  DW_TAG_member
	.dwattr $C$DW$334, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$334, DW_AT_name("threshold")
	.dwattr $C$DW$334, DW_AT_TI_symbol_name("_threshold")
	.dwattr $C$DW$334, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$334, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$335	.dwtag  DW_TAG_member
	.dwattr $C$DW$335, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$335, DW_AT_name("hangover")
	.dwattr $C$DW$335, DW_AT_TI_symbol_name("_hangover")
	.dwattr $C$DW$335, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$335, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$43

$C$DW$T$82	.dwtag  DW_TAG_typedef, DW_AT_name("bidSilenceDet_t")
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$82, DW_AT_language(DW_LANG_C)

$C$DW$T$44	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x04)
$C$DW$336	.dwtag  DW_TAG_member
	.dwattr $C$DW$336, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$336, DW_AT_name("enable")
	.dwattr $C$DW$336, DW_AT_TI_symbol_name("_enable")
	.dwattr $C$DW$336, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$336, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$337	.dwtag  DW_TAG_member
	.dwattr $C$DW$337, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$337, DW_AT_name("type")
	.dwattr $C$DW$337, DW_AT_TI_symbol_name("_type")
	.dwattr $C$DW$337, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$337, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$338	.dwtag  DW_TAG_member
	.dwattr $C$DW$338, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$338, DW_AT_name("time")
	.dwattr $C$DW$338, DW_AT_TI_symbol_name("_time")
	.dwattr $C$DW$338, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$338, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$339	.dwtag  DW_TAG_member
	.dwattr $C$DW$339, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$339, DW_AT_name("custom")
	.dwattr $C$DW$339, DW_AT_TI_symbol_name("_custom")
	.dwattr $C$DW$339, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$339, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$44

$C$DW$T$83	.dwtag  DW_TAG_typedef, DW_AT_name("pcmPatternDet_t")
	.dwattr $C$DW$T$83, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$83, DW_AT_language(DW_LANG_C)

$C$DW$T$45	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x02)
$C$DW$340	.dwtag  DW_TAG_member
	.dwattr $C$DW$340, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$340, DW_AT_name("enable")
	.dwattr $C$DW$340, DW_AT_TI_symbol_name("_enable")
	.dwattr $C$DW$340, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$340, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$341	.dwtag  DW_TAG_member
	.dwattr $C$DW$341, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$341, DW_AT_name("pattern")
	.dwattr $C$DW$341, DW_AT_TI_symbol_name("_pattern")
	.dwattr $C$DW$341, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$341, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$45

$C$DW$T$84	.dwtag  DW_TAG_typedef, DW_AT_name("pcmPatternGen_t")
	.dwattr $C$DW$T$84, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$84, DW_AT_language(DW_LANG_C)

$C$DW$T$48	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x04)
$C$DW$342	.dwtag  DW_TAG_member
	.dwattr $C$DW$342, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$342, DW_AT_name("law")
	.dwattr $C$DW$342, DW_AT_TI_symbol_name("_law")
	.dwattr $C$DW$342, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$342, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$343	.dwtag  DW_TAG_member
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$343, DW_AT_name("pcm_expand_table")
	.dwattr $C$DW$343, DW_AT_TI_symbol_name("_pcm_expand_table")
	.dwattr $C$DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$343, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$48

$C$DW$T$85	.dwtag  DW_TAG_typedef, DW_AT_name("piuCompandingCfg_t")
	.dwattr $C$DW$T$85, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$85, DW_AT_language(DW_LANG_C)

$C$DW$T$49	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$49, DW_AT_byte_size(0x08)
$C$DW$344	.dwtag  DW_TAG_member
	.dwattr $C$DW$344, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$344, DW_AT_name("ctl_code")
	.dwattr $C$DW$344, DW_AT_TI_symbol_name("_ctl_code")
	.dwattr $C$DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$344, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$345	.dwtag  DW_TAG_member
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$345, DW_AT_name("u")
	.dwattr $C$DW$345, DW_AT_TI_symbol_name("_u")
	.dwattr $C$DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$345, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$49

$C$DW$T$105	.dwtag  DW_TAG_typedef, DW_AT_name("piuControl_t")
	.dwattr $C$DW$T$105, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$T$105, DW_AT_language(DW_LANG_C)
$C$DW$T$117	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$117, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$T$117, DW_AT_address_class(0x17)

$C$DW$T$51	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x0c)
$C$DW$346	.dwtag  DW_TAG_member
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$346, DW_AT_name("fd")
	.dwattr $C$DW$346, DW_AT_TI_symbol_name("_fd")
	.dwattr $C$DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$346, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$347	.dwtag  DW_TAG_member
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$347, DW_AT_name("buf")
	.dwattr $C$DW$347, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$347, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$348	.dwtag  DW_TAG_member
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$348, DW_AT_name("pos")
	.dwattr $C$DW$348, DW_AT_TI_symbol_name("_pos")
	.dwattr $C$DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$348, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$349	.dwtag  DW_TAG_member
	.dwattr $C$DW$349, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$349, DW_AT_name("bufend")
	.dwattr $C$DW$349, DW_AT_TI_symbol_name("_bufend")
	.dwattr $C$DW$349, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$349, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$350	.dwtag  DW_TAG_member
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$350, DW_AT_name("buff_stop")
	.dwattr $C$DW$350, DW_AT_TI_symbol_name("_buff_stop")
	.dwattr $C$DW$350, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$350, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$351	.dwtag  DW_TAG_member
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$351, DW_AT_name("flags")
	.dwattr $C$DW$351, DW_AT_TI_symbol_name("_flags")
	.dwattr $C$DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$351, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$51

$C$DW$T$52	.dwtag  DW_TAG_typedef, DW_AT_name("FILE")
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$T$52, DW_AT_language(DW_LANG_C)
$C$DW$T$53	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$T$53, DW_AT_address_class(0x17)

$C$DW$T$55	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x104)
$C$DW$352	.dwtag  DW_TAG_member
	.dwattr $C$DW$352, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$352, DW_AT_name("fio")
	.dwattr $C$DW$352, DW_AT_TI_symbol_name("_fio")
	.dwattr $C$DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$352, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$353	.dwtag  DW_TAG_member
	.dwattr $C$DW$353, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$353, DW_AT_name("eof")
	.dwattr $C$DW$353, DW_AT_TI_symbol_name("_eof")
	.dwattr $C$DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$353, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$354	.dwtag  DW_TAG_member
	.dwattr $C$DW$354, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$354, DW_AT_name("fptr")
	.dwattr $C$DW$354, DW_AT_TI_symbol_name("_fptr")
	.dwattr $C$DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$354, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$355	.dwtag  DW_TAG_member
	.dwattr $C$DW$355, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$355, DW_AT_name("fname")
	.dwattr $C$DW$355, DW_AT_TI_symbol_name("_fname")
	.dwattr $C$DW$355, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$355, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$55

$C$DW$T$107	.dwtag  DW_TAG_typedef, DW_AT_name("ecuSimFileIo_t")
	.dwattr $C$DW$T$107, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$T$107, DW_AT_language(DW_LANG_C)
$C$DW$356	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$356, DW_AT_type(*$C$DW$T$107)
$C$DW$T$120	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$120, DW_AT_type(*$C$DW$356)
$C$DW$T$121	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$121, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$T$121, DW_AT_address_class(0x17)

$C$DW$T$60	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$60, DW_AT_byte_size(0x12)
$C$DW$357	.dwtag  DW_TAG_member
	.dwattr $C$DW$357, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$357, DW_AT_name("state")
	.dwattr $C$DW$357, DW_AT_TI_symbol_name("_state")
	.dwattr $C$DW$357, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$357, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$358	.dwtag  DW_TAG_member
	.dwattr $C$DW$358, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$358, DW_AT_name("reset")
	.dwattr $C$DW$358, DW_AT_TI_symbol_name("_reset")
	.dwattr $C$DW$358, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$358, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$359	.dwtag  DW_TAG_member
	.dwattr $C$DW$359, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$359, DW_AT_name("delay")
	.dwattr $C$DW$359, DW_AT_TI_symbol_name("_delay")
	.dwattr $C$DW$359, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$359, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$360	.dwtag  DW_TAG_member
	.dwattr $C$DW$360, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$360, DW_AT_name("dcoffset")
	.dwattr $C$DW$360, DW_AT_TI_symbol_name("_dcoffset")
	.dwattr $C$DW$360, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$360, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$361	.dwtag  DW_TAG_member
	.dwattr $C$DW$361, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$361, DW_AT_name("wftype")
	.dwattr $C$DW$361, DW_AT_TI_symbol_name("_wftype")
	.dwattr $C$DW$361, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$361, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$362	.dwtag  DW_TAG_member
	.dwattr $C$DW$362, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$362, DW_AT_name("f1")
	.dwattr $C$DW$362, DW_AT_TI_symbol_name("_f1")
	.dwattr $C$DW$362, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$362, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$363	.dwtag  DW_TAG_member
	.dwattr $C$DW$363, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$363, DW_AT_name("f2")
	.dwattr $C$DW$363, DW_AT_TI_symbol_name("_f2")
	.dwattr $C$DW$363, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$363, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$364	.dwtag  DW_TAG_member
	.dwattr $C$DW$364, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$364, DW_AT_name("amp1")
	.dwattr $C$DW$364, DW_AT_TI_symbol_name("_amp1")
	.dwattr $C$DW$364, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$364, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$365	.dwtag  DW_TAG_member
	.dwattr $C$DW$365, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$365, DW_AT_name("amp2")
	.dwattr $C$DW$365, DW_AT_TI_symbol_name("_amp2")
	.dwattr $C$DW$365, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$365, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$366	.dwtag  DW_TAG_member
	.dwattr $C$DW$366, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$366, DW_AT_name("nlevel")
	.dwattr $C$DW$366, DW_AT_TI_symbol_name("_nlevel")
	.dwattr $C$DW$366, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$366, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$367	.dwtag  DW_TAG_member
	.dwattr $C$DW$367, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$367, DW_AT_name("nseed")
	.dwattr $C$DW$367, DW_AT_TI_symbol_name("_nseed")
	.dwattr $C$DW$367, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$367, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$368	.dwtag  DW_TAG_member
	.dwattr $C$DW$368, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$368, DW_AT_name("ntype")
	.dwattr $C$DW$368, DW_AT_TI_symbol_name("_ntype")
	.dwattr $C$DW$368, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$368, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$369	.dwtag  DW_TAG_member
	.dwattr $C$DW$369, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$369, DW_AT_name("pow_level")
	.dwattr $C$DW$369, DW_AT_TI_symbol_name("_pow_level")
	.dwattr $C$DW$369, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$369, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$370	.dwtag  DW_TAG_member
	.dwattr $C$DW$370, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$370, DW_AT_name("hoth_seed")
	.dwattr $C$DW$370, DW_AT_TI_symbol_name("_hoth_seed")
	.dwattr $C$DW$370, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$370, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$371	.dwtag  DW_TAG_member
	.dwattr $C$DW$371, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$371, DW_AT_name("sdram_addr")
	.dwattr $C$DW$371, DW_AT_TI_symbol_name("_sdram_addr")
	.dwattr $C$DW$371, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$371, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$372	.dwtag  DW_TAG_member
	.dwattr $C$DW$372, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$372, DW_AT_name("num_sample")
	.dwattr $C$DW$372, DW_AT_TI_symbol_name("_num_sample")
	.dwattr $C$DW$372, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$372, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$60

$C$DW$T$104	.dwtag  DW_TAG_typedef, DW_AT_name("siuSGNPars_t")
	.dwattr $C$DW$T$104, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$T$104, DW_AT_language(DW_LANG_C)
$C$DW$T$122	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$122, DW_AT_type(*$C$DW$T$104)
	.dwattr $C$DW$T$122, DW_AT_address_class(0x17)

$C$DW$T$61	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$61, DW_AT_byte_size(0x0e)
$C$DW$373	.dwtag  DW_TAG_member
	.dwattr $C$DW$373, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$373, DW_AT_name("ID")
	.dwattr $C$DW$373, DW_AT_TI_symbol_name("_ID")
	.dwattr $C$DW$373, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$373, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$374	.dwtag  DW_TAG_member
	.dwattr $C$DW$374, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$374, DW_AT_name("exception")
	.dwattr $C$DW$374, DW_AT_TI_symbol_name("_exception")
	.dwattr $C$DW$374, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$374, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$375	.dwtag  DW_TAG_member
	.dwattr $C$DW$375, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$375, DW_AT_name("debug")
	.dwattr $C$DW$375, DW_AT_TI_symbol_name("_debug")
	.dwattr $C$DW$375, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$375, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$376	.dwtag  DW_TAG_member
	.dwattr $C$DW$376, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$376, DW_AT_name("cheap_used")
	.dwattr $C$DW$376, DW_AT_TI_symbol_name("_cheap_used")
	.dwattr $C$DW$376, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$376, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$377	.dwtag  DW_TAG_member
	.dwattr $C$DW$377, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$377, DW_AT_name("cheap")
	.dwattr $C$DW$377, DW_AT_TI_symbol_name("_cheap")
	.dwattr $C$DW$377, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$377, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$378	.dwtag  DW_TAG_member
	.dwattr $C$DW$378, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$378, DW_AT_name("vheap_used")
	.dwattr $C$DW$378, DW_AT_TI_symbol_name("_vheap_used")
	.dwattr $C$DW$378, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$378, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$379	.dwtag  DW_TAG_member
	.dwattr $C$DW$379, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$379, DW_AT_name("vheap")
	.dwattr $C$DW$379, DW_AT_TI_symbol_name("_vheap")
	.dwattr $C$DW$379, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$379, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$61

$C$DW$T$125	.dwtag  DW_TAG_typedef, DW_AT_name("siuContext_t")
	.dwattr $C$DW$T$125, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$T$125, DW_AT_language(DW_LANG_C)

$C$DW$T$64	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$64, DW_AT_byte_size(0x04)
$C$DW$380	.dwtag  DW_TAG_member
	.dwattr $C$DW$380, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$380, DW_AT_name("fcn")
	.dwattr $C$DW$380, DW_AT_TI_symbol_name("_fcn")
	.dwattr $C$DW$380, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$380, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$381	.dwtag  DW_TAG_member
	.dwattr $C$DW$381, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$381, DW_AT_name("targetInst")
	.dwattr $C$DW$381, DW_AT_TI_symbol_name("_targetInst")
	.dwattr $C$DW$381, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$381, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$64

$C$DW$T$66	.dwtag  DW_TAG_typedef, DW_AT_name("siuTxSendOut_t")
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$66, DW_AT_language(DW_LANG_C)

$C$DW$T$67	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$67, DW_AT_byte_size(0x0c)
$C$DW$382	.dwtag  DW_TAG_member
	.dwattr $C$DW$382, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$382, DW_AT_name("enabled")
	.dwattr $C$DW$382, DW_AT_TI_symbol_name("_enabled")
	.dwattr $C$DW$382, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$382, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$383	.dwtag  DW_TAG_member
	.dwattr $C$DW$383, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$383, DW_AT_name("send_frame_length")
	.dwattr $C$DW$383, DW_AT_TI_symbol_name("_send_frame_length")
	.dwattr $C$DW$383, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$383, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$384	.dwtag  DW_TAG_member
	.dwattr $C$DW$384, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$384, DW_AT_name("recv_frame_length")
	.dwattr $C$DW$384, DW_AT_TI_symbol_name("_recv_frame_length")
	.dwattr $C$DW$384, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$384, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$385	.dwtag  DW_TAG_member
	.dwattr $C$DW$385, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$385, DW_AT_name("send_frame_ptr")
	.dwattr $C$DW$385, DW_AT_TI_symbol_name("_send_frame_ptr")
	.dwattr $C$DW$385, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$385, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$386	.dwtag  DW_TAG_member
	.dwattr $C$DW$386, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$386, DW_AT_name("recv_frame_ptr")
	.dwattr $C$DW$386, DW_AT_TI_symbol_name("_recv_frame_ptr")
	.dwattr $C$DW$386, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$386, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$387	.dwtag  DW_TAG_member
	.dwattr $C$DW$387, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$387, DW_AT_name("TxSendOut")
	.dwattr $C$DW$387, DW_AT_TI_symbol_name("_TxSendOut")
	.dwattr $C$DW$387, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$387, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$67

$C$DW$T$68	.dwtag  DW_TAG_typedef, DW_AT_name("siuTxInst_t")
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$T$68, DW_AT_language(DW_LANG_C)

$C$DW$T$69	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$69, DW_AT_byte_size(0x1c)
$C$DW$388	.dwtag  DW_TAG_member
	.dwattr $C$DW$388, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$388, DW_AT_name("ID")
	.dwattr $C$DW$388, DW_AT_TI_symbol_name("_ID")
	.dwattr $C$DW$388, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$388, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$389	.dwtag  DW_TAG_member
	.dwattr $C$DW$389, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$389, DW_AT_name("exception")
	.dwattr $C$DW$389, DW_AT_TI_symbol_name("_exception")
	.dwattr $C$DW$389, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$389, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$390	.dwtag  DW_TAG_member
	.dwattr $C$DW$390, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$390, DW_AT_name("debug")
	.dwattr $C$DW$390, DW_AT_TI_symbol_name("_debug")
	.dwattr $C$DW$390, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$390, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$391	.dwtag  DW_TAG_member
	.dwattr $C$DW$391, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$391, DW_AT_name("TxInst")
	.dwattr $C$DW$391, DW_AT_TI_symbol_name("_TxInst")
	.dwattr $C$DW$391, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$391, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$392	.dwtag  DW_TAG_member
	.dwattr $C$DW$392, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$392, DW_AT_name("slmInst")
	.dwattr $C$DW$392, DW_AT_TI_symbol_name("_slmInst")
	.dwattr $C$DW$392, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$392, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$393	.dwtag  DW_TAG_member
	.dwattr $C$DW$393, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$393, DW_AT_name("cheap_used")
	.dwattr $C$DW$393, DW_AT_TI_symbol_name("_cheap_used")
	.dwattr $C$DW$393, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$393, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$394	.dwtag  DW_TAG_member
	.dwattr $C$DW$394, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$394, DW_AT_name("vheap_used")
	.dwattr $C$DW$394, DW_AT_TI_symbol_name("_vheap_used")
	.dwattr $C$DW$394, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$394, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$395	.dwtag  DW_TAG_member
	.dwattr $C$DW$395, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$395, DW_AT_name("companding_law")
	.dwattr $C$DW$395, DW_AT_TI_symbol_name("_companding_law")
	.dwattr $C$DW$395, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$395, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$396	.dwtag  DW_TAG_member
	.dwattr $C$DW$396, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$396, DW_AT_name("pcm_bits")
	.dwattr $C$DW$396, DW_AT_TI_symbol_name("_pcm_bits")
	.dwattr $C$DW$396, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$396, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$397	.dwtag  DW_TAG_member
	.dwattr $C$DW$397, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$397, DW_AT_name("piuInst")
	.dwattr $C$DW$397, DW_AT_TI_symbol_name("_piuInst")
	.dwattr $C$DW$397, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$397, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$398	.dwtag  DW_TAG_member
	.dwattr $C$DW$398, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$398, DW_AT_name("ecuInst")
	.dwattr $C$DW$398, DW_AT_TI_symbol_name("_ecuInst")
	.dwattr $C$DW$398, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$398, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$69

$C$DW$T$126	.dwtag  DW_TAG_typedef, DW_AT_name("siuInst_t")
	.dwattr $C$DW$T$126, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$T$126, DW_AT_language(DW_LANG_C)

$C$DW$T$127	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$127, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$T$127, DW_AT_language(DW_LANG_C)
$C$DW$399	.dwtag  DW_TAG_subrange_type
	.dwendtag $C$DW$T$127

$C$DW$T$128	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$128, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$T$128, DW_AT_address_class(0x17)

$C$DW$T$73	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$73, DW_AT_byte_size(0x0a)
$C$DW$400	.dwtag  DW_TAG_member
	.dwattr $C$DW$400, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$400, DW_AT_name("fptr")
	.dwattr $C$DW$400, DW_AT_TI_symbol_name("_fptr")
	.dwattr $C$DW$400, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$400, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$401	.dwtag  DW_TAG_member
	.dwattr $C$DW$401, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$401, DW_AT_name("use_cache")
	.dwattr $C$DW$401, DW_AT_TI_symbol_name("_use_cache")
	.dwattr $C$DW$401, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$401, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$402	.dwtag  DW_TAG_member
	.dwattr $C$DW$402, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$402, DW_AT_name("enabled")
	.dwattr $C$DW$402, DW_AT_TI_symbol_name("_enabled")
	.dwattr $C$DW$402, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$402, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$403	.dwtag  DW_TAG_member
	.dwattr $C$DW$403, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$403, DW_AT_name("overhead")
	.dwattr $C$DW$403, DW_AT_TI_symbol_name("_overhead")
	.dwattr $C$DW$403, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$403, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$404	.dwtag  DW_TAG_member
	.dwattr $C$DW$404, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$404, DW_AT_name("start_cnt")
	.dwattr $C$DW$404, DW_AT_TI_symbol_name("_start_cnt")
	.dwattr $C$DW$404, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$404, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$405	.dwtag  DW_TAG_member
	.dwattr $C$DW$405, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$405, DW_AT_name("cycles")
	.dwattr $C$DW$405, DW_AT_TI_symbol_name("_cycles")
	.dwattr $C$DW$405, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$405, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$73

$C$DW$T$129	.dwtag  DW_TAG_typedef, DW_AT_name("ecuProfile_t")
	.dwattr $C$DW$T$129, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$T$129, DW_AT_language(DW_LANG_C)

$C$DW$T$74	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$74, DW_AT_byte_size(0x04)
$C$DW$406	.dwtag  DW_TAG_member
	.dwattr $C$DW$406, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$406, DW_AT_name("select")
	.dwattr $C$DW$406, DW_AT_TI_symbol_name("_select")
	.dwattr $C$DW$406, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$406, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$407	.dwtag  DW_TAG_member
	.dwattr $C$DW$407, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$407, DW_AT_name("start")
	.dwattr $C$DW$407, DW_AT_TI_symbol_name("_start")
	.dwattr $C$DW$407, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$407, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$408	.dwtag  DW_TAG_member
	.dwattr $C$DW$408, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$408, DW_AT_name("ncoeff")
	.dwattr $C$DW$408, DW_AT_TI_symbol_name("_ncoeff")
	.dwattr $C$DW$408, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$408, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$409	.dwtag  DW_TAG_member
	.dwattr $C$DW$409, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$409, DW_AT_name("retstat")
	.dwattr $C$DW$409, DW_AT_TI_symbol_name("_retstat")
	.dwattr $C$DW$409, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$409, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$74

$C$DW$T$106	.dwtag  DW_TAG_typedef, DW_AT_name("siuGetFlt_t")
	.dwattr $C$DW$T$106, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$T$106, DW_AT_language(DW_LANG_C)

$C$DW$T$75	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$75, DW_AT_byte_size(0x06)
$C$DW$410	.dwtag  DW_TAG_member
	.dwattr $C$DW$410, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$410, DW_AT_name("uhseg")
	.dwattr $C$DW$410, DW_AT_TI_symbol_name("_uhseg")
	.dwattr $C$DW$410, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$410, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$411	.dwtag  DW_TAG_member
	.dwattr $C$DW$411, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$411, DW_AT_name("g168hseg")
	.dwattr $C$DW$411, DW_AT_TI_symbol_name("_g168hseg")
	.dwattr $C$DW$411, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$411, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$75


$C$DW$T$77	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$77, DW_AT_byte_size(0x0a)
$C$DW$412	.dwtag  DW_TAG_member
	.dwattr $C$DW$412, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$412, DW_AT_name("segment")
	.dwattr $C$DW$412, DW_AT_TI_symbol_name("_segment")
	.dwattr $C$DW$412, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$412, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$413	.dwtag  DW_TAG_member
	.dwattr $C$DW$413, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$413, DW_AT_name("dgain_l2")
	.dwattr $C$DW$413, DW_AT_TI_symbol_name("_dgain_l2")
	.dwattr $C$DW$413, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$413, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$77


$C$DW$T$79	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$79, DW_AT_byte_size(0x02)
$C$DW$414	.dwtag  DW_TAG_member
	.dwattr $C$DW$414, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$414, DW_AT_name("ctl_mask")
	.dwattr $C$DW$414, DW_AT_TI_symbol_name("_ctl_mask")
	.dwattr $C$DW$414, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$414, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$415	.dwtag  DW_TAG_member
	.dwattr $C$DW$415, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$415, DW_AT_name("bg_speed")
	.dwattr $C$DW$415, DW_AT_TI_symbol_name("_bg_speed")
	.dwattr $C$DW$415, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$415, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$416	.dwtag  DW_TAG_member
	.dwattr $C$DW$416, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$416, DW_AT_name("srch_speed")
	.dwattr $C$DW$416, DW_AT_TI_symbol_name("_srch_speed")
	.dwattr $C$DW$416, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$416, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$417	.dwtag  DW_TAG_member
	.dwattr $C$DW$417, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$417, DW_AT_name("place_speed")
	.dwattr $C$DW$417, DW_AT_TI_symbol_name("_place_speed")
	.dwattr $C$DW$417, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$417, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$418	.dwtag  DW_TAG_member
	.dwattr $C$DW$418, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$418, DW_AT_name("enable")
	.dwattr $C$DW$418, DW_AT_TI_symbol_name("_enable")
	.dwattr $C$DW$418, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$418, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$419	.dwtag  DW_TAG_member
	.dwattr $C$DW$419, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$419, DW_AT_name("n_level")
	.dwattr $C$DW$419, DW_AT_TI_symbol_name("_n_level")
	.dwattr $C$DW$419, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$419, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$420	.dwtag  DW_TAG_member
	.dwattr $C$DW$420, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$420, DW_AT_name("nlp_aggress")
	.dwattr $C$DW$420, DW_AT_TI_symbol_name("_nlp_aggress")
	.dwattr $C$DW$420, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$420, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$421	.dwtag  DW_TAG_member
	.dwattr $C$DW$421, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$421, DW_AT_name("cn_config")
	.dwattr $C$DW$421, DW_AT_TI_symbol_name("_cn_config")
	.dwattr $C$DW$421, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$421, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$79


$C$DW$T$86	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$86, DW_AT_byte_size(0x06)
$C$DW$422	.dwtag  DW_TAG_member
	.dwattr $C$DW$422, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$422, DW_AT_name("loopback_select")
	.dwattr $C$DW$422, DW_AT_TI_symbol_name("_loopback_select")
	.dwattr $C$DW$422, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$422, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$423	.dwtag  DW_TAG_member
	.dwattr $C$DW$423, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$423, DW_AT_name("frame_size")
	.dwattr $C$DW$423, DW_AT_TI_symbol_name("_frame_size")
	.dwattr $C$DW$423, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$423, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$424	.dwtag  DW_TAG_member
	.dwattr $C$DW$424, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$424, DW_AT_name("set_frame")
	.dwattr $C$DW$424, DW_AT_TI_symbol_name("_set_frame")
	.dwattr $C$DW$424, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$424, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$425	.dwtag  DW_TAG_member
	.dwattr $C$DW$425, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$425, DW_AT_name("stats")
	.dwattr $C$DW$425, DW_AT_TI_symbol_name("_stats")
	.dwattr $C$DW$425, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$425, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$426	.dwtag  DW_TAG_member
	.dwattr $C$DW$426, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$426, DW_AT_name("bid_silence_detect")
	.dwattr $C$DW$426, DW_AT_TI_symbol_name("_bid_silence_detect")
	.dwattr $C$DW$426, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$426, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$427	.dwtag  DW_TAG_member
	.dwattr $C$DW$427, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$427, DW_AT_name("pattern_detect")
	.dwattr $C$DW$427, DW_AT_TI_symbol_name("_pattern_detect")
	.dwattr $C$DW$427, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$427, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$428	.dwtag  DW_TAG_member
	.dwattr $C$DW$428, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$428, DW_AT_name("pattern_generate")
	.dwattr $C$DW$428, DW_AT_TI_symbol_name("_pattern_generate")
	.dwattr $C$DW$428, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$428, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$429	.dwtag  DW_TAG_member
	.dwattr $C$DW$429, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$429, DW_AT_name("companding")
	.dwattr $C$DW$429, DW_AT_TI_symbol_name("_companding")
	.dwattr $C$DW$429, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$429, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$430	.dwtag  DW_TAG_member
	.dwattr $C$DW$430, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$430, DW_AT_name("dc_offset_removal_select")
	.dwattr $C$DW$430, DW_AT_TI_symbol_name("_dc_offset_removal_select")
	.dwattr $C$DW$430, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$430, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$86

$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x17)

$C$DW$T$37	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
$C$DW$431	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$431, DW_AT_type(*$C$DW$T$34)
$C$DW$432	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$432, DW_AT_type(*$C$DW$T$36)
	.dwendtag $C$DW$T$37

$C$DW$T$38	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$38, DW_AT_address_class(0x20)

$C$DW$T$62	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$62, DW_AT_language(DW_LANG_C)
$C$DW$433	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$433, DW_AT_type(*$C$DW$T$3)
$C$DW$434	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$434, DW_AT_type(*$C$DW$T$3)
$C$DW$435	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$435, DW_AT_type(*$C$DW$T$3)
$C$DW$436	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$436, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$T$62

$C$DW$T$63	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$T$63, DW_AT_address_class(0x20)

$C$DW$T$87	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$87, DW_AT_language(DW_LANG_C)
$C$DW$T$88	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$88, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$T$88, DW_AT_address_class(0x20)
$C$DW$T$89	.dwtag  DW_TAG_typedef, DW_AT_name("vfnptr")
	.dwattr $C$DW$T$89, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$T$89, DW_AT_language(DW_LANG_C)

$C$DW$T$90	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$90, DW_AT_language(DW_LANG_C)
$C$DW$437	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$437, DW_AT_type(*$C$DW$T$34)
$C$DW$438	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$438, DW_AT_type(*$C$DW$T$34)
$C$DW$439	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$439, DW_AT_type(*$C$DW$T$34)
$C$DW$440	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$440, DW_AT_type(*$C$DW$T$3)
$C$DW$441	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$441, DW_AT_type(*$C$DW$T$34)
	.dwendtag $C$DW$T$90

$C$DW$T$91	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$91, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$T$91, DW_AT_address_class(0x20)

$C$DW$T$92	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$92, DW_AT_language(DW_LANG_C)
$C$DW$442	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$442, DW_AT_type(*$C$DW$T$3)
$C$DW$443	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$443, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$T$92

$C$DW$T$93	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$93, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$T$93, DW_AT_address_class(0x20)

$C$DW$T$94	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$94, DW_AT_language(DW_LANG_C)
$C$DW$444	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$444, DW_AT_type(*$C$DW$T$34)
$C$DW$445	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$445, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$T$94

$C$DW$T$95	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$95, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$T$95, DW_AT_address_class(0x20)

$C$DW$T$96	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$96, DW_AT_language(DW_LANG_C)
$C$DW$446	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$446, DW_AT_type(*$C$DW$T$3)
$C$DW$447	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$447, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$T$96

$C$DW$T$97	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$97, DW_AT_type(*$C$DW$T$96)
	.dwattr $C$DW$T$97, DW_AT_address_class(0x20)
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
$C$DW$T$50	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$50, DW_AT_address_class(0x17)
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
$C$DW$T$22	.dwtag  DW_TAG_typedef, DW_AT_name("Fract")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
$C$DW$T$23	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$23, DW_AT_address_class(0x17)

$C$DW$T$170	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$170, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$170, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$170, DW_AT_byte_size(0x40)
$C$DW$448	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$448, DW_AT_upper_bound(0x3f)
	.dwendtag $C$DW$T$170


$C$DW$T$78	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$78, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$78, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$78, DW_AT_byte_size(0x02)
$C$DW$449	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$449, DW_AT_upper_bound(0x01)
	.dwendtag $C$DW$T$78

$C$DW$T$56	.dwtag  DW_TAG_typedef, DW_AT_name("linSample")
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$56, DW_AT_language(DW_LANG_C)
$C$DW$T$65	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$65, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$T$65, DW_AT_address_class(0x17)

$C$DW$T$186	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$186, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$T$186, DW_AT_language(DW_LANG_C)
$C$DW$450	.dwtag  DW_TAG_subrange_type
	.dwendtag $C$DW$T$186


$C$DW$T$187	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$187, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$T$187, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$187, DW_AT_byte_size(0x59)
$C$DW$451	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$451, DW_AT_upper_bound(0x58)
	.dwendtag $C$DW$T$187

$C$DW$452	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$452, DW_AT_type(*$C$DW$T$21)
$C$DW$T$46	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$452)
$C$DW$T$47	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$47, DW_AT_address_class(0x17)

$C$DW$T$189	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$189, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$189, DW_AT_language(DW_LANG_C)
$C$DW$453	.dwtag  DW_TAG_subrange_type
	.dwendtag $C$DW$T$189

$C$DW$T$25	.dwtag  DW_TAG_typedef, DW_AT_name("int_least8_t")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$25, DW_AT_language(DW_LANG_C)
$C$DW$T$26	.dwtag  DW_TAG_typedef, DW_AT_name("tshort")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)
$C$DW$T$27	.dwtag  DW_TAG_typedef, DW_AT_name("tbool")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)
$C$DW$454	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$454, DW_AT_type(*$C$DW$T$27)
$C$DW$T$162	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$162, DW_AT_type(*$C$DW$454)
$C$DW$T$163	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$163, DW_AT_type(*$C$DW$T$162)
	.dwattr $C$DW$T$163, DW_AT_address_class(0x17)
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
$C$DW$T$40	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$40, DW_AT_address_class(0x17)
$C$DW$T$98	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least8_t")
	.dwattr $C$DW$T$98, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$98, DW_AT_language(DW_LANG_C)
$C$DW$T$99	.dwtag  DW_TAG_typedef, DW_AT_name("tword")
	.dwattr $C$DW$T$99, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$T$99, DW_AT_language(DW_LANG_C)
$C$DW$T$100	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$100, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$T$100, DW_AT_address_class(0x17)
$C$DW$T$141	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$141, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$141, DW_AT_address_class(0x17)

$C$DW$T$194	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$194, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$T$194, DW_AT_language(DW_LANG_C)
$C$DW$455	.dwtag  DW_TAG_subrange_type
	.dwendtag $C$DW$T$194

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)
$C$DW$T$70	.dwtag  DW_TAG_typedef, DW_AT_name("int32_t")
	.dwattr $C$DW$T$70, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$70, DW_AT_language(DW_LANG_C)
$C$DW$T$71	.dwtag  DW_TAG_typedef, DW_AT_name("int_least32_t")
	.dwattr $C$DW$T$71, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$T$71, DW_AT_language(DW_LANG_C)
$C$DW$T$72	.dwtag  DW_TAG_typedef, DW_AT_name("tlong")
	.dwattr $C$DW$T$72, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$T$72, DW_AT_language(DW_LANG_C)
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)
$C$DW$T$57	.dwtag  DW_TAG_typedef, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$57, DW_AT_language(DW_LANG_C)
$C$DW$T$58	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least32_t")
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$58, DW_AT_language(DW_LANG_C)
$C$DW$T$59	.dwtag  DW_TAG_typedef, DW_AT_name("tulong")
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$T$59, DW_AT_language(DW_LANG_C)
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

$C$DW$T$54	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$54, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$54, DW_AT_byte_size(0x100)
$C$DW$456	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$456, DW_AT_upper_bound(0xff)
	.dwendtag $C$DW$T$54

$C$DW$457	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$457, DW_AT_type(*$C$DW$T$35)
$C$DW$T$165	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$165, DW_AT_type(*$C$DW$457)
$C$DW$T$166	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$166, DW_AT_type(*$C$DW$T$165)
	.dwattr $C$DW$T$166, DW_AT_address_class(0x17)

$C$DW$T$101	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$101, DW_AT_name("ecuContext_s")
	.dwattr $C$DW$T$101, DW_AT_byte_size(0x1a)
$C$DW$458	.dwtag  DW_TAG_member
	.dwattr $C$DW$458, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$458, DW_AT_name("exception")
	.dwattr $C$DW$458, DW_AT_TI_symbol_name("_exception")
	.dwattr $C$DW$458, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$458, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$459	.dwtag  DW_TAG_member
	.dwattr $C$DW$459, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$459, DW_AT_name("debugStrmWrite")
	.dwattr $C$DW$459, DW_AT_TI_symbol_name("_debugStrmWrite")
	.dwattr $C$DW$459, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$459, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$460	.dwtag  DW_TAG_member
	.dwattr $C$DW$460, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$460, DW_AT_name("mipsEcuInstEvt")
	.dwattr $C$DW$460, DW_AT_TI_symbol_name("_mipsEcuInstEvt")
	.dwattr $C$DW$460, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$460, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$461	.dwtag  DW_TAG_member
	.dwattr $C$DW$461, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$461, DW_AT_name("srchPrep")
	.dwattr $C$DW$461, DW_AT_TI_symbol_name("_srchPrep")
	.dwattr $C$DW$461, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$461, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$462	.dwtag  DW_TAG_member
	.dwattr $C$DW$462, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$462, DW_AT_name("sendOutFcn")
	.dwattr $C$DW$462, DW_AT_TI_symbol_name("_sendOutFcn")
	.dwattr $C$DW$462, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$462, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$463	.dwtag  DW_TAG_member
	.dwattr $C$DW$463, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$463, DW_AT_name("receiveOutFcn")
	.dwattr $C$DW$463, DW_AT_TI_symbol_name("_receiveOutFcn")
	.dwattr $C$DW$463, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$463, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$464	.dwtag  DW_TAG_member
	.dwattr $C$DW$464, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$464, DW_AT_name("max_samples_per_frame")
	.dwattr $C$DW$464, DW_AT_TI_symbol_name("_max_samples_per_frame")
	.dwattr $C$DW$464, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$464, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$465	.dwtag  DW_TAG_member
	.dwattr $C$DW$465, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$465, DW_AT_name("max_filter_length")
	.dwattr $C$DW$465, DW_AT_TI_symbol_name("_max_filter_length")
	.dwattr $C$DW$465, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$465, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$466	.dwtag  DW_TAG_member
	.dwattr $C$DW$466, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$466, DW_AT_name("max_filter_seg_length")
	.dwattr $C$DW$466, DW_AT_TI_symbol_name("_max_filter_seg_length")
	.dwattr $C$DW$466, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$466, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$467	.dwtag  DW_TAG_member
	.dwattr $C$DW$467, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$467, DW_AT_name("max_filter_seg_count")
	.dwattr $C$DW$467, DW_AT_TI_symbol_name("_max_filter_seg_count")
	.dwattr $C$DW$467, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$467, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$468	.dwtag  DW_TAG_member
	.dwattr $C$DW$468, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$468, DW_AT_name("max_y2x_delay")
	.dwattr $C$DW$468, DW_AT_TI_symbol_name("_max_y2x_delay")
	.dwattr $C$DW$468, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$468, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$469	.dwtag  DW_TAG_member
	.dwattr $C$DW$469, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$469, DW_AT_name("expanded_bf")
	.dwattr $C$DW$469, DW_AT_TI_symbol_name("_expanded_bf")
	.dwattr $C$DW$469, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$469, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$470	.dwtag  DW_TAG_member
	.dwattr $C$DW$470, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$470, DW_AT_name("rxout_buf_base")
	.dwattr $C$DW$470, DW_AT_TI_symbol_name("_rxout_buf_base")
	.dwattr $C$DW$470, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$470, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$471	.dwtag  DW_TAG_member
	.dwattr $C$DW$471, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$471, DW_AT_name("expand_ptr")
	.dwattr $C$DW$471, DW_AT_TI_symbol_name("_expand_ptr")
	.dwattr $C$DW$471, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$471, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$472	.dwtag  DW_TAG_member
	.dwattr $C$DW$472, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$472, DW_AT_name("pack_ptr")
	.dwattr $C$DW$472, DW_AT_TI_symbol_name("_pack_ptr")
	.dwattr $C$DW$472, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$472, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$101

$C$DW$T$209	.dwtag  DW_TAG_typedef, DW_AT_name("ecuContext_t")
	.dwattr $C$DW$T$209, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$T$209, DW_AT_language(DW_LANG_C)

$C$DW$T$108	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$108, DW_AT_name("siuSetup_s")
	.dwattr $C$DW$T$108, DW_AT_byte_size(0x46e)
$C$DW$473	.dwtag  DW_TAG_member
	.dwattr $C$DW$473, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$473, DW_AT_name("exec")
	.dwattr $C$DW$473, DW_AT_TI_symbol_name("_exec")
	.dwattr $C$DW$473, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$473, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$474	.dwtag  DW_TAG_member
	.dwattr $C$DW$474, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$474, DW_AT_name("sample_cnt")
	.dwattr $C$DW$474, DW_AT_TI_symbol_name("_sample_cnt")
	.dwattr $C$DW$474, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$474, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$475	.dwtag  DW_TAG_member
	.dwattr $C$DW$475, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$475, DW_AT_name("clock_mul")
	.dwattr $C$DW$475, DW_AT_TI_symbol_name("_clock_mul")
	.dwattr $C$DW$475, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$475, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$476	.dwtag  DW_TAG_member
	.dwattr $C$DW$476, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$476, DW_AT_name("pcm_format")
	.dwattr $C$DW$476, DW_AT_TI_symbol_name("_pcm_format")
	.dwattr $C$DW$476, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$476, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$477	.dwtag  DW_TAG_member
	.dwattr $C$DW$477, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$477, DW_AT_name("pcm_bits")
	.dwattr $C$DW$477, DW_AT_TI_symbol_name("_pcm_bits")
	.dwattr $C$DW$477, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$477, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$478	.dwtag  DW_TAG_member
	.dwattr $C$DW$478, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$478, DW_AT_name("frame_size")
	.dwattr $C$DW$478, DW_AT_TI_symbol_name("_frame_size")
	.dwattr $C$DW$478, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$478, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$479	.dwtag  DW_TAG_member
	.dwattr $C$DW$479, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$479, DW_AT_name("ecu_y2x_delay")
	.dwattr $C$DW$479, DW_AT_TI_symbol_name("_ecu_y2x_delay")
	.dwattr $C$DW$479, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$479, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$480	.dwtag  DW_TAG_member
	.dwattr $C$DW$480, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$480, DW_AT_name("ecu_fltseg_length")
	.dwattr $C$DW$480, DW_AT_TI_symbol_name("_ecu_fltseg_length")
	.dwattr $C$DW$480, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$480, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$481	.dwtag  DW_TAG_member
	.dwattr $C$DW$481, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$481, DW_AT_name("ecu_num_fltseg")
	.dwattr $C$DW$481, DW_AT_TI_symbol_name("_ecu_num_fltseg")
	.dwattr $C$DW$481, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$481, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$482	.dwtag  DW_TAG_member
	.dwattr $C$DW$482, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$482, DW_AT_name("ecu_filter_length")
	.dwattr $C$DW$482, DW_AT_TI_symbol_name("_ecu_filter_length")
	.dwattr $C$DW$482, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$482, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$483	.dwtag  DW_TAG_member
	.dwattr $C$DW$483, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$483, DW_AT_name("hyb_filter_length")
	.dwattr $C$DW$483, DW_AT_TI_symbol_name("_hyb_filter_length")
	.dwattr $C$DW$483, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$483, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$484	.dwtag  DW_TAG_member
	.dwattr $C$DW$484, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$484, DW_AT_name("toggle_ecu")
	.dwattr $C$DW$484, DW_AT_TI_symbol_name("_toggle_ecu")
	.dwattr $C$DW$484, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$484, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$485	.dwtag  DW_TAG_member
	.dwattr $C$DW$485, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$485, DW_AT_name("ecuCtl")
	.dwattr $C$DW$485, DW_AT_TI_symbol_name("_ecuCtl")
	.dwattr $C$DW$485, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$485, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$486	.dwtag  DW_TAG_member
	.dwattr $C$DW$486, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$486, DW_AT_name("toggle_hyb")
	.dwattr $C$DW$486, DW_AT_TI_symbol_name("_toggle_hyb")
	.dwattr $C$DW$486, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$486, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$487	.dwtag  DW_TAG_member
	.dwattr $C$DW$487, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$487, DW_AT_name("hybCtl")
	.dwattr $C$DW$487, DW_AT_TI_symbol_name("_hybCtl")
	.dwattr $C$DW$487, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$487, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$488	.dwtag  DW_TAG_member
	.dwattr $C$DW$488, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$488, DW_AT_name("toggle_tx_sg")
	.dwattr $C$DW$488, DW_AT_TI_symbol_name("_toggle_tx_sg")
	.dwattr $C$DW$488, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$488, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$489	.dwtag  DW_TAG_member
	.dwattr $C$DW$489, DW_AT_type(*$C$DW$T$104)
	.dwattr $C$DW$489, DW_AT_name("txSGN")
	.dwattr $C$DW$489, DW_AT_TI_symbol_name("_txSGN")
	.dwattr $C$DW$489, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$489, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$490	.dwtag  DW_TAG_member
	.dwattr $C$DW$490, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$490, DW_AT_name("toggle_rx_sg")
	.dwattr $C$DW$490, DW_AT_TI_symbol_name("_toggle_rx_sg")
	.dwattr $C$DW$490, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$490, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$491	.dwtag  DW_TAG_member
	.dwattr $C$DW$491, DW_AT_type(*$C$DW$T$104)
	.dwattr $C$DW$491, DW_AT_name("rxSGN")
	.dwattr $C$DW$491, DW_AT_TI_symbol_name("_rxSGN")
	.dwattr $C$DW$491, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$491, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$492	.dwtag  DW_TAG_member
	.dwattr $C$DW$492, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$492, DW_AT_name("toggle_piu")
	.dwattr $C$DW$492, DW_AT_TI_symbol_name("_toggle_piu")
	.dwattr $C$DW$492, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr $C$DW$492, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$493	.dwtag  DW_TAG_member
	.dwattr $C$DW$493, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$493, DW_AT_name("piuCtl")
	.dwattr $C$DW$493, DW_AT_TI_symbol_name("_piuCtl")
	.dwattr $C$DW$493, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr $C$DW$493, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$494	.dwtag  DW_TAG_member
	.dwattr $C$DW$494, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$494, DW_AT_name("toggle_getflt")
	.dwattr $C$DW$494, DW_AT_TI_symbol_name("_toggle_getflt")
	.dwattr $C$DW$494, DW_AT_data_member_location[DW_OP_plus_uconst 0x50]
	.dwattr $C$DW$494, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$495	.dwtag  DW_TAG_member
	.dwattr $C$DW$495, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$495, DW_AT_name("getflt")
	.dwattr $C$DW$495, DW_AT_TI_symbol_name("_getflt")
	.dwattr $C$DW$495, DW_AT_data_member_location[DW_OP_plus_uconst 0x51]
	.dwattr $C$DW$495, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$496	.dwtag  DW_TAG_member
	.dwattr $C$DW$496, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$496, DW_AT_name("profile_enable")
	.dwattr $C$DW$496, DW_AT_TI_symbol_name("_profile_enable")
	.dwattr $C$DW$496, DW_AT_data_member_location[DW_OP_plus_uconst 0x55]
	.dwattr $C$DW$496, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$497	.dwtag  DW_TAG_member
	.dwattr $C$DW$497, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$497, DW_AT_name("toggle_freerun")
	.dwattr $C$DW$497, DW_AT_TI_symbol_name("_toggle_freerun")
	.dwattr $C$DW$497, DW_AT_data_member_location[DW_OP_plus_uconst 0x56]
	.dwattr $C$DW$497, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$498	.dwtag  DW_TAG_member
	.dwattr $C$DW$498, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$498, DW_AT_name("freerun_frame_cnt")
	.dwattr $C$DW$498, DW_AT_TI_symbol_name("_freerun_frame_cnt")
	.dwattr $C$DW$498, DW_AT_data_member_location[DW_OP_plus_uconst 0x57]
	.dwattr $C$DW$498, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$499	.dwtag  DW_TAG_member
	.dwattr $C$DW$499, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$499, DW_AT_name("Fs")
	.dwattr $C$DW$499, DW_AT_TI_symbol_name("_Fs")
	.dwattr $C$DW$499, DW_AT_data_member_location[DW_OP_plus_uconst 0x58]
	.dwattr $C$DW$499, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$500	.dwtag  DW_TAG_member
	.dwattr $C$DW$500, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$500, DW_AT_name("error_id")
	.dwattr $C$DW$500, DW_AT_TI_symbol_name("_error_id")
	.dwattr $C$DW$500, DW_AT_data_member_location[DW_OP_plus_uconst 0x59]
	.dwattr $C$DW$500, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$501	.dwtag  DW_TAG_member
	.dwattr $C$DW$501, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$501, DW_AT_name("sig_src")
	.dwattr $C$DW$501, DW_AT_TI_symbol_name("_sig_src")
	.dwattr $C$DW$501, DW_AT_data_member_location[DW_OP_plus_uconst 0x5a]
	.dwattr $C$DW$501, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$502	.dwtag  DW_TAG_member
	.dwattr $C$DW$502, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$502, DW_AT_name("save_to_file")
	.dwattr $C$DW$502, DW_AT_TI_symbol_name("_save_to_file")
	.dwattr $C$DW$502, DW_AT_data_member_location[DW_OP_plus_uconst 0x5b]
	.dwattr $C$DW$502, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$503	.dwtag  DW_TAG_member
	.dwattr $C$DW$503, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$503, DW_AT_name("num_channel")
	.dwattr $C$DW$503, DW_AT_TI_symbol_name("_num_channel")
	.dwattr $C$DW$503, DW_AT_data_member_location[DW_OP_plus_uconst 0x5c]
	.dwattr $C$DW$503, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$504	.dwtag  DW_TAG_member
	.dwattr $C$DW$504, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$504, DW_AT_name("output_chnum")
	.dwattr $C$DW$504, DW_AT_TI_symbol_name("_output_chnum")
	.dwattr $C$DW$504, DW_AT_data_member_location[DW_OP_plus_uconst 0x5d]
	.dwattr $C$DW$504, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$505	.dwtag  DW_TAG_member
	.dwattr $C$DW$505, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$505, DW_AT_name("rin")
	.dwattr $C$DW$505, DW_AT_TI_symbol_name("_rin")
	.dwattr $C$DW$505, DW_AT_data_member_location[DW_OP_plus_uconst 0x5e]
	.dwattr $C$DW$505, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$506	.dwtag  DW_TAG_member
	.dwattr $C$DW$506, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$506, DW_AT_name("sin")
	.dwattr $C$DW$506, DW_AT_TI_symbol_name("_sin")
	.dwattr $C$DW$506, DW_AT_data_member_location[DW_OP_plus_uconst 0x162]
	.dwattr $C$DW$506, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$507	.dwtag  DW_TAG_member
	.dwattr $C$DW$507, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$507, DW_AT_name("rout")
	.dwattr $C$DW$507, DW_AT_TI_symbol_name("_rout")
	.dwattr $C$DW$507, DW_AT_data_member_location[DW_OP_plus_uconst 0x266]
	.dwattr $C$DW$507, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$508	.dwtag  DW_TAG_member
	.dwattr $C$DW$508, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$508, DW_AT_name("sout")
	.dwattr $C$DW$508, DW_AT_TI_symbol_name("_sout")
	.dwattr $C$DW$508, DW_AT_data_member_location[DW_OP_plus_uconst 0x36a]
	.dwattr $C$DW$508, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$108

$C$DW$T$210	.dwtag  DW_TAG_typedef, DW_AT_name("siuSetup_t")
	.dwattr $C$DW$T$210, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$T$210, DW_AT_language(DW_LANG_C)
$C$DW$509	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$509, DW_AT_type(*$C$DW$T$210)
$C$DW$T$211	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$211, DW_AT_type(*$C$DW$509)
$C$DW$T$212	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$212, DW_AT_type(*$C$DW$T$211)
	.dwattr $C$DW$T$212, DW_AT_address_class(0x17)
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

$C$DW$510	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$510, DW_AT_location[DW_OP_reg0]
$C$DW$511	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$511, DW_AT_location[DW_OP_reg1]
$C$DW$512	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$512, DW_AT_location[DW_OP_reg2]
$C$DW$513	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$513, DW_AT_location[DW_OP_reg3]
$C$DW$514	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$514, DW_AT_location[DW_OP_reg4]
$C$DW$515	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$515, DW_AT_location[DW_OP_reg5]
$C$DW$516	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$516, DW_AT_location[DW_OP_reg6]
$C$DW$517	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$517, DW_AT_location[DW_OP_reg7]
$C$DW$518	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$518, DW_AT_location[DW_OP_reg8]
$C$DW$519	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$519, DW_AT_location[DW_OP_reg9]
$C$DW$520	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$520, DW_AT_location[DW_OP_reg10]
$C$DW$521	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$521, DW_AT_location[DW_OP_reg11]
$C$DW$522	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$522, DW_AT_location[DW_OP_reg12]
$C$DW$523	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$523, DW_AT_location[DW_OP_reg13]
$C$DW$524	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$524, DW_AT_location[DW_OP_reg14]
$C$DW$525	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$525, DW_AT_location[DW_OP_reg15]
$C$DW$526	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$526, DW_AT_location[DW_OP_reg16]
$C$DW$527	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$527, DW_AT_location[DW_OP_reg17]
$C$DW$528	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$528, DW_AT_location[DW_OP_reg18]
$C$DW$529	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$529, DW_AT_location[DW_OP_reg19]
$C$DW$530	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$530, DW_AT_location[DW_OP_reg20]
$C$DW$531	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$531, DW_AT_location[DW_OP_reg21]
$C$DW$532	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$532, DW_AT_location[DW_OP_reg22]
$C$DW$533	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$533, DW_AT_location[DW_OP_reg23]
$C$DW$534	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$534, DW_AT_location[DW_OP_reg24]
$C$DW$535	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$535, DW_AT_location[DW_OP_reg25]
$C$DW$536	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$536, DW_AT_location[DW_OP_reg26]
$C$DW$537	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$537, DW_AT_location[DW_OP_reg27]
$C$DW$538	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$538, DW_AT_location[DW_OP_reg28]
$C$DW$539	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$539, DW_AT_location[DW_OP_reg29]
$C$DW$540	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$540, DW_AT_location[DW_OP_reg30]
$C$DW$541	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$541, DW_AT_location[DW_OP_reg31]
$C$DW$542	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$542, DW_AT_location[DW_OP_regx 0x20]
$C$DW$543	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$543, DW_AT_location[DW_OP_regx 0x21]
$C$DW$544	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$544, DW_AT_location[DW_OP_regx 0x22]
$C$DW$545	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$545, DW_AT_location[DW_OP_regx 0x23]
$C$DW$546	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$546, DW_AT_location[DW_OP_regx 0x24]
$C$DW$547	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$547, DW_AT_location[DW_OP_regx 0x25]
$C$DW$548	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$548, DW_AT_location[DW_OP_regx 0x26]
$C$DW$549	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$549, DW_AT_location[DW_OP_regx 0x27]
$C$DW$550	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$550, DW_AT_location[DW_OP_regx 0x28]
$C$DW$551	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$551, DW_AT_location[DW_OP_regx 0x29]
$C$DW$552	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$552, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$553	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$553, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$554	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$554, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$555	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$555, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$556	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$556, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$557	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$557, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$558	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$558, DW_AT_location[DW_OP_regx 0x30]
$C$DW$559	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$559, DW_AT_location[DW_OP_regx 0x31]
$C$DW$560	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$560, DW_AT_location[DW_OP_regx 0x32]
$C$DW$561	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$561, DW_AT_location[DW_OP_regx 0x33]
$C$DW$562	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$562, DW_AT_location[DW_OP_regx 0x34]
$C$DW$563	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$563, DW_AT_location[DW_OP_regx 0x35]
$C$DW$564	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$564, DW_AT_location[DW_OP_regx 0x36]
$C$DW$565	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$565, DW_AT_location[DW_OP_regx 0x37]
$C$DW$566	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$566, DW_AT_location[DW_OP_regx 0x38]
$C$DW$567	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$567, DW_AT_location[DW_OP_regx 0x39]
$C$DW$568	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$568, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$569	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$569, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$570	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$570, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$571	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$571, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$572	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$572, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$573	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$573, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$574	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$574, DW_AT_location[DW_OP_regx 0x40]
$C$DW$575	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$575, DW_AT_location[DW_OP_regx 0x41]
$C$DW$576	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$576, DW_AT_location[DW_OP_regx 0x42]
$C$DW$577	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$577, DW_AT_location[DW_OP_regx 0x43]
$C$DW$578	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$578, DW_AT_location[DW_OP_regx 0x44]
$C$DW$579	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$579, DW_AT_location[DW_OP_regx 0x45]
$C$DW$580	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$580, DW_AT_location[DW_OP_regx 0x46]
$C$DW$581	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$581, DW_AT_location[DW_OP_regx 0x47]
$C$DW$582	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$582, DW_AT_location[DW_OP_regx 0x48]
$C$DW$583	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$583, DW_AT_location[DW_OP_regx 0x49]
$C$DW$584	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$584, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$585	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$585, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$586	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$586, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$587	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$587, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$588	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$588, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$589	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$589, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$590	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$590, DW_AT_location[DW_OP_regx 0x50]
$C$DW$591	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$591, DW_AT_location[DW_OP_regx 0x51]
$C$DW$592	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$592, DW_AT_location[DW_OP_regx 0x52]
$C$DW$593	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$593, DW_AT_location[DW_OP_regx 0x53]
$C$DW$594	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$594, DW_AT_location[DW_OP_regx 0x54]
$C$DW$595	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$595, DW_AT_location[DW_OP_regx 0x55]
$C$DW$596	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$596, DW_AT_location[DW_OP_regx 0x56]
$C$DW$597	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$597, DW_AT_location[DW_OP_regx 0x57]
$C$DW$598	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$598, DW_AT_location[DW_OP_regx 0x58]
$C$DW$599	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$599, DW_AT_location[DW_OP_regx 0x59]
$C$DW$600	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$600, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$601	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$601, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

