;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                        Unix v4.4.1 *
;* Date/Time created: Mon Feb  3 11:33:07 2025                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("./adpcm_encode_test.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen Unix v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/santiago/Research/dspfuzz/on_board/test_programs/adpcm_encode")
;******************************************************************************
;* CINIT RECORDS                                                              *
;******************************************************************************
	.sect	".cinit"
	.align	1
	.field  	2,16
	.field  	_flags+0,24
	.field  	0,8
	.field	1,32			; _flags @ 0

	.sect	".cinit"
	.align	1
	.field  	2,16
	.field  	_lookahead+0,24
	.field  	0,8
	.field	3,32			; _lookahead @ 0

	.sect	".cinit"
	.align	1
	.field  	2,16
	.field  	_blocksize_pow2+0,24
	.field  	0,8
	.field	0,32			; _blocksize_pow2 @ 0

	.sect	".cinit"
	.align	1
	.field  	2,16
	.field  	_static_shaping_weight+0,24
	.field  	0,8
	.xlong	0x00000000		; _static_shaping_weight @ 0


$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("abs")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_abs")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$1


$C$DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("memcpy")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_memcpy")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$3)
$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$48)
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$49)
	.dwendtag $C$DW$3


$C$DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("strncpy")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_strncpy")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$70)
$C$DW$9	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$76)
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$49)
	.dwendtag $C$DW$7


$C$DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("strncmp")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_strncmp")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$11, DW_AT_declaration
	.dwattr $C$DW$11, DW_AT_external
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$76)
$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$76)
$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$49)
	.dwendtag $C$DW$11


$C$DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("memset")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_memset")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$15, DW_AT_declaration
	.dwattr $C$DW$15, DW_AT_external
$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$3)
$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$10)
$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$49)
	.dwendtag $C$DW$15


$C$DW$19	.dwtag  DW_TAG_subprogram, DW_AT_name("malloc")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_malloc")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$19, DW_AT_declaration
	.dwattr $C$DW$19, DW_AT_external
$C$DW$20	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$49)
	.dwendtag $C$DW$19


$C$DW$21	.dwtag  DW_TAG_subprogram, DW_AT_name("free")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_free")
	.dwattr $C$DW$21, DW_AT_declaration
	.dwattr $C$DW$21, DW_AT_external
$C$DW$22	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$21


$C$DW$23	.dwtag  DW_TAG_subprogram, DW_AT_name("isdigit")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_isdigit")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$23, DW_AT_declaration
	.dwattr $C$DW$23, DW_AT_external
$C$DW$24	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$23


$C$DW$25	.dwtag  DW_TAG_subprogram, DW_AT_name("floor")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_floor")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$25, DW_AT_declaration
	.dwattr $C$DW$25, DW_AT_external
$C$DW$26	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$17)
	.dwendtag $C$DW$25

	.ref _coverage_log;
	.global	_g_adpcm_context
	.bss	_g_adpcm_context,36,0,2
$C$DW$27	.dwtag  DW_TAG_variable, DW_AT_name("g_adpcm_context")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_g_adpcm_context")
	.dwattr $C$DW$27, DW_AT_location[DW_OP_addr _g_adpcm_context]
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$27, DW_AT_external
	.sect	".const:_step_table"
	.clink
	.align	1
_step_table:
	CALL #_coverage_log;
	.field	7,16			; _step_table[0] @ 0
	.field	8,16			; _step_table[1] @ 16
	.field	9,16			; _step_table[2] @ 32
	.field	10,16			; _step_table[3] @ 48
	.field	11,16			; _step_table[4] @ 64
	.field	12,16			; _step_table[5] @ 80
	.field	13,16			; _step_table[6] @ 96
	.field	14,16			; _step_table[7] @ 112
	.field	16,16			; _step_table[8] @ 128
	.field	17,16			; _step_table[9] @ 144
	.field	19,16			; _step_table[10] @ 160
	.field	21,16			; _step_table[11] @ 176
	.field	23,16			; _step_table[12] @ 192
	.field	25,16			; _step_table[13] @ 208
	.field	28,16			; _step_table[14] @ 224
	.field	31,16			; _step_table[15] @ 240
	.field	34,16			; _step_table[16] @ 256
	.field	37,16			; _step_table[17] @ 272
	.field	41,16			; _step_table[18] @ 288
	.field	45,16			; _step_table[19] @ 304
	.field	50,16			; _step_table[20] @ 320
	.field	55,16			; _step_table[21] @ 336
	.field	60,16			; _step_table[22] @ 352
	.field	66,16			; _step_table[23] @ 368
	.field	73,16			; _step_table[24] @ 384
	.field	80,16			; _step_table[25] @ 400
	.field	88,16			; _step_table[26] @ 416
	.field	97,16			; _step_table[27] @ 432
	.field	107,16			; _step_table[28] @ 448
	.field	118,16			; _step_table[29] @ 464
	.field	130,16			; _step_table[30] @ 480
	.field	143,16			; _step_table[31] @ 496
	.field	157,16			; _step_table[32] @ 512
	.field	173,16			; _step_table[33] @ 528
	.field	190,16			; _step_table[34] @ 544
	.field	209,16			; _step_table[35] @ 560
	.field	230,16			; _step_table[36] @ 576
	.field	253,16			; _step_table[37] @ 592
	.field	279,16			; _step_table[38] @ 608
	.field	307,16			; _step_table[39] @ 624
	.field	337,16			; _step_table[40] @ 640
	.field	371,16			; _step_table[41] @ 656
	.field	408,16			; _step_table[42] @ 672
	.field	449,16			; _step_table[43] @ 688
	.field	494,16			; _step_table[44] @ 704
	.field	544,16			; _step_table[45] @ 720
	.field	598,16			; _step_table[46] @ 736
	.field	658,16			; _step_table[47] @ 752
	.field	724,16			; _step_table[48] @ 768
	.field	796,16			; _step_table[49] @ 784
	.field	876,16			; _step_table[50] @ 800
	.field	963,16			; _step_table[51] @ 816
	.field	1060,16			; _step_table[52] @ 832
	.field	1166,16			; _step_table[53] @ 848
	.field	1282,16			; _step_table[54] @ 864
	.field	1411,16			; _step_table[55] @ 880
	.field	1552,16			; _step_table[56] @ 896
	.field	1707,16			; _step_table[57] @ 912
	.field	1878,16			; _step_table[58] @ 928
	.field	2066,16			; _step_table[59] @ 944
	.field	2272,16			; _step_table[60] @ 960
	.field	2499,16			; _step_table[61] @ 976
	.field	2749,16			; _step_table[62] @ 992
	.field	3024,16			; _step_table[63] @ 1008
	.field	3327,16			; _step_table[64] @ 1024
	.field	3660,16			; _step_table[65] @ 1040
	.field	4026,16			; _step_table[66] @ 1056
	.field	4428,16			; _step_table[67] @ 1072
	.field	4871,16			; _step_table[68] @ 1088
	.field	5358,16			; _step_table[69] @ 1104
	.field	5894,16			; _step_table[70] @ 1120
	.field	6484,16			; _step_table[71] @ 1136
	.field	7132,16			; _step_table[72] @ 1152
	.field	7845,16			; _step_table[73] @ 1168
	.field	8630,16			; _step_table[74] @ 1184
	.field	9493,16			; _step_table[75] @ 1200
	.field	10442,16			; _step_table[76] @ 1216
	.field	11487,16			; _step_table[77] @ 1232
	.field	12635,16			; _step_table[78] @ 1248
	.field	13899,16			; _step_table[79] @ 1264
	.field	15289,16			; _step_table[80] @ 1280
	.field	16818,16			; _step_table[81] @ 1296
	.field	18500,16			; _step_table[82] @ 1312
	.field	20350,16			; _step_table[83] @ 1328
	.field	22385,16			; _step_table[84] @ 1344
	.field	24623,16			; _step_table[85] @ 1360
	.field	27086,16			; _step_table[86] @ 1376
	.field	29794,16			; _step_table[87] @ 1392
	.field	32767,16			; _step_table[88] @ 1408

$C$DW$28	.dwtag  DW_TAG_variable, DW_AT_name("step_table")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_step_table")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_addr _step_table]
	.sect	".const:_index_table"
	.clink
	.align	1
_index_table:
	CALL #_coverage_log;
	.field	-1,16			; _index_table[0] @ 0
	.field	-1,16			; _index_table[1] @ 16
	.field	-1,16			; _index_table[2] @ 32
	.field	-1,16			; _index_table[3] @ 48
	.field	2,16			; _index_table[4] @ 64
	.field	4,16			; _index_table[5] @ 80
	.field	6,16			; _index_table[6] @ 96
	.field	8,16			; _index_table[7] @ 112

$C$DW$29	.dwtag  DW_TAG_variable, DW_AT_name("index_table")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_index_table")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_addr _index_table]
	.sect	".const:_index_table_3bit"
	.clink
	.align	1
_index_table_3bit:
	CALL #_coverage_log;
	.field	-1,16			; _index_table_3bit[0] @ 0
	.field	-1,16			; _index_table_3bit[1] @ 16
	.field	1,16			; _index_table_3bit[2] @ 32
	.field	2,16			; _index_table_3bit[3] @ 48

$C$DW$30	.dwtag  DW_TAG_variable, DW_AT_name("index_table_3bit")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_index_table_3bit")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_addr _index_table_3bit]
	.sect	".const:_index_table_5bit"
	.clink
	.align	1
_index_table_5bit:
	CALL #_coverage_log;
	.field	-1,16			; _index_table_5bit[0] @ 0
	.field	-1,16			; _index_table_5bit[1] @ 16
	.field	-1,16			; _index_table_5bit[2] @ 32
	.field	-1,16			; _index_table_5bit[3] @ 48
	.field	-1,16			; _index_table_5bit[4] @ 64
	.field	-1,16			; _index_table_5bit[5] @ 80
	.field	-1,16			; _index_table_5bit[6] @ 96
	.field	-1,16			; _index_table_5bit[7] @ 112
	.field	1,16			; _index_table_5bit[8] @ 128
	.field	2,16			; _index_table_5bit[9] @ 144
	.field	4,16			; _index_table_5bit[10] @ 160
	.field	6,16			; _index_table_5bit[11] @ 176
	.field	8,16			; _index_table_5bit[12] @ 192
	.field	10,16			; _index_table_5bit[13] @ 208
	.field	13,16			; _index_table_5bit[14] @ 224
	.field	16,16			; _index_table_5bit[15] @ 240

$C$DW$31	.dwtag  DW_TAG_variable, DW_AT_name("index_table_5bit")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_index_table_5bit")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_addr _index_table_5bit]
	.bss	_flags,2,0,2
$C$DW$32	.dwtag  DW_TAG_variable, DW_AT_name("flags")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_flags")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_addr _flags]
	.bss	_lookahead,2,0,2
$C$DW$33	.dwtag  DW_TAG_variable, DW_AT_name("lookahead")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_lookahead")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_addr _lookahead]
	.bss	_blocksize_pow2,2,0,2
$C$DW$34	.dwtag  DW_TAG_variable, DW_AT_name("blocksize_pow2")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_blocksize_pow2")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_addr _blocksize_pow2]
	.bss	_static_shaping_weight,2,0,2
$C$DW$35	.dwtag  DW_TAG_variable, DW_AT_name("static_shaping_weight")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_static_shaping_weight")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_addr _static_shaping_weight]
;	/home/santiago/ti/ccs1281/ccs/tools/compiler/c5500_4.4.1/bin/acp55 -@/tmp/183772m00cy 
	.sect	".text"

$C$DW$36	.dwtag  DW_TAG_subprogram, DW_AT_name("noise_shape")
	.dwattr $C$DW$36, DW_AT_low_pc(_noise_shape)
	.dwattr $C$DW$36, DW_AT_high_pc(0x00)
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_noise_shape")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$36, DW_AT_TI_begin_file("./adpcm_encode_test.c")
	.dwattr $C$DW$36, DW_AT_TI_begin_line(0xcd)
	.dwattr $C$DW$36, DW_AT_TI_begin_column(0x17)
	.dwattr $C$DW$36, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "./adpcm_encode_test.c",line 206,column 1,is_stmt,address _noise_shape

	.dwfde $C$DW$CIE, _noise_shape
$C$DW$37	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pchan")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_pchan")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_reg17]
$C$DW$38	.dwtag  DW_TAG_formal_parameter, DW_AT_name("sample")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_sample")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_reg0]
;*******************************************************************************
;* FUNCTION NAME: noise_shape                                                  *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,AR0,XAR0,AR3,XAR3,SP,CARRY,TC1,M40,  *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_noise_shape:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$39	.dwtag  DW_TAG_variable, DW_AT_name("pchan")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_pchan")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$40	.dwtag  DW_TAG_variable, DW_AT_name("sample")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_sample")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$41	.dwtag  DW_TAG_variable, DW_AT_name("temp")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_temp")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV AC0, dbl(*SP(#2)) ; |206| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./adpcm_encode_test.c",line 207,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#4))), AC1 ; |207| 
        MOV dbl(*AR3(#12)), AC0 ; |207| 
$C$DW$42	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$42, DW_AT_low_pc(0x00)
	.dwattr $C$DW$42, DW_AT_name("__mpyli")
	.dwattr $C$DW$42, DW_AT_TI_call
        CALL #__mpyli ; |207| 
                                        ; call occurs [#__mpyli] ; |207| 
        ADD #512, AC0, AC0 ; |207| 
        SFTS AC0, #-10, AC0 ; |207| 
        NEG AC0, AC0 ; |207| 
        MOV AC0, dbl(*SP(#4)) ; |207| 
	.dwpsn	file "./adpcm_encode_test.c",line 209,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#12)), AC0 ; |209| 
        BCC $C$L4,AC0 >= #0 ; |209| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |209| 
        MOV dbl(*SP(#4)), AC0 ; |209| 
        BCC $C$L4,AC0 == #0 ; |209| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |209| 
	.dwpsn	file "./adpcm_encode_test.c",line 211,column 9,is_stmt
        MOV dbl(*AR3(short(#4))), AC0 ; |211| 
        MOV dbl(*SP(#4)), AC1 ; |211| 
        CMP AC1 != AC0, TC1 ; |211| 
        BCC $C$L3,TC1 ; |211| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |211| 
	.dwpsn	file "./adpcm_encode_test.c",line 213,column 13,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |213| 
        BCC $C$L1,AC0 >= #0 ; |213| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |213| 
        MOV #1, AC0 ; |213| 
        ADD dbl(*SP(#4)), AC0, AC0 ; |213| 
        B $C$L2   ; |213| 
                                        ; branch occurs ; |213| 
$C$L1:    
	CALL #_coverage_log;
        MOV #1, AC0 ; |213| 
        SUB AC0, dbl(*SP(#4)), AC0 ; |213| 
$C$L2:    
        MOV AC0, dbl(*SP(#4)) ; |213| 
$C$L3:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 216,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#2)), AC0 ; |216| 
        NEG AC0, AC0 ; |216| 
        MOV AC0, dbl(*AR3(short(#4))) ; |216| 
	.dwpsn	file "./adpcm_encode_test.c",line 217,column 9,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |217| 
        ADD dbl(*SP(#2)), AC0, AC0 ; |217| 
        MOV AC0, dbl(*SP(#2)) ; |217| 
	.dwpsn	file "./adpcm_encode_test.c",line 218,column 5,is_stmt
        B $C$L5   ; |218| 
                                        ; branch occurs ; |218| 
$C$L4:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 221,column 9,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |221| 
        ADD dbl(*SP(#2)), AC0, AC0 ; |221| 
        MOV AC0, dbl(*SP(#2)) ; |221| 
        MOV dbl(*SP(#0)), XAR3
        NEG AC0, AC0 ; |221| 
        MOV AC0, dbl(*AR3(short(#4))) ; |221| 
$C$L5:    
	.dwpsn	file "./adpcm_encode_test.c",line 224,column 5,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |224| 
	.dwpsn	file "./adpcm_encode_test.c",line 225,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$43	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$43, DW_AT_low_pc(0x00)
	.dwattr $C$DW$43, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$36, DW_AT_TI_end_file("./adpcm_encode_test.c")
	.dwattr $C$DW$36, DW_AT_TI_end_line(0xe1)
	.dwattr $C$DW$36, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$36

	.sect	".text"
	.global	_adpcm_create_context

$C$DW$44	.dwtag  DW_TAG_subprogram, DW_AT_name("adpcm_create_context")
	.dwattr $C$DW$44, DW_AT_low_pc(_adpcm_create_context)
	.dwattr $C$DW$44, DW_AT_high_pc(0x00)
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_adpcm_create_context")
	.dwattr $C$DW$44, DW_AT_external
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$44, DW_AT_TI_begin_file("./adpcm_encode_test.c")
	.dwattr $C$DW$44, DW_AT_TI_begin_line(0xa0)
	.dwattr $C$DW$44, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$44, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "./adpcm_encode_test.c",line 161,column 1,is_stmt,address _adpcm_create_context

	.dwfde $C$DW$CIE, _adpcm_create_context
$C$DW$45	.dwtag  DW_TAG_formal_parameter, DW_AT_name("num_channels")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_num_channels")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_reg12]
$C$DW$46	.dwtag  DW_TAG_formal_parameter, DW_AT_name("lookahead")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_lookahead")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_reg13]
$C$DW$47	.dwtag  DW_TAG_formal_parameter, DW_AT_name("noise_shaping")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_noise_shaping")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_reg16]
;*******************************************************************************
;* FUNCTION NAME: adpcm_create_context                                         *
;*                                                                             *
;*   Function Uses Regs : AC0,T0,T1,AR0,XAR0,AR1,AR2,XAR2,AR3,XAR3,SP,CARRY,   *
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (7 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_adpcm_create_context:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$48	.dwtag  DW_TAG_variable, DW_AT_name("num_channels")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_num_channels")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$49	.dwtag  DW_TAG_variable, DW_AT_name("lookahead")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_lookahead")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$50	.dwtag  DW_TAG_variable, DW_AT_name("noise_shaping")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_noise_shaping")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$51	.dwtag  DW_TAG_variable, DW_AT_name("pcnxt")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_pcnxt")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$52	.dwtag  DW_TAG_variable, DW_AT_name("ch")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_ch")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV AR0, *SP(#2) ; |161| 
        MOV T1, *SP(#1) ; |161| 
        MOV T0, *SP(#0) ; |161| 
	.dwpsn	file "./adpcm_encode_test.c",line 162,column 27,is_stmt
        AMOV #_g_adpcm_context, XAR3 ; |162| 
        MOV XAR3, dbl(*SP(#4))
	.dwpsn	file "./adpcm_encode_test.c",line 165,column 5,is_stmt
        MOV #36, T1 ; |165| 
        MOV dbl(*SP(#4)), XAR0
$C$DW$53	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$53, DW_AT_low_pc(0x00)
	.dwattr $C$DW$53, DW_AT_name("_memset")
	.dwattr $C$DW$53, DW_AT_TI_call

        CALL #_memset ; |165| 
||      MOV #0, T0

                                        ; call occurs [#_memset] ; |165| 
	.dwpsn	file "./adpcm_encode_test.c",line 166,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR2
        MOV dbl(*SP(#4)), XAR3
        MOV XAR3, dbl(*AR2(#16))
        MOV dbl(*SP(#4)), XAR2
        MOV XAR3, dbl(*AR2)
	.dwpsn	file "./adpcm_encode_test.c",line 167,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV *SP(#2), AR1 ; |167| 
        MOV AR1, *AR3(#34) ; |167| 
	.dwpsn	file "./adpcm_encode_test.c",line 168,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #1024, *AR3(#35) ; |168| 
	.dwpsn	file "./adpcm_encode_test.c",line 169,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV *SP(#0), AR1 ; |169| 
        MOV AR1, *AR3(#32) ; |169| 
	.dwpsn	file "./adpcm_encode_test.c",line 170,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV *SP(#1), AR1 ; |170| 
        MOV AR1, *AR3(#33) ; |170| 
	.dwpsn	file "./adpcm_encode_test.c",line 175,column 10,is_stmt
        MOV #0, *SP(#6) ; |175| 
	.dwpsn	file "./adpcm_encode_test.c",line 175,column 18,is_stmt
        MOV *SP(#0), AR1 ; |175| 
        MOV *SP(#6), AR2 ; |175| 
        CMP AR2 >= AR1, TC1 ; |175| 
        BCC $C$L7,TC1 ; |175| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |175| 
$C$L6:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_create_context$2$B:
	.dwpsn	file "./adpcm_encode_test.c",line 176,column 9,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV *SP(#6) << #4, AC0 ; |176| 
        MOV AC0, AR1 ; |176| 
        AADD AR1, AR3 ; |176| 
        MOV #-1, *AR3(#14) ; |176| 
	.dwpsn	file "./adpcm_encode_test.c",line 175,column 37,is_stmt
        ADD #1, *SP(#6) ; |175| 
	.dwpsn	file "./adpcm_encode_test.c",line 175,column 18,is_stmt
        MOV *SP(#6), AR2 ; |175| 
        MOV *SP(#0), AR1 ; |175| 
        CMP AR2 < AR1, TC1 ; |175| 
        BCC $C$L6,TC1 ; |175| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |175| 
$C$DW$L$_adpcm_create_context$2$E:
$C$L7:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 178,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR0
	.dwpsn	file "./adpcm_encode_test.c",line 179,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$54	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$54, DW_AT_low_pc(0x00)
	.dwattr $C$DW$54, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$55	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$55, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/adpcm_encode/adpcm_encode_test.asm:$C$L6:1:1738600387")
	.dwattr $C$DW$55, DW_AT_TI_begin_file("./adpcm_encode_test.c")
	.dwattr $C$DW$55, DW_AT_TI_begin_line(0xaf)
	.dwattr $C$DW$55, DW_AT_TI_end_line(0xb0)
$C$DW$56	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$56, DW_AT_low_pc($C$DW$L$_adpcm_create_context$2$B)
	.dwattr $C$DW$56, DW_AT_high_pc($C$DW$L$_adpcm_create_context$2$E)
	.dwendtag $C$DW$55

	.dwattr $C$DW$44, DW_AT_TI_end_file("./adpcm_encode_test.c")
	.dwattr $C$DW$44, DW_AT_TI_end_line(0xb3)
	.dwattr $C$DW$44, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$44

	.sect	".text"
	.global	_adpcm_set_shaping_weight

$C$DW$57	.dwtag  DW_TAG_subprogram, DW_AT_name("adpcm_set_shaping_weight")
	.dwattr $C$DW$57, DW_AT_low_pc(_adpcm_set_shaping_weight)
	.dwattr $C$DW$57, DW_AT_high_pc(0x00)
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_adpcm_set_shaping_weight")
	.dwattr $C$DW$57, DW_AT_external
	.dwattr $C$DW$57, DW_AT_TI_begin_file("./adpcm_encode_test.c")
	.dwattr $C$DW$57, DW_AT_TI_begin_line(0xbb)
	.dwattr $C$DW$57, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$57, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "./adpcm_encode_test.c",line 188,column 1,is_stmt,address _adpcm_set_shaping_weight

	.dwfde $C$DW$CIE, _adpcm_set_shaping_weight
$C$DW$58	.dwtag  DW_TAG_formal_parameter, DW_AT_name("p")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_p")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_reg17]
$C$DW$59	.dwtag  DW_TAG_formal_parameter, DW_AT_name("shaping_weight")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_shaping_weight")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_reg0]
;*******************************************************************************
;* FUNCTION NAME: adpcm_set_shaping_weight                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,TC1, *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_adpcm_set_shaping_weight:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$60	.dwtag  DW_TAG_variable, DW_AT_name("p")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_p")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$61	.dwtag  DW_TAG_variable, DW_AT_name("shaping_weight")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_shaping_weight")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$61, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$62	.dwtag  DW_TAG_variable, DW_AT_name("pcnxt")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_pcnxt")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV AC0, dbl(*SP(#2)) ; |188| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./adpcm_encode_test.c",line 189,column 27,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, dbl(*SP(#4))
	.dwpsn	file "./adpcm_encode_test.c",line 191,column 5,is_stmt
        MOV dbl(*($C$FL1)), AC1 ; |191| 
        MOV dbl(*SP(#2)), AC0 ; |191| 
$C$DW$63	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$63, DW_AT_low_pc(0x00)
	.dwattr $C$DW$63, DW_AT_name("__mpyd")
	.dwattr $C$DW$63, DW_AT_TI_call
        CALL #__mpyd ; |191| 
                                        ; call occurs [#__mpyd] ; |191| 
        MOV dbl(*($C$FL2)), AC1 ; |191| 
$C$DW$64	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$64, DW_AT_low_pc(0x00)
	.dwattr $C$DW$64, DW_AT_name("__addd")
	.dwattr $C$DW$64, DW_AT_TI_call
        CALL #__addd ; |191| 
                                        ; call occurs [#__addd] ; |191| 
$C$DW$65	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$65, DW_AT_low_pc(0x00)
	.dwattr $C$DW$65, DW_AT_name("_floor")
	.dwattr $C$DW$65, DW_AT_TI_call
        CALL #_floor ; |191| 
                                        ; call occurs [#_floor] ; |191| 
$C$DW$66	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$66, DW_AT_low_pc(0x00)
	.dwattr $C$DW$66, DW_AT_name("__fixdi")
	.dwattr $C$DW$66, DW_AT_TI_call
        CALL #__fixdi ; |191| 
                                        ; call occurs [#__fixdi] ; |191| 
        MOV dbl(*SP(#4)), XAR3
        MOV T0, *AR3(#35) ; |191| 
	.dwpsn	file "./adpcm_encode_test.c",line 193,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #1024, AR2 ; |193| 
        MOV *AR3(#35), AR1 ; |193| 
        CMP AR1 <= AR2, TC1 ; |193| 
        BCC $C$L8,TC1 ; |193| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |193| 
	.dwpsn	file "./adpcm_encode_test.c",line 194,column 9,is_stmt
        MOV #1024, *AR3(#35) ; |194| 
$C$L8:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 195,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #-1023, AR2 ; |195| 
        MOV *AR3(#35), AR1 ; |195| 
        CMP AR1 >= AR2, TC1 ; |195| 
        BCC $C$L9,TC1 ; |195| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |195| 
	.dwpsn	file "./adpcm_encode_test.c",line 196,column 9,is_stmt
        MOV #-1023, *AR3(#35) ; |196| 
	.dwpsn	file "./adpcm_encode_test.c",line 197,column 1,is_stmt
$C$L9:    
	CALL #_coverage_log;
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$67	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$67, DW_AT_low_pc(0x00)
	.dwattr $C$DW$67, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$57, DW_AT_TI_end_file("./adpcm_encode_test.c")
	.dwattr $C$DW$57, DW_AT_TI_end_line(0xc5)
	.dwattr $C$DW$57, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$57

	.sect	".text"

$C$DW$68	.dwtag  DW_TAG_subprogram, DW_AT_name("minimum_error")
	.dwattr $C$DW$68, DW_AT_low_pc(_minimum_error)
	.dwattr $C$DW$68, DW_AT_high_pc(0x00)
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_minimum_error")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$68, DW_AT_TI_begin_file("./adpcm_encode_test.c")
	.dwattr $C$DW$68, DW_AT_TI_begin_line(0xe3)
	.dwattr $C$DW$68, DW_AT_TI_begin_column(0x14)
	.dwattr $C$DW$68, DW_AT_TI_max_frame_size(0x30)
	.dwpsn	file "./adpcm_encode_test.c",line 228,column 1,is_stmt,address _minimum_error

	.dwfde $C$DW$CIE, _minimum_error
$C$DW$69	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pchan")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_pchan")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$69, DW_AT_location[DW_OP_reg17]
$C$DW$70	.dwtag  DW_TAG_formal_parameter, DW_AT_name("nch")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_nch")
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$70, DW_AT_location[DW_OP_reg12]
$C$DW$71	.dwtag  DW_TAG_formal_parameter, DW_AT_name("csample")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_csample")
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$71, DW_AT_location[DW_OP_reg0]
$C$DW$72	.dwtag  DW_TAG_formal_parameter, DW_AT_name("sample")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_sample")
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$72, DW_AT_location[DW_OP_reg19]
$C$DW$73	.dwtag  DW_TAG_formal_parameter, DW_AT_name("depth")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_depth")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_reg13]
$C$DW$74	.dwtag  DW_TAG_formal_parameter, DW_AT_name("best_nibble")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_best_nibble")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_reg21]
$C$DW$75	.dwtag  DW_TAG_formal_parameter, DW_AT_name("max_error")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_max_error")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$75, DW_AT_location[DW_OP_reg3]
;*******************************************************************************
;* FUNCTION NAME: minimum_error                                                *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,*
;*                        XAR3,SP,CSR,RPTC,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,   *
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 48 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (46 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_minimum_error:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-47, SP
	.dwcfi	cfa_offset, 48
$C$DW$76	.dwtag  DW_TAG_variable, DW_AT_name("pchan")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_pchan")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$76, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$77	.dwtag  DW_TAG_variable, DW_AT_name("nch")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_nch")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$78	.dwtag  DW_TAG_variable, DW_AT_name("csample")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_csample")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$79	.dwtag  DW_TAG_variable, DW_AT_name("sample")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_sample")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$79, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$80	.dwtag  DW_TAG_variable, DW_AT_name("depth")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_depth")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$80, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$81	.dwtag  DW_TAG_variable, DW_AT_name("best_nibble")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_best_nibble")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$81, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$82	.dwtag  DW_TAG_variable, DW_AT_name("max_error")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_max_error")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$83	.dwtag  DW_TAG_variable, DW_AT_name("delta")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_delta")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$83, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$84	.dwtag  DW_TAG_variable, DW_AT_name("csample2")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_csample2")
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$84, DW_AT_location[DW_OP_bregx 0x24 16]
$C$DW$85	.dwtag  DW_TAG_variable, DW_AT_name("chan")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_chan")
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$85, DW_AT_location[DW_OP_bregx 0x24 18]
$C$DW$86	.dwtag  DW_TAG_variable, DW_AT_name("step")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("_step")
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$86, DW_AT_location[DW_OP_bregx 0x24 34]
$C$DW$87	.dwtag  DW_TAG_variable, DW_AT_name("trial_delta")
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("_trial_delta")
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$87, DW_AT_location[DW_OP_bregx 0x24 35]
$C$DW$88	.dwtag  DW_TAG_variable, DW_AT_name("nibble")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("_nibble")
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$88, DW_AT_location[DW_OP_bregx 0x24 36]
$C$DW$89	.dwtag  DW_TAG_variable, DW_AT_name("nibble2")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_nibble2")
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$89, DW_AT_location[DW_OP_bregx 0x24 37]
$C$DW$90	.dwtag  DW_TAG_variable, DW_AT_name("min_error")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_min_error")
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$90, DW_AT_location[DW_OP_bregx 0x24 38]
        MOV AC1, dbl(*SP(#12)) ; |228| 
        MOV XAR2, dbl(*SP(#10))
        MOV T1, *SP(#8) ; |228| 
        MOV XAR1, dbl(*SP(#6))
        MOV AC0, dbl(*SP(#4)) ; |228| 
        MOV T0, *SP(#2) ; |228| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./adpcm_encode_test.c",line 229,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), AC0 ; |229| 
        SUB AC0, dbl(*SP(#4)), AC0 ; |229| 
        MOV AC0, dbl(*SP(#14)) ; |229| 
	.dwpsn	file "./adpcm_encode_test.c",line 230,column 26,is_stmt
        MOV dbl(*SP(#0)), XAR3

        RPT #7    ; |230| 
||      AMAR *SP(#18), XAR2

                                            ; loop starts ; |230| 
$C$L10:    
$C$DW$L$_minimum_error$2$B:
            MOV dbl(*AR3+), dbl(*AR2+) ; |230| 
                                        ; loop ends ; |230| 
$C$DW$L$_minimum_error$2$E:
$C$L11:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 231,column 14,is_stmt
        MOV *SP(#32), T0 ; |231| 
        AMOV #_step_table, XAR3 ; |231| 
        MOV *AR3(T0), AR1 ; |231| 
        MOV AR1, *SP(#34) ; |231| 
	.dwpsn	file "./adpcm_encode_test.c",line 232,column 14,is_stmt
        MOV uns(*SP(#34)), AC0 ; |232| 
        SFTS AC0, #-3, AC0 ; |232| 
        MOV AC0, *SP(#35) ; |232| 
	.dwpsn	file "./adpcm_encode_test.c",line 239,column 5,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |239| 
        BCC $C$L13,AC0 >= #0 ; |239| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |239| 

$C$DW$91	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$92	.dwtag  DW_TAG_variable, DW_AT_name("mag")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_mag")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_bregx 0x24 40]
	.dwpsn	file "./adpcm_encode_test.c",line 241,column 13,is_stmt
        MOV *SP(#34), AR1 ; |241| 

        AND #0x0003, AR1, AC1 ; |241| 
||      MOV dbl(*SP(#14)), AC0 ; |241| 

        NEG AC0, AC0 ; |241| 

        ADD AC0 << #2, AC1 ; |241| 
||      AND #0x0001, AR1, AR1 ; |241| 

        SFTL AR1, #1 ; |241| 
        AND #0xffff, AR1, AC0 ; |241| 

        MOV uns(*SP(#34)), AC1 ; |241| 
||      ADD AC1, AC0 ; |241| 

$C$DW$93	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$93, DW_AT_low_pc(0x00)
	.dwattr $C$DW$93, DW_AT_name("__divli")
	.dwattr $C$DW$93, DW_AT_TI_call
        CALL #__divli ; |241| 
                                        ; call occurs [#__divli] ; |241| 
        MOV AC0, *SP(#40) ; |241| 
	.dwpsn	file "./adpcm_encode_test.c",line 242,column 9,is_stmt

        MOV AC0, AR1
||      MOV #7, AR2

        CMP AR1 <= AR2, TC1 ; |242| 
        BCC $C$L12,TC1 ; |242| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |242| 
        MOV #7, AR1
$C$L12:    
	CALL #_coverage_log;
        OR #0x0008, AR1, AR1 ; |242| 
        MOV AR1, *SP(#36) ; |242| 
	.dwendtag $C$DW$91

	.dwpsn	file "./adpcm_encode_test.c",line 243,column 5,is_stmt
        B $C$L15  ; |243| 
                                        ; branch occurs ; |243| 
$C$L13:    
	CALL #_coverage_log;

$C$DW$94	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$95	.dwtag  DW_TAG_variable, DW_AT_name("mag")
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("_mag")
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$95, DW_AT_location[DW_OP_bregx 0x24 40]
	.dwpsn	file "./adpcm_encode_test.c",line 246,column 13,is_stmt
        MOV *SP(#34), AR1 ; |246| 

        AND #0x0003, AR1, AC1 ; |246| 
||      MOV dbl(*SP(#14)), AC0 ; |246| 

        ADD AC0 << #2, AC1 ; |246| 
||      AND #0x0001, AR1, AR1 ; |246| 

        SFTL AR1, #1 ; |246| 
        AND #0xffff, AR1, AC0 ; |246| 

        MOV uns(*SP(#34)), AC1 ; |246| 
||      ADD AC1, AC0 ; |246| 

$C$DW$96	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$96, DW_AT_low_pc(0x00)
	.dwattr $C$DW$96, DW_AT_name("__divli")
	.dwattr $C$DW$96, DW_AT_TI_call
        CALL #__divli ; |246| 
                                        ; call occurs [#__divli] ; |246| 
        MOV AC0, *SP(#40) ; |246| 
	.dwpsn	file "./adpcm_encode_test.c",line 247,column 9,is_stmt

        MOV AC0, AR1
||      MOV #7, AR2

        CMP AR1 <= AR2, TC1 ; |247| 
        BCC $C$L14,TC1 ; |247| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |247| 
        MOV #7, AR1
$C$L14:    
	CALL #_coverage_log;
        MOV AR1, *SP(#36) ; |247| 
	.dwendtag $C$DW$94

$C$L15:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 250,column 5,is_stmt
        BTST #0, *SP(#36), TC1 ; |250| 
        BCC $C$L16,!TC1 ; |250| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |250| 
	.dwpsn	file "./adpcm_encode_test.c",line 251,column 9,is_stmt
        MOV *SP(#34), AC0 ; |251| 
        BFXTR #0xfffc, AC0, AR1 ; |251| 
        ADD *SP(#35), AR1, AR1 ; |251| 
        MOV AR1, *SP(#35) ; |251| 
$C$L16:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 252,column 5,is_stmt
        BTST #1, *SP(#36), TC1 ; |252| 
        BCC $C$L17,!TC1 ; |252| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |252| 
	.dwpsn	file "./adpcm_encode_test.c",line 253,column 9,is_stmt
        MOV *SP(#34), AR1 ; |253| 
        SFTL AR1, #-1 ; |253| 
        ADD *SP(#35), AR1, AR1 ; |253| 
        MOV AR1, *SP(#35) ; |253| 
$C$L17:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 254,column 5,is_stmt
        BTST #2, *SP(#36), TC1 ; |254| 
        BCC $C$L18,!TC1 ; |254| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |254| 
	.dwpsn	file "./adpcm_encode_test.c",line 255,column 9,is_stmt
        MOV *SP(#34), AR1 ; |255| 
        ADD *SP(#35), AR1, AR1 ; |255| 
        MOV AR1, *SP(#35) ; |255| 
$C$L18:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 257,column 5,is_stmt
        BTST #3, *SP(#36), TC1 ; |257| 
        BCC $C$L19,!TC1 ; |257| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |257| 
	.dwpsn	file "./adpcm_encode_test.c",line 258,column 9,is_stmt
        MOV uns(*SP(#35)), AC0 ; |258| 
        SUB AC0, dbl(*SP(#20)), AC0 ; |258| 
        MOV AC0, dbl(*SP(#20)) ; |258| 
        B $C$L20  ; |258| 
                                        ; branch occurs ; |258| 
$C$L19:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 260,column 9,is_stmt
        MOV uns(*SP(#35)), AC0 ; |260| 
        ADD dbl(*SP(#20)), AC0, AC0 ; |260| 
        MOV AC0, dbl(*SP(#20)) ; |260| 
$C$L20:    
	.dwpsn	file "./adpcm_encode_test.c",line 262,column 5,is_stmt
        MOV #32767, AC0 ; |262| 
        MOV dbl(*SP(#20)), AC1 ; |262| 
        CMP AC1 <= AC0, TC1 ; |262| 
        BCC $C$L21,TC1 ; |262| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |262| 
        MOV AC0, dbl(*SP(#20)) ; |262| 
        B $C$L22  ; |262| 
                                        ; branch occurs ; |262| 
$C$L21:    
	CALL #_coverage_log;
        MOV #-32768, AC0 ; |262| 
        MOV dbl(*SP(#20)), AC1 ; |262| 
        CMP AC1 >= AC0, TC1 ; |262| 
        BCC $C$L22,TC1 ; |262| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |262| 
        MOV AC0, dbl(*SP(#20)) ; |262| 
$C$L22:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 263,column 5,is_stmt
        MOV dbl(*SP(#10)), XAR3
        MOV XAR3, AC0
        BCC $C$L23,AC0 == #0 ; |263| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |263| 
	.dwpsn	file "./adpcm_encode_test.c",line 264,column 9,is_stmt
        MOV *SP(#36), AR1 ; |264| 
        MOV AR1, *AR3 ; |264| 
$C$L23:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 265,column 5,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |265| 
        SUB AC0, dbl(*SP(#20)), AC0 ; |265| 
$C$DW$97	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$97, DW_AT_low_pc(0x00)
	.dwattr $C$DW$97, DW_AT_name("__fltlid")
	.dwattr $C$DW$97, DW_AT_TI_call
        CALL #__fltlid ; |265| 
                                        ; call occurs [#__fltlid] ; |265| 
        MOV AC0, dbl(*SP(#44)) ; |265| 
        MOV dbl(*SP(#4)), AC0 ; |265| 
        SUB AC0, dbl(*SP(#20)), AC0 ; |265| 
$C$DW$98	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$98, DW_AT_low_pc(0x00)
	.dwattr $C$DW$98, DW_AT_name("__fltlid")
	.dwattr $C$DW$98, DW_AT_TI_call
        CALL #__fltlid ; |265| 
                                        ; call occurs [#__fltlid] ; |265| 

        MOV dbl(*SP(#44)), AC0 ; |265| 
||      OR #0, AC0, AC1

$C$DW$99	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$99, DW_AT_low_pc(0x00)
	.dwattr $C$DW$99, DW_AT_name("__mpyd")
	.dwattr $C$DW$99, DW_AT_TI_call
        CALL #__mpyd ; |265| 
                                        ; call occurs [#__mpyd] ; |265| 
        MOV AC0, dbl(*SP(#38)) ; |265| 
	.dwpsn	file "./adpcm_encode_test.c",line 268,column 5,is_stmt
        MOV *SP(#8), AR1 ; |268| 
        BCC $C$L24,AR1 == #0 ; |268| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |268| 
        MOV dbl(*SP(#12)), AC1 ; |268| 
$C$DW$100	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$100, DW_AT_low_pc(0x00)
	.dwattr $C$DW$100, DW_AT_name("__cmpd")
	.dwattr $C$DW$100, DW_AT_TI_call
        CALL #__cmpd ; |268| 
                                        ; call occurs [#__cmpd] ; |268| 
        BCC $C$L25,T0 < #0 ; |268| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |268| 
$C$L24:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 269,column 9,is_stmt
        MOV dbl(*SP(#38)), AC0 ; |269| 
        B $C$L53  ; |269| 
                                        ; branch occurs ; |269| 
$C$L25:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 273,column 5,is_stmt
        MOV *SP(#36), AR1 ; |273| 
        AND #0x0007, AR1, T0 ; |273| 
        AMOV #_index_table, XAR3 ; |273| 
        MOV *AR3(T0), AR1 ; |273| 
        ADD *SP(#32), AR1, AR1 ; |273| 
        MOV AR1, *SP(#32) ; |273| 
	.dwpsn	file "./adpcm_encode_test.c",line 274,column 5,is_stmt
        MOV #88, AR2 ; |274| 
        CMP AR1 <= AR2, TC1 ; |274| 
        BCC $C$L26,TC1 ; |274| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |274| 
        MOV #88, *SP(#32) ; |274| 
        B $C$L27  ; |274| 
                                        ; branch occurs ; |274| 
$C$L26:    
	CALL #_coverage_log;
        BCC $C$L27,AR1 >= #0 ; |274| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |274| 
        MOV #0, *SP(#32) ; |274| 
$C$L27:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 275,column 5,is_stmt
        MOV *SP(#2), T0 ; |275| 
        MOV dbl(*SP(#6)), XAR3
        MOV *AR3(T0), AC0 ; |275| 
        MOV AC0, dbl(*SP(#16)) ; |275| 
	.dwpsn	file "./adpcm_encode_test.c",line 277,column 5,is_stmt
        MOV dbl(*SP(#18)), XAR3
        MOV *AR3(#34), AR1 ; |277| 
        BCC $C$L28,AR1 == #0 ; |277| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |277| 
	.dwpsn	file "./adpcm_encode_test.c",line 279,column 9,is_stmt
        MOV dbl(*SP(#20)), AC0 ; |279| 
        ADD dbl(*SP(#22)), AC0, AC0 ; |279| 
        MOV AC0, dbl(*SP(#22)) ; |279| 
	.dwpsn	file "./adpcm_encode_test.c",line 280,column 9,is_stmt
        AMAR *SP(#18), XAR0
        MOV dbl(*SP(#16)), AC0 ; |280| 
$C$DW$101	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$101, DW_AT_low_pc(0x00)
	.dwattr $C$DW$101, DW_AT_name("_noise_shape")
	.dwattr $C$DW$101, DW_AT_TI_call
        CALL #_noise_shape ; |280| 
                                        ; call occurs [#_noise_shape] ; |280| 
        MOV AC0, dbl(*SP(#16)) ; |280| 
$C$L28:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 283,column 5,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |283| 
        MOV dbl(*SP(#38)), AC1 ; |283| 
$C$DW$102	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$102, DW_AT_low_pc(0x00)
	.dwattr $C$DW$102, DW_AT_name("__subd")
	.dwattr $C$DW$102, DW_AT_TI_call
        CALL #__subd ; |283| 
                                        ; call occurs [#__subd] ; |283| 
        MOV *SP(#2), AR2 ; |283| 
        MOV dbl(*SP(#6)), XAR1

        MOV *SP(#8), AR2 ; |283| 
||      AADD AR2, AR1 ; |283| 

        SUB #1, AR2, T1 ; |283| 
        AMAR *SP(#18), XAR0
        MOV *SP(#2), T0 ; |283| 

        MOV dbl(*SP(#16)), AC0 ; |283| 
||      OR #0, AC0, AC1

        AMOV #0, XAR2 ; |283| 
$C$DW$103	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$103, DW_AT_low_pc(0x00)
	.dwattr $C$DW$103, DW_AT_name("_minimum_error")
	.dwattr $C$DW$103, DW_AT_TI_call
        CALL #_minimum_error ; |283| 
                                        ; call occurs [#_minimum_error] ; |283| 

        MOV dbl(*SP(#38)), AC0 ; |283| 
||      OR #0, AC0, AC1

$C$DW$104	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$104, DW_AT_low_pc(0x00)
	.dwattr $C$DW$104, DW_AT_name("__addd")
	.dwattr $C$DW$104, DW_AT_TI_call
        CALL #__addd ; |283| 
                                        ; call occurs [#__addd] ; |283| 
        MOV AC0, dbl(*SP(#38)) ; |283| 
	.dwpsn	file "./adpcm_encode_test.c",line 288,column 10,is_stmt
        MOV #0, *SP(#37) ; |288| 
	.dwpsn	file "./adpcm_encode_test.c",line 288,column 23,is_stmt

        MOV *SP(#37), AR1 ; |288| 
||      MOV #15, AR2

        CMP AR1 > AR2, TC1 ; |288| 
        BCC $C$L52,TC1 ; |288| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |288| 
$C$L29:    
	CALL #_coverage_log;
$C$DW$L$_minimum_error$35$B:

$C$DW$105	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$106	.dwtag  DW_TAG_variable, DW_AT_name("error")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_error")
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$106, DW_AT_location[DW_OP_bregx 0x24 40]
$C$DW$107	.dwtag  DW_TAG_variable, DW_AT_name("threshold")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_threshold")
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$107, DW_AT_location[DW_OP_bregx 0x24 42]
	.dwpsn	file "./adpcm_encode_test.c",line 292,column 9,is_stmt
        MOV *SP(#36), AR1 ; |292| 
        MOV *SP(#37), AR2 ; |292| 
        CMP AR2 != AR1, TC1 ; |292| 
        BCC $C$L51,!TC1 ; |292| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |292| 
$C$DW$L$_minimum_error$35$E:
$C$DW$L$_minimum_error$36$B:
	.dwpsn	file "./adpcm_encode_test.c",line 293,column 13,is_stmt
	.dwpsn	file "./adpcm_encode_test.c",line 300,column 9,is_stmt
        MOV dbl(*SP(#18)), XAR3
        BTST #11, *AR3(#33), TC1 ; |300| 
        BCC $C$L34,TC1 ; |300| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |300| 
$C$DW$L$_minimum_error$36$E:
$C$DW$L$_minimum_error$37$B:
        MOV AR2, AR1
        NOT AR1, AR1 ; |300| 
        AND #0x0007, AR1, AR1 ; |300| 
        BCC $C$L34,AR1 == #0 ; |300| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |300| 
$C$DW$L$_minimum_error$37$E:
$C$DW$L$_minimum_error$38$B:

        MOV *SP(#37), AR1 ; |300| 
||      MOV #8, AR2

        CMP AR1 >= AR2, TC1 ; |300| 
        BCC $C$L30,TC1 ; |300| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |300| 
$C$DW$L$_minimum_error$38$E:
$C$DW$L$_minimum_error$39$B:
        ADD #1, AR1, AR3 ; |300| 
        B $C$L31  ; |300| 
                                        ; branch occurs ; |300| 
$C$DW$L$_minimum_error$39$E:
$C$L30:    
	CALL #_coverage_log;
$C$DW$L$_minimum_error$40$B:
        MOV #7, AR1
        SUB *SP(#37), AR1, AR3 ; |300| 
$C$DW$L$_minimum_error$40$E:
$C$L31:    
	CALL #_coverage_log;
$C$DW$L$_minimum_error$41$B:
        MOV *SP(#36), AR1 ; |300| 
        CMP AR1 >= AR2, TC1 ; |300| 
        BCC $C$L32,TC1 ; |300| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |300| 
$C$DW$L$_minimum_error$41$E:
$C$DW$L$_minimum_error$42$B:

        B $C$L33  ; |300| 
||      ADD #1, AR1, AR1 ; |300| 

                                        ; branch occurs ; |300| 
$C$DW$L$_minimum_error$42$E:
$C$L32:    
	CALL #_coverage_log;
$C$DW$L$_minimum_error$43$B:
        MOV #7, AR1
        SUB *SP(#36), AR1, AR1 ; |300| 
$C$DW$L$_minimum_error$43$E:
$C$L33:    
	CALL #_coverage_log;
$C$DW$L$_minimum_error$44$B:
        SUB AR3, AR1 ; |300| 

        ABS AR1, AR1 ; |300| 
||      MOV #2, AR2

        CMP AR1 <= AR2, TC1 ; |300| 
        BCC $C$L51,!TC1 ; |300| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |300| 
$C$DW$L$_minimum_error$44$E:
$C$DW$L$_minimum_error$45$B:
	.dwpsn	file "./adpcm_encode_test.c",line 302,column 13,is_stmt
$C$DW$L$_minimum_error$45$E:
$C$L34:    
	CALL #_coverage_log;
$C$DW$L$_minimum_error$46$B:
	.dwpsn	file "./adpcm_encode_test.c",line 304,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3

        RPT #7    ; |304| 
||      AMAR *SP(#18), XAR2

                                            ; loop starts ; |304| 
$C$DW$L$_minimum_error$46$E:
$C$L35:    
$C$DW$L$_minimum_error$47$B:
            MOV dbl(*AR3+), dbl(*AR2+) ; |304| 
                                        ; loop ends ; |304| 
$C$DW$L$_minimum_error$47$E:
$C$L36:    
	CALL #_coverage_log;
$C$DW$L$_minimum_error$48$B:
	.dwpsn	file "./adpcm_encode_test.c",line 305,column 9,is_stmt
        MOV uns(*SP(#34)), AC0 ; |305| 
        SFTS AC0, #-3, AC0 ; |305| 
        MOV AC0, *SP(#35) ; |305| 
	.dwpsn	file "./adpcm_encode_test.c",line 307,column 9,is_stmt
        BTST #0, *SP(#37), TC1 ; |307| 
        BCC $C$L37,!TC1 ; |307| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |307| 
$C$DW$L$_minimum_error$48$E:
$C$DW$L$_minimum_error$49$B:
	.dwpsn	file "./adpcm_encode_test.c",line 308,column 13,is_stmt
        MOV *SP(#34), AC0 ; |308| 
        BFXTR #0xfffc, AC0, AR1 ; |308| 
        ADD *SP(#35), AR1, AR1 ; |308| 
        MOV AR1, *SP(#35) ; |308| 
$C$DW$L$_minimum_error$49$E:
$C$L37:    
	CALL #_coverage_log;
$C$DW$L$_minimum_error$50$B:
	.dwpsn	file "./adpcm_encode_test.c",line 309,column 9,is_stmt
        BTST #1, *SP(#37), TC1 ; |309| 
        BCC $C$L38,!TC1 ; |309| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |309| 
$C$DW$L$_minimum_error$50$E:
$C$DW$L$_minimum_error$51$B:
	.dwpsn	file "./adpcm_encode_test.c",line 310,column 13,is_stmt
        MOV *SP(#34), AR1 ; |310| 
        SFTL AR1, #-1 ; |310| 
        ADD *SP(#35), AR1, AR1 ; |310| 
        MOV AR1, *SP(#35) ; |310| 
$C$DW$L$_minimum_error$51$E:
$C$L38:    
	CALL #_coverage_log;
$C$DW$L$_minimum_error$52$B:
	.dwpsn	file "./adpcm_encode_test.c",line 311,column 9,is_stmt
        BTST #2, *SP(#37), TC1 ; |311| 
        BCC $C$L39,!TC1 ; |311| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |311| 
$C$DW$L$_minimum_error$52$E:
$C$DW$L$_minimum_error$53$B:
	.dwpsn	file "./adpcm_encode_test.c",line 312,column 13,is_stmt
        MOV *SP(#34), AR1 ; |312| 
        ADD *SP(#35), AR1, AR1 ; |312| 
        MOV AR1, *SP(#35) ; |312| 
$C$DW$L$_minimum_error$53$E:
$C$L39:    
	CALL #_coverage_log;
$C$DW$L$_minimum_error$54$B:
	.dwpsn	file "./adpcm_encode_test.c",line 314,column 9,is_stmt
        BTST #3, *SP(#37), TC1 ; |314| 
        BCC $C$L40,!TC1 ; |314| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |314| 
$C$DW$L$_minimum_error$54$E:
$C$DW$L$_minimum_error$55$B:
	.dwpsn	file "./adpcm_encode_test.c",line 315,column 13,is_stmt
        MOV uns(*SP(#35)), AC0 ; |315| 
        SUB AC0, dbl(*SP(#20)), AC0 ; |315| 
        MOV AC0, dbl(*SP(#20)) ; |315| 
        B $C$L41  ; |315| 
                                        ; branch occurs ; |315| 
$C$DW$L$_minimum_error$55$E:
$C$L40:    
	CALL #_coverage_log;
$C$DW$L$_minimum_error$56$B:
	.dwpsn	file "./adpcm_encode_test.c",line 317,column 13,is_stmt
        MOV uns(*SP(#35)), AC0 ; |317| 
        ADD dbl(*SP(#20)), AC0, AC0 ; |317| 
        MOV AC0, dbl(*SP(#20)) ; |317| 
$C$DW$L$_minimum_error$56$E:
$C$L41:    
	CALL #_coverage_log;
$C$DW$L$_minimum_error$57$B:
	.dwpsn	file "./adpcm_encode_test.c",line 319,column 9,is_stmt
        MOV #32767, AC0 ; |319| 
        MOV dbl(*SP(#20)), AC1 ; |319| 
        CMP AC1 <= AC0, TC1 ; |319| 
        BCC $C$L42,TC1 ; |319| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |319| 
$C$DW$L$_minimum_error$57$E:
$C$DW$L$_minimum_error$58$B:
        MOV AC0, dbl(*SP(#20)) ; |319| 
        B $C$L43  ; |319| 
                                        ; branch occurs ; |319| 
$C$DW$L$_minimum_error$58$E:
$C$L42:    
	CALL #_coverage_log;
$C$DW$L$_minimum_error$59$B:
        MOV #-32768, AC0 ; |319| 
        MOV dbl(*SP(#20)), AC1 ; |319| 
        CMP AC1 >= AC0, TC1 ; |319| 
        BCC $C$L43,TC1 ; |319| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |319| 
$C$DW$L$_minimum_error$59$E:
$C$DW$L$_minimum_error$60$B:
        MOV AC0, dbl(*SP(#20)) ; |319| 
$C$DW$L$_minimum_error$60$E:
$C$L43:    
	CALL #_coverage_log;
$C$DW$L$_minimum_error$61$B:
	.dwpsn	file "./adpcm_encode_test.c",line 321,column 9,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |321| 
        SUB AC0, dbl(*SP(#20)), AC0 ; |321| 
$C$DW$108	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$108, DW_AT_low_pc(0x00)
	.dwattr $C$DW$108, DW_AT_name("__fltlid")
	.dwattr $C$DW$108, DW_AT_TI_call
        CALL #__fltlid ; |321| 
                                        ; call occurs [#__fltlid] ; |321| 
        MOV AC0, dbl(*SP(#44)) ; |321| 
        MOV dbl(*SP(#4)), AC0 ; |321| 
        SUB AC0, dbl(*SP(#20)), AC0 ; |321| 
$C$DW$109	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$109, DW_AT_low_pc(0x00)
	.dwattr $C$DW$109, DW_AT_name("__fltlid")
	.dwattr $C$DW$109, DW_AT_TI_call
        CALL #__fltlid ; |321| 
                                        ; call occurs [#__fltlid] ; |321| 

        MOV dbl(*SP(#44)), AC0 ; |321| 
||      OR #0, AC0, AC1

$C$DW$110	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$110, DW_AT_low_pc(0x00)
	.dwattr $C$DW$110, DW_AT_name("__mpyd")
	.dwattr $C$DW$110, DW_AT_TI_call
        CALL #__mpyd ; |321| 
                                        ; call occurs [#__mpyd] ; |321| 
        MOV AC0, dbl(*SP(#40)) ; |321| 
	.dwpsn	file "./adpcm_encode_test.c",line 322,column 9,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |322| 
        MOV dbl(*SP(#38)), AC1 ; |322| 
$C$DW$111	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$111, DW_AT_low_pc(0x00)
	.dwattr $C$DW$111, DW_AT_name("__cmpd")
	.dwattr $C$DW$111, DW_AT_TI_call
        CALL #__cmpd ; |322| 
                                        ; call occurs [#__cmpd] ; |322| 
        BCC $C$L44,T0 >= #0 ; |322| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |322| 
$C$DW$L$_minimum_error$61$E:
$C$DW$L$_minimum_error$62$B:
        MOV dbl(*SP(#12)), AC0 ; |322| 
        B $C$L45  ; |322| 
                                        ; branch occurs ; |322| 
$C$DW$L$_minimum_error$62$E:
$C$L44:    
	CALL #_coverage_log;
$C$DW$L$_minimum_error$63$B:
        MOV dbl(*SP(#38)), AC0 ; |322| 
$C$DW$L$_minimum_error$63$E:
$C$L45:    
	CALL #_coverage_log;
$C$DW$L$_minimum_error$64$B:
        MOV AC0, dbl(*SP(#42)) ; |322| 
	.dwpsn	file "./adpcm_encode_test.c",line 324,column 9,is_stmt
        MOV dbl(*SP(#42)), AC1 ; |324| 
        MOV dbl(*SP(#40)), AC0 ; |324| 
$C$DW$112	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$112, DW_AT_low_pc(0x00)
	.dwattr $C$DW$112, DW_AT_name("__cmpd")
	.dwattr $C$DW$112, DW_AT_TI_call
        CALL #__cmpd ; |324| 
                                        ; call occurs [#__cmpd] ; |324| 
        BCC $C$L50,T0 >= #0 ; |324| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |324| 
$C$DW$L$_minimum_error$64$E:
$C$DW$L$_minimum_error$65$B:
	.dwpsn	file "./adpcm_encode_test.c",line 326,column 13,is_stmt
        MOV *SP(#37), AR1 ; |326| 
        AND #0x0007, AR1, T0 ; |326| 
        AMOV #_index_table, XAR3 ; |326| 
        MOV *AR3(T0), AR1 ; |326| 
        ADD *SP(#32), AR1, AR1 ; |326| 
        MOV AR1, *SP(#32) ; |326| 
	.dwpsn	file "./adpcm_encode_test.c",line 327,column 13,is_stmt
        MOV #88, AR2 ; |327| 
        CMP AR1 <= AR2, TC1 ; |327| 
        BCC $C$L46,TC1 ; |327| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |327| 
$C$DW$L$_minimum_error$65$E:
$C$DW$L$_minimum_error$66$B:
        MOV #88, *SP(#32) ; |327| 
        B $C$L47  ; |327| 
                                        ; branch occurs ; |327| 
$C$DW$L$_minimum_error$66$E:
$C$L46:    
	CALL #_coverage_log;
$C$DW$L$_minimum_error$67$B:
        BCC $C$L47,AR1 >= #0 ; |327| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |327| 
$C$DW$L$_minimum_error$67$E:
$C$DW$L$_minimum_error$68$B:
        MOV #0, *SP(#32) ; |327| 
$C$DW$L$_minimum_error$68$E:
$C$L47:    
	CALL #_coverage_log;
$C$DW$L$_minimum_error$69$B:
	.dwpsn	file "./adpcm_encode_test.c",line 328,column 13,is_stmt
        MOV *SP(#2), T0 ; |328| 
        MOV dbl(*SP(#6)), XAR3
        MOV *AR3(T0), AC0 ; |328| 
        MOV AC0, dbl(*SP(#16)) ; |328| 
	.dwpsn	file "./adpcm_encode_test.c",line 330,column 13,is_stmt
        MOV dbl(*SP(#18)), XAR3
        MOV *AR3(#34), AR1 ; |330| 
        BCC $C$L48,AR1 == #0 ; |330| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |330| 
$C$DW$L$_minimum_error$69$E:
$C$DW$L$_minimum_error$70$B:
	.dwpsn	file "./adpcm_encode_test.c",line 332,column 17,is_stmt
        MOV dbl(*SP(#20)), AC0 ; |332| 
        ADD dbl(*SP(#22)), AC0, AC0 ; |332| 
        MOV AC0, dbl(*SP(#22)) ; |332| 
	.dwpsn	file "./adpcm_encode_test.c",line 333,column 17,is_stmt
        AMAR *SP(#18), XAR0
        MOV dbl(*SP(#16)), AC0 ; |333| 
$C$DW$113	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$113, DW_AT_low_pc(0x00)
	.dwattr $C$DW$113, DW_AT_name("_noise_shape")
	.dwattr $C$DW$113, DW_AT_TI_call
        CALL #_noise_shape ; |333| 
                                        ; call occurs [#_noise_shape] ; |333| 
        MOV AC0, dbl(*SP(#16)) ; |333| 
$C$DW$L$_minimum_error$70$E:
$C$L48:    
	CALL #_coverage_log;
$C$DW$L$_minimum_error$71$B:
	.dwpsn	file "./adpcm_encode_test.c",line 336,column 13,is_stmt
        MOV dbl(*SP(#42)), AC0 ; |336| 
        MOV dbl(*SP(#40)), AC1 ; |336| 
$C$DW$114	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$114, DW_AT_low_pc(0x00)
	.dwattr $C$DW$114, DW_AT_name("__subd")
	.dwattr $C$DW$114, DW_AT_TI_call
        CALL #__subd ; |336| 
                                        ; call occurs [#__subd] ; |336| 
        MOV *SP(#2), AR2 ; |336| 
        MOV dbl(*SP(#6)), XAR1

        MOV *SP(#8), AR2 ; |336| 
||      AADD AR2, AR1 ; |336| 

        SUB #1, AR2, T1 ; |336| 
        AMAR *SP(#18), XAR0
        MOV *SP(#2), T0 ; |336| 

        MOV dbl(*SP(#16)), AC0 ; |336| 
||      OR #0, AC0, AC1

        AMOV #0, XAR2 ; |336| 
$C$DW$115	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$115, DW_AT_low_pc(0x00)
	.dwattr $C$DW$115, DW_AT_name("_minimum_error")
	.dwattr $C$DW$115, DW_AT_TI_call
        CALL #_minimum_error ; |336| 
                                        ; call occurs [#_minimum_error] ; |336| 

        MOV dbl(*SP(#40)), AC0 ; |336| 
||      OR #0, AC0, AC1

$C$DW$116	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$116, DW_AT_low_pc(0x00)
	.dwattr $C$DW$116, DW_AT_name("__addd")
	.dwattr $C$DW$116, DW_AT_TI_call
        CALL #__addd ; |336| 
                                        ; call occurs [#__addd] ; |336| 
        MOV AC0, dbl(*SP(#40)) ; |336| 
	.dwpsn	file "./adpcm_encode_test.c",line 338,column 13,is_stmt
        MOV dbl(*SP(#38)), AC1 ; |338| 
$C$DW$117	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$117, DW_AT_low_pc(0x00)
	.dwattr $C$DW$117, DW_AT_name("__cmpd")
	.dwattr $C$DW$117, DW_AT_TI_call
        CALL #__cmpd ; |338| 
                                        ; call occurs [#__cmpd] ; |338| 
        BCC $C$L50,T0 >= #0 ; |338| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |338| 
$C$DW$L$_minimum_error$71$E:
$C$DW$L$_minimum_error$72$B:
	.dwpsn	file "./adpcm_encode_test.c",line 340,column 17,is_stmt
        MOV dbl(*SP(#10)), XAR3
        MOV XAR3, AC0
        BCC $C$L49,AC0 == #0 ; |340| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |340| 
$C$DW$L$_minimum_error$72$E:
$C$DW$L$_minimum_error$73$B:
	.dwpsn	file "./adpcm_encode_test.c",line 341,column 21,is_stmt
        MOV *SP(#37), AR1 ; |341| 
        MOV AR1, *AR3 ; |341| 
$C$DW$L$_minimum_error$73$E:
$C$L49:    
	CALL #_coverage_log;
$C$DW$L$_minimum_error$74$B:
	.dwpsn	file "./adpcm_encode_test.c",line 342,column 17,is_stmt
        MOV dbl(*SP(#40)), AC0 ; |342| 
        MOV AC0, dbl(*SP(#38)) ; |342| 
$C$DW$L$_minimum_error$74$E:
$C$L50:    
	CALL #_coverage_log;
$C$DW$L$_minimum_error$75$B:
	.dwendtag $C$DW$105

$C$DW$L$_minimum_error$75$E:
$C$L51:    
	CALL #_coverage_log;
$C$DW$L$_minimum_error$76$B:
	.dwpsn	file "./adpcm_encode_test.c",line 288,column 39,is_stmt
        ADD #1, *SP(#37) ; |288| 
	.dwpsn	file "./adpcm_encode_test.c",line 288,column 23,is_stmt

        MOV *SP(#37), AR1 ; |288| 
||      MOV #15, AR2

        CMP AR1 <= AR2, TC1 ; |288| 
        BCC $C$L29,TC1 ; |288| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |288| 
$C$DW$L$_minimum_error$76$E:
$C$L52:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 347,column 5,is_stmt
        MOV dbl(*SP(#38)), AC0 ; |347| 
$C$L53:    
	.dwpsn	file "./adpcm_encode_test.c",line 348,column 1,is_stmt
        AADD #47, SP
	.dwcfi	cfa_offset, 1
$C$DW$118	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$118, DW_AT_low_pc(0x00)
	.dwattr $C$DW$118, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$119	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$119, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/adpcm_encode/adpcm_encode_test.asm:$C$L29:1:1738600387")
	.dwattr $C$DW$119, DW_AT_TI_begin_file("./adpcm_encode_test.c")
	.dwattr $C$DW$119, DW_AT_TI_begin_line(0x120)
	.dwattr $C$DW$119, DW_AT_TI_end_line(0x159)
$C$DW$120	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$120, DW_AT_low_pc($C$DW$L$_minimum_error$35$B)
	.dwattr $C$DW$120, DW_AT_high_pc($C$DW$L$_minimum_error$35$E)
$C$DW$121	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$121, DW_AT_low_pc($C$DW$L$_minimum_error$72$B)
	.dwattr $C$DW$121, DW_AT_high_pc($C$DW$L$_minimum_error$72$E)
$C$DW$122	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$122, DW_AT_low_pc($C$DW$L$_minimum_error$73$B)
	.dwattr $C$DW$122, DW_AT_high_pc($C$DW$L$_minimum_error$73$E)
$C$DW$123	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$123, DW_AT_low_pc($C$DW$L$_minimum_error$65$B)
	.dwattr $C$DW$123, DW_AT_high_pc($C$DW$L$_minimum_error$65$E)
$C$DW$124	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$124, DW_AT_low_pc($C$DW$L$_minimum_error$66$B)
	.dwattr $C$DW$124, DW_AT_high_pc($C$DW$L$_minimum_error$66$E)
$C$DW$125	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$125, DW_AT_low_pc($C$DW$L$_minimum_error$67$B)
	.dwattr $C$DW$125, DW_AT_high_pc($C$DW$L$_minimum_error$67$E)
$C$DW$126	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$126, DW_AT_low_pc($C$DW$L$_minimum_error$68$B)
	.dwattr $C$DW$126, DW_AT_high_pc($C$DW$L$_minimum_error$68$E)
$C$DW$127	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$127, DW_AT_low_pc($C$DW$L$_minimum_error$69$B)
	.dwattr $C$DW$127, DW_AT_high_pc($C$DW$L$_minimum_error$69$E)
$C$DW$128	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$128, DW_AT_low_pc($C$DW$L$_minimum_error$70$B)
	.dwattr $C$DW$128, DW_AT_high_pc($C$DW$L$_minimum_error$70$E)
$C$DW$129	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$129, DW_AT_low_pc($C$DW$L$_minimum_error$45$B)
	.dwattr $C$DW$129, DW_AT_high_pc($C$DW$L$_minimum_error$45$E)
$C$DW$130	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$130, DW_AT_low_pc($C$DW$L$_minimum_error$46$B)
	.dwattr $C$DW$130, DW_AT_high_pc($C$DW$L$_minimum_error$46$E)
$C$DW$131	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$131, DW_AT_low_pc($C$DW$L$_minimum_error$48$B)
	.dwattr $C$DW$131, DW_AT_high_pc($C$DW$L$_minimum_error$48$E)
$C$DW$132	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$132, DW_AT_low_pc($C$DW$L$_minimum_error$49$B)
	.dwattr $C$DW$132, DW_AT_high_pc($C$DW$L$_minimum_error$49$E)
$C$DW$133	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$133, DW_AT_low_pc($C$DW$L$_minimum_error$50$B)
	.dwattr $C$DW$133, DW_AT_high_pc($C$DW$L$_minimum_error$50$E)
$C$DW$134	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$134, DW_AT_low_pc($C$DW$L$_minimum_error$51$B)
	.dwattr $C$DW$134, DW_AT_high_pc($C$DW$L$_minimum_error$51$E)
$C$DW$135	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$135, DW_AT_low_pc($C$DW$L$_minimum_error$52$B)
	.dwattr $C$DW$135, DW_AT_high_pc($C$DW$L$_minimum_error$52$E)
$C$DW$136	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$136, DW_AT_low_pc($C$DW$L$_minimum_error$53$B)
	.dwattr $C$DW$136, DW_AT_high_pc($C$DW$L$_minimum_error$53$E)
$C$DW$137	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$137, DW_AT_low_pc($C$DW$L$_minimum_error$54$B)
	.dwattr $C$DW$137, DW_AT_high_pc($C$DW$L$_minimum_error$54$E)
$C$DW$138	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$138, DW_AT_low_pc($C$DW$L$_minimum_error$55$B)
	.dwattr $C$DW$138, DW_AT_high_pc($C$DW$L$_minimum_error$55$E)
$C$DW$139	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$139, DW_AT_low_pc($C$DW$L$_minimum_error$56$B)
	.dwattr $C$DW$139, DW_AT_high_pc($C$DW$L$_minimum_error$56$E)
$C$DW$140	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$140, DW_AT_low_pc($C$DW$L$_minimum_error$57$B)
	.dwattr $C$DW$140, DW_AT_high_pc($C$DW$L$_minimum_error$57$E)
$C$DW$141	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$141, DW_AT_low_pc($C$DW$L$_minimum_error$58$B)
	.dwattr $C$DW$141, DW_AT_high_pc($C$DW$L$_minimum_error$58$E)
$C$DW$142	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$142, DW_AT_low_pc($C$DW$L$_minimum_error$59$B)
	.dwattr $C$DW$142, DW_AT_high_pc($C$DW$L$_minimum_error$59$E)
$C$DW$143	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$143, DW_AT_low_pc($C$DW$L$_minimum_error$60$B)
	.dwattr $C$DW$143, DW_AT_high_pc($C$DW$L$_minimum_error$60$E)
$C$DW$144	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$144, DW_AT_low_pc($C$DW$L$_minimum_error$61$B)
	.dwattr $C$DW$144, DW_AT_high_pc($C$DW$L$_minimum_error$61$E)
$C$DW$145	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$145, DW_AT_low_pc($C$DW$L$_minimum_error$62$B)
	.dwattr $C$DW$145, DW_AT_high_pc($C$DW$L$_minimum_error$62$E)
$C$DW$146	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$146, DW_AT_low_pc($C$DW$L$_minimum_error$63$B)
	.dwattr $C$DW$146, DW_AT_high_pc($C$DW$L$_minimum_error$63$E)
$C$DW$147	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$147, DW_AT_low_pc($C$DW$L$_minimum_error$64$B)
	.dwattr $C$DW$147, DW_AT_high_pc($C$DW$L$_minimum_error$64$E)
$C$DW$148	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$148, DW_AT_low_pc($C$DW$L$_minimum_error$71$B)
	.dwattr $C$DW$148, DW_AT_high_pc($C$DW$L$_minimum_error$71$E)
$C$DW$149	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$149, DW_AT_low_pc($C$DW$L$_minimum_error$74$B)
	.dwattr $C$DW$149, DW_AT_high_pc($C$DW$L$_minimum_error$74$E)
$C$DW$150	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$150, DW_AT_low_pc($C$DW$L$_minimum_error$36$B)
	.dwattr $C$DW$150, DW_AT_high_pc($C$DW$L$_minimum_error$36$E)
$C$DW$151	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$151, DW_AT_low_pc($C$DW$L$_minimum_error$37$B)
	.dwattr $C$DW$151, DW_AT_high_pc($C$DW$L$_minimum_error$37$E)
$C$DW$152	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$152, DW_AT_low_pc($C$DW$L$_minimum_error$38$B)
	.dwattr $C$DW$152, DW_AT_high_pc($C$DW$L$_minimum_error$38$E)
$C$DW$153	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$153, DW_AT_low_pc($C$DW$L$_minimum_error$39$B)
	.dwattr $C$DW$153, DW_AT_high_pc($C$DW$L$_minimum_error$39$E)
$C$DW$154	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$154, DW_AT_low_pc($C$DW$L$_minimum_error$40$B)
	.dwattr $C$DW$154, DW_AT_high_pc($C$DW$L$_minimum_error$40$E)
$C$DW$155	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$155, DW_AT_low_pc($C$DW$L$_minimum_error$41$B)
	.dwattr $C$DW$155, DW_AT_high_pc($C$DW$L$_minimum_error$41$E)
$C$DW$156	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$156, DW_AT_low_pc($C$DW$L$_minimum_error$42$B)
	.dwattr $C$DW$156, DW_AT_high_pc($C$DW$L$_minimum_error$42$E)
$C$DW$157	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$157, DW_AT_low_pc($C$DW$L$_minimum_error$43$B)
	.dwattr $C$DW$157, DW_AT_high_pc($C$DW$L$_minimum_error$43$E)
$C$DW$158	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$158, DW_AT_low_pc($C$DW$L$_minimum_error$44$B)
	.dwattr $C$DW$158, DW_AT_high_pc($C$DW$L$_minimum_error$44$E)
$C$DW$159	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$159, DW_AT_low_pc($C$DW$L$_minimum_error$75$B)
	.dwattr $C$DW$159, DW_AT_high_pc($C$DW$L$_minimum_error$75$E)
$C$DW$160	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$160, DW_AT_low_pc($C$DW$L$_minimum_error$76$B)
	.dwattr $C$DW$160, DW_AT_high_pc($C$DW$L$_minimum_error$76$E)

$C$DW$161	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$161, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/adpcm_encode/adpcm_encode_test.asm:$C$L35:2:1738600387")
	.dwattr $C$DW$161, DW_AT_TI_begin_file("./adpcm_encode_test.c")
	.dwattr $C$DW$161, DW_AT_TI_begin_line(0x130)
	.dwattr $C$DW$161, DW_AT_TI_end_line(0x130)
$C$DW$162	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$162, DW_AT_low_pc($C$DW$L$_minimum_error$47$B)
	.dwattr $C$DW$162, DW_AT_high_pc($C$DW$L$_minimum_error$47$E)
	.dwendtag $C$DW$161

	.dwendtag $C$DW$119


$C$DW$163	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$163, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/adpcm_encode/adpcm_encode_test.asm:$C$L10:1:1738600387")
	.dwattr $C$DW$163, DW_AT_TI_begin_file("./adpcm_encode_test.c")
	.dwattr $C$DW$163, DW_AT_TI_begin_line(0xe6)
	.dwattr $C$DW$163, DW_AT_TI_end_line(0xe6)
$C$DW$164	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$164, DW_AT_low_pc($C$DW$L$_minimum_error$2$B)
	.dwattr $C$DW$164, DW_AT_high_pc($C$DW$L$_minimum_error$2$E)
	.dwendtag $C$DW$163

	.dwattr $C$DW$68, DW_AT_TI_end_file("./adpcm_encode_test.c")
	.dwattr $C$DW$68, DW_AT_TI_end_line(0x15c)
	.dwattr $C$DW$68, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$68

	.sect	".text"

$C$DW$165	.dwtag  DW_TAG_subprogram, DW_AT_name("encode_sample")
	.dwattr $C$DW$165, DW_AT_low_pc(_encode_sample)
	.dwattr $C$DW$165, DW_AT_high_pc(0x00)
	.dwattr $C$DW$165, DW_AT_TI_symbol_name("_encode_sample")
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$165, DW_AT_TI_begin_file("./adpcm_encode_test.c")
	.dwattr $C$DW$165, DW_AT_TI_begin_line(0x15e)
	.dwattr $C$DW$165, DW_AT_TI_begin_column(0x11)
	.dwattr $C$DW$165, DW_AT_TI_max_frame_size(0x16)
	.dwpsn	file "./adpcm_encode_test.c",line 351,column 1,is_stmt,address _encode_sample

	.dwfde $C$DW$CIE, _encode_sample
$C$DW$166	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pcnxt")
	.dwattr $C$DW$166, DW_AT_TI_symbol_name("_pcnxt")
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$166, DW_AT_location[DW_OP_reg17]
$C$DW$167	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ch")
	.dwattr $C$DW$167, DW_AT_TI_symbol_name("_ch")
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$167, DW_AT_location[DW_OP_reg12]
$C$DW$168	.dwtag  DW_TAG_formal_parameter, DW_AT_name("sample")
	.dwattr $C$DW$168, DW_AT_TI_symbol_name("_sample")
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$168, DW_AT_location[DW_OP_reg19]
$C$DW$169	.dwtag  DW_TAG_formal_parameter, DW_AT_name("num_samples")
	.dwattr $C$DW$169, DW_AT_TI_symbol_name("_num_samples")
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$169, DW_AT_location[DW_OP_reg13]
;*******************************************************************************
;* FUNCTION NAME: encode_sample                                                *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,*
;*                        XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 22 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (20 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_encode_sample:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-21, SP
	.dwcfi	cfa_offset, 22
$C$DW$170	.dwtag  DW_TAG_variable, DW_AT_name("pcnxt")
	.dwattr $C$DW$170, DW_AT_TI_symbol_name("_pcnxt")
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$170, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$171	.dwtag  DW_TAG_variable, DW_AT_name("ch")
	.dwattr $C$DW$171, DW_AT_TI_symbol_name("_ch")
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$171, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$172	.dwtag  DW_TAG_variable, DW_AT_name("sample")
	.dwattr $C$DW$172, DW_AT_TI_symbol_name("_sample")
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$172, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$173	.dwtag  DW_TAG_variable, DW_AT_name("num_samples")
	.dwattr $C$DW$173, DW_AT_TI_symbol_name("_num_samples")
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$173, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$174	.dwtag  DW_TAG_variable, DW_AT_name("pchan")
	.dwattr $C$DW$174, DW_AT_TI_symbol_name("_pchan")
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$174, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$175	.dwtag  DW_TAG_variable, DW_AT_name("csample")
	.dwattr $C$DW$175, DW_AT_TI_symbol_name("_csample")
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$175, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$176	.dwtag  DW_TAG_variable, DW_AT_name("depth")
	.dwattr $C$DW$176, DW_AT_TI_symbol_name("_depth")
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$176, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$177	.dwtag  DW_TAG_variable, DW_AT_name("nibble")
	.dwattr $C$DW$177, DW_AT_TI_symbol_name("_nibble")
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$177, DW_AT_location[DW_OP_bregx 0x24 13]
$C$DW$178	.dwtag  DW_TAG_variable, DW_AT_name("step")
	.dwattr $C$DW$178, DW_AT_TI_symbol_name("_step")
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$178, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$179	.dwtag  DW_TAG_variable, DW_AT_name("trial_delta")
	.dwattr $C$DW$179, DW_AT_TI_symbol_name("_trial_delta")
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$179, DW_AT_location[DW_OP_bregx 0x24 15]
        MOV T1, *SP(#6) ; |351| 
        MOV XAR1, dbl(*SP(#4))
        MOV T0, *SP(#2) ; |351| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./adpcm_encode_test.c",line 352,column 27,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#2) << #4, AC0 ; |352| 
        MOV AC0, AR1 ; |352| 

        MOV XAR3, dbl(*SP(#8))
||      AADD AR1, AR3 ; |352| 

	.dwpsn	file "./adpcm_encode_test.c",line 353,column 13,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV *AR3, AC0 ; |353| 
        MOV AC0, dbl(*SP(#10)) ; |353| 
	.dwpsn	file "./adpcm_encode_test.c",line 354,column 9,is_stmt
        MOV *SP(#6), AR1 ; |354| 
        SUB #1, AR1 ; |354| 
        MOV AR1, *SP(#12) ; |354| 
	.dwpsn	file "./adpcm_encode_test.c",line 355,column 14,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV *AR3(#14), T0 ; |355| 
        AMOV #_step_table, XAR3 ; |355| 
        MOV *AR3(T0), AR1 ; |355| 
        MOV AR1, *SP(#14) ; |355| 
	.dwpsn	file "./adpcm_encode_test.c",line 356,column 14,is_stmt
        MOV uns(*SP(#14)), AC0 ; |356| 
        SFTS AC0, #-3, AC0 ; |356| 
        MOV AC0, *SP(#15) ; |356| 
	.dwpsn	file "./adpcm_encode_test.c",line 358,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        CMP *AR3(#34) == #2, TC1 ; |358| 
        BCC $C$L57,!TC1 ; |358| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |358| 

$C$DW$180	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$181	.dwtag  DW_TAG_variable, DW_AT_name("sam")
	.dwattr $C$DW$181, DW_AT_TI_symbol_name("_sam")
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$181, DW_AT_location[DW_OP_bregx 0x24 16]
$C$DW$182	.dwtag  DW_TAG_variable, DW_AT_name("temp")
	.dwattr $C$DW$182, DW_AT_TI_symbol_name("_temp")
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$182, DW_AT_location[DW_OP_bregx 0x24 18]
	.dwpsn	file "./adpcm_encode_test.c",line 360,column 17,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV dbl(*AR3(#8)), AC1 ; |360| 
        OR #0, AC1, AC0
        ADD AC1 << #1, AC0 ; |360| 
        SUB dbl(*AR3(#10)), AC0, AC0 ; |360| 
        SFTS AC0, #-1 ; |360| 
        MOV AC0, dbl(*SP(#16)) ; |360| 
	.dwpsn	file "./adpcm_encode_test.c",line 361,column 17,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV dbl(*SP(#16)), AC1 ; |361| 
        MOV dbl(*AR3(short(#6))), AC0 ; |361| 
$C$DW$183	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$183, DW_AT_low_pc(0x00)
	.dwattr $C$DW$183, DW_AT_name("__mpyli")
	.dwattr $C$DW$183, DW_AT_TI_call
        CALL #__mpyli ; |361| 
                                        ; call occurs [#__mpyli] ; |361| 
        ADD #512, AC0, AC0 ; |361| 
        SFTS AC0, #-10, AC0 ; |361| 
        SUB AC0, dbl(*SP(#10)), AC0 ; |361| 
        MOV AC0, dbl(*SP(#18)) ; |361| 
	.dwpsn	file "./adpcm_encode_test.c",line 363,column 9,is_stmt
        MOV dbl(*SP(#16)), AC0 ; |363| 
        BCC $C$L54,AC0 == #0 ; |363| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |363| 
        MOV dbl(*SP(#18)), AC0 ; |363| 
        BCC $C$L54,AC0 == #0 ; |363| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |363| 
	.dwpsn	file "./adpcm_encode_test.c",line 364,column 13,is_stmt
        MOV dbl(*SP(#16)), AC1 ; |364| 
        MOV dbl(*SP(#8)), XAR3
        MOV dbl(*SP(#18)), AC0 ; |364| 
        XOR AC1, AC0 ; |364| 
        SFTS AC0, #-29, AC0 ; |364| 
        AND #0x0004, AC0, AC0 ; |364| 
        SUB AC0, dbl(*AR3(short(#6))), AC0 ; |364| 
        ADD #2, AC0 ; |364| 
        MOV AC0, dbl(*AR3(short(#6))) ; |364| 
$C$L54:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 365,column 9,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV dbl(*SP(#8)), XAR2

        AADD #10, AR2 ; |365| 
||      AADD #8, AR3 ; |365| 

        MOV dbl(*AR3), dbl(*AR2) ; |365| 
	.dwpsn	file "./adpcm_encode_test.c",line 366,column 9,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV dbl(*SP(#10)), AC0 ; |366| 
        MOV AC0, dbl(*AR3(#8)) ; |366| 
	.dwpsn	file "./adpcm_encode_test.c",line 368,column 9,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV #256, AC0 ; |368| 
        MOV dbl(*AR3(short(#6))), AC1 ; |368| 
        CMP AC1 >= AC0, TC1 ; |368| 
        BCC $C$L55,TC1 ; |368| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |368| 
        MOV #1024, AC0 ; |368| 
        B $C$L56  ; |368| 
                                        ; branch occurs ; |368| 
$C$L55:    
	CALL #_coverage_log;
        MOV dbl(*AR3(short(#6))), AC1 ; |368| 
        MOV #1536, AC0 ; |368| 
        SUB AC1 << #1, AC0 ; |368| 
$C$L56:    
        MOV AC0, dbl(*AR3(#12)) ; |368| 
	.dwendtag $C$DW$180

	.dwpsn	file "./adpcm_encode_test.c",line 369,column 5,is_stmt
        B $C$L58  ; |369| 
                                        ; branch occurs ; |369| 
$C$L57:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 370,column 10,is_stmt
        CMP *AR3(#34) == #1, TC1 ; |370| 
        BCC $C$L58,!TC1 ; |370| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |370| 
	.dwpsn	file "./adpcm_encode_test.c",line 371,column 9,is_stmt
        MOV *AR3(#35), AC0 ; |371| 
        MOV dbl(*SP(#8)), XAR3
        MOV AC0, dbl(*AR3(#12)) ; |371| 
$C$L58:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 373,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#34), AR1 ; |373| 
        BCC $C$L59,AR1 == #0 ; |373| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |373| 
	.dwpsn	file "./adpcm_encode_test.c",line 374,column 9,is_stmt
        MOV dbl(*SP(#8)), XAR0
        MOV dbl(*SP(#10)), AC0 ; |374| 
$C$DW$184	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$184, DW_AT_low_pc(0x00)
	.dwattr $C$DW$184, DW_AT_name("_noise_shape")
	.dwattr $C$DW$184, DW_AT_TI_call
        CALL #_noise_shape ; |374| 
                                        ; call occurs [#_noise_shape] ; |374| 
        MOV AC0, dbl(*SP(#10)) ; |374| 
$C$L59:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 376,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#33), AR1 ; |376| 

        AND #0x00ff, AR1, AR1 ; |376| 
||      MOV *SP(#12), AR2 ; |376| 

        CMP AR2 <= AR1, TC1 ; |376| 
        BCC $C$L60,TC1 ; |376| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |376| 
	.dwpsn	file "./adpcm_encode_test.c",line 377,column 9,is_stmt
        MOV *AR3(#33), AR1 ; |377| 
        AND #0x00ff, AR1, AC0 ; |377| 
        MOV AC0, *SP(#12) ; |377| 
$C$L60:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 379,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#8)), XAR0
        MOV dbl(*SP(#10)), AC0 ; |379| 
        MOV dbl(*SP(#4)), XAR1
        MOV *SP(#12), T1 ; |379| 
        AMAR *SP(#13), XAR2
        MOV dbl(*($C$FL3)), AC1 ; |379| 
        MOV *AR3(#32), T0 ; |379| 
$C$DW$185	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$185, DW_AT_low_pc(0x00)
	.dwattr $C$DW$185, DW_AT_name("_minimum_error")
	.dwattr $C$DW$185, DW_AT_TI_call
        CALL #_minimum_error ; |379| 
                                        ; call occurs [#_minimum_error] ; |379| 
	.dwpsn	file "./adpcm_encode_test.c",line 381,column 5,is_stmt
        BTST #0, *SP(#13), TC1 ; |381| 
        BCC $C$L61,!TC1 ; |381| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |381| 
	.dwpsn	file "./adpcm_encode_test.c",line 382,column 9,is_stmt
        MOV *SP(#14), AC0 ; |382| 
        BFXTR #0xfffc, AC0, AR1 ; |382| 
        ADD *SP(#15), AR1, AR1 ; |382| 
        MOV AR1, *SP(#15) ; |382| 
$C$L61:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 383,column 5,is_stmt
        BTST #1, *SP(#13), TC1 ; |383| 
        BCC $C$L62,!TC1 ; |383| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |383| 
	.dwpsn	file "./adpcm_encode_test.c",line 384,column 9,is_stmt
        MOV *SP(#14), AR1 ; |384| 
        SFTL AR1, #-1 ; |384| 
        ADD *SP(#15), AR1, AR1 ; |384| 
        MOV AR1, *SP(#15) ; |384| 
$C$L62:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 385,column 5,is_stmt
        BTST #2, *SP(#13), TC1 ; |385| 
        BCC $C$L63,!TC1 ; |385| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |385| 
	.dwpsn	file "./adpcm_encode_test.c",line 386,column 9,is_stmt
        MOV *SP(#14), AR1 ; |386| 
        ADD *SP(#15), AR1, AR1 ; |386| 
        MOV AR1, *SP(#15) ; |386| 
$C$L63:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 388,column 5,is_stmt
        BTST #3, *SP(#13), TC1 ; |388| 
        BCC $C$L64,!TC1 ; |388| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |388| 
	.dwpsn	file "./adpcm_encode_test.c",line 389,column 9,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV uns(*SP(#15)), AC0 ; |389| 
        SUB AC0, dbl(*AR3(short(#2))), AC0 ; |389| 
        MOV AC0, dbl(*AR3(short(#2))) ; |389| 
        B $C$L65  ; |389| 
                                        ; branch occurs ; |389| 
$C$L64:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 391,column 9,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV uns(*SP(#15)), AC0 ; |391| 
        ADD dbl(*AR3(short(#2))), AC0, AC0 ; |391| 
        MOV AC0, dbl(*AR3(short(#2))) ; |391| 
$C$L65:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 393,column 5,is_stmt
        MOV *SP(#13), AR1 ; |393| 
        AND #0x0007, AR1, T0 ; |393| 
        MOV dbl(*SP(#8)), XAR2
        AMOV #_index_table, XAR3 ; |393| 
        MOV *AR3(T0), AR1 ; |393| 
        ADD *AR2(#14), AR1, AR1 ; |393| 
        MOV AR1, *AR2(#14) ; |393| 
	.dwpsn	file "./adpcm_encode_test.c",line 394,column 5,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV #88, AR2 ; |394| 
        MOV *AR3(#14), AR1 ; |394| 
        CMP AR1 <= AR2, TC1 ; |394| 
        BCC $C$L66,TC1 ; |394| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |394| 
        MOV #88, *AR3(#14) ; |394| 
        B $C$L67  ; |394| 
                                        ; branch occurs ; |394| 
$C$L66:    
	CALL #_coverage_log;
        MOV *AR3(#14), AR1 ; |394| 
        BCC $C$L67,AR1 >= #0 ; |394| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |394| 
        MOV #0, *AR3(#14) ; |394| 
$C$L67:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 395,column 5,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV #32767, AC0 ; |395| 
        MOV dbl(*AR3(short(#2))), AC1 ; |395| 
        CMP AC1 <= AC0, TC1 ; |395| 
        BCC $C$L68,TC1 ; |395| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |395| 
        MOV AC0, dbl(*AR3(short(#2))) ; |395| 
        B $C$L69  ; |395| 
                                        ; branch occurs ; |395| 
$C$L68:    
	CALL #_coverage_log;
        MOV #-32768, AC0 ; |395| 
        MOV dbl(*AR3(short(#2))), AC1 ; |395| 
        CMP AC1 >= AC0, TC1 ; |395| 
        BCC $C$L69,TC1 ; |395| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |395| 
        MOV AC0, dbl(*AR3(short(#2))) ; |395| 
$C$L69:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 397,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#34), AR1 ; |397| 
        BCC $C$L70,AR1 == #0 ; |397| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |397| 
	.dwpsn	file "./adpcm_encode_test.c",line 398,column 9,is_stmt
        MOV dbl(*SP(#8)), XAR2
        MOV dbl(*SP(#8)), XAR3
        MOV dbl(*AR2(short(#2))), AC0 ; |398| 
        ADD dbl(*AR3(short(#4))), AC0, AC0 ; |398| 
        MOV AC0, dbl(*AR3(short(#4))) ; |398| 
$C$L70:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 400,column 5,is_stmt
        MOV *SP(#13), T0 ; |400| 
	.dwpsn	file "./adpcm_encode_test.c",line 401,column 1,is_stmt
        AADD #21, SP
	.dwcfi	cfa_offset, 1
$C$DW$186	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$186, DW_AT_low_pc(0x00)
	.dwattr $C$DW$186, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$165, DW_AT_TI_end_file("./adpcm_encode_test.c")
	.dwattr $C$DW$165, DW_AT_TI_end_line(0x191)
	.dwattr $C$DW$165, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$165

	.sect	".text"

$C$DW$187	.dwtag  DW_TAG_subprogram, DW_AT_name("encode_chunks")
	.dwattr $C$DW$187, DW_AT_low_pc(_encode_chunks)
	.dwattr $C$DW$187, DW_AT_high_pc(0x00)
	.dwattr $C$DW$187, DW_AT_TI_symbol_name("_encode_chunks")
	.dwattr $C$DW$187, DW_AT_TI_begin_file("./adpcm_encode_test.c")
	.dwattr $C$DW$187, DW_AT_TI_begin_line(0x193)
	.dwattr $C$DW$187, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$187, DW_AT_TI_max_frame_size(0x12)
	.dwpsn	file "./adpcm_encode_test.c",line 404,column 1,is_stmt,address _encode_chunks

	.dwfde $C$DW$CIE, _encode_chunks
$C$DW$188	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pcnxt")
	.dwattr $C$DW$188, DW_AT_TI_symbol_name("_pcnxt")
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$188, DW_AT_location[DW_OP_reg17]
$C$DW$189	.dwtag  DW_TAG_formal_parameter, DW_AT_name("outbuf")
	.dwattr $C$DW$189, DW_AT_TI_symbol_name("_outbuf")
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$189, DW_AT_location[DW_OP_reg19]
$C$DW$190	.dwtag  DW_TAG_formal_parameter, DW_AT_name("outbufsize")
	.dwattr $C$DW$190, DW_AT_TI_symbol_name("_outbufsize")
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$190, DW_AT_location[DW_OP_reg21]
$C$DW$191	.dwtag  DW_TAG_formal_parameter, DW_AT_name("inbuf")
	.dwattr $C$DW$191, DW_AT_TI_symbol_name("_inbuf")
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$191, DW_AT_location[DW_OP_reg23]
$C$DW$192	.dwtag  DW_TAG_formal_parameter, DW_AT_name("inbufcount")
	.dwattr $C$DW$192, DW_AT_TI_symbol_name("_inbufcount")
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$192, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: encode_chunks                                                *
;*                                                                             *
;*   Function Uses Regs : AC0,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,   *
;*                        AR5,XAR5,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL    *
;*   Save On Entry Regs : AR5                                                  *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 18 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (15 local values)                                    *
;*                        (1 register save area)                               *
;*   Min System Stack   : 2 words                                              *
;*******************************************************************************
_encode_chunks:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        PSHBOTH XAR5
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 26, -2
        AADD #-16, SP
	.dwcfi	cfa_offset, 18
$C$DW$193	.dwtag  DW_TAG_variable, DW_AT_name("pcnxt")
	.dwattr $C$DW$193, DW_AT_TI_symbol_name("_pcnxt")
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$193, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$194	.dwtag  DW_TAG_variable, DW_AT_name("outbuf")
	.dwattr $C$DW$194, DW_AT_TI_symbol_name("_outbuf")
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$194, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$195	.dwtag  DW_TAG_variable, DW_AT_name("outbufsize")
	.dwattr $C$DW$195, DW_AT_TI_symbol_name("_outbufsize")
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$195, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$196	.dwtag  DW_TAG_variable, DW_AT_name("inbuf")
	.dwattr $C$DW$196, DW_AT_TI_symbol_name("_inbuf")
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$196, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$197	.dwtag  DW_TAG_variable, DW_AT_name("inbufcount")
	.dwattr $C$DW$197, DW_AT_TI_symbol_name("_inbufcount")
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$197, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$198	.dwtag  DW_TAG_variable, DW_AT_name("pcmbuf")
	.dwattr $C$DW$198, DW_AT_TI_symbol_name("_pcmbuf")
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$198, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$199	.dwtag  DW_TAG_variable, DW_AT_name("chunks")
	.dwattr $C$DW$199, DW_AT_TI_symbol_name("_chunks")
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$199, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$200	.dwtag  DW_TAG_variable, DW_AT_name("ch")
	.dwattr $C$DW$200, DW_AT_TI_symbol_name("_ch")
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$200, DW_AT_location[DW_OP_bregx 0x24 13]
$C$DW$201	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$201, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$201, DW_AT_location[DW_OP_bregx 0x24 14]
        MOV T0, *SP(#8) ; |404| 
        MOV XAR3, dbl(*SP(#6))
        MOV XAR2, dbl(*SP(#4))
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./adpcm_encode_test.c",line 408,column 5,is_stmt
        MOV *SP(#8), AR1 ; |408| 
        SUB #1, AR1, AR1 ; |408| 
        MOV mmap(AR1), AC1 ; |408| 
        SFTL AC1, #-29, AC0 ; |408| 
        ADD AC1, AC0 ; |408| 
        SFTS AC0, #-3, AC0 ; |408| 
        MOV AC0, *SP(#12) ; |408| 
	.dwpsn	file "./adpcm_encode_test.c",line 409,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*SP(#0)), XAR2
        MOV *SP(#12) << #2, AC0 ; |409| 

        MOV *AR3, AC1 ; |409| 
||      MOV AC0, T1 ; |409| 

        MACM *AR2(#32), T1, AC1, AC0 ; |409| 
        MOV AC0, *AR3 ; |409| 
	.dwpsn	file "./adpcm_encode_test.c",line 411,column 5,is_stmt
        MOV *SP(#12), AR1 ; |411| 
        SUB #1, AR1, AR2 ; |411| 
        MOV AR2, *SP(#12) ; |411| 
        BCC $C$L76,AR1 == #0 ; |411| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |411| 
$C$L71:    
	CALL #_coverage_log;
$C$DW$L$_encode_chunks$2$B:
	.dwpsn	file "./adpcm_encode_test.c",line 413,column 14,is_stmt
        MOV #0, *SP(#13) ; |413| 
	.dwpsn	file "./adpcm_encode_test.c",line 413,column 22,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#13), AR2 ; |413| 
        MOV *AR3(#32), AR1 ; |413| 
        CMP AR2 >= AR1, TC1 ; |413| 
        BCC $C$L75,TC1 ; |413| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |413| 
$C$DW$L$_encode_chunks$2$E:
$C$L72:    
	CALL #_coverage_log;
$C$DW$L$_encode_chunks$3$B:
	.dwpsn	file "./adpcm_encode_test.c",line 415,column 13,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV AR2, AR1
        MOV dbl(*AR3), XAR3

        MOV XAR3, dbl(*SP(#10))
||      AADD AR1, AR3 ; |415| 

	.dwpsn	file "./adpcm_encode_test.c",line 417,column 18,is_stmt
        MOV #0, *SP(#14) ; |417| 
	.dwpsn	file "./adpcm_encode_test.c",line 417,column 25,is_stmt

        MOV *SP(#14), AR1 ; |417| 
||      MOV #4, AR2

        CMP AR1 >= AR2, TC1 ; |417| 
        BCC $C$L74,TC1 ; |417| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |417| 
$C$DW$L$_encode_chunks$3$E:
$C$L73:    
	CALL #_coverage_log;
$C$DW$L$_encode_chunks$4$B:
	.dwpsn	file "./adpcm_encode_test.c",line 419,column 17,is_stmt
        MOV #3, AR1
        SUB *SP(#14), AR1, AC0 ; |419| 
        MOV dbl(*SP(#0)), XAR0

        SFTL AC0, #1 ; |419| 
||      MOV *SP(#12), AC1 ; |419| 

        MOV dbl(*SP(#10)), XAR1

        ADD AC1 << #3, AC0 ; |419| 
||      MOV *SP(#13), T0 ; |419| 

        ADD #2, AC0, T1 ; |419| 
$C$DW$202	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$202, DW_AT_low_pc(0x00)
	.dwattr $C$DW$202, DW_AT_name("_encode_sample")
	.dwattr $C$DW$202, DW_AT_TI_call
        CALL #_encode_sample ; |419| 
                                        ; call occurs [#_encode_sample] ; |419| 
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3), XAR3
        MOV T0, *AR3 ; |419| 
	.dwpsn	file "./adpcm_encode_test.c",line 420,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#32), AR1 ; |420| 
        MOV dbl(*SP(#10)), XAR3

        MOV XAR3, dbl(*SP(#10))
||      AADD AR1, AR3 ; |420| 

	.dwpsn	file "./adpcm_encode_test.c",line 421,column 17,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #3, AR1
        MOV dbl(*SP(#0)), XAR0
        SUB *SP(#14), AR1, AC0 ; |421| 

        SFTL AC0, #1 ; |421| 
||      MOV *SP(#12), AC1 ; |421| 

        MOV dbl(*AR3), XAR5
        MOV dbl(*SP(#10)), XAR1

        ADD AC1 << #3, AC0 ; |421| 
||      MOV *SP(#13), T0 ; |421| 

        ADD #1, AC0, T1 ; |421| 
$C$DW$203	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$203, DW_AT_low_pc(0x00)
	.dwattr $C$DW$203, DW_AT_name("_encode_sample")
	.dwattr $C$DW$203, DW_AT_TI_call
        CALL #_encode_sample ; |421| 
                                        ; call occurs [#_encode_sample] ; |421| 

        MOV *AR5, AC0 ; |421| 
||      MOV T0, AC1 ; |421| 

        OR AC1 << #4, AC0 ; |421| 
        MOV AC0, *AR5 ; |421| 
	.dwpsn	file "./adpcm_encode_test.c",line 422,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#32), AR1 ; |422| 
        MOV dbl(*SP(#10)), XAR3

        MOV XAR3, dbl(*SP(#10))
||      AADD AR1, AR3 ; |422| 

	.dwpsn	file "./adpcm_encode_test.c",line 423,column 17,is_stmt
        MOV dbl(*SP(#2)), XAR2
        MOV dbl(*AR2), XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*AR2)
	.dwpsn	file "./adpcm_encode_test.c",line 417,column 32,is_stmt
        ADD #1, *SP(#14) ; |417| 
	.dwpsn	file "./adpcm_encode_test.c",line 417,column 25,is_stmt

        MOV *SP(#14), AR1 ; |417| 
||      MOV #4, AR2

        CMP AR1 < AR2, TC1 ; |417| 
        BCC $C$L73,TC1 ; |417| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |417| 
$C$DW$L$_encode_chunks$4$E:
$C$L74:    
	CALL #_coverage_log;
$C$DW$L$_encode_chunks$5$B:
	.dwpsn	file "./adpcm_encode_test.c",line 413,column 48,is_stmt
        ADD #1, *SP(#13) ; |413| 
	.dwpsn	file "./adpcm_encode_test.c",line 413,column 22,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#13), AR2 ; |413| 
        MOV *AR3(#32), AR1 ; |413| 
        CMP AR2 < AR1, TC1 ; |413| 
        BCC $C$L72,TC1 ; |413| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |413| 
$C$DW$L$_encode_chunks$5$E:
$C$L75:    
	CALL #_coverage_log;
$C$DW$L$_encode_chunks$6$B:
	.dwpsn	file "./adpcm_encode_test.c",line 427,column 9,is_stmt
        MOV dbl(*SP(#6)), XAR2
        MOV *AR3(#32) << #3, AC0 ; |427| 
        MOV AC0, AR1 ; |427| 
        MOV dbl(*AR2), XAR3

        MOV XAR3, dbl(*AR2)
||      AADD AR1, AR3 ; |427| 

	.dwpsn	file "./adpcm_encode_test.c",line 428,column 5,is_stmt
        MOV *SP(#12), AR1 ; |428| 
        SUB #1, AR1, AR2 ; |428| 
        MOV AR2, *SP(#12) ; |428| 
        BCC $C$L71,AR1 != #0 ; |428| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |428| 
$C$DW$L$_encode_chunks$6$E:
	.dwpsn	file "./adpcm_encode_test.c",line 429,column 1,is_stmt
$C$L76:    
	CALL #_coverage_log;
        AADD #16, SP
	.dwcfi	cfa_offset, 2
        POPBOTH XAR5
	.dwcfi	restore_reg, 26
	.dwcfi	cfa_offset, 1
$C$DW$204	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$204, DW_AT_low_pc(0x00)
	.dwattr $C$DW$204, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$205	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$205, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/adpcm_encode/adpcm_encode_test.asm:$C$L71:1:1738600387")
	.dwattr $C$DW$205, DW_AT_TI_begin_file("./adpcm_encode_test.c")
	.dwattr $C$DW$205, DW_AT_TI_begin_line(0x19b)
	.dwattr $C$DW$205, DW_AT_TI_end_line(0x1ac)
$C$DW$206	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$206, DW_AT_low_pc($C$DW$L$_encode_chunks$2$B)
	.dwattr $C$DW$206, DW_AT_high_pc($C$DW$L$_encode_chunks$2$E)
$C$DW$207	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$207, DW_AT_low_pc($C$DW$L$_encode_chunks$6$B)
	.dwattr $C$DW$207, DW_AT_high_pc($C$DW$L$_encode_chunks$6$E)

$C$DW$208	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$208, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/adpcm_encode/adpcm_encode_test.asm:$C$L72:2:1738600387")
	.dwattr $C$DW$208, DW_AT_TI_begin_file("./adpcm_encode_test.c")
	.dwattr $C$DW$208, DW_AT_TI_begin_line(0x19d)
	.dwattr $C$DW$208, DW_AT_TI_end_line(0x1a9)
$C$DW$209	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$209, DW_AT_low_pc($C$DW$L$_encode_chunks$3$B)
	.dwattr $C$DW$209, DW_AT_high_pc($C$DW$L$_encode_chunks$3$E)
$C$DW$210	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$210, DW_AT_low_pc($C$DW$L$_encode_chunks$5$B)
	.dwattr $C$DW$210, DW_AT_high_pc($C$DW$L$_encode_chunks$5$E)

$C$DW$211	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$211, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/adpcm_encode/adpcm_encode_test.asm:$C$L73:3:1738600387")
	.dwattr $C$DW$211, DW_AT_TI_begin_file("./adpcm_encode_test.c")
	.dwattr $C$DW$211, DW_AT_TI_begin_line(0x1a1)
	.dwattr $C$DW$211, DW_AT_TI_end_line(0x1a8)
$C$DW$212	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$212, DW_AT_low_pc($C$DW$L$_encode_chunks$4$B)
	.dwattr $C$DW$212, DW_AT_high_pc($C$DW$L$_encode_chunks$4$E)
	.dwendtag $C$DW$211

	.dwendtag $C$DW$208

	.dwendtag $C$DW$205

	.dwattr $C$DW$187, DW_AT_TI_end_file("./adpcm_encode_test.c")
	.dwattr $C$DW$187, DW_AT_TI_end_line(0x1ad)
	.dwattr $C$DW$187, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$187

	.sect	".text"
	.global	_adpcm_encode_block

$C$DW$213	.dwtag  DW_TAG_subprogram, DW_AT_name("adpcm_encode_block")
	.dwattr $C$DW$213, DW_AT_low_pc(_adpcm_encode_block)
	.dwattr $C$DW$213, DW_AT_high_pc(0x00)
	.dwattr $C$DW$213, DW_AT_TI_symbol_name("_adpcm_encode_block")
	.dwattr $C$DW$213, DW_AT_external
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$213, DW_AT_TI_begin_file("./adpcm_encode_test.c")
	.dwattr $C$DW$213, DW_AT_TI_begin_line(0x1be)
	.dwattr $C$DW$213, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$213, DW_AT_TI_max_frame_size(0xd8)
	.dwpsn	file "./adpcm_encode_test.c",line 447,column 1,is_stmt,address _adpcm_encode_block

	.dwfde $C$DW$CIE, _adpcm_encode_block
$C$DW$214	.dwtag  DW_TAG_formal_parameter, DW_AT_name("p")
	.dwattr $C$DW$214, DW_AT_TI_symbol_name("_p")
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$214, DW_AT_location[DW_OP_reg17]
$C$DW$215	.dwtag  DW_TAG_formal_parameter, DW_AT_name("outbuf")
	.dwattr $C$DW$215, DW_AT_TI_symbol_name("_outbuf")
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$215, DW_AT_location[DW_OP_reg19]
$C$DW$216	.dwtag  DW_TAG_formal_parameter, DW_AT_name("outbufsize")
	.dwattr $C$DW$216, DW_AT_TI_symbol_name("_outbufsize")
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$216, DW_AT_location[DW_OP_reg21]
$C$DW$217	.dwtag  DW_TAG_formal_parameter, DW_AT_name("inbuf")
	.dwattr $C$DW$217, DW_AT_TI_symbol_name("_inbuf")
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$217, DW_AT_location[DW_OP_reg23]
$C$DW$218	.dwtag  DW_TAG_formal_parameter, DW_AT_name("inbufcount")
	.dwattr $C$DW$218, DW_AT_TI_symbol_name("_inbufcount")
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$218, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: adpcm_encode_block                                           *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,*
;*                        XAR3,FP,XFP,SP,CSR,RPTC,CARRY,TC1,M40,SATA,SATD,RDM, *
;*                        FRCT,SMUL                                            *
;*   Save On Entry Regs : FP                                                   *
;*   Stack Frame        : Full (Frame Pointer in AR6, w/ debug)                *
;*   Total Frame Size   : 216 words                                            *
;*                        (1 return address/alignment)                         *
;*                        (214 local values)                                   *
;*                        (1 register save area)                               *
;*   Min System Stack   : 2 words                                              *
;*******************************************************************************
_adpcm_encode_block:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        PSHBOTH XFP
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 32, -2
        ADD #-214, mmap(SP)
        AMAR *SP(#0), XFP
	.dwcfi	cfa_offset, 216
$C$DW$219	.dwtag  DW_TAG_variable, DW_AT_name("p")
	.dwattr $C$DW$219, DW_AT_TI_symbol_name("_p")
	.dwattr $C$DW$219, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$219, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$220	.dwtag  DW_TAG_variable, DW_AT_name("outbuf")
	.dwattr $C$DW$220, DW_AT_TI_symbol_name("_outbuf")
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$220, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$221	.dwtag  DW_TAG_variable, DW_AT_name("outbufsize")
	.dwattr $C$DW$221, DW_AT_TI_symbol_name("_outbufsize")
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$221, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$222	.dwtag  DW_TAG_variable, DW_AT_name("inbuf")
	.dwattr $C$DW$222, DW_AT_TI_symbol_name("_inbuf")
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$222, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$223	.dwtag  DW_TAG_variable, DW_AT_name("inbufcount")
	.dwattr $C$DW$223, DW_AT_TI_symbol_name("_inbufcount")
	.dwattr $C$DW$223, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$223, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$224	.dwtag  DW_TAG_variable, DW_AT_name("pcnxt")
	.dwattr $C$DW$224, DW_AT_TI_symbol_name("_pcnxt")
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$224, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$225	.dwtag  DW_TAG_variable, DW_AT_name("depth")
	.dwattr $C$DW$225, DW_AT_TI_symbol_name("_depth")
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$225, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$226	.dwtag  DW_TAG_variable, DW_AT_name("ch")
	.dwattr $C$DW$226, DW_AT_TI_symbol_name("_ch")
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$226, DW_AT_location[DW_OP_bregx 0x24 13]
$C$DW$227	.dwtag  DW_TAG_variable, DW_AT_name("tindex")
	.dwattr $C$DW$227, DW_AT_TI_symbol_name("_tindex")
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$227, DW_AT_location[DW_OP_bregx 0x24 14]
        MOV T0, *SP(#8) ; |447| 
        MOV XAR3, dbl(*SP(#6))
        MOV XAR2, dbl(*SP(#4))
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./adpcm_encode_test.c",line 448,column 27,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, dbl(*SP(#10))
	.dwpsn	file "./adpcm_encode_test.c",line 449,column 9,is_stmt
        MOV *SP(#8), AR1 ; |449| 
        SUB #1, AR1 ; |449| 
        MOV AR1, *SP(#12) ; |449| 
	.dwpsn	file "./adpcm_encode_test.c",line 451,column 6,is_stmt
        MOV #0, *SP(#14) ; |451| 
	.dwpsn	file "./adpcm_encode_test.c",line 453,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #0, *AR3 ; |453| 
	.dwpsn	file "./adpcm_encode_test.c",line 455,column 5,is_stmt
        MOV *SP(#8), AR1 ; |455| 
        BCC $C$L77,AR1 != #0 ; |455| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |455| 
	.dwpsn	file "./adpcm_encode_test.c",line 456,column 9,is_stmt
        MOV #1, T0
        B $C$L95  ; |456| 
                                        ; branch occurs ; |456| 
$C$L77:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 458,column 5,is_stmt
        MOV dbl(*SP(#10)), XAR3
        MOV *AR3(#33), AR1 ; |458| 

        AND #0x00ff, AR1, AR1 ; |458| 
||      MOV *SP(#12), AR2 ; |458| 

        CMP AR2 <= AR1, TC1 ; |458| 
        BCC $C$L78,TC1 ; |458| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |458| 
	.dwpsn	file "./adpcm_encode_test.c",line 459,column 9,is_stmt
        MOV *AR3(#33), AR1 ; |459| 
        AND #0x00ff, AR1, AC0 ; |459| 
        MOV AC0, *SP(#12) ; |459| 
$C$L78:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 461,column 10,is_stmt
        MOV #0, *SP(#13) ; |461| 
	.dwpsn	file "./adpcm_encode_test.c",line 461,column 18,is_stmt
        MOV dbl(*SP(#10)), XAR3
        MOV *SP(#13), AR2 ; |461| 
        MOV *AR3(#32), AR1 ; |461| 
        CMP AR2 >= AR1, TC1 ; |461| 
        BCC $C$L80,TC1 ; |461| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |461| 
$C$L79:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_encode_block$6$B:
	.dwpsn	file "./adpcm_encode_test.c",line 462,column 9,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV *AR3+, AR1 ; |462| 
        MOV XAR3, dbl(*SP(#6))
        MOV dbl(*SP(#10)), XAR3
        MOV *SP(#13) << #4, AC0 ; |462| 

        MOV AC0, AR1 ; |462| 
||      MOV AR1, AC1

        AADD AR1, AR3 ; |462| 
        MOV AC1, dbl(*AR3(short(#2))) ; |462| 
	.dwpsn	file "./adpcm_encode_test.c",line 461,column 44,is_stmt
        ADD #1, *SP(#13) ; |461| 
	.dwpsn	file "./adpcm_encode_test.c",line 461,column 18,is_stmt
        MOV dbl(*SP(#10)), XAR3
        MOV *SP(#13), AR2 ; |461| 
        MOV *AR3(#32), AR1 ; |461| 
        CMP AR2 < AR1, TC1 ; |461| 
        BCC $C$L79,TC1 ; |461| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |461| 
$C$DW$L$_adpcm_encode_block$6$E:
$C$L80:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 468,column 5,is_stmt
        MOV *AR3(#14), AR1 ; |468| 
        BCC $C$L81,AR1 < #0 ; |468| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |468| 

        MOV *SP(#12), AR1 ; |468| 
||      MOV #3, AR2

        CMP AR1 < AR2, TC1 ; |468| 
        BCC $C$L92,TC1 ; |468| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |468| 
$C$L81:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 469,column 14,is_stmt
        MOV #0, *SP(#13) ; |469| 
	.dwpsn	file "./adpcm_encode_test.c",line 469,column 22,is_stmt
        MOV dbl(*SP(#10)), XAR3
        MOV *SP(#13), AR2 ; |469| 
        MOV *AR3(#32), AR1 ; |469| 
        CMP AR2 >= AR1, TC1 ; |469| 
        BCC $C$L92,TC1 ; |469| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |469| 
$C$L82:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_encode_block$10$B:

$C$DW$228	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$229	.dwtag  DW_TAG_variable, DW_AT_name("min_error")
	.dwattr $C$DW$229, DW_AT_TI_symbol_name("_min_error")
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$229, DW_AT_location[DW_OP_bregx 0x24 16]
$C$DW$230	.dwtag  DW_TAG_variable, DW_AT_name("error_per_index")
	.dwattr $C$DW$230, DW_AT_TI_symbol_name("_error_per_index")
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$230, DW_AT_location[DW_OP_bregx 0x24 18]
$C$DW$231	.dwtag  DW_TAG_variable, DW_AT_name("best_index")
	.dwattr $C$DW$231, DW_AT_TI_symbol_name("_best_index")
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$231, DW_AT_location[DW_OP_bregx 0x24 196]
	.dwpsn	file "./adpcm_encode_test.c",line 471,column 25,is_stmt
        MOV dbl(*($C$FL3)), AC0 ; |471| 
        MOV AC0, dbl(*SP(#16)) ; |471| 
	.dwpsn	file "./adpcm_encode_test.c",line 475,column 13,is_stmt

        MOV *SP(#12), AR1 ; |475| 
||      MOV #3, AR2

        CMP AR1 >= AR2, TC1 ; |475| 
        BCC $C$L83,TC1 ; |475| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |475| 
$C$DW$L$_adpcm_encode_block$10$E:
$C$DW$L$_adpcm_encode_block$11$B:
	.dwpsn	file "./adpcm_encode_test.c",line 476,column 17,is_stmt
        MOV #3, *SP(#12) ; |476| 
$C$DW$L$_adpcm_encode_block$11$E:
$C$L83:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_encode_block$12$B:
	.dwpsn	file "./adpcm_encode_test.c",line 478,column 18,is_stmt
        MOV #0, *SP(#14) ; |478| 
	.dwpsn	file "./adpcm_encode_test.c",line 478,column 30,is_stmt
        MOV #88, AR2 ; |478| 
        MOV *SP(#14), AR1 ; |478| 
        CMP AR1 > AR2, TC1 ; |478| 
        BCC $C$L87,TC1 ; |478| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |478| 
$C$DW$L$_adpcm_encode_block$12$E:
$C$L84:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_encode_block$13$B:

$C$DW$232	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$233	.dwtag  DW_TAG_variable, DW_AT_name("chan")
	.dwattr $C$DW$233, DW_AT_TI_symbol_name("_chan")
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$233, DW_AT_location[DW_OP_bregx 0x24 198]
	.dwpsn	file "./adpcm_encode_test.c",line 480,column 38,is_stmt
        MOV dbl(*SP(#10)), XAR3
        MOV *SP(#13) << #4, AC0 ; |480| 
        MOV AC0, AR1 ; |480| 
        AMAR *SP(#0), XAR2
        AMAR *+AR2(#198)

        RPT #7    ; |480| 
||      AADD AR1, AR3 ; |480| 

                                            ; loop starts ; |480| 
$C$DW$L$_adpcm_encode_block$13$E:
$C$L85:    
$C$DW$L$_adpcm_encode_block$14$B:
            MOV dbl(*AR3+), dbl(*AR2+) ; |480| 
                                        ; loop ends ; |480| 
$C$DW$L$_adpcm_encode_block$14$E:
$C$L86:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_encode_block$15$B:
	.dwpsn	file "./adpcm_encode_test.c",line 482,column 17,is_stmt
        MOV *SP(#14), AR1 ; |482| 
        MOV AR1, *FP(#212) ; |482| 
	.dwpsn	file "./adpcm_encode_test.c",line 483,column 17,is_stmt
        MOV #0, AC0 ; |483| 
        MOV AC0, dbl(*FP(#210)) ; |483| 
	.dwpsn	file "./adpcm_encode_test.c",line 484,column 17,is_stmt
        MOV dbl(*SP(#10)), XAR3
        MOV *SP(#13), T0 ; |484| 
        MOV *AR3(#32), AR2 ; |484| 
        MOV dbl(*SP(#6)), XAR3
        MOV dbl(*SP(#6)), XAR1

        MOV T0, AR3
||      MOV *AR3(T0), AC0 ; |484| 

        MOV AR2, T0 ; |484| 
        AMAR *SP(#0), XAR0
        MOV dbl(*($C$FL3)), AC1 ; |484| 
        AMAR *+AR0(#198)
        AMOV #0, XAR2 ; |484| 

        AADD AR3, AR1 ; |484| 
||      MOV *SP(#12), T1 ; |484| 

$C$DW$234	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$234, DW_AT_low_pc(0x00)
	.dwattr $C$DW$234, DW_AT_name("_minimum_error")
	.dwattr $C$DW$234, DW_AT_TI_call
        CALL #_minimum_error ; |484| 
                                        ; call occurs [#_minimum_error] ; |484| 
        MOV *SP(#14), T0 ; |484| 
        SFTL T0, #1 ; |484| 
        AMAR *SP(#18), XAR3
        MOV AC0, dbl(*AR3(T0)) ; |484| 
	.dwendtag $C$DW$232

	.dwpsn	file "./adpcm_encode_test.c",line 478,column 44,is_stmt
        ADD #1, *SP(#14) ; |478| 
	.dwpsn	file "./adpcm_encode_test.c",line 478,column 30,is_stmt
        MOV #88, AR2 ; |478| 
        MOV *SP(#14), AR1 ; |478| 
        CMP AR1 <= AR2, TC1 ; |478| 
        BCC $C$L84,TC1 ; |478| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |478| 
$C$DW$L$_adpcm_encode_block$15$E:
$C$L87:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_encode_block$16$B:
	.dwpsn	file "./adpcm_encode_test.c",line 489,column 18,is_stmt
        MOV #0, *SP(#14) ; |489| 
	.dwpsn	file "./adpcm_encode_test.c",line 489,column 30,is_stmt
        MOV #87, AR2 ; |489| 
        MOV *SP(#14), AR1 ; |489| 
        CMP AR1 > AR2, TC1 ; |489| 
        BCC $C$L91,TC1 ; |489| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |489| 
$C$DW$L$_adpcm_encode_block$16$E:
$C$L88:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_encode_block$17$B:

$C$DW$235	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$236	.dwtag  DW_TAG_variable, DW_AT_name("terror")
	.dwattr $C$DW$236, DW_AT_TI_symbol_name("_terror")
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$236, DW_AT_location[DW_OP_bregx 0x24 198]
	.dwpsn	file "./adpcm_encode_test.c",line 491,column 29,is_stmt
        MOV AR1, T0
        SFTL T0, #1 ; |491| 
        AMAR *SP(#18), XAR3
        MOV dbl(*AR3(T0)), AC0 ; |491| 
        MOV AC0, dbl(*FP(#198)) ; |491| 
	.dwpsn	file "./adpcm_encode_test.c",line 493,column 17,is_stmt
        MOV *SP(#14), AR1 ; |493| 
        BCC $C$L89,AR1 == #0 ; |493| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |493| 
$C$DW$L$_adpcm_encode_block$17$E:
$C$DW$L$_adpcm_encode_block$18$B:
	.dwpsn	file "./adpcm_encode_test.c",line 494,column 21,is_stmt
        MOV AR1, T0
        SFTL T0, #1 ; |494| 
        SUB #2, T0 ; |494| 
        AMAR *SP(#18), XAR3
        MOV dbl(*FP(#198)), AC1 ; |494| 
        MOV dbl(*AR3(T0)), AC0 ; |494| 
$C$DW$237	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$237, DW_AT_low_pc(0x00)
	.dwattr $C$DW$237, DW_AT_name("__addd")
	.dwattr $C$DW$237, DW_AT_TI_call
        CALL #__addd ; |494| 
                                        ; call occurs [#__addd] ; |494| 
        MOV *SP(#14), T0 ; |494| 
        SFTL T0, #1 ; |494| 
        ADD #2, T0 ; |494| 
        AMAR *SP(#18), XAR3
        MOV dbl(*AR3(T0)), AC1 ; |494| 
$C$DW$238	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$238, DW_AT_low_pc(0x00)
	.dwattr $C$DW$238, DW_AT_name("__addd")
	.dwattr $C$DW$238, DW_AT_TI_call
        CALL #__addd ; |494| 
                                        ; call occurs [#__addd] ; |494| 
        MOV dbl(*($C$FL4)), AC1 ; |494| 
$C$DW$239	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$239, DW_AT_low_pc(0x00)
	.dwattr $C$DW$239, DW_AT_name("__divd")
	.dwattr $C$DW$239, DW_AT_TI_call
        CALL #__divd ; |494| 
                                        ; call occurs [#__divd] ; |494| 
        MOV AC0, dbl(*FP(#198)) ; |494| 
$C$DW$L$_adpcm_encode_block$18$E:
$C$L89:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_encode_block$19$B:
	.dwpsn	file "./adpcm_encode_test.c",line 496,column 17,is_stmt
        MOV dbl(*SP(#16)), AC1 ; |496| 
$C$DW$240	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$240, DW_AT_low_pc(0x00)
	.dwattr $C$DW$240, DW_AT_name("__cmpd")
	.dwattr $C$DW$240, DW_AT_TI_call
        CALL #__cmpd ; |496| 
                                        ; call occurs [#__cmpd] ; |496| 
        BCC $C$L90,T0 >= #0 ; |496| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |496| 
$C$DW$L$_adpcm_encode_block$19$E:
$C$DW$L$_adpcm_encode_block$20$B:
	.dwpsn	file "./adpcm_encode_test.c",line 498,column 21,is_stmt
        MOV *SP(#14), AR1 ; |498| 
        MOV AR1, *FP(#196) ; |498| 
	.dwpsn	file "./adpcm_encode_test.c",line 499,column 21,is_stmt
        MOV dbl(*FP(#198)), AC0 ; |499| 
        MOV AC0, dbl(*SP(#16)) ; |499| 
$C$DW$L$_adpcm_encode_block$20$E:
$C$L90:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_encode_block$21$B:
	.dwendtag $C$DW$235

	.dwpsn	file "./adpcm_encode_test.c",line 489,column 44,is_stmt
        ADD #1, *SP(#14) ; |489| 
	.dwpsn	file "./adpcm_encode_test.c",line 489,column 30,is_stmt
        MOV #87, AR2 ; |489| 
        MOV *SP(#14), AR1 ; |489| 
        CMP AR1 <= AR2, TC1 ; |489| 
        BCC $C$L88,TC1 ; |489| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |489| 
$C$DW$L$_adpcm_encode_block$21$E:
$C$L91:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_encode_block$22$B:
	.dwpsn	file "./adpcm_encode_test.c",line 503,column 13,is_stmt
        MOV dbl(*SP(#10)), XAR3
        MOV *SP(#13) << #4, AC0 ; |503| 
        MOV AC0, AR1 ; |503| 
        AADD AR1, AR3 ; |503| 
        MOV *FP(#196), AR1 ; |503| 
        MOV AR1, *AR3(#14) ; |503| 
	.dwendtag $C$DW$228

	.dwpsn	file "./adpcm_encode_test.c",line 469,column 48,is_stmt
        ADD #1, *SP(#13) ; |469| 
	.dwpsn	file "./adpcm_encode_test.c",line 469,column 22,is_stmt
        MOV dbl(*SP(#10)), XAR3
        MOV *SP(#13), AR2 ; |469| 
        MOV *AR3(#32), AR1 ; |469| 
        CMP AR2 < AR1, TC1 ; |469| 
        BCC $C$L82,TC1 ; |469| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |469| 
$C$DW$L$_adpcm_encode_block$22$E:
$C$L92:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 506,column 10,is_stmt
        MOV #0, *SP(#13) ; |506| 
	.dwpsn	file "./adpcm_encode_test.c",line 506,column 18,is_stmt
        MOV dbl(*SP(#10)), XAR3
        MOV *SP(#13), AR2 ; |506| 
        MOV *AR3(#32), AR1 ; |506| 
        CMP AR2 >= AR1, TC1 ; |506| 
        BCC $C$L94,TC1 ; |506| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |506| 
$C$L93:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_encode_block$24$B:
	.dwpsn	file "./adpcm_encode_test.c",line 508,column 9,is_stmt
        MOV *SP(#13) << #4, AC0 ; |508| 
        MOV AC0, AR1 ; |508| 
        AADD AR1, AR3 ; |508| 
        MOV *AR3(short(#3)), AR1 ; |508| 
        MOV dbl(*SP(#2)), XAR3
        MOV AR1, *AR3 ; |508| 
	.dwpsn	file "./adpcm_encode_test.c",line 509,column 9,is_stmt
        MOV dbl(*SP(#10)), XAR3
        MOV *SP(#13) << #4, AC0 ; |509| 
        MOV AC0, AR1 ; |509| 
        AADD AR1, AR3 ; |509| 
        MOV dbl(*AR3(short(#2))), AC0 ; |509| 
        MOV dbl(*SP(#2)), XAR3
        SFTS AC0, #-8, AC0 ; |509| 
        MOV AC0, *AR3(short(#1)) ; |509| 
	.dwpsn	file "./adpcm_encode_test.c",line 510,column 9,is_stmt
        MOV dbl(*SP(#10)), XAR3
        MOV *SP(#13) << #4, AC0 ; |510| 
        MOV AC0, AR1 ; |510| 
        AADD AR1, AR3 ; |510| 
        MOV *AR3(#14), AR1 ; |510| 
        MOV dbl(*SP(#2)), XAR3
        MOV AR1, *AR3(short(#2)) ; |510| 
	.dwpsn	file "./adpcm_encode_test.c",line 511,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #0, *AR3(short(#3)) ; |511| 
	.dwpsn	file "./adpcm_encode_test.c",line 513,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3

        MOV XAR3, dbl(*SP(#2))
||      AADD #4, AR3 ; |513| 

	.dwpsn	file "./adpcm_encode_test.c",line 514,column 9,is_stmt
        MOV dbl(*SP(#4)), XAR3
        ADD #4, *AR3 ; |514| 
	.dwpsn	file "./adpcm_encode_test.c",line 506,column 44,is_stmt
        ADD #1, *SP(#13) ; |506| 
	.dwpsn	file "./adpcm_encode_test.c",line 506,column 18,is_stmt
        MOV dbl(*SP(#10)), XAR3
        MOV *SP(#13), AR2 ; |506| 
        MOV *AR3(#32), AR1 ; |506| 
        CMP AR2 < AR1, TC1 ; |506| 
        BCC $C$L93,TC1 ; |506| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |506| 
$C$DW$L$_adpcm_encode_block$24$E:
$C$L94:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 517,column 5,is_stmt
        MOV dbl(*SP(#10)), XAR0
        AMAR *SP(#2), XAR1
        MOV dbl(*SP(#4)), XAR2
        AMAR *SP(#6), XAR3
        MOV *SP(#8), T0 ; |517| 
$C$DW$241	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$241, DW_AT_low_pc(0x00)
	.dwattr $C$DW$241, DW_AT_name("_encode_chunks")
	.dwattr $C$DW$241, DW_AT_TI_call
        CALL #_encode_chunks ; |517| 
                                        ; call occurs [#_encode_chunks] ; |517| 
	.dwpsn	file "./adpcm_encode_test.c",line 519,column 5,is_stmt
        MOV #1, T0
$C$L95:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 520,column 1,is_stmt
        ADD #214, mmap(SP)
	.dwcfi	cfa_offset, 2
        POPBOTH XFP
	.dwcfi	restore_reg, 32
	.dwcfi	cfa_offset, 1
$C$DW$242	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$242, DW_AT_low_pc(0x00)
	.dwattr $C$DW$242, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$243	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$243, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/adpcm_encode/adpcm_encode_test.asm:$C$L93:1:1738600387")
	.dwattr $C$DW$243, DW_AT_TI_begin_file("./adpcm_encode_test.c")
	.dwattr $C$DW$243, DW_AT_TI_begin_line(0x1fa)
	.dwattr $C$DW$243, DW_AT_TI_end_line(0x203)
$C$DW$244	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$244, DW_AT_low_pc($C$DW$L$_adpcm_encode_block$24$B)
	.dwattr $C$DW$244, DW_AT_high_pc($C$DW$L$_adpcm_encode_block$24$E)
	.dwendtag $C$DW$243


$C$DW$245	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$245, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/adpcm_encode/adpcm_encode_test.asm:$C$L82:1:1738600387")
	.dwattr $C$DW$245, DW_AT_TI_begin_file("./adpcm_encode_test.c")
	.dwattr $C$DW$245, DW_AT_TI_begin_line(0x1d5)
	.dwattr $C$DW$245, DW_AT_TI_end_line(0x1f8)
$C$DW$246	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$246, DW_AT_low_pc($C$DW$L$_adpcm_encode_block$10$B)
	.dwattr $C$DW$246, DW_AT_high_pc($C$DW$L$_adpcm_encode_block$10$E)
$C$DW$247	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$247, DW_AT_low_pc($C$DW$L$_adpcm_encode_block$11$B)
	.dwattr $C$DW$247, DW_AT_high_pc($C$DW$L$_adpcm_encode_block$11$E)
$C$DW$248	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$248, DW_AT_low_pc($C$DW$L$_adpcm_encode_block$12$B)
	.dwattr $C$DW$248, DW_AT_high_pc($C$DW$L$_adpcm_encode_block$12$E)
$C$DW$249	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$249, DW_AT_low_pc($C$DW$L$_adpcm_encode_block$16$B)
	.dwattr $C$DW$249, DW_AT_high_pc($C$DW$L$_adpcm_encode_block$16$E)
$C$DW$250	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$250, DW_AT_low_pc($C$DW$L$_adpcm_encode_block$22$B)
	.dwattr $C$DW$250, DW_AT_high_pc($C$DW$L$_adpcm_encode_block$22$E)

$C$DW$251	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$251, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/adpcm_encode/adpcm_encode_test.asm:$C$L84:2:1738600387")
	.dwattr $C$DW$251, DW_AT_TI_begin_file("./adpcm_encode_test.c")
	.dwattr $C$DW$251, DW_AT_TI_begin_line(0x1de)
	.dwattr $C$DW$251, DW_AT_TI_end_line(0x1e5)
$C$DW$252	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$252, DW_AT_low_pc($C$DW$L$_adpcm_encode_block$13$B)
	.dwattr $C$DW$252, DW_AT_high_pc($C$DW$L$_adpcm_encode_block$13$E)
$C$DW$253	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$253, DW_AT_low_pc($C$DW$L$_adpcm_encode_block$15$B)
	.dwattr $C$DW$253, DW_AT_high_pc($C$DW$L$_adpcm_encode_block$15$E)

$C$DW$254	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$254, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/adpcm_encode/adpcm_encode_test.asm:$C$L85:3:1738600387")
	.dwattr $C$DW$254, DW_AT_TI_begin_file("./adpcm_encode_test.c")
	.dwattr $C$DW$254, DW_AT_TI_begin_line(0x1e0)
	.dwattr $C$DW$254, DW_AT_TI_end_line(0x1e0)
$C$DW$255	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$255, DW_AT_low_pc($C$DW$L$_adpcm_encode_block$14$B)
	.dwattr $C$DW$255, DW_AT_high_pc($C$DW$L$_adpcm_encode_block$14$E)
	.dwendtag $C$DW$254

	.dwendtag $C$DW$251


$C$DW$256	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$256, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/adpcm_encode/adpcm_encode_test.asm:$C$L88:2:1738600387")
	.dwattr $C$DW$256, DW_AT_TI_begin_file("./adpcm_encode_test.c")
	.dwattr $C$DW$256, DW_AT_TI_begin_line(0x1e9)
	.dwattr $C$DW$256, DW_AT_TI_end_line(0x1f5)
$C$DW$257	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$257, DW_AT_low_pc($C$DW$L$_adpcm_encode_block$17$B)
	.dwattr $C$DW$257, DW_AT_high_pc($C$DW$L$_adpcm_encode_block$17$E)
$C$DW$258	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$258, DW_AT_low_pc($C$DW$L$_adpcm_encode_block$18$B)
	.dwattr $C$DW$258, DW_AT_high_pc($C$DW$L$_adpcm_encode_block$18$E)
$C$DW$259	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$259, DW_AT_low_pc($C$DW$L$_adpcm_encode_block$19$B)
	.dwattr $C$DW$259, DW_AT_high_pc($C$DW$L$_adpcm_encode_block$19$E)
$C$DW$260	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$260, DW_AT_low_pc($C$DW$L$_adpcm_encode_block$20$B)
	.dwattr $C$DW$260, DW_AT_high_pc($C$DW$L$_adpcm_encode_block$20$E)
$C$DW$261	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$261, DW_AT_low_pc($C$DW$L$_adpcm_encode_block$21$B)
	.dwattr $C$DW$261, DW_AT_high_pc($C$DW$L$_adpcm_encode_block$21$E)
	.dwendtag $C$DW$256

	.dwendtag $C$DW$245


$C$DW$262	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$262, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/adpcm_encode/adpcm_encode_test.asm:$C$L79:1:1738600387")
	.dwattr $C$DW$262, DW_AT_TI_begin_file("./adpcm_encode_test.c")
	.dwattr $C$DW$262, DW_AT_TI_begin_line(0x1cd)
	.dwattr $C$DW$262, DW_AT_TI_end_line(0x1ce)
$C$DW$263	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$263, DW_AT_low_pc($C$DW$L$_adpcm_encode_block$6$B)
	.dwattr $C$DW$263, DW_AT_high_pc($C$DW$L$_adpcm_encode_block$6$E)
	.dwendtag $C$DW$262

	.dwattr $C$DW$213, DW_AT_TI_end_file("./adpcm_encode_test.c")
	.dwattr $C$DW$213, DW_AT_TI_end_line(0x208)
	.dwattr $C$DW$213, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$213

	.sect	".text"
	.global	_adpcm_decode_block

$C$DW$264	.dwtag  DW_TAG_subprogram, DW_AT_name("adpcm_decode_block")
	.dwattr $C$DW$264, DW_AT_low_pc(_adpcm_decode_block)
	.dwattr $C$DW$264, DW_AT_high_pc(0x00)
	.dwattr $C$DW$264, DW_AT_TI_symbol_name("_adpcm_decode_block")
	.dwattr $C$DW$264, DW_AT_external
	.dwattr $C$DW$264, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$264, DW_AT_TI_begin_file("./adpcm_encode_test.c")
	.dwattr $C$DW$264, DW_AT_TI_begin_line(0x21a)
	.dwattr $C$DW$264, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$264, DW_AT_TI_max_frame_size(0x16)
	.dwpsn	file "./adpcm_encode_test.c",line 539,column 1,is_stmt,address _adpcm_decode_block

	.dwfde $C$DW$CIE, _adpcm_decode_block
$C$DW$265	.dwtag  DW_TAG_formal_parameter, DW_AT_name("outbuf")
	.dwattr $C$DW$265, DW_AT_TI_symbol_name("_outbuf")
	.dwattr $C$DW$265, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$265, DW_AT_location[DW_OP_reg17]
$C$DW$266	.dwtag  DW_TAG_formal_parameter, DW_AT_name("inbuf")
	.dwattr $C$DW$266, DW_AT_TI_symbol_name("_inbuf")
	.dwattr $C$DW$266, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$266, DW_AT_location[DW_OP_reg19]
$C$DW$267	.dwtag  DW_TAG_formal_parameter, DW_AT_name("inbufsize")
	.dwattr $C$DW$267, DW_AT_TI_symbol_name("_inbufsize")
	.dwattr $C$DW$267, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$267, DW_AT_location[DW_OP_reg12]
$C$DW$268	.dwtag  DW_TAG_formal_parameter, DW_AT_name("channels")
	.dwattr $C$DW$268, DW_AT_TI_symbol_name("_channels")
	.dwattr $C$DW$268, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$268, DW_AT_location[DW_OP_reg13]
;*******************************************************************************
;* FUNCTION NAME: adpcm_decode_block                                           *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,*
;*                        XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 22 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (20 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_adpcm_decode_block:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-21, SP
	.dwcfi	cfa_offset, 22
$C$DW$269	.dwtag  DW_TAG_variable, DW_AT_name("outbuf")
	.dwattr $C$DW$269, DW_AT_TI_symbol_name("_outbuf")
	.dwattr $C$DW$269, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$269, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$270	.dwtag  DW_TAG_variable, DW_AT_name("inbuf")
	.dwattr $C$DW$270, DW_AT_TI_symbol_name("_inbuf")
	.dwattr $C$DW$270, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$270, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$271	.dwtag  DW_TAG_variable, DW_AT_name("inbufsize")
	.dwattr $C$DW$271, DW_AT_TI_symbol_name("_inbufsize")
	.dwattr $C$DW$271, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$271, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$272	.dwtag  DW_TAG_variable, DW_AT_name("channels")
	.dwattr $C$DW$272, DW_AT_TI_symbol_name("_channels")
	.dwattr $C$DW$272, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$272, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$273	.dwtag  DW_TAG_variable, DW_AT_name("ch")
	.dwattr $C$DW$273, DW_AT_TI_symbol_name("_ch")
	.dwattr $C$DW$273, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$273, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$274	.dwtag  DW_TAG_variable, DW_AT_name("samples")
	.dwattr $C$DW$274, DW_AT_TI_symbol_name("_samples")
	.dwattr $C$DW$274, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$274, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$275	.dwtag  DW_TAG_variable, DW_AT_name("chunks")
	.dwattr $C$DW$275, DW_AT_TI_symbol_name("_chunks")
	.dwattr $C$DW$275, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$275, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$276	.dwtag  DW_TAG_variable, DW_AT_name("pcmdata")
	.dwattr $C$DW$276, DW_AT_TI_symbol_name("_pcmdata")
	.dwattr $C$DW$276, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$276, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$277	.dwtag  DW_TAG_variable, DW_AT_name("index")
	.dwattr $C$DW$277, DW_AT_TI_symbol_name("_index")
	.dwattr $C$DW$277, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$277, DW_AT_location[DW_OP_bregx 0x24 14]
        MOV T1, *SP(#5) ; |539| 
        MOV T0, *SP(#4) ; |539| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./adpcm_encode_test.c",line 540,column 13,is_stmt
        MOV #1, *SP(#7) ; |540| 
	.dwpsn	file "./adpcm_encode_test.c",line 544,column 5,is_stmt
        MOV *SP(#5), AC0 ; |544| 

        SFTL AC0, #2, AC0 ; |544| 
||      MOV uns(*SP(#4)), AC1 ; |544| 

        CMPU AC1 >= AC0, TC1 ; |544| 
        BCC $C$L96,TC1 ; |544| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |544| 
	.dwpsn	file "./adpcm_encode_test.c",line 545,column 9,is_stmt
        MOV #0, T0
        B $C$L125 ; |545| 
                                        ; branch occurs ; |545| 
$C$L96:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 547,column 10,is_stmt
        MOV #0, *SP(#6) ; |547| 
	.dwpsn	file "./adpcm_encode_test.c",line 547,column 18,is_stmt
        MOV *SP(#5), AR1 ; |547| 
        MOV *SP(#6), AR2 ; |547| 
        CMP AR2 >= AR1, TC1 ; |547| 
        BCC $C$L100,TC1 ; |547| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |547| 
$C$L97:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block$4$B:
	.dwpsn	file "./adpcm_encode_test.c",line 549,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV AR2, T0

        MOV *AR3, AC0 ; |549| 
||      SFTL T0, #1 ; |549| 

        MOV *AR3(short(#1)), AC1 ; |549| 
        OR AC1 << #8, AC0 ; |549| 
        MOV mmap(AC0L), AC0 ; |549| 
        AMAR *SP(#10), XAR3
        MOV AC0, dbl(*AR3(T0)) ; |549| 
        MOV dbl(*SP(#0)), XAR2
        AMAR *AR2, XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#0))
        MOV AC0, *AR2 ; |549| 
	.dwpsn	file "./adpcm_encode_test.c",line 550,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#6), T0 ; |550| 
        AMAR *SP(#14), XAR2
        MOV *AR3(short(#2)), AR1 ; |550| 
        MOV AR1, *AR2(T0) ; |550| 
	.dwpsn	file "./adpcm_encode_test.c",line 552,column 9,is_stmt
        MOV *SP(#6), T0 ; |552| 
        AMAR *SP(#14), XAR3
        MOV *AR3(T0), AR1 ; |552| 
        BCC $C$L98,AR1 < #0 ; |552| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |552| 
$C$DW$L$_adpcm_decode_block$4$E:
$C$DW$L$_adpcm_decode_block$5$B:
        AMAR *SP(#14), XAR3
        MOV #88, AR2 ; |552| 
        MOV *AR3(T0), AR1 ; |552| 
        CMP AR1 > AR2, TC1 ; |552| 
        BCC $C$L98,TC1 ; |552| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |552| 
$C$DW$L$_adpcm_decode_block$5$E:
$C$DW$L$_adpcm_decode_block$6$B:
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#3)), AR1 ; |552| 
        BCC $C$L99,AR1 == #0 ; |552| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |552| 
$C$DW$L$_adpcm_decode_block$6$E:
$C$L98:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 553,column 13,is_stmt
        MOV #0, T0
        B $C$L125 ; |553| 
                                        ; branch occurs ; |553| 
$C$L99:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block$8$B:
	.dwpsn	file "./adpcm_encode_test.c",line 555,column 9,is_stmt
        SUB #4, *SP(#4) ; |555| 
	.dwpsn	file "./adpcm_encode_test.c",line 556,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3

        MOV XAR3, dbl(*SP(#2))
||      AADD #4, AR3 ; |556| 

	.dwpsn	file "./adpcm_encode_test.c",line 547,column 33,is_stmt
        ADD #1, *SP(#6) ; |547| 
	.dwpsn	file "./adpcm_encode_test.c",line 547,column 18,is_stmt
        MOV *SP(#5), AR1 ; |547| 
        MOV *SP(#6), AR2 ; |547| 
        CMP AR2 < AR1, TC1 ; |547| 
        BCC $C$L97,TC1 ; |547| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |547| 
$C$DW$L$_adpcm_decode_block$8$E:
$C$L100:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 559,column 5,is_stmt
        MOV *SP(#4), T0 ; |559| 
        MOV *SP(#5) << #2, AC0 ; |559| 
$C$DW$278	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$278, DW_AT_low_pc(0x00)
	.dwattr $C$DW$278, DW_AT_name("__divu")
	.dwattr $C$DW$278, DW_AT_TI_call

        CALL #__divu ; |559| 
||      MOV AC0, T1 ; |559| 

                                        ; call occurs [#__divu] ; |559| 
        MOV T0, *SP(#8) ; |559| 
	.dwpsn	file "./adpcm_encode_test.c",line 560,column 5,is_stmt

        MOV *SP(#7), AC0 ; |560| 
||      MOV T0, AC1

        ADD AC1 << #3, AC0 ; |560| 
        MOV AC0, *SP(#7) ; |560| 
	.dwpsn	file "./adpcm_encode_test.c",line 562,column 5,is_stmt
        MOV *SP(#8), AR1 ; |562| 
        SUB #1, AR1, AR2 ; |562| 
        MOV AR2, *SP(#8) ; |562| 
        BCC $C$L124,AR1 == #0 ; |562| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |562| 
$C$L101:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block$10$B:

$C$DW$279	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$280	.dwtag  DW_TAG_variable, DW_AT_name("ch")
	.dwattr $C$DW$280, DW_AT_TI_symbol_name("_ch")
	.dwattr $C$DW$280, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$280, DW_AT_location[DW_OP_bregx 0x24 16]
$C$DW$281	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$281, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$281, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$281, DW_AT_location[DW_OP_bregx 0x24 17]
	.dwpsn	file "./adpcm_encode_test.c",line 566,column 14,is_stmt
        MOV #0, *SP(#16) ; |566| 
	.dwpsn	file "./adpcm_encode_test.c",line 566,column 22,is_stmt
        MOV *SP(#5), AR1 ; |566| 
        MOV *SP(#16), AR2 ; |566| 
        CMP AR2 >= AR1, TC1 ; |566| 
        BCC $C$L123,TC1 ; |566| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |566| 
$C$DW$L$_adpcm_decode_block$10$E:
$C$L102:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block$11$B:
	.dwpsn	file "./adpcm_encode_test.c",line 569,column 18,is_stmt
        MOV #0, *SP(#17) ; |569| 
	.dwpsn	file "./adpcm_encode_test.c",line 569,column 25,is_stmt

        MOV *SP(#17), AR1 ; |569| 
||      MOV #4, AR2

        CMP AR1 >= AR2, TC1 ; |569| 
        BCC $C$L122,TC1 ; |569| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |569| 
$C$DW$L$_adpcm_decode_block$11$E:
$C$L103:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block$12$B:

$C$DW$282	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$283	.dwtag  DW_TAG_variable, DW_AT_name("step")
	.dwattr $C$DW$283, DW_AT_TI_symbol_name("_step")
	.dwattr $C$DW$283, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$283, DW_AT_location[DW_OP_bregx 0x24 18]
$C$DW$284	.dwtag  DW_TAG_variable, DW_AT_name("delta")
	.dwattr $C$DW$284, DW_AT_TI_symbol_name("_delta")
	.dwattr $C$DW$284, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$284, DW_AT_location[DW_OP_bregx 0x24 19]
	.dwpsn	file "./adpcm_encode_test.c",line 571,column 26,is_stmt
        MOV *SP(#16), T0 ; |571| 
        AMAR *SP(#14), XAR3
        MOV *AR3(T0), T0 ; |571| 
        AMOV #_step_table, XAR3 ; |571| 
        MOV *AR3(T0), AR1 ; |571| 
        MOV AR1, *SP(#18) ; |571| 
	.dwpsn	file "./adpcm_encode_test.c",line 571,column 56,is_stmt
        MOV uns(*SP(#18)), AC0 ; |571| 
        SFTS AC0, #-3, AC0 ; |571| 
        MOV AC0, *SP(#19) ; |571| 
	.dwpsn	file "./adpcm_encode_test.c",line 573,column 17,is_stmt
        MOV dbl(*SP(#2)), XAR3
        BTST #0, *AR3, TC1 ; |573| 
        BCC $C$L104,!TC1 ; |573| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |573| 
$C$DW$L$_adpcm_decode_block$12$E:
$C$DW$L$_adpcm_decode_block$13$B:
	.dwpsn	file "./adpcm_encode_test.c",line 574,column 21,is_stmt
        MOV *SP(#18), AC0 ; |574| 
        BFXTR #0xfffc, AC0, AR1 ; |574| 
        ADD *SP(#19), AR1, AR1 ; |574| 
        MOV AR1, *SP(#19) ; |574| 
$C$DW$L$_adpcm_decode_block$13$E:
$C$L104:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block$14$B:
	.dwpsn	file "./adpcm_encode_test.c",line 575,column 17,is_stmt
        MOV dbl(*SP(#2)), XAR3
        BTST #1, *AR3, TC1 ; |575| 
        BCC $C$L105,!TC1 ; |575| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |575| 
$C$DW$L$_adpcm_decode_block$14$E:
$C$DW$L$_adpcm_decode_block$15$B:
	.dwpsn	file "./adpcm_encode_test.c",line 576,column 21,is_stmt
        MOV *SP(#18), AR1 ; |576| 
        SFTL AR1, #-1 ; |576| 
        ADD *SP(#19), AR1, AR1 ; |576| 
        MOV AR1, *SP(#19) ; |576| 
$C$DW$L$_adpcm_decode_block$15$E:
$C$L105:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block$16$B:
	.dwpsn	file "./adpcm_encode_test.c",line 577,column 17,is_stmt
        MOV dbl(*SP(#2)), XAR3
        BTST #2, *AR3, TC1 ; |577| 
        BCC $C$L106,!TC1 ; |577| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |577| 
$C$DW$L$_adpcm_decode_block$16$E:
$C$DW$L$_adpcm_decode_block$17$B:
	.dwpsn	file "./adpcm_encode_test.c",line 578,column 21,is_stmt
        MOV *SP(#18), AR1 ; |578| 
        ADD *SP(#19), AR1, AR1 ; |578| 
        MOV AR1, *SP(#19) ; |578| 
$C$DW$L$_adpcm_decode_block$17$E:
$C$L106:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block$18$B:
	.dwpsn	file "./adpcm_encode_test.c",line 580,column 17,is_stmt
        MOV dbl(*SP(#2)), XAR3
        BTST #3, *AR3, TC1 ; |580| 
        BCC $C$L107,!TC1 ; |580| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |580| 
$C$DW$L$_adpcm_decode_block$18$E:
$C$DW$L$_adpcm_decode_block$19$B:
	.dwpsn	file "./adpcm_encode_test.c",line 581,column 21,is_stmt
        MOV *SP(#16) << #1, AC0 ; |581| 
        MOV AC0, T0 ; |581| 
        AMAR *SP(#10), XAR3
        MOV uns(*SP(#19)), AC1 ; |581| 
        SUB AC1, dbl(*AR3(T0)), AC1 ; |581| 
        MOV AC1, dbl(*AR3(T0)) ; |581| 
        B $C$L108 ; |581| 
                                        ; branch occurs ; |581| 
$C$DW$L$_adpcm_decode_block$19$E:
$C$L107:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block$20$B:
	.dwpsn	file "./adpcm_encode_test.c",line 583,column 21,is_stmt
        MOV *SP(#16) << #1, AC0 ; |583| 
        MOV AC0, T0 ; |583| 
        AMAR *SP(#10), XAR3
        MOV uns(*SP(#19)), AC1 ; |583| 
        ADD dbl(*AR3(T0)), AC1, AC1 ; |583| 
        MOV AC1, dbl(*AR3(T0)) ; |583| 
$C$DW$L$_adpcm_decode_block$20$E:
$C$L108:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block$21$B:
	.dwpsn	file "./adpcm_encode_test.c",line 585,column 17,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3, AR1 ; |585| 
        AND #0x0007, AR1, AR1 ; |585| 
        MOV *SP(#16), T0 ; |585| 
        AMAR *SP(#14), XAR2
        AMOV #_index_table, XAR3 ; |585| 
        AADD AR1, AR3 ; |585| 
        ADD *AR2(T0), *AR3, AC0 ; |585| 
        MOV HI(AC0), *AR2(T0)
	.dwpsn	file "./adpcm_encode_test.c",line 586,column 17,is_stmt
        MOV *SP(#16), T0 ; |586| 
        MOV #88, AR2 ; |586| 
        AMAR *SP(#14), XAR3
        MOV *AR3(T0), AR1 ; |586| 
        CMP AR1 <= AR2, TC1 ; |586| 
        BCC $C$L109,TC1 ; |586| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |586| 
$C$DW$L$_adpcm_decode_block$21$E:
$C$DW$L$_adpcm_decode_block$22$B:
        AMAR *SP(#14), XAR3
        MOV #88, *AR3(T0) ; |586| 
        B $C$L110 ; |586| 
                                        ; branch occurs ; |586| 
$C$DW$L$_adpcm_decode_block$22$E:
$C$L109:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block$23$B:
        AMAR *SP(#14), XAR3
        MOV *AR3(T0), AR1 ; |586| 
        BCC $C$L110,AR1 >= #0 ; |586| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |586| 
$C$DW$L$_adpcm_decode_block$23$E:
$C$DW$L$_adpcm_decode_block$24$B:
        AMAR *SP(#14), XAR3
        MOV #0, *AR3(T0) ; |586| 
$C$DW$L$_adpcm_decode_block$24$E:
$C$L110:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block$25$B:
	.dwpsn	file "./adpcm_encode_test.c",line 587,column 17,is_stmt
        MOV *SP(#16), T0 ; |587| 
        SFTL T0, #1 ; |587| 
        AMAR *SP(#10), XAR3
        MOV #32767, AC0 ; |587| 
        MOV dbl(*AR3(T0)), AC1 ; |587| 
        CMP AC1 <= AC0, TC1 ; |587| 
        BCC $C$L111,TC1 ; |587| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |587| 
$C$DW$L$_adpcm_decode_block$25$E:
$C$DW$L$_adpcm_decode_block$26$B:
        MOV *SP(#16), T0 ; |587| 
        SFTL T0, #1 ; |587| 
        AMAR *SP(#10), XAR3
        MOV AC0, dbl(*AR3(T0)) ; |587| 
        B $C$L112 ; |587| 
                                        ; branch occurs ; |587| 
$C$DW$L$_adpcm_decode_block$26$E:
$C$L111:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block$27$B:
        MOV *SP(#16), T0 ; |587| 
        SFTL T0, #1 ; |587| 
        AMAR *SP(#10), XAR3
        MOV #-32768, AC0 ; |587| 
        MOV dbl(*AR3(T0)), AC1 ; |587| 
        CMP AC1 >= AC0, TC1 ; |587| 
        BCC $C$L112,TC1 ; |587| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |587| 
$C$DW$L$_adpcm_decode_block$27$E:
$C$DW$L$_adpcm_decode_block$28$B:
        MOV *SP(#16), T0 ; |587| 
        SFTL T0, #1 ; |587| 
        AMAR *SP(#10), XAR3
        MOV AC0, dbl(*AR3(T0)) ; |587| 
$C$DW$L$_adpcm_decode_block$28$E:
$C$L112:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block$29$B:
	.dwpsn	file "./adpcm_encode_test.c",line 588,column 17,is_stmt
        MOV *SP(#16), T0 ; |588| 

        SFTL T0, #1 ; |588| 
||      MOV *SP(#17), T1 ; |588| 

        MOV dbl(*SP(#0)), XAR3
        SFTL T1, #1 ; |588| 
        MPYM *SP(#5), T1, AC0 ; |588| 
        MOV AC0, AR1 ; |588| 
        AMAR *SP(#11), XAR2
        AADD AR1, AR3 ; |588| 
        MOV *AR2(T0), *AR3 ; |588| 
	.dwpsn	file "./adpcm_encode_test.c",line 590,column 17,is_stmt
        MOV *SP(#16), T0 ; |590| 
        AMAR *SP(#14), XAR3
        MOV *AR3(T0), T0 ; |590| 
        AMOV #_step_table, XAR3 ; |590| 
        MOV *AR3(T0), AR1 ; |590| 
        MOV AR1, *SP(#18) ; |590| 
	.dwpsn	file "./adpcm_encode_test.c",line 591,column 17,is_stmt
        MOV uns(*SP(#18)), AC0 ; |591| 
        SFTS AC0, #-3, AC0 ; |591| 
        MOV AC0, *SP(#19) ; |591| 
	.dwpsn	file "./adpcm_encode_test.c",line 593,column 17,is_stmt
        MOV dbl(*SP(#2)), XAR3
        BTST #4, *AR3, TC1 ; |593| 
        BCC $C$L113,!TC1 ; |593| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |593| 
$C$DW$L$_adpcm_decode_block$29$E:
$C$DW$L$_adpcm_decode_block$30$B:
	.dwpsn	file "./adpcm_encode_test.c",line 594,column 21,is_stmt
        MOV *SP(#18), AC0 ; |594| 
        BFXTR #0xfffc, AC0, AR1 ; |594| 
        ADD *SP(#19), AR1, AR1 ; |594| 
        MOV AR1, *SP(#19) ; |594| 
$C$DW$L$_adpcm_decode_block$30$E:
$C$L113:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block$31$B:
	.dwpsn	file "./adpcm_encode_test.c",line 595,column 17,is_stmt
        MOV dbl(*SP(#2)), XAR3
        BTST #5, *AR3, TC1 ; |595| 
        BCC $C$L114,!TC1 ; |595| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |595| 
$C$DW$L$_adpcm_decode_block$31$E:
$C$DW$L$_adpcm_decode_block$32$B:
	.dwpsn	file "./adpcm_encode_test.c",line 596,column 21,is_stmt
        MOV *SP(#18), AR1 ; |596| 
        SFTL AR1, #-1 ; |596| 
        ADD *SP(#19), AR1, AR1 ; |596| 
        MOV AR1, *SP(#19) ; |596| 
$C$DW$L$_adpcm_decode_block$32$E:
$C$L114:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block$33$B:
	.dwpsn	file "./adpcm_encode_test.c",line 597,column 17,is_stmt
        MOV dbl(*SP(#2)), XAR3
        BTST #6, *AR3, TC1 ; |597| 
        BCC $C$L115,!TC1 ; |597| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |597| 
$C$DW$L$_adpcm_decode_block$33$E:
$C$DW$L$_adpcm_decode_block$34$B:
	.dwpsn	file "./adpcm_encode_test.c",line 598,column 21,is_stmt
        MOV *SP(#18), AR1 ; |598| 
        ADD *SP(#19), AR1, AR1 ; |598| 
        MOV AR1, *SP(#19) ; |598| 
$C$DW$L$_adpcm_decode_block$34$E:
$C$L115:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block$35$B:
	.dwpsn	file "./adpcm_encode_test.c",line 600,column 17,is_stmt
        MOV dbl(*SP(#2)), XAR3
        BTST #7, *AR3, TC1 ; |600| 
        BCC $C$L116,!TC1 ; |600| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |600| 
$C$DW$L$_adpcm_decode_block$35$E:
$C$DW$L$_adpcm_decode_block$36$B:
	.dwpsn	file "./adpcm_encode_test.c",line 601,column 21,is_stmt
        MOV *SP(#16) << #1, AC0 ; |601| 
        MOV AC0, T0 ; |601| 
        AMAR *SP(#10), XAR3
        MOV uns(*SP(#19)), AC1 ; |601| 
        SUB AC1, dbl(*AR3(T0)), AC1 ; |601| 
        MOV AC1, dbl(*AR3(T0)) ; |601| 
        B $C$L117 ; |601| 
                                        ; branch occurs ; |601| 
$C$DW$L$_adpcm_decode_block$36$E:
$C$L116:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block$37$B:
	.dwpsn	file "./adpcm_encode_test.c",line 603,column 21,is_stmt
        MOV *SP(#16) << #1, AC0 ; |603| 
        MOV AC0, T0 ; |603| 
        AMAR *SP(#10), XAR3
        MOV uns(*SP(#19)), AC1 ; |603| 
        ADD dbl(*AR3(T0)), AC1, AC1 ; |603| 
        MOV AC1, dbl(*AR3(T0)) ; |603| 
$C$DW$L$_adpcm_decode_block$37$E:
$C$L117:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block$38$B:
	.dwpsn	file "./adpcm_encode_test.c",line 605,column 17,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3, AC0 ; |605| 
        BFXTR #0x0070, AC0, AR1 ; |605| 
        MOV *SP(#16), T0 ; |605| 
        AMAR *SP(#14), XAR2
        AMOV #_index_table, XAR3 ; |605| 
        AADD AR1, AR3 ; |605| 
        ADD *AR2(T0), *AR3, AC0 ; |605| 
        MOV HI(AC0), *AR2(T0)
	.dwpsn	file "./adpcm_encode_test.c",line 606,column 17,is_stmt
        MOV *SP(#16), T0 ; |606| 
        MOV #88, AR2 ; |606| 
        AMAR *SP(#14), XAR3
        MOV *AR3(T0), AR1 ; |606| 
        CMP AR1 <= AR2, TC1 ; |606| 
        BCC $C$L118,TC1 ; |606| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |606| 
$C$DW$L$_adpcm_decode_block$38$E:
$C$DW$L$_adpcm_decode_block$39$B:
        AMAR *SP(#14), XAR3
        MOV #88, *AR3(T0) ; |606| 
        B $C$L119 ; |606| 
                                        ; branch occurs ; |606| 
$C$DW$L$_adpcm_decode_block$39$E:
$C$L118:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block$40$B:
        AMAR *SP(#14), XAR3
        MOV *AR3(T0), AR1 ; |606| 
        BCC $C$L119,AR1 >= #0 ; |606| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |606| 
$C$DW$L$_adpcm_decode_block$40$E:
$C$DW$L$_adpcm_decode_block$41$B:
        AMAR *SP(#14), XAR3
        MOV #0, *AR3(T0) ; |606| 
$C$DW$L$_adpcm_decode_block$41$E:
$C$L119:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block$42$B:
	.dwpsn	file "./adpcm_encode_test.c",line 607,column 17,is_stmt
        MOV *SP(#16), T0 ; |607| 
        SFTL T0, #1 ; |607| 
        AMAR *SP(#10), XAR3
        MOV #32767, AC0 ; |607| 
        MOV dbl(*AR3(T0)), AC1 ; |607| 
        CMP AC1 <= AC0, TC1 ; |607| 
        BCC $C$L120,TC1 ; |607| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |607| 
$C$DW$L$_adpcm_decode_block$42$E:
$C$DW$L$_adpcm_decode_block$43$B:
        MOV *SP(#16), T0 ; |607| 
        SFTL T0, #1 ; |607| 
        AMAR *SP(#10), XAR3
        MOV AC0, dbl(*AR3(T0)) ; |607| 
        B $C$L121 ; |607| 
                                        ; branch occurs ; |607| 
$C$DW$L$_adpcm_decode_block$43$E:
$C$L120:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block$44$B:
        MOV *SP(#16), T0 ; |607| 
        SFTL T0, #1 ; |607| 
        AMAR *SP(#10), XAR3
        MOV #-32768, AC0 ; |607| 
        MOV dbl(*AR3(T0)), AC1 ; |607| 
        CMP AC1 >= AC0, TC1 ; |607| 
        BCC $C$L121,TC1 ; |607| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |607| 
$C$DW$L$_adpcm_decode_block$44$E:
$C$DW$L$_adpcm_decode_block$45$B:
        MOV *SP(#16), T0 ; |607| 
        SFTL T0, #1 ; |607| 
        AMAR *SP(#10), XAR3
        MOV AC0, dbl(*AR3(T0)) ; |607| 
$C$DW$L$_adpcm_decode_block$45$E:
$C$L121:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block$46$B:
	.dwpsn	file "./adpcm_encode_test.c",line 608,column 17,is_stmt
        MOV *SP(#16), T0 ; |608| 

        SFTL T0, #1 ; |608| 
||      MOV *SP(#17), T1 ; |608| 

        SFTL T1, #1 ; |608| 
        MOV dbl(*SP(#0)), XAR3
        ADD #1, T1 ; |608| 
        MPYM *SP(#5), T1, AC0 ; |608| 
        MOV AC0, AR1 ; |608| 
        AMAR *SP(#11), XAR2
        AADD AR1, AR3 ; |608| 
        MOV *AR2(T0), *AR3 ; |608| 
	.dwpsn	file "./adpcm_encode_test.c",line 610,column 17,is_stmt
        MOV dbl(*SP(#2)), XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#2))
	.dwendtag $C$DW$282

	.dwpsn	file "./adpcm_encode_test.c",line 569,column 32,is_stmt
        ADD #1, *SP(#17) ; |569| 
	.dwpsn	file "./adpcm_encode_test.c",line 569,column 25,is_stmt

        MOV *SP(#17), AR1 ; |569| 
||      MOV #4, AR2

        CMP AR1 < AR2, TC1 ; |569| 
        BCC $C$L103,TC1 ; |569| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |569| 
$C$DW$L$_adpcm_decode_block$46$E:
$C$L122:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block$47$B:
	.dwpsn	file "./adpcm_encode_test.c",line 613,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#0))
	.dwpsn	file "./adpcm_encode_test.c",line 566,column 37,is_stmt
        ADD #1, *SP(#16) ; |566| 
	.dwpsn	file "./adpcm_encode_test.c",line 566,column 22,is_stmt
        MOV *SP(#5), AR1 ; |566| 
        MOV *SP(#16), AR2 ; |566| 
        CMP AR2 < AR1, TC1 ; |566| 
        BCC $C$L102,TC1 ; |566| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |566| 
$C$DW$L$_adpcm_decode_block$47$E:
$C$L123:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block$48$B:
	.dwpsn	file "./adpcm_encode_test.c",line 616,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#5), #7, AC0 ; |616| 
        MOV AC0, AR1 ; |616| 

        MOV XAR3, dbl(*SP(#0))
||      AADD AR1, AR3 ; |616| 

	.dwendtag $C$DW$279

	.dwpsn	file "./adpcm_encode_test.c",line 617,column 5,is_stmt
        MOV *SP(#8), AR1 ; |617| 
        SUB #1, AR1, AR2 ; |617| 
        MOV AR2, *SP(#8) ; |617| 
        BCC $C$L101,AR1 != #0 ; |617| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |617| 
$C$DW$L$_adpcm_decode_block$48$E:
$C$L124:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 619,column 5,is_stmt
        MOV *SP(#7), T0 ; |619| 
$C$L125:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 620,column 1,is_stmt
        AADD #21, SP
	.dwcfi	cfa_offset, 1
$C$DW$285	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$285, DW_AT_low_pc(0x00)
	.dwattr $C$DW$285, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$286	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$286, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/adpcm_encode/adpcm_encode_test.asm:$C$L101:1:1738600387")
	.dwattr $C$DW$286, DW_AT_TI_begin_file("./adpcm_encode_test.c")
	.dwattr $C$DW$286, DW_AT_TI_begin_line(0x232)
	.dwattr $C$DW$286, DW_AT_TI_end_line(0x269)
$C$DW$287	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$287, DW_AT_low_pc($C$DW$L$_adpcm_decode_block$10$B)
	.dwattr $C$DW$287, DW_AT_high_pc($C$DW$L$_adpcm_decode_block$10$E)
$C$DW$288	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$288, DW_AT_low_pc($C$DW$L$_adpcm_decode_block$48$B)
	.dwattr $C$DW$288, DW_AT_high_pc($C$DW$L$_adpcm_decode_block$48$E)

$C$DW$289	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$289, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/adpcm_encode/adpcm_encode_test.asm:$C$L102:2:1738600387")
	.dwattr $C$DW$289, DW_AT_TI_begin_file("./adpcm_encode_test.c")
	.dwattr $C$DW$289, DW_AT_TI_begin_line(0x236)
	.dwattr $C$DW$289, DW_AT_TI_end_line(0x266)
$C$DW$290	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$290, DW_AT_low_pc($C$DW$L$_adpcm_decode_block$11$B)
	.dwattr $C$DW$290, DW_AT_high_pc($C$DW$L$_adpcm_decode_block$11$E)
$C$DW$291	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$291, DW_AT_low_pc($C$DW$L$_adpcm_decode_block$47$B)
	.dwattr $C$DW$291, DW_AT_high_pc($C$DW$L$_adpcm_decode_block$47$E)

$C$DW$292	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$292, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/adpcm_encode/adpcm_encode_test.asm:$C$L103:3:1738600387")
	.dwattr $C$DW$292, DW_AT_TI_begin_file("./adpcm_encode_test.c")
	.dwattr $C$DW$292, DW_AT_TI_begin_line(0x239)
	.dwattr $C$DW$292, DW_AT_TI_end_line(0x263)
$C$DW$293	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$293, DW_AT_low_pc($C$DW$L$_adpcm_decode_block$12$B)
	.dwattr $C$DW$293, DW_AT_high_pc($C$DW$L$_adpcm_decode_block$12$E)
$C$DW$294	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$294, DW_AT_low_pc($C$DW$L$_adpcm_decode_block$13$B)
	.dwattr $C$DW$294, DW_AT_high_pc($C$DW$L$_adpcm_decode_block$13$E)
$C$DW$295	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$295, DW_AT_low_pc($C$DW$L$_adpcm_decode_block$14$B)
	.dwattr $C$DW$295, DW_AT_high_pc($C$DW$L$_adpcm_decode_block$14$E)
$C$DW$296	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$296, DW_AT_low_pc($C$DW$L$_adpcm_decode_block$15$B)
	.dwattr $C$DW$296, DW_AT_high_pc($C$DW$L$_adpcm_decode_block$15$E)
$C$DW$297	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$297, DW_AT_low_pc($C$DW$L$_adpcm_decode_block$16$B)
	.dwattr $C$DW$297, DW_AT_high_pc($C$DW$L$_adpcm_decode_block$16$E)
$C$DW$298	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$298, DW_AT_low_pc($C$DW$L$_adpcm_decode_block$17$B)
	.dwattr $C$DW$298, DW_AT_high_pc($C$DW$L$_adpcm_decode_block$17$E)
$C$DW$299	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$299, DW_AT_low_pc($C$DW$L$_adpcm_decode_block$18$B)
	.dwattr $C$DW$299, DW_AT_high_pc($C$DW$L$_adpcm_decode_block$18$E)
$C$DW$300	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$300, DW_AT_low_pc($C$DW$L$_adpcm_decode_block$19$B)
	.dwattr $C$DW$300, DW_AT_high_pc($C$DW$L$_adpcm_decode_block$19$E)
$C$DW$301	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$301, DW_AT_low_pc($C$DW$L$_adpcm_decode_block$20$B)
	.dwattr $C$DW$301, DW_AT_high_pc($C$DW$L$_adpcm_decode_block$20$E)
$C$DW$302	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$302, DW_AT_low_pc($C$DW$L$_adpcm_decode_block$21$B)
	.dwattr $C$DW$302, DW_AT_high_pc($C$DW$L$_adpcm_decode_block$21$E)
$C$DW$303	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$303, DW_AT_low_pc($C$DW$L$_adpcm_decode_block$22$B)
	.dwattr $C$DW$303, DW_AT_high_pc($C$DW$L$_adpcm_decode_block$22$E)
$C$DW$304	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$304, DW_AT_low_pc($C$DW$L$_adpcm_decode_block$23$B)
	.dwattr $C$DW$304, DW_AT_high_pc($C$DW$L$_adpcm_decode_block$23$E)
$C$DW$305	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$305, DW_AT_low_pc($C$DW$L$_adpcm_decode_block$24$B)
	.dwattr $C$DW$305, DW_AT_high_pc($C$DW$L$_adpcm_decode_block$24$E)
$C$DW$306	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$306, DW_AT_low_pc($C$DW$L$_adpcm_decode_block$25$B)
	.dwattr $C$DW$306, DW_AT_high_pc($C$DW$L$_adpcm_decode_block$25$E)
$C$DW$307	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$307, DW_AT_low_pc($C$DW$L$_adpcm_decode_block$26$B)
	.dwattr $C$DW$307, DW_AT_high_pc($C$DW$L$_adpcm_decode_block$26$E)
$C$DW$308	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$308, DW_AT_low_pc($C$DW$L$_adpcm_decode_block$27$B)
	.dwattr $C$DW$308, DW_AT_high_pc($C$DW$L$_adpcm_decode_block$27$E)
$C$DW$309	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$309, DW_AT_low_pc($C$DW$L$_adpcm_decode_block$28$B)
	.dwattr $C$DW$309, DW_AT_high_pc($C$DW$L$_adpcm_decode_block$28$E)
$C$DW$310	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$310, DW_AT_low_pc($C$DW$L$_adpcm_decode_block$29$B)
	.dwattr $C$DW$310, DW_AT_high_pc($C$DW$L$_adpcm_decode_block$29$E)
$C$DW$311	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$311, DW_AT_low_pc($C$DW$L$_adpcm_decode_block$30$B)
	.dwattr $C$DW$311, DW_AT_high_pc($C$DW$L$_adpcm_decode_block$30$E)
$C$DW$312	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$312, DW_AT_low_pc($C$DW$L$_adpcm_decode_block$31$B)
	.dwattr $C$DW$312, DW_AT_high_pc($C$DW$L$_adpcm_decode_block$31$E)
$C$DW$313	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$313, DW_AT_low_pc($C$DW$L$_adpcm_decode_block$32$B)
	.dwattr $C$DW$313, DW_AT_high_pc($C$DW$L$_adpcm_decode_block$32$E)
$C$DW$314	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$314, DW_AT_low_pc($C$DW$L$_adpcm_decode_block$33$B)
	.dwattr $C$DW$314, DW_AT_high_pc($C$DW$L$_adpcm_decode_block$33$E)
$C$DW$315	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$315, DW_AT_low_pc($C$DW$L$_adpcm_decode_block$34$B)
	.dwattr $C$DW$315, DW_AT_high_pc($C$DW$L$_adpcm_decode_block$34$E)
$C$DW$316	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$316, DW_AT_low_pc($C$DW$L$_adpcm_decode_block$35$B)
	.dwattr $C$DW$316, DW_AT_high_pc($C$DW$L$_adpcm_decode_block$35$E)
$C$DW$317	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$317, DW_AT_low_pc($C$DW$L$_adpcm_decode_block$36$B)
	.dwattr $C$DW$317, DW_AT_high_pc($C$DW$L$_adpcm_decode_block$36$E)
$C$DW$318	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$318, DW_AT_low_pc($C$DW$L$_adpcm_decode_block$37$B)
	.dwattr $C$DW$318, DW_AT_high_pc($C$DW$L$_adpcm_decode_block$37$E)
$C$DW$319	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$319, DW_AT_low_pc($C$DW$L$_adpcm_decode_block$38$B)
	.dwattr $C$DW$319, DW_AT_high_pc($C$DW$L$_adpcm_decode_block$38$E)
$C$DW$320	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$320, DW_AT_low_pc($C$DW$L$_adpcm_decode_block$39$B)
	.dwattr $C$DW$320, DW_AT_high_pc($C$DW$L$_adpcm_decode_block$39$E)
$C$DW$321	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$321, DW_AT_low_pc($C$DW$L$_adpcm_decode_block$40$B)
	.dwattr $C$DW$321, DW_AT_high_pc($C$DW$L$_adpcm_decode_block$40$E)
$C$DW$322	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$322, DW_AT_low_pc($C$DW$L$_adpcm_decode_block$41$B)
	.dwattr $C$DW$322, DW_AT_high_pc($C$DW$L$_adpcm_decode_block$41$E)
$C$DW$323	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$323, DW_AT_low_pc($C$DW$L$_adpcm_decode_block$42$B)
	.dwattr $C$DW$323, DW_AT_high_pc($C$DW$L$_adpcm_decode_block$42$E)
$C$DW$324	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$324, DW_AT_low_pc($C$DW$L$_adpcm_decode_block$43$B)
	.dwattr $C$DW$324, DW_AT_high_pc($C$DW$L$_adpcm_decode_block$43$E)
$C$DW$325	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$325, DW_AT_low_pc($C$DW$L$_adpcm_decode_block$44$B)
	.dwattr $C$DW$325, DW_AT_high_pc($C$DW$L$_adpcm_decode_block$44$E)
$C$DW$326	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$326, DW_AT_low_pc($C$DW$L$_adpcm_decode_block$45$B)
	.dwattr $C$DW$326, DW_AT_high_pc($C$DW$L$_adpcm_decode_block$45$E)
$C$DW$327	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$327, DW_AT_low_pc($C$DW$L$_adpcm_decode_block$46$B)
	.dwattr $C$DW$327, DW_AT_high_pc($C$DW$L$_adpcm_decode_block$46$E)
	.dwendtag $C$DW$292

	.dwendtag $C$DW$289

	.dwendtag $C$DW$286


$C$DW$328	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$328, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/adpcm_encode/adpcm_encode_test.asm:$C$L97:1:1738600387")
	.dwattr $C$DW$328, DW_AT_TI_begin_file("./adpcm_encode_test.c")
	.dwattr $C$DW$328, DW_AT_TI_begin_line(0x223)
	.dwattr $C$DW$328, DW_AT_TI_end_line(0x22d)
$C$DW$329	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$329, DW_AT_low_pc($C$DW$L$_adpcm_decode_block$4$B)
	.dwattr $C$DW$329, DW_AT_high_pc($C$DW$L$_adpcm_decode_block$4$E)
$C$DW$330	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$330, DW_AT_low_pc($C$DW$L$_adpcm_decode_block$5$B)
	.dwattr $C$DW$330, DW_AT_high_pc($C$DW$L$_adpcm_decode_block$5$E)
$C$DW$331	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$331, DW_AT_low_pc($C$DW$L$_adpcm_decode_block$6$B)
	.dwattr $C$DW$331, DW_AT_high_pc($C$DW$L$_adpcm_decode_block$6$E)
$C$DW$332	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$332, DW_AT_low_pc($C$DW$L$_adpcm_decode_block$8$B)
	.dwattr $C$DW$332, DW_AT_high_pc($C$DW$L$_adpcm_decode_block$8$E)
	.dwendtag $C$DW$328

	.dwattr $C$DW$264, DW_AT_TI_end_file("./adpcm_encode_test.c")
	.dwattr $C$DW$264, DW_AT_TI_end_line(0x26c)
	.dwattr $C$DW$264, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$264

	.sect	".text"
	.global	_adpcm_decode_block_ex

$C$DW$333	.dwtag  DW_TAG_subprogram, DW_AT_name("adpcm_decode_block_ex")
	.dwattr $C$DW$333, DW_AT_low_pc(_adpcm_decode_block_ex)
	.dwattr $C$DW$333, DW_AT_high_pc(0x00)
	.dwattr $C$DW$333, DW_AT_TI_symbol_name("_adpcm_decode_block_ex")
	.dwattr $C$DW$333, DW_AT_external
	.dwattr $C$DW$333, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$333, DW_AT_TI_begin_file("./adpcm_encode_test.c")
	.dwattr $C$DW$333, DW_AT_TI_begin_line(0x27f)
	.dwattr $C$DW$333, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$333, DW_AT_TI_max_frame_size(0x18)
	.dwpsn	file "./adpcm_encode_test.c",line 640,column 1,is_stmt,address _adpcm_decode_block_ex

	.dwfde $C$DW$CIE, _adpcm_decode_block_ex
$C$DW$334	.dwtag  DW_TAG_formal_parameter, DW_AT_name("outbuf")
	.dwattr $C$DW$334, DW_AT_TI_symbol_name("_outbuf")
	.dwattr $C$DW$334, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$334, DW_AT_location[DW_OP_reg17]
$C$DW$335	.dwtag  DW_TAG_formal_parameter, DW_AT_name("inbuf")
	.dwattr $C$DW$335, DW_AT_TI_symbol_name("_inbuf")
	.dwattr $C$DW$335, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$335, DW_AT_location[DW_OP_reg19]
$C$DW$336	.dwtag  DW_TAG_formal_parameter, DW_AT_name("inbufsize")
	.dwattr $C$DW$336, DW_AT_TI_symbol_name("_inbufsize")
	.dwattr $C$DW$336, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$336, DW_AT_location[DW_OP_reg12]
$C$DW$337	.dwtag  DW_TAG_formal_parameter, DW_AT_name("channels")
	.dwattr $C$DW$337, DW_AT_TI_symbol_name("_channels")
	.dwattr $C$DW$337, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$337, DW_AT_location[DW_OP_reg13]
$C$DW$338	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bps")
	.dwattr $C$DW$338, DW_AT_TI_symbol_name("_bps")
	.dwattr $C$DW$338, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$338, DW_AT_location[DW_OP_reg20]
;*******************************************************************************
;* FUNCTION NAME: adpcm_decode_block_ex                                        *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,*
;*                        XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 24 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (22 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_adpcm_decode_block_ex:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-23, SP
	.dwcfi	cfa_offset, 24
$C$DW$339	.dwtag  DW_TAG_variable, DW_AT_name("outbuf")
	.dwattr $C$DW$339, DW_AT_TI_symbol_name("_outbuf")
	.dwattr $C$DW$339, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$339, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$340	.dwtag  DW_TAG_variable, DW_AT_name("inbuf")
	.dwattr $C$DW$340, DW_AT_TI_symbol_name("_inbuf")
	.dwattr $C$DW$340, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$340, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$341	.dwtag  DW_TAG_variable, DW_AT_name("inbufsize")
	.dwattr $C$DW$341, DW_AT_TI_symbol_name("_inbufsize")
	.dwattr $C$DW$341, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$341, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$342	.dwtag  DW_TAG_variable, DW_AT_name("channels")
	.dwattr $C$DW$342, DW_AT_TI_symbol_name("_channels")
	.dwattr $C$DW$342, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$342, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$343	.dwtag  DW_TAG_variable, DW_AT_name("bps")
	.dwattr $C$DW$343, DW_AT_TI_symbol_name("_bps")
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$343, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$344	.dwtag  DW_TAG_variable, DW_AT_name("samples")
	.dwattr $C$DW$344, DW_AT_TI_symbol_name("_samples")
	.dwattr $C$DW$344, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$344, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$345	.dwtag  DW_TAG_variable, DW_AT_name("ch")
	.dwattr $C$DW$345, DW_AT_TI_symbol_name("_ch")
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$345, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$346	.dwtag  DW_TAG_variable, DW_AT_name("pcmdata")
	.dwattr $C$DW$346, DW_AT_TI_symbol_name("_pcmdata")
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$346, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$347	.dwtag  DW_TAG_variable, DW_AT_name("index")
	.dwattr $C$DW$347, DW_AT_TI_symbol_name("_index")
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$347, DW_AT_location[DW_OP_bregx 0x24 14]
        MOV AR2, *SP(#6) ; |640| 
        MOV T1, *SP(#5) ; |640| 
        MOV T0, *SP(#4) ; |640| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./adpcm_encode_test.c",line 641,column 9,is_stmt
        MOV #1, *SP(#7) ; |641| 
	.dwpsn	file "./adpcm_encode_test.c",line 645,column 5,is_stmt
        CMP *SP(#6) == #4, TC1 ; |645| 
        BCC $C$L126,!TC1 ; |645| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |645| 
	.dwpsn	file "./adpcm_encode_test.c",line 646,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#2)), XAR1
        MOV *SP(#4), T0 ; |646| 
        MOV *SP(#5), T1 ; |646| 
$C$DW$348	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$348, DW_AT_low_pc(0x00)
	.dwattr $C$DW$348, DW_AT_name("_adpcm_decode_block")
	.dwattr $C$DW$348, DW_AT_TI_call
        CALL #_adpcm_decode_block ; |646| 
                                        ; call occurs [#_adpcm_decode_block] ; |646| 
        B $C$L177 ; |646| 
                                        ; branch occurs ; |646| 
$C$L126:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 648,column 5,is_stmt

        MOV *SP(#6), AR1 ; |648| 
||      MOV #2, AR2

        CMP AR1 < AR2, TC1 ; |648| 
        BCC $C$L127,TC1 ; |648| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |648| 
        MOV #5, AR2
        CMP AR1 > AR2, TC1 ; |648| 
        BCC $C$L127,TC1 ; |648| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |648| 
        MOV *SP(#5), AC0 ; |648| 

        SFTL AC0, #2, AC0 ; |648| 
||      MOV uns(*SP(#4)), AC1 ; |648| 

        CMPU AC1 >= AC0, TC1 ; |648| 
        BCC $C$L128,TC1 ; |648| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |648| 
$C$L127:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 649,column 9,is_stmt
        MOV #0, T0
        B $C$L177 ; |649| 
                                        ; branch occurs ; |649| 
$C$L128:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 651,column 10,is_stmt
        MOV #0, *SP(#8) ; |651| 
	.dwpsn	file "./adpcm_encode_test.c",line 651,column 18,is_stmt
        MOV *SP(#5), AR1 ; |651| 
        MOV *SP(#8), AR2 ; |651| 
        CMP AR2 >= AR1, TC1 ; |651| 
        BCC $C$L132,TC1 ; |651| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |651| 
$C$L129:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block_ex$8$B:
	.dwpsn	file "./adpcm_encode_test.c",line 653,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV AR2, T0

        MOV *AR3, AC0 ; |653| 
||      SFTL T0, #1 ; |653| 

        MOV *AR3(short(#1)), AC1 ; |653| 
        OR AC1 << #8, AC0 ; |653| 
        MOV mmap(AC0L), AC0 ; |653| 
        AMAR *SP(#10), XAR3
        MOV AC0, dbl(*AR3(T0)) ; |653| 
        MOV dbl(*SP(#0)), XAR2
        AMAR *AR2, XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#0))
        MOV AC0, *AR2 ; |653| 
	.dwpsn	file "./adpcm_encode_test.c",line 654,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#8), T0 ; |654| 
        AMAR *SP(#14), XAR2
        MOV *AR3(short(#2)), AR1 ; |654| 
        MOV AR1, *AR2(T0) ; |654| 
	.dwpsn	file "./adpcm_encode_test.c",line 656,column 9,is_stmt
        MOV *SP(#8), T0 ; |656| 
        AMAR *SP(#14), XAR3
        MOV *AR3(T0), AR1 ; |656| 
        BCC $C$L130,AR1 < #0 ; |656| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |656| 
$C$DW$L$_adpcm_decode_block_ex$8$E:
$C$DW$L$_adpcm_decode_block_ex$9$B:
        AMAR *SP(#14), XAR3
        MOV #88, AR2 ; |656| 
        MOV *AR3(T0), AR1 ; |656| 
        CMP AR1 > AR2, TC1 ; |656| 
        BCC $C$L130,TC1 ; |656| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |656| 
$C$DW$L$_adpcm_decode_block_ex$9$E:
$C$DW$L$_adpcm_decode_block_ex$10$B:
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#3)), AR1 ; |656| 
        BCC $C$L131,AR1 == #0 ; |656| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |656| 
$C$DW$L$_adpcm_decode_block_ex$10$E:
$C$L130:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 657,column 13,is_stmt
        MOV #0, T0
        B $C$L177 ; |657| 
                                        ; branch occurs ; |657| 
$C$L131:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block_ex$12$B:
	.dwpsn	file "./adpcm_encode_test.c",line 659,column 9,is_stmt
        SUB #4, *SP(#4) ; |659| 
	.dwpsn	file "./adpcm_encode_test.c",line 660,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3

        MOV XAR3, dbl(*SP(#2))
||      AADD #4, AR3 ; |660| 

	.dwpsn	file "./adpcm_encode_test.c",line 651,column 33,is_stmt
        ADD #1, *SP(#8) ; |651| 
	.dwpsn	file "./adpcm_encode_test.c",line 651,column 18,is_stmt
        MOV *SP(#5), AR1 ; |651| 
        MOV *SP(#8), AR2 ; |651| 
        CMP AR2 < AR1, TC1 ; |651| 
        BCC $C$L129,TC1 ; |651| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |651| 
$C$DW$L$_adpcm_decode_block_ex$12$E:
$C$L132:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 663,column 5,is_stmt
        MOV *SP(#4), AR1 ; |663| 
        BCC $C$L133,AR1 == #0 ; |663| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |663| 

        MOV AR1, T0 ; |663| 
||      MOV *SP(#5) << #2, AC0 ; |663| 

$C$DW$349	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$349, DW_AT_low_pc(0x00)
	.dwattr $C$DW$349, DW_AT_name("__remu")
	.dwattr $C$DW$349, DW_AT_TI_call

        CALL #__remu ; |663| 
||      MOV AC0, T1 ; |663| 

                                        ; call occurs [#__remu] ; |663| 
        BCC $C$L134,T0 == #0 ; |663| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |663| 
$C$L133:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 664,column 9,is_stmt
        MOV *SP(#7), T0 ; |664| 
        B $C$L177 ; |664| 
                                        ; branch occurs ; |664| 
$C$L134:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 666,column 5,is_stmt
        MOV *SP(#4), T0 ; |666| 
        MOV *SP(#5), T1 ; |666| 
$C$DW$350	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$350, DW_AT_low_pc(0x00)
	.dwattr $C$DW$350, DW_AT_name("__divu")
	.dwattr $C$DW$350, DW_AT_TI_call
        CALL #__divu ; |666| 
                                        ; call occurs [#__divu] ; |666| 
        MOV T0, AC0 ; |666| 

        SFTL AC0, #3, AC0 ; |666| 
||      MOV *SP(#6), T1 ; |666| 

$C$DW$351	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$351, DW_AT_low_pc(0x00)
	.dwattr $C$DW$351, DW_AT_name("__divu")
	.dwattr $C$DW$351, DW_AT_TI_call

        CALL #__divu ; |666| 
||      MOV AC0, T0 ; |666| 

                                        ; call occurs [#__divu] ; |666| 
        ADD *SP(#7), T0, AR1 ; |666| 
        MOV AR1, *SP(#7) ; |666| 
	.dwpsn	file "./adpcm_encode_test.c",line 668,column 5,is_stmt
        B $C$L175 ; |668| 
                                        ; branch occurs ; |668| 
$C$L135:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 671,column 14,is_stmt
        MOV #0, *SP(#8) ; |671| 
	.dwpsn	file "./adpcm_encode_test.c",line 671,column 22,is_stmt
        MOV *SP(#5), AR1 ; |671| 
        MOV *SP(#8), AR2 ; |671| 
        CMP AR2 >= AR1, TC1 ; |671| 
        BCC $C$L176,TC1 ; |671| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |671| 
$C$L136:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block_ex$19$B:

$C$DW$352	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$353	.dwtag  DW_TAG_variable, DW_AT_name("shiftbits")
	.dwattr $C$DW$353, DW_AT_TI_symbol_name("_shiftbits")
	.dwattr $C$DW$353, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$353, DW_AT_location[DW_OP_bregx 0x24 16]
$C$DW$354	.dwtag  DW_TAG_variable, DW_AT_name("numbits")
	.dwattr $C$DW$354, DW_AT_TI_symbol_name("_numbits")
	.dwattr $C$DW$354, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$354, DW_AT_location[DW_OP_bregx 0x24 17]
$C$DW$355	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$355, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$355, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$355, DW_AT_location[DW_OP_bregx 0x24 18]
$C$DW$356	.dwtag  DW_TAG_variable, DW_AT_name("j")
	.dwattr $C$DW$356, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$356, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$356, DW_AT_location[DW_OP_bregx 0x24 19]
	.dwpsn	file "./adpcm_encode_test.c",line 673,column 17,is_stmt
        MOV #0, *SP(#16) ; |673| 
	.dwpsn	file "./adpcm_encode_test.c",line 673,column 32,is_stmt
        MOV #0, *SP(#17) ; |673| 
	.dwpsn	file "./adpcm_encode_test.c",line 675,column 18,is_stmt
        MOV #0, AR1
        MOV AR1, *SP(#18) ; |675| 
        MOV AR1, *SP(#19) ; |675| 
	.dwpsn	file "./adpcm_encode_test.c",line 675,column 29,is_stmt
        MOV *SP(#7), AR1 ; |675| 

        SUB #1, AR1 ; |675| 
||      MOV *SP(#18), AR2 ; |675| 

        CMP AR2 >= AR1, TC1 ; |675| 
        BCC $C$L145,TC1 ; |675| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |675| 
$C$DW$L$_adpcm_decode_block_ex$19$E:
$C$L137:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block_ex$20$B:

$C$DW$357	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$358	.dwtag  DW_TAG_variable, DW_AT_name("step")
	.dwattr $C$DW$358, DW_AT_TI_symbol_name("_step")
	.dwattr $C$DW$358, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$358, DW_AT_location[DW_OP_bregx 0x24 20]
	.dwpsn	file "./adpcm_encode_test.c",line 677,column 26,is_stmt
        MOV *SP(#8), T0 ; |677| 
        AMAR *SP(#14), XAR3
        MOV *AR3(T0), T0 ; |677| 
        AMOV #_step_table, XAR3 ; |677| 
        MOV *AR3(T0), AR1 ; |677| 
        MOV AR1, *SP(#20) ; |677| 
	.dwpsn	file "./adpcm_encode_test.c",line 679,column 17,is_stmt
        MOV *SP(#17), AR2 ; |679| 
        MOV *SP(#6), AR1 ; |679| 
        CMP AR2 >= AR1, TC1 ; |679| 
        BCC $C$L138,TC1 ; |679| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |679| 
$C$DW$L$_adpcm_decode_block_ex$20$E:
$C$DW$L$_adpcm_decode_block_ex$21$B:
	.dwpsn	file "./adpcm_encode_test.c",line 681,column 21,is_stmt
        MOV *SP(#19), AR1 ; |681| 
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#8) << #2, AC0 ; |681| 
        AND #0xfffffffc, AR1, T1 ; |681| 

        MACM *SP(#5), T1, AC0, AC0 ; |681| 
||      AND #0x0003, AR1, T0 ; |681| 

        ADD AC0, T0 ; |681| 

        MOV *AR3(T0), AC0 ; |681| 
||      MOV AR2, T1 ; |681| 

        SFTL AC0, T1, AC0 ; |681| 
        OR *SP(#16), AC0, AR1 ; |681| 
        MOV AR1, *SP(#16) ; |681| 
	.dwpsn	file "./adpcm_encode_test.c",line 682,column 21,is_stmt
        ADD #8, *SP(#17) ; |682| 
	.dwpsn	file "./adpcm_encode_test.c",line 683,column 21,is_stmt
        ADD #1, *SP(#19) ; |683| 
$C$DW$L$_adpcm_decode_block_ex$21$E:
$C$L138:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block_ex$22$B:
	.dwpsn	file "./adpcm_encode_test.c",line 686,column 17,is_stmt
        BTST #1, *SP(#16), TC1 ; |686| 
        BCC $C$L139,!TC1 ; |686| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |686| 
$C$DW$L$_adpcm_decode_block_ex$22$E:
$C$DW$L$_adpcm_decode_block_ex$23$B:
	.dwpsn	file "./adpcm_encode_test.c",line 687,column 21,is_stmt
        MOV *SP(#16), AR1 ; |687| 

        AND #0x0001, AR1, T1 ; |687| 
||      MOV *SP(#8) << #1, AC0 ; |687| 

        MOV AC0, T0 ; |687| 
||      MOV *SP(#20), AC1 ; |687| 

        MOV AC1, AR1 ; |687| 
        SFTL AR1, #-1 ; |687| 

        MOV AR1, AC1 ; |687| 
||      AMAR *SP(#10), XAR3

        MACM *SP(#20), T1, AC1, AC1 ; |687| 
        AND #0xffff, AC1, AC1 ; |687| 
        SUB AC1, dbl(*AR3(T0)), AC1 ; |687| 
        MOV AC1, dbl(*AR3(T0)) ; |687| 
        B $C$L140 ; |687| 
                                        ; branch occurs ; |687| 
$C$DW$L$_adpcm_decode_block_ex$23$E:
$C$L139:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block_ex$24$B:
	.dwpsn	file "./adpcm_encode_test.c",line 689,column 21,is_stmt
        MOV *SP(#16), AR1 ; |689| 

        AND #0x0001, AR1, T1 ; |689| 
||      MOV *SP(#8) << #1, AC0 ; |689| 

        MOV AC0, T0 ; |689| 
||      MOV *SP(#20), AC1 ; |689| 

        MOV AC1, AR1 ; |689| 
        SFTL AR1, #-1 ; |689| 

        MOV AR1, AC1 ; |689| 
||      AMAR *SP(#10), XAR3

        MACM *SP(#20), T1, AC1, AC1 ; |689| 
        AND #0xffff, AC1, AC1 ; |689| 
        ADD dbl(*AR3(T0)), AC1, AC1 ; |689| 
        MOV AC1, dbl(*AR3(T0)) ; |689| 
$C$DW$L$_adpcm_decode_block_ex$24$E:
$C$L140:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block_ex$25$B:
	.dwpsn	file "./adpcm_encode_test.c",line 691,column 17,is_stmt
        MOV *SP(#8), T0 ; |691| 
        MOV *SP(#16), AR1 ; |691| 
        AMAR *SP(#14), XAR3

        MOV *AR3(T0), AC0 ; |691| 
||      AND #0x0001, AR1, T1 ; |691| 

        MACK T1, #3, AC0, AC0 ; |691| 
        SUB #1, AC0 ; |691| 
        MOV AC0, *AR3(T0) ; |691| 
	.dwpsn	file "./adpcm_encode_test.c",line 692,column 17,is_stmt
        MOV *SP(#6), AR1 ; |692| 

        NEG AR1, T1 ; |692| 
||      MOV *SP(#16), AC0 ; |692| 

        SFTS AC0, T1, AC0 ; |692| 
        MOV AC0, *SP(#16) ; |692| 
	.dwpsn	file "./adpcm_encode_test.c",line 693,column 17,is_stmt
        MOV *SP(#6), AR1 ; |693| 
        SUB AR1, *SP(#17), AR1 ; |693| 
        MOV AR1, *SP(#17) ; |693| 
	.dwpsn	file "./adpcm_encode_test.c",line 695,column 17,is_stmt
        MOV *SP(#8), T0 ; |695| 
        AMAR *SP(#14), XAR3
        MOV #88, AR2 ; |695| 
        MOV *AR3(T0), AR1 ; |695| 
        CMP AR1 <= AR2, TC1 ; |695| 
        BCC $C$L141,TC1 ; |695| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |695| 
$C$DW$L$_adpcm_decode_block_ex$25$E:
$C$DW$L$_adpcm_decode_block_ex$26$B:
        AMAR *SP(#14), XAR3
        MOV #88, *AR3(T0) ; |695| 
        B $C$L142 ; |695| 
                                        ; branch occurs ; |695| 
$C$DW$L$_adpcm_decode_block_ex$26$E:
$C$L141:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block_ex$27$B:
        AMAR *SP(#14), XAR3
        MOV *AR3(T0), AR1 ; |695| 
        BCC $C$L142,AR1 >= #0 ; |695| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |695| 
$C$DW$L$_adpcm_decode_block_ex$27$E:
$C$DW$L$_adpcm_decode_block_ex$28$B:
        AMAR *SP(#14), XAR3
        MOV #0, *AR3(T0) ; |695| 
$C$DW$L$_adpcm_decode_block_ex$28$E:
$C$L142:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block_ex$29$B:
	.dwpsn	file "./adpcm_encode_test.c",line 696,column 17,is_stmt
        MOV *SP(#8), T0 ; |696| 
        SFTL T0, #1 ; |696| 
        AMAR *SP(#10), XAR3
        MOV #32767, AC0 ; |696| 
        MOV dbl(*AR3(T0)), AC1 ; |696| 
        CMP AC1 <= AC0, TC1 ; |696| 
        BCC $C$L143,TC1 ; |696| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |696| 
$C$DW$L$_adpcm_decode_block_ex$29$E:
$C$DW$L$_adpcm_decode_block_ex$30$B:
        MOV *SP(#8), T0 ; |696| 
        SFTL T0, #1 ; |696| 
        AMAR *SP(#10), XAR3
        MOV AC0, dbl(*AR3(T0)) ; |696| 
        B $C$L144 ; |696| 
                                        ; branch occurs ; |696| 
$C$DW$L$_adpcm_decode_block_ex$30$E:
$C$L143:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block_ex$31$B:
        MOV *SP(#8), T0 ; |696| 
        SFTL T0, #1 ; |696| 
        AMAR *SP(#10), XAR3
        MOV #-32768, AC0 ; |696| 
        MOV dbl(*AR3(T0)), AC1 ; |696| 
        CMP AC1 >= AC0, TC1 ; |696| 
        BCC $C$L144,TC1 ; |696| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |696| 
$C$DW$L$_adpcm_decode_block_ex$31$E:
$C$DW$L$_adpcm_decode_block_ex$32$B:
        MOV *SP(#8), T0 ; |696| 
        SFTL T0, #1 ; |696| 
        AMAR *SP(#10), XAR3
        MOV AC0, dbl(*AR3(T0)) ; |696| 
$C$DW$L$_adpcm_decode_block_ex$32$E:
$C$L144:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block_ex$33$B:
	.dwpsn	file "./adpcm_encode_test.c",line 697,column 17,is_stmt
        MOV *SP(#5), T1 ; |697| 
        MOV *SP(#8), AC0 ; |697| 
        MACM *SP(#18), T1, AC0, AC0 ; |697| 
        MOV dbl(*SP(#0)), XAR3
        MOV AC0, AR1 ; |697| 
        MOV *SP(#8), T0 ; |697| 
        SFTL T0, #1 ; |697| 
        AMAR *SP(#11), XAR2
        AADD AR1, AR3 ; |697| 
        MOV *AR2(T0), *AR3 ; |697| 
	.dwendtag $C$DW$357

	.dwpsn	file "./adpcm_encode_test.c",line 675,column 46,is_stmt
        ADD #1, *SP(#18) ; |675| 
	.dwpsn	file "./adpcm_encode_test.c",line 675,column 29,is_stmt
        MOV *SP(#7), AR1 ; |675| 

        SUB #1, AR1 ; |675| 
||      MOV *SP(#18), AR2 ; |675| 

        CMP AR2 < AR1, TC1 ; |675| 
        BCC $C$L137,TC1 ; |675| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |675| 
$C$DW$L$_adpcm_decode_block_ex$33$E:
$C$L145:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block_ex$34$B:
	.dwendtag $C$DW$352

	.dwpsn	file "./adpcm_encode_test.c",line 671,column 37,is_stmt
        ADD #1, *SP(#8) ; |671| 
	.dwpsn	file "./adpcm_encode_test.c",line 671,column 22,is_stmt
        MOV *SP(#5), AR1 ; |671| 
        MOV *SP(#8), AR2 ; |671| 
        CMP AR2 < AR1, TC1 ; |671| 
        BCC $C$L136,TC1 ; |671| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |671| 
$C$DW$L$_adpcm_decode_block_ex$34$E:
	.dwpsn	file "./adpcm_encode_test.c",line 701,column 14,is_stmt
        B $C$L176 ; |701| 
                                        ; branch occurs ; |701| 
$C$L146:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 704,column 14,is_stmt
        MOV #0, *SP(#8) ; |704| 
	.dwpsn	file "./adpcm_encode_test.c",line 704,column 22,is_stmt
        MOV *SP(#5), AR1 ; |704| 
        MOV *SP(#8), AR2 ; |704| 
        CMP AR2 >= AR1, TC1 ; |704| 
        BCC $C$L176,TC1 ; |704| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |704| 
$C$L147:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block_ex$37$B:

$C$DW$359	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$360	.dwtag  DW_TAG_variable, DW_AT_name("shiftbits")
	.dwattr $C$DW$360, DW_AT_TI_symbol_name("_shiftbits")
	.dwattr $C$DW$360, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$360, DW_AT_location[DW_OP_bregx 0x24 16]
$C$DW$361	.dwtag  DW_TAG_variable, DW_AT_name("numbits")
	.dwattr $C$DW$361, DW_AT_TI_symbol_name("_numbits")
	.dwattr $C$DW$361, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$361, DW_AT_location[DW_OP_bregx 0x24 17]
$C$DW$362	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$362, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$362, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$362, DW_AT_location[DW_OP_bregx 0x24 18]
$C$DW$363	.dwtag  DW_TAG_variable, DW_AT_name("j")
	.dwattr $C$DW$363, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$363, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$363, DW_AT_location[DW_OP_bregx 0x24 19]
	.dwpsn	file "./adpcm_encode_test.c",line 706,column 17,is_stmt
        MOV #0, *SP(#16) ; |706| 
	.dwpsn	file "./adpcm_encode_test.c",line 706,column 32,is_stmt
        MOV #0, *SP(#17) ; |706| 
	.dwpsn	file "./adpcm_encode_test.c",line 708,column 18,is_stmt
        MOV #0, AR1
        MOV AR1, *SP(#18) ; |708| 
        MOV AR1, *SP(#19) ; |708| 
	.dwpsn	file "./adpcm_encode_test.c",line 708,column 29,is_stmt
        MOV *SP(#7), AR1 ; |708| 

        SUB #1, AR1 ; |708| 
||      MOV *SP(#18), AR2 ; |708| 

        CMP AR2 >= AR1, TC1 ; |708| 
        BCC $C$L158,TC1 ; |708| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |708| 
$C$DW$L$_adpcm_decode_block_ex$37$E:
$C$L148:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block_ex$38$B:

$C$DW$364	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$365	.dwtag  DW_TAG_variable, DW_AT_name("step")
	.dwattr $C$DW$365, DW_AT_TI_symbol_name("_step")
	.dwattr $C$DW$365, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$365, DW_AT_location[DW_OP_bregx 0x24 20]
$C$DW$366	.dwtag  DW_TAG_variable, DW_AT_name("delta")
	.dwattr $C$DW$366, DW_AT_TI_symbol_name("_delta")
	.dwattr $C$DW$366, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$366, DW_AT_location[DW_OP_bregx 0x24 21]
	.dwpsn	file "./adpcm_encode_test.c",line 710,column 26,is_stmt
        MOV *SP(#8), T0 ; |710| 
        AMAR *SP(#14), XAR3
        MOV *AR3(T0), T0 ; |710| 
        AMOV #_step_table, XAR3 ; |710| 
        MOV *AR3(T0), AR1 ; |710| 
        MOV AR1, *SP(#20) ; |710| 
	.dwpsn	file "./adpcm_encode_test.c",line 710,column 56,is_stmt
        MOV uns(*SP(#20)), AC0 ; |710| 
        SFTS AC0, #-2, AC0 ; |710| 
        MOV AC0, *SP(#21) ; |710| 
	.dwpsn	file "./adpcm_encode_test.c",line 712,column 17,is_stmt
        MOV *SP(#17), AR2 ; |712| 
        MOV *SP(#6), AR1 ; |712| 
        CMP AR2 >= AR1, TC1 ; |712| 
        BCC $C$L149,TC1 ; |712| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |712| 
$C$DW$L$_adpcm_decode_block_ex$38$E:
$C$DW$L$_adpcm_decode_block_ex$39$B:
	.dwpsn	file "./adpcm_encode_test.c",line 714,column 21,is_stmt
        MOV *SP(#19), AR1 ; |714| 
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#8) << #2, AC0 ; |714| 
        AND #0xfffffffc, AR1, T1 ; |714| 

        MACM *SP(#5), T1, AC0, AC0 ; |714| 
||      AND #0x0003, AR1, T0 ; |714| 

        ADD AC0, T0 ; |714| 

        MOV *AR3(T0), AC0 ; |714| 
||      MOV AR2, T1 ; |714| 

        SFTL AC0, T1, AC0 ; |714| 
        OR *SP(#16), AC0, AR1 ; |714| 
        MOV AR1, *SP(#16) ; |714| 
	.dwpsn	file "./adpcm_encode_test.c",line 715,column 21,is_stmt
        ADD #8, *SP(#17) ; |715| 
	.dwpsn	file "./adpcm_encode_test.c",line 716,column 21,is_stmt
        ADD #1, *SP(#19) ; |716| 
$C$DW$L$_adpcm_decode_block_ex$39$E:
$C$L149:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block_ex$40$B:
	.dwpsn	file "./adpcm_encode_test.c",line 719,column 17,is_stmt
        BTST #0, *SP(#16), TC1 ; |719| 
        BCC $C$L150,!TC1 ; |719| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |719| 
$C$DW$L$_adpcm_decode_block_ex$40$E:
$C$DW$L$_adpcm_decode_block_ex$41$B:
	.dwpsn	file "./adpcm_encode_test.c",line 720,column 21,is_stmt
        MOV *SP(#20), AR1 ; |720| 
        SFTL AR1, #-1 ; |720| 
        ADD *SP(#21), AR1, AR1 ; |720| 
        MOV AR1, *SP(#21) ; |720| 
$C$DW$L$_adpcm_decode_block_ex$41$E:
$C$L150:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block_ex$42$B:
	.dwpsn	file "./adpcm_encode_test.c",line 721,column 17,is_stmt
        BTST #1, *SP(#16), TC1 ; |721| 
        BCC $C$L151,!TC1 ; |721| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |721| 
$C$DW$L$_adpcm_decode_block_ex$42$E:
$C$DW$L$_adpcm_decode_block_ex$43$B:
	.dwpsn	file "./adpcm_encode_test.c",line 722,column 21,is_stmt
        MOV *SP(#20), AR1 ; |722| 
        ADD *SP(#21), AR1, AR1 ; |722| 
        MOV AR1, *SP(#21) ; |722| 
$C$DW$L$_adpcm_decode_block_ex$43$E:
$C$L151:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block_ex$44$B:
	.dwpsn	file "./adpcm_encode_test.c",line 724,column 17,is_stmt
        BTST #2, *SP(#16), TC1 ; |724| 
        BCC $C$L152,!TC1 ; |724| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |724| 
$C$DW$L$_adpcm_decode_block_ex$44$E:
$C$DW$L$_adpcm_decode_block_ex$45$B:
	.dwpsn	file "./adpcm_encode_test.c",line 725,column 21,is_stmt
        MOV *SP(#8) << #1, AC0 ; |725| 
        MOV AC0, T0 ; |725| 
        AMAR *SP(#10), XAR3
        MOV uns(*SP(#21)), AC1 ; |725| 
        SUB AC1, dbl(*AR3(T0)), AC1 ; |725| 
        MOV AC1, dbl(*AR3(T0)) ; |725| 
        B $C$L153 ; |725| 
                                        ; branch occurs ; |725| 
$C$DW$L$_adpcm_decode_block_ex$45$E:
$C$L152:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block_ex$46$B:
	.dwpsn	file "./adpcm_encode_test.c",line 727,column 21,is_stmt
        MOV *SP(#8) << #1, AC0 ; |727| 
        MOV AC0, T0 ; |727| 
        AMAR *SP(#10), XAR3
        MOV uns(*SP(#21)), AC1 ; |727| 
        ADD dbl(*AR3(T0)), AC1, AC1 ; |727| 
        MOV AC1, dbl(*AR3(T0)) ; |727| 
$C$DW$L$_adpcm_decode_block_ex$46$E:
$C$L153:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block_ex$47$B:
	.dwpsn	file "./adpcm_encode_test.c",line 729,column 17,is_stmt
        MOV *SP(#16), AR1 ; |729| 
        AND #0x0003, AR1, AR1 ; |729| 
        MOV *SP(#8), T0 ; |729| 
        AMOV #_index_table_3bit, XAR3 ; |729| 
        AMAR *SP(#14), XAR2
        AADD AR1, AR3 ; |729| 
        ADD *AR2(T0), *AR3, AC0 ; |729| 
        MOV HI(AC0), *AR2(T0)
	.dwpsn	file "./adpcm_encode_test.c",line 730,column 17,is_stmt
        MOV *SP(#6), AR1 ; |730| 

        NEG AR1, T1 ; |730| 
||      MOV *SP(#16), AC0 ; |730| 

        SFTS AC0, T1, AC0 ; |730| 
        MOV AC0, *SP(#16) ; |730| 
	.dwpsn	file "./adpcm_encode_test.c",line 731,column 17,is_stmt
        MOV *SP(#6), AR1 ; |731| 
        SUB AR1, *SP(#17), AR1 ; |731| 
        MOV AR1, *SP(#17) ; |731| 
	.dwpsn	file "./adpcm_encode_test.c",line 733,column 17,is_stmt
        MOV *SP(#8), T0 ; |733| 
        AMAR *SP(#14), XAR3
        MOV #88, AR2 ; |733| 
        MOV *AR3(T0), AR1 ; |733| 
        CMP AR1 <= AR2, TC1 ; |733| 
        BCC $C$L154,TC1 ; |733| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |733| 
$C$DW$L$_adpcm_decode_block_ex$47$E:
$C$DW$L$_adpcm_decode_block_ex$48$B:
        AMAR *SP(#14), XAR3
        MOV #88, *AR3(T0) ; |733| 
        B $C$L155 ; |733| 
                                        ; branch occurs ; |733| 
$C$DW$L$_adpcm_decode_block_ex$48$E:
$C$L154:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block_ex$49$B:
        AMAR *SP(#14), XAR3
        MOV *AR3(T0), AR1 ; |733| 
        BCC $C$L155,AR1 >= #0 ; |733| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |733| 
$C$DW$L$_adpcm_decode_block_ex$49$E:
$C$DW$L$_adpcm_decode_block_ex$50$B:
        AMAR *SP(#14), XAR3
        MOV #0, *AR3(T0) ; |733| 
$C$DW$L$_adpcm_decode_block_ex$50$E:
$C$L155:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block_ex$51$B:
	.dwpsn	file "./adpcm_encode_test.c",line 734,column 17,is_stmt
        MOV *SP(#8), T0 ; |734| 
        SFTL T0, #1 ; |734| 
        AMAR *SP(#10), XAR3
        MOV #32767, AC0 ; |734| 
        MOV dbl(*AR3(T0)), AC1 ; |734| 
        CMP AC1 <= AC0, TC1 ; |734| 
        BCC $C$L156,TC1 ; |734| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |734| 
$C$DW$L$_adpcm_decode_block_ex$51$E:
$C$DW$L$_adpcm_decode_block_ex$52$B:
        MOV *SP(#8), T0 ; |734| 
        SFTL T0, #1 ; |734| 
        AMAR *SP(#10), XAR3
        MOV AC0, dbl(*AR3(T0)) ; |734| 
        B $C$L157 ; |734| 
                                        ; branch occurs ; |734| 
$C$DW$L$_adpcm_decode_block_ex$52$E:
$C$L156:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block_ex$53$B:
        MOV *SP(#8), T0 ; |734| 
        SFTL T0, #1 ; |734| 
        AMAR *SP(#10), XAR3
        MOV #-32768, AC0 ; |734| 
        MOV dbl(*AR3(T0)), AC1 ; |734| 
        CMP AC1 >= AC0, TC1 ; |734| 
        BCC $C$L157,TC1 ; |734| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |734| 
$C$DW$L$_adpcm_decode_block_ex$53$E:
$C$DW$L$_adpcm_decode_block_ex$54$B:
        MOV *SP(#8), T0 ; |734| 
        SFTL T0, #1 ; |734| 
        AMAR *SP(#10), XAR3
        MOV AC0, dbl(*AR3(T0)) ; |734| 
$C$DW$L$_adpcm_decode_block_ex$54$E:
$C$L157:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block_ex$55$B:
	.dwpsn	file "./adpcm_encode_test.c",line 735,column 17,is_stmt
        MOV *SP(#5), T1 ; |735| 
        MOV *SP(#8), AC0 ; |735| 
        MACM *SP(#18), T1, AC0, AC0 ; |735| 
        MOV dbl(*SP(#0)), XAR3
        MOV AC0, AR1 ; |735| 
        MOV *SP(#8), T0 ; |735| 
        SFTL T0, #1 ; |735| 
        AMAR *SP(#11), XAR2
        AADD AR1, AR3 ; |735| 
        MOV *AR2(T0), *AR3 ; |735| 
	.dwendtag $C$DW$364

	.dwpsn	file "./adpcm_encode_test.c",line 708,column 46,is_stmt
        ADD #1, *SP(#18) ; |708| 
	.dwpsn	file "./adpcm_encode_test.c",line 708,column 29,is_stmt
        MOV *SP(#7), AR1 ; |708| 

        SUB #1, AR1 ; |708| 
||      MOV *SP(#18), AR2 ; |708| 

        CMP AR2 < AR1, TC1 ; |708| 
        BCC $C$L148,TC1 ; |708| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |708| 
$C$DW$L$_adpcm_decode_block_ex$55$E:
$C$L158:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block_ex$56$B:
	.dwendtag $C$DW$359

	.dwpsn	file "./adpcm_encode_test.c",line 704,column 37,is_stmt
        ADD #1, *SP(#8) ; |704| 
	.dwpsn	file "./adpcm_encode_test.c",line 704,column 22,is_stmt
        MOV *SP(#5), AR1 ; |704| 
        MOV *SP(#8), AR2 ; |704| 
        CMP AR2 < AR1, TC1 ; |704| 
        BCC $C$L147,TC1 ; |704| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |704| 
$C$DW$L$_adpcm_decode_block_ex$56$E:
	.dwpsn	file "./adpcm_encode_test.c",line 739,column 14,is_stmt
        B $C$L176 ; |739| 
                                        ; branch occurs ; |739| 
$C$L159:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 742,column 14,is_stmt
        MOV #0, *SP(#8) ; |742| 
	.dwpsn	file "./adpcm_encode_test.c",line 742,column 22,is_stmt
        MOV *SP(#5), AR1 ; |742| 
        MOV *SP(#8), AR2 ; |742| 
        CMP AR2 >= AR1, TC1 ; |742| 
        BCC $C$L176,TC1 ; |742| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |742| 
$C$L160:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block_ex$59$B:

$C$DW$367	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$368	.dwtag  DW_TAG_variable, DW_AT_name("shiftbits")
	.dwattr $C$DW$368, DW_AT_TI_symbol_name("_shiftbits")
	.dwattr $C$DW$368, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$368, DW_AT_location[DW_OP_bregx 0x24 16]
$C$DW$369	.dwtag  DW_TAG_variable, DW_AT_name("numbits")
	.dwattr $C$DW$369, DW_AT_TI_symbol_name("_numbits")
	.dwattr $C$DW$369, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$369, DW_AT_location[DW_OP_bregx 0x24 17]
$C$DW$370	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$370, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$370, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$370, DW_AT_location[DW_OP_bregx 0x24 18]
$C$DW$371	.dwtag  DW_TAG_variable, DW_AT_name("j")
	.dwattr $C$DW$371, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$371, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$371, DW_AT_location[DW_OP_bregx 0x24 19]
	.dwpsn	file "./adpcm_encode_test.c",line 744,column 17,is_stmt
        MOV #0, *SP(#16) ; |744| 
	.dwpsn	file "./adpcm_encode_test.c",line 744,column 32,is_stmt
        MOV #0, *SP(#17) ; |744| 
	.dwpsn	file "./adpcm_encode_test.c",line 746,column 18,is_stmt
        MOV #0, AR1
        MOV AR1, *SP(#18) ; |746| 
        MOV AR1, *SP(#19) ; |746| 
	.dwpsn	file "./adpcm_encode_test.c",line 746,column 29,is_stmt
        MOV *SP(#7), AR1 ; |746| 

        SUB #1, AR1 ; |746| 
||      MOV *SP(#18), AR2 ; |746| 

        CMP AR2 >= AR1, TC1 ; |746| 
        BCC $C$L173,TC1 ; |746| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |746| 
$C$DW$L$_adpcm_decode_block_ex$59$E:
$C$L161:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block_ex$60$B:

$C$DW$372	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$373	.dwtag  DW_TAG_variable, DW_AT_name("step")
	.dwattr $C$DW$373, DW_AT_TI_symbol_name("_step")
	.dwattr $C$DW$373, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$373, DW_AT_location[DW_OP_bregx 0x24 20]
$C$DW$374	.dwtag  DW_TAG_variable, DW_AT_name("delta")
	.dwattr $C$DW$374, DW_AT_TI_symbol_name("_delta")
	.dwattr $C$DW$374, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$374, DW_AT_location[DW_OP_bregx 0x24 21]
	.dwpsn	file "./adpcm_encode_test.c",line 748,column 26,is_stmt
        MOV *SP(#8), T0 ; |748| 
        AMAR *SP(#14), XAR3
        MOV *AR3(T0), T0 ; |748| 
        AMOV #_step_table, XAR3 ; |748| 
        MOV *AR3(T0), AR1 ; |748| 
        MOV AR1, *SP(#20) ; |748| 
	.dwpsn	file "./adpcm_encode_test.c",line 748,column 56,is_stmt
        MOV uns(*SP(#20)), AC0 ; |748| 
        SFTS AC0, #-4, AC0 ; |748| 
        MOV AC0, *SP(#21) ; |748| 
	.dwpsn	file "./adpcm_encode_test.c",line 750,column 17,is_stmt
        MOV *SP(#17), AR2 ; |750| 
        MOV *SP(#6), AR1 ; |750| 
        CMP AR2 >= AR1, TC1 ; |750| 
        BCC $C$L162,TC1 ; |750| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |750| 
$C$DW$L$_adpcm_decode_block_ex$60$E:
$C$DW$L$_adpcm_decode_block_ex$61$B:
	.dwpsn	file "./adpcm_encode_test.c",line 752,column 21,is_stmt
        MOV *SP(#19), AR1 ; |752| 
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#8) << #2, AC0 ; |752| 
        AND #0xfffffffc, AR1, T1 ; |752| 

        MACM *SP(#5), T1, AC0, AC0 ; |752| 
||      AND #0x0003, AR1, T0 ; |752| 

        ADD AC0, T0 ; |752| 

        MOV *AR3(T0), AC0 ; |752| 
||      MOV AR2, T1 ; |752| 

        SFTL AC0, T1, AC0 ; |752| 
        OR *SP(#16), AC0, AR1 ; |752| 
        MOV AR1, *SP(#16) ; |752| 
	.dwpsn	file "./adpcm_encode_test.c",line 753,column 21,is_stmt
        ADD #8, *SP(#17) ; |753| 
	.dwpsn	file "./adpcm_encode_test.c",line 754,column 21,is_stmt
        ADD #1, *SP(#19) ; |754| 
$C$DW$L$_adpcm_decode_block_ex$61$E:
$C$L162:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block_ex$62$B:
	.dwpsn	file "./adpcm_encode_test.c",line 757,column 17,is_stmt
        BTST #0, *SP(#16), TC1 ; |757| 
        BCC $C$L163,!TC1 ; |757| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |757| 
$C$DW$L$_adpcm_decode_block_ex$62$E:
$C$DW$L$_adpcm_decode_block_ex$63$B:
	.dwpsn	file "./adpcm_encode_test.c",line 758,column 21,is_stmt
        MOV *SP(#20), AC0 ; |758| 
        BFXTR #0xfff8, AC0, AR1 ; |758| 
        ADD *SP(#21), AR1, AR1 ; |758| 
        MOV AR1, *SP(#21) ; |758| 
$C$DW$L$_adpcm_decode_block_ex$63$E:
$C$L163:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block_ex$64$B:
	.dwpsn	file "./adpcm_encode_test.c",line 759,column 17,is_stmt
        BTST #1, *SP(#16), TC1 ; |759| 
        BCC $C$L164,!TC1 ; |759| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |759| 
$C$DW$L$_adpcm_decode_block_ex$64$E:
$C$DW$L$_adpcm_decode_block_ex$65$B:
	.dwpsn	file "./adpcm_encode_test.c",line 760,column 21,is_stmt
        MOV *SP(#20), AC0 ; |760| 
        BFXTR #0xfffc, AC0, AR1 ; |760| 
        ADD *SP(#21), AR1, AR1 ; |760| 
        MOV AR1, *SP(#21) ; |760| 
$C$DW$L$_adpcm_decode_block_ex$65$E:
$C$L164:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block_ex$66$B:
	.dwpsn	file "./adpcm_encode_test.c",line 761,column 17,is_stmt
        BTST #2, *SP(#16), TC1 ; |761| 
        BCC $C$L165,!TC1 ; |761| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |761| 
$C$DW$L$_adpcm_decode_block_ex$66$E:
$C$DW$L$_adpcm_decode_block_ex$67$B:
	.dwpsn	file "./adpcm_encode_test.c",line 762,column 21,is_stmt
        MOV *SP(#20), AR1 ; |762| 
        SFTL AR1, #-1 ; |762| 
        ADD *SP(#21), AR1, AR1 ; |762| 
        MOV AR1, *SP(#21) ; |762| 
$C$DW$L$_adpcm_decode_block_ex$67$E:
$C$L165:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block_ex$68$B:
	.dwpsn	file "./adpcm_encode_test.c",line 763,column 17,is_stmt
        BTST #3, *SP(#16), TC1 ; |763| 
        BCC $C$L166,!TC1 ; |763| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |763| 
$C$DW$L$_adpcm_decode_block_ex$68$E:
$C$DW$L$_adpcm_decode_block_ex$69$B:
	.dwpsn	file "./adpcm_encode_test.c",line 764,column 21,is_stmt
        MOV *SP(#20), AR1 ; |764| 
        ADD *SP(#21), AR1, AR1 ; |764| 
        MOV AR1, *SP(#21) ; |764| 
$C$DW$L$_adpcm_decode_block_ex$69$E:
$C$L166:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block_ex$70$B:
	.dwpsn	file "./adpcm_encode_test.c",line 766,column 17,is_stmt
        BTST #4, *SP(#16), TC1 ; |766| 
        BCC $C$L167,!TC1 ; |766| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |766| 
$C$DW$L$_adpcm_decode_block_ex$70$E:
$C$DW$L$_adpcm_decode_block_ex$71$B:
	.dwpsn	file "./adpcm_encode_test.c",line 767,column 21,is_stmt
        MOV *SP(#8) << #1, AC0 ; |767| 
        MOV AC0, T0 ; |767| 
        AMAR *SP(#10), XAR3
        MOV uns(*SP(#21)), AC1 ; |767| 
        SUB AC1, dbl(*AR3(T0)), AC1 ; |767| 
        MOV AC1, dbl(*AR3(T0)) ; |767| 
        B $C$L168 ; |767| 
                                        ; branch occurs ; |767| 
$C$DW$L$_adpcm_decode_block_ex$71$E:
$C$L167:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block_ex$72$B:
	.dwpsn	file "./adpcm_encode_test.c",line 769,column 21,is_stmt
        MOV *SP(#8) << #1, AC0 ; |769| 
        MOV AC0, T0 ; |769| 
        AMAR *SP(#10), XAR3
        MOV uns(*SP(#21)), AC1 ; |769| 
        ADD dbl(*AR3(T0)), AC1, AC1 ; |769| 
        MOV AC1, dbl(*AR3(T0)) ; |769| 
$C$DW$L$_adpcm_decode_block_ex$72$E:
$C$L168:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block_ex$73$B:
	.dwpsn	file "./adpcm_encode_test.c",line 771,column 17,is_stmt
        MOV *SP(#16), AR1 ; |771| 
        AND #0x000f, AR1, AR1 ; |771| 
        MOV *SP(#8), T0 ; |771| 
        AMOV #_index_table_5bit, XAR3 ; |771| 
        AMAR *SP(#14), XAR2
        AADD AR1, AR3 ; |771| 
        ADD *AR2(T0), *AR3, AC0 ; |771| 
        MOV HI(AC0), *AR2(T0)
	.dwpsn	file "./adpcm_encode_test.c",line 772,column 17,is_stmt
        MOV *SP(#6), AR1 ; |772| 

        NEG AR1, T1 ; |772| 
||      MOV *SP(#16), AC0 ; |772| 

        SFTS AC0, T1, AC0 ; |772| 
        MOV AC0, *SP(#16) ; |772| 
	.dwpsn	file "./adpcm_encode_test.c",line 773,column 17,is_stmt
        MOV *SP(#6), AR1 ; |773| 
        SUB AR1, *SP(#17), AR1 ; |773| 
        MOV AR1, *SP(#17) ; |773| 
	.dwpsn	file "./adpcm_encode_test.c",line 775,column 17,is_stmt
        MOV *SP(#8), T0 ; |775| 
        AMAR *SP(#14), XAR3
        MOV #88, AR2 ; |775| 
        MOV *AR3(T0), AR1 ; |775| 
        CMP AR1 <= AR2, TC1 ; |775| 
        BCC $C$L169,TC1 ; |775| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |775| 
$C$DW$L$_adpcm_decode_block_ex$73$E:
$C$DW$L$_adpcm_decode_block_ex$74$B:
        AMAR *SP(#14), XAR3
        MOV #88, *AR3(T0) ; |775| 
        B $C$L170 ; |775| 
                                        ; branch occurs ; |775| 
$C$DW$L$_adpcm_decode_block_ex$74$E:
$C$L169:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block_ex$75$B:
        AMAR *SP(#14), XAR3
        MOV *AR3(T0), AR1 ; |775| 
        BCC $C$L170,AR1 >= #0 ; |775| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |775| 
$C$DW$L$_adpcm_decode_block_ex$75$E:
$C$DW$L$_adpcm_decode_block_ex$76$B:
        AMAR *SP(#14), XAR3
        MOV #0, *AR3(T0) ; |775| 
$C$DW$L$_adpcm_decode_block_ex$76$E:
$C$L170:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block_ex$77$B:
	.dwpsn	file "./adpcm_encode_test.c",line 776,column 17,is_stmt
        MOV *SP(#8), T0 ; |776| 
        SFTL T0, #1 ; |776| 
        AMAR *SP(#10), XAR3
        MOV #32767, AC0 ; |776| 
        MOV dbl(*AR3(T0)), AC1 ; |776| 
        CMP AC1 <= AC0, TC1 ; |776| 
        BCC $C$L171,TC1 ; |776| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |776| 
$C$DW$L$_adpcm_decode_block_ex$77$E:
$C$DW$L$_adpcm_decode_block_ex$78$B:
        MOV *SP(#8), T0 ; |776| 
        SFTL T0, #1 ; |776| 
        AMAR *SP(#10), XAR3
        MOV AC0, dbl(*AR3(T0)) ; |776| 
        B $C$L172 ; |776| 
                                        ; branch occurs ; |776| 
$C$DW$L$_adpcm_decode_block_ex$78$E:
$C$L171:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block_ex$79$B:
        MOV *SP(#8), T0 ; |776| 
        SFTL T0, #1 ; |776| 
        AMAR *SP(#10), XAR3
        MOV #-32768, AC0 ; |776| 
        MOV dbl(*AR3(T0)), AC1 ; |776| 
        CMP AC1 >= AC0, TC1 ; |776| 
        BCC $C$L172,TC1 ; |776| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |776| 
$C$DW$L$_adpcm_decode_block_ex$79$E:
$C$DW$L$_adpcm_decode_block_ex$80$B:
        MOV *SP(#8), T0 ; |776| 
        SFTL T0, #1 ; |776| 
        AMAR *SP(#10), XAR3
        MOV AC0, dbl(*AR3(T0)) ; |776| 
$C$DW$L$_adpcm_decode_block_ex$80$E:
$C$L172:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block_ex$81$B:
	.dwpsn	file "./adpcm_encode_test.c",line 777,column 17,is_stmt
        MOV *SP(#5), T1 ; |777| 
        MOV *SP(#8), AC0 ; |777| 
        MACM *SP(#18), T1, AC0, AC0 ; |777| 
        MOV dbl(*SP(#0)), XAR3
        MOV AC0, AR1 ; |777| 
        MOV *SP(#8), T0 ; |777| 
        SFTL T0, #1 ; |777| 
        AMAR *SP(#11), XAR2
        AADD AR1, AR3 ; |777| 
        MOV *AR2(T0), *AR3 ; |777| 
	.dwendtag $C$DW$372

	.dwpsn	file "./adpcm_encode_test.c",line 746,column 46,is_stmt
        ADD #1, *SP(#18) ; |746| 
	.dwpsn	file "./adpcm_encode_test.c",line 746,column 29,is_stmt
        MOV *SP(#7), AR1 ; |746| 

        SUB #1, AR1 ; |746| 
||      MOV *SP(#18), AR2 ; |746| 

        CMP AR2 < AR1, TC1 ; |746| 
        BCC $C$L161,TC1 ; |746| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |746| 
$C$DW$L$_adpcm_decode_block_ex$81$E:
$C$L173:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_decode_block_ex$82$B:
	.dwendtag $C$DW$367

	.dwpsn	file "./adpcm_encode_test.c",line 742,column 37,is_stmt
        ADD #1, *SP(#8) ; |742| 
	.dwpsn	file "./adpcm_encode_test.c",line 742,column 22,is_stmt
        MOV *SP(#5), AR1 ; |742| 
        MOV *SP(#8), AR2 ; |742| 
        CMP AR2 < AR1, TC1 ; |742| 
        BCC $C$L160,TC1 ; |742| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |742| 
$C$DW$L$_adpcm_decode_block_ex$82$E:
	.dwpsn	file "./adpcm_encode_test.c",line 781,column 14,is_stmt
        B $C$L176 ; |781| 
                                        ; branch occurs ; |781| 
$C$L174:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 784,column 9,is_stmt
        MOV #0, T0
        B $C$L177 ; |784| 
                                        ; branch occurs ; |784| 
$C$L175:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 668,column 5,is_stmt

        MOV *SP(#6), AR1 ; |668| 
||      MOV #2, AR2

        CMP AR1 == AR2, TC1 ; |668| 
        BCC $C$L135,TC1 ; |668| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |668| 
        MOV #3, AR2
        CMP AR1 == AR2, TC1 ; |668| 
        BCC $C$L146,TC1 ; |668| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |668| 
        MOV #5, AR2
        CMP AR1 == AR2, TC1 ; |668| 
        BCC $C$L159,TC1 ; |668| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |668| 
        B $C$L174 ; |668| 
                                        ; branch occurs ; |668| 
$C$L176:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 787,column 5,is_stmt
        MOV *SP(#7), T0 ; |787| 
$C$L177:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 788,column 1,is_stmt
        AADD #23, SP
	.dwcfi	cfa_offset, 1
$C$DW$375	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$375, DW_AT_low_pc(0x00)
	.dwattr $C$DW$375, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$376	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$376, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/adpcm_encode/adpcm_encode_test.asm:$C$L160:1:1738600387")
	.dwattr $C$DW$376, DW_AT_TI_begin_file("./adpcm_encode_test.c")
	.dwattr $C$DW$376, DW_AT_TI_begin_line(0x2e6)
	.dwattr $C$DW$376, DW_AT_TI_end_line(0x30b)
$C$DW$377	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$377, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$59$B)
	.dwattr $C$DW$377, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$59$E)
$C$DW$378	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$378, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$82$B)
	.dwattr $C$DW$378, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$82$E)

$C$DW$379	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$379, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/adpcm_encode/adpcm_encode_test.asm:$C$L161:2:1738600387")
	.dwattr $C$DW$379, DW_AT_TI_begin_file("./adpcm_encode_test.c")
	.dwattr $C$DW$379, DW_AT_TI_begin_line(0x2ea)
	.dwattr $C$DW$379, DW_AT_TI_end_line(0x30a)
$C$DW$380	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$380, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$60$B)
	.dwattr $C$DW$380, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$60$E)
$C$DW$381	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$381, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$61$B)
	.dwattr $C$DW$381, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$61$E)
$C$DW$382	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$382, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$62$B)
	.dwattr $C$DW$382, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$62$E)
$C$DW$383	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$383, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$63$B)
	.dwattr $C$DW$383, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$63$E)
$C$DW$384	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$384, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$64$B)
	.dwattr $C$DW$384, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$64$E)
$C$DW$385	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$385, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$65$B)
	.dwattr $C$DW$385, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$65$E)
$C$DW$386	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$386, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$66$B)
	.dwattr $C$DW$386, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$66$E)
$C$DW$387	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$387, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$67$B)
	.dwattr $C$DW$387, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$67$E)
$C$DW$388	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$388, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$68$B)
	.dwattr $C$DW$388, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$68$E)
$C$DW$389	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$389, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$69$B)
	.dwattr $C$DW$389, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$69$E)
$C$DW$390	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$390, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$70$B)
	.dwattr $C$DW$390, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$70$E)
$C$DW$391	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$391, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$71$B)
	.dwattr $C$DW$391, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$71$E)
$C$DW$392	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$392, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$72$B)
	.dwattr $C$DW$392, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$72$E)
$C$DW$393	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$393, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$73$B)
	.dwattr $C$DW$393, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$73$E)
$C$DW$394	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$394, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$74$B)
	.dwattr $C$DW$394, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$74$E)
$C$DW$395	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$395, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$75$B)
	.dwattr $C$DW$395, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$75$E)
$C$DW$396	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$396, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$76$B)
	.dwattr $C$DW$396, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$76$E)
$C$DW$397	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$397, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$77$B)
	.dwattr $C$DW$397, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$77$E)
$C$DW$398	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$398, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$78$B)
	.dwattr $C$DW$398, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$78$E)
$C$DW$399	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$399, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$79$B)
	.dwattr $C$DW$399, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$79$E)
$C$DW$400	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$400, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$80$B)
	.dwattr $C$DW$400, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$80$E)
$C$DW$401	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$401, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$81$B)
	.dwattr $C$DW$401, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$81$E)
	.dwendtag $C$DW$379

	.dwendtag $C$DW$376


$C$DW$402	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$402, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/adpcm_encode/adpcm_encode_test.asm:$C$L147:1:1738600387")
	.dwattr $C$DW$402, DW_AT_TI_begin_file("./adpcm_encode_test.c")
	.dwattr $C$DW$402, DW_AT_TI_begin_line(0x2c0)
	.dwattr $C$DW$402, DW_AT_TI_end_line(0x2e1)
$C$DW$403	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$403, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$37$B)
	.dwattr $C$DW$403, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$37$E)
$C$DW$404	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$404, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$56$B)
	.dwattr $C$DW$404, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$56$E)

$C$DW$405	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$405, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/adpcm_encode/adpcm_encode_test.asm:$C$L148:2:1738600387")
	.dwattr $C$DW$405, DW_AT_TI_begin_file("./adpcm_encode_test.c")
	.dwattr $C$DW$405, DW_AT_TI_begin_line(0x2c4)
	.dwattr $C$DW$405, DW_AT_TI_end_line(0x2e0)
$C$DW$406	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$406, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$38$B)
	.dwattr $C$DW$406, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$38$E)
$C$DW$407	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$407, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$39$B)
	.dwattr $C$DW$407, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$39$E)
$C$DW$408	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$408, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$40$B)
	.dwattr $C$DW$408, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$40$E)
$C$DW$409	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$409, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$41$B)
	.dwattr $C$DW$409, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$41$E)
$C$DW$410	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$410, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$42$B)
	.dwattr $C$DW$410, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$42$E)
$C$DW$411	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$411, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$43$B)
	.dwattr $C$DW$411, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$43$E)
$C$DW$412	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$412, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$44$B)
	.dwattr $C$DW$412, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$44$E)
$C$DW$413	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$413, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$45$B)
	.dwattr $C$DW$413, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$45$E)
$C$DW$414	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$414, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$46$B)
	.dwattr $C$DW$414, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$46$E)
$C$DW$415	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$415, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$47$B)
	.dwattr $C$DW$415, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$47$E)
$C$DW$416	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$416, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$48$B)
	.dwattr $C$DW$416, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$48$E)
$C$DW$417	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$417, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$49$B)
	.dwattr $C$DW$417, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$49$E)
$C$DW$418	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$418, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$50$B)
	.dwattr $C$DW$418, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$50$E)
$C$DW$419	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$419, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$51$B)
	.dwattr $C$DW$419, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$51$E)
$C$DW$420	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$420, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$52$B)
	.dwattr $C$DW$420, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$52$E)
$C$DW$421	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$421, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$53$B)
	.dwattr $C$DW$421, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$53$E)
$C$DW$422	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$422, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$54$B)
	.dwattr $C$DW$422, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$54$E)
$C$DW$423	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$423, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$55$B)
	.dwattr $C$DW$423, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$55$E)
	.dwendtag $C$DW$405

	.dwendtag $C$DW$402


$C$DW$424	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$424, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/adpcm_encode/adpcm_encode_test.asm:$C$L136:1:1738600387")
	.dwattr $C$DW$424, DW_AT_TI_begin_file("./adpcm_encode_test.c")
	.dwattr $C$DW$424, DW_AT_TI_begin_line(0x29f)
	.dwattr $C$DW$424, DW_AT_TI_end_line(0x2bb)
$C$DW$425	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$425, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$19$B)
	.dwattr $C$DW$425, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$19$E)
$C$DW$426	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$426, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$34$B)
	.dwattr $C$DW$426, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$34$E)

$C$DW$427	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$427, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/adpcm_encode/adpcm_encode_test.asm:$C$L137:2:1738600387")
	.dwattr $C$DW$427, DW_AT_TI_begin_file("./adpcm_encode_test.c")
	.dwattr $C$DW$427, DW_AT_TI_begin_line(0x2a3)
	.dwattr $C$DW$427, DW_AT_TI_end_line(0x2ba)
$C$DW$428	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$428, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$20$B)
	.dwattr $C$DW$428, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$20$E)
$C$DW$429	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$429, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$21$B)
	.dwattr $C$DW$429, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$21$E)
$C$DW$430	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$430, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$22$B)
	.dwattr $C$DW$430, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$22$E)
$C$DW$431	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$431, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$23$B)
	.dwattr $C$DW$431, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$23$E)
$C$DW$432	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$432, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$24$B)
	.dwattr $C$DW$432, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$24$E)
$C$DW$433	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$433, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$25$B)
	.dwattr $C$DW$433, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$25$E)
$C$DW$434	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$434, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$26$B)
	.dwattr $C$DW$434, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$26$E)
$C$DW$435	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$435, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$27$B)
	.dwattr $C$DW$435, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$27$E)
$C$DW$436	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$436, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$28$B)
	.dwattr $C$DW$436, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$28$E)
$C$DW$437	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$437, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$29$B)
	.dwattr $C$DW$437, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$29$E)
$C$DW$438	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$438, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$30$B)
	.dwattr $C$DW$438, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$30$E)
$C$DW$439	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$439, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$31$B)
	.dwattr $C$DW$439, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$31$E)
$C$DW$440	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$440, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$32$B)
	.dwattr $C$DW$440, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$32$E)
$C$DW$441	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$441, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$33$B)
	.dwattr $C$DW$441, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$33$E)
	.dwendtag $C$DW$427

	.dwendtag $C$DW$424


$C$DW$442	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$442, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/adpcm_encode/adpcm_encode_test.asm:$C$L129:1:1738600387")
	.dwattr $C$DW$442, DW_AT_TI_begin_file("./adpcm_encode_test.c")
	.dwattr $C$DW$442, DW_AT_TI_begin_line(0x28b)
	.dwattr $C$DW$442, DW_AT_TI_end_line(0x295)
$C$DW$443	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$443, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$8$B)
	.dwattr $C$DW$443, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$8$E)
$C$DW$444	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$444, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$9$B)
	.dwattr $C$DW$444, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$9$E)
$C$DW$445	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$445, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$10$B)
	.dwattr $C$DW$445, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$10$E)
$C$DW$446	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$446, DW_AT_low_pc($C$DW$L$_adpcm_decode_block_ex$12$B)
	.dwattr $C$DW$446, DW_AT_high_pc($C$DW$L$_adpcm_decode_block_ex$12$E)
	.dwendtag $C$DW$442

	.dwattr $C$DW$333, DW_AT_TI_end_file("./adpcm_encode_test.c")
	.dwattr $C$DW$333, DW_AT_TI_end_line(0x314)
	.dwattr $C$DW$333, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$333

	.sect	".text"

$C$DW$447	.dwtag  DW_TAG_subprogram, DW_AT_name("adpcm_converter")
	.dwattr $C$DW$447, DW_AT_low_pc(_adpcm_converter)
	.dwattr $C$DW$447, DW_AT_high_pc(0x00)
	.dwattr $C$DW$447, DW_AT_TI_symbol_name("_adpcm_converter")
	.dwattr $C$DW$447, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$447, DW_AT_TI_begin_file("./adpcm_encode_test.c")
	.dwattr $C$DW$447, DW_AT_TI_begin_line(0x317)
	.dwattr $C$DW$447, DW_AT_TI_begin_column(0x11)
	.dwattr $C$DW$447, DW_AT_TI_max_frame_size(0x2a)
	.dwpsn	file "./adpcm_encode_test.c",line 792,column 1,is_stmt,address _adpcm_converter

	.dwfde $C$DW$CIE, _adpcm_converter
$C$DW$448	.dwtag  DW_TAG_formal_parameter, DW_AT_name("input")
	.dwattr $C$DW$448, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$448, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$448, DW_AT_location[DW_OP_reg17]
$C$DW$449	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len")
	.dwattr $C$DW$449, DW_AT_TI_symbol_name("_len")
	.dwattr $C$DW$449, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$449, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: adpcm_converter                                              *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,AC2,AC2,T0,T1,T2,T3,AR0,XAR0,AR1,    *
;*                        XAR1,AR2,XAR2,AR3,XAR3,SP,CSR,RPTC,CARRY,TC1,M40,    *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Save On Entry Regs : T2,T3                                                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 42 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (2 function parameters)                              *
;*                        (36 local values)                                    *
;*                        (2 register save area)                               *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_adpcm_converter:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        PSH T2
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 14, -2
        PSH T3
	.dwcfi	cfa_offset, 3
	.dwcfi	save_reg_to_mem, 15, -3
        AADD #-39, SP
	.dwcfi	cfa_offset, 42
$C$DW$450	.dwtag  DW_TAG_variable, DW_AT_name("input")
	.dwattr $C$DW$450, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$450, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$450, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$451	.dwtag  DW_TAG_variable, DW_AT_name("len")
	.dwattr $C$DW$451, DW_AT_TI_symbol_name("_len")
	.dwattr $C$DW$451, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$451, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$452	.dwtag  DW_TAG_variable, DW_AT_name("noprint_output")
	.dwattr $C$DW$452, DW_AT_TI_symbol_name("_noprint_output")
	.dwattr $C$DW$452, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$452, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$453	.dwtag  DW_TAG_variable, DW_AT_name("checksum")
	.dwattr $C$DW$453, DW_AT_TI_symbol_name("_checksum")
	.dwattr $C$DW$453, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$453, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$454	.dwtag  DW_TAG_variable, DW_AT_name("bytes_written")
	.dwattr $C$DW$454, DW_AT_TI_symbol_name("_bytes_written")
	.dwattr $C$DW$454, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$454, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$455	.dwtag  DW_TAG_variable, DW_AT_name("format")
	.dwattr $C$DW$455, DW_AT_TI_symbol_name("_format")
	.dwattr $C$DW$455, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$455, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$456	.dwtag  DW_TAG_variable, DW_AT_name("bits_per_sample")
	.dwattr $C$DW$456, DW_AT_TI_symbol_name("_bits_per_sample")
	.dwattr $C$DW$456, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$456, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$457	.dwtag  DW_TAG_variable, DW_AT_name("num_channels")
	.dwattr $C$DW$457, DW_AT_TI_symbol_name("_num_channels")
	.dwattr $C$DW$457, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$457, DW_AT_location[DW_OP_bregx 0x24 16]
$C$DW$458	.dwtag  DW_TAG_variable, DW_AT_name("fact_samples")
	.dwattr $C$DW$458, DW_AT_TI_symbol_name("_fact_samples")
	.dwattr $C$DW$458, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$458, DW_AT_location[DW_OP_bregx 0x24 18]
$C$DW$459	.dwtag  DW_TAG_variable, DW_AT_name("num_samples")
	.dwattr $C$DW$459, DW_AT_TI_symbol_name("_num_samples")
	.dwattr $C$DW$459, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$459, DW_AT_location[DW_OP_bregx 0x24 20]
$C$DW$460	.dwtag  DW_TAG_variable, DW_AT_name("sample_rate")
	.dwattr $C$DW$460, DW_AT_TI_symbol_name("_sample_rate")
	.dwattr $C$DW$460, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$460, DW_AT_location[DW_OP_bregx 0x24 22]
$C$DW$461	.dwtag  DW_TAG_variable, DW_AT_name("riff_chunk_header")
	.dwattr $C$DW$461, DW_AT_TI_symbol_name("_riff_chunk_header")
	.dwattr $C$DW$461, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$461, DW_AT_location[DW_OP_bregx 0x24 24]
$C$DW$462	.dwtag  DW_TAG_variable, DW_AT_name("chunk_header")
	.dwattr $C$DW$462, DW_AT_TI_symbol_name("_chunk_header")
	.dwattr $C$DW$462, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$462, DW_AT_location[DW_OP_bregx 0x24 26]
$C$DW$463	.dwtag  DW_TAG_variable, DW_AT_name("pWaveHeader")
	.dwattr $C$DW$463, DW_AT_TI_symbol_name("_pWaveHeader")
	.dwattr $C$DW$463, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$463, DW_AT_location[DW_OP_bregx 0x24 28]
$C$DW$464	.dwtag  DW_TAG_variable, DW_AT_name("input_file_buf")
	.dwattr $C$DW$464, DW_AT_TI_symbol_name("_input_file_buf")
	.dwattr $C$DW$464, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$464, DW_AT_location[DW_OP_bregx 0x24 30]
        MOV T0, *SP(#4) ; |792| 
        MOV XAR0, dbl(*SP(#2))
	.dwpsn	file "./adpcm_encode_test.c",line 794,column 14,is_stmt
        MOV #0, AC0 ; |794| 
        MOV AC0, dbl(*SP(#8)) ; |794| 
	.dwpsn	file "./adpcm_encode_test.c",line 795,column 14,is_stmt
        MOV AC0, dbl(*SP(#10)) ; |795| 
	.dwpsn	file "./adpcm_encode_test.c",line 796,column 13,is_stmt
        MOV AC0, dbl(*SP(#12)) ; |796| 
	.dwpsn	file "./adpcm_encode_test.c",line 797,column 13,is_stmt
        MOV AC0, dbl(*SP(#14)) ; |797| 
	.dwpsn	file "./adpcm_encode_test.c",line 799,column 14,is_stmt
        MOV AC0, dbl(*SP(#18)) ; |799| 
	.dwpsn	file "./adpcm_encode_test.c",line 800,column 14,is_stmt
        MOV AC0, dbl(*SP(#20)) ; |800| 
	.dwpsn	file "./adpcm_encode_test.c",line 806,column 15,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, dbl(*SP(#30))
	.dwpsn	file "./adpcm_encode_test.c",line 810,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, dbl(*SP(#24))
	.dwpsn	file "./adpcm_encode_test.c",line 811,column 5,is_stmt
        MOV dbl(*SP(#30)), XAR3

        MOV XAR3, dbl(*SP(#30))
||      AADD #10, AR3 ; |811| 

	.dwpsn	file "./adpcm_encode_test.c",line 812,column 5,is_stmt
        AMOV #$C$FSL1, XAR1 ; |812| 
        MOV dbl(*SP(#24)), XAR0
$C$DW$465	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$465, DW_AT_low_pc(0x00)
	.dwattr $C$DW$465, DW_AT_name("_strncmp")
	.dwattr $C$DW$465, DW_AT_TI_call

        CALL #_strncmp ; |812| 
||      MOV #4, T0

                                        ; call occurs [#_strncmp] ; |812| 
        BCC $C$L178,T0 != #0 ; |812| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |812| 
        MOV dbl(*SP(#24)), XAR0
        AMOV #$C$FSL2, XAR1 ; |812| 
        AADD #6, AR0 ; |812| 
$C$DW$466	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$466, DW_AT_low_pc(0x00)
	.dwattr $C$DW$466, DW_AT_name("_strncmp")
	.dwattr $C$DW$466, DW_AT_TI_call

        CALL #_strncmp ; |812| 
||      MOV #4, T0

                                        ; call occurs [#_strncmp] ; |812| 
        BCC $C$L179,T0 == #0 ; |812| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |812| 
$C$L178:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 816,column 9,is_stmt
        MOV #-1 << #16, AC0 ; |816| 
        OR #0xffff, AC0, AC0 ; |816| 
        B $C$L217 ; |816| 
                                        ; branch occurs ; |816| 
$C$L179:    
	CALL #_coverage_log;

        MOV #65534, T3 ; |843| 
||      MOV #2, T2

	.dwpsn	file "./adpcm_encode_test.c",line 820,column 12,is_stmt
$C$L180:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_converter$5$B:
	.dwpsn	file "./adpcm_encode_test.c",line 822,column 9,is_stmt
        MOV dbl(*SP(#30)), XAR3
        MOV XAR3, dbl(*SP(#26))
	.dwpsn	file "./adpcm_encode_test.c",line 823,column 9,is_stmt
        MOV dbl(*SP(#30)), XAR3

        MOV XAR3, dbl(*SP(#30))
||      AADD #6, AR3 ; |823| 

	.dwpsn	file "./adpcm_encode_test.c",line 825,column 9,is_stmt
        AMAR *SP(#26), XAR0
        AMOV #$C$FSL3, XAR1 ; |825| 
$C$DW$467	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$467, DW_AT_low_pc(0x00)
	.dwattr $C$DW$467, DW_AT_name("_little_endian_to_native")
	.dwattr $C$DW$467, DW_AT_TI_call
        CALL #_little_endian_to_native ; |825| 
                                        ; call occurs [#_little_endian_to_native] ; |825| 
	.dwpsn	file "./adpcm_encode_test.c",line 828,column 9,is_stmt
        AMOV #$C$FSL4, XAR1 ; |828| 
        MOV dbl(*SP(#26)), XAR0
$C$DW$468	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$468, DW_AT_low_pc(0x00)
	.dwattr $C$DW$468, DW_AT_name("_strncmp")
	.dwattr $C$DW$468, DW_AT_TI_call

        CALL #_strncmp ; |828| 
||      MOV #4, T0

                                        ; call occurs [#_strncmp] ; |828| 
        BCC $C$L193,T0 != #0 ; |828| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |828| 
$C$DW$L$_adpcm_converter$5$E:
$C$DW$L$_adpcm_converter$6$B:

$C$DW$469	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$470	.dwtag  DW_TAG_variable, DW_AT_name("supported")
	.dwattr $C$DW$470, DW_AT_TI_symbol_name("_supported")
	.dwattr $C$DW$470, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$470, DW_AT_location[DW_OP_bregx 0x24 32]
	.dwpsn	file "./adpcm_encode_test.c",line 830,column 21,is_stmt
        MOV #1, AC0 ; |830| 
        MOV AC0, dbl(*SP(#32)) ; |830| 
	.dwpsn	file "./adpcm_encode_test.c",line 832,column 13,is_stmt
        MOV dbl(*SP(#26)), XAR3
        MOV #16, AC0 ; |832| 
        MOV dbl(*AR3(short(#4))), AC1 ; |832| 
        CMPU AC1 < AC0, TC1 ; |832| 
        BCC $C$L181,TC1 ; |832| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |832| 
$C$DW$L$_adpcm_converter$6$E:
$C$DW$L$_adpcm_converter$7$B:
        MOV #28, AC0 ; |832| 
        MOV dbl(*AR3(short(#4))), AC1 ; |832| 
        CMPU AC1 <= AC0, TC1 ; |832| 
        BCC $C$L182,TC1 ; |832| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |832| 
$C$DW$L$_adpcm_converter$7$E:
$C$L181:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 835,column 17,is_stmt
        MOV #-1 << #16, AC0 ; |835| 
        OR #0xffff, AC0, AC0 ; |835| 
        B $C$L217 ; |835| 
                                        ; branch occurs ; |835| 
$C$L182:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_converter$9$B:
	.dwpsn	file "./adpcm_encode_test.c",line 838,column 13,is_stmt
        MOV dbl(*SP(#30)), XAR3
        MOV XAR3, dbl(*SP(#28))
	.dwpsn	file "./adpcm_encode_test.c",line 839,column 13,is_stmt
        MOV dbl(*SP(#26)), XAR3
        MOV *AR3(short(#5)), AR1 ; |839| 
        MOV dbl(*SP(#30)), XAR3

        MOV XAR3, dbl(*SP(#30))
||      AADD AR1, AR3 ; |839| 

	.dwpsn	file "./adpcm_encode_test.c",line 841,column 13,is_stmt
        AMAR *SP(#28), XAR0
        AMOV #$C$FSL5, XAR1 ; |841| 
$C$DW$471	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$471, DW_AT_low_pc(0x00)
	.dwattr $C$DW$471, DW_AT_name("_little_endian_to_native")
	.dwattr $C$DW$471, DW_AT_TI_call
        CALL #_little_endian_to_native ; |841| 
                                        ; call occurs [#_little_endian_to_native] ; |841| 
	.dwpsn	file "./adpcm_encode_test.c",line 843,column 13,is_stmt
        MOV dbl(*SP(#28)), XAR3
        MOV *AR3, AR1 ; |843| 
        CMPU AR1 != T3, TC1 ; |843| 
        BCC $C$L183,TC1 ; |843| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |843| 
$C$DW$L$_adpcm_converter$9$E:
$C$DW$L$_adpcm_converter$10$B:
        MOV dbl(*SP(#26)), XAR3
        MOV #40, AC0 ; |843| 
        MOV dbl(*AR3(short(#4))), AC1 ; |843| 
        CMPU AC1 != AC0, TC1 ; |843| 
        BCC $C$L183,TC1 ; |843| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |843| 
$C$DW$L$_adpcm_converter$10$E:
$C$DW$L$_adpcm_converter$11$B:
        MOV dbl(*SP(#28)), XAR3
        MOV *AR3(#12), AR1 ; |843| 
        B $C$L184 ; |843| 
                                        ; branch occurs ; |843| 
$C$DW$L$_adpcm_converter$11$E:
$C$L183:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_converter$12$B:
        MOV dbl(*SP(#28)), XAR3
        MOV *AR3, AR1 ; |843| 
$C$DW$L$_adpcm_converter$12$E:
$C$L184:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_converter$13$B:
        AND #0xffff, AR1, AC0 ; |843| 
        MOV AC0, dbl(*SP(#12)) ; |843| 
	.dwpsn	file "./adpcm_encode_test.c",line 845,column 13,is_stmt
        MOV dbl(*SP(#26)), XAR3
        MOV #40, AC0 ; |845| 
        MOV dbl(*AR3(short(#4))), AC1 ; |845| 
        CMPU AC1 != AC0, TC1 ; |845| 
        BCC $C$L185,TC1 ; |845| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |845| 
$C$DW$L$_adpcm_converter$13$E:
$C$DW$L$_adpcm_converter$14$B:
        MOV dbl(*SP(#28)), XAR3
        MOV *AR3(#9), AR1 ; |845| 
        BCC $C$L185,AR1 == #0 ; |845| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |845| 
$C$DW$L$_adpcm_converter$14$E:
$C$DW$L$_adpcm_converter$15$B:
        MOV *AR3(#9), AR1 ; |845| 
        B $C$L186 ; |845| 
                                        ; branch occurs ; |845| 
$C$DW$L$_adpcm_converter$15$E:
$C$L185:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_converter$16$B:
        MOV dbl(*SP(#28)), XAR3
        MOV *AR3(short(#7)), AR1 ; |845| 
$C$DW$L$_adpcm_converter$16$E:
$C$L186:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_converter$17$B:
        AND #0xffff, AR1, AC0 ; |845| 
        MOV AC0, dbl(*SP(#14)) ; |845| 
	.dwpsn	file "./adpcm_encode_test.c",line 847,column 13,is_stmt
        MOV dbl(*SP(#28)), XAR3
        MOV *AR3(short(#1)), AR1 ; |847| 
        BCC $C$L187,AR1 == #0 ; |847| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |847| 
$C$DW$L$_adpcm_converter$17$E:
$C$DW$L$_adpcm_converter$18$B:
        MOV *AR3(short(#1)), AR1 ; |847| 
        CMPU AR1 <= T2, TC1 ; |847| 
        BCC $C$L188,TC1 ; |847| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |847| 
$C$DW$L$_adpcm_converter$18$E:
$C$L187:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_converter$19$B:
	.dwpsn	file "./adpcm_encode_test.c",line 849,column 17,is_stmt
        MOV #0, AC0 ; |849| 
        MOV AC0, dbl(*SP(#32)) ; |849| 
	.dwpsn	file "./adpcm_encode_test.c",line 850,column 13,is_stmt
        B $C$L192 ; |850| 
                                        ; branch occurs ; |850| 
$C$DW$L$_adpcm_converter$19$E:
$C$L188:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_converter$20$B:
	.dwpsn	file "./adpcm_encode_test.c",line 851,column 18,is_stmt

        MOV dbl(*SP(#12)), AC1 ; |851| 
||      MOV #1, AC0 ; |851| 

        CMP AC1 != AC0, TC1 ; |851| 
        BCC $C$L191,TC1 ; |851| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |851| 
$C$DW$L$_adpcm_converter$20$E:
$C$DW$L$_adpcm_converter$21$B:
	.dwpsn	file "./adpcm_encode_test.c",line 854,column 17,is_stmt

        MOV dbl(*SP(#14)), AC1 ; |854| 
||      MOV #9, AC0 ; |854| 

        CMP AC1 < AC0, TC1 ; |854| 
        BCC $C$L189,TC1 ; |854| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |854| 
$C$DW$L$_adpcm_converter$21$E:
$C$DW$L$_adpcm_converter$22$B:
        MOV #16, AC0 ; |854| 
        MOV dbl(*SP(#14)), AC1 ; |854| 
        CMP AC1 <= AC0, TC1 ; |854| 
        BCC $C$L190,TC1 ; |854| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |854| 
$C$DW$L$_adpcm_converter$22$E:
$C$L189:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_converter$23$B:
	.dwpsn	file "./adpcm_encode_test.c",line 856,column 21,is_stmt
        MOV #0, AC0 ; |856| 
        MOV AC0, dbl(*SP(#32)) ; |856| 
$C$DW$L$_adpcm_converter$23$E:
$C$L190:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_converter$24$B:
	.dwpsn	file "./adpcm_encode_test.c",line 859,column 17,is_stmt
        MOV dbl(*SP(#28)), XAR3
        MOV *AR3(short(#1)), AR1 ; |859| 

        SFTL AR1, #1 ; |859| 
||      MOV *AR3(short(#6)), AR2 ; |859| 

        CMPU AR2 == AR1, TC1 ; |859| 
        BCC $C$L192,TC1 ; |859| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |859| 
$C$DW$L$_adpcm_converter$24$E:
$C$DW$L$_adpcm_converter$25$B:
	.dwpsn	file "./adpcm_encode_test.c",line 861,column 21,is_stmt
        MOV #0, AC0 ; |861| 
        MOV AC0, dbl(*SP(#32)) ; |861| 
	.dwpsn	file "./adpcm_encode_test.c",line 863,column 13,is_stmt
        B $C$L192 ; |863| 
                                        ; branch occurs ; |863| 
$C$DW$L$_adpcm_converter$25$E:
$C$L191:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_converter$26$B:
	.dwpsn	file "./adpcm_encode_test.c",line 865,column 17,is_stmt
        MOV #0, AC0 ; |865| 
        MOV AC0, dbl(*SP(#32)) ; |865| 
$C$DW$L$_adpcm_converter$26$E:
$C$L192:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_converter$27$B:
	.dwpsn	file "./adpcm_encode_test.c",line 867,column 13,is_stmt
        MOV dbl(*SP(#32)), AC0 ; |867| 
        BCC $C$L180,AC0 != #0 ; |867| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |867| 
$C$DW$L$_adpcm_converter$27$E:
	.dwpsn	file "./adpcm_encode_test.c",line 870,column 17,is_stmt
        MOV #-1 << #16, AC0 ; |870| 
        OR #0xffff, AC0, AC0 ; |870| 
        B $C$L217 ; |870| 
                                        ; branch occurs ; |870| 
	.dwendtag $C$DW$469

$C$L193:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_converter$30$B:
	.dwpsn	file "./adpcm_encode_test.c",line 877,column 14,is_stmt
        MOV dbl(*SP(#26)), XAR0
        AMOV #$C$FSL6, XAR1 ; |877| 
$C$DW$472	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$472, DW_AT_low_pc(0x00)
	.dwattr $C$DW$472, DW_AT_name("_strncmp")
	.dwattr $C$DW$472, DW_AT_TI_call

        CALL #_strncmp ; |877| 
||      MOV #4, T0

                                        ; call occurs [#_strncmp] ; |877| 
        BCC $C$L197,T0 != #0 ; |877| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |877| 
$C$DW$L$_adpcm_converter$30$E:
$C$DW$L$_adpcm_converter$31$B:
	.dwpsn	file "./adpcm_encode_test.c",line 879,column 13,is_stmt
        MOV dbl(*SP(#30)), XAR3

        RPT #1    ; |879| 
||      AMAR *SP(#18), XAR2

                                            ; loop starts ; |879| 
$C$DW$L$_adpcm_converter$31$E:
$C$L194:    
$C$DW$L$_adpcm_converter$32$B:
            MOV *AR3+, *AR2+ ; |879| 
                                        ; loop ends ; |879| 
$C$DW$L$_adpcm_converter$32$E:
$C$L195:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_converter$33$B:
	.dwpsn	file "./adpcm_encode_test.c",line 880,column 13,is_stmt
        MOV dbl(*SP(#30)), XAR3

        MOV XAR3, dbl(*SP(#30))
||      AADD #2, AR3 ; |880| 

	.dwpsn	file "./adpcm_encode_test.c",line 882,column 13,is_stmt
        AMAR *SP(#18), XAR0
        AMOV #$C$FSL7, XAR1 ; |882| 
$C$DW$473	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$473, DW_AT_low_pc(0x00)
	.dwattr $C$DW$473, DW_AT_name("_little_endian_to_native")
	.dwattr $C$DW$473, DW_AT_TI_call
        CALL #_little_endian_to_native ; |882| 
                                        ; call occurs [#_little_endian_to_native] ; |882| 
	.dwpsn	file "./adpcm_encode_test.c",line 884,column 13,is_stmt
        MOV dbl(*SP(#26)), XAR3

        MOV dbl(*AR3(short(#4))), AC1 ; |884| 
||      MOV #4, AC0 ; |884| 

        CMPU AC1 <= AC0, TC1 ; |884| 
        BCC $C$L180,TC1 ; |884| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |884| 
$C$DW$L$_adpcm_converter$33$E:
$C$DW$L$_adpcm_converter$34$B:

$C$DW$474	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$475	.dwtag  DW_TAG_variable, DW_AT_name("bytes_to_skip")
	.dwattr $C$DW$475, DW_AT_TI_symbol_name("_bytes_to_skip")
	.dwattr $C$DW$475, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$475, DW_AT_location[DW_OP_bregx 0x24 32]
	.dwpsn	file "./adpcm_encode_test.c",line 886,column 25,is_stmt
        MOV dbl(*AR3(short(#4))), AC0 ; |886| 
        SUB #4, AC0 ; |886| 
        MOV AC0, dbl(*SP(#32)) ; |886| 
	.dwpsn	file "./adpcm_encode_test.c",line 888,column 17,is_stmt
        MOV dbl(*SP(#32)), AC0 ; |888| 
        SUB #1, AC0, AC1 ; |888| 
        MOV AC1, dbl(*SP(#32)) ; |888| 
        BCC $C$L180,AC0 == #0 ; |888| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |888| 
$C$DW$L$_adpcm_converter$34$E:
$C$L196:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_converter$35$B:
	.dwpsn	file "./adpcm_encode_test.c",line 890,column 21,is_stmt
        MOV dbl(*SP(#30)), XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#30))
	.dwpsn	file "./adpcm_encode_test.c",line 891,column 17,is_stmt
        MOV dbl(*SP(#32)), AC0 ; |891| 
        SUB #1, AC0, AC1 ; |891| 
        MOV AC1, dbl(*SP(#32)) ; |891| 
        BCC $C$L196,AC0 != #0 ; |891| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |891| 
$C$DW$L$_adpcm_converter$35$E:
$C$DW$L$_adpcm_converter$36$B:
	.dwendtag $C$DW$474

	.dwpsn	file "./adpcm_encode_test.c",line 893,column 9,is_stmt
        B $C$L180 ; |893| 
                                        ; branch occurs ; |893| 
$C$DW$L$_adpcm_converter$36$E:
$C$L197:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_converter$37$B:
	.dwpsn	file "./adpcm_encode_test.c",line 894,column 14,is_stmt
        MOV dbl(*SP(#26)), XAR0
        AMOV #$C$FSL8, XAR1 ; |894| 
$C$DW$476	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$476, DW_AT_low_pc(0x00)
	.dwattr $C$DW$476, DW_AT_name("_strncmp")
	.dwattr $C$DW$476, DW_AT_TI_call

        CALL #_strncmp ; |894| 
||      MOV #4, T0

                                        ; call occurs [#_strncmp] ; |894| 
        BCC $C$L209,T0 != #0 ; |894| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |894| 
$C$DW$L$_adpcm_converter$37$E:
	.dwpsn	file "./adpcm_encode_test.c",line 897,column 13,is_stmt
        MOV dbl(*SP(#28)), XAR3
        MOV *AR3(short(#1)), AR1 ; |897| 
        BCC $C$L198,AR1 != #0 ; |897| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |897| 
	.dwpsn	file "./adpcm_encode_test.c",line 900,column 17,is_stmt
        MOV #-1 << #16, AC0 ; |900| 
        OR #0xffff, AC0, AC0 ; |900| 
        B $C$L217 ; |900| 
                                        ; branch occurs ; |900| 
$C$L198:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 903,column 13,is_stmt
        MOV dbl(*SP(#26)), XAR3
        MOV dbl(*AR3(short(#4))), AC0 ; |903| 
        BCC $C$L199,AC0 != #0 ; |903| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |903| 
	.dwpsn	file "./adpcm_encode_test.c",line 906,column 17,is_stmt
        MOV #-1 << #16, AC0 ; |906| 
        OR #0xffff, AC0, AC0 ; |906| 
        B $C$L217 ; |906| 
                                        ; branch occurs ; |906| 
$C$L199:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 909,column 13,is_stmt

        MOV dbl(*SP(#12)), AC1 ; |909| 
||      MOV #1, AC0 ; |909| 

        CMP AC1 != AC0, TC1 ; |909| 
        BCC $C$L201,TC1 ; |909| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |909| 
	.dwpsn	file "./adpcm_encode_test.c",line 911,column 17,is_stmt
        MOV dbl(*AR3(short(#4))), AC0 ; |911| 
        MOV dbl(*SP(#28)), XAR3
        MOV uns(*AR3(short(#6))), AC1 ; |911| 
$C$DW$477	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$477, DW_AT_low_pc(0x00)
	.dwattr $C$DW$477, DW_AT_name("__remul")
	.dwattr $C$DW$477, DW_AT_TI_call
        CALL #__remul ; |911| 
                                        ; call occurs [#__remul] ; |911| 
        BCC $C$L200,AC0 == #0 ; |911| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |911| 
	.dwpsn	file "./adpcm_encode_test.c",line 914,column 21,is_stmt
        MOV #-1 << #16, AC0 ; |914| 
        OR #0xffff, AC0, AC0 ; |914| 
        B $C$L217 ; |914| 
                                        ; branch occurs ; |914| 
$C$L200:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 917,column 17,is_stmt
        MOV dbl(*SP(#26)), XAR3
        MOV dbl(*AR3(short(#4))), AC0 ; |917| 
        MOV dbl(*SP(#28)), XAR3
        MOV uns(*AR3(short(#6))), AC1 ; |917| 
$C$DW$478	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$478, DW_AT_low_pc(0x00)
	.dwattr $C$DW$478, DW_AT_name("__divul")
	.dwattr $C$DW$478, DW_AT_TI_call
        CALL #__divul ; |917| 
                                        ; call occurs [#__divul] ; |917| 
        MOV AC0, dbl(*SP(#20)) ; |917| 
	.dwpsn	file "./adpcm_encode_test.c",line 918,column 13,is_stmt
        B $C$L207 ; |918| 
                                        ; branch occurs ; |918| 
$C$L201:    
	CALL #_coverage_log;

$C$DW$479	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$480	.dwtag  DW_TAG_variable, DW_AT_name("complete_blocks")
	.dwattr $C$DW$480, DW_AT_TI_symbol_name("_complete_blocks")
	.dwattr $C$DW$480, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$480, DW_AT_location[DW_OP_bregx 0x24 32]
$C$DW$481	.dwtag  DW_TAG_variable, DW_AT_name("leftover_bytes")
	.dwattr $C$DW$481, DW_AT_TI_symbol_name("_leftover_bytes")
	.dwattr $C$DW$481, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$481, DW_AT_location[DW_OP_bregx 0x24 34]
$C$DW$482	.dwtag  DW_TAG_variable, DW_AT_name("samples_last_block")
	.dwattr $C$DW$482, DW_AT_TI_symbol_name("_samples_last_block")
	.dwattr $C$DW$482, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$482, DW_AT_location[DW_OP_bregx 0x24 36]
	.dwpsn	file "./adpcm_encode_test.c",line 921,column 26,is_stmt
        MOV dbl(*AR3(short(#4))), AC0 ; |921| 
        MOV dbl(*SP(#28)), XAR3
        MOV uns(*AR3(short(#6))), AC1 ; |921| 
$C$DW$483	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$483, DW_AT_low_pc(0x00)
	.dwattr $C$DW$483, DW_AT_name("__divul")
	.dwattr $C$DW$483, DW_AT_TI_call
        CALL #__divul ; |921| 
                                        ; call occurs [#__divul] ; |921| 
        MOV AC0, dbl(*SP(#32)) ; |921| 
	.dwpsn	file "./adpcm_encode_test.c",line 922,column 25,is_stmt
        MOV dbl(*SP(#26)), XAR3
        MOV dbl(*AR3(short(#4))), AC0 ; |922| 
        MOV dbl(*SP(#28)), XAR3
        MOV uns(*AR3(short(#6))), AC1 ; |922| 
$C$DW$484	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$484, DW_AT_low_pc(0x00)
	.dwattr $C$DW$484, DW_AT_name("__remul")
	.dwattr $C$DW$484, DW_AT_TI_call
        CALL #__remul ; |922| 
                                        ; call occurs [#__remul] ; |922| 
        MOV AC0, dbl(*SP(#34)) ; |922| 
	.dwpsn	file "./adpcm_encode_test.c",line 925,column 17,is_stmt
        MOV dbl(*SP(#28)), XAR3
        MOV dbl(*SP(#32)), AC0 ; |925| 
        MOV uns(*AR3(#9)), AC1 ; |925| 
$C$DW$485	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$485, DW_AT_low_pc(0x00)
	.dwattr $C$DW$485, DW_AT_name("__mpyli")
	.dwattr $C$DW$485, DW_AT_TI_call
        CALL #__mpyli ; |925| 
                                        ; call occurs [#__mpyli] ; |925| 
        MOV AC0, dbl(*SP(#20)) ; |925| 
	.dwpsn	file "./adpcm_encode_test.c",line 927,column 17,is_stmt
        MOV dbl(*SP(#34)), AC0 ; |927| 
        BCC $C$L203,AC0 == #0 ; |927| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |927| 
	.dwpsn	file "./adpcm_encode_test.c",line 929,column 21,is_stmt
        MOV dbl(*SP(#28)), XAR3
        MOV *AR3(short(#1)), AC0 ; |929| 
        SFTL AC0, #2, AC0 ; |929| 
        AND #0xffff, AC0, AC1 ; |929| 
        MOV dbl(*SP(#34)), AC0 ; |929| 
$C$DW$486	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$486, DW_AT_low_pc(0x00)
	.dwattr $C$DW$486, DW_AT_name("__remli")
	.dwattr $C$DW$486, DW_AT_TI_call
        CALL #__remli ; |929| 
                                        ; call occurs [#__remli] ; |929| 
        BCC $C$L202,AC0 == #0 ; |929| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |929| 
	.dwpsn	file "./adpcm_encode_test.c",line 932,column 25,is_stmt
        MOV #-1 << #16, AC0 ; |932| 
        OR #0xffff, AC0, AC0 ; |932| 
        B $C$L217 ; |932| 
                                        ; branch occurs ; |932| 
$C$L202:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 936,column 21,is_stmt
        MOV dbl(*SP(#28)), XAR3
        MOV dbl(*SP(#14)), AC0 ; |936| 
        MOV uns(*AR3(short(#1))), AC1 ; |936| 
$C$DW$487	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$487, DW_AT_low_pc(0x00)
	.dwattr $C$DW$487, DW_AT_name("__mpyli")
	.dwattr $C$DW$487, DW_AT_TI_call
        CALL #__mpyli ; |936| 
                                        ; call occurs [#__mpyli] ; |936| 
        MOV dbl(*SP(#28)), XAR3

        MOV *AR3(short(#1)), AC0 ; |936| 
||      OR #0, AC0, AC1

        SFTL AC0, #2, AC0 ; |936| 
        AND #0xffff, AC0, AC0 ; |936| 
        SUB AC0, dbl(*SP(#34)), AC0 ; |936| 
$C$DW$488	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$488, DW_AT_low_pc(0x00)
	.dwattr $C$DW$488, DW_AT_name("__divli")
	.dwattr $C$DW$488, DW_AT_TI_call

        CALL #__divli ; |936| 
||      SFTS AC0, #3, AC0 ; |936| 

                                        ; call occurs [#__divli] ; |936| 
        ADD #1, AC0, AC0 ; |936| 
        MOV AC0, dbl(*SP(#36)) ; |936| 
	.dwpsn	file "./adpcm_encode_test.c",line 937,column 21,is_stmt
        MOV dbl(*SP(#36)), AC0 ; |937| 
        ADD dbl(*SP(#20)), AC0, AC0 ; |937| 
        MOV AC0, dbl(*SP(#20)) ; |937| 
	.dwpsn	file "./adpcm_encode_test.c",line 938,column 17,is_stmt
        B $C$L204 ; |938| 
                                        ; branch occurs ; |938| 
$C$L203:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 941,column 21,is_stmt
        MOV dbl(*SP(#28)), XAR3
        MOV uns(*AR3(#9)), AC0 ; |941| 
        MOV AC0, dbl(*SP(#36)) ; |941| 
$C$L204:    
	.dwpsn	file "./adpcm_encode_test.c",line 944,column 17,is_stmt
        MOV dbl(*SP(#18)), AC0 ; |944| 
        BCC $C$L206,AC0 == #0 ; |944| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |944| 
	.dwpsn	file "./adpcm_encode_test.c",line 946,column 21,is_stmt
        MOV dbl(*SP(#20)), AC0 ; |946| 
        MOV dbl(*SP(#18)), AC1 ; |946| 
        CMPU AC1 >= AC0, TC1 ; |946| 
        BCC $C$L205,TC1 ; |946| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |946| 
        MOV dbl(*SP(#36)), AC0 ; |946| 
        MOV dbl(*SP(#18)), AC1 ; |946| 
        SUB AC0, dbl(*SP(#20)), AC0 ; |946| 
        CMPU AC1 <= AC0, TC1 ; |946| 
        BCC $C$L205,TC1 ; |946| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |946| 
	.dwpsn	file "./adpcm_encode_test.c",line 949,column 25,is_stmt
        MOV dbl(*SP(#18)), AC0 ; |949| 
        MOV AC0, dbl(*SP(#20)) ; |949| 
	.dwpsn	file "./adpcm_encode_test.c",line 950,column 21,is_stmt
        B $C$L206 ; |950| 
                                        ; branch occurs ; |950| 
$C$L205:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 951,column 26,is_stmt
        MOV dbl(*SP(#28)), XAR3
        CMP *AR3(short(#1)) == #2, TC1 ; |951| 
        BCC $C$L206,!TC1 ; |951| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |951| 
        MOV dbl(*SP(#18)), AC0 ; |951| 
        SFTL AC0, #-1, AC0 ; |951| 
        MOV AC0, dbl(*SP(#18)) ; |951| 
        MOV dbl(*SP(#20)), AC1 ; |951| 
        CMPU AC0 >= AC1, TC1 ; |951| 
        BCC $C$L206,TC1 ; |951| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |951| 
        MOV dbl(*SP(#36)), AC0 ; |951| 
        MOV dbl(*SP(#18)), AC1 ; |951| 
        SUB AC0, dbl(*SP(#20)), AC0 ; |951| 
        CMPU AC1 <= AC0, TC1 ; |951| 
        BCC $C$L206,TC1 ; |951| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |951| 
	.dwpsn	file "./adpcm_encode_test.c",line 954,column 25,is_stmt
        MOV dbl(*SP(#18)), AC0 ; |954| 
        MOV AC0, dbl(*SP(#20)) ; |954| 
$C$L206:    
	CALL #_coverage_log;
	.dwendtag $C$DW$479

$C$L207:    
	.dwpsn	file "./adpcm_encode_test.c",line 959,column 13,is_stmt
        MOV dbl(*SP(#20)), AC0 ; |959| 
        BCC $C$L208,AC0 != #0 ; |959| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |959| 
	.dwpsn	file "./adpcm_encode_test.c",line 962,column 17,is_stmt
        MOV #-1 << #16, AC0 ; |962| 
        OR #0xffff, AC0, AC0 ; |962| 
        B $C$L217 ; |962| 
                                        ; branch occurs ; |962| 
$C$L208:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 967,column 13,is_stmt
        MOV dbl(*SP(#28)), XAR3
        MOV uns(*AR3(short(#1))), AC0 ; |967| 
        MOV AC0, dbl(*SP(#16)) ; |967| 
	.dwpsn	file "./adpcm_encode_test.c",line 968,column 13,is_stmt
        MOV dbl(*SP(#28)), XAR3
        MOV dbl(*AR3(short(#2))), AC0 ; |968| 
        MOV AC0, dbl(*SP(#22)) ; |968| 
	.dwpsn	file "./adpcm_encode_test.c",line 969,column 13,is_stmt
        B $C$L211 ; |969| 
                                        ; branch occurs ; |969| 
$C$L209:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_converter$64$B:

$C$DW$489	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$490	.dwtag  DW_TAG_variable, DW_AT_name("bytes_to_eat")
	.dwattr $C$DW$490, DW_AT_TI_symbol_name("_bytes_to_eat")
	.dwattr $C$DW$490, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$490, DW_AT_location[DW_OP_bregx 0x24 32]
	.dwpsn	file "./adpcm_encode_test.c",line 974,column 21,is_stmt
        MOV dbl(*SP(#26)), XAR3
        MOV dbl(*AR3(short(#4))), AC0 ; |974| 
        ADD #1, AC0 ; |974| 
        BCLR @#0, AC0 ; |974| 
        MOV AC0, dbl(*SP(#32)) ; |974| 
	.dwpsn	file "./adpcm_encode_test.c",line 980,column 13,is_stmt
        MOV dbl(*SP(#32)), AC0 ; |980| 
        SUB #1, AC0, AC1 ; |980| 
        MOV AC1, dbl(*SP(#32)) ; |980| 
        BCC $C$L180,AC0 == #0 ; |980| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |980| 
$C$DW$L$_adpcm_converter$64$E:
$C$L210:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_converter$65$B:
	.dwpsn	file "./adpcm_encode_test.c",line 982,column 17,is_stmt
        MOV dbl(*SP(#30)), XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#30))
	.dwpsn	file "./adpcm_encode_test.c",line 983,column 13,is_stmt
        MOV dbl(*SP(#32)), AC0 ; |983| 
        SUB #1, AC0, AC1 ; |983| 
        MOV AC1, dbl(*SP(#32)) ; |983| 
        BCC $C$L210,AC0 != #0 ; |983| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |983| 
$C$DW$L$_adpcm_converter$65$E:
$C$DW$L$_adpcm_converter$66$B:
	.dwendtag $C$DW$489

	.dwpsn	file "./adpcm_encode_test.c",line 820,column 12,is_stmt
        B $C$L180 ; |820| 
                                        ; branch occurs ; |820| 
$C$DW$L$_adpcm_converter$66$E:
$C$L211:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 987,column 5,is_stmt

        MOV dbl(*SP(#12)), AC1 ; |987| 
||      MOV #1, AC0 ; |987| 

        CMP AC1 != AC0, TC1 ; |987| 
        BCC $C$L216,TC1 ; |987| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |987| 

$C$DW$491	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$492	.dwtag  DW_TAG_variable, DW_AT_name("block_size")
	.dwattr $C$DW$492, DW_AT_TI_symbol_name("_block_size")
	.dwattr $C$DW$492, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$492, DW_AT_location[DW_OP_bregx 0x24 32]
$C$DW$493	.dwtag  DW_TAG_variable, DW_AT_name("samples_per_block")
	.dwattr $C$DW$493, DW_AT_TI_symbol_name("_samples_per_block")
	.dwattr $C$DW$493, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$493, DW_AT_location[DW_OP_bregx 0x24 34]
	.dwpsn	file "./adpcm_encode_test.c",line 991,column 9,is_stmt
        MOV dbl(*(#_blocksize_pow2)), AC0 ; |991| 
        BCC $C$L212,AC0 == #0 ; |991| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |991| 
	.dwpsn	file "./adpcm_encode_test.c",line 992,column 13,is_stmt
        MOV #1, AC0
        MOV *(#(_blocksize_pow2+1)), T1 ; |992| 
        SFTS AC0, T1, AC0 ; |992| 
        MOV mmap(AC0L), AC0 ; |992| 
        MOV AC0, dbl(*SP(#32)) ; |992| 
        B $C$L215 ; |992| 
                                        ; branch occurs ; |992| 
$C$L212:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 994,column 13,is_stmt
        MOV #11000, AC0 ; |994| 
        MOV dbl(*SP(#22)), AC1 ; |994| 
        CMPU AC1 >= AC0, TC1 ; |994| 
        BCC $C$L213,TC1 ; |994| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |994| 

        B $C$L214 ; |994| 
||      MOV #1, AC1 ; |994| 

                                        ; branch occurs ; |994| 
$C$L213:    
	CALL #_coverage_log;
        MOV dbl(*SP(#22)), AC0 ; |994| 
        MOV #11000, AC1 ; |994| 
$C$DW$494	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$494, DW_AT_low_pc(0x00)
	.dwattr $C$DW$494, DW_AT_name("__divul")
	.dwattr $C$DW$494, DW_AT_TI_call
        CALL #__divul ; |994| 
                                        ; call occurs [#__divul] ; |994| 
        OR #0, AC0, AC1
$C$L214:    
	CALL #_coverage_log;
        MOV dbl(*SP(#16)), AC0 ; |994| 
$C$DW$495	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$495, DW_AT_low_pc(0x00)
	.dwattr $C$DW$495, DW_AT_name("__mpyli")
	.dwattr $C$DW$495, DW_AT_TI_call

        CALL #__mpyli ; |994| 
||      SFTS AC0, #8, AC0 ; |994| 

                                        ; call occurs [#__mpyli] ; |994| 
        MOV AC0, dbl(*SP(#32)) ; |994| 
$C$L215:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 996,column 9,is_stmt
        MOV dbl(*SP(#16)), AC0 ; |996| 

        SFTS AC0, #2, AC0 ; |996| 
||      MOV dbl(*SP(#16)), AC1 ; |996| 

        SUB AC0, dbl(*SP(#32)), AC0 ; |996| 
$C$DW$496	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$496, DW_AT_low_pc(0x00)
	.dwattr $C$DW$496, DW_AT_name("__mpyli")
	.dwattr $C$DW$496, DW_AT_TI_call

        CALL #__mpyli ; |996| 
||      XOR #0x0003, AC1, AC1 ; |996| 

                                        ; call occurs [#__mpyli] ; |996| 
        ADD #1, AC0, AC0 ; |996| 
        MOV AC0, dbl(*SP(#34)) ; |996| 
	.dwpsn	file "./adpcm_encode_test.c",line 1001,column 9,is_stmt
        AMAR *SP(#8), XAR0
        MOV dbl(*SP(#34)), AC0 ; |1001| 
        MOV AC0, dbl(*SP(#0)) ; |1001| 
        MOV dbl(*SP(#22)), AC2 ; |1001| 
        MOV dbl(*SP(#16)), AC0 ; |1001| 
        MOV dbl(*SP(#20)), AC1 ; |1001| 
$C$DW$497	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$497, DW_AT_low_pc(0x00)
	.dwattr $C$DW$497, DW_AT_name("_write_adpcm_wav_header")
	.dwattr $C$DW$497, DW_AT_TI_call
        CALL #_write_adpcm_wav_header ; |1001| 
                                        ; call occurs [#_write_adpcm_wav_header] ; |1001| 
        ADD dbl(*SP(#10)), AC0, AC0 ; |1001| 
        MOV AC0, dbl(*SP(#10)) ; |1001| 
	.dwpsn	file "./adpcm_encode_test.c",line 1002,column 9,is_stmt
        AMAR *SP(#8), XAR1
        MOV dbl(*SP(#22)), AC0 ; |1002| 
        MOV dbl(*SP(#34)), AC2 ; |1002| 
        MOV AC0, dbl(*SP(#0)) ; |1002| 
        MOV dbl(*SP(#30)), XAR0
        MOV dbl(*SP(#16)), AC0 ; |1002| 
        MOV dbl(*SP(#20)), AC1 ; |1002| 
$C$DW$498	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$498, DW_AT_low_pc(0x00)
	.dwattr $C$DW$498, DW_AT_name("_adpcm_encode_data")
	.dwattr $C$DW$498, DW_AT_TI_call
        CALL #_adpcm_encode_data ; |1002| 
                                        ; call occurs [#_adpcm_encode_data] ; |1002| 
        ADD dbl(*SP(#10)), AC0, AC0 ; |1002| 
        MOV AC0, dbl(*SP(#10)) ; |1002| 
	.dwendtag $C$DW$491

$C$L216:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 1007,column 5,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |1007| 
        MOV AC0, dbl(*SP(#6)) ; |1007| 
	.dwpsn	file "./adpcm_encode_test.c",line 1008,column 5,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |1008| 
        MOV AC0, dbl(*SP(#6)) ; |1008| 
        NOP
        NOP
        NOP
	.dwpsn	file "./adpcm_encode_test.c",line 1009,column 5,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |1009| 
	.dwpsn	file "./adpcm_encode_test.c",line 1011,column 5,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |1011| 
$C$L217:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 1012,column 1,is_stmt
        AADD #39, SP
	.dwcfi	cfa_offset, 3
        POP T3
	.dwcfi	restore_reg, 15
	.dwcfi	cfa_offset, 2
        POP T2
	.dwcfi	restore_reg, 14
	.dwcfi	cfa_offset, 1
$C$DW$499	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$499, DW_AT_low_pc(0x00)
	.dwattr $C$DW$499, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$500	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$500, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/adpcm_encode/adpcm_encode_test.asm:$C$L180:1:1738600387")
	.dwattr $C$DW$500, DW_AT_TI_begin_file("./adpcm_encode_test.c")
	.dwattr $C$DW$500, DW_AT_TI_begin_line(0x334)
	.dwattr $C$DW$500, DW_AT_TI_end_line(0x3d9)
$C$DW$501	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$501, DW_AT_low_pc($C$DW$L$_adpcm_converter$5$B)
	.dwattr $C$DW$501, DW_AT_high_pc($C$DW$L$_adpcm_converter$5$E)
$C$DW$502	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$502, DW_AT_low_pc($C$DW$L$_adpcm_converter$37$B)
	.dwattr $C$DW$502, DW_AT_high_pc($C$DW$L$_adpcm_converter$37$E)
$C$DW$503	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$503, DW_AT_low_pc($C$DW$L$_adpcm_converter$30$B)
	.dwattr $C$DW$503, DW_AT_high_pc($C$DW$L$_adpcm_converter$30$E)
$C$DW$504	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$504, DW_AT_low_pc($C$DW$L$_adpcm_converter$31$B)
	.dwattr $C$DW$504, DW_AT_high_pc($C$DW$L$_adpcm_converter$31$E)
$C$DW$505	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$505, DW_AT_low_pc($C$DW$L$_adpcm_converter$20$B)
	.dwattr $C$DW$505, DW_AT_high_pc($C$DW$L$_adpcm_converter$20$E)
$C$DW$506	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$506, DW_AT_low_pc($C$DW$L$_adpcm_converter$21$B)
	.dwattr $C$DW$506, DW_AT_high_pc($C$DW$L$_adpcm_converter$21$E)
$C$DW$507	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$507, DW_AT_low_pc($C$DW$L$_adpcm_converter$22$B)
	.dwattr $C$DW$507, DW_AT_high_pc($C$DW$L$_adpcm_converter$22$E)
$C$DW$508	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$508, DW_AT_low_pc($C$DW$L$_adpcm_converter$23$B)
	.dwattr $C$DW$508, DW_AT_high_pc($C$DW$L$_adpcm_converter$23$E)
$C$DW$509	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$509, DW_AT_low_pc($C$DW$L$_adpcm_converter$6$B)
	.dwattr $C$DW$509, DW_AT_high_pc($C$DW$L$_adpcm_converter$6$E)
$C$DW$510	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$510, DW_AT_low_pc($C$DW$L$_adpcm_converter$7$B)
	.dwattr $C$DW$510, DW_AT_high_pc($C$DW$L$_adpcm_converter$7$E)
$C$DW$511	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$511, DW_AT_low_pc($C$DW$L$_adpcm_converter$9$B)
	.dwattr $C$DW$511, DW_AT_high_pc($C$DW$L$_adpcm_converter$9$E)
$C$DW$512	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$512, DW_AT_low_pc($C$DW$L$_adpcm_converter$10$B)
	.dwattr $C$DW$512, DW_AT_high_pc($C$DW$L$_adpcm_converter$10$E)
$C$DW$513	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$513, DW_AT_low_pc($C$DW$L$_adpcm_converter$11$B)
	.dwattr $C$DW$513, DW_AT_high_pc($C$DW$L$_adpcm_converter$11$E)
$C$DW$514	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$514, DW_AT_low_pc($C$DW$L$_adpcm_converter$12$B)
	.dwattr $C$DW$514, DW_AT_high_pc($C$DW$L$_adpcm_converter$12$E)
$C$DW$515	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$515, DW_AT_low_pc($C$DW$L$_adpcm_converter$13$B)
	.dwattr $C$DW$515, DW_AT_high_pc($C$DW$L$_adpcm_converter$13$E)
$C$DW$516	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$516, DW_AT_low_pc($C$DW$L$_adpcm_converter$14$B)
	.dwattr $C$DW$516, DW_AT_high_pc($C$DW$L$_adpcm_converter$14$E)
$C$DW$517	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$517, DW_AT_low_pc($C$DW$L$_adpcm_converter$15$B)
	.dwattr $C$DW$517, DW_AT_high_pc($C$DW$L$_adpcm_converter$15$E)
$C$DW$518	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$518, DW_AT_low_pc($C$DW$L$_adpcm_converter$16$B)
	.dwattr $C$DW$518, DW_AT_high_pc($C$DW$L$_adpcm_converter$16$E)
$C$DW$519	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$519, DW_AT_low_pc($C$DW$L$_adpcm_converter$17$B)
	.dwattr $C$DW$519, DW_AT_high_pc($C$DW$L$_adpcm_converter$17$E)
$C$DW$520	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$520, DW_AT_low_pc($C$DW$L$_adpcm_converter$18$B)
	.dwattr $C$DW$520, DW_AT_high_pc($C$DW$L$_adpcm_converter$18$E)
$C$DW$521	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$521, DW_AT_low_pc($C$DW$L$_adpcm_converter$19$B)
	.dwattr $C$DW$521, DW_AT_high_pc($C$DW$L$_adpcm_converter$19$E)
$C$DW$522	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$522, DW_AT_low_pc($C$DW$L$_adpcm_converter$24$B)
	.dwattr $C$DW$522, DW_AT_high_pc($C$DW$L$_adpcm_converter$24$E)
$C$DW$523	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$523, DW_AT_low_pc($C$DW$L$_adpcm_converter$25$B)
	.dwattr $C$DW$523, DW_AT_high_pc($C$DW$L$_adpcm_converter$25$E)
$C$DW$524	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$524, DW_AT_low_pc($C$DW$L$_adpcm_converter$26$B)
	.dwattr $C$DW$524, DW_AT_high_pc($C$DW$L$_adpcm_converter$26$E)
$C$DW$525	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$525, DW_AT_low_pc($C$DW$L$_adpcm_converter$66$B)
	.dwattr $C$DW$525, DW_AT_high_pc($C$DW$L$_adpcm_converter$66$E)
$C$DW$526	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$526, DW_AT_low_pc($C$DW$L$_adpcm_converter$64$B)
	.dwattr $C$DW$526, DW_AT_high_pc($C$DW$L$_adpcm_converter$64$E)
$C$DW$527	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$527, DW_AT_low_pc($C$DW$L$_adpcm_converter$36$B)
	.dwattr $C$DW$527, DW_AT_high_pc($C$DW$L$_adpcm_converter$36$E)
$C$DW$528	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$528, DW_AT_low_pc($C$DW$L$_adpcm_converter$34$B)
	.dwattr $C$DW$528, DW_AT_high_pc($C$DW$L$_adpcm_converter$34$E)
$C$DW$529	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$529, DW_AT_low_pc($C$DW$L$_adpcm_converter$33$B)
	.dwattr $C$DW$529, DW_AT_high_pc($C$DW$L$_adpcm_converter$33$E)
$C$DW$530	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$530, DW_AT_low_pc($C$DW$L$_adpcm_converter$27$B)
	.dwattr $C$DW$530, DW_AT_high_pc($C$DW$L$_adpcm_converter$27$E)

$C$DW$531	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$531, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/adpcm_encode/adpcm_encode_test.asm:$C$L210:2:1738600387")
	.dwattr $C$DW$531, DW_AT_TI_begin_file("./adpcm_encode_test.c")
	.dwattr $C$DW$531, DW_AT_TI_begin_line(0x3d4)
	.dwattr $C$DW$531, DW_AT_TI_end_line(0x3d7)
$C$DW$532	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$532, DW_AT_low_pc($C$DW$L$_adpcm_converter$65$B)
	.dwattr $C$DW$532, DW_AT_high_pc($C$DW$L$_adpcm_converter$65$E)
	.dwendtag $C$DW$531


$C$DW$533	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$533, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/adpcm_encode/adpcm_encode_test.asm:$C$L196:2:1738600387")
	.dwattr $C$DW$533, DW_AT_TI_begin_file("./adpcm_encode_test.c")
	.dwattr $C$DW$533, DW_AT_TI_begin_line(0x378)
	.dwattr $C$DW$533, DW_AT_TI_end_line(0x37b)
$C$DW$534	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$534, DW_AT_low_pc($C$DW$L$_adpcm_converter$35$B)
	.dwattr $C$DW$534, DW_AT_high_pc($C$DW$L$_adpcm_converter$35$E)
	.dwendtag $C$DW$533


$C$DW$535	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$535, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/adpcm_encode/adpcm_encode_test.asm:$C$L194:2:1738600387")
	.dwattr $C$DW$535, DW_AT_TI_begin_file("./adpcm_encode_test.c")
	.dwattr $C$DW$535, DW_AT_TI_begin_line(0x36f)
	.dwattr $C$DW$535, DW_AT_TI_end_line(0x36f)
$C$DW$536	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$536, DW_AT_low_pc($C$DW$L$_adpcm_converter$32$B)
	.dwattr $C$DW$536, DW_AT_high_pc($C$DW$L$_adpcm_converter$32$E)
	.dwendtag $C$DW$535

	.dwendtag $C$DW$500

	.dwattr $C$DW$447, DW_AT_TI_end_file("./adpcm_encode_test.c")
	.dwattr $C$DW$447, DW_AT_TI_end_line(0x3f4)
	.dwattr $C$DW$447, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$447

	.sect	".text"

$C$DW$537	.dwtag  DW_TAG_subprogram, DW_AT_name("add_or_write_buffer")
	.dwattr $C$DW$537, DW_AT_low_pc(_add_or_write_buffer)
	.dwattr $C$DW$537, DW_AT_high_pc(0x00)
	.dwattr $C$DW$537, DW_AT_TI_symbol_name("_add_or_write_buffer")
	.dwattr $C$DW$537, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$537, DW_AT_TI_begin_file("./adpcm_encode_test.c")
	.dwattr $C$DW$537, DW_AT_TI_begin_line(0x3f6)
	.dwattr $C$DW$537, DW_AT_TI_begin_column(0x11)
	.dwattr $C$DW$537, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "./adpcm_encode_test.c",line 1015,column 1,is_stmt,address _add_or_write_buffer

	.dwfde $C$DW$CIE, _add_or_write_buffer
$C$DW$538	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buffer")
	.dwattr $C$DW$538, DW_AT_TI_symbol_name("_buffer")
	.dwattr $C$DW$538, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$538, DW_AT_location[DW_OP_reg17]
$C$DW$539	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size")
	.dwattr $C$DW$539, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$539, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$539, DW_AT_location[DW_OP_reg0]
;*******************************************************************************
;* FUNCTION NAME: add_or_write_buffer                                          *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR3,XAR3,SP,CARRY,TC1,   *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (8 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_add_or_write_buffer:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-9, SP
	.dwcfi	cfa_offset, 10
$C$DW$540	.dwtag  DW_TAG_variable, DW_AT_name("buffer")
	.dwattr $C$DW$540, DW_AT_TI_symbol_name("_buffer")
	.dwattr $C$DW$540, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$540, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$541	.dwtag  DW_TAG_variable, DW_AT_name("size")
	.dwattr $C$DW$541, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$541, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$541, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$542	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$542, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$542, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$542, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$543	.dwtag  DW_TAG_variable, DW_AT_name("checksum")
	.dwattr $C$DW$543, DW_AT_TI_symbol_name("_checksum")
	.dwattr $C$DW$543, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$543, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV AC0, dbl(*SP(#2)) ; |1015| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./adpcm_encode_test.c",line 1017,column 14,is_stmt
        MOV #0, AC0 ; |1017| 
        MOV AC0, dbl(*SP(#6)) ; |1017| 
	.dwpsn	file "./adpcm_encode_test.c",line 1019,column 10,is_stmt
        MOV AC0, dbl(*SP(#4)) ; |1019| 
	.dwpsn	file "./adpcm_encode_test.c",line 1019,column 17,is_stmt
        MOV dbl(*SP(#4)), AC1 ; |1019| 
        MOV dbl(*SP(#2)), AC0 ; |1019| 
        CMPU AC1 >= AC0, TC1 ; |1019| 
        BCC $C$L219,TC1 ; |1019| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |1019| 
$C$L218:    
	CALL #_coverage_log;
$C$DW$L$_add_or_write_buffer$2$B:
	.dwpsn	file "./adpcm_encode_test.c",line 1021,column 9,is_stmt
        MOV *SP(#5), T0 ; |1021| 
        MOV dbl(*SP(#0)), XAR3
        MOV uns(*AR3(T0)), AC0 ; |1021| 
        ADD dbl(*SP(#6)), AC0, AC0 ; |1021| 
        MOV AC0, dbl(*SP(#6)) ; |1021| 
	.dwpsn	file "./adpcm_encode_test.c",line 1019,column 27,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |1019| 
        ADD #1, AC0 ; |1019| 
        MOV AC0, dbl(*SP(#4)) ; |1019| 
	.dwpsn	file "./adpcm_encode_test.c",line 1019,column 17,is_stmt
        MOV dbl(*SP(#4)), AC1 ; |1019| 
        MOV dbl(*SP(#2)), AC0 ; |1019| 
        CMPU AC1 < AC0, TC1 ; |1019| 
        BCC $C$L218,TC1 ; |1019| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |1019| 
$C$DW$L$_add_or_write_buffer$2$E:
$C$L219:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 1024,column 5,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |1024| 
	.dwpsn	file "./adpcm_encode_test.c",line 1025,column 1,is_stmt
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$544	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$544, DW_AT_low_pc(0x00)
	.dwattr $C$DW$544, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$545	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$545, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/adpcm_encode/adpcm_encode_test.asm:$C$L218:1:1738600387")
	.dwattr $C$DW$545, DW_AT_TI_begin_file("./adpcm_encode_test.c")
	.dwattr $C$DW$545, DW_AT_TI_begin_line(0x3fb)
	.dwattr $C$DW$545, DW_AT_TI_end_line(0x3fe)
$C$DW$546	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$546, DW_AT_low_pc($C$DW$L$_add_or_write_buffer$2$B)
	.dwattr $C$DW$546, DW_AT_high_pc($C$DW$L$_add_or_write_buffer$2$E)
	.dwendtag $C$DW$545

	.dwattr $C$DW$537, DW_AT_TI_end_file("./adpcm_encode_test.c")
	.dwattr $C$DW$537, DW_AT_TI_end_line(0x401)
	.dwattr $C$DW$537, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$537

	.sect	".text"

$C$DW$547	.dwtag  DW_TAG_subprogram, DW_AT_name("write_adpcm_wav_header")
	.dwattr $C$DW$547, DW_AT_low_pc(_write_adpcm_wav_header)
	.dwattr $C$DW$547, DW_AT_high_pc(0x00)
	.dwattr $C$DW$547, DW_AT_TI_symbol_name("_write_adpcm_wav_header")
	.dwattr $C$DW$547, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$547, DW_AT_TI_begin_file("./adpcm_encode_test.c")
	.dwattr $C$DW$547, DW_AT_TI_begin_line(0x403)
	.dwattr $C$DW$547, DW_AT_TI_begin_column(0x11)
	.dwattr $C$DW$547, DW_AT_TI_max_frame_size(0x54)
	.dwpsn	file "./adpcm_encode_test.c",line 1028,column 1,is_stmt,address _write_adpcm_wav_header

	.dwfde $C$DW$CIE, _write_adpcm_wav_header
$C$DW$548	.dwtag  DW_TAG_formal_parameter, DW_AT_name("num_channels")
	.dwattr $C$DW$548, DW_AT_TI_symbol_name("_num_channels")
	.dwattr $C$DW$548, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$548, DW_AT_location[DW_OP_reg0]
$C$DW$549	.dwtag  DW_TAG_formal_parameter, DW_AT_name("num_samples")
	.dwattr $C$DW$549, DW_AT_TI_symbol_name("_num_samples")
	.dwattr $C$DW$549, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$549, DW_AT_location[DW_OP_reg3]
$C$DW$550	.dwtag  DW_TAG_formal_parameter, DW_AT_name("sample_rate")
	.dwattr $C$DW$550, DW_AT_TI_symbol_name("_sample_rate")
	.dwattr $C$DW$550, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$550, DW_AT_location[DW_OP_reg6]
$C$DW$551	.dwtag  DW_TAG_formal_parameter, DW_AT_name("samples_per_block")
	.dwattr $C$DW$551, DW_AT_TI_symbol_name("_samples_per_block")
	.dwattr $C$DW$551, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$551, DW_AT_location[DW_OP_bregx 0x24 84]
$C$DW$552	.dwtag  DW_TAG_formal_parameter, DW_AT_name("checksum")
	.dwattr $C$DW$552, DW_AT_TI_symbol_name("_checksum")
	.dwattr $C$DW$552, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$552, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: write_adpcm_wav_header                                       *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,AC2,AC2,T0,T1,AR0,XAR0,AR1,XAR1,AR2, *
;*                        XAR2,SP,CARRY,M40,SATA,SATD,RDM,FRCT,SMUL            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 84 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (82 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_write_adpcm_wav_header:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-83, SP
	.dwcfi	cfa_offset, 84
$C$DW$553	.dwtag  DW_TAG_variable, DW_AT_name("num_channels")
	.dwattr $C$DW$553, DW_AT_TI_symbol_name("_num_channels")
	.dwattr $C$DW$553, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$553, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$554	.dwtag  DW_TAG_variable, DW_AT_name("num_samples")
	.dwattr $C$DW$554, DW_AT_TI_symbol_name("_num_samples")
	.dwattr $C$DW$554, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$554, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$555	.dwtag  DW_TAG_variable, DW_AT_name("sample_rate")
	.dwattr $C$DW$555, DW_AT_TI_symbol_name("_sample_rate")
	.dwattr $C$DW$555, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$555, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$556	.dwtag  DW_TAG_variable, DW_AT_name("checksum")
	.dwattr $C$DW$556, DW_AT_TI_symbol_name("_checksum")
	.dwattr $C$DW$556, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$556, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$557	.dwtag  DW_TAG_variable, DW_AT_name("riffhdr")
	.dwattr $C$DW$557, DW_AT_TI_symbol_name("_riffhdr")
	.dwattr $C$DW$557, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$557, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$558	.dwtag  DW_TAG_variable, DW_AT_name("datahdr")
	.dwattr $C$DW$558, DW_AT_TI_symbol_name("_datahdr")
	.dwattr $C$DW$558, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$558, DW_AT_location[DW_OP_bregx 0x24 18]
$C$DW$559	.dwtag  DW_TAG_variable, DW_AT_name("fmthdr")
	.dwattr $C$DW$559, DW_AT_TI_symbol_name("_fmthdr")
	.dwattr $C$DW$559, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$559, DW_AT_location[DW_OP_bregx 0x24 24]
$C$DW$560	.dwtag  DW_TAG_variable, DW_AT_name("wavhdr")
	.dwattr $C$DW$560, DW_AT_TI_symbol_name("_wavhdr")
	.dwattr $C$DW$560, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$560, DW_AT_location[DW_OP_bregx 0x24 30]
$C$DW$561	.dwtag  DW_TAG_variable, DW_AT_name("facthdr")
	.dwattr $C$DW$561, DW_AT_TI_symbol_name("_facthdr")
	.dwattr $C$DW$561, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$561, DW_AT_location[DW_OP_bregx 0x24 58]
$C$DW$562	.dwtag  DW_TAG_variable, DW_AT_name("bytes_written")
	.dwattr $C$DW$562, DW_AT_TI_symbol_name("_bytes_written")
	.dwattr $C$DW$562, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$562, DW_AT_location[DW_OP_bregx 0x24 66]
$C$DW$563	.dwtag  DW_TAG_variable, DW_AT_name("wavhdrsize")
	.dwattr $C$DW$563, DW_AT_TI_symbol_name("_wavhdrsize")
	.dwattr $C$DW$563, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$563, DW_AT_location[DW_OP_bregx 0x24 68]
$C$DW$564	.dwtag  DW_TAG_variable, DW_AT_name("block_size")
	.dwattr $C$DW$564, DW_AT_TI_symbol_name("_block_size")
	.dwattr $C$DW$564, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$564, DW_AT_location[DW_OP_bregx 0x24 70]
$C$DW$565	.dwtag  DW_TAG_variable, DW_AT_name("num_blocks")
	.dwattr $C$DW$565, DW_AT_TI_symbol_name("_num_blocks")
	.dwattr $C$DW$565, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$565, DW_AT_location[DW_OP_bregx 0x24 72]
$C$DW$566	.dwtag  DW_TAG_variable, DW_AT_name("leftover_samples")
	.dwattr $C$DW$566, DW_AT_TI_symbol_name("_leftover_samples")
	.dwattr $C$DW$566, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$566, DW_AT_location[DW_OP_bregx 0x24 74]
$C$DW$567	.dwtag  DW_TAG_variable, DW_AT_name("total_data_bytes")
	.dwattr $C$DW$567, DW_AT_TI_symbol_name("_total_data_bytes")
	.dwattr $C$DW$567, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$567, DW_AT_location[DW_OP_bregx 0x24 76]
        MOV XAR0, dbl(*SP(#6))
        MOV AC2, dbl(*SP(#4)) ; |1028| 
        MOV AC1, dbl(*SP(#2)) ; |1028| 
        MOV AC0, dbl(*SP(#0)) ; |1028| 
	.dwpsn	file "./adpcm_encode_test.c",line 1034,column 14,is_stmt
        MOV #0, AC0 ; |1034| 
        MOV AC0, dbl(*SP(#66)) ; |1034| 
	.dwpsn	file "./adpcm_encode_test.c",line 1035,column 13,is_stmt
        MOV #20, AC0 ; |1035| 
        MOV AC0, dbl(*SP(#68)) ; |1035| 
	.dwpsn	file "./adpcm_encode_test.c",line 1036,column 13,is_stmt

        MOV dbl(*SP(#0)), AC1 ; |1036| 
||      MOV #1, AC0 ; |1036| 

        SUB AC0, dbl(*SP(#84)), AC0 ; |1036| 
$C$DW$568	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$568, DW_AT_low_pc(0x00)
	.dwattr $C$DW$568, DW_AT_name("__divli")
	.dwattr $C$DW$568, DW_AT_TI_call

        CALL #__divli ; |1036| 
||      XOR #0x0003, AC1, AC1 ; |1036| 

                                        ; call occurs [#__divli] ; |1036| 
        MOV dbl(*SP(#0)), AC1 ; |1036| 
        ADD AC1 << #2, AC0 ; |1036| 
        MOV AC0, dbl(*SP(#70)) ; |1036| 
	.dwpsn	file "./adpcm_encode_test.c",line 1037,column 14,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |1037| 
        MOV dbl(*SP(#84)), AC1 ; |1037| 
$C$DW$569	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$569, DW_AT_low_pc(0x00)
	.dwattr $C$DW$569, DW_AT_name("__divul")
	.dwattr $C$DW$569, DW_AT_TI_call
        CALL #__divul ; |1037| 
                                        ; call occurs [#__divul] ; |1037| 
        MOV AC0, dbl(*SP(#72)) ; |1037| 
	.dwpsn	file "./adpcm_encode_test.c",line 1038,column 13,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |1038| 
        MOV dbl(*SP(#84)), AC1 ; |1038| 
$C$DW$570	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$570, DW_AT_low_pc(0x00)
	.dwattr $C$DW$570, DW_AT_name("__remul")
	.dwattr $C$DW$570, DW_AT_TI_call
        CALL #__remul ; |1038| 
                                        ; call occurs [#__remul] ; |1038| 
        MOV AC0, dbl(*SP(#74)) ; |1038| 
	.dwpsn	file "./adpcm_encode_test.c",line 1039,column 14,is_stmt
        MOV dbl(*SP(#72)), AC0 ; |1039| 
        MOV dbl(*SP(#70)), AC1 ; |1039| 
$C$DW$571	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$571, DW_AT_low_pc(0x00)
	.dwattr $C$DW$571, DW_AT_name("__mpyli")
	.dwattr $C$DW$571, DW_AT_TI_call
        CALL #__mpyli ; |1039| 
                                        ; call occurs [#__mpyli] ; |1039| 
        MOV AC0, dbl(*SP(#76)) ; |1039| 
	.dwpsn	file "./adpcm_encode_test.c",line 1041,column 5,is_stmt
        MOV dbl(*SP(#74)), AC0 ; |1041| 
        BCC $C$L220,AC0 == #0 ; |1041| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |1041| 

$C$DW$572	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$573	.dwtag  DW_TAG_variable, DW_AT_name("last_block_samples")
	.dwattr $C$DW$573, DW_AT_TI_symbol_name("_last_block_samples")
	.dwattr $C$DW$573, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$573, DW_AT_location[DW_OP_bregx 0x24 78]
$C$DW$574	.dwtag  DW_TAG_variable, DW_AT_name("last_block_size")
	.dwattr $C$DW$574, DW_AT_TI_symbol_name("_last_block_size")
	.dwattr $C$DW$574, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$574, DW_AT_location[DW_OP_bregx 0x24 80]
	.dwpsn	file "./adpcm_encode_test.c",line 1043,column 17,is_stmt
        MOV dbl(*SP(#74)), AC1 ; |1043| 

        ADD #6, AC1 ; |1043| 
||      MOV #-8, AC0 ; |1043| 

        AND AC1, AC0 ; |1043| 
        ADD #1, AC0 ; |1043| 
        MOV AC0, dbl(*SP(#78)) ; |1043| 
	.dwpsn	file "./adpcm_encode_test.c",line 1044,column 17,is_stmt

        MOV dbl(*SP(#0)), AC1 ; |1044| 
||      MOV #1, AC0 ; |1044| 

        SUB AC0, dbl(*SP(#78)), AC0 ; |1044| 
$C$DW$575	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$575, DW_AT_low_pc(0x00)
	.dwattr $C$DW$575, DW_AT_name("__divli")
	.dwattr $C$DW$575, DW_AT_TI_call

        CALL #__divli ; |1044| 
||      XOR #0x0003, AC1, AC1 ; |1044| 

                                        ; call occurs [#__divli] ; |1044| 
        MOV dbl(*SP(#0)), AC1 ; |1044| 
        ADD AC1 << #2, AC0 ; |1044| 
        MOV AC0, dbl(*SP(#80)) ; |1044| 
	.dwpsn	file "./adpcm_encode_test.c",line 1045,column 9,is_stmt
        MOV dbl(*SP(#80)), AC0 ; |1045| 
        ADD dbl(*SP(#76)), AC0, AC0 ; |1045| 
        MOV AC0, dbl(*SP(#76)) ; |1045| 
	.dwendtag $C$DW$572

$C$L220:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 1048,column 5,is_stmt
        AMAR *SP(#30), XAR0
        MOV #28, T1 ; |1048| 
$C$DW$576	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$576, DW_AT_low_pc(0x00)
	.dwattr $C$DW$576, DW_AT_name("_memset")
	.dwattr $C$DW$576, DW_AT_TI_call

        CALL #_memset ; |1048| 
||      MOV #0, T0

                                        ; call occurs [#_memset] ; |1048| 
	.dwpsn	file "./adpcm_encode_test.c",line 1050,column 5,is_stmt
        MOV #17, *SP(#30) ; |1050| 
	.dwpsn	file "./adpcm_encode_test.c",line 1051,column 5,is_stmt
        MOV *SP(#1), AR1 ; |1051| 
        MOV AR1, *SP(#31) ; |1051| 
	.dwpsn	file "./adpcm_encode_test.c",line 1052,column 5,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |1052| 
        MOV AC0, dbl(*SP(#32)) ; |1052| 
	.dwpsn	file "./adpcm_encode_test.c",line 1053,column 5,is_stmt
        MOV dbl(*SP(#70)), AC1 ; |1053| 
        MOV dbl(*SP(#4)), AC0 ; |1053| 
$C$DW$577	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$577, DW_AT_low_pc(0x00)
	.dwattr $C$DW$577, DW_AT_name("__mpyli")
	.dwattr $C$DW$577, DW_AT_TI_call
        CALL #__mpyli ; |1053| 
                                        ; call occurs [#__mpyli] ; |1053| 
        MOV dbl(*SP(#84)), AC1 ; |1053| 
$C$DW$578	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$578, DW_AT_low_pc(0x00)
	.dwattr $C$DW$578, DW_AT_name("__divul")
	.dwattr $C$DW$578, DW_AT_TI_call
        CALL #__divul ; |1053| 
                                        ; call occurs [#__divul] ; |1053| 
        MOV AC0, dbl(*SP(#34)) ; |1053| 
	.dwpsn	file "./adpcm_encode_test.c",line 1054,column 5,is_stmt
        MOV *SP(#71), AR1 ; |1054| 
        MOV AR1, *SP(#36) ; |1054| 
	.dwpsn	file "./adpcm_encode_test.c",line 1055,column 5,is_stmt
        MOV #4, *SP(#37) ; |1055| 
	.dwpsn	file "./adpcm_encode_test.c",line 1056,column 5,is_stmt
        MOV #2, *SP(#38) ; |1056| 
	.dwpsn	file "./adpcm_encode_test.c",line 1057,column 5,is_stmt
        MOV *SP(#85), AR1 ; |1057| 
        MOV AR1, *SP(#39) ; |1057| 
	.dwpsn	file "./adpcm_encode_test.c",line 1059,column 5,is_stmt
        AMAR *SP(#8), XAR0
        AMOV #$C$FSL1, XAR1 ; |1059| 
$C$DW$579	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$579, DW_AT_low_pc(0x00)
	.dwattr $C$DW$579, DW_AT_name("_strncpy")
	.dwattr $C$DW$579, DW_AT_TI_call

        CALL #_strncpy ; |1059| 
||      MOV #4, T0

                                        ; call occurs [#_strncpy] ; |1059| 
	.dwpsn	file "./adpcm_encode_test.c",line 1060,column 5,is_stmt
        AMOV #$C$FSL2, XAR1 ; |1060| 
        AMAR *SP(#14), XAR0
$C$DW$580	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$580, DW_AT_low_pc(0x00)
	.dwattr $C$DW$580, DW_AT_name("_strncpy")
	.dwattr $C$DW$580, DW_AT_TI_call

        CALL #_strncpy ; |1060| 
||      MOV #4, T0

                                        ; call occurs [#_strncpy] ; |1060| 
	.dwpsn	file "./adpcm_encode_test.c",line 1061,column 5,is_stmt
        MOV #24, AC0 ; |1061| 
        ADD dbl(*SP(#68)), AC0, AC0 ; |1061| 
        ADD dbl(*SP(#76)), AC0, AC0 ; |1061| 
        MOV AC0, dbl(*SP(#12)) ; |1061| 
	.dwpsn	file "./adpcm_encode_test.c",line 1062,column 5,is_stmt
        AMOV #$C$FSL4, XAR1 ; |1062| 
        AMAR *SP(#24), XAR0
$C$DW$581	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$581, DW_AT_low_pc(0x00)
	.dwattr $C$DW$581, DW_AT_name("_strncpy")
	.dwattr $C$DW$581, DW_AT_TI_call

        CALL #_strncpy ; |1062| 
||      MOV #4, T0

                                        ; call occurs [#_strncpy] ; |1062| 
	.dwpsn	file "./adpcm_encode_test.c",line 1063,column 5,is_stmt
        MOV dbl(*SP(#68)), AC0 ; |1063| 
        MOV AC0, dbl(*SP(#28)) ; |1063| 
	.dwpsn	file "./adpcm_encode_test.c",line 1064,column 5,is_stmt
        AMOV #$C$FSL6, XAR1 ; |1064| 
        AMAR *SP(#58), XAR0
$C$DW$582	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$582, DW_AT_low_pc(0x00)
	.dwattr $C$DW$582, DW_AT_name("_strncpy")
	.dwattr $C$DW$582, DW_AT_TI_call

        CALL #_strncpy ; |1064| 
||      MOV #4, T0

                                        ; call occurs [#_strncpy] ; |1064| 
	.dwpsn	file "./adpcm_encode_test.c",line 1065,column 5,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |1065| 
        MOV AC0, dbl(*SP(#64)) ; |1065| 
	.dwpsn	file "./adpcm_encode_test.c",line 1066,column 5,is_stmt
        MOV #4, AC0 ; |1066| 
        MOV AC0, dbl(*SP(#62)) ; |1066| 
	.dwpsn	file "./adpcm_encode_test.c",line 1068,column 5,is_stmt
        AMOV #$C$FSL8, XAR1 ; |1068| 
        AMAR *SP(#18), XAR0
$C$DW$583	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$583, DW_AT_low_pc(0x00)
	.dwattr $C$DW$583, DW_AT_name("_strncpy")
	.dwattr $C$DW$583, DW_AT_TI_call

        CALL #_strncpy ; |1068| 
||      MOV #4, T0

                                        ; call occurs [#_strncpy] ; |1068| 
	.dwpsn	file "./adpcm_encode_test.c",line 1069,column 5,is_stmt
        MOV dbl(*SP(#76)), AC0 ; |1069| 
        MOV AC0, dbl(*SP(#22)) ; |1069| 
	.dwpsn	file "./adpcm_encode_test.c",line 1073,column 5,is_stmt
        AMOV #$C$FSL3, XAR1 ; |1073| 
        AMAR *SP(#8), XAR0
$C$DW$584	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$584, DW_AT_low_pc(0x00)
	.dwattr $C$DW$584, DW_AT_name("_native_to_little_endian")
	.dwattr $C$DW$584, DW_AT_TI_call
        CALL #_native_to_little_endian ; |1073| 
                                        ; call occurs [#_native_to_little_endian] ; |1073| 
	.dwpsn	file "./adpcm_encode_test.c",line 1074,column 5,is_stmt
        AMOV #$C$FSL3, XAR1 ; |1074| 
        AMAR *SP(#24), XAR0
$C$DW$585	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$585, DW_AT_low_pc(0x00)
	.dwattr $C$DW$585, DW_AT_name("_native_to_little_endian")
	.dwattr $C$DW$585, DW_AT_TI_call
        CALL #_native_to_little_endian ; |1074| 
                                        ; call occurs [#_native_to_little_endian] ; |1074| 
	.dwpsn	file "./adpcm_encode_test.c",line 1075,column 5,is_stmt
        AMOV #$C$FSL5, XAR1 ; |1075| 
        AMAR *SP(#30), XAR0
$C$DW$586	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$586, DW_AT_low_pc(0x00)
	.dwattr $C$DW$586, DW_AT_name("_native_to_little_endian")
	.dwattr $C$DW$586, DW_AT_TI_call
        CALL #_native_to_little_endian ; |1075| 
                                        ; call occurs [#_native_to_little_endian] ; |1075| 
	.dwpsn	file "./adpcm_encode_test.c",line 1076,column 5,is_stmt
        AMAR *SP(#58), XAR0
        AMOV #$C$FSL9, XAR1 ; |1076| 
$C$DW$587	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$587, DW_AT_low_pc(0x00)
	.dwattr $C$DW$587, DW_AT_name("_native_to_little_endian")
	.dwattr $C$DW$587, DW_AT_TI_call
        CALL #_native_to_little_endian ; |1076| 
                                        ; call occurs [#_native_to_little_endian] ; |1076| 
	.dwpsn	file "./adpcm_encode_test.c",line 1077,column 5,is_stmt
        AMOV #$C$FSL3, XAR1 ; |1077| 
        AMAR *SP(#18), XAR0
$C$DW$588	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$588, DW_AT_low_pc(0x00)
	.dwattr $C$DW$588, DW_AT_name("_native_to_little_endian")
	.dwattr $C$DW$588, DW_AT_TI_call
        CALL #_native_to_little_endian ; |1077| 
                                        ; call occurs [#_native_to_little_endian] ; |1077| 
	.dwpsn	file "./adpcm_encode_test.c",line 1079,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR2
        AMAR *SP(#8), XAR0
$C$DW$589	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$589, DW_AT_low_pc(0x00)
	.dwattr $C$DW$589, DW_AT_name("_add_or_write_buffer")
	.dwattr $C$DW$589, DW_AT_TI_call

        CALL #_add_or_write_buffer ; |1079| 
||      MOV #10, AC0 ; |1079| 

                                        ; call occurs [#_add_or_write_buffer] ; |1079| 
        ADD dbl(*AR2), AC0, AC0 ; |1079| 
        MOV AC0, dbl(*AR2) ; |1079| 
	.dwpsn	file "./adpcm_encode_test.c",line 1080,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR2
        AMAR *SP(#24), XAR0
$C$DW$590	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$590, DW_AT_low_pc(0x00)
	.dwattr $C$DW$590, DW_AT_name("_add_or_write_buffer")
	.dwattr $C$DW$590, DW_AT_TI_call

        CALL #_add_or_write_buffer ; |1080| 
||      MOV #6, AC0 ; |1080| 

                                        ; call occurs [#_add_or_write_buffer] ; |1080| 
        ADD dbl(*AR2), AC0, AC0 ; |1080| 
        MOV AC0, dbl(*AR2) ; |1080| 
	.dwpsn	file "./adpcm_encode_test.c",line 1081,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR2
        AMAR *SP(#30), XAR0
        MOV dbl(*SP(#68)), AC0 ; |1081| 
$C$DW$591	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$591, DW_AT_low_pc(0x00)
	.dwattr $C$DW$591, DW_AT_name("_add_or_write_buffer")
	.dwattr $C$DW$591, DW_AT_TI_call
        CALL #_add_or_write_buffer ; |1081| 
                                        ; call occurs [#_add_or_write_buffer] ; |1081| 
        ADD dbl(*AR2), AC0, AC0 ; |1081| 
        MOV AC0, dbl(*AR2) ; |1081| 
	.dwpsn	file "./adpcm_encode_test.c",line 1082,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR2
        AMAR *SP(#58), XAR0
$C$DW$592	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$592, DW_AT_low_pc(0x00)
	.dwattr $C$DW$592, DW_AT_name("_add_or_write_buffer")
	.dwattr $C$DW$592, DW_AT_TI_call

        CALL #_add_or_write_buffer ; |1082| 
||      MOV #8, AC0 ; |1082| 

                                        ; call occurs [#_add_or_write_buffer] ; |1082| 
        ADD dbl(*AR2), AC0, AC0 ; |1082| 
        MOV AC0, dbl(*AR2) ; |1082| 
	.dwpsn	file "./adpcm_encode_test.c",line 1083,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR2
        AMAR *SP(#18), XAR0
$C$DW$593	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$593, DW_AT_low_pc(0x00)
	.dwattr $C$DW$593, DW_AT_name("_add_or_write_buffer")
	.dwattr $C$DW$593, DW_AT_TI_call

        CALL #_add_or_write_buffer ; |1083| 
||      MOV #6, AC0 ; |1083| 

                                        ; call occurs [#_add_or_write_buffer] ; |1083| 
        ADD dbl(*AR2), AC0, AC0 ; |1083| 
        MOV AC0, dbl(*AR2) ; |1083| 
	.dwpsn	file "./adpcm_encode_test.c",line 1085,column 5,is_stmt
        MOV #30, AC0 ; |1085| 
        ADD dbl(*SP(#68)), AC0, AC0 ; |1085| 
        ADD dbl(*SP(#66)), AC0, AC0 ; |1085| 
        MOV AC0, dbl(*SP(#66)) ; |1085| 
	.dwpsn	file "./adpcm_encode_test.c",line 1087,column 5,is_stmt
        MOV dbl(*SP(#66)), AC0 ; |1087| 
	.dwpsn	file "./adpcm_encode_test.c",line 1088,column 1,is_stmt
        AADD #83, SP
	.dwcfi	cfa_offset, 1
$C$DW$594	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$594, DW_AT_low_pc(0x00)
	.dwattr $C$DW$594, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$547, DW_AT_TI_end_file("./adpcm_encode_test.c")
	.dwattr $C$DW$547, DW_AT_TI_end_line(0x440)
	.dwattr $C$DW$547, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$547

	.sect	".text"

$C$DW$595	.dwtag  DW_TAG_subprogram, DW_AT_name("adpcm_encode_data")
	.dwattr $C$DW$595, DW_AT_low_pc(_adpcm_encode_data)
	.dwattr $C$DW$595, DW_AT_high_pc(0x00)
	.dwattr $C$DW$595, DW_AT_TI_symbol_name("_adpcm_encode_data")
	.dwattr $C$DW$595, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$595, DW_AT_TI_begin_file("./adpcm_encode_test.c")
	.dwattr $C$DW$595, DW_AT_TI_begin_line(0x442)
	.dwattr $C$DW$595, DW_AT_TI_begin_column(0x11)
	.dwattr $C$DW$595, DW_AT_TI_max_frame_size(0x22)
	.dwpsn	file "./adpcm_encode_test.c",line 1091,column 1,is_stmt,address _adpcm_encode_data

	.dwfde $C$DW$CIE, _adpcm_encode_data
$C$DW$596	.dwtag  DW_TAG_formal_parameter, DW_AT_name("input_file_buf")
	.dwattr $C$DW$596, DW_AT_TI_symbol_name("_input_file_buf")
	.dwattr $C$DW$596, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$596, DW_AT_location[DW_OP_reg17]
$C$DW$597	.dwtag  DW_TAG_formal_parameter, DW_AT_name("num_channels")
	.dwattr $C$DW$597, DW_AT_TI_symbol_name("_num_channels")
	.dwattr $C$DW$597, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$597, DW_AT_location[DW_OP_reg0]
$C$DW$598	.dwtag  DW_TAG_formal_parameter, DW_AT_name("num_samples")
	.dwattr $C$DW$598, DW_AT_TI_symbol_name("_num_samples")
	.dwattr $C$DW$598, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$598, DW_AT_location[DW_OP_reg3]
$C$DW$599	.dwtag  DW_TAG_formal_parameter, DW_AT_name("samples_per_block")
	.dwattr $C$DW$599, DW_AT_TI_symbol_name("_samples_per_block")
	.dwattr $C$DW$599, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$599, DW_AT_location[DW_OP_reg6]
$C$DW$600	.dwtag  DW_TAG_formal_parameter, DW_AT_name("sample_rate")
	.dwattr $C$DW$600, DW_AT_TI_symbol_name("_sample_rate")
	.dwattr $C$DW$600, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$600, DW_AT_location[DW_OP_bregx 0x24 34]
$C$DW$601	.dwtag  DW_TAG_formal_parameter, DW_AT_name("checksum")
	.dwattr $C$DW$601, DW_AT_TI_symbol_name("_checksum")
	.dwattr $C$DW$601, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$601, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: adpcm_encode_data                                            *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,AC2,AC2,T0,T1,AR0,XAR0,AR1,XAR1,AR2, *
;*                        XAR2,AR3,XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,   *
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 34 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (32 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_adpcm_encode_data:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-33, SP
	.dwcfi	cfa_offset, 34
$C$DW$602	.dwtag  DW_TAG_variable, DW_AT_name("input_file_buf")
	.dwattr $C$DW$602, DW_AT_TI_symbol_name("_input_file_buf")
	.dwattr $C$DW$602, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$602, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$603	.dwtag  DW_TAG_variable, DW_AT_name("num_channels")
	.dwattr $C$DW$603, DW_AT_TI_symbol_name("_num_channels")
	.dwattr $C$DW$603, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$603, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$604	.dwtag  DW_TAG_variable, DW_AT_name("num_samples")
	.dwattr $C$DW$604, DW_AT_TI_symbol_name("_num_samples")
	.dwattr $C$DW$604, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$604, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$605	.dwtag  DW_TAG_variable, DW_AT_name("samples_per_block")
	.dwattr $C$DW$605, DW_AT_TI_symbol_name("_samples_per_block")
	.dwattr $C$DW$605, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$605, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$606	.dwtag  DW_TAG_variable, DW_AT_name("checksum")
	.dwattr $C$DW$606, DW_AT_TI_symbol_name("_checksum")
	.dwattr $C$DW$606, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$606, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$607	.dwtag  DW_TAG_variable, DW_AT_name("block_size")
	.dwattr $C$DW$607, DW_AT_TI_symbol_name("_block_size")
	.dwattr $C$DW$607, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$607, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$608	.dwtag  DW_TAG_variable, DW_AT_name("pcm_block")
	.dwattr $C$DW$608, DW_AT_TI_symbol_name("_pcm_block")
	.dwattr $C$DW$608, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$608, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$609	.dwtag  DW_TAG_variable, DW_AT_name("adpcm_block")
	.dwattr $C$DW$609, DW_AT_TI_symbol_name("_adpcm_block")
	.dwattr $C$DW$609, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$609, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$610	.dwtag  DW_TAG_variable, DW_AT_name("adpcm_cnxt")
	.dwattr $C$DW$610, DW_AT_TI_symbol_name("_adpcm_cnxt")
	.dwattr $C$DW$610, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$610, DW_AT_location[DW_OP_bregx 0x24 16]
$C$DW$611	.dwtag  DW_TAG_variable, DW_AT_name("bytes_written")
	.dwattr $C$DW$611, DW_AT_TI_symbol_name("_bytes_written")
	.dwattr $C$DW$611, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$611, DW_AT_location[DW_OP_bregx 0x24 18]
        MOV XAR1, dbl(*SP(#8))
        MOV AC2, dbl(*SP(#6)) ; |1091| 
        MOV AC1, dbl(*SP(#4)) ; |1091| 
        MOV AC0, dbl(*SP(#2)) ; |1091| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./adpcm_encode_test.c",line 1092,column 13,is_stmt

        MOV dbl(*SP(#2)), AC1 ; |1092| 
||      MOV #1, AC0 ; |1092| 

        SUB AC0, dbl(*SP(#6)), AC0 ; |1092| 
$C$DW$612	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$612, DW_AT_low_pc(0x00)
	.dwattr $C$DW$612, DW_AT_name("__divli")
	.dwattr $C$DW$612, DW_AT_TI_call

        CALL #__divli ; |1092| 
||      XOR #0x0003, AC1, AC1 ; |1092| 

                                        ; call occurs [#__divli] ; |1092| 
        MOV dbl(*SP(#2)), AC1 ; |1092| 
        ADD AC1 << #2, AC0 ; |1092| 
        MOV AC0, dbl(*SP(#10)) ; |1092| 
	.dwpsn	file "./adpcm_encode_test.c",line 1093,column 14,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |1093| 
        MOV dbl(*SP(#2)), AC1 ; |1093| 
$C$DW$613	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$613, DW_AT_low_pc(0x00)
	.dwattr $C$DW$613, DW_AT_name("__mpyli")
	.dwattr $C$DW$613, DW_AT_TI_call
        CALL #__mpyli ; |1093| 
                                        ; call occurs [#__mpyli] ; |1093| 
        SFTS AC0, #1, AC0 ; |1093| 
$C$DW$614	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$614, DW_AT_low_pc(0x00)
	.dwattr $C$DW$614, DW_AT_name("_malloc")
	.dwattr $C$DW$614, DW_AT_TI_call

        CALL #_malloc ; |1093| 
||      MOV AC0, T0 ; |1093| 

                                        ; call occurs [#_malloc] ; |1093| 
        MOV XAR0, dbl(*SP(#12))
	.dwpsn	file "./adpcm_encode_test.c",line 1094,column 11,is_stmt
        MOV *SP(#11), T0 ; |1094| 
$C$DW$615	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$615, DW_AT_low_pc(0x00)
	.dwattr $C$DW$615, DW_AT_name("_malloc")
	.dwattr $C$DW$615, DW_AT_TI_call
        CALL #_malloc ; |1094| 
                                        ; call occurs [#_malloc] ; |1094| 
        MOV XAR0, dbl(*SP(#14))
	.dwpsn	file "./adpcm_encode_test.c",line 1095,column 11,is_stmt
        MOV #0, AC0 ; |1095| 
        MOV AC0, dbl(*SP(#16))
	.dwpsn	file "./adpcm_encode_test.c",line 1096,column 14,is_stmt
        MOV AC0, dbl(*SP(#18)) ; |1096| 
	.dwpsn	file "./adpcm_encode_test.c",line 1098,column 5,is_stmt
        MOV dbl(*SP(#12)), XAR3
        MOV XAR3, AC0
        BCC $C$L221,AC0 == #0 ; |1098| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |1098| 
        MOV dbl(*SP(#14)), XAR3
        MOV XAR3, AC0
        BCC $C$L224,AC0 != #0 ; |1098| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |1098| 
$C$L221:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 1101,column 9,is_stmt
        MOV dbl(*SP(#12)), XAR3
        MOV XAR3, AC0
        BCC $C$L222,AC0 != #0 ; |1101| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |1101| 
        MOV dbl(*SP(#14)), XAR3
        MOV XAR3, AC0
        BCC $C$L222,AC0 == #0 ; |1101| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |1101| 
	.dwpsn	file "./adpcm_encode_test.c",line 1102,column 13,is_stmt
        MOV dbl(*SP(#14)), XAR0
$C$DW$616	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$616, DW_AT_low_pc(0x00)
	.dwattr $C$DW$616, DW_AT_name("_free")
	.dwattr $C$DW$616, DW_AT_TI_call
        CALL #_free ; |1102| 
                                        ; call occurs [#_free] ; |1102| 
	.dwpsn	file "./adpcm_encode_test.c",line 1103,column 9,is_stmt
        B $C$L223 ; |1103| 
                                        ; branch occurs ; |1103| 
$C$L222:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 1104,column 14,is_stmt
        MOV dbl(*SP(#12)), XAR3
        MOV XAR3, AC0
        BCC $C$L223,AC0 == #0 ; |1104| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |1104| 
        MOV dbl(*SP(#14)), XAR3
        MOV XAR3, AC0
        BCC $C$L223,AC0 != #0 ; |1104| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |1104| 
	.dwpsn	file "./adpcm_encode_test.c",line 1105,column 13,is_stmt
        MOV dbl(*SP(#12)), XAR0
$C$DW$617	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$617, DW_AT_low_pc(0x00)
	.dwattr $C$DW$617, DW_AT_name("_free")
	.dwattr $C$DW$617, DW_AT_TI_call
        CALL #_free ; |1105| 
                                        ; call occurs [#_free] ; |1105| 
$C$L223:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 1107,column 9,is_stmt
        MOV #-1 << #16, AC0 ; |1107| 
        OR #0xffff, AC0, AC0 ; |1107| 
        B $C$L241 ; |1107| 
                                        ; branch occurs ; |1107| 
$C$L224:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 1110,column 5,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |1110| 
        BCC $C$L240,AC0 == #0 ; |1110| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |1110| 
$C$L225:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_encode_data$11$B:

$C$DW$618	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$619	.dwtag  DW_TAG_variable, DW_AT_name("this_block_adpcm_samples")
	.dwattr $C$DW$619, DW_AT_TI_symbol_name("_this_block_adpcm_samples")
	.dwattr $C$DW$619, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$619, DW_AT_location[DW_OP_bregx 0x24 20]
$C$DW$620	.dwtag  DW_TAG_variable, DW_AT_name("this_block_pcm_samples")
	.dwattr $C$DW$620, DW_AT_TI_symbol_name("_this_block_pcm_samples")
	.dwattr $C$DW$620, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$620, DW_AT_location[DW_OP_bregx 0x24 22]
$C$DW$621	.dwtag  DW_TAG_variable, DW_AT_name("num_bytes")
	.dwattr $C$DW$621, DW_AT_TI_symbol_name("_num_bytes")
	.dwattr $C$DW$621, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$621, DW_AT_location[DW_OP_bregx 0x24 24]
	.dwpsn	file "./adpcm_encode_test.c",line 1112,column 17,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |1112| 
        MOV AC0, dbl(*SP(#20)) ; |1112| 
	.dwpsn	file "./adpcm_encode_test.c",line 1113,column 17,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |1113| 
        MOV AC0, dbl(*SP(#22)) ; |1113| 
	.dwpsn	file "./adpcm_encode_test.c",line 1116,column 9,is_stmt
        MOV dbl(*SP(#22)), AC1 ; |1116| 
        MOV dbl(*SP(#4)), AC0 ; |1116| 
        CMPU AC1 <= AC0, TC1 ; |1116| 
        BCC $C$L226,TC1 ; |1116| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |1116| 
$C$DW$L$_adpcm_encode_data$11$E:
$C$DW$L$_adpcm_encode_data$12$B:
	.dwpsn	file "./adpcm_encode_test.c",line 1118,column 13,is_stmt
        MOV #-1 << #16, AC0 ; |1118| 
        MOV dbl(*SP(#4)), AC1 ; |1118| 
        OR #0xfff8, AC0, AC0 ; |1118| 
        ADD #6, AC1 ; |1118| 
        AND AC1, AC0 ; |1118| 
        ADD #1, AC0 ; |1118| 
        MOV AC0, dbl(*SP(#20)) ; |1118| 
	.dwpsn	file "./adpcm_encode_test.c",line 1119,column 13,is_stmt

        MOV dbl(*SP(#2)), AC1 ; |1119| 
||      MOV #1, AC0 ; |1119| 

        SUB AC0, dbl(*SP(#20)), AC0 ; |1119| 
$C$DW$622	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$622, DW_AT_low_pc(0x00)
	.dwattr $C$DW$622, DW_AT_name("__divli")
	.dwattr $C$DW$622, DW_AT_TI_call

        CALL #__divli ; |1119| 
||      XOR #0x0003, AC1, AC1 ; |1119| 

                                        ; call occurs [#__divli] ; |1119| 
        MOV dbl(*SP(#2)), AC1 ; |1119| 
        ADD AC1 << #2, AC0 ; |1119| 
        MOV AC0, dbl(*SP(#10)) ; |1119| 
	.dwpsn	file "./adpcm_encode_test.c",line 1120,column 13,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |1120| 
        MOV AC0, dbl(*SP(#22)) ; |1120| 
$C$DW$L$_adpcm_encode_data$12$E:
$C$L226:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_encode_data$13$B:
	.dwpsn	file "./adpcm_encode_test.c",line 1123,column 9,is_stmt
        MOV dbl(*SP(#22)), AC0 ; |1123| 
        MOV dbl(*SP(#2)), AC1 ; |1123| 
$C$DW$623	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$623, DW_AT_low_pc(0x00)
	.dwattr $C$DW$623, DW_AT_name("__mpyli")
	.dwattr $C$DW$623, DW_AT_TI_call
        CALL #__mpyli ; |1123| 
                                        ; call occurs [#__mpyli] ; |1123| 
        MOV dbl(*SP(#12)), XAR0
        MOV dbl(*SP(#0)), XAR1
        SFTS AC0, #1, AC0 ; |1123| 
$C$DW$624	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$624, DW_AT_low_pc(0x00)
	.dwattr $C$DW$624, DW_AT_name("_memcpy")
	.dwattr $C$DW$624, DW_AT_TI_call

        CALL #_memcpy ; |1123| 
||      MOV AC0, T0 ; |1123| 

                                        ; call occurs [#_memcpy] ; |1123| 
	.dwpsn	file "./adpcm_encode_test.c",line 1124,column 9,is_stmt
        MOV dbl(*SP(#22)), AC0 ; |1124| 
        MOV dbl(*SP(#2)), AC1 ; |1124| 
$C$DW$625	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$625, DW_AT_low_pc(0x00)
	.dwattr $C$DW$625, DW_AT_name("__mpyli")
	.dwattr $C$DW$625, DW_AT_TI_call
        CALL #__mpyli ; |1124| 
                                        ; call occurs [#__mpyli] ; |1124| 
        MOV dbl(*SP(#0)), XAR3
        SFTS AC0, #1, AC0 ; |1124| 
        MOV AC0, AR1 ; |1124| 

        MOV XAR3, dbl(*SP(#0))
||      AADD AR1, AR3 ; |1124| 

	.dwpsn	file "./adpcm_encode_test.c",line 1126,column 9,is_stmt
        MOV #256, AR2 ; |1126| 
        AMOV #$C$FSL10, XAR3 ; |1126| 
        MOV *AR3, AR1 ; |1126| 
        CMPU AR1 >= AR2, TC1 ; |1126| 
        BCC $C$L229,TC1 ; |1126| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |1126| 
$C$DW$L$_adpcm_encode_data$13$E:
$C$DW$L$_adpcm_encode_data$14$B:

$C$DW$626	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$627	.dwtag  DW_TAG_variable, DW_AT_name("scount")
	.dwattr $C$DW$627, DW_AT_TI_symbol_name("_scount")
	.dwattr $C$DW$627, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$627, DW_AT_location[DW_OP_bregx 0x24 26]
$C$DW$628	.dwtag  DW_TAG_variable, DW_AT_name("cp")
	.dwattr $C$DW$628, DW_AT_TI_symbol_name("_cp")
	.dwattr $C$DW$628, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$628, DW_AT_location[DW_OP_bregx 0x24 28]
	.dwpsn	file "./adpcm_encode_test.c",line 1128,column 21,is_stmt
        MOV dbl(*SP(#22)), AC0 ; |1128| 
        MOV dbl(*SP(#2)), AC1 ; |1128| 
$C$DW$629	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$629, DW_AT_low_pc(0x00)
	.dwattr $C$DW$629, DW_AT_name("__mpyli")
	.dwattr $C$DW$629, DW_AT_TI_call
        CALL #__mpyli ; |1128| 
                                        ; call occurs [#__mpyli] ; |1128| 
        MOV AC0, dbl(*SP(#26)) ; |1128| 
	.dwpsn	file "./adpcm_encode_test.c",line 1129,column 23,is_stmt
        MOV dbl(*SP(#12)), XAR3
        MOV XAR3, dbl(*SP(#28))
	.dwpsn	file "./adpcm_encode_test.c",line 1131,column 13,is_stmt
        MOV dbl(*SP(#26)), AC0 ; |1131| 
        SUB #1, AC0, AC1 ; |1131| 
        MOV AC1, dbl(*SP(#26)) ; |1131| 
        BCC $C$L228,AC0 == #0 ; |1131| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |1131| 
$C$DW$L$_adpcm_encode_data$14$E:
$C$L227:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_encode_data$15$B:

$C$DW$630	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$631	.dwtag  DW_TAG_variable, DW_AT_name("temp")
	.dwattr $C$DW$631, DW_AT_TI_symbol_name("_temp")
	.dwattr $C$DW$631, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$631, DW_AT_location[DW_OP_bregx 0x24 30]
	.dwpsn	file "./adpcm_encode_test.c",line 1133,column 25,is_stmt
        MOV dbl(*SP(#28)), XAR3
        MOV dbl(*SP(#28)), XAR2
        MOV *AR3(short(#1)), AC0 ; |1133| 
        SFTL AC0, #8, AC0 ; |1133| 
        ADD *AR2, AC0, AR1 ; |1133| 
        MOV AR1, *SP(#30) ; |1133| 
	.dwpsn	file "./adpcm_encode_test.c",line 1134,column 17,is_stmt
        MOV dbl(*SP(#28)), XAR3
        MOV AR1, *AR3 ; |1134| 
	.dwpsn	file "./adpcm_encode_test.c",line 1135,column 17,is_stmt
        MOV dbl(*SP(#28)), XAR3

        MOV XAR3, dbl(*SP(#28))
||      AADD #2, AR3 ; |1135| 

	.dwendtag $C$DW$630

	.dwpsn	file "./adpcm_encode_test.c",line 1136,column 13,is_stmt
        MOV dbl(*SP(#26)), AC0 ; |1136| 
        SUB #1, AC0, AC1 ; |1136| 
        MOV AC1, dbl(*SP(#26)) ; |1136| 
        BCC $C$L227,AC0 != #0 ; |1136| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |1136| 
$C$DW$L$_adpcm_encode_data$15$E:
$C$L228:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_encode_data$16$B:
	.dwendtag $C$DW$626

$C$DW$L$_adpcm_encode_data$16$E:
$C$L229:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_encode_data$17$B:
	.dwpsn	file "./adpcm_encode_test.c",line 1142,column 9,is_stmt
        MOV dbl(*SP(#22)), AC0 ; |1142| 
        MOV dbl(*SP(#20)), AC1 ; |1142| 
        CMP AC1 <= AC0, TC1 ; |1142| 
        BCC $C$L232,TC1 ; |1142| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |1142| 
$C$DW$L$_adpcm_encode_data$17$E:
$C$DW$L$_adpcm_encode_data$18$B:

$C$DW$632	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$633	.dwtag  DW_TAG_variable, DW_AT_name("dst")
	.dwattr $C$DW$633, DW_AT_TI_symbol_name("_dst")
	.dwattr $C$DW$633, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$633, DW_AT_location[DW_OP_bregx 0x24 26]
$C$DW$634	.dwtag  DW_TAG_variable, DW_AT_name("src")
	.dwattr $C$DW$634, DW_AT_TI_symbol_name("_src")
	.dwattr $C$DW$634, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$634, DW_AT_location[DW_OP_bregx 0x24 28]
$C$DW$635	.dwtag  DW_TAG_variable, DW_AT_name("dups")
	.dwattr $C$DW$635, DW_AT_TI_symbol_name("_dups")
	.dwattr $C$DW$635, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$635, DW_AT_location[DW_OP_bregx 0x24 30]
	.dwpsn	file "./adpcm_encode_test.c",line 1144,column 22,is_stmt
        MOV dbl(*SP(#22)), AC0 ; |1144| 
        MOV dbl(*SP(#2)), AC1 ; |1144| 
$C$DW$636	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$636, DW_AT_low_pc(0x00)
	.dwattr $C$DW$636, DW_AT_name("__mpyli")
	.dwattr $C$DW$636, DW_AT_TI_call
        CALL #__mpyli ; |1144| 
                                        ; call occurs [#__mpyli] ; |1144| 
        MOV AC0, AR1 ; |1144| 
        MOV dbl(*SP(#12)), XAR3

        MOV XAR3, dbl(*SP(#26))
||      AADD AR1, AR3 ; |1144| 

	.dwpsn	file "./adpcm_encode_test.c",line 1145,column 22,is_stmt
        MOV *SP(#3), AR1 ; |1145| 

        MOV XAR3, dbl(*SP(#28))
||      ASUB AR1, AR3 ; |1145| 

	.dwpsn	file "./adpcm_encode_test.c",line 1146,column 21,is_stmt
        MOV dbl(*SP(#22)), AC0 ; |1146| 
        MOV dbl(*SP(#2)), AC1 ; |1146| 
        SUB AC0, dbl(*SP(#20)), AC0 ; |1146| 
$C$DW$637	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$637, DW_AT_low_pc(0x00)
	.dwattr $C$DW$637, DW_AT_name("__mpyli")
	.dwattr $C$DW$637, DW_AT_TI_call
        CALL #__mpyli ; |1146| 
                                        ; call occurs [#__mpyli] ; |1146| 
        MOV AC0, dbl(*SP(#30)) ; |1146| 
	.dwpsn	file "./adpcm_encode_test.c",line 1148,column 13,is_stmt
        MOV dbl(*SP(#30)), AC0 ; |1148| 
        SUB #1, AC0, AC1 ; |1148| 
        MOV AC1, dbl(*SP(#30)) ; |1148| 
        BCC $C$L231,AC0 == #0 ; |1148| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |1148| 
$C$DW$L$_adpcm_encode_data$18$E:
$C$L230:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_encode_data$19$B:
	.dwpsn	file "./adpcm_encode_test.c",line 1149,column 17,is_stmt
        MOV dbl(*SP(#28)), XAR3
        MOV *AR3+, AR1 ; |1149| 
        MOV XAR3, dbl(*SP(#28))
        MOV dbl(*SP(#26)), XAR2
        AMAR *AR2, XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#26))
        MOV AR1, *AR2 ; |1149| 
        MOV dbl(*SP(#30)), AC0 ; |1149| 
        SUB #1, AC0, AC1 ; |1149| 
        MOV AC1, dbl(*SP(#30)) ; |1149| 
        BCC $C$L230,AC0 != #0 ; |1149| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |1149| 
$C$DW$L$_adpcm_encode_data$19$E:
$C$L231:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_encode_data$20$B:
	.dwendtag $C$DW$632

$C$DW$L$_adpcm_encode_data$20$E:
$C$L232:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_encode_data$21$B:
	.dwpsn	file "./adpcm_encode_test.c",line 1152,column 9,is_stmt
        MOV dbl(*SP(#16)), XAR3
        MOV XAR3, AC0
        BCC $C$L238,AC0 != #0 ; |1152| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |1152| 
$C$DW$L$_adpcm_encode_data$21$E:
$C$DW$L$_adpcm_encode_data$22$B:

$C$DW$638	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$639	.dwtag  DW_TAG_variable, DW_AT_name("noise_shaping")
	.dwattr $C$DW$639, DW_AT_TI_symbol_name("_noise_shaping")
	.dwattr $C$DW$639, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$639, DW_AT_location[DW_OP_bregx 0x24 26]
	.dwpsn	file "./adpcm_encode_test.c",line 1156,column 13,is_stmt
        MOV dbl(*(#_flags)), AC0 ; |1156| 
        AND #0x0001, AC0, AC0 ; |1156| 
        BCC $C$L235,AC0 == #0 ; |1156| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |1156| 
$C$DW$L$_adpcm_encode_data$22$E:
$C$DW$L$_adpcm_encode_data$23$B:
	.dwpsn	file "./adpcm_encode_test.c",line 1158,column 17,is_stmt
        MOV dbl(*(#_static_shaping_weight)), AC0 ; |1158| 
        MOV dbl(*($C$FL5)), AC1 ; |1158| 
$C$DW$640	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$640, DW_AT_low_pc(0x00)
	.dwattr $C$DW$640, DW_AT_name("__cmpd")
	.dwattr $C$DW$640, DW_AT_TI_call
        CALL #__cmpd ; |1158| 
                                        ; call occurs [#__cmpd] ; |1158| 
        BCC $C$L233,T0 == #0 ; |1158| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |1158| 
$C$DW$L$_adpcm_encode_data$23$E:
$C$DW$L$_adpcm_encode_data$24$B:
	.dwpsn	file "./adpcm_encode_test.c",line 1159,column 21,is_stmt
        MOV #1, AC0 ; |1159| 
        MOV AC0, dbl(*SP(#26)) ; |1159| 
        B $C$L236 ; |1159| 
                                        ; branch occurs ; |1159| 
$C$DW$L$_adpcm_encode_data$24$E:
$C$L233:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_encode_data$25$B:
	.dwpsn	file "./adpcm_encode_test.c",line 1160,column 22,is_stmt

        MOV dbl(*SP(#34)), AC1 ; |1160| 
||      MOV #0, AC0 ; |1160| 

        OR #0xfa00, AC0, AC0 ; |1160| 
        CMP AC1 <= AC0, TC1 ; |1160| 
        BCC $C$L234,TC1 ; |1160| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |1160| 
$C$DW$L$_adpcm_encode_data$25$E:
$C$DW$L$_adpcm_encode_data$26$B:
	.dwpsn	file "./adpcm_encode_test.c",line 1162,column 21,is_stmt
        MOV #1, AC0 ; |1162| 
        MOV AC0, dbl(*SP(#26)) ; |1162| 
	.dwpsn	file "./adpcm_encode_test.c",line 1163,column 21,is_stmt
        MOV dbl(*($C$FL6)), AC0 ; |1163| 
        MOV AC0, dbl(*(#_static_shaping_weight)) ; |1163| 
	.dwpsn	file "./adpcm_encode_test.c",line 1164,column 17,is_stmt
        B $C$L236 ; |1164| 
                                        ; branch occurs ; |1164| 
$C$DW$L$_adpcm_encode_data$26$E:
$C$L234:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_encode_data$27$B:
	.dwpsn	file "./adpcm_encode_test.c",line 1166,column 21,is_stmt
        MOV #2, AC0 ; |1166| 
        MOV AC0, dbl(*SP(#26)) ; |1166| 
	.dwpsn	file "./adpcm_encode_test.c",line 1167,column 13,is_stmt
        B $C$L236 ; |1167| 
                                        ; branch occurs ; |1167| 
$C$DW$L$_adpcm_encode_data$27$E:
$C$L235:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_encode_data$28$B:
	.dwpsn	file "./adpcm_encode_test.c",line 1169,column 17,is_stmt
        MOV #0, AC0 ; |1169| 
        MOV AC0, dbl(*SP(#26)) ; |1169| 
$C$DW$L$_adpcm_encode_data$28$E:
$C$L236:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_encode_data$29$B:
	.dwpsn	file "./adpcm_encode_test.c",line 1171,column 13,is_stmt
        MOV *SP(#3), T0 ; |1171| 
        MOV *SP(#27), AR0 ; |1171| 
        MOV *(#(_lookahead+1)), T1 ; |1171| 
$C$DW$641	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$641, DW_AT_low_pc(0x00)
	.dwattr $C$DW$641, DW_AT_name("_adpcm_create_context")
	.dwattr $C$DW$641, DW_AT_TI_call
        CALL #_adpcm_create_context ; |1171| 
                                        ; call occurs [#_adpcm_create_context] ; |1171| 
        MOV XAR0, dbl(*SP(#16))
	.dwpsn	file "./adpcm_encode_test.c",line 1173,column 13,is_stmt

        MOV dbl(*SP(#26)), AC1 ; |1173| 
||      MOV #1, AC0 ; |1173| 

        CMP AC1 != AC0, TC1 ; |1173| 
        BCC $C$L237,TC1 ; |1173| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |1173| 
$C$DW$L$_adpcm_encode_data$29$E:
$C$DW$L$_adpcm_encode_data$30$B:
	.dwpsn	file "./adpcm_encode_test.c",line 1174,column 17,is_stmt
        MOV dbl(*(#_static_shaping_weight)), AC0 ; |1174| 
$C$DW$642	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$642, DW_AT_low_pc(0x00)
	.dwattr $C$DW$642, DW_AT_name("_adpcm_set_shaping_weight")
	.dwattr $C$DW$642, DW_AT_TI_call
        CALL #_adpcm_set_shaping_weight ; |1174| 
                                        ; call occurs [#_adpcm_set_shaping_weight] ; |1174| 
$C$DW$L$_adpcm_encode_data$30$E:
$C$L237:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_encode_data$31$B:
	.dwendtag $C$DW$638

$C$DW$L$_adpcm_encode_data$31$E:
$C$L238:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_encode_data$32$B:
	.dwpsn	file "./adpcm_encode_test.c",line 1177,column 9,is_stmt
        MOV *SP(#21), T0 ; |1177| 
        MOV dbl(*SP(#16)), XAR0
        MOV dbl(*SP(#14)), XAR1
        AMAR *SP(#24), XAR2
        MOV dbl(*SP(#12)), XAR3
$C$DW$643	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$643, DW_AT_low_pc(0x00)
	.dwattr $C$DW$643, DW_AT_name("_adpcm_encode_block")
	.dwattr $C$DW$643, DW_AT_TI_call
        CALL #_adpcm_encode_block ; |1177| 
                                        ; call occurs [#_adpcm_encode_block] ; |1177| 
	.dwpsn	file "./adpcm_encode_test.c",line 1179,column 9,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |1179| 
        MOV uns(*SP(#24)), AC1 ; |1179| 
        CMP AC1 == AC0, TC1 ; |1179| 
        BCC $C$L239,TC1 ; |1179| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |1179| 
$C$DW$L$_adpcm_encode_data$32$E:
	.dwpsn	file "./adpcm_encode_test.c",line 1182,column 13,is_stmt
        MOV dbl(*SP(#14)), XAR0
$C$DW$644	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$644, DW_AT_low_pc(0x00)
	.dwattr $C$DW$644, DW_AT_name("_free")
	.dwattr $C$DW$644, DW_AT_TI_call
        CALL #_free ; |1182| 
                                        ; call occurs [#_free] ; |1182| 
	.dwpsn	file "./adpcm_encode_test.c",line 1183,column 13,is_stmt
        MOV dbl(*SP(#12)), XAR0
$C$DW$645	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$645, DW_AT_low_pc(0x00)
	.dwattr $C$DW$645, DW_AT_name("_free")
	.dwattr $C$DW$645, DW_AT_TI_call
        CALL #_free ; |1183| 
                                        ; call occurs [#_free] ; |1183| 
	.dwpsn	file "./adpcm_encode_test.c",line 1184,column 13,is_stmt
        MOV #-1 << #16, AC0 ; |1184| 
        OR #0xffff, AC0, AC0 ; |1184| 
        B $C$L241 ; |1184| 
                                        ; branch occurs ; |1184| 
$C$L239:    
	CALL #_coverage_log;
$C$DW$L$_adpcm_encode_data$34$B:
	.dwpsn	file "./adpcm_encode_test.c",line 1187,column 9,is_stmt
        MOV dbl(*SP(#8)), XAR2
        MOV dbl(*SP(#10)), AC0 ; |1187| 
        MOV dbl(*SP(#14)), XAR0
$C$DW$646	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$646, DW_AT_low_pc(0x00)
	.dwattr $C$DW$646, DW_AT_name("_add_or_write_buffer")
	.dwattr $C$DW$646, DW_AT_TI_call
        CALL #_add_or_write_buffer ; |1187| 
                                        ; call occurs [#_add_or_write_buffer] ; |1187| 
        ADD dbl(*AR2), AC0, AC0 ; |1187| 
        MOV AC0, dbl(*AR2) ; |1187| 
	.dwpsn	file "./adpcm_encode_test.c",line 1188,column 9,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |1188| 
        ADD dbl(*SP(#18)), AC0, AC0 ; |1188| 
        MOV AC0, dbl(*SP(#18)) ; |1188| 
	.dwpsn	file "./adpcm_encode_test.c",line 1190,column 9,is_stmt
        MOV dbl(*SP(#22)), AC0 ; |1190| 
        SUB AC0, dbl(*SP(#4)), AC0 ; |1190| 
        MOV AC0, dbl(*SP(#4)) ; |1190| 
	.dwendtag $C$DW$618

	.dwpsn	file "./adpcm_encode_test.c",line 1191,column 5,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |1191| 
        BCC $C$L225,AC0 != #0 ; |1191| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |1191| 
$C$DW$L$_adpcm_encode_data$34$E:
$C$L240:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 1192,column 5,is_stmt
        MOV dbl(*SP(#14)), XAR0
$C$DW$647	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$647, DW_AT_low_pc(0x00)
	.dwattr $C$DW$647, DW_AT_name("_free")
	.dwattr $C$DW$647, DW_AT_TI_call
        CALL #_free ; |1192| 
                                        ; call occurs [#_free] ; |1192| 
	.dwpsn	file "./adpcm_encode_test.c",line 1193,column 5,is_stmt
        MOV dbl(*SP(#12)), XAR0
$C$DW$648	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$648, DW_AT_low_pc(0x00)
	.dwattr $C$DW$648, DW_AT_name("_free")
	.dwattr $C$DW$648, DW_AT_TI_call
        CALL #_free ; |1193| 
                                        ; call occurs [#_free] ; |1193| 
	.dwpsn	file "./adpcm_encode_test.c",line 1194,column 5,is_stmt
        MOV dbl(*SP(#18)), AC0 ; |1194| 
$C$L241:    
	CALL #_coverage_log;
	.dwpsn	file "./adpcm_encode_test.c",line 1195,column 1,is_stmt
        AADD #33, SP
	.dwcfi	cfa_offset, 1
$C$DW$649	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$649, DW_AT_low_pc(0x00)
	.dwattr $C$DW$649, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$650	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$650, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/adpcm_encode/adpcm_encode_test.asm:$C$L225:1:1738600387")
	.dwattr $C$DW$650, DW_AT_TI_begin_file("./adpcm_encode_test.c")
	.dwattr $C$DW$650, DW_AT_TI_begin_line(0x456)
	.dwattr $C$DW$650, DW_AT_TI_end_line(0x4a7)
$C$DW$651	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$651, DW_AT_low_pc($C$DW$L$_adpcm_encode_data$11$B)
	.dwattr $C$DW$651, DW_AT_high_pc($C$DW$L$_adpcm_encode_data$11$E)
$C$DW$652	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$652, DW_AT_low_pc($C$DW$L$_adpcm_encode_data$25$B)
	.dwattr $C$DW$652, DW_AT_high_pc($C$DW$L$_adpcm_encode_data$25$E)
$C$DW$653	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$653, DW_AT_low_pc($C$DW$L$_adpcm_encode_data$22$B)
	.dwattr $C$DW$653, DW_AT_high_pc($C$DW$L$_adpcm_encode_data$22$E)
$C$DW$654	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$654, DW_AT_low_pc($C$DW$L$_adpcm_encode_data$23$B)
	.dwattr $C$DW$654, DW_AT_high_pc($C$DW$L$_adpcm_encode_data$23$E)
$C$DW$655	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$655, DW_AT_low_pc($C$DW$L$_adpcm_encode_data$24$B)
	.dwattr $C$DW$655, DW_AT_high_pc($C$DW$L$_adpcm_encode_data$24$E)
$C$DW$656	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$656, DW_AT_low_pc($C$DW$L$_adpcm_encode_data$26$B)
	.dwattr $C$DW$656, DW_AT_high_pc($C$DW$L$_adpcm_encode_data$26$E)
$C$DW$657	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$657, DW_AT_low_pc($C$DW$L$_adpcm_encode_data$27$B)
	.dwattr $C$DW$657, DW_AT_high_pc($C$DW$L$_adpcm_encode_data$27$E)
$C$DW$658	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$658, DW_AT_low_pc($C$DW$L$_adpcm_encode_data$28$B)
	.dwattr $C$DW$658, DW_AT_high_pc($C$DW$L$_adpcm_encode_data$28$E)
$C$DW$659	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$659, DW_AT_low_pc($C$DW$L$_adpcm_encode_data$29$B)
	.dwattr $C$DW$659, DW_AT_high_pc($C$DW$L$_adpcm_encode_data$29$E)
$C$DW$660	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$660, DW_AT_low_pc($C$DW$L$_adpcm_encode_data$30$B)
	.dwattr $C$DW$660, DW_AT_high_pc($C$DW$L$_adpcm_encode_data$30$E)
$C$DW$661	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$661, DW_AT_low_pc($C$DW$L$_adpcm_encode_data$18$B)
	.dwattr $C$DW$661, DW_AT_high_pc($C$DW$L$_adpcm_encode_data$18$E)
$C$DW$662	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$662, DW_AT_low_pc($C$DW$L$_adpcm_encode_data$14$B)
	.dwattr $C$DW$662, DW_AT_high_pc($C$DW$L$_adpcm_encode_data$14$E)
$C$DW$663	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$663, DW_AT_low_pc($C$DW$L$_adpcm_encode_data$12$B)
	.dwattr $C$DW$663, DW_AT_high_pc($C$DW$L$_adpcm_encode_data$12$E)
$C$DW$664	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$664, DW_AT_low_pc($C$DW$L$_adpcm_encode_data$13$B)
	.dwattr $C$DW$664, DW_AT_high_pc($C$DW$L$_adpcm_encode_data$13$E)
$C$DW$665	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$665, DW_AT_low_pc($C$DW$L$_adpcm_encode_data$16$B)
	.dwattr $C$DW$665, DW_AT_high_pc($C$DW$L$_adpcm_encode_data$16$E)
$C$DW$666	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$666, DW_AT_low_pc($C$DW$L$_adpcm_encode_data$17$B)
	.dwattr $C$DW$666, DW_AT_high_pc($C$DW$L$_adpcm_encode_data$17$E)
$C$DW$667	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$667, DW_AT_low_pc($C$DW$L$_adpcm_encode_data$20$B)
	.dwattr $C$DW$667, DW_AT_high_pc($C$DW$L$_adpcm_encode_data$20$E)
$C$DW$668	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$668, DW_AT_low_pc($C$DW$L$_adpcm_encode_data$21$B)
	.dwattr $C$DW$668, DW_AT_high_pc($C$DW$L$_adpcm_encode_data$21$E)
$C$DW$669	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$669, DW_AT_low_pc($C$DW$L$_adpcm_encode_data$31$B)
	.dwattr $C$DW$669, DW_AT_high_pc($C$DW$L$_adpcm_encode_data$31$E)
$C$DW$670	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$670, DW_AT_low_pc($C$DW$L$_adpcm_encode_data$32$B)
	.dwattr $C$DW$670, DW_AT_high_pc($C$DW$L$_adpcm_encode_data$32$E)
$C$DW$671	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$671, DW_AT_low_pc($C$DW$L$_adpcm_encode_data$34$B)
	.dwattr $C$DW$671, DW_AT_high_pc($C$DW$L$_adpcm_encode_data$34$E)

$C$DW$672	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$672, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/adpcm_encode/adpcm_encode_test.asm:$C$L230:2:1738600387")
	.dwattr $C$DW$672, DW_AT_TI_begin_file("./adpcm_encode_test.c")
	.dwattr $C$DW$672, DW_AT_TI_begin_line(0x47c)
	.dwattr $C$DW$672, DW_AT_TI_end_line(0x47d)
$C$DW$673	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$673, DW_AT_low_pc($C$DW$L$_adpcm_encode_data$19$B)
	.dwattr $C$DW$673, DW_AT_high_pc($C$DW$L$_adpcm_encode_data$19$E)
	.dwendtag $C$DW$672


$C$DW$674	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$674, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/adpcm_encode/adpcm_encode_test.asm:$C$L227:2:1738600387")
	.dwattr $C$DW$674, DW_AT_TI_begin_file("./adpcm_encode_test.c")
	.dwattr $C$DW$674, DW_AT_TI_begin_line(0x46b)
	.dwattr $C$DW$674, DW_AT_TI_end_line(0x470)
$C$DW$675	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$675, DW_AT_low_pc($C$DW$L$_adpcm_encode_data$15$B)
	.dwattr $C$DW$675, DW_AT_high_pc($C$DW$L$_adpcm_encode_data$15$E)
	.dwendtag $C$DW$674

	.dwendtag $C$DW$650

	.dwattr $C$DW$595, DW_AT_TI_end_file("./adpcm_encode_test.c")
	.dwattr $C$DW$595, DW_AT_TI_end_line(0x4ab)
	.dwattr $C$DW$595, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$595

	.sect	".text"

$C$DW$676	.dwtag  DW_TAG_subprogram, DW_AT_name("little_endian_to_native")
	.dwattr $C$DW$676, DW_AT_low_pc(_little_endian_to_native)
	.dwattr $C$DW$676, DW_AT_high_pc(0x00)
	.dwattr $C$DW$676, DW_AT_TI_symbol_name("_little_endian_to_native")
	.dwattr $C$DW$676, DW_AT_TI_begin_file("./adpcm_encode_test.c")
	.dwattr $C$DW$676, DW_AT_TI_begin_line(0x4ad)
	.dwattr $C$DW$676, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$676, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "./adpcm_encode_test.c",line 1198,column 1,is_stmt,address _little_endian_to_native

	.dwfde $C$DW$CIE, _little_endian_to_native
$C$DW$677	.dwtag  DW_TAG_formal_parameter, DW_AT_name("data")
	.dwattr $C$DW$677, DW_AT_TI_symbol_name("_data")
	.dwattr $C$DW$677, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$677, DW_AT_location[DW_OP_reg17]
$C$DW$678	.dwtag  DW_TAG_formal_parameter, DW_AT_name("format")
	.dwattr $C$DW$678, DW_AT_TI_symbol_name("_format")
	.dwattr $C$DW$678, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$678, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: little_endian_to_native                                      *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T2,T3,AR0,XAR0,AR1,XAR1,AR2,XAR2, *
;*                        AR3,XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL    *
;*   Save On Entry Regs : T2,T3                                                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (8 local values)                                     *
;*                        (2 register save area)                               *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_little_endian_to_native:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        PSH T2
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 14, -2
        PSH T3
	.dwcfi	cfa_offset, 3
	.dwcfi	save_reg_to_mem, 15, -3
        AADD #-9, SP
	.dwcfi	cfa_offset, 12
$C$DW$679	.dwtag  DW_TAG_variable, DW_AT_name("data")
	.dwattr $C$DW$679, DW_AT_TI_symbol_name("_data")
	.dwattr $C$DW$679, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$679, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$680	.dwtag  DW_TAG_variable, DW_AT_name("format")
	.dwattr $C$DW$680, DW_AT_TI_symbol_name("_format")
	.dwattr $C$DW$680, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$680, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$681	.dwtag  DW_TAG_variable, DW_AT_name("cp")
	.dwattr $C$DW$681, DW_AT_TI_symbol_name("_cp")
	.dwattr $C$DW$681, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$681, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$682	.dwtag  DW_TAG_variable, DW_AT_name("temp")
	.dwattr $C$DW$682, DW_AT_TI_symbol_name("_temp")
	.dwattr $C$DW$682, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$682, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./adpcm_encode_test.c",line 1199,column 15,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, dbl(*SP(#4))
	.dwpsn	file "./adpcm_encode_test.c",line 1202,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3, AR1 ; |1202| 
        BCC $C$L247,AR1 == #0 ; |1202| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |1202| 
	.dwpsn	file "./adpcm_encode_test.c",line 1204,column 9,is_stmt
        MOV #76, T3 ; |1204| 
        MOV #83, T2 ; |1204| 
        B $C$L245 ; |1204| 
                                        ; branch occurs ; |1204| 
$C$L242:    
	CALL #_coverage_log;
$C$DW$L$_little_endian_to_native$4$B:
	.dwpsn	file "./adpcm_encode_test.c",line 1207,column 13,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV uns(*AR3), AC0 ; |1207| 
        MOV uns(*AR3(short(#1))), AC1 ; |1207| 

        MOV uns(*AR3(short(#2))), AC1 ; |1207| 
||      ADD AC1 << #8, AC0 ; |1207| 

        MOV uns(*AR3(short(#3))), AC1 ; |1207| 
||      ADD AC1 << #16, AC0 ; |1207| 

        ADD AC1 << #24, AC0 ; |1207| 
        MOV AC0, dbl(*SP(#6)) ; |1207| 
	.dwpsn	file "./adpcm_encode_test.c",line 1208,column 13,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*SP(#6)), AC0 ; |1208| 
        MOV AC0, dbl(*AR3) ; |1208| 
	.dwpsn	file "./adpcm_encode_test.c",line 1209,column 13,is_stmt
        MOV dbl(*SP(#4)), XAR3

        MOV XAR3, dbl(*SP(#4))
||      AADD #4, AR3 ; |1209| 

	.dwpsn	file "./adpcm_encode_test.c",line 1210,column 18,is_stmt
        B $C$L246 ; |1210| 
                                        ; branch occurs ; |1210| 
$C$DW$L$_little_endian_to_native$4$E:
$C$L243:    
	CALL #_coverage_log;
$C$DW$L$_little_endian_to_native$5$B:
	.dwpsn	file "./adpcm_encode_test.c",line 1213,column 13,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*SP(#4)), XAR2
        MOV *AR3(short(#1)), AC0 ; |1213| 
        SFTL AC0, #8, AC0 ; |1213| 
        ADD *AR2, AC0, AR1 ; |1213| 
        AND #0xffff, AR1, AC0 ; |1213| 
        MOV AC0, dbl(*SP(#6)) ; |1213| 
	.dwpsn	file "./adpcm_encode_test.c",line 1214,column 13,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV *SP(#7), AR1 ; |1214| 
        MOV AR1, *AR3 ; |1214| 
	.dwpsn	file "./adpcm_encode_test.c",line 1215,column 13,is_stmt
        MOV dbl(*SP(#4)), XAR3

        MOV XAR3, dbl(*SP(#4))
||      AADD #2, AR3 ; |1215| 

	.dwpsn	file "./adpcm_encode_test.c",line 1216,column 18,is_stmt
        B $C$L246 ; |1216| 
                                        ; branch occurs ; |1216| 
$C$DW$L$_little_endian_to_native$5$E:
$C$L244:    
	CALL #_coverage_log;
$C$DW$L$_little_endian_to_native$6$B:
	.dwpsn	file "./adpcm_encode_test.c",line 1219,column 13,is_stmt
        MOV *AR3, T0 ; |1219| 
$C$DW$683	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$683, DW_AT_low_pc(0x00)
	.dwattr $C$DW$683, DW_AT_name("_isdigit")
	.dwattr $C$DW$683, DW_AT_TI_call
        CALL #_isdigit ; |1219| 
                                        ; call occurs [#_isdigit] ; |1219| 
        BCC $C$L246,T0 == #0 ; |1219| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |1219| 
$C$DW$L$_little_endian_to_native$6$E:
$C$DW$L$_little_endian_to_native$7$B:
	.dwpsn	file "./adpcm_encode_test.c",line 1220,column 17,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3, AR1 ; |1220| 
        SUB #48, AR1, AR1 ; |1220| 
        MOV dbl(*SP(#4)), XAR3

        MOV XAR3, dbl(*SP(#4))
||      AADD AR1, AR3 ; |1220| 

	.dwpsn	file "./adpcm_encode_test.c",line 1222,column 18,is_stmt
        B $C$L246 ; |1222| 
                                        ; branch occurs ; |1222| 
$C$DW$L$_little_endian_to_native$7$E:
$C$L245:    
	CALL #_coverage_log;
$C$DW$L$_little_endian_to_native$8$B:
	.dwpsn	file "./adpcm_encode_test.c",line 1204,column 9,is_stmt
        MOV *AR3, AR1 ; |1204| 
        CMP AR1 == T3, TC1 ; |1204| 
        BCC $C$L242,TC1 ; |1204| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |1204| 
$C$DW$L$_little_endian_to_native$8$E:
$C$DW$L$_little_endian_to_native$9$B:
        CMP AR1 == T2, TC1 ; |1204| 
        BCC $C$L243,TC1 ; |1204| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |1204| 
$C$DW$L$_little_endian_to_native$9$E:
$C$DW$L$_little_endian_to_native$10$B:
        B $C$L244 ; |1204| 
                                        ; branch occurs ; |1204| 
$C$DW$L$_little_endian_to_native$10$E:
$C$L246:    
	CALL #_coverage_log;
$C$DW$L$_little_endian_to_native$11$B:
	.dwpsn	file "./adpcm_encode_test.c",line 1225,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#2))
	.dwpsn	file "./adpcm_encode_test.c",line 1226,column 5,is_stmt
        MOV *AR3, AR1 ; |1226| 
        BCC $C$L245,AR1 != #0 ; |1226| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |1226| 
$C$DW$L$_little_endian_to_native$11$E:
	.dwpsn	file "./adpcm_encode_test.c",line 1227,column 1,is_stmt
$C$L247:    
	CALL #_coverage_log;
        AADD #9, SP
	.dwcfi	cfa_offset, 3
        POP T3
	.dwcfi	restore_reg, 15
	.dwcfi	cfa_offset, 2
        POP T2
	.dwcfi	restore_reg, 14
	.dwcfi	cfa_offset, 1
$C$DW$684	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$684, DW_AT_low_pc(0x00)
	.dwattr $C$DW$684, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$685	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$685, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/adpcm_encode/adpcm_encode_test.asm:$C$L245:1:1738600387")
	.dwattr $C$DW$685, DW_AT_TI_begin_file("./adpcm_encode_test.c")
	.dwattr $C$DW$685, DW_AT_TI_begin_line(0x4b4)
	.dwattr $C$DW$685, DW_AT_TI_end_line(0x4ca)
$C$DW$686	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$686, DW_AT_low_pc($C$DW$L$_little_endian_to_native$8$B)
	.dwattr $C$DW$686, DW_AT_high_pc($C$DW$L$_little_endian_to_native$8$E)
$C$DW$687	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$687, DW_AT_low_pc($C$DW$L$_little_endian_to_native$10$B)
	.dwattr $C$DW$687, DW_AT_high_pc($C$DW$L$_little_endian_to_native$10$E)
$C$DW$688	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$688, DW_AT_low_pc($C$DW$L$_little_endian_to_native$9$B)
	.dwattr $C$DW$688, DW_AT_high_pc($C$DW$L$_little_endian_to_native$9$E)
$C$DW$689	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$689, DW_AT_low_pc($C$DW$L$_little_endian_to_native$4$B)
	.dwattr $C$DW$689, DW_AT_high_pc($C$DW$L$_little_endian_to_native$4$E)
$C$DW$690	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$690, DW_AT_low_pc($C$DW$L$_little_endian_to_native$5$B)
	.dwattr $C$DW$690, DW_AT_high_pc($C$DW$L$_little_endian_to_native$5$E)
$C$DW$691	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$691, DW_AT_low_pc($C$DW$L$_little_endian_to_native$6$B)
	.dwattr $C$DW$691, DW_AT_high_pc($C$DW$L$_little_endian_to_native$6$E)
$C$DW$692	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$692, DW_AT_low_pc($C$DW$L$_little_endian_to_native$7$B)
	.dwattr $C$DW$692, DW_AT_high_pc($C$DW$L$_little_endian_to_native$7$E)
$C$DW$693	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$693, DW_AT_low_pc($C$DW$L$_little_endian_to_native$11$B)
	.dwattr $C$DW$693, DW_AT_high_pc($C$DW$L$_little_endian_to_native$11$E)
	.dwendtag $C$DW$685

	.dwattr $C$DW$676, DW_AT_TI_end_file("./adpcm_encode_test.c")
	.dwattr $C$DW$676, DW_AT_TI_end_line(0x4cb)
	.dwattr $C$DW$676, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$676

	.sect	".text"

$C$DW$694	.dwtag  DW_TAG_subprogram, DW_AT_name("native_to_little_endian")
	.dwattr $C$DW$694, DW_AT_low_pc(_native_to_little_endian)
	.dwattr $C$DW$694, DW_AT_high_pc(0x00)
	.dwattr $C$DW$694, DW_AT_TI_symbol_name("_native_to_little_endian")
	.dwattr $C$DW$694, DW_AT_TI_begin_file("./adpcm_encode_test.c")
	.dwattr $C$DW$694, DW_AT_TI_begin_line(0x4cd)
	.dwattr $C$DW$694, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$694, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "./adpcm_encode_test.c",line 1230,column 1,is_stmt,address _native_to_little_endian

	.dwfde $C$DW$CIE, _native_to_little_endian
$C$DW$695	.dwtag  DW_TAG_formal_parameter, DW_AT_name("data")
	.dwattr $C$DW$695, DW_AT_TI_symbol_name("_data")
	.dwattr $C$DW$695, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$695, DW_AT_location[DW_OP_reg17]
$C$DW$696	.dwtag  DW_TAG_formal_parameter, DW_AT_name("format")
	.dwattr $C$DW$696, DW_AT_TI_symbol_name("_format")
	.dwattr $C$DW$696, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$696, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: native_to_little_endian                                      *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T2,T3,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,*
;*                        SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL             *
;*   Save On Entry Regs : T2,T3                                                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (8 local values)                                     *
;*                        (2 register save area)                               *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_native_to_little_endian:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        PSH T2
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 14, -2
        PSH T3
	.dwcfi	cfa_offset, 3
	.dwcfi	save_reg_to_mem, 15, -3
        AADD #-9, SP
	.dwcfi	cfa_offset, 12
$C$DW$697	.dwtag  DW_TAG_variable, DW_AT_name("data")
	.dwattr $C$DW$697, DW_AT_TI_symbol_name("_data")
	.dwattr $C$DW$697, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$697, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$698	.dwtag  DW_TAG_variable, DW_AT_name("format")
	.dwattr $C$DW$698, DW_AT_TI_symbol_name("_format")
	.dwattr $C$DW$698, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$698, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$699	.dwtag  DW_TAG_variable, DW_AT_name("cp")
	.dwattr $C$DW$699, DW_AT_TI_symbol_name("_cp")
	.dwattr $C$DW$699, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$699, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$700	.dwtag  DW_TAG_variable, DW_AT_name("temp")
	.dwattr $C$DW$700, DW_AT_TI_symbol_name("_temp")
	.dwattr $C$DW$700, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$700, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./adpcm_encode_test.c",line 1231,column 15,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, dbl(*SP(#4))
	.dwpsn	file "./adpcm_encode_test.c",line 1234,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3, AR1 ; |1234| 
        BCC $C$L253,AR1 == #0 ; |1234| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |1234| 
	.dwpsn	file "./adpcm_encode_test.c",line 1236,column 9,is_stmt
        MOV #76, T3 ; |1236| 
        MOV #83, T2 ; |1236| 
        B $C$L251 ; |1236| 
                                        ; branch occurs ; |1236| 
$C$L248:    
	CALL #_coverage_log;
$C$DW$L$_native_to_little_endian$4$B:
	.dwpsn	file "./adpcm_encode_test.c",line 1239,column 13,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*AR3), AC0 ; |1239| 
        MOV AC0, dbl(*SP(#6)) ; |1239| 
	.dwpsn	file "./adpcm_encode_test.c",line 1240,column 13,is_stmt
        MOV dbl(*SP(#4)), XAR2
        AMAR *AR2, XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#4))
        MOV *SP(#7), AR1 ; |1240| 
        MOV AR1, *AR2 ; |1240| 
	.dwpsn	file "./adpcm_encode_test.c",line 1241,column 13,is_stmt
        MOV dbl(*SP(#4)), XAR2
        AMAR *AR2, XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#4))
        MOV dbl(*SP(#6)), AC0 ; |1241| 
        SFTS AC0, #-8, AC0 ; |1241| 
        MOV AC0, *AR2 ; |1241| 
	.dwpsn	file "./adpcm_encode_test.c",line 1242,column 13,is_stmt
        MOV dbl(*SP(#4)), XAR2
        AMAR *AR2, XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#4))
        MOV dbl(*SP(#6)), AC0 ; |1242| 
        MOV HI(AC0), *AR2 ; |1242| 
	.dwpsn	file "./adpcm_encode_test.c",line 1243,column 13,is_stmt
        MOV dbl(*SP(#4)), XAR2
        AMAR *AR2, XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#4))
        MOV dbl(*SP(#6)), AC0 ; |1243| 
        SFTS AC0, #-24, AC0 ; |1243| 
        MOV AC0, *AR2 ; |1243| 
	.dwpsn	file "./adpcm_encode_test.c",line 1244,column 18,is_stmt
        B $C$L252 ; |1244| 
                                        ; branch occurs ; |1244| 
$C$DW$L$_native_to_little_endian$4$E:
$C$L249:    
	CALL #_coverage_log;
$C$DW$L$_native_to_little_endian$5$B:
	.dwpsn	file "./adpcm_encode_test.c",line 1247,column 13,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV *AR3, AC0 ; |1247| 
        MOV AC0, dbl(*SP(#6)) ; |1247| 
	.dwpsn	file "./adpcm_encode_test.c",line 1248,column 13,is_stmt
        MOV dbl(*SP(#4)), XAR2
        AMAR *AR2, XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#4))
        MOV *SP(#7), AR1 ; |1248| 
        MOV AR1, *AR2 ; |1248| 
	.dwpsn	file "./adpcm_encode_test.c",line 1249,column 13,is_stmt
        MOV dbl(*SP(#4)), XAR2
        AMAR *AR2, XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#4))
        MOV dbl(*SP(#6)), AC0 ; |1249| 
        SFTS AC0, #-8, AC0 ; |1249| 
        MOV AC0, *AR2 ; |1249| 
	.dwpsn	file "./adpcm_encode_test.c",line 1250,column 18,is_stmt
        B $C$L252 ; |1250| 
                                        ; branch occurs ; |1250| 
$C$DW$L$_native_to_little_endian$5$E:
$C$L250:    
	CALL #_coverage_log;
$C$DW$L$_native_to_little_endian$6$B:
	.dwpsn	file "./adpcm_encode_test.c",line 1253,column 13,is_stmt
        MOV *AR3, T0 ; |1253| 
$C$DW$701	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$701, DW_AT_low_pc(0x00)
	.dwattr $C$DW$701, DW_AT_name("_isdigit")
	.dwattr $C$DW$701, DW_AT_TI_call
        CALL #_isdigit ; |1253| 
                                        ; call occurs [#_isdigit] ; |1253| 
        BCC $C$L252,T0 == #0 ; |1253| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |1253| 
$C$DW$L$_native_to_little_endian$6$E:
$C$DW$L$_native_to_little_endian$7$B:
	.dwpsn	file "./adpcm_encode_test.c",line 1254,column 17,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3, AR1 ; |1254| 
        SUB #48, AR1, AR1 ; |1254| 
        MOV dbl(*SP(#4)), XAR3

        MOV XAR3, dbl(*SP(#4))
||      AADD AR1, AR3 ; |1254| 

	.dwpsn	file "./adpcm_encode_test.c",line 1256,column 18,is_stmt
        B $C$L252 ; |1256| 
                                        ; branch occurs ; |1256| 
$C$DW$L$_native_to_little_endian$7$E:
$C$L251:    
	CALL #_coverage_log;
$C$DW$L$_native_to_little_endian$8$B:
	.dwpsn	file "./adpcm_encode_test.c",line 1236,column 9,is_stmt
        MOV *AR3, AR1 ; |1236| 
        CMP AR1 == T3, TC1 ; |1236| 
        BCC $C$L248,TC1 ; |1236| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |1236| 
$C$DW$L$_native_to_little_endian$8$E:
$C$DW$L$_native_to_little_endian$9$B:
        CMP AR1 == T2, TC1 ; |1236| 
        BCC $C$L249,TC1 ; |1236| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |1236| 
$C$DW$L$_native_to_little_endian$9$E:
$C$DW$L$_native_to_little_endian$10$B:
        B $C$L250 ; |1236| 
                                        ; branch occurs ; |1236| 
$C$DW$L$_native_to_little_endian$10$E:
$C$L252:    
	CALL #_coverage_log;
$C$DW$L$_native_to_little_endian$11$B:
	.dwpsn	file "./adpcm_encode_test.c",line 1259,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#2))
	.dwpsn	file "./adpcm_encode_test.c",line 1260,column 5,is_stmt
        MOV *AR3, AR1 ; |1260| 
        BCC $C$L251,AR1 != #0 ; |1260| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |1260| 
$C$DW$L$_native_to_little_endian$11$E:
	.dwpsn	file "./adpcm_encode_test.c",line 1261,column 1,is_stmt
$C$L253:    
	CALL #_coverage_log;
        AADD #9, SP
	.dwcfi	cfa_offset, 3
        POP T3
	.dwcfi	restore_reg, 15
	.dwcfi	cfa_offset, 2
        POP T2
	.dwcfi	restore_reg, 14
	.dwcfi	cfa_offset, 1
$C$DW$702	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$702, DW_AT_low_pc(0x00)
	.dwattr $C$DW$702, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$703	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$703, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/adpcm_encode/adpcm_encode_test.asm:$C$L251:1:1738600387")
	.dwattr $C$DW$703, DW_AT_TI_begin_file("./adpcm_encode_test.c")
	.dwattr $C$DW$703, DW_AT_TI_begin_line(0x4d4)
	.dwattr $C$DW$703, DW_AT_TI_end_line(0x4ec)
$C$DW$704	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$704, DW_AT_low_pc($C$DW$L$_native_to_little_endian$8$B)
	.dwattr $C$DW$704, DW_AT_high_pc($C$DW$L$_native_to_little_endian$8$E)
$C$DW$705	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$705, DW_AT_low_pc($C$DW$L$_native_to_little_endian$10$B)
	.dwattr $C$DW$705, DW_AT_high_pc($C$DW$L$_native_to_little_endian$10$E)
$C$DW$706	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$706, DW_AT_low_pc($C$DW$L$_native_to_little_endian$9$B)
	.dwattr $C$DW$706, DW_AT_high_pc($C$DW$L$_native_to_little_endian$9$E)
$C$DW$707	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$707, DW_AT_low_pc($C$DW$L$_native_to_little_endian$4$B)
	.dwattr $C$DW$707, DW_AT_high_pc($C$DW$L$_native_to_little_endian$4$E)
$C$DW$708	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$708, DW_AT_low_pc($C$DW$L$_native_to_little_endian$5$B)
	.dwattr $C$DW$708, DW_AT_high_pc($C$DW$L$_native_to_little_endian$5$E)
$C$DW$709	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$709, DW_AT_low_pc($C$DW$L$_native_to_little_endian$6$B)
	.dwattr $C$DW$709, DW_AT_high_pc($C$DW$L$_native_to_little_endian$6$E)
$C$DW$710	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$710, DW_AT_low_pc($C$DW$L$_native_to_little_endian$7$B)
	.dwattr $C$DW$710, DW_AT_high_pc($C$DW$L$_native_to_little_endian$7$E)
$C$DW$711	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$711, DW_AT_low_pc($C$DW$L$_native_to_little_endian$11$B)
	.dwattr $C$DW$711, DW_AT_high_pc($C$DW$L$_native_to_little_endian$11$E)
	.dwendtag $C$DW$703

	.dwattr $C$DW$694, DW_AT_TI_end_file("./adpcm_encode_test.c")
	.dwattr $C$DW$694, DW_AT_TI_end_line(0x4ed)
	.dwattr $C$DW$694, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$694

	.sect	".text"
	.global	_adpcm_encode

$C$DW$712	.dwtag  DW_TAG_subprogram, DW_AT_name("adpcm_encode")
	.dwattr $C$DW$712, DW_AT_low_pc(_adpcm_encode)
	.dwattr $C$DW$712, DW_AT_high_pc(0x00)
	.dwattr $C$DW$712, DW_AT_TI_symbol_name("_adpcm_encode")
	.dwattr $C$DW$712, DW_AT_external
	.dwattr $C$DW$712, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$712, DW_AT_TI_begin_file("./adpcm_encode_test.c")
	.dwattr $C$DW$712, DW_AT_TI_begin_line(0x4f3)
	.dwattr $C$DW$712, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$712, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./adpcm_encode_test.c",line 1268,column 1,is_stmt,address _adpcm_encode

	.dwfde $C$DW$CIE, _adpcm_encode
$C$DW$713	.dwtag  DW_TAG_formal_parameter, DW_AT_name("input")
	.dwattr $C$DW$713, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$713, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$713, DW_AT_location[DW_OP_reg17]
$C$DW$714	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len")
	.dwattr $C$DW$714, DW_AT_TI_symbol_name("_len")
	.dwattr $C$DW$714, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$714, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: adpcm_encode                                                 *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,SP,M40,SATA,SATD,RDM,FRCT,SMUL   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_adpcm_encode:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$715	.dwtag  DW_TAG_variable, DW_AT_name("input")
	.dwattr $C$DW$715, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$715, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$715, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$716	.dwtag  DW_TAG_variable, DW_AT_name("len")
	.dwattr $C$DW$716, DW_AT_TI_symbol_name("_len")
	.dwattr $C$DW$716, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$716, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV T0, *SP(#2) ; |1268| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./adpcm_encode_test.c",line 1269,column 5,is_stmt
        MOV dbl(*(#_flags)), AC0 ; |1269| 
        BCLR @#0, AC0 ; |1269| 
        MOV AC0, dbl(*(#_flags)) ; |1269| 
	.dwpsn	file "./adpcm_encode_test.c",line 1270,column 5,is_stmt
        MOV dbl(*($C$FL5)), AC0 ; |1270| 
        MOV AC0, dbl(*(#_static_shaping_weight)) ; |1270| 
	.dwpsn	file "./adpcm_encode_test.c",line 1271,column 5,is_stmt
        MOV *SP(#2), T0 ; |1271| 
$C$DW$717	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$717, DW_AT_low_pc(0x00)
	.dwattr $C$DW$717, DW_AT_name("_adpcm_converter")
	.dwattr $C$DW$717, DW_AT_TI_call
        CALL #_adpcm_converter ; |1271| 
                                        ; call occurs [#_adpcm_converter] ; |1271| 
	.dwpsn	file "./adpcm_encode_test.c",line 1272,column 5,is_stmt
        MOV #0, AC0 ; |1272| 
	.dwpsn	file "./adpcm_encode_test.c",line 1273,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$718	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$718, DW_AT_low_pc(0x00)
	.dwattr $C$DW$718, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$712, DW_AT_TI_end_file("./adpcm_encode_test.c")
	.dwattr $C$DW$712, DW_AT_TI_end_line(0x4f9)
	.dwattr $C$DW$712, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$712

;*******************************************************************************
;* FLOATING-POINT CONSTANTS                                                    *
;*******************************************************************************
	.sect	".const"
	.align	2
$C$FL1:	.xlong	0x44800000
	.align	2
$C$FL2:	.xlong	0x3f000000
	.align	2
$C$FL3:	.xlong	0x4f800000
	.align	2
$C$FL4:	.xlong	0x40400000
	.align	2
$C$FL5:	.xlong	0x00000000
	.align	2
$C$FL6:	.xlong	0x3f800000
;*******************************************************************************
;* FAR STRINGS                                                                 *
;*******************************************************************************
	.sect	".const:.string"
	.align	2
$C$FSL1:	.string	"RIFF",0
	.align	2
$C$FSL2:	.string	"WAVE",0
	.align	2
$C$FSL3:	.string	"4L",0
	.align	2
$C$FSL4:	.string	"fmt ",0
	.align	2
$C$FSL5:	.string	"SSLLSSSSLS",0
	.align	2
$C$FSL6:	.string	"fact",0
	.align	2
$C$FSL7:	.string	"L",0
	.align	2
$C$FSL8:	.string	"data",0
	.align	2
$C$FSL9:	.string	"4LL",0
	.align	2
$C$FSL10:	.string	0,255,0
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_strncpy
	.global	_strncmp
	.global	_memset
	.global	_malloc
	.global	_free
	.global	_isdigit
	.global	_floor
	.global	__mpyli
	.global	__mpyd
	.global	__addd
	.global	__fixdi
	.global	__subd
	.global	__divli
	.global	__fltlid
	.global	__cmpd
	.global	__divd
	.global	__divu
	.global	__remu
	.global	__remul
	.global	__divul
	.global	__remli
	.global	_memcpy

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x0a)
$C$DW$719	.dwtag  DW_TAG_member
	.dwattr $C$DW$719, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$719, DW_AT_name("ckID")
	.dwattr $C$DW$719, DW_AT_TI_symbol_name("_ckID")
	.dwattr $C$DW$719, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$719, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$720	.dwtag  DW_TAG_member
	.dwattr $C$DW$720, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$720, DW_AT_name("ckSize")
	.dwattr $C$DW$720, DW_AT_TI_symbol_name("_ckSize")
	.dwattr $C$DW$720, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$720, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$721	.dwtag  DW_TAG_member
	.dwattr $C$DW$721, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$721, DW_AT_name("formType")
	.dwattr $C$DW$721, DW_AT_TI_symbol_name("_formType")
	.dwattr $C$DW$721, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$721, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$22

$C$DW$T$37	.dwtag  DW_TAG_typedef, DW_AT_name("RiffChunkHeader")
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
$C$DW$T$38	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$38, DW_AT_address_class(0x17)

$C$DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x06)
$C$DW$722	.dwtag  DW_TAG_member
	.dwattr $C$DW$722, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$722, DW_AT_name("ckID")
	.dwattr $C$DW$722, DW_AT_TI_symbol_name("_ckID")
	.dwattr $C$DW$722, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$722, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$723	.dwtag  DW_TAG_member
	.dwattr $C$DW$723, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$723, DW_AT_name("ckSize")
	.dwattr $C$DW$723, DW_AT_TI_symbol_name("_ckSize")
	.dwattr $C$DW$723, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$723, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$23

$C$DW$T$39	.dwtag  DW_TAG_typedef, DW_AT_name("ChunkHeader")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$39, DW_AT_language(DW_LANG_C)
$C$DW$T$40	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$40, DW_AT_address_class(0x17)

$C$DW$T$27	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x1c)
$C$DW$724	.dwtag  DW_TAG_member
	.dwattr $C$DW$724, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$724, DW_AT_name("FormatTag")
	.dwattr $C$DW$724, DW_AT_TI_symbol_name("_FormatTag")
	.dwattr $C$DW$724, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$724, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$725	.dwtag  DW_TAG_member
	.dwattr $C$DW$725, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$725, DW_AT_name("NumChannels")
	.dwattr $C$DW$725, DW_AT_TI_symbol_name("_NumChannels")
	.dwattr $C$DW$725, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$725, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$726	.dwtag  DW_TAG_member
	.dwattr $C$DW$726, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$726, DW_AT_name("SampleRate")
	.dwattr $C$DW$726, DW_AT_TI_symbol_name("_SampleRate")
	.dwattr $C$DW$726, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$726, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$727	.dwtag  DW_TAG_member
	.dwattr $C$DW$727, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$727, DW_AT_name("BytesPerSecond")
	.dwattr $C$DW$727, DW_AT_TI_symbol_name("_BytesPerSecond")
	.dwattr $C$DW$727, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$727, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$728	.dwtag  DW_TAG_member
	.dwattr $C$DW$728, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$728, DW_AT_name("BlockAlign")
	.dwattr $C$DW$728, DW_AT_TI_symbol_name("_BlockAlign")
	.dwattr $C$DW$728, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$728, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$729	.dwtag  DW_TAG_member
	.dwattr $C$DW$729, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$729, DW_AT_name("BitsPerSample")
	.dwattr $C$DW$729, DW_AT_TI_symbol_name("_BitsPerSample")
	.dwattr $C$DW$729, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$729, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$730	.dwtag  DW_TAG_member
	.dwattr $C$DW$730, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$730, DW_AT_name("cbSize")
	.dwattr $C$DW$730, DW_AT_TI_symbol_name("_cbSize")
	.dwattr $C$DW$730, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$730, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$731	.dwtag  DW_TAG_member
	.dwattr $C$DW$731, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$731, DW_AT_name("Samples")
	.dwattr $C$DW$731, DW_AT_TI_symbol_name("_Samples")
	.dwattr $C$DW$731, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$731, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$732	.dwtag  DW_TAG_member
	.dwattr $C$DW$732, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$732, DW_AT_name("ChannelMask")
	.dwattr $C$DW$732, DW_AT_TI_symbol_name("_ChannelMask")
	.dwattr $C$DW$732, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$732, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$733	.dwtag  DW_TAG_member
	.dwattr $C$DW$733, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$733, DW_AT_name("SubFormat")
	.dwattr $C$DW$733, DW_AT_TI_symbol_name("_SubFormat")
	.dwattr $C$DW$733, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$733, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$734	.dwtag  DW_TAG_member
	.dwattr $C$DW$734, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$734, DW_AT_name("GUID")
	.dwattr $C$DW$734, DW_AT_TI_symbol_name("_GUID")
	.dwattr $C$DW$734, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$734, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$27

$C$DW$T$42	.dwtag  DW_TAG_typedef, DW_AT_name("WaveHeader")
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$42, DW_AT_language(DW_LANG_C)
$C$DW$T$43	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$43, DW_AT_address_class(0x17)

$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x08)
$C$DW$735	.dwtag  DW_TAG_member
	.dwattr $C$DW$735, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$735, DW_AT_name("ckID")
	.dwattr $C$DW$735, DW_AT_TI_symbol_name("_ckID")
	.dwattr $C$DW$735, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$735, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$736	.dwtag  DW_TAG_member
	.dwattr $C$DW$736, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$736, DW_AT_name("ckSize")
	.dwattr $C$DW$736, DW_AT_TI_symbol_name("_ckSize")
	.dwattr $C$DW$736, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$736, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$737	.dwtag  DW_TAG_member
	.dwattr $C$DW$737, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$737, DW_AT_name("TotalSamples")
	.dwattr $C$DW$737, DW_AT_TI_symbol_name("_TotalSamples")
	.dwattr $C$DW$737, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$737, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$28

$C$DW$T$45	.dwtag  DW_TAG_typedef, DW_AT_name("FactHeader")
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$45, DW_AT_language(DW_LANG_C)

$C$DW$T$29	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x01)
$C$DW$738	.dwtag  DW_TAG_member
	.dwattr $C$DW$738, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$738, DW_AT_name("ValidBitsPerSample")
	.dwattr $C$DW$738, DW_AT_TI_symbol_name("_ValidBitsPerSample")
	.dwattr $C$DW$738, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$738, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$739	.dwtag  DW_TAG_member
	.dwattr $C$DW$739, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$739, DW_AT_name("SamplesPerBlock")
	.dwattr $C$DW$739, DW_AT_TI_symbol_name("_SamplesPerBlock")
	.dwattr $C$DW$739, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$739, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$740	.dwtag  DW_TAG_member
	.dwattr $C$DW$740, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$740, DW_AT_name("Reserved")
	.dwattr $C$DW$740, DW_AT_TI_symbol_name("_Reserved")
	.dwattr $C$DW$740, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$740, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$29

$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x17)
$C$DW$741	.dwtag  DW_TAG_TI_far_type
$C$DW$T$47	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$741)
$C$DW$T$48	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$48, DW_AT_address_class(0x17)
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
$C$DW$T$79	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$79, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$79, DW_AT_address_class(0x17)
$C$DW$742	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$742, DW_AT_type(*$C$DW$T$10)
$C$DW$T$88	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$88, DW_AT_type(*$C$DW$742)

$C$DW$T$89	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$89, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$T$89, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$89, DW_AT_byte_size(0x08)
$C$DW$743	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$743, DW_AT_upper_bound(0x07)
	.dwendtag $C$DW$T$89


$C$DW$T$90	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$90, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$T$90, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$90, DW_AT_byte_size(0x04)
$C$DW$744	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$744, DW_AT_upper_bound(0x03)
	.dwendtag $C$DW$T$90


$C$DW$T$91	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$91, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$T$91, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$91, DW_AT_byte_size(0x10)
$C$DW$745	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$745, DW_AT_upper_bound(0x0f)
	.dwendtag $C$DW$T$91

$C$DW$T$33	.dwtag  DW_TAG_typedef, DW_AT_name("int16_t")
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$33, DW_AT_language(DW_LANG_C)
$C$DW$T$82	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$82, DW_AT_address_class(0x17)

$C$DW$T$93	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$93, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$93, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$93, DW_AT_byte_size(0x02)
$C$DW$746	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$746, DW_AT_upper_bound(0x01)
	.dwendtag $C$DW$T$93

$C$DW$747	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$747, DW_AT_type(*$C$DW$T$33)
$C$DW$T$65	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$65, DW_AT_type(*$C$DW$747)
$C$DW$T$66	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$T$66, DW_AT_address_class(0x17)
$C$DW$T$67	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$T$67, DW_AT_address_class(0x17)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)
$C$DW$T$49	.dwtag  DW_TAG_typedef, DW_AT_name("size_t")
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$49, DW_AT_language(DW_LANG_C)
$C$DW$T$64	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$T$64, DW_AT_address_class(0x17)
$C$DW$T$24	.dwtag  DW_TAG_typedef, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
$C$DW$T$62	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$62, DW_AT_address_class(0x17)
$C$DW$T$63	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$T$63, DW_AT_address_class(0x17)
$C$DW$748	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$748, DW_AT_type(*$C$DW$T$24)
$C$DW$T$83	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$83, DW_AT_type(*$C$DW$748)
$C$DW$T$84	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$84, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$T$84, DW_AT_address_class(0x17)

$C$DW$T$97	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$97, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$T$97, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$97, DW_AT_byte_size(0x59)
$C$DW$749	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$749, DW_AT_upper_bound(0x58)
	.dwendtag $C$DW$T$97

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)
$C$DW$T$25	.dwtag  DW_TAG_typedef, DW_AT_name("int32_t")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$25, DW_AT_language(DW_LANG_C)

$C$DW$T$32	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$32, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x04)
$C$DW$750	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$750, DW_AT_upper_bound(0x01)
	.dwendtag $C$DW$T$32

$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)
$C$DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
$C$DW$T$109	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$109, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$109, DW_AT_address_class(0x17)
$C$DW$751	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$751, DW_AT_type(*$C$DW$T$21)
$C$DW$T$114	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$114, DW_AT_type(*$C$DW$751)
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
$C$DW$T$117	.dwtag  DW_TAG_typedef, DW_AT_name("rms_error_t")
	.dwattr $C$DW$T$117, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$T$117, DW_AT_language(DW_LANG_C)

$C$DW$T$122	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$122, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$T$122, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$122, DW_AT_byte_size(0xb2)
$C$DW$752	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$752, DW_AT_upper_bound(0x58)
	.dwendtag $C$DW$T$122

$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x02)
$C$DW$T$19	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$19, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$19, DW_AT_name("signed char")
	.dwattr $C$DW$T$19, DW_AT_byte_size(0x01)

$C$DW$T$20	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x04)
$C$DW$753	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$753, DW_AT_upper_bound(0x03)
	.dwendtag $C$DW$T$20


$C$DW$T$26	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x0e)
$C$DW$754	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$754, DW_AT_upper_bound(0x0d)
	.dwendtag $C$DW$T$26

$C$DW$T$70	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$70, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$70, DW_AT_address_class(0x17)
$C$DW$755	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$755, DW_AT_type(*$C$DW$T$19)
$C$DW$T$75	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$75, DW_AT_type(*$C$DW$755)
$C$DW$T$76	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$76, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$T$76, DW_AT_address_class(0x17)

$C$DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$34, DW_AT_name("adpcm_channel")
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x10)
$C$DW$756	.dwtag  DW_TAG_member
	.dwattr $C$DW$756, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$756, DW_AT_name("cxt")
	.dwattr $C$DW$756, DW_AT_TI_symbol_name("_cxt")
	.dwattr $C$DW$756, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$756, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$757	.dwtag  DW_TAG_member
	.dwattr $C$DW$757, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$757, DW_AT_name("pcmdata")
	.dwattr $C$DW$757, DW_AT_TI_symbol_name("_pcmdata")
	.dwattr $C$DW$757, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$757, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$758	.dwtag  DW_TAG_member
	.dwattr $C$DW$758, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$758, DW_AT_name("error")
	.dwattr $C$DW$758, DW_AT_TI_symbol_name("_error")
	.dwattr $C$DW$758, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$758, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$759	.dwtag  DW_TAG_member
	.dwattr $C$DW$759, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$759, DW_AT_name("weight")
	.dwattr $C$DW$759, DW_AT_TI_symbol_name("_weight")
	.dwattr $C$DW$759, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$759, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$760	.dwtag  DW_TAG_member
	.dwattr $C$DW$760, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$760, DW_AT_name("history")
	.dwattr $C$DW$760, DW_AT_TI_symbol_name("_history")
	.dwattr $C$DW$760, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$760, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$761	.dwtag  DW_TAG_member
	.dwattr $C$DW$761, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$761, DW_AT_name("shaping_weight")
	.dwattr $C$DW$761, DW_AT_TI_symbol_name("_shaping_weight")
	.dwattr $C$DW$761, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$761, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$762	.dwtag  DW_TAG_member
	.dwattr $C$DW$762, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$762, DW_AT_name("index")
	.dwattr $C$DW$762, DW_AT_TI_symbol_name("_index")
	.dwattr $C$DW$762, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$762, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$34


$C$DW$T$35	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$35, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x20)
$C$DW$763	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$763, DW_AT_upper_bound(0x01)
	.dwendtag $C$DW$T$35

$C$DW$T$99	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$99, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$99, DW_AT_address_class(0x17)
$C$DW$764	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$764, DW_AT_type(*$C$DW$T$34)
$C$DW$T$118	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$118, DW_AT_type(*$C$DW$764)
$C$DW$T$119	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$119, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$T$119, DW_AT_address_class(0x17)

$C$DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$36, DW_AT_name("adpcm_context")
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x24)
$C$DW$765	.dwtag  DW_TAG_member
	.dwattr $C$DW$765, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$765, DW_AT_name("channels")
	.dwattr $C$DW$765, DW_AT_TI_symbol_name("_channels")
	.dwattr $C$DW$765, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$765, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$766	.dwtag  DW_TAG_member
	.dwattr $C$DW$766, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$766, DW_AT_name("num_channels")
	.dwattr $C$DW$766, DW_AT_TI_symbol_name("_num_channels")
	.dwattr $C$DW$766, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$766, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$767	.dwtag  DW_TAG_member
	.dwattr $C$DW$767, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$767, DW_AT_name("lookahead")
	.dwattr $C$DW$767, DW_AT_TI_symbol_name("_lookahead")
	.dwattr $C$DW$767, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr $C$DW$767, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$768	.dwtag  DW_TAG_member
	.dwattr $C$DW$768, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$768, DW_AT_name("noise_shaping")
	.dwattr $C$DW$768, DW_AT_TI_symbol_name("_noise_shaping")
	.dwattr $C$DW$768, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$768, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$769	.dwtag  DW_TAG_member
	.dwattr $C$DW$769, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$769, DW_AT_name("static_shaping_weight")
	.dwattr $C$DW$769, DW_AT_TI_symbol_name("_static_shaping_weight")
	.dwattr $C$DW$769, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr $C$DW$769, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$36

$C$DW$T$61	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$61, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$61, DW_AT_address_class(0x17)
$C$DW$770	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$770, DW_AT_type(*$C$DW$T$36)
$C$DW$T$30	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$770)
$C$DW$T$31	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$31, DW_AT_address_class(0x17)
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

$C$DW$771	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$771, DW_AT_location[DW_OP_reg0]
$C$DW$772	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$772, DW_AT_location[DW_OP_reg1]
$C$DW$773	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$773, DW_AT_location[DW_OP_reg2]
$C$DW$774	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$774, DW_AT_location[DW_OP_reg3]
$C$DW$775	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$775, DW_AT_location[DW_OP_reg4]
$C$DW$776	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$776, DW_AT_location[DW_OP_reg5]
$C$DW$777	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$777, DW_AT_location[DW_OP_reg6]
$C$DW$778	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$778, DW_AT_location[DW_OP_reg7]
$C$DW$779	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$779, DW_AT_location[DW_OP_reg8]
$C$DW$780	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$780, DW_AT_location[DW_OP_reg9]
$C$DW$781	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$781, DW_AT_location[DW_OP_reg10]
$C$DW$782	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$782, DW_AT_location[DW_OP_reg11]
$C$DW$783	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$783, DW_AT_location[DW_OP_reg12]
$C$DW$784	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$784, DW_AT_location[DW_OP_reg13]
$C$DW$785	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$785, DW_AT_location[DW_OP_reg14]
$C$DW$786	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$786, DW_AT_location[DW_OP_reg15]
$C$DW$787	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$787, DW_AT_location[DW_OP_reg16]
$C$DW$788	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$788, DW_AT_location[DW_OP_reg17]
$C$DW$789	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$789, DW_AT_location[DW_OP_reg18]
$C$DW$790	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$790, DW_AT_location[DW_OP_reg19]
$C$DW$791	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$791, DW_AT_location[DW_OP_reg20]
$C$DW$792	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$792, DW_AT_location[DW_OP_reg21]
$C$DW$793	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$793, DW_AT_location[DW_OP_reg22]
$C$DW$794	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$794, DW_AT_location[DW_OP_reg23]
$C$DW$795	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$795, DW_AT_location[DW_OP_reg24]
$C$DW$796	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$796, DW_AT_location[DW_OP_reg25]
$C$DW$797	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$797, DW_AT_location[DW_OP_reg26]
$C$DW$798	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$798, DW_AT_location[DW_OP_reg27]
$C$DW$799	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$799, DW_AT_location[DW_OP_reg28]
$C$DW$800	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$800, DW_AT_location[DW_OP_reg29]
$C$DW$801	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$801, DW_AT_location[DW_OP_reg30]
$C$DW$802	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$802, DW_AT_location[DW_OP_reg31]
$C$DW$803	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$803, DW_AT_location[DW_OP_regx 0x20]
$C$DW$804	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$804, DW_AT_location[DW_OP_regx 0x21]
$C$DW$805	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$805, DW_AT_location[DW_OP_regx 0x22]
$C$DW$806	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$806, DW_AT_location[DW_OP_regx 0x23]
$C$DW$807	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$807, DW_AT_location[DW_OP_regx 0x24]
$C$DW$808	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$808, DW_AT_location[DW_OP_regx 0x25]
$C$DW$809	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$809, DW_AT_location[DW_OP_regx 0x26]
$C$DW$810	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$810, DW_AT_location[DW_OP_regx 0x27]
$C$DW$811	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$811, DW_AT_location[DW_OP_regx 0x28]
$C$DW$812	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$812, DW_AT_location[DW_OP_regx 0x29]
$C$DW$813	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$813, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$814	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$814, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$815	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$815, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$816	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$816, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$817	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$817, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$818	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$818, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$819	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$819, DW_AT_location[DW_OP_regx 0x30]
$C$DW$820	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$820, DW_AT_location[DW_OP_regx 0x31]
$C$DW$821	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$821, DW_AT_location[DW_OP_regx 0x32]
$C$DW$822	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$822, DW_AT_location[DW_OP_regx 0x33]
$C$DW$823	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$823, DW_AT_location[DW_OP_regx 0x34]
$C$DW$824	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$824, DW_AT_location[DW_OP_regx 0x35]
$C$DW$825	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$825, DW_AT_location[DW_OP_regx 0x36]
$C$DW$826	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$826, DW_AT_location[DW_OP_regx 0x37]
$C$DW$827	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$827, DW_AT_location[DW_OP_regx 0x38]
$C$DW$828	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$828, DW_AT_location[DW_OP_regx 0x39]
$C$DW$829	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$829, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$830	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$830, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$831	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$831, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$832	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$832, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$833	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$833, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$834	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$834, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$835	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$835, DW_AT_location[DW_OP_regx 0x40]
$C$DW$836	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$836, DW_AT_location[DW_OP_regx 0x41]
$C$DW$837	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$837, DW_AT_location[DW_OP_regx 0x42]
$C$DW$838	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$838, DW_AT_location[DW_OP_regx 0x43]
$C$DW$839	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$839, DW_AT_location[DW_OP_regx 0x44]
$C$DW$840	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$840, DW_AT_location[DW_OP_regx 0x45]
$C$DW$841	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$841, DW_AT_location[DW_OP_regx 0x46]
$C$DW$842	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$842, DW_AT_location[DW_OP_regx 0x47]
$C$DW$843	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$843, DW_AT_location[DW_OP_regx 0x48]
$C$DW$844	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$844, DW_AT_location[DW_OP_regx 0x49]
$C$DW$845	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$845, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$846	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$846, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$847	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$847, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$848	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$848, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$849	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$849, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$850	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$850, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$851	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$851, DW_AT_location[DW_OP_regx 0x50]
$C$DW$852	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$852, DW_AT_location[DW_OP_regx 0x51]
$C$DW$853	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$853, DW_AT_location[DW_OP_regx 0x52]
$C$DW$854	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$854, DW_AT_location[DW_OP_regx 0x53]
$C$DW$855	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$855, DW_AT_location[DW_OP_regx 0x54]
$C$DW$856	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$856, DW_AT_location[DW_OP_regx 0x55]
$C$DW$857	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$857, DW_AT_location[DW_OP_regx 0x56]
$C$DW$858	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$858, DW_AT_location[DW_OP_regx 0x57]
$C$DW$859	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$859, DW_AT_location[DW_OP_regx 0x58]
$C$DW$860	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$860, DW_AT_location[DW_OP_regx 0x59]
$C$DW$861	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$861, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$862	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$862, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

