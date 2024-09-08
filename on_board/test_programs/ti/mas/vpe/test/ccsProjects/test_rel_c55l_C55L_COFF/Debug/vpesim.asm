;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                          PC v4.4.1 *
;* Date/Time created: Fri Jul 05 14:18:07 2013                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen PC v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\vpe\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug")
;******************************************************************************
;* CINIT RECORDS                                                              *
;******************************************************************************
	.sect	".cinit"
	.align	1
	.field  	2,16
	.field  	_vpeSim+0,24
	.field  	0,8
	.field	_vpeSimC,32		; _vpeSim @ 0

	.sect	".cinit"
	.align	1
	.field  	2,16
	.field  	_slmInst_ptr+0,24
	.field  	0,8
	.field	0,32			; _slmInst_ptr @ 0

	.sect	".cinit"
	.align	1
	.field  	2,16
	.field  	_hlcInst_ptr+0,24
	.field  	0,8
	.field	0,32			; _hlcInst_ptr @ 0

	.sect	".cinit"
	.align	1
	.field  	2,16
	.field  	_hctrlInst_ptr+0,24
	.field  	0,8
	.field	_hctrlInst,32		; _hctrlInst_ptr @ 0

	.sect	".cinit"
	.align	1
	.field  	2,16
	.field  	_snlInst_ptr+0,24
	.field  	0,8
	.field	0,32			; _snlInst_ptr @ 0

	.sect	".cinit"
	.align	1
	.field  	1,16
	.field  	_spchLevdB+0,24
	.field  	0,8
	.field	32767,16			; _spchLevdB @ 0

	.sect	".cinit"
	.align	1
	.field  	1,16
	.field  	_noiseLevdB+0,24
	.field  	0,8
	.field	32767,16			; _noiseLevdB @ 0

	.sect	".cinit"
	.align	1
	.field  	1,16
	.field  	_Nthresh+0,24
	.field  	0,8
	.field	32767,16			; _Nthresh @ 0

	.sect	".cinit"
	.align	1
	.field  	2,16
	.field  	_svdInst_ptr+0,24
	.field  	0,8
	.field	0,32			; _svdInst_ptr @ 0

	.sect	".cinit"
	.align	1
	.field  	2,16
	.field  	_nrInst_ptr+0,24
	.field  	0,8
	.field	0,32			; _nrInst_ptr @ 0

	.sect	".cinit"
	.align	1
	.field  	2,16
	.field  	_sgnInst_ptr+0,24
	.field  	0,8
	.field	0,32			; _sgnInst_ptr @ 0


$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("exit")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_exit")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$1


$C$DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("printf")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_printf")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$94)
$C$DW$5	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag $C$DW$3


$C$DW$6	.dwtag  DW_TAG_subprogram, DW_AT_name("hlcControl")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_hlcControl")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$6, DW_AT_declaration
	.dwattr $C$DW$6, DW_AT_external
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$3)
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$54)
	.dwendtag $C$DW$6


$C$DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("hlcProcess")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_hlcProcess")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$9, DW_AT_declaration
	.dwattr $C$DW$9, DW_AT_external
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$3)
$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$9


$C$DW$12	.dwtag  DW_TAG_subprogram, DW_AT_name("slmControl")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_slmControl")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$12, DW_AT_declaration
	.dwattr $C$DW$12, DW_AT_external
$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$3)
$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$12


$C$DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("slmProcess")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_slmProcess")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$15, DW_AT_declaration
	.dwattr $C$DW$15, DW_AT_external
$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$3)
$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$3)
$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$15


$C$DW$19	.dwtag  DW_TAG_subprogram, DW_AT_name("snlProcess")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_snlProcess")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$19, DW_AT_declaration
	.dwattr $C$DW$19, DW_AT_external
$C$DW$20	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$3)
$C$DW$21	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$61)
$C$DW$22	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$50)
	.dwendtag $C$DW$19


$C$DW$23	.dwtag  DW_TAG_subprogram, DW_AT_name("snlGetLevels")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_snlGetLevels")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$23, DW_AT_declaration
	.dwattr $C$DW$23, DW_AT_external
$C$DW$24	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$3)
$C$DW$25	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$97)
$C$DW$26	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$97)
$C$DW$27	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$109)
	.dwendtag $C$DW$23


$C$DW$28	.dwtag  DW_TAG_subprogram, DW_AT_name("svdProcess")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_svdProcess")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$28, DW_AT_declaration
	.dwattr $C$DW$28, DW_AT_external
$C$DW$29	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$3)
$C$DW$30	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$61)
$C$DW$31	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$50)
	.dwendtag $C$DW$28


$C$DW$32	.dwtag  DW_TAG_subprogram, DW_AT_name("svdGetDecision")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_svdGetDecision")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$32, DW_AT_declaration
	.dwattr $C$DW$32, DW_AT_external
$C$DW$33	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$3)
$C$DW$34	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$113)
	.dwendtag $C$DW$32


$C$DW$35	.dwtag  DW_TAG_subprogram, DW_AT_name("svdGetLevels")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_svdGetLevels")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$35, DW_AT_declaration
	.dwattr $C$DW$35, DW_AT_external
$C$DW$36	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$3)
$C$DW$37	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$97)
$C$DW$38	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$97)
$C$DW$39	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$109)
	.dwendtag $C$DW$35


$C$DW$40	.dwtag  DW_TAG_subprogram, DW_AT_name("sfcDecimationBy2")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_sfcDecimationBy2")
	.dwattr $C$DW$40, DW_AT_declaration
	.dwattr $C$DW$40, DW_AT_external
$C$DW$41	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$61)
$C$DW$42	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$61)
$C$DW$43	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$63)
$C$DW$44	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$21)
$C$DW$45	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$40


$C$DW$46	.dwtag  DW_TAG_subprogram, DW_AT_name("sfcInterpolationBy2")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_sfcInterpolationBy2")
	.dwattr $C$DW$46, DW_AT_declaration
	.dwattr $C$DW$46, DW_AT_external
$C$DW$47	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$61)
$C$DW$48	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$61)
$C$DW$49	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$63)
$C$DW$50	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$21)
$C$DW$51	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$46


$C$DW$52	.dwtag  DW_TAG_subprogram, DW_AT_name("pcmUlawEncoderP")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_pcmUlawEncoderP")
	.dwattr $C$DW$52, DW_AT_declaration
	.dwattr $C$DW$52, DW_AT_external
$C$DW$53	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$61)
$C$DW$54	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$66)
$C$DW$55	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$52


$C$DW$56	.dwtag  DW_TAG_subprogram, DW_AT_name("pcmAlawEncoderP")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_pcmAlawEncoderP")
	.dwattr $C$DW$56, DW_AT_declaration
	.dwattr $C$DW$56, DW_AT_external
$C$DW$57	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$61)
$C$DW$58	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$66)
$C$DW$59	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$56


$C$DW$60	.dwtag  DW_TAG_subprogram, DW_AT_name("pcmUlawDecoderP")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_pcmUlawDecoderP")
	.dwattr $C$DW$60, DW_AT_declaration
	.dwattr $C$DW$60, DW_AT_external
$C$DW$61	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$66)
$C$DW$62	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$61)
$C$DW$63	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$60


$C$DW$64	.dwtag  DW_TAG_subprogram, DW_AT_name("pcmAlawDecoderP")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_pcmAlawDecoderP")
	.dwattr $C$DW$64, DW_AT_declaration
	.dwattr $C$DW$64, DW_AT_external
$C$DW$65	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$66)
$C$DW$66	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$61)
$C$DW$67	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$64


$C$DW$68	.dwtag  DW_TAG_subprogram, DW_AT_name("asnrProcess")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_asnrProcess")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$68, DW_AT_declaration
	.dwattr $C$DW$68, DW_AT_external
$C$DW$69	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$3)
$C$DW$70	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$3)
$C$DW$71	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$68


$C$DW$72	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_sim_fileio_init")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_vpe_sim_fileio_init")
	.dwattr $C$DW$72, DW_AT_declaration
	.dwattr $C$DW$72, DW_AT_external
$C$DW$73	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$55)
$C$DW$74	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$50)
	.dwendtag $C$DW$72


$C$DW$75	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_sim_fileio_end")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_vpe_sim_fileio_end")
	.dwattr $C$DW$75, DW_AT_declaration
	.dwattr $C$DW$75, DW_AT_external
$C$DW$76	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$55)
	.dwendtag $C$DW$75


$C$DW$77	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_sim_init")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_vpe_sim_init")
	.dwattr $C$DW$77, DW_AT_declaration
	.dwattr $C$DW$77, DW_AT_external

$C$DW$78	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_init")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_vpe_init")
	.dwattr $C$DW$78, DW_AT_declaration
	.dwattr $C$DW$78, DW_AT_external

$C$DW$79	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_sim_fread")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_vpe_sim_fread")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$79, DW_AT_declaration
	.dwattr $C$DW$79, DW_AT_external
$C$DW$80	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$61)
$C$DW$81	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$21)
$C$DW$82	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$55)
	.dwendtag $C$DW$79


$C$DW$83	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_sim_fwrite")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_vpe_sim_fwrite")
	.dwattr $C$DW$83, DW_AT_declaration
	.dwattr $C$DW$83, DW_AT_external
$C$DW$84	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$61)
$C$DW$85	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$21)
$C$DW$86	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$55)
	.dwendtag $C$DW$83


$C$DW$87	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_print")
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("_vpe_print")
	.dwattr $C$DW$87, DW_AT_declaration
	.dwattr $C$DW$87, DW_AT_external
$C$DW$88	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$81)
	.dwendtag $C$DW$87


$C$DW$89	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_iprint")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_vpe_iprint")
	.dwattr $C$DW$89, DW_AT_declaration
	.dwattr $C$DW$89, DW_AT_external
$C$DW$90	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$81)
$C$DW$91	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$41)
	.dwendtag $C$DW$89


$C$DW$92	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_sim_set_sgn")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_vpe_sim_set_sgn")
	.dwattr $C$DW$92, DW_AT_declaration
	.dwattr $C$DW$92, DW_AT_external
$C$DW$93	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$3)
$C$DW$94	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$56)
$C$DW$95	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$92


$C$DW$96	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_sim_gen_frame")
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("_vpe_sim_gen_frame")
	.dwattr $C$DW$96, DW_AT_declaration
	.dwattr $C$DW$96, DW_AT_external
$C$DW$97	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$3)
$C$DW$98	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$21)
$C$DW$99	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$61)
	.dwendtag $C$DW$96


$C$DW$100	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_deinstantiate_nr")
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("_vpe_deinstantiate_nr")
	.dwattr $C$DW$100, DW_AT_declaration
	.dwattr $C$DW$100, DW_AT_external

$C$DW$101	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_halt")
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_vpe_halt")
	.dwattr $C$DW$101, DW_AT_declaration
	.dwattr $C$DW$101, DW_AT_external
$C$DW$102	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$90)
	.dwendtag $C$DW$101


$C$DW$103	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_sim_flush_cache")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("_vpe_sim_flush_cache")
	.dwattr $C$DW$103, DW_AT_declaration
	.dwattr $C$DW$103, DW_AT_external

$C$DW$104	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_sim_read_cfg")
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_vpe_sim_read_cfg")
	.dwattr $C$DW$104, DW_AT_declaration
	.dwattr $C$DW$104, DW_AT_external
	.global	_vpeIOBufs
	.bss	_vpeIOBufs,320,0,0
$C$DW$105	.dwtag  DW_TAG_variable, DW_AT_name("vpeIOBufs")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_vpeIOBufs")
	.dwattr $C$DW$105, DW_AT_location[DW_OP_addr _vpeIOBufs]
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$105, DW_AT_external
	.global	_vpeSimC
	.bss	_vpeSimC,1092,0,2
$C$DW$106	.dwtag  DW_TAG_variable, DW_AT_name("vpeSimC")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_vpeSimC")
	.dwattr $C$DW$106, DW_AT_location[DW_OP_addr _vpeSimC]
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$106, DW_AT_external
	.global	_vpeSim
	.bss	_vpeSim,2,0,2
$C$DW$107	.dwtag  DW_TAG_variable, DW_AT_name("vpeSim")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_vpeSim")
	.dwattr $C$DW$107, DW_AT_location[DW_OP_addr _vpeSim]
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$107, DW_AT_external
	.global	_sigInBuffer
	.bss	_sigInBuffer,640,0,0
$C$DW$108	.dwtag  DW_TAG_variable, DW_AT_name("sigInBuffer")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_sigInBuffer")
	.dwattr $C$DW$108, DW_AT_location[DW_OP_addr _sigInBuffer]
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$108, DW_AT_external
	.global	_sigOutBuffer
	.bss	_sigOutBuffer,640,0,0
$C$DW$109	.dwtag  DW_TAG_variable, DW_AT_name("sigOutBuffer")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_sigOutBuffer")
	.dwattr $C$DW$109, DW_AT_location[DW_OP_addr _sigOutBuffer]
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$109, DW_AT_external
	.global	_decimDelayLine
	.bss	_decimDelayLine,192,0,0
$C$DW$110	.dwtag  DW_TAG_variable, DW_AT_name("decimDelayLine")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_decimDelayLine")
	.dwattr $C$DW$110, DW_AT_location[DW_OP_addr _decimDelayLine]
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$110, DW_AT_external
	.global	_interpDelayLine
	.bss	_interpDelayLine,176,0,0
$C$DW$111	.dwtag  DW_TAG_variable, DW_AT_name("interpDelayLine")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_interpDelayLine")
	.dwattr $C$DW$111, DW_AT_location[DW_OP_addr _interpDelayLine]
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$111, DW_AT_external
	.global	_slmInst_ptr
	.bss	_slmInst_ptr,2,0,2
$C$DW$112	.dwtag  DW_TAG_variable, DW_AT_name("slmInst_ptr")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_slmInst_ptr")
	.dwattr $C$DW$112, DW_AT_location[DW_OP_addr _slmInst_ptr]
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$112, DW_AT_external
	.global	_hlcInst_ptr
	.bss	_hlcInst_ptr,2,0,2
$C$DW$113	.dwtag  DW_TAG_variable, DW_AT_name("hlcInst_ptr")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_hlcInst_ptr")
	.dwattr $C$DW$113, DW_AT_location[DW_OP_addr _hlcInst_ptr]
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$113, DW_AT_external
	.global	_hctrlInst
	.bss	_hctrlInst,2,0,0
$C$DW$114	.dwtag  DW_TAG_variable, DW_AT_name("hctrlInst")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_hctrlInst")
	.dwattr $C$DW$114, DW_AT_location[DW_OP_addr _hctrlInst]
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$114, DW_AT_external
	.global	_hctrlInst_ptr
	.bss	_hctrlInst_ptr,2,0,2
$C$DW$115	.dwtag  DW_TAG_variable, DW_AT_name("hctrlInst_ptr")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_hctrlInst_ptr")
	.dwattr $C$DW$115, DW_AT_location[DW_OP_addr _hctrlInst_ptr]
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$115, DW_AT_external
	.global	_snlInst_ptr
	.bss	_snlInst_ptr,2,0,2
$C$DW$116	.dwtag  DW_TAG_variable, DW_AT_name("snlInst_ptr")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("_snlInst_ptr")
	.dwattr $C$DW$116, DW_AT_location[DW_OP_addr _snlInst_ptr]
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$116, DW_AT_external
	.global	_spchLevdB
	.bss	_spchLevdB,1,0,0
$C$DW$117	.dwtag  DW_TAG_variable, DW_AT_name("spchLevdB")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_spchLevdB")
	.dwattr $C$DW$117, DW_AT_location[DW_OP_addr _spchLevdB]
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$117, DW_AT_external
	.global	_noiseLevdB
	.bss	_noiseLevdB,1,0,0
$C$DW$118	.dwtag  DW_TAG_variable, DW_AT_name("noiseLevdB")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_noiseLevdB")
	.dwattr $C$DW$118, DW_AT_location[DW_OP_addr _noiseLevdB]
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$118, DW_AT_external
	.global	_Nthresh
	.bss	_Nthresh,1,0,0
$C$DW$119	.dwtag  DW_TAG_variable, DW_AT_name("Nthresh")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_Nthresh")
	.dwattr $C$DW$119, DW_AT_location[DW_OP_addr _Nthresh]
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$119, DW_AT_external
	.global	_snlLevOut
	.bss	_snlLevOut,260,0,2
$C$DW$120	.dwtag  DW_TAG_variable, DW_AT_name("snlLevOut")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_snlLevOut")
	.dwattr $C$DW$120, DW_AT_location[DW_OP_addr _snlLevOut]
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$120, DW_AT_external
	.global	_svdInst_ptr
	.bss	_svdInst_ptr,2,0,2
$C$DW$121	.dwtag  DW_TAG_variable, DW_AT_name("svdInst_ptr")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("_svdInst_ptr")
	.dwattr $C$DW$121, DW_AT_location[DW_OP_addr _svdInst_ptr]
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$121, DW_AT_external
	.global	_svdOut
	.bss	_svdOut,260,0,2
$C$DW$122	.dwtag  DW_TAG_variable, DW_AT_name("svdOut")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_svdOut")
	.dwattr $C$DW$122, DW_AT_location[DW_OP_addr _svdOut]
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$122, DW_AT_external
	.global	_nrInst_ptr
	.bss	_nrInst_ptr,2,0,2
$C$DW$123	.dwtag  DW_TAG_variable, DW_AT_name("nrInst_ptr")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_nrInst_ptr")
	.dwattr $C$DW$123, DW_AT_location[DW_OP_addr _nrInst_ptr]
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$123, DW_AT_external
	.global	_sgnInst_ptr
	.bss	_sgnInst_ptr,2,0,2
$C$DW$124	.dwtag  DW_TAG_variable, DW_AT_name("sgnInst_ptr")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_sgnInst_ptr")
	.dwattr $C$DW$124, DW_AT_location[DW_OP_addr _sgnInst_ptr]
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$124, DW_AT_external
;	C:\MAS_Tools\CCSV5_2_1\ccsv5\tools\compiler\c5500_4.4.1\bin\acp55.exe -@C:\\DOCUME~1\\a0868396\\LOCALS~1\\Temp\\0508012 
	.sect	".text"

$C$DW$125	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_banner_print")
	.dwattr $C$DW$125, DW_AT_low_pc(_vpe_banner_print)
	.dwattr $C$DW$125, DW_AT_high_pc(0x00)
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_vpe_banner_print")
	.dwattr $C$DW$125, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$125, DW_AT_TI_begin_line(0x69)
	.dwattr $C$DW$125, DW_AT_TI_begin_column(0x14)
	.dwattr $C$DW$125, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 106,column 1,is_stmt,address _vpe_banner_print

	.dwfde $C$DW$CIE, _vpe_banner_print
$C$DW$126	.dwtag  DW_TAG_formal_parameter, DW_AT_name("str")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_str")
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$126, DW_AT_location[DW_OP_reg17]
;----------------------------------------------------------------------
; 105 | static inline void vpe_banner_print (char *str)                        
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: vpe_banner_print                                             *
;*                                                                             *
;*   Function Uses Regs : AR0,XAR0,SP,M40,SATA,SATD,RDM,FRCT,SMUL              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_vpe_banner_print:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-3
	.dwcfi	cfa_offset, 4
$C$DW$127	.dwtag  DW_TAG_variable, DW_AT_name("str")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_str")
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$127, DW_AT_location[DW_OP_bregx 0x24 0]
        dbl(*SP(#0)) = XAR0
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 107,column 3,is_stmt
;----------------------------------------------------------------------
; 107 | vpe_print ("\n");                                                      
;----------------------------------------------------------------------
        XAR0 = #$C$FSL1 ; |107| 
$C$DW$128	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$128, DW_AT_low_pc(0x00)
	.dwattr $C$DW$128, DW_AT_name("_vpe_print")
	.dwattr $C$DW$128, DW_AT_TI_call
        call #_vpe_print ; |107| 
                                        ; call occurs [#_vpe_print] ; |107| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 108,column 3,is_stmt
;----------------------------------------------------------------------
; 108 | vpe_print ("------------------------------\n");                        
;----------------------------------------------------------------------
        XAR0 = #$C$FSL2 ; |108| 
$C$DW$129	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$129, DW_AT_low_pc(0x00)
	.dwattr $C$DW$129, DW_AT_name("_vpe_print")
	.dwattr $C$DW$129, DW_AT_TI_call
        call #_vpe_print ; |108| 
                                        ; call occurs [#_vpe_print] ; |108| 
        XAR0 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 109,column 3,is_stmt
;----------------------------------------------------------------------
; 109 | vpe_print (str);                                                       
;----------------------------------------------------------------------
$C$DW$130	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$130, DW_AT_low_pc(0x00)
	.dwattr $C$DW$130, DW_AT_name("_vpe_print")
	.dwattr $C$DW$130, DW_AT_TI_call
        call #_vpe_print ; |109| 
                                        ; call occurs [#_vpe_print] ; |109| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 110,column 3,is_stmt
;----------------------------------------------------------------------
; 110 | vpe_print ("------------------------------\n");                        
;----------------------------------------------------------------------
        XAR0 = #$C$FSL2 ; |110| 
$C$DW$131	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$131, DW_AT_low_pc(0x00)
	.dwattr $C$DW$131, DW_AT_name("_vpe_print")
	.dwattr $C$DW$131, DW_AT_TI_call
        call #_vpe_print ; |110| 
                                        ; call occurs [#_vpe_print] ; |110| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 111,column 3,is_stmt
;----------------------------------------------------------------------
; 111 | vpe_print ("\n");                                                      
;----------------------------------------------------------------------
        XAR0 = #$C$FSL1 ; |111| 
$C$DW$132	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$132, DW_AT_low_pc(0x00)
	.dwattr $C$DW$132, DW_AT_name("_vpe_print")
	.dwattr $C$DW$132, DW_AT_TI_call
        call #_vpe_print ; |111| 
                                        ; call occurs [#_vpe_print] ; |111| 
        SP = SP + #3
	.dwcfi	cfa_offset, 1
$C$DW$133	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$133, DW_AT_low_pc(0x00)
	.dwattr $C$DW$133, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$125, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$125, DW_AT_TI_end_line(0x70)
	.dwattr $C$DW$125, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$125

	.sect	".text"
	.global	_main

$C$DW$134	.dwtag  DW_TAG_subprogram, DW_AT_name("main")
	.dwattr $C$DW$134, DW_AT_low_pc(_main)
	.dwattr $C$DW$134, DW_AT_high_pc(0x00)
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("_main")
	.dwattr $C$DW$134, DW_AT_external
	.dwattr $C$DW$134, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$134, DW_AT_TI_begin_line(0x93)
	.dwattr $C$DW$134, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$134, DW_AT_TI_max_frame_size(0x16)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 148,column 1,is_stmt,address _main

	.dwfde $C$DW$CIE, _main
;----------------------------------------------------------------------
; 147 | void main (void)                                                       
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: main                                                         *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,*
;*                        XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 22 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (3 function parameters)                              *
;*                        (17 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_main:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-21
	.dwcfi	cfa_offset, 22
$C$DW$135	.dwtag  DW_TAG_variable, DW_AT_name("buf_Inptr")
	.dwattr $C$DW$135, DW_AT_TI_symbol_name("_buf_Inptr")
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$135, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$136	.dwtag  DW_TAG_variable, DW_AT_name("buf_Outptr")
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("_buf_Outptr")
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$136, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$137	.dwtag  DW_TAG_variable, DW_AT_name("svd_sig_pow")
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("_svd_sig_pow")
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$137, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$138	.dwtag  DW_TAG_variable, DW_AT_name("sample_total")
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("_sample_total")
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$138, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$139	.dwtag  DW_TAG_variable, DW_AT_name("sigIn_data")
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_sigIn_data")
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$139, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$140	.dwtag  DW_TAG_variable, DW_AT_name("second_count")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_second_count")
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$140, DW_AT_location[DW_OP_bregx 0x24 13]
$C$DW$141	.dwtag  DW_TAG_variable, DW_AT_name("sample_count")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("_sample_count")
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$141, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$142	.dwtag  DW_TAG_variable, DW_AT_name("num_tuint_in")
	.dwattr $C$DW$142, DW_AT_TI_symbol_name("_num_tuint_in")
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$142, DW_AT_location[DW_OP_bregx 0x24 15]
$C$DW$143	.dwtag  DW_TAG_variable, DW_AT_name("num_tuint_out")
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("_num_tuint_out")
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$143, DW_AT_location[DW_OP_bregx 0x24 16]
$C$DW$144	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$144, DW_AT_location[DW_OP_bregx 0x24 17]
$C$DW$145	.dwtag  DW_TAG_variable, DW_AT_name("retVal")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_retVal")
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$145, DW_AT_location[DW_OP_bregx 0x24 18]
$C$DW$146	.dwtag  DW_TAG_variable, DW_AT_name("vad_flag")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("_vad_flag")
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$146, DW_AT_location[DW_OP_bregx 0x24 19]
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 149,column 14,is_stmt
;----------------------------------------------------------------------
; 149 | linSample *buf_Inptr = (linSample *)sigInBuffer;                       
;----------------------------------------------------------------------
        XAR3 = #_sigInBuffer ; |149| 
        dbl(*SP(#4)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 150,column 14,is_stmt
;----------------------------------------------------------------------
; 150 | linSample *buf_Outptr = (linSample *)sigOutBuffer;                     
; 151 | LFract svd_sig_pow;                                                    
; 153 | tulong sample_total;                                                   
; 154 | tbool sigIn_data;                                                      
; 155 | tuint second_count;                                                    
; 156 | tuint sample_count, num_tuint_in, num_tuint_out;                       
; 157 | tint  i, retVal, vad_flag;                                             
;----------------------------------------------------------------------
        XAR3 = #_sigOutBuffer ; |150| 
        dbl(*SP(#6)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 160,column 3,is_stmt
;----------------------------------------------------------------------
; 160 | vpe_sim_init();                                                        
;----------------------------------------------------------------------
$C$DW$147	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$147, DW_AT_low_pc(0x00)
	.dwattr $C$DW$147, DW_AT_name("_vpe_sim_init")
	.dwattr $C$DW$147, DW_AT_TI_call
        call #_vpe_sim_init ; |160| 
                                        ; call occurs [#_vpe_sim_init] ; |160| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 163,column 3,is_stmt
;----------------------------------------------------------------------
; 163 | vpe_sim_read_cfg();                                                    
;----------------------------------------------------------------------
$C$DW$148	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$148, DW_AT_low_pc(0x00)
	.dwattr $C$DW$148, DW_AT_name("_vpe_sim_read_cfg")
	.dwattr $C$DW$148, DW_AT_TI_call
        call #_vpe_sim_read_cfg ; |163| 
                                        ; call occurs [#_vpe_sim_read_cfg] ; |163| 
        XAR0 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 166,column 3,is_stmt
;----------------------------------------------------------------------
; 166 | vpe_halt (&vpeSim->exec);                                              
;----------------------------------------------------------------------
$C$DW$149	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$149, DW_AT_low_pc(0x00)
	.dwattr $C$DW$149, DW_AT_name("_vpe_halt")
	.dwattr $C$DW$149, DW_AT_TI_call
        call #_vpe_halt ; |166| 
                                        ; call occurs [#_vpe_halt] ; |166| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 169,column 3,is_stmt
;----------------------------------------------------------------------
; 169 | vpe_banner_print ("Simulation:  BEGIN\n");                             
;----------------------------------------------------------------------
        XAR0 = #$C$FSL3 ; |169| 
$C$DW$150	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$150, DW_AT_low_pc(0x00)
	.dwattr $C$DW$150, DW_AT_name("_vpe_banner_print")
	.dwattr $C$DW$150, DW_AT_TI_call
        call #_vpe_banner_print ; |169| 
                                        ; call occurs [#_vpe_banner_print] ; |169| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 171,column 3,is_stmt
;----------------------------------------------------------------------
; 171 | vpe_init();                                                            
;----------------------------------------------------------------------
$C$DW$151	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$151, DW_AT_low_pc(0x00)
	.dwattr $C$DW$151, DW_AT_name("_vpe_init")
	.dwattr $C$DW$151, DW_AT_TI_call
        call #_vpe_init ; |171| 
                                        ; call occurs [#_vpe_init] ; |171| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 174,column 3,is_stmt
;----------------------------------------------------------------------
; 174 | while (vpeSim->exec) {                                                 
;----------------------------------------------------------------------
        AR1 = *AR3 ; |174| 
        if (AR1 == #0) goto $C$L50 ; |174| 
                                        ; branchcc occurs ; |174| 
$C$L1:    
$C$DW$L$_main$2$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 176,column 5,is_stmt
;----------------------------------------------------------------------
; 176 | vpeSim->data = TRUE;                                                   
;----------------------------------------------------------------------
        *AR3(#832) = #1 ; |176| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 177,column 5,is_stmt
;----------------------------------------------------------------------
; 177 | if (!vpeSim->sgn){                                                     
;----------------------------------------------------------------------
        AR1 = *AR3(#16) ; |177| 
        if (AR1 != #0) goto $C$L2 ; |177| 
                                        ; branchcc occurs ; |177| 
$C$DW$L$_main$2$E:
$C$DW$L$_main$3$B:
        XAR0 = dbl(*(#_vpeSim))

        mar(AR0 + #50) ; |179| 
||      T0 = #0

	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 179,column 7,is_stmt
;----------------------------------------------------------------------
; 179 | vpe_sim_fileio_init (&vpeSim->sigIn,  vpe_SIM_FILEIO_READ);            
;----------------------------------------------------------------------
$C$DW$152	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$152, DW_AT_low_pc(0x00)
	.dwattr $C$DW$152, DW_AT_name("_vpe_sim_fileio_init")
	.dwattr $C$DW$152, DW_AT_TI_call
        call #_vpe_sim_fileio_init ; |179| 
                                        ; call occurs [#_vpe_sim_fileio_init] ; |179| 
        XAR0 = dbl(*(#_vpeSim))
        T0 = #1
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 180,column 7,is_stmt
;----------------------------------------------------------------------
; 180 | vpe_sim_fileio_init (&vpeSim->sigOut, vpe_SIM_FILEIO_WRITE);           
;----------------------------------------------------------------------
        mar(*+AR0(#310)) ; |180| 
$C$DW$153	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$153, DW_AT_low_pc(0x00)
	.dwattr $C$DW$153, DW_AT_name("_vpe_sim_fileio_init")
	.dwattr $C$DW$153, DW_AT_TI_call
        call #_vpe_sim_fileio_init ; |180| 
                                        ; call occurs [#_vpe_sim_fileio_init] ; |180| 
$C$DW$L$_main$3$E:
$C$L2:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 177,column 5,is_stmt
$C$DW$L$_main$4$B:
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 182,column 5,is_stmt
;----------------------------------------------------------------------
; 182 | if(vpeSim->snl_on){                                                    
;----------------------------------------------------------------------
        AR1 = *AR3(short(#3)) ; |182| 
        if (AR1 == #0) goto $C$L3 ; |182| 
                                        ; branchcc occurs ; |182| 
$C$DW$L$_main$4$E:
$C$DW$L$_main$5$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 184,column 7,is_stmt
;----------------------------------------------------------------------
; 184 | vpe_sim_fileio_init (&snlLevOut, vpe_SIM_FILEIO_WRITE);                
;----------------------------------------------------------------------
        XAR0 = #_snlLevOut ; |184| 
        T0 = #1
$C$DW$154	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$154, DW_AT_low_pc(0x00)
	.dwattr $C$DW$154, DW_AT_name("_vpe_sim_fileio_init")
	.dwattr $C$DW$154, DW_AT_TI_call
        call #_vpe_sim_fileio_init ; |184| 
                                        ; call occurs [#_vpe_sim_fileio_init] ; |184| 
$C$DW$L$_main$5$E:
$C$L3:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 182,column 5,is_stmt
$C$DW$L$_main$6$B:
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 186,column 5,is_stmt
;----------------------------------------------------------------------
; 186 | if(vpeSim->svd_on){                                                    
;----------------------------------------------------------------------
        AR1 = *AR3(short(#4)) ; |186| 
        if (AR1 == #0) goto $C$L4 ; |186| 
                                        ; branchcc occurs ; |186| 
$C$DW$L$_main$6$E:
$C$DW$L$_main$7$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 188,column 7,is_stmt
;----------------------------------------------------------------------
; 188 | vpe_sim_fileio_init (&svdOut, vpe_SIM_FILEIO_WRITE);                   
;----------------------------------------------------------------------
        XAR0 = #_svdOut ; |188| 
        T0 = #1
$C$DW$155	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$155, DW_AT_low_pc(0x00)
	.dwattr $C$DW$155, DW_AT_name("_vpe_sim_fileio_init")
	.dwattr $C$DW$155, DW_AT_TI_call
        call #_vpe_sim_fileio_init ; |188| 
                                        ; call occurs [#_vpe_sim_fileio_init] ; |188| 
$C$DW$L$_main$7$E:
$C$L4:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 186,column 5,is_stmt
$C$DW$L$_main$8$B:
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 192,column 5,is_stmt
;----------------------------------------------------------------------
; 192 | second_count = 0;                                                      
;----------------------------------------------------------------------
        *SP(#13) = #0 ; |192| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 193,column 5,is_stmt
;----------------------------------------------------------------------
; 193 | sample_count = 0;                                                      
;----------------------------------------------------------------------
        *SP(#14) = #0 ; |193| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 194,column 5,is_stmt
;----------------------------------------------------------------------
; 194 | while (vpeSim->data) {                                                 
;----------------------------------------------------------------------
        AR1 = *AR3(#832) ; |194| 
        if (AR1 == #0) goto $C$L46 ; |194| 
                                        ; branchcc occurs ; |194| 
$C$DW$L$_main$8$E:
$C$L5:    
$C$DW$L$_main$9$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 196,column 7,is_stmt
;----------------------------------------------------------------------
; 196 | vpe_sim_flush_cache();                                                 
;----------------------------------------------------------------------
$C$DW$156	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$156, DW_AT_low_pc(0x00)
	.dwattr $C$DW$156, DW_AT_name("_vpe_sim_flush_cache")
	.dwattr $C$DW$156, DW_AT_TI_call
        call #_vpe_sim_flush_cache ; |196| 
                                        ; call occurs [#_vpe_sim_flush_cache] ; |196| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 199,column 7,is_stmt
;----------------------------------------------------------------------
; 199 | if (vpeSim->sgn){                                                      
;----------------------------------------------------------------------
        AR1 = *AR3(#16) ; |199| 
        if (AR1 == #0) goto $C$L7 ; |199| 
                                        ; branchcc occurs ; |199| 
$C$DW$L$_main$9$E:
$C$DW$L$_main$10$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 201,column 9,is_stmt
;----------------------------------------------------------------------
; 201 | if (vpeSim->cfg_sgn) {                                                 
;----------------------------------------------------------------------
        AR1 = *AR3(#17) ; |201| 
        if (AR1 == #0) goto $C$L6 ; |201| 
                                        ; branchcc occurs ; |201| 
$C$DW$L$_main$10$E:
$C$DW$L$_main$11$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 202,column 11,is_stmt
;----------------------------------------------------------------------
; 202 | vpeSim->cfg_sgn = FALSE;                                               
;----------------------------------------------------------------------
        *AR3(#17) = #0 ; |202| 
        XAR1 = dbl(*(#_vpeSim))
        XAR3 = dbl(*(#_vpeSim))
        XAR0 = dbl(*(#_sgnInst_ptr))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 203,column 11,is_stmt
;----------------------------------------------------------------------
; 203 | vpe_sim_set_sgn (sgnInst_ptr, &vpeSim->sgnParam, vpeSim->Fs);          
;----------------------------------------------------------------------
        mar(AR1 + #36) ; |203| 
        T0 = *AR3(#21) ; |203| 
$C$DW$157	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$157, DW_AT_low_pc(0x00)
	.dwattr $C$DW$157, DW_AT_name("_vpe_sim_set_sgn")
	.dwattr $C$DW$157, DW_AT_TI_call
        call #_vpe_sim_set_sgn ; |203| 
                                        ; call occurs [#_vpe_sim_set_sgn] ; |203| 
$C$DW$L$_main$11$E:
$C$L6:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 201,column 9,is_stmt
$C$DW$L$_main$12$B:
        XAR3 = dbl(*(#_vpeSim))
        XAR1 = dbl(*SP(#4))
        XAR0 = dbl(*(#_sgnInst_ptr))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 205,column 9,is_stmt
;----------------------------------------------------------------------
; 205 | vpe_sim_gen_frame (sgnInst_ptr, vpeSim->frame_size_in, buf_Inptr);     
;----------------------------------------------------------------------
        T0 = *AR3(#834) ; |205| 
$C$DW$158	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$158, DW_AT_low_pc(0x00)
	.dwattr $C$DW$158, DW_AT_name("_vpe_sim_gen_frame")
	.dwattr $C$DW$158, DW_AT_TI_call
        call #_vpe_sim_gen_frame ; |205| 
                                        ; call occurs [#_vpe_sim_gen_frame] ; |205| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 206,column 7,is_stmt
;----------------------------------------------------------------------
; 207 | else{                                                                  
;----------------------------------------------------------------------
        goto $C$L12 ; |206| 
                                        ; branch occurs ; |206| 
$C$DW$L$_main$12$E:
$C$L7:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 199,column 7,is_stmt
$C$DW$L$_main$13$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 209,column 9,is_stmt
;----------------------------------------------------------------------
; 209 | num_tuint_in = vpeSim->frame_size_in;                                  
;----------------------------------------------------------------------
        AR1 = *AR3(#834) ; |209| 
        *SP(#15) = AR1 ; |209| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 210,column 9,is_stmt
;----------------------------------------------------------------------
; 210 | if(vpeSim->ulaw_dec_on || vpeSim->alaw_dec_on) {                       
;----------------------------------------------------------------------
        AR1 = *AR3(#9) ; |210| 
        if (AR1 != #0) goto $C$L8 ; |210| 
                                        ; branchcc occurs ; |210| 
$C$DW$L$_main$13$E:
$C$DW$L$_main$14$B:
        AR1 = *AR3(#11) ; |210| 
        if (AR1 == #0) goto $C$L9 ; |210| 
                                        ; branchcc occurs ; |210| 
$C$DW$L$_main$14$E:
$C$L8:    
$C$DW$L$_main$15$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 211,column 11,is_stmt
;----------------------------------------------------------------------
; 211 | num_tuint_in /= 2; /* mu-law or A-law input is byte */                 
;----------------------------------------------------------------------
        AR1 = *SP(#15) ; |211| 
        AR1 = AR1 >>> #1 ; |211| 
        *SP(#15) = AR1 ; |211| 
$C$DW$L$_main$15$E:
$C$L9:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 210,column 9,is_stmt
$C$DW$L$_main$16$B:
        XAR1 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 213,column 9,is_stmt
;----------------------------------------------------------------------
; 213 | sigIn_data = vpe_sim_fread (vpeIOBufs, num_tuint_in, &vpeSim->sigIn);  
;----------------------------------------------------------------------
        XAR0 = #_vpeIOBufs ; |213| 

        mar(AR1 + #50) ; |213| 
||      T0 = *SP(#15) ; |213| 

$C$DW$159	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$159, DW_AT_low_pc(0x00)
	.dwattr $C$DW$159, DW_AT_name("_vpe_sim_fread")
	.dwattr $C$DW$159, DW_AT_TI_call
        call #_vpe_sim_fread ; |213| 
                                        ; call occurs [#_vpe_sim_fread] ; |213| 
        XAR3 = dbl(*(#_vpeSim))

        *SP(#12) = T0 ; |213| 
||      AR1 = T0

	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 214,column 9,is_stmt
;----------------------------------------------------------------------
; 214 | vpeSim->data = sigIn_data;                                             
;----------------------------------------------------------------------
        *AR3(#832) = AR1 ; |214| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 217,column 9,is_stmt
;----------------------------------------------------------------------
; 217 | if(vpeSim->ulaw_dec_on || vpeSim->alaw_dec_on) {                       
;----------------------------------------------------------------------
        AR1 = *AR3(#9) ; |217| 
        if (AR1 != #0) goto $C$L10 ; |217| 
                                        ; branchcc occurs ; |217| 
$C$DW$L$_main$16$E:
$C$DW$L$_main$17$B:
        AR1 = *AR3(#11) ; |217| 
        if (AR1 == #0) goto $C$L12 ; |217| 
                                        ; branchcc occurs ; |217| 
$C$DW$L$_main$17$E:
$C$L10:    
$C$DW$L$_main$18$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 218,column 16,is_stmt
;----------------------------------------------------------------------
; 218 | for (i=0; i<num_tuint_in; i++) {                                       
;----------------------------------------------------------------------
        *SP(#17) = #0 ; |218| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 218,column 21,is_stmt
        AR1 = *SP(#15) ; |218| 
        AR2 = *SP(#17) ; |218| 
        TC1 = uns(AR2 >= AR1) ; |218| 
        if (TC1) goto $C$L12 ; |218| 
                                        ; branchcc occurs ; |218| 
$C$DW$L$_main$18$E:
$C$L11:    
$C$DW$L$_main$19$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 219,column 13,is_stmt
;----------------------------------------------------------------------
; 219 | vpeIOBufs[i] = ((vpeIOBufs[i]>>8)&0x0ff) | ((vpeIOBufs[i]&0x0ff)<<8);  
;----------------------------------------------------------------------
        T0 = *SP(#17) ; |219| 
        XAR3 = #_vpeIOBufs ; |219| 
        AR1 = high_byte(*AR3(T0)) ; |219| 
        AR1 = AR1 & #0x00ff ; |219| 
        AC0 = *AR3(T0) << #8 ; |219| 
        AC0 = AC0 | AR1 ; |219| 
        *AR3(T0) = AC0 ; |219| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 218,column 37,is_stmt
        *SP(#17) = *SP(#17) + #1 ; |218| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 218,column 21,is_stmt
        AR2 = *SP(#17) ; |218| 
        AR1 = *SP(#15) ; |218| 
        TC1 = uns(AR2 < AR1) ; |218| 
        if (TC1) goto $C$L11 ; |218| 
                                        ; branchcc occurs ; |218| 
$C$DW$L$_main$19$E:
$C$L12:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 206,column 7,is_stmt
$C$DW$L$_main$20$B:
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 224,column 7,is_stmt
;----------------------------------------------------------------------
; 224 | if (vpeSim->ulaw_dec_on) {                                             
;----------------------------------------------------------------------
        AR1 = *AR3(#9) ; |224| 
        if (AR1 == #0) goto $C$L13 ; |224| 
                                        ; branchcc occurs ; |224| 
$C$DW$L$_main$20$E:
$C$DW$L$_main$21$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 225,column 9,is_stmt
;----------------------------------------------------------------------
; 225 | pcmUlawDecoderP((tuint *)vpeIOBufs, buf_Inptr, vpeSim->frame_size_out);
;----------------------------------------------------------------------
        T0 = *AR3(#835) ; |225| 
        XAR1 = dbl(*SP(#4))
        XAR0 = #_vpeIOBufs ; |225| 
$C$DW$160	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$160, DW_AT_low_pc(0x00)
	.dwattr $C$DW$160, DW_AT_name("_pcmUlawDecoderP")
	.dwattr $C$DW$160, DW_AT_TI_call
        call #_pcmUlawDecoderP ; |225| 
                                        ; call occurs [#_pcmUlawDecoderP] ; |225| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 226,column 7,is_stmt
        goto $C$L16 ; |226| 
                                        ; branch occurs ; |226| 
$C$DW$L$_main$21$E:
$C$L13:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 224,column 7,is_stmt
$C$DW$L$_main$22$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 227,column 12,is_stmt
;----------------------------------------------------------------------
; 227 | else if (vpeSim->alaw_dec_on) {                                        
;----------------------------------------------------------------------
        AR1 = *AR3(#11) ; |227| 
        if (AR1 == #0) goto $C$L14 ; |227| 
                                        ; branchcc occurs ; |227| 
$C$DW$L$_main$22$E:
$C$DW$L$_main$23$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 228,column 9,is_stmt
;----------------------------------------------------------------------
; 228 | pcmAlawDecoderP((tuint *)vpeIOBufs, buf_Inptr, vpeSim->frame_size_out);
;----------------------------------------------------------------------
        T0 = *AR3(#835) ; |228| 
        XAR1 = dbl(*SP(#4))
        XAR0 = #_vpeIOBufs ; |228| 
$C$DW$161	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$161, DW_AT_low_pc(0x00)
	.dwattr $C$DW$161, DW_AT_name("_pcmAlawDecoderP")
	.dwattr $C$DW$161, DW_AT_TI_call
        call #_pcmAlawDecoderP ; |228| 
                                        ; call occurs [#_pcmAlawDecoderP] ; |228| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 229,column 7,is_stmt
;----------------------------------------------------------------------
; 230 | else {                                                                 
;----------------------------------------------------------------------
        goto $C$L16 ; |229| 
                                        ; branch occurs ; |229| 
$C$DW$L$_main$23$E:
$C$L14:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 227,column 12,is_stmt
$C$DW$L$_main$24$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 231,column 14,is_stmt
;----------------------------------------------------------------------
; 231 | for (i=0;i<vpeSim->frame_size_in;i++){                                 
;----------------------------------------------------------------------
        *SP(#17) = #0 ; |231| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 231,column 18,is_stmt
        AR1 = *AR3(#834) ; |231| 
        AR2 = *SP(#17) ; |231| 
        TC1 = uns(AR2 >= AR1) ; |231| 
        if (TC1) goto $C$L16 ; |231| 
                                        ; branchcc occurs ; |231| 
$C$DW$L$_main$24$E:
$C$L15:    
$C$DW$L$_main$25$B:
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 232,column 11,is_stmt
;----------------------------------------------------------------------
; 232 | buf_Inptr[i] = vpeIOBufs[i];                                           
;----------------------------------------------------------------------
        T0 = *SP(#17) ; |232| 
        AR1 = T0
        XAR2 = #_vpeIOBufs ; |232| 
        mar(AR3 + AR1) ; |232| 
        *AR3 = *AR2(T0) ; |232| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 231,column 42,is_stmt
        *SP(#17) = *SP(#17) + #1 ; |231| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 231,column 18,is_stmt
        AR2 = *SP(#17) ; |231| 
        AR1 = *AR3(#834) ; |231| 
        TC1 = uns(AR2 < AR1) ; |231| 
        if (TC1) goto $C$L15 ; |231| 
                                        ; branchcc occurs ; |231| 
$C$DW$L$_main$25$E:
$C$L16:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 226,column 7,is_stmt
$C$DW$L$_main$26$B:
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 237,column 7,is_stmt
;----------------------------------------------------------------------
; 237 | if(vpeSim->nr_on) {                                                    
;----------------------------------------------------------------------
        AR1 = *AR3(short(#5)) ; |237| 
        if (AR1 == #0) goto $C$L17 ; |237| 
                                        ; branchcc occurs ; |237| 
$C$DW$L$_main$26$E:
$C$DW$L$_main$27$B:
        XAR1 = dbl(*SP(#4))
        XAR2 = dbl(*SP(#4))
        XAR0 = dbl(*(#_nrInst_ptr))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 238,column 9,is_stmt
;----------------------------------------------------------------------
; 238 | retVal = asnrProcess(nrInst_ptr, buf_Inptr, buf_Inptr);                
;----------------------------------------------------------------------
$C$DW$162	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$162, DW_AT_low_pc(0x00)
	.dwattr $C$DW$162, DW_AT_name("_asnrProcess")
	.dwattr $C$DW$162, DW_AT_TI_call
        call #_asnrProcess ; |238| 
                                        ; call occurs [#_asnrProcess] ; |238| 
        AR1 = T0  ; |238| 
        *SP(#18) = T0 ; |238| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 239,column 9,is_stmt
;----------------------------------------------------------------------
; 239 | if (retVal != asnr_NOERR) {                                            
;----------------------------------------------------------------------
        if (AR1 == #0) goto $C$L17 ; |239| 
                                        ; branchcc occurs ; |239| 
$C$DW$L$_main$27$E:
$C$DW$L$_main$28$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 240,column 11,is_stmt
;----------------------------------------------------------------------
; 240 | printf("Error returned by asnrProcessn() = %d!\n", retVal);            
;----------------------------------------------------------------------
        XAR3 = #$C$FSL4 ; |240| 
        dbl(*SP(#0)) = XAR3
        AR1 = *SP(#18) ; |240| 
        *SP(#2) = AR1 ; |240| 
$C$DW$163	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$163, DW_AT_low_pc(0x00)
	.dwattr $C$DW$163, DW_AT_name("_printf")
	.dwattr $C$DW$163, DW_AT_TI_call
        call #_printf ; |240| 
                                        ; call occurs [#_printf] ; |240| 
        T0 = #0
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 241,column 11,is_stmt
;----------------------------------------------------------------------
; 241 | exit(0);                                                               
;----------------------------------------------------------------------
$C$DW$164	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$164, DW_AT_low_pc(0x00)
	.dwattr $C$DW$164, DW_AT_name("_exit")
	.dwattr $C$DW$164, DW_AT_TI_call
        call #_exit ; |241| 
                                        ; call occurs [#_exit] ; |241| 
$C$DW$L$_main$28$E:
$C$L17:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 237,column 7,is_stmt
$C$DW$L$_main$29$B:
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 246,column 7,is_stmt
;----------------------------------------------------------------------
; 246 | if (vpeSim->hlc_on){                                                   
;----------------------------------------------------------------------
        AR1 = *AR3(short(#1)) ; |246| 
        if (AR1 == #0) goto $C$L19 ; |246| 
                                        ; branchcc occurs ; |246| 
$C$DW$L$_main$29$E:
$C$DW$L$_main$30$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 247,column 9,is_stmt
;----------------------------------------------------------------------
; 247 | if (vpeSim->cfg_hlc) {                                                 
;----------------------------------------------------------------------
        AR1 = *AR3(#18) ; |247| 
        if (AR1 == #0) goto $C$L18 ; |247| 
                                        ; branchcc occurs ; |247| 
$C$DW$L$_main$30$E:
$C$DW$L$_main$31$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 248,column 11,is_stmt
;----------------------------------------------------------------------
; 248 | vpeSim->cfg_hlc = FALSE;                                               
;----------------------------------------------------------------------
        *AR3(#18) = #0 ; |248| 
        XAR1 = dbl(*(#_vpeSim))
        XAR0 = dbl(*(#_hlcInst_ptr))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 249,column 11,is_stmt
;----------------------------------------------------------------------
; 249 | retVal = hlcControl(hlcInst_ptr, &vpeSim->hlc_ctrl);                   
;----------------------------------------------------------------------
        mar(AR1 + #22) ; |249| 
$C$DW$165	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$165, DW_AT_low_pc(0x00)
	.dwattr $C$DW$165, DW_AT_name("_hlcControl")
	.dwattr $C$DW$165, DW_AT_TI_call
        call #_hlcControl ; |249| 
                                        ; call occurs [#_hlcControl] ; |249| 
        AR1 = T0  ; |249| 
        *SP(#18) = T0 ; |249| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 250,column 11,is_stmt
;----------------------------------------------------------------------
; 250 | if (retVal != hlc_NOERR){                                              
;----------------------------------------------------------------------
        if (AR1 == #0) goto $C$L18 ; |250| 
                                        ; branchcc occurs ; |250| 
$C$DW$L$_main$31$E:
$C$DW$L$_main$32$B:
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 251,column 13,is_stmt
;----------------------------------------------------------------------
; 251 | vpeSim->error_id = vpe_SIM_ERR_5;                                      
;----------------------------------------------------------------------
        *AR3(#833) = #6 ; |251| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 252,column 13,is_stmt
;----------------------------------------------------------------------
; 252 | vpeSim->exec = FALSE;                                                  
;----------------------------------------------------------------------
        *AR3 = #0 ; |252| 
        XAR0 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 253,column 13,is_stmt
;----------------------------------------------------------------------
; 253 | vpe_halt (&vpeSim->exec);                                              
;----------------------------------------------------------------------
$C$DW$166	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$166, DW_AT_low_pc(0x00)
	.dwattr $C$DW$166, DW_AT_name("_vpe_halt")
	.dwattr $C$DW$166, DW_AT_TI_call
        call #_vpe_halt ; |253| 
                                        ; call occurs [#_vpe_halt] ; |253| 
$C$DW$L$_main$32$E:
$C$L18:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 247,column 9,is_stmt
$C$DW$L$_main$33$B:
        XAR1 = dbl(*SP(#4))
        XAR0 = dbl(*(#_hlcInst_ptr))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 256,column 9,is_stmt
;----------------------------------------------------------------------
; 256 | retVal = hlcProcess(hlcInst_ptr, buf_Inptr);                           
;----------------------------------------------------------------------
$C$DW$167	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$167, DW_AT_low_pc(0x00)
	.dwattr $C$DW$167, DW_AT_name("_hlcProcess")
	.dwattr $C$DW$167, DW_AT_TI_call
        call #_hlcProcess ; |256| 
                                        ; call occurs [#_hlcProcess] ; |256| 
        AR1 = T0  ; |256| 
        *SP(#18) = T0 ; |256| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 257,column 9,is_stmt
;----------------------------------------------------------------------
; 257 | if (retVal != hlc_NOERR){                                              
;----------------------------------------------------------------------
        if (AR1 == #0) goto $C$L19 ; |257| 
                                        ; branchcc occurs ; |257| 
$C$DW$L$_main$33$E:
$C$DW$L$_main$34$B:
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 258,column 11,is_stmt
;----------------------------------------------------------------------
; 258 | vpeSim->error_id = vpe_SIM_ERR_1;                                      
;----------------------------------------------------------------------
        *AR3(#833) = #1 ; |258| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 259,column 11,is_stmt
;----------------------------------------------------------------------
; 259 | vpeSim->exec = FALSE;                                                  
;----------------------------------------------------------------------
        *AR3 = #0 ; |259| 
        XAR0 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 260,column 11,is_stmt
;----------------------------------------------------------------------
; 260 | vpe_halt (&vpeSim->exec);                                              
;----------------------------------------------------------------------
$C$DW$168	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$168, DW_AT_low_pc(0x00)
	.dwattr $C$DW$168, DW_AT_name("_vpe_halt")
	.dwattr $C$DW$168, DW_AT_TI_call
        call #_vpe_halt ; |260| 
                                        ; call occurs [#_vpe_halt] ; |260| 
$C$DW$L$_main$34$E:
$C$L19:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 246,column 7,is_stmt
$C$DW$L$_main$35$B:
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 264,column 7,is_stmt
;----------------------------------------------------------------------
; 264 | if(vpeSim->decim_on) {                                                 
;----------------------------------------------------------------------
        AR1 = *AR3(short(#6)) ; |264| 
        if (AR1 == #0) goto $C$L23 ; |264| 
                                        ; branchcc occurs ; |264| 
$C$DW$L$_main$35$E:
$C$DW$L$_main$36$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 266,column 14,is_stmt
;----------------------------------------------------------------------
; 266 | for (i=0;i<vpeSim->frame_size_in;i++){                                 
;----------------------------------------------------------------------
        *SP(#17) = #0 ; |266| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 266,column 18,is_stmt
        AR1 = *AR3(#834) ; |266| 
        AR2 = *SP(#17) ; |266| 
        TC1 = uns(AR2 >= AR1) ; |266| 
        if (TC1) goto $C$L21 ; |266| 
                                        ; branchcc occurs ; |266| 
$C$DW$L$_main$36$E:
$C$L20:    
$C$DW$L$_main$37$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 267,column 11,is_stmt
;----------------------------------------------------------------------
; 267 | decimDelayLine[VPE_SIM_DECIM_FILT_DEL+i] = buf_Inptr[i];               
;----------------------------------------------------------------------
        T0 = *SP(#17) ; |267| 
        AR1 = T0  ; |267| 
        AR1 = AR1 + #32 ; |267| 
        XAR2 = dbl(*SP(#4))
        XAR3 = #_decimDelayLine ; |267| 
        mar(AR3 + AR1) ; |267| 
        *AR3 = *AR2(T0) ; |267| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 266,column 42,is_stmt
        *SP(#17) = *SP(#17) + #1 ; |266| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 266,column 18,is_stmt
        AR2 = *SP(#17) ; |266| 
        AR1 = *AR3(#834) ; |266| 
        TC1 = uns(AR2 < AR1) ; |266| 
        if (TC1) goto $C$L20 ; |266| 
                                        ; branchcc occurs ; |266| 
$C$DW$L$_main$37$E:
$C$L21:    
$C$DW$L$_main$38$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 271,column 9,is_stmt
;----------------------------------------------------------------------
; 271 | sfcDecimationBy2(decimDelayLine, buf_Inptr, NULL,                      
; 272 |                  sfc_DEF_FILT_LEN, vpeSim->frame_size_in);             
;----------------------------------------------------------------------
        T1 = *AR3(#834) ; |271| 
        XAR1 = dbl(*SP(#4))
        XAR2 = #0 ; |271| 
        XAR0 = #_decimDelayLine ; |271| 
        T0 = #33  ; |271| 
$C$DW$169	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$169, DW_AT_low_pc(0x00)
	.dwattr $C$DW$169, DW_AT_name("_sfcDecimationBy2")
	.dwattr $C$DW$169, DW_AT_TI_call
        call #_sfcDecimationBy2 ; |271| 
                                        ; call occurs [#_sfcDecimationBy2] ; |271| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 275,column 14,is_stmt
;----------------------------------------------------------------------
; 275 | for (i=0;i<VPE_SIM_DECIM_FILT_DEL;i++){                                
;----------------------------------------------------------------------
        *SP(#17) = #0 ; |275| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 275,column 18,is_stmt
        AR2 = #32 ; |275| 
        AR1 = *SP(#17) ; |275| 
        TC1 = (AR1 >= AR2) ; |275| 
        if (TC1) goto $C$L23 ; |275| 
                                        ; branchcc occurs ; |275| 
$C$DW$L$_main$38$E:
$C$L22:    
$C$DW$L$_main$39$B:
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 276,column 11,is_stmt
;----------------------------------------------------------------------
; 276 | decimDelayLine[i] = decimDelayLine[vpeSim->frame_size_in+i];           
;----------------------------------------------------------------------
        AR1 = *SP(#17) ; |276| 
        T0 = AR1 + *AR3(#834) ; |276| 
        AR1 = *SP(#17) ; |276| 
        XAR2 = #_decimDelayLine ; |276| 
        XAR3 = #_decimDelayLine ; |276| 
        mar(AR3 + AR1) ; |276| 
        *AR3 = *AR2(T0) ; |276| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 275,column 18,is_stmt
        AR2 = #32 ; |275| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 275,column 43,is_stmt
        *SP(#17) = *SP(#17) + #1 ; |275| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 275,column 18,is_stmt
        AR1 = *SP(#17) ; |275| 
        TC1 = (AR1 < AR2) ; |275| 
        if (TC1) goto $C$L22 ; |275| 
                                        ; branchcc occurs ; |275| 
$C$DW$L$_main$39$E:
$C$L23:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 264,column 7,is_stmt
$C$DW$L$_main$40$B:
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 280,column 7,is_stmt
;----------------------------------------------------------------------
; 280 | if(vpeSim->interp_on) {                                                
;----------------------------------------------------------------------
        AR1 = *AR3(short(#7)) ; |280| 
        if (AR1 == #0) goto $C$L27 ; |280| 
                                        ; branchcc occurs ; |280| 
$C$DW$L$_main$40$E:
$C$DW$L$_main$41$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 282,column 14,is_stmt
;----------------------------------------------------------------------
; 282 | for (i=0;i<vpeSim->frame_size_in;i++){                                 
;----------------------------------------------------------------------
        *SP(#17) = #0 ; |282| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 282,column 18,is_stmt
        AR1 = *AR3(#834) ; |282| 
        AR2 = *SP(#17) ; |282| 
        TC1 = uns(AR2 >= AR1) ; |282| 
        if (TC1) goto $C$L25 ; |282| 
                                        ; branchcc occurs ; |282| 
$C$DW$L$_main$41$E:
$C$L24:    
$C$DW$L$_main$42$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 283,column 11,is_stmt
;----------------------------------------------------------------------
; 283 | interpDelayLine[VPE_SIM_INTERP_FILT_DEL+i] = buf_Inptr[i];             
;----------------------------------------------------------------------
        T0 = *SP(#17) ; |283| 
        AR1 = T0  ; |283| 
        AR1 = AR1 + #16 ; |283| 
        XAR2 = dbl(*SP(#4))
        XAR3 = #_interpDelayLine ; |283| 
        mar(AR3 + AR1) ; |283| 
        *AR3 = *AR2(T0) ; |283| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 282,column 42,is_stmt
        *SP(#17) = *SP(#17) + #1 ; |282| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 282,column 18,is_stmt
        AR2 = *SP(#17) ; |282| 
        AR1 = *AR3(#834) ; |282| 
        TC1 = uns(AR2 < AR1) ; |282| 
        if (TC1) goto $C$L24 ; |282| 
                                        ; branchcc occurs ; |282| 
$C$DW$L$_main$42$E:
$C$L25:    
$C$DW$L$_main$43$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 287,column 9,is_stmt
;----------------------------------------------------------------------
; 287 | sfcInterpolationBy2(interpDelayLine, buf_Inptr, NULL,                  
; 288 |                     sfc_DEF_FILT_LEN, vpeSim->frame_size_in);          
;----------------------------------------------------------------------
        T1 = *AR3(#834) ; |287| 
        XAR1 = dbl(*SP(#4))
        XAR2 = #0 ; |287| 
        XAR0 = #_interpDelayLine ; |287| 
        T0 = #33  ; |287| 
$C$DW$170	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$170, DW_AT_low_pc(0x00)
	.dwattr $C$DW$170, DW_AT_name("_sfcInterpolationBy2")
	.dwattr $C$DW$170, DW_AT_TI_call
        call #_sfcInterpolationBy2 ; |287| 
                                        ; call occurs [#_sfcInterpolationBy2] ; |287| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 291,column 14,is_stmt
;----------------------------------------------------------------------
; 291 | for (i=0;i<VPE_SIM_INTERP_FILT_DEL;i++){                               
;----------------------------------------------------------------------
        *SP(#17) = #0 ; |291| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 291,column 18,is_stmt
        AR2 = #16 ; |291| 
        AR1 = *SP(#17) ; |291| 
        TC1 = (AR1 >= AR2) ; |291| 
        if (TC1) goto $C$L27 ; |291| 
                                        ; branchcc occurs ; |291| 
$C$DW$L$_main$43$E:
$C$L26:    
$C$DW$L$_main$44$B:
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 292,column 11,is_stmt
;----------------------------------------------------------------------
; 292 | interpDelayLine[i] = interpDelayLine[vpeSim->frame_size_in+i];         
;----------------------------------------------------------------------
        AR1 = *SP(#17) ; |292| 
        T0 = AR1 + *AR3(#834) ; |292| 
        AR1 = *SP(#17) ; |292| 
        XAR2 = #_interpDelayLine ; |292| 
        XAR3 = #_interpDelayLine ; |292| 
        mar(AR3 + AR1) ; |292| 
        *AR3 = *AR2(T0) ; |292| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 291,column 18,is_stmt
        AR2 = #16 ; |291| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 291,column 44,is_stmt
        *SP(#17) = *SP(#17) + #1 ; |291| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 291,column 18,is_stmt
        AR1 = *SP(#17) ; |291| 
        TC1 = (AR1 < AR2) ; |291| 
        if (TC1) goto $C$L26 ; |291| 
                                        ; branchcc occurs ; |291| 
$C$DW$L$_main$44$E:
$C$L27:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 280,column 7,is_stmt
$C$DW$L$_main$45$B:
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 297,column 7,is_stmt
;----------------------------------------------------------------------
; 297 | if (vpeSim->snl_on ){                                                  
;----------------------------------------------------------------------
        AR1 = *AR3(short(#3)) ; |297| 
        if (AR1 == #0) goto $C$L28 ; |297| 
                                        ; branchcc occurs ; |297| 
$C$DW$L$_main$45$E:
$C$DW$L$_main$46$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 299,column 9,is_stmt
;----------------------------------------------------------------------
; 299 | retVal = snlProcess (snlInst_ptr, buf_Inptr, vpeSim->frame_size_out);  
;----------------------------------------------------------------------
        T0 = *AR3(#835) ; |299| 
        XAR1 = dbl(*SP(#4))
        XAR0 = dbl(*(#_snlInst_ptr))
$C$DW$171	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$171, DW_AT_low_pc(0x00)
	.dwattr $C$DW$171, DW_AT_name("_snlProcess")
	.dwattr $C$DW$171, DW_AT_TI_call
        call #_snlProcess ; |299| 
                                        ; call occurs [#_snlProcess] ; |299| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 300,column 9,is_stmt
;----------------------------------------------------------------------
; 300 | retVal = snlGetLevels (snlInst_ptr, &spchLevdB, &noiseLevdB, &Nthresh);
;----------------------------------------------------------------------
        XAR2 = #_noiseLevdB ; |300| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 299,column 9,is_stmt
        *SP(#18) = T0 ; |299| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 300,column 9,is_stmt
        XAR3 = #_Nthresh ; |300| 
        XAR1 = #_spchLevdB ; |300| 
        XAR0 = dbl(*(#_snlInst_ptr))
$C$DW$172	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$172, DW_AT_low_pc(0x00)
	.dwattr $C$DW$172, DW_AT_name("_snlGetLevels")
	.dwattr $C$DW$172, DW_AT_TI_call
        call #_snlGetLevels ; |300| 
                                        ; call occurs [#_snlGetLevels] ; |300| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 303,column 9,is_stmt
;----------------------------------------------------------------------
; 303 | vpe_sim_fwrite (&spchLevdB, 1, &snlLevOut);                            
;----------------------------------------------------------------------
        XAR1 = #_snlLevOut ; |303| 
        XAR0 = #_spchLevdB ; |303| 

        T0 = #1
||      *SP(#18) = T0 ; |300| 

$C$DW$173	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$173, DW_AT_low_pc(0x00)
	.dwattr $C$DW$173, DW_AT_name("_vpe_sim_fwrite")
	.dwattr $C$DW$173, DW_AT_TI_call
        call #_vpe_sim_fwrite ; |303| 
                                        ; call occurs [#_vpe_sim_fwrite] ; |303| 
        T0 = #1
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 304,column 9,is_stmt
;----------------------------------------------------------------------
; 304 | vpe_sim_fwrite (&noiseLevdB, 1, &snlLevOut);                           
;----------------------------------------------------------------------
        XAR1 = #_snlLevOut ; |304| 
        XAR0 = #_noiseLevdB ; |304| 
$C$DW$174	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$174, DW_AT_low_pc(0x00)
	.dwattr $C$DW$174, DW_AT_name("_vpe_sim_fwrite")
	.dwattr $C$DW$174, DW_AT_TI_call
        call #_vpe_sim_fwrite ; |304| 
                                        ; call occurs [#_vpe_sim_fwrite] ; |304| 
        T0 = #1
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 305,column 9,is_stmt
;----------------------------------------------------------------------
; 305 | vpe_sim_fwrite ((Fract *)&Nthresh, 1, &snlLevOut);                     
;----------------------------------------------------------------------
        XAR1 = #_snlLevOut ; |305| 
        XAR0 = #_Nthresh ; |305| 
$C$DW$175	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$175, DW_AT_low_pc(0x00)
	.dwattr $C$DW$175, DW_AT_name("_vpe_sim_fwrite")
	.dwattr $C$DW$175, DW_AT_TI_call
        call #_vpe_sim_fwrite ; |305| 
                                        ; call occurs [#_vpe_sim_fwrite] ; |305| 
$C$DW$L$_main$46$E:
$C$L28:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 297,column 7,is_stmt
$C$DW$L$_main$47$B:
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 309,column 7,is_stmt
;----------------------------------------------------------------------
; 309 | if (vpeSim->svd_on ){                                                  
;----------------------------------------------------------------------
        AR1 = *AR3(short(#4)) ; |309| 
        if (AR1 == #0) goto $C$L29 ; |309| 
                                        ; branchcc occurs ; |309| 
$C$DW$L$_main$47$E:
$C$DW$L$_main$48$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 311,column 9,is_stmt
;----------------------------------------------------------------------
; 311 | retVal = svdProcess (svdInst_ptr, buf_Inptr, vpeSim->frame_size_out);  
;----------------------------------------------------------------------
        T0 = *AR3(#835) ; |311| 
        XAR1 = dbl(*SP(#4))
        XAR0 = dbl(*(#_svdInst_ptr))
$C$DW$176	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$176, DW_AT_low_pc(0x00)
	.dwattr $C$DW$176, DW_AT_name("_svdProcess")
	.dwattr $C$DW$176, DW_AT_TI_call
        call #_svdProcess ; |311| 
                                        ; call occurs [#_svdProcess] ; |311| 
        *SP(#18) = T0 ; |311| 
        XAR1 = mar(*SP(#8))
        XAR0 = dbl(*(#_svdInst_ptr))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 312,column 9,is_stmt
;----------------------------------------------------------------------
; 312 | vad_flag = svdGetDecision (svdInst_ptr, &svd_sig_pow);                 
;----------------------------------------------------------------------
$C$DW$177	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$177, DW_AT_low_pc(0x00)
	.dwattr $C$DW$177, DW_AT_name("_svdGetDecision")
	.dwattr $C$DW$177, DW_AT_TI_call
        call #_svdGetDecision ; |312| 
                                        ; call occurs [#_svdGetDecision] ; |312| 
        *SP(#19) = T0 ; |312| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 313,column 9,is_stmt
;----------------------------------------------------------------------
; 313 | retVal = svdGetLevels (svdInst_ptr, &spchLevdB, &noiseLevdB, &Nthresh);
;----------------------------------------------------------------------
        XAR1 = #_spchLevdB ; |313| 
        XAR0 = dbl(*(#_svdInst_ptr))
        XAR2 = #_noiseLevdB ; |313| 
        XAR3 = #_Nthresh ; |313| 
$C$DW$178	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$178, DW_AT_low_pc(0x00)
	.dwattr $C$DW$178, DW_AT_name("_svdGetLevels")
	.dwattr $C$DW$178, DW_AT_TI_call
        call #_svdGetLevels ; |313| 
                                        ; call occurs [#_svdGetLevels] ; |313| 
        *SP(#18) = T0 ; |313| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 316,column 9,is_stmt
;----------------------------------------------------------------------
; 316 | vpe_sim_fwrite (&vad_flag, 1, &svdOut);                                
;----------------------------------------------------------------------
        XAR1 = #_svdOut ; |316| 

        T0 = #1
||      XAR0 = mar(*SP(#19))

$C$DW$179	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$179, DW_AT_low_pc(0x00)
	.dwattr $C$DW$179, DW_AT_name("_vpe_sim_fwrite")
	.dwattr $C$DW$179, DW_AT_TI_call
        call #_vpe_sim_fwrite ; |316| 
                                        ; call occurs [#_vpe_sim_fwrite] ; |316| 
        T0 = #1
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 317,column 9,is_stmt
;----------------------------------------------------------------------
; 317 | vpe_sim_fwrite (&spchLevdB, 1, &svdOut);                               
;----------------------------------------------------------------------
        XAR1 = #_svdOut ; |317| 
        XAR0 = #_spchLevdB ; |317| 
$C$DW$180	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$180, DW_AT_low_pc(0x00)
	.dwattr $C$DW$180, DW_AT_name("_vpe_sim_fwrite")
	.dwattr $C$DW$180, DW_AT_TI_call
        call #_vpe_sim_fwrite ; |317| 
                                        ; call occurs [#_vpe_sim_fwrite] ; |317| 
        T0 = #1
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 318,column 9,is_stmt
;----------------------------------------------------------------------
; 318 | vpe_sim_fwrite (&noiseLevdB, 1, &svdOut);                              
;----------------------------------------------------------------------
        XAR1 = #_svdOut ; |318| 
        XAR0 = #_noiseLevdB ; |318| 
$C$DW$181	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$181, DW_AT_low_pc(0x00)
	.dwattr $C$DW$181, DW_AT_name("_vpe_sim_fwrite")
	.dwattr $C$DW$181, DW_AT_TI_call
        call #_vpe_sim_fwrite ; |318| 
                                        ; call occurs [#_vpe_sim_fwrite] ; |318| 
        T0 = #1
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 319,column 9,is_stmt
;----------------------------------------------------------------------
; 319 | vpe_sim_fwrite ((linSample *)&Nthresh, 1, &svdOut);                    
;----------------------------------------------------------------------
        XAR1 = #_svdOut ; |319| 
        XAR0 = #_Nthresh ; |319| 
$C$DW$182	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$182, DW_AT_low_pc(0x00)
	.dwattr $C$DW$182, DW_AT_name("_vpe_sim_fwrite")
	.dwattr $C$DW$182, DW_AT_TI_call
        call #_vpe_sim_fwrite ; |319| 
                                        ; call occurs [#_vpe_sim_fwrite] ; |319| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 320,column 9,is_stmt
;----------------------------------------------------------------------
; 320 | vpe_sim_fwrite ((linSample *)&svd_sig_pow, 2, &svdOut);                
;----------------------------------------------------------------------
        XAR1 = #_svdOut ; |320| 

        XAR0 = mar(*SP(#8))
||      T0 = #2

$C$DW$183	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$183, DW_AT_low_pc(0x00)
	.dwattr $C$DW$183, DW_AT_name("_vpe_sim_fwrite")
	.dwattr $C$DW$183, DW_AT_TI_call
        call #_vpe_sim_fwrite ; |320| 
                                        ; call occurs [#_vpe_sim_fwrite] ; |320| 
$C$DW$L$_main$48$E:
$C$L29:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 309,column 7,is_stmt
$C$DW$L$_main$49$B:
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 324,column 12,is_stmt
;----------------------------------------------------------------------
; 324 | for (i=0;i<vpeSim->frame_size_out;i++){                                
;----------------------------------------------------------------------
        *SP(#17) = #0 ; |324| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 324,column 16,is_stmt
        AR2 = *SP(#17) ; |324| 
        AR1 = *AR3(#835) ; |324| 
        TC1 = uns(AR2 >= AR1) ; |324| 
        if (TC1) goto $C$L31 ; |324| 
                                        ; branchcc occurs ; |324| 
$C$DW$L$_main$49$E:
$C$L30:    
$C$DW$L$_main$50$B:
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 325,column 9,is_stmt
;----------------------------------------------------------------------
; 325 | buf_Outptr[i] = buf_Inptr[i];                                          
;----------------------------------------------------------------------
        T0 = *SP(#17) ; |325| 
        AR1 = T0
        XAR2 = dbl(*SP(#4))
        mar(AR3 + AR1) ; |325| 
        *AR3 = *AR2(T0) ; |325| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 324,column 41,is_stmt
        *SP(#17) = *SP(#17) + #1 ; |324| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 324,column 16,is_stmt
        AR2 = *SP(#17) ; |324| 
        AR1 = *AR3(#835) ; |324| 
        TC1 = uns(AR2 < AR1) ; |324| 
        if (TC1) goto $C$L30 ; |324| 
                                        ; branchcc occurs ; |324| 
$C$DW$L$_main$50$E:
$C$L31:    
$C$DW$L$_main$51$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 329,column 7,is_stmt
;----------------------------------------------------------------------
; 329 | if(vpeSim->slm_on){                                                    
;----------------------------------------------------------------------
        AR1 = *AR3(short(#2)) ; |329| 
        if (AR1 == #0) goto $C$L33 ; |329| 
                                        ; branchcc occurs ; |329| 
$C$DW$L$_main$51$E:
$C$DW$L$_main$52$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 330,column 9,is_stmt
;----------------------------------------------------------------------
; 330 | if(vpeSim->cfg_slm){                                                   
;----------------------------------------------------------------------
        AR1 = *AR3(#19) ; |330| 
        if (AR1 == #0) goto $C$L32 ; |330| 
                                        ; branchcc occurs ; |330| 
$C$DW$L$_main$52$E:
$C$DW$L$_main$53$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 331,column 11,is_stmt
;----------------------------------------------------------------------
; 331 | vpeSim->cfg_slm = FALSE;                                               
;----------------------------------------------------------------------
        *AR3(#19) = #0 ; |331| 
        XAR3 = dbl(*(#_vpeSim))
        XAR0 = dbl(*(#_slmInst_ptr))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 332,column 11,is_stmt
;----------------------------------------------------------------------
; 332 | retVal = slmControl(slmInst_ptr, vpeSim->slm_mod);                     
;----------------------------------------------------------------------
        T0 = *AR3(#20) ; |332| 
$C$DW$184	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$184, DW_AT_low_pc(0x00)
	.dwattr $C$DW$184, DW_AT_name("_slmControl")
	.dwattr $C$DW$184, DW_AT_TI_call
        call #_slmControl ; |332| 
                                        ; call occurs [#_slmControl] ; |332| 
        AR1 = T0  ; |332| 
        *SP(#18) = T0 ; |332| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 333,column 11,is_stmt
;----------------------------------------------------------------------
; 333 | if (retVal != slm_NOERR){                                              
;----------------------------------------------------------------------
        if (AR1 == #0) goto $C$L32 ; |333| 
                                        ; branchcc occurs ; |333| 
$C$DW$L$_main$53$E:
$C$DW$L$_main$54$B:
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 334,column 13,is_stmt
;----------------------------------------------------------------------
; 334 | vpeSim->error_id = vpe_SIM_ERR_8;                                      
;----------------------------------------------------------------------
        *AR3(#833) = #9 ; |334| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 335,column 13,is_stmt
;----------------------------------------------------------------------
; 335 | vpeSim->exec = FALSE;                                                  
;----------------------------------------------------------------------
        *AR3 = #0 ; |335| 
        XAR0 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 336,column 13,is_stmt
;----------------------------------------------------------------------
; 336 | vpe_halt (&vpeSim->exec);                                              
;----------------------------------------------------------------------
$C$DW$185	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$185, DW_AT_low_pc(0x00)
	.dwattr $C$DW$185, DW_AT_name("_vpe_halt")
	.dwattr $C$DW$185, DW_AT_TI_call
        call #_vpe_halt ; |336| 
                                        ; call occurs [#_vpe_halt] ; |336| 
$C$DW$L$_main$54$E:
$C$L32:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 330,column 9,is_stmt
$C$DW$L$_main$55$B:
        XAR3 = dbl(*(#_vpeSim))
        XAR1 = dbl(*SP(#6))
        XAR0 = dbl(*(#_slmInst_ptr))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 339,column 9,is_stmt
;----------------------------------------------------------------------
; 339 | retVal = slmProcess (slmInst_ptr, buf_Outptr, vpeSim->frame_size_out); 
;----------------------------------------------------------------------
        T0 = *AR3(#835) ; |339| 
$C$DW$186	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$186, DW_AT_low_pc(0x00)
	.dwattr $C$DW$186, DW_AT_name("_slmProcess")
	.dwattr $C$DW$186, DW_AT_TI_call
        call #_slmProcess ; |339| 
                                        ; call occurs [#_slmProcess] ; |339| 
        AR1 = T0  ; |339| 
        *SP(#18) = T0 ; |339| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 340,column 9,is_stmt
;----------------------------------------------------------------------
; 340 | if (retVal != slm_NOERR){                                              
;----------------------------------------------------------------------
        if (AR1 == #0) goto $C$L33 ; |340| 
                                        ; branchcc occurs ; |340| 
$C$DW$L$_main$55$E:
$C$DW$L$_main$56$B:
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 341,column 11,is_stmt
;----------------------------------------------------------------------
; 341 | vpeSim->error_id = vpe_SIM_ERR_2;                                      
;----------------------------------------------------------------------
        *AR3(#833) = #2 ; |341| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 342,column 11,is_stmt
;----------------------------------------------------------------------
; 342 | vpeSim->exec = FALSE;                                                  
;----------------------------------------------------------------------
        *AR3 = #0 ; |342| 
        XAR0 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 343,column 11,is_stmt
;----------------------------------------------------------------------
; 343 | vpe_halt (&vpeSim->exec);                                              
;----------------------------------------------------------------------
$C$DW$187	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$187, DW_AT_low_pc(0x00)
	.dwattr $C$DW$187, DW_AT_name("_vpe_halt")
	.dwattr $C$DW$187, DW_AT_TI_call
        call #_vpe_halt ; |343| 
                                        ; call occurs [#_vpe_halt] ; |343| 
$C$DW$L$_main$56$E:
$C$L33:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 329,column 7,is_stmt
$C$DW$L$_main$57$B:
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 347,column 7,is_stmt
;----------------------------------------------------------------------
; 347 | if (vpeSim->ulaw_enc_on) {                                             
;----------------------------------------------------------------------
        AR1 = *AR3(#8) ; |347| 
        if (AR1 == #0) goto $C$L34 ; |347| 
                                        ; branchcc occurs ; |347| 
$C$DW$L$_main$57$E:
$C$DW$L$_main$58$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 348,column 9,is_stmt
;----------------------------------------------------------------------
; 348 | pcmUlawEncoderP(buf_Outptr, (tuint *)vpeIOBufs, vpeSim->frame_size_out)
;     | ;                                                                      
;----------------------------------------------------------------------
        T0 = *AR3(#835) ; |348| 
        XAR0 = dbl(*SP(#6))
        XAR1 = #_vpeIOBufs ; |348| 
$C$DW$188	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$188, DW_AT_low_pc(0x00)
	.dwattr $C$DW$188, DW_AT_name("_pcmUlawEncoderP")
	.dwattr $C$DW$188, DW_AT_TI_call
        call #_pcmUlawEncoderP ; |348| 
                                        ; call occurs [#_pcmUlawEncoderP] ; |348| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 349,column 7,is_stmt
        goto $C$L35 ; |349| 
                                        ; branch occurs ; |349| 
$C$DW$L$_main$58$E:
$C$L34:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 347,column 7,is_stmt
$C$DW$L$_main$59$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 350,column 12,is_stmt
;----------------------------------------------------------------------
; 350 | else if (vpeSim->alaw_enc_on) {                                        
;----------------------------------------------------------------------
        AR1 = *AR3(#10) ; |350| 
        if (AR1 == #0) goto $C$L35 ; |350| 
                                        ; branchcc occurs ; |350| 
$C$DW$L$_main$59$E:
$C$DW$L$_main$60$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 351,column 9,is_stmt
;----------------------------------------------------------------------
; 351 | pcmAlawEncoderP(buf_Outptr, (tuint *)vpeIOBufs, vpeSim->frame_size_out)
;     | ;                                                                      
;----------------------------------------------------------------------
        T0 = *AR3(#835) ; |351| 
        XAR0 = dbl(*SP(#6))
        XAR1 = #_vpeIOBufs ; |351| 
$C$DW$189	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$189, DW_AT_low_pc(0x00)
	.dwattr $C$DW$189, DW_AT_name("_pcmAlawEncoderP")
	.dwattr $C$DW$189, DW_AT_TI_call
        call #_pcmAlawEncoderP ; |351| 
                                        ; call occurs [#_pcmAlawEncoderP] ; |351| 
$C$DW$L$_main$60$E:
$C$L35:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 349,column 7,is_stmt
$C$DW$L$_main$61$B:
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 355,column 12,is_stmt
;----------------------------------------------------------------------
; 355 | for (i=0;i<vpeSim->frame_size_out;i++){                                
;----------------------------------------------------------------------
        *SP(#17) = #0 ; |355| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 355,column 16,is_stmt
        AR2 = *SP(#17) ; |355| 
        AR1 = *AR3(#835) ; |355| 
        TC1 = uns(AR2 >= AR1) ; |355| 
        if (TC1) goto $C$L37 ; |355| 
                                        ; branchcc occurs ; |355| 
$C$DW$L$_main$61$E:
$C$L36:    
$C$DW$L$_main$62$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 356,column 9,is_stmt
;----------------------------------------------------------------------
; 356 | vpeIOBufs[i] = buf_Outptr[i];                                          
;----------------------------------------------------------------------
        T0 = *SP(#17) ; |356| 
        AR1 = T0  ; |356| 
        XAR2 = dbl(*SP(#6))
        XAR3 = #_vpeIOBufs ; |356| 
        mar(AR3 + AR1) ; |356| 
        *AR3 = *AR2(T0) ; |356| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 355,column 41,is_stmt
        *SP(#17) = *SP(#17) + #1 ; |355| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 355,column 16,is_stmt
        AR2 = *SP(#17) ; |355| 
        AR1 = *AR3(#835) ; |355| 
        TC1 = uns(AR2 < AR1) ; |355| 
        if (TC1) goto $C$L36 ; |355| 
                                        ; branchcc occurs ; |355| 
$C$DW$L$_main$62$E:
$C$L37:    
$C$DW$L$_main$63$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 360,column 7,is_stmt
;----------------------------------------------------------------------
; 360 | if (!vpeSim->sgn){                                                     
;----------------------------------------------------------------------
        AR1 = *AR3(#16) ; |360| 
        if (AR1 != #0) goto $C$L43 ; |360| 
                                        ; branchcc occurs ; |360| 
$C$DW$L$_main$63$E:
$C$DW$L$_main$64$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 361,column 9,is_stmt
;----------------------------------------------------------------------
; 361 | num_tuint_out = vpeSim->frame_size_out;                                
;----------------------------------------------------------------------
        AR1 = *AR3(#835) ; |361| 
        *SP(#16) = AR1 ; |361| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 362,column 9,is_stmt
;----------------------------------------------------------------------
; 362 | if(vpeSim->ulaw_enc_on || vpeSim->alaw_enc_on) {                       
;----------------------------------------------------------------------
        AR1 = *AR3(#8) ; |362| 
        if (AR1 != #0) goto $C$L38 ; |362| 
                                        ; branchcc occurs ; |362| 
$C$DW$L$_main$64$E:
$C$DW$L$_main$65$B:
        AR1 = *AR3(#10) ; |362| 
        if (AR1 == #0) goto $C$L40 ; |362| 
                                        ; branchcc occurs ; |362| 
$C$DW$L$_main$65$E:
$C$L38:    
$C$DW$L$_main$66$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 363,column 11,is_stmt
;----------------------------------------------------------------------
; 363 | num_tuint_out /= 2;                                                    
;----------------------------------------------------------------------
        AR1 = *SP(#16) ; |363| 
        AR1 = AR1 >>> #1 ; |363| 
        *SP(#16) = AR1 ; |363| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 366,column 18,is_stmt
;----------------------------------------------------------------------
; 366 | for (i=0; i<num_tuint_out; i++) {                                      
;----------------------------------------------------------------------
        *SP(#17) = #0 ; |366| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 366,column 23,is_stmt
        AR2 = *SP(#17) ; |366| 
        AR1 = *SP(#16) ; |366| 
        TC1 = uns(AR2 >= AR1) ; |366| 
        if (TC1) goto $C$L40 ; |366| 
                                        ; branchcc occurs ; |366| 
$C$DW$L$_main$66$E:
$C$L39:    
$C$DW$L$_main$67$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 367,column 13,is_stmt
;----------------------------------------------------------------------
; 367 | buf_Outptr[i] = ((vpeIOBufs[i]>>8)&0x0ff) | ((vpeIOBufs[i]&0x0ff)<<8); 
;----------------------------------------------------------------------
        T0 = *SP(#17) ; |367| 
        XAR3 = #_vpeIOBufs ; |367| 
        AR1 = high_byte(*AR3(T0)) ; |367| 
        AC0 = *AR3(T0) << #8 ; |367| 
        XAR3 = dbl(*SP(#6))
        AR1 = AR1 & #0x00ff ; |367| 
        AC0 = AC0 | AR1 ; |367| 
        *AR3(T0) = AC0 ; |367| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 366,column 40,is_stmt
        *SP(#17) = *SP(#17) + #1 ; |366| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 366,column 23,is_stmt
        AR2 = *SP(#17) ; |366| 
        AR1 = *SP(#16) ; |366| 
        TC1 = uns(AR2 < AR1) ; |366| 
        if (TC1) goto $C$L39 ; |366| 
                                        ; branchcc occurs ; |366| 
$C$DW$L$_main$67$E:
$C$L40:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 362,column 9,is_stmt
$C$DW$L$_main$68$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 371,column 14,is_stmt
;----------------------------------------------------------------------
; 371 | for (i=0;i<num_tuint_out;i++){                                         
;----------------------------------------------------------------------
        *SP(#17) = #0 ; |371| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 371,column 18,is_stmt
        AR1 = *SP(#16) ; |371| 
        AR2 = *SP(#17) ; |371| 
        TC1 = uns(AR2 >= AR1) ; |371| 
        if (TC1) goto $C$L42 ; |371| 
                                        ; branchcc occurs ; |371| 
$C$DW$L$_main$68$E:
$C$L41:    
$C$DW$L$_main$69$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 372,column 11,is_stmt
;----------------------------------------------------------------------
; 372 | vpeIOBufs[i] = buf_Outptr[i];                                          
;----------------------------------------------------------------------
        T0 = *SP(#17) ; |372| 
        AR1 = T0  ; |372| 
        XAR2 = dbl(*SP(#6))
        XAR3 = #_vpeIOBufs ; |372| 
        mar(AR3 + AR1) ; |372| 
        *AR3 = *AR2(T0) ; |372| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 371,column 34,is_stmt
        *SP(#17) = *SP(#17) + #1 ; |371| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 371,column 18,is_stmt
        AR1 = *SP(#16) ; |371| 
        AR2 = *SP(#17) ; |371| 
        TC1 = uns(AR2 < AR1) ; |371| 
        if (TC1) goto $C$L41 ; |371| 
                                        ; branchcc occurs ; |371| 
$C$DW$L$_main$69$E:
$C$L42:    
$C$DW$L$_main$70$B:
        XAR1 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 375,column 9,is_stmt
;----------------------------------------------------------------------
; 375 | vpe_sim_fwrite (buf_Outptr, num_tuint_out, &vpeSim->sigOut);           
; 376 | }// end of if (vpeSim->sgn)                                            
;----------------------------------------------------------------------
        T0 = *SP(#16) ; |375| 
        XAR0 = dbl(*SP(#6))
        mar(*+AR1(#310)) ; |375| 
$C$DW$190	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$190, DW_AT_low_pc(0x00)
	.dwattr $C$DW$190, DW_AT_name("_vpe_sim_fwrite")
	.dwattr $C$DW$190, DW_AT_TI_call
        call #_vpe_sim_fwrite ; |375| 
                                        ; call occurs [#_vpe_sim_fwrite] ; |375| 
$C$DW$L$_main$70$E:
$C$L43:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 360,column 7,is_stmt
$C$DW$L$_main$71$B:
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 379,column 7,is_stmt
;----------------------------------------------------------------------
; 379 | sample_count += vpeSim->frame_size_in;                                 
;----------------------------------------------------------------------
        AR1 = *AR3(#834) ; |379| 
        AR1 = AR1 + *SP(#14) ; |379| 
        *SP(#14) = AR1 ; |379| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 380,column 7,is_stmt
;----------------------------------------------------------------------
; 380 | if (sample_count >= vpeSim->Fs) {                                      
;----------------------------------------------------------------------
        AR2 = *SP(#14) ; |380| 
        AR1 = *AR3(#21) ; |380| 
        TC1 = uns(AR2 < AR1) ; |380| 
        if (TC1) goto $C$L44 ; |380| 
                                        ; branchcc occurs ; |380| 
$C$DW$L$_main$71$E:
$C$DW$L$_main$72$B:
        AC0 = AR2
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 381,column 9,is_stmt
;----------------------------------------------------------------------
; 381 | sample_count -= vpeSim->Fs;                                            
; 382 | second_count++;                                                        
;----------------------------------------------------------------------
        AC0 = AC0 - uns(*AR3(#21)) ; |381| 
        *SP(#14) = AC0 ; |381| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 383,column 9,is_stmt
;----------------------------------------------------------------------
; 383 | printf (" - Progress: %d seconds\n", second_count);                    
;----------------------------------------------------------------------
        XAR3 = #$C$FSL5 ; |383| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 382,column 9,is_stmt
        *SP(#13) = *SP(#13) + #1 ; |382| 
        dbl(*SP(#0)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 383,column 9,is_stmt
        AR1 = *SP(#13) ; |383| 
        *SP(#2) = AR1 ; |383| 
$C$DW$191	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$191, DW_AT_low_pc(0x00)
	.dwattr $C$DW$191, DW_AT_name("_printf")
	.dwattr $C$DW$191, DW_AT_TI_call
        call #_printf ; |383| 
                                        ; call occurs [#_printf] ; |383| 
$C$DW$L$_main$72$E:
$C$L44:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 380,column 7,is_stmt
$C$DW$L$_main$73$B:
        XAR3 = dbl(*(#_vpeSim))
        AC0 = *SP(#13) << #16

        AC0 = uns(*SP(#14)) ; |387| 
||      AC1 = AC0 <<< #0 ; |387| 

	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 387,column 7,is_stmt
;----------------------------------------------------------------------
; 387 | sample_total = (tulong) second_count * vpeSim->Fs + sample_count;      
;----------------------------------------------------------------------
        AC0 = AC0 + (*AR3(#21) * AC1) ; |387| 
        dbl(*SP(#10)) = AC0 ; |387| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 388,column 7,is_stmt
;----------------------------------------------------------------------
; 388 | if ((vpeSim->sample_bp != 0)            &&                             
; 389 |     (sample_total >= vpeSim->sample_bp) &&                             
; 390 |     (sample_total  - vpeSim->sample_bp) < vpeSim->frame_size_in) {     
;----------------------------------------------------------------------
        AC0 = dbl(*AR3(#14)) ; |388| 
        if (AC0 == #0) goto $C$L45 ; |388| 
                                        ; branchcc occurs ; |388| 
$C$DW$L$_main$73$E:
$C$DW$L$_main$74$B:
        AC0 = dbl(*AR3(#14)) ; |388| 
        AC1 = dbl(*SP(#10)) ; |388| 
        TC1 = uns(AC1 < AC0) ; |388| 
        if (TC1) goto $C$L45 ; |388| 
                                        ; branchcc occurs ; |388| 
$C$DW$L$_main$74$E:
$C$DW$L$_main$75$B:
        AC1 = dbl(*AR3(#14)) ; |388| 
        AC0 = uns(*AR3(#834)) ; |388| 
        AC1 = dbl(*SP(#10)) - AC1 ; |388| 
        TC1 = uns(AC1 >= AC0) ; |388| 
        if (TC1) goto $C$L45 ; |388| 
                                        ; branchcc occurs ; |388| 
$C$DW$L$_main$75$E:
$C$DW$L$_main$76$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 391,column 9,is_stmt
;----------------------------------------------------------------------
; 391 | vpe_iprint (" - Halting after %d samples\n", sample_total);            
;----------------------------------------------------------------------
        AC0 = dbl(*SP(#10)) ; |391| 
        XAR0 = #$C$FSL6 ; |391| 
$C$DW$192	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$192, DW_AT_low_pc(0x00)
	.dwattr $C$DW$192, DW_AT_name("_vpe_iprint")
	.dwattr $C$DW$192, DW_AT_TI_call
        call #_vpe_iprint ; |391| 
                                        ; call occurs [#_vpe_iprint] ; |391| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 392,column 9,is_stmt
;----------------------------------------------------------------------
; 392 | vpeSim->exec = FALSE;                                                  
;----------------------------------------------------------------------
        *AR3 = #0 ; |392| 
        XAR0 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 393,column 9,is_stmt
;----------------------------------------------------------------------
; 393 | vpe_halt (&vpeSim->exec);                                              
;----------------------------------------------------------------------
$C$DW$193	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$193, DW_AT_low_pc(0x00)
	.dwattr $C$DW$193, DW_AT_name("_vpe_halt")
	.dwattr $C$DW$193, DW_AT_TI_call
        call #_vpe_halt ; |393| 
                                        ; call occurs [#_vpe_halt] ; |393| 
$C$DW$L$_main$76$E:
$C$L45:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 388,column 7,is_stmt
$C$DW$L$_main$77$B:
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 395,column 7,is_stmt
;----------------------------------------------------------------------
; 395 | vpeSim->sample_cnt = sample_total;                                     
;----------------------------------------------------------------------
        AC0 = dbl(*SP(#10)) ; |395| 
        dbl(*AR3(#12)) = AC0 ; |395| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 396,column 5,is_stmt
        AR1 = *AR3(#832) ; |396| 
        if (AR1 != #0) goto $C$L5 ; |396| 
                                        ; branchcc occurs ; |396| 
$C$DW$L$_main$77$E:
$C$L46:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 194,column 5,is_stmt
$C$DW$L$_main$78$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 398,column 5,is_stmt
;----------------------------------------------------------------------
; 398 | vpeSim->exec = FALSE;                                                  
;----------------------------------------------------------------------
        *AR3 = #0 ; |398| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 399,column 5,is_stmt
;----------------------------------------------------------------------
; 399 | if (!vpeSim->sgn) {                                                    
;----------------------------------------------------------------------
        AR1 = *AR3(#16) ; |399| 
        if (AR1 != #0) goto $C$L47 ; |399| 
                                        ; branchcc occurs ; |399| 
$C$DW$L$_main$78$E:
$C$DW$L$_main$79$B:
        XAR0 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 401,column 7,is_stmt
;----------------------------------------------------------------------
; 401 | vpe_sim_fileio_end (&vpeSim->sigIn);                                   
;----------------------------------------------------------------------
        mar(AR0 + #50) ; |401| 
$C$DW$194	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$194, DW_AT_low_pc(0x00)
	.dwattr $C$DW$194, DW_AT_name("_vpe_sim_fileio_end")
	.dwattr $C$DW$194, DW_AT_TI_call
        call #_vpe_sim_fileio_end ; |401| 
                                        ; call occurs [#_vpe_sim_fileio_end] ; |401| 
        XAR0 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 403,column 7,is_stmt
;----------------------------------------------------------------------
; 403 | vpe_sim_fileio_end (&vpeSim->sigOut);                                  
;----------------------------------------------------------------------
        mar(*+AR0(#310)) ; |403| 
$C$DW$195	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$195, DW_AT_low_pc(0x00)
	.dwattr $C$DW$195, DW_AT_name("_vpe_sim_fileio_end")
	.dwattr $C$DW$195, DW_AT_TI_call
        call #_vpe_sim_fileio_end ; |403| 
                                        ; call occurs [#_vpe_sim_fileio_end] ; |403| 
$C$DW$L$_main$79$E:
$C$L47:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 399,column 5,is_stmt
$C$DW$L$_main$80$B:
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 405,column 5,is_stmt
;----------------------------------------------------------------------
; 405 | if(vpeSim->snl_on) {                                                   
;----------------------------------------------------------------------
        AR1 = *AR3(short(#3)) ; |405| 
        if (AR1 == #0) goto $C$L48 ; |405| 
                                        ; branchcc occurs ; |405| 
$C$DW$L$_main$80$E:
$C$DW$L$_main$81$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 407,column 7,is_stmt
;----------------------------------------------------------------------
; 407 | vpe_sim_fileio_end (&snlLevOut);                                       
;----------------------------------------------------------------------
        XAR0 = #_snlLevOut ; |407| 
$C$DW$196	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$196, DW_AT_low_pc(0x00)
	.dwattr $C$DW$196, DW_AT_name("_vpe_sim_fileio_end")
	.dwattr $C$DW$196, DW_AT_TI_call
        call #_vpe_sim_fileio_end ; |407| 
                                        ; call occurs [#_vpe_sim_fileio_end] ; |407| 
$C$DW$L$_main$81$E:
$C$L48:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 405,column 5,is_stmt
$C$DW$L$_main$82$B:
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 410,column 5,is_stmt
;----------------------------------------------------------------------
; 410 | if(vpeSim->svd_on) {                                                   
;----------------------------------------------------------------------
        AR1 = *AR3(short(#4)) ; |410| 
        if (AR1 == #0) goto $C$L49 ; |410| 
                                        ; branchcc occurs ; |410| 
$C$DW$L$_main$82$E:
$C$DW$L$_main$83$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 412,column 7,is_stmt
;----------------------------------------------------------------------
; 412 | vpe_sim_fileio_end (&svdOut);                                          
;----------------------------------------------------------------------
        XAR0 = #_svdOut ; |412| 
$C$DW$197	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$197, DW_AT_low_pc(0x00)
	.dwattr $C$DW$197, DW_AT_name("_vpe_sim_fileio_end")
	.dwattr $C$DW$197, DW_AT_TI_call
        call #_vpe_sim_fileio_end ; |412| 
                                        ; call occurs [#_vpe_sim_fileio_end] ; |412| 
$C$DW$L$_main$83$E:
$C$L49:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 410,column 5,is_stmt
$C$DW$L$_main$84$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 416,column 5,is_stmt
;----------------------------------------------------------------------
; 416 | vpe_banner_print ("Simulation:  END\n");                               
;----------------------------------------------------------------------
        XAR0 = #$C$FSL7 ; |416| 
$C$DW$198	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$198, DW_AT_low_pc(0x00)
	.dwattr $C$DW$198, DW_AT_name("_vpe_banner_print")
	.dwattr $C$DW$198, DW_AT_TI_call
        call #_vpe_banner_print ; |416| 
                                        ; call occurs [#_vpe_banner_print] ; |416| 
        XAR3 = dbl(*(#_vpeSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 419,column 3,is_stmt
        AR1 = *AR3 ; |419| 
        if (AR1 != #0) goto $C$L1 ; |419| 
                                        ; branchcc occurs ; |419| 
$C$DW$L$_main$84$E:
$C$L50:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 421,column 3,is_stmt
;----------------------------------------------------------------------
; 421 | if(vpeSim->nr_on) {                                                    
;----------------------------------------------------------------------
        AR1 = *AR3(short(#5)) ; |421| 
        if (AR1 == #0) goto $C$L51 ; |421| 
                                        ; branchcc occurs ; |421| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 422,column 5,is_stmt
;----------------------------------------------------------------------
; 422 | vpe_deinstantiate_nr();                                                
;----------------------------------------------------------------------
$C$DW$199	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$199, DW_AT_low_pc(0x00)
	.dwattr $C$DW$199, DW_AT_name("_vpe_deinstantiate_nr")
	.dwattr $C$DW$199, DW_AT_TI_call
        call #_vpe_deinstantiate_nr ; |422| 
                                        ; call occurs [#_vpe_deinstantiate_nr] ; |422| 
$C$L51:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c",line 426,column 3,is_stmt
;----------------------------------------------------------------------
; 426 | printf("Simulation done.\n");                                          
;----------------------------------------------------------------------
        XAR3 = #$C$FSL8 ; |426| 
        dbl(*SP(#0)) = XAR3
$C$DW$200	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$200, DW_AT_low_pc(0x00)
	.dwattr $C$DW$200, DW_AT_name("_printf")
	.dwattr $C$DW$200, DW_AT_TI_call
        call #_printf ; |426| 
                                        ; call occurs [#_printf] ; |426| 
        SP = SP + #21
	.dwcfi	cfa_offset, 1
$C$DW$201	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$201, DW_AT_low_pc(0x00)
	.dwattr $C$DW$201, DW_AT_TI_return
        return
                                        ; return occurs

$C$DW$202	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$202, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\vpe\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\vpesim.asm:$C$L1:1:1373048287")
	.dwattr $C$DW$202, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$202, DW_AT_TI_begin_line(0xae)
	.dwattr $C$DW$202, DW_AT_TI_end_line(0x1a3)
$C$DW$203	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$203, DW_AT_low_pc($C$DW$L$_main$2$B)
	.dwattr $C$DW$203, DW_AT_high_pc($C$DW$L$_main$2$E)
$C$DW$204	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$204, DW_AT_low_pc($C$DW$L$_main$3$B)
	.dwattr $C$DW$204, DW_AT_high_pc($C$DW$L$_main$3$E)
$C$DW$205	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$205, DW_AT_low_pc($C$DW$L$_main$4$B)
	.dwattr $C$DW$205, DW_AT_high_pc($C$DW$L$_main$4$E)
$C$DW$206	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$206, DW_AT_low_pc($C$DW$L$_main$5$B)
	.dwattr $C$DW$206, DW_AT_high_pc($C$DW$L$_main$5$E)
$C$DW$207	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$207, DW_AT_low_pc($C$DW$L$_main$6$B)
	.dwattr $C$DW$207, DW_AT_high_pc($C$DW$L$_main$6$E)
$C$DW$208	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$208, DW_AT_low_pc($C$DW$L$_main$7$B)
	.dwattr $C$DW$208, DW_AT_high_pc($C$DW$L$_main$7$E)
$C$DW$209	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$209, DW_AT_low_pc($C$DW$L$_main$8$B)
	.dwattr $C$DW$209, DW_AT_high_pc($C$DW$L$_main$8$E)
$C$DW$210	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$210, DW_AT_low_pc($C$DW$L$_main$78$B)
	.dwattr $C$DW$210, DW_AT_high_pc($C$DW$L$_main$78$E)
$C$DW$211	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$211, DW_AT_low_pc($C$DW$L$_main$79$B)
	.dwattr $C$DW$211, DW_AT_high_pc($C$DW$L$_main$79$E)
$C$DW$212	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$212, DW_AT_low_pc($C$DW$L$_main$80$B)
	.dwattr $C$DW$212, DW_AT_high_pc($C$DW$L$_main$80$E)
$C$DW$213	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$213, DW_AT_low_pc($C$DW$L$_main$81$B)
	.dwattr $C$DW$213, DW_AT_high_pc($C$DW$L$_main$81$E)
$C$DW$214	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$214, DW_AT_low_pc($C$DW$L$_main$82$B)
	.dwattr $C$DW$214, DW_AT_high_pc($C$DW$L$_main$82$E)
$C$DW$215	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$215, DW_AT_low_pc($C$DW$L$_main$83$B)
	.dwattr $C$DW$215, DW_AT_high_pc($C$DW$L$_main$83$E)
$C$DW$216	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$216, DW_AT_low_pc($C$DW$L$_main$84$B)
	.dwattr $C$DW$216, DW_AT_high_pc($C$DW$L$_main$84$E)

$C$DW$217	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$217, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\vpe\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\vpesim.asm:$C$L5:2:1373048287")
	.dwattr $C$DW$217, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$217, DW_AT_TI_begin_line(0xc2)
	.dwattr $C$DW$217, DW_AT_TI_end_line(0x18c)
$C$DW$218	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$218, DW_AT_low_pc($C$DW$L$_main$9$B)
	.dwattr $C$DW$218, DW_AT_high_pc($C$DW$L$_main$9$E)
$C$DW$219	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$219, DW_AT_low_pc($C$DW$L$_main$64$B)
	.dwattr $C$DW$219, DW_AT_high_pc($C$DW$L$_main$64$E)
$C$DW$220	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$220, DW_AT_low_pc($C$DW$L$_main$65$B)
	.dwattr $C$DW$220, DW_AT_high_pc($C$DW$L$_main$65$E)
$C$DW$221	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$221, DW_AT_low_pc($C$DW$L$_main$66$B)
	.dwattr $C$DW$221, DW_AT_high_pc($C$DW$L$_main$66$E)
$C$DW$222	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$222, DW_AT_low_pc($C$DW$L$_main$68$B)
	.dwattr $C$DW$222, DW_AT_high_pc($C$DW$L$_main$68$E)
$C$DW$223	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$223, DW_AT_low_pc($C$DW$L$_main$52$B)
	.dwattr $C$DW$223, DW_AT_high_pc($C$DW$L$_main$52$E)
$C$DW$224	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$224, DW_AT_low_pc($C$DW$L$_main$53$B)
	.dwattr $C$DW$224, DW_AT_high_pc($C$DW$L$_main$53$E)
$C$DW$225	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$225, DW_AT_low_pc($C$DW$L$_main$54$B)
	.dwattr $C$DW$225, DW_AT_high_pc($C$DW$L$_main$54$E)
$C$DW$226	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$226, DW_AT_low_pc($C$DW$L$_main$41$B)
	.dwattr $C$DW$226, DW_AT_high_pc($C$DW$L$_main$41$E)
$C$DW$227	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$227, DW_AT_low_pc($C$DW$L$_main$36$B)
	.dwattr $C$DW$227, DW_AT_high_pc($C$DW$L$_main$36$E)
$C$DW$228	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$228, DW_AT_low_pc($C$DW$L$_main$30$B)
	.dwattr $C$DW$228, DW_AT_high_pc($C$DW$L$_main$30$E)
$C$DW$229	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$229, DW_AT_low_pc($C$DW$L$_main$31$B)
	.dwattr $C$DW$229, DW_AT_high_pc($C$DW$L$_main$31$E)
$C$DW$230	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$230, DW_AT_low_pc($C$DW$L$_main$32$B)
	.dwattr $C$DW$230, DW_AT_high_pc($C$DW$L$_main$32$E)
$C$DW$231	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$231, DW_AT_low_pc($C$DW$L$_main$22$B)
	.dwattr $C$DW$231, DW_AT_high_pc($C$DW$L$_main$22$E)
$C$DW$232	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$232, DW_AT_low_pc($C$DW$L$_main$13$B)
	.dwattr $C$DW$232, DW_AT_high_pc($C$DW$L$_main$13$E)
$C$DW$233	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$233, DW_AT_low_pc($C$DW$L$_main$14$B)
	.dwattr $C$DW$233, DW_AT_high_pc($C$DW$L$_main$14$E)
$C$DW$234	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$234, DW_AT_low_pc($C$DW$L$_main$15$B)
	.dwattr $C$DW$234, DW_AT_high_pc($C$DW$L$_main$15$E)
$C$DW$235	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$235, DW_AT_low_pc($C$DW$L$_main$16$B)
	.dwattr $C$DW$235, DW_AT_high_pc($C$DW$L$_main$16$E)
$C$DW$236	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$236, DW_AT_low_pc($C$DW$L$_main$10$B)
	.dwattr $C$DW$236, DW_AT_high_pc($C$DW$L$_main$10$E)
$C$DW$237	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$237, DW_AT_low_pc($C$DW$L$_main$11$B)
	.dwattr $C$DW$237, DW_AT_high_pc($C$DW$L$_main$11$E)
$C$DW$238	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$238, DW_AT_low_pc($C$DW$L$_main$12$B)
	.dwattr $C$DW$238, DW_AT_high_pc($C$DW$L$_main$12$E)
$C$DW$239	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$239, DW_AT_low_pc($C$DW$L$_main$17$B)
	.dwattr $C$DW$239, DW_AT_high_pc($C$DW$L$_main$17$E)
$C$DW$240	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$240, DW_AT_low_pc($C$DW$L$_main$18$B)
	.dwattr $C$DW$240, DW_AT_high_pc($C$DW$L$_main$18$E)
$C$DW$241	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$241, DW_AT_low_pc($C$DW$L$_main$20$B)
	.dwattr $C$DW$241, DW_AT_high_pc($C$DW$L$_main$20$E)
$C$DW$242	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$242, DW_AT_low_pc($C$DW$L$_main$21$B)
	.dwattr $C$DW$242, DW_AT_high_pc($C$DW$L$_main$21$E)
$C$DW$243	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$243, DW_AT_low_pc($C$DW$L$_main$23$B)
	.dwattr $C$DW$243, DW_AT_high_pc($C$DW$L$_main$23$E)
$C$DW$244	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$244, DW_AT_low_pc($C$DW$L$_main$24$B)
	.dwattr $C$DW$244, DW_AT_high_pc($C$DW$L$_main$24$E)
$C$DW$245	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$245, DW_AT_low_pc($C$DW$L$_main$26$B)
	.dwattr $C$DW$245, DW_AT_high_pc($C$DW$L$_main$26$E)
$C$DW$246	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$246, DW_AT_low_pc($C$DW$L$_main$27$B)
	.dwattr $C$DW$246, DW_AT_high_pc($C$DW$L$_main$27$E)
$C$DW$247	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$247, DW_AT_low_pc($C$DW$L$_main$28$B)
	.dwattr $C$DW$247, DW_AT_high_pc($C$DW$L$_main$28$E)
$C$DW$248	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$248, DW_AT_low_pc($C$DW$L$_main$29$B)
	.dwattr $C$DW$248, DW_AT_high_pc($C$DW$L$_main$29$E)
$C$DW$249	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$249, DW_AT_low_pc($C$DW$L$_main$33$B)
	.dwattr $C$DW$249, DW_AT_high_pc($C$DW$L$_main$33$E)
$C$DW$250	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$250, DW_AT_low_pc($C$DW$L$_main$34$B)
	.dwattr $C$DW$250, DW_AT_high_pc($C$DW$L$_main$34$E)
$C$DW$251	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$251, DW_AT_low_pc($C$DW$L$_main$35$B)
	.dwattr $C$DW$251, DW_AT_high_pc($C$DW$L$_main$35$E)
$C$DW$252	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$252, DW_AT_low_pc($C$DW$L$_main$38$B)
	.dwattr $C$DW$252, DW_AT_high_pc($C$DW$L$_main$38$E)
$C$DW$253	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$253, DW_AT_low_pc($C$DW$L$_main$40$B)
	.dwattr $C$DW$253, DW_AT_high_pc($C$DW$L$_main$40$E)
$C$DW$254	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$254, DW_AT_low_pc($C$DW$L$_main$43$B)
	.dwattr $C$DW$254, DW_AT_high_pc($C$DW$L$_main$43$E)
$C$DW$255	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$255, DW_AT_low_pc($C$DW$L$_main$45$B)
	.dwattr $C$DW$255, DW_AT_high_pc($C$DW$L$_main$45$E)
$C$DW$256	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$256, DW_AT_low_pc($C$DW$L$_main$46$B)
	.dwattr $C$DW$256, DW_AT_high_pc($C$DW$L$_main$46$E)
$C$DW$257	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$257, DW_AT_low_pc($C$DW$L$_main$47$B)
	.dwattr $C$DW$257, DW_AT_high_pc($C$DW$L$_main$47$E)
$C$DW$258	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$258, DW_AT_low_pc($C$DW$L$_main$48$B)
	.dwattr $C$DW$258, DW_AT_high_pc($C$DW$L$_main$48$E)
$C$DW$259	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$259, DW_AT_low_pc($C$DW$L$_main$49$B)
	.dwattr $C$DW$259, DW_AT_high_pc($C$DW$L$_main$49$E)
$C$DW$260	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$260, DW_AT_low_pc($C$DW$L$_main$51$B)
	.dwattr $C$DW$260, DW_AT_high_pc($C$DW$L$_main$51$E)
$C$DW$261	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$261, DW_AT_low_pc($C$DW$L$_main$55$B)
	.dwattr $C$DW$261, DW_AT_high_pc($C$DW$L$_main$55$E)
$C$DW$262	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$262, DW_AT_low_pc($C$DW$L$_main$56$B)
	.dwattr $C$DW$262, DW_AT_high_pc($C$DW$L$_main$56$E)
$C$DW$263	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$263, DW_AT_low_pc($C$DW$L$_main$57$B)
	.dwattr $C$DW$263, DW_AT_high_pc($C$DW$L$_main$57$E)
$C$DW$264	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$264, DW_AT_low_pc($C$DW$L$_main$58$B)
	.dwattr $C$DW$264, DW_AT_high_pc($C$DW$L$_main$58$E)
$C$DW$265	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$265, DW_AT_low_pc($C$DW$L$_main$59$B)
	.dwattr $C$DW$265, DW_AT_high_pc($C$DW$L$_main$59$E)
$C$DW$266	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$266, DW_AT_low_pc($C$DW$L$_main$60$B)
	.dwattr $C$DW$266, DW_AT_high_pc($C$DW$L$_main$60$E)
$C$DW$267	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$267, DW_AT_low_pc($C$DW$L$_main$61$B)
	.dwattr $C$DW$267, DW_AT_high_pc($C$DW$L$_main$61$E)
$C$DW$268	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$268, DW_AT_low_pc($C$DW$L$_main$63$B)
	.dwattr $C$DW$268, DW_AT_high_pc($C$DW$L$_main$63$E)
$C$DW$269	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$269, DW_AT_low_pc($C$DW$L$_main$70$B)
	.dwattr $C$DW$269, DW_AT_high_pc($C$DW$L$_main$70$E)
$C$DW$270	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$270, DW_AT_low_pc($C$DW$L$_main$71$B)
	.dwattr $C$DW$270, DW_AT_high_pc($C$DW$L$_main$71$E)
$C$DW$271	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$271, DW_AT_low_pc($C$DW$L$_main$72$B)
	.dwattr $C$DW$271, DW_AT_high_pc($C$DW$L$_main$72$E)
$C$DW$272	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$272, DW_AT_low_pc($C$DW$L$_main$73$B)
	.dwattr $C$DW$272, DW_AT_high_pc($C$DW$L$_main$73$E)
$C$DW$273	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$273, DW_AT_low_pc($C$DW$L$_main$74$B)
	.dwattr $C$DW$273, DW_AT_high_pc($C$DW$L$_main$74$E)
$C$DW$274	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$274, DW_AT_low_pc($C$DW$L$_main$75$B)
	.dwattr $C$DW$274, DW_AT_high_pc($C$DW$L$_main$75$E)
$C$DW$275	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$275, DW_AT_low_pc($C$DW$L$_main$76$B)
	.dwattr $C$DW$275, DW_AT_high_pc($C$DW$L$_main$76$E)
$C$DW$276	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$276, DW_AT_low_pc($C$DW$L$_main$77$B)
	.dwattr $C$DW$276, DW_AT_high_pc($C$DW$L$_main$77$E)

$C$DW$277	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$277, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\vpe\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\vpesim.asm:$C$L39:3:1373048287")
	.dwattr $C$DW$277, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$277, DW_AT_TI_begin_line(0x16e)
	.dwattr $C$DW$277, DW_AT_TI_end_line(0x170)
$C$DW$278	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$278, DW_AT_low_pc($C$DW$L$_main$67$B)
	.dwattr $C$DW$278, DW_AT_high_pc($C$DW$L$_main$67$E)
	.dwendtag $C$DW$277


$C$DW$279	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$279, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\vpe\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\vpesim.asm:$C$L41:3:1373048287")
	.dwattr $C$DW$279, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$279, DW_AT_TI_begin_line(0x173)
	.dwattr $C$DW$279, DW_AT_TI_end_line(0x175)
$C$DW$280	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$280, DW_AT_low_pc($C$DW$L$_main$69$B)
	.dwattr $C$DW$280, DW_AT_high_pc($C$DW$L$_main$69$E)
	.dwendtag $C$DW$279


$C$DW$281	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$281, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\vpe\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\vpesim.asm:$C$L24:3:1373048287")
	.dwattr $C$DW$281, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$281, DW_AT_TI_begin_line(0x11a)
	.dwattr $C$DW$281, DW_AT_TI_end_line(0x11c)
$C$DW$282	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$282, DW_AT_low_pc($C$DW$L$_main$42$B)
	.dwattr $C$DW$282, DW_AT_high_pc($C$DW$L$_main$42$E)
	.dwendtag $C$DW$281


$C$DW$283	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$283, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\vpe\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\vpesim.asm:$C$L20:3:1373048287")
	.dwattr $C$DW$283, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$283, DW_AT_TI_begin_line(0x10a)
	.dwattr $C$DW$283, DW_AT_TI_end_line(0x10c)
$C$DW$284	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$284, DW_AT_low_pc($C$DW$L$_main$37$B)
	.dwattr $C$DW$284, DW_AT_high_pc($C$DW$L$_main$37$E)
	.dwendtag $C$DW$283


$C$DW$285	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$285, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\vpe\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\vpesim.asm:$C$L11:3:1373048287")
	.dwattr $C$DW$285, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$285, DW_AT_TI_begin_line(0xda)
	.dwattr $C$DW$285, DW_AT_TI_end_line(0xdc)
$C$DW$286	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$286, DW_AT_low_pc($C$DW$L$_main$19$B)
	.dwattr $C$DW$286, DW_AT_high_pc($C$DW$L$_main$19$E)
	.dwendtag $C$DW$285


$C$DW$287	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$287, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\vpe\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\vpesim.asm:$C$L15:3:1373048287")
	.dwattr $C$DW$287, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$287, DW_AT_TI_begin_line(0xe7)
	.dwattr $C$DW$287, DW_AT_TI_end_line(0xe9)
$C$DW$288	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$288, DW_AT_low_pc($C$DW$L$_main$25$B)
	.dwattr $C$DW$288, DW_AT_high_pc($C$DW$L$_main$25$E)
	.dwendtag $C$DW$287


$C$DW$289	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$289, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\vpe\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\vpesim.asm:$C$L22:3:1373048287")
	.dwattr $C$DW$289, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$289, DW_AT_TI_begin_line(0x113)
	.dwattr $C$DW$289, DW_AT_TI_end_line(0x115)
$C$DW$290	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$290, DW_AT_low_pc($C$DW$L$_main$39$B)
	.dwattr $C$DW$290, DW_AT_high_pc($C$DW$L$_main$39$E)
	.dwendtag $C$DW$289


$C$DW$291	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$291, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\vpe\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\vpesim.asm:$C$L26:3:1373048287")
	.dwattr $C$DW$291, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$291, DW_AT_TI_begin_line(0x123)
	.dwattr $C$DW$291, DW_AT_TI_end_line(0x125)
$C$DW$292	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$292, DW_AT_low_pc($C$DW$L$_main$44$B)
	.dwattr $C$DW$292, DW_AT_high_pc($C$DW$L$_main$44$E)
	.dwendtag $C$DW$291


$C$DW$293	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$293, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\vpe\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\vpesim.asm:$C$L30:3:1373048287")
	.dwattr $C$DW$293, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$293, DW_AT_TI_begin_line(0x144)
	.dwattr $C$DW$293, DW_AT_TI_end_line(0x146)
$C$DW$294	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$294, DW_AT_low_pc($C$DW$L$_main$50$B)
	.dwattr $C$DW$294, DW_AT_high_pc($C$DW$L$_main$50$E)
	.dwendtag $C$DW$293


$C$DW$295	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$295, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\vpe\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\vpesim.asm:$C$L36:3:1373048287")
	.dwattr $C$DW$295, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$295, DW_AT_TI_begin_line(0x163)
	.dwattr $C$DW$295, DW_AT_TI_end_line(0x165)
$C$DW$296	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$296, DW_AT_low_pc($C$DW$L$_main$62$B)
	.dwattr $C$DW$296, DW_AT_high_pc($C$DW$L$_main$62$E)
	.dwendtag $C$DW$295

	.dwendtag $C$DW$217

	.dwendtag $C$DW$202

	.dwattr $C$DW$134, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$134, DW_AT_TI_end_line(0x1ab)
	.dwattr $C$DW$134, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$134

;*******************************************************************************
;* FAR STRINGS                                                                 *
;*******************************************************************************
	.sect	".const:.string"
	.align	2
$C$FSL1:	.string	10,0
	.align	2
$C$FSL2:	.string	"------------------------------",10,0
	.align	2
$C$FSL3:	.string	"Simulation:  BEGIN",10,0
	.align	2
$C$FSL4:	.string	"Error returned by asnrProcessn() = %d!",10,0
	.align	2
$C$FSL5:	.string	" - Progress: %d seconds",10,0
	.align	2
$C$FSL6:	.string	" - Halting after %d samples",10,0
	.align	2
$C$FSL7:	.string	"Simulation:  END",10,0
	.align	2
$C$FSL8:	.string	"Simulation done.",10,0
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_exit
	.global	_printf
	.global	_hlcControl
	.global	_hlcProcess
	.global	_slmControl
	.global	_slmProcess
	.global	_snlProcess
	.global	_snlGetLevels
	.global	_svdProcess
	.global	_svdGetDecision
	.global	_svdGetLevels
	.global	_sfcDecimationBy2
	.global	_sfcInterpolationBy2
	.global	_pcmUlawEncoderP
	.global	_pcmAlawEncoderP
	.global	_pcmUlawDecoderP
	.global	_pcmAlawDecoderP
	.global	_asnrProcess
	.global	_vpe_sim_fileio_init
	.global	_vpe_sim_fileio_end
	.global	_vpe_sim_init
	.global	_vpe_init
	.global	_vpe_sim_fread
	.global	_vpe_sim_fwrite
	.global	_vpe_print
	.global	_vpe_iprint
	.global	_vpe_sim_set_sgn
	.global	_vpe_sim_gen_frame
	.global	_vpe_deinstantiate_nr
	.global	_vpe_halt
	.global	_vpe_sim_flush_cache
	.global	_vpe_sim_read_cfg

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$46	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$46, DW_AT_byte_size(0x01)
$C$DW$297	.dwtag  DW_TAG_enumerator, DW_AT_name("vpe_SIM_PCM_ALAW"), DW_AT_const_value(0x00)
$C$DW$298	.dwtag  DW_TAG_enumerator, DW_AT_name("vpe_SIM_PCM_ULAW"), DW_AT_const_value(0x01)
$C$DW$299	.dwtag  DW_TAG_enumerator, DW_AT_name("vpe_SIM_PCM_LIN"), DW_AT_const_value(0x02)
	.dwendtag $C$DW$T$46

$C$DW$T$47	.dwtag  DW_TAG_typedef, DW_AT_name("vpeSimPcm_e")
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$47, DW_AT_language(DW_LANG_C)

$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x02)
$C$DW$300	.dwtag  DW_TAG_member
	.dwattr $C$DW$300, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$300, DW_AT_name("ctl_code")
	.dwattr $C$DW$300, DW_AT_TI_symbol_name("_ctl_code")
	.dwattr $C$DW$300, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$300, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$301	.dwtag  DW_TAG_member
	.dwattr $C$DW$301, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$301, DW_AT_name("u")
	.dwattr $C$DW$301, DW_AT_TI_symbol_name("_u")
	.dwattr $C$DW$301, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$301, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$22

$C$DW$T$42	.dwtag  DW_TAG_typedef, DW_AT_name("hlcControl_t")
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$42, DW_AT_language(DW_LANG_C)
$C$DW$T$54	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$54, DW_AT_address_class(0x17)

$C$DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x0c)
$C$DW$302	.dwtag  DW_TAG_member
	.dwattr $C$DW$302, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$302, DW_AT_name("fd")
	.dwattr $C$DW$302, DW_AT_TI_symbol_name("_fd")
	.dwattr $C$DW$302, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$302, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$303	.dwtag  DW_TAG_member
	.dwattr $C$DW$303, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$303, DW_AT_name("buf")
	.dwattr $C$DW$303, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$303, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$303, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$304	.dwtag  DW_TAG_member
	.dwattr $C$DW$304, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$304, DW_AT_name("pos")
	.dwattr $C$DW$304, DW_AT_TI_symbol_name("_pos")
	.dwattr $C$DW$304, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$304, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$305	.dwtag  DW_TAG_member
	.dwattr $C$DW$305, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$305, DW_AT_name("bufend")
	.dwattr $C$DW$305, DW_AT_TI_symbol_name("_bufend")
	.dwattr $C$DW$305, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$305, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$306	.dwtag  DW_TAG_member
	.dwattr $C$DW$306, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$306, DW_AT_name("buff_stop")
	.dwattr $C$DW$306, DW_AT_TI_symbol_name("_buff_stop")
	.dwattr $C$DW$306, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$306, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$307	.dwtag  DW_TAG_member
	.dwattr $C$DW$307, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$307, DW_AT_name("flags")
	.dwattr $C$DW$307, DW_AT_TI_symbol_name("_flags")
	.dwattr $C$DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$307, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$24

$C$DW$T$28	.dwtag  DW_TAG_typedef, DW_AT_name("FILE")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C)
$C$DW$T$29	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$29, DW_AT_address_class(0x17)

$C$DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x104)
$C$DW$308	.dwtag  DW_TAG_member
	.dwattr $C$DW$308, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$308, DW_AT_name("fio")
	.dwattr $C$DW$308, DW_AT_TI_symbol_name("_fio")
	.dwattr $C$DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$308, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$309	.dwtag  DW_TAG_member
	.dwattr $C$DW$309, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$309, DW_AT_name("eof")
	.dwattr $C$DW$309, DW_AT_TI_symbol_name("_eof")
	.dwattr $C$DW$309, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$309, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$310	.dwtag  DW_TAG_member
	.dwattr $C$DW$310, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$310, DW_AT_name("fptr")
	.dwattr $C$DW$310, DW_AT_TI_symbol_name("_fptr")
	.dwattr $C$DW$310, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$310, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$311	.dwtag  DW_TAG_member
	.dwattr $C$DW$311, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$311, DW_AT_name("fname")
	.dwattr $C$DW$311, DW_AT_TI_symbol_name("_fname")
	.dwattr $C$DW$311, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$311, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$32

$C$DW$T$45	.dwtag  DW_TAG_typedef, DW_AT_name("vpeSimFileIo_t")
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$45, DW_AT_language(DW_LANG_C)
$C$DW$T$55	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$55, DW_AT_address_class(0x17)

$C$DW$T$37	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x0e)
$C$DW$312	.dwtag  DW_TAG_member
	.dwattr $C$DW$312, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$312, DW_AT_name("state")
	.dwattr $C$DW$312, DW_AT_TI_symbol_name("_state")
	.dwattr $C$DW$312, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$312, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$313	.dwtag  DW_TAG_member
	.dwattr $C$DW$313, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$313, DW_AT_name("dcoffset")
	.dwattr $C$DW$313, DW_AT_TI_symbol_name("_dcoffset")
	.dwattr $C$DW$313, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$313, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$314	.dwtag  DW_TAG_member
	.dwattr $C$DW$314, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$314, DW_AT_name("wftype")
	.dwattr $C$DW$314, DW_AT_TI_symbol_name("_wftype")
	.dwattr $C$DW$314, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$314, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$315	.dwtag  DW_TAG_member
	.dwattr $C$DW$315, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$315, DW_AT_name("f1")
	.dwattr $C$DW$315, DW_AT_TI_symbol_name("_f1")
	.dwattr $C$DW$315, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$315, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$316	.dwtag  DW_TAG_member
	.dwattr $C$DW$316, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$316, DW_AT_name("f2")
	.dwattr $C$DW$316, DW_AT_TI_symbol_name("_f2")
	.dwattr $C$DW$316, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$316, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$317	.dwtag  DW_TAG_member
	.dwattr $C$DW$317, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$317, DW_AT_name("amp1")
	.dwattr $C$DW$317, DW_AT_TI_symbol_name("_amp1")
	.dwattr $C$DW$317, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$317, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$318	.dwtag  DW_TAG_member
	.dwattr $C$DW$318, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$318, DW_AT_name("amp2")
	.dwattr $C$DW$318, DW_AT_TI_symbol_name("_amp2")
	.dwattr $C$DW$318, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$318, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$319	.dwtag  DW_TAG_member
	.dwattr $C$DW$319, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$319, DW_AT_name("nlevel")
	.dwattr $C$DW$319, DW_AT_TI_symbol_name("_nlevel")
	.dwattr $C$DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$319, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$320	.dwtag  DW_TAG_member
	.dwattr $C$DW$320, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$320, DW_AT_name("nseed")
	.dwattr $C$DW$320, DW_AT_TI_symbol_name("_nseed")
	.dwattr $C$DW$320, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$320, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$321	.dwtag  DW_TAG_member
	.dwattr $C$DW$321, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$321, DW_AT_name("ntype")
	.dwattr $C$DW$321, DW_AT_TI_symbol_name("_ntype")
	.dwattr $C$DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$321, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$322	.dwtag  DW_TAG_member
	.dwattr $C$DW$322, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$322, DW_AT_name("pow_level")
	.dwattr $C$DW$322, DW_AT_TI_symbol_name("_pow_level")
	.dwattr $C$DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$322, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$323	.dwtag  DW_TAG_member
	.dwattr $C$DW$323, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$323, DW_AT_name("hoth_seed")
	.dwattr $C$DW$323, DW_AT_TI_symbol_name("_hoth_seed")
	.dwattr $C$DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$323, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$37

$C$DW$T$44	.dwtag  DW_TAG_typedef, DW_AT_name("vpeSGNPars_t")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)
$C$DW$T$56	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$56, DW_AT_address_class(0x17)

$C$DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x0b)
$C$DW$324	.dwtag  DW_TAG_member
	.dwattr $C$DW$324, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$324, DW_AT_name("samp_rate")
	.dwattr $C$DW$324, DW_AT_TI_symbol_name("_samp_rate")
	.dwattr $C$DW$324, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$324, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$325	.dwtag  DW_TAG_member
	.dwattr $C$DW$325, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$325, DW_AT_name("delay")
	.dwattr $C$DW$325, DW_AT_TI_symbol_name("_delay")
	.dwattr $C$DW$325, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$325, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$326	.dwtag  DW_TAG_member
	.dwattr $C$DW$326, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$326, DW_AT_name("band_bin1")
	.dwattr $C$DW$326, DW_AT_TI_symbol_name("_band_bin1")
	.dwattr $C$DW$326, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$326, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$327	.dwtag  DW_TAG_member
	.dwattr $C$DW$327, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$327, DW_AT_name("band_bin2")
	.dwattr $C$DW$327, DW_AT_TI_symbol_name("_band_bin2")
	.dwattr $C$DW$327, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$327, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$328	.dwtag  DW_TAG_member
	.dwattr $C$DW$328, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$328, DW_AT_name("band1_max_atten")
	.dwattr $C$DW$328, DW_AT_TI_symbol_name("_band1_max_atten")
	.dwattr $C$DW$328, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$328, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$329	.dwtag  DW_TAG_member
	.dwattr $C$DW$329, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$329, DW_AT_name("band2_max_atten")
	.dwattr $C$DW$329, DW_AT_TI_symbol_name("_band2_max_atten")
	.dwattr $C$DW$329, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$329, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$330	.dwtag  DW_TAG_member
	.dwattr $C$DW$330, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$330, DW_AT_name("band3_max_atten")
	.dwattr $C$DW$330, DW_AT_TI_symbol_name("_band3_max_atten")
	.dwattr $C$DW$330, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$330, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$331	.dwtag  DW_TAG_member
	.dwattr $C$DW$331, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$331, DW_AT_name("sig_upd_rate_max")
	.dwattr $C$DW$331, DW_AT_TI_symbol_name("_sig_upd_rate_max")
	.dwattr $C$DW$331, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$331, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$332	.dwtag  DW_TAG_member
	.dwattr $C$DW$332, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$332, DW_AT_name("sig_upd_rate_min")
	.dwattr $C$DW$332, DW_AT_TI_symbol_name("_sig_upd_rate_min")
	.dwattr $C$DW$332, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$332, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$333	.dwtag  DW_TAG_member
	.dwattr $C$DW$333, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$333, DW_AT_name("noise_thresh")
	.dwattr $C$DW$333, DW_AT_TI_symbol_name("_noise_thresh")
	.dwattr $C$DW$333, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$333, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$334	.dwtag  DW_TAG_member
	.dwattr $C$DW$334, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$334, DW_AT_name("noise_hangover")
	.dwattr $C$DW$334, DW_AT_TI_symbol_name("_noise_hangover")
	.dwattr $C$DW$334, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$334, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$38

$C$DW$T$43	.dwtag  DW_TAG_typedef, DW_AT_name("vpeASNRPars_t")
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$43, DW_AT_language(DW_LANG_C)

$C$DW$T$51	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x444)
$C$DW$335	.dwtag  DW_TAG_member
	.dwattr $C$DW$335, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$335, DW_AT_name("exec")
	.dwattr $C$DW$335, DW_AT_TI_symbol_name("_exec")
	.dwattr $C$DW$335, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$335, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$336	.dwtag  DW_TAG_member
	.dwattr $C$DW$336, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$336, DW_AT_name("hlc_on")
	.dwattr $C$DW$336, DW_AT_TI_symbol_name("_hlc_on")
	.dwattr $C$DW$336, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$336, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$337	.dwtag  DW_TAG_member
	.dwattr $C$DW$337, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$337, DW_AT_name("slm_on")
	.dwattr $C$DW$337, DW_AT_TI_symbol_name("_slm_on")
	.dwattr $C$DW$337, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$337, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$338	.dwtag  DW_TAG_member
	.dwattr $C$DW$338, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$338, DW_AT_name("snl_on")
	.dwattr $C$DW$338, DW_AT_TI_symbol_name("_snl_on")
	.dwattr $C$DW$338, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$338, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$339	.dwtag  DW_TAG_member
	.dwattr $C$DW$339, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$339, DW_AT_name("svd_on")
	.dwattr $C$DW$339, DW_AT_TI_symbol_name("_svd_on")
	.dwattr $C$DW$339, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$339, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$340	.dwtag  DW_TAG_member
	.dwattr $C$DW$340, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$340, DW_AT_name("nr_on")
	.dwattr $C$DW$340, DW_AT_TI_symbol_name("_nr_on")
	.dwattr $C$DW$340, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$340, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$341	.dwtag  DW_TAG_member
	.dwattr $C$DW$341, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$341, DW_AT_name("decim_on")
	.dwattr $C$DW$341, DW_AT_TI_symbol_name("_decim_on")
	.dwattr $C$DW$341, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$341, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$342	.dwtag  DW_TAG_member
	.dwattr $C$DW$342, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$342, DW_AT_name("interp_on")
	.dwattr $C$DW$342, DW_AT_TI_symbol_name("_interp_on")
	.dwattr $C$DW$342, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$342, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$343	.dwtag  DW_TAG_member
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$343, DW_AT_name("ulaw_enc_on")
	.dwattr $C$DW$343, DW_AT_TI_symbol_name("_ulaw_enc_on")
	.dwattr $C$DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$343, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$344	.dwtag  DW_TAG_member
	.dwattr $C$DW$344, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$344, DW_AT_name("ulaw_dec_on")
	.dwattr $C$DW$344, DW_AT_TI_symbol_name("_ulaw_dec_on")
	.dwattr $C$DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$344, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$345	.dwtag  DW_TAG_member
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$345, DW_AT_name("alaw_enc_on")
	.dwattr $C$DW$345, DW_AT_TI_symbol_name("_alaw_enc_on")
	.dwattr $C$DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$345, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$346	.dwtag  DW_TAG_member
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$346, DW_AT_name("alaw_dec_on")
	.dwattr $C$DW$346, DW_AT_TI_symbol_name("_alaw_dec_on")
	.dwattr $C$DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$346, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$347	.dwtag  DW_TAG_member
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$347, DW_AT_name("sample_cnt")
	.dwattr $C$DW$347, DW_AT_TI_symbol_name("_sample_cnt")
	.dwattr $C$DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$347, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$348	.dwtag  DW_TAG_member
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$348, DW_AT_name("sample_bp")
	.dwattr $C$DW$348, DW_AT_TI_symbol_name("_sample_bp")
	.dwattr $C$DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$348, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$349	.dwtag  DW_TAG_member
	.dwattr $C$DW$349, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$349, DW_AT_name("sgn")
	.dwattr $C$DW$349, DW_AT_TI_symbol_name("_sgn")
	.dwattr $C$DW$349, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$349, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$350	.dwtag  DW_TAG_member
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$350, DW_AT_name("cfg_sgn")
	.dwattr $C$DW$350, DW_AT_TI_symbol_name("_cfg_sgn")
	.dwattr $C$DW$350, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$350, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$351	.dwtag  DW_TAG_member
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$351, DW_AT_name("cfg_hlc")
	.dwattr $C$DW$351, DW_AT_TI_symbol_name("_cfg_hlc")
	.dwattr $C$DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$351, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$352	.dwtag  DW_TAG_member
	.dwattr $C$DW$352, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$352, DW_AT_name("cfg_slm")
	.dwattr $C$DW$352, DW_AT_TI_symbol_name("_cfg_slm")
	.dwattr $C$DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$352, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$353	.dwtag  DW_TAG_member
	.dwattr $C$DW$353, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$353, DW_AT_name("slm_mod")
	.dwattr $C$DW$353, DW_AT_TI_symbol_name("_slm_mod")
	.dwattr $C$DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$353, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$354	.dwtag  DW_TAG_member
	.dwattr $C$DW$354, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$354, DW_AT_name("Fs")
	.dwattr $C$DW$354, DW_AT_TI_symbol_name("_Fs")
	.dwattr $C$DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$354, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$355	.dwtag  DW_TAG_member
	.dwattr $C$DW$355, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$355, DW_AT_name("hlc_ctrl")
	.dwattr $C$DW$355, DW_AT_TI_symbol_name("_hlc_ctrl")
	.dwattr $C$DW$355, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$355, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$356	.dwtag  DW_TAG_member
	.dwattr $C$DW$356, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$356, DW_AT_name("asnrParam")
	.dwattr $C$DW$356, DW_AT_TI_symbol_name("_asnrParam")
	.dwattr $C$DW$356, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$356, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$357	.dwtag  DW_TAG_member
	.dwattr $C$DW$357, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$357, DW_AT_name("sgnParam")
	.dwattr $C$DW$357, DW_AT_TI_symbol_name("_sgnParam")
	.dwattr $C$DW$357, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$357, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$358	.dwtag  DW_TAG_member
	.dwattr $C$DW$358, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$358, DW_AT_name("sigIn")
	.dwattr $C$DW$358, DW_AT_TI_symbol_name("_sigIn")
	.dwattr $C$DW$358, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$358, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$359	.dwtag  DW_TAG_member
	.dwattr $C$DW$359, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$359, DW_AT_name("sigOut")
	.dwattr $C$DW$359, DW_AT_TI_symbol_name("_sigOut")
	.dwattr $C$DW$359, DW_AT_data_member_location[DW_OP_plus_uconst 0x136]
	.dwattr $C$DW$359, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$360	.dwtag  DW_TAG_member
	.dwattr $C$DW$360, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$360, DW_AT_name("config")
	.dwattr $C$DW$360, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$360, DW_AT_data_member_location[DW_OP_plus_uconst 0x23a]
	.dwattr $C$DW$360, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$361	.dwtag  DW_TAG_member
	.dwattr $C$DW$361, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$361, DW_AT_name("pcmin_format")
	.dwattr $C$DW$361, DW_AT_TI_symbol_name("_pcmin_format")
	.dwattr $C$DW$361, DW_AT_data_member_location[DW_OP_plus_uconst 0x33e]
	.dwattr $C$DW$361, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$362	.dwtag  DW_TAG_member
	.dwattr $C$DW$362, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$362, DW_AT_name("pcmout_format")
	.dwattr $C$DW$362, DW_AT_TI_symbol_name("_pcmout_format")
	.dwattr $C$DW$362, DW_AT_data_member_location[DW_OP_plus_uconst 0x33f]
	.dwattr $C$DW$362, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$363	.dwtag  DW_TAG_member
	.dwattr $C$DW$363, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$363, DW_AT_name("data")
	.dwattr $C$DW$363, DW_AT_TI_symbol_name("_data")
	.dwattr $C$DW$363, DW_AT_data_member_location[DW_OP_plus_uconst 0x340]
	.dwattr $C$DW$363, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$364	.dwtag  DW_TAG_member
	.dwattr $C$DW$364, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$364, DW_AT_name("error_id")
	.dwattr $C$DW$364, DW_AT_TI_symbol_name("_error_id")
	.dwattr $C$DW$364, DW_AT_data_member_location[DW_OP_plus_uconst 0x341]
	.dwattr $C$DW$364, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$365	.dwtag  DW_TAG_member
	.dwattr $C$DW$365, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$365, DW_AT_name("frame_size_in")
	.dwattr $C$DW$365, DW_AT_TI_symbol_name("_frame_size_in")
	.dwattr $C$DW$365, DW_AT_data_member_location[DW_OP_plus_uconst 0x342]
	.dwattr $C$DW$365, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$366	.dwtag  DW_TAG_member
	.dwattr $C$DW$366, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$366, DW_AT_name("frame_size_out")
	.dwattr $C$DW$366, DW_AT_TI_symbol_name("_frame_size_out")
	.dwattr $C$DW$366, DW_AT_data_member_location[DW_OP_plus_uconst 0x343]
	.dwattr $C$DW$366, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$367	.dwtag  DW_TAG_member
	.dwattr $C$DW$367, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$367, DW_AT_name("baseDir")
	.dwattr $C$DW$367, DW_AT_TI_symbol_name("_baseDir")
	.dwattr $C$DW$367, DW_AT_data_member_location[DW_OP_plus_uconst 0x344]
	.dwattr $C$DW$367, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$51

$C$DW$T$57	.dwtag  DW_TAG_typedef, DW_AT_name("vpeSimConfig_t")
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$T$57, DW_AT_language(DW_LANG_C)
$C$DW$T$58	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$58, DW_AT_address_class(0x17)

$C$DW$T$53	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x01)
$C$DW$368	.dwtag  DW_TAG_member
	.dwattr $C$DW$368, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$368, DW_AT_name("thresh")
	.dwattr $C$DW$368, DW_AT_TI_symbol_name("_thresh")
	.dwattr $C$DW$368, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$368, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$53

$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x17)
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
$C$DW$T$23	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$23, DW_AT_address_class(0x17)
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
$C$DW$T$52	.dwtag  DW_TAG_typedef, DW_AT_name("Fract")
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$52, DW_AT_language(DW_LANG_C)
$C$DW$369	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$369, DW_AT_type(*$C$DW$T$52)
$C$DW$T$62	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$369)
$C$DW$T$63	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$T$63, DW_AT_address_class(0x17)
$C$DW$T$97	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$97, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$T$97, DW_AT_address_class(0x17)
$C$DW$T$33	.dwtag  DW_TAG_typedef, DW_AT_name("linSample")
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$33, DW_AT_language(DW_LANG_C)
$C$DW$T$61	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$61, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$61, DW_AT_address_class(0x17)

$C$DW$T$119	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$119, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$119, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$119, DW_AT_byte_size(0x140)
$C$DW$370	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$370, DW_AT_upper_bound(0x13f)
	.dwendtag $C$DW$T$119


$C$DW$T$120	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$120, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$120, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$120, DW_AT_byte_size(0x280)
$C$DW$371	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$371, DW_AT_upper_bound(0x27f)
	.dwendtag $C$DW$T$120


$C$DW$T$121	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$121, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$121, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$121, DW_AT_byte_size(0xc0)
$C$DW$372	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$372, DW_AT_upper_bound(0xbf)
	.dwendtag $C$DW$T$121


$C$DW$T$122	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$122, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$122, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$122, DW_AT_byte_size(0xb0)
$C$DW$373	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$373, DW_AT_upper_bound(0xaf)
	.dwendtag $C$DW$T$122

$C$DW$T$25	.dwtag  DW_TAG_typedef, DW_AT_name("int_least8_t")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$25, DW_AT_language(DW_LANG_C)
$C$DW$T$26	.dwtag  DW_TAG_typedef, DW_AT_name("tshort")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)
$C$DW$T$27	.dwtag  DW_TAG_typedef, DW_AT_name("tbool")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)
$C$DW$T$90	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$90, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$90, DW_AT_address_class(0x17)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)
$C$DW$T$48	.dwtag  DW_TAG_typedef, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$48, DW_AT_language(DW_LANG_C)
$C$DW$T$49	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least16_t")
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$49, DW_AT_language(DW_LANG_C)
$C$DW$T$50	.dwtag  DW_TAG_typedef, DW_AT_name("tuint")
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$T$50, DW_AT_language(DW_LANG_C)
$C$DW$T$108	.dwtag  DW_TAG_typedef, DW_AT_name("UFract")
	.dwattr $C$DW$T$108, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$108, DW_AT_language(DW_LANG_C)
$C$DW$T$109	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$109, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$T$109, DW_AT_address_class(0x17)
$C$DW$T$66	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$66, DW_AT_address_class(0x17)
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)
$C$DW$T$39	.dwtag  DW_TAG_typedef, DW_AT_name("int32_t")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$39, DW_AT_language(DW_LANG_C)
$C$DW$T$40	.dwtag  DW_TAG_typedef, DW_AT_name("int_least32_t")
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$40, DW_AT_language(DW_LANG_C)
$C$DW$T$41	.dwtag  DW_TAG_typedef, DW_AT_name("tlong")
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$41, DW_AT_language(DW_LANG_C)
$C$DW$T$112	.dwtag  DW_TAG_typedef, DW_AT_name("LFract")
	.dwattr $C$DW$T$112, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$112, DW_AT_language(DW_LANG_C)
$C$DW$T$113	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$113, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$T$113, DW_AT_address_class(0x17)
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)
$C$DW$T$34	.dwtag  DW_TAG_typedef, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)
$C$DW$T$35	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least32_t")
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$35, DW_AT_language(DW_LANG_C)
$C$DW$T$36	.dwtag  DW_TAG_typedef, DW_AT_name("tulong")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)
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
$C$DW$T$30	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$30, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$30, DW_AT_name("signed char")
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x01)

$C$DW$T$31	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$31, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x100)
$C$DW$374	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$374, DW_AT_upper_bound(0xff)
	.dwendtag $C$DW$T$31

$C$DW$T$81	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$81, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$81, DW_AT_address_class(0x17)
$C$DW$375	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$375, DW_AT_type(*$C$DW$T$30)
$C$DW$T$93	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$93, DW_AT_type(*$C$DW$375)
$C$DW$T$94	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$94, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$T$94, DW_AT_address_class(0x17)
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

$C$DW$376	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$376, DW_AT_location[DW_OP_reg0]
$C$DW$377	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$377, DW_AT_location[DW_OP_reg1]
$C$DW$378	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$378, DW_AT_location[DW_OP_reg2]
$C$DW$379	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$379, DW_AT_location[DW_OP_reg3]
$C$DW$380	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$380, DW_AT_location[DW_OP_reg4]
$C$DW$381	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$381, DW_AT_location[DW_OP_reg5]
$C$DW$382	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$382, DW_AT_location[DW_OP_reg6]
$C$DW$383	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$383, DW_AT_location[DW_OP_reg7]
$C$DW$384	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$384, DW_AT_location[DW_OP_reg8]
$C$DW$385	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$385, DW_AT_location[DW_OP_reg9]
$C$DW$386	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$386, DW_AT_location[DW_OP_reg10]
$C$DW$387	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$387, DW_AT_location[DW_OP_reg11]
$C$DW$388	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$388, DW_AT_location[DW_OP_reg12]
$C$DW$389	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$389, DW_AT_location[DW_OP_reg13]
$C$DW$390	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$390, DW_AT_location[DW_OP_reg14]
$C$DW$391	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$391, DW_AT_location[DW_OP_reg15]
$C$DW$392	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$392, DW_AT_location[DW_OP_reg16]
$C$DW$393	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$393, DW_AT_location[DW_OP_reg17]
$C$DW$394	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$394, DW_AT_location[DW_OP_reg18]
$C$DW$395	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$395, DW_AT_location[DW_OP_reg19]
$C$DW$396	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$396, DW_AT_location[DW_OP_reg20]
$C$DW$397	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$397, DW_AT_location[DW_OP_reg21]
$C$DW$398	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$398, DW_AT_location[DW_OP_reg22]
$C$DW$399	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$399, DW_AT_location[DW_OP_reg23]
$C$DW$400	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$400, DW_AT_location[DW_OP_reg24]
$C$DW$401	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$401, DW_AT_location[DW_OP_reg25]
$C$DW$402	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$402, DW_AT_location[DW_OP_reg26]
$C$DW$403	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$403, DW_AT_location[DW_OP_reg27]
$C$DW$404	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$404, DW_AT_location[DW_OP_reg28]
$C$DW$405	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$405, DW_AT_location[DW_OP_reg29]
$C$DW$406	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$406, DW_AT_location[DW_OP_reg30]
$C$DW$407	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$407, DW_AT_location[DW_OP_reg31]
$C$DW$408	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$408, DW_AT_location[DW_OP_regx 0x20]
$C$DW$409	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$409, DW_AT_location[DW_OP_regx 0x21]
$C$DW$410	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$410, DW_AT_location[DW_OP_regx 0x22]
$C$DW$411	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$411, DW_AT_location[DW_OP_regx 0x23]
$C$DW$412	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$412, DW_AT_location[DW_OP_regx 0x24]
$C$DW$413	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$413, DW_AT_location[DW_OP_regx 0x25]
$C$DW$414	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$414, DW_AT_location[DW_OP_regx 0x26]
$C$DW$415	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$415, DW_AT_location[DW_OP_regx 0x27]
$C$DW$416	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$416, DW_AT_location[DW_OP_regx 0x28]
$C$DW$417	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$417, DW_AT_location[DW_OP_regx 0x29]
$C$DW$418	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$418, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$419	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$419, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$420	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$420, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$421	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$421, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$422	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$422, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$423	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$423, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$424	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$424, DW_AT_location[DW_OP_regx 0x30]
$C$DW$425	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$425, DW_AT_location[DW_OP_regx 0x31]
$C$DW$426	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$426, DW_AT_location[DW_OP_regx 0x32]
$C$DW$427	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$427, DW_AT_location[DW_OP_regx 0x33]
$C$DW$428	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$428, DW_AT_location[DW_OP_regx 0x34]
$C$DW$429	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$429, DW_AT_location[DW_OP_regx 0x35]
$C$DW$430	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$430, DW_AT_location[DW_OP_regx 0x36]
$C$DW$431	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$431, DW_AT_location[DW_OP_regx 0x37]
$C$DW$432	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$432, DW_AT_location[DW_OP_regx 0x38]
$C$DW$433	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$433, DW_AT_location[DW_OP_regx 0x39]
$C$DW$434	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$434, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$435	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$435, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$436	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$436, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$437	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$437, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$438	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$438, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$439	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$439, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$440	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$440, DW_AT_location[DW_OP_regx 0x40]
$C$DW$441	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$441, DW_AT_location[DW_OP_regx 0x41]
$C$DW$442	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$442, DW_AT_location[DW_OP_regx 0x42]
$C$DW$443	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$443, DW_AT_location[DW_OP_regx 0x43]
$C$DW$444	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$444, DW_AT_location[DW_OP_regx 0x44]
$C$DW$445	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$445, DW_AT_location[DW_OP_regx 0x45]
$C$DW$446	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$446, DW_AT_location[DW_OP_regx 0x46]
$C$DW$447	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$447, DW_AT_location[DW_OP_regx 0x47]
$C$DW$448	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$448, DW_AT_location[DW_OP_regx 0x48]
$C$DW$449	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$449, DW_AT_location[DW_OP_regx 0x49]
$C$DW$450	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$450, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$451	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$451, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$452	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$452, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$453	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$453, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$454	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$454, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$455	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$455, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$456	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$456, DW_AT_location[DW_OP_regx 0x50]
$C$DW$457	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$457, DW_AT_location[DW_OP_regx 0x51]
$C$DW$458	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$458, DW_AT_location[DW_OP_regx 0x52]
$C$DW$459	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$459, DW_AT_location[DW_OP_regx 0x53]
$C$DW$460	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$460, DW_AT_location[DW_OP_regx 0x54]
$C$DW$461	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$461, DW_AT_location[DW_OP_regx 0x55]
$C$DW$462	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$462, DW_AT_location[DW_OP_regx 0x56]
$C$DW$463	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$463, DW_AT_location[DW_OP_regx 0x57]
$C$DW$464	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$464, DW_AT_location[DW_OP_regx 0x58]
$C$DW$465	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$465, DW_AT_location[DW_OP_regx 0x59]
$C$DW$466	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$466, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$467	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$467, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

