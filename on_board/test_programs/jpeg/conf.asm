;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                        Unix v4.4.1 *
;* Date/Time created: Fri Oct  4 09:11:40 2024                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("./jpeg/conf.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen Unix v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/santiago/Research/DSPFuzz/on_board/test_programs")
	.global	_jpec_qzr
	.sect	".const:_jpec_qzr"
	.clink
	.align	1
_jpec_qzr:
	.field	16,16			; _jpec_qzr[0] @ 0
	.field	11,16			; _jpec_qzr[1] @ 16
	.field	10,16			; _jpec_qzr[2] @ 32
	.field	16,16			; _jpec_qzr[3] @ 48
	.field	24,16			; _jpec_qzr[4] @ 64
	.field	40,16			; _jpec_qzr[5] @ 80
	.field	51,16			; _jpec_qzr[6] @ 96
	.field	61,16			; _jpec_qzr[7] @ 112
	.field	12,16			; _jpec_qzr[8] @ 128
	.field	12,16			; _jpec_qzr[9] @ 144
	.field	14,16			; _jpec_qzr[10] @ 160
	.field	19,16			; _jpec_qzr[11] @ 176
	.field	26,16			; _jpec_qzr[12] @ 192
	.field	58,16			; _jpec_qzr[13] @ 208
	.field	60,16			; _jpec_qzr[14] @ 224
	.field	55,16			; _jpec_qzr[15] @ 240
	.field	14,16			; _jpec_qzr[16] @ 256
	.field	13,16			; _jpec_qzr[17] @ 272
	.field	16,16			; _jpec_qzr[18] @ 288
	.field	24,16			; _jpec_qzr[19] @ 304
	.field	40,16			; _jpec_qzr[20] @ 320
	.field	57,16			; _jpec_qzr[21] @ 336
	.field	69,16			; _jpec_qzr[22] @ 352
	.field	56,16			; _jpec_qzr[23] @ 368
	.field	14,16			; _jpec_qzr[24] @ 384
	.field	17,16			; _jpec_qzr[25] @ 400
	.field	22,16			; _jpec_qzr[26] @ 416
	.field	29,16			; _jpec_qzr[27] @ 432
	.field	51,16			; _jpec_qzr[28] @ 448
	.field	87,16			; _jpec_qzr[29] @ 464
	.field	80,16			; _jpec_qzr[30] @ 480
	.field	62,16			; _jpec_qzr[31] @ 496
	.field	18,16			; _jpec_qzr[32] @ 512
	.field	22,16			; _jpec_qzr[33] @ 528
	.field	37,16			; _jpec_qzr[34] @ 544
	.field	56,16			; _jpec_qzr[35] @ 560
	.field	68,16			; _jpec_qzr[36] @ 576
	.field	109,16			; _jpec_qzr[37] @ 592
	.field	103,16			; _jpec_qzr[38] @ 608
	.field	77,16			; _jpec_qzr[39] @ 624
	.field	24,16			; _jpec_qzr[40] @ 640
	.field	35,16			; _jpec_qzr[41] @ 656
	.field	55,16			; _jpec_qzr[42] @ 672
	.field	64,16			; _jpec_qzr[43] @ 688
	.field	81,16			; _jpec_qzr[44] @ 704
	.field	104,16			; _jpec_qzr[45] @ 720
	.field	113,16			; _jpec_qzr[46] @ 736
	.field	92,16			; _jpec_qzr[47] @ 752
	.field	49,16			; _jpec_qzr[48] @ 768
	.field	64,16			; _jpec_qzr[49] @ 784
	.field	78,16			; _jpec_qzr[50] @ 800
	.field	87,16			; _jpec_qzr[51] @ 816
	.field	103,16			; _jpec_qzr[52] @ 832
	.field	121,16			; _jpec_qzr[53] @ 848
	.field	120,16			; _jpec_qzr[54] @ 864
	.field	101,16			; _jpec_qzr[55] @ 880
	.field	72,16			; _jpec_qzr[56] @ 896
	.field	92,16			; _jpec_qzr[57] @ 912
	.field	95,16			; _jpec_qzr[58] @ 928
	.field	98,16			; _jpec_qzr[59] @ 944
	.field	112,16			; _jpec_qzr[60] @ 960
	.field	100,16			; _jpec_qzr[61] @ 976
	.field	103,16			; _jpec_qzr[62] @ 992
	.field	99,16			; _jpec_qzr[63] @ 1008

$C$DW$1	.dwtag  DW_TAG_variable, DW_AT_name("jpec_qzr")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_jpec_qzr")
	.dwattr $C$DW$1, DW_AT_location[DW_OP_addr _jpec_qzr]
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$1, DW_AT_external
	.global	_jpec_dct
	.sect	".const:_jpec_dct"
	.clink
	.align	2
_jpec_dct:
	.xlong	0x3efb1466		; _jpec_dct[0] @ 0
	.xlong	0x3eec8366		; _jpec_dct[1] @ 32
	.xlong	0x3ed4da90		; _jpec_dct[2] @ 64
	.xlong	0x3eb50481		; _jpec_dct[3] @ 96
	.xlong	0x3e8e3a7e		; _jpec_dct[4] @ 128
	.xlong	0x3e43eea2		; _jpec_dct[5] @ 160
	.xlong	0x3dc7c84b		; _jpec_dct[6] @ 192

$C$DW$2	.dwtag  DW_TAG_variable, DW_AT_name("jpec_dct")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("_jpec_dct")
	.dwattr $C$DW$2, DW_AT_location[DW_OP_addr _jpec_dct]
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$2, DW_AT_external
	.global	_jpec_zz
	.sect	".const:_jpec_zz"
	.clink
	.align	2
_jpec_zz:
	.field	0,32			; _jpec_zz[0] @ 0
	.field	1,32			; _jpec_zz[1] @ 32
	.field	8,32			; _jpec_zz[2] @ 64
	.field	16,32			; _jpec_zz[3] @ 96
	.field	9,32			; _jpec_zz[4] @ 128
	.field	2,32			; _jpec_zz[5] @ 160
	.field	3,32			; _jpec_zz[6] @ 192
	.field	10,32			; _jpec_zz[7] @ 224
	.field	17,32			; _jpec_zz[8] @ 256
	.field	24,32			; _jpec_zz[9] @ 288
	.field	32,32			; _jpec_zz[10] @ 320
	.field	25,32			; _jpec_zz[11] @ 352
	.field	18,32			; _jpec_zz[12] @ 384
	.field	11,32			; _jpec_zz[13] @ 416
	.field	4,32			; _jpec_zz[14] @ 448
	.field	5,32			; _jpec_zz[15] @ 480
	.field	12,32			; _jpec_zz[16] @ 512
	.field	19,32			; _jpec_zz[17] @ 544
	.field	26,32			; _jpec_zz[18] @ 576
	.field	33,32			; _jpec_zz[19] @ 608
	.field	40,32			; _jpec_zz[20] @ 640
	.field	48,32			; _jpec_zz[21] @ 672
	.field	41,32			; _jpec_zz[22] @ 704
	.field	34,32			; _jpec_zz[23] @ 736
	.field	27,32			; _jpec_zz[24] @ 768
	.field	20,32			; _jpec_zz[25] @ 800
	.field	13,32			; _jpec_zz[26] @ 832
	.field	6,32			; _jpec_zz[27] @ 864
	.field	7,32			; _jpec_zz[28] @ 896
	.field	14,32			; _jpec_zz[29] @ 928
	.field	21,32			; _jpec_zz[30] @ 960
	.field	28,32			; _jpec_zz[31] @ 992
	.field	35,32			; _jpec_zz[32] @ 1024
	.field	42,32			; _jpec_zz[33] @ 1056
	.field	49,32			; _jpec_zz[34] @ 1088
	.field	56,32			; _jpec_zz[35] @ 1120
	.field	57,32			; _jpec_zz[36] @ 1152
	.field	50,32			; _jpec_zz[37] @ 1184
	.field	43,32			; _jpec_zz[38] @ 1216
	.field	36,32			; _jpec_zz[39] @ 1248
	.field	29,32			; _jpec_zz[40] @ 1280
	.field	22,32			; _jpec_zz[41] @ 1312
	.field	15,32			; _jpec_zz[42] @ 1344
	.field	23,32			; _jpec_zz[43] @ 1376
	.field	30,32			; _jpec_zz[44] @ 1408
	.field	37,32			; _jpec_zz[45] @ 1440
	.field	44,32			; _jpec_zz[46] @ 1472
	.field	51,32			; _jpec_zz[47] @ 1504
	.field	58,32			; _jpec_zz[48] @ 1536
	.field	59,32			; _jpec_zz[49] @ 1568
	.field	52,32			; _jpec_zz[50] @ 1600
	.field	45,32			; _jpec_zz[51] @ 1632
	.field	38,32			; _jpec_zz[52] @ 1664
	.field	31,32			; _jpec_zz[53] @ 1696
	.field	39,32			; _jpec_zz[54] @ 1728
	.field	46,32			; _jpec_zz[55] @ 1760
	.field	53,32			; _jpec_zz[56] @ 1792
	.field	60,32			; _jpec_zz[57] @ 1824
	.field	61,32			; _jpec_zz[58] @ 1856
	.field	54,32			; _jpec_zz[59] @ 1888
	.field	47,32			; _jpec_zz[60] @ 1920
	.field	55,32			; _jpec_zz[61] @ 1952
	.field	62,32			; _jpec_zz[62] @ 1984
	.field	63,32			; _jpec_zz[63] @ 2016

$C$DW$3	.dwtag  DW_TAG_variable, DW_AT_name("jpec_zz")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_jpec_zz")
	.dwattr $C$DW$3, DW_AT_location[DW_OP_addr _jpec_zz]
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$3, DW_AT_external
	.global	_jpec_dc_nodes
	.sect	".const:_jpec_dc_nodes"
	.clink
	.align	1
_jpec_dc_nodes:
	.field	0,16			; _jpec_dc_nodes[0] @ 0
	.field	0,16			; _jpec_dc_nodes[1] @ 16
	.field	1,16			; _jpec_dc_nodes[2] @ 32
	.field	5,16			; _jpec_dc_nodes[3] @ 48
	.field	1,16			; _jpec_dc_nodes[4] @ 64
	.field	1,16			; _jpec_dc_nodes[5] @ 80
	.field	1,16			; _jpec_dc_nodes[6] @ 96
	.field	1,16			; _jpec_dc_nodes[7] @ 112
	.field	1,16			; _jpec_dc_nodes[8] @ 128
	.field	1,16			; _jpec_dc_nodes[9] @ 144
	.field	0,16			; _jpec_dc_nodes[10] @ 160
	.field	0,16			; _jpec_dc_nodes[11] @ 176
	.field	0,16			; _jpec_dc_nodes[12] @ 192
	.field	0,16			; _jpec_dc_nodes[13] @ 208
	.field	0,16			; _jpec_dc_nodes[14] @ 224
	.field	0,16			; _jpec_dc_nodes[15] @ 240
	.field	0,16			; _jpec_dc_nodes[16] @ 256

$C$DW$4	.dwtag  DW_TAG_variable, DW_AT_name("jpec_dc_nodes")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_jpec_dc_nodes")
	.dwattr $C$DW$4, DW_AT_location[DW_OP_addr _jpec_dc_nodes]
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$4, DW_AT_external
	.global	_jpec_dc_nb_vals
	.sect	".const"
	.align	2
_jpec_dc_nb_vals:
	.field	12,32			; _jpec_dc_nb_vals @ 0

$C$DW$5	.dwtag  DW_TAG_variable, DW_AT_name("jpec_dc_nb_vals")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_jpec_dc_nb_vals")
	.dwattr $C$DW$5, DW_AT_location[DW_OP_addr _jpec_dc_nb_vals]
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$5, DW_AT_external
	.global	_jpec_dc_vals
	.sect	".const:_jpec_dc_vals"
	.clink
	.align	1
_jpec_dc_vals:
	.field	0,16			; _jpec_dc_vals[0] @ 0
	.field	1,16			; _jpec_dc_vals[1] @ 16
	.field	2,16			; _jpec_dc_vals[2] @ 32
	.field	3,16			; _jpec_dc_vals[3] @ 48
	.field	4,16			; _jpec_dc_vals[4] @ 64
	.field	5,16			; _jpec_dc_vals[5] @ 80
	.field	6,16			; _jpec_dc_vals[6] @ 96
	.field	7,16			; _jpec_dc_vals[7] @ 112
	.field	8,16			; _jpec_dc_vals[8] @ 128
	.field	9,16			; _jpec_dc_vals[9] @ 144
	.field	10,16			; _jpec_dc_vals[10] @ 160
	.field	11,16			; _jpec_dc_vals[11] @ 176

$C$DW$6	.dwtag  DW_TAG_variable, DW_AT_name("jpec_dc_vals")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_jpec_dc_vals")
	.dwattr $C$DW$6, DW_AT_location[DW_OP_addr _jpec_dc_vals]
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$6, DW_AT_external
	.global	_jpec_ac_nodes
	.sect	".const:_jpec_ac_nodes"
	.clink
	.align	1
_jpec_ac_nodes:
	.field	0,16			; _jpec_ac_nodes[0] @ 0
	.field	0,16			; _jpec_ac_nodes[1] @ 16
	.field	2,16			; _jpec_ac_nodes[2] @ 32
	.field	1,16			; _jpec_ac_nodes[3] @ 48
	.field	3,16			; _jpec_ac_nodes[4] @ 64
	.field	3,16			; _jpec_ac_nodes[5] @ 80
	.field	2,16			; _jpec_ac_nodes[6] @ 96
	.field	4,16			; _jpec_ac_nodes[7] @ 112
	.field	3,16			; _jpec_ac_nodes[8] @ 128
	.field	5,16			; _jpec_ac_nodes[9] @ 144
	.field	5,16			; _jpec_ac_nodes[10] @ 160
	.field	4,16			; _jpec_ac_nodes[11] @ 176
	.field	4,16			; _jpec_ac_nodes[12] @ 192
	.field	0,16			; _jpec_ac_nodes[13] @ 208
	.field	0,16			; _jpec_ac_nodes[14] @ 224
	.field	1,16			; _jpec_ac_nodes[15] @ 240
	.field	125,16			; _jpec_ac_nodes[16] @ 256

$C$DW$7	.dwtag  DW_TAG_variable, DW_AT_name("jpec_ac_nodes")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_jpec_ac_nodes")
	.dwattr $C$DW$7, DW_AT_location[DW_OP_addr _jpec_ac_nodes]
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$7, DW_AT_external
	.global	_jpec_ac_nb_vals
	.sect	".const"
	.align	2
_jpec_ac_nb_vals:
	.field	162,32			; _jpec_ac_nb_vals @ 0

$C$DW$8	.dwtag  DW_TAG_variable, DW_AT_name("jpec_ac_nb_vals")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_jpec_ac_nb_vals")
	.dwattr $C$DW$8, DW_AT_location[DW_OP_addr _jpec_ac_nb_vals]
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$8, DW_AT_external
	.global	_jpec_ac_vals
	.sect	".const:_jpec_ac_vals"
	.clink
	.align	1
_jpec_ac_vals:
	.field	1,16			; _jpec_ac_vals[0] @ 0
	.field	2,16			; _jpec_ac_vals[1] @ 16
	.field	3,16			; _jpec_ac_vals[2] @ 32
	.field	0,16			; _jpec_ac_vals[3] @ 48
	.field	4,16			; _jpec_ac_vals[4] @ 64
	.field	17,16			; _jpec_ac_vals[5] @ 80
	.field	5,16			; _jpec_ac_vals[6] @ 96
	.field	18,16			; _jpec_ac_vals[7] @ 112
	.field	33,16			; _jpec_ac_vals[8] @ 128
	.field	49,16			; _jpec_ac_vals[9] @ 144
	.field	65,16			; _jpec_ac_vals[10] @ 160
	.field	6,16			; _jpec_ac_vals[11] @ 176
	.field	19,16			; _jpec_ac_vals[12] @ 192
	.field	81,16			; _jpec_ac_vals[13] @ 208
	.field	97,16			; _jpec_ac_vals[14] @ 224
	.field	7,16			; _jpec_ac_vals[15] @ 240
	.field	34,16			; _jpec_ac_vals[16] @ 256
	.field	113,16			; _jpec_ac_vals[17] @ 272
	.field	20,16			; _jpec_ac_vals[18] @ 288
	.field	50,16			; _jpec_ac_vals[19] @ 304
	.field	129,16			; _jpec_ac_vals[20] @ 320
	.field	145,16			; _jpec_ac_vals[21] @ 336
	.field	161,16			; _jpec_ac_vals[22] @ 352
	.field	8,16			; _jpec_ac_vals[23] @ 368
	.field	35,16			; _jpec_ac_vals[24] @ 384
	.field	66,16			; _jpec_ac_vals[25] @ 400
	.field	177,16			; _jpec_ac_vals[26] @ 416
	.field	193,16			; _jpec_ac_vals[27] @ 432
	.field	21,16			; _jpec_ac_vals[28] @ 448
	.field	82,16			; _jpec_ac_vals[29] @ 464
	.field	209,16			; _jpec_ac_vals[30] @ 480
	.field	240,16			; _jpec_ac_vals[31] @ 496
	.field	36,16			; _jpec_ac_vals[32] @ 512
	.field	51,16			; _jpec_ac_vals[33] @ 528
	.field	98,16			; _jpec_ac_vals[34] @ 544
	.field	114,16			; _jpec_ac_vals[35] @ 560
	.field	130,16			; _jpec_ac_vals[36] @ 576
	.field	9,16			; _jpec_ac_vals[37] @ 592
	.field	10,16			; _jpec_ac_vals[38] @ 608
	.field	22,16			; _jpec_ac_vals[39] @ 624
	.field	23,16			; _jpec_ac_vals[40] @ 640
	.field	24,16			; _jpec_ac_vals[41] @ 656
	.field	25,16			; _jpec_ac_vals[42] @ 672
	.field	26,16			; _jpec_ac_vals[43] @ 688
	.field	37,16			; _jpec_ac_vals[44] @ 704
	.field	38,16			; _jpec_ac_vals[45] @ 720
	.field	39,16			; _jpec_ac_vals[46] @ 736
	.field	40,16			; _jpec_ac_vals[47] @ 752
	.field	41,16			; _jpec_ac_vals[48] @ 768
	.field	42,16			; _jpec_ac_vals[49] @ 784
	.field	52,16			; _jpec_ac_vals[50] @ 800
	.field	53,16			; _jpec_ac_vals[51] @ 816
	.field	54,16			; _jpec_ac_vals[52] @ 832
	.field	55,16			; _jpec_ac_vals[53] @ 848
	.field	56,16			; _jpec_ac_vals[54] @ 864
	.field	57,16			; _jpec_ac_vals[55] @ 880
	.field	58,16			; _jpec_ac_vals[56] @ 896
	.field	67,16			; _jpec_ac_vals[57] @ 912
	.field	68,16			; _jpec_ac_vals[58] @ 928
	.field	69,16			; _jpec_ac_vals[59] @ 944
	.field	70,16			; _jpec_ac_vals[60] @ 960
	.field	71,16			; _jpec_ac_vals[61] @ 976
	.field	72,16			; _jpec_ac_vals[62] @ 992
	.field	73,16			; _jpec_ac_vals[63] @ 1008
	.field	74,16			; _jpec_ac_vals[64] @ 1024
	.field	83,16			; _jpec_ac_vals[65] @ 1040
	.field	84,16			; _jpec_ac_vals[66] @ 1056
	.field	85,16			; _jpec_ac_vals[67] @ 1072
	.field	86,16			; _jpec_ac_vals[68] @ 1088
	.field	87,16			; _jpec_ac_vals[69] @ 1104
	.field	88,16			; _jpec_ac_vals[70] @ 1120
	.field	89,16			; _jpec_ac_vals[71] @ 1136
	.field	90,16			; _jpec_ac_vals[72] @ 1152
	.field	99,16			; _jpec_ac_vals[73] @ 1168
	.field	100,16			; _jpec_ac_vals[74] @ 1184
	.field	101,16			; _jpec_ac_vals[75] @ 1200
	.field	102,16			; _jpec_ac_vals[76] @ 1216
	.field	103,16			; _jpec_ac_vals[77] @ 1232
	.field	104,16			; _jpec_ac_vals[78] @ 1248
	.field	105,16			; _jpec_ac_vals[79] @ 1264
	.field	106,16			; _jpec_ac_vals[80] @ 1280
	.field	115,16			; _jpec_ac_vals[81] @ 1296
	.field	116,16			; _jpec_ac_vals[82] @ 1312
	.field	117,16			; _jpec_ac_vals[83] @ 1328
	.field	118,16			; _jpec_ac_vals[84] @ 1344
	.field	119,16			; _jpec_ac_vals[85] @ 1360
	.field	120,16			; _jpec_ac_vals[86] @ 1376
	.field	121,16			; _jpec_ac_vals[87] @ 1392
	.field	122,16			; _jpec_ac_vals[88] @ 1408
	.field	131,16			; _jpec_ac_vals[89] @ 1424
	.field	132,16			; _jpec_ac_vals[90] @ 1440
	.field	133,16			; _jpec_ac_vals[91] @ 1456
	.field	134,16			; _jpec_ac_vals[92] @ 1472
	.field	135,16			; _jpec_ac_vals[93] @ 1488
	.field	136,16			; _jpec_ac_vals[94] @ 1504
	.field	137,16			; _jpec_ac_vals[95] @ 1520
	.field	138,16			; _jpec_ac_vals[96] @ 1536
	.field	146,16			; _jpec_ac_vals[97] @ 1552
	.field	147,16			; _jpec_ac_vals[98] @ 1568
	.field	148,16			; _jpec_ac_vals[99] @ 1584
	.field	149,16			; _jpec_ac_vals[100] @ 1600
	.field	150,16			; _jpec_ac_vals[101] @ 1616
	.field	151,16			; _jpec_ac_vals[102] @ 1632
	.field	152,16			; _jpec_ac_vals[103] @ 1648
	.field	153,16			; _jpec_ac_vals[104] @ 1664
	.field	154,16			; _jpec_ac_vals[105] @ 1680
	.field	162,16			; _jpec_ac_vals[106] @ 1696
	.field	163,16			; _jpec_ac_vals[107] @ 1712
	.field	164,16			; _jpec_ac_vals[108] @ 1728
	.field	165,16			; _jpec_ac_vals[109] @ 1744
	.field	166,16			; _jpec_ac_vals[110] @ 1760
	.field	167,16			; _jpec_ac_vals[111] @ 1776
	.field	168,16			; _jpec_ac_vals[112] @ 1792
	.field	169,16			; _jpec_ac_vals[113] @ 1808
	.field	170,16			; _jpec_ac_vals[114] @ 1824
	.field	178,16			; _jpec_ac_vals[115] @ 1840
	.field	179,16			; _jpec_ac_vals[116] @ 1856
	.field	180,16			; _jpec_ac_vals[117] @ 1872
	.field	181,16			; _jpec_ac_vals[118] @ 1888
	.field	182,16			; _jpec_ac_vals[119] @ 1904
	.field	183,16			; _jpec_ac_vals[120] @ 1920
	.field	184,16			; _jpec_ac_vals[121] @ 1936
	.field	185,16			; _jpec_ac_vals[122] @ 1952
	.field	186,16			; _jpec_ac_vals[123] @ 1968
	.field	194,16			; _jpec_ac_vals[124] @ 1984
	.field	195,16			; _jpec_ac_vals[125] @ 2000
	.field	196,16			; _jpec_ac_vals[126] @ 2016
	.field	197,16			; _jpec_ac_vals[127] @ 2032
	.field	198,16			; _jpec_ac_vals[128] @ 2048
	.field	199,16			; _jpec_ac_vals[129] @ 2064
	.field	200,16			; _jpec_ac_vals[130] @ 2080
	.field	201,16			; _jpec_ac_vals[131] @ 2096
	.field	202,16			; _jpec_ac_vals[132] @ 2112
	.field	210,16			; _jpec_ac_vals[133] @ 2128
	.field	211,16			; _jpec_ac_vals[134] @ 2144
	.field	212,16			; _jpec_ac_vals[135] @ 2160
	.field	213,16			; _jpec_ac_vals[136] @ 2176
	.field	214,16			; _jpec_ac_vals[137] @ 2192
	.field	215,16			; _jpec_ac_vals[138] @ 2208
	.field	216,16			; _jpec_ac_vals[139] @ 2224
	.field	217,16			; _jpec_ac_vals[140] @ 2240
	.field	218,16			; _jpec_ac_vals[141] @ 2256
	.field	225,16			; _jpec_ac_vals[142] @ 2272
	.field	226,16			; _jpec_ac_vals[143] @ 2288
	.field	227,16			; _jpec_ac_vals[144] @ 2304
	.field	228,16			; _jpec_ac_vals[145] @ 2320
	.field	229,16			; _jpec_ac_vals[146] @ 2336
	.field	230,16			; _jpec_ac_vals[147] @ 2352
	.field	231,16			; _jpec_ac_vals[148] @ 2368
	.field	232,16			; _jpec_ac_vals[149] @ 2384
	.field	233,16			; _jpec_ac_vals[150] @ 2400
	.field	234,16			; _jpec_ac_vals[151] @ 2416
	.field	241,16			; _jpec_ac_vals[152] @ 2432
	.field	242,16			; _jpec_ac_vals[153] @ 2448
	.field	243,16			; _jpec_ac_vals[154] @ 2464
	.field	244,16			; _jpec_ac_vals[155] @ 2480
	.field	245,16			; _jpec_ac_vals[156] @ 2496
	.field	246,16			; _jpec_ac_vals[157] @ 2512
	.field	247,16			; _jpec_ac_vals[158] @ 2528
	.field	248,16			; _jpec_ac_vals[159] @ 2544
	.field	249,16			; _jpec_ac_vals[160] @ 2560
	.field	250,16			; _jpec_ac_vals[161] @ 2576

$C$DW$9	.dwtag  DW_TAG_variable, DW_AT_name("jpec_ac_vals")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_jpec_ac_vals")
	.dwattr $C$DW$9, DW_AT_location[DW_OP_addr _jpec_ac_vals]
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$9, DW_AT_external
	.global	_jpec_dc_len
	.sect	".const:_jpec_dc_len"
	.clink
	.align	1
_jpec_dc_len:
	.field	2,16			; _jpec_dc_len[0] @ 0
	.field	3,16			; _jpec_dc_len[1] @ 16
	.field	3,16			; _jpec_dc_len[2] @ 32
	.field	3,16			; _jpec_dc_len[3] @ 48
	.field	3,16			; _jpec_dc_len[4] @ 64
	.field	3,16			; _jpec_dc_len[5] @ 80
	.field	4,16			; _jpec_dc_len[6] @ 96
	.field	5,16			; _jpec_dc_len[7] @ 112
	.field	6,16			; _jpec_dc_len[8] @ 128
	.field	7,16			; _jpec_dc_len[9] @ 144
	.field	8,16			; _jpec_dc_len[10] @ 160
	.field	9,16			; _jpec_dc_len[11] @ 176

$C$DW$10	.dwtag  DW_TAG_variable, DW_AT_name("jpec_dc_len")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_jpec_dc_len")
	.dwattr $C$DW$10, DW_AT_location[DW_OP_addr _jpec_dc_len]
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$10, DW_AT_external
	.global	_jpec_dc_code
	.sect	".const:_jpec_dc_code"
	.clink
	.align	2
_jpec_dc_code:
	.field	0,32			; _jpec_dc_code[0] @ 0
	.field	2,32			; _jpec_dc_code[1] @ 32
	.field	3,32			; _jpec_dc_code[2] @ 64
	.field	4,32			; _jpec_dc_code[3] @ 96
	.field	5,32			; _jpec_dc_code[4] @ 128
	.field	6,32			; _jpec_dc_code[5] @ 160
	.field	14,32			; _jpec_dc_code[6] @ 192
	.field	30,32			; _jpec_dc_code[7] @ 224
	.field	62,32			; _jpec_dc_code[8] @ 256
	.field	126,32			; _jpec_dc_code[9] @ 288
	.field	254,32			; _jpec_dc_code[10] @ 320
	.field	510,32			; _jpec_dc_code[11] @ 352

$C$DW$11	.dwtag  DW_TAG_variable, DW_AT_name("jpec_dc_code")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_jpec_dc_code")
	.dwattr $C$DW$11, DW_AT_location[DW_OP_addr _jpec_dc_code]
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$11, DW_AT_external
	.global	_jpec_ac_len
	.sect	".const:_jpec_ac_len"
	.clink
	.align	1
_jpec_ac_len:
	.field	4,16			; _jpec_ac_len[0] @ 0
	.field	2,16			; _jpec_ac_len[1] @ 16
	.field	2,16			; _jpec_ac_len[2] @ 32
	.field	3,16			; _jpec_ac_len[3] @ 48
	.field	4,16			; _jpec_ac_len[4] @ 64
	.field	5,16			; _jpec_ac_len[5] @ 80
	.field	7,16			; _jpec_ac_len[6] @ 96
	.field	8,16			; _jpec_ac_len[7] @ 112
	.field	10,16			; _jpec_ac_len[8] @ 128
	.field	16,16			; _jpec_ac_len[9] @ 144
	.field	16,16			; _jpec_ac_len[10] @ 160
	.field	0,16			; _jpec_ac_len[11] @ 176
	.field	0,16			; _jpec_ac_len[12] @ 192
	.field	0,16			; _jpec_ac_len[13] @ 208
	.field	0,16			; _jpec_ac_len[14] @ 224
	.field	0,16			; _jpec_ac_len[15] @ 240
	.field	0,16			; _jpec_ac_len[16] @ 256
	.field	4,16			; _jpec_ac_len[17] @ 272
	.field	5,16			; _jpec_ac_len[18] @ 288
	.field	7,16			; _jpec_ac_len[19] @ 304
	.field	9,16			; _jpec_ac_len[20] @ 320
	.field	11,16			; _jpec_ac_len[21] @ 336
	.field	16,16			; _jpec_ac_len[22] @ 352
	.field	16,16			; _jpec_ac_len[23] @ 368
	.field	16,16			; _jpec_ac_len[24] @ 384
	.field	16,16			; _jpec_ac_len[25] @ 400
	.field	16,16			; _jpec_ac_len[26] @ 416
	.field	0,16			; _jpec_ac_len[27] @ 432
	.field	0,16			; _jpec_ac_len[28] @ 448
	.field	0,16			; _jpec_ac_len[29] @ 464
	.field	0,16			; _jpec_ac_len[30] @ 480
	.field	0,16			; _jpec_ac_len[31] @ 496
	.field	0,16			; _jpec_ac_len[32] @ 512
	.field	5,16			; _jpec_ac_len[33] @ 528
	.field	8,16			; _jpec_ac_len[34] @ 544
	.field	10,16			; _jpec_ac_len[35] @ 560
	.field	12,16			; _jpec_ac_len[36] @ 576
	.field	16,16			; _jpec_ac_len[37] @ 592
	.field	16,16			; _jpec_ac_len[38] @ 608
	.field	16,16			; _jpec_ac_len[39] @ 624
	.field	16,16			; _jpec_ac_len[40] @ 640
	.field	16,16			; _jpec_ac_len[41] @ 656
	.field	16,16			; _jpec_ac_len[42] @ 672
	.field	0,16			; _jpec_ac_len[43] @ 688
	.field	0,16			; _jpec_ac_len[44] @ 704
	.field	0,16			; _jpec_ac_len[45] @ 720
	.field	0,16			; _jpec_ac_len[46] @ 736
	.field	0,16			; _jpec_ac_len[47] @ 752
	.field	0,16			; _jpec_ac_len[48] @ 768
	.field	6,16			; _jpec_ac_len[49] @ 784
	.field	9,16			; _jpec_ac_len[50] @ 800
	.field	12,16			; _jpec_ac_len[51] @ 816
	.field	16,16			; _jpec_ac_len[52] @ 832
	.field	16,16			; _jpec_ac_len[53] @ 848
	.field	16,16			; _jpec_ac_len[54] @ 864
	.field	16,16			; _jpec_ac_len[55] @ 880
	.field	16,16			; _jpec_ac_len[56] @ 896
	.field	16,16			; _jpec_ac_len[57] @ 912
	.field	16,16			; _jpec_ac_len[58] @ 928
	.field	0,16			; _jpec_ac_len[59] @ 944
	.field	0,16			; _jpec_ac_len[60] @ 960
	.field	0,16			; _jpec_ac_len[61] @ 976
	.field	0,16			; _jpec_ac_len[62] @ 992
	.field	0,16			; _jpec_ac_len[63] @ 1008
	.field	0,16			; _jpec_ac_len[64] @ 1024
	.field	6,16			; _jpec_ac_len[65] @ 1040
	.field	10,16			; _jpec_ac_len[66] @ 1056
	.field	16,16			; _jpec_ac_len[67] @ 1072
	.field	16,16			; _jpec_ac_len[68] @ 1088
	.field	16,16			; _jpec_ac_len[69] @ 1104
	.field	16,16			; _jpec_ac_len[70] @ 1120
	.field	16,16			; _jpec_ac_len[71] @ 1136
	.field	16,16			; _jpec_ac_len[72] @ 1152
	.field	16,16			; _jpec_ac_len[73] @ 1168
	.field	16,16			; _jpec_ac_len[74] @ 1184
	.field	0,16			; _jpec_ac_len[75] @ 1200
	.field	0,16			; _jpec_ac_len[76] @ 1216
	.field	0,16			; _jpec_ac_len[77] @ 1232
	.field	0,16			; _jpec_ac_len[78] @ 1248
	.field	0,16			; _jpec_ac_len[79] @ 1264
	.field	0,16			; _jpec_ac_len[80] @ 1280
	.field	7,16			; _jpec_ac_len[81] @ 1296
	.field	11,16			; _jpec_ac_len[82] @ 1312
	.field	16,16			; _jpec_ac_len[83] @ 1328
	.field	16,16			; _jpec_ac_len[84] @ 1344
	.field	16,16			; _jpec_ac_len[85] @ 1360
	.field	16,16			; _jpec_ac_len[86] @ 1376
	.field	16,16			; _jpec_ac_len[87] @ 1392
	.field	16,16			; _jpec_ac_len[88] @ 1408
	.field	16,16			; _jpec_ac_len[89] @ 1424
	.field	16,16			; _jpec_ac_len[90] @ 1440
	.field	0,16			; _jpec_ac_len[91] @ 1456
	.field	0,16			; _jpec_ac_len[92] @ 1472
	.field	0,16			; _jpec_ac_len[93] @ 1488
	.field	0,16			; _jpec_ac_len[94] @ 1504
	.field	0,16			; _jpec_ac_len[95] @ 1520
	.field	0,16			; _jpec_ac_len[96] @ 1536
	.field	7,16			; _jpec_ac_len[97] @ 1552
	.field	12,16			; _jpec_ac_len[98] @ 1568
	.field	16,16			; _jpec_ac_len[99] @ 1584
	.field	16,16			; _jpec_ac_len[100] @ 1600
	.field	16,16			; _jpec_ac_len[101] @ 1616
	.field	16,16			; _jpec_ac_len[102] @ 1632
	.field	16,16			; _jpec_ac_len[103] @ 1648
	.field	16,16			; _jpec_ac_len[104] @ 1664
	.field	16,16			; _jpec_ac_len[105] @ 1680
	.field	16,16			; _jpec_ac_len[106] @ 1696
	.field	0,16			; _jpec_ac_len[107] @ 1712
	.field	0,16			; _jpec_ac_len[108] @ 1728
	.field	0,16			; _jpec_ac_len[109] @ 1744
	.field	0,16			; _jpec_ac_len[110] @ 1760
	.field	0,16			; _jpec_ac_len[111] @ 1776
	.field	0,16			; _jpec_ac_len[112] @ 1792
	.field	8,16			; _jpec_ac_len[113] @ 1808
	.field	12,16			; _jpec_ac_len[114] @ 1824
	.field	16,16			; _jpec_ac_len[115] @ 1840
	.field	16,16			; _jpec_ac_len[116] @ 1856
	.field	16,16			; _jpec_ac_len[117] @ 1872
	.field	16,16			; _jpec_ac_len[118] @ 1888
	.field	16,16			; _jpec_ac_len[119] @ 1904
	.field	16,16			; _jpec_ac_len[120] @ 1920
	.field	16,16			; _jpec_ac_len[121] @ 1936
	.field	16,16			; _jpec_ac_len[122] @ 1952
	.field	0,16			; _jpec_ac_len[123] @ 1968
	.field	0,16			; _jpec_ac_len[124] @ 1984
	.field	0,16			; _jpec_ac_len[125] @ 2000
	.field	0,16			; _jpec_ac_len[126] @ 2016
	.field	0,16			; _jpec_ac_len[127] @ 2032
	.field	0,16			; _jpec_ac_len[128] @ 2048
	.field	9,16			; _jpec_ac_len[129] @ 2064
	.field	15,16			; _jpec_ac_len[130] @ 2080
	.field	16,16			; _jpec_ac_len[131] @ 2096
	.field	16,16			; _jpec_ac_len[132] @ 2112
	.field	16,16			; _jpec_ac_len[133] @ 2128
	.field	16,16			; _jpec_ac_len[134] @ 2144
	.field	16,16			; _jpec_ac_len[135] @ 2160
	.field	16,16			; _jpec_ac_len[136] @ 2176
	.field	16,16			; _jpec_ac_len[137] @ 2192
	.field	16,16			; _jpec_ac_len[138] @ 2208
	.field	0,16			; _jpec_ac_len[139] @ 2224
	.field	0,16			; _jpec_ac_len[140] @ 2240
	.field	0,16			; _jpec_ac_len[141] @ 2256
	.field	0,16			; _jpec_ac_len[142] @ 2272
	.field	0,16			; _jpec_ac_len[143] @ 2288
	.field	0,16			; _jpec_ac_len[144] @ 2304
	.field	9,16			; _jpec_ac_len[145] @ 2320
	.field	16,16			; _jpec_ac_len[146] @ 2336
	.field	16,16			; _jpec_ac_len[147] @ 2352
	.field	16,16			; _jpec_ac_len[148] @ 2368
	.field	16,16			; _jpec_ac_len[149] @ 2384
	.field	16,16			; _jpec_ac_len[150] @ 2400
	.field	16,16			; _jpec_ac_len[151] @ 2416
	.field	16,16			; _jpec_ac_len[152] @ 2432
	.field	16,16			; _jpec_ac_len[153] @ 2448
	.field	16,16			; _jpec_ac_len[154] @ 2464
	.field	0,16			; _jpec_ac_len[155] @ 2480
	.field	0,16			; _jpec_ac_len[156] @ 2496
	.field	0,16			; _jpec_ac_len[157] @ 2512
	.field	0,16			; _jpec_ac_len[158] @ 2528
	.field	0,16			; _jpec_ac_len[159] @ 2544
	.field	0,16			; _jpec_ac_len[160] @ 2560
	.field	9,16			; _jpec_ac_len[161] @ 2576
	.field	16,16			; _jpec_ac_len[162] @ 2592
	.field	16,16			; _jpec_ac_len[163] @ 2608
	.field	16,16			; _jpec_ac_len[164] @ 2624
	.field	16,16			; _jpec_ac_len[165] @ 2640
	.field	16,16			; _jpec_ac_len[166] @ 2656
	.field	16,16			; _jpec_ac_len[167] @ 2672
	.field	16,16			; _jpec_ac_len[168] @ 2688
	.field	16,16			; _jpec_ac_len[169] @ 2704
	.field	16,16			; _jpec_ac_len[170] @ 2720
	.field	0,16			; _jpec_ac_len[171] @ 2736
	.field	0,16			; _jpec_ac_len[172] @ 2752
	.field	0,16			; _jpec_ac_len[173] @ 2768
	.field	0,16			; _jpec_ac_len[174] @ 2784
	.field	0,16			; _jpec_ac_len[175] @ 2800
	.field	0,16			; _jpec_ac_len[176] @ 2816
	.field	10,16			; _jpec_ac_len[177] @ 2832
	.field	16,16			; _jpec_ac_len[178] @ 2848
	.field	16,16			; _jpec_ac_len[179] @ 2864
	.field	16,16			; _jpec_ac_len[180] @ 2880
	.field	16,16			; _jpec_ac_len[181] @ 2896
	.field	16,16			; _jpec_ac_len[182] @ 2912
	.field	16,16			; _jpec_ac_len[183] @ 2928
	.field	16,16			; _jpec_ac_len[184] @ 2944
	.field	16,16			; _jpec_ac_len[185] @ 2960
	.field	16,16			; _jpec_ac_len[186] @ 2976
	.field	0,16			; _jpec_ac_len[187] @ 2992
	.field	0,16			; _jpec_ac_len[188] @ 3008
	.field	0,16			; _jpec_ac_len[189] @ 3024
	.field	0,16			; _jpec_ac_len[190] @ 3040
	.field	0,16			; _jpec_ac_len[191] @ 3056
	.field	0,16			; _jpec_ac_len[192] @ 3072
	.field	10,16			; _jpec_ac_len[193] @ 3088
	.field	16,16			; _jpec_ac_len[194] @ 3104
	.field	16,16			; _jpec_ac_len[195] @ 3120
	.field	16,16			; _jpec_ac_len[196] @ 3136
	.field	16,16			; _jpec_ac_len[197] @ 3152
	.field	16,16			; _jpec_ac_len[198] @ 3168
	.field	16,16			; _jpec_ac_len[199] @ 3184
	.field	16,16			; _jpec_ac_len[200] @ 3200
	.field	16,16			; _jpec_ac_len[201] @ 3216
	.field	16,16			; _jpec_ac_len[202] @ 3232
	.field	0,16			; _jpec_ac_len[203] @ 3248
	.field	0,16			; _jpec_ac_len[204] @ 3264
	.field	0,16			; _jpec_ac_len[205] @ 3280
	.field	0,16			; _jpec_ac_len[206] @ 3296
	.field	0,16			; _jpec_ac_len[207] @ 3312
	.field	0,16			; _jpec_ac_len[208] @ 3328
	.field	11,16			; _jpec_ac_len[209] @ 3344
	.field	16,16			; _jpec_ac_len[210] @ 3360
	.field	16,16			; _jpec_ac_len[211] @ 3376
	.field	16,16			; _jpec_ac_len[212] @ 3392
	.field	16,16			; _jpec_ac_len[213] @ 3408
	.field	16,16			; _jpec_ac_len[214] @ 3424
	.field	16,16			; _jpec_ac_len[215] @ 3440
	.field	16,16			; _jpec_ac_len[216] @ 3456
	.field	16,16			; _jpec_ac_len[217] @ 3472
	.field	16,16			; _jpec_ac_len[218] @ 3488
	.field	0,16			; _jpec_ac_len[219] @ 3504
	.field	0,16			; _jpec_ac_len[220] @ 3520
	.field	0,16			; _jpec_ac_len[221] @ 3536
	.field	0,16			; _jpec_ac_len[222] @ 3552
	.field	0,16			; _jpec_ac_len[223] @ 3568
	.field	0,16			; _jpec_ac_len[224] @ 3584
	.field	16,16			; _jpec_ac_len[225] @ 3600
	.field	16,16			; _jpec_ac_len[226] @ 3616
	.field	16,16			; _jpec_ac_len[227] @ 3632
	.field	16,16			; _jpec_ac_len[228] @ 3648
	.field	16,16			; _jpec_ac_len[229] @ 3664
	.field	16,16			; _jpec_ac_len[230] @ 3680
	.field	16,16			; _jpec_ac_len[231] @ 3696
	.field	16,16			; _jpec_ac_len[232] @ 3712
	.field	16,16			; _jpec_ac_len[233] @ 3728
	.field	16,16			; _jpec_ac_len[234] @ 3744
	.field	0,16			; _jpec_ac_len[235] @ 3760
	.field	0,16			; _jpec_ac_len[236] @ 3776
	.field	0,16			; _jpec_ac_len[237] @ 3792
	.field	0,16			; _jpec_ac_len[238] @ 3808
	.field	0,16			; _jpec_ac_len[239] @ 3824
	.field	11,16			; _jpec_ac_len[240] @ 3840
	.field	16,16			; _jpec_ac_len[241] @ 3856
	.field	16,16			; _jpec_ac_len[242] @ 3872
	.field	16,16			; _jpec_ac_len[243] @ 3888
	.field	16,16			; _jpec_ac_len[244] @ 3904
	.field	16,16			; _jpec_ac_len[245] @ 3920
	.field	16,16			; _jpec_ac_len[246] @ 3936
	.field	16,16			; _jpec_ac_len[247] @ 3952
	.field	16,16			; _jpec_ac_len[248] @ 3968
	.field	16,16			; _jpec_ac_len[249] @ 3984
	.field	16,16			; _jpec_ac_len[250] @ 4000
	.field	0,16			; _jpec_ac_len[251] @ 4016
	.field	0,16			; _jpec_ac_len[252] @ 4032
	.field	0,16			; _jpec_ac_len[253] @ 4048
	.field	0,16			; _jpec_ac_len[254] @ 4064
	.field	0,16			; _jpec_ac_len[255] @ 4080

$C$DW$12	.dwtag  DW_TAG_variable, DW_AT_name("jpec_ac_len")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_jpec_ac_len")
	.dwattr $C$DW$12, DW_AT_location[DW_OP_addr _jpec_ac_len]
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$12, DW_AT_external
	.global	_jpec_ac_code
	.sect	".const:_jpec_ac_code"
	.clink
	.align	2
_jpec_ac_code:
	.field	10,32			; _jpec_ac_code[0] @ 0
	.field	0,32			; _jpec_ac_code[1] @ 32
	.field	1,32			; _jpec_ac_code[2] @ 64
	.field	4,32			; _jpec_ac_code[3] @ 96
	.field	11,32			; _jpec_ac_code[4] @ 128
	.field	26,32			; _jpec_ac_code[5] @ 160
	.field	120,32			; _jpec_ac_code[6] @ 192
	.field	248,32			; _jpec_ac_code[7] @ 224
	.field	1014,32			; _jpec_ac_code[8] @ 256
	.field	65410,32			; _jpec_ac_code[9] @ 288
	.field	65411,32			; _jpec_ac_code[10] @ 320
	.field	0,32			; _jpec_ac_code[11] @ 352
	.field	0,32			; _jpec_ac_code[12] @ 384
	.field	0,32			; _jpec_ac_code[13] @ 416
	.field	0,32			; _jpec_ac_code[14] @ 448
	.field	0,32			; _jpec_ac_code[15] @ 480
	.field	0,32			; _jpec_ac_code[16] @ 512
	.field	12,32			; _jpec_ac_code[17] @ 544
	.field	27,32			; _jpec_ac_code[18] @ 576
	.field	121,32			; _jpec_ac_code[19] @ 608
	.field	502,32			; _jpec_ac_code[20] @ 640
	.field	2038,32			; _jpec_ac_code[21] @ 672
	.field	65412,32			; _jpec_ac_code[22] @ 704
	.field	65413,32			; _jpec_ac_code[23] @ 736
	.field	65414,32			; _jpec_ac_code[24] @ 768
	.field	65415,32			; _jpec_ac_code[25] @ 800
	.field	65416,32			; _jpec_ac_code[26] @ 832
	.field	0,32			; _jpec_ac_code[27] @ 864
	.field	0,32			; _jpec_ac_code[28] @ 896
	.field	0,32			; _jpec_ac_code[29] @ 928
	.field	0,32			; _jpec_ac_code[30] @ 960
	.field	0,32			; _jpec_ac_code[31] @ 992
	.field	0,32			; _jpec_ac_code[32] @ 1024
	.field	28,32			; _jpec_ac_code[33] @ 1056
	.field	249,32			; _jpec_ac_code[34] @ 1088
	.field	1015,32			; _jpec_ac_code[35] @ 1120
	.field	4084,32			; _jpec_ac_code[36] @ 1152
	.field	65417,32			; _jpec_ac_code[37] @ 1184
	.field	65418,32			; _jpec_ac_code[38] @ 1216
	.field	65419,32			; _jpec_ac_code[39] @ 1248
	.field	65420,32			; _jpec_ac_code[40] @ 1280
	.field	65421,32			; _jpec_ac_code[41] @ 1312
	.field	65422,32			; _jpec_ac_code[42] @ 1344
	.field	0,32			; _jpec_ac_code[43] @ 1376
	.field	0,32			; _jpec_ac_code[44] @ 1408
	.field	0,32			; _jpec_ac_code[45] @ 1440
	.field	0,32			; _jpec_ac_code[46] @ 1472
	.field	0,32			; _jpec_ac_code[47] @ 1504
	.field	0,32			; _jpec_ac_code[48] @ 1536
	.field	58,32			; _jpec_ac_code[49] @ 1568
	.field	503,32			; _jpec_ac_code[50] @ 1600
	.field	4085,32			; _jpec_ac_code[51] @ 1632
	.field	65423,32			; _jpec_ac_code[52] @ 1664
	.field	65424,32			; _jpec_ac_code[53] @ 1696
	.field	65425,32			; _jpec_ac_code[54] @ 1728
	.field	65426,32			; _jpec_ac_code[55] @ 1760
	.field	65427,32			; _jpec_ac_code[56] @ 1792
	.field	65428,32			; _jpec_ac_code[57] @ 1824
	.field	65429,32			; _jpec_ac_code[58] @ 1856
	.field	0,32			; _jpec_ac_code[59] @ 1888
	.field	0,32			; _jpec_ac_code[60] @ 1920
	.field	0,32			; _jpec_ac_code[61] @ 1952
	.field	0,32			; _jpec_ac_code[62] @ 1984
	.field	0,32			; _jpec_ac_code[63] @ 2016
	.field	0,32			; _jpec_ac_code[64] @ 2048
	.field	59,32			; _jpec_ac_code[65] @ 2080
	.field	1016,32			; _jpec_ac_code[66] @ 2112
	.field	65430,32			; _jpec_ac_code[67] @ 2144
	.field	65431,32			; _jpec_ac_code[68] @ 2176
	.field	65432,32			; _jpec_ac_code[69] @ 2208
	.field	65433,32			; _jpec_ac_code[70] @ 2240
	.field	65434,32			; _jpec_ac_code[71] @ 2272
	.field	65435,32			; _jpec_ac_code[72] @ 2304
	.field	65436,32			; _jpec_ac_code[73] @ 2336
	.field	65437,32			; _jpec_ac_code[74] @ 2368
	.field	0,32			; _jpec_ac_code[75] @ 2400
	.field	0,32			; _jpec_ac_code[76] @ 2432
	.field	0,32			; _jpec_ac_code[77] @ 2464
	.field	0,32			; _jpec_ac_code[78] @ 2496
	.field	0,32			; _jpec_ac_code[79] @ 2528
	.field	0,32			; _jpec_ac_code[80] @ 2560
	.field	122,32			; _jpec_ac_code[81] @ 2592
	.field	2039,32			; _jpec_ac_code[82] @ 2624
	.field	65438,32			; _jpec_ac_code[83] @ 2656
	.field	65439,32			; _jpec_ac_code[84] @ 2688
	.field	65440,32			; _jpec_ac_code[85] @ 2720
	.field	65441,32			; _jpec_ac_code[86] @ 2752
	.field	65442,32			; _jpec_ac_code[87] @ 2784
	.field	65443,32			; _jpec_ac_code[88] @ 2816
	.field	65444,32			; _jpec_ac_code[89] @ 2848
	.field	65445,32			; _jpec_ac_code[90] @ 2880
	.field	0,32			; _jpec_ac_code[91] @ 2912
	.field	0,32			; _jpec_ac_code[92] @ 2944
	.field	0,32			; _jpec_ac_code[93] @ 2976
	.field	0,32			; _jpec_ac_code[94] @ 3008
	.field	0,32			; _jpec_ac_code[95] @ 3040
	.field	0,32			; _jpec_ac_code[96] @ 3072
	.field	123,32			; _jpec_ac_code[97] @ 3104
	.field	4086,32			; _jpec_ac_code[98] @ 3136
	.field	65446,32			; _jpec_ac_code[99] @ 3168
	.field	65447,32			; _jpec_ac_code[100] @ 3200
	.field	65448,32			; _jpec_ac_code[101] @ 3232
	.field	65449,32			; _jpec_ac_code[102] @ 3264
	.field	65450,32			; _jpec_ac_code[103] @ 3296
	.field	65451,32			; _jpec_ac_code[104] @ 3328
	.field	65452,32			; _jpec_ac_code[105] @ 3360
	.field	65453,32			; _jpec_ac_code[106] @ 3392
	.field	0,32			; _jpec_ac_code[107] @ 3424
	.field	0,32			; _jpec_ac_code[108] @ 3456
	.field	0,32			; _jpec_ac_code[109] @ 3488
	.field	0,32			; _jpec_ac_code[110] @ 3520
	.field	0,32			; _jpec_ac_code[111] @ 3552
	.field	0,32			; _jpec_ac_code[112] @ 3584
	.field	250,32			; _jpec_ac_code[113] @ 3616
	.field	4087,32			; _jpec_ac_code[114] @ 3648
	.field	65454,32			; _jpec_ac_code[115] @ 3680
	.field	65455,32			; _jpec_ac_code[116] @ 3712
	.field	65456,32			; _jpec_ac_code[117] @ 3744
	.field	65457,32			; _jpec_ac_code[118] @ 3776
	.field	65458,32			; _jpec_ac_code[119] @ 3808
	.field	65459,32			; _jpec_ac_code[120] @ 3840
	.field	65460,32			; _jpec_ac_code[121] @ 3872
	.field	65461,32			; _jpec_ac_code[122] @ 3904
	.field	0,32			; _jpec_ac_code[123] @ 3936
	.field	0,32			; _jpec_ac_code[124] @ 3968
	.field	0,32			; _jpec_ac_code[125] @ 4000
	.field	0,32			; _jpec_ac_code[126] @ 4032
	.field	0,32			; _jpec_ac_code[127] @ 4064
	.field	0,32			; _jpec_ac_code[128] @ 4096
	.field	504,32			; _jpec_ac_code[129] @ 4128
	.field	32704,32			; _jpec_ac_code[130] @ 4160
	.field	65462,32			; _jpec_ac_code[131] @ 4192
	.field	65463,32			; _jpec_ac_code[132] @ 4224
	.field	65464,32			; _jpec_ac_code[133] @ 4256
	.field	65465,32			; _jpec_ac_code[134] @ 4288
	.field	65466,32			; _jpec_ac_code[135] @ 4320
	.field	65467,32			; _jpec_ac_code[136] @ 4352
	.field	65468,32			; _jpec_ac_code[137] @ 4384
	.field	65469,32			; _jpec_ac_code[138] @ 4416
	.field	0,32			; _jpec_ac_code[139] @ 4448
	.field	0,32			; _jpec_ac_code[140] @ 4480
	.field	0,32			; _jpec_ac_code[141] @ 4512
	.field	0,32			; _jpec_ac_code[142] @ 4544
	.field	0,32			; _jpec_ac_code[143] @ 4576
	.field	0,32			; _jpec_ac_code[144] @ 4608
	.field	505,32			; _jpec_ac_code[145] @ 4640
	.field	65470,32			; _jpec_ac_code[146] @ 4672
	.field	65471,32			; _jpec_ac_code[147] @ 4704
	.field	65472,32			; _jpec_ac_code[148] @ 4736
	.field	65473,32			; _jpec_ac_code[149] @ 4768
	.field	65474,32			; _jpec_ac_code[150] @ 4800
	.field	65475,32			; _jpec_ac_code[151] @ 4832
	.field	65476,32			; _jpec_ac_code[152] @ 4864
	.field	65477,32			; _jpec_ac_code[153] @ 4896
	.field	65478,32			; _jpec_ac_code[154] @ 4928
	.field	0,32			; _jpec_ac_code[155] @ 4960
	.field	0,32			; _jpec_ac_code[156] @ 4992
	.field	0,32			; _jpec_ac_code[157] @ 5024
	.field	0,32			; _jpec_ac_code[158] @ 5056
	.field	0,32			; _jpec_ac_code[159] @ 5088
	.field	0,32			; _jpec_ac_code[160] @ 5120
	.field	506,32			; _jpec_ac_code[161] @ 5152
	.field	65479,32			; _jpec_ac_code[162] @ 5184
	.field	65480,32			; _jpec_ac_code[163] @ 5216
	.field	65481,32			; _jpec_ac_code[164] @ 5248
	.field	65482,32			; _jpec_ac_code[165] @ 5280
	.field	65483,32			; _jpec_ac_code[166] @ 5312
	.field	65484,32			; _jpec_ac_code[167] @ 5344
	.field	65485,32			; _jpec_ac_code[168] @ 5376
	.field	65486,32			; _jpec_ac_code[169] @ 5408
	.field	65487,32			; _jpec_ac_code[170] @ 5440
	.field	0,32			; _jpec_ac_code[171] @ 5472
	.field	0,32			; _jpec_ac_code[172] @ 5504
	.field	0,32			; _jpec_ac_code[173] @ 5536
	.field	0,32			; _jpec_ac_code[174] @ 5568
	.field	0,32			; _jpec_ac_code[175] @ 5600
	.field	0,32			; _jpec_ac_code[176] @ 5632
	.field	1017,32			; _jpec_ac_code[177] @ 5664
	.field	65488,32			; _jpec_ac_code[178] @ 5696
	.field	65489,32			; _jpec_ac_code[179] @ 5728
	.field	65490,32			; _jpec_ac_code[180] @ 5760
	.field	65491,32			; _jpec_ac_code[181] @ 5792
	.field	65492,32			; _jpec_ac_code[182] @ 5824
	.field	65493,32			; _jpec_ac_code[183] @ 5856
	.field	65494,32			; _jpec_ac_code[184] @ 5888
	.field	65495,32			; _jpec_ac_code[185] @ 5920
	.field	65496,32			; _jpec_ac_code[186] @ 5952
	.field	0,32			; _jpec_ac_code[187] @ 5984
	.field	0,32			; _jpec_ac_code[188] @ 6016
	.field	0,32			; _jpec_ac_code[189] @ 6048
	.field	0,32			; _jpec_ac_code[190] @ 6080
	.field	0,32			; _jpec_ac_code[191] @ 6112
	.field	0,32			; _jpec_ac_code[192] @ 6144
	.field	1018,32			; _jpec_ac_code[193] @ 6176
	.field	65497,32			; _jpec_ac_code[194] @ 6208
	.field	65498,32			; _jpec_ac_code[195] @ 6240
	.field	65499,32			; _jpec_ac_code[196] @ 6272
	.field	65500,32			; _jpec_ac_code[197] @ 6304
	.field	65501,32			; _jpec_ac_code[198] @ 6336
	.field	65502,32			; _jpec_ac_code[199] @ 6368
	.field	65503,32			; _jpec_ac_code[200] @ 6400
	.field	65504,32			; _jpec_ac_code[201] @ 6432
	.field	65505,32			; _jpec_ac_code[202] @ 6464
	.field	0,32			; _jpec_ac_code[203] @ 6496
	.field	0,32			; _jpec_ac_code[204] @ 6528
	.field	0,32			; _jpec_ac_code[205] @ 6560
	.field	0,32			; _jpec_ac_code[206] @ 6592
	.field	0,32			; _jpec_ac_code[207] @ 6624
	.field	0,32			; _jpec_ac_code[208] @ 6656
	.field	2040,32			; _jpec_ac_code[209] @ 6688
	.field	65506,32			; _jpec_ac_code[210] @ 6720
	.field	65507,32			; _jpec_ac_code[211] @ 6752
	.field	65508,32			; _jpec_ac_code[212] @ 6784
	.field	65509,32			; _jpec_ac_code[213] @ 6816
	.field	65510,32			; _jpec_ac_code[214] @ 6848
	.field	65511,32			; _jpec_ac_code[215] @ 6880
	.field	65512,32			; _jpec_ac_code[216] @ 6912
	.field	65513,32			; _jpec_ac_code[217] @ 6944
	.field	65514,32			; _jpec_ac_code[218] @ 6976
	.field	0,32			; _jpec_ac_code[219] @ 7008
	.field	0,32			; _jpec_ac_code[220] @ 7040
	.field	0,32			; _jpec_ac_code[221] @ 7072
	.field	0,32			; _jpec_ac_code[222] @ 7104
	.field	0,32			; _jpec_ac_code[223] @ 7136
	.field	0,32			; _jpec_ac_code[224] @ 7168
	.field	65515,32			; _jpec_ac_code[225] @ 7200
	.field	65516,32			; _jpec_ac_code[226] @ 7232
	.field	65517,32			; _jpec_ac_code[227] @ 7264
	.field	65518,32			; _jpec_ac_code[228] @ 7296
	.field	65519,32			; _jpec_ac_code[229] @ 7328
	.field	65520,32			; _jpec_ac_code[230] @ 7360
	.field	65521,32			; _jpec_ac_code[231] @ 7392
	.field	65522,32			; _jpec_ac_code[232] @ 7424
	.field	65523,32			; _jpec_ac_code[233] @ 7456
	.field	65524,32			; _jpec_ac_code[234] @ 7488
	.field	0,32			; _jpec_ac_code[235] @ 7520
	.field	0,32			; _jpec_ac_code[236] @ 7552
	.field	0,32			; _jpec_ac_code[237] @ 7584
	.field	0,32			; _jpec_ac_code[238] @ 7616
	.field	0,32			; _jpec_ac_code[239] @ 7648
	.field	2041,32			; _jpec_ac_code[240] @ 7680
	.field	65525,32			; _jpec_ac_code[241] @ 7712
	.field	65526,32			; _jpec_ac_code[242] @ 7744
	.field	65527,32			; _jpec_ac_code[243] @ 7776
	.field	65528,32			; _jpec_ac_code[244] @ 7808
	.field	65529,32			; _jpec_ac_code[245] @ 7840
	.field	65530,32			; _jpec_ac_code[246] @ 7872
	.field	65531,32			; _jpec_ac_code[247] @ 7904
	.field	65532,32			; _jpec_ac_code[248] @ 7936
	.field	65533,32			; _jpec_ac_code[249] @ 7968
	.field	65534,32			; _jpec_ac_code[250] @ 8000
	.field	0,32			; _jpec_ac_code[251] @ 8032
	.field	0,32			; _jpec_ac_code[252] @ 8064
	.field	0,32			; _jpec_ac_code[253] @ 8096
	.field	0,32			; _jpec_ac_code[254] @ 8128
	.field	0,32			; _jpec_ac_code[255] @ 8160

$C$DW$13	.dwtag  DW_TAG_variable, DW_AT_name("jpec_ac_code")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_jpec_ac_code")
	.dwattr $C$DW$13, DW_AT_location[DW_OP_addr _jpec_ac_code]
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$13, DW_AT_external
;	/home/santiago/Research/Ti/C55_Tools/acp55 -@/tmp/99620f0gt2y 

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************
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
$C$DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("int16_t")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
$C$DW$14	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$19)
$C$DW$T$20	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$14)

$C$DW$T$21	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x100)
$C$DW$15	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$15, DW_AT_upper_bound(0xff)
	.dwendtag $C$DW$T$21

$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)
$C$DW$T$22	.dwtag  DW_TAG_typedef, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
$C$DW$16	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$22)
$C$DW$T$23	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$16)

$C$DW$T$24	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x40)
$C$DW$17	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$17, DW_AT_upper_bound(0x3f)
	.dwendtag $C$DW$T$24


$C$DW$T$25	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$25, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x11)
$C$DW$18	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$18, DW_AT_upper_bound(0x10)
	.dwendtag $C$DW$T$25


$C$DW$T$26	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x0c)
$C$DW$19	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$19, DW_AT_upper_bound(0x0b)
	.dwendtag $C$DW$T$26


$C$DW$T$27	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$27, DW_AT_byte_size(0xa2)
$C$DW$20	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$20, DW_AT_upper_bound(0xa1)
	.dwendtag $C$DW$T$27

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)
$C$DW$T$28	.dwtag  DW_TAG_typedef, DW_AT_name("int32_t")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C)
$C$DW$21	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$28)
$C$DW$T$29	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$21)

$C$DW$T$30	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$30, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x80)
$C$DW$22	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$22, DW_AT_upper_bound(0x3f)
	.dwendtag $C$DW$T$30


$C$DW$T$31	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$31, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x18)
$C$DW$23	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$23, DW_AT_upper_bound(0x0b)
	.dwendtag $C$DW$T$31


$C$DW$T$32	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$32, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x200)
$C$DW$24	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$24, DW_AT_upper_bound(0xff)
	.dwendtag $C$DW$T$32

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
$C$DW$25	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$16)
$C$DW$T$33	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$25)

$C$DW$T$34	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x0e)
$C$DW$26	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$26, DW_AT_upper_bound(0x06)
	.dwendtag $C$DW$T$34

$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x02)
$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x02)
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
	.dwcfi	undefined, 14
	.dwcfi	undefined, 15
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
	.dwcfi	undefined, 26
	.dwcfi	undefined, 27
	.dwcfi	undefined, 28
	.dwcfi	undefined, 29
	.dwcfi	undefined, 30
	.dwcfi	undefined, 31
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

$C$DW$27	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$27, DW_AT_location[DW_OP_reg0]
$C$DW$28	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$28, DW_AT_location[DW_OP_reg1]
$C$DW$29	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$29, DW_AT_location[DW_OP_reg2]
$C$DW$30	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$30, DW_AT_location[DW_OP_reg3]
$C$DW$31	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$31, DW_AT_location[DW_OP_reg4]
$C$DW$32	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$32, DW_AT_location[DW_OP_reg5]
$C$DW$33	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$33, DW_AT_location[DW_OP_reg6]
$C$DW$34	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$34, DW_AT_location[DW_OP_reg7]
$C$DW$35	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$35, DW_AT_location[DW_OP_reg8]
$C$DW$36	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$36, DW_AT_location[DW_OP_reg9]
$C$DW$37	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$37, DW_AT_location[DW_OP_reg10]
$C$DW$38	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$38, DW_AT_location[DW_OP_reg11]
$C$DW$39	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$39, DW_AT_location[DW_OP_reg12]
$C$DW$40	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$40, DW_AT_location[DW_OP_reg13]
$C$DW$41	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$41, DW_AT_location[DW_OP_reg14]
$C$DW$42	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$42, DW_AT_location[DW_OP_reg15]
$C$DW$43	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$43, DW_AT_location[DW_OP_reg16]
$C$DW$44	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$44, DW_AT_location[DW_OP_reg17]
$C$DW$45	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$45, DW_AT_location[DW_OP_reg18]
$C$DW$46	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$46, DW_AT_location[DW_OP_reg19]
$C$DW$47	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$47, DW_AT_location[DW_OP_reg20]
$C$DW$48	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$48, DW_AT_location[DW_OP_reg21]
$C$DW$49	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$49, DW_AT_location[DW_OP_reg22]
$C$DW$50	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$50, DW_AT_location[DW_OP_reg23]
$C$DW$51	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$51, DW_AT_location[DW_OP_reg24]
$C$DW$52	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$52, DW_AT_location[DW_OP_reg25]
$C$DW$53	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$53, DW_AT_location[DW_OP_reg26]
$C$DW$54	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$54, DW_AT_location[DW_OP_reg27]
$C$DW$55	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$55, DW_AT_location[DW_OP_reg28]
$C$DW$56	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$56, DW_AT_location[DW_OP_reg29]
$C$DW$57	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$57, DW_AT_location[DW_OP_reg30]
$C$DW$58	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$58, DW_AT_location[DW_OP_reg31]
$C$DW$59	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$59, DW_AT_location[DW_OP_regx 0x20]
$C$DW$60	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$60, DW_AT_location[DW_OP_regx 0x21]
$C$DW$61	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$61, DW_AT_location[DW_OP_regx 0x22]
$C$DW$62	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$62, DW_AT_location[DW_OP_regx 0x23]
$C$DW$63	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$63, DW_AT_location[DW_OP_regx 0x24]
$C$DW$64	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$64, DW_AT_location[DW_OP_regx 0x25]
$C$DW$65	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$65, DW_AT_location[DW_OP_regx 0x26]
$C$DW$66	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$66, DW_AT_location[DW_OP_regx 0x27]
$C$DW$67	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$67, DW_AT_location[DW_OP_regx 0x28]
$C$DW$68	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$68, DW_AT_location[DW_OP_regx 0x29]
$C$DW$69	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$69, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$70	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$70, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$71	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$71, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$72	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$72, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$73	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$73, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$74	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$74, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$75	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$75, DW_AT_location[DW_OP_regx 0x30]
$C$DW$76	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$76, DW_AT_location[DW_OP_regx 0x31]
$C$DW$77	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$77, DW_AT_location[DW_OP_regx 0x32]
$C$DW$78	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$78, DW_AT_location[DW_OP_regx 0x33]
$C$DW$79	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$79, DW_AT_location[DW_OP_regx 0x34]
$C$DW$80	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$80, DW_AT_location[DW_OP_regx 0x35]
$C$DW$81	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$81, DW_AT_location[DW_OP_regx 0x36]
$C$DW$82	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$82, DW_AT_location[DW_OP_regx 0x37]
$C$DW$83	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$83, DW_AT_location[DW_OP_regx 0x38]
$C$DW$84	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$84, DW_AT_location[DW_OP_regx 0x39]
$C$DW$85	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$85, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$86	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$86, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$87	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$87, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$88	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$88, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$89	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$89, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$90	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$90, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$91	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$91, DW_AT_location[DW_OP_regx 0x40]
$C$DW$92	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$92, DW_AT_location[DW_OP_regx 0x41]
$C$DW$93	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$93, DW_AT_location[DW_OP_regx 0x42]
$C$DW$94	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$94, DW_AT_location[DW_OP_regx 0x43]
$C$DW$95	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$95, DW_AT_location[DW_OP_regx 0x44]
$C$DW$96	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$96, DW_AT_location[DW_OP_regx 0x45]
$C$DW$97	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$97, DW_AT_location[DW_OP_regx 0x46]
$C$DW$98	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$98, DW_AT_location[DW_OP_regx 0x47]
$C$DW$99	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$99, DW_AT_location[DW_OP_regx 0x48]
$C$DW$100	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$100, DW_AT_location[DW_OP_regx 0x49]
$C$DW$101	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$101, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$102	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$102, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$103	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$103, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$104	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$104, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$105	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$105, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$106	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$106, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$107	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$107, DW_AT_location[DW_OP_regx 0x50]
$C$DW$108	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$108, DW_AT_location[DW_OP_regx 0x51]
$C$DW$109	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$109, DW_AT_location[DW_OP_regx 0x52]
$C$DW$110	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$110, DW_AT_location[DW_OP_regx 0x53]
$C$DW$111	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$111, DW_AT_location[DW_OP_regx 0x54]
$C$DW$112	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$112, DW_AT_location[DW_OP_regx 0x55]
$C$DW$113	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$113, DW_AT_location[DW_OP_regx 0x56]
$C$DW$114	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$114, DW_AT_location[DW_OP_regx 0x57]
$C$DW$115	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$115, DW_AT_location[DW_OP_regx 0x58]
$C$DW$116	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$116, DW_AT_location[DW_OP_regx 0x59]
$C$DW$117	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$117, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$118	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$118, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

