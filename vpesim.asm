;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                        Unix v4.4.1 *
;* Date/Time created: Sun Sep 15 13:27:22 2024                                 *
;*******************************************************************************
	.compiler_opts --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=coff --silicon_core_1_0 --silicon_core_1_1 --silicon_core_2_0 --silicon_core_2_1 --silicon_core_2_2 --symdebug:dwarf 
	.mmregs
	.cpl_on
	.arms_on
	.c54cm_off
	.asg AR6, FP
	.asg XAR6, XFP
	.asg DPH, MDP
	.model call=c55_std
	.model mem=large
	.noremark 5549  ; code avoids SE CPU_28
	.noremark 5558  ; code avoids SE CPU_33
	.noremark 5570  ; code avoids SE CPU_40
	.noremark 5571  ; code avoids SE CPU_41
	.noremark 5573  ; code avoids SE CPU_43
	.noremark 5584  ; code avoids SE CPU_47
	.noremark 5599  ; code avoids SE CPU_55
	.noremark 5650  ; code avoids SE CPU_68
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
;*   Debug Info         : Standard TI Debug Information                        *
;*******************************************************************************

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen Unix v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/santiago/Research/DSPFuzz/on_board/test_programs")
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
	.field  	$C$IR_1,16
	.field  	_vpe_sim_fsk_data+0,24
	.field  	0,8
	.field	32382,16			; _vpe_sim_fsk_data[0] @ 0
$C$IR_1:	.set	1

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


$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("memcpy")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_memcpy")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$3)
$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$87)
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$88)
	.dwendtag $C$DW$1


$C$DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("malloc")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_malloc")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$88)
	.dwendtag $C$DW$5


$C$DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("memset")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_memset")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$3)
$C$DW$9	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$10)
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$88)
	.dwendtag $C$DW$7


$C$DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("sgnGetSizes")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_sgnGetSizes")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$11, DW_AT_declaration
	.dwattr $C$DW$11, DW_AT_external
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$27)
	.dwendtag $C$DW$11


$C$DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("sgnControl")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_sgnControl")
	.dwattr $C$DW$13, DW_AT_declaration
	.dwattr $C$DW$13, DW_AT_external
$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$3)
$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$74)
	.dwendtag $C$DW$13


$C$DW$16	.dwtag  DW_TAG_subprogram, DW_AT_name("sgnGenerateFrame")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_sgnGenerateFrame")
	.dwattr $C$DW$16, DW_AT_declaration
	.dwattr $C$DW$16, DW_AT_external
$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$3)
$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$21)
$C$DW$19	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$16


$C$DW$20	.dwtag  DW_TAG_subprogram, DW_AT_name("sgnInit")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_sgnInit")
	.dwattr $C$DW$20, DW_AT_declaration
	.dwattr $C$DW$20, DW_AT_external
$C$DW$21	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$3)
$C$DW$22	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$76)
	.dwendtag $C$DW$20


$C$DW$23	.dwtag  DW_TAG_subprogram, DW_AT_name("hlcGetSizes")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_hlcGetSizes")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$23, DW_AT_declaration
	.dwattr $C$DW$23, DW_AT_external
$C$DW$24	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$27)
	.dwendtag $C$DW$23


$C$DW$25	.dwtag  DW_TAG_subprogram, DW_AT_name("hlcInit")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_hlcInit")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$25, DW_AT_declaration
	.dwattr $C$DW$25, DW_AT_external
$C$DW$26	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$3)
$C$DW$27	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$78)
	.dwendtag $C$DW$25


$C$DW$28	.dwtag  DW_TAG_subprogram, DW_AT_name("hlcControl")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_hlcControl")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$28, DW_AT_declaration
	.dwattr $C$DW$28, DW_AT_external
$C$DW$29	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$3)
$C$DW$30	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$79)
	.dwendtag $C$DW$28


$C$DW$31	.dwtag  DW_TAG_subprogram, DW_AT_name("hlcProcess")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_hlcProcess")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$31, DW_AT_declaration
	.dwattr $C$DW$31, DW_AT_external
$C$DW$32	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$3)
$C$DW$33	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$31


$C$DW$34	.dwtag  DW_TAG_subprogram, DW_AT_name("slmGetSizes")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_slmGetSizes")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$34, DW_AT_declaration
	.dwattr $C$DW$34, DW_AT_external
$C$DW$35	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$27)
	.dwendtag $C$DW$34


$C$DW$36	.dwtag  DW_TAG_subprogram, DW_AT_name("slmInit")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_slmInit")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$36, DW_AT_declaration
	.dwattr $C$DW$36, DW_AT_external
$C$DW$37	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$3)
$C$DW$38	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$81)
	.dwendtag $C$DW$36


$C$DW$39	.dwtag  DW_TAG_subprogram, DW_AT_name("slmControl")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_slmControl")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$39, DW_AT_declaration
	.dwattr $C$DW$39, DW_AT_external
$C$DW$40	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$3)
$C$DW$41	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$39


$C$DW$42	.dwtag  DW_TAG_subprogram, DW_AT_name("slmProcess")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_slmProcess")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$42, DW_AT_declaration
	.dwattr $C$DW$42, DW_AT_external
$C$DW$43	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$3)
$C$DW$44	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$3)
$C$DW$45	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$42


$C$DW$46	.dwtag  DW_TAG_subprogram, DW_AT_name("snlGetSizes")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_snlGetSizes")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$46, DW_AT_declaration
	.dwattr $C$DW$46, DW_AT_external
$C$DW$47	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$27)
	.dwendtag $C$DW$46


$C$DW$48	.dwtag  DW_TAG_subprogram, DW_AT_name("snlInit")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_snlInit")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$48, DW_AT_declaration
	.dwattr $C$DW$48, DW_AT_external
$C$DW$49	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$3)
$C$DW$50	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$48


$C$DW$51	.dwtag  DW_TAG_subprogram, DW_AT_name("snlProcess")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_snlProcess")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$51, DW_AT_declaration
	.dwattr $C$DW$51, DW_AT_external
$C$DW$52	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$3)
$C$DW$53	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$30)
$C$DW$54	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$37)
	.dwendtag $C$DW$51


$C$DW$55	.dwtag  DW_TAG_subprogram, DW_AT_name("snlGetLevels")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_snlGetLevels")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$55, DW_AT_declaration
	.dwattr $C$DW$55, DW_AT_external
$C$DW$56	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$3)
$C$DW$57	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$127)
$C$DW$58	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$127)
$C$DW$59	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$145)
	.dwendtag $C$DW$55


$C$DW$60	.dwtag  DW_TAG_subprogram, DW_AT_name("svdGetSizes")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_svdGetSizes")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$60, DW_AT_declaration
	.dwattr $C$DW$60, DW_AT_external
$C$DW$61	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$27)
	.dwendtag $C$DW$60


$C$DW$62	.dwtag  DW_TAG_subprogram, DW_AT_name("svdInit")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_svdInit")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$62, DW_AT_declaration
	.dwattr $C$DW$62, DW_AT_external
$C$DW$63	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$3)
$C$DW$64	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$62


$C$DW$65	.dwtag  DW_TAG_subprogram, DW_AT_name("svdProcess")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_svdProcess")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$65, DW_AT_declaration
	.dwattr $C$DW$65, DW_AT_external
$C$DW$66	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$3)
$C$DW$67	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$30)
$C$DW$68	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$37)
	.dwendtag $C$DW$65


$C$DW$69	.dwtag  DW_TAG_subprogram, DW_AT_name("svdGetDecision")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_svdGetDecision")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$69, DW_AT_declaration
	.dwattr $C$DW$69, DW_AT_external
$C$DW$70	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$3)
$C$DW$71	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$149)
	.dwendtag $C$DW$69


$C$DW$72	.dwtag  DW_TAG_subprogram, DW_AT_name("svdGetLevels")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_svdGetLevels")
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$72, DW_AT_declaration
	.dwattr $C$DW$72, DW_AT_external
$C$DW$73	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$3)
$C$DW$74	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$127)
$C$DW$75	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$127)
$C$DW$76	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$145)
	.dwendtag $C$DW$72


$C$DW$77	.dwtag  DW_TAG_subprogram, DW_AT_name("sfcDecimationBy2")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_sfcDecimationBy2")
	.dwattr $C$DW$77, DW_AT_declaration
	.dwattr $C$DW$77, DW_AT_external
$C$DW$78	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$30)
$C$DW$79	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$30)
$C$DW$80	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$101)
$C$DW$81	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$21)
$C$DW$82	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$77


$C$DW$83	.dwtag  DW_TAG_subprogram, DW_AT_name("sfcInterpolationBy2")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_sfcInterpolationBy2")
	.dwattr $C$DW$83, DW_AT_declaration
	.dwattr $C$DW$83, DW_AT_external
$C$DW$84	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$30)
$C$DW$85	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$30)
$C$DW$86	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$101)
$C$DW$87	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$21)
$C$DW$88	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$83


$C$DW$89	.dwtag  DW_TAG_subprogram, DW_AT_name("pcmUlawEncoderP")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_pcmUlawEncoderP")
	.dwattr $C$DW$89, DW_AT_declaration
	.dwattr $C$DW$89, DW_AT_external
$C$DW$90	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$30)
$C$DW$91	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$104)
$C$DW$92	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$89


$C$DW$93	.dwtag  DW_TAG_subprogram, DW_AT_name("pcmAlawEncoderP")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_pcmAlawEncoderP")
	.dwattr $C$DW$93, DW_AT_declaration
	.dwattr $C$DW$93, DW_AT_external
$C$DW$94	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$30)
$C$DW$95	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$104)
$C$DW$96	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$93


$C$DW$97	.dwtag  DW_TAG_subprogram, DW_AT_name("pcmUlawDecoderP")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("_pcmUlawDecoderP")
	.dwattr $C$DW$97, DW_AT_declaration
	.dwattr $C$DW$97, DW_AT_external
$C$DW$98	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$104)
$C$DW$99	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$30)
$C$DW$100	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$97


$C$DW$101	.dwtag  DW_TAG_subprogram, DW_AT_name("pcmAlawDecoderP")
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_pcmAlawDecoderP")
	.dwattr $C$DW$101, DW_AT_declaration
	.dwattr $C$DW$101, DW_AT_external
$C$DW$102	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$104)
$C$DW$103	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$30)
$C$DW$104	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$101


$C$DW$105	.dwtag  DW_TAG_subprogram, DW_AT_name("asnrProcess")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_asnrProcess")
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$105, DW_AT_declaration
	.dwattr $C$DW$105, DW_AT_external
$C$DW$106	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$3)
$C$DW$107	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$3)
$C$DW$108	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$105


$C$DW$109	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_instantiate_nr")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_vpe_instantiate_nr")
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$109, DW_AT_declaration
	.dwattr $C$DW$109, DW_AT_external
$C$DW$110	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$109


$C$DW$111	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_config_nr")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_vpe_config_nr")
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$111, DW_AT_declaration
	.dwattr $C$DW$111, DW_AT_external
$C$DW$112	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$82)
	.dwendtag $C$DW$111


$C$DW$113	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_deinstantiate_nr")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_vpe_deinstantiate_nr")
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$113, DW_AT_declaration
	.dwattr $C$DW$113, DW_AT_external
	.global	_vpeIOBufs
	.bss	_vpeIOBufs,320,0,0
$C$DW$114	.dwtag  DW_TAG_variable, DW_AT_name("vpeIOBufs")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_vpeIOBufs")
	.dwattr $C$DW$114, DW_AT_location[DW_OP_addr _vpeIOBufs]
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$155)
	.dwattr $C$DW$114, DW_AT_external
	.global	_vpeSimC
	.bss	_vpeSimC,1092,0,2
$C$DW$115	.dwtag  DW_TAG_variable, DW_AT_name("vpeSimC")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_vpeSimC")
	.dwattr $C$DW$115, DW_AT_location[DW_OP_addr _vpeSimC]
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$115, DW_AT_external
	.global	_vpeSim
	.bss	_vpeSim,2,0,2
$C$DW$116	.dwtag  DW_TAG_variable, DW_AT_name("vpeSim")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("_vpeSim")
	.dwattr $C$DW$116, DW_AT_location[DW_OP_addr _vpeSim]
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$116, DW_AT_external
	.global	_sigInBuffer
	.bss	_sigInBuffer,640,0,0
$C$DW$117	.dwtag  DW_TAG_variable, DW_AT_name("sigInBuffer")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_sigInBuffer")
	.dwattr $C$DW$117, DW_AT_location[DW_OP_addr _sigInBuffer]
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$156)
	.dwattr $C$DW$117, DW_AT_external
	.global	_sigOutBuffer
	.bss	_sigOutBuffer,640,0,0
$C$DW$118	.dwtag  DW_TAG_variable, DW_AT_name("sigOutBuffer")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_sigOutBuffer")
	.dwattr $C$DW$118, DW_AT_location[DW_OP_addr _sigOutBuffer]
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$156)
	.dwattr $C$DW$118, DW_AT_external
	.global	_decimDelayLine
	.bss	_decimDelayLine,192,0,0
$C$DW$119	.dwtag  DW_TAG_variable, DW_AT_name("decimDelayLine")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_decimDelayLine")
	.dwattr $C$DW$119, DW_AT_location[DW_OP_addr _decimDelayLine]
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$157)
	.dwattr $C$DW$119, DW_AT_external
	.global	_interpDelayLine
	.bss	_interpDelayLine,176,0,0
$C$DW$120	.dwtag  DW_TAG_variable, DW_AT_name("interpDelayLine")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_interpDelayLine")
	.dwattr $C$DW$120, DW_AT_location[DW_OP_addr _interpDelayLine]
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$159)
	.dwattr $C$DW$120, DW_AT_external
	.global	_vpe_sim_global_str
	.bss	_vpe_sim_global_str,256,0,0
$C$DW$121	.dwtag  DW_TAG_variable, DW_AT_name("vpe_sim_global_str")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("_vpe_sim_global_str")
	.dwattr $C$DW$121, DW_AT_location[DW_OP_addr _vpe_sim_global_str]
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$121, DW_AT_external
	.global	_vpe_sim_print_str
	.bss	_vpe_sim_print_str,256,0,0
$C$DW$122	.dwtag  DW_TAG_variable, DW_AT_name("vpe_sim_print_str")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_vpe_sim_print_str")
	.dwattr $C$DW$122, DW_AT_location[DW_OP_addr _vpe_sim_print_str]
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$122, DW_AT_external
	.global	_vpe_sim_fsk_data
	.bss	_vpe_sim_fsk_data,1,0,0
$C$DW$123	.dwtag  DW_TAG_variable, DW_AT_name("vpe_sim_fsk_data")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_vpe_sim_fsk_data")
	.dwattr $C$DW$123, DW_AT_location[DW_OP_addr _vpe_sim_fsk_data]
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$154)
	.dwattr $C$DW$123, DW_AT_external
	.global	_slmInst_ptr
	.bss	_slmInst_ptr,2,0,2
$C$DW$124	.dwtag  DW_TAG_variable, DW_AT_name("slmInst_ptr")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_slmInst_ptr")
	.dwattr $C$DW$124, DW_AT_location[DW_OP_addr _slmInst_ptr]
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$124, DW_AT_external
	.global	_hlcInst_ptr
	.bss	_hlcInst_ptr,2,0,2
$C$DW$125	.dwtag  DW_TAG_variable, DW_AT_name("hlcInst_ptr")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_hlcInst_ptr")
	.dwattr $C$DW$125, DW_AT_location[DW_OP_addr _hlcInst_ptr]
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$125, DW_AT_external
	.global	_hctrlInst
	.bss	_hctrlInst,2,0,0
$C$DW$126	.dwtag  DW_TAG_variable, DW_AT_name("hctrlInst")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_hctrlInst")
	.dwattr $C$DW$126, DW_AT_location[DW_OP_addr _hctrlInst]
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$126, DW_AT_external
	.global	_hctrlInst_ptr
	.bss	_hctrlInst_ptr,2,0,2
$C$DW$127	.dwtag  DW_TAG_variable, DW_AT_name("hctrlInst_ptr")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_hctrlInst_ptr")
	.dwattr $C$DW$127, DW_AT_location[DW_OP_addr _hctrlInst_ptr]
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$127, DW_AT_external
	.global	_snlInst_ptr
	.bss	_snlInst_ptr,2,0,2
$C$DW$128	.dwtag  DW_TAG_variable, DW_AT_name("snlInst_ptr")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_snlInst_ptr")
	.dwattr $C$DW$128, DW_AT_location[DW_OP_addr _snlInst_ptr]
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$128, DW_AT_external
	.global	_spchLevdB
	.bss	_spchLevdB,1,0,0
$C$DW$129	.dwtag  DW_TAG_variable, DW_AT_name("spchLevdB")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_spchLevdB")
	.dwattr $C$DW$129, DW_AT_location[DW_OP_addr _spchLevdB]
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$129, DW_AT_external
	.global	_noiseLevdB
	.bss	_noiseLevdB,1,0,0
$C$DW$130	.dwtag  DW_TAG_variable, DW_AT_name("noiseLevdB")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("_noiseLevdB")
	.dwattr $C$DW$130, DW_AT_location[DW_OP_addr _noiseLevdB]
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$130, DW_AT_external
	.global	_Nthresh
	.bss	_Nthresh,1,0,0
$C$DW$131	.dwtag  DW_TAG_variable, DW_AT_name("Nthresh")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("_Nthresh")
	.dwattr $C$DW$131, DW_AT_location[DW_OP_addr _Nthresh]
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$131, DW_AT_external
	.global	_snlLevOut
	.bss	_snlLevOut,260,0,2
$C$DW$132	.dwtag  DW_TAG_variable, DW_AT_name("snlLevOut")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("_snlLevOut")
	.dwattr $C$DW$132, DW_AT_location[DW_OP_addr _snlLevOut]
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$132, DW_AT_external
	.global	_svdInst_ptr
	.bss	_svdInst_ptr,2,0,2
$C$DW$133	.dwtag  DW_TAG_variable, DW_AT_name("svdInst_ptr")
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("_svdInst_ptr")
	.dwattr $C$DW$133, DW_AT_location[DW_OP_addr _svdInst_ptr]
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$133, DW_AT_external
	.global	_svdOut
	.bss	_svdOut,260,0,2
$C$DW$134	.dwtag  DW_TAG_variable, DW_AT_name("svdOut")
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("_svdOut")
	.dwattr $C$DW$134, DW_AT_location[DW_OP_addr _svdOut]
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$134, DW_AT_external
	.global	_nrInst_ptr
	.bss	_nrInst_ptr,2,0,2
$C$DW$135	.dwtag  DW_TAG_variable, DW_AT_name("nrInst_ptr")
	.dwattr $C$DW$135, DW_AT_TI_symbol_name("_nrInst_ptr")
	.dwattr $C$DW$135, DW_AT_location[DW_OP_addr _nrInst_ptr]
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$135, DW_AT_external
	.global	_sgnInst_ptr
	.bss	_sgnInst_ptr,2,0,2
$C$DW$136	.dwtag  DW_TAG_variable, DW_AT_name("sgnInst_ptr")
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("_sgnInst_ptr")
	.dwattr $C$DW$136, DW_AT_location[DW_OP_addr _sgnInst_ptr]
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$136, DW_AT_external
	.global	_vpe_temp_io_buf
	.bss	_vpe_temp_io_buf,640,0,0
$C$DW$137	.dwtag  DW_TAG_variable, DW_AT_name("vpe_temp_io_buf")
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("_vpe_temp_io_buf")
	.dwattr $C$DW$137, DW_AT_location[DW_OP_addr _vpe_temp_io_buf]
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$165)
	.dwattr $C$DW$137, DW_AT_external
	.global	_inFrame
	.bss	_inFrame,2,0,2
$C$DW$138	.dwtag  DW_TAG_variable, DW_AT_name("inFrame")
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("_inFrame")
	.dwattr $C$DW$138, DW_AT_location[DW_OP_addr _inFrame]
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$138, DW_AT_external
	.global	_outFrame
	.bss	_outFrame,2,0,2
$C$DW$139	.dwtag  DW_TAG_variable, DW_AT_name("outFrame")
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_outFrame")
	.dwattr $C$DW$139, DW_AT_location[DW_OP_addr _outFrame]
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$139, DW_AT_external
	.global	_inCnt
	.bss	_inCnt,1,0,0
$C$DW$140	.dwtag  DW_TAG_variable, DW_AT_name("inCnt")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_inCnt")
	.dwattr $C$DW$140, DW_AT_location[DW_OP_addr _inCnt]
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$140, DW_AT_external
	.global	_outCnt
	.bss	_outCnt,1,0,0
$C$DW$141	.dwtag  DW_TAG_variable, DW_AT_name("outCnt")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("_outCnt")
	.dwattr $C$DW$141, DW_AT_location[DW_OP_addr _outCnt]
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$141, DW_AT_external
;	/home/santiago/Research/Ti/C55_Tools/acp55 -@/tmp/20139XvLQvi 
	.sect	".text"
	.global	_telecom_test

$C$DW$142	.dwtag  DW_TAG_subprogram, DW_AT_name("telecom_test")
	.dwattr $C$DW$142, DW_AT_low_pc(_telecom_test)
	.dwattr $C$DW$142, DW_AT_high_pc(0x00)
	.dwattr $C$DW$142, DW_AT_TI_symbol_name("_telecom_test")
	.dwattr $C$DW$142, DW_AT_external
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$142, DW_AT_TI_begin_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$142, DW_AT_TI_begin_line(0xa7)
	.dwattr $C$DW$142, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$142, DW_AT_TI_max_frame_size(0x16)
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 168,column 1,is_stmt,address _telecom_test

	.dwfde $C$DW$CIE, _telecom_test
$C$DW$143	.dwtag  DW_TAG_formal_parameter, DW_AT_name("input")
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$143, DW_AT_location[DW_OP_reg17]
$C$DW$144	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$144, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: telecom_test                                                 *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,*
;*                        XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 22 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (20 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_telecom_test:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-21, SP
	.dwcfi	cfa_offset, 22
$C$DW$145	.dwtag  DW_TAG_variable, DW_AT_name("input")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$145, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$146	.dwtag  DW_TAG_variable, DW_AT_name("size")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$146, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$147	.dwtag  DW_TAG_variable, DW_AT_name("buf_Inptr")
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("_buf_Inptr")
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$147, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$148	.dwtag  DW_TAG_variable, DW_AT_name("buf_Outptr")
	.dwattr $C$DW$148, DW_AT_TI_symbol_name("_buf_Outptr")
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$148, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$149	.dwtag  DW_TAG_variable, DW_AT_name("svd_sig_pow")
	.dwattr $C$DW$149, DW_AT_TI_symbol_name("_svd_sig_pow")
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$148)
	.dwattr $C$DW$149, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$150	.dwtag  DW_TAG_variable, DW_AT_name("sample_total")
	.dwattr $C$DW$150, DW_AT_TI_symbol_name("_sample_total")
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$150, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$151	.dwtag  DW_TAG_variable, DW_AT_name("sigIn_data")
	.dwattr $C$DW$151, DW_AT_TI_symbol_name("_sigIn_data")
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$151, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$152	.dwtag  DW_TAG_variable, DW_AT_name("second_count")
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("_second_count")
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$152, DW_AT_location[DW_OP_bregx 0x24 13]
$C$DW$153	.dwtag  DW_TAG_variable, DW_AT_name("sample_count")
	.dwattr $C$DW$153, DW_AT_TI_symbol_name("_sample_count")
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$153, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$154	.dwtag  DW_TAG_variable, DW_AT_name("num_tuint_in")
	.dwattr $C$DW$154, DW_AT_TI_symbol_name("_num_tuint_in")
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$154, DW_AT_location[DW_OP_bregx 0x24 15]
$C$DW$155	.dwtag  DW_TAG_variable, DW_AT_name("num_tuint_out")
	.dwattr $C$DW$155, DW_AT_TI_symbol_name("_num_tuint_out")
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$155, DW_AT_location[DW_OP_bregx 0x24 16]
$C$DW$156	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$156, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$156, DW_AT_location[DW_OP_bregx 0x24 17]
$C$DW$157	.dwtag  DW_TAG_variable, DW_AT_name("retVal")
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("_retVal")
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$157, DW_AT_location[DW_OP_bregx 0x24 18]
$C$DW$158	.dwtag  DW_TAG_variable, DW_AT_name("vad_flag")
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("_vad_flag")
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$158, DW_AT_location[DW_OP_bregx 0x24 19]
        MOV T0, *SP(#2) ; |168| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 169,column 14,is_stmt
        AMOV #_sigInBuffer, XAR3 ; |169| 
        MOV XAR3, dbl(*SP(#4))
        NOP       ;                     avoids Silicon Exception CPU_7
        NOP       ;                     avoids Silicon Exception CPU_7
        NOP       ;                     avoids Silicon Exception CPU_7
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 170,column 14,is_stmt
        AMOV #_sigOutBuffer, XAR3 ; |170| 
        MOV XAR3, dbl(*SP(#6))
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 180,column 3,is_stmt
$C$DW$159	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$159, DW_AT_low_pc(0x00)
	.dwattr $C$DW$159, DW_AT_name("_vpe_sim_init")
	.dwattr $C$DW$159, DW_AT_TI_call
        CALL #_vpe_sim_init ; |180| 
                                        ; call occurs [#_vpe_sim_init] ; |180| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 183,column 3,is_stmt
$C$DW$160	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$160, DW_AT_low_pc(0x00)
	.dwattr $C$DW$160, DW_AT_name("_vpe_sim_read_cfg")
	.dwattr $C$DW$160, DW_AT_TI_call
        CALL #_vpe_sim_read_cfg ; |183| 
                                        ; call occurs [#_vpe_sim_read_cfg] ; |183| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 191,column 3,is_stmt
$C$DW$161	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$161, DW_AT_low_pc(0x00)
	.dwattr $C$DW$161, DW_AT_name("_vpe_init")
	.dwattr $C$DW$161, DW_AT_TI_call
        CALL #_vpe_init ; |191| 
                                        ; call occurs [#_vpe_init] ; |191| 
        MOV T0, *SP(#18) ; |191| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 192,column 3,is_stmt
        MOV T0, AR1
        BCC $C$L41,AR1 > #0 ; |192| 
                                        ; branchcc occurs ; |192| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 193,column 5,is_stmt
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 199,column 5,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #1, *AR3(#832) ; |199| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 200,column 5,is_stmt
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 205,column 5,is_stmt
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 209,column 5,is_stmt
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 215,column 5,is_stmt
        MOV #0, *SP(#13) ; |215| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 216,column 5,is_stmt
        MOV #0, *SP(#14) ; |216| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 219,column 7,is_stmt
$C$DW$162	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$162, DW_AT_low_pc(0x00)
	.dwattr $C$DW$162, DW_AT_name("_vpe_sim_flush_cache")
	.dwattr $C$DW$162, DW_AT_TI_call
        CALL #_vpe_sim_flush_cache ; |219| 
                                        ; call occurs [#_vpe_sim_flush_cache] ; |219| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 222,column 7,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV *AR3(#16), AR1 ; |222| 
        BCC $C$L2,AR1 == #0 ; |222| 
                                        ; branchcc occurs ; |222| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 224,column 9,is_stmt
        MOV *AR3(#17), AR1 ; |224| 
        BCC $C$L1,AR1 == #0 ; |224| 
                                        ; branchcc occurs ; |224| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 225,column 11,is_stmt
        MOV #0, *AR3(#17) ; |225| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 226,column 11,is_stmt
        MOV dbl(*(#_vpeSim)), XAR1
        MOV dbl(*(#_vpeSim)), XAR3
        MOV dbl(*(#_sgnInst_ptr)), XAR0
        AADD #36, AR1 ; |226| 
        MOV *AR3(#21), T0 ; |226| 
$C$DW$163	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$163, DW_AT_low_pc(0x00)
	.dwattr $C$DW$163, DW_AT_name("_vpe_sim_set_sgn")
	.dwattr $C$DW$163, DW_AT_TI_call
        CALL #_vpe_sim_set_sgn ; |226| 
                                        ; call occurs [#_vpe_sim_set_sgn] ; |226| 
$C$L1:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 228,column 9,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV dbl(*SP(#4)), XAR1
        MOV dbl(*(#_sgnInst_ptr)), XAR0
        MOV *AR3(#834), T0 ; |228| 
$C$DW$164	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$164, DW_AT_low_pc(0x00)
	.dwattr $C$DW$164, DW_AT_name("_vpe_sim_gen_frame")
	.dwattr $C$DW$164, DW_AT_TI_call
        CALL #_vpe_sim_gen_frame ; |228| 
                                        ; call occurs [#_vpe_sim_gen_frame] ; |228| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 229,column 7,is_stmt
        B $C$L7   ; |229| 
                                        ; branch occurs ; |229| 
$C$L2:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 232,column 9,is_stmt
        MOV *AR3(#834), AR1 ; |232| 
        MOV AR1, *SP(#15) ; |232| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 233,column 9,is_stmt
        MOV *AR3(#9), AR1 ; |233| 
        BCC $C$L3,AR1 != #0 ; |233| 
                                        ; branchcc occurs ; |233| 
        MOV *AR3(#11), AR1 ; |233| 
        BCC $C$L4,AR1 == #0 ; |233| 
                                        ; branchcc occurs ; |233| 
$C$L3:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 234,column 11,is_stmt
        MOV *SP(#15), AR1 ; |234| 
        SFTL AR1, #-1 ; |234| 
        MOV AR1, *SP(#15) ; |234| 
$C$L4:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 236,column 9,is_stmt
        MOV *SP(#15), T0 ; |236| 
        MOV dbl(*SP(#0)), XAR1
        MOV *SP(#2), T1 ; |236| 
        AMOV #_vpeIOBufs, XAR0 ; |236| 
$C$DW$165	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$165, DW_AT_low_pc(0x00)
	.dwattr $C$DW$165, DW_AT_name("_vpe_sim_fread")
	.dwattr $C$DW$165, DW_AT_TI_call
        CALL #_vpe_sim_fread ; |236| 
                                        ; call occurs [#_vpe_sim_fread] ; |236| 
        MOV T0, *SP(#12) ; |236| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 237,column 9,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV T0, AR1
        MOV AR1, *AR3(#832) ; |237| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 240,column 9,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV *AR3(#9), AR1 ; |240| 
        BCC $C$L5,AR1 != #0 ; |240| 
                                        ; branchcc occurs ; |240| 
        MOV *AR3(#11), AR1 ; |240| 
        BCC $C$L7,AR1 == #0 ; |240| 
                                        ; branchcc occurs ; |240| 
$C$L5:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 241,column 16,is_stmt
        MOV #0, *SP(#17) ; |241| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 241,column 21,is_stmt
        MOV *SP(#15), AR1 ; |241| 
        MOV *SP(#17), AR2 ; |241| 

        CMPU AR2 >= AR1, TC1 ; |241| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L7,TC1 ; |241| 
                                        ; branchcc occurs ; |241| 
$C$L6:    
$C$DW$L$_telecom_test$12$B:
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 242,column 13,is_stmt
        MOV *SP(#17), T0 ; |242| 
        AMOV #_vpeIOBufs, XAR3 ; |242| 
        MOV high_byte(*AR3(T0)), AR1 ; |242| 
        AND #0x00ff, AR1, AR1 ; |242| 
        MOV *AR3(T0) << #8, AC0 ; |242| 
        OR AR1, AC0 ; |242| 
        MOV AC0, *AR3(T0) ; |242| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 241,column 37,is_stmt
        ADD #1, *SP(#17) ; |241| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 241,column 21,is_stmt
        MOV *SP(#17), AR2 ; |241| 
        MOV *SP(#15), AR1 ; |241| 

        CMPU AR2 < AR1, TC1 ; |241| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L6,TC1 ; |241| 
                                        ; branchcc occurs ; |241| 
$C$DW$L$_telecom_test$12$E:
$C$L7:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 247,column 7,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV *AR3(#9), AR1 ; |247| 
        BCC $C$L8,AR1 == #0 ; |247| 
                                        ; branchcc occurs ; |247| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 248,column 9,is_stmt
        MOV *AR3(#835), T0 ; |248| 
        MOV dbl(*SP(#4)), XAR1
        AMOV #_vpeIOBufs, XAR0 ; |248| 
$C$DW$166	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$166, DW_AT_low_pc(0x00)
	.dwattr $C$DW$166, DW_AT_name("_pcmUlawDecoderP")
	.dwattr $C$DW$166, DW_AT_TI_call
        CALL #_pcmUlawDecoderP ; |248| 
                                        ; call occurs [#_pcmUlawDecoderP] ; |248| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 249,column 7,is_stmt
        B $C$L11  ; |249| 
                                        ; branch occurs ; |249| 
$C$L8:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 250,column 12,is_stmt
        MOV *AR3(#11), AR1 ; |250| 
        BCC $C$L9,AR1 == #0 ; |250| 
                                        ; branchcc occurs ; |250| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 251,column 9,is_stmt
        MOV *AR3(#835), T0 ; |251| 
        MOV dbl(*SP(#4)), XAR1
        AMOV #_vpeIOBufs, XAR0 ; |251| 
$C$DW$167	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$167, DW_AT_low_pc(0x00)
	.dwattr $C$DW$167, DW_AT_name("_pcmAlawDecoderP")
	.dwattr $C$DW$167, DW_AT_TI_call
        CALL #_pcmAlawDecoderP ; |251| 
                                        ; call occurs [#_pcmAlawDecoderP] ; |251| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 252,column 7,is_stmt
        B $C$L11  ; |252| 
                                        ; branch occurs ; |252| 
$C$L9:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 254,column 14,is_stmt
        MOV #0, *SP(#17) ; |254| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 254,column 18,is_stmt
        MOV *AR3(#834), AR1 ; |254| 
        MOV *SP(#17), AR2 ; |254| 

        CMPU AR2 >= AR1, TC1 ; |254| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L11,TC1 ; |254| 
                                        ; branchcc occurs ; |254| 
$C$L10:    
$C$DW$L$_telecom_test$18$B:
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 255,column 11,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV *SP(#17), T0 ; |255| 
        MOV T0, AR1
        AMOV #_vpeIOBufs, XAR2 ; |255| 
        AADD AR1, AR3 ; |255| 
        MOV *AR2(T0), *AR3 ; |255| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 254,column 42,is_stmt
        ADD #1, *SP(#17) ; |254| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 254,column 18,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV *SP(#17), AR2 ; |254| 
        MOV *AR3(#834), AR1 ; |254| 

        CMPU AR2 < AR1, TC1 ; |254| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L10,TC1 ; |254| 
                                        ; branchcc occurs ; |254| 
$C$DW$L$_telecom_test$18$E:
$C$L11:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 260,column 7,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV *AR3(short(#5)), AR1 ; |260| 
        BCC $C$L12,AR1 == #0 ; |260| 
                                        ; branchcc occurs ; |260| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 261,column 9,is_stmt
        MOV dbl(*SP(#4)), XAR1
        MOV dbl(*SP(#4)), XAR2
        MOV dbl(*(#_nrInst_ptr)), XAR0
$C$DW$168	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$168, DW_AT_low_pc(0x00)
	.dwattr $C$DW$168, DW_AT_name("_asnrProcess")
	.dwattr $C$DW$168, DW_AT_TI_call
        CALL #_asnrProcess ; |261| 
                                        ; call occurs [#_asnrProcess] ; |261| 
        MOV T0, *SP(#18) ; |261| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 262,column 9,is_stmt
        MOV T0, AR1
        BCC $C$L41,AR1 != #0 ; |262| 
                                        ; branchcc occurs ; |262| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 265,column 11,is_stmt
$C$L12:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 270,column 7,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV *AR3(short(#1)), AR1 ; |270| 
        BCC $C$L14,AR1 == #0 ; |270| 
                                        ; branchcc occurs ; |270| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 271,column 9,is_stmt
        MOV *AR3(#18), AR1 ; |271| 
        BCC $C$L13,AR1 == #0 ; |271| 
                                        ; branchcc occurs ; |271| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 272,column 11,is_stmt
        MOV #0, *AR3(#18) ; |272| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 273,column 11,is_stmt
        MOV dbl(*(#_vpeSim)), XAR1
        MOV dbl(*(#_hlcInst_ptr)), XAR0
        AADD #22, AR1 ; |273| 
$C$DW$169	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$169, DW_AT_low_pc(0x00)
	.dwattr $C$DW$169, DW_AT_name("_hlcControl")
	.dwattr $C$DW$169, DW_AT_TI_call
        CALL #_hlcControl ; |273| 
                                        ; call occurs [#_hlcControl] ; |273| 
        MOV T0, *SP(#18) ; |273| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 274,column 11,is_stmt
        MOV T0, AR1
        BCC $C$L13,AR1 == #0 ; |274| 
                                        ; branchcc occurs ; |274| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 275,column 13,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #6, *AR3(#833) ; |275| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 276,column 13,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #0, *AR3 ; |276| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 278,column 13,is_stmt
        MOV #6, T0
        B $C$L41  ; |278| 
                                        ; branch occurs ; |278| 
$C$L13:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 281,column 9,is_stmt
        MOV dbl(*SP(#4)), XAR1
        MOV dbl(*(#_hlcInst_ptr)), XAR0
$C$DW$170	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$170, DW_AT_low_pc(0x00)
	.dwattr $C$DW$170, DW_AT_name("_hlcProcess")
	.dwattr $C$DW$170, DW_AT_TI_call
        CALL #_hlcProcess ; |281| 
                                        ; call occurs [#_hlcProcess] ; |281| 
        MOV T0, *SP(#18) ; |281| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 282,column 9,is_stmt
        MOV T0, AR1
        BCC $C$L14,AR1 == #0 ; |282| 
                                        ; branchcc occurs ; |282| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 283,column 11,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #1, *AR3(#833) ; |283| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 284,column 11,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #0, *AR3 ; |284| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 285,column 11,is_stmt
        MOV #1, T0
        B $C$L41  ; |285| 
                                        ; branch occurs ; |285| 
$C$L14:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 291,column 7,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV *AR3(short(#6)), AR1 ; |291| 
        BCC $C$L18,AR1 == #0 ; |291| 
                                        ; branchcc occurs ; |291| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 293,column 14,is_stmt
        MOV #0, *SP(#17) ; |293| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 293,column 18,is_stmt
        MOV *AR3(#834), AR1 ; |293| 
        MOV *SP(#17), AR2 ; |293| 

        CMPU AR2 >= AR1, TC1 ; |293| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L16,TC1 ; |293| 
                                        ; branchcc occurs ; |293| 
$C$L15:    
$C$DW$L$_telecom_test$30$B:
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 294,column 11,is_stmt
        MOV *SP(#17), T0 ; |294| 
        MOV T0, AR1 ; |294| 
        ADD #32, AR1, AR1 ; |294| 
        MOV dbl(*SP(#4)), XAR2
        AMOV #_decimDelayLine, XAR3 ; |294| 
        AADD AR1, AR3 ; |294| 
        MOV *AR2(T0), *AR3 ; |294| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 293,column 42,is_stmt
        ADD #1, *SP(#17) ; |293| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 293,column 18,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV *SP(#17), AR2 ; |293| 
        MOV *AR3(#834), AR1 ; |293| 

        CMPU AR2 < AR1, TC1 ; |293| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L15,TC1 ; |293| 
                                        ; branchcc occurs ; |293| 
$C$DW$L$_telecom_test$30$E:
$C$L16:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 298,column 9,is_stmt
        MOV *AR3(#834), T1 ; |298| 
        MOV dbl(*SP(#4)), XAR1
        AMOV #0, XAR2 ; |298| 
        AMOV #_decimDelayLine, XAR0 ; |298| 
        MOV #33, T0 ; |298| 
$C$DW$171	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$171, DW_AT_low_pc(0x00)
	.dwattr $C$DW$171, DW_AT_name("_sfcDecimationBy2")
	.dwattr $C$DW$171, DW_AT_TI_call
        CALL #_sfcDecimationBy2 ; |298| 
                                        ; call occurs [#_sfcDecimationBy2] ; |298| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 302,column 14,is_stmt
        MOV #0, *SP(#17) ; |302| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 302,column 18,is_stmt
        MOV #32, AR2 ; |302| 
        MOV *SP(#17), AR1 ; |302| 

        CMP AR1 >= AR2, TC1 ; |302| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L18,TC1 ; |302| 
                                        ; branchcc occurs ; |302| 
$C$L17:    
$C$DW$L$_telecom_test$32$B:
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 303,column 11,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV *SP(#17), AR1 ; |303| 
        ADD *AR3(#834), AR1, T0 ; |303| 
        MOV *SP(#17), AR1 ; |303| 
        AMOV #_decimDelayLine, XAR2 ; |303| 
        AMOV #_decimDelayLine, XAR3 ; |303| 
        AADD AR1, AR3 ; |303| 
        MOV *AR2(T0), *AR3 ; |303| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 302,column 43,is_stmt
        ADD #1, *SP(#17) ; |302| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 302,column 18,is_stmt
        MOV #32, AR2 ; |302| 
        MOV *SP(#17), AR1 ; |302| 

        CMP AR1 < AR2, TC1 ; |302| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L17,TC1 ; |302| 
                                        ; branchcc occurs ; |302| 
$C$DW$L$_telecom_test$32$E:
$C$L18:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 307,column 7,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV *AR3(short(#7)), AR1 ; |307| 
        BCC $C$L22,AR1 == #0 ; |307| 
                                        ; branchcc occurs ; |307| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 309,column 14,is_stmt
        MOV #0, *SP(#17) ; |309| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 309,column 18,is_stmt
        MOV *AR3(#834), AR1 ; |309| 
        MOV *SP(#17), AR2 ; |309| 

        CMPU AR2 >= AR1, TC1 ; |309| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L20,TC1 ; |309| 
                                        ; branchcc occurs ; |309| 
$C$L19:    
$C$DW$L$_telecom_test$35$B:
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 310,column 11,is_stmt
        MOV *SP(#17), T0 ; |310| 
        MOV T0, AR1 ; |310| 
        ADD #16, AR1, AR1 ; |310| 
        MOV dbl(*SP(#4)), XAR2
        AMOV #_interpDelayLine, XAR3 ; |310| 
        AADD AR1, AR3 ; |310| 
        MOV *AR2(T0), *AR3 ; |310| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 309,column 42,is_stmt
        ADD #1, *SP(#17) ; |309| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 309,column 18,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV *SP(#17), AR2 ; |309| 
        MOV *AR3(#834), AR1 ; |309| 

        CMPU AR2 < AR1, TC1 ; |309| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L19,TC1 ; |309| 
                                        ; branchcc occurs ; |309| 
$C$DW$L$_telecom_test$35$E:
$C$L20:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 314,column 9,is_stmt
        MOV *AR3(#834), T1 ; |314| 
        MOV dbl(*SP(#4)), XAR1
        AMOV #0, XAR2 ; |314| 
        AMOV #_interpDelayLine, XAR0 ; |314| 
        MOV #33, T0 ; |314| 
$C$DW$172	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$172, DW_AT_low_pc(0x00)
	.dwattr $C$DW$172, DW_AT_name("_sfcInterpolationBy2")
	.dwattr $C$DW$172, DW_AT_TI_call
        CALL #_sfcInterpolationBy2 ; |314| 
                                        ; call occurs [#_sfcInterpolationBy2] ; |314| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 318,column 14,is_stmt
        MOV #0, *SP(#17) ; |318| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 318,column 18,is_stmt
        MOV #16, AR2 ; |318| 
        MOV *SP(#17), AR1 ; |318| 

        CMP AR1 >= AR2, TC1 ; |318| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L22,TC1 ; |318| 
                                        ; branchcc occurs ; |318| 
$C$L21:    
$C$DW$L$_telecom_test$37$B:
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 319,column 11,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV *SP(#17), AR1 ; |319| 
        ADD *AR3(#834), AR1, T0 ; |319| 
        MOV *SP(#17), AR1 ; |319| 
        AMOV #_interpDelayLine, XAR2 ; |319| 
        AMOV #_interpDelayLine, XAR3 ; |319| 
        AADD AR1, AR3 ; |319| 
        MOV *AR2(T0), *AR3 ; |319| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 318,column 44,is_stmt
        ADD #1, *SP(#17) ; |318| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 318,column 18,is_stmt
        MOV #16, AR2 ; |318| 
        MOV *SP(#17), AR1 ; |318| 

        CMP AR1 < AR2, TC1 ; |318| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L21,TC1 ; |318| 
                                        ; branchcc occurs ; |318| 
$C$DW$L$_telecom_test$37$E:
$C$L22:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 324,column 7,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV *AR3(short(#3)), AR1 ; |324| 
        BCC $C$L23,AR1 == #0 ; |324| 
                                        ; branchcc occurs ; |324| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 326,column 9,is_stmt
        MOV *AR3(#835), T0 ; |326| 
        MOV dbl(*SP(#4)), XAR1
        MOV dbl(*(#_snlInst_ptr)), XAR0
$C$DW$173	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$173, DW_AT_low_pc(0x00)
	.dwattr $C$DW$173, DW_AT_name("_snlProcess")
	.dwattr $C$DW$173, DW_AT_TI_call
        CALL #_snlProcess ; |326| 
                                        ; call occurs [#_snlProcess] ; |326| 
        MOV T0, *SP(#18) ; |326| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 327,column 9,is_stmt
        AMOV #_noiseLevdB, XAR2 ; |327| 
        AMOV #_Nthresh, XAR3 ; |327| 
        AMOV #_spchLevdB, XAR1 ; |327| 
        MOV dbl(*(#_snlInst_ptr)), XAR0
$C$DW$174	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$174, DW_AT_low_pc(0x00)
	.dwattr $C$DW$174, DW_AT_name("_snlGetLevels")
	.dwattr $C$DW$174, DW_AT_TI_call
        CALL #_snlGetLevels ; |327| 
                                        ; call occurs [#_snlGetLevels] ; |327| 
        MOV T0, *SP(#18) ; |327| 
$C$L23:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 336,column 7,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV *AR3(short(#4)), AR1 ; |336| 
        BCC $C$L24,AR1 == #0 ; |336| 
                                        ; branchcc occurs ; |336| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 338,column 9,is_stmt
        MOV *AR3(#835), T0 ; |338| 
        MOV dbl(*SP(#4)), XAR1
        MOV dbl(*(#_svdInst_ptr)), XAR0
$C$DW$175	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$175, DW_AT_low_pc(0x00)
	.dwattr $C$DW$175, DW_AT_name("_svdProcess")
	.dwattr $C$DW$175, DW_AT_TI_call
        CALL #_svdProcess ; |338| 
                                        ; call occurs [#_svdProcess] ; |338| 
        MOV T0, *SP(#18) ; |338| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 339,column 9,is_stmt
        MOV XSP, XAR1
        MOV dbl(*(#_svdInst_ptr)), XAR0
        AMAR *+AR1(#8)
$C$DW$176	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$176, DW_AT_low_pc(0x00)
	.dwattr $C$DW$176, DW_AT_name("_svdGetDecision")
	.dwattr $C$DW$176, DW_AT_TI_call
        CALL #_svdGetDecision ; |339| 
                                        ; call occurs [#_svdGetDecision] ; |339| 
        MOV T0, *SP(#19) ; |339| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 340,column 9,is_stmt
        AMOV #_spchLevdB, XAR1 ; |340| 
        MOV dbl(*(#_svdInst_ptr)), XAR0
        AMOV #_noiseLevdB, XAR2 ; |340| 
        AMOV #_Nthresh, XAR3 ; |340| 
$C$DW$177	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$177, DW_AT_low_pc(0x00)
	.dwattr $C$DW$177, DW_AT_name("_svdGetLevels")
	.dwattr $C$DW$177, DW_AT_TI_call
        CALL #_svdGetLevels ; |340| 
                                        ; call occurs [#_svdGetLevels] ; |340| 
        MOV T0, *SP(#18) ; |340| 
$C$L24:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 351,column 12,is_stmt
        MOV #0, *SP(#17) ; |351| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 351,column 16,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV *SP(#17), AR2 ; |351| 
        MOV *AR3(#835), AR1 ; |351| 

        CMPU AR2 >= AR1, TC1 ; |351| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L26,TC1 ; |351| 
                                        ; branchcc occurs ; |351| 
$C$L25:    
$C$DW$L$_telecom_test$43$B:
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 352,column 9,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV *SP(#17), T0 ; |352| 
        MOV T0, AR1
        MOV dbl(*SP(#4)), XAR2
        AADD AR1, AR3 ; |352| 
        MOV *AR2(T0), *AR3 ; |352| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 351,column 41,is_stmt
        ADD #1, *SP(#17) ; |351| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 351,column 16,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV *SP(#17), AR2 ; |351| 
        MOV *AR3(#835), AR1 ; |351| 

        CMPU AR2 < AR1, TC1 ; |351| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L25,TC1 ; |351| 
                                        ; branchcc occurs ; |351| 
$C$DW$L$_telecom_test$43$E:
$C$L26:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 356,column 7,is_stmt
        MOV *AR3(short(#2)), AR1 ; |356| 
        BCC $C$L28,AR1 == #0 ; |356| 
                                        ; branchcc occurs ; |356| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 357,column 9,is_stmt
        MOV *AR3(#19), AR1 ; |357| 
        BCC $C$L27,AR1 == #0 ; |357| 
                                        ; branchcc occurs ; |357| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 358,column 11,is_stmt
        MOV #0, *AR3(#19) ; |358| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 359,column 11,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV dbl(*(#_slmInst_ptr)), XAR0
        MOV *AR3(#20), T0 ; |359| 
$C$DW$178	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$178, DW_AT_low_pc(0x00)
	.dwattr $C$DW$178, DW_AT_name("_slmControl")
	.dwattr $C$DW$178, DW_AT_TI_call
        CALL #_slmControl ; |359| 
                                        ; call occurs [#_slmControl] ; |359| 
        MOV T0, *SP(#18) ; |359| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 360,column 11,is_stmt
        MOV T0, AR1
        BCC $C$L27,AR1 == #0 ; |360| 
                                        ; branchcc occurs ; |360| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 361,column 13,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #9, *AR3(#833) ; |361| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 362,column 13,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #0, *AR3 ; |362| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 363,column 13,is_stmt
        MOV #9, T0
        B $C$L41  ; |363| 
                                        ; branch occurs ; |363| 
$C$L27:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 367,column 9,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV dbl(*SP(#6)), XAR1
        MOV dbl(*(#_slmInst_ptr)), XAR0
        MOV *AR3(#835), T0 ; |367| 
$C$DW$179	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$179, DW_AT_low_pc(0x00)
	.dwattr $C$DW$179, DW_AT_name("_slmProcess")
	.dwattr $C$DW$179, DW_AT_TI_call
        CALL #_slmProcess ; |367| 
                                        ; call occurs [#_slmProcess] ; |367| 
        MOV T0, *SP(#18) ; |367| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 368,column 9,is_stmt
        MOV T0, AR1
        BCC $C$L28,AR1 == #0 ; |368| 
                                        ; branchcc occurs ; |368| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 369,column 11,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #2, *AR3(#833) ; |369| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 370,column 11,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #0, *AR3 ; |370| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 371,column 11,is_stmt
        MOV #2, T0
        B $C$L41  ; |371| 
                                        ; branch occurs ; |371| 
$C$L28:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 376,column 7,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV *AR3(#8), AR1 ; |376| 
        BCC $C$L29,AR1 == #0 ; |376| 
                                        ; branchcc occurs ; |376| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 377,column 9,is_stmt
        MOV *AR3(#835), T0 ; |377| 
        MOV dbl(*SP(#6)), XAR0
        AMOV #_vpeIOBufs, XAR1 ; |377| 
$C$DW$180	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$180, DW_AT_low_pc(0x00)
	.dwattr $C$DW$180, DW_AT_name("_pcmUlawEncoderP")
	.dwattr $C$DW$180, DW_AT_TI_call
        CALL #_pcmUlawEncoderP ; |377| 
                                        ; call occurs [#_pcmUlawEncoderP] ; |377| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 378,column 7,is_stmt
        B $C$L30  ; |378| 
                                        ; branch occurs ; |378| 
$C$L29:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 379,column 12,is_stmt
        MOV *AR3(#10), AR1 ; |379| 
        BCC $C$L30,AR1 == #0 ; |379| 
                                        ; branchcc occurs ; |379| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 380,column 9,is_stmt
        MOV *AR3(#835), T0 ; |380| 
        MOV dbl(*SP(#6)), XAR0
        AMOV #_vpeIOBufs, XAR1 ; |380| 
$C$DW$181	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$181, DW_AT_low_pc(0x00)
	.dwattr $C$DW$181, DW_AT_name("_pcmAlawEncoderP")
	.dwattr $C$DW$181, DW_AT_TI_call
        CALL #_pcmAlawEncoderP ; |380| 
                                        ; call occurs [#_pcmAlawEncoderP] ; |380| 
$C$L30:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 384,column 12,is_stmt
        MOV #0, *SP(#17) ; |384| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 384,column 16,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV *SP(#17), AR2 ; |384| 
        MOV *AR3(#835), AR1 ; |384| 

        CMPU AR2 >= AR1, TC1 ; |384| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L32,TC1 ; |384| 
                                        ; branchcc occurs ; |384| 
$C$L31:    
$C$DW$L$_telecom_test$55$B:
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 385,column 9,is_stmt
        MOV *SP(#17), T0 ; |385| 
        MOV T0, AR1 ; |385| 
        MOV dbl(*SP(#6)), XAR2
        AMOV #_vpeIOBufs, XAR3 ; |385| 
        AADD AR1, AR3 ; |385| 
        MOV *AR2(T0), *AR3 ; |385| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 384,column 41,is_stmt
        ADD #1, *SP(#17) ; |384| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 384,column 16,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV *SP(#17), AR2 ; |384| 
        MOV *AR3(#835), AR1 ; |384| 

        CMPU AR2 < AR1, TC1 ; |384| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L31,TC1 ; |384| 
                                        ; branchcc occurs ; |384| 
$C$DW$L$_telecom_test$55$E:
$C$L32:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 389,column 7,is_stmt
        MOV *AR3(#16), AR1 ; |389| 
        BCC $C$L37,AR1 != #0 ; |389| 
                                        ; branchcc occurs ; |389| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 390,column 9,is_stmt
        MOV *AR3(#835), AR1 ; |390| 
        MOV AR1, *SP(#16) ; |390| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 391,column 9,is_stmt
        MOV *AR3(#8), AR1 ; |391| 
        BCC $C$L33,AR1 != #0 ; |391| 
                                        ; branchcc occurs ; |391| 
        MOV *AR3(#10), AR1 ; |391| 
        BCC $C$L35,AR1 == #0 ; |391| 
                                        ; branchcc occurs ; |391| 
$C$L33:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 392,column 11,is_stmt
        MOV *SP(#16), AR1 ; |392| 
        SFTL AR1, #-1 ; |392| 
        MOV AR1, *SP(#16) ; |392| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 395,column 18,is_stmt
        MOV #0, *SP(#17) ; |395| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 395,column 23,is_stmt
        MOV *SP(#17), AR2 ; |395| 
        MOV *SP(#16), AR1 ; |395| 

        CMPU AR2 >= AR1, TC1 ; |395| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L35,TC1 ; |395| 
                                        ; branchcc occurs ; |395| 
$C$L34:    
$C$DW$L$_telecom_test$60$B:
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 396,column 13,is_stmt
        MOV *SP(#17), T0 ; |396| 
        AMOV #_vpeIOBufs, XAR3 ; |396| 
        MOV high_byte(*AR3(T0)), AR1 ; |396| 
        MOV *AR3(T0) << #8, AC0 ; |396| 
        MOV dbl(*SP(#6)), XAR3
        AND #0x00ff, AR1, AR1 ; |396| 
        OR AR1, AC0 ; |396| 
        MOV AC0, *AR3(T0) ; |396| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 395,column 40,is_stmt
        ADD #1, *SP(#17) ; |395| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 395,column 23,is_stmt
        MOV *SP(#17), AR2 ; |395| 
        MOV *SP(#16), AR1 ; |395| 

        CMPU AR2 < AR1, TC1 ; |395| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L34,TC1 ; |395| 
                                        ; branchcc occurs ; |395| 
$C$DW$L$_telecom_test$60$E:
$C$L35:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 400,column 14,is_stmt
        MOV #0, *SP(#17) ; |400| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 400,column 18,is_stmt
        MOV *SP(#16), AR1 ; |400| 
        MOV *SP(#17), AR2 ; |400| 

        CMPU AR2 >= AR1, TC1 ; |400| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L37,TC1 ; |400| 
                                        ; branchcc occurs ; |400| 
$C$L36:    
$C$DW$L$_telecom_test$62$B:
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 401,column 11,is_stmt
        MOV *SP(#17), T0 ; |401| 
        MOV T0, AR1 ; |401| 
        MOV dbl(*SP(#6)), XAR2
        AMOV #_vpeIOBufs, XAR3 ; |401| 
        AADD AR1, AR3 ; |401| 
        MOV *AR2(T0), *AR3 ; |401| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 400,column 34,is_stmt
        ADD #1, *SP(#17) ; |400| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 400,column 18,is_stmt
        MOV *SP(#16), AR1 ; |400| 
        MOV *SP(#17), AR2 ; |400| 

        CMPU AR2 < AR1, TC1 ; |400| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L36,TC1 ; |400| 
                                        ; branchcc occurs ; |400| 
$C$DW$L$_telecom_test$62$E:
$C$L37:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 408,column 7,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV *AR3(#834), AR1 ; |408| 
        ADD *SP(#14), AR1, AR1 ; |408| 
        MOV AR1, *SP(#14) ; |408| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 409,column 7,is_stmt
        MOV *SP(#14), AR2 ; |409| 
        MOV *AR3(#21), AR1 ; |409| 

        CMPU AR2 < AR1, TC1 ; |409| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L38,TC1 ; |409| 
                                        ; branchcc occurs ; |409| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 410,column 9,is_stmt
        MOV AR2, AC0
        SUB uns(*AR3(#21)), AC0, AC0 ; |410| 
        MOV AC0, *SP(#14) ; |410| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 411,column 9,is_stmt
        ADD #1, *SP(#13) ; |411| 
$C$L38:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 416,column 7,is_stmt
        MOV *SP(#13) << #16, AC0

        MOV uns(*SP(#14)), AC0 ; |416| 
||      SFTL AC0, #0, AC1 ; |416| 

        MACM *AR3(#21), AC1, AC0 ; |416| 
        MOV AC0, dbl(*SP(#10)) ; |416| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 417,column 7,is_stmt
        MOV dbl(*AR3(#14)), AC0 ; |417| 
        BCC $C$L39,AC0 == #0 ; |417| 
                                        ; branchcc occurs ; |417| 
        MOV dbl(*AR3(#14)), AC0 ; |417| 
        MOV dbl(*SP(#10)), AC1 ; |417| 
        CMPU AC1 < AC0, TC1 ; |417| 
        BCC $C$L39,TC1 ; |417| 
                                        ; branchcc occurs ; |417| 
        MOV dbl(*AR3(#14)), AC1 ; |417| 
        MOV uns(*AR3(#834)), AC0 ; |417| 
        SUB AC1, dbl(*SP(#10)), AC1 ; |417| 
        CMPU AC1 >= AC0, TC1 ; |417| 
        BCC $C$L39,TC1 ; |417| 
                                        ; branchcc occurs ; |417| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 421,column 9,is_stmt
        MOV #0, *AR3 ; |421| 
$C$L39:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 425,column 7,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV dbl(*SP(#10)), AC0 ; |425| 
        MOV AC0, dbl(*AR3(#12)) ; |425| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 428,column 5,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #0, *AR3 ; |428| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 451,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV *AR3(short(#5)), AR1 ; |451| 
        BCC $C$L40,AR1 == #0 ; |451| 
                                        ; branchcc occurs ; |451| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 452,column 5,is_stmt
$C$DW$182	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$182, DW_AT_low_pc(0x00)
	.dwattr $C$DW$182, DW_AT_name("_vpe_deinstantiate_nr")
	.dwattr $C$DW$182, DW_AT_TI_call
        CALL #_vpe_deinstantiate_nr ; |452| 
                                        ; call occurs [#_vpe_deinstantiate_nr] ; |452| 
        MOV T0, *SP(#18) ; |452| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 453,column 5,is_stmt
        MOV T0, AR1
        BCC $C$L40,AR1 == #0 ; |453| 
                                        ; branchcc occurs ; |453| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 454,column 7,is_stmt
        MOV #1, T0
        B $C$L41  ; |454| 
                                        ; branch occurs ; |454| 
$C$L40:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 460,column 3,is_stmt
        MOV #0, T0
$C$L41:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 462,column 1,is_stmt
        AADD #21, SP
	.dwcfi	cfa_offset, 1
$C$DW$183	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$183, DW_AT_low_pc(0x00)
	.dwattr $C$DW$183, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$184	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$184, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vpesim.asm:$C$L36:1:1726421242")
	.dwattr $C$DW$184, DW_AT_TI_begin_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$184, DW_AT_TI_begin_line(0x190)
	.dwattr $C$DW$184, DW_AT_TI_end_line(0x192)
$C$DW$185	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$185, DW_AT_low_pc($C$DW$L$_telecom_test$62$B)
	.dwattr $C$DW$185, DW_AT_high_pc($C$DW$L$_telecom_test$62$E)
	.dwendtag $C$DW$184


$C$DW$186	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$186, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vpesim.asm:$C$L34:1:1726421242")
	.dwattr $C$DW$186, DW_AT_TI_begin_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$186, DW_AT_TI_begin_line(0x18b)
	.dwattr $C$DW$186, DW_AT_TI_end_line(0x18d)
$C$DW$187	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$187, DW_AT_low_pc($C$DW$L$_telecom_test$60$B)
	.dwattr $C$DW$187, DW_AT_high_pc($C$DW$L$_telecom_test$60$E)
	.dwendtag $C$DW$186


$C$DW$188	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$188, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vpesim.asm:$C$L31:1:1726421242")
	.dwattr $C$DW$188, DW_AT_TI_begin_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$188, DW_AT_TI_begin_line(0x180)
	.dwattr $C$DW$188, DW_AT_TI_end_line(0x182)
$C$DW$189	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$189, DW_AT_low_pc($C$DW$L$_telecom_test$55$B)
	.dwattr $C$DW$189, DW_AT_high_pc($C$DW$L$_telecom_test$55$E)
	.dwendtag $C$DW$188


$C$DW$190	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$190, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vpesim.asm:$C$L25:1:1726421242")
	.dwattr $C$DW$190, DW_AT_TI_begin_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$190, DW_AT_TI_begin_line(0x15f)
	.dwattr $C$DW$190, DW_AT_TI_end_line(0x161)
$C$DW$191	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$191, DW_AT_low_pc($C$DW$L$_telecom_test$43$B)
	.dwattr $C$DW$191, DW_AT_high_pc($C$DW$L$_telecom_test$43$E)
	.dwendtag $C$DW$190


$C$DW$192	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$192, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vpesim.asm:$C$L21:1:1726421242")
	.dwattr $C$DW$192, DW_AT_TI_begin_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$192, DW_AT_TI_begin_line(0x13e)
	.dwattr $C$DW$192, DW_AT_TI_end_line(0x140)
$C$DW$193	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$193, DW_AT_low_pc($C$DW$L$_telecom_test$37$B)
	.dwattr $C$DW$193, DW_AT_high_pc($C$DW$L$_telecom_test$37$E)
	.dwendtag $C$DW$192


$C$DW$194	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$194, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vpesim.asm:$C$L19:1:1726421242")
	.dwattr $C$DW$194, DW_AT_TI_begin_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$194, DW_AT_TI_begin_line(0x135)
	.dwattr $C$DW$194, DW_AT_TI_end_line(0x137)
$C$DW$195	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$195, DW_AT_low_pc($C$DW$L$_telecom_test$35$B)
	.dwattr $C$DW$195, DW_AT_high_pc($C$DW$L$_telecom_test$35$E)
	.dwendtag $C$DW$194


$C$DW$196	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$196, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vpesim.asm:$C$L17:1:1726421242")
	.dwattr $C$DW$196, DW_AT_TI_begin_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$196, DW_AT_TI_begin_line(0x12e)
	.dwattr $C$DW$196, DW_AT_TI_end_line(0x130)
$C$DW$197	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$197, DW_AT_low_pc($C$DW$L$_telecom_test$32$B)
	.dwattr $C$DW$197, DW_AT_high_pc($C$DW$L$_telecom_test$32$E)
	.dwendtag $C$DW$196


$C$DW$198	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$198, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vpesim.asm:$C$L15:1:1726421242")
	.dwattr $C$DW$198, DW_AT_TI_begin_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$198, DW_AT_TI_begin_line(0x125)
	.dwattr $C$DW$198, DW_AT_TI_end_line(0x127)
$C$DW$199	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$199, DW_AT_low_pc($C$DW$L$_telecom_test$30$B)
	.dwattr $C$DW$199, DW_AT_high_pc($C$DW$L$_telecom_test$30$E)
	.dwendtag $C$DW$198


$C$DW$200	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$200, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vpesim.asm:$C$L10:1:1726421242")
	.dwattr $C$DW$200, DW_AT_TI_begin_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$200, DW_AT_TI_begin_line(0xfe)
	.dwattr $C$DW$200, DW_AT_TI_end_line(0x100)
$C$DW$201	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$201, DW_AT_low_pc($C$DW$L$_telecom_test$18$B)
	.dwattr $C$DW$201, DW_AT_high_pc($C$DW$L$_telecom_test$18$E)
	.dwendtag $C$DW$200


$C$DW$202	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$202, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vpesim.asm:$C$L6:1:1726421242")
	.dwattr $C$DW$202, DW_AT_TI_begin_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$202, DW_AT_TI_begin_line(0xf1)
	.dwattr $C$DW$202, DW_AT_TI_end_line(0xf3)
$C$DW$203	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$203, DW_AT_low_pc($C$DW$L$_telecom_test$12$B)
	.dwattr $C$DW$203, DW_AT_high_pc($C$DW$L$_telecom_test$12$E)
	.dwendtag $C$DW$202

	.dwattr $C$DW$142, DW_AT_TI_end_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$142, DW_AT_TI_end_line(0x1ce)
	.dwattr $C$DW$142, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$142

	.sect	".text"
	.global	_vpe_sim_fread

$C$DW$204	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_sim_fread")
	.dwattr $C$DW$204, DW_AT_low_pc(_vpe_sim_fread)
	.dwattr $C$DW$204, DW_AT_high_pc(0x00)
	.dwattr $C$DW$204, DW_AT_TI_symbol_name("_vpe_sim_fread")
	.dwattr $C$DW$204, DW_AT_external
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$204, DW_AT_TI_begin_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$204, DW_AT_TI_begin_line(0x1d4)
	.dwattr $C$DW$204, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$204, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 469,column 1,is_stmt,address _vpe_sim_fread

	.dwfde $C$DW$CIE, _vpe_sim_fread
$C$DW$205	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buf")
	.dwattr $C$DW$205, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$205, DW_AT_location[DW_OP_reg17]
$C$DW$206	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buf_size")
	.dwattr $C$DW$206, DW_AT_TI_symbol_name("_buf_size")
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$206, DW_AT_location[DW_OP_reg12]
$C$DW$207	.dwtag  DW_TAG_formal_parameter, DW_AT_name("inptr")
	.dwattr $C$DW$207, DW_AT_TI_symbol_name("_inptr")
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$207, DW_AT_location[DW_OP_reg19]
$C$DW$208	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size")
	.dwattr $C$DW$208, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$208, DW_AT_location[DW_OP_reg13]
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
        AADD #-9, SP
	.dwcfi	cfa_offset, 10
$C$DW$209	.dwtag  DW_TAG_variable, DW_AT_name("buf")
	.dwattr $C$DW$209, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$209, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$210	.dwtag  DW_TAG_variable, DW_AT_name("buf_size")
	.dwattr $C$DW$210, DW_AT_TI_symbol_name("_buf_size")
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$210, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$211	.dwtag  DW_TAG_variable, DW_AT_name("inptr")
	.dwattr $C$DW$211, DW_AT_TI_symbol_name("_inptr")
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$211, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$212	.dwtag  DW_TAG_variable, DW_AT_name("size")
	.dwattr $C$DW$212, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$212, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$213	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$213, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$213, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$214	.dwtag  DW_TAG_variable, DW_AT_name("j")
	.dwattr $C$DW$214, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$214, DW_AT_location[DW_OP_bregx 0x24 8]
        MOV T1, *SP(#6) ; |469| 
        MOV XAR1, dbl(*SP(#4))
        MOV T0, *SP(#2) ; |469| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 473,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV XAR3, AC0
        BCC $C$L42,AC0 != #0 ; |473| 
                                        ; branchcc occurs ; |473| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 474,column 5,is_stmt
        MOV #0, T0
        B $C$L45  ; |474| 
                                        ; branch occurs ; |474| 
$C$L42:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 478,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR1
        MOV *SP(#6), T0 ; |478| 
        AMOV #_vpe_temp_io_buf, XAR0 ; |478| 
$C$DW$215	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$215, DW_AT_low_pc(0x00)
	.dwattr $C$DW$215, DW_AT_name("_memcpy")
	.dwattr $C$DW$215, DW_AT_TI_call
        CALL #_memcpy ; |478| 
                                        ; call occurs [#_memcpy] ; |478| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 489,column 8,is_stmt
        MOV #0, *SP(#7) ; |489| 
        MOV #0, *SP(#8) ; |489| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 489,column 22,is_stmt
        MOV *SP(#7), AR2 ; |489| 
        MOV *SP(#2), AR1 ; |489| 

        CMP AR2 >= AR1, TC1 ; |489| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L44,TC1 ; |489| 
                                        ; branchcc occurs ; |489| 
$C$L43:    
$C$DW$L$_vpe_sim_fread$4$B:
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 491,column 5,is_stmt
        MOV *SP(#8), T0 ; |491| 
        ADD #1, T0 ; |491| 
        AMOV #_vpe_temp_io_buf, XAR3 ; |491| 
        MOV *AR3(T0), AC1 ; |491| 
        MOV *SP(#8), T0 ; |491| 

        MOV AR2, T0
||      MOV *AR3(T0), AC0 ; |491| 

        MOV dbl(*SP(#0)), XAR3
        OR AC1 << #8, AC0 ; |491| 
        MOV AC0, *AR3(T0) ; |491| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 489,column 36,is_stmt
        ADD #1, *SP(#7) ; |489| 
        ADD #2, *SP(#8) ; |489| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 489,column 22,is_stmt
        MOV *SP(#2), AR1 ; |489| 
        MOV *SP(#7), AR2 ; |489| 

        CMP AR2 < AR1, TC1 ; |489| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L43,TC1 ; |489| 
                                        ; branchcc occurs ; |489| 
$C$DW$L$_vpe_sim_fread$4$E:
$C$L44:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 494,column 3,is_stmt
        MOV #1, T0
$C$L45:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 495,column 1,is_stmt
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$216	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$216, DW_AT_low_pc(0x00)
	.dwattr $C$DW$216, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$217	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$217, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vpesim.asm:$C$L43:1:1726421242")
	.dwattr $C$DW$217, DW_AT_TI_begin_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$217, DW_AT_TI_begin_line(0x1e9)
	.dwattr $C$DW$217, DW_AT_TI_end_line(0x1ec)
$C$DW$218	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$218, DW_AT_low_pc($C$DW$L$_vpe_sim_fread$4$B)
	.dwattr $C$DW$218, DW_AT_high_pc($C$DW$L$_vpe_sim_fread$4$E)
	.dwendtag $C$DW$217

	.dwattr $C$DW$204, DW_AT_TI_end_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$204, DW_AT_TI_end_line(0x1ef)
	.dwattr $C$DW$204, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$204

	.sect	".text"
	.global	_vpe_sim_init

$C$DW$219	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_sim_init")
	.dwattr $C$DW$219, DW_AT_low_pc(_vpe_sim_init)
	.dwattr $C$DW$219, DW_AT_high_pc(0x00)
	.dwattr $C$DW$219, DW_AT_TI_symbol_name("_vpe_sim_init")
	.dwattr $C$DW$219, DW_AT_external
	.dwattr $C$DW$219, DW_AT_TI_begin_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$219, DW_AT_TI_begin_line(0x20d)
	.dwattr $C$DW$219, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$219, DW_AT_TI_max_frame_size(0x01)
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 526,column 1,is_stmt,address _vpe_sim_init

	.dwfde $C$DW$CIE, _vpe_sim_init
;*******************************************************************************
;* FUNCTION NAME: vpe_sim_init                                                 *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AR3,XAR3,SP,M40,SATA,SATD,RDM,FRCT,SMUL      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 1 word                                               *
;*                        (1 return address/alignment)                         *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_vpe_sim_init:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 527,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #1, *AR3 ; |527| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 528,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #0, *AR3(short(#1)) ; |528| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 529,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #0, *AR3(short(#2)) ; |529| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 530,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #0, *AR3(short(#3)) ; |530| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 531,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #1, *AR3(short(#4)) ; |531| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 532,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #1, *AR3(short(#5)) ; |532| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 533,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #0, *AR3(short(#6)) ; |533| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 534,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #0, *AR3(short(#7)) ; |534| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 535,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #0, *AR3(#8) ; |535| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 536,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #0, *AR3(#9) ; |536| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 537,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #0, *AR3(#10) ; |537| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 538,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #0, *AR3(#11) ; |538| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 539,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #0, *AR3(#16) ; |539| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 540,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #0, *AR3(#17) ; |540| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 541,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #0, *AR3(#18) ; |541| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 542,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #1, *AR3(#19) ; |542| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 543,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #5, *AR3(#20) ; |543| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 545,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #0, AC0 ; |545| 
        MOV AC0, dbl(*AR3(#12)) ; |545| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 546,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #0, *AR3(#833) ; |546| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 547,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV AC0, dbl(*AR3(#14)) ; |547| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 548,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #2, *AR3(#830) ; |548| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 549,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #2, *AR3(#831) ; |549| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 560,column 1,is_stmt
$C$DW$220	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$220, DW_AT_low_pc(0x00)
	.dwattr $C$DW$220, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$219, DW_AT_TI_end_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$219, DW_AT_TI_end_line(0x230)
	.dwattr $C$DW$219, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$219

	.sect	".text"
	.global	_vpe_sim_read_cfg

$C$DW$221	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_sim_read_cfg")
	.dwattr $C$DW$221, DW_AT_low_pc(_vpe_sim_read_cfg)
	.dwattr $C$DW$221, DW_AT_high_pc(0x00)
	.dwattr $C$DW$221, DW_AT_TI_symbol_name("_vpe_sim_read_cfg")
	.dwattr $C$DW$221, DW_AT_external
	.dwattr $C$DW$221, DW_AT_TI_begin_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$221, DW_AT_TI_begin_line(0x238)
	.dwattr $C$DW$221, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$221, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 569,column 1,is_stmt,address _vpe_sim_read_cfg

	.dwfde $C$DW$CIE, _vpe_sim_read_cfg
;*******************************************************************************
;* FUNCTION NAME: vpe_sim_read_cfg                                             *
;*                                                                             *
;*   Function Uses Regs : AR3,XAR3,SP,TC1,M40,SATA,SATD,RDM,FRCT,SMUL          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 2 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (1 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_vpe_sim_read_cfg:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-1, SP
	.dwcfi	cfa_offset, 2
$C$DW$222	.dwtag  DW_TAG_variable, DW_AT_name("samp_freq")
	.dwattr $C$DW$222, DW_AT_TI_symbol_name("_samp_freq")
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$222, DW_AT_location[DW_OP_bregx 0x24 0]
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 600,column 1,is_stmt
        MOV #16000, *SP(#0) ; |600| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 601,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #16000, *AR3(#21) ; |601| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 602,column 3,is_stmt
        CMP *SP(#0) == #16000, TC1 ; |602| 
        BCC $C$L46,!TC1 ; |602| 
                                        ; branchcc occurs ; |602| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 603,column 5,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #1, *AR3(#24) ; |603| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 604,column 3,is_stmt
        B $C$L47  ; |604| 
                                        ; branch occurs ; |604| 
$C$L46:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 606,column 5,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #0, *AR3(#24) ; |606| 
$C$L47:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 608,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #5, *AR3(#25) ; |608| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 609,column 5,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #10, *AR3(#26) ; |609| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 610,column 5,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #32, *AR3(#27) ; |610| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 611,column 5,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #9, *AR3(#28) ; |611| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 612,column 5,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #9, *AR3(#29) ; |612| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 613,column 5,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #9, *AR3(#30) ; |613| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 614,column 5,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #31129, *AR3(#31) ; |614| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 615,column 5,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #29818, *AR3(#32) ; |615| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 616,column 5,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #-75, *AR3(#33) ; |616| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 617,column 5,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #150, *AR3(#34) ; |617| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 629,column 1,is_stmt
        AADD #1, SP
	.dwcfi	cfa_offset, 1
$C$DW$223	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$223, DW_AT_low_pc(0x00)
	.dwattr $C$DW$223, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$221, DW_AT_TI_end_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$221, DW_AT_TI_end_line(0x275)
	.dwattr $C$DW$221, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$221

	.sect	".text"
	.global	_vpe_init

$C$DW$224	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_init")
	.dwattr $C$DW$224, DW_AT_low_pc(_vpe_init)
	.dwattr $C$DW$224, DW_AT_high_pc(0x00)
	.dwattr $C$DW$224, DW_AT_TI_symbol_name("_vpe_init")
	.dwattr $C$DW$224, DW_AT_external
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$224, DW_AT_TI_begin_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$224, DW_AT_TI_begin_line(0x27c)
	.dwattr $C$DW$224, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$224, DW_AT_TI_max_frame_size(0x12)
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 637,column 1,is_stmt,address _vpe_init

	.dwfde $C$DW$CIE, _vpe_init
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
        AADD #-17, SP
	.dwcfi	cfa_offset, 18
$C$DW$225	.dwtag  DW_TAG_variable, DW_AT_name("hlc_cfg_info")
	.dwattr $C$DW$225, DW_AT_TI_symbol_name("_hlc_cfg_info")
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$225, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$226	.dwtag  DW_TAG_variable, DW_AT_name("slm_cfg_info")
	.dwattr $C$DW$226, DW_AT_TI_symbol_name("_slm_cfg_info")
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$226, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$227	.dwtag  DW_TAG_variable, DW_AT_name("hlcSize")
	.dwattr $C$DW$227, DW_AT_TI_symbol_name("_hlcSize")
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$227, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$228	.dwtag  DW_TAG_variable, DW_AT_name("slmSize")
	.dwattr $C$DW$228, DW_AT_TI_symbol_name("_slmSize")
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$228, DW_AT_location[DW_OP_bregx 0x24 9]
$C$DW$229	.dwtag  DW_TAG_variable, DW_AT_name("snlSize")
	.dwattr $C$DW$229, DW_AT_TI_symbol_name("_snlSize")
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$229, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$230	.dwtag  DW_TAG_variable, DW_AT_name("svdSize")
	.dwattr $C$DW$230, DW_AT_TI_symbol_name("_svdSize")
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$230, DW_AT_location[DW_OP_bregx 0x24 11]
$C$DW$231	.dwtag  DW_TAG_variable, DW_AT_name("sgnSize")
	.dwattr $C$DW$231, DW_AT_TI_symbol_name("_sgnSize")
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$231, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$232	.dwtag  DW_TAG_variable, DW_AT_name("srate_factor")
	.dwattr $C$DW$232, DW_AT_TI_symbol_name("_srate_factor")
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$232, DW_AT_location[DW_OP_bregx 0x24 13]
$C$DW$233	.dwtag  DW_TAG_variable, DW_AT_name("frame_size")
	.dwattr $C$DW$233, DW_AT_TI_symbol_name("_frame_size")
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$233, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$234	.dwtag  DW_TAG_variable, DW_AT_name("retVal")
	.dwattr $C$DW$234, DW_AT_TI_symbol_name("_retVal")
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$234, DW_AT_location[DW_OP_bregx 0x24 15]
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 645,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        CMP *AR3(#21) == #16000, TC1 ; |645| 
        BCC $C$L48,!TC1 ; |645| 
                                        ; branchcc occurs ; |645| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 646,column 5,is_stmt
        MOV #160, *SP(#14) ; |646| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 647,column 3,is_stmt
        B $C$L49  ; |647| 
                                        ; branch occurs ; |647| 
$C$L48:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 649,column 5,is_stmt
        MOV #80, *SP(#14) ; |649| 
$C$L49:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 653,column 3,is_stmt
        MOV *SP(#14), AR1 ; |653| 
        MOV AR1, *AR3(#834) ; |653| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 654,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV *SP(#14), AR1 ; |654| 
        MOV AR1, *AR3(#835) ; |654| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 655,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV *AR3(short(#6)), AR1 ; |655| 
        BCC $C$L50,AR1 == #0 ; |655| 
                                        ; branchcc occurs ; |655| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 656,column 5,is_stmt
        MOV *SP(#14), AC0 ; |656| 
        BFXTR #0x8000, AC0, AR1 ; |656| 
        ADD AC0, AR1 ; |656| 
        SFTS AR1, #-1 ; |656| 
        MOV AR1, *AR3(#835) ; |656| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 657,column 5,is_stmt
        AMOV #_decimDelayLine, XAR0 ; |657| 
        MOV #32, T1 ; |657| 
        MOV #0, T0
$C$DW$235	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$235, DW_AT_low_pc(0x00)
	.dwattr $C$DW$235, DW_AT_name("_memset")
	.dwattr $C$DW$235, DW_AT_TI_call
        CALL #_memset ; |657| 
                                        ; call occurs [#_memset] ; |657| 
$C$L50:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 659,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV *AR3(short(#7)), AR1 ; |659| 
        BCC $C$L51,AR1 == #0 ; |659| 
                                        ; branchcc occurs ; |659| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 660,column 5,is_stmt
        MOV *SP(#14), AR1 ; |660| 
        SFTL AR1, #1 ; |660| 
        MOV AR1, *AR3(#835) ; |660| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 661,column 5,is_stmt
        AMOV #_interpDelayLine, XAR0 ; |661| 
        MOV #16, T1 ; |661| 
        MOV #0, T0
$C$DW$236	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$236, DW_AT_low_pc(0x00)
	.dwattr $C$DW$236, DW_AT_name("_memset")
	.dwattr $C$DW$236, DW_AT_TI_call
        CALL #_memset ; |661| 
                                        ; call occurs [#_memset] ; |661| 
$C$L51:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 664,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV *AR3(short(#1)), AR1 ; |664| 
        BCC $C$L58,AR1 == #0 ; |664| 
                                        ; branchcc occurs ; |664| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 666,column 5,is_stmt
        MOV XSP, XAR0
        AMAR *+AR0(#8)
$C$DW$237	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$237, DW_AT_low_pc(0x00)
	.dwattr $C$DW$237, DW_AT_name("_hlcGetSizes")
	.dwattr $C$DW$237, DW_AT_TI_call
        CALL #_hlcGetSizes ; |666| 
                                        ; call occurs [#_hlcGetSizes] ; |666| 
        MOV T0, *SP(#15) ; |666| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 667,column 5,is_stmt
        MOV T0, AR1
        BCC $C$L52,AR1 == #0 ; |667| 
                                        ; branchcc occurs ; |667| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 668,column 7,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #4, *AR3(#833) ; |668| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 669,column 7,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #0, *AR3 ; |669| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 670,column 7,is_stmt
        MOV #4, T0
        B $C$L74  ; |670| 
                                        ; branch occurs ; |670| 
$C$L52:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 674,column 5,is_stmt
        MOV *SP(#8), T0 ; |674| 
$C$DW$238	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$238, DW_AT_low_pc(0x00)
	.dwattr $C$DW$238, DW_AT_name("_malloc")
	.dwattr $C$DW$238, DW_AT_TI_call
        CALL #_malloc ; |674| 
                                        ; call occurs [#_malloc] ; |674| 
        MOV XAR0, dbl(*(#_hlcInst_ptr))
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 676,column 5,is_stmt
        MOV #0, *SP(#0) ; |676| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 679,column 5,is_stmt
        OR #0x0010, *SP(#0) ; |679| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 681,column 5,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        CMP *AR3(#21) == #8000, TC1 ; |681| 
        BCC $C$L53,!TC1 ; |681| 
                                        ; branchcc occurs ; |681| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 682,column 7,is_stmt
        MOV #1, *SP(#4) ; |682| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 683,column 5,is_stmt
        B $C$L54  ; |683| 
                                        ; branch occurs ; |683| 
$C$L53:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 685,column 7,is_stmt
        MOV #2, *SP(#4) ; |685| 
$C$L54:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 689,column 5,is_stmt
        MOV #320, AR2 ; |689| 
        MOV *AR3(#835), AR1 ; |689| 

        CMPU AR1 > AR2, TC1 ; |689| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L55,TC1 ; |689| 
                                        ; branchcc occurs ; |689| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 690,column 7,is_stmt
        OR #0x0008, *SP(#0) ; |690| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 691,column 7,is_stmt
        MOV *AR3(#835), AR1 ; |691| 
        MOV AR1, *SP(#5) ; |691| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 692,column 5,is_stmt
        B $C$L56  ; |692| 
                                        ; branch occurs ; |692| 
$C$L55:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 694,column 7,is_stmt
        MOV #5, *AR3(#833) ; |694| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 695,column 7,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #0, *AR3 ; |695| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 696,column 7,is_stmt
        MOV #5, T0
        B $C$L74  ; |696| 
                                        ; branch occurs ; |696| 
$C$L56:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 700,column 5,is_stmt
        MOV XSP, XAR1
$C$DW$239	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$239, DW_AT_low_pc(0x00)
	.dwattr $C$DW$239, DW_AT_name("_hlcInit")
	.dwattr $C$DW$239, DW_AT_TI_call
        CALL #_hlcInit ; |700| 
                                        ; call occurs [#_hlcInit] ; |700| 
        MOV T0, *SP(#15) ; |700| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 701,column 5,is_stmt
        MOV T0, AR1
        BCC $C$L57,AR1 == #0 ; |701| 
                                        ; branchcc occurs ; |701| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 702,column 7,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #5, *AR3(#833) ; |702| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 703,column 7,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #0, *AR3 ; |703| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 704,column 7,is_stmt
        MOV #5, T0
        B $C$L74  ; |704| 
                                        ; branch occurs ; |704| 
$C$L57:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 708,column 5,is_stmt
        MOV dbl(*(#_hctrlInst_ptr)), XAR3
        MOV #1, *AR3 ; |708| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 709,column 5,is_stmt
        MOV dbl(*(#_hlcInst_ptr)), XAR0
        MOV dbl(*(#_hctrlInst_ptr)), XAR1
$C$DW$240	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$240, DW_AT_low_pc(0x00)
	.dwattr $C$DW$240, DW_AT_name("_hlcControl")
	.dwattr $C$DW$240, DW_AT_TI_call
        CALL #_hlcControl ; |709| 
                                        ; call occurs [#_hlcControl] ; |709| 
        MOV T0, *SP(#15) ; |709| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 710,column 5,is_stmt
        MOV T0, AR1
        BCC $C$L58,AR1 == #0 ; |710| 
                                        ; branchcc occurs ; |710| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 711,column 7,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #7, *AR3(#833) ; |711| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 712,column 7,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #0, *AR3 ; |712| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 713,column 7,is_stmt
        MOV #7, T0
        B $C$L74  ; |713| 
                                        ; branch occurs ; |713| 
$C$L58:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 719,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV *AR3(short(#2)), AR1 ; |719| 
        BCC $C$L62,AR1 == #0 ; |719| 
                                        ; branchcc occurs ; |719| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 721,column 5,is_stmt
        MOV XSP, XAR0
        AMAR *+AR0(#9)
$C$DW$241	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$241, DW_AT_low_pc(0x00)
	.dwattr $C$DW$241, DW_AT_name("_slmGetSizes")
	.dwattr $C$DW$241, DW_AT_TI_call
        CALL #_slmGetSizes ; |721| 
                                        ; call occurs [#_slmGetSizes] ; |721| 
        MOV T0, *SP(#15) ; |721| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 722,column 5,is_stmt
        MOV T0, AR1
        BCC $C$L59,AR1 == #0 ; |722| 
                                        ; branchcc occurs ; |722| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 723,column 7,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #10, *AR3(#833) ; |723| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 724,column 7,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #0, *AR3 ; |724| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 725,column 7,is_stmt
        MOV #10, T0
        B $C$L74  ; |725| 
                                        ; branch occurs ; |725| 
$C$L59:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 728,column 5,is_stmt
        MOV *SP(#9), T0 ; |728| 
$C$DW$242	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$242, DW_AT_low_pc(0x00)
	.dwattr $C$DW$242, DW_AT_name("_malloc")
	.dwattr $C$DW$242, DW_AT_TI_call
        CALL #_malloc ; |728| 
                                        ; call occurs [#_malloc] ; |728| 
        MOV XAR0, dbl(*(#_slmInst_ptr))
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 731,column 5,is_stmt
        MOV #0, *SP(#6) ; |731| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 733,column 5,is_stmt
        OR #0x0001, *SP(#6) ; |733| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 734,column 5,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        CMP *AR3(#21) == #8000, TC1 ; |734| 
        BCC $C$L60,!TC1 ; |734| 
                                        ; branchcc occurs ; |734| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 735,column 7,is_stmt
        MOV #2, *SP(#7) ; |735| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 736,column 5,is_stmt
        B $C$L61  ; |736| 
                                        ; branch occurs ; |736| 
$C$L60:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 738,column 7,is_stmt
        MOV #1, *SP(#7) ; |738| 
$C$L61:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 741,column 5,is_stmt
        MOV XSP, XAR1
        AMAR *+AR1(#6)
$C$DW$243	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$243, DW_AT_low_pc(0x00)
	.dwattr $C$DW$243, DW_AT_name("_slmInit")
	.dwattr $C$DW$243, DW_AT_TI_call
        CALL #_slmInit ; |741| 
                                        ; call occurs [#_slmInit] ; |741| 
        MOV T0, *SP(#15) ; |741| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 742,column 5,is_stmt
        MOV T0, AR1
        BCC $C$L62,AR1 == #0 ; |742| 
                                        ; branchcc occurs ; |742| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 743,column 7,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #8, *AR3(#833) ; |743| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 744,column 7,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #0, *AR3 ; |744| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 745,column 7,is_stmt
        MOV #8, T0
        B $C$L74  ; |745| 
                                        ; branch occurs ; |745| 
$C$L62:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 751,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV *AR3(short(#3)), AR1 ; |751| 
        BCC $C$L66,AR1 == #0 ; |751| 
                                        ; branchcc occurs ; |751| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 752,column 5,is_stmt
        MOV XSP, XAR0
        AMAR *+AR0(#10)
$C$DW$244	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$244, DW_AT_low_pc(0x00)
	.dwattr $C$DW$244, DW_AT_name("_snlGetSizes")
	.dwattr $C$DW$244, DW_AT_TI_call
        CALL #_snlGetSizes ; |752| 
                                        ; call occurs [#_snlGetSizes] ; |752| 
        MOV T0, *SP(#15) ; |752| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 753,column 5,is_stmt
        MOV T0, AR1
        BCC $C$L63,AR1 == #0 ; |753| 
                                        ; branchcc occurs ; |753| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 754,column 7,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #11, *AR3(#833) ; |754| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 755,column 7,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #0, *AR3 ; |755| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 756,column 7,is_stmt
        MOV #11, T0
        B $C$L74  ; |756| 
                                        ; branch occurs ; |756| 
$C$L63:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 759,column 5,is_stmt
        MOV *SP(#10), T0 ; |759| 
$C$DW$245	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$245, DW_AT_low_pc(0x00)
	.dwattr $C$DW$245, DW_AT_name("_malloc")
	.dwattr $C$DW$245, DW_AT_TI_call
        CALL #_malloc ; |759| 
                                        ; call occurs [#_malloc] ; |759| 
        MOV XAR0, dbl(*(#_snlInst_ptr))
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 761,column 5,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        CMP *AR3(#21) == #8000, TC1 ; |761| 
        BCC $C$L64,!TC1 ; |761| 
                                        ; branchcc occurs ; |761| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 762,column 7,is_stmt
        MOV #1, *SP(#13) ; |762| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 763,column 5,is_stmt
        B $C$L65  ; |763| 
                                        ; branch occurs ; |763| 
$C$L64:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 765,column 7,is_stmt
        MOV #2, *SP(#13) ; |765| 
$C$L65:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 768,column 5,is_stmt
        MOV *SP(#13), T0 ; |768| 
$C$DW$246	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$246, DW_AT_low_pc(0x00)
	.dwattr $C$DW$246, DW_AT_name("_snlInit")
	.dwattr $C$DW$246, DW_AT_TI_call
        CALL #_snlInit ; |768| 
                                        ; call occurs [#_snlInit] ; |768| 
        MOV T0, *SP(#15) ; |768| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 769,column 5,is_stmt
        MOV T0, AR1
        BCC $C$L66,AR1 == #0 ; |769| 
                                        ; branchcc occurs ; |769| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 770,column 7,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #12, *AR3(#833) ; |770| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 771,column 7,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #0, *AR3 ; |771| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 772,column 7,is_stmt
        MOV #12, T0
        B $C$L74  ; |772| 
                                        ; branch occurs ; |772| 
$C$L66:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 781,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV *AR3(short(#4)), AR1 ; |781| 
        BCC $C$L70,AR1 == #0 ; |781| 
                                        ; branchcc occurs ; |781| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 782,column 5,is_stmt
        MOV XSP, XAR0
        AMAR *+AR0(#11)
$C$DW$247	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$247, DW_AT_low_pc(0x00)
	.dwattr $C$DW$247, DW_AT_name("_svdGetSizes")
	.dwattr $C$DW$247, DW_AT_TI_call
        CALL #_svdGetSizes ; |782| 
                                        ; call occurs [#_svdGetSizes] ; |782| 
        MOV T0, *SP(#15) ; |782| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 783,column 5,is_stmt
        MOV T0, AR1
        BCC $C$L67,AR1 == #0 ; |783| 
                                        ; branchcc occurs ; |783| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 784,column 7,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #18, *AR3(#833) ; |784| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 785,column 7,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #0, *AR3 ; |785| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 786,column 7,is_stmt
        MOV #18, T0 ; |786| 
        B $C$L74  ; |786| 
                                        ; branch occurs ; |786| 
$C$L67:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 789,column 5,is_stmt
        MOV *SP(#11), T0 ; |789| 
$C$DW$248	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$248, DW_AT_low_pc(0x00)
	.dwattr $C$DW$248, DW_AT_name("_malloc")
	.dwattr $C$DW$248, DW_AT_TI_call
        CALL #_malloc ; |789| 
                                        ; call occurs [#_malloc] ; |789| 
        MOV XAR0, dbl(*(#_svdInst_ptr))
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 791,column 5,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        CMP *AR3(#21) == #8000, TC1 ; |791| 
        BCC $C$L68,!TC1 ; |791| 
                                        ; branchcc occurs ; |791| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 792,column 7,is_stmt
        MOV #1, *SP(#13) ; |792| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 793,column 5,is_stmt
        B $C$L69  ; |793| 
                                        ; branch occurs ; |793| 
$C$L68:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 795,column 7,is_stmt
        MOV #2, *SP(#13) ; |795| 
$C$L69:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 798,column 5,is_stmt
        MOV *SP(#13), T0 ; |798| 
$C$DW$249	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$249, DW_AT_low_pc(0x00)
	.dwattr $C$DW$249, DW_AT_name("_svdInit")
	.dwattr $C$DW$249, DW_AT_TI_call
        CALL #_svdInit ; |798| 
                                        ; call occurs [#_svdInit] ; |798| 
        MOV T0, *SP(#15) ; |798| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 799,column 5,is_stmt
        MOV T0, AR1
        BCC $C$L70,AR1 == #0 ; |799| 
                                        ; branchcc occurs ; |799| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 800,column 7,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #19, *AR3(#833) ; |800| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 801,column 7,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #0, *AR3 ; |801| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 802,column 7,is_stmt
        MOV #19, T0 ; |802| 
        B $C$L74  ; |802| 
                                        ; branch occurs ; |802| 
$C$L70:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 811,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV *AR3(short(#5)), AR1 ; |811| 
        BCC $C$L73,AR1 == #0 ; |811| 
                                        ; branchcc occurs ; |811| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 812,column 5,is_stmt
        CMP *AR3(#21) == #8000, TC1 ; |812| 
        BCC $C$L71,!TC1 ; |812| 
                                        ; branchcc occurs ; |812| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 813,column 7,is_stmt
        MOV #0, *SP(#13) ; |813| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 814,column 5,is_stmt
        B $C$L72  ; |814| 
                                        ; branch occurs ; |814| 
$C$L71:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 816,column 7,is_stmt
        MOV #1, *SP(#13) ; |816| 
$C$L72:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 819,column 3,is_stmt
        MOV *SP(#13), T0 ; |819| 
$C$DW$250	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$250, DW_AT_low_pc(0x00)
	.dwattr $C$DW$250, DW_AT_name("_vpe_instantiate_nr")
	.dwattr $C$DW$250, DW_AT_TI_call
        CALL #_vpe_instantiate_nr ; |819| 
                                        ; call occurs [#_vpe_instantiate_nr] ; |819| 
        MOV T0, *SP(#15) ; |819| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 820,column 3,is_stmt
        MOV T0, AR1
        BCC $C$L74,AR1 != #0 ; |820| 
                                        ; branchcc occurs ; |820| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 821,column 5,is_stmt
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 824,column 2,is_stmt
        MOV dbl(*(#_vpeSim)), XAR0
        AADD #24, AR0 ; |824| 
$C$DW$251	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$251, DW_AT_low_pc(0x00)
	.dwattr $C$DW$251, DW_AT_name("_vpe_config_nr")
	.dwattr $C$DW$251, DW_AT_TI_call
        CALL #_vpe_config_nr ; |824| 
                                        ; call occurs [#_vpe_config_nr] ; |824| 
        MOV T0, *SP(#15) ; |824| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 825,column 3,is_stmt
        MOV T0, AR1
        BCC $C$L74,AR1 != #0 ; |825| 
                                        ; branchcc occurs ; |825| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 826,column 5,is_stmt
$C$L73:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 832,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #1, *AR3(#36) ; |832| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 833,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #0, *AR3(#37) ; |833| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 834,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #1, *AR3(#38) ; |834| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 835,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #1000, *AR3(#39) ; |835| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 836,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #400, *AR3(#40) ; |836| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 837,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #5120, *AR3(#41) ; |837| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 838,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #14080, *AR3(#42) ; |838| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 839,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #-100, *AR3(#43) ; |839| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 840,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #40, AC0 ; |840| 
        MOV AC0, dbl(*AR3(#44)) ; |840| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 841,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #1, *AR3(#46) ; |841| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 842,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #-10, *AR3(#47) ; |842| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 843,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #20, AC0 ; |843| 
        MOV AC0, dbl(*AR3(#48)) ; |843| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 845,column 3,is_stmt
        MOV XSP, XAR0
        AMAR *+AR0(#12)
$C$DW$252	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$252, DW_AT_low_pc(0x00)
	.dwattr $C$DW$252, DW_AT_name("_sgnGetSizes")
	.dwattr $C$DW$252, DW_AT_TI_call
        CALL #_sgnGetSizes ; |845| 
                                        ; call occurs [#_sgnGetSizes] ; |845| 
        MOV T0, *SP(#15) ; |845| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 846,column 3,is_stmt
        MOV *SP(#12), T0 ; |846| 
$C$DW$253	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$253, DW_AT_low_pc(0x00)
	.dwattr $C$DW$253, DW_AT_name("_malloc")
	.dwattr $C$DW$253, DW_AT_TI_call
        CALL #_malloc ; |846| 
                                        ; call occurs [#_malloc] ; |846| 
        MOV XAR0, dbl(*(#_sgnInst_ptr))
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 847,column 3,is_stmt
$C$DW$254	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$254, DW_AT_low_pc(0x00)
	.dwattr $C$DW$254, DW_AT_name("_vpe_sim_open_sgn")
	.dwattr $C$DW$254, DW_AT_TI_call
        CALL #_vpe_sim_open_sgn ; |847| 
                                        ; call occurs [#_vpe_sim_open_sgn] ; |847| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 857,column 3,is_stmt
        MOV #0, T0
$C$L74:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 858,column 1,is_stmt
        AADD #17, SP
	.dwcfi	cfa_offset, 1
$C$DW$255	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$255, DW_AT_low_pc(0x00)
	.dwattr $C$DW$255, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$224, DW_AT_TI_end_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$224, DW_AT_TI_end_line(0x35a)
	.dwattr $C$DW$224, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$224

	.sect	".text"
	.global	_vpe_sim_open_sgn

$C$DW$256	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_sim_open_sgn")
	.dwattr $C$DW$256, DW_AT_low_pc(_vpe_sim_open_sgn)
	.dwattr $C$DW$256, DW_AT_high_pc(0x00)
	.dwattr $C$DW$256, DW_AT_TI_symbol_name("_vpe_sim_open_sgn")
	.dwattr $C$DW$256, DW_AT_external
	.dwattr $C$DW$256, DW_AT_TI_begin_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$256, DW_AT_TI_begin_line(0x362)
	.dwattr $C$DW$256, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$256, DW_AT_TI_max_frame_size(0x24)
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 867,column 1,is_stmt,address _vpe_sim_open_sgn

	.dwfde $C$DW$CIE, _vpe_sim_open_sgn
$C$DW$257	.dwtag  DW_TAG_formal_parameter, DW_AT_name("inst")
	.dwattr $C$DW$257, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$257, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$257, DW_AT_location[DW_OP_reg17]
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
        AADD #-35, SP
	.dwcfi	cfa_offset, 36
$C$DW$258	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$258, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$258, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$258, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$259	.dwtag  DW_TAG_variable, DW_AT_name("cfg")
	.dwattr $C$DW$259, DW_AT_TI_symbol_name("_cfg")
	.dwattr $C$DW$259, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$259, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 870,column 3,is_stmt
        MOV #0, *SP(#3) ; |870| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 871,column 3,is_stmt
        MOV #1, *SP(#4) ; |871| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 872,column 3,is_stmt
        MOV #1000, *SP(#5) ; |872| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 873,column 3,is_stmt
        MOV #400, *SP(#6) ; |873| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 874,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV *AR3(#21), AR1 ; |874| 
        MOV AR1, *SP(#7) ; |874| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 875,column 3,is_stmt
        MOV #5120, *SP(#8) ; |875| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 876,column 3,is_stmt
        MOV #14080, *SP(#9) ; |876| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 877,column 3,is_stmt
        MOV #1000, *SP(#10) ; |877| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 878,column 3,is_stmt
        MOV #0, *SP(#11) ; |878| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 879,column 3,is_stmt
        MOV #-100, *SP(#17) ; |879| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 880,column 3,is_stmt
        MOV #40, *SP(#18) ; |880| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 881,column 3,is_stmt
        MOV #1, *SP(#19) ; |881| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 882,column 3,is_stmt
        MOV #90, AC0 ; |882| 
        MOV AC0, dbl(*SP(#12)) ; |882| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 883,column 3,is_stmt
        AMOV #(_vpe_sim_fsk_data+1), XAR3 ; |883| 
        MOV XAR3, dbl(*SP(#14))
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 884,column 3,is_stmt
        MOV #1, *SP(#16) ; |884| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 885,column 3,is_stmt
        MOV #-10, *SP(#20) ; |885| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 886,column 3,is_stmt
        MOV #20, *SP(#21) ; |886| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 887,column 3,is_stmt
        MOV #(_vpe_sim_in_file >> 16) << #16, AC0 ; |887| 
        OR #(_vpe_sim_in_file & 0xffff), AC0, AC0 ; |887| 
        MOV AC0, dbl(*SP(#22)) ; |887| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 889,column 3,is_stmt
        MOV XSP, XAR1
        AMAR *+AR1(#2)
        MOV dbl(*SP(#0)), XAR0
$C$DW$260	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$260, DW_AT_low_pc(0x00)
	.dwattr $C$DW$260, DW_AT_name("_sgnInit")
	.dwattr $C$DW$260, DW_AT_TI_call
        CALL #_sgnInit ; |889| 
                                        ; call occurs [#_sgnInit] ; |889| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 890,column 1,is_stmt
        AADD #35, SP
	.dwcfi	cfa_offset, 1
$C$DW$261	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$261, DW_AT_low_pc(0x00)
	.dwattr $C$DW$261, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$256, DW_AT_TI_end_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$256, DW_AT_TI_end_line(0x37a)
	.dwattr $C$DW$256, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$256

	.sect	".text"
	.global	_vpe_sim_set_sgn

$C$DW$262	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_sim_set_sgn")
	.dwattr $C$DW$262, DW_AT_low_pc(_vpe_sim_set_sgn)
	.dwattr $C$DW$262, DW_AT_high_pc(0x00)
	.dwattr $C$DW$262, DW_AT_TI_symbol_name("_vpe_sim_set_sgn")
	.dwattr $C$DW$262, DW_AT_external
	.dwattr $C$DW$262, DW_AT_TI_begin_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$262, DW_AT_TI_begin_line(0x382)
	.dwattr $C$DW$262, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$262, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 899,column 1,is_stmt,address _vpe_sim_set_sgn

	.dwfde $C$DW$CIE, _vpe_sim_set_sgn
$C$DW$263	.dwtag  DW_TAG_formal_parameter, DW_AT_name("inst")
	.dwattr $C$DW$263, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$263, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$263, DW_AT_location[DW_OP_reg17]
$C$DW$264	.dwtag  DW_TAG_formal_parameter, DW_AT_name("sgn")
	.dwattr $C$DW$264, DW_AT_TI_symbol_name("_sgn")
	.dwattr $C$DW$264, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$264, DW_AT_location[DW_OP_reg19]
$C$DW$265	.dwtag  DW_TAG_formal_parameter, DW_AT_name("Fs")
	.dwattr $C$DW$265, DW_AT_TI_symbol_name("_Fs")
	.dwattr $C$DW$265, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$265, DW_AT_location[DW_OP_reg12]
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
        AADD #-15, SP
	.dwcfi	cfa_offset, 16
$C$DW$266	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$266, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$266, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$266, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$267	.dwtag  DW_TAG_variable, DW_AT_name("sgn")
	.dwattr $C$DW$267, DW_AT_TI_symbol_name("_sgn")
	.dwattr $C$DW$267, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$267, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$268	.dwtag  DW_TAG_variable, DW_AT_name("Fs")
	.dwattr $C$DW$268, DW_AT_TI_symbol_name("_Fs")
	.dwattr $C$DW$268, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$268, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$269	.dwtag  DW_TAG_variable, DW_AT_name("ctl")
	.dwattr $C$DW$269, DW_AT_TI_symbol_name("_ctl")
	.dwattr $C$DW$269, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$269, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV T0, *SP(#4) ; |899| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 902,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3, AR1 ; |902| 
        BCC $C$L79,AR1 == #0 ; |902| 
                                        ; branchcc occurs ; |902| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 903,column 5,is_stmt
        MOV *SP(#4), AR1 ; |903| 
        MOV AR1, *SP(#7) ; |903| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 904,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        CMP *AR3(short(#2)) == #4, TC1 ; |904| 
        BCC $C$L75,TC1 ; |904| 
                                        ; branchcc occurs ; |904| 
        CMP *AR3(short(#2)) == #5, TC1 ; |904| 
        BCC $C$L76,!TC1 ; |904| 
                                        ; branchcc occurs ; |904| 
$C$L75:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 905,column 7,is_stmt
        MOV #6, *SP(#6) ; |905| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 906,column 7,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#11), AR1 ; |906| 
        MOV AR1, *SP(#8) ; |906| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 907,column 5,is_stmt
        B $C$L78  ; |907| 
                                        ; branch occurs ; |907| 
$C$L76:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 908,column 10,is_stmt
        CMP *AR3(short(#2)) == #7, TC1 ; |908| 
        BCC $C$L77,!TC1 ; |908| 
                                        ; branchcc occurs ; |908| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 909,column 7,is_stmt
        MOV #8, *SP(#6) ; |909| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 910,column 7,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#11), AR1 ; |910| 
        MOV AR1, *SP(#8) ; |910| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 911,column 5,is_stmt
        B $C$L78  ; |911| 
                                        ; branch occurs ; |911| 
$C$L77:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 913,column 7,is_stmt
        MOV #1, *SP(#6) ; |913| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 914,column 7,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#3)), AR1 ; |914| 
        MOV AR1, *SP(#8) ; |914| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 915,column 7,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#4)), AR1 ; |915| 
        MOV AR1, *SP(#9) ; |915| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 916,column 7,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#5)), AR1 ; |916| 
        MOV AR1, *SP(#10) ; |916| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 917,column 7,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#6)), AR1 ; |917| 
        MOV AR1, *SP(#11) ; |917| 
$C$L78:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 919,column 5,is_stmt
        MOV XSP, XAR1
        MOV dbl(*SP(#0)), XAR0
        AMAR *+AR1(#6)
$C$DW$270	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$270, DW_AT_low_pc(0x00)
	.dwattr $C$DW$270, DW_AT_name("_sgnControl")
	.dwattr $C$DW$270, DW_AT_TI_call
        CALL #_sgnControl ; |919| 
                                        ; call occurs [#_sgnControl] ; |919| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 921,column 5,is_stmt
        MOV #2, *SP(#6) ; |921| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 922,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#7)), AR1 ; |922| 
        MOV AR1, *SP(#8) ; |922| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 923,column 3,is_stmt
        B $C$L84  ; |923| 
                                        ; branch occurs ; |923| 
$C$L79:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 925,column 5,is_stmt
        CMP *AR3(short(#2)) == #4, TC1 ; |925| 
        BCC $C$L80,TC1 ; |925| 
                                        ; branchcc occurs ; |925| 
        CMP *AR3(short(#2)) == #5, TC1 ; |925| 
        BCC $C$L81,!TC1 ; |925| 
                                        ; branchcc occurs ; |925| 
$C$L80:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 926,column 7,is_stmt
        MOV #6, *SP(#6) ; |926| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 927,column 7,is_stmt
        MOV #-80, *SP(#8) ; |927| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 928,column 5,is_stmt
        B $C$L83  ; |928| 
                                        ; branch occurs ; |928| 
$C$L81:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 929,column 10,is_stmt
        CMP *AR3(short(#2)) == #7, TC1 ; |929| 
        BCC $C$L82,!TC1 ; |929| 
                                        ; branchcc occurs ; |929| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 930,column 7,is_stmt
        MOV #8, *SP(#6) ; |930| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 931,column 7,is_stmt
        MOV #-80, *SP(#8) ; |931| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 932,column 5,is_stmt
        B $C$L83  ; |932| 
                                        ; branch occurs ; |932| 
$C$L82:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 934,column 7,is_stmt
        MOV #1, *SP(#6) ; |934| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 935,column 7,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#3)), AR1 ; |935| 
        MOV AR1, *SP(#8) ; |935| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 936,column 7,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#4)), AR1 ; |936| 
        MOV AR1, *SP(#9) ; |936| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 937,column 7,is_stmt
        MOV #0, *SP(#10) ; |937| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 938,column 7,is_stmt
        MOV #0, *SP(#11) ; |938| 
$C$L83:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 940,column 5,is_stmt
        MOV XSP, XAR1
        MOV dbl(*SP(#0)), XAR0
        AMAR *+AR1(#6)
$C$DW$271	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$271, DW_AT_low_pc(0x00)
	.dwattr $C$DW$271, DW_AT_name("_sgnControl")
	.dwattr $C$DW$271, DW_AT_TI_call
        CALL #_sgnControl ; |940| 
                                        ; call occurs [#_sgnControl] ; |940| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 942,column 5,is_stmt
        MOV #2, *SP(#6) ; |942| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 943,column 5,is_stmt
        MOV #-80, *SP(#8) ; |943| 
$C$L84:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 945,column 3,is_stmt
        MOV XSP, XAR1
        MOV dbl(*SP(#0)), XAR0
        AMAR *+AR1(#6)
$C$DW$272	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$272, DW_AT_low_pc(0x00)
	.dwattr $C$DW$272, DW_AT_name("_sgnControl")
	.dwattr $C$DW$272, DW_AT_TI_call
        CALL #_sgnControl ; |945| 
                                        ; call occurs [#_sgnControl] ; |945| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 946,column 1,is_stmt
        AADD #15, SP
	.dwcfi	cfa_offset, 1
$C$DW$273	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$273, DW_AT_low_pc(0x00)
	.dwattr $C$DW$273, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$262, DW_AT_TI_end_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$262, DW_AT_TI_end_line(0x3b2)
	.dwattr $C$DW$262, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$262

	.sect	".text"
	.global	_vpe_sim_gen_frame

$C$DW$274	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_sim_gen_frame")
	.dwattr $C$DW$274, DW_AT_low_pc(_vpe_sim_gen_frame)
	.dwattr $C$DW$274, DW_AT_high_pc(0x00)
	.dwattr $C$DW$274, DW_AT_TI_symbol_name("_vpe_sim_gen_frame")
	.dwattr $C$DW$274, DW_AT_external
	.dwattr $C$DW$274, DW_AT_TI_begin_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$274, DW_AT_TI_begin_line(0x3bb)
	.dwattr $C$DW$274, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$274, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 956,column 1,is_stmt,address _vpe_sim_gen_frame

	.dwfde $C$DW$CIE, _vpe_sim_gen_frame
$C$DW$275	.dwtag  DW_TAG_formal_parameter, DW_AT_name("inst")
	.dwattr $C$DW$275, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$275, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$275, DW_AT_location[DW_OP_reg17]
$C$DW$276	.dwtag  DW_TAG_formal_parameter, DW_AT_name("frame_size")
	.dwattr $C$DW$276, DW_AT_TI_symbol_name("_frame_size")
	.dwattr $C$DW$276, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$276, DW_AT_location[DW_OP_reg12]
$C$DW$277	.dwtag  DW_TAG_formal_parameter, DW_AT_name("frame")
	.dwattr $C$DW$277, DW_AT_TI_symbol_name("_frame")
	.dwattr $C$DW$277, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$277, DW_AT_location[DW_OP_reg19]
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
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$278	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$278, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$278, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$278, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$279	.dwtag  DW_TAG_variable, DW_AT_name("frame_size")
	.dwattr $C$DW$279, DW_AT_TI_symbol_name("_frame_size")
	.dwattr $C$DW$279, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$279, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$280	.dwtag  DW_TAG_variable, DW_AT_name("frame")
	.dwattr $C$DW$280, DW_AT_TI_symbol_name("_frame")
	.dwattr $C$DW$280, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$280, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR1, dbl(*SP(#4))
        MOV T0, *SP(#2) ; |956| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 958,column 3,is_stmt
        MOV *SP(#2), T0 ; |958| 
        MOV dbl(*SP(#4)), XAR1
$C$DW$281	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$281, DW_AT_low_pc(0x00)
	.dwattr $C$DW$281, DW_AT_name("_sgnGenerateFrame")
	.dwattr $C$DW$281, DW_AT_TI_call
        CALL #_sgnGenerateFrame ; |958| 
                                        ; call occurs [#_sgnGenerateFrame] ; |958| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 960,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$282	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$282, DW_AT_low_pc(0x00)
	.dwattr $C$DW$282, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$274, DW_AT_TI_end_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$274, DW_AT_TI_end_line(0x3c0)
	.dwattr $C$DW$274, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$274

	.sect	".text"
	.global	_vpe_sim_in_file

$C$DW$283	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_sim_in_file")
	.dwattr $C$DW$283, DW_AT_low_pc(_vpe_sim_in_file)
	.dwattr $C$DW$283, DW_AT_high_pc(0x00)
	.dwattr $C$DW$283, DW_AT_TI_symbol_name("_vpe_sim_in_file")
	.dwattr $C$DW$283, DW_AT_external
	.dwattr $C$DW$283, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$283, DW_AT_TI_begin_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$283, DW_AT_TI_begin_line(0x3c6)
	.dwattr $C$DW$283, DW_AT_TI_begin_column(0x0e)
	.dwattr $C$DW$283, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 967,column 1,is_stmt,address _vpe_sim_in_file

	.dwfde $C$DW$CIE, _vpe_sim_in_file
$C$DW$284	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dsc")
	.dwattr $C$DW$284, DW_AT_TI_symbol_name("_dsc")
	.dwattr $C$DW$284, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$284, DW_AT_location[DW_OP_reg17]
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
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$285	.dwtag  DW_TAG_variable, DW_AT_name("dsc")
	.dwattr $C$DW$285, DW_AT_TI_symbol_name("_dsc")
	.dwattr $C$DW$285, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$285, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 968,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3), XAR3
        MOV XAR3, dbl(*(#_inFrame))
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 969,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#2)), AR1 ; |969| 
        MOV AR1, *(#_inCnt) ; |969| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 970,column 3,is_stmt
 nop
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 971,column 3,is_stmt
 nop
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 972,column 3,is_stmt
 nop
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 973,column 3,is_stmt
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 974,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$286	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$286, DW_AT_low_pc(0x00)
	.dwattr $C$DW$286, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$283, DW_AT_TI_end_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$283, DW_AT_TI_end_line(0x3ce)
	.dwattr $C$DW$283, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$283

	.sect	".text"
	.global	_vpe_sim_out_file

$C$DW$287	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_sim_out_file")
	.dwattr $C$DW$287, DW_AT_low_pc(_vpe_sim_out_file)
	.dwattr $C$DW$287, DW_AT_high_pc(0x00)
	.dwattr $C$DW$287, DW_AT_TI_symbol_name("_vpe_sim_out_file")
	.dwattr $C$DW$287, DW_AT_external
	.dwattr $C$DW$287, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$287, DW_AT_TI_begin_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$287, DW_AT_TI_begin_line(0x3d0)
	.dwattr $C$DW$287, DW_AT_TI_begin_column(0x0e)
	.dwattr $C$DW$287, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 977,column 1,is_stmt,address _vpe_sim_out_file

	.dwfde $C$DW$CIE, _vpe_sim_out_file
$C$DW$288	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dsc")
	.dwattr $C$DW$288, DW_AT_TI_symbol_name("_dsc")
	.dwattr $C$DW$288, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$288, DW_AT_location[DW_OP_reg17]
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
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$289	.dwtag  DW_TAG_variable, DW_AT_name("dsc")
	.dwattr $C$DW$289, DW_AT_TI_symbol_name("_dsc")
	.dwattr $C$DW$289, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$289, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 978,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3), XAR3
        MOV XAR3, dbl(*(#_outFrame))
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 979,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#2)), AR1 ; |979| 
        MOV AR1, *(#_outCnt) ; |979| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 980,column 3,is_stmt
 nop
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 981,column 3,is_stmt
 nop
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 982,column 3,is_stmt
 nop
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 983,column 3,is_stmt
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 984,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$290	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$290, DW_AT_low_pc(0x00)
	.dwattr $C$DW$290, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$287, DW_AT_TI_end_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$287, DW_AT_TI_end_line(0x3d8)
	.dwattr $C$DW$287, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$287

	.sect	".text"
	.global	_vpe_sim_flush_cache

$C$DW$291	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_sim_flush_cache")
	.dwattr $C$DW$291, DW_AT_low_pc(_vpe_sim_flush_cache)
	.dwattr $C$DW$291, DW_AT_high_pc(0x00)
	.dwattr $C$DW$291, DW_AT_TI_symbol_name("_vpe_sim_flush_cache")
	.dwattr $C$DW$291, DW_AT_external
	.dwattr $C$DW$291, DW_AT_TI_begin_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$291, DW_AT_TI_begin_line(0x3db)
	.dwattr $C$DW$291, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$291, DW_AT_TI_max_frame_size(0x01)
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 987,column 28,is_stmt,address _vpe_sim_flush_cache

	.dwfde $C$DW$CIE, _vpe_sim_flush_cache
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
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 988,column 3,is_stmt
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 989,column 1,is_stmt
$C$DW$292	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$292, DW_AT_low_pc(0x00)
	.dwattr $C$DW$292, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$291, DW_AT_TI_end_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$291, DW_AT_TI_end_line(0x3dd)
	.dwattr $C$DW$291, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$291

;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_malloc
	.global	_memset
	.global	_sgnGetSizes
	.global	_sgnControl
	.global	_sgnGenerateFrame
	.global	_sgnInit
	.global	_hlcGetSizes
	.global	_hlcInit
	.global	_hlcControl
	.global	_hlcProcess
	.global	_slmGetSizes
	.global	_slmInit
	.global	_slmControl
	.global	_slmProcess
	.global	_snlGetSizes
	.global	_snlInit
	.global	_snlProcess
	.global	_snlGetLevels
	.global	_svdGetSizes
	.global	_svdInit
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
	.global	_vpe_instantiate_nr
	.global	_vpe_config_nr
	.global	_vpe_deinstantiate_nr
	.global	_memcpy

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$68	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$68, DW_AT_byte_size(0x01)
$C$DW$293	.dwtag  DW_TAG_enumerator, DW_AT_name("vpe_SIM_PCM_ALAW"), DW_AT_const_value(0x00)
$C$DW$294	.dwtag  DW_TAG_enumerator, DW_AT_name("vpe_SIM_PCM_ULAW"), DW_AT_const_value(0x01)
$C$DW$295	.dwtag  DW_TAG_enumerator, DW_AT_name("vpe_SIM_PCM_LIN"), DW_AT_const_value(0x02)
	.dwendtag $C$DW$T$68

$C$DW$T$69	.dwtag  DW_TAG_typedef, DW_AT_name("vpeSimPcm_e")
	.dwattr $C$DW$T$69, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$T$69, DW_AT_language(DW_LANG_C)

$C$DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x04)
$C$DW$296	.dwtag  DW_TAG_member
	.dwattr $C$DW$296, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$296, DW_AT_name("f1")
	.dwattr $C$DW$296, DW_AT_TI_symbol_name("_f1")
	.dwattr $C$DW$296, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$296, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$297	.dwtag  DW_TAG_member
	.dwattr $C$DW$297, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$297, DW_AT_name("f2")
	.dwattr $C$DW$297, DW_AT_TI_symbol_name("_f2")
	.dwattr $C$DW$297, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$297, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$298	.dwtag  DW_TAG_member
	.dwattr $C$DW$298, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$298, DW_AT_name("amp1")
	.dwattr $C$DW$298, DW_AT_TI_symbol_name("_amp1")
	.dwattr $C$DW$298, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$298, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$299	.dwtag  DW_TAG_member
	.dwattr $C$DW$299, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$299, DW_AT_name("amp2")
	.dwattr $C$DW$299, DW_AT_TI_symbol_name("_amp2")
	.dwattr $C$DW$299, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$299, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$23


$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x06)
$C$DW$300	.dwtag  DW_TAG_member
	.dwattr $C$DW$300, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$300, DW_AT_name("duration")
	.dwattr $C$DW$300, DW_AT_TI_symbol_name("_duration")
	.dwattr $C$DW$300, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$300, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$301	.dwtag  DW_TAG_member
	.dwattr $C$DW$301, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$301, DW_AT_name("dataptr")
	.dwattr $C$DW$301, DW_AT_TI_symbol_name("_dataptr")
	.dwattr $C$DW$301, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$301, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$302	.dwtag  DW_TAG_member
	.dwattr $C$DW$302, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$302, DW_AT_name("numword")
	.dwattr $C$DW$302, DW_AT_TI_symbol_name("_numword")
	.dwattr $C$DW$302, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$302, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$28


$C$DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x08)
$C$DW$303	.dwtag  DW_TAG_member
	.dwattr $C$DW$303, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$303, DW_AT_name("code")
	.dwattr $C$DW$303, DW_AT_TI_symbol_name("_code")
	.dwattr $C$DW$303, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$303, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$304	.dwtag  DW_TAG_member
	.dwattr $C$DW$304, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$304, DW_AT_name("Fs")
	.dwattr $C$DW$304, DW_AT_TI_symbol_name("_Fs")
	.dwattr $C$DW$304, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$304, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$305	.dwtag  DW_TAG_member
	.dwattr $C$DW$305, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$305, DW_AT_name("u")
	.dwattr $C$DW$305, DW_AT_TI_symbol_name("_u")
	.dwattr $C$DW$305, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$305, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$29

$C$DW$T$73	.dwtag  DW_TAG_typedef, DW_AT_name("sgnControl_t")
	.dwattr $C$DW$T$73, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$73, DW_AT_language(DW_LANG_C)
$C$DW$T$74	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$74, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$T$74, DW_AT_address_class(0x17)

$C$DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x04)
$C$DW$306	.dwtag  DW_TAG_member
	.dwattr $C$DW$306, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$306, DW_AT_name("frame")
	.dwattr $C$DW$306, DW_AT_TI_symbol_name("_frame")
	.dwattr $C$DW$306, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$306, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$307	.dwtag  DW_TAG_member
	.dwattr $C$DW$307, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$307, DW_AT_name("cnt")
	.dwattr $C$DW$307, DW_AT_TI_symbol_name("_cnt")
	.dwattr $C$DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$307, DW_AT_accessibility(DW_ACCESS_public)
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
$C$DW$308	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$308, DW_AT_type(*$C$DW$T$39)
	.dwendtag $C$DW$T$40

$C$DW$T$41	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$41, DW_AT_address_class(0x20)

$C$DW$T$51	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x20)
$C$DW$309	.dwtag  DW_TAG_member
	.dwattr $C$DW$309, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$309, DW_AT_name("delay")
	.dwattr $C$DW$309, DW_AT_TI_symbol_name("_delay")
	.dwattr $C$DW$309, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$309, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$310	.dwtag  DW_TAG_member
	.dwattr $C$DW$310, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$310, DW_AT_name("dc_offset")
	.dwattr $C$DW$310, DW_AT_TI_symbol_name("_dc_offset")
	.dwattr $C$DW$310, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$310, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$311	.dwtag  DW_TAG_member
	.dwattr $C$DW$311, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$311, DW_AT_name("wf_type")
	.dwattr $C$DW$311, DW_AT_TI_symbol_name("_wf_type")
	.dwattr $C$DW$311, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$311, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$312	.dwtag  DW_TAG_member
	.dwattr $C$DW$312, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$312, DW_AT_name("f1")
	.dwattr $C$DW$312, DW_AT_TI_symbol_name("_f1")
	.dwattr $C$DW$312, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$312, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$313	.dwtag  DW_TAG_member
	.dwattr $C$DW$313, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$313, DW_AT_name("f2")
	.dwattr $C$DW$313, DW_AT_TI_symbol_name("_f2")
	.dwattr $C$DW$313, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$313, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$314	.dwtag  DW_TAG_member
	.dwattr $C$DW$314, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$314, DW_AT_name("Fs")
	.dwattr $C$DW$314, DW_AT_TI_symbol_name("_Fs")
	.dwattr $C$DW$314, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$314, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$315	.dwtag  DW_TAG_member
	.dwattr $C$DW$315, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$315, DW_AT_name("t_amp1")
	.dwattr $C$DW$315, DW_AT_TI_symbol_name("_t_amp1")
	.dwattr $C$DW$315, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$315, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$316	.dwtag  DW_TAG_member
	.dwattr $C$DW$316, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$316, DW_AT_name("t_amp2")
	.dwattr $C$DW$316, DW_AT_TI_symbol_name("_t_amp2")
	.dwattr $C$DW$316, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$316, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$317	.dwtag  DW_TAG_member
	.dwattr $C$DW$317, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$317, DW_AT_name("pr_period")
	.dwattr $C$DW$317, DW_AT_TI_symbol_name("_pr_period")
	.dwattr $C$DW$317, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$317, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$318	.dwtag  DW_TAG_member
	.dwattr $C$DW$318, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$318, DW_AT_name("pr_enable")
	.dwattr $C$DW$318, DW_AT_TI_symbol_name("_pr_enable")
	.dwattr $C$DW$318, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$318, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$319	.dwtag  DW_TAG_member
	.dwattr $C$DW$319, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$319, DW_AT_name("fsk_duration")
	.dwattr $C$DW$319, DW_AT_TI_symbol_name("_fsk_duration")
	.dwattr $C$DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$319, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$320	.dwtag  DW_TAG_member
	.dwattr $C$DW$320, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$320, DW_AT_name("fsk_dataptr")
	.dwattr $C$DW$320, DW_AT_TI_symbol_name("_fsk_dataptr")
	.dwattr $C$DW$320, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$320, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$321	.dwtag  DW_TAG_member
	.dwattr $C$DW$321, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$321, DW_AT_name("fsk_numword")
	.dwattr $C$DW$321, DW_AT_TI_symbol_name("_fsk_numword")
	.dwattr $C$DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$321, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$322	.dwtag  DW_TAG_member
	.dwattr $C$DW$322, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$322, DW_AT_name("noise_level")
	.dwattr $C$DW$322, DW_AT_TI_symbol_name("_noise_level")
	.dwattr $C$DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$322, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$323	.dwtag  DW_TAG_member
	.dwattr $C$DW$323, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$323, DW_AT_name("noise_seed")
	.dwattr $C$DW$323, DW_AT_TI_symbol_name("_noise_seed")
	.dwattr $C$DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$323, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$324	.dwtag  DW_TAG_member
	.dwattr $C$DW$324, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$324, DW_AT_name("noise_type")
	.dwattr $C$DW$324, DW_AT_TI_symbol_name("_noise_type")
	.dwattr $C$DW$324, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$324, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$325	.dwtag  DW_TAG_member
	.dwattr $C$DW$325, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$325, DW_AT_name("power_level")
	.dwattr $C$DW$325, DW_AT_TI_symbol_name("_power_level")
	.dwattr $C$DW$325, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$325, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$326	.dwtag  DW_TAG_member
	.dwattr $C$DW$326, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$326, DW_AT_name("hoth_wng_seed")
	.dwattr $C$DW$326, DW_AT_TI_symbol_name("_hoth_wng_seed")
	.dwattr $C$DW$326, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$326, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$327	.dwtag  DW_TAG_member
	.dwattr $C$DW$327, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$327, DW_AT_name("file_io_fcn")
	.dwattr $C$DW$327, DW_AT_TI_symbol_name("_file_io_fcn")
	.dwattr $C$DW$327, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$327, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$328	.dwtag  DW_TAG_member
	.dwattr $C$DW$328, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$328, DW_AT_name("addr")
	.dwattr $C$DW$328, DW_AT_TI_symbol_name("_addr")
	.dwattr $C$DW$328, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$328, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$329	.dwtag  DW_TAG_member
	.dwattr $C$DW$329, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$329, DW_AT_name("count")
	.dwattr $C$DW$329, DW_AT_TI_symbol_name("_count")
	.dwattr $C$DW$329, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$329, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$330	.dwtag  DW_TAG_member
	.dwattr $C$DW$330, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$330, DW_AT_name("pcmtbl")
	.dwattr $C$DW$330, DW_AT_TI_symbol_name("_pcmtbl")
	.dwattr $C$DW$330, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$330, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$331	.dwtag  DW_TAG_member
	.dwattr $C$DW$331, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$331, DW_AT_name("exception")
	.dwattr $C$DW$331, DW_AT_TI_symbol_name("_exception")
	.dwattr $C$DW$331, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$331, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$332	.dwtag  DW_TAG_member
	.dwattr $C$DW$332, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$332, DW_AT_name("debug")
	.dwattr $C$DW$332, DW_AT_TI_symbol_name("_debug")
	.dwattr $C$DW$332, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$332, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$51

$C$DW$T$75	.dwtag  DW_TAG_typedef, DW_AT_name("sgnConfig_t")
	.dwattr $C$DW$T$75, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$T$75, DW_AT_language(DW_LANG_C)
$C$DW$T$76	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$76, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$T$76, DW_AT_address_class(0x17)

$C$DW$T$53	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x06)
$C$DW$333	.dwtag  DW_TAG_member
	.dwattr $C$DW$333, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$333, DW_AT_name("valid_bf")
	.dwattr $C$DW$333, DW_AT_TI_symbol_name("_valid_bf")
	.dwattr $C$DW$333, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$333, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$334	.dwtag  DW_TAG_member
	.dwattr $C$DW$334, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$334, DW_AT_name("thresh")
	.dwattr $C$DW$334, DW_AT_TI_symbol_name("_thresh")
	.dwattr $C$DW$334, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$334, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$335	.dwtag  DW_TAG_member
	.dwattr $C$DW$335, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$335, DW_AT_name("ramp_out_period")
	.dwattr $C$DW$335, DW_AT_TI_symbol_name("_ramp_out_period")
	.dwattr $C$DW$335, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$335, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$336	.dwtag  DW_TAG_member
	.dwattr $C$DW$336, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$336, DW_AT_name("power_tc")
	.dwattr $C$DW$336, DW_AT_TI_symbol_name("_power_tc")
	.dwattr $C$DW$336, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$336, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$337	.dwtag  DW_TAG_member
	.dwattr $C$DW$337, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$337, DW_AT_name("srate_factor")
	.dwattr $C$DW$337, DW_AT_TI_symbol_name("_srate_factor")
	.dwattr $C$DW$337, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$337, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$338	.dwtag  DW_TAG_member
	.dwattr $C$DW$338, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$338, DW_AT_name("frm_len")
	.dwattr $C$DW$338, DW_AT_TI_symbol_name("_frm_len")
	.dwattr $C$DW$338, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$338, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$53

$C$DW$T$77	.dwtag  DW_TAG_typedef, DW_AT_name("hlcConfig_t")
	.dwattr $C$DW$T$77, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$T$77, DW_AT_language(DW_LANG_C)
$C$DW$T$78	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$78, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$T$78, DW_AT_address_class(0x17)

$C$DW$T$54	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$54, DW_AT_byte_size(0x02)
$C$DW$339	.dwtag  DW_TAG_member
	.dwattr $C$DW$339, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$339, DW_AT_name("ctl_code")
	.dwattr $C$DW$339, DW_AT_TI_symbol_name("_ctl_code")
	.dwattr $C$DW$339, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$339, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$340	.dwtag  DW_TAG_member
	.dwattr $C$DW$340, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$340, DW_AT_name("u")
	.dwattr $C$DW$340, DW_AT_TI_symbol_name("_u")
	.dwattr $C$DW$340, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$340, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$54

$C$DW$T$64	.dwtag  DW_TAG_typedef, DW_AT_name("hlcControl_t")
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$T$64, DW_AT_language(DW_LANG_C)
$C$DW$T$79	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$79, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$79, DW_AT_address_class(0x17)

$C$DW$T$55	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x02)
$C$DW$341	.dwtag  DW_TAG_member
	.dwattr $C$DW$341, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$341, DW_AT_name("valid_bf")
	.dwattr $C$DW$341, DW_AT_TI_symbol_name("_valid_bf")
	.dwattr $C$DW$341, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$341, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$342	.dwtag  DW_TAG_member
	.dwattr $C$DW$342, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$342, DW_AT_name("srate_factor")
	.dwattr $C$DW$342, DW_AT_TI_symbol_name("_srate_factor")
	.dwattr $C$DW$342, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$342, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$55

$C$DW$T$80	.dwtag  DW_TAG_typedef, DW_AT_name("slmConfig_t")
	.dwattr $C$DW$T$80, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$T$80, DW_AT_language(DW_LANG_C)
$C$DW$T$81	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$81, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$T$81, DW_AT_address_class(0x17)

$C$DW$T$56	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$56, DW_AT_byte_size(0x0b)
$C$DW$343	.dwtag  DW_TAG_member
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$343, DW_AT_name("samp_rate")
	.dwattr $C$DW$343, DW_AT_TI_symbol_name("_samp_rate")
	.dwattr $C$DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$343, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$344	.dwtag  DW_TAG_member
	.dwattr $C$DW$344, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$344, DW_AT_name("delay")
	.dwattr $C$DW$344, DW_AT_TI_symbol_name("_delay")
	.dwattr $C$DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$344, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$345	.dwtag  DW_TAG_member
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$345, DW_AT_name("band_bin1")
	.dwattr $C$DW$345, DW_AT_TI_symbol_name("_band_bin1")
	.dwattr $C$DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$345, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$346	.dwtag  DW_TAG_member
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$346, DW_AT_name("band_bin2")
	.dwattr $C$DW$346, DW_AT_TI_symbol_name("_band_bin2")
	.dwattr $C$DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$346, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$347	.dwtag  DW_TAG_member
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$347, DW_AT_name("band1_max_atten")
	.dwattr $C$DW$347, DW_AT_TI_symbol_name("_band1_max_atten")
	.dwattr $C$DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$347, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$348	.dwtag  DW_TAG_member
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$348, DW_AT_name("band2_max_atten")
	.dwattr $C$DW$348, DW_AT_TI_symbol_name("_band2_max_atten")
	.dwattr $C$DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$348, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$349	.dwtag  DW_TAG_member
	.dwattr $C$DW$349, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$349, DW_AT_name("band3_max_atten")
	.dwattr $C$DW$349, DW_AT_TI_symbol_name("_band3_max_atten")
	.dwattr $C$DW$349, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$349, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$350	.dwtag  DW_TAG_member
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$350, DW_AT_name("sig_upd_rate_max")
	.dwattr $C$DW$350, DW_AT_TI_symbol_name("_sig_upd_rate_max")
	.dwattr $C$DW$350, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$350, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$351	.dwtag  DW_TAG_member
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$351, DW_AT_name("sig_upd_rate_min")
	.dwattr $C$DW$351, DW_AT_TI_symbol_name("_sig_upd_rate_min")
	.dwattr $C$DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$351, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$352	.dwtag  DW_TAG_member
	.dwattr $C$DW$352, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$352, DW_AT_name("noise_thresh")
	.dwattr $C$DW$352, DW_AT_TI_symbol_name("_noise_thresh")
	.dwattr $C$DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$352, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$353	.dwtag  DW_TAG_member
	.dwattr $C$DW$353, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$353, DW_AT_name("noise_hangover")
	.dwattr $C$DW$353, DW_AT_TI_symbol_name("_noise_hangover")
	.dwattr $C$DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$353, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$56

$C$DW$T$65	.dwtag  DW_TAG_typedef, DW_AT_name("vpeASNRPars_t")
	.dwattr $C$DW$T$65, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$T$65, DW_AT_language(DW_LANG_C)
$C$DW$T$82	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$T$82, DW_AT_address_class(0x17)

$C$DW$T$57	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$57, DW_AT_byte_size(0x0e)
$C$DW$354	.dwtag  DW_TAG_member
	.dwattr $C$DW$354, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$354, DW_AT_name("state")
	.dwattr $C$DW$354, DW_AT_TI_symbol_name("_state")
	.dwattr $C$DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$354, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$355	.dwtag  DW_TAG_member
	.dwattr $C$DW$355, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$355, DW_AT_name("dcoffset")
	.dwattr $C$DW$355, DW_AT_TI_symbol_name("_dcoffset")
	.dwattr $C$DW$355, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$355, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$356	.dwtag  DW_TAG_member
	.dwattr $C$DW$356, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$356, DW_AT_name("wftype")
	.dwattr $C$DW$356, DW_AT_TI_symbol_name("_wftype")
	.dwattr $C$DW$356, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$356, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$357	.dwtag  DW_TAG_member
	.dwattr $C$DW$357, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$357, DW_AT_name("f1")
	.dwattr $C$DW$357, DW_AT_TI_symbol_name("_f1")
	.dwattr $C$DW$357, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$357, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$358	.dwtag  DW_TAG_member
	.dwattr $C$DW$358, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$358, DW_AT_name("f2")
	.dwattr $C$DW$358, DW_AT_TI_symbol_name("_f2")
	.dwattr $C$DW$358, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$358, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$359	.dwtag  DW_TAG_member
	.dwattr $C$DW$359, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$359, DW_AT_name("amp1")
	.dwattr $C$DW$359, DW_AT_TI_symbol_name("_amp1")
	.dwattr $C$DW$359, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$359, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$360	.dwtag  DW_TAG_member
	.dwattr $C$DW$360, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$360, DW_AT_name("amp2")
	.dwattr $C$DW$360, DW_AT_TI_symbol_name("_amp2")
	.dwattr $C$DW$360, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$360, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$361	.dwtag  DW_TAG_member
	.dwattr $C$DW$361, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$361, DW_AT_name("nlevel")
	.dwattr $C$DW$361, DW_AT_TI_symbol_name("_nlevel")
	.dwattr $C$DW$361, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$361, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$362	.dwtag  DW_TAG_member
	.dwattr $C$DW$362, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$362, DW_AT_name("nseed")
	.dwattr $C$DW$362, DW_AT_TI_symbol_name("_nseed")
	.dwattr $C$DW$362, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$362, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$363	.dwtag  DW_TAG_member
	.dwattr $C$DW$363, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$363, DW_AT_name("ntype")
	.dwattr $C$DW$363, DW_AT_TI_symbol_name("_ntype")
	.dwattr $C$DW$363, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$363, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$364	.dwtag  DW_TAG_member
	.dwattr $C$DW$364, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$364, DW_AT_name("pow_level")
	.dwattr $C$DW$364, DW_AT_TI_symbol_name("_pow_level")
	.dwattr $C$DW$364, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$364, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$365	.dwtag  DW_TAG_member
	.dwattr $C$DW$365, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$365, DW_AT_name("hoth_seed")
	.dwattr $C$DW$365, DW_AT_TI_symbol_name("_hoth_seed")
	.dwattr $C$DW$365, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$365, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$57

$C$DW$T$66	.dwtag  DW_TAG_typedef, DW_AT_name("vpeSGNPars_t")
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$66, DW_AT_language(DW_LANG_C)
$C$DW$T$83	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$83, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$T$83, DW_AT_address_class(0x17)

$C$DW$T$59	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$59, DW_AT_byte_size(0x0c)
$C$DW$366	.dwtag  DW_TAG_member
	.dwattr $C$DW$366, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$366, DW_AT_name("fd")
	.dwattr $C$DW$366, DW_AT_TI_symbol_name("_fd")
	.dwattr $C$DW$366, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$366, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$367	.dwtag  DW_TAG_member
	.dwattr $C$DW$367, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$367, DW_AT_name("buf")
	.dwattr $C$DW$367, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$367, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$367, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$368	.dwtag  DW_TAG_member
	.dwattr $C$DW$368, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$368, DW_AT_name("pos")
	.dwattr $C$DW$368, DW_AT_TI_symbol_name("_pos")
	.dwattr $C$DW$368, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$368, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$369	.dwtag  DW_TAG_member
	.dwattr $C$DW$369, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$369, DW_AT_name("bufend")
	.dwattr $C$DW$369, DW_AT_TI_symbol_name("_bufend")
	.dwattr $C$DW$369, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$369, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$370	.dwtag  DW_TAG_member
	.dwattr $C$DW$370, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$370, DW_AT_name("buff_stop")
	.dwattr $C$DW$370, DW_AT_TI_symbol_name("_buff_stop")
	.dwattr $C$DW$370, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$370, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$371	.dwtag  DW_TAG_member
	.dwattr $C$DW$371, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$371, DW_AT_name("flags")
	.dwattr $C$DW$371, DW_AT_TI_symbol_name("_flags")
	.dwattr $C$DW$371, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$371, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$59

$C$DW$T$60	.dwtag  DW_TAG_typedef, DW_AT_name("FILE")
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$T$60, DW_AT_language(DW_LANG_C)
$C$DW$T$61	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$61, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$T$61, DW_AT_address_class(0x17)

$C$DW$T$63	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$63, DW_AT_byte_size(0x104)
$C$DW$372	.dwtag  DW_TAG_member
	.dwattr $C$DW$372, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$372, DW_AT_name("fio")
	.dwattr $C$DW$372, DW_AT_TI_symbol_name("_fio")
	.dwattr $C$DW$372, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$372, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$373	.dwtag  DW_TAG_member
	.dwattr $C$DW$373, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$373, DW_AT_name("eof")
	.dwattr $C$DW$373, DW_AT_TI_symbol_name("_eof")
	.dwattr $C$DW$373, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$373, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$374	.dwtag  DW_TAG_member
	.dwattr $C$DW$374, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$374, DW_AT_name("fptr")
	.dwattr $C$DW$374, DW_AT_TI_symbol_name("_fptr")
	.dwattr $C$DW$374, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$374, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$375	.dwtag  DW_TAG_member
	.dwattr $C$DW$375, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$375, DW_AT_name("fname")
	.dwattr $C$DW$375, DW_AT_TI_symbol_name("_fname")
	.dwattr $C$DW$375, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$375, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$63

$C$DW$T$67	.dwtag  DW_TAG_typedef, DW_AT_name("vpeSimFileIo_t")
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$67, DW_AT_language(DW_LANG_C)

$C$DW$T$70	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$70, DW_AT_byte_size(0x444)
$C$DW$376	.dwtag  DW_TAG_member
	.dwattr $C$DW$376, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$376, DW_AT_name("exec")
	.dwattr $C$DW$376, DW_AT_TI_symbol_name("_exec")
	.dwattr $C$DW$376, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$376, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$377	.dwtag  DW_TAG_member
	.dwattr $C$DW$377, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$377, DW_AT_name("hlc_on")
	.dwattr $C$DW$377, DW_AT_TI_symbol_name("_hlc_on")
	.dwattr $C$DW$377, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$377, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$378	.dwtag  DW_TAG_member
	.dwattr $C$DW$378, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$378, DW_AT_name("slm_on")
	.dwattr $C$DW$378, DW_AT_TI_symbol_name("_slm_on")
	.dwattr $C$DW$378, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$378, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$379	.dwtag  DW_TAG_member
	.dwattr $C$DW$379, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$379, DW_AT_name("snl_on")
	.dwattr $C$DW$379, DW_AT_TI_symbol_name("_snl_on")
	.dwattr $C$DW$379, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$379, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$380	.dwtag  DW_TAG_member
	.dwattr $C$DW$380, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$380, DW_AT_name("svd_on")
	.dwattr $C$DW$380, DW_AT_TI_symbol_name("_svd_on")
	.dwattr $C$DW$380, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$380, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$381	.dwtag  DW_TAG_member
	.dwattr $C$DW$381, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$381, DW_AT_name("nr_on")
	.dwattr $C$DW$381, DW_AT_TI_symbol_name("_nr_on")
	.dwattr $C$DW$381, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$381, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$382	.dwtag  DW_TAG_member
	.dwattr $C$DW$382, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$382, DW_AT_name("decim_on")
	.dwattr $C$DW$382, DW_AT_TI_symbol_name("_decim_on")
	.dwattr $C$DW$382, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$382, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$383	.dwtag  DW_TAG_member
	.dwattr $C$DW$383, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$383, DW_AT_name("interp_on")
	.dwattr $C$DW$383, DW_AT_TI_symbol_name("_interp_on")
	.dwattr $C$DW$383, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$383, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$384	.dwtag  DW_TAG_member
	.dwattr $C$DW$384, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$384, DW_AT_name("ulaw_enc_on")
	.dwattr $C$DW$384, DW_AT_TI_symbol_name("_ulaw_enc_on")
	.dwattr $C$DW$384, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$384, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$385	.dwtag  DW_TAG_member
	.dwattr $C$DW$385, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$385, DW_AT_name("ulaw_dec_on")
	.dwattr $C$DW$385, DW_AT_TI_symbol_name("_ulaw_dec_on")
	.dwattr $C$DW$385, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$385, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$386	.dwtag  DW_TAG_member
	.dwattr $C$DW$386, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$386, DW_AT_name("alaw_enc_on")
	.dwattr $C$DW$386, DW_AT_TI_symbol_name("_alaw_enc_on")
	.dwattr $C$DW$386, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$386, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$387	.dwtag  DW_TAG_member
	.dwattr $C$DW$387, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$387, DW_AT_name("alaw_dec_on")
	.dwattr $C$DW$387, DW_AT_TI_symbol_name("_alaw_dec_on")
	.dwattr $C$DW$387, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$387, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$388	.dwtag  DW_TAG_member
	.dwattr $C$DW$388, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$388, DW_AT_name("sample_cnt")
	.dwattr $C$DW$388, DW_AT_TI_symbol_name("_sample_cnt")
	.dwattr $C$DW$388, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$388, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$389	.dwtag  DW_TAG_member
	.dwattr $C$DW$389, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$389, DW_AT_name("sample_bp")
	.dwattr $C$DW$389, DW_AT_TI_symbol_name("_sample_bp")
	.dwattr $C$DW$389, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$389, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$390	.dwtag  DW_TAG_member
	.dwattr $C$DW$390, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$390, DW_AT_name("sgn")
	.dwattr $C$DW$390, DW_AT_TI_symbol_name("_sgn")
	.dwattr $C$DW$390, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$390, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$391	.dwtag  DW_TAG_member
	.dwattr $C$DW$391, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$391, DW_AT_name("cfg_sgn")
	.dwattr $C$DW$391, DW_AT_TI_symbol_name("_cfg_sgn")
	.dwattr $C$DW$391, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$391, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$392	.dwtag  DW_TAG_member
	.dwattr $C$DW$392, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$392, DW_AT_name("cfg_hlc")
	.dwattr $C$DW$392, DW_AT_TI_symbol_name("_cfg_hlc")
	.dwattr $C$DW$392, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$392, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$393	.dwtag  DW_TAG_member
	.dwattr $C$DW$393, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$393, DW_AT_name("cfg_slm")
	.dwattr $C$DW$393, DW_AT_TI_symbol_name("_cfg_slm")
	.dwattr $C$DW$393, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$393, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$394	.dwtag  DW_TAG_member
	.dwattr $C$DW$394, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$394, DW_AT_name("slm_mod")
	.dwattr $C$DW$394, DW_AT_TI_symbol_name("_slm_mod")
	.dwattr $C$DW$394, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$394, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$395	.dwtag  DW_TAG_member
	.dwattr $C$DW$395, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$395, DW_AT_name("Fs")
	.dwattr $C$DW$395, DW_AT_TI_symbol_name("_Fs")
	.dwattr $C$DW$395, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$395, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$396	.dwtag  DW_TAG_member
	.dwattr $C$DW$396, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$396, DW_AT_name("hlc_ctrl")
	.dwattr $C$DW$396, DW_AT_TI_symbol_name("_hlc_ctrl")
	.dwattr $C$DW$396, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$396, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$397	.dwtag  DW_TAG_member
	.dwattr $C$DW$397, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$397, DW_AT_name("asnrParam")
	.dwattr $C$DW$397, DW_AT_TI_symbol_name("_asnrParam")
	.dwattr $C$DW$397, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$397, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$398	.dwtag  DW_TAG_member
	.dwattr $C$DW$398, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$398, DW_AT_name("sgnParam")
	.dwattr $C$DW$398, DW_AT_TI_symbol_name("_sgnParam")
	.dwattr $C$DW$398, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$398, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$399	.dwtag  DW_TAG_member
	.dwattr $C$DW$399, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$399, DW_AT_name("sigIn")
	.dwattr $C$DW$399, DW_AT_TI_symbol_name("_sigIn")
	.dwattr $C$DW$399, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$399, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$400	.dwtag  DW_TAG_member
	.dwattr $C$DW$400, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$400, DW_AT_name("sigOut")
	.dwattr $C$DW$400, DW_AT_TI_symbol_name("_sigOut")
	.dwattr $C$DW$400, DW_AT_data_member_location[DW_OP_plus_uconst 0x136]
	.dwattr $C$DW$400, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$401	.dwtag  DW_TAG_member
	.dwattr $C$DW$401, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$401, DW_AT_name("config")
	.dwattr $C$DW$401, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$401, DW_AT_data_member_location[DW_OP_plus_uconst 0x23a]
	.dwattr $C$DW$401, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$402	.dwtag  DW_TAG_member
	.dwattr $C$DW$402, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$402, DW_AT_name("pcmin_format")
	.dwattr $C$DW$402, DW_AT_TI_symbol_name("_pcmin_format")
	.dwattr $C$DW$402, DW_AT_data_member_location[DW_OP_plus_uconst 0x33e]
	.dwattr $C$DW$402, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$403	.dwtag  DW_TAG_member
	.dwattr $C$DW$403, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$403, DW_AT_name("pcmout_format")
	.dwattr $C$DW$403, DW_AT_TI_symbol_name("_pcmout_format")
	.dwattr $C$DW$403, DW_AT_data_member_location[DW_OP_plus_uconst 0x33f]
	.dwattr $C$DW$403, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$404	.dwtag  DW_TAG_member
	.dwattr $C$DW$404, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$404, DW_AT_name("data")
	.dwattr $C$DW$404, DW_AT_TI_symbol_name("_data")
	.dwattr $C$DW$404, DW_AT_data_member_location[DW_OP_plus_uconst 0x340]
	.dwattr $C$DW$404, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$405	.dwtag  DW_TAG_member
	.dwattr $C$DW$405, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$405, DW_AT_name("error_id")
	.dwattr $C$DW$405, DW_AT_TI_symbol_name("_error_id")
	.dwattr $C$DW$405, DW_AT_data_member_location[DW_OP_plus_uconst 0x341]
	.dwattr $C$DW$405, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$406	.dwtag  DW_TAG_member
	.dwattr $C$DW$406, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$406, DW_AT_name("frame_size_in")
	.dwattr $C$DW$406, DW_AT_TI_symbol_name("_frame_size_in")
	.dwattr $C$DW$406, DW_AT_data_member_location[DW_OP_plus_uconst 0x342]
	.dwattr $C$DW$406, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$407	.dwtag  DW_TAG_member
	.dwattr $C$DW$407, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$407, DW_AT_name("frame_size_out")
	.dwattr $C$DW$407, DW_AT_TI_symbol_name("_frame_size_out")
	.dwattr $C$DW$407, DW_AT_data_member_location[DW_OP_plus_uconst 0x343]
	.dwattr $C$DW$407, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$408	.dwtag  DW_TAG_member
	.dwattr $C$DW$408, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$408, DW_AT_name("baseDir")
	.dwattr $C$DW$408, DW_AT_TI_symbol_name("_baseDir")
	.dwattr $C$DW$408, DW_AT_data_member_location[DW_OP_plus_uconst 0x344]
	.dwattr $C$DW$408, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$70

$C$DW$T$84	.dwtag  DW_TAG_typedef, DW_AT_name("vpeSimConfig_t")
	.dwattr $C$DW$T$84, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$T$84, DW_AT_language(DW_LANG_C)
$C$DW$T$85	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$85, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$T$85, DW_AT_address_class(0x17)

$C$DW$T$71	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$71, DW_AT_byte_size(0x06)
$C$DW$409	.dwtag  DW_TAG_member
	.dwattr $C$DW$409, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$409, DW_AT_name("dc_offset")
	.dwattr $C$DW$409, DW_AT_TI_symbol_name("_dc_offset")
	.dwattr $C$DW$409, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$409, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$410	.dwtag  DW_TAG_member
	.dwattr $C$DW$410, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$410, DW_AT_name("pr_period")
	.dwattr $C$DW$410, DW_AT_TI_symbol_name("_pr_period")
	.dwattr $C$DW$410, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$410, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$411	.dwtag  DW_TAG_member
	.dwattr $C$DW$411, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$411, DW_AT_name("t")
	.dwattr $C$DW$411, DW_AT_TI_symbol_name("_t")
	.dwattr $C$DW$411, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$411, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$412	.dwtag  DW_TAG_member
	.dwattr $C$DW$412, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$412, DW_AT_name("noise_level")
	.dwattr $C$DW$412, DW_AT_TI_symbol_name("_noise_level")
	.dwattr $C$DW$412, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$412, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$413	.dwtag  DW_TAG_member
	.dwattr $C$DW$413, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$413, DW_AT_name("fsk")
	.dwattr $C$DW$413, DW_AT_TI_symbol_name("_fsk")
	.dwattr $C$DW$413, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$413, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$414	.dwtag  DW_TAG_member
	.dwattr $C$DW$414, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$414, DW_AT_name("power_level")
	.dwattr $C$DW$414, DW_AT_TI_symbol_name("_power_level")
	.dwattr $C$DW$414, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$414, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$71


$C$DW$T$72	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$72, DW_AT_byte_size(0x01)
$C$DW$415	.dwtag  DW_TAG_member
	.dwattr $C$DW$415, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$415, DW_AT_name("thresh")
	.dwattr $C$DW$415, DW_AT_TI_symbol_name("_thresh")
	.dwattr $C$DW$415, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$415, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$72

$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x17)

$C$DW$T$49	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$49, DW_AT_language(DW_LANG_C)
$C$DW$416	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$416, DW_AT_type(*$C$DW$T$37)
$C$DW$417	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$417, DW_AT_type(*$C$DW$T$48)
	.dwendtag $C$DW$T$49

$C$DW$T$50	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$T$50, DW_AT_address_class(0x20)
$C$DW$418	.dwtag  DW_TAG_TI_far_type
$C$DW$T$86	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$86, DW_AT_type(*$C$DW$418)
$C$DW$T$87	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$87, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$T$87, DW_AT_address_class(0x17)
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
$C$DW$T$58	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$58, DW_AT_address_class(0x17)
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
$C$DW$T$123	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$123, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$123, DW_AT_address_class(0x17)
$C$DW$T$20	.dwtag  DW_TAG_typedef, DW_AT_name("int_least16_t")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_language(DW_LANG_C)
$C$DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("tint")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
$C$DW$T$52	.dwtag  DW_TAG_typedef, DW_AT_name("Fract")
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$52, DW_AT_language(DW_LANG_C)
$C$DW$419	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$419, DW_AT_type(*$C$DW$T$52)
$C$DW$T$100	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$100, DW_AT_type(*$C$DW$419)
$C$DW$T$101	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$101, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$101, DW_AT_address_class(0x17)
$C$DW$T$127	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$127, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$T$127, DW_AT_address_class(0x17)
$C$DW$T$27	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$27, DW_AT_address_class(0x17)

$C$DW$T$154	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$154, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$154, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$154, DW_AT_byte_size(0x01)
$C$DW$420	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$420, DW_AT_upper_bound(0x00)
	.dwendtag $C$DW$T$154

$C$DW$T$22	.dwtag  DW_TAG_typedef, DW_AT_name("linSample")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
$C$DW$T$30	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$30, DW_AT_address_class(0x17)

$C$DW$T$155	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$155, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$155, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$155, DW_AT_byte_size(0x140)
$C$DW$421	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$421, DW_AT_upper_bound(0x13f)
	.dwendtag $C$DW$T$155


$C$DW$T$156	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$156, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$156, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$156, DW_AT_byte_size(0x280)
$C$DW$422	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$422, DW_AT_upper_bound(0x27f)
	.dwendtag $C$DW$T$156


$C$DW$T$157	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$157, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$157, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$157, DW_AT_byte_size(0xc0)
$C$DW$423	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$423, DW_AT_upper_bound(0xbf)
	.dwendtag $C$DW$T$157


$C$DW$T$159	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$159, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$159, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$159, DW_AT_byte_size(0xb0)
$C$DW$424	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$424, DW_AT_upper_bound(0xaf)
	.dwendtag $C$DW$T$159

$C$DW$425	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$425, DW_AT_type(*$C$DW$T$21)
$C$DW$T$45	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$425)
$C$DW$T$46	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$46, DW_AT_address_class(0x17)
$C$DW$T$32	.dwtag  DW_TAG_typedef, DW_AT_name("int_least8_t")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$32, DW_AT_language(DW_LANG_C)
$C$DW$T$33	.dwtag  DW_TAG_typedef, DW_AT_name("tshort")
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$33, DW_AT_language(DW_LANG_C)
$C$DW$T$34	.dwtag  DW_TAG_typedef, DW_AT_name("tbool")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)
$C$DW$T$88	.dwtag  DW_TAG_typedef, DW_AT_name("size_t")
	.dwattr $C$DW$T$88, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$88, DW_AT_language(DW_LANG_C)
$C$DW$T$35	.dwtag  DW_TAG_typedef, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$35, DW_AT_language(DW_LANG_C)
$C$DW$T$36	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least16_t")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)
$C$DW$T$37	.dwtag  DW_TAG_typedef, DW_AT_name("tuint")
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
$C$DW$T$144	.dwtag  DW_TAG_typedef, DW_AT_name("UFract")
	.dwattr $C$DW$T$144, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$144, DW_AT_language(DW_LANG_C)
$C$DW$T$145	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$145, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$T$145, DW_AT_address_class(0x17)
$C$DW$T$104	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$104, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$104, DW_AT_address_class(0x17)
$C$DW$T$163	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least8_t")
	.dwattr $C$DW$T$163, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$163, DW_AT_language(DW_LANG_C)
$C$DW$T$164	.dwtag  DW_TAG_typedef, DW_AT_name("tword")
	.dwattr $C$DW$T$164, DW_AT_type(*$C$DW$T$163)
	.dwattr $C$DW$T$164, DW_AT_language(DW_LANG_C)

$C$DW$T$165	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$165, DW_AT_type(*$C$DW$T$164)
	.dwattr $C$DW$T$165, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$165, DW_AT_byte_size(0x280)
$C$DW$426	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$426, DW_AT_upper_bound(0x27f)
	.dwendtag $C$DW$T$165

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
$C$DW$T$148	.dwtag  DW_TAG_typedef, DW_AT_name("LFract")
	.dwattr $C$DW$T$148, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$148, DW_AT_language(DW_LANG_C)
$C$DW$T$149	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$149, DW_AT_type(*$C$DW$T$148)
	.dwattr $C$DW$T$149, DW_AT_address_class(0x17)
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

$C$DW$T$62	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$62, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$62, DW_AT_byte_size(0x100)
$C$DW$427	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$427, DW_AT_upper_bound(0xff)
	.dwendtag $C$DW$T$62

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

$C$DW$428	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$428, DW_AT_location[DW_OP_reg0]
$C$DW$429	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$429, DW_AT_location[DW_OP_reg1]
$C$DW$430	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$430, DW_AT_location[DW_OP_reg2]
$C$DW$431	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$431, DW_AT_location[DW_OP_reg3]
$C$DW$432	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$432, DW_AT_location[DW_OP_reg4]
$C$DW$433	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$433, DW_AT_location[DW_OP_reg5]
$C$DW$434	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$434, DW_AT_location[DW_OP_reg6]
$C$DW$435	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$435, DW_AT_location[DW_OP_reg7]
$C$DW$436	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$436, DW_AT_location[DW_OP_reg8]
$C$DW$437	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$437, DW_AT_location[DW_OP_reg9]
$C$DW$438	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$438, DW_AT_location[DW_OP_reg10]
$C$DW$439	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$439, DW_AT_location[DW_OP_reg11]
$C$DW$440	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$440, DW_AT_location[DW_OP_reg12]
$C$DW$441	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$441, DW_AT_location[DW_OP_reg13]
$C$DW$442	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$442, DW_AT_location[DW_OP_reg14]
$C$DW$443	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$443, DW_AT_location[DW_OP_reg15]
$C$DW$444	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$444, DW_AT_location[DW_OP_reg16]
$C$DW$445	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$445, DW_AT_location[DW_OP_reg17]
$C$DW$446	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$446, DW_AT_location[DW_OP_reg18]
$C$DW$447	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$447, DW_AT_location[DW_OP_reg19]
$C$DW$448	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$448, DW_AT_location[DW_OP_reg20]
$C$DW$449	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$449, DW_AT_location[DW_OP_reg21]
$C$DW$450	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$450, DW_AT_location[DW_OP_reg22]
$C$DW$451	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$451, DW_AT_location[DW_OP_reg23]
$C$DW$452	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$452, DW_AT_location[DW_OP_reg24]
$C$DW$453	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$453, DW_AT_location[DW_OP_reg25]
$C$DW$454	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$454, DW_AT_location[DW_OP_reg26]
$C$DW$455	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$455, DW_AT_location[DW_OP_reg27]
$C$DW$456	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$456, DW_AT_location[DW_OP_reg28]
$C$DW$457	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$457, DW_AT_location[DW_OP_reg29]
$C$DW$458	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$458, DW_AT_location[DW_OP_reg30]
$C$DW$459	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$459, DW_AT_location[DW_OP_reg31]
$C$DW$460	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$460, DW_AT_location[DW_OP_regx 0x20]
$C$DW$461	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$461, DW_AT_location[DW_OP_regx 0x21]
$C$DW$462	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$462, DW_AT_location[DW_OP_regx 0x22]
$C$DW$463	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$463, DW_AT_location[DW_OP_regx 0x23]
$C$DW$464	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$464, DW_AT_location[DW_OP_regx 0x24]
$C$DW$465	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$465, DW_AT_location[DW_OP_regx 0x25]
$C$DW$466	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$466, DW_AT_location[DW_OP_regx 0x26]
$C$DW$467	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$467, DW_AT_location[DW_OP_regx 0x27]
$C$DW$468	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$468, DW_AT_location[DW_OP_regx 0x28]
$C$DW$469	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$469, DW_AT_location[DW_OP_regx 0x29]
$C$DW$470	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$470, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$471	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$471, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$472	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$472, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$473	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$473, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$474	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$474, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$475	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$475, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$476	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$476, DW_AT_location[DW_OP_regx 0x30]
$C$DW$477	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$477, DW_AT_location[DW_OP_regx 0x31]
$C$DW$478	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$478, DW_AT_location[DW_OP_regx 0x32]
$C$DW$479	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$479, DW_AT_location[DW_OP_regx 0x33]
$C$DW$480	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$480, DW_AT_location[DW_OP_regx 0x34]
$C$DW$481	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$481, DW_AT_location[DW_OP_regx 0x35]
$C$DW$482	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$482, DW_AT_location[DW_OP_regx 0x36]
$C$DW$483	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$483, DW_AT_location[DW_OP_regx 0x37]
$C$DW$484	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$484, DW_AT_location[DW_OP_regx 0x38]
$C$DW$485	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$485, DW_AT_location[DW_OP_regx 0x39]
$C$DW$486	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$486, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$487	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$487, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$488	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$488, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$489	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$489, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$490	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$490, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$491	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$491, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$492	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$492, DW_AT_location[DW_OP_regx 0x40]
$C$DW$493	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$493, DW_AT_location[DW_OP_regx 0x41]
$C$DW$494	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$494, DW_AT_location[DW_OP_regx 0x42]
$C$DW$495	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$495, DW_AT_location[DW_OP_regx 0x43]
$C$DW$496	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$496, DW_AT_location[DW_OP_regx 0x44]
$C$DW$497	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$497, DW_AT_location[DW_OP_regx 0x45]
$C$DW$498	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$498, DW_AT_location[DW_OP_regx 0x46]
$C$DW$499	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$499, DW_AT_location[DW_OP_regx 0x47]
$C$DW$500	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$500, DW_AT_location[DW_OP_regx 0x48]
$C$DW$501	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$501, DW_AT_location[DW_OP_regx 0x49]
$C$DW$502	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$502, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$503	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$503, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$504	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$504, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$505	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$505, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$506	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$506, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$507	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$507, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$508	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$508, DW_AT_location[DW_OP_regx 0x50]
$C$DW$509	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$509, DW_AT_location[DW_OP_regx 0x51]
$C$DW$510	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$510, DW_AT_location[DW_OP_regx 0x52]
$C$DW$511	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$511, DW_AT_location[DW_OP_regx 0x53]
$C$DW$512	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$512, DW_AT_location[DW_OP_regx 0x54]
$C$DW$513	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$513, DW_AT_location[DW_OP_regx 0x55]
$C$DW$514	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$514, DW_AT_location[DW_OP_regx 0x56]
$C$DW$515	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$515, DW_AT_location[DW_OP_regx 0x57]
$C$DW$516	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$516, DW_AT_location[DW_OP_regx 0x58]
$C$DW$517	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$517, DW_AT_location[DW_OP_regx 0x59]
$C$DW$518	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$518, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$519	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$519, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

