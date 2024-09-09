;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                          PC v4.4.1 *
;* Date/Time created: Fri Jul 05 14:17:26 2013                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen PC v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\veu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug")

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("fclose")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_fclose")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$46)
	.dwendtag $C$DW$1


$C$DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("fopen")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_fopen")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$49)
$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$49)
	.dwendtag $C$DW$3


$C$DW$6	.dwtag  DW_TAG_subprogram, DW_AT_name("fprintf")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_fprintf")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$6, DW_AT_declaration
	.dwattr $C$DW$6, DW_AT_external
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$46)
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$49)
$C$DW$9	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag $C$DW$6


$C$DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("fscanf")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_fscanf")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$10, DW_AT_declaration
	.dwattr $C$DW$10, DW_AT_external
$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$46)
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$49)
$C$DW$13	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag $C$DW$10


$C$DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("printf")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_printf")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$14, DW_AT_declaration
	.dwattr $C$DW$14, DW_AT_external
$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$49)
$C$DW$16	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag $C$DW$14


$C$DW$17	.dwtag  DW_TAG_subprogram, DW_AT_name("fgetc")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_fgetc")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$17, DW_AT_declaration
	.dwattr $C$DW$17, DW_AT_external
$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$46)
	.dwendtag $C$DW$17


$C$DW$19	.dwtag  DW_TAG_subprogram, DW_AT_name("fwrite")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_fwrite")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$19, DW_AT_declaration
	.dwattr $C$DW$19, DW_AT_external
$C$DW$20	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$61)
$C$DW$21	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$56)
$C$DW$22	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$56)
$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$46)
	.dwendtag $C$DW$19


$C$DW$24	.dwtag  DW_TAG_subprogram, DW_AT_name("feof")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_feof")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$24, DW_AT_declaration
	.dwattr $C$DW$24, DW_AT_external
$C$DW$25	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$46)
	.dwendtag $C$DW$24


$C$DW$26	.dwtag  DW_TAG_subprogram, DW_AT_name("malloc")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_malloc")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$26, DW_AT_declaration
	.dwattr $C$DW$26, DW_AT_external
$C$DW$27	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$56)
	.dwendtag $C$DW$26


$C$DW$28	.dwtag  DW_TAG_subprogram, DW_AT_name("exit")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_exit")
	.dwattr $C$DW$28, DW_AT_declaration
	.dwattr $C$DW$28, DW_AT_external
$C$DW$29	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$28


$C$DW$30	.dwtag  DW_TAG_subprogram, DW_AT_name("strcpy")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_strcpy")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$30, DW_AT_declaration
	.dwattr $C$DW$30, DW_AT_external
$C$DW$31	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$105)
$C$DW$32	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$49)
	.dwendtag $C$DW$30


$C$DW$33	.dwtag  DW_TAG_subprogram, DW_AT_name("strcat")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_strcat")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$33, DW_AT_declaration
	.dwattr $C$DW$33, DW_AT_external
$C$DW$34	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$105)
$C$DW$35	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$49)
	.dwendtag $C$DW$33


$C$DW$36	.dwtag  DW_TAG_subprogram, DW_AT_name("veuGetSizes")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_veuGetSizes")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$36, DW_AT_declaration
	.dwattr $C$DW$36, DW_AT_external
$C$DW$37	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$66)
$C$DW$38	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$55)
$C$DW$39	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$84)
	.dwendtag $C$DW$36


$C$DW$40	.dwtag  DW_TAG_subprogram, DW_AT_name("veuNew")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_veuNew")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$40, DW_AT_declaration
	.dwattr $C$DW$40, DW_AT_external
$C$DW$41	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$59)
$C$DW$42	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$23)
$C$DW$43	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$54)
$C$DW$44	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$88)
	.dwendtag $C$DW$40


$C$DW$45	.dwtag  DW_TAG_subprogram, DW_AT_name("veuOpen")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_veuOpen")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$45, DW_AT_declaration
	.dwattr $C$DW$45, DW_AT_external
$C$DW$46	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$3)
$C$DW$47	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$92)
	.dwendtag $C$DW$45


$C$DW$48	.dwtag  DW_TAG_subprogram, DW_AT_name("veuControl")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_veuControl")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$48, DW_AT_declaration
	.dwattr $C$DW$48, DW_AT_external
$C$DW$49	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$3)
$C$DW$50	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$72)
	.dwendtag $C$DW$48


$C$DW$51	.dwtag  DW_TAG_subprogram, DW_AT_name("veuSendIn")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_veuSendIn")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$51, DW_AT_declaration
	.dwattr $C$DW$51, DW_AT_external
$C$DW$52	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$3)
$C$DW$53	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$3)
$C$DW$54	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$3)
$C$DW$55	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$3)
$C$DW$56	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$98)
	.dwendtag $C$DW$51


$C$DW$57	.dwtag  DW_TAG_subprogram, DW_AT_name("veuReceiveIn")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_veuReceiveIn")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$57, DW_AT_declaration
	.dwattr $C$DW$57, DW_AT_external
$C$DW$58	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$3)
$C$DW$59	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$57


$C$DW$60	.dwtag  DW_TAG_subprogram, DW_AT_name("veuClose")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_veuClose")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$60, DW_AT_declaration
	.dwattr $C$DW$60, DW_AT_external
$C$DW$61	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$60

$C$DW$62	.dwtag  DW_TAG_variable, DW_AT_name("_ftable")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("__ftable")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$62, DW_AT_declaration
	.dwattr $C$DW$62, DW_AT_external
	.global	_heapBuf
	.bss	_heapBuf,2048,0,0
$C$DW$63	.dwtag  DW_TAG_variable, DW_AT_name("heapBuf")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_heapBuf")
	.dwattr $C$DW$63, DW_AT_location[DW_OP_addr _heapBuf]
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$63, DW_AT_external
	.global	_inputFile
	.bss	_inputFile,2,0,2
$C$DW$64	.dwtag  DW_TAG_variable, DW_AT_name("inputFile")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_inputFile")
	.dwattr $C$DW$64, DW_AT_location[DW_OP_addr _inputFile]
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$64, DW_AT_external
	.global	_inputFile_Rx
	.bss	_inputFile_Rx,2,0,2
$C$DW$65	.dwtag  DW_TAG_variable, DW_AT_name("inputFile_Rx")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_inputFile_Rx")
	.dwattr $C$DW$65, DW_AT_location[DW_OP_addr _inputFile_Rx]
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$65, DW_AT_external
	.global	_outputFile
	.bss	_outputFile,2,0,2
$C$DW$66	.dwtag  DW_TAG_variable, DW_AT_name("outputFile")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_outputFile")
	.dwattr $C$DW$66, DW_AT_location[DW_OP_addr _outputFile]
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$66, DW_AT_external
	.global	_outputFile_Rx
	.bss	_outputFile_Rx,2,0,2
$C$DW$67	.dwtag  DW_TAG_variable, DW_AT_name("outputFile_Rx")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_outputFile_Rx")
	.dwattr $C$DW$67, DW_AT_location[DW_OP_addr _outputFile_Rx]
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$67, DW_AT_external
	.global	_inputVEUFile
	.bss	_inputVEUFile,2,0,2
$C$DW$68	.dwtag  DW_TAG_variable, DW_AT_name("inputVEUFile")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_inputVEUFile")
	.dwattr $C$DW$68, DW_AT_location[DW_OP_addr _inputVEUFile]
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$68, DW_AT_external
	.global	_inputTxlistFile
	.bss	_inputTxlistFile,2,0,2
$C$DW$69	.dwtag  DW_TAG_variable, DW_AT_name("inputTxlistFile")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_inputTxlistFile")
	.dwattr $C$DW$69, DW_AT_location[DW_OP_addr _inputTxlistFile]
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$69, DW_AT_external
	.global	_inputRxlistFile
	.bss	_inputRxlistFile,2,0,2
$C$DW$70	.dwtag  DW_TAG_variable, DW_AT_name("inputRxlistFile")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_inputRxlistFile")
	.dwattr $C$DW$70, DW_AT_location[DW_OP_addr _inputRxlistFile]
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$70, DW_AT_external
	.global	_outputTxlistFile
	.bss	_outputTxlistFile,2,0,2
$C$DW$71	.dwtag  DW_TAG_variable, DW_AT_name("outputTxlistFile")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_outputTxlistFile")
	.dwattr $C$DW$71, DW_AT_location[DW_OP_addr _outputTxlistFile]
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$71, DW_AT_external
	.global	_outputRxlistFile
	.bss	_outputRxlistFile,2,0,2
$C$DW$72	.dwtag  DW_TAG_variable, DW_AT_name("outputRxlistFile")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_outputRxlistFile")
	.dwattr $C$DW$72, DW_AT_location[DW_OP_addr _outputRxlistFile]
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$72, DW_AT_external
	.global	_inputVEUlistFile
	.bss	_inputVEUlistFile,2,0,2
$C$DW$73	.dwtag  DW_TAG_variable, DW_AT_name("inputVEUlistFile")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_inputVEUlistFile")
	.dwattr $C$DW$73, DW_AT_location[DW_OP_addr _inputVEUlistFile]
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$73, DW_AT_external
	.global	_inputFileName_Tx
	.bss	_inputFileName_Tx,100,0,0
$C$DW$74	.dwtag  DW_TAG_variable, DW_AT_name("inputFileName_Tx")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_inputFileName_Tx")
	.dwattr $C$DW$74, DW_AT_location[DW_OP_addr _inputFileName_Tx]
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$74, DW_AT_external
	.global	_inputFileName_Rx
	.bss	_inputFileName_Rx,100,0,0
$C$DW$75	.dwtag  DW_TAG_variable, DW_AT_name("inputFileName_Rx")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_inputFileName_Rx")
	.dwattr $C$DW$75, DW_AT_location[DW_OP_addr _inputFileName_Rx]
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$75, DW_AT_external
	.global	_outputFileName_Tx
	.bss	_outputFileName_Tx,100,0,0
$C$DW$76	.dwtag  DW_TAG_variable, DW_AT_name("outputFileName_Tx")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_outputFileName_Tx")
	.dwattr $C$DW$76, DW_AT_location[DW_OP_addr _outputFileName_Tx]
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$76, DW_AT_external
	.global	_outputFileName_Rx
	.bss	_outputFileName_Rx,100,0,0
$C$DW$77	.dwtag  DW_TAG_variable, DW_AT_name("outputFileName_Rx")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_outputFileName_Rx")
	.dwattr $C$DW$77, DW_AT_location[DW_OP_addr _outputFileName_Rx]
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$77, DW_AT_external
	.global	_inputVEUsetting
	.bss	_inputVEUsetting,100,0,0
$C$DW$78	.dwtag  DW_TAG_variable, DW_AT_name("inputVEUsetting")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_inputVEUsetting")
	.dwattr $C$DW$78, DW_AT_location[DW_OP_addr _inputVEUsetting]
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$78, DW_AT_external
	.global	_iofile_path
	.bss	_iofile_path,256,0,0
$C$DW$79	.dwtag  DW_TAG_variable, DW_AT_name("iofile_path")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_iofile_path")
	.dwattr $C$DW$79, DW_AT_location[DW_OP_addr _iofile_path]
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$79, DW_AT_external
	.global	_sample_cnt
	.bss	_sample_cnt,2,0,2
$C$DW$80	.dwtag  DW_TAG_variable, DW_AT_name("sample_cnt")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_sample_cnt")
	.dwattr $C$DW$80, DW_AT_location[DW_OP_addr _sample_cnt]
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$80, DW_AT_external
	.global	_second_cnt
	.bss	_second_cnt,1,0,0
$C$DW$81	.dwtag  DW_TAG_variable, DW_AT_name("second_cnt")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_second_cnt")
	.dwattr $C$DW$81, DW_AT_location[DW_OP_addr _second_cnt]
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$81, DW_AT_external
	.global	_veuInst
	.bss	_veuInst,2,0,2
$C$DW$82	.dwtag  DW_TAG_variable, DW_AT_name("veuInst")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_veuInst")
	.dwattr $C$DW$82, DW_AT_location[DW_OP_addr _veuInst]
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$82, DW_AT_external
	.global	_veuCtrl
	.bss	_veuCtrl,3,0,0
$C$DW$83	.dwtag  DW_TAG_variable, DW_AT_name("veuCtrl")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_veuCtrl")
	.dwattr $C$DW$83, DW_AT_location[DW_OP_addr _veuCtrl]
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$83, DW_AT_external
	.global	_veuContext
	.bss	_veuContext,4,0,2
$C$DW$84	.dwtag  DW_TAG_variable, DW_AT_name("veuContext")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_veuContext")
	.dwattr $C$DW$84, DW_AT_location[DW_OP_addr _veuContext]
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$175)
	.dwattr $C$DW$84, DW_AT_external
;	C:\MAS_Tools\CCSV5_2_1\ccsv5\tools\compiler\c5500_4.4.1\bin\acp55.exe -@C:\\DOCUME~1\\a0868396\\LOCALS~1\\Temp\\0620012 
	.sect	".text"

$C$DW$85	.dwtag  DW_TAG_subprogram, DW_AT_name("veu_fileio_read_int")
	.dwattr $C$DW$85, DW_AT_low_pc(_veu_fileio_read_int)
	.dwattr $C$DW$85, DW_AT_high_pc(0x00)
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_veu_fileio_read_int")
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$85, DW_AT_TI_begin_file("../../../../../../../ti/mas/veu/test/src/veusimport.h")
	.dwattr $C$DW$85, DW_AT_TI_begin_line(0x90)
	.dwattr $C$DW$85, DW_AT_TI_begin_column(0x14)
	.dwattr $C$DW$85, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "../../../../../../../ti/mas/veu/test/src/veusimport.h",line 145,column 1,is_stmt,address _veu_fileio_read_int

	.dwfde $C$DW$CIE, _veu_fileio_read_int
$C$DW$86	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fp")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("_fp")
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$86, DW_AT_location[DW_OP_reg17]
$C$DW$87	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fmt")
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("_fmt")
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$87, DW_AT_location[DW_OP_reg19]
$C$DW$88	.dwtag  DW_TAG_formal_parameter, DW_AT_name("value")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("_value")
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$88, DW_AT_location[DW_OP_reg21]
;----------------------------------------------------------------------
; 144 | static inline tint veu_fileio_read_int (FILE *fp, char *fmt, tint *valu
;     | e)                                                                     
; 146 | tint num_read;                                                         
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: veu_fileio_read_int                                          *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,M40,SATA,  *
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (4 function parameters)                              *
;*                        (7 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_veu_fileio_read_int:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-11
	.dwcfi	cfa_offset, 12
$C$DW$89	.dwtag  DW_TAG_variable, DW_AT_name("fp")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_fp")
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$89, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$90	.dwtag  DW_TAG_variable, DW_AT_name("fmt")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_fmt")
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$90, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$91	.dwtag  DW_TAG_variable, DW_AT_name("value")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_value")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$91, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$92	.dwtag  DW_TAG_variable, DW_AT_name("num_read")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_num_read")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_bregx 0x24 10]
        dbl(*SP(#8)) = XAR2
        dbl(*SP(#6)) = XAR1
        dbl(*SP(#4)) = XAR0
        XAR3 = dbl(*SP(#6))
        dbl(*SP(#0)) = XAR3
        XAR3 = dbl(*SP(#8))
        dbl(*SP(#2)) = XAR3
        XAR0 = dbl(*SP(#4))
	.dwpsn	file "../../../../../../../ti/mas/veu/test/src/veusimport.h",line 147,column 3,is_stmt
;----------------------------------------------------------------------
; 147 | num_read = fscanf (fp, fmt, value);                                    
; 148 | return (num_read);                                                     
;----------------------------------------------------------------------
$C$DW$93	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$93, DW_AT_low_pc(0x00)
	.dwattr $C$DW$93, DW_AT_name("_fscanf")
	.dwattr $C$DW$93, DW_AT_TI_call
        call #_fscanf ; |147| 
                                        ; call occurs [#_fscanf] ; |147| 
        *SP(#10) = T0 ; |147| 
        SP = SP + #11
	.dwcfi	cfa_offset, 1
$C$DW$94	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$94, DW_AT_low_pc(0x00)
	.dwattr $C$DW$94, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$85, DW_AT_TI_end_file("../../../../../../../ti/mas/veu/test/src/veusimport.h")
	.dwattr $C$DW$85, DW_AT_TI_end_line(0x95)
	.dwattr $C$DW$85, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$85

	.sect	".text"
	.global	_veusim_concat_filepath

$C$DW$95	.dwtag  DW_TAG_subprogram, DW_AT_name("veusim_concat_filepath")
	.dwattr $C$DW$95, DW_AT_low_pc(_veusim_concat_filepath)
	.dwattr $C$DW$95, DW_AT_high_pc(0x00)
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("_veusim_concat_filepath")
	.dwattr $C$DW$95, DW_AT_external
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$95, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c")
	.dwattr $C$DW$95, DW_AT_TI_begin_line(0xae)
	.dwattr $C$DW$95, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$95, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 175,column 1,is_stmt,address _veusim_concat_filepath

	.dwfde $C$DW$CIE, _veusim_concat_filepath
$C$DW$96	.dwtag  DW_TAG_formal_parameter, DW_AT_name("base")
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("_base")
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$96, DW_AT_location[DW_OP_reg17]
$C$DW$97	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fname")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("_fname")
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$97, DW_AT_location[DW_OP_reg19]
;----------------------------------------------------------------------
; 174 | char *veusim_concat_filepath (char *base, char *fname)                 
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: veusim_concat_filepath                                       *
;*                                                                             *
;*   Function Uses Regs : AR0,XAR0,AR1,XAR1,SP,M40,SATA,SATD,RDM,FRCT,SMUL     *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_veusim_concat_filepath:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-5
	.dwcfi	cfa_offset, 6
$C$DW$98	.dwtag  DW_TAG_variable, DW_AT_name("base")
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("_base")
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$98, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$99	.dwtag  DW_TAG_variable, DW_AT_name("fname")
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_fname")
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$99, DW_AT_location[DW_OP_bregx 0x24 2]
        dbl(*SP(#2)) = XAR1
        dbl(*SP(#0)) = XAR0
        XAR1 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 176,column 3,is_stmt
;----------------------------------------------------------------------
; 176 | strcpy (iofile_path, base);                                            
;----------------------------------------------------------------------
        XAR0 = #_iofile_path ; |176| 
$C$DW$100	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$100, DW_AT_low_pc(0x00)
	.dwattr $C$DW$100, DW_AT_name("_strcpy")
	.dwattr $C$DW$100, DW_AT_TI_call
        call #_strcpy ; |176| 
                                        ; call occurs [#_strcpy] ; |176| 
        XAR1 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 177,column 3,is_stmt
;----------------------------------------------------------------------
; 177 | strcat (iofile_path, fname);                                           
;----------------------------------------------------------------------
        XAR0 = #_iofile_path ; |177| 
$C$DW$101	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$101, DW_AT_low_pc(0x00)
	.dwattr $C$DW$101, DW_AT_name("_strcat")
	.dwattr $C$DW$101, DW_AT_TI_call
        call #_strcat ; |177| 
                                        ; call occurs [#_strcat] ; |177| 
        SP = SP + #5
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 178,column 3,is_stmt
;----------------------------------------------------------------------
; 178 | return (iofile_path);                                                  
;----------------------------------------------------------------------
        XAR0 = #_iofile_path ; |178| 
	.dwcfi	cfa_offset, 1
$C$DW$102	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$102, DW_AT_low_pc(0x00)
	.dwattr $C$DW$102, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$95, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c")
	.dwattr $C$DW$95, DW_AT_TI_end_line(0xb3)
	.dwattr $C$DW$95, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$95

	.sect	".text"
	.global	_veusim_open_filelist

$C$DW$103	.dwtag  DW_TAG_subprogram, DW_AT_name("veusim_open_filelist")
	.dwattr $C$DW$103, DW_AT_low_pc(_veusim_open_filelist)
	.dwattr $C$DW$103, DW_AT_high_pc(0x00)
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("_veusim_open_filelist")
	.dwattr $C$DW$103, DW_AT_external
	.dwattr $C$DW$103, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c")
	.dwattr $C$DW$103, DW_AT_TI_begin_line(0xb9)
	.dwattr $C$DW$103, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$103, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 186,column 1,is_stmt,address _veusim_open_filelist

	.dwfde $C$DW$CIE, _veusim_open_filelist
;----------------------------------------------------------------------
; 185 | void veusim_open_filelist ()                                           
; 187 | char *list_fptr;                                                       
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: veusim_open_filelist                                         *
;*                                                                             *
;*   Function Uses Regs : AR0,XAR0,AR1,XAR1,SP,M40,SATA,SATD,RDM,FRCT,SMUL     *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_veusim_open_filelist:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-3
	.dwcfi	cfa_offset, 4
$C$DW$104	.dwtag  DW_TAG_variable, DW_AT_name("list_fptr")
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_list_fptr")
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$104, DW_AT_location[DW_OP_bregx 0x24 0]
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 189,column 3,is_stmt
;----------------------------------------------------------------------
; 189 | list_fptr = veusim_concat_filepath (INPUT_TX_LIST_BASE, INPUT_TX_LIST_F
;     | ILE);                                                                  
;----------------------------------------------------------------------
        XAR0 = #$C$FSL2 ; |189| 
        XAR1 = #$C$FSL1 ; |189| 
$C$DW$105	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$105, DW_AT_low_pc(0x00)
	.dwattr $C$DW$105, DW_AT_name("_veusim_concat_filepath")
	.dwattr $C$DW$105, DW_AT_TI_call
        call #_veusim_concat_filepath ; |189| 
                                        ; call occurs [#_veusim_concat_filepath] ; |189| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 190,column 3,is_stmt
;----------------------------------------------------------------------
; 190 | inputTxlistFile = fopen (list_fptr, "r");                              
;----------------------------------------------------------------------
        XAR1 = #$C$FSL3 ; |190| 
        dbl(*SP(#0)) = XAR0
$C$DW$106	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$106, DW_AT_low_pc(0x00)
	.dwattr $C$DW$106, DW_AT_name("_fopen")
	.dwattr $C$DW$106, DW_AT_TI_call
        call #_fopen ; |190| 
                                        ; call occurs [#_fopen] ; |190| 
        dbl(*(#_inputTxlistFile)) = XAR0
        SP = SP + #3
	.dwcfi	cfa_offset, 1
$C$DW$107	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$107, DW_AT_low_pc(0x00)
	.dwattr $C$DW$107, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$103, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c")
	.dwattr $C$DW$103, DW_AT_TI_end_line(0xbf)
	.dwattr $C$DW$103, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$103

	.sect	".text"
	.global	_veusim_get_file

$C$DW$108	.dwtag  DW_TAG_subprogram, DW_AT_name("veusim_get_file")
	.dwattr $C$DW$108, DW_AT_low_pc(_veusim_get_file)
	.dwattr $C$DW$108, DW_AT_high_pc(0x00)
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_veusim_get_file")
	.dwattr $C$DW$108, DW_AT_external
	.dwattr $C$DW$108, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c")
	.dwattr $C$DW$108, DW_AT_TI_begin_line(0xc5)
	.dwattr $C$DW$108, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$108, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 198,column 1,is_stmt,address _veusim_get_file

	.dwfde $C$DW$CIE, _veusim_get_file
;----------------------------------------------------------------------
; 197 | void veusim_get_file ()                                                
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: veusim_get_file                                              *
;*                                                                             *
;*   Function Uses Regs : AR0,XAR0,AR3,XAR3,SP,M40,SATA,SATD,RDM,FRCT,SMUL     *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 function parameters)                              *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_veusim_get_file:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-5
	.dwcfi	cfa_offset, 6
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 199,column 3,is_stmt
;----------------------------------------------------------------------
; 199 | fscanf (inputTxlistFile, "%s", inputFileName_Tx);                      
;----------------------------------------------------------------------
        XAR3 = #$C$FSL4 ; |199| 
        dbl(*SP(#0)) = XAR3
        XAR3 = #_inputFileName_Tx ; |199| 
        dbl(*SP(#2)) = XAR3
        XAR0 = dbl(*(#_inputTxlistFile))
$C$DW$109	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$109, DW_AT_low_pc(0x00)
	.dwattr $C$DW$109, DW_AT_name("_fscanf")
	.dwattr $C$DW$109, DW_AT_TI_call
        call #_fscanf ; |199| 
                                        ; call occurs [#_fscanf] ; |199| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 200,column 3,is_stmt
;----------------------------------------------------------------------
; 200 | fscanf (inputTxlistFile, "%s", inputFileName_Rx);                      
;----------------------------------------------------------------------
        XAR3 = #$C$FSL4 ; |200| 
        dbl(*SP(#0)) = XAR3
        XAR3 = #_inputFileName_Rx ; |200| 
        dbl(*SP(#2)) = XAR3
        XAR0 = dbl(*(#_inputTxlistFile))
$C$DW$110	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$110, DW_AT_low_pc(0x00)
	.dwattr $C$DW$110, DW_AT_name("_fscanf")
	.dwattr $C$DW$110, DW_AT_TI_call
        call #_fscanf ; |200| 
                                        ; call occurs [#_fscanf] ; |200| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 201,column 3,is_stmt
;----------------------------------------------------------------------
; 201 | fscanf (inputTxlistFile, "%s", outputFileName_Tx);                     
;----------------------------------------------------------------------
        XAR3 = #$C$FSL4 ; |201| 
        dbl(*SP(#0)) = XAR3
        XAR3 = #_outputFileName_Tx ; |201| 
        dbl(*SP(#2)) = XAR3
        XAR0 = dbl(*(#_inputTxlistFile))
$C$DW$111	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$111, DW_AT_low_pc(0x00)
	.dwattr $C$DW$111, DW_AT_name("_fscanf")
	.dwattr $C$DW$111, DW_AT_TI_call
        call #_fscanf ; |201| 
                                        ; call occurs [#_fscanf] ; |201| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 202,column 3,is_stmt
;----------------------------------------------------------------------
; 202 | fscanf (inputTxlistFile, "%s", outputFileName_Rx);                     
;----------------------------------------------------------------------
        XAR3 = #$C$FSL4 ; |202| 
        dbl(*SP(#0)) = XAR3
        XAR3 = #_outputFileName_Rx ; |202| 
        dbl(*SP(#2)) = XAR3
        XAR0 = dbl(*(#_inputTxlistFile))
$C$DW$112	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$112, DW_AT_low_pc(0x00)
	.dwattr $C$DW$112, DW_AT_name("_fscanf")
	.dwattr $C$DW$112, DW_AT_TI_call
        call #_fscanf ; |202| 
                                        ; call occurs [#_fscanf] ; |202| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 203,column 3,is_stmt
;----------------------------------------------------------------------
; 203 | fscanf (inputTxlistFile, "%s", inputVEUsetting);                       
;----------------------------------------------------------------------
        XAR3 = #$C$FSL4 ; |203| 
        dbl(*SP(#0)) = XAR3
        XAR0 = dbl(*(#_inputTxlistFile))
        XAR3 = #_inputVEUsetting ; |203| 
        dbl(*SP(#2)) = XAR3
$C$DW$113	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$113, DW_AT_low_pc(0x00)
	.dwattr $C$DW$113, DW_AT_name("_fscanf")
	.dwattr $C$DW$113, DW_AT_TI_call
        call #_fscanf ; |203| 
                                        ; call occurs [#_fscanf] ; |203| 
        SP = SP + #5
	.dwcfi	cfa_offset, 1
$C$DW$114	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$114, DW_AT_low_pc(0x00)
	.dwattr $C$DW$114, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$108, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c")
	.dwattr $C$DW$108, DW_AT_TI_end_line(0xcc)
	.dwattr $C$DW$108, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$108

	.sect	".text"
	.global	_veusim_init_testvector

$C$DW$115	.dwtag  DW_TAG_subprogram, DW_AT_name("veusim_init_testvector")
	.dwattr $C$DW$115, DW_AT_low_pc(_veusim_init_testvector)
	.dwattr $C$DW$115, DW_AT_high_pc(0x00)
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_veusim_init_testvector")
	.dwattr $C$DW$115, DW_AT_external
	.dwattr $C$DW$115, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c")
	.dwattr $C$DW$115, DW_AT_TI_begin_line(0xd5)
	.dwattr $C$DW$115, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$115, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 214,column 1,is_stmt,address _veusim_init_testvector

	.dwfde $C$DW$CIE, _veusim_init_testvector
;----------------------------------------------------------------------
; 213 | void veusim_init_testvector ()                                         
; 215 | char *fpath_ptr;                                                       
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: veusim_init_testvector                                       *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,M40,SATA,   *
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 function parameters)                              *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_veusim_init_testvector:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-7
	.dwcfi	cfa_offset, 8
$C$DW$116	.dwtag  DW_TAG_variable, DW_AT_name("fpath_ptr")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("_fpath_ptr")
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$116, DW_AT_location[DW_OP_bregx 0x24 4]
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 218,column 3,is_stmt
;----------------------------------------------------------------------
; 218 | fpath_ptr = veusim_concat_filepath (INPUT_FILE_BASE, inputFileName_Tx);
;----------------------------------------------------------------------
        XAR0 = #$C$FSL5 ; |218| 
        XAR1 = #_inputFileName_Tx ; |218| 
$C$DW$117	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$117, DW_AT_low_pc(0x00)
	.dwattr $C$DW$117, DW_AT_name("_veusim_concat_filepath")
	.dwattr $C$DW$117, DW_AT_TI_call
        call #_veusim_concat_filepath ; |218| 
                                        ; call occurs [#_veusim_concat_filepath] ; |218| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 219,column 3,is_stmt
;----------------------------------------------------------------------
; 219 | inputFile = fopen (fpath_ptr, "rb");                                   
;----------------------------------------------------------------------
        XAR1 = #$C$FSL6 ; |219| 
        dbl(*SP(#4)) = XAR0
$C$DW$118	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$118, DW_AT_low_pc(0x00)
	.dwattr $C$DW$118, DW_AT_name("_fopen")
	.dwattr $C$DW$118, DW_AT_TI_call
        call #_fopen ; |219| 
                                        ; call occurs [#_fopen] ; |219| 
        dbl(*(#_inputFile)) = XAR0
        XAR3 = dbl(*(#_inputFile))
        AC0 = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 220,column 3,is_stmt
;----------------------------------------------------------------------
; 220 | if (inputFile != NULL) {                                               
;----------------------------------------------------------------------
        if (AC0 == #0) goto $C$L1 ; |220| 
                                        ; branchcc occurs ; |220| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 221,column 5,is_stmt
;----------------------------------------------------------------------
; 221 | printf ("input file %s is opened!\n", inputFileName_Tx);               
;----------------------------------------------------------------------
        XAR3 = #$C$FSL7 ; |221| 
        dbl(*SP(#0)) = XAR3
        XAR3 = #_inputFileName_Tx ; |221| 
        dbl(*SP(#2)) = XAR3
$C$DW$119	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$119, DW_AT_low_pc(0x00)
	.dwattr $C$DW$119, DW_AT_name("_printf")
	.dwattr $C$DW$119, DW_AT_TI_call
        call #_printf ; |221| 
                                        ; call occurs [#_printf] ; |221| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 222,column 3,is_stmt
;----------------------------------------------------------------------
; 223 | else {                                                                 
;----------------------------------------------------------------------
        goto $C$L2 ; |222| 
                                        ; branch occurs ; |222| 
$C$L1:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 224,column 5,is_stmt
;----------------------------------------------------------------------
; 224 | printf ("File Open Error %s\n",inputFileName_Tx);                      
;----------------------------------------------------------------------
        XAR3 = #$C$FSL8 ; |224| 
        dbl(*SP(#0)) = XAR3
        XAR3 = #_inputFileName_Tx ; |224| 
        dbl(*SP(#2)) = XAR3
$C$DW$120	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$120, DW_AT_low_pc(0x00)
	.dwattr $C$DW$120, DW_AT_name("_printf")
	.dwattr $C$DW$120, DW_AT_TI_call
        call #_printf ; |224| 
                                        ; call occurs [#_printf] ; |224| 
        T0 = #1
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 225,column 5,is_stmt
;----------------------------------------------------------------------
; 225 | exit (1);                                                              
;----------------------------------------------------------------------
$C$DW$121	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$121, DW_AT_low_pc(0x00)
	.dwattr $C$DW$121, DW_AT_name("_exit")
	.dwattr $C$DW$121, DW_AT_TI_call
        call #_exit ; |225| 
                                        ; call occurs [#_exit] ; |225| 
$C$L2:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 229,column 3,is_stmt
;----------------------------------------------------------------------
; 229 | fpath_ptr = veusim_concat_filepath (INPUT_FILE_BASE, inputFileName_Rx);
;----------------------------------------------------------------------
        XAR0 = #$C$FSL5 ; |229| 
        XAR1 = #_inputFileName_Rx ; |229| 
$C$DW$122	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$122, DW_AT_low_pc(0x00)
	.dwattr $C$DW$122, DW_AT_name("_veusim_concat_filepath")
	.dwattr $C$DW$122, DW_AT_TI_call
        call #_veusim_concat_filepath ; |229| 
                                        ; call occurs [#_veusim_concat_filepath] ; |229| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 230,column 3,is_stmt
;----------------------------------------------------------------------
; 230 | inputFile_Rx = fopen (fpath_ptr, "rb");                                
;----------------------------------------------------------------------
        XAR1 = #$C$FSL6 ; |230| 
        dbl(*SP(#4)) = XAR0
$C$DW$123	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$123, DW_AT_low_pc(0x00)
	.dwattr $C$DW$123, DW_AT_name("_fopen")
	.dwattr $C$DW$123, DW_AT_TI_call
        call #_fopen ; |230| 
                                        ; call occurs [#_fopen] ; |230| 
        dbl(*(#_inputFile_Rx)) = XAR0
        XAR3 = dbl(*(#_inputFile_Rx))
        AC0 = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 231,column 3,is_stmt
;----------------------------------------------------------------------
; 231 | if (inputFile_Rx != NULL) {                                            
;----------------------------------------------------------------------
        if (AC0 == #0) goto $C$L3 ; |231| 
                                        ; branchcc occurs ; |231| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 232,column 5,is_stmt
;----------------------------------------------------------------------
; 232 | printf ("input file %s is opened!\n", inputFileName_Rx);               
;----------------------------------------------------------------------
        XAR3 = #$C$FSL7 ; |232| 
        dbl(*SP(#0)) = XAR3
        XAR3 = #_inputFileName_Rx ; |232| 
        dbl(*SP(#2)) = XAR3
$C$DW$124	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$124, DW_AT_low_pc(0x00)
	.dwattr $C$DW$124, DW_AT_name("_printf")
	.dwattr $C$DW$124, DW_AT_TI_call
        call #_printf ; |232| 
                                        ; call occurs [#_printf] ; |232| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 233,column 3,is_stmt
;----------------------------------------------------------------------
; 234 | else {                                                                 
;----------------------------------------------------------------------
        goto $C$L4 ; |233| 
                                        ; branch occurs ; |233| 
$C$L3:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 235,column 5,is_stmt
;----------------------------------------------------------------------
; 235 | printf ("File Open Error %s\n",inputFileName_Rx);                      
;----------------------------------------------------------------------
        XAR3 = #$C$FSL8 ; |235| 
        dbl(*SP(#0)) = XAR3
        XAR3 = #_inputFileName_Rx ; |235| 
        dbl(*SP(#2)) = XAR3
$C$DW$125	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$125, DW_AT_low_pc(0x00)
	.dwattr $C$DW$125, DW_AT_name("_printf")
	.dwattr $C$DW$125, DW_AT_TI_call
        call #_printf ; |235| 
                                        ; call occurs [#_printf] ; |235| 
        T0 = #1
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 236,column 5,is_stmt
;----------------------------------------------------------------------
; 236 | exit (1);                                                              
;----------------------------------------------------------------------
$C$DW$126	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$126, DW_AT_low_pc(0x00)
	.dwattr $C$DW$126, DW_AT_name("_exit")
	.dwattr $C$DW$126, DW_AT_TI_call
        call #_exit ; |236| 
                                        ; call occurs [#_exit] ; |236| 
$C$L4:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 240,column 3,is_stmt
;----------------------------------------------------------------------
; 240 | fpath_ptr = veusim_concat_filepath (OUTPUT_FILE_BASE, outputFileName_Tx
;     | );                                                                     
;----------------------------------------------------------------------
        XAR0 = #$C$FSL9 ; |240| 
        XAR1 = #_outputFileName_Tx ; |240| 
$C$DW$127	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$127, DW_AT_low_pc(0x00)
	.dwattr $C$DW$127, DW_AT_name("_veusim_concat_filepath")
	.dwattr $C$DW$127, DW_AT_TI_call
        call #_veusim_concat_filepath ; |240| 
                                        ; call occurs [#_veusim_concat_filepath] ; |240| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 241,column 3,is_stmt
;----------------------------------------------------------------------
; 241 | outputFile = fopen (fpath_ptr,"wb");                                   
;----------------------------------------------------------------------
        XAR1 = #$C$FSL10 ; |241| 
        dbl(*SP(#4)) = XAR0
$C$DW$128	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$128, DW_AT_low_pc(0x00)
	.dwattr $C$DW$128, DW_AT_name("_fopen")
	.dwattr $C$DW$128, DW_AT_TI_call
        call #_fopen ; |241| 
                                        ; call occurs [#_fopen] ; |241| 
        dbl(*(#_outputFile)) = XAR0
        XAR3 = dbl(*(#_outputFile))
        AC0 = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 242,column 3,is_stmt
;----------------------------------------------------------------------
; 242 | if (outputFile!= NULL) {                                               
;----------------------------------------------------------------------
        if (AC0 == #0) goto $C$L5 ; |242| 
                                        ; branchcc occurs ; |242| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 243,column 5,is_stmt
;----------------------------------------------------------------------
; 243 | printf ("output file %s is opened!\n", outputFileName_Tx);             
;----------------------------------------------------------------------
        XAR3 = #$C$FSL11 ; |243| 
        dbl(*SP(#0)) = XAR3
        XAR3 = #_outputFileName_Tx ; |243| 
        dbl(*SP(#2)) = XAR3
$C$DW$129	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$129, DW_AT_low_pc(0x00)
	.dwattr $C$DW$129, DW_AT_name("_printf")
	.dwattr $C$DW$129, DW_AT_TI_call
        call #_printf ; |243| 
                                        ; call occurs [#_printf] ; |243| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 244,column 3,is_stmt
;----------------------------------------------------------------------
; 245 | else {                                                                 
;----------------------------------------------------------------------
        goto $C$L6 ; |244| 
                                        ; branch occurs ; |244| 
$C$L5:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 246,column 5,is_stmt
;----------------------------------------------------------------------
; 246 | printf ("File Open Error %s\n",outputFileName_Tx);                     
;----------------------------------------------------------------------
        XAR3 = #$C$FSL8 ; |246| 
        dbl(*SP(#0)) = XAR3
        XAR3 = #_outputFileName_Tx ; |246| 
        dbl(*SP(#2)) = XAR3
$C$DW$130	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$130, DW_AT_low_pc(0x00)
	.dwattr $C$DW$130, DW_AT_name("_printf")
	.dwattr $C$DW$130, DW_AT_TI_call
        call #_printf ; |246| 
                                        ; call occurs [#_printf] ; |246| 
        T0 = #1
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 247,column 5,is_stmt
;----------------------------------------------------------------------
; 247 | exit (1);                                                              
;----------------------------------------------------------------------
$C$DW$131	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$131, DW_AT_low_pc(0x00)
	.dwattr $C$DW$131, DW_AT_name("_exit")
	.dwattr $C$DW$131, DW_AT_TI_call
        call #_exit ; |247| 
                                        ; call occurs [#_exit] ; |247| 
$C$L6:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 251,column 3,is_stmt
;----------------------------------------------------------------------
; 251 | fpath_ptr = veusim_concat_filepath (OUTPUT_FILE_BASE, outputFileName_Rx
;     | );                                                                     
;----------------------------------------------------------------------
        XAR0 = #$C$FSL9 ; |251| 
        XAR1 = #_outputFileName_Rx ; |251| 
$C$DW$132	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$132, DW_AT_low_pc(0x00)
	.dwattr $C$DW$132, DW_AT_name("_veusim_concat_filepath")
	.dwattr $C$DW$132, DW_AT_TI_call
        call #_veusim_concat_filepath ; |251| 
                                        ; call occurs [#_veusim_concat_filepath] ; |251| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 252,column 3,is_stmt
;----------------------------------------------------------------------
; 252 | outputFile_Rx = fopen (fpath_ptr,"wb");                                
;----------------------------------------------------------------------
        XAR1 = #$C$FSL10 ; |252| 
        dbl(*SP(#4)) = XAR0
$C$DW$133	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$133, DW_AT_low_pc(0x00)
	.dwattr $C$DW$133, DW_AT_name("_fopen")
	.dwattr $C$DW$133, DW_AT_TI_call
        call #_fopen ; |252| 
                                        ; call occurs [#_fopen] ; |252| 
        dbl(*(#_outputFile_Rx)) = XAR0
        XAR3 = dbl(*(#_outputFile_Rx))
        AC0 = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 253,column 3,is_stmt
;----------------------------------------------------------------------
; 253 | if (outputFile_Rx!= NULL) {                                            
;----------------------------------------------------------------------
        if (AC0 == #0) goto $C$L7 ; |253| 
                                        ; branchcc occurs ; |253| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 254,column 5,is_stmt
;----------------------------------------------------------------------
; 254 | printf ("output file %s is opened!\n", outputFileName_Rx);             
;----------------------------------------------------------------------
        XAR3 = #$C$FSL11 ; |254| 
        dbl(*SP(#0)) = XAR3
        XAR3 = #_outputFileName_Rx ; |254| 
        dbl(*SP(#2)) = XAR3
$C$DW$134	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$134, DW_AT_low_pc(0x00)
	.dwattr $C$DW$134, DW_AT_name("_printf")
	.dwattr $C$DW$134, DW_AT_TI_call
        call #_printf ; |254| 
                                        ; call occurs [#_printf] ; |254| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 255,column 3,is_stmt
;----------------------------------------------------------------------
; 256 | else {                                                                 
;----------------------------------------------------------------------
        goto $C$L8 ; |255| 
                                        ; branch occurs ; |255| 
$C$L7:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 257,column 5,is_stmt
;----------------------------------------------------------------------
; 257 | printf ("File Open Error %s\n",outputFileName_Rx);                     
;----------------------------------------------------------------------
        XAR3 = #$C$FSL8 ; |257| 
        dbl(*SP(#0)) = XAR3
        XAR3 = #_outputFileName_Rx ; |257| 
        dbl(*SP(#2)) = XAR3
$C$DW$135	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$135, DW_AT_low_pc(0x00)
	.dwattr $C$DW$135, DW_AT_name("_printf")
	.dwattr $C$DW$135, DW_AT_TI_call
        call #_printf ; |257| 
                                        ; call occurs [#_printf] ; |257| 
        T0 = #1
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 258,column 5,is_stmt
;----------------------------------------------------------------------
; 258 | exit (1);                                                              
;----------------------------------------------------------------------
$C$DW$136	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$136, DW_AT_low_pc(0x00)
	.dwattr $C$DW$136, DW_AT_name("_exit")
	.dwattr $C$DW$136, DW_AT_TI_call
        call #_exit ; |258| 
                                        ; call occurs [#_exit] ; |258| 
$C$L8:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 262,column 3,is_stmt
;----------------------------------------------------------------------
; 262 | fpath_ptr = veusim_concat_filepath (INPUT_FILE_BASE, inputVEUsetting); 
;----------------------------------------------------------------------
        XAR0 = #$C$FSL5 ; |262| 
        XAR1 = #_inputVEUsetting ; |262| 
$C$DW$137	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$137, DW_AT_low_pc(0x00)
	.dwattr $C$DW$137, DW_AT_name("_veusim_concat_filepath")
	.dwattr $C$DW$137, DW_AT_TI_call
        call #_veusim_concat_filepath ; |262| 
                                        ; call occurs [#_veusim_concat_filepath] ; |262| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 263,column 3,is_stmt
;----------------------------------------------------------------------
; 263 | inputVEUFile = fopen (fpath_ptr, "rb");                                
;----------------------------------------------------------------------
        XAR1 = #$C$FSL6 ; |263| 
        dbl(*SP(#4)) = XAR0
$C$DW$138	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$138, DW_AT_low_pc(0x00)
	.dwattr $C$DW$138, DW_AT_name("_fopen")
	.dwattr $C$DW$138, DW_AT_TI_call
        call #_fopen ; |263| 
                                        ; call occurs [#_fopen] ; |263| 
        dbl(*(#_inputVEUFile)) = XAR0
        XAR3 = dbl(*(#_inputVEUFile))
        AC0 = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 264,column 3,is_stmt
;----------------------------------------------------------------------
; 264 | if (inputVEUFile!= NULL) {                                             
;----------------------------------------------------------------------
        if (AC0 == #0) goto $C$L9 ; |264| 
                                        ; branchcc occurs ; |264| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 265,column 5,is_stmt
;----------------------------------------------------------------------
; 265 | printf ("veu setting file %s is opened!\n", inputVEUsetting);          
;----------------------------------------------------------------------
        XAR3 = #$C$FSL12 ; |265| 
        dbl(*SP(#0)) = XAR3
        XAR3 = #_inputVEUsetting ; |265| 
        dbl(*SP(#2)) = XAR3
$C$DW$139	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$139, DW_AT_low_pc(0x00)
	.dwattr $C$DW$139, DW_AT_name("_printf")
	.dwattr $C$DW$139, DW_AT_TI_call
        call #_printf ; |265| 
                                        ; call occurs [#_printf] ; |265| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 266,column 3,is_stmt
;----------------------------------------------------------------------
; 267 | else {                                                                 
;----------------------------------------------------------------------
        goto $C$L10 ; |266| 
                                        ; branch occurs ; |266| 
$C$L9:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 268,column 5,is_stmt
;----------------------------------------------------------------------
; 268 | printf ("File Open Error %s\n",inputVEUsetting);                       
;----------------------------------------------------------------------
        XAR3 = #$C$FSL8 ; |268| 
        dbl(*SP(#0)) = XAR3
        XAR3 = #_inputVEUsetting ; |268| 
        dbl(*SP(#2)) = XAR3
$C$DW$140	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$140, DW_AT_low_pc(0x00)
	.dwattr $C$DW$140, DW_AT_name("_printf")
	.dwattr $C$DW$140, DW_AT_TI_call
        call #_printf ; |268| 
                                        ; call occurs [#_printf] ; |268| 
        T0 = #1
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 269,column 5,is_stmt
;----------------------------------------------------------------------
; 269 | exit (1);                                                              
;----------------------------------------------------------------------
$C$DW$141	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$141, DW_AT_low_pc(0x00)
	.dwattr $C$DW$141, DW_AT_name("_exit")
	.dwattr $C$DW$141, DW_AT_TI_call
        call #_exit ; |269| 
                                        ; call occurs [#_exit] ; |269| 
$C$L10:    
        SP = SP + #7
	.dwcfi	cfa_offset, 1
$C$DW$142	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$142, DW_AT_low_pc(0x00)
	.dwattr $C$DW$142, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$115, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c")
	.dwattr $C$DW$115, DW_AT_TI_end_line(0x10f)
	.dwattr $C$DW$115, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$115

	.sect	".text"
	.global	_veusim_release_testvector

$C$DW$143	.dwtag  DW_TAG_subprogram, DW_AT_name("veusim_release_testvector")
	.dwattr $C$DW$143, DW_AT_low_pc(_veusim_release_testvector)
	.dwattr $C$DW$143, DW_AT_high_pc(0x00)
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("_veusim_release_testvector")
	.dwattr $C$DW$143, DW_AT_external
	.dwattr $C$DW$143, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c")
	.dwattr $C$DW$143, DW_AT_TI_begin_line(0x116)
	.dwattr $C$DW$143, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$143, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 279,column 1,is_stmt,address _veusim_release_testvector

	.dwfde $C$DW$CIE, _veusim_release_testvector
;----------------------------------------------------------------------
; 278 | void veusim_release_testvector ()                                      
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: veusim_release_testvector                                    *
;*                                                                             *
;*   Function Uses Regs : AR0,XAR0,SP,M40,SATA,SATD,RDM,FRCT,SMUL              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 2 words                                              *
;*                        (2 return address/alignment)                         *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_veusim_release_testvector:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-1
	.dwcfi	cfa_offset, 2
        XAR0 = dbl(*(#_inputFile))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 280,column 3,is_stmt
;----------------------------------------------------------------------
; 280 | fclose (inputFile);                                                    
;----------------------------------------------------------------------
$C$DW$144	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$144, DW_AT_low_pc(0x00)
	.dwattr $C$DW$144, DW_AT_name("_fclose")
	.dwattr $C$DW$144, DW_AT_TI_call
        call #_fclose ; |280| 
                                        ; call occurs [#_fclose] ; |280| 
        XAR0 = dbl(*(#_inputFile_Rx))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 281,column 3,is_stmt
;----------------------------------------------------------------------
; 281 | fclose (inputFile_Rx);                                                 
;----------------------------------------------------------------------
$C$DW$145	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$145, DW_AT_low_pc(0x00)
	.dwattr $C$DW$145, DW_AT_name("_fclose")
	.dwattr $C$DW$145, DW_AT_TI_call
        call #_fclose ; |281| 
                                        ; call occurs [#_fclose] ; |281| 
        XAR0 = dbl(*(#_outputFile))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 282,column 3,is_stmt
;----------------------------------------------------------------------
; 282 | fclose (outputFile);                                                   
;----------------------------------------------------------------------
$C$DW$146	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$146, DW_AT_low_pc(0x00)
	.dwattr $C$DW$146, DW_AT_name("_fclose")
	.dwattr $C$DW$146, DW_AT_TI_call
        call #_fclose ; |282| 
                                        ; call occurs [#_fclose] ; |282| 
        XAR0 = dbl(*(#_outputFile_Rx))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 283,column 3,is_stmt
;----------------------------------------------------------------------
; 283 | fclose (outputFile_Rx);                                                
;----------------------------------------------------------------------
$C$DW$147	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$147, DW_AT_low_pc(0x00)
	.dwattr $C$DW$147, DW_AT_name("_fclose")
	.dwattr $C$DW$147, DW_AT_TI_call
        call #_fclose ; |283| 
                                        ; call occurs [#_fclose] ; |283| 
        XAR0 = dbl(*(#_inputVEUFile))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 284,column 3,is_stmt
;----------------------------------------------------------------------
; 284 | fclose (inputVEUFile);                                                 
;----------------------------------------------------------------------
$C$DW$148	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$148, DW_AT_low_pc(0x00)
	.dwattr $C$DW$148, DW_AT_name("_fclose")
	.dwattr $C$DW$148, DW_AT_TI_call
        call #_fclose ; |284| 
                                        ; call occurs [#_fclose] ; |284| 
        SP = SP + #1
	.dwcfi	cfa_offset, 1
$C$DW$149	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$149, DW_AT_low_pc(0x00)
	.dwattr $C$DW$149, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$143, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c")
	.dwattr $C$DW$143, DW_AT_TI_end_line(0x11d)
	.dwattr $C$DW$143, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$143

	.sect	".text"
	.global	_veusim_read_frame

$C$DW$150	.dwtag  DW_TAG_subprogram, DW_AT_name("veusim_read_frame")
	.dwattr $C$DW$150, DW_AT_low_pc(_veusim_read_frame)
	.dwattr $C$DW$150, DW_AT_high_pc(0x00)
	.dwattr $C$DW$150, DW_AT_TI_symbol_name("_veusim_read_frame")
	.dwattr $C$DW$150, DW_AT_external
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$150, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c")
	.dwattr $C$DW$150, DW_AT_TI_begin_line(0x12a)
	.dwattr $C$DW$150, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$150, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 299,column 1,is_stmt,address _veusim_read_frame

	.dwfde $C$DW$CIE, _veusim_read_frame
$C$DW$151	.dwtag  DW_TAG_formal_parameter, DW_AT_name("inBuf")
	.dwattr $C$DW$151, DW_AT_TI_symbol_name("_inBuf")
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$151, DW_AT_location[DW_OP_reg17]
$C$DW$152	.dwtag  DW_TAG_formal_parameter, DW_AT_name("inFile")
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("_inFile")
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$152, DW_AT_location[DW_OP_reg19]
$C$DW$153	.dwtag  DW_TAG_formal_parameter, DW_AT_name("frmSize")
	.dwattr $C$DW$153, DW_AT_TI_symbol_name("_frmSize")
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$153, DW_AT_location[DW_OP_reg12]
;----------------------------------------------------------------------
; 298 | tint veusim_read_frame (linSample *inBuf, FILE *inFile, tint frmSize)  
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: veusim_read_frame                                            *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,CARRY,  *
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (8 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_veusim_read_frame:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-9
	.dwcfi	cfa_offset, 10
$C$DW$154	.dwtag  DW_TAG_variable, DW_AT_name("inBuf")
	.dwattr $C$DW$154, DW_AT_TI_symbol_name("_inBuf")
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$154, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$155	.dwtag  DW_TAG_variable, DW_AT_name("inFile")
	.dwattr $C$DW$155, DW_AT_TI_symbol_name("_inFile")
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$155, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$156	.dwtag  DW_TAG_variable, DW_AT_name("frmSize")
	.dwattr $C$DW$156, DW_AT_TI_symbol_name("_frmSize")
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$156, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$157	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$157, DW_AT_location[DW_OP_bregx 0x24 5]
;----------------------------------------------------------------------
; 300 | int i;                                                                 
;----------------------------------------------------------------------
        *SP(#4) = T0 ; |299| 
        dbl(*SP(#2)) = XAR1
        dbl(*SP(#0)) = XAR0
        XAR3 = dbl(*SP(#2))
        AC0 = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 302,column 3,is_stmt
;----------------------------------------------------------------------
; 302 | if (inFile) {                                                          
;----------------------------------------------------------------------
        if (AC0 == #0) goto $C$L13 ; |302| 
                                        ; branchcc occurs ; |302| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 303,column 10,is_stmt
;----------------------------------------------------------------------
; 303 | for (i = 0; i < frmSize; i++) {                                        
;----------------------------------------------------------------------
        *SP(#5) = #0 ; |303| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 303,column 17,is_stmt
;----------------------------------------------------------------------
; 304 | int lsb, msb;                                                          
;----------------------------------------------------------------------
        AR1 = *SP(#4) ; |303| 
        AR2 = *SP(#5) ; |303| 
        TC1 = (AR2 >= AR1) ; |303| 
        if (TC1) goto $C$L12 ; |303| 
                                        ; branchcc occurs ; |303| 
$C$L11:    
$C$DW$L$_veusim_read_frame$3$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 303,column 35,is_stmt

$C$DW$158	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$159	.dwtag  DW_TAG_variable, DW_AT_name("lsb")
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("_lsb")
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$159, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$160	.dwtag  DW_TAG_variable, DW_AT_name("msb")
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("_msb")
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$160, DW_AT_location[DW_OP_bregx 0x24 7]
        XAR0 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 305,column 7,is_stmt
;----------------------------------------------------------------------
; 305 | lsb = fgetc(inFile);                                                   
;----------------------------------------------------------------------
$C$DW$161	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$161, DW_AT_low_pc(0x00)
	.dwattr $C$DW$161, DW_AT_name("_fgetc")
	.dwattr $C$DW$161, DW_AT_TI_call
        call #_fgetc ; |305| 
                                        ; call occurs [#_fgetc] ; |305| 
        *SP(#6) = T0 ; |305| 
        XAR0 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 306,column 7,is_stmt
;----------------------------------------------------------------------
; 306 | msb = fgetc(inFile);                                                   
;----------------------------------------------------------------------
$C$DW$162	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$162, DW_AT_low_pc(0x00)
	.dwattr $C$DW$162, DW_AT_name("_fgetc")
	.dwattr $C$DW$162, DW_AT_TI_call
        call #_fgetc ; |306| 
                                        ; call occurs [#_fgetc] ; |306| 
        *SP(#7) = T0 ; |306| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 307,column 7,is_stmt
;----------------------------------------------------------------------
; 307 | inBuf[i] = (linSample)((msb << 8) | lsb);                              
;----------------------------------------------------------------------
        T0 = *SP(#5) ; |307| 
        XAR3 = dbl(*SP(#0))
        AC0 = *SP(#7) << #8 ; |307| 
        AR1 = AC0 | *SP(#6) ; |307| 
        *AR3(T0) = AR1 ; |307| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 308,column 5,is_stmt
	.dwendtag $C$DW$158

	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 303,column 30,is_stmt
        *SP(#5) = *SP(#5) + #1 ; |303| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 303,column 17,is_stmt
        AR1 = *SP(#4) ; |303| 
        AR2 = *SP(#5) ; |303| 
        TC1 = (AR2 < AR1) ; |303| 
        if (TC1) goto $C$L11 ; |303| 
                                        ; branchcc occurs ; |303| 
$C$DW$L$_veusim_read_frame$3$E:
$C$L12:    
        XAR0 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 310,column 5,is_stmt
;----------------------------------------------------------------------
; 310 | if (feof(inFile)) return (0);                                          
;----------------------------------------------------------------------
$C$DW$163	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$163, DW_AT_low_pc(0x00)
	.dwattr $C$DW$163, DW_AT_name("_feof")
	.dwattr $C$DW$163, DW_AT_TI_call
        call #_feof ; |310| 
                                        ; call occurs [#_feof] ; |310| 
        if (T0 == #0) goto $C$L13 ; |310| 
                                        ; branchcc occurs ; |310| 
        T0 = #0
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 310,column 23,is_stmt
;----------------------------------------------------------------------
; 312 | return (1);                                                            
;----------------------------------------------------------------------
        goto $C$L14 ; |310| 
                                        ; branch occurs ; |310| 
$C$L13:    
        T0 = #1
$C$L14:    
        SP = SP + #9
	.dwcfi	cfa_offset, 1
$C$DW$164	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$164, DW_AT_low_pc(0x00)
	.dwattr $C$DW$164, DW_AT_TI_return
        return
                                        ; return occurs

$C$DW$165	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$165, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\veu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\veusim.asm:$C$L11:1:1373048246")
	.dwattr $C$DW$165, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c")
	.dwattr $C$DW$165, DW_AT_TI_begin_line(0x12f)
	.dwattr $C$DW$165, DW_AT_TI_end_line(0x134)
$C$DW$166	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$166, DW_AT_low_pc($C$DW$L$_veusim_read_frame$3$B)
	.dwattr $C$DW$166, DW_AT_high_pc($C$DW$L$_veusim_read_frame$3$E)
	.dwendtag $C$DW$165

	.dwattr $C$DW$150, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c")
	.dwattr $C$DW$150, DW_AT_TI_end_line(0x139)
	.dwattr $C$DW$150, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$150

	.sect	".text"
	.global	_veusim_write_frame

$C$DW$167	.dwtag  DW_TAG_subprogram, DW_AT_name("veusim_write_frame")
	.dwattr $C$DW$167, DW_AT_low_pc(_veusim_write_frame)
	.dwattr $C$DW$167, DW_AT_high_pc(0x00)
	.dwattr $C$DW$167, DW_AT_TI_symbol_name("_veusim_write_frame")
	.dwattr $C$DW$167, DW_AT_external
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$167, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c")
	.dwattr $C$DW$167, DW_AT_TI_begin_line(0x146)
	.dwattr $C$DW$167, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$167, DW_AT_TI_max_frame_size(0x148)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 327,column 1,is_stmt,address _veusim_write_frame

	.dwfde $C$DW$CIE, _veusim_write_frame
$C$DW$168	.dwtag  DW_TAG_formal_parameter, DW_AT_name("outBuf")
	.dwattr $C$DW$168, DW_AT_TI_symbol_name("_outBuf")
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$168, DW_AT_location[DW_OP_reg17]
$C$DW$169	.dwtag  DW_TAG_formal_parameter, DW_AT_name("outFile")
	.dwattr $C$DW$169, DW_AT_TI_symbol_name("_outFile")
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$169, DW_AT_location[DW_OP_reg19]
$C$DW$170	.dwtag  DW_TAG_formal_parameter, DW_AT_name("frmSize")
	.dwattr $C$DW$170, DW_AT_TI_symbol_name("_frmSize")
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$170, DW_AT_location[DW_OP_reg12]
;----------------------------------------------------------------------
; 326 | tint veusim_write_frame (tint *outBuf, FILE *outFile, tint frmSize)    
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: veusim_write_frame                                           *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,FP,XFP, *
;*                        SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL             *
;*   Save On Entry Regs : FP                                                   *
;*   Stack Frame        : Full (Frame Pointer in AR6, w/ debug)                *
;*   Total Frame Size   : 328 words                                            *
;*                        (1 return address/alignment)                         *
;*                        (326 local values)                                   *
;*                        (1 register save area)                               *
;*   Min System Stack   : 2 words                                              *
;*******************************************************************************
_veusim_write_frame:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        pshboth(XFP)
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 32, -2

        @SP_L = @SP_L + #-326
||      mmap()

        XFP = mar(*SP)
	.dwcfi	cfa_offset, 328
$C$DW$171	.dwtag  DW_TAG_variable, DW_AT_name("outBuf")
	.dwattr $C$DW$171, DW_AT_TI_symbol_name("_outBuf")
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$171, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$172	.dwtag  DW_TAG_variable, DW_AT_name("outFile")
	.dwattr $C$DW$172, DW_AT_TI_symbol_name("_outFile")
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$172, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$173	.dwtag  DW_TAG_variable, DW_AT_name("frmSize")
	.dwattr $C$DW$173, DW_AT_TI_symbol_name("_frmSize")
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$173, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$174	.dwtag  DW_TAG_variable, DW_AT_name("k")
	.dwattr $C$DW$174, DW_AT_TI_symbol_name("_k")
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$174, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$175	.dwtag  DW_TAG_variable, DW_AT_name("buf")
	.dwattr $C$DW$175, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$175, DW_AT_location[DW_OP_bregx 0x24 6]
;----------------------------------------------------------------------
; 328 | int k;                                                                 
; 329 | tword buf[2*MAX_NUM_SAMPLES_PER_FRAME];                                
;----------------------------------------------------------------------
        *SP(#4) = T0 ; |327| 
        dbl(*SP(#2)) = XAR1
        dbl(*SP(#0)) = XAR0
        XAR3 = dbl(*SP(#2))
        AC0 = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 331,column 3,is_stmt
;----------------------------------------------------------------------
; 331 | if (outFile) {                                                         
;----------------------------------------------------------------------
        if (AC0 == #0) goto $C$L17 ; |331| 
                                        ; branchcc occurs ; |331| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 332,column 10,is_stmt
;----------------------------------------------------------------------
; 332 | for (k = 0; k < frmSize; k++) {                                        
;----------------------------------------------------------------------
        *SP(#5) = #0 ; |332| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 332,column 17,is_stmt
        AR1 = *SP(#4) ; |332| 
        AR2 = *SP(#5) ; |332| 
        TC1 = (AR2 >= AR1) ; |332| 
        if (TC1) goto $C$L16 ; |332| 
                                        ; branchcc occurs ; |332| 
$C$L15:    
$C$DW$L$_veusim_write_frame$3$B:
        T0 = AR2
        XAR3 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 333,column 7,is_stmt
;----------------------------------------------------------------------
; 333 | buf[2*k+0] = (outBuf[k] >> 0) & 0xff;                                  
;----------------------------------------------------------------------
        AR1 = *AR3(T0) ; |333| 
        T0 = T0 <<< #1 ; |333| 

        XAR3 = mar(*SP(#6))
||      AC0 = AR1 & #0x00ff ; |333| 

        *AR3(T0) = AC0 ; |333| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 334,column 7,is_stmt
;----------------------------------------------------------------------
; 334 | buf[2*k+1] = (outBuf[k] >> 8) & 0xff;                                  
;----------------------------------------------------------------------
        T0 = *SP(#5) ; |334| 
        XAR3 = dbl(*SP(#0))

        T0 = T0 <<< #1 ; |334| 
||      AR1 = high_byte(*AR3(T0)) ; |334| 

        T0 = T0 + #1 ; |334| 

        XAR3 = mar(*SP(#6))
||      AC0 = AR1 & #0x00ff ; |334| 

        *AR3(T0) = AC0 ; |334| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 332,column 30,is_stmt
        *SP(#5) = *SP(#5) + #1 ; |332| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 332,column 17,is_stmt
        AR2 = *SP(#5) ; |332| 
        AR1 = *SP(#4) ; |332| 
        TC1 = (AR2 < AR1) ; |332| 
        if (TC1) goto $C$L15 ; |332| 
                                        ; branchcc occurs ; |332| 
$C$DW$L$_veusim_write_frame$3$E:
$C$L16:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 337,column 5,is_stmt
;----------------------------------------------------------------------
; 337 | fwrite (buf, sizeof(tword), 2*frmSize, outFile);                       
; 340 | return (1);                                                            
;----------------------------------------------------------------------
        AC0 = *SP(#4) << #1 ; |337| 
        XAR0 = mar(*SP(#6))
        XAR1 = dbl(*SP(#2))

        T1 = AC0  ; |337| 
||      T0 = #1

$C$DW$176	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$176, DW_AT_low_pc(0x00)
	.dwattr $C$DW$176, DW_AT_name("_fwrite")
	.dwattr $C$DW$176, DW_AT_TI_call
        call #_fwrite ; |337| 
                                        ; call occurs [#_fwrite] ; |337| 
$C$L17:    

        @SP_L = @SP_L + #326
||      mmap()

        T0 = #1
	.dwcfi	cfa_offset, 2
        XFP = popboth()
	.dwcfi	restore_reg, 32
	.dwcfi	cfa_offset, 1
$C$DW$177	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$177, DW_AT_low_pc(0x00)
	.dwattr $C$DW$177, DW_AT_TI_return
        return
                                        ; return occurs

$C$DW$178	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$178, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\veu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\veusim.asm:$C$L15:1:1373048246")
	.dwattr $C$DW$178, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c")
	.dwattr $C$DW$178, DW_AT_TI_begin_line(0x14c)
	.dwattr $C$DW$178, DW_AT_TI_end_line(0x14f)
$C$DW$179	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$179, DW_AT_low_pc($C$DW$L$_veusim_write_frame$3$B)
	.dwattr $C$DW$179, DW_AT_high_pc($C$DW$L$_veusim_write_frame$3$E)
	.dwendtag $C$DW$178

	.dwattr $C$DW$167, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c")
	.dwattr $C$DW$167, DW_AT_TI_end_line(0x155)
	.dwattr $C$DW$167, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$167

	.sect	".text"
	.global	_veusim_get_frame_size

$C$DW$180	.dwtag  DW_TAG_subprogram, DW_AT_name("veusim_get_frame_size")
	.dwattr $C$DW$180, DW_AT_low_pc(_veusim_get_frame_size)
	.dwattr $C$DW$180, DW_AT_high_pc(0x00)
	.dwattr $C$DW$180, DW_AT_TI_symbol_name("_veusim_get_frame_size")
	.dwattr $C$DW$180, DW_AT_external
	.dwattr $C$DW$180, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c")
	.dwattr $C$DW$180, DW_AT_TI_begin_line(0x15d)
	.dwattr $C$DW$180, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$180, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 350,column 1,is_stmt,address _veusim_get_frame_size

	.dwfde $C$DW$CIE, _veusim_get_frame_size
$C$DW$181	.dwtag  DW_TAG_formal_parameter, DW_AT_name("frmSize")
	.dwattr $C$DW$181, DW_AT_TI_symbol_name("_frmSize")
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$181, DW_AT_location[DW_OP_reg17]
;----------------------------------------------------------------------
; 349 | void veusim_get_frame_size(tint *frmSize)                              
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: veusim_get_frame_size                                        *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,TC1,M40,   *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 function parameters)                              *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_veusim_get_frame_size:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-5
	.dwcfi	cfa_offset, 6
$C$DW$182	.dwtag  DW_TAG_variable, DW_AT_name("frmSize")
	.dwattr $C$DW$182, DW_AT_TI_symbol_name("_frmSize")
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$182, DW_AT_location[DW_OP_bregx 0x24 2]
        dbl(*SP(#2)) = XAR0
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 352,column 3,is_stmt
;----------------------------------------------------------------------
; 352 | veu_fileio_read_int (inputVEUFile, "%d\n", frmSize);                   
;----------------------------------------------------------------------
        XAR1 = #$C$FSL13 ; |352| 
        XAR0 = dbl(*(#_inputVEUFile))
        XAR2 = dbl(*SP(#2))
$C$DW$183	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$183, DW_AT_low_pc(0x00)
	.dwattr $C$DW$183, DW_AT_name("_veu_fileio_read_int")
	.dwattr $C$DW$183, DW_AT_TI_call
        call #_veu_fileio_read_int ; |352| 
                                        ; call occurs [#_veu_fileio_read_int] ; |352| 
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 353,column 3,is_stmt
;----------------------------------------------------------------------
; 353 | if ((*frmSize<veu_INFRAME_MINLENGTH) || (*frmSize>veu_INFRAME_MAXLENGTH
;     | )) {                                                                   
;----------------------------------------------------------------------
        AR2 = #40 ; |353| 
        AR1 = *AR3 ; |353| 
        TC1 = (AR1 < AR2) ; |353| 
        if (TC1) goto $C$L18 ; |353| 
                                        ; branchcc occurs ; |353| 
        AR2 = #80 ; |353| 
        AR1 = *AR3 ; |353| 
        TC1 = (AR1 <= AR2) ; |353| 
        if (TC1) goto $C$L19 ; |353| 
                                        ; branchcc occurs ; |353| 
$C$L18:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 354,column 5,is_stmt
;----------------------------------------------------------------------
; 354 | printf ("Frame Size Error: frame size should be between 5 to 30ms");   
;----------------------------------------------------------------------
        XAR3 = #$C$FSL14 ; |354| 
        dbl(*SP(#0)) = XAR3
$C$DW$184	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$184, DW_AT_low_pc(0x00)
	.dwattr $C$DW$184, DW_AT_name("_printf")
	.dwattr $C$DW$184, DW_AT_TI_call
        call #_printf ; |354| 
                                        ; call occurs [#_printf] ; |354| 
        T0 = #1
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 355,column 5,is_stmt
;----------------------------------------------------------------------
; 355 | exit (1);                                                              
;----------------------------------------------------------------------
$C$DW$185	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$185, DW_AT_low_pc(0x00)
	.dwattr $C$DW$185, DW_AT_name("_exit")
	.dwattr $C$DW$185, DW_AT_TI_call
        call #_exit ; |355| 
                                        ; call occurs [#_exit] ; |355| 
$C$L19:    
        SP = SP + #5
	.dwcfi	cfa_offset, 1
$C$DW$186	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$186, DW_AT_low_pc(0x00)
	.dwattr $C$DW$186, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$180, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c")
	.dwattr $C$DW$180, DW_AT_TI_end_line(0x170)
	.dwattr $C$DW$180, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$180

	.sect	".text"
	.global	_veusim_new_veu

$C$DW$187	.dwtag  DW_TAG_subprogram, DW_AT_name("veusim_new_veu")
	.dwattr $C$DW$187, DW_AT_low_pc(_veusim_new_veu)
	.dwattr $C$DW$187, DW_AT_high_pc(0x00)
	.dwattr $C$DW$187, DW_AT_TI_symbol_name("_veusim_new_veu")
	.dwattr $C$DW$187, DW_AT_external
	.dwattr $C$DW$187, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c")
	.dwattr $C$DW$187, DW_AT_TI_begin_line(0x178)
	.dwattr $C$DW$187, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$187, DW_AT_TI_max_frame_size(0x12)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 377,column 1,is_stmt,address _veusim_new_veu

	.dwfde $C$DW$CIE, _veusim_new_veu
;----------------------------------------------------------------------
; 376 | void veusim_new_veu ()                                                 
; 378 | int i;                                                                 
; 379 | tint stat, veuNbufs;                                                   
; 381 | ecomemBuffer_t *bufs;                                                  
; 382 | ecomemBuffer_t *veuBufs;                                               
; 383 | veuSizeConfig_t veuCfgSize;                                            
; 384 | veuNewConfig_t  veuCfgNew;                                             
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: veusim_new_veu                                               *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,   *
;*                        CSR,RPTC,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL       *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 18 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (5 function parameters)                              *
;*                        (11 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_veusim_new_veu:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-17
	.dwcfi	cfa_offset, 18
$C$DW$188	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$188, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$188, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$189	.dwtag  DW_TAG_variable, DW_AT_name("stat")
	.dwattr $C$DW$189, DW_AT_TI_symbol_name("_stat")
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$189, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$190	.dwtag  DW_TAG_variable, DW_AT_name("veuNbufs")
	.dwattr $C$DW$190, DW_AT_TI_symbol_name("_veuNbufs")
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$190, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$191	.dwtag  DW_TAG_variable, DW_AT_name("bufs")
	.dwattr $C$DW$191, DW_AT_TI_symbol_name("_bufs")
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$191, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$192	.dwtag  DW_TAG_variable, DW_AT_name("veuBufs")
	.dwattr $C$DW$192, DW_AT_TI_symbol_name("_veuBufs")
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$192, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$193	.dwtag  DW_TAG_variable, DW_AT_name("veuCfgSize")
	.dwattr $C$DW$193, DW_AT_TI_symbol_name("_veuCfgSize")
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$193, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$194	.dwtag  DW_TAG_variable, DW_AT_name("veuCfgNew")
	.dwattr $C$DW$194, DW_AT_TI_symbol_name("_veuCfgNew")
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$194, DW_AT_location[DW_OP_bregx 0x24 14]
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 387,column 3,is_stmt
;----------------------------------------------------------------------
; 387 | veuCfgSize.max_frame_size = MAX_NUM_SAMPLES_PER_FRAME;                 
;----------------------------------------------------------------------
        *SP(#12) = #160 ; |387| 
        XAR0 = mar(*SP(#7))
        XAR1 = mar(*SP(#8))
        XAR2 = mar(*SP(#12))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 388,column 3,is_stmt
;----------------------------------------------------------------------
; 388 | stat = veuGetSizes (&veuNbufs, &bufs, &veuCfgSize);                    
;----------------------------------------------------------------------
$C$DW$195	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$195, DW_AT_low_pc(0x00)
	.dwattr $C$DW$195, DW_AT_name("_veuGetSizes")
	.dwattr $C$DW$195, DW_AT_TI_call
        call #_veuGetSizes ; |388| 
                                        ; call occurs [#_veuGetSizes] ; |388| 
        AR1 = T0  ; |388| 
        *SP(#6) = T0 ; |388| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 389,column 3,is_stmt
;----------------------------------------------------------------------
; 389 | if (stat != veu_NOERR) {                                               
;----------------------------------------------------------------------
        if (AR1 == #0) goto $C$L20 ; |389| 
                                        ; branchcc occurs ; |389| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 390,column 5,is_stmt
;----------------------------------------------------------------------
; 390 | printf ("Error in veuGetSizes !");                                     
;----------------------------------------------------------------------
        XAR3 = #$C$FSL15 ; |390| 
        dbl(*SP(#0)) = XAR3
$C$DW$196	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$196, DW_AT_low_pc(0x00)
	.dwattr $C$DW$196, DW_AT_name("_printf")
	.dwattr $C$DW$196, DW_AT_TI_call
        call #_printf ; |390| 
                                        ; call occurs [#_printf] ; |390| 
        T0 = #1
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 391,column 5,is_stmt
;----------------------------------------------------------------------
; 391 | exit (1);                                                              
;----------------------------------------------------------------------
$C$DW$197	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$197, DW_AT_low_pc(0x00)
	.dwattr $C$DW$197, DW_AT_name("_exit")
	.dwattr $C$DW$197, DW_AT_TI_call
        call #_exit ; |391| 
                                        ; call occurs [#_exit] ; |391| 
$C$L20:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 395,column 3,is_stmt
;----------------------------------------------------------------------
; 395 | veuBufs = (ecomemBuffer_t*) malloc (veuNbufs * sizeof(ecomemBuffer_t));
;----------------------------------------------------------------------
        AC0 = *SP(#7) * #6 ; |395| 
        T0 = AC0  ; |395| 
$C$DW$198	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$198, DW_AT_low_pc(0x00)
	.dwattr $C$DW$198, DW_AT_name("_malloc")
	.dwattr $C$DW$198, DW_AT_TI_call
        call #_malloc ; |395| 
                                        ; call occurs [#_malloc] ; |395| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 403,column 3,is_stmt
;----------------------------------------------------------------------
; 403 | printf ("VEU memory buffers:\n");                                      
;----------------------------------------------------------------------
        XAR3 = #$C$FSL16 ; |403| 
        dbl(*SP(#10)) = XAR0
        dbl(*SP(#0)) = XAR3
$C$DW$199	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$199, DW_AT_low_pc(0x00)
	.dwattr $C$DW$199, DW_AT_name("_printf")
	.dwattr $C$DW$199, DW_AT_TI_call
        call #_printf ; |403| 
                                        ; call occurs [#_printf] ; |403| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 404,column 3,is_stmt
;----------------------------------------------------------------------
; 404 | printf ("    Buffer    Size(twords)    Alignment    Volatile\n");      
;----------------------------------------------------------------------
        XAR3 = #$C$FSL17 ; |404| 
        dbl(*SP(#0)) = XAR3
$C$DW$200	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$200, DW_AT_low_pc(0x00)
	.dwattr $C$DW$200, DW_AT_name("_printf")
	.dwattr $C$DW$200, DW_AT_TI_call
        call #_printf ; |404| 
                                        ; call occurs [#_printf] ; |404| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 405,column 8,is_stmt
;----------------------------------------------------------------------
; 405 | for (i = 0; i < veuNbufs; i++) {                                       
;----------------------------------------------------------------------
        *SP(#5) = #0 ; |405| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 405,column 15,is_stmt
        AR1 = *SP(#7) ; |405| 
        AR2 = *SP(#5) ; |405| 
        TC1 = (AR2 >= AR1) ; |405| 
        if (TC1) goto $C$L26 ; |405| 
                                        ; branchcc occurs ; |405| 
$C$L21:    
$C$DW$L$_veusim_new_veu$4$B:
        XAR3 = dbl(*SP(#8))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 406,column 5,is_stmt
;----------------------------------------------------------------------
; 406 | veuBufs[i]             = bufs[i];                                      
;----------------------------------------------------------------------
        AC0 = *SP(#5) * #6 ; |406| 
        AR1 = AC0 ; |406| 
        XAR2 = dbl(*SP(#10))
        AC0 = *SP(#5) * #6 ; |406| 

        AR1 = AC0 ; |406| 
||      mar(AR3 + AR1) ; |406| 

        repeat(#2) ; |406| 
||      mar(AR2 + AR1) ; |406| 

                                            ; loop starts ; |406| 
$C$DW$L$_veusim_new_veu$4$E:
$C$L22:    
$C$DW$L$_veusim_new_veu$5$B:
            dbl(*AR2+) = dbl(*AR3+) ; |406| 
                                        ; loop ends ; |406| 
$C$DW$L$_veusim_new_veu$5$E:
$C$L23:    
$C$DW$L$_veusim_new_veu$6$B:
        XAR3 = dbl(*SP(#10))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 407,column 5,is_stmt
;----------------------------------------------------------------------
; 407 | veuBufs[i].mclass      = ecomem_CLASS_EXTERNAL;                        
;----------------------------------------------------------------------
        AC0 = *SP(#5) * #6 ; |407| 
        T0 = AC0  ; |407| 
        *AR3(T0) = #0 ; |407| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 408,column 5,is_stmt
;----------------------------------------------------------------------
; 408 | veuBufs[i].log2align   = 0;                                            
;----------------------------------------------------------------------
        AC0 = *SP(#5) * #6 ; |408| 
        AR1 = AC0 ; |408| 
        XAR3 = dbl(*SP(#10))
        mar(AR3 + AR1) ; |408| 
        *AR3(short(#1)) = #0 ; |408| 
        XAR3 = dbl(*SP(#10))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 409,column 5,is_stmt
;----------------------------------------------------------------------
; 409 | veuBufs[i].volat       = FALSE;                                        
;----------------------------------------------------------------------
        AC0 = *SP(#5) * #6 ; |409| 
        AR1 = AC0 ; |409| 
        mar(AR3 + AR1) ; |409| 
        *AR3(short(#3)) = #0 ; |409| 
        XAR3 = dbl(*SP(#8))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 410,column 5,is_stmt
;----------------------------------------------------------------------
; 410 | veuBufs[i].base        = (bufs[i].size)? malloc(bufs[i].size): NULL ;  
;----------------------------------------------------------------------
        AC0 = *SP(#5) * #6 ; |410| 
        AR1 = AC0 ; |410| 
        mar(AR3 + AR1) ; |410| 
        AR1 = *AR3(short(#2)) ; |410| 
        if (AR1 == #0) goto $C$L24 ; |410| 
                                        ; branchcc occurs ; |410| 
$C$DW$L$_veusim_new_veu$6$E:
$C$DW$L$_veusim_new_veu$7$B:
        XAR3 = dbl(*SP(#8))
        AC0 = *SP(#5) * #6 ; |410| 
        AR1 = AC0 ; |410| 
        mar(AR3 + AR1) ; |410| 
        T0 = *AR3(short(#2)) ; |410| 
$C$DW$201	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$201, DW_AT_low_pc(0x00)
	.dwattr $C$DW$201, DW_AT_name("_malloc")
	.dwattr $C$DW$201, DW_AT_TI_call
        call #_malloc ; |410| 
                                        ; call occurs [#_malloc] ; |410| 
        goto $C$L25 ; |410| 
                                        ; branch occurs ; |410| 
$C$DW$L$_veusim_new_veu$7$E:
$C$L24:    
$C$DW$L$_veusim_new_veu$8$B:
        XAR0 = #0 ; |410| 
$C$DW$L$_veusim_new_veu$8$E:
$C$L25:    
$C$DW$L$_veusim_new_veu$9$B:
        XAR3 = dbl(*SP(#10))
        AC0 = *SP(#5) * #6 ; |410| 
        AR1 = AC0 ; |410| 
        mar(AR3 + AR1) ; |410| 
        dbl(*AR3(short(#4))) = XAR0
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 412,column 5,is_stmt
;----------------------------------------------------------------------
; 412 | printf ("     %3d       %7d         %4d       ",                       
; 413 |              i, (int)bufs[i].size, (int)bufs[i].log2align);            
;----------------------------------------------------------------------
        XAR3 = #$C$FSL18 ; |412| 
        dbl(*SP(#0)) = XAR3
        AR1 = *SP(#5) ; |412| 
        *SP(#2) = AR1 ; |412| 
        XAR3 = dbl(*SP(#8))
        AC0 = *SP(#5) * #6 ; |412| 
        AR1 = AC0 ; |412| 
        mar(AR3 + AR1) ; |412| 
        AR1 = *AR3(short(#2)) ; |412| 
        *SP(#3) = AR1 ; |412| 
        XAR3 = dbl(*SP(#8))
        AC0 = *SP(#5) * #6 ; |412| 
        AR1 = AC0 ; |412| 
        mar(AR3 + AR1) ; |412| 
        AR1 = *AR3(short(#1)) ; |412| 
        *SP(#4) = AR1 ; |412| 
$C$DW$202	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$202, DW_AT_low_pc(0x00)
	.dwattr $C$DW$202, DW_AT_name("_printf")
	.dwattr $C$DW$202, DW_AT_TI_call
        call #_printf ; |412| 
                                        ; call occurs [#_printf] ; |412| 
        XAR3 = dbl(*SP(#8))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 414,column 5,is_stmt
;----------------------------------------------------------------------
; 414 | if(bufs[i].volat)                                                      
;----------------------------------------------------------------------
        AC0 = *SP(#5) * #6 ; |414| 
        AR1 = AC0 ; |414| 
        mar(AR3 + AR1) ; |414| 
        AR1 = *AR3(short(#3)) ; |414| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 415,column 7,is_stmt
;----------------------------------------------------------------------
; 415 | printf ("    yes\n");                                                  
; 416 | else                                                                   
;----------------------------------------------------------------------
        XAR3 = #$C$FSL19 ; |415| 
        if (AR1 != #0) execute (D_Unit) ||
           dbl(*SP(#0)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 417,column 7,is_stmt
;----------------------------------------------------------------------
; 417 | printf ("    no\n");                                                   
; 420 | veuCfgNew.handle = NULL;                                               
; 421 | veuInst = NULL;                                                        
;----------------------------------------------------------------------
        XAR3 = #$C$FSL20 ; |417| 
        if (AR1 == #0) execute (D_Unit) ||
           dbl(*SP(#0)) = XAR3
$C$DW$203	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$203, DW_AT_low_pc(0x00)
	.dwattr $C$DW$203, DW_AT_name("_printf")
	.dwattr $C$DW$203, DW_AT_TI_call
        call #_printf ; |417| 
                                        ; call occurs [#_printf] ; |417| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 405,column 29,is_stmt
        *SP(#5) = *SP(#5) + #1 ; |405| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 405,column 15,is_stmt
        AR2 = *SP(#5) ; |405| 
        AR1 = *SP(#7) ; |405| 
        TC1 = (AR2 < AR1) ; |405| 
        if (TC1) goto $C$L21 ; |405| 
                                        ; branchcc occurs ; |405| 
$C$DW$L$_veusim_new_veu$9$E:
$C$L26:    

        XAR2 = mar(*SP(#14))
||      AC0 = #0  ; |420| 

	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 422,column 3,is_stmt
;----------------------------------------------------------------------
; 422 | stat = veuNew ((void **)&veuInst, veuNbufs, veuBufs, &veuCfgNew);      
;----------------------------------------------------------------------
        XAR0 = #_veuInst ; |422| 
        dbl(*SP(#14)) = AC0
        dbl(*(#_veuInst)) = AC0
        T0 = *SP(#7) ; |422| 
        XAR1 = dbl(*SP(#10))
$C$DW$204	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$204, DW_AT_low_pc(0x00)
	.dwattr $C$DW$204, DW_AT_name("_veuNew")
	.dwattr $C$DW$204, DW_AT_TI_call
        call #_veuNew ; |422| 
                                        ; call occurs [#_veuNew] ; |422| 
        AR1 = T0  ; |422| 
        *SP(#6) = T0 ; |422| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 423,column 3,is_stmt
;----------------------------------------------------------------------
; 423 | if (stat != veu_NOERR) {                                               
;----------------------------------------------------------------------
        if (AR1 == #0) goto $C$L27 ; |423| 
                                        ; branchcc occurs ; |423| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 424,column 5,is_stmt
;----------------------------------------------------------------------
; 424 | printf ("Error in veuNew %d !", stat);                                 
;----------------------------------------------------------------------
        XAR3 = #$C$FSL21 ; |424| 
        dbl(*SP(#0)) = XAR3
        AR1 = *SP(#6) ; |424| 
        *SP(#2) = AR1 ; |424| 
$C$DW$205	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$205, DW_AT_low_pc(0x00)
	.dwattr $C$DW$205, DW_AT_name("_printf")
	.dwattr $C$DW$205, DW_AT_TI_call
        call #_printf ; |424| 
                                        ; call occurs [#_printf] ; |424| 
        T0 = #1
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 425,column 5,is_stmt
;----------------------------------------------------------------------
; 425 | exit (1);                                                              
;----------------------------------------------------------------------
$C$DW$206	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$206, DW_AT_low_pc(0x00)
	.dwattr $C$DW$206, DW_AT_name("_exit")
	.dwattr $C$DW$206, DW_AT_TI_call
        call #_exit ; |425| 
                                        ; call occurs [#_exit] ; |425| 
$C$L27:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 428,column 3,is_stmt
;----------------------------------------------------------------------
; 428 | printf ("veu instance is created successfully\n");                     
;----------------------------------------------------------------------
        XAR3 = #$C$FSL22 ; |428| 
        dbl(*SP(#0)) = XAR3
$C$DW$207	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$207, DW_AT_low_pc(0x00)
	.dwattr $C$DW$207, DW_AT_name("_printf")
	.dwattr $C$DW$207, DW_AT_TI_call
        call #_printf ; |428| 
                                        ; call occurs [#_printf] ; |428| 
        SP = SP + #17
	.dwcfi	cfa_offset, 1
$C$DW$208	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$208, DW_AT_low_pc(0x00)
	.dwattr $C$DW$208, DW_AT_TI_return
        return
                                        ; return occurs

$C$DW$209	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$209, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\veu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\veusim.asm:$C$L21:1:1373048246")
	.dwattr $C$DW$209, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c")
	.dwattr $C$DW$209, DW_AT_TI_begin_line(0x195)
	.dwattr $C$DW$209, DW_AT_TI_end_line(0x1a2)
$C$DW$210	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$210, DW_AT_low_pc($C$DW$L$_veusim_new_veu$4$B)
	.dwattr $C$DW$210, DW_AT_high_pc($C$DW$L$_veusim_new_veu$4$E)
$C$DW$211	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$211, DW_AT_low_pc($C$DW$L$_veusim_new_veu$6$B)
	.dwattr $C$DW$211, DW_AT_high_pc($C$DW$L$_veusim_new_veu$6$E)
$C$DW$212	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$212, DW_AT_low_pc($C$DW$L$_veusim_new_veu$7$B)
	.dwattr $C$DW$212, DW_AT_high_pc($C$DW$L$_veusim_new_veu$7$E)
$C$DW$213	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$213, DW_AT_low_pc($C$DW$L$_veusim_new_veu$8$B)
	.dwattr $C$DW$213, DW_AT_high_pc($C$DW$L$_veusim_new_veu$8$E)
$C$DW$214	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$214, DW_AT_low_pc($C$DW$L$_veusim_new_veu$9$B)
	.dwattr $C$DW$214, DW_AT_high_pc($C$DW$L$_veusim_new_veu$9$E)

$C$DW$215	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$215, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\veu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\veusim.asm:$C$L22:2:1373048246")
	.dwattr $C$DW$215, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c")
	.dwattr $C$DW$215, DW_AT_TI_begin_line(0x196)
	.dwattr $C$DW$215, DW_AT_TI_end_line(0x196)
$C$DW$216	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$216, DW_AT_low_pc($C$DW$L$_veusim_new_veu$5$B)
	.dwattr $C$DW$216, DW_AT_high_pc($C$DW$L$_veusim_new_veu$5$E)
	.dwendtag $C$DW$215

	.dwendtag $C$DW$209

	.dwattr $C$DW$187, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c")
	.dwattr $C$DW$187, DW_AT_TI_end_line(0x1ad)
	.dwattr $C$DW$187, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$187

	.sect	".text"
	.global	_veusim_open_veu

$C$DW$217	.dwtag  DW_TAG_subprogram, DW_AT_name("veusim_open_veu")
	.dwattr $C$DW$217, DW_AT_low_pc(_veusim_open_veu)
	.dwattr $C$DW$217, DW_AT_high_pc(0x00)
	.dwattr $C$DW$217, DW_AT_TI_symbol_name("_veusim_open_veu")
	.dwattr $C$DW$217, DW_AT_external
	.dwattr $C$DW$217, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c")
	.dwattr $C$DW$217, DW_AT_TI_begin_line(0x1b5)
	.dwattr $C$DW$217, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$217, DW_AT_TI_max_frame_size(0x0e)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 438,column 1,is_stmt,address _veusim_open_veu

	.dwfde $C$DW$CIE, _veusim_open_veu
$C$DW$218	.dwtag  DW_TAG_formal_parameter, DW_AT_name("frame_size")
	.dwattr $C$DW$218, DW_AT_TI_symbol_name("_frame_size")
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$218, DW_AT_location[DW_OP_reg12]
;----------------------------------------------------------------------
; 437 | void veusim_open_veu (tint frame_size)                                 
; 439 | veuConfig_t veuConfig;                                                 
; 440 | tint veu_ret; /* for veu return value */                               
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: veusim_open_veu                                              *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,TC1,M40,SATA,SATD,  *
;*                        RDM,FRCT,SMUL                                        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 14 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (2 function parameters)                              *
;*                        (11 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_veusim_open_veu:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-13
	.dwcfi	cfa_offset, 14
$C$DW$219	.dwtag  DW_TAG_variable, DW_AT_name("frame_size")
	.dwattr $C$DW$219, DW_AT_TI_symbol_name("_frame_size")
	.dwattr $C$DW$219, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$219, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$220	.dwtag  DW_TAG_variable, DW_AT_name("veuConfig")
	.dwattr $C$DW$220, DW_AT_TI_symbol_name("_veuConfig")
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$220, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$221	.dwtag  DW_TAG_variable, DW_AT_name("veu_ret")
	.dwattr $C$DW$221, DW_AT_TI_symbol_name("_veu_ret")
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$221, DW_AT_location[DW_OP_bregx 0x24 12]

        *SP(#2) = T0 ; |438| 
||      AR1 = T0  ; |438| 

	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 444,column 3,is_stmt
;----------------------------------------------------------------------
; 444 | veuConfig.frame_size      = frame_size;                                
;----------------------------------------------------------------------
        *SP(#4) = AR1 ; |444| 
        XAR0 = dbl(*(#_veuInst))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 445,column 3,is_stmt
;----------------------------------------------------------------------
; 445 | veuConfig.config_bitfield = veu_CTLM_VEU;                              
;----------------------------------------------------------------------
        *SP(#3) = #1 ; |445| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 446,column 3,is_stmt
;----------------------------------------------------------------------
; 446 | veuConfig.anr_level       = 12;   /* set ANR max attenuation to 12dB */
;----------------------------------------------------------------------
        *SP(#5) = #12 ; |446| 
        XAR1 = mar(*SP(#3))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 447,column 3,is_stmt
;----------------------------------------------------------------------
; 447 | veuConfig.alc_send_level  = -15;  /* set ALC target level to -15dBm0 in
;     |  Send path*/                                                           
;----------------------------------------------------------------------
        *SP(#6) = #-15 ; |447| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 448,column 3,is_stmt
;----------------------------------------------------------------------
; 448 | veuConfig.alc_recv_level  = -15;  /* set ALC target level to -15dBm0 in
;     |  Recv path*/                                                           
;----------------------------------------------------------------------
        *SP(#7) = #-15 ; |448| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 449,column 3,is_stmt
;----------------------------------------------------------------------
; 449 | veuConfig.bulk_delay      = 162;  /* set bulk delay to 162ms */        
;----------------------------------------------------------------------
        *SP(#8) = #162 ; |449| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 450,column 3,is_stmt
;----------------------------------------------------------------------
; 450 | veuConfig.waepl           = 36;   /* set WAEPL to 36dB */              
;----------------------------------------------------------------------
        *SP(#9) = #36 ; |450| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 451,column 3,is_stmt
;----------------------------------------------------------------------
; 451 | veuConfig.fgc_send_gain   = 0;    /* set FGC gain to 0dB in Send path *
;     | /                                                                      
;----------------------------------------------------------------------
        *SP(#10) = #0 ; |451| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 452,column 3,is_stmt
;----------------------------------------------------------------------
; 452 | veuConfig.fgc_recv_gain   = 0;    /* set FGC gain to 0dB in Recv path *
;     | /                                                                      
;----------------------------------------------------------------------
        *SP(#11) = #0 ; |452| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 455,column 3,is_stmt
;----------------------------------------------------------------------
; 455 | veu_ret = veuOpen(veuInst, &veuConfig);                                
;----------------------------------------------------------------------
$C$DW$222	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$222, DW_AT_low_pc(0x00)
	.dwattr $C$DW$222, DW_AT_name("_veuOpen")
	.dwattr $C$DW$222, DW_AT_TI_call
        call #_veuOpen ; |455| 
                                        ; call occurs [#_veuOpen] ; |455| 
        *SP(#12) = T0 ; |455| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 458,column 3,is_stmt
;----------------------------------------------------------------------
; 458 | if (veu_ret == veu_ERR_BAD_INST) {                                     
;----------------------------------------------------------------------
        TC1 = (*SP(#12) == #1) ; |458| 
        if (!TC1) goto $C$L28 ; |458| 
                                        ; branchcc occurs ; |458| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 459,column 5,is_stmt
;----------------------------------------------------------------------
; 459 | printf ("Error in open a VEU instance !\n");                           
;----------------------------------------------------------------------
        XAR3 = #$C$FSL23 ; |459| 
        dbl(*SP(#0)) = XAR3
$C$DW$223	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$223, DW_AT_low_pc(0x00)
	.dwattr $C$DW$223, DW_AT_name("_printf")
	.dwattr $C$DW$223, DW_AT_TI_call
        call #_printf ; |459| 
                                        ; call occurs [#_printf] ; |459| 
        T0 = #1
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 460,column 5,is_stmt
;----------------------------------------------------------------------
; 460 | exit (1);                                                              
;----------------------------------------------------------------------
$C$DW$224	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$224, DW_AT_low_pc(0x00)
	.dwattr $C$DW$224, DW_AT_name("_exit")
	.dwattr $C$DW$224, DW_AT_TI_call
        call #_exit ; |460| 
                                        ; call occurs [#_exit] ; |460| 
$C$L28:    
        SP = SP + #13
	.dwcfi	cfa_offset, 1
$C$DW$225	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$225, DW_AT_low_pc(0x00)
	.dwattr $C$DW$225, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$217, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c")
	.dwattr $C$DW$217, DW_AT_TI_end_line(0x1ce)
	.dwattr $C$DW$217, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$217

	.sect	".text"
	.global	_veusim_control_veu

$C$DW$226	.dwtag  DW_TAG_subprogram, DW_AT_name("veusim_control_veu")
	.dwattr $C$DW$226, DW_AT_low_pc(_veusim_control_veu)
	.dwattr $C$DW$226, DW_AT_high_pc(0x00)
	.dwattr $C$DW$226, DW_AT_TI_symbol_name("_veusim_control_veu")
	.dwattr $C$DW$226, DW_AT_external
	.dwattr $C$DW$226, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c")
	.dwattr $C$DW$226, DW_AT_TI_begin_line(0x1d7)
	.dwattr $C$DW$226, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$226, DW_AT_TI_max_frame_size(0x14)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 473,column 1,is_stmt,address _veusim_control_veu

	.dwfde $C$DW$CIE, _veusim_control_veu
$C$DW$227	.dwtag  DW_TAG_formal_parameter, DW_AT_name("veuInst")
	.dwattr $C$DW$227, DW_AT_TI_symbol_name("_veuInst")
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$227, DW_AT_location[DW_OP_reg17]
$C$DW$228	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ctl")
	.dwattr $C$DW$228, DW_AT_TI_symbol_name("_ctl")
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$228, DW_AT_location[DW_OP_reg19]
$C$DW$229	.dwtag  DW_TAG_formal_parameter, DW_AT_name("frmSize_send")
	.dwattr $C$DW$229, DW_AT_TI_symbol_name("_frmSize_send")
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$229, DW_AT_location[DW_OP_reg21]
$C$DW$230	.dwtag  DW_TAG_formal_parameter, DW_AT_name("frmSize_recv")
	.dwattr $C$DW$230, DW_AT_TI_symbol_name("_frmSize_recv")
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$230, DW_AT_location[DW_OP_reg23]
;----------------------------------------------------------------------
; 471 | void veusim_control_veu (void *veuInst, veuControl_t *ctl, tint *frmSiz
;     | e_send,                                                                
; 472 | tint *frmSize_recv)                                                    
; 474 | tint ctrl_code, u_value, mode_mask, mode_value, num_read;              
; 475 | tint veu_ret; /* for veu return value */                               
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: veusim_control_veu                                           *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,CARRY,TC1, *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 20 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (4 function parameters)                              *
;*                        (14 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_veusim_control_veu:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-19
	.dwcfi	cfa_offset, 20
$C$DW$231	.dwtag  DW_TAG_variable, DW_AT_name("veuInst")
	.dwattr $C$DW$231, DW_AT_TI_symbol_name("_veuInst")
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$231, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$232	.dwtag  DW_TAG_variable, DW_AT_name("ctl")
	.dwattr $C$DW$232, DW_AT_TI_symbol_name("_ctl")
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$232, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$233	.dwtag  DW_TAG_variable, DW_AT_name("frmSize_send")
	.dwattr $C$DW$233, DW_AT_TI_symbol_name("_frmSize_send")
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$233, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$234	.dwtag  DW_TAG_variable, DW_AT_name("frmSize_recv")
	.dwattr $C$DW$234, DW_AT_TI_symbol_name("_frmSize_recv")
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$234, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$235	.dwtag  DW_TAG_variable, DW_AT_name("ctrl_code")
	.dwattr $C$DW$235, DW_AT_TI_symbol_name("_ctrl_code")
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$235, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$236	.dwtag  DW_TAG_variable, DW_AT_name("u_value")
	.dwattr $C$DW$236, DW_AT_TI_symbol_name("_u_value")
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$236, DW_AT_location[DW_OP_bregx 0x24 13]
$C$DW$237	.dwtag  DW_TAG_variable, DW_AT_name("mode_mask")
	.dwattr $C$DW$237, DW_AT_TI_symbol_name("_mode_mask")
	.dwattr $C$DW$237, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$237, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$238	.dwtag  DW_TAG_variable, DW_AT_name("mode_value")
	.dwattr $C$DW$238, DW_AT_TI_symbol_name("_mode_value")
	.dwattr $C$DW$238, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$238, DW_AT_location[DW_OP_bregx 0x24 15]
$C$DW$239	.dwtag  DW_TAG_variable, DW_AT_name("num_read")
	.dwattr $C$DW$239, DW_AT_TI_symbol_name("_num_read")
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$239, DW_AT_location[DW_OP_bregx 0x24 16]
$C$DW$240	.dwtag  DW_TAG_variable, DW_AT_name("veu_ret")
	.dwattr $C$DW$240, DW_AT_TI_symbol_name("_veu_ret")
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$240, DW_AT_location[DW_OP_bregx 0x24 17]
        dbl(*SP(#10)) = XAR3
        dbl(*SP(#8)) = XAR2
        dbl(*SP(#6)) = XAR1
        dbl(*SP(#4)) = XAR0
        XAR0 = dbl(*(#_inputVEUFile))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 477,column 10,is_stmt
;----------------------------------------------------------------------
; 477 | while (!feof(inputVEUFile)) {                                          
;----------------------------------------------------------------------
$C$DW$241	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$241, DW_AT_low_pc(0x00)
	.dwattr $C$DW$241, DW_AT_name("_feof")
	.dwattr $C$DW$241, DW_AT_TI_call
        call #_feof ; |477| 
                                        ; call occurs [#_feof] ; |477| 
        if (T0 != #0) goto $C$L42 ; |477| 
                                        ; branchcc occurs ; |477| 
$C$L29:    
$C$DW$L$_veusim_control_veu$2$B:
        XAR2 = mar(*SP(#12))
        XAR0 = dbl(*(#_inputVEUFile))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 478,column 5,is_stmt
;----------------------------------------------------------------------
; 478 | num_read = veu_fileio_read_int (inputVEUFile, "%d\n", &ctrl_code);     
;----------------------------------------------------------------------
        XAR1 = #$C$FSL13 ; |478| 
$C$DW$242	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$242, DW_AT_low_pc(0x00)
	.dwattr $C$DW$242, DW_AT_name("_veu_fileio_read_int")
	.dwattr $C$DW$242, DW_AT_TI_call
        call #_veu_fileio_read_int ; |478| 
                                        ; call occurs [#_veu_fileio_read_int] ; |478| 
        AR1 = T0  ; |478| 
        *SP(#16) = T0 ; |478| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 479,column 5,is_stmt
;----------------------------------------------------------------------
; 479 | if (num_read > 0) {                                                    
;----------------------------------------------------------------------
        if (AR1 <= #0) goto $C$L39 ; |479| 
                                        ; branchcc occurs ; |479| 
$C$DW$L$_veusim_control_veu$2$E:
$C$DW$L$_veusim_control_veu$3$B:
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 480,column 7,is_stmt
;----------------------------------------------------------------------
; 480 | ctl->ctl_code = ctrl_code;                                             
;----------------------------------------------------------------------
        AR1 = *SP(#12) ; |480| 
        *AR3 = AR1 ; |480| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 481,column 7,is_stmt
;----------------------------------------------------------------------
; 481 | if (ctrl_code == veu_CTL_MODE) {                                       
;----------------------------------------------------------------------
        AR1 = *SP(#12) ; |481| 
        if (AR1 != #0) goto $C$L34 ; |481| 
                                        ; branchcc occurs ; |481| 
$C$DW$L$_veusim_control_veu$3$E:
$C$DW$L$_veusim_control_veu$4$B:
        XAR2 = mar(*SP(#14))
        XAR0 = dbl(*(#_inputVEUFile))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 482,column 9,is_stmt
;----------------------------------------------------------------------
; 482 | num_read  = veu_fileio_read_int (inputVEUFile, "%x\n", &mode_mask);    
;----------------------------------------------------------------------
        XAR1 = #$C$FSL24 ; |482| 
$C$DW$243	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$243, DW_AT_low_pc(0x00)
	.dwattr $C$DW$243, DW_AT_name("_veu_fileio_read_int")
	.dwattr $C$DW$243, DW_AT_TI_call
        call #_veu_fileio_read_int ; |482| 
                                        ; call occurs [#_veu_fileio_read_int] ; |482| 
        *SP(#16) = T0 ; |482| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 483,column 9,is_stmt
;----------------------------------------------------------------------
; 483 | num_read += veu_fileio_read_int (inputVEUFile, "%x\n", &mode_value);   
;----------------------------------------------------------------------
        XAR1 = #$C$FSL24 ; |483| 
        XAR2 = mar(*SP(#15))
        XAR0 = dbl(*(#_inputVEUFile))
$C$DW$244	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$244, DW_AT_low_pc(0x00)
	.dwattr $C$DW$244, DW_AT_name("_veu_fileio_read_int")
	.dwattr $C$DW$244, DW_AT_TI_call
        call #_veu_fileio_read_int ; |483| 
                                        ; call occurs [#_veu_fileio_read_int] ; |483| 
        AR1 = T0 + *SP(#16) ; |483| 
        *SP(#16) = AR1 ; |483| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 484,column 9,is_stmt
;----------------------------------------------------------------------
; 484 | if (num_read > 0) {                                                    
;----------------------------------------------------------------------
        if (AR1 <= #0) goto $C$L39 ; |484| 
                                        ; branchcc occurs ; |484| 
$C$DW$L$_veusim_control_veu$4$E:
$C$DW$L$_veusim_control_veu$5$B:
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 485,column 11,is_stmt
;----------------------------------------------------------------------
; 485 | ctl->u.mode_ctl.bit_masks = mode_mask;                                 
;----------------------------------------------------------------------
        AR1 = *SP(#14) ; |485| 
        *AR3(short(#1)) = AR1 ; |485| 
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 486,column 11,is_stmt
;----------------------------------------------------------------------
; 486 | ctl->u.mode_ctl.bit_values = mode_value;                               
;----------------------------------------------------------------------
        AR1 = *SP(#15) ; |486| 
        *AR3(short(#2)) = AR1 ; |486| 
        XAR0 = dbl(*SP(#4))
        XAR1 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 487,column 11,is_stmt
;----------------------------------------------------------------------
; 487 | veu_ret = veuControl(veuInst, ctl);                                    
;----------------------------------------------------------------------
$C$DW$245	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$245, DW_AT_low_pc(0x00)
	.dwattr $C$DW$245, DW_AT_name("_veuControl")
	.dwattr $C$DW$245, DW_AT_TI_call
        call #_veuControl ; |487| 
                                        ; call occurs [#_veuControl] ; |487| 
        *SP(#17) = T0 ; |487| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 488,column 11,is_stmt
;----------------------------------------------------------------------
; 488 | if (veu_ret == veu_ERR_BAD_INST) {                                     
;----------------------------------------------------------------------
        TC1 = (*SP(#17) == #1) ; |488| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 489,column 13,is_stmt
;----------------------------------------------------------------------
; 489 | printf ("Error: The VEU instance is not open!\n");                     
; 490 | exit (1);                                                              
;----------------------------------------------------------------------
        XAR3 = #$C$FSL25 ; |489| 
        if (TC1) execute (D_Unit) ||
           dbl(*SP(#0)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 491,column 11,is_stmt
        if (TC1) goto $C$L31 ; |491| 
                                        ; branchcc occurs ; |491| 
$C$DW$L$_veusim_control_veu$5$E:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 488,column 11,is_stmt
$C$DW$L$_veusim_control_veu$6$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 492,column 16,is_stmt
;----------------------------------------------------------------------
; 492 | else if (veu_ret == veu_ERR_BAD_PARAM) {                               
;----------------------------------------------------------------------
        TC1 = (*SP(#17) == #2) ; |492| 
        if (!TC1) goto $C$L30 ; |492| 
                                        ; branchcc occurs ; |492| 
$C$DW$L$_veusim_control_veu$6$E:
$C$DW$L$_veusim_control_veu$7$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 493,column 13,is_stmt
;----------------------------------------------------------------------
; 493 | printf ("Warning: Invalid VEU configuration parameters!\n");           
;----------------------------------------------------------------------
        XAR3 = #$C$FSL26 ; |493| 
        dbl(*SP(#0)) = XAR3
$C$DW$246	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$246, DW_AT_low_pc(0x00)
	.dwattr $C$DW$246, DW_AT_name("_printf")
	.dwattr $C$DW$246, DW_AT_TI_call
        call #_printf ; |493| 
                                        ; call occurs [#_printf] ; |493| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 494,column 11,is_stmt
        goto $C$L32 ; |494| 
                                        ; branch occurs ; |494| 
$C$DW$L$_veusim_control_veu$7$E:
$C$L30:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 492,column 16,is_stmt
$C$DW$L$_veusim_control_veu$8$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 495,column 16,is_stmt
;----------------------------------------------------------------------
; 495 | else if (veu_ret == veu_ERR_BAD_BUILD) {                               
;----------------------------------------------------------------------
        TC1 = (*SP(#17) == #3) ; |495| 
        if (!TC1) goto $C$L32 ; |495| 
                                        ; branchcc occurs ; |495| 
$C$DW$L$_veusim_control_veu$8$E:
$C$DW$L$_veusim_control_veu$9$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 496,column 13,is_stmt
;----------------------------------------------------------------------
; 496 | printf ("Error: Incompatible build! ");                                
;----------------------------------------------------------------------
        XAR3 = #$C$FSL27 ; |496| 
        dbl(*SP(#0)) = XAR3
$C$DW$247	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$247, DW_AT_low_pc(0x00)
	.dwattr $C$DW$247, DW_AT_name("_printf")
	.dwattr $C$DW$247, DW_AT_TI_call
        call #_printf ; |496| 
                                        ; call occurs [#_printf] ; |496| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 497,column 13,is_stmt
;----------------------------------------------------------------------
; 497 | printf ("Can't run wideband operation in narrowband build.\n");        
;----------------------------------------------------------------------
        XAR3 = #$C$FSL28 ; |497| 
        dbl(*SP(#0)) = XAR3
$C$DW$L$_veusim_control_veu$9$E:
$C$L31:    
$C$DW$L$_veusim_control_veu$10$B:
$C$DW$248	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$248, DW_AT_low_pc(0x00)
	.dwattr $C$DW$248, DW_AT_name("_printf")
	.dwattr $C$DW$248, DW_AT_TI_call
        call #_printf ; |497| 
                                        ; call occurs [#_printf] ; |497| 
        T0 = #1
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 498,column 13,is_stmt
;----------------------------------------------------------------------
; 498 | exit (1);                                                              
;----------------------------------------------------------------------
$C$DW$249	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$249, DW_AT_low_pc(0x00)
	.dwattr $C$DW$249, DW_AT_name("_exit")
	.dwattr $C$DW$249, DW_AT_TI_call
        call #_exit ; |498| 
                                        ; call occurs [#_exit] ; |498| 
$C$DW$L$_veusim_control_veu$10$E:
$C$L32:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 491,column 11,is_stmt
$C$DW$L$_veusim_control_veu$11$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 503,column 11,is_stmt
;----------------------------------------------------------------------
; 503 | if ((mode_mask&veu_CTLM_WB_SEND) && (mode_value&veu_CTLM_WB_SEND)) {   
;----------------------------------------------------------------------
        TC1 = bit(*SP(#14),#13) ; |503| 
        if (!TC1) goto $C$L33 ; |503| 
                                        ; branchcc occurs ; |503| 
$C$DW$L$_veusim_control_veu$11$E:
$C$DW$L$_veusim_control_veu$12$B:
        TC1 = bit(*SP(#15),#13) ; |503| 
        if (!TC1) goto $C$L33 ; |503| 
                                        ; branchcc occurs ; |503| 
$C$DW$L$_veusim_control_veu$12$E:
$C$DW$L$_veusim_control_veu$13$B:
        XAR3 = dbl(*SP(#8))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 504,column 13,is_stmt
;----------------------------------------------------------------------
; 504 | (*frmSize_send) <<= 1;                                                 
;----------------------------------------------------------------------
        AR1 = *AR3 ; |504| 
        AR1 = AR1 <<< #1 ; |504| 
        *AR3 = AR1 ; |504| 
$C$DW$L$_veusim_control_veu$13$E:
$C$L33:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 503,column 11,is_stmt
$C$DW$L$_veusim_control_veu$14$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 506,column 11,is_stmt
;----------------------------------------------------------------------
; 506 | if ((mode_mask&veu_CTLM_WB_RECV) && (mode_value&veu_CTLM_WB_RECV)) {   
;----------------------------------------------------------------------
        TC1 = bit(*SP(#14),#14) ; |506| 
        if (!TC1) goto $C$L41 ; |506| 
                                        ; branchcc occurs ; |506| 
$C$DW$L$_veusim_control_veu$14$E:
$C$DW$L$_veusim_control_veu$15$B:
        TC1 = bit(*SP(#15),#14) ; |506| 
        if (!TC1) goto $C$L41 ; |506| 
                                        ; branchcc occurs ; |506| 
$C$DW$L$_veusim_control_veu$15$E:
$C$DW$L$_veusim_control_veu$16$B:
        XAR3 = dbl(*SP(#10))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 507,column 13,is_stmt
;----------------------------------------------------------------------
; 507 | (*frmSize_recv) <<= 1;                                                 
;----------------------------------------------------------------------
        AR1 = *AR3 ; |507| 
        AR1 = AR1 <<< #1 ; |507| 
        *AR3 = AR1 ; |507| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 509,column 9,is_stmt
;----------------------------------------------------------------------
; 510 | else {                                                                 
; 511 |   printf ("Error in veu setting file: %s", inputVEUsetting);           
; 512 |   exit (1);                                                            
; 515 | else {                                                                 
;----------------------------------------------------------------------
        goto $C$L41 ; |509| 
                                        ; branch occurs ; |509| 
$C$DW$L$_veusim_control_veu$16$E:
$C$L34:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 481,column 7,is_stmt
$C$DW$L$_veusim_control_veu$17$B:
        XAR2 = mar(*SP(#13))
        XAR0 = dbl(*(#_inputVEUFile))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 516,column 9,is_stmt
;----------------------------------------------------------------------
; 516 | num_read = veu_fileio_read_int (inputVEUFile, "%d\n", &u_value);       
;----------------------------------------------------------------------
        XAR1 = #$C$FSL13 ; |516| 
$C$DW$250	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$250, DW_AT_low_pc(0x00)
	.dwattr $C$DW$250, DW_AT_name("_veu_fileio_read_int")
	.dwattr $C$DW$250, DW_AT_TI_call
        call #_veu_fileio_read_int ; |516| 
                                        ; call occurs [#_veu_fileio_read_int] ; |516| 
        AR1 = T0  ; |516| 
        *SP(#16) = T0 ; |516| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 517,column 9,is_stmt
;----------------------------------------------------------------------
; 517 | if (num_read > 0) {                                                    
;----------------------------------------------------------------------
        if (AR1 <= #0) goto $C$L39 ; |517| 
                                        ; branchcc occurs ; |517| 
$C$DW$L$_veusim_control_veu$17$E:
$C$DW$L$_veusim_control_veu$18$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 518,column 11,is_stmt
;----------------------------------------------------------------------
; 518 | switch (ctl->ctl_code) {                                               
; 519 |   case veu_CTL_ANR_LEVEL:                                              
; 520 |       ctl->u.anr_level = u_value;                                      
; 521 |       break;                                                           
; 522 |   case veu_CTL_ALC_SEND_LEVEL:                                         
; 523 |       ctl->u.alc_level = u_value;                                      
; 524 |       break;                                                           
; 525 |   case veu_CTL_ALC_RECV_LEVEL:                                         
; 526 |       ctl->u.alc_level = u_value;                                      
; 527 |       break;                                                           
; 528 |   case veu_CTL_WAEPL:                                                  
; 529 |       ctl->u.waepl = u_value;                                          
; 530 |       break;                                                           
; 531 |   case veu_CTL_BULK_DELAY:                                             
; 532 |       ctl->u.bulk_delay = u_value;                                     
; 533 |       break;                                                           
; 534 |   case veu_CTL_FGC_SEND_GAIN:                                          
; 535 |       ctl->u.fgc_gain = u_value;                                       
;----------------------------------------------------------------------
        goto $C$L37 ; |518| 
                                        ; branch occurs ; |518| 
$C$DW$L$_veusim_control_veu$18$E:
$C$L35:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 536,column 22,is_stmt
;----------------------------------------------------------------------
; 536 | break;                                                                 
; 537 | case veu_CTL_FGC_RECV_GAIN:                                            
;----------------------------------------------------------------------
$C$DW$L$_veusim_control_veu$19$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 538,column 17,is_stmt
;----------------------------------------------------------------------
; 538 | ctl->u.fgc_gain = u_value;                                             
;----------------------------------------------------------------------
        AR1 = *SP(#13) ; |538| 
        *AR3(short(#1)) = AR1 ; |538| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 539,column 22,is_stmt
;----------------------------------------------------------------------
; 539 | break;                                                                 
; 540 | default:                                                               
;----------------------------------------------------------------------
        goto $C$L38 ; |539| 
                                        ; branch occurs ; |539| 
$C$DW$L$_veusim_control_veu$19$E:
$C$L36:    
$C$DW$L$_veusim_control_veu$20$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 541,column 17,is_stmt
;----------------------------------------------------------------------
; 541 | printf ("Error in veu setting file: %s", inputVEUsetting);             
;----------------------------------------------------------------------
        XAR3 = #$C$FSL29 ; |541| 
        dbl(*SP(#0)) = XAR3
        XAR3 = #_inputVEUsetting ; |541| 
        dbl(*SP(#2)) = XAR3
$C$DW$251	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$251, DW_AT_low_pc(0x00)
	.dwattr $C$DW$251, DW_AT_name("_printf")
	.dwattr $C$DW$251, DW_AT_TI_call
        call #_printf ; |541| 
                                        ; call occurs [#_printf] ; |541| 
        T0 = #1
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 542,column 17,is_stmt
;----------------------------------------------------------------------
; 542 | exit (1);                                                              
;----------------------------------------------------------------------
$C$DW$252	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$252, DW_AT_low_pc(0x00)
	.dwattr $C$DW$252, DW_AT_name("_exit")
	.dwattr $C$DW$252, DW_AT_TI_call
        call #_exit ; |542| 
                                        ; call occurs [#_exit] ; |542| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 543,column 22,is_stmt
;----------------------------------------------------------------------
; 543 | break;                                                                 
;----------------------------------------------------------------------
        goto $C$L38 ; |543| 
                                        ; branch occurs ; |543| 
$C$DW$L$_veusim_control_veu$20$E:
$C$L37:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 518,column 11,is_stmt
$C$DW$L$_veusim_control_veu$21$B:
        XAR3 = dbl(*SP(#6))

        AR1 = *AR3 ; |518| 
||      AR2 = #1

        TC1 = (AR1 == AR2) ; |518| 
        if (TC1) goto $C$L35 ; |518| 
                                        ; branchcc occurs ; |518| 
$C$DW$L$_veusim_control_veu$21$E:
$C$DW$L$_veusim_control_veu$22$B:
        AR2 = #2
        TC1 = (AR1 == AR2) ; |518| 
        if (TC1) goto $C$L35 ; |518| 
                                        ; branchcc occurs ; |518| 
$C$DW$L$_veusim_control_veu$22$E:
$C$DW$L$_veusim_control_veu$23$B:
        AR2 = #3
        TC1 = (AR1 == AR2) ; |518| 
        if (TC1) goto $C$L35 ; |518| 
                                        ; branchcc occurs ; |518| 
$C$DW$L$_veusim_control_veu$23$E:
$C$DW$L$_veusim_control_veu$24$B:
        AR2 = #4
        TC1 = (AR1 == AR2) ; |518| 
        if (TC1) goto $C$L35 ; |518| 
                                        ; branchcc occurs ; |518| 
$C$DW$L$_veusim_control_veu$24$E:
$C$DW$L$_veusim_control_veu$25$B:
        AR2 = #5
        TC1 = (AR1 == AR2) ; |518| 
        if (TC1) goto $C$L35 ; |518| 
                                        ; branchcc occurs ; |518| 
$C$DW$L$_veusim_control_veu$25$E:
$C$DW$L$_veusim_control_veu$26$B:
        AR2 = #6
        TC1 = (AR1 == AR2) ; |518| 
        if (TC1) goto $C$L35 ; |518| 
                                        ; branchcc occurs ; |518| 
$C$DW$L$_veusim_control_veu$26$E:
$C$DW$L$_veusim_control_veu$27$B:
        AR2 = #7
        TC1 = (AR1 == AR2) ; |518| 
        if (TC1) goto $C$L35 ; |518| 
                                        ; branchcc occurs ; |518| 
$C$DW$L$_veusim_control_veu$27$E:
$C$DW$L$_veusim_control_veu$28$B:
        goto $C$L36 ; |518| 
                                        ; branch occurs ; |518| 
$C$DW$L$_veusim_control_veu$28$E:
$C$L38:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 544,column 11,is_stmt
$C$DW$L$_veusim_control_veu$29$B:
        XAR0 = dbl(*SP(#4))
        XAR1 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 545,column 11,is_stmt
;----------------------------------------------------------------------
; 545 | veu_ret = veuControl(veuInst, ctl);                                    
;----------------------------------------------------------------------
$C$DW$253	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$253, DW_AT_low_pc(0x00)
	.dwattr $C$DW$253, DW_AT_name("_veuControl")
	.dwattr $C$DW$253, DW_AT_TI_call
        call #_veuControl ; |545| 
                                        ; call occurs [#_veuControl] ; |545| 
        *SP(#17) = T0 ; |545| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 546,column 11,is_stmt
;----------------------------------------------------------------------
; 546 | if (veu_ret == veu_ERR_BAD_INST) {                                     
;----------------------------------------------------------------------
        TC1 = (*SP(#17) == #1) ; |546| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 547,column 13,is_stmt
;----------------------------------------------------------------------
; 547 | printf ("Error: The VEU instance is not open!\n");                     
; 548 | exit (1);                                                              
;----------------------------------------------------------------------
        XAR3 = #$C$FSL25 ; |547| 
        if (TC1) execute (D_Unit) ||
           dbl(*SP(#0)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 549,column 11,is_stmt
        if (TC1) goto $C$L40 ; |549| 
                                        ; branchcc occurs ; |549| 
$C$DW$L$_veusim_control_veu$29$E:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 546,column 11,is_stmt
$C$DW$L$_veusim_control_veu$30$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 550,column 16,is_stmt
;----------------------------------------------------------------------
; 550 | else if (veu_ret == veu_ERR_BAD_PARAM) {                               
;----------------------------------------------------------------------
        TC1 = (*SP(#17) == #2) ; |550| 
        if (!TC1) goto $C$L41 ; |550| 
                                        ; branchcc occurs ; |550| 
$C$DW$L$_veusim_control_veu$30$E:
$C$DW$L$_veusim_control_veu$31$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 551,column 13,is_stmt
;----------------------------------------------------------------------
; 551 | printf ("Warning: Invalid VEU configuration parameters!\n");           
;----------------------------------------------------------------------
        XAR3 = #$C$FSL26 ; |551| 
        dbl(*SP(#0)) = XAR3
$C$DW$254	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$254, DW_AT_low_pc(0x00)
	.dwattr $C$DW$254, DW_AT_name("_printf")
	.dwattr $C$DW$254, DW_AT_TI_call
        call #_printf ; |551| 
                                        ; call occurs [#_printf] ; |551| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 553,column 9,is_stmt
;----------------------------------------------------------------------
; 554 | else {                                                                 
; 555 |   printf ("Error in veu setting file: %s", inputVEUsetting);           
; 556 |   exit (1);                                                            
; 560 | else {                                                                 
;----------------------------------------------------------------------
        goto $C$L41 ; |553| 
                                        ; branch occurs ; |553| 
$C$DW$L$_veusim_control_veu$31$E:
$C$L39:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 479,column 5,is_stmt
$C$DW$L$_veusim_control_veu$32$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 561,column 7,is_stmt
;----------------------------------------------------------------------
; 561 | printf ("Error in veu setting file: %s", inputVEUsetting);             
;----------------------------------------------------------------------
        XAR3 = #$C$FSL29 ; |561| 
        dbl(*SP(#0)) = XAR3
        XAR3 = #_inputVEUsetting ; |561| 
        dbl(*SP(#2)) = XAR3
$C$DW$L$_veusim_control_veu$32$E:
$C$L40:    
$C$DW$L$_veusim_control_veu$33$B:
$C$DW$255	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$255, DW_AT_low_pc(0x00)
	.dwattr $C$DW$255, DW_AT_name("_printf")
	.dwattr $C$DW$255, DW_AT_TI_call
        call #_printf ; |561| 
                                        ; call occurs [#_printf] ; |561| 
        T0 = #1
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 562,column 7,is_stmt
;----------------------------------------------------------------------
; 562 | exit (1);                                                              
;----------------------------------------------------------------------
$C$DW$256	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$256, DW_AT_low_pc(0x00)
	.dwattr $C$DW$256, DW_AT_name("_exit")
	.dwattr $C$DW$256, DW_AT_TI_call
        call #_exit ; |562| 
                                        ; call occurs [#_exit] ; |562| 
$C$DW$L$_veusim_control_veu$33$E:
$C$L41:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 559,column 5,is_stmt
$C$DW$L$_veusim_control_veu$34$B:
        XAR0 = dbl(*(#_inputVEUFile))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 477,column 10,is_stmt
$C$DW$257	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$257, DW_AT_low_pc(0x00)
	.dwattr $C$DW$257, DW_AT_name("_feof")
	.dwattr $C$DW$257, DW_AT_TI_call
        call #_feof ; |477| 
                                        ; call occurs [#_feof] ; |477| 
        if (T0 == #0) goto $C$L29 ; |477| 
                                        ; branchcc occurs ; |477| 
$C$DW$L$_veusim_control_veu$34$E:
$C$L42:    
        SP = SP + #19
	.dwcfi	cfa_offset, 1
$C$DW$258	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$258, DW_AT_low_pc(0x00)
	.dwattr $C$DW$258, DW_AT_TI_return
        return
                                        ; return occurs

$C$DW$259	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$259, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\veu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\veusim.asm:$C$L29:1:1373048246")
	.dwattr $C$DW$259, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c")
	.dwattr $C$DW$259, DW_AT_TI_begin_line(0x1dd)
	.dwattr $C$DW$259, DW_AT_TI_end_line(0x234)
$C$DW$260	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$260, DW_AT_low_pc($C$DW$L$_veusim_control_veu$2$B)
	.dwattr $C$DW$260, DW_AT_high_pc($C$DW$L$_veusim_control_veu$2$E)
$C$DW$261	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$261, DW_AT_low_pc($C$DW$L$_veusim_control_veu$32$B)
	.dwattr $C$DW$261, DW_AT_high_pc($C$DW$L$_veusim_control_veu$32$E)
$C$DW$262	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$262, DW_AT_low_pc($C$DW$L$_veusim_control_veu$28$B)
	.dwattr $C$DW$262, DW_AT_high_pc($C$DW$L$_veusim_control_veu$28$E)
$C$DW$263	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$263, DW_AT_low_pc($C$DW$L$_veusim_control_veu$17$B)
	.dwattr $C$DW$263, DW_AT_high_pc($C$DW$L$_veusim_control_veu$17$E)
$C$DW$264	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$264, DW_AT_low_pc($C$DW$L$_veusim_control_veu$18$B)
	.dwattr $C$DW$264, DW_AT_high_pc($C$DW$L$_veusim_control_veu$18$E)
$C$DW$265	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$265, DW_AT_low_pc($C$DW$L$_veusim_control_veu$21$B)
	.dwattr $C$DW$265, DW_AT_high_pc($C$DW$L$_veusim_control_veu$21$E)
$C$DW$266	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$266, DW_AT_low_pc($C$DW$L$_veusim_control_veu$22$B)
	.dwattr $C$DW$266, DW_AT_high_pc($C$DW$L$_veusim_control_veu$22$E)
$C$DW$267	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$267, DW_AT_low_pc($C$DW$L$_veusim_control_veu$23$B)
	.dwattr $C$DW$267, DW_AT_high_pc($C$DW$L$_veusim_control_veu$23$E)
$C$DW$268	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$268, DW_AT_low_pc($C$DW$L$_veusim_control_veu$24$B)
	.dwattr $C$DW$268, DW_AT_high_pc($C$DW$L$_veusim_control_veu$24$E)
$C$DW$269	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$269, DW_AT_low_pc($C$DW$L$_veusim_control_veu$25$B)
	.dwattr $C$DW$269, DW_AT_high_pc($C$DW$L$_veusim_control_veu$25$E)
$C$DW$270	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$270, DW_AT_low_pc($C$DW$L$_veusim_control_veu$26$B)
	.dwattr $C$DW$270, DW_AT_high_pc($C$DW$L$_veusim_control_veu$26$E)
$C$DW$271	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$271, DW_AT_low_pc($C$DW$L$_veusim_control_veu$27$B)
	.dwattr $C$DW$271, DW_AT_high_pc($C$DW$L$_veusim_control_veu$27$E)
$C$DW$272	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$272, DW_AT_low_pc($C$DW$L$_veusim_control_veu$19$B)
	.dwattr $C$DW$272, DW_AT_high_pc($C$DW$L$_veusim_control_veu$19$E)
$C$DW$273	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$273, DW_AT_low_pc($C$DW$L$_veusim_control_veu$20$B)
	.dwattr $C$DW$273, DW_AT_high_pc($C$DW$L$_veusim_control_veu$20$E)
$C$DW$274	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$274, DW_AT_low_pc($C$DW$L$_veusim_control_veu$29$B)
	.dwattr $C$DW$274, DW_AT_high_pc($C$DW$L$_veusim_control_veu$29$E)
$C$DW$275	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$275, DW_AT_low_pc($C$DW$L$_veusim_control_veu$9$B)
	.dwattr $C$DW$275, DW_AT_high_pc($C$DW$L$_veusim_control_veu$9$E)
$C$DW$276	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$276, DW_AT_low_pc($C$DW$L$_veusim_control_veu$3$B)
	.dwattr $C$DW$276, DW_AT_high_pc($C$DW$L$_veusim_control_veu$3$E)
$C$DW$277	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$277, DW_AT_low_pc($C$DW$L$_veusim_control_veu$4$B)
	.dwattr $C$DW$277, DW_AT_high_pc($C$DW$L$_veusim_control_veu$4$E)
$C$DW$278	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$278, DW_AT_low_pc($C$DW$L$_veusim_control_veu$5$B)
	.dwattr $C$DW$278, DW_AT_high_pc($C$DW$L$_veusim_control_veu$5$E)
$C$DW$279	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$279, DW_AT_low_pc($C$DW$L$_veusim_control_veu$6$B)
	.dwattr $C$DW$279, DW_AT_high_pc($C$DW$L$_veusim_control_veu$6$E)
$C$DW$280	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$280, DW_AT_low_pc($C$DW$L$_veusim_control_veu$7$B)
	.dwattr $C$DW$280, DW_AT_high_pc($C$DW$L$_veusim_control_veu$7$E)
$C$DW$281	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$281, DW_AT_low_pc($C$DW$L$_veusim_control_veu$8$B)
	.dwattr $C$DW$281, DW_AT_high_pc($C$DW$L$_veusim_control_veu$8$E)
$C$DW$282	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$282, DW_AT_low_pc($C$DW$L$_veusim_control_veu$10$B)
	.dwattr $C$DW$282, DW_AT_high_pc($C$DW$L$_veusim_control_veu$10$E)
$C$DW$283	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$283, DW_AT_low_pc($C$DW$L$_veusim_control_veu$11$B)
	.dwattr $C$DW$283, DW_AT_high_pc($C$DW$L$_veusim_control_veu$11$E)
$C$DW$284	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$284, DW_AT_low_pc($C$DW$L$_veusim_control_veu$12$B)
	.dwattr $C$DW$284, DW_AT_high_pc($C$DW$L$_veusim_control_veu$12$E)
$C$DW$285	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$285, DW_AT_low_pc($C$DW$L$_veusim_control_veu$13$B)
	.dwattr $C$DW$285, DW_AT_high_pc($C$DW$L$_veusim_control_veu$13$E)
$C$DW$286	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$286, DW_AT_low_pc($C$DW$L$_veusim_control_veu$14$B)
	.dwattr $C$DW$286, DW_AT_high_pc($C$DW$L$_veusim_control_veu$14$E)
$C$DW$287	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$287, DW_AT_low_pc($C$DW$L$_veusim_control_veu$15$B)
	.dwattr $C$DW$287, DW_AT_high_pc($C$DW$L$_veusim_control_veu$15$E)
$C$DW$288	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$288, DW_AT_low_pc($C$DW$L$_veusim_control_veu$16$B)
	.dwattr $C$DW$288, DW_AT_high_pc($C$DW$L$_veusim_control_veu$16$E)
$C$DW$289	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$289, DW_AT_low_pc($C$DW$L$_veusim_control_veu$30$B)
	.dwattr $C$DW$289, DW_AT_high_pc($C$DW$L$_veusim_control_veu$30$E)
$C$DW$290	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$290, DW_AT_low_pc($C$DW$L$_veusim_control_veu$31$B)
	.dwattr $C$DW$290, DW_AT_high_pc($C$DW$L$_veusim_control_veu$31$E)
$C$DW$291	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$291, DW_AT_low_pc($C$DW$L$_veusim_control_veu$33$B)
	.dwattr $C$DW$291, DW_AT_high_pc($C$DW$L$_veusim_control_veu$33$E)
$C$DW$292	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$292, DW_AT_low_pc($C$DW$L$_veusim_control_veu$34$B)
	.dwattr $C$DW$292, DW_AT_high_pc($C$DW$L$_veusim_control_veu$34$E)
	.dwendtag $C$DW$259

	.dwattr $C$DW$226, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c")
	.dwattr $C$DW$226, DW_AT_TI_end_line(0x235)
	.dwattr $C$DW$226, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$226

	.sect	".text"
	.global	_hw_init

$C$DW$293	.dwtag  DW_TAG_subprogram, DW_AT_name("hw_init")
	.dwattr $C$DW$293, DW_AT_low_pc(_hw_init)
	.dwattr $C$DW$293, DW_AT_high_pc(0x00)
	.dwattr $C$DW$293, DW_AT_TI_symbol_name("_hw_init")
	.dwattr $C$DW$293, DW_AT_external
	.dwattr $C$DW$293, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c")
	.dwattr $C$DW$293, DW_AT_TI_begin_line(0x238)
	.dwattr $C$DW$293, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$293, DW_AT_TI_max_frame_size(0x01)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 569,column 1,is_stmt,address _hw_init

	.dwfde $C$DW$CIE, _hw_init
;----------------------------------------------------------------------
; 568 | void hw_init(void)                                                     
; 570 | #ifdef PROFILE_CYCLES                                                  
; 571 |  if (!profile_initCycleProfiling()) {                                  
; 572 |    printf ("Could not acquire profiling resources..Exiting\n");        
; 573 |    exit (0);                                                           
; 576 |  cyclesVeuSendIn.avg    = 0;                                           
; 577 |  cyclesVeuSendIn.max    = 0;                                           
; 578 |  cyclesVeuReceiveIn.avg = 0;                                           
; 579 |  cyclesVeuReceiveIn.max = 0;                                           
; 580 | #endif                                                                 
; 582 | #ifdef USE_CACHE                                                       
; 583 |   memarchcfg_cacheEnable ();                                           
; 584 | #endif                                                                 
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: hw_init                                                      *
;*                                                                             *
;*   Function Uses Regs : SP,M40,SATA,SATD,RDM,FRCT,SMUL                       *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 1 word                                               *
;*                        (1 return address/alignment)                         *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_hw_init:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
$C$DW$294	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$294, DW_AT_low_pc(0x00)
	.dwattr $C$DW$294, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$293, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c")
	.dwattr $C$DW$293, DW_AT_TI_end_line(0x249)
	.dwattr $C$DW$293, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$293

	.sect	".text"
	.global	_veu_sim_progress

$C$DW$295	.dwtag  DW_TAG_subprogram, DW_AT_name("veu_sim_progress")
	.dwattr $C$DW$295, DW_AT_low_pc(_veu_sim_progress)
	.dwattr $C$DW$295, DW_AT_high_pc(0x00)
	.dwattr $C$DW$295, DW_AT_TI_symbol_name("_veu_sim_progress")
	.dwattr $C$DW$295, DW_AT_external
	.dwattr $C$DW$295, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c")
	.dwattr $C$DW$295, DW_AT_TI_begin_line(0x26c)
	.dwattr $C$DW$295, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$295, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 621,column 1,is_stmt,address _veu_sim_progress

	.dwfde $C$DW$CIE, _veu_sim_progress
$C$DW$296	.dwtag  DW_TAG_formal_parameter, DW_AT_name("frame_size")
	.dwattr $C$DW$296, DW_AT_TI_symbol_name("_frame_size")
	.dwattr $C$DW$296, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$296, DW_AT_location[DW_OP_reg12]
;----------------------------------------------------------------------
; 620 | void veu_sim_progress (tint frame_size)                                
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: veu_sim_progress                                             *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,AR3,XAR3,SP,CARRY,*
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (3 function parameters)                              *
;*                        (1 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_veu_sim_progress:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-5
	.dwcfi	cfa_offset, 6
$C$DW$297	.dwtag  DW_TAG_variable, DW_AT_name("frame_size")
	.dwattr $C$DW$297, DW_AT_TI_symbol_name("_frame_size")
	.dwattr $C$DW$297, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$297, DW_AT_location[DW_OP_bregx 0x24 3]
;----------------------------------------------------------------------
; 623 | sample_cnt += frame_size;                                              
;----------------------------------------------------------------------
        *SP(#3) = T0 ; |621| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 624,column 3,is_stmt
;----------------------------------------------------------------------
; 624 | if (sample_cnt >= (second_cnt + 1) * VEU_SIM_SAMPLES_PER_SECOND) {     
;----------------------------------------------------------------------
        T1 = *(#_second_cnt) ; |624| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 623,column 3,is_stmt
        AC0 = *SP(#3) ; |623| 
        AC0 = AC0 + dbl(*(#_sample_cnt)) ; |623| 
        dbl(*(#_sample_cnt)) = AC0 ; |623| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 624,column 3,is_stmt
        AC1 = dbl(*(#_sample_cnt)) ; |624| 
        AC0 = #8000 ; |624| 
        AC0 = AC0 + (T1 * #8000) ; |624| 
        AC0 = AC0 & #0xffff ; |624| 
        TC1 = (AC1 < AC0) ; |624| 
        if (TC1) goto $C$L43 ; |624| 
                                        ; branchcc occurs ; |624| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 625,column 5,is_stmt
;----------------------------------------------------------------------
; 625 | second_cnt++;                                                          
;----------------------------------------------------------------------
        *(#_second_cnt) = *(#_second_cnt) + #1 ; |625| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 626,column 5,is_stmt
;----------------------------------------------------------------------
; 626 | fprintf (stdout, " - Progress: %d seconds\n", second_cnt);             
;----------------------------------------------------------------------
        XAR3 = #$C$FSL30 ; |626| 
        AR1 = *(#_second_cnt) ; |626| 
        dbl(*SP(#0)) = XAR3
        XAR0 = #(__ftable+12) ; |626| 
        *SP(#2) = AR1 ; |626| 
$C$DW$298	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$298, DW_AT_low_pc(0x00)
	.dwattr $C$DW$298, DW_AT_name("_fprintf")
	.dwattr $C$DW$298, DW_AT_TI_call
        call #_fprintf ; |626| 
                                        ; call occurs [#_fprintf] ; |626| 
$C$L43:    
        SP = SP + #5
	.dwcfi	cfa_offset, 1
$C$DW$299	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$299, DW_AT_low_pc(0x00)
	.dwattr $C$DW$299, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$295, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c")
	.dwattr $C$DW$295, DW_AT_TI_end_line(0x274)
	.dwattr $C$DW$295, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$295

	.sect	".text"
	.global	_main

$C$DW$300	.dwtag  DW_TAG_subprogram, DW_AT_name("main")
	.dwattr $C$DW$300, DW_AT_low_pc(_main)
	.dwattr $C$DW$300, DW_AT_high_pc(0x00)
	.dwattr $C$DW$300, DW_AT_TI_symbol_name("_main")
	.dwattr $C$DW$300, DW_AT_external
	.dwattr $C$DW$300, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c")
	.dwattr $C$DW$300, DW_AT_TI_begin_line(0x27b)
	.dwattr $C$DW$300, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$300, DW_AT_TI_max_frame_size(0x1ee)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 636,column 1,is_stmt,address _main

	.dwfde $C$DW$CIE, _main
;----------------------------------------------------------------------
; 635 | void main (void)                                                       
; 637 | tint read_flag_Tx, read_flag_Rx;                                       
; 638 | tint inBufRx[MAX_NUM_SAMPLES_PER_FRAME];                               
; 639 | tint inBufTx[MAX_NUM_SAMPLES_PER_FRAME];                               
; 640 | tint outBufTx[MAX_NUM_SAMPLES_PER_FRAME];                              
; 641 | tint frmSize = FRAME_SIZE;                                             
; 642 | tint frmSize_send, frmSize_recv;                                       
; 643 | tint frame_counter = 0;                                                
; 644 | #ifdef PROFILE_CYCLES                                                  
; 645 | volatile tlong cycles;                                                 
; 646 | #endif                                                                 
; 647 | veuInst = NULL;                                                        
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: main                                                         *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,AR4,  *
;*                        XAR4,FP,XFP,SP,CARRY,M40,SATA,SATD,RDM,FRCT,SMUL     *
;*   Save On Entry Regs : FP                                                   *
;*   Stack Frame        : Full (Frame Pointer in AR6, w/ debug)                *
;*   Total Frame Size   : 494 words                                            *
;*                        (1 return address/alignment)                         *
;*                        (6 function parameters)                              *
;*                        (486 local values)                                   *
;*                        (1 register save area)                               *
;*   Min System Stack   : 2 words                                              *
;*******************************************************************************
_main:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        pshboth(XFP)
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 32, -2

        @SP_L = @SP_L + #-492
||      mmap()

        XFP = mar(*SP)
	.dwcfi	cfa_offset, 494
$C$DW$301	.dwtag  DW_TAG_variable, DW_AT_name("read_flag_Tx")
	.dwattr $C$DW$301, DW_AT_TI_symbol_name("_read_flag_Tx")
	.dwattr $C$DW$301, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$301, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$302	.dwtag  DW_TAG_variable, DW_AT_name("read_flag_Rx")
	.dwattr $C$DW$302, DW_AT_TI_symbol_name("_read_flag_Rx")
	.dwattr $C$DW$302, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$302, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$303	.dwtag  DW_TAG_variable, DW_AT_name("inBufRx")
	.dwattr $C$DW$303, DW_AT_TI_symbol_name("_inBufRx")
	.dwattr $C$DW$303, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$303, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$304	.dwtag  DW_TAG_variable, DW_AT_name("inBufTx")
	.dwattr $C$DW$304, DW_AT_TI_symbol_name("_inBufTx")
	.dwattr $C$DW$304, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$304, DW_AT_location[DW_OP_bregx 0x24 168]
$C$DW$305	.dwtag  DW_TAG_variable, DW_AT_name("outBufTx")
	.dwattr $C$DW$305, DW_AT_TI_symbol_name("_outBufTx")
	.dwattr $C$DW$305, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$305, DW_AT_location[DW_OP_bregx 0x24 328]
$C$DW$306	.dwtag  DW_TAG_variable, DW_AT_name("frmSize")
	.dwattr $C$DW$306, DW_AT_TI_symbol_name("_frmSize")
	.dwattr $C$DW$306, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$306, DW_AT_location[DW_OP_bregx 0x24 488]
$C$DW$307	.dwtag  DW_TAG_variable, DW_AT_name("frmSize_send")
	.dwattr $C$DW$307, DW_AT_TI_symbol_name("_frmSize_send")
	.dwattr $C$DW$307, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$307, DW_AT_location[DW_OP_bregx 0x24 489]
$C$DW$308	.dwtag  DW_TAG_variable, DW_AT_name("frmSize_recv")
	.dwattr $C$DW$308, DW_AT_TI_symbol_name("_frmSize_recv")
	.dwattr $C$DW$308, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$308, DW_AT_location[DW_OP_bregx 0x24 490]
$C$DW$309	.dwtag  DW_TAG_variable, DW_AT_name("frame_counter")
	.dwattr $C$DW$309, DW_AT_TI_symbol_name("_frame_counter")
	.dwattr $C$DW$309, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$309, DW_AT_location[DW_OP_bregx 0x24 491]
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 649,column 3,is_stmt
;----------------------------------------------------------------------
; 649 | printf ("Version Information of modules tested:\n");                   
;----------------------------------------------------------------------
        XAR3 = #$C$FSL31 ; |649| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 641,column 8,is_stmt
        *FP(#488) = #80 ; |641| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 643,column 8,is_stmt
        *FP(#491) = #0 ; |643| 

        dbl(*SP(#0)) = XAR3
||      AC0 = #0  ; |647| 

        dbl(*(#_veuInst)) = AC0
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 649,column 3,is_stmt
$C$DW$310	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$310, DW_AT_low_pc(0x00)
	.dwattr $C$DW$310, DW_AT_name("_printf")
	.dwattr $C$DW$310, DW_AT_TI_call
        call #_printf ; |649| 
                                        ; call occurs [#_printf] ; |649| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 650,column 3,is_stmt
;----------------------------------------------------------------------
; 650 | printf ("VEU %d.%d.%d.%d\n",                                           
; 651 |       ti_mas_veu_Version_MAJOR, ti_mas_veu_Version_MINOR,              
; 652 |       ti_mas_veu_Version_PATCH, ti_mas_veu_Version_BUILD);             
;----------------------------------------------------------------------
        XAR3 = #$C$FSL32 ; |650| 
        dbl(*SP(#0)) = XAR3
        *SP(#2) = #4 ; |650| 
        *SP(#3) = #4 ; |650| 
        *SP(#4) = #1 ; |650| 
        *SP(#5) = #0 ; |650| 
$C$DW$311	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$311, DW_AT_low_pc(0x00)
	.dwattr $C$DW$311, DW_AT_name("_printf")
	.dwattr $C$DW$311, DW_AT_TI_call
        call #_printf ; |650| 
                                        ; call occurs [#_printf] ; |650| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 654,column 3,is_stmt
;----------------------------------------------------------------------
; 654 | hw_init ();                                                            
; 656 | #ifdef PROFILE_CYCLES                                                  
; 657 | cycles = profile_getCPUcycleCount ();                                  
; 659 | cycles = (profile_getCPUcycleCount () - cycles);                       
; 660 | cyclesOverhead = cycles;                                               
; 661 | #endif                                                                 
;----------------------------------------------------------------------
$C$DW$312	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$312, DW_AT_low_pc(0x00)
	.dwattr $C$DW$312, DW_AT_name("_hw_init")
	.dwattr $C$DW$312, DW_AT_TI_call
        call #_hw_init ; |654| 
                                        ; call occurs [#_hw_init] ; |654| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 664,column 3,is_stmt
;----------------------------------------------------------------------
; 664 | veusim_new_veu ();                                                     
;----------------------------------------------------------------------
$C$DW$313	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$313, DW_AT_low_pc(0x00)
	.dwattr $C$DW$313, DW_AT_name("_veusim_new_veu")
	.dwattr $C$DW$313, DW_AT_TI_call
        call #_veusim_new_veu ; |664| 
                                        ; call occurs [#_veusim_new_veu] ; |664| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 666,column 3,is_stmt
;----------------------------------------------------------------------
; 666 | veuContext.max_frame_size = 160;                                       
;----------------------------------------------------------------------
        *(#(_veuContext+2)) = #160 ; |666| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 668,column 3,is_stmt
;----------------------------------------------------------------------
; 668 | veusim_open_filelist ();                                               
;----------------------------------------------------------------------
$C$DW$314	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$314, DW_AT_low_pc(0x00)
	.dwattr $C$DW$314, DW_AT_name("_veusim_open_filelist")
	.dwattr $C$DW$314, DW_AT_TI_call
        call #_veusim_open_filelist ; |668| 
                                        ; call occurs [#_veusim_open_filelist] ; |668| 
        XAR0 = dbl(*(#_inputTxlistFile))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 670,column 10,is_stmt
;----------------------------------------------------------------------
; 670 | while (!feof(inputTxlistFile)) {                                       
;----------------------------------------------------------------------
$C$DW$315	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$315, DW_AT_low_pc(0x00)
	.dwattr $C$DW$315, DW_AT_name("_feof")
	.dwattr $C$DW$315, DW_AT_TI_call
        call #_feof ; |670| 
                                        ; call occurs [#_feof] ; |670| 
        if (T0 != #0) goto $C$L48 ; |670| 
                                        ; branchcc occurs ; |670| 
$C$L44:    
$C$DW$L$_main$2$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 672,column 5,is_stmt
;----------------------------------------------------------------------
; 672 | veusim_get_file ();                                                    
;----------------------------------------------------------------------
$C$DW$316	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$316, DW_AT_low_pc(0x00)
	.dwattr $C$DW$316, DW_AT_name("_veusim_get_file")
	.dwattr $C$DW$316, DW_AT_TI_call
        call #_veusim_get_file ; |672| 
                                        ; call occurs [#_veusim_get_file] ; |672| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 675,column 5,is_stmt
;----------------------------------------------------------------------
; 675 | veusim_init_testvector ();                                             
;----------------------------------------------------------------------
$C$DW$317	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$317, DW_AT_low_pc(0x00)
	.dwattr $C$DW$317, DW_AT_name("_veusim_init_testvector")
	.dwattr $C$DW$317, DW_AT_TI_call
        call #_veusim_init_testvector ; |675| 
                                        ; call occurs [#_veusim_init_testvector] ; |675| 
        XAR0 = mar(*SP)
        mar(*+AR0(#488))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 678,column 5,is_stmt
;----------------------------------------------------------------------
; 678 | veusim_get_frame_size (&frmSize);                                      
;----------------------------------------------------------------------
$C$DW$318	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$318, DW_AT_low_pc(0x00)
	.dwattr $C$DW$318, DW_AT_name("_veusim_get_frame_size")
	.dwattr $C$DW$318, DW_AT_TI_call
        call #_veusim_get_frame_size ; |678| 
                                        ; call occurs [#_veusim_get_frame_size] ; |678| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 681,column 5,is_stmt
;----------------------------------------------------------------------
; 681 | veusim_open_veu (frmSize);                                             
;----------------------------------------------------------------------
        T0 = *FP(#488) ; |681| 
$C$DW$319	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$319, DW_AT_low_pc(0x00)
	.dwattr $C$DW$319, DW_AT_name("_veusim_open_veu")
	.dwattr $C$DW$319, DW_AT_TI_call
        call #_veusim_open_veu ; |681| 
                                        ; call occurs [#_veusim_open_veu] ; |681| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 684,column 5,is_stmt
;----------------------------------------------------------------------
; 684 | frmSize_send = frmSize;                                                
;----------------------------------------------------------------------
        AR1 = *FP(#488) ; |684| 
        *FP(#489) = AR1 ; |684| 
        XAR3 = mar(*SP)
        XAR2 = mar(*SP)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 685,column 5,is_stmt
;----------------------------------------------------------------------
; 685 | frmSize_recv = frmSize;                                                
;----------------------------------------------------------------------
        AR1 = *FP(#488) ; |685| 
        *FP(#490) = AR1 ; |685| 
        XAR0 = dbl(*(#_veuInst))
        mar(*+AR3(#490))
        mar(*+AR2(#489))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 686,column 5,is_stmt
;----------------------------------------------------------------------
; 686 | veusim_control_veu (veuInst, &veuCtrl, &frmSize_send, &frmSize_recv);  
; 689 | sample_cnt = 0L;                                                       
;----------------------------------------------------------------------
        XAR1 = #_veuCtrl ; |686| 
$C$DW$320	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$320, DW_AT_low_pc(0x00)
	.dwattr $C$DW$320, DW_AT_name("_veusim_control_veu")
	.dwattr $C$DW$320, DW_AT_TI_call
        call #_veusim_control_veu ; |686| 
                                        ; call occurs [#_veusim_control_veu] ; |686| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 690,column 5,is_stmt
;----------------------------------------------------------------------
; 690 | second_cnt = 0;                                                        
;----------------------------------------------------------------------
        *(#_second_cnt) = #0 ; |690| 
        XAR0 = dbl(*(#_inputFile))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 689,column 5,is_stmt
        AC0 = #0  ; |689| 
        dbl(*(#_sample_cnt)) = AC0 ; |689| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 693,column 12,is_stmt
;----------------------------------------------------------------------
; 693 | while (!feof(inputFile)) {                                             
;----------------------------------------------------------------------
$C$DW$321	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$321, DW_AT_low_pc(0x00)
	.dwattr $C$DW$321, DW_AT_name("_feof")
	.dwattr $C$DW$321, DW_AT_TI_call
        call #_feof ; |693| 
                                        ; call occurs [#_feof] ; |693| 
        if (T0 != #0) goto $C$L47 ; |693| 
                                        ; branchcc occurs ; |693| 
$C$DW$L$_main$2$E:
$C$L45:    
$C$DW$L$_main$3$B:
        XAR0 = mar(*SP)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 695,column 7,is_stmt
;----------------------------------------------------------------------
; 695 | read_flag_Tx = veusim_read_frame (inBufTx, inputFile,    frmSize_send);
;----------------------------------------------------------------------
        T0 = *FP(#489) ; |695| 
        XAR1 = dbl(*(#_inputFile))
        mar(*+AR0(#168))
$C$DW$322	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$322, DW_AT_low_pc(0x00)
	.dwattr $C$DW$322, DW_AT_name("_veusim_read_frame")
	.dwattr $C$DW$322, DW_AT_TI_call
        call #_veusim_read_frame ; |695| 
                                        ; call occurs [#_veusim_read_frame] ; |695| 
        *SP(#6) = T0 ; |695| 
        XAR1 = dbl(*(#_inputFile_Rx))
        XAR0 = mar(*SP(#8))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 696,column 7,is_stmt
;----------------------------------------------------------------------
; 696 | read_flag_Rx = veusim_read_frame (inBufRx, inputFile_Rx, frmSize_recv);
;----------------------------------------------------------------------
        T0 = *FP(#490) ; |696| 
$C$DW$323	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$323, DW_AT_low_pc(0x00)
	.dwattr $C$DW$323, DW_AT_name("_veusim_read_frame")
	.dwattr $C$DW$323, DW_AT_TI_call
        call #_veusim_read_frame ; |696| 
                                        ; call occurs [#_veusim_read_frame] ; |696| 
        *SP(#7) = T0 ; |696| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 698,column 7,is_stmt
;----------------------------------------------------------------------
; 698 | if (read_flag_Tx && read_flag_Rx) {                                    
;----------------------------------------------------------------------
        AR1 = *SP(#6) ; |698| 
        if (AR1 == #0) goto $C$L46 ; |698| 
                                        ; branchcc occurs ; |698| 
$C$DW$L$_main$3$E:
$C$DW$L$_main$4$B:
        AR1 = T0
        if (AR1 == #0) goto $C$L46 ; |698| 
                                        ; branchcc occurs ; |698| 
$C$DW$L$_main$4$E:
$C$DW$L$_main$5$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 699,column 9,is_stmt
;----------------------------------------------------------------------
; 699 | frame_counter++;                                                       
; 700 | #ifdef USE_CACHE                                                       
; 701 | memarchcfg_cacheFlush ();                                              
; 702 | #endif                                                                 
; 703 | #ifdef PROFILE_CYCLES                                                  
; 704 | cycles = profile_getCPUcycleCount ();                                  
; 705 | #endif                                                                 
; 706 | #ifdef USE_CACHE                                                       
; 707 | memarchcfg_cacheFlush ();                                              
; 708 | #endif                                                                 
; 709 | #ifdef PROFILE_CYCLES                                                  
; 710 | cycles = profile_getCPUcycleCount ();                                  
; 711 | #endif                                                                 
;----------------------------------------------------------------------
        *FP(#491) = *FP(#491) + #1 ; |699| 
        XAR1 = mar(*SP(#8))
        XAR0 = dbl(*(#_veuInst))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 714,column 9,is_stmt
;----------------------------------------------------------------------
; 714 | veuReceiveIn (veuInst, inBufRx);                                       
; 716 | #ifdef PROFILE_CYCLES                                                  
; 717 | cycles = (profile_getCPUcycleCount () - cycles);                       
; 718 | siu_process_cycles (cycles, &cyclesVeuReceiveIn);                      
; 719 | #endif                                                                 
; 721 | #ifdef USE_CACHE                                                       
; 722 | memarchcfg_cacheFlush ();                                              
; 723 | #endif                                                                 
; 725 | #ifdef PROFILE_CYCLES                                                  
; 726 | cycles = profile_getCPUcycleCount ();                                  
; 727 | #endif                                                                 
;----------------------------------------------------------------------
$C$DW$324	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$324, DW_AT_low_pc(0x00)
	.dwattr $C$DW$324, DW_AT_name("_veuReceiveIn")
	.dwattr $C$DW$324, DW_AT_TI_call
        call #_veuReceiveIn ; |714| 
                                        ; call occurs [#_veuReceiveIn] ; |714| 
        XAR3 = mar(*SP)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 730,column 9,is_stmt
;----------------------------------------------------------------------
; 730 | veuSendIn (veuInst, inBufTx, inBufRx, outBufTx, NULL);                 
; 732 | #ifdef PROFILE_CYCLES                                                  
; 733 | cycles = (profile_getCPUcycleCount () - cycles);                       
; 734 | siu_process_cycles (cycles, &cyclesVeuSendIn);                         
; 735 | #endif                                                                 
;----------------------------------------------------------------------
        XAR4 = #0 ; |730| 
        XAR2 = mar(*SP(#8))
        XAR1 = mar(*SP)
        XAR0 = dbl(*(#_veuInst))
        mar(*+AR3(#328))
        mar(*+AR1(#168))
$C$DW$325	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$325, DW_AT_low_pc(0x00)
	.dwattr $C$DW$325, DW_AT_name("_veuSendIn")
	.dwattr $C$DW$325, DW_AT_TI_call
        call #_veuSendIn ; |730| 
                                        ; call occurs [#_veuSendIn] ; |730| 
        XAR0 = mar(*SP)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 738,column 9,is_stmt
;----------------------------------------------------------------------
; 738 | veusim_write_frame (outBufTx, outputFile, frmSize_send);               
;----------------------------------------------------------------------
        T0 = *FP(#489) ; |738| 
        XAR1 = dbl(*(#_outputFile))
        mar(*+AR0(#328))
$C$DW$326	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$326, DW_AT_low_pc(0x00)
	.dwattr $C$DW$326, DW_AT_name("_veusim_write_frame")
	.dwattr $C$DW$326, DW_AT_TI_call
        call #_veusim_write_frame ; |738| 
                                        ; call occurs [#_veusim_write_frame] ; |738| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 739,column 9,is_stmt
;----------------------------------------------------------------------
; 739 | veusim_write_frame (inBufRx, outputFile_Rx, frmSize_recv);             
;----------------------------------------------------------------------
        T0 = *FP(#490) ; |739| 
        XAR1 = dbl(*(#_outputFile_Rx))
        XAR0 = mar(*SP(#8))
$C$DW$327	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$327, DW_AT_low_pc(0x00)
	.dwattr $C$DW$327, DW_AT_name("_veusim_write_frame")
	.dwattr $C$DW$327, DW_AT_TI_call
        call #_veusim_write_frame ; |739| 
                                        ; call occurs [#_veusim_write_frame] ; |739| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 742,column 9,is_stmt
;----------------------------------------------------------------------
; 742 | veu_sim_progress (frmSize);                                            
;----------------------------------------------------------------------
        T0 = *FP(#488) ; |742| 
$C$DW$328	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$328, DW_AT_low_pc(0x00)
	.dwattr $C$DW$328, DW_AT_name("_veu_sim_progress")
	.dwattr $C$DW$328, DW_AT_TI_call
        call #_veu_sim_progress ; |742| 
                                        ; call occurs [#_veu_sim_progress] ; |742| 
$C$DW$L$_main$5$E:
$C$L46:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 698,column 7,is_stmt
$C$DW$L$_main$6$B:
        XAR0 = dbl(*(#_inputFile))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 693,column 12,is_stmt
$C$DW$329	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$329, DW_AT_low_pc(0x00)
	.dwattr $C$DW$329, DW_AT_name("_feof")
	.dwattr $C$DW$329, DW_AT_TI_call
        call #_feof ; |693| 
                                        ; call occurs [#_feof] ; |693| 
        if (T0 == #0) goto $C$L45 ; |693| 
                                        ; branchcc occurs ; |693| 
$C$DW$L$_main$6$E:
$C$L47:    
$C$DW$L$_main$7$B:
        XAR0 = dbl(*(#_veuInst))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 747,column 5,is_stmt
;----------------------------------------------------------------------
; 747 | veuClose (veuInst);                                                    
;----------------------------------------------------------------------
$C$DW$330	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$330, DW_AT_low_pc(0x00)
	.dwattr $C$DW$330, DW_AT_name("_veuClose")
	.dwattr $C$DW$330, DW_AT_TI_call
        call #_veuClose ; |747| 
                                        ; call occurs [#_veuClose] ; |747| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 750,column 5,is_stmt
;----------------------------------------------------------------------
; 750 | veusim_release_testvector ();                                          
; 751 | #ifdef PROFILE_CYCLES                                                  
; 752 | siu_print_cycles ();                                                   
; 753 | profile_closeCycleProfiling ();                                        
; 754 | #endif                                                                 
; 756 | #ifdef PROFILE_CYCLES                                                  
; 757 | siu_print_cycles ();                                                   
; 758 | profile_closeCycleProfiling ();                                        
; 759 | #endif                                                                 
;----------------------------------------------------------------------
$C$DW$331	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$331, DW_AT_low_pc(0x00)
	.dwattr $C$DW$331, DW_AT_name("_veusim_release_testvector")
	.dwattr $C$DW$331, DW_AT_TI_call
        call #_veusim_release_testvector ; |750| 
                                        ; call occurs [#_veusim_release_testvector] ; |750| 
        XAR0 = dbl(*(#_inputTxlistFile))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 670,column 10,is_stmt
$C$DW$332	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$332, DW_AT_low_pc(0x00)
	.dwattr $C$DW$332, DW_AT_name("_feof")
	.dwattr $C$DW$332, DW_AT_TI_call
        call #_feof ; |670| 
                                        ; call occurs [#_feof] ; |670| 
        if (T0 == #0) goto $C$L44 ; |670| 
                                        ; branchcc occurs ; |670| 
$C$DW$L$_main$7$E:
$C$L48:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c",line 763,column 3,is_stmt
;----------------------------------------------------------------------
; 763 | printf ("\n\nSimulation Complete\n\n");                                
;----------------------------------------------------------------------
        XAR3 = #$C$FSL33 ; |763| 
        dbl(*SP(#0)) = XAR3
$C$DW$333	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$333, DW_AT_low_pc(0x00)
	.dwattr $C$DW$333, DW_AT_name("_printf")
	.dwattr $C$DW$333, DW_AT_TI_call
        call #_printf ; |763| 
                                        ; call occurs [#_printf] ; |763| 

        @SP_L = @SP_L + #492
||      mmap()

	.dwcfi	cfa_offset, 2
        XFP = popboth()
	.dwcfi	restore_reg, 32
	.dwcfi	cfa_offset, 1
$C$DW$334	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$334, DW_AT_low_pc(0x00)
	.dwattr $C$DW$334, DW_AT_TI_return
        return
                                        ; return occurs

$C$DW$335	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$335, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\veu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\veusim.asm:$C$L44:1:1373048246")
	.dwattr $C$DW$335, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c")
	.dwattr $C$DW$335, DW_AT_TI_begin_line(0x29e)
	.dwattr $C$DW$335, DW_AT_TI_end_line(0x2f8)
$C$DW$336	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$336, DW_AT_low_pc($C$DW$L$_main$2$B)
	.dwattr $C$DW$336, DW_AT_high_pc($C$DW$L$_main$2$E)
$C$DW$337	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$337, DW_AT_low_pc($C$DW$L$_main$7$B)
	.dwattr $C$DW$337, DW_AT_high_pc($C$DW$L$_main$7$E)

$C$DW$338	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$338, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\veu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\veusim.asm:$C$L45:2:1373048246")
	.dwattr $C$DW$338, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c")
	.dwattr $C$DW$338, DW_AT_TI_begin_line(0x2b5)
	.dwattr $C$DW$338, DW_AT_TI_end_line(0x2e8)
$C$DW$339	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$339, DW_AT_low_pc($C$DW$L$_main$3$B)
	.dwattr $C$DW$339, DW_AT_high_pc($C$DW$L$_main$3$E)
$C$DW$340	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$340, DW_AT_low_pc($C$DW$L$_main$4$B)
	.dwattr $C$DW$340, DW_AT_high_pc($C$DW$L$_main$4$E)
$C$DW$341	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$341, DW_AT_low_pc($C$DW$L$_main$5$B)
	.dwattr $C$DW$341, DW_AT_high_pc($C$DW$L$_main$5$E)
$C$DW$342	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$342, DW_AT_low_pc($C$DW$L$_main$6$B)
	.dwattr $C$DW$342, DW_AT_high_pc($C$DW$L$_main$6$E)
	.dwendtag $C$DW$338

	.dwendtag $C$DW$335

	.dwattr $C$DW$300, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/veu/test/src/veusim.c")
	.dwattr $C$DW$300, DW_AT_TI_end_line(0x2fd)
	.dwattr $C$DW$300, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$300

;*******************************************************************************
;* FAR STRINGS                                                                 *
;*******************************************************************************
	.sect	".const:.string"
	.align	2
$C$FSL1:	.string	"inp_list_file_8k.txt",0
	.align	2
$C$FSL2:	.string	"../../../",0
	.align	2
$C$FSL3:	.string	"r",0
	.align	2
$C$FSL4:	.string	"%s",0
	.align	2
$C$FSL5:	.string	"../../../vectors/inp/",0
	.align	2
$C$FSL6:	.string	"rb",0
	.align	2
$C$FSL7:	.string	"input file %s is opened!",10,0
	.align	2
$C$FSL8:	.string	"File Open Error %s",10,0
	.align	2
$C$FSL9:	.string	"../../../vectors/out/",0
	.align	2
$C$FSL10:	.string	"wb",0
	.align	2
$C$FSL11:	.string	"output file %s is opened!",10,0
	.align	2
$C$FSL12:	.string	"veu setting file %s is opened!",10,0
	.align	2
$C$FSL13:	.string	"%d",10,0
	.align	2
$C$FSL14:	.string	"Frame Size Error: frame size should be between 5 to 30ms",0
	.align	2
$C$FSL15:	.string	"Error in veuGetSizes !",0
	.align	2
$C$FSL16:	.string	"VEU memory buffers:",10,0
	.align	2
$C$FSL17:	.string	"    Buffer    Size(twords)    Alignment    Volatile",10,0
	.align	2
$C$FSL18:	.string	"     %3d       %7d         %4d       ",0
	.align	2
$C$FSL19:	.string	"    yes",10,0
	.align	2
$C$FSL20:	.string	"    no",10,0
	.align	2
$C$FSL21:	.string	"Error in veuNew %d !",0
	.align	2
$C$FSL22:	.string	"veu instance is created successfully",10,0
	.align	2
$C$FSL23:	.string	"Error in open a VEU instance !",10,0
	.align	2
$C$FSL24:	.string	"%x",10,0
	.align	2
$C$FSL25:	.string	"Error: The VEU instance is not open!",10,0
	.align	2
$C$FSL26:	.string	"Warning: Invalid VEU configuration parameters!",10,0
	.align	2
$C$FSL27:	.string	"Error: Incompatible build! ",0
	.align	2
$C$FSL28:	.string	"Can't run wideband operation in narrowband build.",10,0
	.align	2
$C$FSL29:	.string	"Error in veu setting file: %s",0
	.align	2
$C$FSL30:	.string	" - Progress: %d seconds",10,0
	.align	2
$C$FSL31:	.string	"Version Information of modules tested:",10,0
	.align	2
$C$FSL32:	.string	"VEU %d.%d.%d.%d",10,0
	.align	2
$C$FSL33:	.string	10,10,"Simulation Complete",10,10,0
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_fclose
	.global	_fopen
	.global	_fprintf
	.global	_fscanf
	.global	_printf
	.global	_fgetc
	.global	_fwrite
	.global	_feof
	.global	_malloc
	.global	_exit
	.global	_strcpy
	.global	_strcat
	.global	_veuGetSizes
	.global	_veuNew
	.global	_veuOpen
	.global	_veuControl
	.global	_veuSendIn
	.global	_veuReceiveIn
	.global	_veuClose
	.global	__ftable

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x0c)
$C$DW$343	.dwtag  DW_TAG_member
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$343, DW_AT_name("fd")
	.dwattr $C$DW$343, DW_AT_TI_symbol_name("_fd")
	.dwattr $C$DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$343, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$344	.dwtag  DW_TAG_member
	.dwattr $C$DW$344, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$344, DW_AT_name("buf")
	.dwattr $C$DW$344, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$344, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$345	.dwtag  DW_TAG_member
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$345, DW_AT_name("pos")
	.dwattr $C$DW$345, DW_AT_TI_symbol_name("_pos")
	.dwattr $C$DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$345, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$346	.dwtag  DW_TAG_member
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$346, DW_AT_name("bufend")
	.dwattr $C$DW$346, DW_AT_TI_symbol_name("_bufend")
	.dwattr $C$DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$346, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$347	.dwtag  DW_TAG_member
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$347, DW_AT_name("buff_stop")
	.dwattr $C$DW$347, DW_AT_TI_symbol_name("_buff_stop")
	.dwattr $C$DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$347, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$348	.dwtag  DW_TAG_member
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$348, DW_AT_name("flags")
	.dwattr $C$DW$348, DW_AT_TI_symbol_name("_flags")
	.dwattr $C$DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$348, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$20

$C$DW$T$45	.dwtag  DW_TAG_typedef, DW_AT_name("FILE")
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$45, DW_AT_language(DW_LANG_C)
$C$DW$T$46	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$46, DW_AT_address_class(0x17)

$C$DW$T$52	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$52, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x78)
$C$DW$349	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$349, DW_AT_upper_bound(0x09)
	.dwendtag $C$DW$T$52


$C$DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x06)
$C$DW$350	.dwtag  DW_TAG_member
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$350, DW_AT_name("mclass")
	.dwattr $C$DW$350, DW_AT_TI_symbol_name("_mclass")
	.dwattr $C$DW$350, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$350, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$351	.dwtag  DW_TAG_member
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$351, DW_AT_name("log2align")
	.dwattr $C$DW$351, DW_AT_TI_symbol_name("_log2align")
	.dwattr $C$DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$351, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$352	.dwtag  DW_TAG_member
	.dwattr $C$DW$352, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$352, DW_AT_name("size")
	.dwattr $C$DW$352, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$352, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$353	.dwtag  DW_TAG_member
	.dwattr $C$DW$353, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$353, DW_AT_name("volat")
	.dwattr $C$DW$353, DW_AT_TI_symbol_name("_volat")
	.dwattr $C$DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$353, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$354	.dwtag  DW_TAG_member
	.dwattr $C$DW$354, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$354, DW_AT_name("base")
	.dwattr $C$DW$354, DW_AT_TI_symbol_name("_base")
	.dwattr $C$DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$354, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$31

$C$DW$T$53	.dwtag  DW_TAG_typedef, DW_AT_name("ecomemBuffer_t")
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$53, DW_AT_language(DW_LANG_C)
$C$DW$T$54	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$T$54, DW_AT_address_class(0x17)
$C$DW$T$55	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$T$55, DW_AT_address_class(0x17)

$C$DW$T$33	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x02)
$C$DW$355	.dwtag  DW_TAG_member
	.dwattr $C$DW$355, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$355, DW_AT_name("mode_ctl")
	.dwattr $C$DW$355, DW_AT_TI_symbol_name("_mode_ctl")
	.dwattr $C$DW$355, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$355, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$356	.dwtag  DW_TAG_member
	.dwattr $C$DW$356, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$356, DW_AT_name("anr_level")
	.dwattr $C$DW$356, DW_AT_TI_symbol_name("_anr_level")
	.dwattr $C$DW$356, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$356, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$357	.dwtag  DW_TAG_member
	.dwattr $C$DW$357, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$357, DW_AT_name("alc_level")
	.dwattr $C$DW$357, DW_AT_TI_symbol_name("_alc_level")
	.dwattr $C$DW$357, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$357, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$358	.dwtag  DW_TAG_member
	.dwattr $C$DW$358, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$358, DW_AT_name("bulk_delay")
	.dwattr $C$DW$358, DW_AT_TI_symbol_name("_bulk_delay")
	.dwattr $C$DW$358, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$358, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$359	.dwtag  DW_TAG_member
	.dwattr $C$DW$359, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$359, DW_AT_name("waepl")
	.dwattr $C$DW$359, DW_AT_TI_symbol_name("_waepl")
	.dwattr $C$DW$359, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$359, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$360	.dwtag  DW_TAG_member
	.dwattr $C$DW$360, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$360, DW_AT_name("fgc_gain")
	.dwattr $C$DW$360, DW_AT_TI_symbol_name("_fgc_gain")
	.dwattr $C$DW$360, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$360, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$33

$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x17)
$C$DW$T$59	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$T$59, DW_AT_address_class(0x17)

$C$DW$T$37	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
$C$DW$361	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$361, DW_AT_type(*$C$DW$T$3)
$C$DW$362	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$362, DW_AT_type(*$C$DW$T$26)
$C$DW$363	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$363, DW_AT_type(*$C$DW$T$26)
$C$DW$364	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$364, DW_AT_type(*$C$DW$T$26)
$C$DW$365	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$365, DW_AT_type(*$C$DW$T$36)
	.dwendtag $C$DW$T$37

$C$DW$T$38	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$38, DW_AT_address_class(0x20)
$C$DW$T$39	.dwtag  DW_TAG_typedef, DW_AT_name("dbgInfo_t")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$39, DW_AT_language(DW_LANG_C)
$C$DW$366	.dwtag  DW_TAG_TI_far_type
$C$DW$T$60	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$366)
$C$DW$T$61	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$61, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$T$61, DW_AT_address_class(0x17)
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
$C$DW$T$34	.dwtag  DW_TAG_typedef, DW_AT_name("Fract")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)
$C$DW$T$66	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$66, DW_AT_address_class(0x17)

$C$DW$T$114	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$114, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$114, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$114, DW_AT_byte_size(0xa0)
$C$DW$367	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$367, DW_AT_upper_bound(0x9f)
	.dwendtag $C$DW$T$114

$C$DW$T$108	.dwtag  DW_TAG_typedef, DW_AT_name("linSample")
	.dwattr $C$DW$T$108, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$108, DW_AT_language(DW_LANG_C)
$C$DW$T$109	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$109, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$T$109, DW_AT_address_class(0x17)
$C$DW$368	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$368, DW_AT_type(*$C$DW$T$23)
$C$DW$T$97	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$97, DW_AT_type(*$C$DW$368)
$C$DW$T$98	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$98, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$T$98, DW_AT_address_class(0x17)
$C$DW$T$28	.dwtag  DW_TAG_typedef, DW_AT_name("int_least8_t")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C)
$C$DW$T$29	.dwtag  DW_TAG_typedef, DW_AT_name("tshort")
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$29, DW_AT_language(DW_LANG_C)
$C$DW$T$30	.dwtag  DW_TAG_typedef, DW_AT_name("tbool")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$30, DW_AT_language(DW_LANG_C)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)
$C$DW$T$56	.dwtag  DW_TAG_typedef, DW_AT_name("size_t")
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$56, DW_AT_language(DW_LANG_C)
$C$DW$T$24	.dwtag  DW_TAG_typedef, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
$C$DW$T$25	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least16_t")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$25, DW_AT_language(DW_LANG_C)
$C$DW$T$26	.dwtag  DW_TAG_typedef, DW_AT_name("tuint")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)
$C$DW$T$36	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$36, DW_AT_address_class(0x17)
$C$DW$T$27	.dwtag  DW_TAG_typedef, DW_AT_name("tsize")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)
$C$DW$T$118	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least8_t")
	.dwattr $C$DW$T$118, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$118, DW_AT_language(DW_LANG_C)
$C$DW$T$119	.dwtag  DW_TAG_typedef, DW_AT_name("tword")
	.dwattr $C$DW$T$119, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$T$119, DW_AT_language(DW_LANG_C)

$C$DW$T$120	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$120, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$T$120, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$120, DW_AT_byte_size(0x800)
$C$DW$369	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$369, DW_AT_upper_bound(0x7ff)
	.dwendtag $C$DW$T$120


$C$DW$T$121	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$121, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$T$121, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$121, DW_AT_byte_size(0x140)
$C$DW$370	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$370, DW_AT_upper_bound(0x13f)
	.dwendtag $C$DW$T$121

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)
$C$DW$T$124	.dwtag  DW_TAG_typedef, DW_AT_name("int32_t")
	.dwattr $C$DW$T$124, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$124, DW_AT_language(DW_LANG_C)
$C$DW$T$125	.dwtag  DW_TAG_typedef, DW_AT_name("int_least32_t")
	.dwattr $C$DW$T$125, DW_AT_type(*$C$DW$T$124)
	.dwattr $C$DW$T$125, DW_AT_language(DW_LANG_C)
$C$DW$T$126	.dwtag  DW_TAG_typedef, DW_AT_name("tlong")
	.dwattr $C$DW$T$126, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$T$126, DW_AT_language(DW_LANG_C)
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
$C$DW$T$47	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$47, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$47, DW_AT_name("signed char")
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x01)
$C$DW$371	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$371, DW_AT_type(*$C$DW$T$47)
$C$DW$T$48	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$371)
$C$DW$T$49	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$49, DW_AT_address_class(0x17)
$C$DW$T$105	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$105, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$105, DW_AT_address_class(0x17)

$C$DW$T$131	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$131, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$131, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$131, DW_AT_byte_size(0x64)
$C$DW$372	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$372, DW_AT_upper_bound(0x63)
	.dwendtag $C$DW$T$131


$C$DW$T$132	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$132, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$132, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$132, DW_AT_byte_size(0x100)
$C$DW$373	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$373, DW_AT_upper_bound(0xff)
	.dwendtag $C$DW$T$132


$C$DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$35, DW_AT_name("veuConfig_s")
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x09)
$C$DW$374	.dwtag  DW_TAG_member
	.dwattr $C$DW$374, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$374, DW_AT_name("config_bitfield")
	.dwattr $C$DW$374, DW_AT_TI_symbol_name("_config_bitfield")
	.dwattr $C$DW$374, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$374, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$375	.dwtag  DW_TAG_member
	.dwattr $C$DW$375, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$375, DW_AT_name("frame_size")
	.dwattr $C$DW$375, DW_AT_TI_symbol_name("_frame_size")
	.dwattr $C$DW$375, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$375, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$376	.dwtag  DW_TAG_member
	.dwattr $C$DW$376, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$376, DW_AT_name("anr_level")
	.dwattr $C$DW$376, DW_AT_TI_symbol_name("_anr_level")
	.dwattr $C$DW$376, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$376, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$377	.dwtag  DW_TAG_member
	.dwattr $C$DW$377, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$377, DW_AT_name("alc_send_level")
	.dwattr $C$DW$377, DW_AT_TI_symbol_name("_alc_send_level")
	.dwattr $C$DW$377, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$377, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$378	.dwtag  DW_TAG_member
	.dwattr $C$DW$378, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$378, DW_AT_name("alc_recv_level")
	.dwattr $C$DW$378, DW_AT_TI_symbol_name("_alc_recv_level")
	.dwattr $C$DW$378, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$378, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$379	.dwtag  DW_TAG_member
	.dwattr $C$DW$379, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$379, DW_AT_name("bulk_delay")
	.dwattr $C$DW$379, DW_AT_TI_symbol_name("_bulk_delay")
	.dwattr $C$DW$379, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$379, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$380	.dwtag  DW_TAG_member
	.dwattr $C$DW$380, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$380, DW_AT_name("waepl")
	.dwattr $C$DW$380, DW_AT_TI_symbol_name("_waepl")
	.dwattr $C$DW$380, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$380, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$381	.dwtag  DW_TAG_member
	.dwattr $C$DW$381, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$381, DW_AT_name("fgc_send_gain")
	.dwattr $C$DW$381, DW_AT_TI_symbol_name("_fgc_send_gain")
	.dwattr $C$DW$381, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$381, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$382	.dwtag  DW_TAG_member
	.dwattr $C$DW$382, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$382, DW_AT_name("fgc_recv_gain")
	.dwattr $C$DW$382, DW_AT_TI_symbol_name("_fgc_recv_gain")
	.dwattr $C$DW$382, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$382, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$35

$C$DW$T$91	.dwtag  DW_TAG_typedef, DW_AT_name("veuConfig_t")
	.dwattr $C$DW$T$91, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$91, DW_AT_language(DW_LANG_C)
$C$DW$T$92	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$92, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$T$92, DW_AT_address_class(0x17)

$C$DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$40, DW_AT_name("veuContext_s")
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x04)
$C$DW$383	.dwtag  DW_TAG_member
	.dwattr $C$DW$383, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$383, DW_AT_name("exception")
	.dwattr $C$DW$383, DW_AT_TI_symbol_name("_exception")
	.dwattr $C$DW$383, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$383, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$384	.dwtag  DW_TAG_member
	.dwattr $C$DW$384, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$384, DW_AT_name("max_frame_size")
	.dwattr $C$DW$384, DW_AT_TI_symbol_name("_max_frame_size")
	.dwattr $C$DW$384, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$384, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$40

$C$DW$T$175	.dwtag  DW_TAG_typedef, DW_AT_name("veuContext_t")
	.dwattr $C$DW$T$175, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$175, DW_AT_language(DW_LANG_C)

$C$DW$T$41	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$41, DW_AT_name("veuControl_s")
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x03)
$C$DW$385	.dwtag  DW_TAG_member
	.dwattr $C$DW$385, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$385, DW_AT_name("ctl_code")
	.dwattr $C$DW$385, DW_AT_TI_symbol_name("_ctl_code")
	.dwattr $C$DW$385, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$385, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$386	.dwtag  DW_TAG_member
	.dwattr $C$DW$386, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$386, DW_AT_name("u")
	.dwattr $C$DW$386, DW_AT_TI_symbol_name("_u")
	.dwattr $C$DW$386, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$386, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$41

$C$DW$T$71	.dwtag  DW_TAG_typedef, DW_AT_name("veuControl_t")
	.dwattr $C$DW$T$71, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$71, DW_AT_language(DW_LANG_C)
$C$DW$T$72	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$72, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$T$72, DW_AT_address_class(0x17)

$C$DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$42, DW_AT_name("veuModeControl_s")
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x02)
$C$DW$387	.dwtag  DW_TAG_member
	.dwattr $C$DW$387, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$387, DW_AT_name("bit_masks")
	.dwattr $C$DW$387, DW_AT_TI_symbol_name("_bit_masks")
	.dwattr $C$DW$387, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$387, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$388	.dwtag  DW_TAG_member
	.dwattr $C$DW$388, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$388, DW_AT_name("bit_values")
	.dwattr $C$DW$388, DW_AT_TI_symbol_name("_bit_values")
	.dwattr $C$DW$388, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$388, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$42

$C$DW$T$32	.dwtag  DW_TAG_typedef, DW_AT_name("veuModeControl_t")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$32, DW_AT_language(DW_LANG_C)

$C$DW$T$43	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$43, DW_AT_name("veuNewConfig_s")
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x02)
$C$DW$389	.dwtag  DW_TAG_member
	.dwattr $C$DW$389, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$389, DW_AT_name("handle")
	.dwattr $C$DW$389, DW_AT_TI_symbol_name("_handle")
	.dwattr $C$DW$389, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$389, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$43

$C$DW$T$87	.dwtag  DW_TAG_typedef, DW_AT_name("veuNewConfig_t")
	.dwattr $C$DW$T$87, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$87, DW_AT_language(DW_LANG_C)
$C$DW$T$88	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$88, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$T$88, DW_AT_address_class(0x17)

$C$DW$T$44	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$44, DW_AT_name("veuSizeConfig_s")
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x01)
$C$DW$390	.dwtag  DW_TAG_member
	.dwattr $C$DW$390, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$390, DW_AT_name("max_frame_size")
	.dwattr $C$DW$390, DW_AT_TI_symbol_name("_max_frame_size")
	.dwattr $C$DW$390, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$390, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$44

$C$DW$T$83	.dwtag  DW_TAG_typedef, DW_AT_name("veuSizeConfig_t")
	.dwattr $C$DW$T$83, DW_AT_type(*$C$DW$T$44)
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

$C$DW$391	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$391, DW_AT_location[DW_OP_reg0]
$C$DW$392	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$392, DW_AT_location[DW_OP_reg1]
$C$DW$393	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$393, DW_AT_location[DW_OP_reg2]
$C$DW$394	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$394, DW_AT_location[DW_OP_reg3]
$C$DW$395	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$395, DW_AT_location[DW_OP_reg4]
$C$DW$396	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$396, DW_AT_location[DW_OP_reg5]
$C$DW$397	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$397, DW_AT_location[DW_OP_reg6]
$C$DW$398	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$398, DW_AT_location[DW_OP_reg7]
$C$DW$399	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$399, DW_AT_location[DW_OP_reg8]
$C$DW$400	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$400, DW_AT_location[DW_OP_reg9]
$C$DW$401	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$401, DW_AT_location[DW_OP_reg10]
$C$DW$402	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$402, DW_AT_location[DW_OP_reg11]
$C$DW$403	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$403, DW_AT_location[DW_OP_reg12]
$C$DW$404	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$404, DW_AT_location[DW_OP_reg13]
$C$DW$405	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$405, DW_AT_location[DW_OP_reg14]
$C$DW$406	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$406, DW_AT_location[DW_OP_reg15]
$C$DW$407	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$407, DW_AT_location[DW_OP_reg16]
$C$DW$408	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$408, DW_AT_location[DW_OP_reg17]
$C$DW$409	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$409, DW_AT_location[DW_OP_reg18]
$C$DW$410	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$410, DW_AT_location[DW_OP_reg19]
$C$DW$411	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$411, DW_AT_location[DW_OP_reg20]
$C$DW$412	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$412, DW_AT_location[DW_OP_reg21]
$C$DW$413	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$413, DW_AT_location[DW_OP_reg22]
$C$DW$414	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$414, DW_AT_location[DW_OP_reg23]
$C$DW$415	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$415, DW_AT_location[DW_OP_reg24]
$C$DW$416	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$416, DW_AT_location[DW_OP_reg25]
$C$DW$417	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$417, DW_AT_location[DW_OP_reg26]
$C$DW$418	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$418, DW_AT_location[DW_OP_reg27]
$C$DW$419	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$419, DW_AT_location[DW_OP_reg28]
$C$DW$420	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$420, DW_AT_location[DW_OP_reg29]
$C$DW$421	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$421, DW_AT_location[DW_OP_reg30]
$C$DW$422	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$422, DW_AT_location[DW_OP_reg31]
$C$DW$423	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$423, DW_AT_location[DW_OP_regx 0x20]
$C$DW$424	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$424, DW_AT_location[DW_OP_regx 0x21]
$C$DW$425	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$425, DW_AT_location[DW_OP_regx 0x22]
$C$DW$426	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$426, DW_AT_location[DW_OP_regx 0x23]
$C$DW$427	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$427, DW_AT_location[DW_OP_regx 0x24]
$C$DW$428	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$428, DW_AT_location[DW_OP_regx 0x25]
$C$DW$429	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$429, DW_AT_location[DW_OP_regx 0x26]
$C$DW$430	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$430, DW_AT_location[DW_OP_regx 0x27]
$C$DW$431	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$431, DW_AT_location[DW_OP_regx 0x28]
$C$DW$432	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$432, DW_AT_location[DW_OP_regx 0x29]
$C$DW$433	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$433, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$434	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$434, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$435	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$435, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$436	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$436, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$437	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$437, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$438	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$438, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$439	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$439, DW_AT_location[DW_OP_regx 0x30]
$C$DW$440	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$440, DW_AT_location[DW_OP_regx 0x31]
$C$DW$441	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$441, DW_AT_location[DW_OP_regx 0x32]
$C$DW$442	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$442, DW_AT_location[DW_OP_regx 0x33]
$C$DW$443	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$443, DW_AT_location[DW_OP_regx 0x34]
$C$DW$444	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$444, DW_AT_location[DW_OP_regx 0x35]
$C$DW$445	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$445, DW_AT_location[DW_OP_regx 0x36]
$C$DW$446	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$446, DW_AT_location[DW_OP_regx 0x37]
$C$DW$447	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$447, DW_AT_location[DW_OP_regx 0x38]
$C$DW$448	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$448, DW_AT_location[DW_OP_regx 0x39]
$C$DW$449	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$449, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$450	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$450, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$451	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$451, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$452	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$452, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$453	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$453, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$454	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$454, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$455	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$455, DW_AT_location[DW_OP_regx 0x40]
$C$DW$456	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$456, DW_AT_location[DW_OP_regx 0x41]
$C$DW$457	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$457, DW_AT_location[DW_OP_regx 0x42]
$C$DW$458	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$458, DW_AT_location[DW_OP_regx 0x43]
$C$DW$459	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$459, DW_AT_location[DW_OP_regx 0x44]
$C$DW$460	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$460, DW_AT_location[DW_OP_regx 0x45]
$C$DW$461	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$461, DW_AT_location[DW_OP_regx 0x46]
$C$DW$462	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$462, DW_AT_location[DW_OP_regx 0x47]
$C$DW$463	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$463, DW_AT_location[DW_OP_regx 0x48]
$C$DW$464	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$464, DW_AT_location[DW_OP_regx 0x49]
$C$DW$465	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$465, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$466	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$466, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$467	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$467, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$468	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$468, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$469	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$469, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$470	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$470, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$471	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$471, DW_AT_location[DW_OP_regx 0x50]
$C$DW$472	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$472, DW_AT_location[DW_OP_regx 0x51]
$C$DW$473	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$473, DW_AT_location[DW_OP_regx 0x52]
$C$DW$474	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$474, DW_AT_location[DW_OP_regx 0x53]
$C$DW$475	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$475, DW_AT_location[DW_OP_regx 0x54]
$C$DW$476	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$476, DW_AT_location[DW_OP_regx 0x55]
$C$DW$477	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$477, DW_AT_location[DW_OP_regx 0x56]
$C$DW$478	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$478, DW_AT_location[DW_OP_regx 0x57]
$C$DW$479	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$479, DW_AT_location[DW_OP_regx 0x58]
$C$DW$480	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$480, DW_AT_location[DW_OP_regx 0x59]
$C$DW$481	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$481, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$482	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$482, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

