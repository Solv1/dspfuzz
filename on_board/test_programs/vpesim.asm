;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                        Unix v4.4.1 *
;* Date/Time created: Tue Oct 15 21:54:08 2024                                 *
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
	.field  	_nr_handle+0,24
	.field  	0,8
	.field	0,32			; _nr_handle @ 0

	.sect	".cinit"
	.align	1
	.field  	2,16
	.field  	_sgnInst_ptr+0,24
	.field  	0,8
	.field	0,32			; _sgnInst_ptr @ 0


$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("malloc")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_malloc")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$101)
	.dwendtag $C$DW$1


$C$DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("strcpy")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_strcpy")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$48)
$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$193)
	.dwendtag $C$DW$3


$C$DW$6	.dwtag  DW_TAG_subprogram, DW_AT_name("memset")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_memset")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$6, DW_AT_declaration
	.dwattr $C$DW$6, DW_AT_external
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$3)
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$10)
$C$DW$9	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$101)
	.dwendtag $C$DW$6


$C$DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("sgnGetSizes")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_sgnGetSizes")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$10, DW_AT_declaration
	.dwattr $C$DW$10, DW_AT_external
$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$27)
	.dwendtag $C$DW$10


$C$DW$12	.dwtag  DW_TAG_subprogram, DW_AT_name("sgnControl")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_sgnControl")
	.dwattr $C$DW$12, DW_AT_declaration
	.dwattr $C$DW$12, DW_AT_external
$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$3)
$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$82)
	.dwendtag $C$DW$12


$C$DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("sgnGenerateFrame")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_sgnGenerateFrame")
	.dwattr $C$DW$15, DW_AT_declaration
	.dwattr $C$DW$15, DW_AT_external
$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$3)
$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$21)
$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$15


$C$DW$19	.dwtag  DW_TAG_subprogram, DW_AT_name("sgnInit")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_sgnInit")
	.dwattr $C$DW$19, DW_AT_declaration
	.dwattr $C$DW$19, DW_AT_external
$C$DW$20	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$3)
$C$DW$21	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$84)
	.dwendtag $C$DW$19


$C$DW$22	.dwtag  DW_TAG_subprogram, DW_AT_name("hlcGetSizes")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_hlcGetSizes")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$22, DW_AT_declaration
	.dwattr $C$DW$22, DW_AT_external
$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$27)
	.dwendtag $C$DW$22


$C$DW$24	.dwtag  DW_TAG_subprogram, DW_AT_name("hlcInit")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_hlcInit")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$24, DW_AT_declaration
	.dwattr $C$DW$24, DW_AT_external
$C$DW$25	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$3)
$C$DW$26	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$86)
	.dwendtag $C$DW$24


$C$DW$27	.dwtag  DW_TAG_subprogram, DW_AT_name("hlcControl")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_hlcControl")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$27, DW_AT_declaration
	.dwattr $C$DW$27, DW_AT_external
$C$DW$28	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$3)
$C$DW$29	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$87)
	.dwendtag $C$DW$27


$C$DW$30	.dwtag  DW_TAG_subprogram, DW_AT_name("hlcProcess")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_hlcProcess")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$30, DW_AT_declaration
	.dwattr $C$DW$30, DW_AT_external
$C$DW$31	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$3)
$C$DW$32	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$30


$C$DW$33	.dwtag  DW_TAG_subprogram, DW_AT_name("slmGetSizes")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_slmGetSizes")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$33, DW_AT_declaration
	.dwattr $C$DW$33, DW_AT_external
$C$DW$34	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$27)
	.dwendtag $C$DW$33


$C$DW$35	.dwtag  DW_TAG_subprogram, DW_AT_name("slmInit")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_slmInit")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$35, DW_AT_declaration
	.dwattr $C$DW$35, DW_AT_external
$C$DW$36	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$3)
$C$DW$37	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$89)
	.dwendtag $C$DW$35


$C$DW$38	.dwtag  DW_TAG_subprogram, DW_AT_name("slmControl")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_slmControl")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$38, DW_AT_declaration
	.dwattr $C$DW$38, DW_AT_external
$C$DW$39	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$3)
$C$DW$40	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$38


$C$DW$41	.dwtag  DW_TAG_subprogram, DW_AT_name("slmProcess")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_slmProcess")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$41, DW_AT_declaration
	.dwattr $C$DW$41, DW_AT_external
$C$DW$42	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$3)
$C$DW$43	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$3)
$C$DW$44	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$41


$C$DW$45	.dwtag  DW_TAG_subprogram, DW_AT_name("snlGetSizes")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_snlGetSizes")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$45, DW_AT_declaration
	.dwattr $C$DW$45, DW_AT_external
$C$DW$46	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$27)
	.dwendtag $C$DW$45


$C$DW$47	.dwtag  DW_TAG_subprogram, DW_AT_name("snlInit")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_snlInit")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$47, DW_AT_declaration
	.dwattr $C$DW$47, DW_AT_external
$C$DW$48	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$3)
$C$DW$49	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$47


$C$DW$50	.dwtag  DW_TAG_subprogram, DW_AT_name("snlProcess")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_snlProcess")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$50, DW_AT_declaration
	.dwattr $C$DW$50, DW_AT_external
$C$DW$51	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$3)
$C$DW$52	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$30)
$C$DW$53	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$37)
	.dwendtag $C$DW$50


$C$DW$54	.dwtag  DW_TAG_subprogram, DW_AT_name("snlGetLevels")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_snlGetLevels")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$54, DW_AT_declaration
	.dwattr $C$DW$54, DW_AT_external
$C$DW$55	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$3)
$C$DW$56	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$133)
$C$DW$57	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$133)
$C$DW$58	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$151)
	.dwendtag $C$DW$54


$C$DW$59	.dwtag  DW_TAG_subprogram, DW_AT_name("svdGetSizes")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_svdGetSizes")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$59, DW_AT_declaration
	.dwattr $C$DW$59, DW_AT_external
$C$DW$60	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$27)
	.dwendtag $C$DW$59


$C$DW$61	.dwtag  DW_TAG_subprogram, DW_AT_name("svdInit")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_svdInit")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$61, DW_AT_declaration
	.dwattr $C$DW$61, DW_AT_external
$C$DW$62	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$3)
$C$DW$63	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$61


$C$DW$64	.dwtag  DW_TAG_subprogram, DW_AT_name("svdProcess")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_svdProcess")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$64, DW_AT_declaration
	.dwattr $C$DW$64, DW_AT_external
$C$DW$65	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$3)
$C$DW$66	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$30)
$C$DW$67	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$37)
	.dwendtag $C$DW$64


$C$DW$68	.dwtag  DW_TAG_subprogram, DW_AT_name("svdGetDecision")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_svdGetDecision")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$68, DW_AT_declaration
	.dwattr $C$DW$68, DW_AT_external
$C$DW$69	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$3)
$C$DW$70	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$155)
	.dwendtag $C$DW$68


$C$DW$71	.dwtag  DW_TAG_subprogram, DW_AT_name("svdGetLevels")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_svdGetLevels")
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$71, DW_AT_declaration
	.dwattr $C$DW$71, DW_AT_external
$C$DW$72	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$3)
$C$DW$73	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$133)
$C$DW$74	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$133)
$C$DW$75	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$151)
	.dwendtag $C$DW$71


$C$DW$76	.dwtag  DW_TAG_subprogram, DW_AT_name("asnrGetSizes")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_asnrGetSizes")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$76, DW_AT_declaration
	.dwattr $C$DW$76, DW_AT_external
$C$DW$77	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$27)
$C$DW$78	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$96)
$C$DW$79	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$158)
	.dwendtag $C$DW$76


$C$DW$80	.dwtag  DW_TAG_subprogram, DW_AT_name("asnrNew")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_asnrNew")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$80, DW_AT_declaration
	.dwattr $C$DW$80, DW_AT_external
$C$DW$81	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$106)
$C$DW$82	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$21)
$C$DW$83	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$91)
$C$DW$84	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$162)
	.dwendtag $C$DW$80


$C$DW$85	.dwtag  DW_TAG_subprogram, DW_AT_name("asnrDelete")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_asnrDelete")
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$85, DW_AT_declaration
	.dwattr $C$DW$85, DW_AT_external
$C$DW$86	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$106)
$C$DW$87	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$21)
$C$DW$88	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$91)
	.dwendtag $C$DW$85


$C$DW$89	.dwtag  DW_TAG_subprogram, DW_AT_name("asnrOpen")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_asnrOpen")
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$89, DW_AT_declaration
	.dwattr $C$DW$89, DW_AT_external
$C$DW$90	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$3)
$C$DW$91	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$168)
	.dwendtag $C$DW$89


$C$DW$92	.dwtag  DW_TAG_subprogram, DW_AT_name("asnrClose")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_asnrClose")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$92, DW_AT_declaration
	.dwattr $C$DW$92, DW_AT_external
$C$DW$93	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$92


$C$DW$94	.dwtag  DW_TAG_subprogram, DW_AT_name("asnrControl")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("_asnrControl")
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$94, DW_AT_declaration
	.dwattr $C$DW$94, DW_AT_external
$C$DW$95	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$3)
$C$DW$96	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$174)
	.dwendtag $C$DW$94


$C$DW$97	.dwtag  DW_TAG_subprogram, DW_AT_name("asnrProcess")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("_asnrProcess")
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$97, DW_AT_declaration
	.dwattr $C$DW$97, DW_AT_external
$C$DW$98	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$3)
$C$DW$99	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$3)
$C$DW$100	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$97

$C$DW$101	.dwtag  DW_TAG_variable, DW_AT_name("nr_buff0")
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_nr_buff0")
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$188)
	.dwattr $C$DW$101, DW_AT_declaration
	.dwattr $C$DW$101, DW_AT_external
$C$DW$102	.dwtag  DW_TAG_variable, DW_AT_name("nr_buff1")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("_nr_buff1")
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$188)
	.dwattr $C$DW$102, DW_AT_declaration
	.dwattr $C$DW$102, DW_AT_external
$C$DW$103	.dwtag  DW_TAG_variable, DW_AT_name("nr_buff2")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("_nr_buff2")
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$188)
	.dwattr $C$DW$103, DW_AT_declaration
	.dwattr $C$DW$103, DW_AT_external
$C$DW$104	.dwtag  DW_TAG_variable, DW_AT_name("nr_buff3")
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_nr_buff3")
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$188)
	.dwattr $C$DW$104, DW_AT_declaration
	.dwattr $C$DW$104, DW_AT_external
$C$DW$105	.dwtag  DW_TAG_variable, DW_AT_name("nr_buff4")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_nr_buff4")
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$188)
	.dwattr $C$DW$105, DW_AT_declaration
	.dwattr $C$DW$105, DW_AT_external
$C$DW$106	.dwtag  DW_TAG_variable, DW_AT_name("nr_buff5")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_nr_buff5")
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$188)
	.dwattr $C$DW$106, DW_AT_declaration
	.dwattr $C$DW$106, DW_AT_external
$C$DW$107	.dwtag  DW_TAG_variable, DW_AT_name("nr_buff6")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_nr_buff6")
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$188)
	.dwattr $C$DW$107, DW_AT_declaration
	.dwattr $C$DW$107, DW_AT_external
	.global	_vpeIOBufs
	.bss	_vpeIOBufs,320,0,0
$C$DW$108	.dwtag  DW_TAG_variable, DW_AT_name("vpeIOBufs")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_vpeIOBufs")
	.dwattr $C$DW$108, DW_AT_location[DW_OP_addr _vpeIOBufs]
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$180)
	.dwattr $C$DW$108, DW_AT_external
	.global	_vpeSimC
	.bss	_vpeSimC,1092,0,2
$C$DW$109	.dwtag  DW_TAG_variable, DW_AT_name("vpeSimC")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_vpeSimC")
	.dwattr $C$DW$109, DW_AT_location[DW_OP_addr _vpeSimC]
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$109, DW_AT_external
	.global	_vpeSim
	.bss	_vpeSim,2,0,2
$C$DW$110	.dwtag  DW_TAG_variable, DW_AT_name("vpeSim")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_vpeSim")
	.dwattr $C$DW$110, DW_AT_location[DW_OP_addr _vpeSim]
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$110, DW_AT_external
	.global	_sigInBuffer
	.bss	_sigInBuffer,640,0,0
$C$DW$111	.dwtag  DW_TAG_variable, DW_AT_name("sigInBuffer")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_sigInBuffer")
	.dwattr $C$DW$111, DW_AT_location[DW_OP_addr _sigInBuffer]
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$181)
	.dwattr $C$DW$111, DW_AT_external
	.global	_sigOutBuffer
	.bss	_sigOutBuffer,640,0,0
$C$DW$112	.dwtag  DW_TAG_variable, DW_AT_name("sigOutBuffer")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_sigOutBuffer")
	.dwattr $C$DW$112, DW_AT_location[DW_OP_addr _sigOutBuffer]
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$181)
	.dwattr $C$DW$112, DW_AT_external
	.global	_decimDelayLine
	.bss	_decimDelayLine,192,0,0
$C$DW$113	.dwtag  DW_TAG_variable, DW_AT_name("decimDelayLine")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_decimDelayLine")
	.dwattr $C$DW$113, DW_AT_location[DW_OP_addr _decimDelayLine]
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$182)
	.dwattr $C$DW$113, DW_AT_external
	.global	_interpDelayLine
	.bss	_interpDelayLine,176,0,0
$C$DW$114	.dwtag  DW_TAG_variable, DW_AT_name("interpDelayLine")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_interpDelayLine")
	.dwattr $C$DW$114, DW_AT_location[DW_OP_addr _interpDelayLine]
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$184)
	.dwattr $C$DW$114, DW_AT_external
	.global	_vpe_sim_global_str
	.bss	_vpe_sim_global_str,256,0,0
$C$DW$115	.dwtag  DW_TAG_variable, DW_AT_name("vpe_sim_global_str")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_vpe_sim_global_str")
	.dwattr $C$DW$115, DW_AT_location[DW_OP_addr _vpe_sim_global_str]
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$115, DW_AT_external
	.global	_vpe_sim_print_str
	.bss	_vpe_sim_print_str,256,0,0
$C$DW$116	.dwtag  DW_TAG_variable, DW_AT_name("vpe_sim_print_str")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("_vpe_sim_print_str")
	.dwattr $C$DW$116, DW_AT_location[DW_OP_addr _vpe_sim_print_str]
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$116, DW_AT_external
	.global	_vpe_sim_fsk_data
	.bss	_vpe_sim_fsk_data,1,0,0
$C$DW$117	.dwtag  DW_TAG_variable, DW_AT_name("vpe_sim_fsk_data")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_vpe_sim_fsk_data")
	.dwattr $C$DW$117, DW_AT_location[DW_OP_addr _vpe_sim_fsk_data]
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$179)
	.dwattr $C$DW$117, DW_AT_external
	.global	_slmInst_ptr
	.bss	_slmInst_ptr,2,0,2
$C$DW$118	.dwtag  DW_TAG_variable, DW_AT_name("slmInst_ptr")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_slmInst_ptr")
	.dwattr $C$DW$118, DW_AT_location[DW_OP_addr _slmInst_ptr]
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$118, DW_AT_external
	.global	_hlcInst_ptr
	.bss	_hlcInst_ptr,2,0,2
$C$DW$119	.dwtag  DW_TAG_variable, DW_AT_name("hlcInst_ptr")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_hlcInst_ptr")
	.dwattr $C$DW$119, DW_AT_location[DW_OP_addr _hlcInst_ptr]
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$119, DW_AT_external
	.global	_hctrlInst
	.bss	_hctrlInst,2,0,0
$C$DW$120	.dwtag  DW_TAG_variable, DW_AT_name("hctrlInst")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_hctrlInst")
	.dwattr $C$DW$120, DW_AT_location[DW_OP_addr _hctrlInst]
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$120, DW_AT_external
	.global	_hctrlInst_ptr
	.bss	_hctrlInst_ptr,2,0,2
$C$DW$121	.dwtag  DW_TAG_variable, DW_AT_name("hctrlInst_ptr")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("_hctrlInst_ptr")
	.dwattr $C$DW$121, DW_AT_location[DW_OP_addr _hctrlInst_ptr]
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$121, DW_AT_external
	.global	_snlInst_ptr
	.bss	_snlInst_ptr,2,0,2
$C$DW$122	.dwtag  DW_TAG_variable, DW_AT_name("snlInst_ptr")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_snlInst_ptr")
	.dwattr $C$DW$122, DW_AT_location[DW_OP_addr _snlInst_ptr]
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$122, DW_AT_external
	.global	_spchLevdB
	.bss	_spchLevdB,1,0,0
$C$DW$123	.dwtag  DW_TAG_variable, DW_AT_name("spchLevdB")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_spchLevdB")
	.dwattr $C$DW$123, DW_AT_location[DW_OP_addr _spchLevdB]
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$123, DW_AT_external
	.global	_noiseLevdB
	.bss	_noiseLevdB,1,0,0
$C$DW$124	.dwtag  DW_TAG_variable, DW_AT_name("noiseLevdB")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_noiseLevdB")
	.dwattr $C$DW$124, DW_AT_location[DW_OP_addr _noiseLevdB]
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$124, DW_AT_external
	.global	_Nthresh
	.bss	_Nthresh,1,0,0
$C$DW$125	.dwtag  DW_TAG_variable, DW_AT_name("Nthresh")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_Nthresh")
	.dwattr $C$DW$125, DW_AT_location[DW_OP_addr _Nthresh]
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$150)
	.dwattr $C$DW$125, DW_AT_external
	.global	_snlLevOut
	.bss	_snlLevOut,260,0,2
$C$DW$126	.dwtag  DW_TAG_variable, DW_AT_name("snlLevOut")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_snlLevOut")
	.dwattr $C$DW$126, DW_AT_location[DW_OP_addr _snlLevOut]
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$126, DW_AT_external
	.global	_svdInst_ptr
	.bss	_svdInst_ptr,2,0,2
$C$DW$127	.dwtag  DW_TAG_variable, DW_AT_name("svdInst_ptr")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_svdInst_ptr")
	.dwattr $C$DW$127, DW_AT_location[DW_OP_addr _svdInst_ptr]
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$127, DW_AT_external
	.global	_svdOut
	.bss	_svdOut,260,0,2
$C$DW$128	.dwtag  DW_TAG_variable, DW_AT_name("svdOut")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_svdOut")
	.dwattr $C$DW$128, DW_AT_location[DW_OP_addr _svdOut]
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$128, DW_AT_external
	.global	_nrInst_ptr
	.bss	_nrInst_ptr,2,0,2
$C$DW$129	.dwtag  DW_TAG_variable, DW_AT_name("nrInst_ptr")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_nrInst_ptr")
	.dwattr $C$DW$129, DW_AT_location[DW_OP_addr _nrInst_ptr]
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$129, DW_AT_external
	.global	_nr_handle
	.bss	_nr_handle,2,0,2
$C$DW$130	.dwtag  DW_TAG_variable, DW_AT_name("nr_handle")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("_nr_handle")
	.dwattr $C$DW$130, DW_AT_location[DW_OP_addr _nr_handle]
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$130, DW_AT_external
	.global	_sgnInst_ptr
	.bss	_sgnInst_ptr,2,0,2
$C$DW$131	.dwtag  DW_TAG_variable, DW_AT_name("sgnInst_ptr")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("_sgnInst_ptr")
	.dwattr $C$DW$131, DW_AT_location[DW_OP_addr _sgnInst_ptr]
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$131, DW_AT_external
	.global	_vpe_temp_io_buf
	.bss	_vpe_temp_io_buf,640,0,0
$C$DW$132	.dwtag  DW_TAG_variable, DW_AT_name("vpe_temp_io_buf")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("_vpe_temp_io_buf")
	.dwattr $C$DW$132, DW_AT_location[DW_OP_addr _vpe_temp_io_buf]
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$190)
	.dwattr $C$DW$132, DW_AT_external
	.global	_inFrame
	.bss	_inFrame,2,0,2
$C$DW$133	.dwtag  DW_TAG_variable, DW_AT_name("inFrame")
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("_inFrame")
	.dwattr $C$DW$133, DW_AT_location[DW_OP_addr _inFrame]
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$133, DW_AT_external
	.global	_outFrame
	.bss	_outFrame,2,0,2
$C$DW$134	.dwtag  DW_TAG_variable, DW_AT_name("outFrame")
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("_outFrame")
	.dwattr $C$DW$134, DW_AT_location[DW_OP_addr _outFrame]
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$134, DW_AT_external
	.global	_inCnt
	.bss	_inCnt,1,0,0
$C$DW$135	.dwtag  DW_TAG_variable, DW_AT_name("inCnt")
	.dwattr $C$DW$135, DW_AT_TI_symbol_name("_inCnt")
	.dwattr $C$DW$135, DW_AT_location[DW_OP_addr _inCnt]
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$135, DW_AT_external
	.global	_outCnt
	.bss	_outCnt,1,0,0
$C$DW$136	.dwtag  DW_TAG_variable, DW_AT_name("outCnt")
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("_outCnt")
	.dwattr $C$DW$136, DW_AT_location[DW_OP_addr _outCnt]
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$136, DW_AT_external
;	/home/santiago/Research/Ti/C55_Tools/acp55 -@/tmp/45718sctJXU 
	.sect	".text"
	.global	_telecom_test

$C$DW$137	.dwtag  DW_TAG_subprogram, DW_AT_name("telecom_test")
	.dwattr $C$DW$137, DW_AT_low_pc(_telecom_test)
	.dwattr $C$DW$137, DW_AT_high_pc(0x00)
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("_telecom_test")
	.dwattr $C$DW$137, DW_AT_external
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$137, DW_AT_TI_begin_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$137, DW_AT_TI_begin_line(0xad)
	.dwattr $C$DW$137, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$137, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 174,column 1,is_stmt,address _telecom_test

	.dwfde $C$DW$CIE, _telecom_test
$C$DW$138	.dwtag  DW_TAG_formal_parameter, DW_AT_name("input")
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$138, DW_AT_location[DW_OP_reg17]
$C$DW$139	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size")
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$139, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: telecom_test                                                 *
;*                                                                             *
;*   Function Uses Regs : AC0,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,CARRY, *
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 16 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (15 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_telecom_test:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-15, SP
	.dwcfi	cfa_offset, 16
$C$DW$140	.dwtag  DW_TAG_variable, DW_AT_name("input")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$140, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$141	.dwtag  DW_TAG_variable, DW_AT_name("size")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$141, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$142	.dwtag  DW_TAG_variable, DW_AT_name("buf_Inptr")
	.dwattr $C$DW$142, DW_AT_TI_symbol_name("_buf_Inptr")
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$142, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$143	.dwtag  DW_TAG_variable, DW_AT_name("buf_Outptr")
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("_buf_Outptr")
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$143, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$144	.dwtag  DW_TAG_variable, DW_AT_name("svd_sig_pow")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_svd_sig_pow")
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$154)
	.dwattr $C$DW$144, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$145	.dwtag  DW_TAG_variable, DW_AT_name("second_count")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_second_count")
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$145, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$146	.dwtag  DW_TAG_variable, DW_AT_name("sample_count")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("_sample_count")
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$146, DW_AT_location[DW_OP_bregx 0x24 11]
$C$DW$147	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$147, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$148	.dwtag  DW_TAG_variable, DW_AT_name("retVal")
	.dwattr $C$DW$148, DW_AT_TI_symbol_name("_retVal")
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$148, DW_AT_location[DW_OP_bregx 0x24 13]
$C$DW$149	.dwtag  DW_TAG_variable, DW_AT_name("vad_flag")
	.dwattr $C$DW$149, DW_AT_TI_symbol_name("_vad_flag")
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$149, DW_AT_location[DW_OP_bregx 0x24 14]
        MOV T0, *SP(#2) ; |174| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 175,column 14,is_stmt
        AMOV #_sigInBuffer, XAR3 ; |175| 
        MOV XAR3, dbl(*SP(#4))
        NOP       ;                     avoids Silicon Exception CPU_7
        NOP       ;                     avoids Silicon Exception CPU_7
        NOP       ;                     avoids Silicon Exception CPU_7
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 176,column 14,is_stmt
        AMOV #_sigOutBuffer, XAR3 ; |176| 
        MOV XAR3, dbl(*SP(#6))
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 186,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$150	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$150, DW_AT_low_pc(0x00)
	.dwattr $C$DW$150, DW_AT_name("_vpe_sim_init")
	.dwattr $C$DW$150, DW_AT_TI_call
        CALL #_vpe_sim_init ; |186| 
                                        ; call occurs [#_vpe_sim_init] ; |186| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 189,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$151	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$151, DW_AT_low_pc(0x00)
	.dwattr $C$DW$151, DW_AT_name("_vpe_sim_read_cfg")
	.dwattr $C$DW$151, DW_AT_TI_call
        CALL #_vpe_sim_read_cfg ; |189| 
                                        ; call occurs [#_vpe_sim_read_cfg] ; |189| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 191,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV *AR3, AR1 ; |191| 
        BCC $C$L1,AR1 != #0 ; |191| 
                                        ; branchcc occurs ; |191| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 193,column 5,is_stmt
        MOV #1, T0
        B $C$L19  ; |193| 
                                        ; branch occurs ; |193| 
$C$L1:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 195,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$152	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$152, DW_AT_low_pc(0x00)
	.dwattr $C$DW$152, DW_AT_name("_vpe_init")
	.dwattr $C$DW$152, DW_AT_TI_call
        CALL #_vpe_init ; |195| 
                                        ; call occurs [#_vpe_init] ; |195| 
        MOV T0, *SP(#13) ; |195| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 196,column 3,is_stmt
        MOV T0, AR1
        BCC $C$L19,AR1 > #0 ; |196| 
                                        ; branchcc occurs ; |196| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 198,column 5,is_stmt
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 205,column 5,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #1, *AR3(#832) ; |205| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 208,column 5,is_stmt
        MOV #0, *SP(#10) ; |208| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 209,column 5,is_stmt
        MOV #0, *SP(#11) ; |209| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 212,column 7,is_stmt
$C$DW$153	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$153, DW_AT_low_pc(0x00)
	.dwattr $C$DW$153, DW_AT_name("_vpe_sim_flush_cache")
	.dwattr $C$DW$153, DW_AT_TI_call
        CALL #_vpe_sim_flush_cache ; |212| 
                                        ; call occurs [#_vpe_sim_flush_cache] ; |212| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 216,column 7,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV *AR3(#16), AR1 ; |216| 
        BCC $C$L3,AR1 == #0 ; |216| 
                                        ; branchcc occurs ; |216| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 218,column 9,is_stmt
        MOV *AR3(#17), AR1 ; |218| 
        BCC $C$L2,AR1 == #0 ; |218| 
                                        ; branchcc occurs ; |218| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 219,column 11,is_stmt
        MOV #0, *AR3(#17) ; |219| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 220,column 11,is_stmt
        MOV dbl(*(#_vpeSim)), XAR1
        MOV dbl(*(#_vpeSim)), XAR3
        MOV dbl(*(#_sgnInst_ptr)), XAR0
        AADD #36, AR1 ; |220| 
        MOV *AR3(#21), T0 ; |220| 
$C$DW$154	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$154, DW_AT_low_pc(0x00)
	.dwattr $C$DW$154, DW_AT_name("_vpe_sim_set_sgn")
	.dwattr $C$DW$154, DW_AT_TI_call
        CALL #_vpe_sim_set_sgn ; |220| 
                                        ; call occurs [#_vpe_sim_set_sgn] ; |220| 
$C$L2:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 222,column 9,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV dbl(*SP(#4)), XAR1
        MOV dbl(*(#_sgnInst_ptr)), XAR0
        MOV *AR3(#834), T0 ; |222| 
$C$DW$155	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$155, DW_AT_low_pc(0x00)
	.dwattr $C$DW$155, DW_AT_name("_vpe_sim_gen_frame")
	.dwattr $C$DW$155, DW_AT_TI_call
        CALL #_vpe_sim_gen_frame ; |222| 
                                        ; call occurs [#_vpe_sim_gen_frame] ; |222| 
$C$L3:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 247,column 12,is_stmt
        MOV #0, *SP(#12) ; |247| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 247,column 16,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV *SP(#12), AR2 ; |247| 
        MOV *AR3(#834), AR1 ; |247| 

        CMPU AR2 >= AR1, TC1 ; |247| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L5,TC1 ; |247| 
                                        ; branchcc occurs ; |247| 
$C$L4:    
$C$DW$L$_telecom_test$9$B:
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 248,column 9,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV *SP(#12), T0 ; |248| 
        MOV T0, AR1
        AMOV #_vpeIOBufs, XAR2 ; |248| 
        AADD AR1, AR3 ; |248| 
        MOV *AR2(T0), *AR3 ; |248| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 247,column 40,is_stmt
        ADD #1, *SP(#12) ; |247| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 247,column 16,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV *SP(#12), AR2 ; |247| 
        MOV *AR3(#834), AR1 ; |247| 

        CMPU AR2 < AR1, TC1 ; |247| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L4,TC1 ; |247| 
                                        ; branchcc occurs ; |247| 
$C$DW$L$_telecom_test$9$E:
$C$L5:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 252,column 7,is_stmt
        MOV *AR3(short(#5)), AR1 ; |252| 
        BCC $C$L6,AR1 == #0 ; |252| 
                                        ; branchcc occurs ; |252| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 253,column 9,is_stmt
        MOV dbl(*SP(#4)), XAR1
        MOV dbl(*SP(#4)), XAR2
        MOV dbl(*(#_nrInst_ptr)), XAR0
$C$DW$156	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$156, DW_AT_low_pc(0x00)
	.dwattr $C$DW$156, DW_AT_name("_asnrProcess")
	.dwattr $C$DW$156, DW_AT_TI_call
        CALL #_asnrProcess ; |253| 
                                        ; call occurs [#_asnrProcess] ; |253| 
        MOV T0, *SP(#13) ; |253| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 254,column 9,is_stmt
        MOV T0, AR1
        BCC $C$L19,AR1 != #0 ; |254| 
                                        ; branchcc occurs ; |254| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 256,column 11,is_stmt
$C$L6:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 261,column 7,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV *AR3(short(#1)), AR1 ; |261| 
        BCC $C$L8,AR1 == #0 ; |261| 
                                        ; branchcc occurs ; |261| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 262,column 9,is_stmt
        MOV *AR3(#18), AR1 ; |262| 
        BCC $C$L7,AR1 == #0 ; |262| 
                                        ; branchcc occurs ; |262| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 263,column 11,is_stmt
        MOV #0, *AR3(#18) ; |263| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 264,column 11,is_stmt
        MOV dbl(*(#_vpeSim)), XAR1
        MOV dbl(*(#_hlcInst_ptr)), XAR0
        AADD #22, AR1 ; |264| 
$C$DW$157	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$157, DW_AT_low_pc(0x00)
	.dwattr $C$DW$157, DW_AT_name("_hlcControl")
	.dwattr $C$DW$157, DW_AT_TI_call
        CALL #_hlcControl ; |264| 
                                        ; call occurs [#_hlcControl] ; |264| 
        MOV T0, *SP(#13) ; |264| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 265,column 11,is_stmt
        MOV T0, AR1
        BCC $C$L7,AR1 == #0 ; |265| 
                                        ; branchcc occurs ; |265| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 266,column 13,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #6, *AR3(#833) ; |266| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 267,column 13,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #0, *AR3 ; |267| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 269,column 13,is_stmt
        MOV #6, T0
        B $C$L19  ; |269| 
                                        ; branch occurs ; |269| 
$C$L7:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 272,column 9,is_stmt
        MOV dbl(*SP(#4)), XAR1
        MOV dbl(*(#_hlcInst_ptr)), XAR0
$C$DW$158	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$158, DW_AT_low_pc(0x00)
	.dwattr $C$DW$158, DW_AT_name("_hlcProcess")
	.dwattr $C$DW$158, DW_AT_TI_call
        CALL #_hlcProcess ; |272| 
                                        ; call occurs [#_hlcProcess] ; |272| 
        MOV T0, *SP(#13) ; |272| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 273,column 9,is_stmt
        MOV T0, AR1
        BCC $C$L8,AR1 == #0 ; |273| 
                                        ; branchcc occurs ; |273| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 274,column 11,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #1, *AR3(#833) ; |274| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 275,column 11,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #0, *AR3 ; |275| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 277,column 11,is_stmt
        MOV #1, T0
        B $C$L19  ; |277| 
                                        ; branch occurs ; |277| 
$C$L8:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 315,column 7,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV *AR3(short(#3)), AR1 ; |315| 
        BCC $C$L10,AR1 == #0 ; |315| 
                                        ; branchcc occurs ; |315| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 317,column 9,is_stmt
        MOV *AR3(#835), T0 ; |317| 
        MOV dbl(*SP(#4)), XAR1
        MOV dbl(*(#_snlInst_ptr)), XAR0
$C$DW$159	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$159, DW_AT_low_pc(0x00)
	.dwattr $C$DW$159, DW_AT_name("_snlProcess")
	.dwattr $C$DW$159, DW_AT_TI_call
        CALL #_snlProcess ; |317| 
                                        ; call occurs [#_snlProcess] ; |317| 
        MOV T0, *SP(#13) ; |317| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 318,column 9,is_stmt
        MOV T0, AR1
        BCC $C$L9,AR1 == #0 ; |318| 
                                        ; branchcc occurs ; |318| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 320,column 11,is_stmt
        MOV #1, T0
        B $C$L19  ; |320| 
                                        ; branch occurs ; |320| 
$C$L9:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 322,column 9,is_stmt
        MOV dbl(*(#_snlInst_ptr)), XAR0
        AMOV #_Nthresh, XAR3 ; |322| 
        AMOV #_noiseLevdB, XAR2 ; |322| 
        AMOV #_spchLevdB, XAR1 ; |322| 
$C$DW$160	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$160, DW_AT_low_pc(0x00)
	.dwattr $C$DW$160, DW_AT_name("_snlGetLevels")
	.dwattr $C$DW$160, DW_AT_TI_call
        CALL #_snlGetLevels ; |322| 
                                        ; call occurs [#_snlGetLevels] ; |322| 
        MOV T0, *SP(#13) ; |322| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 323,column 9,is_stmt
        MOV T0, AR1
        BCC $C$L10,AR1 == #0 ; |323| 
                                        ; branchcc occurs ; |323| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 325,column 11,is_stmt
        MOV #1, T0
        B $C$L19  ; |325| 
                                        ; branch occurs ; |325| 
$C$L10:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 335,column 7,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV *AR3(short(#4)), AR1 ; |335| 
        BCC $C$L12,AR1 == #0 ; |335| 
                                        ; branchcc occurs ; |335| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 337,column 9,is_stmt
        MOV *AR3(#835), T0 ; |337| 
        MOV dbl(*SP(#4)), XAR1
        MOV dbl(*(#_svdInst_ptr)), XAR0
$C$DW$161	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$161, DW_AT_low_pc(0x00)
	.dwattr $C$DW$161, DW_AT_name("_svdProcess")
	.dwattr $C$DW$161, DW_AT_TI_call
        CALL #_svdProcess ; |337| 
                                        ; call occurs [#_svdProcess] ; |337| 
        MOV T0, *SP(#13) ; |337| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 338,column 9,is_stmt
        MOV T0, AR1
        BCC $C$L11,AR1 == #0 ; |338| 
                                        ; branchcc occurs ; |338| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 340,column 11,is_stmt
        MOV #1, T0
        B $C$L19  ; |340| 
                                        ; branch occurs ; |340| 
$C$L11:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 342,column 9,is_stmt
        MOV XSP, XAR1
        MOV dbl(*(#_svdInst_ptr)), XAR0
        AMAR *+AR1(#8)
$C$DW$162	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$162, DW_AT_low_pc(0x00)
	.dwattr $C$DW$162, DW_AT_name("_svdGetDecision")
	.dwattr $C$DW$162, DW_AT_TI_call
        CALL #_svdGetDecision ; |342| 
                                        ; call occurs [#_svdGetDecision] ; |342| 
        MOV T0, *SP(#14) ; |342| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 343,column 9,is_stmt
        AMOV #_Nthresh, XAR3 ; |343| 
        AMOV #_noiseLevdB, XAR2 ; |343| 
        AMOV #_spchLevdB, XAR1 ; |343| 
        MOV dbl(*(#_svdInst_ptr)), XAR0
$C$DW$163	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$163, DW_AT_low_pc(0x00)
	.dwattr $C$DW$163, DW_AT_name("_svdGetLevels")
	.dwattr $C$DW$163, DW_AT_TI_call
        CALL #_svdGetLevels ; |343| 
                                        ; call occurs [#_svdGetLevels] ; |343| 
        MOV T0, *SP(#13) ; |343| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 344,column 9,is_stmt
        MOV T0, AR1
        BCC $C$L12,AR1 == #0 ; |344| 
                                        ; branchcc occurs ; |344| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 346,column 11,is_stmt
        MOV #1, T0
        B $C$L19  ; |346| 
                                        ; branch occurs ; |346| 
$C$L12:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 358,column 12,is_stmt
        MOV #0, *SP(#12) ; |358| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 358,column 16,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV *SP(#12), AR2 ; |358| 
        MOV *AR3(#835), AR1 ; |358| 

        CMPU AR2 >= AR1, TC1 ; |358| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L14,TC1 ; |358| 
                                        ; branchcc occurs ; |358| 
$C$L13:    
$C$DW$L$_telecom_test$30$B:
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 359,column 9,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV *SP(#12), T0 ; |359| 
        MOV T0, AR1
        MOV dbl(*SP(#4)), XAR2
        AADD AR1, AR3 ; |359| 
        MOV *AR2(T0), *AR3 ; |359| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 358,column 41,is_stmt
        ADD #1, *SP(#12) ; |358| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 358,column 16,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV *SP(#12), AR2 ; |358| 
        MOV *AR3(#835), AR1 ; |358| 

        CMPU AR2 < AR1, TC1 ; |358| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L13,TC1 ; |358| 
                                        ; branchcc occurs ; |358| 
$C$DW$L$_telecom_test$30$E:
$C$L14:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 363,column 7,is_stmt
        MOV *AR3(short(#2)), AR1 ; |363| 
        BCC $C$L16,AR1 == #0 ; |363| 
                                        ; branchcc occurs ; |363| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 364,column 9,is_stmt
        MOV *AR3(#19), AR1 ; |364| 
        BCC $C$L15,AR1 == #0 ; |364| 
                                        ; branchcc occurs ; |364| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 365,column 11,is_stmt
        MOV #0, *AR3(#19) ; |365| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 366,column 11,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV dbl(*(#_slmInst_ptr)), XAR0
        MOV *AR3(#20), T0 ; |366| 
$C$DW$164	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$164, DW_AT_low_pc(0x00)
	.dwattr $C$DW$164, DW_AT_name("_slmControl")
	.dwattr $C$DW$164, DW_AT_TI_call
        CALL #_slmControl ; |366| 
                                        ; call occurs [#_slmControl] ; |366| 
        MOV T0, *SP(#13) ; |366| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 367,column 11,is_stmt
        MOV T0, AR1
        BCC $C$L15,AR1 == #0 ; |367| 
                                        ; branchcc occurs ; |367| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 368,column 13,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #9, *AR3(#833) ; |368| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 369,column 13,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #0, *AR3 ; |369| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 371,column 13,is_stmt
        MOV #9, T0
        B $C$L19  ; |371| 
                                        ; branch occurs ; |371| 
$C$L15:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 375,column 9,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV dbl(*SP(#6)), XAR1
        MOV dbl(*(#_slmInst_ptr)), XAR0
        MOV *AR3(#835), T0 ; |375| 
$C$DW$165	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$165, DW_AT_low_pc(0x00)
	.dwattr $C$DW$165, DW_AT_name("_slmProcess")
	.dwattr $C$DW$165, DW_AT_TI_call
        CALL #_slmProcess ; |375| 
                                        ; call occurs [#_slmProcess] ; |375| 
        MOV T0, *SP(#13) ; |375| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 376,column 9,is_stmt
        MOV T0, AR1
        BCC $C$L16,AR1 == #0 ; |376| 
                                        ; branchcc occurs ; |376| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 377,column 11,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #2, *AR3(#833) ; |377| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 378,column 11,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #0, *AR3 ; |378| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 380,column 11,is_stmt
        MOV #2, T0
        B $C$L19  ; |380| 
                                        ; branch occurs ; |380| 
$C$L16:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 417,column 7,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV *AR3(#834), AR1 ; |417| 
        ADD *SP(#11), AR1, AR1 ; |417| 
        MOV AR1, *SP(#11) ; |417| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 418,column 7,is_stmt
        MOV *SP(#11), AR2 ; |418| 
        MOV *AR3(#21), AR1 ; |418| 

        CMPU AR2 < AR1, TC1 ; |418| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L17,TC1 ; |418| 
                                        ; branchcc occurs ; |418| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 419,column 9,is_stmt
        MOV AR2, AC0
        SUB uns(*AR3(#21)), AC0, AC0 ; |419| 
        MOV AC0, *SP(#11) ; |419| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 420,column 9,is_stmt
        ADD #1, *SP(#10) ; |420| 
$C$L17:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 436,column 3,is_stmt
        MOV *AR3(short(#5)), AR1 ; |436| 
        BCC $C$L18,AR1 == #0 ; |436| 
                                        ; branchcc occurs ; |436| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 437,column 5,is_stmt
$C$DW$166	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$166, DW_AT_low_pc(0x00)
	.dwattr $C$DW$166, DW_AT_name("_vpe_deinstantiate_nr")
	.dwattr $C$DW$166, DW_AT_TI_call
        CALL #_vpe_deinstantiate_nr ; |437| 
                                        ; call occurs [#_vpe_deinstantiate_nr] ; |437| 
        MOV T0, *SP(#13) ; |437| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 438,column 5,is_stmt
        MOV T0, AR1
        BCC $C$L18,AR1 == #0 ; |438| 
                                        ; branchcc occurs ; |438| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 439,column 7,is_stmt
        MOV #1, T0
        B $C$L19  ; |439| 
                                        ; branch occurs ; |439| 
$C$L18:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 443,column 3,is_stmt
        MOV #0, T0
$C$L19:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 444,column 1,is_stmt
        AADD #15, SP
	.dwcfi	cfa_offset, 1
$C$DW$167	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$167, DW_AT_low_pc(0x00)
	.dwattr $C$DW$167, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$168	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$168, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vpesim.asm:$C$L13:1:1729043648")
	.dwattr $C$DW$168, DW_AT_TI_begin_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$168, DW_AT_TI_begin_line(0x166)
	.dwattr $C$DW$168, DW_AT_TI_end_line(0x168)
$C$DW$169	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$169, DW_AT_low_pc($C$DW$L$_telecom_test$30$B)
	.dwattr $C$DW$169, DW_AT_high_pc($C$DW$L$_telecom_test$30$E)
	.dwendtag $C$DW$168


$C$DW$170	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$170, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vpesim.asm:$C$L4:1:1729043648")
	.dwattr $C$DW$170, DW_AT_TI_begin_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$170, DW_AT_TI_begin_line(0xf7)
	.dwattr $C$DW$170, DW_AT_TI_end_line(0xf9)
$C$DW$171	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$171, DW_AT_low_pc($C$DW$L$_telecom_test$9$B)
	.dwattr $C$DW$171, DW_AT_high_pc($C$DW$L$_telecom_test$9$E)
	.dwendtag $C$DW$170

	.dwattr $C$DW$137, DW_AT_TI_end_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$137, DW_AT_TI_end_line(0x1bc)
	.dwattr $C$DW$137, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$137

	.sect	".text"
	.global	_vpe_sim_init

$C$DW$172	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_sim_init")
	.dwattr $C$DW$172, DW_AT_low_pc(_vpe_sim_init)
	.dwattr $C$DW$172, DW_AT_high_pc(0x00)
	.dwattr $C$DW$172, DW_AT_TI_symbol_name("_vpe_sim_init")
	.dwattr $C$DW$172, DW_AT_external
	.dwattr $C$DW$172, DW_AT_TI_begin_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$172, DW_AT_TI_begin_line(0x1e3)
	.dwattr $C$DW$172, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$172, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 484,column 1,is_stmt,address _vpe_sim_init

	.dwfde $C$DW$CIE, _vpe_sim_init
$C$DW$173	.dwtag  DW_TAG_formal_parameter, DW_AT_name("input")
	.dwattr $C$DW$173, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$173, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: vpe_sim_init                                                 *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AR0,XAR0,AR1,AR2,XAR2,AR3,XAR3,SP,M40,SATA,  *
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_vpe_sim_init:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$174	.dwtag  DW_TAG_variable, DW_AT_name("input")
	.dwattr $C$DW$174, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$174, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 485,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR2
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, *AR2 ; |485| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 486,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR1 ; |486| 
        MOV dbl(*(#_vpeSim)), XAR3
        MOV AR1, *AR3(short(#1)) ; |486| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 487,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#2)), AR1 ; |487| 
        MOV dbl(*(#_vpeSim)), XAR3
        MOV AR1, *AR3(short(#2)) ; |487| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 488,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#3)), AR1 ; |488| 
        MOV dbl(*(#_vpeSim)), XAR3
        MOV AR1, *AR3(short(#3)) ; |488| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 489,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#4)), AR1 ; |489| 
        MOV dbl(*(#_vpeSim)), XAR3
        MOV AR1, *AR3(short(#4)) ; |489| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 490,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#5)), AR1 ; |490| 
        MOV dbl(*(#_vpeSim)), XAR3
        MOV AR1, *AR3(short(#5)) ; |490| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 491,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#6)), AR1 ; |491| 
        MOV dbl(*(#_vpeSim)), XAR3
        MOV AR1, *AR3(short(#6)) ; |491| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 492,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#7)), AR1 ; |492| 
        MOV dbl(*(#_vpeSim)), XAR3
        MOV AR1, *AR3(short(#7)) ; |492| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 493,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#8), AR1 ; |493| 
        MOV dbl(*(#_vpeSim)), XAR3
        MOV AR1, *AR3(#8) ; |493| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 495,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#9), AR1 ; |495| 
        MOV dbl(*(#_vpeSim)), XAR3
        MOV AR1, *AR3(#10) ; |495| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 499,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #1, *AR3(#16) ; |499| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 500,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #1, *AR3(#17) ; |500| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 501,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#10), AR1 ; |501| 
        MOV dbl(*(#_vpeSim)), XAR3
        MOV AR1, *AR3(#18) ; |501| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 502,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#11), AR1 ; |502| 
        MOV dbl(*(#_vpeSim)), XAR3
        MOV AR1, *AR3(#19) ; |502| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 503,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #5, *AR3(#20) ; |503| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 505,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #0, AC0 ; |505| 
        MOV AC0, dbl(*AR3(#12)) ; |505| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 506,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #0, *AR3(#833) ; |506| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 507,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV AC0, dbl(*AR3(#14)) ; |507| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 508,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #2, *AR3(#830) ; |508| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 509,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #2, *AR3(#831) ; |509| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 512,column 2,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #0, *AR3(#50) ; |512| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 513,column 2,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #0, *AR3(#310) ; |513| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 514,column 2,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV AC0, dbl(*AR3(#52))
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 515,column 2,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV AC0, dbl(*AR3(#312))
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 520,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$175	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$175, DW_AT_low_pc(0x00)
	.dwattr $C$DW$175, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$172, DW_AT_TI_end_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$172, DW_AT_TI_end_line(0x208)
	.dwattr $C$DW$172, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$172

	.sect	".text"
	.global	_vpe_sim_read_cfg

$C$DW$176	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_sim_read_cfg")
	.dwattr $C$DW$176, DW_AT_low_pc(_vpe_sim_read_cfg)
	.dwattr $C$DW$176, DW_AT_high_pc(0x00)
	.dwattr $C$DW$176, DW_AT_TI_symbol_name("_vpe_sim_read_cfg")
	.dwattr $C$DW$176, DW_AT_external
	.dwattr $C$DW$176, DW_AT_TI_begin_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$176, DW_AT_TI_begin_line(0x210)
	.dwattr $C$DW$176, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$176, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 529,column 1,is_stmt,address _vpe_sim_read_cfg

	.dwfde $C$DW$CIE, _vpe_sim_read_cfg
$C$DW$177	.dwtag  DW_TAG_formal_parameter, DW_AT_name("input")
	.dwattr $C$DW$177, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$177, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: vpe_sim_read_cfg                                             *
;*                                                                             *
;*   Function Uses Regs : AR0,XAR0,AR1,AR3,XAR3,SP,TC1,M40,SATA,SATD,RDM,FRCT, *
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_vpe_sim_read_cfg:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$178	.dwtag  DW_TAG_variable, DW_AT_name("input")
	.dwattr $C$DW$178, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$178, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$179	.dwtag  DW_TAG_variable, DW_AT_name("samp_freq")
	.dwattr $C$DW$179, DW_AT_TI_symbol_name("_samp_freq")
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$179, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 560,column 1,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR1 ; |560| 
        MOV AR1, *SP(#2) ; |560| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 561,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV AR1, *AR3(#21) ; |561| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 562,column 3,is_stmt
        CMP *SP(#2) == #16000, TC1 ; |562| 
        BCC $C$L20,!TC1 ; |562| 
                                        ; branchcc occurs ; |562| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 563,column 5,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #1, *AR3(#24) ; |563| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 564,column 3,is_stmt
        B $C$L21  ; |564| 
                                        ; branch occurs ; |564| 
$C$L20:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 566,column 5,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #0, *AR3(#24) ; |566| 
$C$L21:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 579,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#12), AR1 ; |579| 
        MOV dbl(*(#_vpeSim)), XAR3
        MOV AR1, *AR3(#25) ; |579| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 580,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#13), AR1 ; |580| 
        MOV dbl(*(#_vpeSim)), XAR3
        MOV AR1, *AR3(#26) ; |580| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 581,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#14), AR1 ; |581| 
        MOV dbl(*(#_vpeSim)), XAR3
        MOV AR1, *AR3(#27) ; |581| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 582,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#15), AR1 ; |582| 
        MOV dbl(*(#_vpeSim)), XAR3
        MOV AR1, *AR3(#28) ; |582| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 583,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#16), AR1 ; |583| 
        MOV dbl(*(#_vpeSim)), XAR3
        MOV AR1, *AR3(#29) ; |583| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 584,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#17), AR1 ; |584| 
        MOV dbl(*(#_vpeSim)), XAR3
        MOV AR1, *AR3(#30) ; |584| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 585,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#18), AR1 ; |585| 
        MOV dbl(*(#_vpeSim)), XAR3
        MOV AR1, *AR3(#31) ; |585| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 586,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#19), AR1 ; |586| 
        MOV dbl(*(#_vpeSim)), XAR3
        MOV AR1, *AR3(#32) ; |586| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 587,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#20), AR1 ; |587| 
        MOV dbl(*(#_vpeSim)), XAR3
        MOV AR1, *AR3(#33) ; |587| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 588,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#21), AR1 ; |588| 
        MOV dbl(*(#_vpeSim)), XAR3
        MOV AR1, *AR3(#34) ; |588| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 590,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$180	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$180, DW_AT_low_pc(0x00)
	.dwattr $C$DW$180, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$176, DW_AT_TI_end_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$176, DW_AT_TI_end_line(0x24e)
	.dwattr $C$DW$176, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$176

	.sect	".text"
	.global	_vpe_init

$C$DW$181	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_init")
	.dwattr $C$DW$181, DW_AT_low_pc(_vpe_init)
	.dwattr $C$DW$181, DW_AT_high_pc(0x00)
	.dwattr $C$DW$181, DW_AT_TI_symbol_name("_vpe_init")
	.dwattr $C$DW$181, DW_AT_external
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$181, DW_AT_TI_begin_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$181, DW_AT_TI_begin_line(0x256)
	.dwattr $C$DW$181, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$181, DW_AT_TI_max_frame_size(0x14)
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 599,column 1,is_stmt,address _vpe_init

	.dwfde $C$DW$CIE, _vpe_init
$C$DW$182	.dwtag  DW_TAG_formal_parameter, DW_AT_name("input")
	.dwattr $C$DW$182, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$182, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: vpe_init                                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,     *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 20 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (18 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_vpe_init:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-19, SP
	.dwcfi	cfa_offset, 20
$C$DW$183	.dwtag  DW_TAG_variable, DW_AT_name("input")
	.dwattr $C$DW$183, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$183, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$184	.dwtag  DW_TAG_variable, DW_AT_name("hlc_cfg_info")
	.dwattr $C$DW$184, DW_AT_TI_symbol_name("_hlc_cfg_info")
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$184, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$185	.dwtag  DW_TAG_variable, DW_AT_name("slm_cfg_info")
	.dwattr $C$DW$185, DW_AT_TI_symbol_name("_slm_cfg_info")
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$185, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$186	.dwtag  DW_TAG_variable, DW_AT_name("hlcSize")
	.dwattr $C$DW$186, DW_AT_TI_symbol_name("_hlcSize")
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$186, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$187	.dwtag  DW_TAG_variable, DW_AT_name("slmSize")
	.dwattr $C$DW$187, DW_AT_TI_symbol_name("_slmSize")
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$187, DW_AT_location[DW_OP_bregx 0x24 11]
$C$DW$188	.dwtag  DW_TAG_variable, DW_AT_name("snlSize")
	.dwattr $C$DW$188, DW_AT_TI_symbol_name("_snlSize")
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$188, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$189	.dwtag  DW_TAG_variable, DW_AT_name("svdSize")
	.dwattr $C$DW$189, DW_AT_TI_symbol_name("_svdSize")
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$189, DW_AT_location[DW_OP_bregx 0x24 13]
$C$DW$190	.dwtag  DW_TAG_variable, DW_AT_name("sgnSize")
	.dwattr $C$DW$190, DW_AT_TI_symbol_name("_sgnSize")
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$190, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$191	.dwtag  DW_TAG_variable, DW_AT_name("srate_factor")
	.dwattr $C$DW$191, DW_AT_TI_symbol_name("_srate_factor")
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$191, DW_AT_location[DW_OP_bregx 0x24 15]
$C$DW$192	.dwtag  DW_TAG_variable, DW_AT_name("frame_size")
	.dwattr $C$DW$192, DW_AT_TI_symbol_name("_frame_size")
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$192, DW_AT_location[DW_OP_bregx 0x24 16]
$C$DW$193	.dwtag  DW_TAG_variable, DW_AT_name("retVal")
	.dwattr $C$DW$193, DW_AT_TI_symbol_name("_retVal")
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$193, DW_AT_location[DW_OP_bregx 0x24 17]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 607,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        CMP *AR3(#21) == #16000, TC1 ; |607| 
        BCC $C$L22,!TC1 ; |607| 
                                        ; branchcc occurs ; |607| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 608,column 5,is_stmt
        MOV #160, *SP(#16) ; |608| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 609,column 3,is_stmt
        B $C$L23  ; |609| 
                                        ; branch occurs ; |609| 
$C$L22:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 611,column 5,is_stmt
        MOV #80, *SP(#16) ; |611| 
$C$L23:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 616,column 3,is_stmt
        MOV *SP(#16), AR1 ; |616| 
        MOV AR1, *AR3(#834) ; |616| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 617,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV *SP(#16), AR1 ; |617| 
        MOV AR1, *AR3(#835) ; |617| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 618,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV *AR3(short(#6)), AR1 ; |618| 
        BCC $C$L24,AR1 == #0 ; |618| 
                                        ; branchcc occurs ; |618| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 619,column 5,is_stmt
        MOV *SP(#16), AC0 ; |619| 
        BFXTR #0x8000, AC0, AR1 ; |619| 
        ADD AC0, AR1 ; |619| 
        SFTS AR1, #-1 ; |619| 
        MOV AR1, *AR3(#835) ; |619| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 620,column 5,is_stmt
        AMOV #_decimDelayLine, XAR0 ; |620| 
        MOV #32, T1 ; |620| 
        MOV #0, T0
$C$DW$194	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$194, DW_AT_low_pc(0x00)
	.dwattr $C$DW$194, DW_AT_name("_memset")
	.dwattr $C$DW$194, DW_AT_TI_call
        CALL #_memset ; |620| 
                                        ; call occurs [#_memset] ; |620| 
$C$L24:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 622,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV *AR3(short(#7)), AR1 ; |622| 
        BCC $C$L25,AR1 == #0 ; |622| 
                                        ; branchcc occurs ; |622| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 623,column 5,is_stmt
        MOV *SP(#16), AR1 ; |623| 
        SFTL AR1, #1 ; |623| 
        MOV AR1, *AR3(#835) ; |623| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 624,column 5,is_stmt
        AMOV #_interpDelayLine, XAR0 ; |624| 
        MOV #16, T1 ; |624| 
        MOV #0, T0
$C$DW$195	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$195, DW_AT_low_pc(0x00)
	.dwattr $C$DW$195, DW_AT_name("_memset")
	.dwattr $C$DW$195, DW_AT_TI_call
        CALL #_memset ; |624| 
                                        ; call occurs [#_memset] ; |624| 
$C$L25:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 627,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV *AR3(short(#1)), AR1 ; |627| 
        BCC $C$L32,AR1 == #0 ; |627| 
                                        ; branchcc occurs ; |627| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 629,column 5,is_stmt
        MOV XSP, XAR0
        AMAR *+AR0(#10)
$C$DW$196	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$196, DW_AT_low_pc(0x00)
	.dwattr $C$DW$196, DW_AT_name("_hlcGetSizes")
	.dwattr $C$DW$196, DW_AT_TI_call
        CALL #_hlcGetSizes ; |629| 
                                        ; call occurs [#_hlcGetSizes] ; |629| 
        MOV T0, *SP(#17) ; |629| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 630,column 5,is_stmt
        MOV T0, AR1
        BCC $C$L26,AR1 == #0 ; |630| 
                                        ; branchcc occurs ; |630| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 631,column 7,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #4, *AR3(#833) ; |631| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 632,column 7,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #0, *AR3 ; |632| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 633,column 7,is_stmt
        MOV #4, T0
        B $C$L50  ; |633| 
                                        ; branch occurs ; |633| 
$C$L26:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 637,column 5,is_stmt
        MOV *SP(#10), T0 ; |637| 
$C$DW$197	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$197, DW_AT_low_pc(0x00)
	.dwattr $C$DW$197, DW_AT_name("_malloc")
	.dwattr $C$DW$197, DW_AT_TI_call
        CALL #_malloc ; |637| 
                                        ; call occurs [#_malloc] ; |637| 
        MOV XAR0, dbl(*(#_hlcInst_ptr))
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 639,column 5,is_stmt
        MOV #0, *SP(#2) ; |639| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 642,column 5,is_stmt
        OR #0x0010, *SP(#2) ; |642| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 644,column 5,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        CMP *AR3(#21) == #8000, TC1 ; |644| 
        BCC $C$L27,!TC1 ; |644| 
                                        ; branchcc occurs ; |644| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 645,column 7,is_stmt
        MOV #1, *SP(#6) ; |645| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 646,column 5,is_stmt
        B $C$L28  ; |646| 
                                        ; branch occurs ; |646| 
$C$L27:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 648,column 5,is_stmt
        MOV #2, *SP(#6) ; |648| 
$C$L28:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 652,column 5,is_stmt
        MOV #320, AR2 ; |652| 
        MOV *AR3(#835), AR1 ; |652| 

        CMPU AR1 > AR2, TC1 ; |652| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L29,TC1 ; |652| 
                                        ; branchcc occurs ; |652| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 653,column 7,is_stmt
        OR #0x0008, *SP(#2) ; |653| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 654,column 7,is_stmt
        MOV *AR3(#835), AR1 ; |654| 
        MOV AR1, *SP(#7) ; |654| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 655,column 5,is_stmt
        B $C$L30  ; |655| 
                                        ; branch occurs ; |655| 
$C$L29:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 657,column 7,is_stmt
        MOV #5, *AR3(#833) ; |657| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 658,column 7,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #0, *AR3 ; |658| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 659,column 7,is_stmt
        MOV #5, T0
        B $C$L50  ; |659| 
                                        ; branch occurs ; |659| 
$C$L30:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 663,column 5,is_stmt
        MOV XSP, XAR1
        AMAR *+AR1(#2)
$C$DW$198	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$198, DW_AT_low_pc(0x00)
	.dwattr $C$DW$198, DW_AT_name("_hlcInit")
	.dwattr $C$DW$198, DW_AT_TI_call
        CALL #_hlcInit ; |663| 
                                        ; call occurs [#_hlcInit] ; |663| 
        MOV T0, *SP(#17) ; |663| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 664,column 5,is_stmt
        MOV T0, AR1
        BCC $C$L31,AR1 == #0 ; |664| 
                                        ; branchcc occurs ; |664| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 665,column 7,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #5, *AR3(#833) ; |665| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 666,column 7,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #0, *AR3 ; |666| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 667,column 7,is_stmt
        MOV #5, T0
        B $C$L50  ; |667| 
                                        ; branch occurs ; |667| 
$C$L31:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 671,column 5,is_stmt
        MOV dbl(*(#_hctrlInst_ptr)), XAR3
        MOV #1, *AR3 ; |671| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 672,column 5,is_stmt
        MOV dbl(*(#_hlcInst_ptr)), XAR0
        MOV dbl(*(#_hctrlInst_ptr)), XAR1
$C$DW$199	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$199, DW_AT_low_pc(0x00)
	.dwattr $C$DW$199, DW_AT_name("_hlcControl")
	.dwattr $C$DW$199, DW_AT_TI_call
        CALL #_hlcControl ; |672| 
                                        ; call occurs [#_hlcControl] ; |672| 
        MOV T0, *SP(#17) ; |672| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 673,column 5,is_stmt
        MOV T0, AR1
        BCC $C$L32,AR1 == #0 ; |673| 
                                        ; branchcc occurs ; |673| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 674,column 7,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #7, *AR3(#833) ; |674| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 675,column 7,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #0, *AR3 ; |675| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 676,column 7,is_stmt
        MOV #7, T0
        B $C$L50  ; |676| 
                                        ; branch occurs ; |676| 
$C$L32:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 682,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV *AR3(short(#2)), AR1 ; |682| 
        BCC $C$L36,AR1 == #0 ; |682| 
                                        ; branchcc occurs ; |682| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 684,column 5,is_stmt
        MOV XSP, XAR0
        AMAR *+AR0(#11)
$C$DW$200	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$200, DW_AT_low_pc(0x00)
	.dwattr $C$DW$200, DW_AT_name("_slmGetSizes")
	.dwattr $C$DW$200, DW_AT_TI_call
        CALL #_slmGetSizes ; |684| 
                                        ; call occurs [#_slmGetSizes] ; |684| 
        MOV T0, *SP(#17) ; |684| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 685,column 5,is_stmt
        MOV T0, AR1
        BCC $C$L33,AR1 == #0 ; |685| 
                                        ; branchcc occurs ; |685| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 686,column 7,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #10, *AR3(#833) ; |686| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 687,column 7,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #0, *AR3 ; |687| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 688,column 7,is_stmt
        MOV #10, T0
        B $C$L50  ; |688| 
                                        ; branch occurs ; |688| 
$C$L33:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 691,column 5,is_stmt
        MOV *SP(#11), T0 ; |691| 
$C$DW$201	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$201, DW_AT_low_pc(0x00)
	.dwattr $C$DW$201, DW_AT_name("_malloc")
	.dwattr $C$DW$201, DW_AT_TI_call
        CALL #_malloc ; |691| 
                                        ; call occurs [#_malloc] ; |691| 
        MOV XAR0, dbl(*(#_slmInst_ptr))
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 694,column 5,is_stmt
        MOV #0, *SP(#8) ; |694| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 696,column 5,is_stmt
        OR #0x0001, *SP(#8) ; |696| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 697,column 5,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        CMP *AR3(#21) == #8000, TC1 ; |697| 
        BCC $C$L34,!TC1 ; |697| 
                                        ; branchcc occurs ; |697| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 698,column 7,is_stmt
        MOV #2, *SP(#9) ; |698| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 699,column 5,is_stmt
        B $C$L35  ; |699| 
                                        ; branch occurs ; |699| 
$C$L34:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 701,column 7,is_stmt
        MOV #1, *SP(#9) ; |701| 
$C$L35:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 704,column 5,is_stmt
        MOV XSP, XAR1
        AMAR *+AR1(#8)
$C$DW$202	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$202, DW_AT_low_pc(0x00)
	.dwattr $C$DW$202, DW_AT_name("_slmInit")
	.dwattr $C$DW$202, DW_AT_TI_call
        CALL #_slmInit ; |704| 
                                        ; call occurs [#_slmInit] ; |704| 
        MOV T0, *SP(#17) ; |704| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 705,column 5,is_stmt
        MOV T0, AR1
        BCC $C$L36,AR1 == #0 ; |705| 
                                        ; branchcc occurs ; |705| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 706,column 7,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #8, *AR3(#833) ; |706| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 707,column 7,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #0, *AR3 ; |707| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 708,column 7,is_stmt
        MOV #8, T0
        B $C$L50  ; |708| 
                                        ; branch occurs ; |708| 
$C$L36:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 714,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV *AR3(short(#3)), AR1 ; |714| 
        BCC $C$L41,AR1 == #0 ; |714| 
                                        ; branchcc occurs ; |714| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 715,column 5,is_stmt
        MOV XSP, XAR0
        AMAR *+AR0(#12)
$C$DW$203	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$203, DW_AT_low_pc(0x00)
	.dwattr $C$DW$203, DW_AT_name("_snlGetSizes")
	.dwattr $C$DW$203, DW_AT_TI_call
        CALL #_snlGetSizes ; |715| 
                                        ; call occurs [#_snlGetSizes] ; |715| 
        MOV T0, *SP(#17) ; |715| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 716,column 5,is_stmt
        MOV T0, AR1
        BCC $C$L37,AR1 == #0 ; |716| 
                                        ; branchcc occurs ; |716| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 717,column 7,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #11, *AR3(#833) ; |717| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 718,column 7,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #0, *AR3 ; |718| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 719,column 7,is_stmt
        MOV #11, T0
        B $C$L50  ; |719| 
                                        ; branch occurs ; |719| 
$C$L37:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 722,column 5,is_stmt
        MOV *SP(#12), T0 ; |722| 
$C$DW$204	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$204, DW_AT_low_pc(0x00)
	.dwattr $C$DW$204, DW_AT_name("_malloc")
	.dwattr $C$DW$204, DW_AT_TI_call
        CALL #_malloc ; |722| 
                                        ; call occurs [#_malloc] ; |722| 
        MOV XAR0, dbl(*(#_snlInst_ptr))
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 724,column 5,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        CMP *AR3(#21) == #8000, TC1 ; |724| 
        BCC $C$L38,!TC1 ; |724| 
                                        ; branchcc occurs ; |724| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 725,column 7,is_stmt
        MOV #1, *SP(#15) ; |725| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 726,column 5,is_stmt
        B $C$L39  ; |726| 
                                        ; branch occurs ; |726| 
$C$L38:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 728,column 7,is_stmt
        MOV #2, *SP(#15) ; |728| 
$C$L39:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 731,column 5,is_stmt
        MOV *SP(#15), T0 ; |731| 
$C$DW$205	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$205, DW_AT_low_pc(0x00)
	.dwattr $C$DW$205, DW_AT_name("_snlInit")
	.dwattr $C$DW$205, DW_AT_TI_call
        CALL #_snlInit ; |731| 
                                        ; call occurs [#_snlInit] ; |731| 
        MOV T0, *SP(#17) ; |731| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 732,column 5,is_stmt
        MOV T0, AR1
        BCC $C$L40,AR1 == #0 ; |732| 
                                        ; branchcc occurs ; |732| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 733,column 7,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #12, *AR3(#833) ; |733| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 734,column 7,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #0, *AR3 ; |734| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 735,column 7,is_stmt
        MOV #12, T0
        B $C$L50  ; |735| 
                                        ; branch occurs ; |735| 
$C$L40:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 738,column 4,is_stmt
        AMOV #$C$FSL1, XAR1 ; |738| 
        AMOV #(_snlLevOut+4), XAR0 ; |738| 
$C$DW$206	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$206, DW_AT_low_pc(0x00)
	.dwattr $C$DW$206, DW_AT_name("_strcpy")
	.dwattr $C$DW$206, DW_AT_TI_call
        CALL #_strcpy ; |738| 
                                        ; call occurs [#_strcpy] ; |738| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 739,column 4,is_stmt
        MOV #0, *(#_snlLevOut) ; |739| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 740,column 4,is_stmt
        MOV #0, AC0 ; |740| 
        MOV AC0, dbl(*(#(_snlLevOut+2)))
$C$L41:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 744,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV *AR3(short(#4)), AR1 ; |744| 
        BCC $C$L46,AR1 == #0 ; |744| 
                                        ; branchcc occurs ; |744| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 745,column 5,is_stmt
        MOV XSP, XAR0
        AMAR *+AR0(#13)
$C$DW$207	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$207, DW_AT_low_pc(0x00)
	.dwattr $C$DW$207, DW_AT_name("_svdGetSizes")
	.dwattr $C$DW$207, DW_AT_TI_call
        CALL #_svdGetSizes ; |745| 
                                        ; call occurs [#_svdGetSizes] ; |745| 
        MOV T0, *SP(#17) ; |745| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 746,column 5,is_stmt
        MOV T0, AR1
        BCC $C$L42,AR1 == #0 ; |746| 
                                        ; branchcc occurs ; |746| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 747,column 7,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #18, *AR3(#833) ; |747| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 748,column 7,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #0, *AR3 ; |748| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 749,column 7,is_stmt
        MOV #18, T0 ; |749| 
        B $C$L50  ; |749| 
                                        ; branch occurs ; |749| 
$C$L42:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 752,column 5,is_stmt
        MOV *SP(#13), T0 ; |752| 
$C$DW$208	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$208, DW_AT_low_pc(0x00)
	.dwattr $C$DW$208, DW_AT_name("_malloc")
	.dwattr $C$DW$208, DW_AT_TI_call
        CALL #_malloc ; |752| 
                                        ; call occurs [#_malloc] ; |752| 
        MOV XAR0, dbl(*(#_svdInst_ptr))
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 754,column 5,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        CMP *AR3(#21) == #8000, TC1 ; |754| 
        BCC $C$L43,!TC1 ; |754| 
                                        ; branchcc occurs ; |754| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 755,column 7,is_stmt
        MOV #1, *SP(#15) ; |755| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 756,column 5,is_stmt
        B $C$L44  ; |756| 
                                        ; branch occurs ; |756| 
$C$L43:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 758,column 7,is_stmt
        MOV #2, *SP(#15) ; |758| 
$C$L44:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 761,column 5,is_stmt
        MOV *SP(#15), T0 ; |761| 
$C$DW$209	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$209, DW_AT_low_pc(0x00)
	.dwattr $C$DW$209, DW_AT_name("_svdInit")
	.dwattr $C$DW$209, DW_AT_TI_call
        CALL #_svdInit ; |761| 
                                        ; call occurs [#_svdInit] ; |761| 
        MOV T0, *SP(#17) ; |761| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 762,column 5,is_stmt
        MOV T0, AR1
        BCC $C$L45,AR1 == #0 ; |762| 
                                        ; branchcc occurs ; |762| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 763,column 7,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #19, *AR3(#833) ; |763| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 764,column 7,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV #0, *AR3 ; |764| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 765,column 7,is_stmt
        MOV #19, T0 ; |765| 
        B $C$L50  ; |765| 
                                        ; branch occurs ; |765| 
$C$L45:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 769,column 5,is_stmt
        AMOV #$C$FSL2, XAR1 ; |769| 
        AMOV #(_svdOut+4), XAR0 ; |769| 
$C$DW$210	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$210, DW_AT_low_pc(0x00)
	.dwattr $C$DW$210, DW_AT_name("_strcpy")
	.dwattr $C$DW$210, DW_AT_TI_call
        CALL #_strcpy ; |769| 
                                        ; call occurs [#_strcpy] ; |769| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 770,column 5,is_stmt
        MOV #0, *(#_svdOut) ; |770| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 771,column 5,is_stmt
        MOV #0, AC0 ; |771| 
        MOV AC0, dbl(*(#(_svdOut+2)))
$C$L46:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 774,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV *AR3(short(#5)), AR1 ; |774| 
        BCC $C$L49,AR1 == #0 ; |774| 
                                        ; branchcc occurs ; |774| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 775,column 5,is_stmt
        CMP *AR3(#21) == #8000, TC1 ; |775| 
        BCC $C$L47,!TC1 ; |775| 
                                        ; branchcc occurs ; |775| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 776,column 7,is_stmt
        MOV #0, *SP(#15) ; |776| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 777,column 5,is_stmt
        B $C$L48  ; |777| 
                                        ; branch occurs ; |777| 
$C$L47:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 779,column 5,is_stmt
        MOV #1, *SP(#15) ; |779| 
$C$L48:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 782,column 3,is_stmt
        MOV *SP(#15), T0 ; |782| 
$C$DW$211	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$211, DW_AT_low_pc(0x00)
	.dwattr $C$DW$211, DW_AT_name("_vpe_instantiate_nr")
	.dwattr $C$DW$211, DW_AT_TI_call
        CALL #_vpe_instantiate_nr ; |782| 
                                        ; call occurs [#_vpe_instantiate_nr] ; |782| 
        MOV T0, *SP(#17) ; |782| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 783,column 3,is_stmt
        MOV T0, AR1
        BCC $C$L50,AR1 != #0 ; |783| 
                                        ; branchcc occurs ; |783| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 784,column 5,is_stmt
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 787,column 2,is_stmt
        MOV dbl(*(#_vpeSim)), XAR0
        AADD #24, AR0 ; |787| 
$C$DW$212	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$212, DW_AT_low_pc(0x00)
	.dwattr $C$DW$212, DW_AT_name("_vpe_config_nr")
	.dwattr $C$DW$212, DW_AT_TI_call
        CALL #_vpe_config_nr ; |787| 
                                        ; call occurs [#_vpe_config_nr] ; |787| 
        MOV T0, *SP(#17) ; |787| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 788,column 3,is_stmt
        MOV T0, AR1
        BCC $C$L50,AR1 != #0 ; |788| 
                                        ; branchcc occurs ; |788| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 789,column 5,is_stmt
$C$L49:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 807,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#22), AR1 ; |807| 
        MOV dbl(*(#_vpeSim)), XAR3
        MOV AR1, *AR3(#36) ; |807| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 808,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#23), AR1 ; |808| 
        MOV dbl(*(#_vpeSim)), XAR3
        MOV AR1, *AR3(#37) ; |808| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 809,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#24), AR1 ; |809| 
        MOV dbl(*(#_vpeSim)), XAR3
        MOV AR1, *AR3(#38) ; |809| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 810,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#25), AR1 ; |810| 
        MOV dbl(*(#_vpeSim)), XAR3
        MOV AR1, *AR3(#39) ; |810| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 811,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#26), AR1 ; |811| 
        MOV dbl(*(#_vpeSim)), XAR3
        MOV AR1, *AR3(#40) ; |811| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 812,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#27), AR1 ; |812| 
        MOV dbl(*(#_vpeSim)), XAR3
        MOV AR1, *AR3(#41) ; |812| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 813,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#28), AR1 ; |813| 
        MOV dbl(*(#_vpeSim)), XAR3
        MOV AR1, *AR3(#42) ; |813| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 814,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#29), AR1 ; |814| 
        MOV dbl(*(#_vpeSim)), XAR3
        MOV AR1, *AR3(#43) ; |814| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 815,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#30), AC0 ; |815| 
        MOV dbl(*(#_vpeSim)), XAR3
        MOV AC0, dbl(*AR3(#44)) ; |815| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 816,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#31), AR1 ; |816| 
        MOV dbl(*(#_vpeSim)), XAR3
        MOV AR1, *AR3(#46) ; |816| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 817,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#32), AR1 ; |817| 
        MOV dbl(*(#_vpeSim)), XAR3
        MOV AR1, *AR3(#47) ; |817| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 818,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#33), AC0 ; |818| 
        MOV dbl(*(#_vpeSim)), XAR3
        MOV AC0, dbl(*AR3(#48)) ; |818| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 820,column 3,is_stmt
        MOV XSP, XAR0
        AMAR *+AR0(#14)
$C$DW$213	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$213, DW_AT_low_pc(0x00)
	.dwattr $C$DW$213, DW_AT_name("_sgnGetSizes")
	.dwattr $C$DW$213, DW_AT_TI_call
        CALL #_sgnGetSizes ; |820| 
                                        ; call occurs [#_sgnGetSizes] ; |820| 
        MOV T0, *SP(#17) ; |820| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 821,column 3,is_stmt
        MOV *SP(#14), T0 ; |821| 
$C$DW$214	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$214, DW_AT_low_pc(0x00)
	.dwattr $C$DW$214, DW_AT_name("_malloc")
	.dwattr $C$DW$214, DW_AT_TI_call
        CALL #_malloc ; |821| 
                                        ; call occurs [#_malloc] ; |821| 
        MOV XAR0, dbl(*(#_sgnInst_ptr))
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 822,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR1
$C$DW$215	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$215, DW_AT_low_pc(0x00)
	.dwattr $C$DW$215, DW_AT_name("_vpe_sim_open_sgn")
	.dwattr $C$DW$215, DW_AT_TI_call
        CALL #_vpe_sim_open_sgn ; |822| 
                                        ; call occurs [#_vpe_sim_open_sgn] ; |822| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 824,column 3,is_stmt
        MOV #0, T0
$C$L50:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 825,column 1,is_stmt
        AADD #19, SP
	.dwcfi	cfa_offset, 1
$C$DW$216	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$216, DW_AT_low_pc(0x00)
	.dwattr $C$DW$216, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$181, DW_AT_TI_end_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$181, DW_AT_TI_end_line(0x339)
	.dwattr $C$DW$181, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$181

	.sect	".text"
	.global	_vpe_sim_open_sgn

$C$DW$217	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_sim_open_sgn")
	.dwattr $C$DW$217, DW_AT_low_pc(_vpe_sim_open_sgn)
	.dwattr $C$DW$217, DW_AT_high_pc(0x00)
	.dwattr $C$DW$217, DW_AT_TI_symbol_name("_vpe_sim_open_sgn")
	.dwattr $C$DW$217, DW_AT_external
	.dwattr $C$DW$217, DW_AT_TI_begin_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$217, DW_AT_TI_begin_line(0x341)
	.dwattr $C$DW$217, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$217, DW_AT_TI_max_frame_size(0x26)
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 834,column 1,is_stmt,address _vpe_sim_open_sgn

	.dwfde $C$DW$CIE, _vpe_sim_open_sgn
$C$DW$218	.dwtag  DW_TAG_formal_parameter, DW_AT_name("inst")
	.dwattr $C$DW$218, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$218, DW_AT_location[DW_OP_reg17]
$C$DW$219	.dwtag  DW_TAG_formal_parameter, DW_AT_name("input")
	.dwattr $C$DW$219, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$219, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$219, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: vpe_sim_open_sgn                                             *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,M40,SATA,SATD, *
;*                        RDM,FRCT,SMUL                                        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 38 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (36 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_vpe_sim_open_sgn:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-37, SP
	.dwcfi	cfa_offset, 38
$C$DW$220	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$220, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$220, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$221	.dwtag  DW_TAG_variable, DW_AT_name("input")
	.dwattr $C$DW$221, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$221, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$222	.dwtag  DW_TAG_variable, DW_AT_name("cfg")
	.dwattr $C$DW$222, DW_AT_TI_symbol_name("_cfg")
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$222, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 854,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#23), AR1 ; |854| 
        MOV AR1, *SP(#5) ; |854| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 855,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#24), AR1 ; |855| 
        MOV AR1, *SP(#6) ; |855| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 856,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#25), AR1 ; |856| 
        MOV AR1, *SP(#7) ; |856| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 857,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#26), AR1 ; |857| 
        MOV AR1, *SP(#8) ; |857| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 858,column 3,is_stmt
        MOV dbl(*(#_vpeSim)), XAR3
        MOV *AR3(#21), AR1 ; |858| 
        MOV AR1, *SP(#9) ; |858| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 859,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#27), AR1 ; |859| 
        MOV AR1, *SP(#10) ; |859| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 860,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#28), AR1 ; |860| 
        MOV AR1, *SP(#11) ; |860| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 861,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#34), AR1 ; |861| 
        MOV AR1, *SP(#12) ; |861| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 862,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#35), AR1 ; |862| 
        MOV AR1, *SP(#13) ; |862| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 863,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#29), AR1 ; |863| 
        MOV AR1, *SP(#19) ; |863| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 864,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#30), AR1 ; |864| 
        MOV AR1, *SP(#20) ; |864| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 865,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#31), AR1 ; |865| 
        MOV AR1, *SP(#21) ; |865| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 866,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#36), AC0 ; |866| 
        MOV AC0, dbl(*SP(#14)) ; |866| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 867,column 3,is_stmt
        AMOV #(_vpe_sim_fsk_data+1), XAR3 ; |867| 
        MOV XAR3, dbl(*SP(#16))
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 868,column 3,is_stmt
        MOV #1, *SP(#18) ; |868| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 869,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#32), AR1 ; |869| 
        MOV AR1, *SP(#22) ; |869| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 870,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#33), AR1 ; |870| 
        MOV AR1, *SP(#23) ; |870| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 871,column 3,is_stmt
        MOV #(_vpe_sim_in_file >> 16) << #16, AC0 ; |871| 
        OR #(_vpe_sim_in_file & 0xffff), AC0, AC0 ; |871| 
        MOV AC0, dbl(*SP(#24)) ; |871| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 873,column 3,is_stmt
        MOV XSP, XAR1
        AMAR *+AR1(#4)
        MOV dbl(*SP(#0)), XAR0
$C$DW$223	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$223, DW_AT_low_pc(0x00)
	.dwattr $C$DW$223, DW_AT_name("_sgnInit")
	.dwattr $C$DW$223, DW_AT_TI_call
        CALL #_sgnInit ; |873| 
                                        ; call occurs [#_sgnInit] ; |873| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 874,column 1,is_stmt
        AADD #37, SP
	.dwcfi	cfa_offset, 1
$C$DW$224	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$224, DW_AT_low_pc(0x00)
	.dwattr $C$DW$224, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$217, DW_AT_TI_end_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$217, DW_AT_TI_end_line(0x36a)
	.dwattr $C$DW$217, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$217

	.sect	".text"
	.global	_vpe_sim_set_sgn

$C$DW$225	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_sim_set_sgn")
	.dwattr $C$DW$225, DW_AT_low_pc(_vpe_sim_set_sgn)
	.dwattr $C$DW$225, DW_AT_high_pc(0x00)
	.dwattr $C$DW$225, DW_AT_TI_symbol_name("_vpe_sim_set_sgn")
	.dwattr $C$DW$225, DW_AT_external
	.dwattr $C$DW$225, DW_AT_TI_begin_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$225, DW_AT_TI_begin_line(0x372)
	.dwattr $C$DW$225, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$225, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 883,column 1,is_stmt,address _vpe_sim_set_sgn

	.dwfde $C$DW$CIE, _vpe_sim_set_sgn
$C$DW$226	.dwtag  DW_TAG_formal_parameter, DW_AT_name("inst")
	.dwattr $C$DW$226, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$226, DW_AT_location[DW_OP_reg17]
$C$DW$227	.dwtag  DW_TAG_formal_parameter, DW_AT_name("sgn")
	.dwattr $C$DW$227, DW_AT_TI_symbol_name("_sgn")
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$227, DW_AT_location[DW_OP_reg19]
$C$DW$228	.dwtag  DW_TAG_formal_parameter, DW_AT_name("Fs")
	.dwattr $C$DW$228, DW_AT_TI_symbol_name("_Fs")
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$228, DW_AT_location[DW_OP_reg12]
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
$C$DW$229	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$229, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$229, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$230	.dwtag  DW_TAG_variable, DW_AT_name("sgn")
	.dwattr $C$DW$230, DW_AT_TI_symbol_name("_sgn")
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$230, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$231	.dwtag  DW_TAG_variable, DW_AT_name("Fs")
	.dwattr $C$DW$231, DW_AT_TI_symbol_name("_Fs")
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$231, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$232	.dwtag  DW_TAG_variable, DW_AT_name("ctl")
	.dwattr $C$DW$232, DW_AT_TI_symbol_name("_ctl")
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$232, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV T0, *SP(#4) ; |883| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 886,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3, AR1 ; |886| 
        BCC $C$L55,AR1 == #0 ; |886| 
                                        ; branchcc occurs ; |886| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 887,column 5,is_stmt
        MOV *SP(#4), AR1 ; |887| 
        MOV AR1, *SP(#7) ; |887| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 888,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        CMP *AR3(short(#2)) == #4, TC1 ; |888| 
        BCC $C$L51,TC1 ; |888| 
                                        ; branchcc occurs ; |888| 
        CMP *AR3(short(#2)) == #5, TC1 ; |888| 
        BCC $C$L52,!TC1 ; |888| 
                                        ; branchcc occurs ; |888| 
$C$L51:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 889,column 7,is_stmt
        MOV #6, *SP(#6) ; |889| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 890,column 7,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#11), AR1 ; |890| 
        MOV AR1, *SP(#8) ; |890| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 891,column 5,is_stmt
        B $C$L54  ; |891| 
                                        ; branch occurs ; |891| 
$C$L52:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 892,column 10,is_stmt
        CMP *AR3(short(#2)) == #7, TC1 ; |892| 
        BCC $C$L53,!TC1 ; |892| 
                                        ; branchcc occurs ; |892| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 893,column 7,is_stmt
        MOV #8, *SP(#6) ; |893| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 894,column 7,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#11), AR1 ; |894| 
        MOV AR1, *SP(#8) ; |894| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 895,column 5,is_stmt
        B $C$L54  ; |895| 
                                        ; branch occurs ; |895| 
$C$L53:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 897,column 7,is_stmt
        MOV #1, *SP(#6) ; |897| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 898,column 7,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#3)), AR1 ; |898| 
        MOV AR1, *SP(#8) ; |898| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 899,column 7,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#4)), AR1 ; |899| 
        MOV AR1, *SP(#9) ; |899| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 900,column 7,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#5)), AR1 ; |900| 
        MOV AR1, *SP(#10) ; |900| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 901,column 7,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#6)), AR1 ; |901| 
        MOV AR1, *SP(#11) ; |901| 
$C$L54:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 903,column 5,is_stmt
        MOV XSP, XAR1
        MOV dbl(*SP(#0)), XAR0
        AMAR *+AR1(#6)
$C$DW$233	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$233, DW_AT_low_pc(0x00)
	.dwattr $C$DW$233, DW_AT_name("_sgnControl")
	.dwattr $C$DW$233, DW_AT_TI_call
        CALL #_sgnControl ; |903| 
                                        ; call occurs [#_sgnControl] ; |903| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 905,column 5,is_stmt
        MOV #2, *SP(#6) ; |905| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 906,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#7)), AR1 ; |906| 
        MOV AR1, *SP(#8) ; |906| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 907,column 3,is_stmt
        B $C$L60  ; |907| 
                                        ; branch occurs ; |907| 
$C$L55:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 909,column 5,is_stmt
        CMP *AR3(short(#2)) == #4, TC1 ; |909| 
        BCC $C$L56,TC1 ; |909| 
                                        ; branchcc occurs ; |909| 
        CMP *AR3(short(#2)) == #5, TC1 ; |909| 
        BCC $C$L57,!TC1 ; |909| 
                                        ; branchcc occurs ; |909| 
$C$L56:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 910,column 7,is_stmt
        MOV #6, *SP(#6) ; |910| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 911,column 7,is_stmt
        MOV #-80, *SP(#8) ; |911| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 912,column 5,is_stmt
        B $C$L59  ; |912| 
                                        ; branch occurs ; |912| 
$C$L57:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 913,column 10,is_stmt
        CMP *AR3(short(#2)) == #7, TC1 ; |913| 
        BCC $C$L58,!TC1 ; |913| 
                                        ; branchcc occurs ; |913| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 914,column 7,is_stmt
        MOV #8, *SP(#6) ; |914| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 915,column 7,is_stmt
        MOV #-80, *SP(#8) ; |915| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 916,column 5,is_stmt
        B $C$L59  ; |916| 
                                        ; branch occurs ; |916| 
$C$L58:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 918,column 7,is_stmt
        MOV #1, *SP(#6) ; |918| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 919,column 7,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#3)), AR1 ; |919| 
        MOV AR1, *SP(#8) ; |919| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 920,column 7,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#4)), AR1 ; |920| 
        MOV AR1, *SP(#9) ; |920| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 921,column 7,is_stmt
        MOV #0, *SP(#10) ; |921| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 922,column 7,is_stmt
        MOV #0, *SP(#11) ; |922| 
$C$L59:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 924,column 5,is_stmt
        MOV XSP, XAR1
        MOV dbl(*SP(#0)), XAR0
        AMAR *+AR1(#6)
$C$DW$234	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$234, DW_AT_low_pc(0x00)
	.dwattr $C$DW$234, DW_AT_name("_sgnControl")
	.dwattr $C$DW$234, DW_AT_TI_call
        CALL #_sgnControl ; |924| 
                                        ; call occurs [#_sgnControl] ; |924| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 926,column 5,is_stmt
        MOV #2, *SP(#6) ; |926| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 927,column 5,is_stmt
        MOV #-80, *SP(#8) ; |927| 
$C$L60:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 929,column 3,is_stmt
        MOV XSP, XAR1
        MOV dbl(*SP(#0)), XAR0
        AMAR *+AR1(#6)
$C$DW$235	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$235, DW_AT_low_pc(0x00)
	.dwattr $C$DW$235, DW_AT_name("_sgnControl")
	.dwattr $C$DW$235, DW_AT_TI_call
        CALL #_sgnControl ; |929| 
                                        ; call occurs [#_sgnControl] ; |929| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 930,column 1,is_stmt
        AADD #15, SP
	.dwcfi	cfa_offset, 1
$C$DW$236	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$236, DW_AT_low_pc(0x00)
	.dwattr $C$DW$236, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$225, DW_AT_TI_end_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$225, DW_AT_TI_end_line(0x3a2)
	.dwattr $C$DW$225, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$225

	.sect	".text"
	.global	_vpe_sim_gen_frame

$C$DW$237	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_sim_gen_frame")
	.dwattr $C$DW$237, DW_AT_low_pc(_vpe_sim_gen_frame)
	.dwattr $C$DW$237, DW_AT_high_pc(0x00)
	.dwattr $C$DW$237, DW_AT_TI_symbol_name("_vpe_sim_gen_frame")
	.dwattr $C$DW$237, DW_AT_external
	.dwattr $C$DW$237, DW_AT_TI_begin_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$237, DW_AT_TI_begin_line(0x3ab)
	.dwattr $C$DW$237, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$237, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 940,column 1,is_stmt,address _vpe_sim_gen_frame

	.dwfde $C$DW$CIE, _vpe_sim_gen_frame
$C$DW$238	.dwtag  DW_TAG_formal_parameter, DW_AT_name("inst")
	.dwattr $C$DW$238, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$238, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$238, DW_AT_location[DW_OP_reg17]
$C$DW$239	.dwtag  DW_TAG_formal_parameter, DW_AT_name("frame_size")
	.dwattr $C$DW$239, DW_AT_TI_symbol_name("_frame_size")
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$239, DW_AT_location[DW_OP_reg12]
$C$DW$240	.dwtag  DW_TAG_formal_parameter, DW_AT_name("frame")
	.dwattr $C$DW$240, DW_AT_TI_symbol_name("_frame")
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$240, DW_AT_location[DW_OP_reg19]
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
$C$DW$241	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$241, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$241, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$241, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$242	.dwtag  DW_TAG_variable, DW_AT_name("frame_size")
	.dwattr $C$DW$242, DW_AT_TI_symbol_name("_frame_size")
	.dwattr $C$DW$242, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$242, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$243	.dwtag  DW_TAG_variable, DW_AT_name("frame")
	.dwattr $C$DW$243, DW_AT_TI_symbol_name("_frame")
	.dwattr $C$DW$243, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$243, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR1, dbl(*SP(#4))
        MOV T0, *SP(#2) ; |940| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 942,column 3,is_stmt
        MOV *SP(#2), T0 ; |942| 
        MOV dbl(*SP(#4)), XAR1
$C$DW$244	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$244, DW_AT_low_pc(0x00)
	.dwattr $C$DW$244, DW_AT_name("_sgnGenerateFrame")
	.dwattr $C$DW$244, DW_AT_TI_call
        CALL #_sgnGenerateFrame ; |942| 
                                        ; call occurs [#_sgnGenerateFrame] ; |942| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 944,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$245	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$245, DW_AT_low_pc(0x00)
	.dwattr $C$DW$245, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$237, DW_AT_TI_end_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$237, DW_AT_TI_end_line(0x3b0)
	.dwattr $C$DW$237, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$237

	.sect	".text"
	.global	_vpe_sim_in_file

$C$DW$246	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_sim_in_file")
	.dwattr $C$DW$246, DW_AT_low_pc(_vpe_sim_in_file)
	.dwattr $C$DW$246, DW_AT_high_pc(0x00)
	.dwattr $C$DW$246, DW_AT_TI_symbol_name("_vpe_sim_in_file")
	.dwattr $C$DW$246, DW_AT_external
	.dwattr $C$DW$246, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$246, DW_AT_TI_begin_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$246, DW_AT_TI_begin_line(0x3b6)
	.dwattr $C$DW$246, DW_AT_TI_begin_column(0x0e)
	.dwattr $C$DW$246, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 951,column 1,is_stmt,address _vpe_sim_in_file

	.dwfde $C$DW$CIE, _vpe_sim_in_file
$C$DW$247	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dsc")
	.dwattr $C$DW$247, DW_AT_TI_symbol_name("_dsc")
	.dwattr $C$DW$247, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$247, DW_AT_location[DW_OP_reg17]
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
$C$DW$248	.dwtag  DW_TAG_variable, DW_AT_name("dsc")
	.dwattr $C$DW$248, DW_AT_TI_symbol_name("_dsc")
	.dwattr $C$DW$248, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$248, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 952,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3), XAR3
        MOV XAR3, dbl(*(#_inFrame))
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 953,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#2)), AR1 ; |953| 
        MOV AR1, *(#_inCnt) ; |953| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 954,column 3,is_stmt
 nop
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 955,column 3,is_stmt
 nop
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 956,column 3,is_stmt
 nop
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 957,column 3,is_stmt
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 958,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$249	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$249, DW_AT_low_pc(0x00)
	.dwattr $C$DW$249, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$246, DW_AT_TI_end_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$246, DW_AT_TI_end_line(0x3be)
	.dwattr $C$DW$246, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$246

	.sect	".text"
	.global	_vpe_sim_flush_cache

$C$DW$250	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_sim_flush_cache")
	.dwattr $C$DW$250, DW_AT_low_pc(_vpe_sim_flush_cache)
	.dwattr $C$DW$250, DW_AT_high_pc(0x00)
	.dwattr $C$DW$250, DW_AT_TI_symbol_name("_vpe_sim_flush_cache")
	.dwattr $C$DW$250, DW_AT_external
	.dwattr $C$DW$250, DW_AT_TI_begin_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$250, DW_AT_TI_begin_line(0x3cb)
	.dwattr $C$DW$250, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$250, DW_AT_TI_max_frame_size(0x01)
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 971,column 28,is_stmt,address _vpe_sim_flush_cache

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
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 972,column 3,is_stmt
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 973,column 1,is_stmt
$C$DW$251	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$251, DW_AT_low_pc(0x00)
	.dwattr $C$DW$251, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$250, DW_AT_TI_end_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$250, DW_AT_TI_end_line(0x3cd)
	.dwattr $C$DW$250, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$250

	.sect	".text"
	.global	_vpe_instantiate_nr

$C$DW$252	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_instantiate_nr")
	.dwattr $C$DW$252, DW_AT_low_pc(_vpe_instantiate_nr)
	.dwattr $C$DW$252, DW_AT_high_pc(0x00)
	.dwattr $C$DW$252, DW_AT_TI_symbol_name("_vpe_instantiate_nr")
	.dwattr $C$DW$252, DW_AT_external
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$252, DW_AT_TI_begin_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$252, DW_AT_TI_begin_line(0x3cf)
	.dwattr $C$DW$252, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$252, DW_AT_TI_max_frame_size(0x3a)
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 976,column 1,is_stmt,address _vpe_instantiate_nr

	.dwfde $C$DW$CIE, _vpe_instantiate_nr
$C$DW$253	.dwtag  DW_TAG_formal_parameter, DW_AT_name("srate")
	.dwattr $C$DW$253, DW_AT_TI_symbol_name("_srate")
	.dwattr $C$DW$253, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$253, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: vpe_instantiate_nr                                           *
;*                                                                             *
;*   Function Uses Regs : AC0,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,CARRY, *
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 58 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (56 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_vpe_instantiate_nr:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-57, SP
	.dwcfi	cfa_offset, 58
$C$DW$254	.dwtag  DW_TAG_variable, DW_AT_name("srate")
	.dwattr $C$DW$254, DW_AT_TI_symbol_name("_srate")
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$254, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$255	.dwtag  DW_TAG_variable, DW_AT_name("bufs_req_by_nr")
	.dwattr $C$DW$255, DW_AT_TI_symbol_name("_bufs_req_by_nr")
	.dwattr $C$DW$255, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$255, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$256	.dwtag  DW_TAG_variable, DW_AT_name("bufs_alloc_for_nr")
	.dwattr $C$DW$256, DW_AT_TI_symbol_name("_bufs_alloc_for_nr")
	.dwattr $C$DW$256, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$256, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$257	.dwtag  DW_TAG_variable, DW_AT_name("nr_size_cfg")
	.dwattr $C$DW$257, DW_AT_TI_symbol_name("_nr_size_cfg")
	.dwattr $C$DW$257, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$257, DW_AT_location[DW_OP_bregx 0x24 46]
$C$DW$258	.dwtag  DW_TAG_variable, DW_AT_name("nr_new_cfg")
	.dwattr $C$DW$258, DW_AT_TI_symbol_name("_nr_new_cfg")
	.dwattr $C$DW$258, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$258, DW_AT_location[DW_OP_bregx 0x24 48]
$C$DW$259	.dwtag  DW_TAG_variable, DW_AT_name("nr_open_cfg")
	.dwattr $C$DW$259, DW_AT_TI_symbol_name("_nr_open_cfg")
	.dwattr $C$DW$259, DW_AT_type(*$C$DW$T$167)
	.dwattr $C$DW$259, DW_AT_location[DW_OP_bregx 0x24 52]
$C$DW$260	.dwtag  DW_TAG_variable, DW_AT_name("num_bufs_req_by_nr")
	.dwattr $C$DW$260, DW_AT_TI_symbol_name("_num_bufs_req_by_nr")
	.dwattr $C$DW$260, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$260, DW_AT_location[DW_OP_bregx 0x24 53]
$C$DW$261	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$261, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$261, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$261, DW_AT_location[DW_OP_bregx 0x24 54]
$C$DW$262	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$262, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$262, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$262, DW_AT_location[DW_OP_bregx 0x24 55]
        MOV T0, *SP(#0) ; |976| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 986,column 3,is_stmt
        MOV T0, AR1
        MOV AR1, *SP(#46) ; |986| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 987,column 3,is_stmt
        MOV XSP, XAR2
        MOV XSP, XAR0
        MOV XSP, XAR1
        AMAR *+AR2(#46)
        AMAR *+AR0(#53)
        AMAR *+AR1(#2)
$C$DW$263	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$263, DW_AT_low_pc(0x00)
	.dwattr $C$DW$263, DW_AT_name("_asnrGetSizes")
	.dwattr $C$DW$263, DW_AT_TI_call
        CALL #_asnrGetSizes ; |987| 
                                        ; call occurs [#_asnrGetSizes] ; |987| 
        MOV T0, *SP(#54) ; |987| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 988,column 3,is_stmt
        MOV T0, AR1
        BCC $C$L64,AR1 != #0 ; |988| 
                                        ; branchcc occurs ; |988| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 991,column 5,is_stmt
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 994,column 3,is_stmt
        CMP *SP(#53) == #7, TC1 ; |994| 
        BCC $C$L61,TC1 ; |994| 
                                        ; branchcc occurs ; |994| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 998,column 5,is_stmt
        MOV #3, T0
        B $C$L64  ; |998| 
                                        ; branch occurs ; |998| 
$C$L61:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1003,column 8,is_stmt
        MOV #0, *SP(#55) ; |1003| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1003,column 13,is_stmt
        MOV *SP(#53), AR1 ; |1003| 
        MOV *SP(#55), AR2 ; |1003| 

        CMP AR2 >= AR1, TC1 ; |1003| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L63,TC1 ; |1003| 
                                        ; branchcc occurs ; |1003| 
$C$L62:    
$C$DW$L$_vpe_instantiate_nr$5$B:
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1004,column 5,is_stmt
        MOV XSP, XAR3
        MPYMK *SP(#55), #6, AC0 ; |1004| 
        MOV AC0, T0 ; |1004| 
        AMAR *+AR3(#4)
        MOV #1, *AR3(T0) ; |1004| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1005,column 5,is_stmt
        MOV XSP, XAR3
        MPYMK *SP(#55), #6, AC0 ; |1005| 
        MOV AC0, T0 ; |1005| 
        AMAR *+AR3(#7)
        MOV #0, *AR3(T0) ; |1005| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1003,column 35,is_stmt
        ADD #1, *SP(#55) ; |1003| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1003,column 13,is_stmt
        MOV *SP(#53), AR1 ; |1003| 
        MOV *SP(#55), AR2 ; |1003| 

        CMP AR2 < AR1, TC1 ; |1003| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L62,TC1 ; |1003| 
                                        ; branchcc occurs ; |1003| 
$C$DW$L$_vpe_instantiate_nr$5$E:
$C$L63:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1007,column 3,is_stmt
        AMOV #_nr_buff0, XAR3 ; |1007| 
        MOV XAR3, dbl(*SP(#8))
        NOP       ;                     avoids Silicon Exception CPU_7
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1008,column 3,is_stmt
        MOV #44, *SP(#6) ; |1008| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1009,column 3,is_stmt
        MOV #1, *SP(#5) ; |1009| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1011,column 3,is_stmt
        AMOV #_nr_buff1, XAR3 ; |1011| 
        MOV XAR3, dbl(*SP(#14))
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1012,column 3,is_stmt
        MOV #774, *SP(#12) ; |1012| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1013,column 3,is_stmt
        MOV #1, *SP(#11) ; |1013| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1014,column 3,is_stmt
        MOV #1, *SP(#13) ; |1014| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1016,column 3,is_stmt
        AMOV #_nr_buff2, XAR3 ; |1016| 
        MOV XAR3, dbl(*SP(#20))
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1017,column 3,is_stmt
        MOV #516, *SP(#18) ; |1017| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1018,column 3,is_stmt
        MOV #1, *SP(#17) ; |1018| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1019,column 3,is_stmt
        MOV #1, *SP(#19) ; |1019| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1021,column 3,is_stmt
        AMOV #_nr_buff3, XAR3 ; |1021| 
        MOV XAR3, dbl(*SP(#26))
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1022,column 3,is_stmt
        MOV #387, *SP(#24) ; |1022| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1023,column 3,is_stmt
        MOV #1, *SP(#23) ; |1023| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1024,column 3,is_stmt
        MOV #1, *SP(#25) ; |1024| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1026,column 3,is_stmt
        AMOV #_nr_buff4, XAR3 ; |1026| 
        MOV XAR3, dbl(*SP(#32))
        NOP       ;                     avoids Silicon Exception CPU_7
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1027,column 3,is_stmt
        MOV #192, *SP(#30) ; |1027| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1028,column 3,is_stmt
        MOV #1, *SP(#29) ; |1028| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1030,column 3,is_stmt
        AMOV #_nr_buff5, XAR3 ; |1030| 
        MOV XAR3, dbl(*SP(#38))
        NOP       ;                     avoids Silicon Exception CPU_7
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1031,column 3,is_stmt
        MOV #516, *SP(#36) ; |1031| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1032,column 3,is_stmt
        MOV #1, *SP(#35) ; |1032| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1034,column 3,is_stmt
        AMOV #_nr_buff6, XAR3 ; |1034| 
        MOV XAR3, dbl(*SP(#44))
        NOP       ;                     avoids Silicon Exception CPU_7
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1035,column 3,is_stmt
        MOV #14, *SP(#42) ; |1035| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1036,column 3,is_stmt
        MOV #1, *SP(#41) ; |1036| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1039,column 3,is_stmt
        AMOV #_nr_handle, XAR3 ; |1039| 
        MOV XAR3, dbl(*SP(#48))
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1040,column 3,is_stmt
        MOV *SP(#46), AR1 ; |1040| 
        MOV AR1, *SP(#50) ; |1040| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1041,column 3,is_stmt
        MOV XSP, XAR2
        MOV XSP, XAR1
        AMOV #_nrInst_ptr, XAR0 ; |1041| 
        AMAR *+AR2(#48)
        MOV *SP(#53), T0 ; |1041| 
        AMAR *+AR1(#4)
$C$DW$264	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$264, DW_AT_low_pc(0x00)
	.dwattr $C$DW$264, DW_AT_name("_asnrNew")
	.dwattr $C$DW$264, DW_AT_TI_call
        CALL #_asnrNew ; |1041| 
                                        ; call occurs [#_asnrNew] ; |1041| 
        MOV T0, *SP(#54) ; |1041| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1042,column 3,is_stmt
        MOV T0, AR1
        BCC $C$L64,AR1 != #0 ; |1042| 
                                        ; branchcc occurs ; |1042| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1045,column 5,is_stmt
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1049,column 3,is_stmt
        MOV *SP(#0), AR1 ; |1049| 
        MOV AR1, *SP(#52) ; |1049| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1050,column 3,is_stmt
        MOV XSP, XAR1
        MOV dbl(*(#_nrInst_ptr)), XAR0
        AMAR *+AR1(#52)
$C$DW$265	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$265, DW_AT_low_pc(0x00)
	.dwattr $C$DW$265, DW_AT_name("_asnrOpen")
	.dwattr $C$DW$265, DW_AT_TI_call
        CALL #_asnrOpen ; |1050| 
                                        ; call occurs [#_asnrOpen] ; |1050| 
        MOV T0, *SP(#54) ; |1050| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1051,column 3,is_stmt
        MOV T0, AR1
        BCC $C$L64,AR1 != #0 ; |1051| 
                                        ; branchcc occurs ; |1051| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1054,column 5,is_stmt
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1056,column 2,is_stmt
        MOV #0, T0
$C$L64:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1057,column 1,is_stmt
        AADD #57, SP
	.dwcfi	cfa_offset, 1
$C$DW$266	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$266, DW_AT_low_pc(0x00)
	.dwattr $C$DW$266, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$267	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$267, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vpesim.asm:$C$L62:1:1729043648")
	.dwattr $C$DW$267, DW_AT_TI_begin_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$267, DW_AT_TI_begin_line(0x3eb)
	.dwattr $C$DW$267, DW_AT_TI_end_line(0x3ee)
$C$DW$268	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$268, DW_AT_low_pc($C$DW$L$_vpe_instantiate_nr$5$B)
	.dwattr $C$DW$268, DW_AT_high_pc($C$DW$L$_vpe_instantiate_nr$5$E)
	.dwendtag $C$DW$267

	.dwattr $C$DW$252, DW_AT_TI_end_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$252, DW_AT_TI_end_line(0x421)
	.dwattr $C$DW$252, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$252

	.sect	".text"
	.global	_vpe_config_nr

$C$DW$269	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_config_nr")
	.dwattr $C$DW$269, DW_AT_low_pc(_vpe_config_nr)
	.dwattr $C$DW$269, DW_AT_high_pc(0x00)
	.dwattr $C$DW$269, DW_AT_TI_symbol_name("_vpe_config_nr")
	.dwattr $C$DW$269, DW_AT_external
	.dwattr $C$DW$269, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$269, DW_AT_TI_begin_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$269, DW_AT_TI_begin_line(0x429)
	.dwattr $C$DW$269, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$269, DW_AT_TI_max_frame_size(0x12)
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1066,column 1,is_stmt,address _vpe_config_nr

	.dwfde $C$DW$CIE, _vpe_config_nr
$C$DW$270	.dwtag  DW_TAG_formal_parameter, DW_AT_name("asnr_params")
	.dwattr $C$DW$270, DW_AT_TI_symbol_name("_asnr_params")
	.dwattr $C$DW$270, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$270, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: vpe_config_nr                                                *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,M40,SATA,SATD,RDM,  *
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 18 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (16 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_vpe_config_nr:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-17, SP
	.dwcfi	cfa_offset, 18
$C$DW$271	.dwtag  DW_TAG_variable, DW_AT_name("asnr_params")
	.dwattr $C$DW$271, DW_AT_TI_symbol_name("_asnr_params")
	.dwattr $C$DW$271, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$271, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$272	.dwtag  DW_TAG_variable, DW_AT_name("nr_control_cfg")
	.dwattr $C$DW$272, DW_AT_TI_symbol_name("_nr_control_cfg")
	.dwattr $C$DW$272, DW_AT_type(*$C$DW$T$173)
	.dwattr $C$DW$272, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$273	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$273, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$273, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$273, DW_AT_location[DW_OP_bregx 0x24 15]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1071,column 3,is_stmt
        MOV #4095, *SP(#2) ; |1071| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1083,column 3,is_stmt
        MOV #1, *SP(#3) ; |1083| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1084,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR1 ; |1084| 
        MOV AR1, *SP(#4) ; |1084| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1085,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR1 ; |1085| 
        MOV AR1, *SP(#5) ; |1085| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1086,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#2)), AR1 ; |1086| 
        MOV AR1, *SP(#6) ; |1086| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1087,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#3)), AR1 ; |1087| 
        MOV AR1, *SP(#7) ; |1087| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1088,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#4)), AR1 ; |1088| 
        MOV AR1, *SP(#8) ; |1088| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1089,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#5)), AR1 ; |1089| 
        MOV AR1, *SP(#9) ; |1089| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1090,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#6)), AR1 ; |1090| 
        MOV AR1, *SP(#10) ; |1090| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1091,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#7)), AR1 ; |1091| 
        MOV AR1, *SP(#11) ; |1091| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1092,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#8), AR1 ; |1092| 
        MOV AR1, *SP(#12) ; |1092| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1093,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#9), AR1 ; |1093| 
        MOV AR1, *SP(#13) ; |1093| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1094,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#10), AR1 ; |1094| 
        MOV AR1, *SP(#14) ; |1094| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1096,column 3,is_stmt
        MOV XSP, XAR1
        MOV dbl(*(#_nrInst_ptr)), XAR0
        AMAR *+AR1(#2)
$C$DW$274	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$274, DW_AT_low_pc(0x00)
	.dwattr $C$DW$274, DW_AT_name("_asnrControl")
	.dwattr $C$DW$274, DW_AT_TI_call
        CALL #_asnrControl ; |1096| 
                                        ; call occurs [#_asnrControl] ; |1096| 
        MOV T0, *SP(#15) ; |1096| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1097,column 3,is_stmt
        MOV T0, AR1
        BCC $C$L65,AR1 == #0 ; |1097| 
                                        ; branchcc occurs ; |1097| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1100,column 5,is_stmt
        MOV #1, T0
        B $C$L66  ; |1100| 
                                        ; branch occurs ; |1100| 
$C$L65:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1102,column 3,is_stmt
        MOV #0, T0
$C$L66:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1103,column 1,is_stmt
        AADD #17, SP
	.dwcfi	cfa_offset, 1
$C$DW$275	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$275, DW_AT_low_pc(0x00)
	.dwattr $C$DW$275, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$269, DW_AT_TI_end_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$269, DW_AT_TI_end_line(0x44f)
	.dwattr $C$DW$269, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$269

	.sect	".text"
	.global	_vpe_deinstantiate_nr

$C$DW$276	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_deinstantiate_nr")
	.dwattr $C$DW$276, DW_AT_low_pc(_vpe_deinstantiate_nr)
	.dwattr $C$DW$276, DW_AT_high_pc(0x00)
	.dwattr $C$DW$276, DW_AT_TI_symbol_name("_vpe_deinstantiate_nr")
	.dwattr $C$DW$276, DW_AT_external
	.dwattr $C$DW$276, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$276, DW_AT_TI_begin_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$276, DW_AT_TI_begin_line(0x456)
	.dwattr $C$DW$276, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$276, DW_AT_TI_max_frame_size(0x2e)
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1111,column 1,is_stmt,address _vpe_deinstantiate_nr

	.dwfde $C$DW$CIE, _vpe_deinstantiate_nr
;*******************************************************************************
;* FUNCTION NAME: vpe_deinstantiate_nr                                         *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,*
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 46 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (44 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_vpe_deinstantiate_nr:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-45, SP
	.dwcfi	cfa_offset, 46
$C$DW$277	.dwtag  DW_TAG_variable, DW_AT_name("bufs_returned_by_nr")
	.dwattr $C$DW$277, DW_AT_TI_symbol_name("_bufs_returned_by_nr")
	.dwattr $C$DW$277, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$277, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$278	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$278, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$278, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$278, DW_AT_location[DW_OP_bregx 0x24 42]
$C$DW$279	.dwtag  DW_TAG_variable, DW_AT_name("error")
	.dwattr $C$DW$279, DW_AT_TI_symbol_name("_error")
	.dwattr $C$DW$279, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$279, DW_AT_location[DW_OP_bregx 0x24 43]
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1115,column 3,is_stmt
        MOV dbl(*(#_nrInst_ptr)), XAR0
$C$DW$280	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$280, DW_AT_low_pc(0x00)
	.dwattr $C$DW$280, DW_AT_name("_asnrClose")
	.dwattr $C$DW$280, DW_AT_TI_call
        CALL #_asnrClose ; |1115| 
                                        ; call occurs [#_asnrClose] ; |1115| 
        MOV T0, *SP(#42) ; |1115| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1116,column 3,is_stmt
        MOV T0, AR1
        BCC $C$L74,AR1 != #0 ; |1116| 
                                        ; branchcc occurs ; |1116| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1119,column 5,is_stmt
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1122,column 3,is_stmt
        MOV XSP, XAR1
        AMOV #_nrInst_ptr, XAR0 ; |1122| 
        MOV #7, T0
$C$DW$281	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$281, DW_AT_low_pc(0x00)
	.dwattr $C$DW$281, DW_AT_name("_asnrDelete")
	.dwattr $C$DW$281, DW_AT_TI_call
        CALL #_asnrDelete ; |1122| 
                                        ; call occurs [#_asnrDelete] ; |1122| 
        MOV T0, *SP(#42) ; |1122| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1123,column 3,is_stmt
        MOV T0, AR1
        BCC $C$L74,AR1 != #0 ; |1123| 
                                        ; branchcc occurs ; |1123| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1126,column 5,is_stmt
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1129,column 3,is_stmt
        AMOV #_nr_buff0, XAR3 ; |1129| 
        MOV XAR3, AC0
        MOV dbl(*SP(#4)), XAR3
        MOV XAR3, AC1
        CMPU AC1 == AC0, TC1 ; |1129| 
        MOV #0, AR2
        BCC $C$L67,TC1 ; |1129| 
                                        ; branchcc occurs ; |1129| 
        MOV #1, AR2
$C$L67:    
        AMOV #_nr_buff1, XAR3 ; |1129| 
        MOV XAR3, AC0
        MOV dbl(*SP(#10)), XAR3
        MOV XAR3, AC1
        CMPU AC1 == AC0, TC1 ; |1129| 
        MOV #0, AR1
        BCC $C$L68,TC1 ; |1129| 
                                        ; branchcc occurs ; |1129| 
        MOV #1, AR1
$C$L68:    
        AMOV #_nr_buff2, XAR3 ; |1129| 
        MOV XAR3, AC0
        MOV dbl(*SP(#16)), XAR3
        MOV XAR3, AC1
        CMPU AC1 == AC0, TC1 ; |1129| 

        MOV #0, AR2
||      OR AR2, AR1 ; |1129| 

        BCC $C$L69,TC1 ; |1129| 
                                        ; branchcc occurs ; |1129| 
        MOV #1, AR2
$C$L69:    
        AMOV #_nr_buff3, XAR3 ; |1129| 
        MOV XAR3, AC0
        MOV dbl(*SP(#22)), XAR3
        MOV XAR3, AC1
        CMPU AC1 == AC0, TC1 ; |1129| 

        MOV #0, AR2
||      OR AR2, AR1 ; |1129| 

        BCC $C$L70,TC1 ; |1129| 
                                        ; branchcc occurs ; |1129| 
        MOV #1, AR2
$C$L70:    
        AMOV #_nr_buff4, XAR3 ; |1129| 
        MOV XAR3, AC0
        MOV dbl(*SP(#28)), XAR3
        MOV XAR3, AC1
        CMPU AC1 == AC0, TC1 ; |1129| 

        MOV #0, AR2
||      OR AR2, AR1 ; |1129| 

        BCC $C$L71,TC1 ; |1129| 
                                        ; branchcc occurs ; |1129| 
        MOV #1, AR2
$C$L71:    
        AMOV #_nr_buff5, XAR3 ; |1129| 
        MOV XAR3, AC0
        MOV dbl(*SP(#34)), XAR3
        MOV XAR3, AC1
        CMPU AC1 == AC0, TC1 ; |1129| 

        MOV #0, AR2
||      OR AR2, AR1 ; |1129| 

        BCC $C$L72,TC1 ; |1129| 
                                        ; branchcc occurs ; |1129| 
        MOV #1, AR2
$C$L72:    
        OR AR2, AR1 ; |1129| 
        MOV AR1, *SP(#43) ; |1129| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1135,column 3,is_stmt
        BCC $C$L73,AR1 == #0 ; |1135| 
                                        ; branchcc occurs ; |1135| 
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1138,column 5,is_stmt
        MOV #3, T0
        B $C$L74  ; |1138| 
                                        ; branch occurs ; |1138| 
$C$L73:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1140,column 3,is_stmt
        MOV #0, T0
$C$L74:    
	.dwpsn	file "./ti/mas/vpe/test/src/vpesim.c",line 1141,column 1,is_stmt
        AADD #45, SP
	.dwcfi	cfa_offset, 1
$C$DW$282	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$282, DW_AT_low_pc(0x00)
	.dwattr $C$DW$282, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$276, DW_AT_TI_end_file("./ti/mas/vpe/test/src/vpesim.c")
	.dwattr $C$DW$276, DW_AT_TI_end_line(0x475)
	.dwattr $C$DW$276, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$276

;*******************************************************************************
;* FAR STRINGS                                                                 *
;*******************************************************************************
	.sect	".const:.string"
	.align	2
$C$FSL1:	.string	"snlLevOut.pcm",0
	.align	2
$C$FSL2:	.string	"svdOut.pcm",0
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_malloc
	.global	_strcpy
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
	.global	_asnrGetSizes
	.global	_asnrNew
	.global	_asnrDelete
	.global	_asnrOpen
	.global	_asnrClose
	.global	_asnrControl
	.global	_asnrProcess
	.global	_nr_buff0
	.global	_nr_buff1
	.global	_nr_buff2
	.global	_nr_buff3
	.global	_nr_buff4
	.global	_nr_buff5
	.global	_nr_buff6

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$70	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$70, DW_AT_byte_size(0x01)
$C$DW$283	.dwtag  DW_TAG_enumerator, DW_AT_name("vpe_SIM_PCM_ALAW"), DW_AT_const_value(0x00)
$C$DW$284	.dwtag  DW_TAG_enumerator, DW_AT_name("vpe_SIM_PCM_ULAW"), DW_AT_const_value(0x01)
$C$DW$285	.dwtag  DW_TAG_enumerator, DW_AT_name("vpe_SIM_PCM_LIN"), DW_AT_const_value(0x02)
	.dwendtag $C$DW$T$70

$C$DW$T$71	.dwtag  DW_TAG_typedef, DW_AT_name("vpeSimPcm_e")
	.dwattr $C$DW$T$71, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$T$71, DW_AT_language(DW_LANG_C)

$C$DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x04)
$C$DW$286	.dwtag  DW_TAG_member
	.dwattr $C$DW$286, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$286, DW_AT_name("f1")
	.dwattr $C$DW$286, DW_AT_TI_symbol_name("_f1")
	.dwattr $C$DW$286, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$286, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$287	.dwtag  DW_TAG_member
	.dwattr $C$DW$287, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$287, DW_AT_name("f2")
	.dwattr $C$DW$287, DW_AT_TI_symbol_name("_f2")
	.dwattr $C$DW$287, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$287, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$288	.dwtag  DW_TAG_member
	.dwattr $C$DW$288, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$288, DW_AT_name("amp1")
	.dwattr $C$DW$288, DW_AT_TI_symbol_name("_amp1")
	.dwattr $C$DW$288, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$288, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$289	.dwtag  DW_TAG_member
	.dwattr $C$DW$289, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$289, DW_AT_name("amp2")
	.dwattr $C$DW$289, DW_AT_TI_symbol_name("_amp2")
	.dwattr $C$DW$289, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$289, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$23


$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x06)
$C$DW$290	.dwtag  DW_TAG_member
	.dwattr $C$DW$290, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$290, DW_AT_name("duration")
	.dwattr $C$DW$290, DW_AT_TI_symbol_name("_duration")
	.dwattr $C$DW$290, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$290, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$291	.dwtag  DW_TAG_member
	.dwattr $C$DW$291, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$291, DW_AT_name("dataptr")
	.dwattr $C$DW$291, DW_AT_TI_symbol_name("_dataptr")
	.dwattr $C$DW$291, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$291, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$292	.dwtag  DW_TAG_member
	.dwattr $C$DW$292, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$292, DW_AT_name("numword")
	.dwattr $C$DW$292, DW_AT_TI_symbol_name("_numword")
	.dwattr $C$DW$292, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$292, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$28


$C$DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x08)
$C$DW$293	.dwtag  DW_TAG_member
	.dwattr $C$DW$293, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$293, DW_AT_name("code")
	.dwattr $C$DW$293, DW_AT_TI_symbol_name("_code")
	.dwattr $C$DW$293, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$293, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$294	.dwtag  DW_TAG_member
	.dwattr $C$DW$294, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$294, DW_AT_name("Fs")
	.dwattr $C$DW$294, DW_AT_TI_symbol_name("_Fs")
	.dwattr $C$DW$294, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$294, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$295	.dwtag  DW_TAG_member
	.dwattr $C$DW$295, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$295, DW_AT_name("u")
	.dwattr $C$DW$295, DW_AT_TI_symbol_name("_u")
	.dwattr $C$DW$295, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$295, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$29

$C$DW$T$81	.dwtag  DW_TAG_typedef, DW_AT_name("sgnControl_t")
	.dwattr $C$DW$T$81, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$81, DW_AT_language(DW_LANG_C)
$C$DW$T$82	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$T$82, DW_AT_address_class(0x17)

$C$DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x04)
$C$DW$296	.dwtag  DW_TAG_member
	.dwattr $C$DW$296, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$296, DW_AT_name("frame")
	.dwattr $C$DW$296, DW_AT_TI_symbol_name("_frame")
	.dwattr $C$DW$296, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$296, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$297	.dwtag  DW_TAG_member
	.dwattr $C$DW$297, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$297, DW_AT_name("cnt")
	.dwattr $C$DW$297, DW_AT_TI_symbol_name("_cnt")
	.dwattr $C$DW$297, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$297, DW_AT_accessibility(DW_ACCESS_public)
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
$C$DW$298	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$298, DW_AT_type(*$C$DW$T$39)
	.dwendtag $C$DW$T$40

$C$DW$T$41	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$41, DW_AT_address_class(0x20)

$C$DW$T$51	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x20)
$C$DW$299	.dwtag  DW_TAG_member
	.dwattr $C$DW$299, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$299, DW_AT_name("delay")
	.dwattr $C$DW$299, DW_AT_TI_symbol_name("_delay")
	.dwattr $C$DW$299, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$299, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$300	.dwtag  DW_TAG_member
	.dwattr $C$DW$300, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$300, DW_AT_name("dc_offset")
	.dwattr $C$DW$300, DW_AT_TI_symbol_name("_dc_offset")
	.dwattr $C$DW$300, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$300, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$301	.dwtag  DW_TAG_member
	.dwattr $C$DW$301, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$301, DW_AT_name("wf_type")
	.dwattr $C$DW$301, DW_AT_TI_symbol_name("_wf_type")
	.dwattr $C$DW$301, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$301, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$302	.dwtag  DW_TAG_member
	.dwattr $C$DW$302, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$302, DW_AT_name("f1")
	.dwattr $C$DW$302, DW_AT_TI_symbol_name("_f1")
	.dwattr $C$DW$302, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$302, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$303	.dwtag  DW_TAG_member
	.dwattr $C$DW$303, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$303, DW_AT_name("f2")
	.dwattr $C$DW$303, DW_AT_TI_symbol_name("_f2")
	.dwattr $C$DW$303, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$303, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$304	.dwtag  DW_TAG_member
	.dwattr $C$DW$304, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$304, DW_AT_name("Fs")
	.dwattr $C$DW$304, DW_AT_TI_symbol_name("_Fs")
	.dwattr $C$DW$304, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$304, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$305	.dwtag  DW_TAG_member
	.dwattr $C$DW$305, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$305, DW_AT_name("t_amp1")
	.dwattr $C$DW$305, DW_AT_TI_symbol_name("_t_amp1")
	.dwattr $C$DW$305, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$305, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$306	.dwtag  DW_TAG_member
	.dwattr $C$DW$306, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$306, DW_AT_name("t_amp2")
	.dwattr $C$DW$306, DW_AT_TI_symbol_name("_t_amp2")
	.dwattr $C$DW$306, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$306, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$307	.dwtag  DW_TAG_member
	.dwattr $C$DW$307, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$307, DW_AT_name("pr_period")
	.dwattr $C$DW$307, DW_AT_TI_symbol_name("_pr_period")
	.dwattr $C$DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$307, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$308	.dwtag  DW_TAG_member
	.dwattr $C$DW$308, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$308, DW_AT_name("pr_enable")
	.dwattr $C$DW$308, DW_AT_TI_symbol_name("_pr_enable")
	.dwattr $C$DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$308, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$309	.dwtag  DW_TAG_member
	.dwattr $C$DW$309, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$309, DW_AT_name("fsk_duration")
	.dwattr $C$DW$309, DW_AT_TI_symbol_name("_fsk_duration")
	.dwattr $C$DW$309, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$309, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$310	.dwtag  DW_TAG_member
	.dwattr $C$DW$310, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$310, DW_AT_name("fsk_dataptr")
	.dwattr $C$DW$310, DW_AT_TI_symbol_name("_fsk_dataptr")
	.dwattr $C$DW$310, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$310, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$311	.dwtag  DW_TAG_member
	.dwattr $C$DW$311, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$311, DW_AT_name("fsk_numword")
	.dwattr $C$DW$311, DW_AT_TI_symbol_name("_fsk_numword")
	.dwattr $C$DW$311, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$311, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$312	.dwtag  DW_TAG_member
	.dwattr $C$DW$312, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$312, DW_AT_name("noise_level")
	.dwattr $C$DW$312, DW_AT_TI_symbol_name("_noise_level")
	.dwattr $C$DW$312, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$312, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$313	.dwtag  DW_TAG_member
	.dwattr $C$DW$313, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$313, DW_AT_name("noise_seed")
	.dwattr $C$DW$313, DW_AT_TI_symbol_name("_noise_seed")
	.dwattr $C$DW$313, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$313, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$314	.dwtag  DW_TAG_member
	.dwattr $C$DW$314, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$314, DW_AT_name("noise_type")
	.dwattr $C$DW$314, DW_AT_TI_symbol_name("_noise_type")
	.dwattr $C$DW$314, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$314, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$315	.dwtag  DW_TAG_member
	.dwattr $C$DW$315, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$315, DW_AT_name("power_level")
	.dwattr $C$DW$315, DW_AT_TI_symbol_name("_power_level")
	.dwattr $C$DW$315, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$315, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$316	.dwtag  DW_TAG_member
	.dwattr $C$DW$316, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$316, DW_AT_name("hoth_wng_seed")
	.dwattr $C$DW$316, DW_AT_TI_symbol_name("_hoth_wng_seed")
	.dwattr $C$DW$316, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$316, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$317	.dwtag  DW_TAG_member
	.dwattr $C$DW$317, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$317, DW_AT_name("file_io_fcn")
	.dwattr $C$DW$317, DW_AT_TI_symbol_name("_file_io_fcn")
	.dwattr $C$DW$317, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$317, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$318	.dwtag  DW_TAG_member
	.dwattr $C$DW$318, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$318, DW_AT_name("addr")
	.dwattr $C$DW$318, DW_AT_TI_symbol_name("_addr")
	.dwattr $C$DW$318, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$318, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$319	.dwtag  DW_TAG_member
	.dwattr $C$DW$319, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$319, DW_AT_name("count")
	.dwattr $C$DW$319, DW_AT_TI_symbol_name("_count")
	.dwattr $C$DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$319, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$320	.dwtag  DW_TAG_member
	.dwattr $C$DW$320, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$320, DW_AT_name("pcmtbl")
	.dwattr $C$DW$320, DW_AT_TI_symbol_name("_pcmtbl")
	.dwattr $C$DW$320, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$320, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$321	.dwtag  DW_TAG_member
	.dwattr $C$DW$321, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$321, DW_AT_name("exception")
	.dwattr $C$DW$321, DW_AT_TI_symbol_name("_exception")
	.dwattr $C$DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$321, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$322	.dwtag  DW_TAG_member
	.dwattr $C$DW$322, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$322, DW_AT_name("debug")
	.dwattr $C$DW$322, DW_AT_TI_symbol_name("_debug")
	.dwattr $C$DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$322, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$51

$C$DW$T$83	.dwtag  DW_TAG_typedef, DW_AT_name("sgnConfig_t")
	.dwattr $C$DW$T$83, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$T$83, DW_AT_language(DW_LANG_C)
$C$DW$T$84	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$84, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$T$84, DW_AT_address_class(0x17)

$C$DW$T$53	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x06)
$C$DW$323	.dwtag  DW_TAG_member
	.dwattr $C$DW$323, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$323, DW_AT_name("valid_bf")
	.dwattr $C$DW$323, DW_AT_TI_symbol_name("_valid_bf")
	.dwattr $C$DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$323, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$324	.dwtag  DW_TAG_member
	.dwattr $C$DW$324, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$324, DW_AT_name("thresh")
	.dwattr $C$DW$324, DW_AT_TI_symbol_name("_thresh")
	.dwattr $C$DW$324, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$324, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$325	.dwtag  DW_TAG_member
	.dwattr $C$DW$325, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$325, DW_AT_name("ramp_out_period")
	.dwattr $C$DW$325, DW_AT_TI_symbol_name("_ramp_out_period")
	.dwattr $C$DW$325, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$325, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$326	.dwtag  DW_TAG_member
	.dwattr $C$DW$326, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$326, DW_AT_name("power_tc")
	.dwattr $C$DW$326, DW_AT_TI_symbol_name("_power_tc")
	.dwattr $C$DW$326, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$326, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$327	.dwtag  DW_TAG_member
	.dwattr $C$DW$327, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$327, DW_AT_name("srate_factor")
	.dwattr $C$DW$327, DW_AT_TI_symbol_name("_srate_factor")
	.dwattr $C$DW$327, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$327, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$328	.dwtag  DW_TAG_member
	.dwattr $C$DW$328, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$328, DW_AT_name("frm_len")
	.dwattr $C$DW$328, DW_AT_TI_symbol_name("_frm_len")
	.dwattr $C$DW$328, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$328, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$53

$C$DW$T$85	.dwtag  DW_TAG_typedef, DW_AT_name("hlcConfig_t")
	.dwattr $C$DW$T$85, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$T$85, DW_AT_language(DW_LANG_C)
$C$DW$T$86	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$86, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$T$86, DW_AT_address_class(0x17)

$C$DW$T$54	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$54, DW_AT_byte_size(0x02)
$C$DW$329	.dwtag  DW_TAG_member
	.dwattr $C$DW$329, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$329, DW_AT_name("ctl_code")
	.dwattr $C$DW$329, DW_AT_TI_symbol_name("_ctl_code")
	.dwattr $C$DW$329, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$329, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$330	.dwtag  DW_TAG_member
	.dwattr $C$DW$330, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$330, DW_AT_name("u")
	.dwattr $C$DW$330, DW_AT_TI_symbol_name("_u")
	.dwattr $C$DW$330, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$330, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$54

$C$DW$T$66	.dwtag  DW_TAG_typedef, DW_AT_name("hlcControl_t")
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$T$66, DW_AT_language(DW_LANG_C)
$C$DW$T$87	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$87, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$T$87, DW_AT_address_class(0x17)

$C$DW$T$55	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x02)
$C$DW$331	.dwtag  DW_TAG_member
	.dwattr $C$DW$331, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$331, DW_AT_name("valid_bf")
	.dwattr $C$DW$331, DW_AT_TI_symbol_name("_valid_bf")
	.dwattr $C$DW$331, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$331, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$332	.dwtag  DW_TAG_member
	.dwattr $C$DW$332, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$332, DW_AT_name("srate_factor")
	.dwattr $C$DW$332, DW_AT_TI_symbol_name("_srate_factor")
	.dwattr $C$DW$332, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$332, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$55

$C$DW$T$88	.dwtag  DW_TAG_typedef, DW_AT_name("slmConfig_t")
	.dwattr $C$DW$T$88, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$T$88, DW_AT_language(DW_LANG_C)
$C$DW$T$89	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$89, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$T$89, DW_AT_address_class(0x17)

$C$DW$T$57	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$57, DW_AT_byte_size(0x06)
$C$DW$333	.dwtag  DW_TAG_member
	.dwattr $C$DW$333, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$333, DW_AT_name("mclass")
	.dwattr $C$DW$333, DW_AT_TI_symbol_name("_mclass")
	.dwattr $C$DW$333, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$333, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$334	.dwtag  DW_TAG_member
	.dwattr $C$DW$334, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$334, DW_AT_name("log2align")
	.dwattr $C$DW$334, DW_AT_TI_symbol_name("_log2align")
	.dwattr $C$DW$334, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$334, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$335	.dwtag  DW_TAG_member
	.dwattr $C$DW$335, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$335, DW_AT_name("size")
	.dwattr $C$DW$335, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$335, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$335, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$336	.dwtag  DW_TAG_member
	.dwattr $C$DW$336, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$336, DW_AT_name("volat")
	.dwattr $C$DW$336, DW_AT_TI_symbol_name("_volat")
	.dwattr $C$DW$336, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$336, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$337	.dwtag  DW_TAG_member
	.dwattr $C$DW$337, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$337, DW_AT_name("base")
	.dwattr $C$DW$337, DW_AT_TI_symbol_name("_base")
	.dwattr $C$DW$337, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$337, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$57

$C$DW$T$90	.dwtag  DW_TAG_typedef, DW_AT_name("ecomemBuffer_t")
	.dwattr $C$DW$T$90, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$90, DW_AT_language(DW_LANG_C)
$C$DW$T$91	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$91, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$T$91, DW_AT_address_class(0x17)

$C$DW$T$92	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$92, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$T$92, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$92, DW_AT_byte_size(0x2a)
$C$DW$338	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$338, DW_AT_upper_bound(0x06)
	.dwendtag $C$DW$T$92

$C$DW$339	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$339, DW_AT_type(*$C$DW$T$90)
$C$DW$T$94	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$94, DW_AT_type(*$C$DW$339)
$C$DW$T$95	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$95, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$T$95, DW_AT_address_class(0x17)
$C$DW$T$96	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$96, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$T$96, DW_AT_address_class(0x17)

$C$DW$T$58	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$58, DW_AT_byte_size(0x0e)
$C$DW$340	.dwtag  DW_TAG_member
	.dwattr $C$DW$340, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$340, DW_AT_name("state")
	.dwattr $C$DW$340, DW_AT_TI_symbol_name("_state")
	.dwattr $C$DW$340, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$340, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$341	.dwtag  DW_TAG_member
	.dwattr $C$DW$341, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$341, DW_AT_name("dcoffset")
	.dwattr $C$DW$341, DW_AT_TI_symbol_name("_dcoffset")
	.dwattr $C$DW$341, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$341, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$342	.dwtag  DW_TAG_member
	.dwattr $C$DW$342, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$342, DW_AT_name("wftype")
	.dwattr $C$DW$342, DW_AT_TI_symbol_name("_wftype")
	.dwattr $C$DW$342, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$342, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$343	.dwtag  DW_TAG_member
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$343, DW_AT_name("f1")
	.dwattr $C$DW$343, DW_AT_TI_symbol_name("_f1")
	.dwattr $C$DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$343, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$344	.dwtag  DW_TAG_member
	.dwattr $C$DW$344, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$344, DW_AT_name("f2")
	.dwattr $C$DW$344, DW_AT_TI_symbol_name("_f2")
	.dwattr $C$DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$344, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$345	.dwtag  DW_TAG_member
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$345, DW_AT_name("amp1")
	.dwattr $C$DW$345, DW_AT_TI_symbol_name("_amp1")
	.dwattr $C$DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$345, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$346	.dwtag  DW_TAG_member
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$346, DW_AT_name("amp2")
	.dwattr $C$DW$346, DW_AT_TI_symbol_name("_amp2")
	.dwattr $C$DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$346, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$347	.dwtag  DW_TAG_member
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$347, DW_AT_name("nlevel")
	.dwattr $C$DW$347, DW_AT_TI_symbol_name("_nlevel")
	.dwattr $C$DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$347, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$348	.dwtag  DW_TAG_member
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$348, DW_AT_name("nseed")
	.dwattr $C$DW$348, DW_AT_TI_symbol_name("_nseed")
	.dwattr $C$DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$348, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$349	.dwtag  DW_TAG_member
	.dwattr $C$DW$349, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$349, DW_AT_name("ntype")
	.dwattr $C$DW$349, DW_AT_TI_symbol_name("_ntype")
	.dwattr $C$DW$349, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$349, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$350	.dwtag  DW_TAG_member
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$350, DW_AT_name("pow_level")
	.dwattr $C$DW$350, DW_AT_TI_symbol_name("_pow_level")
	.dwattr $C$DW$350, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$350, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$351	.dwtag  DW_TAG_member
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$351, DW_AT_name("hoth_seed")
	.dwattr $C$DW$351, DW_AT_TI_symbol_name("_hoth_seed")
	.dwattr $C$DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$351, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$58

$C$DW$T$68	.dwtag  DW_TAG_typedef, DW_AT_name("vpeSGNPars_t")
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$T$68, DW_AT_language(DW_LANG_C)
$C$DW$T$97	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$97, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$T$97, DW_AT_address_class(0x17)

$C$DW$T$59	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$59, DW_AT_byte_size(0x0b)
$C$DW$352	.dwtag  DW_TAG_member
	.dwattr $C$DW$352, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$352, DW_AT_name("samp_rate")
	.dwattr $C$DW$352, DW_AT_TI_symbol_name("_samp_rate")
	.dwattr $C$DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$352, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$353	.dwtag  DW_TAG_member
	.dwattr $C$DW$353, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$353, DW_AT_name("delay")
	.dwattr $C$DW$353, DW_AT_TI_symbol_name("_delay")
	.dwattr $C$DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$353, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$354	.dwtag  DW_TAG_member
	.dwattr $C$DW$354, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$354, DW_AT_name("band_bin1")
	.dwattr $C$DW$354, DW_AT_TI_symbol_name("_band_bin1")
	.dwattr $C$DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$354, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$355	.dwtag  DW_TAG_member
	.dwattr $C$DW$355, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$355, DW_AT_name("band_bin2")
	.dwattr $C$DW$355, DW_AT_TI_symbol_name("_band_bin2")
	.dwattr $C$DW$355, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$355, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$356	.dwtag  DW_TAG_member
	.dwattr $C$DW$356, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$356, DW_AT_name("band1_max_atten")
	.dwattr $C$DW$356, DW_AT_TI_symbol_name("_band1_max_atten")
	.dwattr $C$DW$356, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$356, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$357	.dwtag  DW_TAG_member
	.dwattr $C$DW$357, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$357, DW_AT_name("band2_max_atten")
	.dwattr $C$DW$357, DW_AT_TI_symbol_name("_band2_max_atten")
	.dwattr $C$DW$357, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$357, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$358	.dwtag  DW_TAG_member
	.dwattr $C$DW$358, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$358, DW_AT_name("band3_max_atten")
	.dwattr $C$DW$358, DW_AT_TI_symbol_name("_band3_max_atten")
	.dwattr $C$DW$358, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$358, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$359	.dwtag  DW_TAG_member
	.dwattr $C$DW$359, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$359, DW_AT_name("sig_upd_rate_max")
	.dwattr $C$DW$359, DW_AT_TI_symbol_name("_sig_upd_rate_max")
	.dwattr $C$DW$359, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$359, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$360	.dwtag  DW_TAG_member
	.dwattr $C$DW$360, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$360, DW_AT_name("sig_upd_rate_min")
	.dwattr $C$DW$360, DW_AT_TI_symbol_name("_sig_upd_rate_min")
	.dwattr $C$DW$360, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$360, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$361	.dwtag  DW_TAG_member
	.dwattr $C$DW$361, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$361, DW_AT_name("noise_thresh")
	.dwattr $C$DW$361, DW_AT_TI_symbol_name("_noise_thresh")
	.dwattr $C$DW$361, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$361, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$362	.dwtag  DW_TAG_member
	.dwattr $C$DW$362, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$362, DW_AT_name("noise_hangover")
	.dwattr $C$DW$362, DW_AT_TI_symbol_name("_noise_hangover")
	.dwattr $C$DW$362, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$362, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$59

$C$DW$T$67	.dwtag  DW_TAG_typedef, DW_AT_name("vpeASNRPars_t")
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$T$67, DW_AT_language(DW_LANG_C)
$C$DW$T$98	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$98, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$T$98, DW_AT_address_class(0x17)

$C$DW$T$61	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$61, DW_AT_byte_size(0x0c)
$C$DW$363	.dwtag  DW_TAG_member
	.dwattr $C$DW$363, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$363, DW_AT_name("fd")
	.dwattr $C$DW$363, DW_AT_TI_symbol_name("_fd")
	.dwattr $C$DW$363, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$363, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$364	.dwtag  DW_TAG_member
	.dwattr $C$DW$364, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$364, DW_AT_name("buf")
	.dwattr $C$DW$364, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$364, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$364, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$365	.dwtag  DW_TAG_member
	.dwattr $C$DW$365, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$365, DW_AT_name("pos")
	.dwattr $C$DW$365, DW_AT_TI_symbol_name("_pos")
	.dwattr $C$DW$365, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$365, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$366	.dwtag  DW_TAG_member
	.dwattr $C$DW$366, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$366, DW_AT_name("bufend")
	.dwattr $C$DW$366, DW_AT_TI_symbol_name("_bufend")
	.dwattr $C$DW$366, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$366, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$367	.dwtag  DW_TAG_member
	.dwattr $C$DW$367, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$367, DW_AT_name("buff_stop")
	.dwattr $C$DW$367, DW_AT_TI_symbol_name("_buff_stop")
	.dwattr $C$DW$367, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$367, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$368	.dwtag  DW_TAG_member
	.dwattr $C$DW$368, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$368, DW_AT_name("flags")
	.dwattr $C$DW$368, DW_AT_TI_symbol_name("_flags")
	.dwattr $C$DW$368, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$368, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$61

$C$DW$T$62	.dwtag  DW_TAG_typedef, DW_AT_name("FILE")
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$T$62, DW_AT_language(DW_LANG_C)
$C$DW$T$63	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$T$63, DW_AT_address_class(0x17)

$C$DW$T$65	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$65, DW_AT_byte_size(0x104)
$C$DW$369	.dwtag  DW_TAG_member
	.dwattr $C$DW$369, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$369, DW_AT_name("fio")
	.dwattr $C$DW$369, DW_AT_TI_symbol_name("_fio")
	.dwattr $C$DW$369, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$369, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$370	.dwtag  DW_TAG_member
	.dwattr $C$DW$370, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$370, DW_AT_name("eof")
	.dwattr $C$DW$370, DW_AT_TI_symbol_name("_eof")
	.dwattr $C$DW$370, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$370, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$371	.dwtag  DW_TAG_member
	.dwattr $C$DW$371, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$371, DW_AT_name("fptr")
	.dwattr $C$DW$371, DW_AT_TI_symbol_name("_fptr")
	.dwattr $C$DW$371, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$371, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$372	.dwtag  DW_TAG_member
	.dwattr $C$DW$372, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$372, DW_AT_name("fname")
	.dwattr $C$DW$372, DW_AT_TI_symbol_name("_fname")
	.dwattr $C$DW$372, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$372, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$65

$C$DW$T$69	.dwtag  DW_TAG_typedef, DW_AT_name("vpeSimFileIo_t")
	.dwattr $C$DW$T$69, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$T$69, DW_AT_language(DW_LANG_C)

$C$DW$T$72	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$72, DW_AT_byte_size(0x444)
$C$DW$373	.dwtag  DW_TAG_member
	.dwattr $C$DW$373, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$373, DW_AT_name("exec")
	.dwattr $C$DW$373, DW_AT_TI_symbol_name("_exec")
	.dwattr $C$DW$373, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$373, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$374	.dwtag  DW_TAG_member
	.dwattr $C$DW$374, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$374, DW_AT_name("hlc_on")
	.dwattr $C$DW$374, DW_AT_TI_symbol_name("_hlc_on")
	.dwattr $C$DW$374, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$374, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$375	.dwtag  DW_TAG_member
	.dwattr $C$DW$375, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$375, DW_AT_name("slm_on")
	.dwattr $C$DW$375, DW_AT_TI_symbol_name("_slm_on")
	.dwattr $C$DW$375, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$375, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$376	.dwtag  DW_TAG_member
	.dwattr $C$DW$376, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$376, DW_AT_name("snl_on")
	.dwattr $C$DW$376, DW_AT_TI_symbol_name("_snl_on")
	.dwattr $C$DW$376, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$376, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$377	.dwtag  DW_TAG_member
	.dwattr $C$DW$377, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$377, DW_AT_name("svd_on")
	.dwattr $C$DW$377, DW_AT_TI_symbol_name("_svd_on")
	.dwattr $C$DW$377, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$377, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$378	.dwtag  DW_TAG_member
	.dwattr $C$DW$378, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$378, DW_AT_name("nr_on")
	.dwattr $C$DW$378, DW_AT_TI_symbol_name("_nr_on")
	.dwattr $C$DW$378, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$378, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$379	.dwtag  DW_TAG_member
	.dwattr $C$DW$379, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$379, DW_AT_name("decim_on")
	.dwattr $C$DW$379, DW_AT_TI_symbol_name("_decim_on")
	.dwattr $C$DW$379, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$379, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$380	.dwtag  DW_TAG_member
	.dwattr $C$DW$380, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$380, DW_AT_name("interp_on")
	.dwattr $C$DW$380, DW_AT_TI_symbol_name("_interp_on")
	.dwattr $C$DW$380, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$380, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$381	.dwtag  DW_TAG_member
	.dwattr $C$DW$381, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$381, DW_AT_name("ulaw_enc_on")
	.dwattr $C$DW$381, DW_AT_TI_symbol_name("_ulaw_enc_on")
	.dwattr $C$DW$381, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$381, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$382	.dwtag  DW_TAG_member
	.dwattr $C$DW$382, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$382, DW_AT_name("ulaw_dec_on")
	.dwattr $C$DW$382, DW_AT_TI_symbol_name("_ulaw_dec_on")
	.dwattr $C$DW$382, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$382, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$383	.dwtag  DW_TAG_member
	.dwattr $C$DW$383, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$383, DW_AT_name("alaw_enc_on")
	.dwattr $C$DW$383, DW_AT_TI_symbol_name("_alaw_enc_on")
	.dwattr $C$DW$383, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$383, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$384	.dwtag  DW_TAG_member
	.dwattr $C$DW$384, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$384, DW_AT_name("alaw_dec_on")
	.dwattr $C$DW$384, DW_AT_TI_symbol_name("_alaw_dec_on")
	.dwattr $C$DW$384, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$384, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$385	.dwtag  DW_TAG_member
	.dwattr $C$DW$385, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$385, DW_AT_name("sample_cnt")
	.dwattr $C$DW$385, DW_AT_TI_symbol_name("_sample_cnt")
	.dwattr $C$DW$385, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$385, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$386	.dwtag  DW_TAG_member
	.dwattr $C$DW$386, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$386, DW_AT_name("sample_bp")
	.dwattr $C$DW$386, DW_AT_TI_symbol_name("_sample_bp")
	.dwattr $C$DW$386, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$386, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$387	.dwtag  DW_TAG_member
	.dwattr $C$DW$387, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$387, DW_AT_name("sgn")
	.dwattr $C$DW$387, DW_AT_TI_symbol_name("_sgn")
	.dwattr $C$DW$387, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$387, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$388	.dwtag  DW_TAG_member
	.dwattr $C$DW$388, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$388, DW_AT_name("cfg_sgn")
	.dwattr $C$DW$388, DW_AT_TI_symbol_name("_cfg_sgn")
	.dwattr $C$DW$388, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$388, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$389	.dwtag  DW_TAG_member
	.dwattr $C$DW$389, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$389, DW_AT_name("cfg_hlc")
	.dwattr $C$DW$389, DW_AT_TI_symbol_name("_cfg_hlc")
	.dwattr $C$DW$389, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$389, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$390	.dwtag  DW_TAG_member
	.dwattr $C$DW$390, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$390, DW_AT_name("cfg_slm")
	.dwattr $C$DW$390, DW_AT_TI_symbol_name("_cfg_slm")
	.dwattr $C$DW$390, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$390, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$391	.dwtag  DW_TAG_member
	.dwattr $C$DW$391, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$391, DW_AT_name("slm_mod")
	.dwattr $C$DW$391, DW_AT_TI_symbol_name("_slm_mod")
	.dwattr $C$DW$391, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$391, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$392	.dwtag  DW_TAG_member
	.dwattr $C$DW$392, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$392, DW_AT_name("Fs")
	.dwattr $C$DW$392, DW_AT_TI_symbol_name("_Fs")
	.dwattr $C$DW$392, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$392, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$393	.dwtag  DW_TAG_member
	.dwattr $C$DW$393, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$393, DW_AT_name("hlc_ctrl")
	.dwattr $C$DW$393, DW_AT_TI_symbol_name("_hlc_ctrl")
	.dwattr $C$DW$393, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$393, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$394	.dwtag  DW_TAG_member
	.dwattr $C$DW$394, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$394, DW_AT_name("asnrParam")
	.dwattr $C$DW$394, DW_AT_TI_symbol_name("_asnrParam")
	.dwattr $C$DW$394, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$394, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$395	.dwtag  DW_TAG_member
	.dwattr $C$DW$395, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$395, DW_AT_name("sgnParam")
	.dwattr $C$DW$395, DW_AT_TI_symbol_name("_sgnParam")
	.dwattr $C$DW$395, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$395, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$396	.dwtag  DW_TAG_member
	.dwattr $C$DW$396, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$396, DW_AT_name("sigIn")
	.dwattr $C$DW$396, DW_AT_TI_symbol_name("_sigIn")
	.dwattr $C$DW$396, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$396, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$397	.dwtag  DW_TAG_member
	.dwattr $C$DW$397, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$397, DW_AT_name("sigOut")
	.dwattr $C$DW$397, DW_AT_TI_symbol_name("_sigOut")
	.dwattr $C$DW$397, DW_AT_data_member_location[DW_OP_plus_uconst 0x136]
	.dwattr $C$DW$397, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$398	.dwtag  DW_TAG_member
	.dwattr $C$DW$398, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$398, DW_AT_name("config")
	.dwattr $C$DW$398, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$398, DW_AT_data_member_location[DW_OP_plus_uconst 0x23a]
	.dwattr $C$DW$398, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$399	.dwtag  DW_TAG_member
	.dwattr $C$DW$399, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$399, DW_AT_name("pcmin_format")
	.dwattr $C$DW$399, DW_AT_TI_symbol_name("_pcmin_format")
	.dwattr $C$DW$399, DW_AT_data_member_location[DW_OP_plus_uconst 0x33e]
	.dwattr $C$DW$399, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$400	.dwtag  DW_TAG_member
	.dwattr $C$DW$400, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$400, DW_AT_name("pcmout_format")
	.dwattr $C$DW$400, DW_AT_TI_symbol_name("_pcmout_format")
	.dwattr $C$DW$400, DW_AT_data_member_location[DW_OP_plus_uconst 0x33f]
	.dwattr $C$DW$400, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$401	.dwtag  DW_TAG_member
	.dwattr $C$DW$401, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$401, DW_AT_name("data")
	.dwattr $C$DW$401, DW_AT_TI_symbol_name("_data")
	.dwattr $C$DW$401, DW_AT_data_member_location[DW_OP_plus_uconst 0x340]
	.dwattr $C$DW$401, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$402	.dwtag  DW_TAG_member
	.dwattr $C$DW$402, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$402, DW_AT_name("error_id")
	.dwattr $C$DW$402, DW_AT_TI_symbol_name("_error_id")
	.dwattr $C$DW$402, DW_AT_data_member_location[DW_OP_plus_uconst 0x341]
	.dwattr $C$DW$402, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$403	.dwtag  DW_TAG_member
	.dwattr $C$DW$403, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$403, DW_AT_name("frame_size_in")
	.dwattr $C$DW$403, DW_AT_TI_symbol_name("_frame_size_in")
	.dwattr $C$DW$403, DW_AT_data_member_location[DW_OP_plus_uconst 0x342]
	.dwattr $C$DW$403, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$404	.dwtag  DW_TAG_member
	.dwattr $C$DW$404, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$404, DW_AT_name("frame_size_out")
	.dwattr $C$DW$404, DW_AT_TI_symbol_name("_frame_size_out")
	.dwattr $C$DW$404, DW_AT_data_member_location[DW_OP_plus_uconst 0x343]
	.dwattr $C$DW$404, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$405	.dwtag  DW_TAG_member
	.dwattr $C$DW$405, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$405, DW_AT_name("baseDir")
	.dwattr $C$DW$405, DW_AT_TI_symbol_name("_baseDir")
	.dwattr $C$DW$405, DW_AT_data_member_location[DW_OP_plus_uconst 0x344]
	.dwattr $C$DW$405, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$72

$C$DW$T$99	.dwtag  DW_TAG_typedef, DW_AT_name("vpeSimConfig_t")
	.dwattr $C$DW$T$99, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$T$99, DW_AT_language(DW_LANG_C)
$C$DW$T$100	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$100, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$T$100, DW_AT_address_class(0x17)

$C$DW$T$73	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$73, DW_AT_byte_size(0x06)
$C$DW$406	.dwtag  DW_TAG_member
	.dwattr $C$DW$406, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$406, DW_AT_name("dc_offset")
	.dwattr $C$DW$406, DW_AT_TI_symbol_name("_dc_offset")
	.dwattr $C$DW$406, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$406, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$407	.dwtag  DW_TAG_member
	.dwattr $C$DW$407, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$407, DW_AT_name("pr_period")
	.dwattr $C$DW$407, DW_AT_TI_symbol_name("_pr_period")
	.dwattr $C$DW$407, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$407, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$408	.dwtag  DW_TAG_member
	.dwattr $C$DW$408, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$408, DW_AT_name("t")
	.dwattr $C$DW$408, DW_AT_TI_symbol_name("_t")
	.dwattr $C$DW$408, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$408, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$409	.dwtag  DW_TAG_member
	.dwattr $C$DW$409, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$409, DW_AT_name("noise_level")
	.dwattr $C$DW$409, DW_AT_TI_symbol_name("_noise_level")
	.dwattr $C$DW$409, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$409, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$410	.dwtag  DW_TAG_member
	.dwattr $C$DW$410, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$410, DW_AT_name("fsk")
	.dwattr $C$DW$410, DW_AT_TI_symbol_name("_fsk")
	.dwattr $C$DW$410, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$410, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$411	.dwtag  DW_TAG_member
	.dwattr $C$DW$411, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$411, DW_AT_name("power_level")
	.dwattr $C$DW$411, DW_AT_TI_symbol_name("_power_level")
	.dwattr $C$DW$411, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$411, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$73


$C$DW$T$74	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$74, DW_AT_byte_size(0x01)
$C$DW$412	.dwtag  DW_TAG_member
	.dwattr $C$DW$412, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$412, DW_AT_name("thresh")
	.dwattr $C$DW$412, DW_AT_TI_symbol_name("_thresh")
	.dwattr $C$DW$412, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$412, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$74

$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x17)
$C$DW$T$106	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$106, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$T$106, DW_AT_address_class(0x17)

$C$DW$T$49	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$49, DW_AT_language(DW_LANG_C)
$C$DW$413	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$413, DW_AT_type(*$C$DW$T$37)
$C$DW$414	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$414, DW_AT_type(*$C$DW$T$48)
	.dwendtag $C$DW$T$49

$C$DW$T$50	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$T$50, DW_AT_address_class(0x20)
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
$C$DW$T$60	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$60, DW_AT_address_class(0x17)
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
$C$DW$T$113	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$113, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$113, DW_AT_address_class(0x17)
$C$DW$T$20	.dwtag  DW_TAG_typedef, DW_AT_name("int_least16_t")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_language(DW_LANG_C)
$C$DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("tint")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
$C$DW$T$52	.dwtag  DW_TAG_typedef, DW_AT_name("Fract")
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$52, DW_AT_language(DW_LANG_C)
$C$DW$T$133	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$133, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$T$133, DW_AT_address_class(0x17)
$C$DW$T$27	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$27, DW_AT_address_class(0x17)

$C$DW$T$179	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$179, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$179, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$179, DW_AT_byte_size(0x01)
$C$DW$415	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$415, DW_AT_upper_bound(0x00)
	.dwendtag $C$DW$T$179

$C$DW$T$78	.dwtag  DW_TAG_typedef, DW_AT_name("asnrSrate_t")
	.dwattr $C$DW$T$78, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$78, DW_AT_language(DW_LANG_C)
$C$DW$T$22	.dwtag  DW_TAG_typedef, DW_AT_name("linSample")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
$C$DW$T$30	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$30, DW_AT_address_class(0x17)

$C$DW$T$180	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$180, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$180, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$180, DW_AT_byte_size(0x140)
$C$DW$416	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$416, DW_AT_upper_bound(0x13f)
	.dwendtag $C$DW$T$180


$C$DW$T$181	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$181, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$181, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$181, DW_AT_byte_size(0x280)
$C$DW$417	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$417, DW_AT_upper_bound(0x27f)
	.dwendtag $C$DW$T$181


$C$DW$T$182	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$182, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$182, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$182, DW_AT_byte_size(0xc0)
$C$DW$418	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$418, DW_AT_upper_bound(0xbf)
	.dwendtag $C$DW$T$182


$C$DW$T$184	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$184, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$184, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$184, DW_AT_byte_size(0xb0)
$C$DW$419	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$419, DW_AT_upper_bound(0xaf)
	.dwendtag $C$DW$T$184

$C$DW$420	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$420, DW_AT_type(*$C$DW$T$21)
$C$DW$T$45	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$420)
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
$C$DW$T$101	.dwtag  DW_TAG_typedef, DW_AT_name("size_t")
	.dwattr $C$DW$T$101, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$101, DW_AT_language(DW_LANG_C)
$C$DW$T$35	.dwtag  DW_TAG_typedef, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$35, DW_AT_language(DW_LANG_C)
$C$DW$T$36	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least16_t")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)
$C$DW$T$37	.dwtag  DW_TAG_typedef, DW_AT_name("tuint")
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
$C$DW$T$150	.dwtag  DW_TAG_typedef, DW_AT_name("UFract")
	.dwattr $C$DW$T$150, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$150, DW_AT_language(DW_LANG_C)
$C$DW$T$151	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$151, DW_AT_type(*$C$DW$T$150)
	.dwattr $C$DW$T$151, DW_AT_address_class(0x17)
$C$DW$T$56	.dwtag  DW_TAG_typedef, DW_AT_name("tsize")
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$56, DW_AT_language(DW_LANG_C)
$C$DW$T$186	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least8_t")
	.dwattr $C$DW$T$186, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$186, DW_AT_language(DW_LANG_C)
$C$DW$T$187	.dwtag  DW_TAG_typedef, DW_AT_name("tword")
	.dwattr $C$DW$T$187, DW_AT_type(*$C$DW$T$186)
	.dwattr $C$DW$T$187, DW_AT_language(DW_LANG_C)

$C$DW$T$188	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$188, DW_AT_type(*$C$DW$T$187)
	.dwattr $C$DW$T$188, DW_AT_language(DW_LANG_C)
$C$DW$421	.dwtag  DW_TAG_subrange_type
	.dwendtag $C$DW$T$188


$C$DW$T$190	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$190, DW_AT_type(*$C$DW$T$187)
	.dwattr $C$DW$T$190, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$190, DW_AT_byte_size(0x280)
$C$DW$422	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$422, DW_AT_upper_bound(0x27f)
	.dwendtag $C$DW$T$190

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
$C$DW$T$154	.dwtag  DW_TAG_typedef, DW_AT_name("LFract")
	.dwattr $C$DW$T$154, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$154, DW_AT_language(DW_LANG_C)
$C$DW$T$155	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$155, DW_AT_type(*$C$DW$T$154)
	.dwattr $C$DW$T$155, DW_AT_address_class(0x17)
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

$C$DW$T$64	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$64, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$64, DW_AT_byte_size(0x100)
$C$DW$423	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$423, DW_AT_upper_bound(0xff)
	.dwendtag $C$DW$T$64

$C$DW$424	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$424, DW_AT_type(*$C$DW$T$47)
$C$DW$T$192	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$192, DW_AT_type(*$C$DW$424)
$C$DW$T$193	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$193, DW_AT_type(*$C$DW$T$192)
	.dwattr $C$DW$T$193, DW_AT_address_class(0x17)

$C$DW$T$75	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$75, DW_AT_name("asnrControl_s")
	.dwattr $C$DW$T$75, DW_AT_byte_size(0x0d)
$C$DW$425	.dwtag  DW_TAG_member
	.dwattr $C$DW$425, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$425, DW_AT_name("valid_bitfield")
	.dwattr $C$DW$425, DW_AT_TI_symbol_name("_valid_bitfield")
	.dwattr $C$DW$425, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$425, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$426	.dwtag  DW_TAG_member
	.dwattr $C$DW$426, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$426, DW_AT_name("enable")
	.dwattr $C$DW$426, DW_AT_TI_symbol_name("_enable")
	.dwattr $C$DW$426, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$426, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$427	.dwtag  DW_TAG_member
	.dwattr $C$DW$427, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$427, DW_AT_name("samp_rate")
	.dwattr $C$DW$427, DW_AT_TI_symbol_name("_samp_rate")
	.dwattr $C$DW$427, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$427, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$428	.dwtag  DW_TAG_member
	.dwattr $C$DW$428, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$428, DW_AT_name("delay")
	.dwattr $C$DW$428, DW_AT_TI_symbol_name("_delay")
	.dwattr $C$DW$428, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$428, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$429	.dwtag  DW_TAG_member
	.dwattr $C$DW$429, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$429, DW_AT_name("band_bin1")
	.dwattr $C$DW$429, DW_AT_TI_symbol_name("_band_bin1")
	.dwattr $C$DW$429, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$429, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$430	.dwtag  DW_TAG_member
	.dwattr $C$DW$430, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$430, DW_AT_name("band_bin2")
	.dwattr $C$DW$430, DW_AT_TI_symbol_name("_band_bin2")
	.dwattr $C$DW$430, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$430, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$431	.dwtag  DW_TAG_member
	.dwattr $C$DW$431, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$431, DW_AT_name("band1_max_atten")
	.dwattr $C$DW$431, DW_AT_TI_symbol_name("_band1_max_atten")
	.dwattr $C$DW$431, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$431, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$432	.dwtag  DW_TAG_member
	.dwattr $C$DW$432, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$432, DW_AT_name("band2_max_atten")
	.dwattr $C$DW$432, DW_AT_TI_symbol_name("_band2_max_atten")
	.dwattr $C$DW$432, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$432, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$433	.dwtag  DW_TAG_member
	.dwattr $C$DW$433, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$433, DW_AT_name("band3_max_atten")
	.dwattr $C$DW$433, DW_AT_TI_symbol_name("_band3_max_atten")
	.dwattr $C$DW$433, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$433, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$434	.dwtag  DW_TAG_member
	.dwattr $C$DW$434, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$434, DW_AT_name("sig_upd_rate_max")
	.dwattr $C$DW$434, DW_AT_TI_symbol_name("_sig_upd_rate_max")
	.dwattr $C$DW$434, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$434, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$435	.dwtag  DW_TAG_member
	.dwattr $C$DW$435, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$435, DW_AT_name("sig_upd_rate_min")
	.dwattr $C$DW$435, DW_AT_TI_symbol_name("_sig_upd_rate_min")
	.dwattr $C$DW$435, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$435, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$436	.dwtag  DW_TAG_member
	.dwattr $C$DW$436, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$436, DW_AT_name("noise_thresh")
	.dwattr $C$DW$436, DW_AT_TI_symbol_name("_noise_thresh")
	.dwattr $C$DW$436, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$436, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$437	.dwtag  DW_TAG_member
	.dwattr $C$DW$437, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$437, DW_AT_name("noise_hangover")
	.dwattr $C$DW$437, DW_AT_TI_symbol_name("_noise_hangover")
	.dwattr $C$DW$437, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$437, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$75

$C$DW$T$173	.dwtag  DW_TAG_typedef, DW_AT_name("asnrControl_t")
	.dwattr $C$DW$T$173, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$T$173, DW_AT_language(DW_LANG_C)
$C$DW$T$174	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$174, DW_AT_type(*$C$DW$T$173)
	.dwattr $C$DW$T$174, DW_AT_address_class(0x17)

$C$DW$T$77	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$77, DW_AT_name("asnrNewConfig_s")
	.dwattr $C$DW$T$77, DW_AT_byte_size(0x04)
$C$DW$438	.dwtag  DW_TAG_member
	.dwattr $C$DW$438, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$438, DW_AT_name("handle")
	.dwattr $C$DW$438, DW_AT_TI_symbol_name("_handle")
	.dwattr $C$DW$438, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$438, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$439	.dwtag  DW_TAG_member
	.dwattr $C$DW$439, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$439, DW_AT_name("sizeCfg")
	.dwattr $C$DW$439, DW_AT_TI_symbol_name("_sizeCfg")
	.dwattr $C$DW$439, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$439, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$77

$C$DW$T$161	.dwtag  DW_TAG_typedef, DW_AT_name("asnrNewConfig_t")
	.dwattr $C$DW$T$161, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$T$161, DW_AT_language(DW_LANG_C)
$C$DW$T$162	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$162, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$T$162, DW_AT_address_class(0x17)

$C$DW$T$79	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$79, DW_AT_name("asnrOpenConfig_s")
	.dwattr $C$DW$T$79, DW_AT_byte_size(0x01)
$C$DW$440	.dwtag  DW_TAG_member
	.dwattr $C$DW$440, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$440, DW_AT_name("sampling_rate")
	.dwattr $C$DW$440, DW_AT_TI_symbol_name("_sampling_rate")
	.dwattr $C$DW$440, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$440, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$79

$C$DW$T$167	.dwtag  DW_TAG_typedef, DW_AT_name("asnrOpenConfig_t")
	.dwattr $C$DW$T$167, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$T$167, DW_AT_language(DW_LANG_C)
$C$DW$T$168	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$168, DW_AT_type(*$C$DW$T$167)
	.dwattr $C$DW$T$168, DW_AT_address_class(0x17)

$C$DW$T$80	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$80, DW_AT_name("asnrSizeConfig_s")
	.dwattr $C$DW$T$80, DW_AT_byte_size(0x01)
$C$DW$441	.dwtag  DW_TAG_member
	.dwattr $C$DW$441, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$441, DW_AT_name("max_sampling_rate")
	.dwattr $C$DW$441, DW_AT_TI_symbol_name("_max_sampling_rate")
	.dwattr $C$DW$441, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$441, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$80

$C$DW$T$76	.dwtag  DW_TAG_typedef, DW_AT_name("asnrSizeConfig_t")
	.dwattr $C$DW$T$76, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$T$76, DW_AT_language(DW_LANG_C)
$C$DW$T$158	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$158, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$T$158, DW_AT_address_class(0x17)
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

$C$DW$442	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$442, DW_AT_location[DW_OP_reg0]
$C$DW$443	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$443, DW_AT_location[DW_OP_reg1]
$C$DW$444	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$444, DW_AT_location[DW_OP_reg2]
$C$DW$445	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$445, DW_AT_location[DW_OP_reg3]
$C$DW$446	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$446, DW_AT_location[DW_OP_reg4]
$C$DW$447	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$447, DW_AT_location[DW_OP_reg5]
$C$DW$448	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$448, DW_AT_location[DW_OP_reg6]
$C$DW$449	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$449, DW_AT_location[DW_OP_reg7]
$C$DW$450	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$450, DW_AT_location[DW_OP_reg8]
$C$DW$451	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$451, DW_AT_location[DW_OP_reg9]
$C$DW$452	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$452, DW_AT_location[DW_OP_reg10]
$C$DW$453	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$453, DW_AT_location[DW_OP_reg11]
$C$DW$454	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$454, DW_AT_location[DW_OP_reg12]
$C$DW$455	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$455, DW_AT_location[DW_OP_reg13]
$C$DW$456	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$456, DW_AT_location[DW_OP_reg14]
$C$DW$457	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$457, DW_AT_location[DW_OP_reg15]
$C$DW$458	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$458, DW_AT_location[DW_OP_reg16]
$C$DW$459	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$459, DW_AT_location[DW_OP_reg17]
$C$DW$460	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$460, DW_AT_location[DW_OP_reg18]
$C$DW$461	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$461, DW_AT_location[DW_OP_reg19]
$C$DW$462	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$462, DW_AT_location[DW_OP_reg20]
$C$DW$463	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$463, DW_AT_location[DW_OP_reg21]
$C$DW$464	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$464, DW_AT_location[DW_OP_reg22]
$C$DW$465	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$465, DW_AT_location[DW_OP_reg23]
$C$DW$466	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$466, DW_AT_location[DW_OP_reg24]
$C$DW$467	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$467, DW_AT_location[DW_OP_reg25]
$C$DW$468	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$468, DW_AT_location[DW_OP_reg26]
$C$DW$469	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$469, DW_AT_location[DW_OP_reg27]
$C$DW$470	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$470, DW_AT_location[DW_OP_reg28]
$C$DW$471	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$471, DW_AT_location[DW_OP_reg29]
$C$DW$472	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$472, DW_AT_location[DW_OP_reg30]
$C$DW$473	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$473, DW_AT_location[DW_OP_reg31]
$C$DW$474	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$474, DW_AT_location[DW_OP_regx 0x20]
$C$DW$475	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$475, DW_AT_location[DW_OP_regx 0x21]
$C$DW$476	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$476, DW_AT_location[DW_OP_regx 0x22]
$C$DW$477	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$477, DW_AT_location[DW_OP_regx 0x23]
$C$DW$478	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$478, DW_AT_location[DW_OP_regx 0x24]
$C$DW$479	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$479, DW_AT_location[DW_OP_regx 0x25]
$C$DW$480	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$480, DW_AT_location[DW_OP_regx 0x26]
$C$DW$481	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$481, DW_AT_location[DW_OP_regx 0x27]
$C$DW$482	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$482, DW_AT_location[DW_OP_regx 0x28]
$C$DW$483	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$483, DW_AT_location[DW_OP_regx 0x29]
$C$DW$484	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$484, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$485	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$485, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$486	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$486, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$487	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$487, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$488	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$488, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$489	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$489, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$490	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$490, DW_AT_location[DW_OP_regx 0x30]
$C$DW$491	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$491, DW_AT_location[DW_OP_regx 0x31]
$C$DW$492	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$492, DW_AT_location[DW_OP_regx 0x32]
$C$DW$493	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$493, DW_AT_location[DW_OP_regx 0x33]
$C$DW$494	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$494, DW_AT_location[DW_OP_regx 0x34]
$C$DW$495	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$495, DW_AT_location[DW_OP_regx 0x35]
$C$DW$496	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$496, DW_AT_location[DW_OP_regx 0x36]
$C$DW$497	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$497, DW_AT_location[DW_OP_regx 0x37]
$C$DW$498	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$498, DW_AT_location[DW_OP_regx 0x38]
$C$DW$499	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$499, DW_AT_location[DW_OP_regx 0x39]
$C$DW$500	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$500, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$501	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$501, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$502	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$502, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$503	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$503, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$504	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$504, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$505	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$505, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$506	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$506, DW_AT_location[DW_OP_regx 0x40]
$C$DW$507	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$507, DW_AT_location[DW_OP_regx 0x41]
$C$DW$508	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$508, DW_AT_location[DW_OP_regx 0x42]
$C$DW$509	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$509, DW_AT_location[DW_OP_regx 0x43]
$C$DW$510	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$510, DW_AT_location[DW_OP_regx 0x44]
$C$DW$511	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$511, DW_AT_location[DW_OP_regx 0x45]
$C$DW$512	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$512, DW_AT_location[DW_OP_regx 0x46]
$C$DW$513	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$513, DW_AT_location[DW_OP_regx 0x47]
$C$DW$514	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$514, DW_AT_location[DW_OP_regx 0x48]
$C$DW$515	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$515, DW_AT_location[DW_OP_regx 0x49]
$C$DW$516	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$516, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$517	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$517, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$518	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$518, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$519	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$519, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$520	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$520, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$521	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$521, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$522	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$522, DW_AT_location[DW_OP_regx 0x50]
$C$DW$523	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$523, DW_AT_location[DW_OP_regx 0x51]
$C$DW$524	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$524, DW_AT_location[DW_OP_regx 0x52]
$C$DW$525	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$525, DW_AT_location[DW_OP_regx 0x53]
$C$DW$526	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$526, DW_AT_location[DW_OP_regx 0x54]
$C$DW$527	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$527, DW_AT_location[DW_OP_regx 0x55]
$C$DW$528	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$528, DW_AT_location[DW_OP_regx 0x56]
$C$DW$529	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$529, DW_AT_location[DW_OP_regx 0x57]
$C$DW$530	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$530, DW_AT_location[DW_OP_regx 0x58]
$C$DW$531	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$531, DW_AT_location[DW_OP_regx 0x59]
$C$DW$532	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$532, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$533	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$533, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

