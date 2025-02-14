;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                        Unix v4.4.1 *
;* Date/Time created: Thu Feb  6 12:56:22 2025                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("./mp3_encode.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen Unix v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode")
;******************************************************************************
;* CINIT RECORDS                                                              *
;******************************************************************************
	.sect	".cinit"
	.align	1
	.field  	2,16
	.field  	_g_wav_file_size+0,24
	.field  	0,8
	.field	0,32			; _g_wav_file_size @ 0

	.sect	".cinit"
	.align	1
	.field  	$C$IR_1,16
	.field  	_granules_per_frame+0,24
	.field  	0,8
	.field	1,32			; _granules_per_frame[0] @ 0
	.field	-1,32			; _granules_per_frame[1] @ 32
	.field	1,32			; _granules_per_frame[2] @ 64
	.field	2,32			; _granules_per_frame[3] @ 96
$C$IR_1:	.set	8


$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("labs")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_labs")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$12)
	.dwendtag $C$DW$1


$C$DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("memcpy")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_memcpy")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$3)
$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$107)
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$108)
	.dwendtag $C$DW$3


$C$DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("malloc")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_malloc")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$108)
	.dwendtag $C$DW$7


$C$DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("free")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_free")
	.dwattr $C$DW$9, DW_AT_declaration
	.dwattr $C$DW$9, DW_AT_external
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$9


$C$DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("exit")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_exit")
	.dwattr $C$DW$11, DW_AT_declaration
	.dwattr $C$DW$11, DW_AT_external
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$11


$C$DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("memset")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_memset")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$13, DW_AT_declaration
	.dwattr $C$DW$13, DW_AT_external
$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$3)
$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$10)
$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$108)
	.dwendtag $C$DW$13


$C$DW$17	.dwtag  DW_TAG_subprogram, DW_AT_name("sqrt")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_sqrt")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$17, DW_AT_declaration
	.dwattr $C$DW$17, DW_AT_external
$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$17)
	.dwendtag $C$DW$17


$C$DW$19	.dwtag  DW_TAG_subprogram, DW_AT_name("pow")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_pow")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$19, DW_AT_declaration
	.dwattr $C$DW$19, DW_AT_external
$C$DW$20	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$17)
$C$DW$21	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$17)
	.dwendtag $C$DW$19


$C$DW$22	.dwtag  DW_TAG_subprogram, DW_AT_name("sin")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_sin")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$22, DW_AT_declaration
	.dwattr $C$DW$22, DW_AT_external
$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$17)
	.dwendtag $C$DW$22


$C$DW$24	.dwtag  DW_TAG_subprogram, DW_AT_name("cos")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_cos")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$24, DW_AT_declaration
	.dwattr $C$DW$24, DW_AT_external
$C$DW$25	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$17)
	.dwendtag $C$DW$24


$C$DW$26	.dwtag  DW_TAG_subprogram, DW_AT_name("modf")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_modf")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$26, DW_AT_declaration
	.dwattr $C$DW$26, DW_AT_external
$C$DW$27	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$17)
$C$DW$28	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$239)
	.dwendtag $C$DW$26

	.global	_sizeof_shine_t
	.sect	".const"
	.align	2
_sizeof_shine_t:
	.field	11918,32			; _sizeof_shine_t @ 0

$C$DW$29	.dwtag  DW_TAG_variable, DW_AT_name("sizeof_shine_t")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_sizeof_shine_t")
	.dwattr $C$DW$29, DW_AT_location[DW_OP_addr _sizeof_shine_t]
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$255)
	.dwattr $C$DW$29, DW_AT_external
	.global	_g_shine_encoder_block
	.bss	_g_shine_encoder_block,23960,0,0
$C$DW$30	.dwtag  DW_TAG_variable, DW_AT_name("g_shine_encoder_block")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_g_shine_encoder_block")
	.dwattr $C$DW$30, DW_AT_location[DW_OP_addr _g_shine_encoder_block]
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$181)
	.dwattr $C$DW$30, DW_AT_external
	.bss	_g_wav_file_size,2,0,2
$C$DW$31	.dwtag  DW_TAG_variable, DW_AT_name("g_wav_file_size")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_g_wav_file_size")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_addr _g_wav_file_size]
	.sect	".const"
	.align	2
_g_header_size_bytes:
	.field	44,32			; _g_header_size_bytes @ 0

$C$DW$32	.dwtag  DW_TAG_variable, DW_AT_name("g_header_size_bytes")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_g_header_size_bytes")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$255)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_addr _g_header_size_bytes]
	.sect	".const"
	.align	2
_g_output_bitrate:
	.field	16,32			; _g_output_bitrate @ 0

$C$DW$33	.dwtag  DW_TAG_variable, DW_AT_name("g_output_bitrate")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_g_output_bitrate")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$255)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_addr _g_output_bitrate]
	.global	_shine_slen1_tab
	.sect	".const:_shine_slen1_tab"
	.clink
	.align	2
_shine_slen1_tab:
	.field	0,32			; _shine_slen1_tab[0] @ 0
	.field	0,32			; _shine_slen1_tab[1] @ 32
	.field	0,32			; _shine_slen1_tab[2] @ 64
	.field	0,32			; _shine_slen1_tab[3] @ 96
	.field	3,32			; _shine_slen1_tab[4] @ 128
	.field	1,32			; _shine_slen1_tab[5] @ 160
	.field	1,32			; _shine_slen1_tab[6] @ 192
	.field	1,32			; _shine_slen1_tab[7] @ 224
	.field	2,32			; _shine_slen1_tab[8] @ 256
	.field	2,32			; _shine_slen1_tab[9] @ 288
	.field	2,32			; _shine_slen1_tab[10] @ 320
	.field	3,32			; _shine_slen1_tab[11] @ 352
	.field	3,32			; _shine_slen1_tab[12] @ 384
	.field	3,32			; _shine_slen1_tab[13] @ 416
	.field	4,32			; _shine_slen1_tab[14] @ 448
	.field	4,32			; _shine_slen1_tab[15] @ 480

$C$DW$34	.dwtag  DW_TAG_variable, DW_AT_name("shine_slen1_tab")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_shine_slen1_tab")
	.dwattr $C$DW$34, DW_AT_location[DW_OP_addr _shine_slen1_tab]
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$248)
	.dwattr $C$DW$34, DW_AT_external
	.global	_shine_slen2_tab
	.sect	".const:_shine_slen2_tab"
	.clink
	.align	2
_shine_slen2_tab:
	.field	0,32			; _shine_slen2_tab[0] @ 0
	.field	1,32			; _shine_slen2_tab[1] @ 32
	.field	2,32			; _shine_slen2_tab[2] @ 64
	.field	3,32			; _shine_slen2_tab[3] @ 96
	.field	0,32			; _shine_slen2_tab[4] @ 128
	.field	1,32			; _shine_slen2_tab[5] @ 160
	.field	2,32			; _shine_slen2_tab[6] @ 192
	.field	3,32			; _shine_slen2_tab[7] @ 224
	.field	1,32			; _shine_slen2_tab[8] @ 256
	.field	2,32			; _shine_slen2_tab[9] @ 288
	.field	3,32			; _shine_slen2_tab[10] @ 320
	.field	1,32			; _shine_slen2_tab[11] @ 352
	.field	2,32			; _shine_slen2_tab[12] @ 384
	.field	3,32			; _shine_slen2_tab[13] @ 416
	.field	2,32			; _shine_slen2_tab[14] @ 448
	.field	3,32			; _shine_slen2_tab[15] @ 480

$C$DW$35	.dwtag  DW_TAG_variable, DW_AT_name("shine_slen2_tab")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_shine_slen2_tab")
	.dwattr $C$DW$35, DW_AT_location[DW_OP_addr _shine_slen2_tab]
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$248)
	.dwattr $C$DW$35, DW_AT_external
	.global	_samplerates
	.sect	".const:_samplerates"
	.clink
	.align	2
_samplerates:
	.field	44100,32			; _samplerates[0] @ 0
	.field	48000,32			; _samplerates[1] @ 32
	.field	32000,32			; _samplerates[2] @ 64
	.field	22050,32			; _samplerates[3] @ 96
	.field	24000,32			; _samplerates[4] @ 128
	.field	16000,32			; _samplerates[5] @ 160
	.field	11025,32			; _samplerates[6] @ 192
	.field	12000,32			; _samplerates[7] @ 224
	.field	8000,32			; _samplerates[8] @ 256

$C$DW$36	.dwtag  DW_TAG_variable, DW_AT_name("samplerates")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_samplerates")
	.dwattr $C$DW$36, DW_AT_location[DW_OP_addr _samplerates]
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$249)
	.dwattr $C$DW$36, DW_AT_external
	.global	_bitrates
	.sect	".const:_bitrates"
	.clink
	.align	1
_bitrates:
	.field	-1,16			; _bitrates[0][0] @ 0
	.field	-1,16			; _bitrates[0][1] @ 16
	.field	-1,16			; _bitrates[0][2] @ 32
	.field	-1,16			; _bitrates[0][3] @ 48
	.field	8,16			; _bitrates[1][0] @ 64
	.field	-1,16			; _bitrates[1][1] @ 80
	.field	8,16			; _bitrates[1][2] @ 96
	.field	32,16			; _bitrates[1][3] @ 112
	.field	16,16			; _bitrates[2][0] @ 128
	.field	-1,16			; _bitrates[2][1] @ 144
	.field	16,16			; _bitrates[2][2] @ 160
	.field	40,16			; _bitrates[2][3] @ 176
	.field	24,16			; _bitrates[3][0] @ 192
	.field	-1,16			; _bitrates[3][1] @ 208
	.field	24,16			; _bitrates[3][2] @ 224
	.field	48,16			; _bitrates[3][3] @ 240
	.field	32,16			; _bitrates[4][0] @ 256
	.field	-1,16			; _bitrates[4][1] @ 272
	.field	32,16			; _bitrates[4][2] @ 288
	.field	56,16			; _bitrates[4][3] @ 304
	.field	40,16			; _bitrates[5][0] @ 320
	.field	-1,16			; _bitrates[5][1] @ 336
	.field	40,16			; _bitrates[5][2] @ 352
	.field	64,16			; _bitrates[5][3] @ 368
	.field	48,16			; _bitrates[6][0] @ 384
	.field	-1,16			; _bitrates[6][1] @ 400
	.field	48,16			; _bitrates[6][2] @ 416
	.field	80,16			; _bitrates[6][3] @ 432
	.field	56,16			; _bitrates[7][0] @ 448
	.field	-1,16			; _bitrates[7][1] @ 464
	.field	56,16			; _bitrates[7][2] @ 480
	.field	96,16			; _bitrates[7][3] @ 496
	.field	64,16			; _bitrates[8][0] @ 512
	.field	-1,16			; _bitrates[8][1] @ 528
	.field	64,16			; _bitrates[8][2] @ 544
	.field	112,16			; _bitrates[8][3] @ 560
	.field	-1,16			; _bitrates[9][0] @ 576
	.field	-1,16			; _bitrates[9][1] @ 592
	.field	80,16			; _bitrates[9][2] @ 608
	.field	128,16			; _bitrates[9][3] @ 624
	.field	-1,16			; _bitrates[10][0] @ 640
	.field	-1,16			; _bitrates[10][1] @ 656
	.field	96,16			; _bitrates[10][2] @ 672
	.field	160,16			; _bitrates[10][3] @ 688
	.field	-1,16			; _bitrates[11][0] @ 704
	.field	-1,16			; _bitrates[11][1] @ 720
	.field	112,16			; _bitrates[11][2] @ 736
	.field	192,16			; _bitrates[11][3] @ 752
	.field	-1,16			; _bitrates[12][0] @ 768
	.field	-1,16			; _bitrates[12][1] @ 784
	.field	128,16			; _bitrates[12][2] @ 800
	.field	224,16			; _bitrates[12][3] @ 816
	.field	-1,16			; _bitrates[13][0] @ 832
	.field	-1,16			; _bitrates[13][1] @ 848
	.field	144,16			; _bitrates[13][2] @ 864
	.field	256,16			; _bitrates[13][3] @ 880
	.field	-1,16			; _bitrates[14][0] @ 896
	.field	-1,16			; _bitrates[14][1] @ 912
	.field	160,16			; _bitrates[14][2] @ 928
	.field	320,16			; _bitrates[14][3] @ 944
	.field	-1,16			; _bitrates[15][0] @ 960
	.field	-1,16			; _bitrates[15][1] @ 976
	.field	-1,16			; _bitrates[15][2] @ 992
	.field	-1,16			; _bitrates[15][3] @ 1008

$C$DW$37	.dwtag  DW_TAG_variable, DW_AT_name("bitrates")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_bitrates")
	.dwattr $C$DW$37, DW_AT_location[DW_OP_addr _bitrates]
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$168)
	.dwattr $C$DW$37, DW_AT_external
	.global	_shine_scale_fact_band_index
	.sect	".const:_shine_scale_fact_band_index"
	.clink
	.align	2
_shine_scale_fact_band_index:
	.field	0,32			; _shine_scale_fact_band_index[0][0] @ 0
	.field	4,32			; _shine_scale_fact_band_index[0][1] @ 32
	.field	8,32			; _shine_scale_fact_band_index[0][2] @ 64
	.field	12,32			; _shine_scale_fact_band_index[0][3] @ 96
	.field	16,32			; _shine_scale_fact_band_index[0][4] @ 128
	.field	20,32			; _shine_scale_fact_band_index[0][5] @ 160
	.field	24,32			; _shine_scale_fact_band_index[0][6] @ 192
	.field	30,32			; _shine_scale_fact_band_index[0][7] @ 224
	.field	36,32			; _shine_scale_fact_band_index[0][8] @ 256
	.field	44,32			; _shine_scale_fact_band_index[0][9] @ 288
	.field	52,32			; _shine_scale_fact_band_index[0][10] @ 320
	.field	62,32			; _shine_scale_fact_band_index[0][11] @ 352
	.field	74,32			; _shine_scale_fact_band_index[0][12] @ 384
	.field	90,32			; _shine_scale_fact_band_index[0][13] @ 416
	.field	110,32			; _shine_scale_fact_band_index[0][14] @ 448
	.field	134,32			; _shine_scale_fact_band_index[0][15] @ 480
	.field	162,32			; _shine_scale_fact_band_index[0][16] @ 512
	.field	196,32			; _shine_scale_fact_band_index[0][17] @ 544
	.field	238,32			; _shine_scale_fact_band_index[0][18] @ 576
	.field	288,32			; _shine_scale_fact_band_index[0][19] @ 608
	.field	342,32			; _shine_scale_fact_band_index[0][20] @ 640
	.field	418,32			; _shine_scale_fact_band_index[0][21] @ 672
	.field	576,32			; _shine_scale_fact_band_index[0][22] @ 704
	.field	0,32			; _shine_scale_fact_band_index[1][0] @ 736
	.field	4,32			; _shine_scale_fact_band_index[1][1] @ 768
	.field	8,32			; _shine_scale_fact_band_index[1][2] @ 800
	.field	12,32			; _shine_scale_fact_band_index[1][3] @ 832
	.field	16,32			; _shine_scale_fact_band_index[1][4] @ 864
	.field	20,32			; _shine_scale_fact_band_index[1][5] @ 896
	.field	24,32			; _shine_scale_fact_band_index[1][6] @ 928
	.field	30,32			; _shine_scale_fact_band_index[1][7] @ 960
	.field	36,32			; _shine_scale_fact_band_index[1][8] @ 992
	.field	42,32			; _shine_scale_fact_band_index[1][9] @ 1024
	.field	50,32			; _shine_scale_fact_band_index[1][10] @ 1056
	.field	60,32			; _shine_scale_fact_band_index[1][11] @ 1088
	.field	72,32			; _shine_scale_fact_band_index[1][12] @ 1120
	.field	88,32			; _shine_scale_fact_band_index[1][13] @ 1152
	.field	106,32			; _shine_scale_fact_band_index[1][14] @ 1184
	.field	128,32			; _shine_scale_fact_band_index[1][15] @ 1216
	.field	156,32			; _shine_scale_fact_band_index[1][16] @ 1248
	.field	190,32			; _shine_scale_fact_band_index[1][17] @ 1280
	.field	230,32			; _shine_scale_fact_band_index[1][18] @ 1312
	.field	276,32			; _shine_scale_fact_band_index[1][19] @ 1344
	.field	330,32			; _shine_scale_fact_band_index[1][20] @ 1376
	.field	384,32			; _shine_scale_fact_band_index[1][21] @ 1408
	.field	576,32			; _shine_scale_fact_band_index[1][22] @ 1440
	.field	0,32			; _shine_scale_fact_band_index[2][0] @ 1472
	.field	4,32			; _shine_scale_fact_band_index[2][1] @ 1504
	.field	8,32			; _shine_scale_fact_band_index[2][2] @ 1536
	.field	12,32			; _shine_scale_fact_band_index[2][3] @ 1568
	.field	16,32			; _shine_scale_fact_band_index[2][4] @ 1600
	.field	20,32			; _shine_scale_fact_band_index[2][5] @ 1632
	.field	24,32			; _shine_scale_fact_band_index[2][6] @ 1664
	.field	30,32			; _shine_scale_fact_band_index[2][7] @ 1696
	.field	36,32			; _shine_scale_fact_band_index[2][8] @ 1728
	.field	44,32			; _shine_scale_fact_band_index[2][9] @ 1760
	.field	54,32			; _shine_scale_fact_band_index[2][10] @ 1792
	.field	66,32			; _shine_scale_fact_band_index[2][11] @ 1824
	.field	82,32			; _shine_scale_fact_band_index[2][12] @ 1856
	.field	102,32			; _shine_scale_fact_band_index[2][13] @ 1888
	.field	126,32			; _shine_scale_fact_band_index[2][14] @ 1920
	.field	156,32			; _shine_scale_fact_band_index[2][15] @ 1952
	.field	194,32			; _shine_scale_fact_band_index[2][16] @ 1984
	.field	240,32			; _shine_scale_fact_band_index[2][17] @ 2016
	.field	296,32			; _shine_scale_fact_band_index[2][18] @ 2048
	.field	364,32			; _shine_scale_fact_band_index[2][19] @ 2080
	.field	448,32			; _shine_scale_fact_band_index[2][20] @ 2112
	.field	550,32			; _shine_scale_fact_band_index[2][21] @ 2144
	.field	576,32			; _shine_scale_fact_band_index[2][22] @ 2176
	.field	0,32			; _shine_scale_fact_band_index[3][0] @ 2208
	.field	6,32			; _shine_scale_fact_band_index[3][1] @ 2240
	.field	12,32			; _shine_scale_fact_band_index[3][2] @ 2272
	.field	18,32			; _shine_scale_fact_band_index[3][3] @ 2304
	.field	24,32			; _shine_scale_fact_band_index[3][4] @ 2336
	.field	30,32			; _shine_scale_fact_band_index[3][5] @ 2368
	.field	36,32			; _shine_scale_fact_band_index[3][6] @ 2400
	.field	44,32			; _shine_scale_fact_band_index[3][7] @ 2432
	.field	54,32			; _shine_scale_fact_band_index[3][8] @ 2464
	.field	66,32			; _shine_scale_fact_band_index[3][9] @ 2496
	.field	80,32			; _shine_scale_fact_band_index[3][10] @ 2528
	.field	96,32			; _shine_scale_fact_band_index[3][11] @ 2560
	.field	116,32			; _shine_scale_fact_band_index[3][12] @ 2592
	.field	140,32			; _shine_scale_fact_band_index[3][13] @ 2624
	.field	168,32			; _shine_scale_fact_band_index[3][14] @ 2656
	.field	200,32			; _shine_scale_fact_band_index[3][15] @ 2688
	.field	238,32			; _shine_scale_fact_band_index[3][16] @ 2720
	.field	284,32			; _shine_scale_fact_band_index[3][17] @ 2752
	.field	336,32			; _shine_scale_fact_band_index[3][18] @ 2784
	.field	396,32			; _shine_scale_fact_band_index[3][19] @ 2816
	.field	464,32			; _shine_scale_fact_band_index[3][20] @ 2848
	.field	522,32			; _shine_scale_fact_band_index[3][21] @ 2880
	.field	576,32			; _shine_scale_fact_band_index[3][22] @ 2912
	.field	0,32			; _shine_scale_fact_band_index[4][0] @ 2944
	.field	6,32			; _shine_scale_fact_band_index[4][1] @ 2976
	.field	12,32			; _shine_scale_fact_band_index[4][2] @ 3008
	.field	18,32			; _shine_scale_fact_band_index[4][3] @ 3040
	.field	24,32			; _shine_scale_fact_band_index[4][4] @ 3072
	.field	30,32			; _shine_scale_fact_band_index[4][5] @ 3104
	.field	36,32			; _shine_scale_fact_band_index[4][6] @ 3136
	.field	44,32			; _shine_scale_fact_band_index[4][7] @ 3168
	.field	54,32			; _shine_scale_fact_band_index[4][8] @ 3200
	.field	66,32			; _shine_scale_fact_band_index[4][9] @ 3232
	.field	80,32			; _shine_scale_fact_band_index[4][10] @ 3264
	.field	96,32			; _shine_scale_fact_band_index[4][11] @ 3296
	.field	114,32			; _shine_scale_fact_band_index[4][12] @ 3328
	.field	136,32			; _shine_scale_fact_band_index[4][13] @ 3360
	.field	162,32			; _shine_scale_fact_band_index[4][14] @ 3392
	.field	194,32			; _shine_scale_fact_band_index[4][15] @ 3424
	.field	232,32			; _shine_scale_fact_band_index[4][16] @ 3456
	.field	278,32			; _shine_scale_fact_band_index[4][17] @ 3488
	.field	330,32			; _shine_scale_fact_band_index[4][18] @ 3520
	.field	394,32			; _shine_scale_fact_band_index[4][19] @ 3552
	.field	464,32			; _shine_scale_fact_band_index[4][20] @ 3584
	.field	540,32			; _shine_scale_fact_band_index[4][21] @ 3616
	.field	576,32			; _shine_scale_fact_band_index[4][22] @ 3648
	.field	0,32			; _shine_scale_fact_band_index[5][0] @ 3680
	.field	6,32			; _shine_scale_fact_band_index[5][1] @ 3712
	.field	12,32			; _shine_scale_fact_band_index[5][2] @ 3744
	.field	18,32			; _shine_scale_fact_band_index[5][3] @ 3776
	.field	24,32			; _shine_scale_fact_band_index[5][4] @ 3808
	.field	30,32			; _shine_scale_fact_band_index[5][5] @ 3840
	.field	36,32			; _shine_scale_fact_band_index[5][6] @ 3872
	.field	44,32			; _shine_scale_fact_band_index[5][7] @ 3904
	.field	45,32			; _shine_scale_fact_band_index[5][8] @ 3936
	.field	66,32			; _shine_scale_fact_band_index[5][9] @ 3968
	.field	80,32			; _shine_scale_fact_band_index[5][10] @ 4000
	.field	96,32			; _shine_scale_fact_band_index[5][11] @ 4032
	.field	116,32			; _shine_scale_fact_band_index[5][12] @ 4064
	.field	140,32			; _shine_scale_fact_band_index[5][13] @ 4096
	.field	168,32			; _shine_scale_fact_band_index[5][14] @ 4128
	.field	200,32			; _shine_scale_fact_band_index[5][15] @ 4160
	.field	238,32			; _shine_scale_fact_band_index[5][16] @ 4192
	.field	248,32			; _shine_scale_fact_band_index[5][17] @ 4224
	.field	336,32			; _shine_scale_fact_band_index[5][18] @ 4256
	.field	396,32			; _shine_scale_fact_band_index[5][19] @ 4288
	.field	464,32			; _shine_scale_fact_band_index[5][20] @ 4320
	.field	522,32			; _shine_scale_fact_band_index[5][21] @ 4352
	.field	576,32			; _shine_scale_fact_band_index[5][22] @ 4384
	.field	0,32			; _shine_scale_fact_band_index[6][0] @ 4416
	.field	6,32			; _shine_scale_fact_band_index[6][1] @ 4448
	.field	12,32			; _shine_scale_fact_band_index[6][2] @ 4480
	.field	18,32			; _shine_scale_fact_band_index[6][3] @ 4512
	.field	24,32			; _shine_scale_fact_band_index[6][4] @ 4544
	.field	30,32			; _shine_scale_fact_band_index[6][5] @ 4576
	.field	36,32			; _shine_scale_fact_band_index[6][6] @ 4608
	.field	44,32			; _shine_scale_fact_band_index[6][7] @ 4640
	.field	54,32			; _shine_scale_fact_band_index[6][8] @ 4672
	.field	66,32			; _shine_scale_fact_band_index[6][9] @ 4704
	.field	80,32			; _shine_scale_fact_band_index[6][10] @ 4736
	.field	96,32			; _shine_scale_fact_band_index[6][11] @ 4768
	.field	116,32			; _shine_scale_fact_band_index[6][12] @ 4800
	.field	140,32			; _shine_scale_fact_band_index[6][13] @ 4832
	.field	168,32			; _shine_scale_fact_band_index[6][14] @ 4864
	.field	200,32			; _shine_scale_fact_band_index[6][15] @ 4896
	.field	238,32			; _shine_scale_fact_band_index[6][16] @ 4928
	.field	284,32			; _shine_scale_fact_band_index[6][17] @ 4960
	.field	336,32			; _shine_scale_fact_band_index[6][18] @ 4992
	.field	396,32			; _shine_scale_fact_band_index[6][19] @ 5024
	.field	464,32			; _shine_scale_fact_band_index[6][20] @ 5056
	.field	522,32			; _shine_scale_fact_band_index[6][21] @ 5088
	.field	576,32			; _shine_scale_fact_band_index[6][22] @ 5120
	.field	0,32			; _shine_scale_fact_band_index[7][0] @ 5152
	.field	6,32			; _shine_scale_fact_band_index[7][1] @ 5184
	.field	12,32			; _shine_scale_fact_band_index[7][2] @ 5216
	.field	18,32			; _shine_scale_fact_band_index[7][3] @ 5248
	.field	24,32			; _shine_scale_fact_band_index[7][4] @ 5280
	.field	30,32			; _shine_scale_fact_band_index[7][5] @ 5312
	.field	36,32			; _shine_scale_fact_band_index[7][6] @ 5344
	.field	44,32			; _shine_scale_fact_band_index[7][7] @ 5376
	.field	54,32			; _shine_scale_fact_band_index[7][8] @ 5408
	.field	66,32			; _shine_scale_fact_band_index[7][9] @ 5440
	.field	80,32			; _shine_scale_fact_band_index[7][10] @ 5472
	.field	96,32			; _shine_scale_fact_band_index[7][11] @ 5504
	.field	116,32			; _shine_scale_fact_band_index[7][12] @ 5536
	.field	140,32			; _shine_scale_fact_band_index[7][13] @ 5568
	.field	168,32			; _shine_scale_fact_band_index[7][14] @ 5600
	.field	200,32			; _shine_scale_fact_band_index[7][15] @ 5632
	.field	238,32			; _shine_scale_fact_band_index[7][16] @ 5664
	.field	284,32			; _shine_scale_fact_band_index[7][17] @ 5696
	.field	336,32			; _shine_scale_fact_band_index[7][18] @ 5728
	.field	396,32			; _shine_scale_fact_band_index[7][19] @ 5760
	.field	464,32			; _shine_scale_fact_band_index[7][20] @ 5792
	.field	522,32			; _shine_scale_fact_band_index[7][21] @ 5824
	.field	576,32			; _shine_scale_fact_band_index[7][22] @ 5856
	.field	0,32			; _shine_scale_fact_band_index[8][0] @ 5888
	.field	12,32			; _shine_scale_fact_band_index[8][1] @ 5920
	.field	24,32			; _shine_scale_fact_band_index[8][2] @ 5952
	.field	36,32			; _shine_scale_fact_band_index[8][3] @ 5984
	.field	48,32			; _shine_scale_fact_band_index[8][4] @ 6016
	.field	60,32			; _shine_scale_fact_band_index[8][5] @ 6048
	.field	72,32			; _shine_scale_fact_band_index[8][6] @ 6080
	.field	88,32			; _shine_scale_fact_band_index[8][7] @ 6112
	.field	108,32			; _shine_scale_fact_band_index[8][8] @ 6144
	.field	132,32			; _shine_scale_fact_band_index[8][9] @ 6176
	.field	160,32			; _shine_scale_fact_band_index[8][10] @ 6208
	.field	192,32			; _shine_scale_fact_band_index[8][11] @ 6240
	.field	232,32			; _shine_scale_fact_band_index[8][12] @ 6272
	.field	280,32			; _shine_scale_fact_band_index[8][13] @ 6304
	.field	336,32			; _shine_scale_fact_band_index[8][14] @ 6336
	.field	400,32			; _shine_scale_fact_band_index[8][15] @ 6368
	.field	476,32			; _shine_scale_fact_band_index[8][16] @ 6400
	.field	566,32			; _shine_scale_fact_band_index[8][17] @ 6432
	.field	568,32			; _shine_scale_fact_band_index[8][18] @ 6464
	.field	570,32			; _shine_scale_fact_band_index[8][19] @ 6496
	.field	572,32			; _shine_scale_fact_band_index[8][20] @ 6528
	.field	574,32			; _shine_scale_fact_band_index[8][21] @ 6560
	.field	576,32			; _shine_scale_fact_band_index[8][22] @ 6592

$C$DW$38	.dwtag  DW_TAG_variable, DW_AT_name("shine_scale_fact_band_index")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_shine_scale_fact_band_index")
	.dwattr $C$DW$38, DW_AT_location[DW_OP_addr _shine_scale_fact_band_index]
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$251)
	.dwattr $C$DW$38, DW_AT_external
	.global	_shine_enwindow
	.sect	".const:_shine_enwindow"
	.clink
	.align	2
_shine_enwindow:
	.field	0,32			; _shine_enwindow[0] @ 0
	.field	0,32			; _shine_enwindow[1] @ 32
	.field	0,32			; _shine_enwindow[2] @ 64
	.field	0,32			; _shine_enwindow[3] @ 96
	.field	0,32			; _shine_enwindow[4] @ 128
	.field	0,32			; _shine_enwindow[5] @ 160
	.field	0,32			; _shine_enwindow[6] @ 192
	.field	-2147,32			; _shine_enwindow[7] @ 224
	.field	-2147,32			; _shine_enwindow[8] @ 256
	.field	-2147,32			; _shine_enwindow[9] @ 288
	.field	-2147,32			; _shine_enwindow[10] @ 320
	.field	-2147,32			; _shine_enwindow[11] @ 352
	.field	-2147,32			; _shine_enwindow[12] @ 384
	.field	-4294,32			; _shine_enwindow[13] @ 416
	.field	-4294,32			; _shine_enwindow[14] @ 448
	.field	-4294,32			; _shine_enwindow[15] @ 480
	.field	-4294,32			; _shine_enwindow[16] @ 512
	.field	-6442,32			; _shine_enwindow[17] @ 544
	.field	-6442,32			; _shine_enwindow[18] @ 576
	.field	-6442,32			; _shine_enwindow[19] @ 608
	.field	-8589,32			; _shine_enwindow[20] @ 640
	.field	-8589,32			; _shine_enwindow[21] @ 672
	.field	-10737,32			; _shine_enwindow[22] @ 704
	.field	-10737,32			; _shine_enwindow[23] @ 736
	.field	-12884,32			; _shine_enwindow[24] @ 768
	.field	-15032,32			; _shine_enwindow[25] @ 800
	.field	-17179,32			; _shine_enwindow[26] @ 832
	.field	-17179,32			; _shine_enwindow[27] @ 864
	.field	-19327,32			; _shine_enwindow[28] @ 896
	.field	-21474,32			; _shine_enwindow[29] @ 928
	.field	-23622,32			; _shine_enwindow[30] @ 960
	.field	-25769,32			; _shine_enwindow[31] @ 992
	.field	-30064,32			; _shine_enwindow[32] @ 1024
	.field	-32212,32			; _shine_enwindow[33] @ 1056
	.field	-36507,32			; _shine_enwindow[34] @ 1088
	.field	-38654,32			; _shine_enwindow[35] @ 1120
	.field	-42949,32			; _shine_enwindow[36] @ 1152
	.field	-45097,32			; _shine_enwindow[37] @ 1184
	.field	-49392,32			; _shine_enwindow[38] @ 1216
	.field	-53687,32			; _shine_enwindow[39] @ 1248
	.field	-60129,32			; _shine_enwindow[40] @ 1280
	.field	-64424,32			; _shine_enwindow[41] @ 1312
	.field	-68719,32			; _shine_enwindow[42] @ 1344
	.field	-75161,32			; _shine_enwindow[43] @ 1376
	.field	-81604,32			; _shine_enwindow[44] @ 1408
	.field	-88046,32			; _shine_enwindow[45] @ 1440
	.field	-92341,32			; _shine_enwindow[46] @ 1472
	.field	-98784,32			; _shine_enwindow[47] @ 1504
	.field	-107374,32			; _shine_enwindow[48] @ 1536
	.field	-113816,32			; _shine_enwindow[49] @ 1568
	.field	-120259,32			; _shine_enwindow[50] @ 1600
	.field	-128849,32			; _shine_enwindow[51] @ 1632
	.field	-135291,32			; _shine_enwindow[52] @ 1664
	.field	-141733,32			; _shine_enwindow[53] @ 1696
	.field	-150323,32			; _shine_enwindow[54] @ 1728
	.field	-156766,32			; _shine_enwindow[55] @ 1760
	.field	-165356,32			; _shine_enwindow[56] @ 1792
	.field	-173946,32			; _shine_enwindow[57] @ 1824
	.field	-180388,32			; _shine_enwindow[58] @ 1856
	.field	-186831,32			; _shine_enwindow[59] @ 1888
	.field	-195421,32			; _shine_enwindow[60] @ 1920
	.field	-199715,32			; _shine_enwindow[61] @ 1952
	.field	-206158,32			; _shine_enwindow[62] @ 1984
	.field	-212600,32			; _shine_enwindow[63] @ 2016
	.field	219043,32			; _shine_enwindow[64] @ 2048
	.field	223338,32			; _shine_enwindow[65] @ 2080
	.field	227633,32			; _shine_enwindow[66] @ 2112
	.field	229780,32			; _shine_enwindow[67] @ 2144
	.field	231928,32			; _shine_enwindow[68] @ 2176
	.field	234075,32			; _shine_enwindow[69] @ 2208
	.field	234075,32			; _shine_enwindow[70] @ 2240
	.field	231928,32			; _shine_enwindow[71] @ 2272
	.field	229780,32			; _shine_enwindow[72] @ 2304
	.field	225485,32			; _shine_enwindow[73] @ 2336
	.field	221190,32			; _shine_enwindow[74] @ 2368
	.field	212600,32			; _shine_enwindow[75] @ 2400
	.field	204010,32			; _shine_enwindow[76] @ 2432
	.field	193273,32			; _shine_enwindow[77] @ 2464
	.field	180388,32			; _shine_enwindow[78] @ 2496
	.field	167503,32			; _shine_enwindow[79] @ 2528
	.field	150323,32			; _shine_enwindow[80] @ 2560
	.field	130996,32			; _shine_enwindow[81] @ 2592
	.field	109521,32			; _shine_enwindow[82] @ 2624
	.field	85899,32			; _shine_enwindow[83] @ 2656
	.field	57982,32			; _shine_enwindow[84] @ 2688
	.field	30064,32			; _shine_enwindow[85] @ 2720
	.field	-2147,32			; _shine_enwindow[86] @ 2752
	.field	-36507,32			; _shine_enwindow[87] @ 2784
	.field	-73014,32			; _shine_enwindow[88] @ 2816
	.field	-113816,32			; _shine_enwindow[89] @ 2848
	.field	-156766,32			; _shine_enwindow[90] @ 2880
	.field	-201863,32			; _shine_enwindow[91] @ 2912
	.field	-249108,32			; _shine_enwindow[92] @ 2944
	.field	-300647,32			; _shine_enwindow[93] @ 2976
	.field	-354334,32			; _shine_enwindow[94] @ 3008
	.field	-410169,32			; _shine_enwindow[95] @ 3040
	.field	-470298,32			; _shine_enwindow[96] @ 3072
	.field	-530428,32			; _shine_enwindow[97] @ 3104
	.field	-594853,32			; _shine_enwindow[98] @ 3136
	.field	-661424,32			; _shine_enwindow[99] @ 3168
	.field	-727996,32			; _shine_enwindow[100] @ 3200
	.field	-796716,32			; _shine_enwindow[101] @ 3232
	.field	-867583,32			; _shine_enwindow[102] @ 3264
	.field	-940597,32			; _shine_enwindow[103] @ 3296
	.field	-1015759,32			; _shine_enwindow[104] @ 3328
	.field	-1088774,32			; _shine_enwindow[105] @ 3360
	.field	-1163936,32			; _shine_enwindow[106] @ 3392
	.field	-1239098,32			; _shine_enwindow[107] @ 3424
	.field	-1314260,32			; _shine_enwindow[108] @ 3456
	.field	-1389421,32			; _shine_enwindow[109] @ 3488
	.field	-1462436,32			; _shine_enwindow[110] @ 3520
	.field	-1533303,32			; _shine_enwindow[111] @ 3552
	.field	-1604170,32			; _shine_enwindow[112] @ 3584
	.field	-1672889,32			; _shine_enwindow[113] @ 3616
	.field	-1739461,32			; _shine_enwindow[114] @ 3648
	.field	-1801738,32			; _shine_enwindow[115] @ 3680
	.field	-1859720,32			; _shine_enwindow[116] @ 3712
	.field	-1915555,32			; _shine_enwindow[117] @ 3744
	.field	-1964947,32			; _shine_enwindow[118] @ 3776
	.field	-2010044,32			; _shine_enwindow[119] @ 3808
	.field	-2048699,32			; _shine_enwindow[120] @ 3840
	.field	-2080911,32			; _shine_enwindow[121] @ 3872
	.field	-2106681,32			; _shine_enwindow[122] @ 3904
	.field	-2123861,32			; _shine_enwindow[123] @ 3936
	.field	-2134598,32			; _shine_enwindow[124] @ 3968
	.field	-2136746,32			; _shine_enwindow[125] @ 4000
	.field	-2130303,32			; _shine_enwindow[126] @ 4032
	.field	-2113124,32			; _shine_enwindow[127] @ 4064
	.field	2085206,32			; _shine_enwindow[128] @ 4096
	.field	2048699,32			; _shine_enwindow[129] @ 4128
	.field	1999307,32			; _shine_enwindow[130] @ 4160
	.field	1939177,32			; _shine_enwindow[131] @ 4192
	.field	1866163,32			; _shine_enwindow[132] @ 4224
	.field	1780264,32			; _shine_enwindow[133] @ 4256
	.field	1683627,32			; _shine_enwindow[134] @ 4288
	.field	1571958,32			; _shine_enwindow[135] @ 4320
	.field	1447404,32			; _shine_enwindow[136] @ 4352
	.field	1309965,32			; _shine_enwindow[137] @ 4384
	.field	1157493,32			; _shine_enwindow[138] @ 4416
	.field	994284,32			; _shine_enwindow[139] @ 4448
	.field	813896,32			; _shine_enwindow[140] @ 4480
	.field	618475,32			; _shine_enwindow[141] @ 4512
	.field	412316,32			; _shine_enwindow[142] @ 4544
	.field	188978,32			; _shine_enwindow[143] @ 4576
	.field	-45097,32			; _shine_enwindow[144] @ 4608
	.field	-294205,32			; _shine_enwindow[145] @ 4640
	.field	-558345,32			; _shine_enwindow[146] @ 4672
	.field	-833223,32			; _shine_enwindow[147] @ 4704
	.field	-1120986,32			; _shine_enwindow[148] @ 4736
	.field	-1421634,32			; _shine_enwindow[149] @ 4768
	.field	-1733019,32			; _shine_enwindow[150] @ 4800
	.field	-2055141,32			; _shine_enwindow[151] @ 4832
	.field	-2385854,32			; _shine_enwindow[152] @ 4864
	.field	-2727304,32			; _shine_enwindow[153] @ 4896
	.field	-3075196,32			; _shine_enwindow[154] @ 4928
	.field	-3431678,32			; _shine_enwindow[155] @ 4960
	.field	-3794603,32			; _shine_enwindow[156] @ 4992
	.field	-4159675,32			; _shine_enwindow[157] @ 5024
	.field	-4531190,32			; _shine_enwindow[158] @ 5056
	.field	-4902705,32			; _shine_enwindow[159] @ 5088
	.field	-5276367,32			; _shine_enwindow[160] @ 5120
	.field	-5650029,32			; _shine_enwindow[161] @ 5152
	.field	-6019396,32			; _shine_enwindow[162] @ 5184
	.field	-6386616,32			; _shine_enwindow[163] @ 5216
	.field	-6747393,32			; _shine_enwindow[164] @ 5248
	.field	-7101728,32			; _shine_enwindow[165] @ 5280
	.field	-7445326,32			; _shine_enwindow[166] @ 5312
	.field	-7780333,32			; _shine_enwindow[167] @ 5344
	.field	-8100308,32			; _shine_enwindow[168] @ 5376
	.field	-8405251,32			; _shine_enwindow[169] @ 5408
	.field	-8695161,32			; _shine_enwindow[170] @ 5440
	.field	-8965744,32			; _shine_enwindow[171] @ 5472
	.field	-9214852,32			; _shine_enwindow[172] @ 5504
	.field	-9440338,32			; _shine_enwindow[173] @ 5536
	.field	-9642202,32			; _shine_enwindow[174] @ 5568
	.field	-9814000,32			; _shine_enwindow[175] @ 5600
	.field	-9960029,32			; _shine_enwindow[176] @ 5632
	.field	-10073846,32			; _shine_enwindow[177] @ 5664
	.field	-10153303,32			; _shine_enwindow[178] @ 5696
	.field	-10198400,32			; _shine_enwindow[179] @ 5728
	.field	-10204842,32			; _shine_enwindow[180] @ 5760
	.field	-10172630,32			; _shine_enwindow[181] @ 5792
	.field	-10099616,32			; _shine_enwindow[182] @ 5824
	.field	-9983651,32			; _shine_enwindow[183] @ 5856
	.field	-9822590,32			; _shine_enwindow[184] @ 5888
	.field	-9614284,32			; _shine_enwindow[185] @ 5920
	.field	-9358734,32			; _shine_enwindow[186] @ 5952
	.field	-9051644,32			; _shine_enwindow[187] @ 5984
	.field	-8695161,32			; _shine_enwindow[188] @ 6016
	.field	-8287139,32			; _shine_enwindow[189] @ 6048
	.field	-7823283,32			; _shine_enwindow[190] @ 6080
	.field	-7305739,32			; _shine_enwindow[191] @ 6112
	.field	6732361,32			; _shine_enwindow[192] @ 6144
	.field	6101001,32			; _shine_enwindow[193] @ 6176
	.field	5415954,32			; _shine_enwindow[194] @ 6208
	.field	4670777,32			; _shine_enwindow[195] @ 6240
	.field	3867618,32			; _shine_enwindow[196] @ 6272
	.field	3006477,32			; _shine_enwindow[197] @ 6304
	.field	2085206,32			; _shine_enwindow[198] @ 6336
	.field	1108101,32			; _shine_enwindow[199] @ 6368
	.field	70866,32			; _shine_enwindow[200] @ 6400
	.field	-1022202,32			; _shine_enwindow[201] @ 6432
	.field	-2173253,32			; _shine_enwindow[202] @ 6464
	.field	-3380139,32			; _shine_enwindow[203] @ 6496
	.field	-4642859,32			; _shine_enwindow[204] @ 6528
	.field	-5957119,32			; _shine_enwindow[205] @ 6560
	.field	-7325066,32			; _shine_enwindow[206] @ 6592
	.field	-8744553,32			; _shine_enwindow[207] @ 6624
	.field	-10213432,32			; _shine_enwindow[208] @ 6656
	.field	-11729556,32			; _shine_enwindow[209] @ 6688
	.field	-13290776,32			; _shine_enwindow[210] @ 6720
	.field	-14897094,32			; _shine_enwindow[211] @ 6752
	.field	-16542067,32			; _shine_enwindow[212] @ 6784
	.field	-18225694,32			; _shine_enwindow[213] @ 6816
	.field	-19945828,32			; _shine_enwindow[214] @ 6848
	.field	-21698174,32			; _shine_enwindow[215] @ 6880
	.field	-23478438,32			; _shine_enwindow[216] @ 6912
	.field	-25286620,32			; _shine_enwindow[217] @ 6944
	.field	-27118424,32			; _shine_enwindow[218] @ 6976
	.field	-28967406,32			; _shine_enwindow[219] @ 7008
	.field	-30835718,32			; _shine_enwindow[220] @ 7040
	.field	-32714766,32			; _shine_enwindow[221] @ 7072
	.field	-34602404,32			; _shine_enwindow[222] @ 7104
	.field	-36494336,32			; _shine_enwindow[223] @ 7136
	.field	-38388416,32			; _shine_enwindow[224] @ 7168
	.field	-40280352,32			; _shine_enwindow[225] @ 7200
	.field	-42163692,32			; _shine_enwindow[226] @ 7232
	.field	-44038448,32			; _shine_enwindow[227] @ 7264
	.field	-45896020,32			; _shine_enwindow[228] @ 7296
	.field	-47736416,32			; _shine_enwindow[229] @ 7328
	.field	-49551036,32			; _shine_enwindow[230] @ 7360
	.field	-51339892,32			; _shine_enwindow[231] @ 7392
	.field	-53096532,32			; _shine_enwindow[232] @ 7424
	.field	-54818816,32			; _shine_enwindow[233] @ 7456
	.field	-56502444,32			; _shine_enwindow[234] @ 7488
	.field	-58140972,32			; _shine_enwindow[235] @ 7520
	.field	-59732256,32			; _shine_enwindow[236] @ 7552
	.field	-61274152,32			; _shine_enwindow[237] @ 7584
	.field	-62760208,32			; _shine_enwindow[238] @ 7616
	.field	-64188288,32			; _shine_enwindow[239] @ 7648
	.field	-65556232,32			; _shine_enwindow[240] @ 7680
	.field	-66857608,32			; _shine_enwindow[241] @ 7712
	.field	-68090264,32			; _shine_enwindow[242] @ 7744
	.field	-69252056,32			; _shine_enwindow[243] @ 7776
	.field	-70340824,32			; _shine_enwindow[244] @ 7808
	.field	-71352288,32			; _shine_enwindow[245] @ 7840
	.field	-72284296,32			; _shine_enwindow[246] @ 7872
	.field	-73134704,32			; _shine_enwindow[247] @ 7904
	.field	-73901352,32			; _shine_enwindow[248] @ 7936
	.field	-74582104,32			; _shine_enwindow[249] @ 7968
	.field	-75176960,32			; _shine_enwindow[250] @ 8000
	.field	-75681616,32			; _shine_enwindow[251] @ 8032
	.field	-76096080,32			; _shine_enwindow[252] @ 8064
	.field	-76420352,32			; _shine_enwindow[253] @ 8096
	.field	-76652280,32			; _shine_enwindow[254] @ 8128
	.field	-76791864,32			; _shine_enwindow[255] @ 8160
	.field	76839112,32			; _shine_enwindow[256] @ 8192
	.field	76791864,32			; _shine_enwindow[257] @ 8224
	.field	76652280,32			; _shine_enwindow[258] @ 8256
	.field	76420352,32			; _shine_enwindow[259] @ 8288
	.field	76096080,32			; _shine_enwindow[260] @ 8320
	.field	75681616,32			; _shine_enwindow[261] @ 8352
	.field	75176960,32			; _shine_enwindow[262] @ 8384
	.field	74582104,32			; _shine_enwindow[263] @ 8416
	.field	73901352,32			; _shine_enwindow[264] @ 8448
	.field	73134704,32			; _shine_enwindow[265] @ 8480
	.field	72284296,32			; _shine_enwindow[266] @ 8512
	.field	71352288,32			; _shine_enwindow[267] @ 8544
	.field	70340824,32			; _shine_enwindow[268] @ 8576
	.field	69252056,32			; _shine_enwindow[269] @ 8608
	.field	68090264,32			; _shine_enwindow[270] @ 8640
	.field	66857608,32			; _shine_enwindow[271] @ 8672
	.field	65556232,32			; _shine_enwindow[272] @ 8704
	.field	64188288,32			; _shine_enwindow[273] @ 8736
	.field	62760208,32			; _shine_enwindow[274] @ 8768
	.field	61274152,32			; _shine_enwindow[275] @ 8800
	.field	59732256,32			; _shine_enwindow[276] @ 8832
	.field	58140972,32			; _shine_enwindow[277] @ 8864
	.field	56502444,32			; _shine_enwindow[278] @ 8896
	.field	54818816,32			; _shine_enwindow[279] @ 8928
	.field	53096532,32			; _shine_enwindow[280] @ 8960
	.field	51339892,32			; _shine_enwindow[281] @ 8992
	.field	49551036,32			; _shine_enwindow[282] @ 9024
	.field	47736416,32			; _shine_enwindow[283] @ 9056
	.field	45896020,32			; _shine_enwindow[284] @ 9088
	.field	44038448,32			; _shine_enwindow[285] @ 9120
	.field	42163692,32			; _shine_enwindow[286] @ 9152
	.field	40280352,32			; _shine_enwindow[287] @ 9184
	.field	38388416,32			; _shine_enwindow[288] @ 9216
	.field	36494336,32			; _shine_enwindow[289] @ 9248
	.field	34602404,32			; _shine_enwindow[290] @ 9280
	.field	32714766,32			; _shine_enwindow[291] @ 9312
	.field	30835718,32			; _shine_enwindow[292] @ 9344
	.field	28967406,32			; _shine_enwindow[293] @ 9376
	.field	27118424,32			; _shine_enwindow[294] @ 9408
	.field	25286620,32			; _shine_enwindow[295] @ 9440
	.field	23478438,32			; _shine_enwindow[296] @ 9472
	.field	21698174,32			; _shine_enwindow[297] @ 9504
	.field	19945828,32			; _shine_enwindow[298] @ 9536
	.field	18225694,32			; _shine_enwindow[299] @ 9568
	.field	16542067,32			; _shine_enwindow[300] @ 9600
	.field	14897094,32			; _shine_enwindow[301] @ 9632
	.field	13290776,32			; _shine_enwindow[302] @ 9664
	.field	11729556,32			; _shine_enwindow[303] @ 9696
	.field	10213432,32			; _shine_enwindow[304] @ 9728
	.field	8744553,32			; _shine_enwindow[305] @ 9760
	.field	7325066,32			; _shine_enwindow[306] @ 9792
	.field	5957119,32			; _shine_enwindow[307] @ 9824
	.field	4642859,32			; _shine_enwindow[308] @ 9856
	.field	3380139,32			; _shine_enwindow[309] @ 9888
	.field	2173253,32			; _shine_enwindow[310] @ 9920
	.field	1022202,32			; _shine_enwindow[311] @ 9952
	.field	-70866,32			; _shine_enwindow[312] @ 9984
	.field	-1108101,32			; _shine_enwindow[313] @ 10016
	.field	-2085206,32			; _shine_enwindow[314] @ 10048
	.field	-3006477,32			; _shine_enwindow[315] @ 10080
	.field	-3867618,32			; _shine_enwindow[316] @ 10112
	.field	-4670777,32			; _shine_enwindow[317] @ 10144
	.field	-5415954,32			; _shine_enwindow[318] @ 10176
	.field	-6101001,32			; _shine_enwindow[319] @ 10208
	.field	6732361,32			; _shine_enwindow[320] @ 10240
	.field	7305739,32			; _shine_enwindow[321] @ 10272
	.field	7823283,32			; _shine_enwindow[322] @ 10304
	.field	8287139,32			; _shine_enwindow[323] @ 10336
	.field	8695161,32			; _shine_enwindow[324] @ 10368
	.field	9051644,32			; _shine_enwindow[325] @ 10400
	.field	9358734,32			; _shine_enwindow[326] @ 10432
	.field	9614284,32			; _shine_enwindow[327] @ 10464
	.field	9822590,32			; _shine_enwindow[328] @ 10496
	.field	9983651,32			; _shine_enwindow[329] @ 10528
	.field	10099616,32			; _shine_enwindow[330] @ 10560
	.field	10172630,32			; _shine_enwindow[331] @ 10592
	.field	10204842,32			; _shine_enwindow[332] @ 10624
	.field	10198400,32			; _shine_enwindow[333] @ 10656
	.field	10153303,32			; _shine_enwindow[334] @ 10688
	.field	10073846,32			; _shine_enwindow[335] @ 10720
	.field	9960029,32			; _shine_enwindow[336] @ 10752
	.field	9814000,32			; _shine_enwindow[337] @ 10784
	.field	9642202,32			; _shine_enwindow[338] @ 10816
	.field	9440338,32			; _shine_enwindow[339] @ 10848
	.field	9214852,32			; _shine_enwindow[340] @ 10880
	.field	8965744,32			; _shine_enwindow[341] @ 10912
	.field	8695161,32			; _shine_enwindow[342] @ 10944
	.field	8405251,32			; _shine_enwindow[343] @ 10976
	.field	8100308,32			; _shine_enwindow[344] @ 11008
	.field	7780333,32			; _shine_enwindow[345] @ 11040
	.field	7445326,32			; _shine_enwindow[346] @ 11072
	.field	7101728,32			; _shine_enwindow[347] @ 11104
	.field	6747393,32			; _shine_enwindow[348] @ 11136
	.field	6386616,32			; _shine_enwindow[349] @ 11168
	.field	6019396,32			; _shine_enwindow[350] @ 11200
	.field	5650029,32			; _shine_enwindow[351] @ 11232
	.field	5276367,32			; _shine_enwindow[352] @ 11264
	.field	4902705,32			; _shine_enwindow[353] @ 11296
	.field	4531190,32			; _shine_enwindow[354] @ 11328
	.field	4159675,32			; _shine_enwindow[355] @ 11360
	.field	3794603,32			; _shine_enwindow[356] @ 11392
	.field	3431678,32			; _shine_enwindow[357] @ 11424
	.field	3075196,32			; _shine_enwindow[358] @ 11456
	.field	2727304,32			; _shine_enwindow[359] @ 11488
	.field	2385854,32			; _shine_enwindow[360] @ 11520
	.field	2055141,32			; _shine_enwindow[361] @ 11552
	.field	1733019,32			; _shine_enwindow[362] @ 11584
	.field	1421634,32			; _shine_enwindow[363] @ 11616
	.field	1120986,32			; _shine_enwindow[364] @ 11648
	.field	833223,32			; _shine_enwindow[365] @ 11680
	.field	558345,32			; _shine_enwindow[366] @ 11712
	.field	294205,32			; _shine_enwindow[367] @ 11744
	.field	45097,32			; _shine_enwindow[368] @ 11776
	.field	-188978,32			; _shine_enwindow[369] @ 11808
	.field	-412316,32			; _shine_enwindow[370] @ 11840
	.field	-618475,32			; _shine_enwindow[371] @ 11872
	.field	-813896,32			; _shine_enwindow[372] @ 11904
	.field	-994284,32			; _shine_enwindow[373] @ 11936
	.field	-1157493,32			; _shine_enwindow[374] @ 11968
	.field	-1309965,32			; _shine_enwindow[375] @ 12000
	.field	-1447404,32			; _shine_enwindow[376] @ 12032
	.field	-1571958,32			; _shine_enwindow[377] @ 12064
	.field	-1683627,32			; _shine_enwindow[378] @ 12096
	.field	-1780264,32			; _shine_enwindow[379] @ 12128
	.field	-1866163,32			; _shine_enwindow[380] @ 12160
	.field	-1939177,32			; _shine_enwindow[381] @ 12192
	.field	-1999307,32			; _shine_enwindow[382] @ 12224
	.field	-2048699,32			; _shine_enwindow[383] @ 12256
	.field	2085206,32			; _shine_enwindow[384] @ 12288
	.field	2113124,32			; _shine_enwindow[385] @ 12320
	.field	2130303,32			; _shine_enwindow[386] @ 12352
	.field	2136746,32			; _shine_enwindow[387] @ 12384
	.field	2134598,32			; _shine_enwindow[388] @ 12416
	.field	2123861,32			; _shine_enwindow[389] @ 12448
	.field	2106681,32			; _shine_enwindow[390] @ 12480
	.field	2080911,32			; _shine_enwindow[391] @ 12512
	.field	2048699,32			; _shine_enwindow[392] @ 12544
	.field	2010044,32			; _shine_enwindow[393] @ 12576
	.field	1964947,32			; _shine_enwindow[394] @ 12608
	.field	1915555,32			; _shine_enwindow[395] @ 12640
	.field	1859720,32			; _shine_enwindow[396] @ 12672
	.field	1801738,32			; _shine_enwindow[397] @ 12704
	.field	1739461,32			; _shine_enwindow[398] @ 12736
	.field	1672889,32			; _shine_enwindow[399] @ 12768
	.field	1604170,32			; _shine_enwindow[400] @ 12800
	.field	1533303,32			; _shine_enwindow[401] @ 12832
	.field	1462436,32			; _shine_enwindow[402] @ 12864
	.field	1389421,32			; _shine_enwindow[403] @ 12896
	.field	1314260,32			; _shine_enwindow[404] @ 12928
	.field	1239098,32			; _shine_enwindow[405] @ 12960
	.field	1163936,32			; _shine_enwindow[406] @ 12992
	.field	1088774,32			; _shine_enwindow[407] @ 13024
	.field	1015759,32			; _shine_enwindow[408] @ 13056
	.field	940597,32			; _shine_enwindow[409] @ 13088
	.field	867583,32			; _shine_enwindow[410] @ 13120
	.field	796716,32			; _shine_enwindow[411] @ 13152
	.field	727996,32			; _shine_enwindow[412] @ 13184
	.field	661424,32			; _shine_enwindow[413] @ 13216
	.field	594853,32			; _shine_enwindow[414] @ 13248
	.field	530428,32			; _shine_enwindow[415] @ 13280
	.field	470298,32			; _shine_enwindow[416] @ 13312
	.field	410169,32			; _shine_enwindow[417] @ 13344
	.field	354334,32			; _shine_enwindow[418] @ 13376
	.field	300647,32			; _shine_enwindow[419] @ 13408
	.field	249108,32			; _shine_enwindow[420] @ 13440
	.field	201863,32			; _shine_enwindow[421] @ 13472
	.field	156766,32			; _shine_enwindow[422] @ 13504
	.field	113816,32			; _shine_enwindow[423] @ 13536
	.field	73014,32			; _shine_enwindow[424] @ 13568
	.field	36507,32			; _shine_enwindow[425] @ 13600
	.field	2147,32			; _shine_enwindow[426] @ 13632
	.field	-30064,32			; _shine_enwindow[427] @ 13664
	.field	-57982,32			; _shine_enwindow[428] @ 13696
	.field	-85899,32			; _shine_enwindow[429] @ 13728
	.field	-109521,32			; _shine_enwindow[430] @ 13760
	.field	-130996,32			; _shine_enwindow[431] @ 13792
	.field	-150323,32			; _shine_enwindow[432] @ 13824
	.field	-167503,32			; _shine_enwindow[433] @ 13856
	.field	-180388,32			; _shine_enwindow[434] @ 13888
	.field	-193273,32			; _shine_enwindow[435] @ 13920
	.field	-204010,32			; _shine_enwindow[436] @ 13952
	.field	-212600,32			; _shine_enwindow[437] @ 13984
	.field	-221190,32			; _shine_enwindow[438] @ 14016
	.field	-225485,32			; _shine_enwindow[439] @ 14048
	.field	-229780,32			; _shine_enwindow[440] @ 14080
	.field	-231928,32			; _shine_enwindow[441] @ 14112
	.field	-234075,32			; _shine_enwindow[442] @ 14144
	.field	-234075,32			; _shine_enwindow[443] @ 14176
	.field	-231928,32			; _shine_enwindow[444] @ 14208
	.field	-229780,32			; _shine_enwindow[445] @ 14240
	.field	-227633,32			; _shine_enwindow[446] @ 14272
	.field	-223338,32			; _shine_enwindow[447] @ 14304
	.field	219043,32			; _shine_enwindow[448] @ 14336
	.field	212600,32			; _shine_enwindow[449] @ 14368
	.field	206158,32			; _shine_enwindow[450] @ 14400
	.field	199715,32			; _shine_enwindow[451] @ 14432
	.field	195421,32			; _shine_enwindow[452] @ 14464
	.field	186831,32			; _shine_enwindow[453] @ 14496
	.field	180388,32			; _shine_enwindow[454] @ 14528
	.field	173946,32			; _shine_enwindow[455] @ 14560
	.field	165356,32			; _shine_enwindow[456] @ 14592
	.field	156766,32			; _shine_enwindow[457] @ 14624
	.field	150323,32			; _shine_enwindow[458] @ 14656
	.field	141733,32			; _shine_enwindow[459] @ 14688
	.field	135291,32			; _shine_enwindow[460] @ 14720
	.field	128849,32			; _shine_enwindow[461] @ 14752
	.field	120259,32			; _shine_enwindow[462] @ 14784
	.field	113816,32			; _shine_enwindow[463] @ 14816
	.field	107374,32			; _shine_enwindow[464] @ 14848
	.field	98784,32			; _shine_enwindow[465] @ 14880
	.field	92341,32			; _shine_enwindow[466] @ 14912
	.field	88046,32			; _shine_enwindow[467] @ 14944
	.field	81604,32			; _shine_enwindow[468] @ 14976
	.field	75161,32			; _shine_enwindow[469] @ 15008
	.field	68719,32			; _shine_enwindow[470] @ 15040
	.field	64424,32			; _shine_enwindow[471] @ 15072
	.field	60129,32			; _shine_enwindow[472] @ 15104
	.field	53687,32			; _shine_enwindow[473] @ 15136
	.field	49392,32			; _shine_enwindow[474] @ 15168
	.field	45097,32			; _shine_enwindow[475] @ 15200
	.field	42949,32			; _shine_enwindow[476] @ 15232
	.field	38654,32			; _shine_enwindow[477] @ 15264
	.field	36507,32			; _shine_enwindow[478] @ 15296
	.field	32212,32			; _shine_enwindow[479] @ 15328
	.field	30064,32			; _shine_enwindow[480] @ 15360
	.field	25769,32			; _shine_enwindow[481] @ 15392
	.field	23622,32			; _shine_enwindow[482] @ 15424
	.field	21474,32			; _shine_enwindow[483] @ 15456
	.field	19327,32			; _shine_enwindow[484] @ 15488
	.field	17179,32			; _shine_enwindow[485] @ 15520
	.field	17179,32			; _shine_enwindow[486] @ 15552
	.field	15032,32			; _shine_enwindow[487] @ 15584
	.field	12884,32			; _shine_enwindow[488] @ 15616
	.field	10737,32			; _shine_enwindow[489] @ 15648
	.field	10737,32			; _shine_enwindow[490] @ 15680
	.field	8589,32			; _shine_enwindow[491] @ 15712
	.field	8589,32			; _shine_enwindow[492] @ 15744
	.field	6442,32			; _shine_enwindow[493] @ 15776
	.field	6442,32			; _shine_enwindow[494] @ 15808
	.field	6442,32			; _shine_enwindow[495] @ 15840
	.field	4294,32			; _shine_enwindow[496] @ 15872
	.field	4294,32			; _shine_enwindow[497] @ 15904
	.field	4294,32			; _shine_enwindow[498] @ 15936
	.field	4294,32			; _shine_enwindow[499] @ 15968
	.field	2147,32			; _shine_enwindow[500] @ 16000
	.field	2147,32			; _shine_enwindow[501] @ 16032
	.field	2147,32			; _shine_enwindow[502] @ 16064
	.field	2147,32			; _shine_enwindow[503] @ 16096
	.field	2147,32			; _shine_enwindow[504] @ 16128
	.field	2147,32			; _shine_enwindow[505] @ 16160
	.field	0,32			; _shine_enwindow[506] @ 16192
	.field	0,32			; _shine_enwindow[507] @ 16224
	.field	0,32			; _shine_enwindow[508] @ 16256
	.field	0,32			; _shine_enwindow[509] @ 16288
	.field	0,32			; _shine_enwindow[510] @ 16320
	.field	0,32			; _shine_enwindow[511] @ 16352

$C$DW$39	.dwtag  DW_TAG_variable, DW_AT_name("shine_enwindow")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_shine_enwindow")
	.dwattr $C$DW$39, DW_AT_location[DW_OP_addr _shine_enwindow]
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$253)
	.dwattr $C$DW$39, DW_AT_external
	.global	_dmask
	.sect	".const"
	.align	1
_dmask:
	.field	128,16			; _dmask @ 0

$C$DW$40	.dwtag  DW_TAG_variable, DW_AT_name("dmask")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_dmask")
	.dwattr $C$DW$40, DW_AT_location[DW_OP_addr _dmask]
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$40, DW_AT_external
	.global	_hs
	.sect	".const"
	.align	2
_hs:
	.field	8,32			; _hs @ 0

$C$DW$41	.dwtag  DW_TAG_variable, DW_AT_name("hs")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_hs")
	.dwattr $C$DW$41, DW_AT_location[DW_OP_addr _hs]
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$255)
	.dwattr $C$DW$41, DW_AT_external
	.sect	".const:_t1HB"
	.clink
	.align	1
_t1HB:
	.field	1,16			; _t1HB[0] @ 0
	.field	1,16			; _t1HB[1] @ 16
	.field	1,16			; _t1HB[2] @ 32
	.field	0,16			; _t1HB[3] @ 48

$C$DW$42	.dwtag  DW_TAG_variable, DW_AT_name("t1HB")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_t1HB")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$184)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_addr _t1HB]
	.sect	".const:_t2HB"
	.clink
	.align	1
_t2HB:
	.field	1,16			; _t2HB[0] @ 0
	.field	2,16			; _t2HB[1] @ 16
	.field	1,16			; _t2HB[2] @ 32
	.field	3,16			; _t2HB[3] @ 48
	.field	1,16			; _t2HB[4] @ 64
	.field	1,16			; _t2HB[5] @ 80
	.field	3,16			; _t2HB[6] @ 96
	.field	2,16			; _t2HB[7] @ 112
	.field	0,16			; _t2HB[8] @ 128

$C$DW$43	.dwtag  DW_TAG_variable, DW_AT_name("t2HB")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_t2HB")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$185)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_addr _t2HB]
	.sect	".const:_t3HB"
	.clink
	.align	1
_t3HB:
	.field	3,16			; _t3HB[0] @ 0
	.field	2,16			; _t3HB[1] @ 16
	.field	1,16			; _t3HB[2] @ 32
	.field	1,16			; _t3HB[3] @ 48
	.field	1,16			; _t3HB[4] @ 64
	.field	1,16			; _t3HB[5] @ 80
	.field	3,16			; _t3HB[6] @ 96
	.field	2,16			; _t3HB[7] @ 112
	.field	0,16			; _t3HB[8] @ 128

$C$DW$44	.dwtag  DW_TAG_variable, DW_AT_name("t3HB")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_t3HB")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$185)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_addr _t3HB]
	.sect	".const:_t5HB"
	.clink
	.align	1
_t5HB:
	.field	1,16			; _t5HB[0] @ 0
	.field	2,16			; _t5HB[1] @ 16
	.field	6,16			; _t5HB[2] @ 32
	.field	5,16			; _t5HB[3] @ 48
	.field	3,16			; _t5HB[4] @ 64
	.field	1,16			; _t5HB[5] @ 80
	.field	4,16			; _t5HB[6] @ 96
	.field	4,16			; _t5HB[7] @ 112
	.field	7,16			; _t5HB[8] @ 128
	.field	5,16			; _t5HB[9] @ 144
	.field	7,16			; _t5HB[10] @ 160
	.field	1,16			; _t5HB[11] @ 176
	.field	6,16			; _t5HB[12] @ 192
	.field	1,16			; _t5HB[13] @ 208
	.field	1,16			; _t5HB[14] @ 224
	.field	0,16			; _t5HB[15] @ 240

$C$DW$45	.dwtag  DW_TAG_variable, DW_AT_name("t5HB")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_t5HB")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$186)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_addr _t5HB]
	.sect	".const:_t6HB"
	.clink
	.align	1
_t6HB:
	.field	7,16			; _t6HB[0] @ 0
	.field	3,16			; _t6HB[1] @ 16
	.field	5,16			; _t6HB[2] @ 32
	.field	1,16			; _t6HB[3] @ 48
	.field	6,16			; _t6HB[4] @ 64
	.field	2,16			; _t6HB[5] @ 80
	.field	3,16			; _t6HB[6] @ 96
	.field	2,16			; _t6HB[7] @ 112
	.field	5,16			; _t6HB[8] @ 128
	.field	4,16			; _t6HB[9] @ 144
	.field	4,16			; _t6HB[10] @ 160
	.field	1,16			; _t6HB[11] @ 176
	.field	3,16			; _t6HB[12] @ 192
	.field	3,16			; _t6HB[13] @ 208
	.field	2,16			; _t6HB[14] @ 224
	.field	0,16			; _t6HB[15] @ 240

$C$DW$46	.dwtag  DW_TAG_variable, DW_AT_name("t6HB")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_t6HB")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$186)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_addr _t6HB]
	.sect	".const:_t7HB"
	.clink
	.align	1
_t7HB:
	.field	1,16			; _t7HB[0] @ 0
	.field	2,16			; _t7HB[1] @ 16
	.field	10,16			; _t7HB[2] @ 32
	.field	19,16			; _t7HB[3] @ 48
	.field	16,16			; _t7HB[4] @ 64
	.field	10,16			; _t7HB[5] @ 80
	.field	3,16			; _t7HB[6] @ 96
	.field	3,16			; _t7HB[7] @ 112
	.field	7,16			; _t7HB[8] @ 128
	.field	10,16			; _t7HB[9] @ 144
	.field	5,16			; _t7HB[10] @ 160
	.field	3,16			; _t7HB[11] @ 176
	.field	11,16			; _t7HB[12] @ 192
	.field	4,16			; _t7HB[13] @ 208
	.field	13,16			; _t7HB[14] @ 224
	.field	17,16			; _t7HB[15] @ 240
	.field	8,16			; _t7HB[16] @ 256
	.field	4,16			; _t7HB[17] @ 272
	.field	12,16			; _t7HB[18] @ 288
	.field	11,16			; _t7HB[19] @ 304
	.field	18,16			; _t7HB[20] @ 320
	.field	15,16			; _t7HB[21] @ 336
	.field	11,16			; _t7HB[22] @ 352
	.field	2,16			; _t7HB[23] @ 368
	.field	7,16			; _t7HB[24] @ 384
	.field	6,16			; _t7HB[25] @ 400
	.field	9,16			; _t7HB[26] @ 416
	.field	14,16			; _t7HB[27] @ 432
	.field	3,16			; _t7HB[28] @ 448
	.field	1,16			; _t7HB[29] @ 464
	.field	6,16			; _t7HB[30] @ 480
	.field	4,16			; _t7HB[31] @ 496
	.field	5,16			; _t7HB[32] @ 512
	.field	3,16			; _t7HB[33] @ 528
	.field	2,16			; _t7HB[34] @ 544
	.field	0,16			; _t7HB[35] @ 560

$C$DW$47	.dwtag  DW_TAG_variable, DW_AT_name("t7HB")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_t7HB")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$187)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_addr _t7HB]
	.sect	".const:_t8HB"
	.clink
	.align	1
_t8HB:
	.field	3,16			; _t8HB[0] @ 0
	.field	4,16			; _t8HB[1] @ 16
	.field	6,16			; _t8HB[2] @ 32
	.field	18,16			; _t8HB[3] @ 48
	.field	12,16			; _t8HB[4] @ 64
	.field	5,16			; _t8HB[5] @ 80
	.field	5,16			; _t8HB[6] @ 96
	.field	1,16			; _t8HB[7] @ 112
	.field	2,16			; _t8HB[8] @ 128
	.field	16,16			; _t8HB[9] @ 144
	.field	9,16			; _t8HB[10] @ 160
	.field	3,16			; _t8HB[11] @ 176
	.field	7,16			; _t8HB[12] @ 192
	.field	3,16			; _t8HB[13] @ 208
	.field	5,16			; _t8HB[14] @ 224
	.field	14,16			; _t8HB[15] @ 240
	.field	7,16			; _t8HB[16] @ 256
	.field	3,16			; _t8HB[17] @ 272
	.field	19,16			; _t8HB[18] @ 288
	.field	17,16			; _t8HB[19] @ 304
	.field	15,16			; _t8HB[20] @ 320
	.field	13,16			; _t8HB[21] @ 336
	.field	10,16			; _t8HB[22] @ 352
	.field	4,16			; _t8HB[23] @ 368
	.field	13,16			; _t8HB[24] @ 384
	.field	5,16			; _t8HB[25] @ 400
	.field	8,16			; _t8HB[26] @ 416
	.field	11,16			; _t8HB[27] @ 432
	.field	5,16			; _t8HB[28] @ 448
	.field	1,16			; _t8HB[29] @ 464
	.field	12,16			; _t8HB[30] @ 480
	.field	4,16			; _t8HB[31] @ 496
	.field	4,16			; _t8HB[32] @ 512
	.field	1,16			; _t8HB[33] @ 528
	.field	1,16			; _t8HB[34] @ 544
	.field	0,16			; _t8HB[35] @ 560

$C$DW$48	.dwtag  DW_TAG_variable, DW_AT_name("t8HB")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_t8HB")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$187)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_addr _t8HB]
	.sect	".const:_t9HB"
	.clink
	.align	1
_t9HB:
	.field	7,16			; _t9HB[0] @ 0
	.field	5,16			; _t9HB[1] @ 16
	.field	9,16			; _t9HB[2] @ 32
	.field	14,16			; _t9HB[3] @ 48
	.field	15,16			; _t9HB[4] @ 64
	.field	7,16			; _t9HB[5] @ 80
	.field	6,16			; _t9HB[6] @ 96
	.field	4,16			; _t9HB[7] @ 112
	.field	5,16			; _t9HB[8] @ 128
	.field	5,16			; _t9HB[9] @ 144
	.field	6,16			; _t9HB[10] @ 160
	.field	7,16			; _t9HB[11] @ 176
	.field	7,16			; _t9HB[12] @ 192
	.field	6,16			; _t9HB[13] @ 208
	.field	8,16			; _t9HB[14] @ 224
	.field	8,16			; _t9HB[15] @ 240
	.field	8,16			; _t9HB[16] @ 256
	.field	5,16			; _t9HB[17] @ 272
	.field	15,16			; _t9HB[18] @ 288
	.field	6,16			; _t9HB[19] @ 304
	.field	9,16			; _t9HB[20] @ 320
	.field	10,16			; _t9HB[21] @ 336
	.field	5,16			; _t9HB[22] @ 352
	.field	1,16			; _t9HB[23] @ 368
	.field	11,16			; _t9HB[24] @ 384
	.field	7,16			; _t9HB[25] @ 400
	.field	9,16			; _t9HB[26] @ 416
	.field	6,16			; _t9HB[27] @ 432
	.field	4,16			; _t9HB[28] @ 448
	.field	1,16			; _t9HB[29] @ 464
	.field	14,16			; _t9HB[30] @ 480
	.field	4,16			; _t9HB[31] @ 496
	.field	6,16			; _t9HB[32] @ 512
	.field	2,16			; _t9HB[33] @ 528
	.field	6,16			; _t9HB[34] @ 544
	.field	0,16			; _t9HB[35] @ 560

$C$DW$49	.dwtag  DW_TAG_variable, DW_AT_name("t9HB")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_t9HB")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$187)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_addr _t9HB]
	.sect	".const:_t10HB"
	.clink
	.align	1
_t10HB:
	.field	1,16			; _t10HB[0] @ 0
	.field	2,16			; _t10HB[1] @ 16
	.field	10,16			; _t10HB[2] @ 32
	.field	23,16			; _t10HB[3] @ 48
	.field	35,16			; _t10HB[4] @ 64
	.field	30,16			; _t10HB[5] @ 80
	.field	12,16			; _t10HB[6] @ 96
	.field	17,16			; _t10HB[7] @ 112
	.field	3,16			; _t10HB[8] @ 128
	.field	3,16			; _t10HB[9] @ 144
	.field	8,16			; _t10HB[10] @ 160
	.field	12,16			; _t10HB[11] @ 176
	.field	18,16			; _t10HB[12] @ 192
	.field	21,16			; _t10HB[13] @ 208
	.field	12,16			; _t10HB[14] @ 224
	.field	7,16			; _t10HB[15] @ 240
	.field	11,16			; _t10HB[16] @ 256
	.field	9,16			; _t10HB[17] @ 272
	.field	15,16			; _t10HB[18] @ 288
	.field	21,16			; _t10HB[19] @ 304
	.field	32,16			; _t10HB[20] @ 320
	.field	40,16			; _t10HB[21] @ 336
	.field	19,16			; _t10HB[22] @ 352
	.field	6,16			; _t10HB[23] @ 368
	.field	14,16			; _t10HB[24] @ 384
	.field	13,16			; _t10HB[25] @ 400
	.field	22,16			; _t10HB[26] @ 416
	.field	34,16			; _t10HB[27] @ 432
	.field	46,16			; _t10HB[28] @ 448
	.field	23,16			; _t10HB[29] @ 464
	.field	18,16			; _t10HB[30] @ 480
	.field	7,16			; _t10HB[31] @ 496
	.field	20,16			; _t10HB[32] @ 512
	.field	19,16			; _t10HB[33] @ 528
	.field	33,16			; _t10HB[34] @ 544
	.field	47,16			; _t10HB[35] @ 560
	.field	27,16			; _t10HB[36] @ 576
	.field	22,16			; _t10HB[37] @ 592
	.field	9,16			; _t10HB[38] @ 608
	.field	3,16			; _t10HB[39] @ 624
	.field	31,16			; _t10HB[40] @ 640
	.field	22,16			; _t10HB[41] @ 656
	.field	41,16			; _t10HB[42] @ 672
	.field	26,16			; _t10HB[43] @ 688
	.field	21,16			; _t10HB[44] @ 704
	.field	20,16			; _t10HB[45] @ 720
	.field	5,16			; _t10HB[46] @ 736
	.field	3,16			; _t10HB[47] @ 752
	.field	14,16			; _t10HB[48] @ 768
	.field	13,16			; _t10HB[49] @ 784
	.field	10,16			; _t10HB[50] @ 800
	.field	11,16			; _t10HB[51] @ 816
	.field	16,16			; _t10HB[52] @ 832
	.field	6,16			; _t10HB[53] @ 848
	.field	5,16			; _t10HB[54] @ 864
	.field	1,16			; _t10HB[55] @ 880
	.field	9,16			; _t10HB[56] @ 896
	.field	8,16			; _t10HB[57] @ 912
	.field	7,16			; _t10HB[58] @ 928
	.field	8,16			; _t10HB[59] @ 944
	.field	4,16			; _t10HB[60] @ 960
	.field	4,16			; _t10HB[61] @ 976
	.field	2,16			; _t10HB[62] @ 992
	.field	0,16			; _t10HB[63] @ 1008

$C$DW$50	.dwtag  DW_TAG_variable, DW_AT_name("t10HB")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_t10HB")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$188)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_addr _t10HB]
	.sect	".const:_t11HB"
	.clink
	.align	1
_t11HB:
	.field	3,16			; _t11HB[0] @ 0
	.field	4,16			; _t11HB[1] @ 16
	.field	10,16			; _t11HB[2] @ 32
	.field	24,16			; _t11HB[3] @ 48
	.field	34,16			; _t11HB[4] @ 64
	.field	33,16			; _t11HB[5] @ 80
	.field	21,16			; _t11HB[6] @ 96
	.field	15,16			; _t11HB[7] @ 112
	.field	5,16			; _t11HB[8] @ 128
	.field	3,16			; _t11HB[9] @ 144
	.field	4,16			; _t11HB[10] @ 160
	.field	10,16			; _t11HB[11] @ 176
	.field	32,16			; _t11HB[12] @ 192
	.field	17,16			; _t11HB[13] @ 208
	.field	11,16			; _t11HB[14] @ 224
	.field	10,16			; _t11HB[15] @ 240
	.field	11,16			; _t11HB[16] @ 256
	.field	7,16			; _t11HB[17] @ 272
	.field	13,16			; _t11HB[18] @ 288
	.field	18,16			; _t11HB[19] @ 304
	.field	30,16			; _t11HB[20] @ 320
	.field	31,16			; _t11HB[21] @ 336
	.field	20,16			; _t11HB[22] @ 352
	.field	5,16			; _t11HB[23] @ 368
	.field	25,16			; _t11HB[24] @ 384
	.field	11,16			; _t11HB[25] @ 400
	.field	19,16			; _t11HB[26] @ 416
	.field	59,16			; _t11HB[27] @ 432
	.field	27,16			; _t11HB[28] @ 448
	.field	18,16			; _t11HB[29] @ 464
	.field	12,16			; _t11HB[30] @ 480
	.field	5,16			; _t11HB[31] @ 496
	.field	35,16			; _t11HB[32] @ 512
	.field	33,16			; _t11HB[33] @ 528
	.field	31,16			; _t11HB[34] @ 544
	.field	58,16			; _t11HB[35] @ 560
	.field	30,16			; _t11HB[36] @ 576
	.field	16,16			; _t11HB[37] @ 592
	.field	7,16			; _t11HB[38] @ 608
	.field	5,16			; _t11HB[39] @ 624
	.field	28,16			; _t11HB[40] @ 640
	.field	26,16			; _t11HB[41] @ 656
	.field	32,16			; _t11HB[42] @ 672
	.field	19,16			; _t11HB[43] @ 688
	.field	17,16			; _t11HB[44] @ 704
	.field	15,16			; _t11HB[45] @ 720
	.field	8,16			; _t11HB[46] @ 736
	.field	14,16			; _t11HB[47] @ 752
	.field	14,16			; _t11HB[48] @ 768
	.field	12,16			; _t11HB[49] @ 784
	.field	9,16			; _t11HB[50] @ 800
	.field	13,16			; _t11HB[51] @ 816
	.field	14,16			; _t11HB[52] @ 832
	.field	9,16			; _t11HB[53] @ 848
	.field	4,16			; _t11HB[54] @ 864
	.field	1,16			; _t11HB[55] @ 880
	.field	11,16			; _t11HB[56] @ 896
	.field	4,16			; _t11HB[57] @ 912
	.field	6,16			; _t11HB[58] @ 928
	.field	6,16			; _t11HB[59] @ 944
	.field	6,16			; _t11HB[60] @ 960
	.field	3,16			; _t11HB[61] @ 976
	.field	2,16			; _t11HB[62] @ 992
	.field	0,16			; _t11HB[63] @ 1008

$C$DW$51	.dwtag  DW_TAG_variable, DW_AT_name("t11HB")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_t11HB")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$188)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_addr _t11HB]
	.sect	".const:_t12HB"
	.clink
	.align	1
_t12HB:
	.field	9,16			; _t12HB[0] @ 0
	.field	6,16			; _t12HB[1] @ 16
	.field	16,16			; _t12HB[2] @ 32
	.field	33,16			; _t12HB[3] @ 48
	.field	41,16			; _t12HB[4] @ 64
	.field	39,16			; _t12HB[5] @ 80
	.field	38,16			; _t12HB[6] @ 96
	.field	26,16			; _t12HB[7] @ 112
	.field	7,16			; _t12HB[8] @ 128
	.field	5,16			; _t12HB[9] @ 144
	.field	6,16			; _t12HB[10] @ 160
	.field	9,16			; _t12HB[11] @ 176
	.field	23,16			; _t12HB[12] @ 192
	.field	16,16			; _t12HB[13] @ 208
	.field	26,16			; _t12HB[14] @ 224
	.field	11,16			; _t12HB[15] @ 240
	.field	17,16			; _t12HB[16] @ 256
	.field	7,16			; _t12HB[17] @ 272
	.field	11,16			; _t12HB[18] @ 288
	.field	14,16			; _t12HB[19] @ 304
	.field	21,16			; _t12HB[20] @ 320
	.field	30,16			; _t12HB[21] @ 336
	.field	10,16			; _t12HB[22] @ 352
	.field	7,16			; _t12HB[23] @ 368
	.field	17,16			; _t12HB[24] @ 384
	.field	10,16			; _t12HB[25] @ 400
	.field	15,16			; _t12HB[26] @ 416
	.field	12,16			; _t12HB[27] @ 432
	.field	18,16			; _t12HB[28] @ 448
	.field	28,16			; _t12HB[29] @ 464
	.field	14,16			; _t12HB[30] @ 480
	.field	5,16			; _t12HB[31] @ 496
	.field	32,16			; _t12HB[32] @ 512
	.field	13,16			; _t12HB[33] @ 528
	.field	22,16			; _t12HB[34] @ 544
	.field	19,16			; _t12HB[35] @ 560
	.field	18,16			; _t12HB[36] @ 576
	.field	16,16			; _t12HB[37] @ 592
	.field	9,16			; _t12HB[38] @ 608
	.field	5,16			; _t12HB[39] @ 624
	.field	40,16			; _t12HB[40] @ 640
	.field	17,16			; _t12HB[41] @ 656
	.field	31,16			; _t12HB[42] @ 672
	.field	29,16			; _t12HB[43] @ 688
	.field	17,16			; _t12HB[44] @ 704
	.field	13,16			; _t12HB[45] @ 720
	.field	4,16			; _t12HB[46] @ 736
	.field	2,16			; _t12HB[47] @ 752
	.field	27,16			; _t12HB[48] @ 768
	.field	12,16			; _t12HB[49] @ 784
	.field	11,16			; _t12HB[50] @ 800
	.field	15,16			; _t12HB[51] @ 816
	.field	10,16			; _t12HB[52] @ 832
	.field	7,16			; _t12HB[53] @ 848
	.field	4,16			; _t12HB[54] @ 864
	.field	1,16			; _t12HB[55] @ 880
	.field	27,16			; _t12HB[56] @ 896
	.field	12,16			; _t12HB[57] @ 912
	.field	8,16			; _t12HB[58] @ 928
	.field	12,16			; _t12HB[59] @ 944
	.field	6,16			; _t12HB[60] @ 960
	.field	3,16			; _t12HB[61] @ 976
	.field	1,16			; _t12HB[62] @ 992
	.field	0,16			; _t12HB[63] @ 1008

$C$DW$52	.dwtag  DW_TAG_variable, DW_AT_name("t12HB")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_t12HB")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$188)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_addr _t12HB]
	.sect	".const:_t13HB"
	.clink
	.align	1
_t13HB:
	.field	1,16			; _t13HB[0] @ 0
	.field	5,16			; _t13HB[1] @ 16
	.field	14,16			; _t13HB[2] @ 32
	.field	21,16			; _t13HB[3] @ 48
	.field	34,16			; _t13HB[4] @ 64
	.field	51,16			; _t13HB[5] @ 80
	.field	46,16			; _t13HB[6] @ 96
	.field	71,16			; _t13HB[7] @ 112
	.field	42,16			; _t13HB[8] @ 128
	.field	52,16			; _t13HB[9] @ 144
	.field	68,16			; _t13HB[10] @ 160
	.field	52,16			; _t13HB[11] @ 176
	.field	67,16			; _t13HB[12] @ 192
	.field	44,16			; _t13HB[13] @ 208
	.field	43,16			; _t13HB[14] @ 224
	.field	19,16			; _t13HB[15] @ 240
	.field	3,16			; _t13HB[16] @ 256
	.field	4,16			; _t13HB[17] @ 272
	.field	12,16			; _t13HB[18] @ 288
	.field	19,16			; _t13HB[19] @ 304
	.field	31,16			; _t13HB[20] @ 320
	.field	26,16			; _t13HB[21] @ 336
	.field	44,16			; _t13HB[22] @ 352
	.field	33,16			; _t13HB[23] @ 368
	.field	31,16			; _t13HB[24] @ 384
	.field	24,16			; _t13HB[25] @ 400
	.field	32,16			; _t13HB[26] @ 416
	.field	24,16			; _t13HB[27] @ 432
	.field	31,16			; _t13HB[28] @ 448
	.field	35,16			; _t13HB[29] @ 464
	.field	22,16			; _t13HB[30] @ 480
	.field	14,16			; _t13HB[31] @ 496
	.field	15,16			; _t13HB[32] @ 512
	.field	13,16			; _t13HB[33] @ 528
	.field	23,16			; _t13HB[34] @ 544
	.field	36,16			; _t13HB[35] @ 560
	.field	59,16			; _t13HB[36] @ 576
	.field	49,16			; _t13HB[37] @ 592
	.field	77,16			; _t13HB[38] @ 608
	.field	65,16			; _t13HB[39] @ 624
	.field	29,16			; _t13HB[40] @ 640
	.field	40,16			; _t13HB[41] @ 656
	.field	30,16			; _t13HB[42] @ 672
	.field	40,16			; _t13HB[43] @ 688
	.field	27,16			; _t13HB[44] @ 704
	.field	33,16			; _t13HB[45] @ 720
	.field	42,16			; _t13HB[46] @ 736
	.field	16,16			; _t13HB[47] @ 752
	.field	22,16			; _t13HB[48] @ 768
	.field	20,16			; _t13HB[49] @ 784
	.field	37,16			; _t13HB[50] @ 800
	.field	61,16			; _t13HB[51] @ 816
	.field	56,16			; _t13HB[52] @ 832
	.field	79,16			; _t13HB[53] @ 848
	.field	73,16			; _t13HB[54] @ 864
	.field	64,16			; _t13HB[55] @ 880
	.field	43,16			; _t13HB[56] @ 896
	.field	76,16			; _t13HB[57] @ 912
	.field	56,16			; _t13HB[58] @ 928
	.field	37,16			; _t13HB[59] @ 944
	.field	26,16			; _t13HB[60] @ 960
	.field	31,16			; _t13HB[61] @ 976
	.field	25,16			; _t13HB[62] @ 992
	.field	14,16			; _t13HB[63] @ 1008
	.field	35,16			; _t13HB[64] @ 1024
	.field	16,16			; _t13HB[65] @ 1040
	.field	60,16			; _t13HB[66] @ 1056
	.field	57,16			; _t13HB[67] @ 1072
	.field	97,16			; _t13HB[68] @ 1088
	.field	75,16			; _t13HB[69] @ 1104
	.field	114,16			; _t13HB[70] @ 1120
	.field	91,16			; _t13HB[71] @ 1136
	.field	54,16			; _t13HB[72] @ 1152
	.field	73,16			; _t13HB[73] @ 1168
	.field	55,16			; _t13HB[74] @ 1184
	.field	41,16			; _t13HB[75] @ 1200
	.field	48,16			; _t13HB[76] @ 1216
	.field	53,16			; _t13HB[77] @ 1232
	.field	23,16			; _t13HB[78] @ 1248
	.field	24,16			; _t13HB[79] @ 1264
	.field	58,16			; _t13HB[80] @ 1280
	.field	27,16			; _t13HB[81] @ 1296
	.field	50,16			; _t13HB[82] @ 1312
	.field	96,16			; _t13HB[83] @ 1328
	.field	76,16			; _t13HB[84] @ 1344
	.field	70,16			; _t13HB[85] @ 1360
	.field	93,16			; _t13HB[86] @ 1376
	.field	84,16			; _t13HB[87] @ 1392
	.field	77,16			; _t13HB[88] @ 1408
	.field	58,16			; _t13HB[89] @ 1424
	.field	79,16			; _t13HB[90] @ 1440
	.field	29,16			; _t13HB[91] @ 1456
	.field	74,16			; _t13HB[92] @ 1472
	.field	49,16			; _t13HB[93] @ 1488
	.field	41,16			; _t13HB[94] @ 1504
	.field	17,16			; _t13HB[95] @ 1520
	.field	47,16			; _t13HB[96] @ 1536
	.field	45,16			; _t13HB[97] @ 1552
	.field	78,16			; _t13HB[98] @ 1568
	.field	74,16			; _t13HB[99] @ 1584
	.field	115,16			; _t13HB[100] @ 1600
	.field	94,16			; _t13HB[101] @ 1616
	.field	90,16			; _t13HB[102] @ 1632
	.field	79,16			; _t13HB[103] @ 1648
	.field	69,16			; _t13HB[104] @ 1664
	.field	83,16			; _t13HB[105] @ 1680
	.field	71,16			; _t13HB[106] @ 1696
	.field	50,16			; _t13HB[107] @ 1712
	.field	59,16			; _t13HB[108] @ 1728
	.field	38,16			; _t13HB[109] @ 1744
	.field	36,16			; _t13HB[110] @ 1760
	.field	15,16			; _t13HB[111] @ 1776
	.field	72,16			; _t13HB[112] @ 1792
	.field	34,16			; _t13HB[113] @ 1808
	.field	56,16			; _t13HB[114] @ 1824
	.field	95,16			; _t13HB[115] @ 1840
	.field	92,16			; _t13HB[116] @ 1856
	.field	85,16			; _t13HB[117] @ 1872
	.field	91,16			; _t13HB[118] @ 1888
	.field	90,16			; _t13HB[119] @ 1904
	.field	86,16			; _t13HB[120] @ 1920
	.field	73,16			; _t13HB[121] @ 1936
	.field	77,16			; _t13HB[122] @ 1952
	.field	65,16			; _t13HB[123] @ 1968
	.field	51,16			; _t13HB[124] @ 1984
	.field	44,16			; _t13HB[125] @ 2000
	.field	43,16			; _t13HB[126] @ 2016
	.field	42,16			; _t13HB[127] @ 2032
	.field	43,16			; _t13HB[128] @ 2048
	.field	20,16			; _t13HB[129] @ 2064
	.field	30,16			; _t13HB[130] @ 2080
	.field	44,16			; _t13HB[131] @ 2096
	.field	55,16			; _t13HB[132] @ 2112
	.field	78,16			; _t13HB[133] @ 2128
	.field	72,16			; _t13HB[134] @ 2144
	.field	87,16			; _t13HB[135] @ 2160
	.field	78,16			; _t13HB[136] @ 2176
	.field	61,16			; _t13HB[137] @ 2192
	.field	46,16			; _t13HB[138] @ 2208
	.field	54,16			; _t13HB[139] @ 2224
	.field	37,16			; _t13HB[140] @ 2240
	.field	30,16			; _t13HB[141] @ 2256
	.field	20,16			; _t13HB[142] @ 2272
	.field	16,16			; _t13HB[143] @ 2288
	.field	53,16			; _t13HB[144] @ 2304
	.field	25,16			; _t13HB[145] @ 2320
	.field	41,16			; _t13HB[146] @ 2336
	.field	37,16			; _t13HB[147] @ 2352
	.field	44,16			; _t13HB[148] @ 2368
	.field	59,16			; _t13HB[149] @ 2384
	.field	54,16			; _t13HB[150] @ 2400
	.field	81,16			; _t13HB[151] @ 2416
	.field	66,16			; _t13HB[152] @ 2432
	.field	76,16			; _t13HB[153] @ 2448
	.field	57,16			; _t13HB[154] @ 2464
	.field	54,16			; _t13HB[155] @ 2480
	.field	37,16			; _t13HB[156] @ 2496
	.field	18,16			; _t13HB[157] @ 2512
	.field	39,16			; _t13HB[158] @ 2528
	.field	11,16			; _t13HB[159] @ 2544
	.field	35,16			; _t13HB[160] @ 2560
	.field	33,16			; _t13HB[161] @ 2576
	.field	31,16			; _t13HB[162] @ 2592
	.field	57,16			; _t13HB[163] @ 2608
	.field	42,16			; _t13HB[164] @ 2624
	.field	82,16			; _t13HB[165] @ 2640
	.field	72,16			; _t13HB[166] @ 2656
	.field	80,16			; _t13HB[167] @ 2672
	.field	47,16			; _t13HB[168] @ 2688
	.field	58,16			; _t13HB[169] @ 2704
	.field	55,16			; _t13HB[170] @ 2720
	.field	21,16			; _t13HB[171] @ 2736
	.field	22,16			; _t13HB[172] @ 2752
	.field	26,16			; _t13HB[173] @ 2768
	.field	38,16			; _t13HB[174] @ 2784
	.field	22,16			; _t13HB[175] @ 2800
	.field	53,16			; _t13HB[176] @ 2816
	.field	25,16			; _t13HB[177] @ 2832
	.field	23,16			; _t13HB[178] @ 2848
	.field	38,16			; _t13HB[179] @ 2864
	.field	70,16			; _t13HB[180] @ 2880
	.field	60,16			; _t13HB[181] @ 2896
	.field	51,16			; _t13HB[182] @ 2912
	.field	36,16			; _t13HB[183] @ 2928
	.field	55,16			; _t13HB[184] @ 2944
	.field	26,16			; _t13HB[185] @ 2960
	.field	34,16			; _t13HB[186] @ 2976
	.field	23,16			; _t13HB[187] @ 2992
	.field	27,16			; _t13HB[188] @ 3008
	.field	14,16			; _t13HB[189] @ 3024
	.field	9,16			; _t13HB[190] @ 3040
	.field	7,16			; _t13HB[191] @ 3056
	.field	34,16			; _t13HB[192] @ 3072
	.field	32,16			; _t13HB[193] @ 3088
	.field	28,16			; _t13HB[194] @ 3104
	.field	39,16			; _t13HB[195] @ 3120
	.field	49,16			; _t13HB[196] @ 3136
	.field	75,16			; _t13HB[197] @ 3152
	.field	30,16			; _t13HB[198] @ 3168
	.field	52,16			; _t13HB[199] @ 3184
	.field	48,16			; _t13HB[200] @ 3200
	.field	40,16			; _t13HB[201] @ 3216
	.field	52,16			; _t13HB[202] @ 3232
	.field	28,16			; _t13HB[203] @ 3248
	.field	18,16			; _t13HB[204] @ 3264
	.field	17,16			; _t13HB[205] @ 3280
	.field	9,16			; _t13HB[206] @ 3296
	.field	5,16			; _t13HB[207] @ 3312
	.field	45,16			; _t13HB[208] @ 3328
	.field	21,16			; _t13HB[209] @ 3344
	.field	34,16			; _t13HB[210] @ 3360
	.field	64,16			; _t13HB[211] @ 3376
	.field	56,16			; _t13HB[212] @ 3392
	.field	50,16			; _t13HB[213] @ 3408
	.field	49,16			; _t13HB[214] @ 3424
	.field	45,16			; _t13HB[215] @ 3440
	.field	31,16			; _t13HB[216] @ 3456
	.field	19,16			; _t13HB[217] @ 3472
	.field	12,16			; _t13HB[218] @ 3488
	.field	15,16			; _t13HB[219] @ 3504
	.field	10,16			; _t13HB[220] @ 3520
	.field	7,16			; _t13HB[221] @ 3536
	.field	6,16			; _t13HB[222] @ 3552
	.field	3,16			; _t13HB[223] @ 3568
	.field	48,16			; _t13HB[224] @ 3584
	.field	23,16			; _t13HB[225] @ 3600
	.field	20,16			; _t13HB[226] @ 3616
	.field	39,16			; _t13HB[227] @ 3632
	.field	36,16			; _t13HB[228] @ 3648
	.field	35,16			; _t13HB[229] @ 3664
	.field	53,16			; _t13HB[230] @ 3680
	.field	21,16			; _t13HB[231] @ 3696
	.field	16,16			; _t13HB[232] @ 3712
	.field	23,16			; _t13HB[233] @ 3728
	.field	13,16			; _t13HB[234] @ 3744
	.field	10,16			; _t13HB[235] @ 3760
	.field	6,16			; _t13HB[236] @ 3776
	.field	1,16			; _t13HB[237] @ 3792
	.field	4,16			; _t13HB[238] @ 3808
	.field	2,16			; _t13HB[239] @ 3824
	.field	16,16			; _t13HB[240] @ 3840
	.field	15,16			; _t13HB[241] @ 3856
	.field	17,16			; _t13HB[242] @ 3872
	.field	27,16			; _t13HB[243] @ 3888
	.field	25,16			; _t13HB[244] @ 3904
	.field	20,16			; _t13HB[245] @ 3920
	.field	29,16			; _t13HB[246] @ 3936
	.field	11,16			; _t13HB[247] @ 3952
	.field	17,16			; _t13HB[248] @ 3968
	.field	12,16			; _t13HB[249] @ 3984
	.field	16,16			; _t13HB[250] @ 4000
	.field	8,16			; _t13HB[251] @ 4016
	.field	1,16			; _t13HB[252] @ 4032
	.field	1,16			; _t13HB[253] @ 4048
	.field	0,16			; _t13HB[254] @ 4064
	.field	1,16			; _t13HB[255] @ 4080

$C$DW$53	.dwtag  DW_TAG_variable, DW_AT_name("t13HB")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_t13HB")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$189)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_addr _t13HB]
	.sect	".const:_t15HB"
	.clink
	.align	1
_t15HB:
	.field	7,16			; _t15HB[0] @ 0
	.field	12,16			; _t15HB[1] @ 16
	.field	18,16			; _t15HB[2] @ 32
	.field	53,16			; _t15HB[3] @ 48
	.field	47,16			; _t15HB[4] @ 64
	.field	76,16			; _t15HB[5] @ 80
	.field	124,16			; _t15HB[6] @ 96
	.field	108,16			; _t15HB[7] @ 112
	.field	89,16			; _t15HB[8] @ 128
	.field	123,16			; _t15HB[9] @ 144
	.field	108,16			; _t15HB[10] @ 160
	.field	119,16			; _t15HB[11] @ 176
	.field	107,16			; _t15HB[12] @ 192
	.field	81,16			; _t15HB[13] @ 208
	.field	122,16			; _t15HB[14] @ 224
	.field	63,16			; _t15HB[15] @ 240
	.field	13,16			; _t15HB[16] @ 256
	.field	5,16			; _t15HB[17] @ 272
	.field	16,16			; _t15HB[18] @ 288
	.field	27,16			; _t15HB[19] @ 304
	.field	46,16			; _t15HB[20] @ 320
	.field	36,16			; _t15HB[21] @ 336
	.field	61,16			; _t15HB[22] @ 352
	.field	51,16			; _t15HB[23] @ 368
	.field	42,16			; _t15HB[24] @ 384
	.field	70,16			; _t15HB[25] @ 400
	.field	52,16			; _t15HB[26] @ 416
	.field	83,16			; _t15HB[27] @ 432
	.field	65,16			; _t15HB[28] @ 448
	.field	41,16			; _t15HB[29] @ 464
	.field	59,16			; _t15HB[30] @ 480
	.field	36,16			; _t15HB[31] @ 496
	.field	19,16			; _t15HB[32] @ 512
	.field	17,16			; _t15HB[33] @ 528
	.field	15,16			; _t15HB[34] @ 544
	.field	24,16			; _t15HB[35] @ 560
	.field	41,16			; _t15HB[36] @ 576
	.field	34,16			; _t15HB[37] @ 592
	.field	59,16			; _t15HB[38] @ 608
	.field	48,16			; _t15HB[39] @ 624
	.field	40,16			; _t15HB[40] @ 640
	.field	64,16			; _t15HB[41] @ 656
	.field	50,16			; _t15HB[42] @ 672
	.field	78,16			; _t15HB[43] @ 688
	.field	62,16			; _t15HB[44] @ 704
	.field	80,16			; _t15HB[45] @ 720
	.field	56,16			; _t15HB[46] @ 736
	.field	33,16			; _t15HB[47] @ 752
	.field	29,16			; _t15HB[48] @ 768
	.field	28,16			; _t15HB[49] @ 784
	.field	25,16			; _t15HB[50] @ 800
	.field	43,16			; _t15HB[51] @ 816
	.field	39,16			; _t15HB[52] @ 832
	.field	63,16			; _t15HB[53] @ 848
	.field	55,16			; _t15HB[54] @ 864
	.field	93,16			; _t15HB[55] @ 880
	.field	76,16			; _t15HB[56] @ 896
	.field	59,16			; _t15HB[57] @ 912
	.field	93,16			; _t15HB[58] @ 928
	.field	72,16			; _t15HB[59] @ 944
	.field	54,16			; _t15HB[60] @ 960
	.field	75,16			; _t15HB[61] @ 976
	.field	50,16			; _t15HB[62] @ 992
	.field	29,16			; _t15HB[63] @ 1008
	.field	52,16			; _t15HB[64] @ 1024
	.field	22,16			; _t15HB[65] @ 1040
	.field	42,16			; _t15HB[66] @ 1056
	.field	40,16			; _t15HB[67] @ 1072
	.field	67,16			; _t15HB[68] @ 1088
	.field	57,16			; _t15HB[69] @ 1104
	.field	95,16			; _t15HB[70] @ 1120
	.field	79,16			; _t15HB[71] @ 1136
	.field	72,16			; _t15HB[72] @ 1152
	.field	57,16			; _t15HB[73] @ 1168
	.field	89,16			; _t15HB[74] @ 1184
	.field	69,16			; _t15HB[75] @ 1200
	.field	49,16			; _t15HB[76] @ 1216
	.field	66,16			; _t15HB[77] @ 1232
	.field	46,16			; _t15HB[78] @ 1248
	.field	27,16			; _t15HB[79] @ 1264
	.field	77,16			; _t15HB[80] @ 1280
	.field	37,16			; _t15HB[81] @ 1296
	.field	35,16			; _t15HB[82] @ 1312
	.field	66,16			; _t15HB[83] @ 1328
	.field	58,16			; _t15HB[84] @ 1344
	.field	52,16			; _t15HB[85] @ 1360
	.field	91,16			; _t15HB[86] @ 1376
	.field	74,16			; _t15HB[87] @ 1392
	.field	62,16			; _t15HB[88] @ 1408
	.field	48,16			; _t15HB[89] @ 1424
	.field	79,16			; _t15HB[90] @ 1440
	.field	63,16			; _t15HB[91] @ 1456
	.field	90,16			; _t15HB[92] @ 1472
	.field	62,16			; _t15HB[93] @ 1488
	.field	40,16			; _t15HB[94] @ 1504
	.field	38,16			; _t15HB[95] @ 1520
	.field	125,16			; _t15HB[96] @ 1536
	.field	32,16			; _t15HB[97] @ 1552
	.field	60,16			; _t15HB[98] @ 1568
	.field	56,16			; _t15HB[99] @ 1584
	.field	50,16			; _t15HB[100] @ 1600
	.field	92,16			; _t15HB[101] @ 1616
	.field	78,16			; _t15HB[102] @ 1632
	.field	65,16			; _t15HB[103] @ 1648
	.field	55,16			; _t15HB[104] @ 1664
	.field	87,16			; _t15HB[105] @ 1680
	.field	71,16			; _t15HB[106] @ 1696
	.field	51,16			; _t15HB[107] @ 1712
	.field	73,16			; _t15HB[108] @ 1728
	.field	51,16			; _t15HB[109] @ 1744
	.field	70,16			; _t15HB[110] @ 1760
	.field	30,16			; _t15HB[111] @ 1776
	.field	109,16			; _t15HB[112] @ 1792
	.field	53,16			; _t15HB[113] @ 1808
	.field	49,16			; _t15HB[114] @ 1824
	.field	94,16			; _t15HB[115] @ 1840
	.field	88,16			; _t15HB[116] @ 1856
	.field	75,16			; _t15HB[117] @ 1872
	.field	66,16			; _t15HB[118] @ 1888
	.field	122,16			; _t15HB[119] @ 1904
	.field	91,16			; _t15HB[120] @ 1920
	.field	73,16			; _t15HB[121] @ 1936
	.field	56,16			; _t15HB[122] @ 1952
	.field	42,16			; _t15HB[123] @ 1968
	.field	64,16			; _t15HB[124] @ 1984
	.field	44,16			; _t15HB[125] @ 2000
	.field	21,16			; _t15HB[126] @ 2016
	.field	25,16			; _t15HB[127] @ 2032
	.field	90,16			; _t15HB[128] @ 2048
	.field	43,16			; _t15HB[129] @ 2064
	.field	41,16			; _t15HB[130] @ 2080
	.field	77,16			; _t15HB[131] @ 2096
	.field	73,16			; _t15HB[132] @ 2112
	.field	63,16			; _t15HB[133] @ 2128
	.field	56,16			; _t15HB[134] @ 2144
	.field	92,16			; _t15HB[135] @ 2160
	.field	77,16			; _t15HB[136] @ 2176
	.field	66,16			; _t15HB[137] @ 2192
	.field	47,16			; _t15HB[138] @ 2208
	.field	67,16			; _t15HB[139] @ 2224
	.field	48,16			; _t15HB[140] @ 2240
	.field	53,16			; _t15HB[141] @ 2256
	.field	36,16			; _t15HB[142] @ 2272
	.field	20,16			; _t15HB[143] @ 2288
	.field	71,16			; _t15HB[144] @ 2304
	.field	34,16			; _t15HB[145] @ 2320
	.field	67,16			; _t15HB[146] @ 2336
	.field	60,16			; _t15HB[147] @ 2352
	.field	58,16			; _t15HB[148] @ 2368
	.field	49,16			; _t15HB[149] @ 2384
	.field	88,16			; _t15HB[150] @ 2400
	.field	76,16			; _t15HB[151] @ 2416
	.field	67,16			; _t15HB[152] @ 2432
	.field	106,16			; _t15HB[153] @ 2448
	.field	71,16			; _t15HB[154] @ 2464
	.field	54,16			; _t15HB[155] @ 2480
	.field	38,16			; _t15HB[156] @ 2496
	.field	39,16			; _t15HB[157] @ 2512
	.field	23,16			; _t15HB[158] @ 2528
	.field	15,16			; _t15HB[159] @ 2544
	.field	109,16			; _t15HB[160] @ 2560
	.field	53,16			; _t15HB[161] @ 2576
	.field	51,16			; _t15HB[162] @ 2592
	.field	47,16			; _t15HB[163] @ 2608
	.field	90,16			; _t15HB[164] @ 2624
	.field	82,16			; _t15HB[165] @ 2640
	.field	58,16			; _t15HB[166] @ 2656
	.field	57,16			; _t15HB[167] @ 2672
	.field	48,16			; _t15HB[168] @ 2688
	.field	72,16			; _t15HB[169] @ 2704
	.field	57,16			; _t15HB[170] @ 2720
	.field	41,16			; _t15HB[171] @ 2736
	.field	23,16			; _t15HB[172] @ 2752
	.field	27,16			; _t15HB[173] @ 2768
	.field	62,16			; _t15HB[174] @ 2784
	.field	9,16			; _t15HB[175] @ 2800
	.field	86,16			; _t15HB[176] @ 2816
	.field	42,16			; _t15HB[177] @ 2832
	.field	40,16			; _t15HB[178] @ 2848
	.field	37,16			; _t15HB[179] @ 2864
	.field	70,16			; _t15HB[180] @ 2880
	.field	64,16			; _t15HB[181] @ 2896
	.field	52,16			; _t15HB[182] @ 2912
	.field	43,16			; _t15HB[183] @ 2928
	.field	70,16			; _t15HB[184] @ 2944
	.field	55,16			; _t15HB[185] @ 2960
	.field	42,16			; _t15HB[186] @ 2976
	.field	25,16			; _t15HB[187] @ 2992
	.field	29,16			; _t15HB[188] @ 3008
	.field	18,16			; _t15HB[189] @ 3024
	.field	11,16			; _t15HB[190] @ 3040
	.field	11,16			; _t15HB[191] @ 3056
	.field	118,16			; _t15HB[192] @ 3072
	.field	68,16			; _t15HB[193] @ 3088
	.field	30,16			; _t15HB[194] @ 3104
	.field	55,16			; _t15HB[195] @ 3120
	.field	50,16			; _t15HB[196] @ 3136
	.field	46,16			; _t15HB[197] @ 3152
	.field	74,16			; _t15HB[198] @ 3168
	.field	65,16			; _t15HB[199] @ 3184
	.field	49,16			; _t15HB[200] @ 3200
	.field	39,16			; _t15HB[201] @ 3216
	.field	24,16			; _t15HB[202] @ 3232
	.field	16,16			; _t15HB[203] @ 3248
	.field	22,16			; _t15HB[204] @ 3264
	.field	13,16			; _t15HB[205] @ 3280
	.field	14,16			; _t15HB[206] @ 3296
	.field	7,16			; _t15HB[207] @ 3312
	.field	91,16			; _t15HB[208] @ 3328
	.field	44,16			; _t15HB[209] @ 3344
	.field	39,16			; _t15HB[210] @ 3360
	.field	38,16			; _t15HB[211] @ 3376
	.field	34,16			; _t15HB[212] @ 3392
	.field	63,16			; _t15HB[213] @ 3408
	.field	52,16			; _t15HB[214] @ 3424
	.field	45,16			; _t15HB[215] @ 3440
	.field	31,16			; _t15HB[216] @ 3456
	.field	52,16			; _t15HB[217] @ 3472
	.field	28,16			; _t15HB[218] @ 3488
	.field	19,16			; _t15HB[219] @ 3504
	.field	14,16			; _t15HB[220] @ 3520
	.field	8,16			; _t15HB[221] @ 3536
	.field	9,16			; _t15HB[222] @ 3552
	.field	3,16			; _t15HB[223] @ 3568
	.field	123,16			; _t15HB[224] @ 3584
	.field	60,16			; _t15HB[225] @ 3600
	.field	58,16			; _t15HB[226] @ 3616
	.field	53,16			; _t15HB[227] @ 3632
	.field	47,16			; _t15HB[228] @ 3648
	.field	43,16			; _t15HB[229] @ 3664
	.field	32,16			; _t15HB[230] @ 3680
	.field	22,16			; _t15HB[231] @ 3696
	.field	37,16			; _t15HB[232] @ 3712
	.field	24,16			; _t15HB[233] @ 3728
	.field	17,16			; _t15HB[234] @ 3744
	.field	12,16			; _t15HB[235] @ 3760
	.field	15,16			; _t15HB[236] @ 3776
	.field	10,16			; _t15HB[237] @ 3792
	.field	2,16			; _t15HB[238] @ 3808
	.field	1,16			; _t15HB[239] @ 3824
	.field	71,16			; _t15HB[240] @ 3840
	.field	37,16			; _t15HB[241] @ 3856
	.field	34,16			; _t15HB[242] @ 3872
	.field	30,16			; _t15HB[243] @ 3888
	.field	28,16			; _t15HB[244] @ 3904
	.field	20,16			; _t15HB[245] @ 3920
	.field	17,16			; _t15HB[246] @ 3936
	.field	26,16			; _t15HB[247] @ 3952
	.field	21,16			; _t15HB[248] @ 3968
	.field	16,16			; _t15HB[249] @ 3984
	.field	10,16			; _t15HB[250] @ 4000
	.field	6,16			; _t15HB[251] @ 4016
	.field	8,16			; _t15HB[252] @ 4032
	.field	6,16			; _t15HB[253] @ 4048
	.field	2,16			; _t15HB[254] @ 4064
	.field	0,16			; _t15HB[255] @ 4080

$C$DW$54	.dwtag  DW_TAG_variable, DW_AT_name("t15HB")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_t15HB")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$189)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_addr _t15HB]
	.sect	".const:_t16HB"
	.clink
	.align	1
_t16HB:
	.field	1,16			; _t16HB[0] @ 0
	.field	5,16			; _t16HB[1] @ 16
	.field	14,16			; _t16HB[2] @ 32
	.field	44,16			; _t16HB[3] @ 48
	.field	74,16			; _t16HB[4] @ 64
	.field	63,16			; _t16HB[5] @ 80
	.field	110,16			; _t16HB[6] @ 96
	.field	93,16			; _t16HB[7] @ 112
	.field	172,16			; _t16HB[8] @ 128
	.field	149,16			; _t16HB[9] @ 144
	.field	138,16			; _t16HB[10] @ 160
	.field	242,16			; _t16HB[11] @ 176
	.field	225,16			; _t16HB[12] @ 192
	.field	195,16			; _t16HB[13] @ 208
	.field	376,16			; _t16HB[14] @ 224
	.field	17,16			; _t16HB[15] @ 240
	.field	3,16			; _t16HB[16] @ 256
	.field	4,16			; _t16HB[17] @ 272
	.field	12,16			; _t16HB[18] @ 288
	.field	20,16			; _t16HB[19] @ 304
	.field	35,16			; _t16HB[20] @ 320
	.field	62,16			; _t16HB[21] @ 336
	.field	53,16			; _t16HB[22] @ 352
	.field	47,16			; _t16HB[23] @ 368
	.field	83,16			; _t16HB[24] @ 384
	.field	75,16			; _t16HB[25] @ 400
	.field	68,16			; _t16HB[26] @ 416
	.field	119,16			; _t16HB[27] @ 432
	.field	201,16			; _t16HB[28] @ 448
	.field	107,16			; _t16HB[29] @ 464
	.field	207,16			; _t16HB[30] @ 480
	.field	9,16			; _t16HB[31] @ 496
	.field	15,16			; _t16HB[32] @ 512
	.field	13,16			; _t16HB[33] @ 528
	.field	23,16			; _t16HB[34] @ 544
	.field	38,16			; _t16HB[35] @ 560
	.field	67,16			; _t16HB[36] @ 576
	.field	58,16			; _t16HB[37] @ 592
	.field	103,16			; _t16HB[38] @ 608
	.field	90,16			; _t16HB[39] @ 624
	.field	161,16			; _t16HB[40] @ 640
	.field	72,16			; _t16HB[41] @ 656
	.field	127,16			; _t16HB[42] @ 672
	.field	117,16			; _t16HB[43] @ 688
	.field	110,16			; _t16HB[44] @ 704
	.field	209,16			; _t16HB[45] @ 720
	.field	206,16			; _t16HB[46] @ 736
	.field	16,16			; _t16HB[47] @ 752
	.field	45,16			; _t16HB[48] @ 768
	.field	21,16			; _t16HB[49] @ 784
	.field	39,16			; _t16HB[50] @ 800
	.field	69,16			; _t16HB[51] @ 816
	.field	64,16			; _t16HB[52] @ 832
	.field	114,16			; _t16HB[53] @ 848
	.field	99,16			; _t16HB[54] @ 864
	.field	87,16			; _t16HB[55] @ 880
	.field	158,16			; _t16HB[56] @ 896
	.field	140,16			; _t16HB[57] @ 912
	.field	252,16			; _t16HB[58] @ 928
	.field	212,16			; _t16HB[59] @ 944
	.field	199,16			; _t16HB[60] @ 960
	.field	387,16			; _t16HB[61] @ 976
	.field	365,16			; _t16HB[62] @ 992
	.field	26,16			; _t16HB[63] @ 1008
	.field	75,16			; _t16HB[64] @ 1024
	.field	36,16			; _t16HB[65] @ 1040
	.field	68,16			; _t16HB[66] @ 1056
	.field	65,16			; _t16HB[67] @ 1072
	.field	115,16			; _t16HB[68] @ 1088
	.field	101,16			; _t16HB[69] @ 1104
	.field	179,16			; _t16HB[70] @ 1120
	.field	164,16			; _t16HB[71] @ 1136
	.field	155,16			; _t16HB[72] @ 1152
	.field	264,16			; _t16HB[73] @ 1168
	.field	246,16			; _t16HB[74] @ 1184
	.field	226,16			; _t16HB[75] @ 1200
	.field	395,16			; _t16HB[76] @ 1216
	.field	382,16			; _t16HB[77] @ 1232
	.field	362,16			; _t16HB[78] @ 1248
	.field	9,16			; _t16HB[79] @ 1264
	.field	66,16			; _t16HB[80] @ 1280
	.field	30,16			; _t16HB[81] @ 1296
	.field	59,16			; _t16HB[82] @ 1312
	.field	56,16			; _t16HB[83] @ 1328
	.field	102,16			; _t16HB[84] @ 1344
	.field	185,16			; _t16HB[85] @ 1360
	.field	173,16			; _t16HB[86] @ 1376
	.field	265,16			; _t16HB[87] @ 1392
	.field	142,16			; _t16HB[88] @ 1408
	.field	253,16			; _t16HB[89] @ 1424
	.field	232,16			; _t16HB[90] @ 1440
	.field	400,16			; _t16HB[91] @ 1456
	.field	388,16			; _t16HB[92] @ 1472
	.field	378,16			; _t16HB[93] @ 1488
	.field	445,16			; _t16HB[94] @ 1504
	.field	16,16			; _t16HB[95] @ 1520
	.field	111,16			; _t16HB[96] @ 1536
	.field	54,16			; _t16HB[97] @ 1552
	.field	52,16			; _t16HB[98] @ 1568
	.field	100,16			; _t16HB[99] @ 1584
	.field	184,16			; _t16HB[100] @ 1600
	.field	178,16			; _t16HB[101] @ 1616
	.field	160,16			; _t16HB[102] @ 1632
	.field	133,16			; _t16HB[103] @ 1648
	.field	257,16			; _t16HB[104] @ 1664
	.field	244,16			; _t16HB[105] @ 1680
	.field	228,16			; _t16HB[106] @ 1696
	.field	217,16			; _t16HB[107] @ 1712
	.field	385,16			; _t16HB[108] @ 1728
	.field	366,16			; _t16HB[109] @ 1744
	.field	715,16			; _t16HB[110] @ 1760
	.field	10,16			; _t16HB[111] @ 1776
	.field	98,16			; _t16HB[112] @ 1792
	.field	48,16			; _t16HB[113] @ 1808
	.field	91,16			; _t16HB[114] @ 1824
	.field	88,16			; _t16HB[115] @ 1840
	.field	165,16			; _t16HB[116] @ 1856
	.field	157,16			; _t16HB[117] @ 1872
	.field	148,16			; _t16HB[118] @ 1888
	.field	261,16			; _t16HB[119] @ 1904
	.field	248,16			; _t16HB[120] @ 1920
	.field	407,16			; _t16HB[121] @ 1936
	.field	397,16			; _t16HB[122] @ 1952
	.field	372,16			; _t16HB[123] @ 1968
	.field	380,16			; _t16HB[124] @ 1984
	.field	889,16			; _t16HB[125] @ 2000
	.field	884,16			; _t16HB[126] @ 2016
	.field	8,16			; _t16HB[127] @ 2032
	.field	85,16			; _t16HB[128] @ 2048
	.field	84,16			; _t16HB[129] @ 2064
	.field	81,16			; _t16HB[130] @ 2080
	.field	159,16			; _t16HB[131] @ 2096
	.field	156,16			; _t16HB[132] @ 2112
	.field	143,16			; _t16HB[133] @ 2128
	.field	260,16			; _t16HB[134] @ 2144
	.field	249,16			; _t16HB[135] @ 2160
	.field	427,16			; _t16HB[136] @ 2176
	.field	401,16			; _t16HB[137] @ 2192
	.field	392,16			; _t16HB[138] @ 2208
	.field	383,16			; _t16HB[139] @ 2224
	.field	727,16			; _t16HB[140] @ 2240
	.field	713,16			; _t16HB[141] @ 2256
	.field	708,16			; _t16HB[142] @ 2272
	.field	7,16			; _t16HB[143] @ 2288
	.field	154,16			; _t16HB[144] @ 2304
	.field	76,16			; _t16HB[145] @ 2320
	.field	73,16			; _t16HB[146] @ 2336
	.field	141,16			; _t16HB[147] @ 2352
	.field	131,16			; _t16HB[148] @ 2368
	.field	256,16			; _t16HB[149] @ 2384
	.field	245,16			; _t16HB[150] @ 2400
	.field	426,16			; _t16HB[151] @ 2416
	.field	406,16			; _t16HB[152] @ 2432
	.field	394,16			; _t16HB[153] @ 2448
	.field	384,16			; _t16HB[154] @ 2464
	.field	735,16			; _t16HB[155] @ 2480
	.field	359,16			; _t16HB[156] @ 2496
	.field	710,16			; _t16HB[157] @ 2512
	.field	352,16			; _t16HB[158] @ 2528
	.field	11,16			; _t16HB[159] @ 2544
	.field	139,16			; _t16HB[160] @ 2560
	.field	129,16			; _t16HB[161] @ 2576
	.field	67,16			; _t16HB[162] @ 2592
	.field	125,16			; _t16HB[163] @ 2608
	.field	247,16			; _t16HB[164] @ 2624
	.field	233,16			; _t16HB[165] @ 2640
	.field	229,16			; _t16HB[166] @ 2656
	.field	219,16			; _t16HB[167] @ 2672
	.field	393,16			; _t16HB[168] @ 2688
	.field	743,16			; _t16HB[169] @ 2704
	.field	737,16			; _t16HB[170] @ 2720
	.field	720,16			; _t16HB[171] @ 2736
	.field	885,16			; _t16HB[172] @ 2752
	.field	882,16			; _t16HB[173] @ 2768
	.field	439,16			; _t16HB[174] @ 2784
	.field	4,16			; _t16HB[175] @ 2800
	.field	243,16			; _t16HB[176] @ 2816
	.field	120,16			; _t16HB[177] @ 2832
	.field	118,16			; _t16HB[178] @ 2848
	.field	115,16			; _t16HB[179] @ 2864
	.field	227,16			; _t16HB[180] @ 2880
	.field	223,16			; _t16HB[181] @ 2896
	.field	396,16			; _t16HB[182] @ 2912
	.field	746,16			; _t16HB[183] @ 2928
	.field	742,16			; _t16HB[184] @ 2944
	.field	736,16			; _t16HB[185] @ 2960
	.field	721,16			; _t16HB[186] @ 2976
	.field	712,16			; _t16HB[187] @ 2992
	.field	706,16			; _t16HB[188] @ 3008
	.field	223,16			; _t16HB[189] @ 3024
	.field	436,16			; _t16HB[190] @ 3040
	.field	6,16			; _t16HB[191] @ 3056
	.field	202,16			; _t16HB[192] @ 3072
	.field	224,16			; _t16HB[193] @ 3088
	.field	222,16			; _t16HB[194] @ 3104
	.field	218,16			; _t16HB[195] @ 3120
	.field	216,16			; _t16HB[196] @ 3136
	.field	389,16			; _t16HB[197] @ 3152
	.field	386,16			; _t16HB[198] @ 3168
	.field	381,16			; _t16HB[199] @ 3184
	.field	364,16			; _t16HB[200] @ 3200
	.field	888,16			; _t16HB[201] @ 3216
	.field	443,16			; _t16HB[202] @ 3232
	.field	707,16			; _t16HB[203] @ 3248
	.field	440,16			; _t16HB[204] @ 3264
	.field	437,16			; _t16HB[205] @ 3280
	.field	1728,16			; _t16HB[206] @ 3296
	.field	4,16			; _t16HB[207] @ 3312
	.field	747,16			; _t16HB[208] @ 3328
	.field	211,16			; _t16HB[209] @ 3344
	.field	210,16			; _t16HB[210] @ 3360
	.field	208,16			; _t16HB[211] @ 3376
	.field	370,16			; _t16HB[212] @ 3392
	.field	379,16			; _t16HB[213] @ 3408
	.field	734,16			; _t16HB[214] @ 3424
	.field	723,16			; _t16HB[215] @ 3440
	.field	714,16			; _t16HB[216] @ 3456
	.field	1735,16			; _t16HB[217] @ 3472
	.field	883,16			; _t16HB[218] @ 3488
	.field	877,16			; _t16HB[219] @ 3504
	.field	876,16			; _t16HB[220] @ 3520
	.field	3459,16			; _t16HB[221] @ 3536
	.field	865,16			; _t16HB[222] @ 3552
	.field	2,16			; _t16HB[223] @ 3568
	.field	377,16			; _t16HB[224] @ 3584
	.field	369,16			; _t16HB[225] @ 3600
	.field	102,16			; _t16HB[226] @ 3616
	.field	187,16			; _t16HB[227] @ 3632
	.field	726,16			; _t16HB[228] @ 3648
	.field	722,16			; _t16HB[229] @ 3664
	.field	358,16			; _t16HB[230] @ 3680
	.field	711,16			; _t16HB[231] @ 3696
	.field	709,16			; _t16HB[232] @ 3712
	.field	866,16			; _t16HB[233] @ 3728
	.field	1734,16			; _t16HB[234] @ 3744
	.field	871,16			; _t16HB[235] @ 3760
	.field	3458,16			; _t16HB[236] @ 3776
	.field	870,16			; _t16HB[237] @ 3792
	.field	434,16			; _t16HB[238] @ 3808
	.field	0,16			; _t16HB[239] @ 3824
	.field	12,16			; _t16HB[240] @ 3840
	.field	10,16			; _t16HB[241] @ 3856
	.field	7,16			; _t16HB[242] @ 3872
	.field	11,16			; _t16HB[243] @ 3888
	.field	10,16			; _t16HB[244] @ 3904
	.field	17,16			; _t16HB[245] @ 3920
	.field	11,16			; _t16HB[246] @ 3936
	.field	9,16			; _t16HB[247] @ 3952
	.field	13,16			; _t16HB[248] @ 3968
	.field	12,16			; _t16HB[249] @ 3984
	.field	10,16			; _t16HB[250] @ 4000
	.field	7,16			; _t16HB[251] @ 4016
	.field	5,16			; _t16HB[252] @ 4032
	.field	3,16			; _t16HB[253] @ 4048
	.field	1,16			; _t16HB[254] @ 4064
	.field	3,16			; _t16HB[255] @ 4080

$C$DW$55	.dwtag  DW_TAG_variable, DW_AT_name("t16HB")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_t16HB")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$189)
	.dwattr $C$DW$55, DW_AT_location[DW_OP_addr _t16HB]
	.sect	".const:_t24HB"
	.clink
	.align	1
_t24HB:
	.field	15,16			; _t24HB[0] @ 0
	.field	13,16			; _t24HB[1] @ 16
	.field	46,16			; _t24HB[2] @ 32
	.field	80,16			; _t24HB[3] @ 48
	.field	146,16			; _t24HB[4] @ 64
	.field	262,16			; _t24HB[5] @ 80
	.field	248,16			; _t24HB[6] @ 96
	.field	434,16			; _t24HB[7] @ 112
	.field	426,16			; _t24HB[8] @ 128
	.field	669,16			; _t24HB[9] @ 144
	.field	653,16			; _t24HB[10] @ 160
	.field	649,16			; _t24HB[11] @ 176
	.field	621,16			; _t24HB[12] @ 192
	.field	517,16			; _t24HB[13] @ 208
	.field	1032,16			; _t24HB[14] @ 224
	.field	88,16			; _t24HB[15] @ 240
	.field	14,16			; _t24HB[16] @ 256
	.field	12,16			; _t24HB[17] @ 272
	.field	21,16			; _t24HB[18] @ 288
	.field	38,16			; _t24HB[19] @ 304
	.field	71,16			; _t24HB[20] @ 320
	.field	130,16			; _t24HB[21] @ 336
	.field	122,16			; _t24HB[22] @ 352
	.field	216,16			; _t24HB[23] @ 368
	.field	209,16			; _t24HB[24] @ 384
	.field	198,16			; _t24HB[25] @ 400
	.field	327,16			; _t24HB[26] @ 416
	.field	345,16			; _t24HB[27] @ 432
	.field	319,16			; _t24HB[28] @ 448
	.field	297,16			; _t24HB[29] @ 464
	.field	279,16			; _t24HB[30] @ 480
	.field	42,16			; _t24HB[31] @ 496
	.field	47,16			; _t24HB[32] @ 512
	.field	22,16			; _t24HB[33] @ 528
	.field	41,16			; _t24HB[34] @ 544
	.field	74,16			; _t24HB[35] @ 560
	.field	68,16			; _t24HB[36] @ 576
	.field	128,16			; _t24HB[37] @ 592
	.field	120,16			; _t24HB[38] @ 608
	.field	221,16			; _t24HB[39] @ 624
	.field	207,16			; _t24HB[40] @ 640
	.field	194,16			; _t24HB[41] @ 656
	.field	182,16			; _t24HB[42] @ 672
	.field	340,16			; _t24HB[43] @ 688
	.field	315,16			; _t24HB[44] @ 704
	.field	295,16			; _t24HB[45] @ 720
	.field	541,16			; _t24HB[46] @ 736
	.field	18,16			; _t24HB[47] @ 752
	.field	81,16			; _t24HB[48] @ 768
	.field	39,16			; _t24HB[49] @ 784
	.field	75,16			; _t24HB[50] @ 800
	.field	70,16			; _t24HB[51] @ 816
	.field	134,16			; _t24HB[52] @ 832
	.field	125,16			; _t24HB[53] @ 848
	.field	116,16			; _t24HB[54] @ 864
	.field	220,16			; _t24HB[55] @ 880
	.field	204,16			; _t24HB[56] @ 896
	.field	190,16			; _t24HB[57] @ 912
	.field	178,16			; _t24HB[58] @ 928
	.field	325,16			; _t24HB[59] @ 944
	.field	311,16			; _t24HB[60] @ 960
	.field	293,16			; _t24HB[61] @ 976
	.field	271,16			; _t24HB[62] @ 992
	.field	16,16			; _t24HB[63] @ 1008
	.field	147,16			; _t24HB[64] @ 1024
	.field	72,16			; _t24HB[65] @ 1040
	.field	69,16			; _t24HB[66] @ 1056
	.field	135,16			; _t24HB[67] @ 1072
	.field	127,16			; _t24HB[68] @ 1088
	.field	118,16			; _t24HB[69] @ 1104
	.field	112,16			; _t24HB[70] @ 1120
	.field	210,16			; _t24HB[71] @ 1136
	.field	200,16			; _t24HB[72] @ 1152
	.field	188,16			; _t24HB[73] @ 1168
	.field	352,16			; _t24HB[74] @ 1184
	.field	323,16			; _t24HB[75] @ 1200
	.field	306,16			; _t24HB[76] @ 1216
	.field	285,16			; _t24HB[77] @ 1232
	.field	540,16			; _t24HB[78] @ 1248
	.field	14,16			; _t24HB[79] @ 1264
	.field	263,16			; _t24HB[80] @ 1280
	.field	66,16			; _t24HB[81] @ 1296
	.field	129,16			; _t24HB[82] @ 1312
	.field	126,16			; _t24HB[83] @ 1328
	.field	119,16			; _t24HB[84] @ 1344
	.field	114,16			; _t24HB[85] @ 1360
	.field	214,16			; _t24HB[86] @ 1376
	.field	202,16			; _t24HB[87] @ 1392
	.field	192,16			; _t24HB[88] @ 1408
	.field	180,16			; _t24HB[89] @ 1424
	.field	341,16			; _t24HB[90] @ 1440
	.field	317,16			; _t24HB[91] @ 1456
	.field	301,16			; _t24HB[92] @ 1472
	.field	281,16			; _t24HB[93] @ 1488
	.field	262,16			; _t24HB[94] @ 1504
	.field	12,16			; _t24HB[95] @ 1520
	.field	249,16			; _t24HB[96] @ 1536
	.field	123,16			; _t24HB[97] @ 1552
	.field	121,16			; _t24HB[98] @ 1568
	.field	117,16			; _t24HB[99] @ 1584
	.field	113,16			; _t24HB[100] @ 1600
	.field	215,16			; _t24HB[101] @ 1616
	.field	206,16			; _t24HB[102] @ 1632
	.field	195,16			; _t24HB[103] @ 1648
	.field	185,16			; _t24HB[104] @ 1664
	.field	347,16			; _t24HB[105] @ 1680
	.field	330,16			; _t24HB[106] @ 1696
	.field	308,16			; _t24HB[107] @ 1712
	.field	291,16			; _t24HB[108] @ 1728
	.field	272,16			; _t24HB[109] @ 1744
	.field	520,16			; _t24HB[110] @ 1760
	.field	10,16			; _t24HB[111] @ 1776
	.field	435,16			; _t24HB[112] @ 1792
	.field	115,16			; _t24HB[113] @ 1808
	.field	111,16			; _t24HB[114] @ 1824
	.field	109,16			; _t24HB[115] @ 1840
	.field	211,16			; _t24HB[116] @ 1856
	.field	203,16			; _t24HB[117] @ 1872
	.field	196,16			; _t24HB[118] @ 1888
	.field	187,16			; _t24HB[119] @ 1904
	.field	353,16			; _t24HB[120] @ 1920
	.field	332,16			; _t24HB[121] @ 1936
	.field	313,16			; _t24HB[122] @ 1952
	.field	298,16			; _t24HB[123] @ 1968
	.field	283,16			; _t24HB[124] @ 1984
	.field	531,16			; _t24HB[125] @ 2000
	.field	381,16			; _t24HB[126] @ 2016
	.field	17,16			; _t24HB[127] @ 2032
	.field	427,16			; _t24HB[128] @ 2048
	.field	212,16			; _t24HB[129] @ 2064
	.field	208,16			; _t24HB[130] @ 2080
	.field	205,16			; _t24HB[131] @ 2096
	.field	201,16			; _t24HB[132] @ 2112
	.field	193,16			; _t24HB[133] @ 2128
	.field	186,16			; _t24HB[134] @ 2144
	.field	177,16			; _t24HB[135] @ 2160
	.field	169,16			; _t24HB[136] @ 2176
	.field	320,16			; _t24HB[137] @ 2192
	.field	303,16			; _t24HB[138] @ 2208
	.field	286,16			; _t24HB[139] @ 2224
	.field	268,16			; _t24HB[140] @ 2240
	.field	514,16			; _t24HB[141] @ 2256
	.field	377,16			; _t24HB[142] @ 2272
	.field	16,16			; _t24HB[143] @ 2288
	.field	335,16			; _t24HB[144] @ 2304
	.field	199,16			; _t24HB[145] @ 2320
	.field	197,16			; _t24HB[146] @ 2336
	.field	191,16			; _t24HB[147] @ 2352
	.field	189,16			; _t24HB[148] @ 2368
	.field	181,16			; _t24HB[149] @ 2384
	.field	174,16			; _t24HB[150] @ 2400
	.field	333,16			; _t24HB[151] @ 2416
	.field	321,16			; _t24HB[152] @ 2432
	.field	305,16			; _t24HB[153] @ 2448
	.field	289,16			; _t24HB[154] @ 2464
	.field	275,16			; _t24HB[155] @ 2480
	.field	521,16			; _t24HB[156] @ 2496
	.field	379,16			; _t24HB[157] @ 2512
	.field	371,16			; _t24HB[158] @ 2528
	.field	11,16			; _t24HB[159] @ 2544
	.field	668,16			; _t24HB[160] @ 2560
	.field	184,16			; _t24HB[161] @ 2576
	.field	183,16			; _t24HB[162] @ 2592
	.field	179,16			; _t24HB[163] @ 2608
	.field	175,16			; _t24HB[164] @ 2624
	.field	344,16			; _t24HB[165] @ 2640
	.field	331,16			; _t24HB[166] @ 2656
	.field	314,16			; _t24HB[167] @ 2672
	.field	304,16			; _t24HB[168] @ 2688
	.field	290,16			; _t24HB[169] @ 2704
	.field	277,16			; _t24HB[170] @ 2720
	.field	530,16			; _t24HB[171] @ 2736
	.field	383,16			; _t24HB[172] @ 2752
	.field	373,16			; _t24HB[173] @ 2768
	.field	366,16			; _t24HB[174] @ 2784
	.field	10,16			; _t24HB[175] @ 2800
	.field	652,16			; _t24HB[176] @ 2816
	.field	346,16			; _t24HB[177] @ 2832
	.field	171,16			; _t24HB[178] @ 2848
	.field	168,16			; _t24HB[179] @ 2864
	.field	164,16			; _t24HB[180] @ 2880
	.field	318,16			; _t24HB[181] @ 2896
	.field	309,16			; _t24HB[182] @ 2912
	.field	299,16			; _t24HB[183] @ 2928
	.field	287,16			; _t24HB[184] @ 2944
	.field	276,16			; _t24HB[185] @ 2960
	.field	263,16			; _t24HB[186] @ 2976
	.field	513,16			; _t24HB[187] @ 2992
	.field	375,16			; _t24HB[188] @ 3008
	.field	368,16			; _t24HB[189] @ 3024
	.field	362,16			; _t24HB[190] @ 3040
	.field	6,16			; _t24HB[191] @ 3056
	.field	648,16			; _t24HB[192] @ 3072
	.field	322,16			; _t24HB[193] @ 3088
	.field	316,16			; _t24HB[194] @ 3104
	.field	312,16			; _t24HB[195] @ 3120
	.field	307,16			; _t24HB[196] @ 3136
	.field	302,16			; _t24HB[197] @ 3152
	.field	292,16			; _t24HB[198] @ 3168
	.field	284,16			; _t24HB[199] @ 3184
	.field	269,16			; _t24HB[200] @ 3200
	.field	261,16			; _t24HB[201] @ 3216
	.field	512,16			; _t24HB[202] @ 3232
	.field	376,16			; _t24HB[203] @ 3248
	.field	370,16			; _t24HB[204] @ 3264
	.field	364,16			; _t24HB[205] @ 3280
	.field	359,16			; _t24HB[206] @ 3296
	.field	4,16			; _t24HB[207] @ 3312
	.field	620,16			; _t24HB[208] @ 3328
	.field	300,16			; _t24HB[209] @ 3344
	.field	296,16			; _t24HB[210] @ 3360
	.field	294,16			; _t24HB[211] @ 3376
	.field	288,16			; _t24HB[212] @ 3392
	.field	282,16			; _t24HB[213] @ 3408
	.field	273,16			; _t24HB[214] @ 3424
	.field	266,16			; _t24HB[215] @ 3440
	.field	515,16			; _t24HB[216] @ 3456
	.field	380,16			; _t24HB[217] @ 3472
	.field	374,16			; _t24HB[218] @ 3488
	.field	369,16			; _t24HB[219] @ 3504
	.field	365,16			; _t24HB[220] @ 3520
	.field	361,16			; _t24HB[221] @ 3536
	.field	357,16			; _t24HB[222] @ 3552
	.field	2,16			; _t24HB[223] @ 3568
	.field	1033,16			; _t24HB[224] @ 3584
	.field	280,16			; _t24HB[225] @ 3600
	.field	278,16			; _t24HB[226] @ 3616
	.field	274,16			; _t24HB[227] @ 3632
	.field	267,16			; _t24HB[228] @ 3648
	.field	264,16			; _t24HB[229] @ 3664
	.field	259,16			; _t24HB[230] @ 3680
	.field	382,16			; _t24HB[231] @ 3696
	.field	378,16			; _t24HB[232] @ 3712
	.field	372,16			; _t24HB[233] @ 3728
	.field	367,16			; _t24HB[234] @ 3744
	.field	363,16			; _t24HB[235] @ 3760
	.field	360,16			; _t24HB[236] @ 3776
	.field	358,16			; _t24HB[237] @ 3792
	.field	356,16			; _t24HB[238] @ 3808
	.field	0,16			; _t24HB[239] @ 3824
	.field	43,16			; _t24HB[240] @ 3840
	.field	20,16			; _t24HB[241] @ 3856
	.field	19,16			; _t24HB[242] @ 3872
	.field	17,16			; _t24HB[243] @ 3888
	.field	15,16			; _t24HB[244] @ 3904
	.field	13,16			; _t24HB[245] @ 3920
	.field	11,16			; _t24HB[246] @ 3936
	.field	9,16			; _t24HB[247] @ 3952
	.field	7,16			; _t24HB[248] @ 3968
	.field	6,16			; _t24HB[249] @ 3984
	.field	4,16			; _t24HB[250] @ 4000
	.field	7,16			; _t24HB[251] @ 4016
	.field	5,16			; _t24HB[252] @ 4032
	.field	3,16			; _t24HB[253] @ 4048
	.field	1,16			; _t24HB[254] @ 4064
	.field	3,16			; _t24HB[255] @ 4080

$C$DW$56	.dwtag  DW_TAG_variable, DW_AT_name("t24HB")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_t24HB")
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$189)
	.dwattr $C$DW$56, DW_AT_location[DW_OP_addr _t24HB]
	.sect	".const:_t32HB"
	.clink
	.align	1
_t32HB:
	.field	1,16			; _t32HB[0] @ 0
	.field	5,16			; _t32HB[1] @ 16
	.field	4,16			; _t32HB[2] @ 32
	.field	5,16			; _t32HB[3] @ 48
	.field	6,16			; _t32HB[4] @ 64
	.field	5,16			; _t32HB[5] @ 80
	.field	4,16			; _t32HB[6] @ 96
	.field	4,16			; _t32HB[7] @ 112
	.field	7,16			; _t32HB[8] @ 128
	.field	3,16			; _t32HB[9] @ 144
	.field	6,16			; _t32HB[10] @ 160
	.field	0,16			; _t32HB[11] @ 176
	.field	7,16			; _t32HB[12] @ 192
	.field	2,16			; _t32HB[13] @ 208
	.field	3,16			; _t32HB[14] @ 224
	.field	1,16			; _t32HB[15] @ 240

$C$DW$57	.dwtag  DW_TAG_variable, DW_AT_name("t32HB")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_t32HB")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$186)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_addr _t32HB]
	.sect	".const:_t33HB"
	.clink
	.align	1
_t33HB:
	.field	15,16			; _t33HB[0] @ 0
	.field	14,16			; _t33HB[1] @ 16
	.field	13,16			; _t33HB[2] @ 32
	.field	12,16			; _t33HB[3] @ 48
	.field	11,16			; _t33HB[4] @ 64
	.field	10,16			; _t33HB[5] @ 80
	.field	9,16			; _t33HB[6] @ 96
	.field	8,16			; _t33HB[7] @ 112
	.field	7,16			; _t33HB[8] @ 128
	.field	6,16			; _t33HB[9] @ 144
	.field	5,16			; _t33HB[10] @ 160
	.field	4,16			; _t33HB[11] @ 176
	.field	3,16			; _t33HB[12] @ 192
	.field	2,16			; _t33HB[13] @ 208
	.field	1,16			; _t33HB[14] @ 224
	.field	0,16			; _t33HB[15] @ 240

$C$DW$58	.dwtag  DW_TAG_variable, DW_AT_name("t33HB")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_t33HB")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$186)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_addr _t33HB]
	.sect	".const:_t1l"
	.clink
	.align	1
_t1l:
	.field	1,16			; _t1l[0] @ 0
	.field	3,16			; _t1l[1] @ 16
	.field	2,16			; _t1l[2] @ 32
	.field	3,16			; _t1l[3] @ 48

$C$DW$59	.dwtag  DW_TAG_variable, DW_AT_name("t1l")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_t1l")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$184)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_addr _t1l]
	.sect	".const:_t2l"
	.clink
	.align	1
_t2l:
	.field	1,16			; _t2l[0] @ 0
	.field	3,16			; _t2l[1] @ 16
	.field	6,16			; _t2l[2] @ 32
	.field	3,16			; _t2l[3] @ 48
	.field	3,16			; _t2l[4] @ 64
	.field	5,16			; _t2l[5] @ 80
	.field	5,16			; _t2l[6] @ 96
	.field	5,16			; _t2l[7] @ 112
	.field	6,16			; _t2l[8] @ 128

$C$DW$60	.dwtag  DW_TAG_variable, DW_AT_name("t2l")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_t2l")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$185)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_addr _t2l]
	.sect	".const:_t3l"
	.clink
	.align	1
_t3l:
	.field	2,16			; _t3l[0] @ 0
	.field	2,16			; _t3l[1] @ 16
	.field	6,16			; _t3l[2] @ 32
	.field	3,16			; _t3l[3] @ 48
	.field	2,16			; _t3l[4] @ 64
	.field	5,16			; _t3l[5] @ 80
	.field	5,16			; _t3l[6] @ 96
	.field	5,16			; _t3l[7] @ 112
	.field	6,16			; _t3l[8] @ 128

$C$DW$61	.dwtag  DW_TAG_variable, DW_AT_name("t3l")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_t3l")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$185)
	.dwattr $C$DW$61, DW_AT_location[DW_OP_addr _t3l]
	.sect	".const:_t5l"
	.clink
	.align	1
_t5l:
	.field	1,16			; _t5l[0] @ 0
	.field	3,16			; _t5l[1] @ 16
	.field	6,16			; _t5l[2] @ 32
	.field	7,16			; _t5l[3] @ 48
	.field	3,16			; _t5l[4] @ 64
	.field	3,16			; _t5l[5] @ 80
	.field	6,16			; _t5l[6] @ 96
	.field	7,16			; _t5l[7] @ 112
	.field	6,16			; _t5l[8] @ 128
	.field	6,16			; _t5l[9] @ 144
	.field	7,16			; _t5l[10] @ 160
	.field	8,16			; _t5l[11] @ 176
	.field	7,16			; _t5l[12] @ 192
	.field	6,16			; _t5l[13] @ 208
	.field	7,16			; _t5l[14] @ 224
	.field	8,16			; _t5l[15] @ 240

$C$DW$62	.dwtag  DW_TAG_variable, DW_AT_name("t5l")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_t5l")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$186)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_addr _t5l]
	.sect	".const:_t6l"
	.clink
	.align	1
_t6l:
	.field	3,16			; _t6l[0] @ 0
	.field	3,16			; _t6l[1] @ 16
	.field	5,16			; _t6l[2] @ 32
	.field	7,16			; _t6l[3] @ 48
	.field	3,16			; _t6l[4] @ 64
	.field	2,16			; _t6l[5] @ 80
	.field	4,16			; _t6l[6] @ 96
	.field	5,16			; _t6l[7] @ 112
	.field	4,16			; _t6l[8] @ 128
	.field	4,16			; _t6l[9] @ 144
	.field	5,16			; _t6l[10] @ 160
	.field	6,16			; _t6l[11] @ 176
	.field	6,16			; _t6l[12] @ 192
	.field	5,16			; _t6l[13] @ 208
	.field	6,16			; _t6l[14] @ 224
	.field	7,16			; _t6l[15] @ 240

$C$DW$63	.dwtag  DW_TAG_variable, DW_AT_name("t6l")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_t6l")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$186)
	.dwattr $C$DW$63, DW_AT_location[DW_OP_addr _t6l]
	.sect	".const:_t7l"
	.clink
	.align	1
_t7l:
	.field	1,16			; _t7l[0] @ 0
	.field	3,16			; _t7l[1] @ 16
	.field	6,16			; _t7l[2] @ 32
	.field	8,16			; _t7l[3] @ 48
	.field	8,16			; _t7l[4] @ 64
	.field	9,16			; _t7l[5] @ 80
	.field	3,16			; _t7l[6] @ 96
	.field	4,16			; _t7l[7] @ 112
	.field	6,16			; _t7l[8] @ 128
	.field	7,16			; _t7l[9] @ 144
	.field	7,16			; _t7l[10] @ 160
	.field	8,16			; _t7l[11] @ 176
	.field	6,16			; _t7l[12] @ 192
	.field	5,16			; _t7l[13] @ 208
	.field	7,16			; _t7l[14] @ 224
	.field	8,16			; _t7l[15] @ 240
	.field	8,16			; _t7l[16] @ 256
	.field	9,16			; _t7l[17] @ 272
	.field	7,16			; _t7l[18] @ 288
	.field	7,16			; _t7l[19] @ 304
	.field	8,16			; _t7l[20] @ 320
	.field	9,16			; _t7l[21] @ 336
	.field	9,16			; _t7l[22] @ 352
	.field	9,16			; _t7l[23] @ 368
	.field	7,16			; _t7l[24] @ 384
	.field	7,16			; _t7l[25] @ 400
	.field	8,16			; _t7l[26] @ 416
	.field	9,16			; _t7l[27] @ 432
	.field	9,16			; _t7l[28] @ 448
	.field	10,16			; _t7l[29] @ 464
	.field	8,16			; _t7l[30] @ 480
	.field	8,16			; _t7l[31] @ 496
	.field	9,16			; _t7l[32] @ 512
	.field	10,16			; _t7l[33] @ 528
	.field	10,16			; _t7l[34] @ 544
	.field	10,16			; _t7l[35] @ 560

$C$DW$64	.dwtag  DW_TAG_variable, DW_AT_name("t7l")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_t7l")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$187)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_addr _t7l]
	.sect	".const:_t8l"
	.clink
	.align	1
_t8l:
	.field	2,16			; _t8l[0] @ 0
	.field	3,16			; _t8l[1] @ 16
	.field	6,16			; _t8l[2] @ 32
	.field	8,16			; _t8l[3] @ 48
	.field	8,16			; _t8l[4] @ 64
	.field	9,16			; _t8l[5] @ 80
	.field	3,16			; _t8l[6] @ 96
	.field	2,16			; _t8l[7] @ 112
	.field	4,16			; _t8l[8] @ 128
	.field	8,16			; _t8l[9] @ 144
	.field	8,16			; _t8l[10] @ 160
	.field	8,16			; _t8l[11] @ 176
	.field	6,16			; _t8l[12] @ 192
	.field	4,16			; _t8l[13] @ 208
	.field	6,16			; _t8l[14] @ 224
	.field	8,16			; _t8l[15] @ 240
	.field	8,16			; _t8l[16] @ 256
	.field	9,16			; _t8l[17] @ 272
	.field	8,16			; _t8l[18] @ 288
	.field	8,16			; _t8l[19] @ 304
	.field	8,16			; _t8l[20] @ 320
	.field	9,16			; _t8l[21] @ 336
	.field	9,16			; _t8l[22] @ 352
	.field	10,16			; _t8l[23] @ 368
	.field	8,16			; _t8l[24] @ 384
	.field	7,16			; _t8l[25] @ 400
	.field	8,16			; _t8l[26] @ 416
	.field	9,16			; _t8l[27] @ 432
	.field	10,16			; _t8l[28] @ 448
	.field	10,16			; _t8l[29] @ 464
	.field	9,16			; _t8l[30] @ 480
	.field	8,16			; _t8l[31] @ 496
	.field	9,16			; _t8l[32] @ 512
	.field	9,16			; _t8l[33] @ 528
	.field	11,16			; _t8l[34] @ 544
	.field	11,16			; _t8l[35] @ 560

$C$DW$65	.dwtag  DW_TAG_variable, DW_AT_name("t8l")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_t8l")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$187)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_addr _t8l]
	.sect	".const:_t9l"
	.clink
	.align	1
_t9l:
	.field	3,16			; _t9l[0] @ 0
	.field	3,16			; _t9l[1] @ 16
	.field	5,16			; _t9l[2] @ 32
	.field	6,16			; _t9l[3] @ 48
	.field	8,16			; _t9l[4] @ 64
	.field	9,16			; _t9l[5] @ 80
	.field	3,16			; _t9l[6] @ 96
	.field	3,16			; _t9l[7] @ 112
	.field	4,16			; _t9l[8] @ 128
	.field	5,16			; _t9l[9] @ 144
	.field	6,16			; _t9l[10] @ 160
	.field	8,16			; _t9l[11] @ 176
	.field	4,16			; _t9l[12] @ 192
	.field	4,16			; _t9l[13] @ 208
	.field	5,16			; _t9l[14] @ 224
	.field	6,16			; _t9l[15] @ 240
	.field	7,16			; _t9l[16] @ 256
	.field	8,16			; _t9l[17] @ 272
	.field	6,16			; _t9l[18] @ 288
	.field	5,16			; _t9l[19] @ 304
	.field	6,16			; _t9l[20] @ 320
	.field	7,16			; _t9l[21] @ 336
	.field	7,16			; _t9l[22] @ 352
	.field	8,16			; _t9l[23] @ 368
	.field	7,16			; _t9l[24] @ 384
	.field	6,16			; _t9l[25] @ 400
	.field	7,16			; _t9l[26] @ 416
	.field	7,16			; _t9l[27] @ 432
	.field	8,16			; _t9l[28] @ 448
	.field	9,16			; _t9l[29] @ 464
	.field	8,16			; _t9l[30] @ 480
	.field	7,16			; _t9l[31] @ 496
	.field	8,16			; _t9l[32] @ 512
	.field	8,16			; _t9l[33] @ 528
	.field	9,16			; _t9l[34] @ 544
	.field	9,16			; _t9l[35] @ 560

$C$DW$66	.dwtag  DW_TAG_variable, DW_AT_name("t9l")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_t9l")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$187)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_addr _t9l]
	.sect	".const:_t10l"
	.clink
	.align	1
_t10l:
	.field	1,16			; _t10l[0] @ 0
	.field	3,16			; _t10l[1] @ 16
	.field	6,16			; _t10l[2] @ 32
	.field	8,16			; _t10l[3] @ 48
	.field	9,16			; _t10l[4] @ 64
	.field	9,16			; _t10l[5] @ 80
	.field	9,16			; _t10l[6] @ 96
	.field	10,16			; _t10l[7] @ 112
	.field	3,16			; _t10l[8] @ 128
	.field	4,16			; _t10l[9] @ 144
	.field	6,16			; _t10l[10] @ 160
	.field	7,16			; _t10l[11] @ 176
	.field	8,16			; _t10l[12] @ 192
	.field	9,16			; _t10l[13] @ 208
	.field	8,16			; _t10l[14] @ 224
	.field	8,16			; _t10l[15] @ 240
	.field	6,16			; _t10l[16] @ 256
	.field	6,16			; _t10l[17] @ 272
	.field	7,16			; _t10l[18] @ 288
	.field	8,16			; _t10l[19] @ 304
	.field	9,16			; _t10l[20] @ 320
	.field	10,16			; _t10l[21] @ 336
	.field	9,16			; _t10l[22] @ 352
	.field	9,16			; _t10l[23] @ 368
	.field	7,16			; _t10l[24] @ 384
	.field	7,16			; _t10l[25] @ 400
	.field	8,16			; _t10l[26] @ 416
	.field	9,16			; _t10l[27] @ 432
	.field	10,16			; _t10l[28] @ 448
	.field	10,16			; _t10l[29] @ 464
	.field	9,16			; _t10l[30] @ 480
	.field	10,16			; _t10l[31] @ 496
	.field	8,16			; _t10l[32] @ 512
	.field	8,16			; _t10l[33] @ 528
	.field	9,16			; _t10l[34] @ 544
	.field	10,16			; _t10l[35] @ 560
	.field	10,16			; _t10l[36] @ 576
	.field	10,16			; _t10l[37] @ 592
	.field	10,16			; _t10l[38] @ 608
	.field	10,16			; _t10l[39] @ 624
	.field	9,16			; _t10l[40] @ 640
	.field	9,16			; _t10l[41] @ 656
	.field	10,16			; _t10l[42] @ 672
	.field	10,16			; _t10l[43] @ 688
	.field	11,16			; _t10l[44] @ 704
	.field	11,16			; _t10l[45] @ 720
	.field	10,16			; _t10l[46] @ 736
	.field	11,16			; _t10l[47] @ 752
	.field	8,16			; _t10l[48] @ 768
	.field	8,16			; _t10l[49] @ 784
	.field	9,16			; _t10l[50] @ 800
	.field	10,16			; _t10l[51] @ 816
	.field	10,16			; _t10l[52] @ 832
	.field	10,16			; _t10l[53] @ 848
	.field	11,16			; _t10l[54] @ 864
	.field	11,16			; _t10l[55] @ 880
	.field	9,16			; _t10l[56] @ 896
	.field	8,16			; _t10l[57] @ 912
	.field	9,16			; _t10l[58] @ 928
	.field	10,16			; _t10l[59] @ 944
	.field	10,16			; _t10l[60] @ 960
	.field	11,16			; _t10l[61] @ 976
	.field	11,16			; _t10l[62] @ 992
	.field	11,16			; _t10l[63] @ 1008

$C$DW$67	.dwtag  DW_TAG_variable, DW_AT_name("t10l")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_t10l")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$188)
	.dwattr $C$DW$67, DW_AT_location[DW_OP_addr _t10l]
	.sect	".const:_t11l"
	.clink
	.align	1
_t11l:
	.field	2,16			; _t11l[0] @ 0
	.field	3,16			; _t11l[1] @ 16
	.field	5,16			; _t11l[2] @ 32
	.field	7,16			; _t11l[3] @ 48
	.field	8,16			; _t11l[4] @ 64
	.field	9,16			; _t11l[5] @ 80
	.field	8,16			; _t11l[6] @ 96
	.field	9,16			; _t11l[7] @ 112
	.field	3,16			; _t11l[8] @ 128
	.field	3,16			; _t11l[9] @ 144
	.field	4,16			; _t11l[10] @ 160
	.field	6,16			; _t11l[11] @ 176
	.field	8,16			; _t11l[12] @ 192
	.field	8,16			; _t11l[13] @ 208
	.field	7,16			; _t11l[14] @ 224
	.field	8,16			; _t11l[15] @ 240
	.field	5,16			; _t11l[16] @ 256
	.field	5,16			; _t11l[17] @ 272
	.field	6,16			; _t11l[18] @ 288
	.field	7,16			; _t11l[19] @ 304
	.field	8,16			; _t11l[20] @ 320
	.field	9,16			; _t11l[21] @ 336
	.field	8,16			; _t11l[22] @ 352
	.field	8,16			; _t11l[23] @ 368
	.field	7,16			; _t11l[24] @ 384
	.field	6,16			; _t11l[25] @ 400
	.field	7,16			; _t11l[26] @ 416
	.field	9,16			; _t11l[27] @ 432
	.field	8,16			; _t11l[28] @ 448
	.field	10,16			; _t11l[29] @ 464
	.field	8,16			; _t11l[30] @ 480
	.field	9,16			; _t11l[31] @ 496
	.field	8,16			; _t11l[32] @ 512
	.field	8,16			; _t11l[33] @ 528
	.field	8,16			; _t11l[34] @ 544
	.field	9,16			; _t11l[35] @ 560
	.field	9,16			; _t11l[36] @ 576
	.field	10,16			; _t11l[37] @ 592
	.field	9,16			; _t11l[38] @ 608
	.field	10,16			; _t11l[39] @ 624
	.field	8,16			; _t11l[40] @ 640
	.field	8,16			; _t11l[41] @ 656
	.field	9,16			; _t11l[42] @ 672
	.field	10,16			; _t11l[43] @ 688
	.field	10,16			; _t11l[44] @ 704
	.field	11,16			; _t11l[45] @ 720
	.field	10,16			; _t11l[46] @ 736
	.field	11,16			; _t11l[47] @ 752
	.field	8,16			; _t11l[48] @ 768
	.field	7,16			; _t11l[49] @ 784
	.field	7,16			; _t11l[50] @ 800
	.field	8,16			; _t11l[51] @ 816
	.field	9,16			; _t11l[52] @ 832
	.field	10,16			; _t11l[53] @ 848
	.field	10,16			; _t11l[54] @ 864
	.field	10,16			; _t11l[55] @ 880
	.field	8,16			; _t11l[56] @ 896
	.field	7,16			; _t11l[57] @ 912
	.field	8,16			; _t11l[58] @ 928
	.field	9,16			; _t11l[59] @ 944
	.field	10,16			; _t11l[60] @ 960
	.field	10,16			; _t11l[61] @ 976
	.field	10,16			; _t11l[62] @ 992
	.field	10,16			; _t11l[63] @ 1008

$C$DW$68	.dwtag  DW_TAG_variable, DW_AT_name("t11l")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_t11l")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$188)
	.dwattr $C$DW$68, DW_AT_location[DW_OP_addr _t11l]
	.sect	".const:_t12l"
	.clink
	.align	1
_t12l:
	.field	4,16			; _t12l[0] @ 0
	.field	3,16			; _t12l[1] @ 16
	.field	5,16			; _t12l[2] @ 32
	.field	7,16			; _t12l[3] @ 48
	.field	8,16			; _t12l[4] @ 64
	.field	9,16			; _t12l[5] @ 80
	.field	9,16			; _t12l[6] @ 96
	.field	9,16			; _t12l[7] @ 112
	.field	3,16			; _t12l[8] @ 128
	.field	3,16			; _t12l[9] @ 144
	.field	4,16			; _t12l[10] @ 160
	.field	5,16			; _t12l[11] @ 176
	.field	7,16			; _t12l[12] @ 192
	.field	7,16			; _t12l[13] @ 208
	.field	8,16			; _t12l[14] @ 224
	.field	8,16			; _t12l[15] @ 240
	.field	5,16			; _t12l[16] @ 256
	.field	4,16			; _t12l[17] @ 272
	.field	5,16			; _t12l[18] @ 288
	.field	6,16			; _t12l[19] @ 304
	.field	7,16			; _t12l[20] @ 320
	.field	8,16			; _t12l[21] @ 336
	.field	7,16			; _t12l[22] @ 352
	.field	8,16			; _t12l[23] @ 368
	.field	6,16			; _t12l[24] @ 384
	.field	5,16			; _t12l[25] @ 400
	.field	6,16			; _t12l[26] @ 416
	.field	6,16			; _t12l[27] @ 432
	.field	7,16			; _t12l[28] @ 448
	.field	8,16			; _t12l[29] @ 464
	.field	8,16			; _t12l[30] @ 480
	.field	8,16			; _t12l[31] @ 496
	.field	7,16			; _t12l[32] @ 512
	.field	6,16			; _t12l[33] @ 528
	.field	7,16			; _t12l[34] @ 544
	.field	7,16			; _t12l[35] @ 560
	.field	8,16			; _t12l[36] @ 576
	.field	8,16			; _t12l[37] @ 592
	.field	8,16			; _t12l[38] @ 608
	.field	9,16			; _t12l[39] @ 624
	.field	8,16			; _t12l[40] @ 640
	.field	7,16			; _t12l[41] @ 656
	.field	8,16			; _t12l[42] @ 672
	.field	8,16			; _t12l[43] @ 688
	.field	8,16			; _t12l[44] @ 704
	.field	9,16			; _t12l[45] @ 720
	.field	8,16			; _t12l[46] @ 736
	.field	9,16			; _t12l[47] @ 752
	.field	8,16			; _t12l[48] @ 768
	.field	7,16			; _t12l[49] @ 784
	.field	7,16			; _t12l[50] @ 800
	.field	8,16			; _t12l[51] @ 816
	.field	8,16			; _t12l[52] @ 832
	.field	9,16			; _t12l[53] @ 848
	.field	9,16			; _t12l[54] @ 864
	.field	10,16			; _t12l[55] @ 880
	.field	9,16			; _t12l[56] @ 896
	.field	8,16			; _t12l[57] @ 912
	.field	8,16			; _t12l[58] @ 928
	.field	9,16			; _t12l[59] @ 944
	.field	9,16			; _t12l[60] @ 960
	.field	9,16			; _t12l[61] @ 976
	.field	9,16			; _t12l[62] @ 992
	.field	10,16			; _t12l[63] @ 1008

$C$DW$69	.dwtag  DW_TAG_variable, DW_AT_name("t12l")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_t12l")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$188)
	.dwattr $C$DW$69, DW_AT_location[DW_OP_addr _t12l]
	.sect	".const:_t13l"
	.clink
	.align	1
_t13l:
	.field	1,16			; _t13l[0] @ 0
	.field	4,16			; _t13l[1] @ 16
	.field	6,16			; _t13l[2] @ 32
	.field	7,16			; _t13l[3] @ 48
	.field	8,16			; _t13l[4] @ 64
	.field	9,16			; _t13l[5] @ 80
	.field	9,16			; _t13l[6] @ 96
	.field	10,16			; _t13l[7] @ 112
	.field	9,16			; _t13l[8] @ 128
	.field	10,16			; _t13l[9] @ 144
	.field	11,16			; _t13l[10] @ 160
	.field	11,16			; _t13l[11] @ 176
	.field	12,16			; _t13l[12] @ 192
	.field	12,16			; _t13l[13] @ 208
	.field	13,16			; _t13l[14] @ 224
	.field	13,16			; _t13l[15] @ 240
	.field	3,16			; _t13l[16] @ 256
	.field	4,16			; _t13l[17] @ 272
	.field	6,16			; _t13l[18] @ 288
	.field	7,16			; _t13l[19] @ 304
	.field	8,16			; _t13l[20] @ 320
	.field	8,16			; _t13l[21] @ 336
	.field	9,16			; _t13l[22] @ 352
	.field	9,16			; _t13l[23] @ 368
	.field	9,16			; _t13l[24] @ 384
	.field	9,16			; _t13l[25] @ 400
	.field	10,16			; _t13l[26] @ 416
	.field	10,16			; _t13l[27] @ 432
	.field	11,16			; _t13l[28] @ 448
	.field	12,16			; _t13l[29] @ 464
	.field	12,16			; _t13l[30] @ 480
	.field	12,16			; _t13l[31] @ 496
	.field	6,16			; _t13l[32] @ 512
	.field	6,16			; _t13l[33] @ 528
	.field	7,16			; _t13l[34] @ 544
	.field	8,16			; _t13l[35] @ 560
	.field	9,16			; _t13l[36] @ 576
	.field	9,16			; _t13l[37] @ 592
	.field	10,16			; _t13l[38] @ 608
	.field	10,16			; _t13l[39] @ 624
	.field	9,16			; _t13l[40] @ 640
	.field	10,16			; _t13l[41] @ 656
	.field	10,16			; _t13l[42] @ 672
	.field	11,16			; _t13l[43] @ 688
	.field	11,16			; _t13l[44] @ 704
	.field	12,16			; _t13l[45] @ 720
	.field	13,16			; _t13l[46] @ 736
	.field	13,16			; _t13l[47] @ 752
	.field	7,16			; _t13l[48] @ 768
	.field	7,16			; _t13l[49] @ 784
	.field	8,16			; _t13l[50] @ 800
	.field	9,16			; _t13l[51] @ 816
	.field	9,16			; _t13l[52] @ 832
	.field	10,16			; _t13l[53] @ 848
	.field	10,16			; _t13l[54] @ 864
	.field	10,16			; _t13l[55] @ 880
	.field	10,16			; _t13l[56] @ 896
	.field	11,16			; _t13l[57] @ 912
	.field	11,16			; _t13l[58] @ 928
	.field	11,16			; _t13l[59] @ 944
	.field	11,16			; _t13l[60] @ 960
	.field	12,16			; _t13l[61] @ 976
	.field	13,16			; _t13l[62] @ 992
	.field	13,16			; _t13l[63] @ 1008
	.field	8,16			; _t13l[64] @ 1024
	.field	7,16			; _t13l[65] @ 1040
	.field	9,16			; _t13l[66] @ 1056
	.field	9,16			; _t13l[67] @ 1072
	.field	10,16			; _t13l[68] @ 1088
	.field	10,16			; _t13l[69] @ 1104
	.field	11,16			; _t13l[70] @ 1120
	.field	11,16			; _t13l[71] @ 1136
	.field	10,16			; _t13l[72] @ 1152
	.field	11,16			; _t13l[73] @ 1168
	.field	11,16			; _t13l[74] @ 1184
	.field	12,16			; _t13l[75] @ 1200
	.field	12,16			; _t13l[76] @ 1216
	.field	13,16			; _t13l[77] @ 1232
	.field	13,16			; _t13l[78] @ 1248
	.field	14,16			; _t13l[79] @ 1264
	.field	9,16			; _t13l[80] @ 1280
	.field	8,16			; _t13l[81] @ 1296
	.field	9,16			; _t13l[82] @ 1312
	.field	10,16			; _t13l[83] @ 1328
	.field	10,16			; _t13l[84] @ 1344
	.field	10,16			; _t13l[85] @ 1360
	.field	11,16			; _t13l[86] @ 1376
	.field	11,16			; _t13l[87] @ 1392
	.field	11,16			; _t13l[88] @ 1408
	.field	11,16			; _t13l[89] @ 1424
	.field	12,16			; _t13l[90] @ 1440
	.field	11,16			; _t13l[91] @ 1456
	.field	13,16			; _t13l[92] @ 1472
	.field	13,16			; _t13l[93] @ 1488
	.field	14,16			; _t13l[94] @ 1504
	.field	14,16			; _t13l[95] @ 1520
	.field	9,16			; _t13l[96] @ 1536
	.field	9,16			; _t13l[97] @ 1552
	.field	10,16			; _t13l[98] @ 1568
	.field	10,16			; _t13l[99] @ 1584
	.field	11,16			; _t13l[100] @ 1600
	.field	11,16			; _t13l[101] @ 1616
	.field	11,16			; _t13l[102] @ 1632
	.field	11,16			; _t13l[103] @ 1648
	.field	11,16			; _t13l[104] @ 1664
	.field	12,16			; _t13l[105] @ 1680
	.field	12,16			; _t13l[106] @ 1696
	.field	12,16			; _t13l[107] @ 1712
	.field	13,16			; _t13l[108] @ 1728
	.field	13,16			; _t13l[109] @ 1744
	.field	14,16			; _t13l[110] @ 1760
	.field	14,16			; _t13l[111] @ 1776
	.field	10,16			; _t13l[112] @ 1792
	.field	9,16			; _t13l[113] @ 1808
	.field	10,16			; _t13l[114] @ 1824
	.field	11,16			; _t13l[115] @ 1840
	.field	11,16			; _t13l[116] @ 1856
	.field	11,16			; _t13l[117] @ 1872
	.field	12,16			; _t13l[118] @ 1888
	.field	12,16			; _t13l[119] @ 1904
	.field	12,16			; _t13l[120] @ 1920
	.field	12,16			; _t13l[121] @ 1936
	.field	13,16			; _t13l[122] @ 1952
	.field	13,16			; _t13l[123] @ 1968
	.field	13,16			; _t13l[124] @ 1984
	.field	14,16			; _t13l[125] @ 2000
	.field	16,16			; _t13l[126] @ 2016
	.field	16,16			; _t13l[127] @ 2032
	.field	9,16			; _t13l[128] @ 2048
	.field	8,16			; _t13l[129] @ 2064
	.field	9,16			; _t13l[130] @ 2080
	.field	10,16			; _t13l[131] @ 2096
	.field	10,16			; _t13l[132] @ 2112
	.field	11,16			; _t13l[133] @ 2128
	.field	11,16			; _t13l[134] @ 2144
	.field	12,16			; _t13l[135] @ 2160
	.field	12,16			; _t13l[136] @ 2176
	.field	12,16			; _t13l[137] @ 2192
	.field	12,16			; _t13l[138] @ 2208
	.field	13,16			; _t13l[139] @ 2224
	.field	13,16			; _t13l[140] @ 2240
	.field	14,16			; _t13l[141] @ 2256
	.field	15,16			; _t13l[142] @ 2272
	.field	15,16			; _t13l[143] @ 2288
	.field	10,16			; _t13l[144] @ 2304
	.field	9,16			; _t13l[145] @ 2320
	.field	10,16			; _t13l[146] @ 2336
	.field	10,16			; _t13l[147] @ 2352
	.field	11,16			; _t13l[148] @ 2368
	.field	11,16			; _t13l[149] @ 2384
	.field	11,16			; _t13l[150] @ 2400
	.field	13,16			; _t13l[151] @ 2416
	.field	12,16			; _t13l[152] @ 2432
	.field	13,16			; _t13l[153] @ 2448
	.field	13,16			; _t13l[154] @ 2464
	.field	14,16			; _t13l[155] @ 2480
	.field	14,16			; _t13l[156] @ 2496
	.field	14,16			; _t13l[157] @ 2512
	.field	16,16			; _t13l[158] @ 2528
	.field	15,16			; _t13l[159] @ 2544
	.field	10,16			; _t13l[160] @ 2560
	.field	10,16			; _t13l[161] @ 2576
	.field	10,16			; _t13l[162] @ 2592
	.field	11,16			; _t13l[163] @ 2608
	.field	11,16			; _t13l[164] @ 2624
	.field	12,16			; _t13l[165] @ 2640
	.field	12,16			; _t13l[166] @ 2656
	.field	13,16			; _t13l[167] @ 2672
	.field	12,16			; _t13l[168] @ 2688
	.field	13,16			; _t13l[169] @ 2704
	.field	14,16			; _t13l[170] @ 2720
	.field	13,16			; _t13l[171] @ 2736
	.field	14,16			; _t13l[172] @ 2752
	.field	15,16			; _t13l[173] @ 2768
	.field	16,16			; _t13l[174] @ 2784
	.field	17,16			; _t13l[175] @ 2800
	.field	11,16			; _t13l[176] @ 2816
	.field	10,16			; _t13l[177] @ 2832
	.field	10,16			; _t13l[178] @ 2848
	.field	11,16			; _t13l[179] @ 2864
	.field	12,16			; _t13l[180] @ 2880
	.field	12,16			; _t13l[181] @ 2896
	.field	12,16			; _t13l[182] @ 2912
	.field	12,16			; _t13l[183] @ 2928
	.field	13,16			; _t13l[184] @ 2944
	.field	13,16			; _t13l[185] @ 2960
	.field	13,16			; _t13l[186] @ 2976
	.field	14,16			; _t13l[187] @ 2992
	.field	15,16			; _t13l[188] @ 3008
	.field	15,16			; _t13l[189] @ 3024
	.field	15,16			; _t13l[190] @ 3040
	.field	16,16			; _t13l[191] @ 3056
	.field	11,16			; _t13l[192] @ 3072
	.field	11,16			; _t13l[193] @ 3088
	.field	11,16			; _t13l[194] @ 3104
	.field	12,16			; _t13l[195] @ 3120
	.field	12,16			; _t13l[196] @ 3136
	.field	13,16			; _t13l[197] @ 3152
	.field	12,16			; _t13l[198] @ 3168
	.field	13,16			; _t13l[199] @ 3184
	.field	14,16			; _t13l[200] @ 3200
	.field	14,16			; _t13l[201] @ 3216
	.field	15,16			; _t13l[202] @ 3232
	.field	15,16			; _t13l[203] @ 3248
	.field	15,16			; _t13l[204] @ 3264
	.field	16,16			; _t13l[205] @ 3280
	.field	16,16			; _t13l[206] @ 3296
	.field	16,16			; _t13l[207] @ 3312
	.field	12,16			; _t13l[208] @ 3328
	.field	11,16			; _t13l[209] @ 3344
	.field	12,16			; _t13l[210] @ 3360
	.field	13,16			; _t13l[211] @ 3376
	.field	13,16			; _t13l[212] @ 3392
	.field	13,16			; _t13l[213] @ 3408
	.field	14,16			; _t13l[214] @ 3424
	.field	14,16			; _t13l[215] @ 3440
	.field	14,16			; _t13l[216] @ 3456
	.field	14,16			; _t13l[217] @ 3472
	.field	14,16			; _t13l[218] @ 3488
	.field	15,16			; _t13l[219] @ 3504
	.field	16,16			; _t13l[220] @ 3520
	.field	15,16			; _t13l[221] @ 3536
	.field	16,16			; _t13l[222] @ 3552
	.field	16,16			; _t13l[223] @ 3568
	.field	13,16			; _t13l[224] @ 3584
	.field	12,16			; _t13l[225] @ 3600
	.field	12,16			; _t13l[226] @ 3616
	.field	13,16			; _t13l[227] @ 3632
	.field	13,16			; _t13l[228] @ 3648
	.field	13,16			; _t13l[229] @ 3664
	.field	15,16			; _t13l[230] @ 3680
	.field	14,16			; _t13l[231] @ 3696
	.field	14,16			; _t13l[232] @ 3712
	.field	17,16			; _t13l[233] @ 3728
	.field	15,16			; _t13l[234] @ 3744
	.field	15,16			; _t13l[235] @ 3760
	.field	15,16			; _t13l[236] @ 3776
	.field	17,16			; _t13l[237] @ 3792
	.field	16,16			; _t13l[238] @ 3808
	.field	16,16			; _t13l[239] @ 3824
	.field	12,16			; _t13l[240] @ 3840
	.field	12,16			; _t13l[241] @ 3856
	.field	13,16			; _t13l[242] @ 3872
	.field	14,16			; _t13l[243] @ 3888
	.field	14,16			; _t13l[244] @ 3904
	.field	14,16			; _t13l[245] @ 3920
	.field	15,16			; _t13l[246] @ 3936
	.field	14,16			; _t13l[247] @ 3952
	.field	15,16			; _t13l[248] @ 3968
	.field	15,16			; _t13l[249] @ 3984
	.field	16,16			; _t13l[250] @ 4000
	.field	16,16			; _t13l[251] @ 4016
	.field	19,16			; _t13l[252] @ 4032
	.field	18,16			; _t13l[253] @ 4048
	.field	19,16			; _t13l[254] @ 4064
	.field	16,16			; _t13l[255] @ 4080

$C$DW$70	.dwtag  DW_TAG_variable, DW_AT_name("t13l")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_t13l")
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$189)
	.dwattr $C$DW$70, DW_AT_location[DW_OP_addr _t13l]
	.sect	".const:_t15l"
	.clink
	.align	1
_t15l:
	.field	3,16			; _t15l[0] @ 0
	.field	4,16			; _t15l[1] @ 16
	.field	5,16			; _t15l[2] @ 32
	.field	7,16			; _t15l[3] @ 48
	.field	7,16			; _t15l[4] @ 64
	.field	8,16			; _t15l[5] @ 80
	.field	9,16			; _t15l[6] @ 96
	.field	9,16			; _t15l[7] @ 112
	.field	9,16			; _t15l[8] @ 128
	.field	10,16			; _t15l[9] @ 144
	.field	10,16			; _t15l[10] @ 160
	.field	11,16			; _t15l[11] @ 176
	.field	11,16			; _t15l[12] @ 192
	.field	11,16			; _t15l[13] @ 208
	.field	12,16			; _t15l[14] @ 224
	.field	13,16			; _t15l[15] @ 240
	.field	4,16			; _t15l[16] @ 256
	.field	3,16			; _t15l[17] @ 272
	.field	5,16			; _t15l[18] @ 288
	.field	6,16			; _t15l[19] @ 304
	.field	7,16			; _t15l[20] @ 320
	.field	7,16			; _t15l[21] @ 336
	.field	8,16			; _t15l[22] @ 352
	.field	8,16			; _t15l[23] @ 368
	.field	8,16			; _t15l[24] @ 384
	.field	9,16			; _t15l[25] @ 400
	.field	9,16			; _t15l[26] @ 416
	.field	10,16			; _t15l[27] @ 432
	.field	10,16			; _t15l[28] @ 448
	.field	10,16			; _t15l[29] @ 464
	.field	11,16			; _t15l[30] @ 480
	.field	11,16			; _t15l[31] @ 496
	.field	5,16			; _t15l[32] @ 512
	.field	5,16			; _t15l[33] @ 528
	.field	5,16			; _t15l[34] @ 544
	.field	6,16			; _t15l[35] @ 560
	.field	7,16			; _t15l[36] @ 576
	.field	7,16			; _t15l[37] @ 592
	.field	8,16			; _t15l[38] @ 608
	.field	8,16			; _t15l[39] @ 624
	.field	8,16			; _t15l[40] @ 640
	.field	9,16			; _t15l[41] @ 656
	.field	9,16			; _t15l[42] @ 672
	.field	10,16			; _t15l[43] @ 688
	.field	10,16			; _t15l[44] @ 704
	.field	11,16			; _t15l[45] @ 720
	.field	11,16			; _t15l[46] @ 736
	.field	11,16			; _t15l[47] @ 752
	.field	6,16			; _t15l[48] @ 768
	.field	6,16			; _t15l[49] @ 784
	.field	6,16			; _t15l[50] @ 800
	.field	7,16			; _t15l[51] @ 816
	.field	7,16			; _t15l[52] @ 832
	.field	8,16			; _t15l[53] @ 848
	.field	8,16			; _t15l[54] @ 864
	.field	9,16			; _t15l[55] @ 880
	.field	9,16			; _t15l[56] @ 896
	.field	9,16			; _t15l[57] @ 912
	.field	10,16			; _t15l[58] @ 928
	.field	10,16			; _t15l[59] @ 944
	.field	10,16			; _t15l[60] @ 960
	.field	11,16			; _t15l[61] @ 976
	.field	11,16			; _t15l[62] @ 992
	.field	11,16			; _t15l[63] @ 1008
	.field	7,16			; _t15l[64] @ 1024
	.field	6,16			; _t15l[65] @ 1040
	.field	7,16			; _t15l[66] @ 1056
	.field	7,16			; _t15l[67] @ 1072
	.field	8,16			; _t15l[68] @ 1088
	.field	8,16			; _t15l[69] @ 1104
	.field	9,16			; _t15l[70] @ 1120
	.field	9,16			; _t15l[71] @ 1136
	.field	9,16			; _t15l[72] @ 1152
	.field	9,16			; _t15l[73] @ 1168
	.field	10,16			; _t15l[74] @ 1184
	.field	10,16			; _t15l[75] @ 1200
	.field	10,16			; _t15l[76] @ 1216
	.field	11,16			; _t15l[77] @ 1232
	.field	11,16			; _t15l[78] @ 1248
	.field	11,16			; _t15l[79] @ 1264
	.field	8,16			; _t15l[80] @ 1280
	.field	7,16			; _t15l[81] @ 1296
	.field	7,16			; _t15l[82] @ 1312
	.field	8,16			; _t15l[83] @ 1328
	.field	8,16			; _t15l[84] @ 1344
	.field	8,16			; _t15l[85] @ 1360
	.field	9,16			; _t15l[86] @ 1376
	.field	9,16			; _t15l[87] @ 1392
	.field	9,16			; _t15l[88] @ 1408
	.field	9,16			; _t15l[89] @ 1424
	.field	10,16			; _t15l[90] @ 1440
	.field	10,16			; _t15l[91] @ 1456
	.field	11,16			; _t15l[92] @ 1472
	.field	11,16			; _t15l[93] @ 1488
	.field	11,16			; _t15l[94] @ 1504
	.field	12,16			; _t15l[95] @ 1520
	.field	9,16			; _t15l[96] @ 1536
	.field	7,16			; _t15l[97] @ 1552
	.field	8,16			; _t15l[98] @ 1568
	.field	8,16			; _t15l[99] @ 1584
	.field	8,16			; _t15l[100] @ 1600
	.field	9,16			; _t15l[101] @ 1616
	.field	9,16			; _t15l[102] @ 1632
	.field	9,16			; _t15l[103] @ 1648
	.field	9,16			; _t15l[104] @ 1664
	.field	10,16			; _t15l[105] @ 1680
	.field	10,16			; _t15l[106] @ 1696
	.field	10,16			; _t15l[107] @ 1712
	.field	11,16			; _t15l[108] @ 1728
	.field	11,16			; _t15l[109] @ 1744
	.field	12,16			; _t15l[110] @ 1760
	.field	12,16			; _t15l[111] @ 1776
	.field	9,16			; _t15l[112] @ 1792
	.field	8,16			; _t15l[113] @ 1808
	.field	8,16			; _t15l[114] @ 1824
	.field	9,16			; _t15l[115] @ 1840
	.field	9,16			; _t15l[116] @ 1856
	.field	9,16			; _t15l[117] @ 1872
	.field	9,16			; _t15l[118] @ 1888
	.field	10,16			; _t15l[119] @ 1904
	.field	10,16			; _t15l[120] @ 1920
	.field	10,16			; _t15l[121] @ 1936
	.field	10,16			; _t15l[122] @ 1952
	.field	10,16			; _t15l[123] @ 1968
	.field	11,16			; _t15l[124] @ 1984
	.field	11,16			; _t15l[125] @ 2000
	.field	11,16			; _t15l[126] @ 2016
	.field	12,16			; _t15l[127] @ 2032
	.field	9,16			; _t15l[128] @ 2048
	.field	8,16			; _t15l[129] @ 2064
	.field	8,16			; _t15l[130] @ 2080
	.field	9,16			; _t15l[131] @ 2096
	.field	9,16			; _t15l[132] @ 2112
	.field	9,16			; _t15l[133] @ 2128
	.field	9,16			; _t15l[134] @ 2144
	.field	10,16			; _t15l[135] @ 2160
	.field	10,16			; _t15l[136] @ 2176
	.field	10,16			; _t15l[137] @ 2192
	.field	10,16			; _t15l[138] @ 2208
	.field	11,16			; _t15l[139] @ 2224
	.field	11,16			; _t15l[140] @ 2240
	.field	12,16			; _t15l[141] @ 2256
	.field	12,16			; _t15l[142] @ 2272
	.field	12,16			; _t15l[143] @ 2288
	.field	9,16			; _t15l[144] @ 2304
	.field	8,16			; _t15l[145] @ 2320
	.field	9,16			; _t15l[146] @ 2336
	.field	9,16			; _t15l[147] @ 2352
	.field	9,16			; _t15l[148] @ 2368
	.field	9,16			; _t15l[149] @ 2384
	.field	10,16			; _t15l[150] @ 2400
	.field	10,16			; _t15l[151] @ 2416
	.field	10,16			; _t15l[152] @ 2432
	.field	11,16			; _t15l[153] @ 2448
	.field	11,16			; _t15l[154] @ 2464
	.field	11,16			; _t15l[155] @ 2480
	.field	11,16			; _t15l[156] @ 2496
	.field	12,16			; _t15l[157] @ 2512
	.field	12,16			; _t15l[158] @ 2528
	.field	12,16			; _t15l[159] @ 2544
	.field	10,16			; _t15l[160] @ 2560
	.field	9,16			; _t15l[161] @ 2576
	.field	9,16			; _t15l[162] @ 2592
	.field	9,16			; _t15l[163] @ 2608
	.field	10,16			; _t15l[164] @ 2624
	.field	10,16			; _t15l[165] @ 2640
	.field	10,16			; _t15l[166] @ 2656
	.field	10,16			; _t15l[167] @ 2672
	.field	10,16			; _t15l[168] @ 2688
	.field	11,16			; _t15l[169] @ 2704
	.field	11,16			; _t15l[170] @ 2720
	.field	11,16			; _t15l[171] @ 2736
	.field	11,16			; _t15l[172] @ 2752
	.field	12,16			; _t15l[173] @ 2768
	.field	13,16			; _t15l[174] @ 2784
	.field	12,16			; _t15l[175] @ 2800
	.field	10,16			; _t15l[176] @ 2816
	.field	9,16			; _t15l[177] @ 2832
	.field	9,16			; _t15l[178] @ 2848
	.field	9,16			; _t15l[179] @ 2864
	.field	10,16			; _t15l[180] @ 2880
	.field	10,16			; _t15l[181] @ 2896
	.field	10,16			; _t15l[182] @ 2912
	.field	10,16			; _t15l[183] @ 2928
	.field	11,16			; _t15l[184] @ 2944
	.field	11,16			; _t15l[185] @ 2960
	.field	11,16			; _t15l[186] @ 2976
	.field	11,16			; _t15l[187] @ 2992
	.field	12,16			; _t15l[188] @ 3008
	.field	12,16			; _t15l[189] @ 3024
	.field	12,16			; _t15l[190] @ 3040
	.field	13,16			; _t15l[191] @ 3056
	.field	11,16			; _t15l[192] @ 3072
	.field	10,16			; _t15l[193] @ 3088
	.field	9,16			; _t15l[194] @ 3104
	.field	10,16			; _t15l[195] @ 3120
	.field	10,16			; _t15l[196] @ 3136
	.field	10,16			; _t15l[197] @ 3152
	.field	11,16			; _t15l[198] @ 3168
	.field	11,16			; _t15l[199] @ 3184
	.field	11,16			; _t15l[200] @ 3200
	.field	11,16			; _t15l[201] @ 3216
	.field	11,16			; _t15l[202] @ 3232
	.field	11,16			; _t15l[203] @ 3248
	.field	12,16			; _t15l[204] @ 3264
	.field	12,16			; _t15l[205] @ 3280
	.field	13,16			; _t15l[206] @ 3296
	.field	13,16			; _t15l[207] @ 3312
	.field	11,16			; _t15l[208] @ 3328
	.field	10,16			; _t15l[209] @ 3344
	.field	10,16			; _t15l[210] @ 3360
	.field	10,16			; _t15l[211] @ 3376
	.field	10,16			; _t15l[212] @ 3392
	.field	11,16			; _t15l[213] @ 3408
	.field	11,16			; _t15l[214] @ 3424
	.field	11,16			; _t15l[215] @ 3440
	.field	11,16			; _t15l[216] @ 3456
	.field	12,16			; _t15l[217] @ 3472
	.field	12,16			; _t15l[218] @ 3488
	.field	12,16			; _t15l[219] @ 3504
	.field	12,16			; _t15l[220] @ 3520
	.field	12,16			; _t15l[221] @ 3536
	.field	13,16			; _t15l[222] @ 3552
	.field	13,16			; _t15l[223] @ 3568
	.field	12,16			; _t15l[224] @ 3584
	.field	11,16			; _t15l[225] @ 3600
	.field	11,16			; _t15l[226] @ 3616
	.field	11,16			; _t15l[227] @ 3632
	.field	11,16			; _t15l[228] @ 3648
	.field	11,16			; _t15l[229] @ 3664
	.field	11,16			; _t15l[230] @ 3680
	.field	11,16			; _t15l[231] @ 3696
	.field	12,16			; _t15l[232] @ 3712
	.field	12,16			; _t15l[233] @ 3728
	.field	12,16			; _t15l[234] @ 3744
	.field	12,16			; _t15l[235] @ 3760
	.field	13,16			; _t15l[236] @ 3776
	.field	13,16			; _t15l[237] @ 3792
	.field	12,16			; _t15l[238] @ 3808
	.field	13,16			; _t15l[239] @ 3824
	.field	12,16			; _t15l[240] @ 3840
	.field	11,16			; _t15l[241] @ 3856
	.field	11,16			; _t15l[242] @ 3872
	.field	11,16			; _t15l[243] @ 3888
	.field	11,16			; _t15l[244] @ 3904
	.field	11,16			; _t15l[245] @ 3920
	.field	11,16			; _t15l[246] @ 3936
	.field	12,16			; _t15l[247] @ 3952
	.field	12,16			; _t15l[248] @ 3968
	.field	12,16			; _t15l[249] @ 3984
	.field	12,16			; _t15l[250] @ 4000
	.field	12,16			; _t15l[251] @ 4016
	.field	13,16			; _t15l[252] @ 4032
	.field	13,16			; _t15l[253] @ 4048
	.field	13,16			; _t15l[254] @ 4064
	.field	13,16			; _t15l[255] @ 4080

$C$DW$71	.dwtag  DW_TAG_variable, DW_AT_name("t15l")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_t15l")
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$189)
	.dwattr $C$DW$71, DW_AT_location[DW_OP_addr _t15l]
	.sect	".const:_t16l"
	.clink
	.align	1
_t16l:
	.field	1,16			; _t16l[0] @ 0
	.field	4,16			; _t16l[1] @ 16
	.field	6,16			; _t16l[2] @ 32
	.field	8,16			; _t16l[3] @ 48
	.field	9,16			; _t16l[4] @ 64
	.field	9,16			; _t16l[5] @ 80
	.field	10,16			; _t16l[6] @ 96
	.field	10,16			; _t16l[7] @ 112
	.field	11,16			; _t16l[8] @ 128
	.field	11,16			; _t16l[9] @ 144
	.field	11,16			; _t16l[10] @ 160
	.field	12,16			; _t16l[11] @ 176
	.field	12,16			; _t16l[12] @ 192
	.field	12,16			; _t16l[13] @ 208
	.field	13,16			; _t16l[14] @ 224
	.field	9,16			; _t16l[15] @ 240
	.field	3,16			; _t16l[16] @ 256
	.field	4,16			; _t16l[17] @ 272
	.field	6,16			; _t16l[18] @ 288
	.field	7,16			; _t16l[19] @ 304
	.field	8,16			; _t16l[20] @ 320
	.field	9,16			; _t16l[21] @ 336
	.field	9,16			; _t16l[22] @ 352
	.field	9,16			; _t16l[23] @ 368
	.field	10,16			; _t16l[24] @ 384
	.field	10,16			; _t16l[25] @ 400
	.field	10,16			; _t16l[26] @ 416
	.field	11,16			; _t16l[27] @ 432
	.field	12,16			; _t16l[28] @ 448
	.field	11,16			; _t16l[29] @ 464
	.field	12,16			; _t16l[30] @ 480
	.field	8,16			; _t16l[31] @ 496
	.field	6,16			; _t16l[32] @ 512
	.field	6,16			; _t16l[33] @ 528
	.field	7,16			; _t16l[34] @ 544
	.field	8,16			; _t16l[35] @ 560
	.field	9,16			; _t16l[36] @ 576
	.field	9,16			; _t16l[37] @ 592
	.field	10,16			; _t16l[38] @ 608
	.field	10,16			; _t16l[39] @ 624
	.field	11,16			; _t16l[40] @ 640
	.field	10,16			; _t16l[41] @ 656
	.field	11,16			; _t16l[42] @ 672
	.field	11,16			; _t16l[43] @ 688
	.field	11,16			; _t16l[44] @ 704
	.field	12,16			; _t16l[45] @ 720
	.field	12,16			; _t16l[46] @ 736
	.field	9,16			; _t16l[47] @ 752
	.field	8,16			; _t16l[48] @ 768
	.field	7,16			; _t16l[49] @ 784
	.field	8,16			; _t16l[50] @ 800
	.field	9,16			; _t16l[51] @ 816
	.field	9,16			; _t16l[52] @ 832
	.field	10,16			; _t16l[53] @ 848
	.field	10,16			; _t16l[54] @ 864
	.field	10,16			; _t16l[55] @ 880
	.field	11,16			; _t16l[56] @ 896
	.field	11,16			; _t16l[57] @ 912
	.field	12,16			; _t16l[58] @ 928
	.field	12,16			; _t16l[59] @ 944
	.field	12,16			; _t16l[60] @ 960
	.field	13,16			; _t16l[61] @ 976
	.field	13,16			; _t16l[62] @ 992
	.field	10,16			; _t16l[63] @ 1008
	.field	9,16			; _t16l[64] @ 1024
	.field	8,16			; _t16l[65] @ 1040
	.field	9,16			; _t16l[66] @ 1056
	.field	9,16			; _t16l[67] @ 1072
	.field	10,16			; _t16l[68] @ 1088
	.field	10,16			; _t16l[69] @ 1104
	.field	11,16			; _t16l[70] @ 1120
	.field	11,16			; _t16l[71] @ 1136
	.field	11,16			; _t16l[72] @ 1152
	.field	12,16			; _t16l[73] @ 1168
	.field	12,16			; _t16l[74] @ 1184
	.field	12,16			; _t16l[75] @ 1200
	.field	13,16			; _t16l[76] @ 1216
	.field	13,16			; _t16l[77] @ 1232
	.field	13,16			; _t16l[78] @ 1248
	.field	9,16			; _t16l[79] @ 1264
	.field	9,16			; _t16l[80] @ 1280
	.field	8,16			; _t16l[81] @ 1296
	.field	9,16			; _t16l[82] @ 1312
	.field	9,16			; _t16l[83] @ 1328
	.field	10,16			; _t16l[84] @ 1344
	.field	11,16			; _t16l[85] @ 1360
	.field	11,16			; _t16l[86] @ 1376
	.field	12,16			; _t16l[87] @ 1392
	.field	11,16			; _t16l[88] @ 1408
	.field	12,16			; _t16l[89] @ 1424
	.field	12,16			; _t16l[90] @ 1440
	.field	13,16			; _t16l[91] @ 1456
	.field	13,16			; _t16l[92] @ 1472
	.field	13,16			; _t16l[93] @ 1488
	.field	14,16			; _t16l[94] @ 1504
	.field	10,16			; _t16l[95] @ 1520
	.field	10,16			; _t16l[96] @ 1536
	.field	9,16			; _t16l[97] @ 1552
	.field	9,16			; _t16l[98] @ 1568
	.field	10,16			; _t16l[99] @ 1584
	.field	11,16			; _t16l[100] @ 1600
	.field	11,16			; _t16l[101] @ 1616
	.field	11,16			; _t16l[102] @ 1632
	.field	11,16			; _t16l[103] @ 1648
	.field	12,16			; _t16l[104] @ 1664
	.field	12,16			; _t16l[105] @ 1680
	.field	12,16			; _t16l[106] @ 1696
	.field	12,16			; _t16l[107] @ 1712
	.field	13,16			; _t16l[108] @ 1728
	.field	13,16			; _t16l[109] @ 1744
	.field	14,16			; _t16l[110] @ 1760
	.field	10,16			; _t16l[111] @ 1776
	.field	10,16			; _t16l[112] @ 1792
	.field	9,16			; _t16l[113] @ 1808
	.field	10,16			; _t16l[114] @ 1824
	.field	10,16			; _t16l[115] @ 1840
	.field	11,16			; _t16l[116] @ 1856
	.field	11,16			; _t16l[117] @ 1872
	.field	11,16			; _t16l[118] @ 1888
	.field	12,16			; _t16l[119] @ 1904
	.field	12,16			; _t16l[120] @ 1920
	.field	13,16			; _t16l[121] @ 1936
	.field	13,16			; _t16l[122] @ 1952
	.field	13,16			; _t16l[123] @ 1968
	.field	13,16			; _t16l[124] @ 1984
	.field	15,16			; _t16l[125] @ 2000
	.field	15,16			; _t16l[126] @ 2016
	.field	10,16			; _t16l[127] @ 2032
	.field	10,16			; _t16l[128] @ 2048
	.field	10,16			; _t16l[129] @ 2064
	.field	10,16			; _t16l[130] @ 2080
	.field	11,16			; _t16l[131] @ 2096
	.field	11,16			; _t16l[132] @ 2112
	.field	11,16			; _t16l[133] @ 2128
	.field	12,16			; _t16l[134] @ 2144
	.field	12,16			; _t16l[135] @ 2160
	.field	13,16			; _t16l[136] @ 2176
	.field	13,16			; _t16l[137] @ 2192
	.field	13,16			; _t16l[138] @ 2208
	.field	13,16			; _t16l[139] @ 2224
	.field	14,16			; _t16l[140] @ 2240
	.field	14,16			; _t16l[141] @ 2256
	.field	14,16			; _t16l[142] @ 2272
	.field	10,16			; _t16l[143] @ 2288
	.field	11,16			; _t16l[144] @ 2304
	.field	10,16			; _t16l[145] @ 2320
	.field	10,16			; _t16l[146] @ 2336
	.field	11,16			; _t16l[147] @ 2352
	.field	11,16			; _t16l[148] @ 2368
	.field	12,16			; _t16l[149] @ 2384
	.field	12,16			; _t16l[150] @ 2400
	.field	13,16			; _t16l[151] @ 2416
	.field	13,16			; _t16l[152] @ 2432
	.field	13,16			; _t16l[153] @ 2448
	.field	13,16			; _t16l[154] @ 2464
	.field	14,16			; _t16l[155] @ 2480
	.field	13,16			; _t16l[156] @ 2496
	.field	14,16			; _t16l[157] @ 2512
	.field	13,16			; _t16l[158] @ 2528
	.field	11,16			; _t16l[159] @ 2544
	.field	11,16			; _t16l[160] @ 2560
	.field	11,16			; _t16l[161] @ 2576
	.field	10,16			; _t16l[162] @ 2592
	.field	11,16			; _t16l[163] @ 2608
	.field	12,16			; _t16l[164] @ 2624
	.field	12,16			; _t16l[165] @ 2640
	.field	12,16			; _t16l[166] @ 2656
	.field	12,16			; _t16l[167] @ 2672
	.field	13,16			; _t16l[168] @ 2688
	.field	14,16			; _t16l[169] @ 2704
	.field	14,16			; _t16l[170] @ 2720
	.field	14,16			; _t16l[171] @ 2736
	.field	15,16			; _t16l[172] @ 2752
	.field	15,16			; _t16l[173] @ 2768
	.field	14,16			; _t16l[174] @ 2784
	.field	10,16			; _t16l[175] @ 2800
	.field	12,16			; _t16l[176] @ 2816
	.field	11,16			; _t16l[177] @ 2832
	.field	11,16			; _t16l[178] @ 2848
	.field	11,16			; _t16l[179] @ 2864
	.field	12,16			; _t16l[180] @ 2880
	.field	12,16			; _t16l[181] @ 2896
	.field	13,16			; _t16l[182] @ 2912
	.field	14,16			; _t16l[183] @ 2928
	.field	14,16			; _t16l[184] @ 2944
	.field	14,16			; _t16l[185] @ 2960
	.field	14,16			; _t16l[186] @ 2976
	.field	14,16			; _t16l[187] @ 2992
	.field	14,16			; _t16l[188] @ 3008
	.field	13,16			; _t16l[189] @ 3024
	.field	14,16			; _t16l[190] @ 3040
	.field	11,16			; _t16l[191] @ 3056
	.field	12,16			; _t16l[192] @ 3072
	.field	12,16			; _t16l[193] @ 3088
	.field	12,16			; _t16l[194] @ 3104
	.field	12,16			; _t16l[195] @ 3120
	.field	12,16			; _t16l[196] @ 3136
	.field	13,16			; _t16l[197] @ 3152
	.field	13,16			; _t16l[198] @ 3168
	.field	13,16			; _t16l[199] @ 3184
	.field	13,16			; _t16l[200] @ 3200
	.field	15,16			; _t16l[201] @ 3216
	.field	14,16			; _t16l[202] @ 3232
	.field	14,16			; _t16l[203] @ 3248
	.field	14,16			; _t16l[204] @ 3264
	.field	14,16			; _t16l[205] @ 3280
	.field	16,16			; _t16l[206] @ 3296
	.field	11,16			; _t16l[207] @ 3312
	.field	14,16			; _t16l[208] @ 3328
	.field	12,16			; _t16l[209] @ 3344
	.field	12,16			; _t16l[210] @ 3360
	.field	12,16			; _t16l[211] @ 3376
	.field	13,16			; _t16l[212] @ 3392
	.field	13,16			; _t16l[213] @ 3408
	.field	14,16			; _t16l[214] @ 3424
	.field	14,16			; _t16l[215] @ 3440
	.field	14,16			; _t16l[216] @ 3456
	.field	16,16			; _t16l[217] @ 3472
	.field	15,16			; _t16l[218] @ 3488
	.field	15,16			; _t16l[219] @ 3504
	.field	15,16			; _t16l[220] @ 3520
	.field	17,16			; _t16l[221] @ 3536
	.field	15,16			; _t16l[222] @ 3552
	.field	11,16			; _t16l[223] @ 3568
	.field	13,16			; _t16l[224] @ 3584
	.field	13,16			; _t16l[225] @ 3600
	.field	11,16			; _t16l[226] @ 3616
	.field	12,16			; _t16l[227] @ 3632
	.field	14,16			; _t16l[228] @ 3648
	.field	14,16			; _t16l[229] @ 3664
	.field	13,16			; _t16l[230] @ 3680
	.field	14,16			; _t16l[231] @ 3696
	.field	14,16			; _t16l[232] @ 3712
	.field	15,16			; _t16l[233] @ 3728
	.field	16,16			; _t16l[234] @ 3744
	.field	15,16			; _t16l[235] @ 3760
	.field	17,16			; _t16l[236] @ 3776
	.field	15,16			; _t16l[237] @ 3792
	.field	14,16			; _t16l[238] @ 3808
	.field	11,16			; _t16l[239] @ 3824
	.field	9,16			; _t16l[240] @ 3840
	.field	8,16			; _t16l[241] @ 3856
	.field	8,16			; _t16l[242] @ 3872
	.field	9,16			; _t16l[243] @ 3888
	.field	9,16			; _t16l[244] @ 3904
	.field	10,16			; _t16l[245] @ 3920
	.field	10,16			; _t16l[246] @ 3936
	.field	10,16			; _t16l[247] @ 3952
	.field	11,16			; _t16l[248] @ 3968
	.field	11,16			; _t16l[249] @ 3984
	.field	11,16			; _t16l[250] @ 4000
	.field	11,16			; _t16l[251] @ 4016
	.field	11,16			; _t16l[252] @ 4032
	.field	11,16			; _t16l[253] @ 4048
	.field	11,16			; _t16l[254] @ 4064
	.field	8,16			; _t16l[255] @ 4080

$C$DW$72	.dwtag  DW_TAG_variable, DW_AT_name("t16l")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_t16l")
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$189)
	.dwattr $C$DW$72, DW_AT_location[DW_OP_addr _t16l]
	.sect	".const:_t24l"
	.clink
	.align	1
_t24l:
	.field	4,16			; _t24l[0] @ 0
	.field	4,16			; _t24l[1] @ 16
	.field	6,16			; _t24l[2] @ 32
	.field	7,16			; _t24l[3] @ 48
	.field	8,16			; _t24l[4] @ 64
	.field	9,16			; _t24l[5] @ 80
	.field	9,16			; _t24l[6] @ 96
	.field	10,16			; _t24l[7] @ 112
	.field	10,16			; _t24l[8] @ 128
	.field	11,16			; _t24l[9] @ 144
	.field	11,16			; _t24l[10] @ 160
	.field	11,16			; _t24l[11] @ 176
	.field	11,16			; _t24l[12] @ 192
	.field	11,16			; _t24l[13] @ 208
	.field	12,16			; _t24l[14] @ 224
	.field	9,16			; _t24l[15] @ 240
	.field	4,16			; _t24l[16] @ 256
	.field	4,16			; _t24l[17] @ 272
	.field	5,16			; _t24l[18] @ 288
	.field	6,16			; _t24l[19] @ 304
	.field	7,16			; _t24l[20] @ 320
	.field	8,16			; _t24l[21] @ 336
	.field	8,16			; _t24l[22] @ 352
	.field	9,16			; _t24l[23] @ 368
	.field	9,16			; _t24l[24] @ 384
	.field	9,16			; _t24l[25] @ 400
	.field	10,16			; _t24l[26] @ 416
	.field	10,16			; _t24l[27] @ 432
	.field	10,16			; _t24l[28] @ 448
	.field	10,16			; _t24l[29] @ 464
	.field	10,16			; _t24l[30] @ 480
	.field	8,16			; _t24l[31] @ 496
	.field	6,16			; _t24l[32] @ 512
	.field	5,16			; _t24l[33] @ 528
	.field	6,16			; _t24l[34] @ 544
	.field	7,16			; _t24l[35] @ 560
	.field	7,16			; _t24l[36] @ 576
	.field	8,16			; _t24l[37] @ 592
	.field	8,16			; _t24l[38] @ 608
	.field	9,16			; _t24l[39] @ 624
	.field	9,16			; _t24l[40] @ 640
	.field	9,16			; _t24l[41] @ 656
	.field	9,16			; _t24l[42] @ 672
	.field	10,16			; _t24l[43] @ 688
	.field	10,16			; _t24l[44] @ 704
	.field	10,16			; _t24l[45] @ 720
	.field	11,16			; _t24l[46] @ 736
	.field	7,16			; _t24l[47] @ 752
	.field	7,16			; _t24l[48] @ 768
	.field	6,16			; _t24l[49] @ 784
	.field	7,16			; _t24l[50] @ 800
	.field	7,16			; _t24l[51] @ 816
	.field	8,16			; _t24l[52] @ 832
	.field	8,16			; _t24l[53] @ 848
	.field	8,16			; _t24l[54] @ 864
	.field	9,16			; _t24l[55] @ 880
	.field	9,16			; _t24l[56] @ 896
	.field	9,16			; _t24l[57] @ 912
	.field	9,16			; _t24l[58] @ 928
	.field	10,16			; _t24l[59] @ 944
	.field	10,16			; _t24l[60] @ 960
	.field	10,16			; _t24l[61] @ 976
	.field	10,16			; _t24l[62] @ 992
	.field	7,16			; _t24l[63] @ 1008
	.field	8,16			; _t24l[64] @ 1024
	.field	7,16			; _t24l[65] @ 1040
	.field	7,16			; _t24l[66] @ 1056
	.field	8,16			; _t24l[67] @ 1072
	.field	8,16			; _t24l[68] @ 1088
	.field	8,16			; _t24l[69] @ 1104
	.field	8,16			; _t24l[70] @ 1120
	.field	9,16			; _t24l[71] @ 1136
	.field	9,16			; _t24l[72] @ 1152
	.field	9,16			; _t24l[73] @ 1168
	.field	10,16			; _t24l[74] @ 1184
	.field	10,16			; _t24l[75] @ 1200
	.field	10,16			; _t24l[76] @ 1216
	.field	10,16			; _t24l[77] @ 1232
	.field	11,16			; _t24l[78] @ 1248
	.field	7,16			; _t24l[79] @ 1264
	.field	9,16			; _t24l[80] @ 1280
	.field	7,16			; _t24l[81] @ 1296
	.field	8,16			; _t24l[82] @ 1312
	.field	8,16			; _t24l[83] @ 1328
	.field	8,16			; _t24l[84] @ 1344
	.field	8,16			; _t24l[85] @ 1360
	.field	9,16			; _t24l[86] @ 1376
	.field	9,16			; _t24l[87] @ 1392
	.field	9,16			; _t24l[88] @ 1408
	.field	9,16			; _t24l[89] @ 1424
	.field	10,16			; _t24l[90] @ 1440
	.field	10,16			; _t24l[91] @ 1456
	.field	10,16			; _t24l[92] @ 1472
	.field	10,16			; _t24l[93] @ 1488
	.field	10,16			; _t24l[94] @ 1504
	.field	7,16			; _t24l[95] @ 1520
	.field	9,16			; _t24l[96] @ 1536
	.field	8,16			; _t24l[97] @ 1552
	.field	8,16			; _t24l[98] @ 1568
	.field	8,16			; _t24l[99] @ 1584
	.field	8,16			; _t24l[100] @ 1600
	.field	9,16			; _t24l[101] @ 1616
	.field	9,16			; _t24l[102] @ 1632
	.field	9,16			; _t24l[103] @ 1648
	.field	9,16			; _t24l[104] @ 1664
	.field	10,16			; _t24l[105] @ 1680
	.field	10,16			; _t24l[106] @ 1696
	.field	10,16			; _t24l[107] @ 1712
	.field	10,16			; _t24l[108] @ 1728
	.field	10,16			; _t24l[109] @ 1744
	.field	11,16			; _t24l[110] @ 1760
	.field	7,16			; _t24l[111] @ 1776
	.field	10,16			; _t24l[112] @ 1792
	.field	8,16			; _t24l[113] @ 1808
	.field	8,16			; _t24l[114] @ 1824
	.field	8,16			; _t24l[115] @ 1840
	.field	9,16			; _t24l[116] @ 1856
	.field	9,16			; _t24l[117] @ 1872
	.field	9,16			; _t24l[118] @ 1888
	.field	9,16			; _t24l[119] @ 1904
	.field	10,16			; _t24l[120] @ 1920
	.field	10,16			; _t24l[121] @ 1936
	.field	10,16			; _t24l[122] @ 1952
	.field	10,16			; _t24l[123] @ 1968
	.field	10,16			; _t24l[124] @ 1984
	.field	11,16			; _t24l[125] @ 2000
	.field	11,16			; _t24l[126] @ 2016
	.field	8,16			; _t24l[127] @ 2032
	.field	10,16			; _t24l[128] @ 2048
	.field	9,16			; _t24l[129] @ 2064
	.field	9,16			; _t24l[130] @ 2080
	.field	9,16			; _t24l[131] @ 2096
	.field	9,16			; _t24l[132] @ 2112
	.field	9,16			; _t24l[133] @ 2128
	.field	9,16			; _t24l[134] @ 2144
	.field	9,16			; _t24l[135] @ 2160
	.field	9,16			; _t24l[136] @ 2176
	.field	10,16			; _t24l[137] @ 2192
	.field	10,16			; _t24l[138] @ 2208
	.field	10,16			; _t24l[139] @ 2224
	.field	10,16			; _t24l[140] @ 2240
	.field	11,16			; _t24l[141] @ 2256
	.field	11,16			; _t24l[142] @ 2272
	.field	8,16			; _t24l[143] @ 2288
	.field	10,16			; _t24l[144] @ 2304
	.field	9,16			; _t24l[145] @ 2320
	.field	9,16			; _t24l[146] @ 2336
	.field	9,16			; _t24l[147] @ 2352
	.field	9,16			; _t24l[148] @ 2368
	.field	9,16			; _t24l[149] @ 2384
	.field	9,16			; _t24l[150] @ 2400
	.field	10,16			; _t24l[151] @ 2416
	.field	10,16			; _t24l[152] @ 2432
	.field	10,16			; _t24l[153] @ 2448
	.field	10,16			; _t24l[154] @ 2464
	.field	10,16			; _t24l[155] @ 2480
	.field	11,16			; _t24l[156] @ 2496
	.field	11,16			; _t24l[157] @ 2512
	.field	11,16			; _t24l[158] @ 2528
	.field	8,16			; _t24l[159] @ 2544
	.field	11,16			; _t24l[160] @ 2560
	.field	9,16			; _t24l[161] @ 2576
	.field	9,16			; _t24l[162] @ 2592
	.field	9,16			; _t24l[163] @ 2608
	.field	9,16			; _t24l[164] @ 2624
	.field	10,16			; _t24l[165] @ 2640
	.field	10,16			; _t24l[166] @ 2656
	.field	10,16			; _t24l[167] @ 2672
	.field	10,16			; _t24l[168] @ 2688
	.field	10,16			; _t24l[169] @ 2704
	.field	10,16			; _t24l[170] @ 2720
	.field	11,16			; _t24l[171] @ 2736
	.field	11,16			; _t24l[172] @ 2752
	.field	11,16			; _t24l[173] @ 2768
	.field	11,16			; _t24l[174] @ 2784
	.field	8,16			; _t24l[175] @ 2800
	.field	11,16			; _t24l[176] @ 2816
	.field	10,16			; _t24l[177] @ 2832
	.field	9,16			; _t24l[178] @ 2848
	.field	9,16			; _t24l[179] @ 2864
	.field	9,16			; _t24l[180] @ 2880
	.field	10,16			; _t24l[181] @ 2896
	.field	10,16			; _t24l[182] @ 2912
	.field	10,16			; _t24l[183] @ 2928
	.field	10,16			; _t24l[184] @ 2944
	.field	10,16			; _t24l[185] @ 2960
	.field	10,16			; _t24l[186] @ 2976
	.field	11,16			; _t24l[187] @ 2992
	.field	11,16			; _t24l[188] @ 3008
	.field	11,16			; _t24l[189] @ 3024
	.field	11,16			; _t24l[190] @ 3040
	.field	8,16			; _t24l[191] @ 3056
	.field	11,16			; _t24l[192] @ 3072
	.field	10,16			; _t24l[193] @ 3088
	.field	10,16			; _t24l[194] @ 3104
	.field	10,16			; _t24l[195] @ 3120
	.field	10,16			; _t24l[196] @ 3136
	.field	10,16			; _t24l[197] @ 3152
	.field	10,16			; _t24l[198] @ 3168
	.field	10,16			; _t24l[199] @ 3184
	.field	10,16			; _t24l[200] @ 3200
	.field	10,16			; _t24l[201] @ 3216
	.field	11,16			; _t24l[202] @ 3232
	.field	11,16			; _t24l[203] @ 3248
	.field	11,16			; _t24l[204] @ 3264
	.field	11,16			; _t24l[205] @ 3280
	.field	11,16			; _t24l[206] @ 3296
	.field	8,16			; _t24l[207] @ 3312
	.field	11,16			; _t24l[208] @ 3328
	.field	10,16			; _t24l[209] @ 3344
	.field	10,16			; _t24l[210] @ 3360
	.field	10,16			; _t24l[211] @ 3376
	.field	10,16			; _t24l[212] @ 3392
	.field	10,16			; _t24l[213] @ 3408
	.field	10,16			; _t24l[214] @ 3424
	.field	10,16			; _t24l[215] @ 3440
	.field	11,16			; _t24l[216] @ 3456
	.field	11,16			; _t24l[217] @ 3472
	.field	11,16			; _t24l[218] @ 3488
	.field	11,16			; _t24l[219] @ 3504
	.field	11,16			; _t24l[220] @ 3520
	.field	11,16			; _t24l[221] @ 3536
	.field	11,16			; _t24l[222] @ 3552
	.field	8,16			; _t24l[223] @ 3568
	.field	12,16			; _t24l[224] @ 3584
	.field	10,16			; _t24l[225] @ 3600
	.field	10,16			; _t24l[226] @ 3616
	.field	10,16			; _t24l[227] @ 3632
	.field	10,16			; _t24l[228] @ 3648
	.field	10,16			; _t24l[229] @ 3664
	.field	10,16			; _t24l[230] @ 3680
	.field	11,16			; _t24l[231] @ 3696
	.field	11,16			; _t24l[232] @ 3712
	.field	11,16			; _t24l[233] @ 3728
	.field	11,16			; _t24l[234] @ 3744
	.field	11,16			; _t24l[235] @ 3760
	.field	11,16			; _t24l[236] @ 3776
	.field	11,16			; _t24l[237] @ 3792
	.field	11,16			; _t24l[238] @ 3808
	.field	8,16			; _t24l[239] @ 3824
	.field	8,16			; _t24l[240] @ 3840
	.field	7,16			; _t24l[241] @ 3856
	.field	7,16			; _t24l[242] @ 3872
	.field	7,16			; _t24l[243] @ 3888
	.field	7,16			; _t24l[244] @ 3904
	.field	7,16			; _t24l[245] @ 3920
	.field	7,16			; _t24l[246] @ 3936
	.field	7,16			; _t24l[247] @ 3952
	.field	7,16			; _t24l[248] @ 3968
	.field	7,16			; _t24l[249] @ 3984
	.field	7,16			; _t24l[250] @ 4000
	.field	8,16			; _t24l[251] @ 4016
	.field	8,16			; _t24l[252] @ 4032
	.field	8,16			; _t24l[253] @ 4048
	.field	8,16			; _t24l[254] @ 4064
	.field	4,16			; _t24l[255] @ 4080

$C$DW$73	.dwtag  DW_TAG_variable, DW_AT_name("t24l")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_t24l")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$189)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_addr _t24l]
	.sect	".const:_t32l"
	.clink
	.align	1
_t32l:
	.field	1,16			; _t32l[0] @ 0
	.field	4,16			; _t32l[1] @ 16
	.field	4,16			; _t32l[2] @ 32
	.field	5,16			; _t32l[3] @ 48
	.field	4,16			; _t32l[4] @ 64
	.field	6,16			; _t32l[5] @ 80
	.field	5,16			; _t32l[6] @ 96
	.field	6,16			; _t32l[7] @ 112
	.field	4,16			; _t32l[8] @ 128
	.field	5,16			; _t32l[9] @ 144
	.field	5,16			; _t32l[10] @ 160
	.field	6,16			; _t32l[11] @ 176
	.field	5,16			; _t32l[12] @ 192
	.field	6,16			; _t32l[13] @ 208
	.field	6,16			; _t32l[14] @ 224
	.field	6,16			; _t32l[15] @ 240

$C$DW$74	.dwtag  DW_TAG_variable, DW_AT_name("t32l")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_t32l")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$186)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_addr _t32l]
	.sect	".const:_t33l"
	.clink
	.align	1
_t33l:
	.field	4,16			; _t33l[0] @ 0
	.field	4,16			; _t33l[1] @ 16
	.field	4,16			; _t33l[2] @ 32
	.field	4,16			; _t33l[3] @ 48
	.field	4,16			; _t33l[4] @ 64
	.field	4,16			; _t33l[5] @ 80
	.field	4,16			; _t33l[6] @ 96
	.field	4,16			; _t33l[7] @ 112
	.field	4,16			; _t33l[8] @ 128
	.field	4,16			; _t33l[9] @ 144
	.field	4,16			; _t33l[10] @ 160
	.field	4,16			; _t33l[11] @ 176
	.field	4,16			; _t33l[12] @ 192
	.field	4,16			; _t33l[13] @ 208
	.field	4,16			; _t33l[14] @ 224
	.field	4,16			; _t33l[15] @ 240

$C$DW$75	.dwtag  DW_TAG_variable, DW_AT_name("t33l")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_t33l")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$186)
	.dwattr $C$DW$75, DW_AT_location[DW_OP_addr _t33l]
	.global	_shine_huffman_table
	.sect	".const:_shine_huffman_table"
	.clink
	.align	2
_shine_huffman_table:
	.field	0,32			; _shine_huffman_table[0]._xlen @ 0
	.field	0,32			; _shine_huffman_table[0]._ylen @ 32
	.field	0,32			; _shine_huffman_table[0]._linbits @ 64
	.field	0,32			; _shine_huffman_table[0]._linmax @ 96
	.field	0,32			; _shine_huffman_table[0]._table @ 128
	.field	0,32			; _shine_huffman_table[0]._hlen @ 160
	.field	2,32			; _shine_huffman_table[1]._xlen @ 192
	.field	2,32			; _shine_huffman_table[1]._ylen @ 224
	.field	0,32			; _shine_huffman_table[1]._linbits @ 256
	.field	0,32			; _shine_huffman_table[1]._linmax @ 288
	.field	_t1HB,32		; _shine_huffman_table[1]._table @ 320
	.field	_t1l,32		; _shine_huffman_table[1]._hlen @ 352
	.field	3,32			; _shine_huffman_table[2]._xlen @ 384
	.field	3,32			; _shine_huffman_table[2]._ylen @ 416
	.field	0,32			; _shine_huffman_table[2]._linbits @ 448
	.field	0,32			; _shine_huffman_table[2]._linmax @ 480
	.field	_t2HB,32		; _shine_huffman_table[2]._table @ 512
	.field	_t2l,32		; _shine_huffman_table[2]._hlen @ 544
	.field	3,32			; _shine_huffman_table[3]._xlen @ 576
	.field	3,32			; _shine_huffman_table[3]._ylen @ 608
	.field	0,32			; _shine_huffman_table[3]._linbits @ 640
	.field	0,32			; _shine_huffman_table[3]._linmax @ 672
	.field	_t3HB,32		; _shine_huffman_table[3]._table @ 704
	.field	_t3l,32		; _shine_huffman_table[3]._hlen @ 736
	.field	0,32			; _shine_huffman_table[4]._xlen @ 768
	.field	0,32			; _shine_huffman_table[4]._ylen @ 800
	.field	0,32			; _shine_huffman_table[4]._linbits @ 832
	.field	0,32			; _shine_huffman_table[4]._linmax @ 864
	.field	0,32			; _shine_huffman_table[4]._table @ 896
	.field	0,32			; _shine_huffman_table[4]._hlen @ 928
	.field	4,32			; _shine_huffman_table[5]._xlen @ 960
	.field	4,32			; _shine_huffman_table[5]._ylen @ 992
	.field	0,32			; _shine_huffman_table[5]._linbits @ 1024
	.field	0,32			; _shine_huffman_table[5]._linmax @ 1056
	.field	_t5HB,32		; _shine_huffman_table[5]._table @ 1088
	.field	_t5l,32		; _shine_huffman_table[5]._hlen @ 1120
	.field	4,32			; _shine_huffman_table[6]._xlen @ 1152
	.field	4,32			; _shine_huffman_table[6]._ylen @ 1184
	.field	0,32			; _shine_huffman_table[6]._linbits @ 1216
	.field	0,32			; _shine_huffman_table[6]._linmax @ 1248
	.field	_t6HB,32		; _shine_huffman_table[6]._table @ 1280
	.field	_t6l,32		; _shine_huffman_table[6]._hlen @ 1312
	.field	6,32			; _shine_huffman_table[7]._xlen @ 1344
	.field	6,32			; _shine_huffman_table[7]._ylen @ 1376
	.field	0,32			; _shine_huffman_table[7]._linbits @ 1408
	.field	0,32			; _shine_huffman_table[7]._linmax @ 1440
	.field	_t7HB,32		; _shine_huffman_table[7]._table @ 1472
	.field	_t7l,32		; _shine_huffman_table[7]._hlen @ 1504
	.field	6,32			; _shine_huffman_table[8]._xlen @ 1536
	.field	6,32			; _shine_huffman_table[8]._ylen @ 1568
	.field	0,32			; _shine_huffman_table[8]._linbits @ 1600
	.field	0,32			; _shine_huffman_table[8]._linmax @ 1632
	.field	_t8HB,32		; _shine_huffman_table[8]._table @ 1664
	.field	_t8l,32		; _shine_huffman_table[8]._hlen @ 1696
	.field	6,32			; _shine_huffman_table[9]._xlen @ 1728
	.field	6,32			; _shine_huffman_table[9]._ylen @ 1760
	.field	0,32			; _shine_huffman_table[9]._linbits @ 1792
	.field	0,32			; _shine_huffman_table[9]._linmax @ 1824
	.field	_t9HB,32		; _shine_huffman_table[9]._table @ 1856
	.field	_t9l,32		; _shine_huffman_table[9]._hlen @ 1888
	.field	8,32			; _shine_huffman_table[10]._xlen @ 1920
	.field	8,32			; _shine_huffman_table[10]._ylen @ 1952
	.field	0,32			; _shine_huffman_table[10]._linbits @ 1984
	.field	0,32			; _shine_huffman_table[10]._linmax @ 2016
	.field	_t10HB,32		; _shine_huffman_table[10]._table @ 2048
	.field	_t10l,32		; _shine_huffman_table[10]._hlen @ 2080
	.field	8,32			; _shine_huffman_table[11]._xlen @ 2112
	.field	8,32			; _shine_huffman_table[11]._ylen @ 2144
	.field	0,32			; _shine_huffman_table[11]._linbits @ 2176
	.field	0,32			; _shine_huffman_table[11]._linmax @ 2208
	.field	_t11HB,32		; _shine_huffman_table[11]._table @ 2240
	.field	_t11l,32		; _shine_huffman_table[11]._hlen @ 2272
	.field	8,32			; _shine_huffman_table[12]._xlen @ 2304
	.field	8,32			; _shine_huffman_table[12]._ylen @ 2336
	.field	0,32			; _shine_huffman_table[12]._linbits @ 2368
	.field	0,32			; _shine_huffman_table[12]._linmax @ 2400
	.field	_t12HB,32		; _shine_huffman_table[12]._table @ 2432
	.field	_t12l,32		; _shine_huffman_table[12]._hlen @ 2464
	.field	16,32			; _shine_huffman_table[13]._xlen @ 2496
	.field	16,32			; _shine_huffman_table[13]._ylen @ 2528
	.field	0,32			; _shine_huffman_table[13]._linbits @ 2560
	.field	0,32			; _shine_huffman_table[13]._linmax @ 2592
	.field	_t13HB,32		; _shine_huffman_table[13]._table @ 2624
	.field	_t13l,32		; _shine_huffman_table[13]._hlen @ 2656
	.field	0,32			; _shine_huffman_table[14]._xlen @ 2688
	.field	0,32			; _shine_huffman_table[14]._ylen @ 2720
	.field	0,32			; _shine_huffman_table[14]._linbits @ 2752
	.field	0,32			; _shine_huffman_table[14]._linmax @ 2784
	.field	0,32			; _shine_huffman_table[14]._table @ 2816
	.field	0,32			; _shine_huffman_table[14]._hlen @ 2848
	.field	16,32			; _shine_huffman_table[15]._xlen @ 2880
	.field	16,32			; _shine_huffman_table[15]._ylen @ 2912
	.field	0,32			; _shine_huffman_table[15]._linbits @ 2944
	.field	0,32			; _shine_huffman_table[15]._linmax @ 2976
	.field	_t15HB,32		; _shine_huffman_table[15]._table @ 3008
	.field	_t15l,32		; _shine_huffman_table[15]._hlen @ 3040
	.field	16,32			; _shine_huffman_table[16]._xlen @ 3072
	.field	16,32			; _shine_huffman_table[16]._ylen @ 3104
	.field	1,32			; _shine_huffman_table[16]._linbits @ 3136
	.field	1,32			; _shine_huffman_table[16]._linmax @ 3168
	.field	_t16HB,32		; _shine_huffman_table[16]._table @ 3200
	.field	_t16l,32		; _shine_huffman_table[16]._hlen @ 3232
	.field	16,32			; _shine_huffman_table[17]._xlen @ 3264
	.field	16,32			; _shine_huffman_table[17]._ylen @ 3296
	.field	2,32			; _shine_huffman_table[17]._linbits @ 3328
	.field	3,32			; _shine_huffman_table[17]._linmax @ 3360
	.field	_t16HB,32		; _shine_huffman_table[17]._table @ 3392
	.field	_t16l,32		; _shine_huffman_table[17]._hlen @ 3424
	.field	16,32			; _shine_huffman_table[18]._xlen @ 3456
	.field	16,32			; _shine_huffman_table[18]._ylen @ 3488
	.field	3,32			; _shine_huffman_table[18]._linbits @ 3520
	.field	7,32			; _shine_huffman_table[18]._linmax @ 3552
	.field	_t16HB,32		; _shine_huffman_table[18]._table @ 3584
	.field	_t16l,32		; _shine_huffman_table[18]._hlen @ 3616
	.field	16,32			; _shine_huffman_table[19]._xlen @ 3648
	.field	16,32			; _shine_huffman_table[19]._ylen @ 3680
	.field	4,32			; _shine_huffman_table[19]._linbits @ 3712
	.field	15,32			; _shine_huffman_table[19]._linmax @ 3744
	.field	_t16HB,32		; _shine_huffman_table[19]._table @ 3776
	.field	_t16l,32		; _shine_huffman_table[19]._hlen @ 3808
	.field	16,32			; _shine_huffman_table[20]._xlen @ 3840
	.field	16,32			; _shine_huffman_table[20]._ylen @ 3872
	.field	6,32			; _shine_huffman_table[20]._linbits @ 3904
	.field	63,32			; _shine_huffman_table[20]._linmax @ 3936
	.field	_t16HB,32		; _shine_huffman_table[20]._table @ 3968
	.field	_t16l,32		; _shine_huffman_table[20]._hlen @ 4000
	.field	16,32			; _shine_huffman_table[21]._xlen @ 4032
	.field	16,32			; _shine_huffman_table[21]._ylen @ 4064
	.field	8,32			; _shine_huffman_table[21]._linbits @ 4096
	.field	255,32			; _shine_huffman_table[21]._linmax @ 4128
	.field	_t16HB,32		; _shine_huffman_table[21]._table @ 4160
	.field	_t16l,32		; _shine_huffman_table[21]._hlen @ 4192
	.field	16,32			; _shine_huffman_table[22]._xlen @ 4224
	.field	16,32			; _shine_huffman_table[22]._ylen @ 4256
	.field	10,32			; _shine_huffman_table[22]._linbits @ 4288
	.field	1023,32			; _shine_huffman_table[22]._linmax @ 4320
	.field	_t16HB,32		; _shine_huffman_table[22]._table @ 4352
	.field	_t16l,32		; _shine_huffman_table[22]._hlen @ 4384
	.field	16,32			; _shine_huffman_table[23]._xlen @ 4416
	.field	16,32			; _shine_huffman_table[23]._ylen @ 4448
	.field	13,32			; _shine_huffman_table[23]._linbits @ 4480
	.field	8191,32			; _shine_huffman_table[23]._linmax @ 4512
	.field	_t16HB,32		; _shine_huffman_table[23]._table @ 4544
	.field	_t16l,32		; _shine_huffman_table[23]._hlen @ 4576
	.field	16,32			; _shine_huffman_table[24]._xlen @ 4608
	.field	16,32			; _shine_huffman_table[24]._ylen @ 4640
	.field	4,32			; _shine_huffman_table[24]._linbits @ 4672
	.field	15,32			; _shine_huffman_table[24]._linmax @ 4704
	.field	_t24HB,32		; _shine_huffman_table[24]._table @ 4736
	.field	_t24l,32		; _shine_huffman_table[24]._hlen @ 4768
	.field	16,32			; _shine_huffman_table[25]._xlen @ 4800
	.field	16,32			; _shine_huffman_table[25]._ylen @ 4832
	.field	5,32			; _shine_huffman_table[25]._linbits @ 4864
	.field	31,32			; _shine_huffman_table[25]._linmax @ 4896
	.field	_t24HB,32		; _shine_huffman_table[25]._table @ 4928
	.field	_t24l,32		; _shine_huffman_table[25]._hlen @ 4960
	.field	16,32			; _shine_huffman_table[26]._xlen @ 4992
	.field	16,32			; _shine_huffman_table[26]._ylen @ 5024
	.field	6,32			; _shine_huffman_table[26]._linbits @ 5056
	.field	63,32			; _shine_huffman_table[26]._linmax @ 5088
	.field	_t24HB,32		; _shine_huffman_table[26]._table @ 5120
	.field	_t24l,32		; _shine_huffman_table[26]._hlen @ 5152
	.field	16,32			; _shine_huffman_table[27]._xlen @ 5184
	.field	16,32			; _shine_huffman_table[27]._ylen @ 5216
	.field	7,32			; _shine_huffman_table[27]._linbits @ 5248
	.field	127,32			; _shine_huffman_table[27]._linmax @ 5280
	.field	_t24HB,32		; _shine_huffman_table[27]._table @ 5312
	.field	_t24l,32		; _shine_huffman_table[27]._hlen @ 5344
	.field	16,32			; _shine_huffman_table[28]._xlen @ 5376
	.field	16,32			; _shine_huffman_table[28]._ylen @ 5408
	.field	8,32			; _shine_huffman_table[28]._linbits @ 5440
	.field	255,32			; _shine_huffman_table[28]._linmax @ 5472
	.field	_t24HB,32		; _shine_huffman_table[28]._table @ 5504
	.field	_t24l,32		; _shine_huffman_table[28]._hlen @ 5536
	.field	16,32			; _shine_huffman_table[29]._xlen @ 5568
	.field	16,32			; _shine_huffman_table[29]._ylen @ 5600
	.field	9,32			; _shine_huffman_table[29]._linbits @ 5632
	.field	511,32			; _shine_huffman_table[29]._linmax @ 5664
	.field	_t24HB,32		; _shine_huffman_table[29]._table @ 5696
	.field	_t24l,32		; _shine_huffman_table[29]._hlen @ 5728
	.field	16,32			; _shine_huffman_table[30]._xlen @ 5760
	.field	16,32			; _shine_huffman_table[30]._ylen @ 5792
	.field	11,32			; _shine_huffman_table[30]._linbits @ 5824
	.field	2047,32			; _shine_huffman_table[30]._linmax @ 5856
	.field	_t24HB,32		; _shine_huffman_table[30]._table @ 5888
	.field	_t24l,32		; _shine_huffman_table[30]._hlen @ 5920
	.field	16,32			; _shine_huffman_table[31]._xlen @ 5952
	.field	16,32			; _shine_huffman_table[31]._ylen @ 5984
	.field	13,32			; _shine_huffman_table[31]._linbits @ 6016
	.field	8191,32			; _shine_huffman_table[31]._linmax @ 6048
	.field	_t24HB,32		; _shine_huffman_table[31]._table @ 6080
	.field	_t24l,32		; _shine_huffman_table[31]._hlen @ 6112
	.field	1,32			; _shine_huffman_table[32]._xlen @ 6144
	.field	16,32			; _shine_huffman_table[32]._ylen @ 6176
	.field	0,32			; _shine_huffman_table[32]._linbits @ 6208
	.field	0,32			; _shine_huffman_table[32]._linmax @ 6240
	.field	_t32HB,32		; _shine_huffman_table[32]._table @ 6272
	.field	_t32l,32		; _shine_huffman_table[32]._hlen @ 6304
	.field	1,32			; _shine_huffman_table[33]._xlen @ 6336
	.field	16,32			; _shine_huffman_table[33]._ylen @ 6368
	.field	0,32			; _shine_huffman_table[33]._linbits @ 6400
	.field	0,32			; _shine_huffman_table[33]._linmax @ 6432
	.field	_t33HB,32		; _shine_huffman_table[33]._table @ 6464
	.field	_t33l,32		; _shine_huffman_table[33]._hlen @ 6496

$C$DW$76	.dwtag  DW_TAG_variable, DW_AT_name("shine_huffman_table")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_shine_huffman_table")
	.dwattr $C$DW$76, DW_AT_location[DW_OP_addr _shine_huffman_table]
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$269)
	.dwattr $C$DW$76, DW_AT_external
	.bss	_granules_per_frame,8,0,2
$C$DW$77	.dwtag  DW_TAG_variable, DW_AT_name("granules_per_frame")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_granules_per_frame")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$243)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_addr _granules_per_frame]
	.global	_g_bitstream_data
	.bss	_g_bitstream_data,512,0,0
$C$DW$78	.dwtag  DW_TAG_variable, DW_AT_name("g_bitstream_data")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_g_bitstream_data")
	.dwattr $C$DW$78, DW_AT_location[DW_OP_addr _g_bitstream_data]
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$182)
	.dwattr $C$DW$78, DW_AT_external
	.sect	".const:_subdv_table$1"
	.clink
	.align	2
_subdv_table$1:
	.field	0,32			; _subdv_table$1[0]._region0_count @ 0
	.field	0,32			; _subdv_table$1[0]._region1_count @ 32
	.field	0,32			; _subdv_table$1[1]._region0_count @ 64
	.field	0,32			; _subdv_table$1[1]._region1_count @ 96
	.field	0,32			; _subdv_table$1[2]._region0_count @ 128
	.field	0,32			; _subdv_table$1[2]._region1_count @ 160
	.field	0,32			; _subdv_table$1[3]._region0_count @ 192
	.field	0,32			; _subdv_table$1[3]._region1_count @ 224
	.field	0,32			; _subdv_table$1[4]._region0_count @ 256
	.field	0,32			; _subdv_table$1[4]._region1_count @ 288
	.field	0,32			; _subdv_table$1[5]._region0_count @ 320
	.field	1,32			; _subdv_table$1[5]._region1_count @ 352
	.field	1,32			; _subdv_table$1[6]._region0_count @ 384
	.field	1,32			; _subdv_table$1[6]._region1_count @ 416
	.field	1,32			; _subdv_table$1[7]._region0_count @ 448
	.field	1,32			; _subdv_table$1[7]._region1_count @ 480
	.field	1,32			; _subdv_table$1[8]._region0_count @ 512
	.field	2,32			; _subdv_table$1[8]._region1_count @ 544
	.field	2,32			; _subdv_table$1[9]._region0_count @ 576
	.field	2,32			; _subdv_table$1[9]._region1_count @ 608
	.field	2,32			; _subdv_table$1[10]._region0_count @ 640
	.field	3,32			; _subdv_table$1[10]._region1_count @ 672
	.field	2,32			; _subdv_table$1[11]._region0_count @ 704
	.field	3,32			; _subdv_table$1[11]._region1_count @ 736
	.field	3,32			; _subdv_table$1[12]._region0_count @ 768
	.field	4,32			; _subdv_table$1[12]._region1_count @ 800
	.field	3,32			; _subdv_table$1[13]._region0_count @ 832
	.field	4,32			; _subdv_table$1[13]._region1_count @ 864
	.field	3,32			; _subdv_table$1[14]._region0_count @ 896
	.field	4,32			; _subdv_table$1[14]._region1_count @ 928
	.field	4,32			; _subdv_table$1[15]._region0_count @ 960
	.field	5,32			; _subdv_table$1[15]._region1_count @ 992
	.field	4,32			; _subdv_table$1[16]._region0_count @ 1024
	.field	5,32			; _subdv_table$1[16]._region1_count @ 1056
	.field	4,32			; _subdv_table$1[17]._region0_count @ 1088
	.field	6,32			; _subdv_table$1[17]._region1_count @ 1120
	.field	5,32			; _subdv_table$1[18]._region0_count @ 1152
	.field	6,32			; _subdv_table$1[18]._region1_count @ 1184
	.field	5,32			; _subdv_table$1[19]._region0_count @ 1216
	.field	6,32			; _subdv_table$1[19]._region1_count @ 1248
	.field	5,32			; _subdv_table$1[20]._region0_count @ 1280
	.field	7,32			; _subdv_table$1[20]._region1_count @ 1312
	.field	6,32			; _subdv_table$1[21]._region0_count @ 1344
	.field	7,32			; _subdv_table$1[21]._region1_count @ 1376
	.field	6,32			; _subdv_table$1[22]._region0_count @ 1408
	.field	7,32			; _subdv_table$1[22]._region1_count @ 1440

;	/home/santiago/ti/ccs1281/ccs/tools/compiler/c5500_4.4.1/bin/acp55 -@/tmp/19335hAWXyO 
	.sect	".text"

$C$DW$79	.dwtag  DW_TAG_subprogram, DW_AT_name("shine_abs_and_sign")
	.dwattr $C$DW$79, DW_AT_low_pc(_shine_abs_and_sign)
	.dwattr $C$DW$79, DW_AT_high_pc(0x00)
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_shine_abs_and_sign")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$79, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$79, DW_AT_TI_begin_line(0x495)
	.dwattr $C$DW$79, DW_AT_TI_begin_column(0x17)
	.dwattr $C$DW$79, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./mp3_encode.c",line 1174,column 1,is_stmt,address _shine_abs_and_sign

	.dwfde $C$DW$CIE, _shine_abs_and_sign
$C$DW$80	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_x")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$80, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: shine_abs_and_sign                                           *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AR0,XAR0,AR3,XAR3,SP,CARRY,M40,SATA,SATD,RDM,*
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_shine_abs_and_sign:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$81	.dwtag  DW_TAG_variable, DW_AT_name("x")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_x")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$81, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./mp3_encode.c",line 1175,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3), AC0 ; |1175| 
        BCC $C$L1,AC0 <= #0 ; |1175| 
                                        ; branchcc occurs ; |1175| 
	.dwpsn	file "./mp3_encode.c",line 1176,column 9,is_stmt
        MOV #0, AC0 ; |1176| 
        B $C$L2   ; |1176| 
                                        ; branch occurs ; |1176| 
$C$L1:    
	.dwpsn	file "./mp3_encode.c",line 1177,column 5,is_stmt
        MOV dbl(*AR3), AC0 ; |1177| 
        NEG AC0, AC0 ; |1177| 
        MOV AC0, dbl(*AR3) ; |1177| 
	.dwpsn	file "./mp3_encode.c",line 1178,column 5,is_stmt
        MOV #1, AC0 ; |1178| 
$C$L2:    
	.dwpsn	file "./mp3_encode.c",line 1179,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$82	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$82, DW_AT_low_pc(0x00)
	.dwattr $C$DW$82, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$79, DW_AT_TI_end_file("./mp3_encode.c")
	.dwattr $C$DW$79, DW_AT_TI_end_line(0x49b)
	.dwattr $C$DW$79, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$79

	.sect	".text"

$C$DW$83	.dwtag  DW_TAG_subprogram, DW_AT_name("ix_max")
	.dwattr $C$DW$83, DW_AT_low_pc(_ix_max)
	.dwattr $C$DW$83, DW_AT_high_pc(0x00)
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_ix_max")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$83, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$83, DW_AT_TI_begin_line(0x6df)
	.dwattr $C$DW$83, DW_AT_TI_begin_column(0x17)
	.dwattr $C$DW$83, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "./mp3_encode.c",line 1760,column 1,is_stmt,address _ix_max

	.dwfde $C$DW$CIE, _ix_max
$C$DW$84	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ix")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_ix")
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$84, DW_AT_location[DW_OP_reg17]
$C$DW$85	.dwtag  DW_TAG_formal_parameter, DW_AT_name("begin")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_begin")
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$85, DW_AT_location[DW_OP_reg0]
$C$DW$86	.dwtag  DW_TAG_formal_parameter, DW_AT_name("end")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("_end")
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$86, DW_AT_location[DW_OP_reg3]
;*******************************************************************************
;* FUNCTION NAME: ix_max                                                       *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,AC2,AC2,T0,AR0,XAR0,AR3,XAR3,SP,     *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_ix_max:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$87	.dwtag  DW_TAG_variable, DW_AT_name("ix")
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("_ix")
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$87, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$88	.dwtag  DW_TAG_variable, DW_AT_name("begin")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("_begin")
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$88, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$89	.dwtag  DW_TAG_variable, DW_AT_name("end")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_end")
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$89, DW_AT_location[DW_OP_bregx 0x24 4]
;* AC1   assigned to _i
$C$DW$90	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$90, DW_AT_location[DW_OP_reg3]
;* AC0   assigned to _max
$C$DW$91	.dwtag  DW_TAG_variable, DW_AT_name("max")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_max")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$91, DW_AT_location[DW_OP_reg0]
        MOV AC1, dbl(*SP(#4)) ; |1760| 
        MOV AC0, dbl(*SP(#2)) ; |1760| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./mp3_encode.c",line 1762,column 22,is_stmt
        MOV #0, AC0 ; |1762| 
	.dwpsn	file "./mp3_encode.c",line 1764,column 10,is_stmt
        MOV dbl(*SP(#2)), AC1 ; |1764| 
	.dwpsn	file "./mp3_encode.c",line 1764,column 21,is_stmt
        MOV dbl(*SP(#4)), AC2 ; |1764| 
        CMPU AC1 >= AC2, TC1 ; |1764| 
        BCC $C$L5,TC1 ; |1764| 
                                        ; branchcc occurs ; |1764| 
$C$L3:    
$C$DW$L$_ix_max$2$B:
	.dwpsn	file "./mp3_encode.c",line 1765,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV AC1, T0 ; |1765| 
        SFTL T0, #1 ; |1765| 
        MOV dbl(*AR3(T0)), AC2 ; |1765| 
        CMP AC0 >= AC2, TC1 ; |1765| 
        BCC $C$L4,TC1 ; |1765| 
                                        ; branchcc occurs ; |1765| 
$C$DW$L$_ix_max$2$E:
$C$DW$L$_ix_max$3$B:
	.dwpsn	file "./mp3_encode.c",line 1766,column 13,is_stmt
        MOV AC1, T0 ; |1766| 
        SFTL T0, #1 ; |1766| 
        MOV dbl(*AR3(T0)), AC0 ; |1766| 
$C$DW$L$_ix_max$3$E:
$C$L4:    
$C$DW$L$_ix_max$4$B:
	.dwpsn	file "./mp3_encode.c",line 1764,column 30,is_stmt
        ADD #1, AC1 ; |1764| 
	.dwpsn	file "./mp3_encode.c",line 1764,column 21,is_stmt
        MOV dbl(*SP(#4)), AC2 ; |1764| 
        CMPU AC1 < AC2, TC1 ; |1764| 
        BCC $C$L3,TC1 ; |1764| 
                                        ; branchcc occurs ; |1764| 
$C$DW$L$_ix_max$4$E:
$C$L5:    
	.dwpsn	file "./mp3_encode.c",line 1767,column 5,is_stmt
	.dwpsn	file "./mp3_encode.c",line 1768,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$92	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$92, DW_AT_low_pc(0x00)
	.dwattr $C$DW$92, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$93	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$93, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L3:1:1738864582")
	.dwattr $C$DW$93, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$93, DW_AT_TI_begin_line(0x6e4)
	.dwattr $C$DW$93, DW_AT_TI_end_line(0x6e6)
$C$DW$94	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$94, DW_AT_low_pc($C$DW$L$_ix_max$2$B)
	.dwattr $C$DW$94, DW_AT_high_pc($C$DW$L$_ix_max$2$E)
$C$DW$95	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$95, DW_AT_low_pc($C$DW$L$_ix_max$3$B)
	.dwattr $C$DW$95, DW_AT_high_pc($C$DW$L$_ix_max$3$E)
$C$DW$96	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$96, DW_AT_low_pc($C$DW$L$_ix_max$4$B)
	.dwattr $C$DW$96, DW_AT_high_pc($C$DW$L$_ix_max$4$E)
	.dwendtag $C$DW$93

	.dwattr $C$DW$83, DW_AT_TI_end_file("./mp3_encode.c")
	.dwattr $C$DW$83, DW_AT_TI_end_line(0x6e8)
	.dwattr $C$DW$83, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$83

	.sect	".text"
	.global	_shine_set_config_mpeg_defaults

$C$DW$97	.dwtag  DW_TAG_subprogram, DW_AT_name("shine_set_config_mpeg_defaults")
	.dwattr $C$DW$97, DW_AT_low_pc(_shine_set_config_mpeg_defaults)
	.dwattr $C$DW$97, DW_AT_high_pc(0x00)
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("_shine_set_config_mpeg_defaults")
	.dwattr $C$DW$97, DW_AT_external
	.dwattr $C$DW$97, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$97, DW_AT_TI_begin_line(0x2b0)
	.dwattr $C$DW$97, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$97, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./mp3_encode.c",line 689,column 1,is_stmt,address _shine_set_config_mpeg_defaults

	.dwfde $C$DW$CIE, _shine_set_config_mpeg_defaults
$C$DW$98	.dwtag  DW_TAG_formal_parameter, DW_AT_name("mpeg")
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("_mpeg")
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$98, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: shine_set_config_mpeg_defaults                               *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AR0,XAR0,AR3,XAR3,SP,M40,SATA,SATD,RDM,FRCT, *
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_shine_set_config_mpeg_defaults:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$99	.dwtag  DW_TAG_variable, DW_AT_name("mpeg")
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_mpeg")
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$99, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./mp3_encode.c",line 690,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #64, AC0 ; |690| 
        MOV AC0, dbl(*AR3(short(#2))) ; |690| 
	.dwpsn	file "./mp3_encode.c",line 691,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3(short(#4)) ; |691| 
	.dwpsn	file "./mp3_encode.c",line 694,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$100	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$100, DW_AT_low_pc(0x00)
	.dwattr $C$DW$100, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$97, DW_AT_TI_end_file("./mp3_encode.c")
	.dwattr $C$DW$97, DW_AT_TI_end_line(0x2b6)
	.dwattr $C$DW$97, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$97

	.sect	".text"
	.global	_shine_mpeg_version

$C$DW$101	.dwtag  DW_TAG_subprogram, DW_AT_name("shine_mpeg_version")
	.dwattr $C$DW$101, DW_AT_low_pc(_shine_mpeg_version)
	.dwattr $C$DW$101, DW_AT_high_pc(0x00)
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_shine_mpeg_version")
	.dwattr $C$DW$101, DW_AT_external
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$101, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$101, DW_AT_TI_begin_line(0x2b8)
	.dwattr $C$DW$101, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$101, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./mp3_encode.c",line 697,column 1,is_stmt,address _shine_mpeg_version

	.dwfde $C$DW$CIE, _shine_mpeg_version
$C$DW$102	.dwtag  DW_TAG_formal_parameter, DW_AT_name("samplerate_index")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("_samplerate_index")
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$102, DW_AT_location[DW_OP_reg0]
;*******************************************************************************
;* FUNCTION NAME: shine_mpeg_version                                           *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,SP,TC1,M40,SATA,SATD,RDM,FRCT,SMUL   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_shine_mpeg_version:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$103	.dwtag  DW_TAG_variable, DW_AT_name("samplerate_index")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("_samplerate_index")
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$103, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV AC0, dbl(*SP(#0)) ; |697| 
	.dwpsn	file "./mp3_encode.c",line 699,column 5,is_stmt

        MOV dbl(*SP(#0)), AC1 ; |699| 
||      MOV #3, AC0 ; |699| 

        CMP AC1 >= AC0, TC1 ; |699| 
        BCC $C$L7,!TC1 ; |699| 
                                        ; branchcc occurs ; |699| 
	.dwpsn	file "./mp3_encode.c",line 701,column 9,is_stmt
	.dwpsn	file "./mp3_encode.c",line 702,column 10,is_stmt

        MOV dbl(*SP(#0)), AC1 ; |702| 
||      MOV #6, AC0 ; |702| 

        CMP AC1 >= AC0, TC1 ; |702| 
        BCC $C$L6,TC1 ; |702| 
                                        ; branchcc occurs ; |702| 
	.dwpsn	file "./mp3_encode.c",line 704,column 9,is_stmt
        MOV #2, AC0 ; |704| 
        B $C$L7   ; |704| 
                                        ; branch occurs ; |704| 
$C$L6:    
	.dwpsn	file "./mp3_encode.c",line 707,column 9,is_stmt
        MOV #0, AC0 ; |707| 
$C$L7:    
	.dwpsn	file "./mp3_encode.c",line 708,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$104	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$104, DW_AT_low_pc(0x00)
	.dwattr $C$DW$104, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$101, DW_AT_TI_end_file("./mp3_encode.c")
	.dwattr $C$DW$101, DW_AT_TI_end_line(0x2c4)
	.dwattr $C$DW$101, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$101

	.sect	".text"
	.global	_shine_find_samplerate_index

$C$DW$105	.dwtag  DW_TAG_subprogram, DW_AT_name("shine_find_samplerate_index")
	.dwattr $C$DW$105, DW_AT_low_pc(_shine_find_samplerate_index)
	.dwattr $C$DW$105, DW_AT_high_pc(0x00)
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_shine_find_samplerate_index")
	.dwattr $C$DW$105, DW_AT_external
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$105, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$105, DW_AT_TI_begin_line(0x2c6)
	.dwattr $C$DW$105, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$105, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./mp3_encode.c",line 711,column 1,is_stmt,address _shine_find_samplerate_index

	.dwfde $C$DW$CIE, _shine_find_samplerate_index
$C$DW$106	.dwtag  DW_TAG_formal_parameter, DW_AT_name("freq")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_freq")
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$106, DW_AT_location[DW_OP_reg0]
;*******************************************************************************
;* FUNCTION NAME: shine_find_samplerate_index                                  *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR1,AR2,AR3,XAR3,SP,CARRY,TC1,M40,*
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_shine_find_samplerate_index:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$107	.dwtag  DW_TAG_variable, DW_AT_name("freq")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_freq")
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$107, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$108	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$108, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV AC0, dbl(*SP(#0)) ; |711| 
	.dwpsn	file "./mp3_encode.c",line 714,column 10,is_stmt
        MOV #0, *SP(#2) ; |714| 
	.dwpsn	file "./mp3_encode.c",line 714,column 17,is_stmt

        MOV *SP(#2), AR1 ; |714| 
||      MOV #9, AR2

        CMP AR1 >= AR2, TC1 ; |714| 
        BCC $C$L10,TC1 ; |714| 
                                        ; branchcc occurs ; |714| 
$C$L8:    
$C$DW$L$_shine_find_samplerate_index$2$B:
	.dwpsn	file "./mp3_encode.c",line 715,column 9,is_stmt
        MOV AR1, T0 ; |715| 
        SFTL T0, #1 ; |715| 
        AMOV #_samplerates, XAR3 ; |715| 
        MOV dbl(*SP(#0)), AC1 ; |715| 
        MOV dbl(*AR3(T0)), AC0 ; |715| 
        CMP AC1 != AC0, TC1 ; |715| 
        BCC $C$L9,TC1 ; |715| 
                                        ; branchcc occurs ; |715| 
$C$DW$L$_shine_find_samplerate_index$2$E:
	.dwpsn	file "./mp3_encode.c",line 716,column 13,is_stmt
        MOV AR1, T0
        B $C$L11  ; |716| 
                                        ; branch occurs ; |716| 
$C$L9:    
$C$DW$L$_shine_find_samplerate_index$4$B:
	.dwpsn	file "./mp3_encode.c",line 714,column 24,is_stmt
        ADD #1, *SP(#2) ; |714| 
	.dwpsn	file "./mp3_encode.c",line 714,column 17,is_stmt
        MOV *SP(#2), AR1 ; |714| 
        CMP AR1 < AR2, TC1 ; |714| 
        BCC $C$L8,TC1 ; |714| 
                                        ; branchcc occurs ; |714| 
$C$DW$L$_shine_find_samplerate_index$4$E:
$C$L10:    
	.dwpsn	file "./mp3_encode.c",line 718,column 5,is_stmt
        MOV #-1, T0
$C$L11:    
	.dwpsn	file "./mp3_encode.c",line 719,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$109	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$109, DW_AT_low_pc(0x00)
	.dwattr $C$DW$109, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$110	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$110, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L8:1:1738864582")
	.dwattr $C$DW$110, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$110, DW_AT_TI_begin_line(0x2ca)
	.dwattr $C$DW$110, DW_AT_TI_end_line(0x2cc)
$C$DW$111	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$111, DW_AT_low_pc($C$DW$L$_shine_find_samplerate_index$2$B)
	.dwattr $C$DW$111, DW_AT_high_pc($C$DW$L$_shine_find_samplerate_index$2$E)
$C$DW$112	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$112, DW_AT_low_pc($C$DW$L$_shine_find_samplerate_index$4$B)
	.dwattr $C$DW$112, DW_AT_high_pc($C$DW$L$_shine_find_samplerate_index$4$E)
	.dwendtag $C$DW$110

	.dwattr $C$DW$105, DW_AT_TI_end_file("./mp3_encode.c")
	.dwattr $C$DW$105, DW_AT_TI_end_line(0x2cf)
	.dwattr $C$DW$105, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$105

	.sect	".text"
	.global	_shine_find_bitrate_index

$C$DW$113	.dwtag  DW_TAG_subprogram, DW_AT_name("shine_find_bitrate_index")
	.dwattr $C$DW$113, DW_AT_low_pc(_shine_find_bitrate_index)
	.dwattr $C$DW$113, DW_AT_high_pc(0x00)
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_shine_find_bitrate_index")
	.dwattr $C$DW$113, DW_AT_external
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$113, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$113, DW_AT_TI_begin_line(0x2d1)
	.dwattr $C$DW$113, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$113, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "./mp3_encode.c",line 722,column 1,is_stmt,address _shine_find_bitrate_index

	.dwfde $C$DW$CIE, _shine_find_bitrate_index
$C$DW$114	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bitr")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_bitr")
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$114, DW_AT_location[DW_OP_reg0]
$C$DW$115	.dwtag  DW_TAG_formal_parameter, DW_AT_name("mpeg_version")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_mpeg_version")
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$115, DW_AT_location[DW_OP_reg3]
;*******************************************************************************
;* FUNCTION NAME: shine_find_bitrate_index                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR1,AR2,AR3,XAR3,SP,CARRY,TC1,M40,*
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_shine_find_bitrate_index:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$116	.dwtag  DW_TAG_variable, DW_AT_name("bitr")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("_bitr")
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$116, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$117	.dwtag  DW_TAG_variable, DW_AT_name("mpeg_version")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_mpeg_version")
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$117, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$118	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$118, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV AC1, dbl(*SP(#2)) ; |722| 
        MOV AC0, dbl(*SP(#0)) ; |722| 
	.dwpsn	file "./mp3_encode.c",line 725,column 10,is_stmt
        MOV #0, *SP(#4) ; |725| 
	.dwpsn	file "./mp3_encode.c",line 725,column 17,is_stmt
        MOV #16, AR2 ; |725| 
        MOV *SP(#4), AR1 ; |725| 
        CMP AR1 >= AR2, TC1 ; |725| 
        BCC $C$L14,TC1 ; |725| 
                                        ; branchcc occurs ; |725| 
$C$L12:    
$C$DW$L$_shine_find_bitrate_index$2$B:
	.dwpsn	file "./mp3_encode.c",line 726,column 9,is_stmt
        MOV *SP(#4) << #2, AC0 ; |726| 
        MOV AC0, AR1 ; |726| 
        MOV *SP(#3), T0 ; |726| 
        AMOV #_bitrates, XAR3 ; |726| 

        AADD AR1, AR3 ; |726| 
||      MOV dbl(*SP(#0)), AC1 ; |726| 

        MOV *AR3(T0), AC0 ; |726| 
        CMP AC1 != AC0, TC1 ; |726| 
        BCC $C$L13,TC1 ; |726| 
                                        ; branchcc occurs ; |726| 
$C$DW$L$_shine_find_bitrate_index$2$E:
	.dwpsn	file "./mp3_encode.c",line 727,column 13,is_stmt
        MOV *SP(#4), T0 ; |727| 
        B $C$L15  ; |727| 
                                        ; branch occurs ; |727| 
$C$L13:    
$C$DW$L$_shine_find_bitrate_index$4$B:
	.dwpsn	file "./mp3_encode.c",line 725,column 25,is_stmt
        ADD #1, *SP(#4) ; |725| 
	.dwpsn	file "./mp3_encode.c",line 725,column 17,is_stmt
        MOV *SP(#4), AR1 ; |725| 
        CMP AR1 < AR2, TC1 ; |725| 
        BCC $C$L12,TC1 ; |725| 
                                        ; branchcc occurs ; |725| 
$C$DW$L$_shine_find_bitrate_index$4$E:
$C$L14:    
	.dwpsn	file "./mp3_encode.c",line 731,column 5,is_stmt
        MOV #-1, T0
$C$L15:    
	.dwpsn	file "./mp3_encode.c",line 732,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$119	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$119, DW_AT_low_pc(0x00)
	.dwattr $C$DW$119, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$120	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$120, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L12:1:1738864582")
	.dwattr $C$DW$120, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$120, DW_AT_TI_begin_line(0x2d5)
	.dwattr $C$DW$120, DW_AT_TI_end_line(0x2d9)
$C$DW$121	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$121, DW_AT_low_pc($C$DW$L$_shine_find_bitrate_index$2$B)
	.dwattr $C$DW$121, DW_AT_high_pc($C$DW$L$_shine_find_bitrate_index$2$E)
$C$DW$122	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$122, DW_AT_low_pc($C$DW$L$_shine_find_bitrate_index$4$B)
	.dwattr $C$DW$122, DW_AT_high_pc($C$DW$L$_shine_find_bitrate_index$4$E)
	.dwendtag $C$DW$120

	.dwattr $C$DW$113, DW_AT_TI_end_file("./mp3_encode.c")
	.dwattr $C$DW$113, DW_AT_TI_end_line(0x2dc)
	.dwattr $C$DW$113, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$113

	.sect	".text"
	.global	_shine_check_config

$C$DW$123	.dwtag  DW_TAG_subprogram, DW_AT_name("shine_check_config")
	.dwattr $C$DW$123, DW_AT_low_pc(_shine_check_config)
	.dwattr $C$DW$123, DW_AT_high_pc(0x00)
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_shine_check_config")
	.dwattr $C$DW$123, DW_AT_external
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$123, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$123, DW_AT_TI_begin_line(0x2de)
	.dwattr $C$DW$123, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$123, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "./mp3_encode.c",line 735,column 1,is_stmt,address _shine_check_config

	.dwfde $C$DW$CIE, _shine_check_config
$C$DW$124	.dwtag  DW_TAG_formal_parameter, DW_AT_name("freq")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_freq")
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$124, DW_AT_location[DW_OP_reg0]
$C$DW$125	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bitr")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_bitr")
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$125, DW_AT_location[DW_OP_reg3]
;*******************************************************************************
;* FUNCTION NAME: shine_check_config                                           *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,SP,M40,SATA,SATD,RDM,FRCT,SMUL    *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (10 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_shine_check_config:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-11, SP
	.dwcfi	cfa_offset, 12
$C$DW$126	.dwtag  DW_TAG_variable, DW_AT_name("freq")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_freq")
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$126, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$127	.dwtag  DW_TAG_variable, DW_AT_name("bitr")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_bitr")
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$127, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$128	.dwtag  DW_TAG_variable, DW_AT_name("samplerate_index")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_samplerate_index")
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$128, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$129	.dwtag  DW_TAG_variable, DW_AT_name("bitrate_index")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_bitrate_index")
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$129, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$130	.dwtag  DW_TAG_variable, DW_AT_name("mpeg_version")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("_mpeg_version")
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$130, DW_AT_location[DW_OP_bregx 0x24 8]
        MOV AC1, dbl(*SP(#2)) ; |735| 
        MOV AC0, dbl(*SP(#0)) ; |735| 
	.dwpsn	file "./mp3_encode.c",line 738,column 5,is_stmt
        MOV dbl(*SP(#0)), AC0 ; |738| 
$C$DW$131	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$131, DW_AT_low_pc(0x00)
	.dwattr $C$DW$131, DW_AT_name("_shine_find_samplerate_index")
	.dwattr $C$DW$131, DW_AT_TI_call
        CALL #_shine_find_samplerate_index ; |738| 
                                        ; call occurs [#_shine_find_samplerate_index] ; |738| 
        MOV T0, AC0
        MOV AC0, dbl(*SP(#4)) ; |738| 
	.dwpsn	file "./mp3_encode.c",line 739,column 5,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |739| 
        BCC $C$L16,AC0 >= #0 ; |739| 
                                        ; branchcc occurs ; |739| 
	.dwpsn	file "./mp3_encode.c",line 740,column 9,is_stmt
        MOV #-1, AC0 ; |740| 
        B $C$L18  ; |740| 
                                        ; branch occurs ; |740| 
$C$L16:    
	.dwpsn	file "./mp3_encode.c",line 742,column 5,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |742| 
$C$DW$132	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$132, DW_AT_low_pc(0x00)
	.dwattr $C$DW$132, DW_AT_name("_shine_mpeg_version")
	.dwattr $C$DW$132, DW_AT_TI_call
        CALL #_shine_mpeg_version ; |742| 
                                        ; call occurs [#_shine_mpeg_version] ; |742| 
        MOV AC0, dbl(*SP(#8)) ; |742| 
	.dwpsn	file "./mp3_encode.c",line 744,column 5,is_stmt
        MOV dbl(*SP(#8)), AC1 ; |744| 
        MOV dbl(*SP(#2)), AC0 ; |744| 
$C$DW$133	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$133, DW_AT_low_pc(0x00)
	.dwattr $C$DW$133, DW_AT_name("_shine_find_bitrate_index")
	.dwattr $C$DW$133, DW_AT_TI_call
        CALL #_shine_find_bitrate_index ; |744| 
                                        ; call occurs [#_shine_find_bitrate_index] ; |744| 
        MOV T0, AC0
        MOV AC0, dbl(*SP(#6)) ; |744| 
	.dwpsn	file "./mp3_encode.c",line 745,column 5,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |745| 
        BCC $C$L17,AC0 >= #0 ; |745| 
                                        ; branchcc occurs ; |745| 
	.dwpsn	file "./mp3_encode.c",line 746,column 9,is_stmt
        MOV #-1, AC0 ; |746| 
        B $C$L18  ; |746| 
                                        ; branch occurs ; |746| 
$C$L17:    
	.dwpsn	file "./mp3_encode.c",line 748,column 5,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |748| 
$C$L18:    
	.dwpsn	file "./mp3_encode.c",line 749,column 1,is_stmt
        AADD #11, SP
	.dwcfi	cfa_offset, 1
$C$DW$134	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$134, DW_AT_low_pc(0x00)
	.dwattr $C$DW$134, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$123, DW_AT_TI_end_file("./mp3_encode.c")
	.dwattr $C$DW$123, DW_AT_TI_end_line(0x2ed)
	.dwattr $C$DW$123, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$123

	.sect	".text"
	.global	_shine_samples_per_pass

$C$DW$135	.dwtag  DW_TAG_subprogram, DW_AT_name("shine_samples_per_pass")
	.dwattr $C$DW$135, DW_AT_low_pc(_shine_samples_per_pass)
	.dwattr $C$DW$135, DW_AT_high_pc(0x00)
	.dwattr $C$DW$135, DW_AT_TI_symbol_name("_shine_samples_per_pass")
	.dwattr $C$DW$135, DW_AT_external
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$135, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$135, DW_AT_TI_begin_line(0x2ef)
	.dwattr $C$DW$135, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$135, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./mp3_encode.c",line 752,column 1,is_stmt,address _shine_samples_per_pass

	.dwfde $C$DW$CIE, _shine_samples_per_pass
$C$DW$136	.dwtag  DW_TAG_formal_parameter, DW_AT_name("s")
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("_s")
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$136, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: shine_samples_per_pass                                       *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AR0,XAR0,AR3,XAR3,SP,M40,SATA,SATD,RDM,FRCT, *
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_shine_samples_per_pass:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$137	.dwtag  DW_TAG_variable, DW_AT_name("s")
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("_s")
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$137, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./mp3_encode.c",line 753,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#722) << #16, AC0
        MPYK #576, AC0, AC0 ; |753| 
        MOV mmap(AC0L), AC0 ; |753| 
	.dwpsn	file "./mp3_encode.c",line 754,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$138	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$138, DW_AT_low_pc(0x00)
	.dwattr $C$DW$138, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$135, DW_AT_TI_end_file("./mp3_encode.c")
	.dwattr $C$DW$135, DW_AT_TI_end_line(0x2f2)
	.dwattr $C$DW$135, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$135

	.sect	".text"
	.global	_shine_initialise

$C$DW$139	.dwtag  DW_TAG_subprogram, DW_AT_name("shine_initialise")
	.dwattr $C$DW$139, DW_AT_low_pc(_shine_initialise)
	.dwattr $C$DW$139, DW_AT_high_pc(0x00)
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_shine_initialise")
	.dwattr $C$DW$139, DW_AT_external
	.dwattr $C$DW$139, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$139, DW_AT_TI_begin_line(0x2f5)
	.dwattr $C$DW$139, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$139, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "./mp3_encode.c",line 758,column 1,is_stmt,address _shine_initialise

	.dwfde $C$DW$CIE, _shine_initialise
$C$DW$140	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pub_config")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_pub_config")
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$140, DW_AT_location[DW_OP_reg17]
$C$DW$141	.dwtag  DW_TAG_formal_parameter, DW_AT_name("config")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$141, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: shine_initialise                                             *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP, *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (10 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_shine_initialise:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-11, SP
	.dwcfi	cfa_offset, 12
$C$DW$142	.dwtag  DW_TAG_variable, DW_AT_name("pub_config")
	.dwattr $C$DW$142, DW_AT_TI_symbol_name("_pub_config")
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$142, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$143	.dwtag  DW_TAG_variable, DW_AT_name("config")
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$143, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$144	.dwtag  DW_TAG_variable, DW_AT_name("avg_slots_per_frame")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_avg_slots_per_frame")
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$144, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./mp3_encode.c",line 769,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        BCC $C$L21,AC0 == #0 ; |769| 
                                        ; branchcc occurs ; |769| 
	.dwpsn	file "./mp3_encode.c",line 770,column 9,is_stmt
	.dwpsn	file "./mp3_encode.c",line 772,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR0
$C$DW$145	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$145, DW_AT_low_pc(0x00)
	.dwattr $C$DW$145, DW_AT_name("_shine_subband_initialise")
	.dwattr $C$DW$145, DW_AT_TI_call
        CALL #_shine_subband_initialise ; |772| 
                                        ; call occurs [#_shine_subband_initialise] ; |772| 
	.dwpsn	file "./mp3_encode.c",line 773,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR0
$C$DW$146	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$146, DW_AT_low_pc(0x00)
	.dwattr $C$DW$146, DW_AT_name("_shine_mdct_initialise")
	.dwattr $C$DW$146, DW_AT_TI_call
        CALL #_shine_mdct_initialise ; |773| 
                                        ; call occurs [#_shine_mdct_initialise] ; |773| 
	.dwpsn	file "./mp3_encode.c",line 774,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR0
$C$DW$147	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$147, DW_AT_low_pc(0x00)
	.dwattr $C$DW$147, DW_AT_name("_shine_loop_initialise")
	.dwattr $C$DW$147, DW_AT_TI_call
        CALL #_shine_loop_initialise ; |774| 
                                        ; call occurs [#_shine_loop_initialise] ; |774| 
	.dwpsn	file "./mp3_encode.c",line 779,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR1 ; |779| 
        MOV dbl(*SP(#2)), XAR3
        MOV AR1, *AR3(#723) ; |779| 
	.dwpsn	file "./mp3_encode.c",line 780,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#3)), AR1 ; |780| 
        MOV dbl(*SP(#2)), XAR3
        MOV AR1, *AR3(#710) ; |780| 
	.dwpsn	file "./mp3_encode.c",line 781,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#4)), AR1 ; |781| 
        MOV dbl(*SP(#2)), XAR3
        MOV AR1, *AR3(#711) ; |781| 
	.dwpsn	file "./mp3_encode.c",line 786,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #0, AC0 ; |786| 
        MOV AC0, dbl(*AR3(#11886)) ; |786| 
	.dwpsn	file "./mp3_encode.c",line 787,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*AR3(#11884)) ; |787| 
	.dwpsn	file "./mp3_encode.c",line 788,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #1, *AR3(#721) ; |788| 
	.dwpsn	file "./mp3_encode.c",line 789,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #0, *AR3(#716) ; |789| 
	.dwpsn	file "./mp3_encode.c",line 790,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #0, *AR3(#717) ; |790| 
	.dwpsn	file "./mp3_encode.c",line 792,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #8, *AR3(#714) ; |792| 
	.dwpsn	file "./mp3_encode.c",line 794,column 5,is_stmt
        MOV #8000, AC0 ; |794| 
$C$DW$148	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$148, DW_AT_low_pc(0x00)
	.dwattr $C$DW$148, DW_AT_name("_shine_find_samplerate_index")
	.dwattr $C$DW$148, DW_AT_TI_call
        CALL #_shine_find_samplerate_index ; |794| 
                                        ; call occurs [#_shine_find_samplerate_index] ; |794| 
        MOV dbl(*SP(#2)), XAR3
        MOV T0, *AR3(#719) ; |794| 
	.dwpsn	file "./mp3_encode.c",line 795,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#719), AC0 ; |795| 
$C$DW$149	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$149, DW_AT_low_pc(0x00)
	.dwattr $C$DW$149, DW_AT_name("_shine_mpeg_version")
	.dwattr $C$DW$149, DW_AT_TI_call
        CALL #_shine_mpeg_version ; |795| 
                                        ; call occurs [#_shine_mpeg_version] ; |795| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, *AR3(#720) ; |795| 
	.dwpsn	file "./mp3_encode.c",line 796,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#710), AC0 ; |796| 
        MOV *AR3(#720), AC1 ; |796| 
$C$DW$150	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$150, DW_AT_low_pc(0x00)
	.dwattr $C$DW$150, DW_AT_name("_shine_find_bitrate_index")
	.dwattr $C$DW$150, DW_AT_TI_call
        CALL #_shine_find_bitrate_index ; |796| 
                                        ; call occurs [#_shine_find_bitrate_index] ; |796| 
        MOV dbl(*SP(#2)), XAR3
        MOV T0, *AR3(#718) ; |796| 
	.dwpsn	file "./mp3_encode.c",line 797,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#720), T0 ; |797| 
        SFTL T0, #1 ; |797| 
        AMOV #(_granules_per_frame+1), XAR3 ; |797| 
        MOV *AR3(T0), AR1 ; |797| 
        MOV dbl(*SP(#2)), XAR3
        MOV AR1, *AR3(#722) ; |797| 
	.dwpsn	file "./mp3_encode.c",line 800,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#722), T0 ; |800| 
$C$DW$151	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$151, DW_AT_low_pc(0x00)
	.dwattr $C$DW$151, DW_AT_name("__fltid")
	.dwattr $C$DW$151, DW_AT_TI_call
        CALL #__fltid ; |800| 
                                        ; call occurs [#__fltid] ; |800| 
        MOV dbl(*($C$FL1)), AC1 ; |800| 
$C$DW$152	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$152, DW_AT_low_pc(0x00)
	.dwattr $C$DW$152, DW_AT_name("__mpyd")
	.dwattr $C$DW$152, DW_AT_TI_call
        CALL #__mpyd ; |800| 
                                        ; call occurs [#__mpyd] ; |800| 
        MOV dbl(*($C$FL2)), AC1 ; |800| 
$C$DW$153	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$153, DW_AT_low_pc(0x00)
	.dwattr $C$DW$153, DW_AT_name("__divd")
	.dwattr $C$DW$153, DW_AT_TI_call
        CALL #__divd ; |800| 
                                        ; call occurs [#__divd] ; |800| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*SP(#8)) ; |800| 
        MOV *AR3(#710), T0 ; |800| 
$C$DW$154	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$154, DW_AT_low_pc(0x00)
	.dwattr $C$DW$154, DW_AT_name("__fltid")
	.dwattr $C$DW$154, DW_AT_TI_call
        CALL #__fltid ; |800| 
                                        ; call occurs [#__fltid] ; |800| 
        OR #0, AC0, AC1
        MOV dbl(*($C$FL3)), AC0 ; |800| 
$C$DW$155	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$155, DW_AT_low_pc(0x00)
	.dwattr $C$DW$155, DW_AT_name("__mpyd")
	.dwattr $C$DW$155, DW_AT_TI_call
        CALL #__mpyd ; |800| 
                                        ; call occurs [#__mpyd] ; |800| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*SP(#6)) ; |800| 
        MOV *AR3(#714), T0 ; |800| 
$C$DW$156	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$156, DW_AT_low_pc(0x00)
	.dwattr $C$DW$156, DW_AT_name("__fltid")
	.dwattr $C$DW$156, DW_AT_TI_call
        CALL #__fltid ; |800| 
                                        ; call occurs [#__fltid] ; |800| 

        MOV dbl(*SP(#6)), AC0 ; |800| 
||      OR #0, AC0, AC1

$C$DW$157	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$157, DW_AT_low_pc(0x00)
	.dwattr $C$DW$157, DW_AT_name("__divd")
	.dwattr $C$DW$157, DW_AT_TI_call
        CALL #__divd ; |800| 
                                        ; call occurs [#__divd] ; |800| 

        MOV dbl(*SP(#8)), AC0 ; |800| 
||      OR #0, AC0, AC1

$C$DW$158	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$158, DW_AT_low_pc(0x00)
	.dwattr $C$DW$158, DW_AT_name("__mpyd")
	.dwattr $C$DW$158, DW_AT_TI_call
        CALL #__mpyd ; |800| 
                                        ; call occurs [#__mpyd] ; |800| 
        MOV AC0, dbl(*SP(#4)) ; |800| 
	.dwpsn	file "./mp3_encode.c",line 805,column 5,is_stmt
$C$DW$159	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$159, DW_AT_low_pc(0x00)
	.dwattr $C$DW$159, DW_AT_name("__fixdli")
	.dwattr $C$DW$159, DW_AT_TI_call
        CALL #__fixdli ; |805| 
                                        ; call occurs [#__fixdli] ; |805| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, *AR3(#715) ; |805| 
	.dwpsn	file "./mp3_encode.c",line 807,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#715), T0 ; |807| 
$C$DW$160	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$160, DW_AT_low_pc(0x00)
	.dwattr $C$DW$160, DW_AT_name("__fltid")
	.dwattr $C$DW$160, DW_AT_TI_call
        CALL #__fltid ; |807| 
                                        ; call occurs [#__fltid] ; |807| 

        MOV dbl(*SP(#4)), AC0 ; |807| 
||      OR #0, AC0, AC1

$C$DW$161	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$161, DW_AT_low_pc(0x00)
	.dwattr $C$DW$161, DW_AT_name("__subd")
	.dwattr $C$DW$161, DW_AT_TI_call
        CALL #__subd ; |807| 
                                        ; call occurs [#__subd] ; |807| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*AR3(#706)) ; |807| 
	.dwpsn	file "./mp3_encode.c",line 808,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(#706)), AC0 ; |808| 
$C$DW$162	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$162, DW_AT_low_pc(0x00)
	.dwattr $C$DW$162, DW_AT_name("__negd")
	.dwattr $C$DW$162, DW_AT_TI_call
        CALL #__negd ; |808| 
                                        ; call occurs [#__negd] ; |808| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*AR3(#708)) ; |808| 
	.dwpsn	file "./mp3_encode.c",line 810,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*($C$FL4)), AC1 ; |810| 
        MOV dbl(*AR3(#706)), AC0 ; |810| 
$C$DW$163	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$163, DW_AT_low_pc(0x00)
	.dwattr $C$DW$163, DW_AT_name("__cmpd")
	.dwattr $C$DW$163, DW_AT_TI_call
        CALL #__cmpd ; |810| 
                                        ; call occurs [#__cmpd] ; |810| 
        BCC $C$L19,T0 != #0 ; |810| 
                                        ; branchcc occurs ; |810| 
	.dwpsn	file "./mp3_encode.c",line 811,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #0, *AR3(#712) ; |811| 
$C$L19:    
	.dwpsn	file "./mp3_encode.c",line 813,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR0
        MOV #512, AC0 ; |813| 
        AMAR *+AR0(#724) ; |813| 
$C$DW$164	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$164, DW_AT_low_pc(0x00)
	.dwattr $C$DW$164, DW_AT_name("_shine_open_bit_stream")
	.dwattr $C$DW$164, DW_AT_TI_call
        CALL #_shine_open_bit_stream ; |813| 
                                        ; call occurs [#_shine_open_bit_stream] ; |813| 
	.dwpsn	file "./mp3_encode.c",line 815,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR0
        MOV #29, T1 ; |815| 
        AMAR *+AR0(#11888) ; |815| 
$C$DW$165	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$165, DW_AT_low_pc(0x00)
	.dwattr $C$DW$165, DW_AT_name("_memset")
	.dwattr $C$DW$165, DW_AT_TI_call

        CALL #_memset ; |815| 
||      MOV #0, T0

                                        ; call occurs [#_memset] ; |815| 
	.dwpsn	file "./mp3_encode.c",line 818,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        CMP *AR3(#722) == #2, TC1 ; |818| 
        BCC $C$L20,!TC1 ; |818| 
                                        ; branchcc occurs ; |818| 
	.dwpsn	file "./mp3_encode.c",line 819,column 9,is_stmt
        MOV #168, AC0 ; |819| 
        MOV AC0, dbl(*AR3(#11880)) ; |819| 
        B $C$L21  ; |819| 
                                        ; branch occurs ; |819| 
$C$L20:    
	.dwpsn	file "./mp3_encode.c",line 821,column 9,is_stmt
        MOV #104, AC0 ; |821| 
        MOV AC0, dbl(*AR3(#11880)) ; |821| 
	.dwpsn	file "./mp3_encode.c",line 822,column 1,is_stmt
$C$L21:    
        AADD #11, SP
	.dwcfi	cfa_offset, 1
$C$DW$166	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$166, DW_AT_low_pc(0x00)
	.dwattr $C$DW$166, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$139, DW_AT_TI_end_file("./mp3_encode.c")
	.dwattr $C$DW$139, DW_AT_TI_end_line(0x336)
	.dwattr $C$DW$139, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$139

	.sect	".text"

$C$DW$167	.dwtag  DW_TAG_subprogram, DW_AT_name("shine_encode_buffer_internal")
	.dwattr $C$DW$167, DW_AT_low_pc(_shine_encode_buffer_internal)
	.dwattr $C$DW$167, DW_AT_high_pc(0x00)
	.dwattr $C$DW$167, DW_AT_TI_symbol_name("_shine_encode_buffer_internal")
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$167, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$167, DW_AT_TI_begin_line(0x338)
	.dwattr $C$DW$167, DW_AT_TI_begin_column(0x12)
	.dwattr $C$DW$167, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "./mp3_encode.c",line 825,column 1,is_stmt,address _shine_encode_buffer_internal

	.dwfde $C$DW$CIE, _shine_encode_buffer_internal
$C$DW$168	.dwtag  DW_TAG_formal_parameter, DW_AT_name("config")
	.dwattr $C$DW$168, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$168, DW_AT_location[DW_OP_reg17]
$C$DW$169	.dwtag  DW_TAG_formal_parameter, DW_AT_name("written")
	.dwattr $C$DW$169, DW_AT_TI_symbol_name("_written")
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$169, DW_AT_location[DW_OP_reg19]
$C$DW$170	.dwtag  DW_TAG_formal_parameter, DW_AT_name("stride")
	.dwattr $C$DW$170, DW_AT_TI_symbol_name("_stride")
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$170, DW_AT_location[DW_OP_reg0]
;*******************************************************************************
;* FUNCTION NAME: shine_encode_buffer_internal                                 *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T2,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,*
;*                        XAR3,AR5,XAR5,SP,CARRY,M40,SATA,SATD,RDM,FRCT,SMUL   *
;*   Save On Entry Regs : T2,AR5                                               *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*                        (2 register save area)                               *
;*   Min System Stack   : 2 words                                              *
;*******************************************************************************
_shine_encode_buffer_internal:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        PSH T2
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 14, -2
        PSHBOTH XAR5
	.dwcfi	cfa_offset, 3
	.dwcfi	save_reg_to_mem, 26, -3
        AADD #-7, SP
	.dwcfi	cfa_offset, 10
$C$DW$171	.dwtag  DW_TAG_variable, DW_AT_name("config")
	.dwattr $C$DW$171, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$171, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$172	.dwtag  DW_TAG_variable, DW_AT_name("written")
	.dwattr $C$DW$172, DW_AT_TI_symbol_name("_written")
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$172, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$173	.dwtag  DW_TAG_variable, DW_AT_name("stride")
	.dwattr $C$DW$173, DW_AT_TI_symbol_name("_stride")
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$173, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV AC0, dbl(*SP(#4)) ; |825| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./mp3_encode.c",line 826,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*($C$FL4)), AC1 ; |826| 
        MOV dbl(*AR3(#706)), AC0 ; |826| 
$C$DW$174	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$174, DW_AT_low_pc(0x00)
	.dwattr $C$DW$174, DW_AT_name("__cmpd")
	.dwattr $C$DW$174, DW_AT_TI_call
        CALL #__cmpd ; |826| 
                                        ; call occurs [#__cmpd] ; |826| 
        BCC $C$L23,T0 == #0 ; |826| 
                                        ; branchcc occurs ; |826| 
	.dwpsn	file "./mp3_encode.c",line 828,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*($C$FL5)), AC1 ; |828| 
        MOV dbl(*AR3(#706)), AC0 ; |828| 
$C$DW$175	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$175, DW_AT_low_pc(0x00)
	.dwattr $C$DW$175, DW_AT_name("__subd")
	.dwattr $C$DW$175, DW_AT_TI_call
        CALL #__subd ; |828| 
                                        ; call occurs [#__subd] ; |828| 
        MOV dbl(*SP(#0)), XAR3
        OR #0, AC0, AC1
        MOV dbl(*AR3(#708)), AC0 ; |828| 
$C$DW$176	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$176, DW_AT_low_pc(0x00)
	.dwattr $C$DW$176, DW_AT_name("__cmpd")
	.dwattr $C$DW$176, DW_AT_TI_call
        CALL #__cmpd ; |828| 
                                        ; call occurs [#__cmpd] ; |828| 

        BCC $C$L22,T0 > #0 ; |828| 
||      MOV #0, T2

                                        ; branchcc occurs ; |828| 
        MOV #1, T2
$C$L22:    
        MOV dbl(*SP(#0)), XAR3
        MOV T2, *AR3(#712) ; |828| 
	.dwpsn	file "./mp3_encode.c",line 829,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#0)), XAR5
        MOV *AR3(#712), T0 ; |829| 
$C$DW$177	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$177, DW_AT_low_pc(0x00)
	.dwattr $C$DW$177, DW_AT_name("__fltid")
	.dwattr $C$DW$177, DW_AT_TI_call
        CALL #__fltid ; |829| 
                                        ; call occurs [#__fltid] ; |829| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#706)), AC1 ; |829| 
$C$DW$178	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$178, DW_AT_low_pc(0x00)
	.dwattr $C$DW$178, DW_AT_name("__subd")
	.dwattr $C$DW$178, DW_AT_TI_call
        CALL #__subd ; |829| 
                                        ; call occurs [#__subd] ; |829| 
        OR #0, AC0, AC1
        MOV dbl(*AR5(#708)), AC0 ; |829| 
$C$DW$179	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$179, DW_AT_low_pc(0x00)
	.dwattr $C$DW$179, DW_AT_name("__addd")
	.dwattr $C$DW$179, DW_AT_TI_call
        CALL #__addd ; |829| 
                                        ; call occurs [#__addd] ; |829| 
        MOV AC0, dbl(*AR5(#708)) ; |829| 
$C$L23:    
	.dwpsn	file "./mp3_encode.c",line 832,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR2
        MOV dbl(*SP(#0)), XAR3
        MOV *AR2(#712), AR1 ; |832| 
        ADD *AR3(#715), AR1, AC0 ; |832| 
        SFTS AC0, #3, AC0 ; |832| 
        MOV AC0, *AR3(#713) ; |832| 
	.dwpsn	file "./mp3_encode.c",line 833,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#0)), XAR2
        MOV *AR3(#722), AC1 ; |833| 
        MOV *AR2(#713), AC0 ; |833| 
        SUB dbl(*AR3(#11880)), AC0, AC0 ; |833| 
$C$DW$180	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$180, DW_AT_low_pc(0x00)
	.dwattr $C$DW$180, DW_AT_name("__divli")
	.dwattr $C$DW$180, DW_AT_TI_call
        CALL #__divli ; |833| 
                                        ; call occurs [#__divli] ; |833| 
        MOV dbl(*SP(#0)), XAR3
        MOV AC0, dbl(*AR3(#11882)) ; |833| 
	.dwpsn	file "./mp3_encode.c",line 836,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#4)), AC0 ; |836| 
$C$DW$181	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$181, DW_AT_low_pc(0x00)
	.dwattr $C$DW$181, DW_AT_name("_shine_mdct_sub")
	.dwattr $C$DW$181, DW_AT_TI_call
        CALL #_shine_mdct_sub ; |836| 
                                        ; call occurs [#_shine_mdct_sub] ; |836| 
	.dwpsn	file "./mp3_encode.c",line 839,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$182	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$182, DW_AT_low_pc(0x00)
	.dwattr $C$DW$182, DW_AT_name("_shine_iteration_loop")
	.dwattr $C$DW$182, DW_AT_TI_call
        CALL #_shine_iteration_loop ; |839| 
                                        ; call occurs [#_shine_iteration_loop] ; |839| 
	.dwpsn	file "./mp3_encode.c",line 842,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$183	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$183, DW_AT_low_pc(0x00)
	.dwattr $C$DW$183, DW_AT_name("_shine_format_bitstream")
	.dwattr $C$DW$183, DW_AT_TI_call
        CALL #_shine_format_bitstream ; |842| 
                                        ; call occurs [#_shine_format_bitstream] ; |842| 
	.dwpsn	file "./mp3_encode.c",line 845,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#731), AC0 ; |845| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*AR3) ; |845| 
	.dwpsn	file "./mp3_encode.c",line 846,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3(#731) ; |846| 
	.dwpsn	file "./mp3_encode.c",line 848,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#724)), XAR0
	.dwpsn	file "./mp3_encode.c",line 849,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 3
        POPBOTH XAR5
	.dwcfi	restore_reg, 26
	.dwcfi	cfa_offset, 2
        POP T2
	.dwcfi	restore_reg, 14
	.dwcfi	cfa_offset, 1
$C$DW$184	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$184, DW_AT_low_pc(0x00)
	.dwattr $C$DW$184, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$167, DW_AT_TI_end_file("./mp3_encode.c")
	.dwattr $C$DW$167, DW_AT_TI_end_line(0x351)
	.dwattr $C$DW$167, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$167

	.sect	".text"
	.global	_shine_encode_buffer

$C$DW$185	.dwtag  DW_TAG_subprogram, DW_AT_name("shine_encode_buffer")
	.dwattr $C$DW$185, DW_AT_low_pc(_shine_encode_buffer)
	.dwattr $C$DW$185, DW_AT_high_pc(0x00)
	.dwattr $C$DW$185, DW_AT_TI_symbol_name("_shine_encode_buffer")
	.dwattr $C$DW$185, DW_AT_external
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$185, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$185, DW_AT_TI_begin_line(0x353)
	.dwattr $C$DW$185, DW_AT_TI_begin_column(0x0b)
	.dwattr $C$DW$185, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "./mp3_encode.c",line 852,column 1,is_stmt,address _shine_encode_buffer

	.dwfde $C$DW$CIE, _shine_encode_buffer
$C$DW$186	.dwtag  DW_TAG_formal_parameter, DW_AT_name("config")
	.dwattr $C$DW$186, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$186, DW_AT_location[DW_OP_reg17]
$C$DW$187	.dwtag  DW_TAG_formal_parameter, DW_AT_name("data")
	.dwattr $C$DW$187, DW_AT_TI_symbol_name("_data")
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$152)
	.dwattr $C$DW$187, DW_AT_location[DW_OP_reg19]
$C$DW$188	.dwtag  DW_TAG_formal_parameter, DW_AT_name("written")
	.dwattr $C$DW$188, DW_AT_TI_symbol_name("_written")
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$188, DW_AT_location[DW_OP_reg21]
;*******************************************************************************
;* FUNCTION NAME: shine_encode_buffer                                          *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,M40,  *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_shine_encode_buffer:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$189	.dwtag  DW_TAG_variable, DW_AT_name("config")
	.dwattr $C$DW$189, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$189, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$190	.dwtag  DW_TAG_variable, DW_AT_name("data")
	.dwattr $C$DW$190, DW_AT_TI_symbol_name("_data")
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$152)
	.dwattr $C$DW$190, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$191	.dwtag  DW_TAG_variable, DW_AT_name("written")
	.dwattr $C$DW$191, DW_AT_TI_symbol_name("_written")
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$191, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR2, dbl(*SP(#4))
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./mp3_encode.c",line 853,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*SP(#0)), XAR2
        MOV dbl(*AR3), dbl(*AR2)
	.dwpsn	file "./mp3_encode.c",line 857,column 5,is_stmt
        MOV #1, AC0 ; |857| 
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#4)), XAR1
$C$DW$192	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$192, DW_AT_low_pc(0x00)
	.dwattr $C$DW$192, DW_AT_name("_shine_encode_buffer_internal")
	.dwattr $C$DW$192, DW_AT_TI_call
        CALL #_shine_encode_buffer_internal ; |857| 
                                        ; call occurs [#_shine_encode_buffer_internal] ; |857| 
	.dwpsn	file "./mp3_encode.c",line 858,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$193	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$193, DW_AT_low_pc(0x00)
	.dwattr $C$DW$193, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$185, DW_AT_TI_end_file("./mp3_encode.c")
	.dwattr $C$DW$185, DW_AT_TI_end_line(0x35a)
	.dwattr $C$DW$185, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$185

	.sect	".text"
	.global	_shine_encode_buffer_interleaved

$C$DW$194	.dwtag  DW_TAG_subprogram, DW_AT_name("shine_encode_buffer_interleaved")
	.dwattr $C$DW$194, DW_AT_low_pc(_shine_encode_buffer_interleaved)
	.dwattr $C$DW$194, DW_AT_high_pc(0x00)
	.dwattr $C$DW$194, DW_AT_TI_symbol_name("_shine_encode_buffer_interleaved")
	.dwattr $C$DW$194, DW_AT_external
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$194, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$194, DW_AT_TI_begin_line(0x35c)
	.dwattr $C$DW$194, DW_AT_TI_begin_column(0x0b)
	.dwattr $C$DW$194, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "./mp3_encode.c",line 861,column 1,is_stmt,address _shine_encode_buffer_interleaved

	.dwfde $C$DW$CIE, _shine_encode_buffer_interleaved
$C$DW$195	.dwtag  DW_TAG_formal_parameter, DW_AT_name("config")
	.dwattr $C$DW$195, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$195, DW_AT_location[DW_OP_reg17]
$C$DW$196	.dwtag  DW_TAG_formal_parameter, DW_AT_name("data")
	.dwattr $C$DW$196, DW_AT_TI_symbol_name("_data")
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$196, DW_AT_location[DW_OP_reg19]
$C$DW$197	.dwtag  DW_TAG_formal_parameter, DW_AT_name("written")
	.dwattr $C$DW$197, DW_AT_TI_symbol_name("_written")
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$197, DW_AT_location[DW_OP_reg21]
;*******************************************************************************
;* FUNCTION NAME: shine_encode_buffer_interleaved                              *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,M40,  *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_shine_encode_buffer_interleaved:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$198	.dwtag  DW_TAG_variable, DW_AT_name("config")
	.dwattr $C$DW$198, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$198, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$199	.dwtag  DW_TAG_variable, DW_AT_name("data")
	.dwattr $C$DW$199, DW_AT_TI_symbol_name("_data")
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$199, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$200	.dwtag  DW_TAG_variable, DW_AT_name("written")
	.dwattr $C$DW$200, DW_AT_TI_symbol_name("_written")
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$200, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR2, dbl(*SP(#4))
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./mp3_encode.c",line 862,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR2
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, dbl(*AR2)
	.dwpsn	file "./mp3_encode.c",line 866,column 5,is_stmt
        MOV #1, AC0 ; |866| 
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#4)), XAR1
$C$DW$201	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$201, DW_AT_low_pc(0x00)
	.dwattr $C$DW$201, DW_AT_name("_shine_encode_buffer_internal")
	.dwattr $C$DW$201, DW_AT_TI_call
        CALL #_shine_encode_buffer_internal ; |866| 
                                        ; call occurs [#_shine_encode_buffer_internal] ; |866| 
	.dwpsn	file "./mp3_encode.c",line 867,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$202	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$202, DW_AT_low_pc(0x00)
	.dwattr $C$DW$202, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$194, DW_AT_TI_end_file("./mp3_encode.c")
	.dwattr $C$DW$194, DW_AT_TI_end_line(0x363)
	.dwattr $C$DW$194, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$194

	.sect	".text"
	.global	_shine_flush

$C$DW$203	.dwtag  DW_TAG_subprogram, DW_AT_name("shine_flush")
	.dwattr $C$DW$203, DW_AT_low_pc(_shine_flush)
	.dwattr $C$DW$203, DW_AT_high_pc(0x00)
	.dwattr $C$DW$203, DW_AT_TI_symbol_name("_shine_flush")
	.dwattr $C$DW$203, DW_AT_external
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$203, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$203, DW_AT_TI_begin_line(0x365)
	.dwattr $C$DW$203, DW_AT_TI_begin_column(0x0b)
	.dwattr $C$DW$203, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "./mp3_encode.c",line 870,column 1,is_stmt,address _shine_flush

	.dwfde $C$DW$CIE, _shine_flush
$C$DW$204	.dwtag  DW_TAG_formal_parameter, DW_AT_name("config")
	.dwattr $C$DW$204, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$204, DW_AT_location[DW_OP_reg17]
$C$DW$205	.dwtag  DW_TAG_formal_parameter, DW_AT_name("written")
	.dwattr $C$DW$205, DW_AT_TI_symbol_name("_written")
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$205, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: shine_flush                                                  *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,M40,SATA,SATD, *
;*                        RDM,FRCT,SMUL                                        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_shine_flush:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$206	.dwtag  DW_TAG_variable, DW_AT_name("config")
	.dwattr $C$DW$206, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$206, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$207	.dwtag  DW_TAG_variable, DW_AT_name("written")
	.dwattr $C$DW$207, DW_AT_TI_symbol_name("_written")
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$207, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./mp3_encode.c",line 871,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#731), AC0 ; |871| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*AR3) ; |871| 
	.dwpsn	file "./mp3_encode.c",line 872,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3(#731) ; |872| 
	.dwpsn	file "./mp3_encode.c",line 874,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#724)), XAR0
	.dwpsn	file "./mp3_encode.c",line 875,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$208	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$208, DW_AT_low_pc(0x00)
	.dwattr $C$DW$208, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$203, DW_AT_TI_end_file("./mp3_encode.c")
	.dwattr $C$DW$203, DW_AT_TI_end_line(0x36b)
	.dwattr $C$DW$203, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$203

	.sect	".text"
	.global	_shine_close

$C$DW$209	.dwtag  DW_TAG_subprogram, DW_AT_name("shine_close")
	.dwattr $C$DW$209, DW_AT_low_pc(_shine_close)
	.dwattr $C$DW$209, DW_AT_high_pc(0x00)
	.dwattr $C$DW$209, DW_AT_TI_symbol_name("_shine_close")
	.dwattr $C$DW$209, DW_AT_external
	.dwattr $C$DW$209, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$209, DW_AT_TI_begin_line(0x36d)
	.dwattr $C$DW$209, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$209, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./mp3_encode.c",line 878,column 1,is_stmt,address _shine_close

	.dwfde $C$DW$CIE, _shine_close
$C$DW$210	.dwtag  DW_TAG_formal_parameter, DW_AT_name("config")
	.dwattr $C$DW$210, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$210, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: shine_close                                                  *
;*                                                                             *
;*   Function Uses Regs : AR0,XAR0,SP,M40,SATA,SATD,RDM,FRCT,SMUL              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_shine_close:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$211	.dwtag  DW_TAG_variable, DW_AT_name("config")
	.dwattr $C$DW$211, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$211, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./mp3_encode.c",line 879,column 5,is_stmt
        AMAR *+AR0(#724) ; |879| 
$C$DW$212	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$212, DW_AT_low_pc(0x00)
	.dwattr $C$DW$212, DW_AT_name("_shine_close_bit_stream")
	.dwattr $C$DW$212, DW_AT_TI_call
        CALL #_shine_close_bit_stream ; |879| 
                                        ; call occurs [#_shine_close_bit_stream] ; |879| 
	.dwpsn	file "./mp3_encode.c",line 881,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$213	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$213, DW_AT_low_pc(0x00)
	.dwattr $C$DW$213, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$209, DW_AT_TI_end_file("./mp3_encode.c")
	.dwattr $C$DW$209, DW_AT_TI_end_line(0x371)
	.dwattr $C$DW$209, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$209

	.sect	".text"
	.global	_shine_open_bit_stream

$C$DW$214	.dwtag  DW_TAG_subprogram, DW_AT_name("shine_open_bit_stream")
	.dwattr $C$DW$214, DW_AT_low_pc(_shine_open_bit_stream)
	.dwattr $C$DW$214, DW_AT_high_pc(0x00)
	.dwattr $C$DW$214, DW_AT_TI_symbol_name("_shine_open_bit_stream")
	.dwattr $C$DW$214, DW_AT_external
	.dwattr $C$DW$214, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$214, DW_AT_TI_begin_line(0x380)
	.dwattr $C$DW$214, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$214, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "./mp3_encode.c",line 897,column 1,is_stmt,address _shine_open_bit_stream

	.dwfde $C$DW$CIE, _shine_open_bit_stream
$C$DW$215	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bs")
	.dwattr $C$DW$215, DW_AT_TI_symbol_name("_bs")
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$128)
	.dwattr $C$DW$215, DW_AT_location[DW_OP_reg17]
$C$DW$216	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size")
	.dwattr $C$DW$216, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$216, DW_AT_location[DW_OP_reg0]
;*******************************************************************************
;* FUNCTION NAME: shine_open_bit_stream                                        *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AR0,XAR0,AR1,AR2,XAR2,AR3,XAR3,SP,M40,SATA,  *
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_shine_open_bit_stream:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$217	.dwtag  DW_TAG_variable, DW_AT_name("bs")
	.dwattr $C$DW$217, DW_AT_TI_symbol_name("_bs")
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$128)
	.dwattr $C$DW$217, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$218	.dwtag  DW_TAG_variable, DW_AT_name("size")
	.dwattr $C$DW$218, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$218, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV AC0, dbl(*SP(#2)) ; |897| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./mp3_encode.c",line 900,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR2
        AMOV #_g_bitstream_data, XAR3 ; |900| 
        MOV XAR3, dbl(*AR2)
	.dwpsn	file "./mp3_encode.c",line 901,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#3), AR1 ; |901| 
        MOV AR1, *AR3(short(#6)) ; |901| 
	.dwpsn	file "./mp3_encode.c",line 902,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3(short(#7)) ; |902| 
	.dwpsn	file "./mp3_encode.c",line 903,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, AC0 ; |903| 
        MOV AC0, dbl(*AR3(short(#2))) ; |903| 
	.dwpsn	file "./mp3_encode.c",line 904,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #32, AC0 ; |904| 
        MOV AC0, dbl(*AR3(short(#4))) ; |904| 
	.dwpsn	file "./mp3_encode.c",line 905,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$219	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$219, DW_AT_low_pc(0x00)
	.dwattr $C$DW$219, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$214, DW_AT_TI_end_file("./mp3_encode.c")
	.dwattr $C$DW$214, DW_AT_TI_end_line(0x389)
	.dwattr $C$DW$214, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$214

	.sect	".text"
	.global	_shine_close_bit_stream

$C$DW$220	.dwtag  DW_TAG_subprogram, DW_AT_name("shine_close_bit_stream")
	.dwattr $C$DW$220, DW_AT_low_pc(_shine_close_bit_stream)
	.dwattr $C$DW$220, DW_AT_high_pc(0x00)
	.dwattr $C$DW$220, DW_AT_TI_symbol_name("_shine_close_bit_stream")
	.dwattr $C$DW$220, DW_AT_external
	.dwattr $C$DW$220, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$220, DW_AT_TI_begin_line(0x38c)
	.dwattr $C$DW$220, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$220, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./mp3_encode.c",line 909,column 1,is_stmt,address _shine_close_bit_stream

	.dwfde $C$DW$CIE, _shine_close_bit_stream
$C$DW$221	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bs")
	.dwattr $C$DW$221, DW_AT_TI_symbol_name("_bs")
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$128)
	.dwattr $C$DW$221, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: shine_close_bit_stream                                       *
;*                                                                             *
;*   Function Uses Regs : AR0,XAR0,SP,M40,SATA,SATD,RDM,FRCT,SMUL              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_shine_close_bit_stream:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$222	.dwtag  DW_TAG_variable, DW_AT_name("bs")
	.dwattr $C$DW$222, DW_AT_TI_symbol_name("_bs")
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$128)
	.dwattr $C$DW$222, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./mp3_encode.c",line 912,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$223	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$223, DW_AT_low_pc(0x00)
	.dwattr $C$DW$223, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$220, DW_AT_TI_end_file("./mp3_encode.c")
	.dwattr $C$DW$220, DW_AT_TI_end_line(0x390)
	.dwattr $C$DW$220, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$220

	.sect	".text"
	.global	_shine_putbits

$C$DW$224	.dwtag  DW_TAG_subprogram, DW_AT_name("shine_putbits")
	.dwattr $C$DW$224, DW_AT_low_pc(_shine_putbits)
	.dwattr $C$DW$224, DW_AT_high_pc(0x00)
	.dwattr $C$DW$224, DW_AT_TI_symbol_name("_shine_putbits")
	.dwattr $C$DW$224, DW_AT_external
	.dwattr $C$DW$224, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$224, DW_AT_TI_begin_line(0x39a)
	.dwattr $C$DW$224, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$224, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "./mp3_encode.c",line 923,column 1,is_stmt,address _shine_putbits

	.dwfde $C$DW$CIE, _shine_putbits
$C$DW$225	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bs")
	.dwattr $C$DW$225, DW_AT_TI_symbol_name("_bs")
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$128)
	.dwattr $C$DW$225, DW_AT_location[DW_OP_reg17]
$C$DW$226	.dwtag  DW_TAG_formal_parameter, DW_AT_name("val")
	.dwattr $C$DW$226, DW_AT_TI_symbol_name("_val")
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$226, DW_AT_location[DW_OP_reg0]
$C$DW$227	.dwtag  DW_TAG_formal_parameter, DW_AT_name("N")
	.dwattr $C$DW$227, DW_AT_TI_symbol_name("_N")
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$227, DW_AT_location[DW_OP_reg3]
;*******************************************************************************
;* FUNCTION NAME: shine_putbits                                                *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,AR2,XAR2,AR3,XAR3,*
;*                        SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL             *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_shine_putbits:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$228	.dwtag  DW_TAG_variable, DW_AT_name("bs")
	.dwattr $C$DW$228, DW_AT_TI_symbol_name("_bs")
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$128)
	.dwattr $C$DW$228, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$229	.dwtag  DW_TAG_variable, DW_AT_name("val")
	.dwattr $C$DW$229, DW_AT_TI_symbol_name("_val")
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$229, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$230	.dwtag  DW_TAG_variable, DW_AT_name("N")
	.dwattr $C$DW$230, DW_AT_TI_symbol_name("_N")
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$230, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV AC1, dbl(*SP(#4)) ; |923| 
        MOV AC0, dbl(*SP(#2)) ; |923| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./mp3_encode.c",line 931,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#4)), AC0 ; |931| 
        MOV dbl(*AR3(short(#4))), AC1 ; |931| 
        CMPU AC1 <= AC0, TC1 ; |931| 
        BCC $C$L24,TC1 ; |931| 
                                        ; branchcc occurs ; |931| 
	.dwpsn	file "./mp3_encode.c",line 933,column 9,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |933| 
        SUB AC0, dbl(*AR3(short(#4))), AC0 ; |933| 
        MOV AC0, dbl(*AR3(short(#4))) ; |933| 
	.dwpsn	file "./mp3_encode.c",line 934,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR2
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#2)), AC0 ; |934| 
        MOV *AR2(short(#5)), T1 ; |934| 

        SFTL AC0, T1, AC0 ; |934| 
||      MOV dbl(*AR3(short(#2))), AC1 ; |934| 

        OR AC1, AC0 ; |934| 
        MOV AC0, dbl(*AR3(short(#2))) ; |934| 
	.dwpsn	file "./mp3_encode.c",line 935,column 5,is_stmt
        B $C$L27  ; |935| 
                                        ; branch occurs ; |935| 
$C$L24:    
	.dwpsn	file "./mp3_encode.c",line 938,column 9,is_stmt
        MOV *AR3(short(#7)), AR2 ; |938| 

        ADD #2, AR2 ; |938| 
||      MOV *AR3(short(#6)), AR1 ; |938| 

        CMPU AR2 < AR1, TC1 ; |938| 
        BCC $C$L25,TC1 ; |938| 
                                        ; branchcc occurs ; |938| 
	.dwpsn	file "./mp3_encode.c",line 941,column 13,is_stmt
$C$DW$231	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$231, DW_AT_low_pc(0x00)
	.dwattr $C$DW$231, DW_AT_name("_exit")
	.dwattr $C$DW$231, DW_AT_TI_call

        CALL #_exit ; |941| 
||      MOV #1, T0

                                        ; call occurs [#_exit] ; |941| 
$C$L25:    
	.dwpsn	file "./mp3_encode.c",line 946,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#4))), AC0 ; |946| 
        SUB AC0, dbl(*SP(#4)), AC0 ; |946| 
        MOV AC0, dbl(*SP(#4)) ; |946| 
	.dwpsn	file "./mp3_encode.c",line 947,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#4)), AC0 ; |947| 
        NEG AC0, AC0 ; |947| 

        MOV dbl(*SP(#2)), AC0 ; |947| 
||      MOV AC0, T1 ; |947| 

        SFTL AC0, T1, AC0 ; |947| 
||      MOV dbl(*AR3(short(#2))), AC1 ; |947| 

        OR AC1, AC0 ; |947| 
        MOV AC0, dbl(*AR3(short(#2))) ; |947| 
	.dwpsn	file "./mp3_encode.c",line 951,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), AC0 ; |951| 

        MOV dbl(*AR3(short(#2))), AC0 ; |951| 
||      SFTL AC0, #-12, AC1 ; |951| 

        SFTL AC0, #-4, AC0 ; |951| 
||      MOV *AR3(short(#7)), T0 ; |951| 

        AND #0xff00, AC0, AC0 ; |951| 

        MOV dbl(*AR3(short(#2))), AC1 ; |951| 
||      OR AC1, AC0 ; |951| 

        AND #0xff00, AC1, AC1 ; |951| 

        MOV dbl(*AR3(short(#2))), AC1 ; |951| 
||      OR AC1 << #4, AC0 ; |951| 

        MOV dbl(*AR3), XAR3
        OR AC1 << #12, AC0 ; |951| 
        MOV AC0, dbl(*AR3(T0)) ; |951| 
	.dwpsn	file "./mp3_encode.c",line 953,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        ADD #2, *AR3(short(#7)) ; |953| 
	.dwpsn	file "./mp3_encode.c",line 954,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #32, AC0 ; |954| 
        SUB dbl(*SP(#4)), AC0, AC0 ; |954| 
        MOV AC0, dbl(*AR3(short(#4))) ; |954| 
	.dwpsn	file "./mp3_encode.c",line 955,column 9,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |955| 
        BCC $C$L26,AC0 == #0 ; |955| 
                                        ; branchcc occurs ; |955| 
	.dwpsn	file "./mp3_encode.c",line 956,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#2)), AC0 ; |956| 
        MOV *AR3(short(#5)), T1 ; |956| 
        SFTL AC0, T1, AC0 ; |956| 
        MOV AC0, dbl(*AR3(short(#2))) ; |956| 
        B $C$L27  ; |956| 
                                        ; branch occurs ; |956| 
$C$L26:    
	.dwpsn	file "./mp3_encode.c",line 958,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, AC0 ; |958| 
        MOV AC0, dbl(*AR3(short(#2))) ; |958| 
	.dwpsn	file "./mp3_encode.c",line 960,column 1,is_stmt
$C$L27:    
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$232	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$232, DW_AT_low_pc(0x00)
	.dwattr $C$DW$232, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$224, DW_AT_TI_end_file("./mp3_encode.c")
	.dwattr $C$DW$224, DW_AT_TI_end_line(0x3c0)
	.dwattr $C$DW$224, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$224

	.sect	".text"
	.global	_shine_get_bits_count

$C$DW$233	.dwtag  DW_TAG_subprogram, DW_AT_name("shine_get_bits_count")
	.dwattr $C$DW$233, DW_AT_low_pc(_shine_get_bits_count)
	.dwattr $C$DW$233, DW_AT_high_pc(0x00)
	.dwattr $C$DW$233, DW_AT_TI_symbol_name("_shine_get_bits_count")
	.dwattr $C$DW$233, DW_AT_external
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$233, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$233, DW_AT_TI_begin_line(0x3c2)
	.dwattr $C$DW$233, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$233, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./mp3_encode.c",line 963,column 1,is_stmt,address _shine_get_bits_count

	.dwfde $C$DW$CIE, _shine_get_bits_count
$C$DW$234	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bs")
	.dwattr $C$DW$234, DW_AT_TI_symbol_name("_bs")
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$128)
	.dwattr $C$DW$234, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: shine_get_bits_count                                         *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AR0,XAR0,AR1,AR2,XAR2,AR3,XAR3,SP,CARRY,M40, *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_shine_get_bits_count:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$235	.dwtag  DW_TAG_variable, DW_AT_name("bs")
	.dwattr $C$DW$235, DW_AT_TI_symbol_name("_bs")
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$128)
	.dwattr $C$DW$235, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./mp3_encode.c",line 964,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR2
        MOV dbl(*SP(#0)), XAR3
        MOV *AR2(short(#7)) << #3, AC0 ; |964| 
        ADD #32, AC0, AR1 ; |964| 
        MOV AR1, AC0
        SUB dbl(*AR3(short(#4))), AC0, AC0 ; |964| 
	.dwpsn	file "./mp3_encode.c",line 965,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$236	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$236, DW_AT_low_pc(0x00)
	.dwattr $C$DW$236, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$233, DW_AT_TI_end_file("./mp3_encode.c")
	.dwattr $C$DW$233, DW_AT_TI_end_line(0x3c5)
	.dwattr $C$DW$233, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$233

	.sect	".text"
	.global	_shine_format_bitstream

$C$DW$237	.dwtag  DW_TAG_subprogram, DW_AT_name("shine_format_bitstream")
	.dwattr $C$DW$237, DW_AT_low_pc(_shine_format_bitstream)
	.dwattr $C$DW$237, DW_AT_high_pc(0x00)
	.dwattr $C$DW$237, DW_AT_TI_symbol_name("_shine_format_bitstream")
	.dwattr $C$DW$237, DW_AT_external
	.dwattr $C$DW$237, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$237, DW_AT_TI_begin_line(0x3dc)
	.dwattr $C$DW$237, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$237, DW_AT_TI_max_frame_size(0x0e)
	.dwpsn	file "./mp3_encode.c",line 989,column 1,is_stmt,address _shine_format_bitstream

	.dwfde $C$DW$CIE, _shine_format_bitstream
$C$DW$238	.dwtag  DW_TAG_formal_parameter, DW_AT_name("config")
	.dwattr $C$DW$238, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$238, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$238, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: shine_format_bitstream                                       *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR3,XAR3,SP,CARRY,   *
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 14 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (12 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_shine_format_bitstream:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-13, SP
	.dwcfi	cfa_offset, 14
$C$DW$239	.dwtag  DW_TAG_variable, DW_AT_name("config")
	.dwattr $C$DW$239, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$239, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$240	.dwtag  DW_TAG_variable, DW_AT_name("gr")
	.dwattr $C$DW$240, DW_AT_TI_symbol_name("_gr")
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$240, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$241	.dwtag  DW_TAG_variable, DW_AT_name("ch")
	.dwattr $C$DW$241, DW_AT_TI_symbol_name("_ch")
	.dwattr $C$DW$241, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$241, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$242	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$242, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$242, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$242, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./mp3_encode.c",line 992,column 10,is_stmt
        MOV #0, AC0 ; |992| 
        MOV AC0, dbl(*SP(#4)) ; |992| 
	.dwpsn	file "./mp3_encode.c",line 992,column 18,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |992| 
        BCC $C$L34,AC0 > #0 ; |992| 
                                        ; branchcc occurs ; |992| 
$C$L28:    
$C$DW$L$_shine_format_bitstream$2$B:
	.dwpsn	file "./mp3_encode.c",line 993,column 14,is_stmt
        MOV #0, AC0 ; |993| 
        MOV AC0, dbl(*SP(#2)) ; |993| 
	.dwpsn	file "./mp3_encode.c",line 993,column 22,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#2)), AC1 ; |993| 
        MOV *AR3(#722), AC0 ; |993| 
        CMP AC1 >= AC0, TC1 ; |993| 
        BCC $C$L33,TC1 ; |993| 
                                        ; branchcc occurs ; |993| 
$C$DW$L$_shine_format_bitstream$2$E:
$C$L29:    
$C$DW$L$_shine_format_bitstream$3$B:

$C$DW$243	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$244	.dwtag  DW_TAG_variable, DW_AT_name("pi")
	.dwattr $C$DW$244, DW_AT_TI_symbol_name("_pi")
	.dwattr $C$DW$244, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$244, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$245	.dwtag  DW_TAG_variable, DW_AT_name("pr")
	.dwattr $C$DW$245, DW_AT_TI_symbol_name("_pr")
	.dwattr $C$DW$245, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$245, DW_AT_location[DW_OP_bregx 0x24 10]
	.dwpsn	file "./mp3_encode.c",line 995,column 22,is_stmt
        MOV *SP(#5) << #16, AC0
        MPYK #1152, AC0, AC0 ; |995| 
        MOV AC0, AR1 ; |995| 
        MOV *SP(#3) << #16, AC0
        MPYK #1152, AC0, AC0 ; |995| 

        MOV AC0, AR1 ; |995| 
||      AADD AR1, AR3 ; |995| 

        AADD AR1, AR3 ; |995| 
        AMAR *+AR3(#7272) ; |995| 
        MOV XAR3, dbl(*SP(#8))
	.dwpsn	file "./mp3_encode.c",line 996,column 22,is_stmt
        MOV *SP(#5) << #16, AC0
        MOV dbl(*SP(#0)), XAR3
        MPYK #1152, AC0, AC0 ; |996| 
        MOV AC0, AR1 ; |996| 
        MOV *SP(#3) << #16, AC0
        MPYK #1152, AC0, AC0 ; |996| 

        MOV AC0, AR1 ; |996| 
||      AADD AR1, AR3 ; |996| 

        AADD AR1, AR3 ; |996| 
        AMAR *+AR3(#10728) ; |996| 
        MOV XAR3, dbl(*SP(#10))
	.dwpsn	file "./mp3_encode.c",line 997,column 18,is_stmt
        MOV #0, AC0 ; |997| 
        MOV AC0, dbl(*SP(#6)) ; |997| 
	.dwpsn	file "./mp3_encode.c",line 997,column 25,is_stmt
        MOV #576, AC0 ; |997| 
        MOV dbl(*SP(#6)), AC1 ; |997| 
        CMP AC1 >= AC0, TC1 ; |997| 
        BCC $C$L32,TC1 ; |997| 
                                        ; branchcc occurs ; |997| 
$C$DW$L$_shine_format_bitstream$3$E:
$C$L30:    
$C$DW$L$_shine_format_bitstream$4$B:
	.dwpsn	file "./mp3_encode.c",line 999,column 17,is_stmt
        MOV dbl(*SP(#10)), XAR3
        MOV *SP(#7), T0 ; |999| 
        SFTL T0, #1 ; |999| 
        MOV dbl(*AR3(T0)), AC0 ; |999| 
        BCC $C$L31,AC0 >= #0 ; |999| 
                                        ; branchcc occurs ; |999| 
$C$DW$L$_shine_format_bitstream$4$E:
$C$DW$L$_shine_format_bitstream$5$B:
        MOV dbl(*SP(#8)), XAR3
        MOV *SP(#7), T0 ; |999| 
        SFTL T0, #1 ; |999| 
        MOV dbl(*AR3(T0)), AC0 ; |999| 
        BCC $C$L31,AC0 <= #0 ; |999| 
                                        ; branchcc occurs ; |999| 
$C$DW$L$_shine_format_bitstream$5$E:
$C$DW$L$_shine_format_bitstream$6$B:
	.dwpsn	file "./mp3_encode.c",line 1000,column 21,is_stmt
        MOV *SP(#7) << #1, AC0 ; |1000| 
        MOV AC0, T0 ; |1000| 
        MOV dbl(*AR3(T0)), AC1 ; |1000| 
        NEG AC1, AC1 ; |1000| 
        MOV AC1, dbl(*AR3(T0)) ; |1000| 
$C$DW$L$_shine_format_bitstream$6$E:
$C$L31:    
$C$DW$L$_shine_format_bitstream$7$B:
	.dwpsn	file "./mp3_encode.c",line 997,column 43,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |997| 
        ADD #1, AC0 ; |997| 
        MOV AC0, dbl(*SP(#6)) ; |997| 
	.dwpsn	file "./mp3_encode.c",line 997,column 25,is_stmt
        MOV dbl(*SP(#6)), AC1 ; |997| 
        MOV #576, AC0 ; |997| 
        CMP AC1 < AC0, TC1 ; |997| 
        BCC $C$L30,TC1 ; |997| 
                                        ; branchcc occurs ; |997| 
$C$DW$L$_shine_format_bitstream$7$E:
$C$L32:    
$C$DW$L$_shine_format_bitstream$8$B:
	.dwendtag $C$DW$243

	.dwpsn	file "./mp3_encode.c",line 993,column 60,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |993| 
        ADD #1, AC0 ; |993| 
        MOV AC0, dbl(*SP(#2)) ; |993| 
	.dwpsn	file "./mp3_encode.c",line 993,column 22,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#2)), AC1 ; |993| 
        MOV *AR3(#722), AC0 ; |993| 
        CMP AC1 < AC0, TC1 ; |993| 
        BCC $C$L29,TC1 ; |993| 
                                        ; branchcc occurs ; |993| 
$C$DW$L$_shine_format_bitstream$8$E:
$C$L33:    
$C$DW$L$_shine_format_bitstream$9$B:
	.dwpsn	file "./mp3_encode.c",line 992,column 37,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |992| 
        ADD #1, AC0 ; |992| 
        MOV AC0, dbl(*SP(#4)) ; |992| 
	.dwpsn	file "./mp3_encode.c",line 992,column 18,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |992| 
        BCC $C$L28,AC0 <= #0 ; |992| 
                                        ; branchcc occurs ; |992| 
$C$DW$L$_shine_format_bitstream$9$E:
$C$L34:    
	.dwpsn	file "./mp3_encode.c",line 1004,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$246	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$246, DW_AT_low_pc(0x00)
	.dwattr $C$DW$246, DW_AT_name("_encodeSideInfo")
	.dwattr $C$DW$246, DW_AT_TI_call
        CALL #_encodeSideInfo ; |1004| 
                                        ; call occurs [#_encodeSideInfo] ; |1004| 
	.dwpsn	file "./mp3_encode.c",line 1005,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$247	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$247, DW_AT_low_pc(0x00)
	.dwattr $C$DW$247, DW_AT_name("_encodeMainData")
	.dwattr $C$DW$247, DW_AT_TI_call
        CALL #_encodeMainData ; |1005| 
                                        ; call occurs [#_encodeMainData] ; |1005| 
	.dwpsn	file "./mp3_encode.c",line 1006,column 1,is_stmt
        AADD #13, SP
	.dwcfi	cfa_offset, 1
$C$DW$248	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$248, DW_AT_low_pc(0x00)
	.dwattr $C$DW$248, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$249	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$249, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L28:1:1738864582")
	.dwattr $C$DW$249, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$249, DW_AT_TI_begin_line(0x3e0)
	.dwattr $C$DW$249, DW_AT_TI_end_line(0x3ea)
$C$DW$250	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$250, DW_AT_low_pc($C$DW$L$_shine_format_bitstream$2$B)
	.dwattr $C$DW$250, DW_AT_high_pc($C$DW$L$_shine_format_bitstream$2$E)
$C$DW$251	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$251, DW_AT_low_pc($C$DW$L$_shine_format_bitstream$9$B)
	.dwattr $C$DW$251, DW_AT_high_pc($C$DW$L$_shine_format_bitstream$9$E)

$C$DW$252	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$252, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L29:2:1738864582")
	.dwattr $C$DW$252, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$252, DW_AT_TI_begin_line(0x3e1)
	.dwattr $C$DW$252, DW_AT_TI_end_line(0x3ea)
$C$DW$253	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$253, DW_AT_low_pc($C$DW$L$_shine_format_bitstream$3$B)
	.dwattr $C$DW$253, DW_AT_high_pc($C$DW$L$_shine_format_bitstream$3$E)
$C$DW$254	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$254, DW_AT_low_pc($C$DW$L$_shine_format_bitstream$8$B)
	.dwattr $C$DW$254, DW_AT_high_pc($C$DW$L$_shine_format_bitstream$8$E)

$C$DW$255	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$255, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L30:3:1738864582")
	.dwattr $C$DW$255, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$255, DW_AT_TI_begin_line(0x3e5)
	.dwattr $C$DW$255, DW_AT_TI_end_line(0x3e9)
$C$DW$256	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$256, DW_AT_low_pc($C$DW$L$_shine_format_bitstream$4$B)
	.dwattr $C$DW$256, DW_AT_high_pc($C$DW$L$_shine_format_bitstream$4$E)
$C$DW$257	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$257, DW_AT_low_pc($C$DW$L$_shine_format_bitstream$5$B)
	.dwattr $C$DW$257, DW_AT_high_pc($C$DW$L$_shine_format_bitstream$5$E)
$C$DW$258	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$258, DW_AT_low_pc($C$DW$L$_shine_format_bitstream$6$B)
	.dwattr $C$DW$258, DW_AT_high_pc($C$DW$L$_shine_format_bitstream$6$E)
$C$DW$259	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$259, DW_AT_low_pc($C$DW$L$_shine_format_bitstream$7$B)
	.dwattr $C$DW$259, DW_AT_high_pc($C$DW$L$_shine_format_bitstream$7$E)
	.dwendtag $C$DW$255

	.dwendtag $C$DW$252

	.dwendtag $C$DW$249

	.dwattr $C$DW$237, DW_AT_TI_end_file("./mp3_encode.c")
	.dwattr $C$DW$237, DW_AT_TI_end_line(0x3ee)
	.dwattr $C$DW$237, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$237

	.sect	".text"

$C$DW$260	.dwtag  DW_TAG_subprogram, DW_AT_name("encodeMainData")
	.dwattr $C$DW$260, DW_AT_low_pc(_encodeMainData)
	.dwattr $C$DW$260, DW_AT_high_pc(0x00)
	.dwattr $C$DW$260, DW_AT_TI_symbol_name("_encodeMainData")
	.dwattr $C$DW$260, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$260, DW_AT_TI_begin_line(0x3f0)
	.dwattr $C$DW$260, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$260, DW_AT_TI_max_frame_size(0x30)
	.dwpsn	file "./mp3_encode.c",line 1009,column 1,is_stmt,address _encodeMainData

	.dwfde $C$DW$CIE, _encodeMainData
$C$DW$261	.dwtag  DW_TAG_formal_parameter, DW_AT_name("config")
	.dwattr $C$DW$261, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$261, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$261, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: encodeMainData                                               *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,   *
;*                        XAR3,SP,CSR,RPTC,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,   *
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 48 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (46 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_encodeMainData:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-47, SP
	.dwcfi	cfa_offset, 48
$C$DW$262	.dwtag  DW_TAG_variable, DW_AT_name("config")
	.dwattr $C$DW$262, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$262, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$262, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$263	.dwtag  DW_TAG_variable, DW_AT_name("gr")
	.dwattr $C$DW$263, DW_AT_TI_symbol_name("_gr")
	.dwattr $C$DW$263, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$263, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$264	.dwtag  DW_TAG_variable, DW_AT_name("ch")
	.dwattr $C$DW$264, DW_AT_TI_symbol_name("_ch")
	.dwattr $C$DW$264, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$264, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$265	.dwtag  DW_TAG_variable, DW_AT_name("sfb")
	.dwattr $C$DW$265, DW_AT_TI_symbol_name("_sfb")
	.dwattr $C$DW$265, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$265, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$266	.dwtag  DW_TAG_variable, DW_AT_name("si")
	.dwattr $C$DW$266, DW_AT_TI_symbol_name("_si")
	.dwattr $C$DW$266, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$266, DW_AT_location[DW_OP_bregx 0x24 8]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./mp3_encode.c",line 1011,column 23,is_stmt
        MOV dbl(*SP(#0)), XAR3
        AMAR *+AR3(#11888) ; |1011| 

        RPT #28   ; |1011| 
||      AMAR *SP(#8), XAR2

                                            ; loop starts ; |1011| 
$C$L35:    
$C$DW$L$_encodeMainData$2$B:
            MOV *AR3+, *AR2+ ; |1011| 
                                        ; loop ends ; |1011| 
$C$DW$L$_encodeMainData$2$E:
$C$L36:    
	.dwpsn	file "./mp3_encode.c",line 1013,column 10,is_stmt
        MOV #0, AC0 ; |1013| 
        MOV AC0, dbl(*SP(#2)) ; |1013| 
	.dwpsn	file "./mp3_encode.c",line 1013,column 18,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#2)), AC1 ; |1013| 
        MOV *AR3(#722), AC0 ; |1013| 
        CMP AC1 >= AC0, TC1 ; |1013| 
        BCC $C$L52,TC1 ; |1013| 
                                        ; branchcc occurs ; |1013| 
$C$L37:    
$C$DW$L$_encodeMainData$4$B:
	.dwpsn	file "./mp3_encode.c",line 1015,column 14,is_stmt
        MOV #0, AC0 ; |1015| 
        MOV AC0, dbl(*SP(#4)) ; |1015| 
	.dwpsn	file "./mp3_encode.c",line 1015,column 22,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |1015| 
        BCC $C$L51,AC0 > #0 ; |1015| 
                                        ; branchcc occurs ; |1015| 
$C$DW$L$_encodeMainData$4$E:
$C$L38:    
$C$DW$L$_encodeMainData$5$B:

$C$DW$267	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$268	.dwtag  DW_TAG_variable, DW_AT_name("gi")
	.dwattr $C$DW$268, DW_AT_TI_symbol_name("_gi")
	.dwattr $C$DW$268, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$268, DW_AT_location[DW_OP_bregx 0x24 38]
$C$DW$269	.dwtag  DW_TAG_variable, DW_AT_name("slen1")
	.dwattr $C$DW$269, DW_AT_TI_symbol_name("_slen1")
	.dwattr $C$DW$269, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$269, DW_AT_location[DW_OP_bregx 0x24 40]
$C$DW$270	.dwtag  DW_TAG_variable, DW_AT_name("slen2")
	.dwattr $C$DW$270, DW_AT_TI_symbol_name("_slen2")
	.dwattr $C$DW$270, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$270, DW_AT_location[DW_OP_bregx 0x24 42]
$C$DW$271	.dwtag  DW_TAG_variable, DW_AT_name("ix")
	.dwattr $C$DW$271, DW_AT_TI_symbol_name("_ix")
	.dwattr $C$DW$271, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$271, DW_AT_location[DW_OP_bregx 0x24 44]
	.dwpsn	file "./mp3_encode.c",line 1017,column 22,is_stmt
        MPYMK *SP(#3), #23, AC0 ; |1017| 
        MOV AC0, AR1 ; |1017| 
        AMAR *SP(#14), XAR3
        MPYMK *SP(#5), #23, AC0 ; |1017| 

        MOV AC0, AR1 ; |1017| 
||      AADD AR1, AR3 ; |1017| 

        MOV XAR3, dbl(*SP(#38))
||      AADD AR1, AR3 ; |1017| 

	.dwpsn	file "./mp3_encode.c",line 1018,column 22,is_stmt
        MOV *AR3(short(#4)), T0 ; |1018| 
        SFTL T0, #1 ; |1018| 
        AMOV #_shine_slen1_tab, XAR3 ; |1018| 
        MOV dbl(*AR3(T0)), AC0 ; |1018| 
        MOV AC0, dbl(*SP(#40)) ; |1018| 
	.dwpsn	file "./mp3_encode.c",line 1019,column 22,is_stmt
        MOV dbl(*SP(#38)), XAR3
        MOV *AR3(short(#4)), T0 ; |1019| 
        SFTL T0, #1 ; |1019| 
        AMOV #_shine_slen2_tab, XAR3 ; |1019| 
        MOV dbl(*AR3(T0)), AC0 ; |1019| 
        MOV AC0, dbl(*SP(#42)) ; |1019| 
	.dwpsn	file "./mp3_encode.c",line 1020,column 22,is_stmt
        MOV *SP(#5) << #16, AC0
        MOV dbl(*SP(#0)), XAR3
        MPYK #1152, AC0, AC0 ; |1020| 
        MOV AC0, AR1 ; |1020| 
        MOV *SP(#3) << #16, AC0
        MPYK #1152, AC0, AC0 ; |1020| 

        MOV AC0, AR1 ; |1020| 
||      AADD AR1, AR3 ; |1020| 

        AADD AR1, AR3 ; |1020| 
        AMAR *+AR3(#7272) ; |1020| 
        MOV XAR3, dbl(*SP(#44))
	.dwpsn	file "./mp3_encode.c",line 1022,column 13,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |1022| 
        BCC $C$L39,AC0 == #0 ; |1022| 
                                        ; branchcc occurs ; |1022| 
$C$DW$L$_encodeMainData$5$E:
$C$DW$L$_encodeMainData$6$B:
        MOV *SP(#5) << #2, AC0 ; |1022| 
        MOV AC0, T0 ; |1022| 
        AMAR *SP(#10), XAR3
        MOV *AR3(T0), AR1 ; |1022| 
        BCC $C$L41,AR1 != #0 ; |1022| 
                                        ; branchcc occurs ; |1022| 
$C$DW$L$_encodeMainData$6$E:
$C$L39:    
$C$DW$L$_encodeMainData$7$B:
	.dwpsn	file "./mp3_encode.c",line 1023,column 22,is_stmt
        MOV #0, AC0 ; |1023| 
        MOV AC0, dbl(*SP(#6)) ; |1023| 
	.dwpsn	file "./mp3_encode.c",line 1023,column 31,is_stmt

        MOV #6, AC0 ; |1023| 
||      MOV dbl(*SP(#6)), AC1 ; |1023| 

        CMP AC1 >= AC0, TC1 ; |1023| 
        BCC $C$L41,TC1 ; |1023| 
                                        ; branchcc occurs ; |1023| 
$C$DW$L$_encodeMainData$7$E:
$C$L40:    
$C$DW$L$_encodeMainData$8$B:
	.dwpsn	file "./mp3_encode.c",line 1024,column 21,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#3), #44, AC0 ; |1024| 
        MOV AC0, AR1 ; |1024| 
        MPYMK *SP(#5), #44, AC0 ; |1024| 

        MOV AC0, AR1 ; |1024| 
||      AADD AR1, AR3 ; |1024| 

        MOV dbl(*SP(#0)), XAR0

        MOV *SP(#7), AR1 ; |1024| 
||      AADD AR1, AR3 ; |1024| 

        SFTL AR1, #1 ; |1024| 
        AMAR *+AR0(#724) ; |1024| 

        AADD AR1, AR3 ; |1024| 
||      MOV dbl(*SP(#40)), AC1 ; |1024| 

        MOV dbl(*AR3(#732)), AC0 ; |1024| 
$C$DW$272	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$272, DW_AT_low_pc(0x00)
	.dwattr $C$DW$272, DW_AT_name("_shine_putbits")
	.dwattr $C$DW$272, DW_AT_TI_call
        CALL #_shine_putbits ; |1024| 
                                        ; call occurs [#_shine_putbits] ; |1024| 
	.dwpsn	file "./mp3_encode.c",line 1023,column 40,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |1023| 
        ADD #1, AC0 ; |1023| 
        MOV AC0, dbl(*SP(#6)) ; |1023| 
	.dwpsn	file "./mp3_encode.c",line 1023,column 31,is_stmt

        MOV dbl(*SP(#6)), AC1 ; |1023| 
||      MOV #6, AC0 ; |1023| 

        CMP AC1 < AC0, TC1 ; |1023| 
        BCC $C$L40,TC1 ; |1023| 
                                        ; branchcc occurs ; |1023| 
$C$DW$L$_encodeMainData$8$E:
$C$L41:    
$C$DW$L$_encodeMainData$9$B:
	.dwpsn	file "./mp3_encode.c",line 1025,column 13,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |1025| 
        BCC $C$L42,AC0 == #0 ; |1025| 
                                        ; branchcc occurs ; |1025| 
$C$DW$L$_encodeMainData$9$E:
$C$DW$L$_encodeMainData$10$B:
        MOV *SP(#5) << #2, AC0 ; |1025| 
        MOV AC0, T0 ; |1025| 
        AMAR *SP(#11), XAR3
        MOV *AR3(T0), AR1 ; |1025| 
        BCC $C$L44,AR1 != #0 ; |1025| 
                                        ; branchcc occurs ; |1025| 
$C$DW$L$_encodeMainData$10$E:
$C$L42:    
$C$DW$L$_encodeMainData$11$B:
	.dwpsn	file "./mp3_encode.c",line 1026,column 22,is_stmt
        MOV #6, AC0 ; |1026| 
        MOV AC0, dbl(*SP(#6)) ; |1026| 
	.dwpsn	file "./mp3_encode.c",line 1026,column 31,is_stmt

        MOV #11, AC0 ; |1026| 
||      MOV dbl(*SP(#6)), AC1 ; |1026| 

        CMP AC1 >= AC0, TC1 ; |1026| 
        BCC $C$L44,TC1 ; |1026| 
                                        ; branchcc occurs ; |1026| 
$C$DW$L$_encodeMainData$11$E:
$C$L43:    
$C$DW$L$_encodeMainData$12$B:
	.dwpsn	file "./mp3_encode.c",line 1027,column 21,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#3), #44, AC0 ; |1027| 
        MOV AC0, AR1 ; |1027| 
        MPYMK *SP(#5), #44, AC0 ; |1027| 

        MOV AC0, AR1 ; |1027| 
||      AADD AR1, AR3 ; |1027| 

        MOV dbl(*SP(#0)), XAR0

        MOV *SP(#7), AR1 ; |1027| 
||      AADD AR1, AR3 ; |1027| 

        SFTL AR1, #1 ; |1027| 
        AMAR *+AR0(#724) ; |1027| 

        AADD AR1, AR3 ; |1027| 
||      MOV dbl(*SP(#40)), AC1 ; |1027| 

        MOV dbl(*AR3(#732)), AC0 ; |1027| 
$C$DW$273	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$273, DW_AT_low_pc(0x00)
	.dwattr $C$DW$273, DW_AT_name("_shine_putbits")
	.dwattr $C$DW$273, DW_AT_TI_call
        CALL #_shine_putbits ; |1027| 
                                        ; call occurs [#_shine_putbits] ; |1027| 
	.dwpsn	file "./mp3_encode.c",line 1026,column 41,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |1026| 
        ADD #1, AC0 ; |1026| 
        MOV AC0, dbl(*SP(#6)) ; |1026| 
	.dwpsn	file "./mp3_encode.c",line 1026,column 31,is_stmt

        MOV dbl(*SP(#6)), AC1 ; |1026| 
||      MOV #11, AC0 ; |1026| 

        CMP AC1 < AC0, TC1 ; |1026| 
        BCC $C$L43,TC1 ; |1026| 
                                        ; branchcc occurs ; |1026| 
$C$DW$L$_encodeMainData$12$E:
$C$L44:    
$C$DW$L$_encodeMainData$13$B:
	.dwpsn	file "./mp3_encode.c",line 1028,column 13,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |1028| 
        BCC $C$L45,AC0 == #0 ; |1028| 
                                        ; branchcc occurs ; |1028| 
$C$DW$L$_encodeMainData$13$E:
$C$DW$L$_encodeMainData$14$B:
        MOV *SP(#5) << #2, AC0 ; |1028| 
        MOV AC0, T0 ; |1028| 
        AMAR *SP(#12), XAR3
        MOV *AR3(T0), AR1 ; |1028| 
        BCC $C$L47,AR1 != #0 ; |1028| 
                                        ; branchcc occurs ; |1028| 
$C$DW$L$_encodeMainData$14$E:
$C$L45:    
$C$DW$L$_encodeMainData$15$B:
	.dwpsn	file "./mp3_encode.c",line 1029,column 22,is_stmt
        MOV #11, AC0 ; |1029| 
        MOV AC0, dbl(*SP(#6)) ; |1029| 
	.dwpsn	file "./mp3_encode.c",line 1029,column 32,is_stmt
        MOV dbl(*SP(#6)), AC1 ; |1029| 
        MOV #16, AC0 ; |1029| 
        CMP AC1 >= AC0, TC1 ; |1029| 
        BCC $C$L47,TC1 ; |1029| 
                                        ; branchcc occurs ; |1029| 
$C$DW$L$_encodeMainData$15$E:
$C$L46:    
$C$DW$L$_encodeMainData$16$B:
	.dwpsn	file "./mp3_encode.c",line 1030,column 21,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#3), #44, AC0 ; |1030| 
        MOV AC0, AR1 ; |1030| 
        MPYMK *SP(#5), #44, AC0 ; |1030| 

        MOV AC0, AR1 ; |1030| 
||      AADD AR1, AR3 ; |1030| 

        MOV dbl(*SP(#0)), XAR0

        MOV *SP(#7), AR1 ; |1030| 
||      AADD AR1, AR3 ; |1030| 

        SFTL AR1, #1 ; |1030| 
        AMAR *+AR0(#724) ; |1030| 

        AADD AR1, AR3 ; |1030| 
||      MOV dbl(*SP(#42)), AC1 ; |1030| 

        MOV dbl(*AR3(#732)), AC0 ; |1030| 
$C$DW$274	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$274, DW_AT_low_pc(0x00)
	.dwattr $C$DW$274, DW_AT_name("_shine_putbits")
	.dwattr $C$DW$274, DW_AT_TI_call
        CALL #_shine_putbits ; |1030| 
                                        ; call occurs [#_shine_putbits] ; |1030| 
	.dwpsn	file "./mp3_encode.c",line 1029,column 42,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |1029| 
        ADD #1, AC0 ; |1029| 
        MOV AC0, dbl(*SP(#6)) ; |1029| 
	.dwpsn	file "./mp3_encode.c",line 1029,column 32,is_stmt
        MOV #16, AC0 ; |1029| 
        MOV dbl(*SP(#6)), AC1 ; |1029| 
        CMP AC1 < AC0, TC1 ; |1029| 
        BCC $C$L46,TC1 ; |1029| 
                                        ; branchcc occurs ; |1029| 
$C$DW$L$_encodeMainData$16$E:
$C$L47:    
$C$DW$L$_encodeMainData$17$B:
	.dwpsn	file "./mp3_encode.c",line 1031,column 13,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |1031| 
        BCC $C$L48,AC0 == #0 ; |1031| 
                                        ; branchcc occurs ; |1031| 
$C$DW$L$_encodeMainData$17$E:
$C$DW$L$_encodeMainData$18$B:
        MOV *SP(#5) << #2, AC0 ; |1031| 
        MOV AC0, T0 ; |1031| 
        AMAR *SP(#13), XAR3
        MOV *AR3(T0), AR1 ; |1031| 
        BCC $C$L50,AR1 != #0 ; |1031| 
                                        ; branchcc occurs ; |1031| 
$C$DW$L$_encodeMainData$18$E:
$C$L48:    
$C$DW$L$_encodeMainData$19$B:
	.dwpsn	file "./mp3_encode.c",line 1032,column 22,is_stmt
        MOV #16, AC0 ; |1032| 
        MOV AC0, dbl(*SP(#6)) ; |1032| 
	.dwpsn	file "./mp3_encode.c",line 1032,column 32,is_stmt
        MOV dbl(*SP(#6)), AC1 ; |1032| 
        MOV #21, AC0 ; |1032| 
        CMP AC1 >= AC0, TC1 ; |1032| 
        BCC $C$L50,TC1 ; |1032| 
                                        ; branchcc occurs ; |1032| 
$C$DW$L$_encodeMainData$19$E:
$C$L49:    
$C$DW$L$_encodeMainData$20$B:
	.dwpsn	file "./mp3_encode.c",line 1033,column 21,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#3), #44, AC0 ; |1033| 
        MOV AC0, AR1 ; |1033| 
        MPYMK *SP(#5), #44, AC0 ; |1033| 

        MOV AC0, AR1 ; |1033| 
||      AADD AR1, AR3 ; |1033| 

        MOV dbl(*SP(#0)), XAR0

        MOV *SP(#7), AR1 ; |1033| 
||      AADD AR1, AR3 ; |1033| 

        SFTL AR1, #1 ; |1033| 
        AMAR *+AR0(#724) ; |1033| 

        AADD AR1, AR3 ; |1033| 
||      MOV dbl(*SP(#42)), AC1 ; |1033| 

        MOV dbl(*AR3(#732)), AC0 ; |1033| 
$C$DW$275	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$275, DW_AT_low_pc(0x00)
	.dwattr $C$DW$275, DW_AT_name("_shine_putbits")
	.dwattr $C$DW$275, DW_AT_TI_call
        CALL #_shine_putbits ; |1033| 
                                        ; call occurs [#_shine_putbits] ; |1033| 
	.dwpsn	file "./mp3_encode.c",line 1032,column 42,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |1032| 
        ADD #1, AC0 ; |1032| 
        MOV AC0, dbl(*SP(#6)) ; |1032| 
	.dwpsn	file "./mp3_encode.c",line 1032,column 32,is_stmt
        MOV #21, AC0 ; |1032| 
        MOV dbl(*SP(#6)), AC1 ; |1032| 
        CMP AC1 < AC0, TC1 ; |1032| 
        BCC $C$L49,TC1 ; |1032| 
                                        ; branchcc occurs ; |1032| 
$C$DW$L$_encodeMainData$20$E:
$C$L50:    
$C$DW$L$_encodeMainData$21$B:
	.dwpsn	file "./mp3_encode.c",line 1035,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#44)), XAR1
        MOV dbl(*SP(#38)), XAR2
$C$DW$276	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$276, DW_AT_low_pc(0x00)
	.dwattr $C$DW$276, DW_AT_name("_Huffmancodebits")
	.dwattr $C$DW$276, DW_AT_TI_call
        CALL #_Huffmancodebits ; |1035| 
                                        ; call occurs [#_Huffmancodebits] ; |1035| 
	.dwendtag $C$DW$267

	.dwpsn	file "./mp3_encode.c",line 1015,column 41,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |1015| 
        ADD #1, AC0 ; |1015| 
        MOV AC0, dbl(*SP(#4)) ; |1015| 
	.dwpsn	file "./mp3_encode.c",line 1015,column 22,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |1015| 
        BCC $C$L38,AC0 <= #0 ; |1015| 
                                        ; branchcc occurs ; |1015| 
$C$DW$L$_encodeMainData$21$E:
$C$L51:    
$C$DW$L$_encodeMainData$22$B:
	.dwpsn	file "./mp3_encode.c",line 1013,column 56,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |1013| 
        ADD #1, AC0 ; |1013| 
        MOV AC0, dbl(*SP(#2)) ; |1013| 
	.dwpsn	file "./mp3_encode.c",line 1013,column 18,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#2)), AC1 ; |1013| 
        MOV *AR3(#722), AC0 ; |1013| 
        CMP AC1 < AC0, TC1 ; |1013| 
        BCC $C$L37,TC1 ; |1013| 
                                        ; branchcc occurs ; |1013| 
$C$DW$L$_encodeMainData$22$E:
	.dwpsn	file "./mp3_encode.c",line 1038,column 1,is_stmt
$C$L52:    
        AADD #47, SP
	.dwcfi	cfa_offset, 1
$C$DW$277	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$277, DW_AT_low_pc(0x00)
	.dwattr $C$DW$277, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$278	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$278, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L37:1:1738864582")
	.dwattr $C$DW$278, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$278, DW_AT_TI_begin_line(0x3f5)
	.dwattr $C$DW$278, DW_AT_TI_end_line(0x40d)
$C$DW$279	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$279, DW_AT_low_pc($C$DW$L$_encodeMainData$4$B)
	.dwattr $C$DW$279, DW_AT_high_pc($C$DW$L$_encodeMainData$4$E)
$C$DW$280	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$280, DW_AT_low_pc($C$DW$L$_encodeMainData$22$B)
	.dwattr $C$DW$280, DW_AT_high_pc($C$DW$L$_encodeMainData$22$E)

$C$DW$281	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$281, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L38:2:1738864582")
	.dwattr $C$DW$281, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$281, DW_AT_TI_begin_line(0x3f7)
	.dwattr $C$DW$281, DW_AT_TI_end_line(0x40c)
$C$DW$282	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$282, DW_AT_low_pc($C$DW$L$_encodeMainData$5$B)
	.dwattr $C$DW$282, DW_AT_high_pc($C$DW$L$_encodeMainData$5$E)
$C$DW$283	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$283, DW_AT_low_pc($C$DW$L$_encodeMainData$6$B)
	.dwattr $C$DW$283, DW_AT_high_pc($C$DW$L$_encodeMainData$6$E)
$C$DW$284	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$284, DW_AT_low_pc($C$DW$L$_encodeMainData$7$B)
	.dwattr $C$DW$284, DW_AT_high_pc($C$DW$L$_encodeMainData$7$E)
$C$DW$285	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$285, DW_AT_low_pc($C$DW$L$_encodeMainData$9$B)
	.dwattr $C$DW$285, DW_AT_high_pc($C$DW$L$_encodeMainData$9$E)
$C$DW$286	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$286, DW_AT_low_pc($C$DW$L$_encodeMainData$10$B)
	.dwattr $C$DW$286, DW_AT_high_pc($C$DW$L$_encodeMainData$10$E)
$C$DW$287	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$287, DW_AT_low_pc($C$DW$L$_encodeMainData$11$B)
	.dwattr $C$DW$287, DW_AT_high_pc($C$DW$L$_encodeMainData$11$E)
$C$DW$288	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$288, DW_AT_low_pc($C$DW$L$_encodeMainData$13$B)
	.dwattr $C$DW$288, DW_AT_high_pc($C$DW$L$_encodeMainData$13$E)
$C$DW$289	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$289, DW_AT_low_pc($C$DW$L$_encodeMainData$14$B)
	.dwattr $C$DW$289, DW_AT_high_pc($C$DW$L$_encodeMainData$14$E)
$C$DW$290	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$290, DW_AT_low_pc($C$DW$L$_encodeMainData$15$B)
	.dwattr $C$DW$290, DW_AT_high_pc($C$DW$L$_encodeMainData$15$E)
$C$DW$291	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$291, DW_AT_low_pc($C$DW$L$_encodeMainData$17$B)
	.dwattr $C$DW$291, DW_AT_high_pc($C$DW$L$_encodeMainData$17$E)
$C$DW$292	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$292, DW_AT_low_pc($C$DW$L$_encodeMainData$18$B)
	.dwattr $C$DW$292, DW_AT_high_pc($C$DW$L$_encodeMainData$18$E)
$C$DW$293	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$293, DW_AT_low_pc($C$DW$L$_encodeMainData$19$B)
	.dwattr $C$DW$293, DW_AT_high_pc($C$DW$L$_encodeMainData$19$E)
$C$DW$294	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$294, DW_AT_low_pc($C$DW$L$_encodeMainData$21$B)
	.dwattr $C$DW$294, DW_AT_high_pc($C$DW$L$_encodeMainData$21$E)

$C$DW$295	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$295, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L40:3:1738864582")
	.dwattr $C$DW$295, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$295, DW_AT_TI_begin_line(0x3ff)
	.dwattr $C$DW$295, DW_AT_TI_end_line(0x400)
$C$DW$296	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$296, DW_AT_low_pc($C$DW$L$_encodeMainData$8$B)
	.dwattr $C$DW$296, DW_AT_high_pc($C$DW$L$_encodeMainData$8$E)
	.dwendtag $C$DW$295


$C$DW$297	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$297, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L43:3:1738864582")
	.dwattr $C$DW$297, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$297, DW_AT_TI_begin_line(0x402)
	.dwattr $C$DW$297, DW_AT_TI_end_line(0x403)
$C$DW$298	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$298, DW_AT_low_pc($C$DW$L$_encodeMainData$12$B)
	.dwattr $C$DW$298, DW_AT_high_pc($C$DW$L$_encodeMainData$12$E)
	.dwendtag $C$DW$297


$C$DW$299	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$299, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L46:3:1738864582")
	.dwattr $C$DW$299, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$299, DW_AT_TI_begin_line(0x405)
	.dwattr $C$DW$299, DW_AT_TI_end_line(0x406)
$C$DW$300	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$300, DW_AT_low_pc($C$DW$L$_encodeMainData$16$B)
	.dwattr $C$DW$300, DW_AT_high_pc($C$DW$L$_encodeMainData$16$E)
	.dwendtag $C$DW$299


$C$DW$301	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$301, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L49:3:1738864582")
	.dwattr $C$DW$301, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$301, DW_AT_TI_begin_line(0x408)
	.dwattr $C$DW$301, DW_AT_TI_end_line(0x409)
$C$DW$302	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$302, DW_AT_low_pc($C$DW$L$_encodeMainData$20$B)
	.dwattr $C$DW$302, DW_AT_high_pc($C$DW$L$_encodeMainData$20$E)
	.dwendtag $C$DW$301

	.dwendtag $C$DW$281

	.dwendtag $C$DW$278


$C$DW$303	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$303, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L35:1:1738864582")
	.dwattr $C$DW$303, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$303, DW_AT_TI_begin_line(0x3f3)
	.dwattr $C$DW$303, DW_AT_TI_end_line(0x3f3)
$C$DW$304	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$304, DW_AT_low_pc($C$DW$L$_encodeMainData$2$B)
	.dwattr $C$DW$304, DW_AT_high_pc($C$DW$L$_encodeMainData$2$E)
	.dwendtag $C$DW$303

	.dwattr $C$DW$260, DW_AT_TI_end_file("./mp3_encode.c")
	.dwattr $C$DW$260, DW_AT_TI_end_line(0x40e)
	.dwattr $C$DW$260, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$260

	.sect	".text"

$C$DW$305	.dwtag  DW_TAG_subprogram, DW_AT_name("encodeSideInfo")
	.dwattr $C$DW$305, DW_AT_low_pc(_encodeSideInfo)
	.dwattr $C$DW$305, DW_AT_high_pc(0x00)
	.dwattr $C$DW$305, DW_AT_TI_symbol_name("_encodeSideInfo")
	.dwattr $C$DW$305, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$305, DW_AT_TI_begin_line(0x410)
	.dwattr $C$DW$305, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$305, DW_AT_TI_max_frame_size(0x2c)
	.dwpsn	file "./mp3_encode.c",line 1041,column 1,is_stmt,address _encodeSideInfo

	.dwfde $C$DW$CIE, _encodeSideInfo
$C$DW$306	.dwtag  DW_TAG_formal_parameter, DW_AT_name("config")
	.dwattr $C$DW$306, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$306, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$306, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: encodeSideInfo                                               *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,AR2,XAR2,AR3,XAR3,*
;*                        SP,CSR,RPTC,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL    *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 44 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (42 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_encodeSideInfo:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-43, SP
	.dwcfi	cfa_offset, 44
$C$DW$307	.dwtag  DW_TAG_variable, DW_AT_name("config")
	.dwattr $C$DW$307, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$307, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$307, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$308	.dwtag  DW_TAG_variable, DW_AT_name("gr")
	.dwattr $C$DW$308, DW_AT_TI_symbol_name("_gr")
	.dwattr $C$DW$308, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$308, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$309	.dwtag  DW_TAG_variable, DW_AT_name("ch")
	.dwattr $C$DW$309, DW_AT_TI_symbol_name("_ch")
	.dwattr $C$DW$309, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$309, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$310	.dwtag  DW_TAG_variable, DW_AT_name("scfsi_band")
	.dwattr $C$DW$310, DW_AT_TI_symbol_name("_scfsi_band")
	.dwattr $C$DW$310, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$310, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$311	.dwtag  DW_TAG_variable, DW_AT_name("region")
	.dwattr $C$DW$311, DW_AT_TI_symbol_name("_region")
	.dwattr $C$DW$311, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$311, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$312	.dwtag  DW_TAG_variable, DW_AT_name("si")
	.dwattr $C$DW$312, DW_AT_TI_symbol_name("_si")
	.dwattr $C$DW$312, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$312, DW_AT_location[DW_OP_bregx 0x24 10]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./mp3_encode.c",line 1043,column 23,is_stmt
        MOV dbl(*SP(#0)), XAR3
        AMAR *+AR3(#11888) ; |1043| 

        RPT #28   ; |1043| 
||      AMAR *SP(#10), XAR2

                                            ; loop starts ; |1043| 
$C$L53:    
$C$DW$L$_encodeSideInfo$2$B:
            MOV *AR3+, *AR2+ ; |1043| 
                                        ; loop ends ; |1043| 
$C$DW$L$_encodeSideInfo$2$E:
$C$L54:    
	.dwpsn	file "./mp3_encode.c",line 1045,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV #2047, AC0 ; |1045| 
        AMAR *+AR0(#724) ; |1045| 
$C$DW$313	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$313, DW_AT_low_pc(0x00)
	.dwattr $C$DW$313, DW_AT_name("_shine_putbits")
	.dwattr $C$DW$313, DW_AT_TI_call

        CALL #_shine_putbits ; |1045| 
||      MOV #11, AC1 ; |1045| 

                                        ; call occurs [#_shine_putbits] ; |1045| 
	.dwpsn	file "./mp3_encode.c",line 1046,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#0)), XAR3
        AMAR *+AR0(#724) ; |1046| 
        MOV *AR3(#720), AC0 ; |1046| 
$C$DW$314	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$314, DW_AT_low_pc(0x00)
	.dwattr $C$DW$314, DW_AT_name("_shine_putbits")
	.dwattr $C$DW$314, DW_AT_TI_call

        CALL #_shine_putbits ; |1046| 
||      MOV #2, AC1 ; |1046| 

                                        ; call occurs [#_shine_putbits] ; |1046| 
	.dwpsn	file "./mp3_encode.c",line 1047,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#0)), XAR3
        AMAR *+AR0(#724) ; |1047| 
        MOV *AR3(#721), AC0 ; |1047| 
$C$DW$315	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$315, DW_AT_low_pc(0x00)
	.dwattr $C$DW$315, DW_AT_name("_shine_putbits")
	.dwattr $C$DW$315, DW_AT_TI_call

        CALL #_shine_putbits ; |1047| 
||      MOV #2, AC1 ; |1047| 

                                        ; call occurs [#_shine_putbits] ; |1047| 
	.dwpsn	file "./mp3_encode.c",line 1048,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#0)), XAR3
        AMAR *+AR0(#724) ; |1048| 
        MOV *AR3(#716), AR2 ; |1048| 
        MOV #0, AR1

        BCC $C$L55,AR2 == #0 ; |1048| 
||      MOV #0, AC0 ; |1048| 

                                        ; branchcc occurs ; |1048| 
        MOV #1, AR1
$C$L55:    
        BCC $C$L56,AR1 != #0 ; |1048| 
                                        ; branchcc occurs ; |1048| 
        MOV #1, AC0 ; |1048| 
$C$L56:    
$C$DW$316	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$316, DW_AT_low_pc(0x00)
	.dwattr $C$DW$316, DW_AT_name("_shine_putbits")
	.dwattr $C$DW$316, DW_AT_TI_call

        CALL #_shine_putbits ; |1048| 
||      MOV #1, AC1 ; |1048| 

                                        ; call occurs [#_shine_putbits] ; |1048| 
	.dwpsn	file "./mp3_encode.c",line 1049,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#0)), XAR3
        AMAR *+AR0(#724) ; |1049| 
        MOV *AR3(#718), AC0 ; |1049| 
$C$DW$317	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$317, DW_AT_low_pc(0x00)
	.dwattr $C$DW$317, DW_AT_name("_shine_putbits")
	.dwattr $C$DW$317, DW_AT_TI_call

        CALL #_shine_putbits ; |1049| 
||      MOV #4, AC1 ; |1049| 

                                        ; call occurs [#_shine_putbits] ; |1049| 
	.dwpsn	file "./mp3_encode.c",line 1050,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#719), T0 ; |1050| 
$C$DW$318	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$318, DW_AT_low_pc(0x00)
	.dwattr $C$DW$318, DW_AT_name("__remi")
	.dwattr $C$DW$318, DW_AT_TI_call

        CALL #__remi ; |1050| 
||      MOV #3, T1

                                        ; call occurs [#__remi] ; |1050| 
        MOV dbl(*SP(#0)), XAR0
        MOV #2, AC1 ; |1050| 
        AMAR *+AR0(#724) ; |1050| 
$C$DW$319	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$319, DW_AT_low_pc(0x00)
	.dwattr $C$DW$319, DW_AT_name("_shine_putbits")
	.dwattr $C$DW$319, DW_AT_TI_call

        CALL #_shine_putbits ; |1050| 
||      MOV T0, AC0

                                        ; call occurs [#_shine_putbits] ; |1050| 
	.dwpsn	file "./mp3_encode.c",line 1051,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#0)), XAR3
        AMAR *+AR0(#724) ; |1051| 
        MOV *AR3(#712), AC0 ; |1051| 
$C$DW$320	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$320, DW_AT_low_pc(0x00)
	.dwattr $C$DW$320, DW_AT_name("_shine_putbits")
	.dwattr $C$DW$320, DW_AT_TI_call

        CALL #_shine_putbits ; |1051| 
||      MOV #1, AC1 ; |1051| 

                                        ; call occurs [#_shine_putbits] ; |1051| 
	.dwpsn	file "./mp3_encode.c",line 1052,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#0)), XAR3
        AMAR *+AR0(#724) ; |1052| 
        MOV *AR3(#717), AC0 ; |1052| 
$C$DW$321	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$321, DW_AT_low_pc(0x00)
	.dwattr $C$DW$321, DW_AT_name("_shine_putbits")
	.dwattr $C$DW$321, DW_AT_TI_call

        CALL #_shine_putbits ; |1052| 
||      MOV #1, AC1 ; |1052| 

                                        ; call occurs [#_shine_putbits] ; |1052| 
	.dwpsn	file "./mp3_encode.c",line 1053,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#0)), XAR3
        AMAR *+AR0(#724) ; |1053| 
        MOV *AR3(#723), AC0 ; |1053| 
$C$DW$322	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$322, DW_AT_low_pc(0x00)
	.dwattr $C$DW$322, DW_AT_name("_shine_putbits")
	.dwattr $C$DW$322, DW_AT_TI_call

        CALL #_shine_putbits ; |1053| 
||      MOV #2, AC1 ; |1053| 

                                        ; call occurs [#_shine_putbits] ; |1053| 
	.dwpsn	file "./mp3_encode.c",line 1054,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV #0, AC0 ; |1054| 
        AMAR *+AR0(#724) ; |1054| 
$C$DW$323	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$323, DW_AT_low_pc(0x00)
	.dwattr $C$DW$323, DW_AT_name("_shine_putbits")
	.dwattr $C$DW$323, DW_AT_TI_call

        CALL #_shine_putbits ; |1054| 
||      MOV #2, AC1 ; |1054| 

                                        ; call occurs [#_shine_putbits] ; |1054| 
	.dwpsn	file "./mp3_encode.c",line 1055,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV #0, AC0 ; |1055| 
        AMAR *+AR0(#724) ; |1055| 
$C$DW$324	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$324, DW_AT_low_pc(0x00)
	.dwattr $C$DW$324, DW_AT_name("_shine_putbits")
	.dwattr $C$DW$324, DW_AT_TI_call

        CALL #_shine_putbits ; |1055| 
||      MOV #1, AC1 ; |1055| 

                                        ; call occurs [#_shine_putbits] ; |1055| 
	.dwpsn	file "./mp3_encode.c",line 1056,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV #1, AC0 ; |1056| 
        AMAR *+AR0(#724) ; |1056| 
$C$DW$325	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$325, DW_AT_low_pc(0x00)
	.dwattr $C$DW$325, DW_AT_name("_shine_putbits")
	.dwattr $C$DW$325, DW_AT_TI_call

        CALL #_shine_putbits ; |1056| 
||      MOV #1, AC1 ; |1056| 

                                        ; call occurs [#_shine_putbits] ; |1056| 
	.dwpsn	file "./mp3_encode.c",line 1057,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#0)), XAR3
        AMAR *+AR0(#724) ; |1057| 
        MOV *AR3(#711), AC0 ; |1057| 
$C$DW$326	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$326, DW_AT_low_pc(0x00)
	.dwattr $C$DW$326, DW_AT_name("_shine_putbits")
	.dwattr $C$DW$326, DW_AT_TI_call

        CALL #_shine_putbits ; |1057| 
||      MOV #2, AC1 ; |1057| 

                                        ; call occurs [#_shine_putbits] ; |1057| 
	.dwpsn	file "./mp3_encode.c",line 1059,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        CMP *AR3(#720) == #3, TC1 ; |1059| 
        BCC $C$L58,!TC1 ; |1059| 
                                        ; branchcc occurs ; |1059| 
	.dwpsn	file "./mp3_encode.c",line 1061,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV #0, AC0 ; |1061| 
        AMAR *+AR0(#724) ; |1061| 
$C$DW$327	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$327, DW_AT_low_pc(0x00)
	.dwattr $C$DW$327, DW_AT_name("_shine_putbits")
	.dwattr $C$DW$327, DW_AT_TI_call

        CALL #_shine_putbits ; |1061| 
||      MOV #9, AC1 ; |1061| 

                                        ; call occurs [#_shine_putbits] ; |1061| 
	.dwpsn	file "./mp3_encode.c",line 1062,column 9,is_stmt
        B $C$L57  ; |1062| 
                                        ; branch occurs ; |1062| 
$C$L57:    
	.dwpsn	file "./mp3_encode.c",line 1065,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV uns(*SP(#10)), AC0 ; |1065| 
        AMAR *+AR0(#724) ; |1065| 
$C$DW$328	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$328, DW_AT_low_pc(0x00)
	.dwattr $C$DW$328, DW_AT_name("_shine_putbits")
	.dwattr $C$DW$328, DW_AT_TI_call

        CALL #_shine_putbits ; |1065| 
||      MOV #5, AC1 ; |1065| 

                                        ; call occurs [#_shine_putbits] ; |1065| 
	.dwpsn	file "./mp3_encode.c",line 1066,column 5,is_stmt
        B $C$L60  ; |1066| 
                                        ; branch occurs ; |1066| 
$C$L58:    
	.dwpsn	file "./mp3_encode.c",line 1069,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV #0, AC0 ; |1069| 
        AMAR *+AR0(#724) ; |1069| 
$C$DW$329	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$329, DW_AT_low_pc(0x00)
	.dwattr $C$DW$329, DW_AT_name("_shine_putbits")
	.dwattr $C$DW$329, DW_AT_TI_call

        CALL #_shine_putbits ; |1069| 
||      MOV #8, AC1 ; |1069| 

                                        ; call occurs [#_shine_putbits] ; |1069| 
	.dwpsn	file "./mp3_encode.c",line 1070,column 9,is_stmt
        B $C$L59  ; |1070| 
                                        ; branch occurs ; |1070| 
$C$L59:    
	.dwpsn	file "./mp3_encode.c",line 1073,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV uns(*SP(#10)), AC0 ; |1073| 
        AMAR *+AR0(#724) ; |1073| 
$C$DW$330	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$330, DW_AT_low_pc(0x00)
	.dwattr $C$DW$330, DW_AT_name("_shine_putbits")
	.dwattr $C$DW$330, DW_AT_TI_call

        CALL #_shine_putbits ; |1073| 
||      MOV #1, AC1 ; |1073| 

                                        ; call occurs [#_shine_putbits] ; |1073| 
$C$L60:    
	.dwpsn	file "./mp3_encode.c",line 1076,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        CMP *AR3(#720) == #3, TC1 ; |1076| 
        BCC $C$L64,!TC1 ; |1076| 
                                        ; branchcc occurs ; |1076| 
	.dwpsn	file "./mp3_encode.c",line 1077,column 14,is_stmt
        MOV #0, AC0 ; |1077| 
        MOV AC0, dbl(*SP(#4)) ; |1077| 
	.dwpsn	file "./mp3_encode.c",line 1077,column 22,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |1077| 
        BCC $C$L64,AC0 > #0 ; |1077| 
                                        ; branchcc occurs ; |1077| 
$C$L61:    
$C$DW$L$_encodeSideInfo$17$B:
	.dwpsn	file "./mp3_encode.c",line 1079,column 18,is_stmt
        MOV #0, AC0 ; |1079| 
        MOV AC0, dbl(*SP(#6)) ; |1079| 
	.dwpsn	file "./mp3_encode.c",line 1079,column 34,is_stmt

        MOV #4, AC0 ; |1079| 
||      MOV dbl(*SP(#6)), AC1 ; |1079| 

        CMP AC1 >= AC0, TC1 ; |1079| 
        BCC $C$L63,TC1 ; |1079| 
                                        ; branchcc occurs ; |1079| 
$C$DW$L$_encodeSideInfo$17$E:
$C$L62:    
$C$DW$L$_encodeSideInfo$18$B:
	.dwpsn	file "./mp3_encode.c",line 1080,column 17,is_stmt
        MOV *SP(#5) << #2, AC0 ; |1080| 
        MOV AC0, AR1 ; |1080| 
        MOV dbl(*SP(#0)), XAR0
        MOV *SP(#7), T0 ; |1080| 
        AMAR *SP(#12), XAR3
        AADD AR1, AR3 ; |1080| 
        AMAR *+AR0(#724) ; |1080| 
        MOV uns(*AR3(T0)), AC0 ; |1080| 
$C$DW$331	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$331, DW_AT_low_pc(0x00)
	.dwattr $C$DW$331, DW_AT_name("_shine_putbits")
	.dwattr $C$DW$331, DW_AT_TI_call

        CALL #_shine_putbits ; |1080| 
||      MOV #1, AC1 ; |1080| 

                                        ; call occurs [#_shine_putbits] ; |1080| 
	.dwpsn	file "./mp3_encode.c",line 1079,column 50,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |1079| 
        ADD #1, AC0 ; |1079| 
        MOV AC0, dbl(*SP(#6)) ; |1079| 
	.dwpsn	file "./mp3_encode.c",line 1079,column 34,is_stmt

        MOV dbl(*SP(#6)), AC1 ; |1079| 
||      MOV #4, AC0 ; |1079| 

        CMP AC1 < AC0, TC1 ; |1079| 
        BCC $C$L62,TC1 ; |1079| 
                                        ; branchcc occurs ; |1079| 
$C$DW$L$_encodeSideInfo$18$E:
$C$L63:    
$C$DW$L$_encodeSideInfo$19$B:
	.dwpsn	file "./mp3_encode.c",line 1077,column 41,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |1077| 
        ADD #1, AC0 ; |1077| 
        MOV AC0, dbl(*SP(#4)) ; |1077| 
	.dwpsn	file "./mp3_encode.c",line 1077,column 22,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |1077| 
        BCC $C$L61,AC0 <= #0 ; |1077| 
                                        ; branchcc occurs ; |1077| 
$C$DW$L$_encodeSideInfo$19$E:
$C$L64:    
	.dwpsn	file "./mp3_encode.c",line 1083,column 10,is_stmt
        MOV #0, AC0 ; |1083| 
        MOV AC0, dbl(*SP(#2)) ; |1083| 
	.dwpsn	file "./mp3_encode.c",line 1083,column 18,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#2)), AC1 ; |1083| 
        MOV *AR3(#722), AC0 ; |1083| 
        CMP AC1 >= AC0, TC1 ; |1083| 
        BCC $C$L73,TC1 ; |1083| 
                                        ; branchcc occurs ; |1083| 
$C$L65:    
$C$DW$L$_encodeSideInfo$21$B:
	.dwpsn	file "./mp3_encode.c",line 1084,column 14,is_stmt
        MOV #0, AC0 ; |1084| 
        MOV AC0, dbl(*SP(#4)) ; |1084| 
	.dwpsn	file "./mp3_encode.c",line 1084,column 22,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |1084| 
        BCC $C$L72,AC0 > #0 ; |1084| 
                                        ; branchcc occurs ; |1084| 
$C$DW$L$_encodeSideInfo$21$E:
$C$L66:    
$C$DW$L$_encodeSideInfo$22$B:

$C$DW$332	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$333	.dwtag  DW_TAG_variable, DW_AT_name("gi")
	.dwattr $C$DW$333, DW_AT_TI_symbol_name("_gi")
	.dwattr $C$DW$333, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$333, DW_AT_location[DW_OP_bregx 0x24 40]
	.dwpsn	file "./mp3_encode.c",line 1086,column 22,is_stmt
        MPYMK *SP(#3), #23, AC0 ; |1086| 
        MOV AC0, AR1 ; |1086| 
        AMAR *SP(#16), XAR3
        MPYMK *SP(#5), #23, AC0 ; |1086| 

        MOV AC0, AR1 ; |1086| 
||      AADD AR1, AR3 ; |1086| 

        MOV XAR3, dbl(*SP(#40))
||      AADD AR1, AR3 ; |1086| 

	.dwpsn	file "./mp3_encode.c",line 1088,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV uns(*AR3), AC0 ; |1088| 
        AMAR *+AR0(#724) ; |1088| 
$C$DW$334	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$334, DW_AT_low_pc(0x00)
	.dwattr $C$DW$334, DW_AT_name("_shine_putbits")
	.dwattr $C$DW$334, DW_AT_TI_call

        CALL #_shine_putbits ; |1088| 
||      MOV #12, AC1 ; |1088| 

                                        ; call occurs [#_shine_putbits] ; |1088| 
	.dwpsn	file "./mp3_encode.c",line 1089,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#40)), XAR3
        AMAR *+AR0(#724) ; |1089| 
        MOV uns(*AR3(short(#1))), AC0 ; |1089| 
$C$DW$335	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$335, DW_AT_low_pc(0x00)
	.dwattr $C$DW$335, DW_AT_name("_shine_putbits")
	.dwattr $C$DW$335, DW_AT_TI_call

        CALL #_shine_putbits ; |1089| 
||      MOV #9, AC1 ; |1089| 

                                        ; call occurs [#_shine_putbits] ; |1089| 
	.dwpsn	file "./mp3_encode.c",line 1090,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#40)), XAR3
        AMAR *+AR0(#724) ; |1090| 
        MOV uns(*AR3(short(#3))), AC0 ; |1090| 
$C$DW$336	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$336, DW_AT_low_pc(0x00)
	.dwattr $C$DW$336, DW_AT_name("_shine_putbits")
	.dwattr $C$DW$336, DW_AT_TI_call

        CALL #_shine_putbits ; |1090| 
||      MOV #8, AC1 ; |1090| 

                                        ; call occurs [#_shine_putbits] ; |1090| 
	.dwpsn	file "./mp3_encode.c",line 1091,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        CMP *AR3(#720) == #3, TC1 ; |1091| 
        BCC $C$L67,!TC1 ; |1091| 
                                        ; branchcc occurs ; |1091| 
$C$DW$L$_encodeSideInfo$22$E:
$C$DW$L$_encodeSideInfo$23$B:
	.dwpsn	file "./mp3_encode.c",line 1092,column 17,is_stmt
        MOV dbl(*SP(#40)), XAR3
        MOV dbl(*SP(#0)), XAR0
        MOV uns(*AR3(short(#4))), AC0 ; |1092| 
        AMAR *+AR0(#724) ; |1092| 
$C$DW$337	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$337, DW_AT_low_pc(0x00)
	.dwattr $C$DW$337, DW_AT_name("_shine_putbits")
	.dwattr $C$DW$337, DW_AT_TI_call

        CALL #_shine_putbits ; |1092| 
||      MOV #4, AC1 ; |1092| 

                                        ; call occurs [#_shine_putbits] ; |1092| 
        B $C$L68  ; |1092| 
                                        ; branch occurs ; |1092| 
$C$DW$L$_encodeSideInfo$23$E:
$C$L67:    
$C$DW$L$_encodeSideInfo$24$B:
	.dwpsn	file "./mp3_encode.c",line 1094,column 17,is_stmt
        MOV dbl(*SP(#40)), XAR3
        MOV dbl(*SP(#0)), XAR0
        MOV uns(*AR3(short(#4))), AC0 ; |1094| 
        AMAR *+AR0(#724) ; |1094| 
$C$DW$338	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$338, DW_AT_low_pc(0x00)
	.dwattr $C$DW$338, DW_AT_name("_shine_putbits")
	.dwattr $C$DW$338, DW_AT_TI_call

        CALL #_shine_putbits ; |1094| 
||      MOV #9, AC1 ; |1094| 

                                        ; call occurs [#_shine_putbits] ; |1094| 
$C$DW$L$_encodeSideInfo$24$E:
$C$L68:    
$C$DW$L$_encodeSideInfo$25$B:
	.dwpsn	file "./mp3_encode.c",line 1095,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV #0, AC0 ; |1095| 
        AMAR *+AR0(#724) ; |1095| 
$C$DW$339	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$339, DW_AT_low_pc(0x00)
	.dwattr $C$DW$339, DW_AT_name("_shine_putbits")
	.dwattr $C$DW$339, DW_AT_TI_call

        CALL #_shine_putbits ; |1095| 
||      MOV #1, AC1 ; |1095| 

                                        ; call occurs [#_shine_putbits] ; |1095| 
	.dwpsn	file "./mp3_encode.c",line 1097,column 18,is_stmt
        MOV #0, AC0 ; |1097| 
        MOV AC0, dbl(*SP(#8)) ; |1097| 
	.dwpsn	file "./mp3_encode.c",line 1097,column 30,is_stmt

        MOV dbl(*SP(#8)), AC1 ; |1097| 
||      MOV #3, AC0 ; |1097| 

        CMP AC1 >= AC0, TC1 ; |1097| 
        BCC $C$L70,TC1 ; |1097| 
                                        ; branchcc occurs ; |1097| 
$C$DW$L$_encodeSideInfo$25$E:
$C$L69:    
$C$DW$L$_encodeSideInfo$26$B:
	.dwpsn	file "./mp3_encode.c",line 1098,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV *SP(#9), AR1 ; |1098| 
        MOV dbl(*SP(#40)), XAR3
        AMAR *+AR0(#724) ; |1098| 
        AADD AR1, AR3 ; |1098| 
        MOV uns(*AR3(short(#5))), AC0 ; |1098| 
$C$DW$340	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$340, DW_AT_low_pc(0x00)
	.dwattr $C$DW$340, DW_AT_name("_shine_putbits")
	.dwattr $C$DW$340, DW_AT_TI_call

        CALL #_shine_putbits ; |1098| 
||      MOV #5, AC1 ; |1098| 

                                        ; call occurs [#_shine_putbits] ; |1098| 
	.dwpsn	file "./mp3_encode.c",line 1097,column 42,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |1097| 
        ADD #1, AC0 ; |1097| 
        MOV AC0, dbl(*SP(#8)) ; |1097| 
	.dwpsn	file "./mp3_encode.c",line 1097,column 30,is_stmt

        MOV dbl(*SP(#8)), AC1 ; |1097| 
||      MOV #3, AC0 ; |1097| 

        CMP AC1 < AC0, TC1 ; |1097| 
        BCC $C$L69,TC1 ; |1097| 
                                        ; branchcc occurs ; |1097| 
$C$DW$L$_encodeSideInfo$26$E:
$C$L70:    
$C$DW$L$_encodeSideInfo$27$B:
	.dwpsn	file "./mp3_encode.c",line 1100,column 13,is_stmt
        MOV dbl(*SP(#40)), XAR3
        MOV dbl(*SP(#0)), XAR0
        MOV uns(*AR3(#8)), AC0 ; |1100| 
        AMAR *+AR0(#724) ; |1100| 
$C$DW$341	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$341, DW_AT_low_pc(0x00)
	.dwattr $C$DW$341, DW_AT_name("_shine_putbits")
	.dwattr $C$DW$341, DW_AT_TI_call

        CALL #_shine_putbits ; |1100| 
||      MOV #4, AC1 ; |1100| 

                                        ; call occurs [#_shine_putbits] ; |1100| 
	.dwpsn	file "./mp3_encode.c",line 1101,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#40)), XAR3
        AMAR *+AR0(#724) ; |1101| 
        MOV uns(*AR3(#9)), AC0 ; |1101| 
$C$DW$342	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$342, DW_AT_low_pc(0x00)
	.dwattr $C$DW$342, DW_AT_name("_shine_putbits")
	.dwattr $C$DW$342, DW_AT_TI_call

        CALL #_shine_putbits ; |1101| 
||      MOV #3, AC1 ; |1101| 

                                        ; call occurs [#_shine_putbits] ; |1101| 
	.dwpsn	file "./mp3_encode.c",line 1103,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        CMP *AR3(#720) == #3, TC1 ; |1103| 
        BCC $C$L71,!TC1 ; |1103| 
                                        ; branchcc occurs ; |1103| 
$C$DW$L$_encodeSideInfo$27$E:
$C$DW$L$_encodeSideInfo$28$B:
	.dwpsn	file "./mp3_encode.c",line 1104,column 17,is_stmt
        MOV dbl(*SP(#40)), XAR3
        MOV dbl(*SP(#0)), XAR0
        MOV uns(*AR3(#10)), AC0 ; |1104| 
        AMAR *+AR0(#724) ; |1104| 
$C$DW$343	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$343, DW_AT_low_pc(0x00)
	.dwattr $C$DW$343, DW_AT_name("_shine_putbits")
	.dwattr $C$DW$343, DW_AT_TI_call

        CALL #_shine_putbits ; |1104| 
||      MOV #1, AC1 ; |1104| 

                                        ; call occurs [#_shine_putbits] ; |1104| 
$C$DW$L$_encodeSideInfo$28$E:
$C$L71:    
$C$DW$L$_encodeSideInfo$29$B:
	.dwpsn	file "./mp3_encode.c",line 1105,column 13,is_stmt
        MOV dbl(*SP(#40)), XAR3
        MOV dbl(*SP(#0)), XAR0
        MOV uns(*AR3(#11)), AC0 ; |1105| 
        AMAR *+AR0(#724) ; |1105| 
$C$DW$344	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$344, DW_AT_low_pc(0x00)
	.dwattr $C$DW$344, DW_AT_name("_shine_putbits")
	.dwattr $C$DW$344, DW_AT_TI_call

        CALL #_shine_putbits ; |1105| 
||      MOV #1, AC1 ; |1105| 

                                        ; call occurs [#_shine_putbits] ; |1105| 
	.dwpsn	file "./mp3_encode.c",line 1106,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#40)), XAR3
        AMAR *+AR0(#724) ; |1106| 
        MOV uns(*AR3(#12)), AC0 ; |1106| 
$C$DW$345	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$345, DW_AT_low_pc(0x00)
	.dwattr $C$DW$345, DW_AT_name("_shine_putbits")
	.dwattr $C$DW$345, DW_AT_TI_call

        CALL #_shine_putbits ; |1106| 
||      MOV #1, AC1 ; |1106| 

                                        ; call occurs [#_shine_putbits] ; |1106| 
	.dwendtag $C$DW$332

	.dwpsn	file "./mp3_encode.c",line 1084,column 41,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |1084| 
        ADD #1, AC0 ; |1084| 
        MOV AC0, dbl(*SP(#4)) ; |1084| 
	.dwpsn	file "./mp3_encode.c",line 1084,column 22,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |1084| 
        BCC $C$L66,AC0 <= #0 ; |1084| 
                                        ; branchcc occurs ; |1084| 
$C$DW$L$_encodeSideInfo$29$E:
$C$L72:    
$C$DW$L$_encodeSideInfo$30$B:
	.dwpsn	file "./mp3_encode.c",line 1083,column 56,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |1083| 
        ADD #1, AC0 ; |1083| 
        MOV AC0, dbl(*SP(#2)) ; |1083| 
	.dwpsn	file "./mp3_encode.c",line 1083,column 18,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#2)), AC1 ; |1083| 
        MOV *AR3(#722), AC0 ; |1083| 
        CMP AC1 < AC0, TC1 ; |1083| 
        BCC $C$L65,TC1 ; |1083| 
                                        ; branchcc occurs ; |1083| 
$C$DW$L$_encodeSideInfo$30$E:
	.dwpsn	file "./mp3_encode.c",line 1108,column 1,is_stmt
$C$L73:    
        AADD #43, SP
	.dwcfi	cfa_offset, 1
$C$DW$346	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$346, DW_AT_low_pc(0x00)
	.dwattr $C$DW$346, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$347	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$347, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L65:1:1738864582")
	.dwattr $C$DW$347, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$347, DW_AT_TI_begin_line(0x43b)
	.dwattr $C$DW$347, DW_AT_TI_end_line(0x453)
$C$DW$348	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$348, DW_AT_low_pc($C$DW$L$_encodeSideInfo$21$B)
	.dwattr $C$DW$348, DW_AT_high_pc($C$DW$L$_encodeSideInfo$21$E)
$C$DW$349	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$349, DW_AT_low_pc($C$DW$L$_encodeSideInfo$30$B)
	.dwattr $C$DW$349, DW_AT_high_pc($C$DW$L$_encodeSideInfo$30$E)

$C$DW$350	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$350, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L66:2:1738864582")
	.dwattr $C$DW$350, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$350, DW_AT_TI_begin_line(0x43c)
	.dwattr $C$DW$350, DW_AT_TI_end_line(0x453)
$C$DW$351	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$351, DW_AT_low_pc($C$DW$L$_encodeSideInfo$22$B)
	.dwattr $C$DW$351, DW_AT_high_pc($C$DW$L$_encodeSideInfo$22$E)
$C$DW$352	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$352, DW_AT_low_pc($C$DW$L$_encodeSideInfo$23$B)
	.dwattr $C$DW$352, DW_AT_high_pc($C$DW$L$_encodeSideInfo$23$E)
$C$DW$353	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$353, DW_AT_low_pc($C$DW$L$_encodeSideInfo$24$B)
	.dwattr $C$DW$353, DW_AT_high_pc($C$DW$L$_encodeSideInfo$24$E)
$C$DW$354	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$354, DW_AT_low_pc($C$DW$L$_encodeSideInfo$25$B)
	.dwattr $C$DW$354, DW_AT_high_pc($C$DW$L$_encodeSideInfo$25$E)
$C$DW$355	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$355, DW_AT_low_pc($C$DW$L$_encodeSideInfo$27$B)
	.dwattr $C$DW$355, DW_AT_high_pc($C$DW$L$_encodeSideInfo$27$E)
$C$DW$356	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$356, DW_AT_low_pc($C$DW$L$_encodeSideInfo$28$B)
	.dwattr $C$DW$356, DW_AT_high_pc($C$DW$L$_encodeSideInfo$28$E)
$C$DW$357	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$357, DW_AT_low_pc($C$DW$L$_encodeSideInfo$29$B)
	.dwattr $C$DW$357, DW_AT_high_pc($C$DW$L$_encodeSideInfo$29$E)

$C$DW$358	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$358, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L69:3:1738864582")
	.dwattr $C$DW$358, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$358, DW_AT_TI_begin_line(0x449)
	.dwattr $C$DW$358, DW_AT_TI_end_line(0x44a)
$C$DW$359	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$359, DW_AT_low_pc($C$DW$L$_encodeSideInfo$26$B)
	.dwattr $C$DW$359, DW_AT_high_pc($C$DW$L$_encodeSideInfo$26$E)
	.dwendtag $C$DW$358

	.dwendtag $C$DW$350

	.dwendtag $C$DW$347


$C$DW$360	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$360, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L61:1:1738864582")
	.dwattr $C$DW$360, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$360, DW_AT_TI_begin_line(0x435)
	.dwattr $C$DW$360, DW_AT_TI_end_line(0x439)
$C$DW$361	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$361, DW_AT_low_pc($C$DW$L$_encodeSideInfo$17$B)
	.dwattr $C$DW$361, DW_AT_high_pc($C$DW$L$_encodeSideInfo$17$E)
$C$DW$362	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$362, DW_AT_low_pc($C$DW$L$_encodeSideInfo$19$B)
	.dwattr $C$DW$362, DW_AT_high_pc($C$DW$L$_encodeSideInfo$19$E)

$C$DW$363	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$363, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L62:2:1738864582")
	.dwattr $C$DW$363, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$363, DW_AT_TI_begin_line(0x437)
	.dwattr $C$DW$363, DW_AT_TI_end_line(0x438)
$C$DW$364	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$364, DW_AT_low_pc($C$DW$L$_encodeSideInfo$18$B)
	.dwattr $C$DW$364, DW_AT_high_pc($C$DW$L$_encodeSideInfo$18$E)
	.dwendtag $C$DW$363

	.dwendtag $C$DW$360


$C$DW$365	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$365, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L53:1:1738864582")
	.dwattr $C$DW$365, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$365, DW_AT_TI_begin_line(0x413)
	.dwattr $C$DW$365, DW_AT_TI_end_line(0x413)
$C$DW$366	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$366, DW_AT_low_pc($C$DW$L$_encodeSideInfo$2$B)
	.dwattr $C$DW$366, DW_AT_high_pc($C$DW$L$_encodeSideInfo$2$E)
	.dwendtag $C$DW$365

	.dwattr $C$DW$305, DW_AT_TI_end_file("./mp3_encode.c")
	.dwattr $C$DW$305, DW_AT_TI_end_line(0x454)
	.dwattr $C$DW$305, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$305

	.sect	".text"

$C$DW$367	.dwtag  DW_TAG_subprogram, DW_AT_name("Huffmancodebits")
	.dwattr $C$DW$367, DW_AT_low_pc(_Huffmancodebits)
	.dwattr $C$DW$367, DW_AT_high_pc(0x00)
	.dwattr $C$DW$367, DW_AT_TI_symbol_name("_Huffmancodebits")
	.dwattr $C$DW$367, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$367, DW_AT_TI_begin_line(0x458)
	.dwattr $C$DW$367, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$367, DW_AT_TI_max_frame_size(0x28)
	.dwpsn	file "./mp3_encode.c",line 1113,column 1,is_stmt,address _Huffmancodebits

	.dwfde $C$DW$CIE, _Huffmancodebits
$C$DW$368	.dwtag  DW_TAG_formal_parameter, DW_AT_name("config")
	.dwattr $C$DW$368, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$368, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$368, DW_AT_location[DW_OP_reg17]
$C$DW$369	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ix")
	.dwattr $C$DW$369, DW_AT_TI_symbol_name("_ix")
	.dwattr $C$DW$369, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$369, DW_AT_location[DW_OP_reg19]
$C$DW$370	.dwtag  DW_TAG_formal_parameter, DW_AT_name("gi")
	.dwattr $C$DW$370, DW_AT_TI_symbol_name("_gi")
	.dwattr $C$DW$370, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$370, DW_AT_location[DW_OP_reg21]
;*******************************************************************************
;* FUNCTION NAME: Huffmancodebits                                              *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,AC2,AC2,T0,T1,AR0,XAR0,AR1,XAR1,AR2, *
;*                        XAR2,AR3,XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,   *
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 40 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (2 function parameters)                              *
;*                        (36 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_Huffmancodebits:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-39, SP
	.dwcfi	cfa_offset, 40
$C$DW$371	.dwtag  DW_TAG_variable, DW_AT_name("config")
	.dwattr $C$DW$371, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$371, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$371, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$372	.dwtag  DW_TAG_variable, DW_AT_name("ix")
	.dwattr $C$DW$372, DW_AT_TI_symbol_name("_ix")
	.dwattr $C$DW$372, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$372, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$373	.dwtag  DW_TAG_variable, DW_AT_name("gi")
	.dwattr $C$DW$373, DW_AT_TI_symbol_name("_gi")
	.dwattr $C$DW$373, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$373, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$374	.dwtag  DW_TAG_variable, DW_AT_name("scalefac")
	.dwattr $C$DW$374, DW_AT_TI_symbol_name("_scalefac")
	.dwattr $C$DW$374, DW_AT_type(*$C$DW$T$254)
	.dwattr $C$DW$374, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$375	.dwtag  DW_TAG_variable, DW_AT_name("scalefac_index")
	.dwattr $C$DW$375, DW_AT_TI_symbol_name("_scalefac_index")
	.dwattr $C$DW$375, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$375, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$376	.dwtag  DW_TAG_variable, DW_AT_name("region1Start")
	.dwattr $C$DW$376, DW_AT_TI_symbol_name("_region1Start")
	.dwattr $C$DW$376, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$376, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$377	.dwtag  DW_TAG_variable, DW_AT_name("region2Start")
	.dwattr $C$DW$377, DW_AT_TI_symbol_name("_region2Start")
	.dwattr $C$DW$377, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$377, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$378	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$378, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$378, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$378, DW_AT_location[DW_OP_bregx 0x24 16]
$C$DW$379	.dwtag  DW_TAG_variable, DW_AT_name("bigvalues")
	.dwattr $C$DW$379, DW_AT_TI_symbol_name("_bigvalues")
	.dwattr $C$DW$379, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$379, DW_AT_location[DW_OP_bregx 0x24 18]
$C$DW$380	.dwtag  DW_TAG_variable, DW_AT_name("count1End")
	.dwattr $C$DW$380, DW_AT_TI_symbol_name("_count1End")
	.dwattr $C$DW$380, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$380, DW_AT_location[DW_OP_bregx 0x24 20]
$C$DW$381	.dwtag  DW_TAG_variable, DW_AT_name("v")
	.dwattr $C$DW$381, DW_AT_TI_symbol_name("_v")
	.dwattr $C$DW$381, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$381, DW_AT_location[DW_OP_bregx 0x24 22]
$C$DW$382	.dwtag  DW_TAG_variable, DW_AT_name("w")
	.dwattr $C$DW$382, DW_AT_TI_symbol_name("_w")
	.dwattr $C$DW$382, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$382, DW_AT_location[DW_OP_bregx 0x24 24]
$C$DW$383	.dwtag  DW_TAG_variable, DW_AT_name("x")
	.dwattr $C$DW$383, DW_AT_TI_symbol_name("_x")
	.dwattr $C$DW$383, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$383, DW_AT_location[DW_OP_bregx 0x24 26]
$C$DW$384	.dwtag  DW_TAG_variable, DW_AT_name("y")
	.dwattr $C$DW$384, DW_AT_TI_symbol_name("_y")
	.dwattr $C$DW$384, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$384, DW_AT_location[DW_OP_bregx 0x24 28]
$C$DW$385	.dwtag  DW_TAG_variable, DW_AT_name("h")
	.dwattr $C$DW$385, DW_AT_TI_symbol_name("_h")
	.dwattr $C$DW$385, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$385, DW_AT_location[DW_OP_bregx 0x24 30]
$C$DW$386	.dwtag  DW_TAG_variable, DW_AT_name("bits")
	.dwattr $C$DW$386, DW_AT_TI_symbol_name("_bits")
	.dwattr $C$DW$386, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$386, DW_AT_location[DW_OP_bregx 0x24 32]
        MOV XAR2, dbl(*SP(#6))
        MOV XAR1, dbl(*SP(#4))
        MOV XAR0, dbl(*SP(#2))
	.dwpsn	file "./mp3_encode.c",line 1114,column 20,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MPYMK *AR3(#719), #46, AC0 ; |1114| 
        MOV AC0, AR1 ; |1114| 
        AMOV #_shine_scale_fact_band_index, XAR3 ; |1114| 

        MOV XAR3, dbl(*SP(#8))
||      AADD AR1, AR3 ; |1114| 

	.dwpsn	file "./mp3_encode.c",line 1122,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR0
        AMAR *+AR0(#724) ; |1122| 
$C$DW$387	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$387, DW_AT_low_pc(0x00)
	.dwattr $C$DW$387, DW_AT_name("_shine_get_bits_count")
	.dwattr $C$DW$387, DW_AT_TI_call
        CALL #_shine_get_bits_count ; |1122| 
                                        ; call occurs [#_shine_get_bits_count] ; |1122| 
        MOV AC0, dbl(*SP(#32)) ; |1122| 
	.dwpsn	file "./mp3_encode.c",line 1125,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV *AR3(short(#1)), AR1 ; |1125| 
        SFTL AR1, #1 ; |1125| 
        AND #0xffff, AR1, AC0 ; |1125| 
        MOV AC0, dbl(*SP(#18)) ; |1125| 
	.dwpsn	file "./mp3_encode.c",line 1127,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV *AR3(#8), AR1 ; |1127| 
        ADD #1, AR1 ; |1127| 
        AND #0xffff, AR1, AC0 ; |1127| 
        MOV AC0, dbl(*SP(#10)) ; |1127| 
	.dwpsn	file "./mp3_encode.c",line 1128,column 5,is_stmt
        MOV *SP(#11), T0 ; |1128| 
        SFTL T0, #1 ; |1128| 
        MOV dbl(*SP(#8)), XAR3
        MOV dbl(*AR3(T0)), AC0 ; |1128| 
        MOV AC0, dbl(*SP(#12)) ; |1128| 
	.dwpsn	file "./mp3_encode.c",line 1129,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV *AR3(#9), AR1 ; |1129| 
        ADD #1, AR1 ; |1129| 
        AND #0xffff, AR1, AC0 ; |1129| 
        ADD dbl(*SP(#10)), AC0, AC0 ; |1129| 
        MOV AC0, dbl(*SP(#10)) ; |1129| 
	.dwpsn	file "./mp3_encode.c",line 1130,column 5,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV *SP(#11), T0 ; |1130| 
        SFTL T0, #1 ; |1130| 
        MOV dbl(*AR3(T0)), AC0 ; |1130| 
        MOV AC0, dbl(*SP(#14)) ; |1130| 
	.dwpsn	file "./mp3_encode.c",line 1132,column 10,is_stmt
        MOV #0, AC0 ; |1132| 
        MOV AC0, dbl(*SP(#16)) ; |1132| 
	.dwpsn	file "./mp3_encode.c",line 1132,column 17,is_stmt
        MOV dbl(*SP(#16)), AC1 ; |1132| 
        MOV dbl(*SP(#18)), AC0 ; |1132| 
        CMP AC1 >= AC0, TC1 ; |1132| 
        BCC $C$L78,TC1 ; |1132| 
                                        ; branchcc occurs ; |1132| 
$C$L74:    
$C$DW$L$_Huffmancodebits$2$B:

$C$DW$388	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$389	.dwtag  DW_TAG_variable, DW_AT_name("idx")
	.dwattr $C$DW$389, DW_AT_TI_symbol_name("_idx")
	.dwattr $C$DW$389, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$389, DW_AT_location[DW_OP_bregx 0x24 34]
$C$DW$390	.dwtag  DW_TAG_variable, DW_AT_name("tableindex")
	.dwattr $C$DW$390, DW_AT_TI_symbol_name("_tableindex")
	.dwattr $C$DW$390, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$390, DW_AT_location[DW_OP_bregx 0x24 36]
	.dwpsn	file "./mp3_encode.c",line 1135,column 17,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |1135| 
        MOV dbl(*SP(#16)), AC1 ; |1135| 
        CMP AC1 < AC0, TC1 ; |1135| 

        BCC $C$L75,TC1 ; |1135| 
||      MOV #0, AR2

                                        ; branchcc occurs ; |1135| 
$C$DW$L$_Huffmancodebits$2$E:
$C$DW$L$_Huffmancodebits$3$B:
        MOV #1, AR2
$C$DW$L$_Huffmancodebits$3$E:
$C$L75:    
$C$DW$L$_Huffmancodebits$4$B:
        MOV dbl(*SP(#14)), AC0 ; |1135| 
        MOV dbl(*SP(#16)), AC1 ; |1135| 
        CMP AC1 < AC0, TC1 ; |1135| 

        BCC $C$L76,TC1 ; |1135| 
||      MOV #0, AR1

                                        ; branchcc occurs ; |1135| 
$C$DW$L$_Huffmancodebits$4$E:
$C$DW$L$_Huffmancodebits$5$B:
        MOV #1, AR1
$C$DW$L$_Huffmancodebits$5$E:
$C$L76:    
$C$DW$L$_Huffmancodebits$6$B:
        ADD AR2, AR1 ; |1135| 
        MOV AR1, AC0
        MOV AC0, dbl(*SP(#34)) ; |1135| 
	.dwpsn	file "./mp3_encode.c",line 1136,column 18,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV *SP(#35), AR1 ; |1136| 
        AADD AR1, AR3 ; |1136| 
        MOV uns(*AR3(short(#5))), AC0 ; |1136| 
        MOV AC0, dbl(*SP(#36)) ; |1136| 
	.dwpsn	file "./mp3_encode.c",line 1138,column 9,is_stmt
        MOV dbl(*SP(#36)), AC0 ; |1138| 
        BCC $C$L77,AC0 == #0 ; |1138| 
                                        ; branchcc occurs ; |1138| 
$C$DW$L$_Huffmancodebits$6$E:
$C$DW$L$_Huffmancodebits$7$B:
	.dwpsn	file "./mp3_encode.c",line 1140,column 13,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV *SP(#17), T0 ; |1140| 
        SFTL T0, #1 ; |1140| 
        MOV dbl(*AR3(T0)), AC0 ; |1140| 
        MOV AC0, dbl(*SP(#26)) ; |1140| 
	.dwpsn	file "./mp3_encode.c",line 1141,column 13,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*SP(#16)), AC0 ; |1141| 
        ADD #1, AC0 ; |1141| 
        MOV AC0, T0 ; |1141| 
        SFTL T0, #1 ; |1141| 
        MOV dbl(*AR3(T0)), AC0 ; |1141| 
        MOV AC0, dbl(*SP(#28)) ; |1141| 
	.dwpsn	file "./mp3_encode.c",line 1142,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR0
        MOV dbl(*SP(#26)), AC1 ; |1142| 
        MOV dbl(*SP(#28)), AC2 ; |1142| 
        MOV dbl(*SP(#36)), AC0 ; |1142| 
        AMAR *+AR0(#724) ; |1142| 
$C$DW$391	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$391, DW_AT_low_pc(0x00)
	.dwattr $C$DW$391, DW_AT_name("_shine_HuffmanCode")
	.dwattr $C$DW$391, DW_AT_TI_call
        CALL #_shine_HuffmanCode ; |1142| 
                                        ; call occurs [#_shine_HuffmanCode] ; |1142| 
$C$DW$L$_Huffmancodebits$7$E:
$C$L77:    
$C$DW$L$_Huffmancodebits$8$B:
	.dwendtag $C$DW$388

	.dwpsn	file "./mp3_encode.c",line 1132,column 32,is_stmt
        MOV dbl(*SP(#16)), AC0 ; |1132| 
        ADD #2, AC0 ; |1132| 
        MOV AC0, dbl(*SP(#16)) ; |1132| 
	.dwpsn	file "./mp3_encode.c",line 1132,column 17,is_stmt
        MOV dbl(*SP(#16)), AC1 ; |1132| 
        MOV dbl(*SP(#18)), AC0 ; |1132| 
        CMP AC1 < AC0, TC1 ; |1132| 
        BCC $C$L74,TC1 ; |1132| 
                                        ; branchcc occurs ; |1132| 
$C$DW$L$_Huffmancodebits$8$E:
$C$L78:    
	.dwpsn	file "./mp3_encode.c",line 1147,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV *AR3(#12), AR1 ; |1147| 
        ADD #32, AR1, AR1 ; |1147| 
        MOV AR1, HI(AC0)
        MPYK #12, AC0, AC0 ; |1147| 
        MOV AC0, AR1 ; |1147| 
        AMOV #_shine_huffman_table, XAR3 ; |1147| 

        MOV XAR3, dbl(*SP(#30))
||      AADD AR1, AR3 ; |1147| 

	.dwpsn	file "./mp3_encode.c",line 1148,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV *AR3(short(#2)), AC0 ; |1148| 
        SFTL AC0, #2, AC0 ; |1148| 
        AND #0xffff, AC0, AC0 ; |1148| 
        ADD dbl(*SP(#18)), AC0, AC0 ; |1148| 
        MOV AC0, dbl(*SP(#20)) ; |1148| 
	.dwpsn	file "./mp3_encode.c",line 1149,column 10,is_stmt
        MOV dbl(*SP(#18)), AC0 ; |1149| 
        MOV AC0, dbl(*SP(#16)) ; |1149| 
	.dwpsn	file "./mp3_encode.c",line 1149,column 25,is_stmt
        MOV dbl(*SP(#16)), AC1 ; |1149| 
        MOV dbl(*SP(#20)), AC0 ; |1149| 
        CMP AC1 >= AC0, TC1 ; |1149| 
        BCC $C$L80,TC1 ; |1149| 
                                        ; branchcc occurs ; |1149| 
$C$L79:    
$C$DW$L$_Huffmancodebits$10$B:
	.dwpsn	file "./mp3_encode.c",line 1151,column 9,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV *SP(#17), T0 ; |1151| 
        SFTL T0, #1 ; |1151| 
        MOV dbl(*AR3(T0)), AC0 ; |1151| 
        MOV AC0, dbl(*SP(#22)) ; |1151| 
	.dwpsn	file "./mp3_encode.c",line 1152,column 9,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*SP(#16)), AC0 ; |1152| 
        ADD #1, AC0 ; |1152| 
        MOV AC0, T0 ; |1152| 
        SFTL T0, #1 ; |1152| 
        MOV dbl(*AR3(T0)), AC0 ; |1152| 
        MOV AC0, dbl(*SP(#24)) ; |1152| 
	.dwpsn	file "./mp3_encode.c",line 1153,column 9,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*SP(#16)), AC0 ; |1153| 
        ADD #2, AC0 ; |1153| 
        MOV AC0, T0 ; |1153| 
        SFTL T0, #1 ; |1153| 
        MOV dbl(*AR3(T0)), AC0 ; |1153| 
        MOV AC0, dbl(*SP(#26)) ; |1153| 
	.dwpsn	file "./mp3_encode.c",line 1154,column 9,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*SP(#16)), AC0 ; |1154| 
        ADD #3, AC0 ; |1154| 
        MOV AC0, T0 ; |1154| 
        SFTL T0, #1 ; |1154| 
        MOV dbl(*AR3(T0)), AC0 ; |1154| 
        MOV AC0, dbl(*SP(#28)) ; |1154| 
	.dwpsn	file "./mp3_encode.c",line 1155,column 9,is_stmt
        MOV dbl(*SP(#28)), AC0 ; |1155| 
        MOV AC0, dbl(*SP(#0)) ; |1155| 
        MOV dbl(*SP(#2)), XAR0
        MOV dbl(*SP(#30)), XAR1
        MOV dbl(*SP(#24)), AC1 ; |1155| 
        MOV dbl(*SP(#26)), AC2 ; |1155| 
        MOV dbl(*SP(#22)), AC0 ; |1155| 
        AMAR *+AR0(#724) ; |1155| 
$C$DW$392	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$392, DW_AT_low_pc(0x00)
	.dwattr $C$DW$392, DW_AT_name("_shine_huffman_coder_count1")
	.dwattr $C$DW$392, DW_AT_TI_call
        CALL #_shine_huffman_coder_count1 ; |1155| 
                                        ; call occurs [#_shine_huffman_coder_count1] ; |1155| 
	.dwpsn	file "./mp3_encode.c",line 1149,column 40,is_stmt
        MOV dbl(*SP(#16)), AC0 ; |1149| 
        ADD #4, AC0 ; |1149| 
        MOV AC0, dbl(*SP(#16)) ; |1149| 
	.dwpsn	file "./mp3_encode.c",line 1149,column 25,is_stmt
        MOV dbl(*SP(#20)), AC0 ; |1149| 
        MOV dbl(*SP(#16)), AC1 ; |1149| 
        CMP AC1 < AC0, TC1 ; |1149| 
        BCC $C$L79,TC1 ; |1149| 
                                        ; branchcc occurs ; |1149| 
$C$DW$L$_Huffmancodebits$10$E:
$C$L80:    
	.dwpsn	file "./mp3_encode.c",line 1158,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR0
        AMAR *+AR0(#724) ; |1158| 
$C$DW$393	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$393, DW_AT_low_pc(0x00)
	.dwattr $C$DW$393, DW_AT_name("_shine_get_bits_count")
	.dwattr $C$DW$393, DW_AT_TI_call
        CALL #_shine_get_bits_count ; |1158| 
                                        ; call occurs [#_shine_get_bits_count] ; |1158| 
        SUB dbl(*SP(#32)), AC0, AC0 ; |1158| 
        MOV AC0, dbl(*SP(#32)) ; |1158| 
	.dwpsn	file "./mp3_encode.c",line 1159,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR2
        MOV dbl(*SP(#6)), XAR3
        MOV *AR2, AC0 ; |1159| 
        SUB uns(*AR3(#13)), AC0, AC0 ; |1159| 
        AND #0xffff, AC0, AC0 ; |1159| 
        SUB dbl(*SP(#32)), AC0, AC0 ; |1159| 
        MOV AC0, dbl(*SP(#32)) ; |1159| 
	.dwpsn	file "./mp3_encode.c",line 1160,column 5,is_stmt
        MOV dbl(*SP(#32)), AC0 ; |1160| 
        BCC $C$L84,AC0 == #0 ; |1160| 
                                        ; branchcc occurs ; |1160| 

$C$DW$394	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$395	.dwtag  DW_TAG_variable, DW_AT_name("stuffingWords")
	.dwattr $C$DW$395, DW_AT_TI_symbol_name("_stuffingWords")
	.dwattr $C$DW$395, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$395, DW_AT_location[DW_OP_bregx 0x24 34]
$C$DW$396	.dwtag  DW_TAG_variable, DW_AT_name("remainingBits")
	.dwattr $C$DW$396, DW_AT_TI_symbol_name("_remainingBits")
	.dwattr $C$DW$396, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$396, DW_AT_location[DW_OP_bregx 0x24 36]
	.dwpsn	file "./mp3_encode.c",line 1162,column 17,is_stmt
        MOV dbl(*SP(#32)), AC0 ; |1162| 
        SFTS AC0, #-4, AC1 ; |1162| 
        SFTL AC1, #-27, AC1 ; |1162| 
        ADD AC0, AC1 ; |1162| 
        SFTS AC1, #-5, AC0 ; |1162| 
        MOV AC0, dbl(*SP(#34)) ; |1162| 
	.dwpsn	file "./mp3_encode.c",line 1163,column 17,is_stmt
        MOV #32, AC1 ; |1163| 
        MOV dbl(*SP(#32)), AC0 ; |1163| 
$C$DW$397	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$397, DW_AT_low_pc(0x00)
	.dwattr $C$DW$397, DW_AT_name("__remli")
	.dwattr $C$DW$397, DW_AT_TI_call
        CALL #__remli ; |1163| 
                                        ; call occurs [#__remli] ; |1163| 
        MOV AC0, dbl(*SP(#36)) ; |1163| 
	.dwpsn	file "./mp3_encode.c",line 1166,column 9,is_stmt
        MOV dbl(*SP(#34)), AC0 ; |1166| 
        SUB #1, AC0, AC1 ; |1166| 
        MOV AC1, dbl(*SP(#34)) ; |1166| 
        BCC $C$L82,AC0 == #0 ; |1166| 
                                        ; branchcc occurs ; |1166| 
$C$L81:    
$C$DW$L$_Huffmancodebits$13$B:
	.dwpsn	file "./mp3_encode.c",line 1167,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR0
        MOV #-1 << #16, AC0 ; |1167| 
        MOV #32, AC1 ; |1167| 
        OR #0xffff, AC0, AC0 ; |1167| 
        AMAR *+AR0(#724) ; |1167| 
$C$DW$398	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$398, DW_AT_low_pc(0x00)
	.dwattr $C$DW$398, DW_AT_name("_shine_putbits")
	.dwattr $C$DW$398, DW_AT_TI_call
        CALL #_shine_putbits ; |1167| 
                                        ; call occurs [#_shine_putbits] ; |1167| 
        MOV dbl(*SP(#34)), AC0 ; |1167| 
        SUB #1, AC0, AC1 ; |1167| 
        MOV AC1, dbl(*SP(#34)) ; |1167| 
        BCC $C$L81,AC0 != #0 ; |1167| 
                                        ; branchcc occurs ; |1167| 
$C$DW$L$_Huffmancodebits$13$E:
$C$L82:    
	.dwpsn	file "./mp3_encode.c",line 1168,column 9,is_stmt
        MOV dbl(*SP(#36)), AC0 ; |1168| 
        BCC $C$L83,AC0 == #0 ; |1168| 
                                        ; branchcc occurs ; |1168| 
	.dwpsn	file "./mp3_encode.c",line 1169,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR0

        MOV #1, AC0 ; |1169| 
||      MOV *SP(#37), T1 ; |1169| 

        SFTS AC0, T1, AC0 ; |1169| 
        AMAR *+AR0(#724) ; |1169| 

        SUB #1, AC0, AC0 ; |1169| 
||      MOV dbl(*SP(#36)), AC1 ; |1169| 

$C$DW$399	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$399, DW_AT_low_pc(0x00)
	.dwattr $C$DW$399, DW_AT_name("_shine_putbits")
	.dwattr $C$DW$399, DW_AT_TI_call
        CALL #_shine_putbits ; |1169| 
                                        ; call occurs [#_shine_putbits] ; |1169| 
$C$L83:    
	.dwendtag $C$DW$394

	.dwpsn	file "./mp3_encode.c",line 1171,column 1,is_stmt
$C$L84:    
        AADD #39, SP
	.dwcfi	cfa_offset, 1
$C$DW$400	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$400, DW_AT_low_pc(0x00)
	.dwattr $C$DW$400, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$401	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$401, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L81:1:1738864582")
	.dwattr $C$DW$401, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$401, DW_AT_TI_begin_line(0x48e)
	.dwattr $C$DW$401, DW_AT_TI_end_line(0x48f)
$C$DW$402	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$402, DW_AT_low_pc($C$DW$L$_Huffmancodebits$13$B)
	.dwattr $C$DW$402, DW_AT_high_pc($C$DW$L$_Huffmancodebits$13$E)
	.dwendtag $C$DW$401


$C$DW$403	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$403, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L79:1:1738864582")
	.dwattr $C$DW$403, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$403, DW_AT_TI_begin_line(0x47d)
	.dwattr $C$DW$403, DW_AT_TI_end_line(0x484)
$C$DW$404	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$404, DW_AT_low_pc($C$DW$L$_Huffmancodebits$10$B)
	.dwattr $C$DW$404, DW_AT_high_pc($C$DW$L$_Huffmancodebits$10$E)
	.dwendtag $C$DW$403


$C$DW$405	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$405, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L74:1:1738864582")
	.dwattr $C$DW$405, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$405, DW_AT_TI_begin_line(0x46c)
	.dwattr $C$DW$405, DW_AT_TI_end_line(0x478)
$C$DW$406	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$406, DW_AT_low_pc($C$DW$L$_Huffmancodebits$2$B)
	.dwattr $C$DW$406, DW_AT_high_pc($C$DW$L$_Huffmancodebits$2$E)
$C$DW$407	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$407, DW_AT_low_pc($C$DW$L$_Huffmancodebits$3$B)
	.dwattr $C$DW$407, DW_AT_high_pc($C$DW$L$_Huffmancodebits$3$E)
$C$DW$408	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$408, DW_AT_low_pc($C$DW$L$_Huffmancodebits$4$B)
	.dwattr $C$DW$408, DW_AT_high_pc($C$DW$L$_Huffmancodebits$4$E)
$C$DW$409	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$409, DW_AT_low_pc($C$DW$L$_Huffmancodebits$5$B)
	.dwattr $C$DW$409, DW_AT_high_pc($C$DW$L$_Huffmancodebits$5$E)
$C$DW$410	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$410, DW_AT_low_pc($C$DW$L$_Huffmancodebits$6$B)
	.dwattr $C$DW$410, DW_AT_high_pc($C$DW$L$_Huffmancodebits$6$E)
$C$DW$411	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$411, DW_AT_low_pc($C$DW$L$_Huffmancodebits$7$B)
	.dwattr $C$DW$411, DW_AT_high_pc($C$DW$L$_Huffmancodebits$7$E)
$C$DW$412	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$412, DW_AT_low_pc($C$DW$L$_Huffmancodebits$8$B)
	.dwattr $C$DW$412, DW_AT_high_pc($C$DW$L$_Huffmancodebits$8$E)
	.dwendtag $C$DW$405

	.dwattr $C$DW$367, DW_AT_TI_end_file("./mp3_encode.c")
	.dwattr $C$DW$367, DW_AT_TI_end_line(0x493)
	.dwattr $C$DW$367, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$367

	.sect	".text"

$C$DW$413	.dwtag  DW_TAG_subprogram, DW_AT_name("shine_huffman_coder_count1")
	.dwattr $C$DW$413, DW_AT_low_pc(_shine_huffman_coder_count1)
	.dwattr $C$DW$413, DW_AT_high_pc(0x00)
	.dwattr $C$DW$413, DW_AT_TI_symbol_name("_shine_huffman_coder_count1")
	.dwattr $C$DW$413, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$413, DW_AT_TI_begin_line(0x49d)
	.dwattr $C$DW$413, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$413, DW_AT_TI_max_frame_size(0x1a)
	.dwpsn	file "./mp3_encode.c",line 1182,column 1,is_stmt,address _shine_huffman_coder_count1

	.dwfde $C$DW$CIE, _shine_huffman_coder_count1
$C$DW$414	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bs")
	.dwattr $C$DW$414, DW_AT_TI_symbol_name("_bs")
	.dwattr $C$DW$414, DW_AT_type(*$C$DW$T$128)
	.dwattr $C$DW$414, DW_AT_location[DW_OP_reg17]
$C$DW$415	.dwtag  DW_TAG_formal_parameter, DW_AT_name("h")
	.dwattr $C$DW$415, DW_AT_TI_symbol_name("_h")
	.dwattr $C$DW$415, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$415, DW_AT_location[DW_OP_reg19]
$C$DW$416	.dwtag  DW_TAG_formal_parameter, DW_AT_name("v")
	.dwattr $C$DW$416, DW_AT_TI_symbol_name("_v")
	.dwattr $C$DW$416, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$416, DW_AT_location[DW_OP_reg0]
$C$DW$417	.dwtag  DW_TAG_formal_parameter, DW_AT_name("w")
	.dwattr $C$DW$417, DW_AT_TI_symbol_name("_w")
	.dwattr $C$DW$417, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$417, DW_AT_location[DW_OP_reg3]
$C$DW$418	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x")
	.dwattr $C$DW$418, DW_AT_TI_symbol_name("_x")
	.dwattr $C$DW$418, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$418, DW_AT_location[DW_OP_reg6]
$C$DW$419	.dwtag  DW_TAG_formal_parameter, DW_AT_name("y")
	.dwattr $C$DW$419, DW_AT_TI_symbol_name("_y")
	.dwattr $C$DW$419, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$419, DW_AT_location[DW_OP_bregx 0x24 26]
;*******************************************************************************
;* FUNCTION NAME: shine_huffman_coder_count1                                   *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,AC2,AC2,T0,AR0,XAR0,AR1,XAR1,AR3,    *
;*                        XAR3,SP,CARRY,M40,SATA,SATD,RDM,FRCT,SMUL            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 26 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (24 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_shine_huffman_coder_count1:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-25, SP
	.dwcfi	cfa_offset, 26
$C$DW$420	.dwtag  DW_TAG_variable, DW_AT_name("bs")
	.dwattr $C$DW$420, DW_AT_TI_symbol_name("_bs")
	.dwattr $C$DW$420, DW_AT_type(*$C$DW$T$128)
	.dwattr $C$DW$420, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$421	.dwtag  DW_TAG_variable, DW_AT_name("h")
	.dwattr $C$DW$421, DW_AT_TI_symbol_name("_h")
	.dwattr $C$DW$421, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$421, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$422	.dwtag  DW_TAG_variable, DW_AT_name("v")
	.dwattr $C$DW$422, DW_AT_TI_symbol_name("_v")
	.dwattr $C$DW$422, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$422, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$423	.dwtag  DW_TAG_variable, DW_AT_name("w")
	.dwattr $C$DW$423, DW_AT_TI_symbol_name("_w")
	.dwattr $C$DW$423, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$423, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$424	.dwtag  DW_TAG_variable, DW_AT_name("x")
	.dwattr $C$DW$424, DW_AT_TI_symbol_name("_x")
	.dwattr $C$DW$424, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$424, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$425	.dwtag  DW_TAG_variable, DW_AT_name("signv")
	.dwattr $C$DW$425, DW_AT_TI_symbol_name("_signv")
	.dwattr $C$DW$425, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$425, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$426	.dwtag  DW_TAG_variable, DW_AT_name("signw")
	.dwattr $C$DW$426, DW_AT_TI_symbol_name("_signw")
	.dwattr $C$DW$426, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$426, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$427	.dwtag  DW_TAG_variable, DW_AT_name("signx")
	.dwattr $C$DW$427, DW_AT_TI_symbol_name("_signx")
	.dwattr $C$DW$427, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$427, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$428	.dwtag  DW_TAG_variable, DW_AT_name("signy")
	.dwattr $C$DW$428, DW_AT_TI_symbol_name("_signy")
	.dwattr $C$DW$428, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$428, DW_AT_location[DW_OP_bregx 0x24 16]
$C$DW$429	.dwtag  DW_TAG_variable, DW_AT_name("code")
	.dwattr $C$DW$429, DW_AT_TI_symbol_name("_code")
	.dwattr $C$DW$429, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$429, DW_AT_location[DW_OP_bregx 0x24 18]
$C$DW$430	.dwtag  DW_TAG_variable, DW_AT_name("p")
	.dwattr $C$DW$430, DW_AT_TI_symbol_name("_p")
	.dwattr $C$DW$430, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$430, DW_AT_location[DW_OP_bregx 0x24 20]
$C$DW$431	.dwtag  DW_TAG_variable, DW_AT_name("cbits")
	.dwattr $C$DW$431, DW_AT_TI_symbol_name("_cbits")
	.dwattr $C$DW$431, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$431, DW_AT_location[DW_OP_bregx 0x24 22]
        MOV AC2, dbl(*SP(#8)) ; |1182| 
        MOV AC1, dbl(*SP(#6)) ; |1182| 
        MOV AC0, dbl(*SP(#4)) ; |1182| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./mp3_encode.c",line 1184,column 14,is_stmt
        MOV #0, AC0 ; |1184| 
        MOV AC0, dbl(*SP(#18)) ; |1184| 
	.dwpsn	file "./mp3_encode.c",line 1185,column 16,is_stmt
        MOV AC0, dbl(*SP(#22)) ; |1185| 
	.dwpsn	file "./mp3_encode.c",line 1187,column 5,is_stmt
        AMAR *SP(#4), XAR0
$C$DW$432	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$432, DW_AT_low_pc(0x00)
	.dwattr $C$DW$432, DW_AT_name("_shine_abs_and_sign")
	.dwattr $C$DW$432, DW_AT_TI_call
        CALL #_shine_abs_and_sign ; |1187| 
                                        ; call occurs [#_shine_abs_and_sign] ; |1187| 
        MOV AC0, dbl(*SP(#10)) ; |1187| 
	.dwpsn	file "./mp3_encode.c",line 1188,column 5,is_stmt
        AMAR *SP(#6), XAR0
$C$DW$433	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$433, DW_AT_low_pc(0x00)
	.dwattr $C$DW$433, DW_AT_name("_shine_abs_and_sign")
	.dwattr $C$DW$433, DW_AT_TI_call
        CALL #_shine_abs_and_sign ; |1188| 
                                        ; call occurs [#_shine_abs_and_sign] ; |1188| 
        MOV AC0, dbl(*SP(#12)) ; |1188| 
	.dwpsn	file "./mp3_encode.c",line 1189,column 5,is_stmt
        AMAR *SP(#8), XAR0
$C$DW$434	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$434, DW_AT_low_pc(0x00)
	.dwattr $C$DW$434, DW_AT_name("_shine_abs_and_sign")
	.dwattr $C$DW$434, DW_AT_TI_call
        CALL #_shine_abs_and_sign ; |1189| 
                                        ; call occurs [#_shine_abs_and_sign] ; |1189| 
        MOV AC0, dbl(*SP(#14)) ; |1189| 
	.dwpsn	file "./mp3_encode.c",line 1190,column 5,is_stmt
        AMAR *SP(#26), XAR0
$C$DW$435	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$435, DW_AT_low_pc(0x00)
	.dwattr $C$DW$435, DW_AT_name("_shine_abs_and_sign")
	.dwattr $C$DW$435, DW_AT_TI_call
        CALL #_shine_abs_and_sign ; |1190| 
                                        ; call occurs [#_shine_abs_and_sign] ; |1190| 
        MOV AC0, dbl(*SP(#16)) ; |1190| 
	.dwpsn	file "./mp3_encode.c",line 1192,column 5,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |1192| 

        SFTL AC0, #1 ; |1192| 
||      MOV dbl(*SP(#8)), AC1 ; |1192| 

        ADD dbl(*SP(#4)), AC0, AC0 ; |1192| 

        MOV dbl(*SP(#26)), AC1 ; |1192| 
||      ADD AC1 << #2, AC0 ; |1192| 

        ADD AC1 << #3, AC0 ; |1192| 
        MOV AC0, dbl(*SP(#20)) ; |1192| 
	.dwpsn	file "./mp3_encode.c",line 1193,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#21), T0 ; |1193| 
        MOV dbl(*AR3(#8)), XAR3
        MOV uns(*AR3(T0)), AC0 ; |1193| 
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(#10)), XAR3
        MOV dbl(*SP(#0)), XAR0
        MOV uns(*AR3(T0)), AC1 ; |1193| 
$C$DW$436	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$436, DW_AT_low_pc(0x00)
	.dwattr $C$DW$436, DW_AT_name("_shine_putbits")
	.dwattr $C$DW$436, DW_AT_TI_call
        CALL #_shine_putbits ; |1193| 
                                        ; call occurs [#_shine_putbits] ; |1193| 
	.dwpsn	file "./mp3_encode.c",line 1195,column 5,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |1195| 
        BCC $C$L85,AC0 == #0 ; |1195| 
                                        ; branchcc occurs ; |1195| 
	.dwpsn	file "./mp3_encode.c",line 1197,column 9,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |1197| 
        MOV AC0, dbl(*SP(#18)) ; |1197| 
	.dwpsn	file "./mp3_encode.c",line 1198,column 9,is_stmt
        MOV #1, AC0 ; |1198| 
        MOV AC0, dbl(*SP(#22)) ; |1198| 
$C$L85:    
	.dwpsn	file "./mp3_encode.c",line 1200,column 5,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |1200| 
        BCC $C$L86,AC0 == #0 ; |1200| 
                                        ; branchcc occurs ; |1200| 
	.dwpsn	file "./mp3_encode.c",line 1202,column 9,is_stmt
        MOV dbl(*SP(#18)), AC1 ; |1202| 
        MOV dbl(*SP(#12)), AC0 ; |1202| 
        OR AC1 << #1, AC0 ; |1202| 
        MOV AC0, dbl(*SP(#18)) ; |1202| 
	.dwpsn	file "./mp3_encode.c",line 1203,column 9,is_stmt
        MOV dbl(*SP(#22)), AC0 ; |1203| 
        ADD #1, AC0 ; |1203| 
        MOV AC0, dbl(*SP(#22)) ; |1203| 
$C$L86:    
	.dwpsn	file "./mp3_encode.c",line 1205,column 5,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |1205| 
        BCC $C$L87,AC0 == #0 ; |1205| 
                                        ; branchcc occurs ; |1205| 
	.dwpsn	file "./mp3_encode.c",line 1207,column 9,is_stmt
        MOV dbl(*SP(#18)), AC1 ; |1207| 
        MOV dbl(*SP(#14)), AC0 ; |1207| 
        OR AC1 << #1, AC0 ; |1207| 
        MOV AC0, dbl(*SP(#18)) ; |1207| 
	.dwpsn	file "./mp3_encode.c",line 1208,column 9,is_stmt
        MOV dbl(*SP(#22)), AC0 ; |1208| 
        ADD #1, AC0 ; |1208| 
        MOV AC0, dbl(*SP(#22)) ; |1208| 
$C$L87:    
	.dwpsn	file "./mp3_encode.c",line 1210,column 5,is_stmt
        MOV dbl(*SP(#26)), AC0 ; |1210| 
        BCC $C$L88,AC0 == #0 ; |1210| 
                                        ; branchcc occurs ; |1210| 
	.dwpsn	file "./mp3_encode.c",line 1212,column 9,is_stmt
        MOV dbl(*SP(#18)), AC1 ; |1212| 
        MOV dbl(*SP(#16)), AC0 ; |1212| 
        OR AC1 << #1, AC0 ; |1212| 
        MOV AC0, dbl(*SP(#18)) ; |1212| 
	.dwpsn	file "./mp3_encode.c",line 1213,column 9,is_stmt
        MOV dbl(*SP(#22)), AC0 ; |1213| 
        ADD #1, AC0 ; |1213| 
        MOV AC0, dbl(*SP(#22)) ; |1213| 
$C$L88:    
	.dwpsn	file "./mp3_encode.c",line 1215,column 5,is_stmt
        MOV dbl(*SP(#22)), AC1 ; |1215| 
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#18)), AC0 ; |1215| 
$C$DW$437	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$437, DW_AT_low_pc(0x00)
	.dwattr $C$DW$437, DW_AT_name("_shine_putbits")
	.dwattr $C$DW$437, DW_AT_TI_call
        CALL #_shine_putbits ; |1215| 
                                        ; call occurs [#_shine_putbits] ; |1215| 
	.dwpsn	file "./mp3_encode.c",line 1216,column 1,is_stmt
        AADD #25, SP
	.dwcfi	cfa_offset, 1
$C$DW$438	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$438, DW_AT_low_pc(0x00)
	.dwattr $C$DW$438, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$413, DW_AT_TI_end_file("./mp3_encode.c")
	.dwattr $C$DW$413, DW_AT_TI_end_line(0x4c0)
	.dwattr $C$DW$413, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$413

	.sect	".text"

$C$DW$439	.dwtag  DW_TAG_subprogram, DW_AT_name("shine_HuffmanCode")
	.dwattr $C$DW$439, DW_AT_low_pc(_shine_HuffmanCode)
	.dwattr $C$DW$439, DW_AT_high_pc(0x00)
	.dwattr $C$DW$439, DW_AT_TI_symbol_name("_shine_HuffmanCode")
	.dwattr $C$DW$439, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$439, DW_AT_TI_begin_line(0x4c3)
	.dwattr $C$DW$439, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$439, DW_AT_TI_max_frame_size(0x22)
	.dwpsn	file "./mp3_encode.c",line 1220,column 1,is_stmt,address _shine_HuffmanCode

	.dwfde $C$DW$CIE, _shine_HuffmanCode
$C$DW$440	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bs")
	.dwattr $C$DW$440, DW_AT_TI_symbol_name("_bs")
	.dwattr $C$DW$440, DW_AT_type(*$C$DW$T$128)
	.dwattr $C$DW$440, DW_AT_location[DW_OP_reg17]
$C$DW$441	.dwtag  DW_TAG_formal_parameter, DW_AT_name("table_select")
	.dwattr $C$DW$441, DW_AT_TI_symbol_name("_table_select")
	.dwattr $C$DW$441, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$441, DW_AT_location[DW_OP_reg0]
$C$DW$442	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x")
	.dwattr $C$DW$442, DW_AT_TI_symbol_name("_x")
	.dwattr $C$DW$442, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$442, DW_AT_location[DW_OP_reg3]
$C$DW$443	.dwtag  DW_TAG_formal_parameter, DW_AT_name("y")
	.dwattr $C$DW$443, DW_AT_TI_symbol_name("_y")
	.dwattr $C$DW$443, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$443, DW_AT_location[DW_OP_reg6]
;*******************************************************************************
;* FUNCTION NAME: shine_HuffmanCode                                            *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,AC2,AC2,T0,T1,AR0,XAR0,AR1,AR3,XAR3, *
;*                        SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL             *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 34 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (32 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_shine_HuffmanCode:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-33, SP
	.dwcfi	cfa_offset, 34
$C$DW$444	.dwtag  DW_TAG_variable, DW_AT_name("bs")
	.dwattr $C$DW$444, DW_AT_TI_symbol_name("_bs")
	.dwattr $C$DW$444, DW_AT_type(*$C$DW$T$128)
	.dwattr $C$DW$444, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$445	.dwtag  DW_TAG_variable, DW_AT_name("table_select")
	.dwattr $C$DW$445, DW_AT_TI_symbol_name("_table_select")
	.dwattr $C$DW$445, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$445, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$446	.dwtag  DW_TAG_variable, DW_AT_name("x")
	.dwattr $C$DW$446, DW_AT_TI_symbol_name("_x")
	.dwattr $C$DW$446, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$446, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$447	.dwtag  DW_TAG_variable, DW_AT_name("y")
	.dwattr $C$DW$447, DW_AT_TI_symbol_name("_y")
	.dwattr $C$DW$447, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$447, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$448	.dwtag  DW_TAG_variable, DW_AT_name("cbits")
	.dwattr $C$DW$448, DW_AT_TI_symbol_name("_cbits")
	.dwattr $C$DW$448, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$448, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$449	.dwtag  DW_TAG_variable, DW_AT_name("xbits")
	.dwattr $C$DW$449, DW_AT_TI_symbol_name("_xbits")
	.dwattr $C$DW$449, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$449, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$450	.dwtag  DW_TAG_variable, DW_AT_name("code")
	.dwattr $C$DW$450, DW_AT_TI_symbol_name("_code")
	.dwattr $C$DW$450, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$450, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$451	.dwtag  DW_TAG_variable, DW_AT_name("ext")
	.dwattr $C$DW$451, DW_AT_TI_symbol_name("_ext")
	.dwattr $C$DW$451, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$451, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$452	.dwtag  DW_TAG_variable, DW_AT_name("signx")
	.dwattr $C$DW$452, DW_AT_TI_symbol_name("_signx")
	.dwattr $C$DW$452, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$452, DW_AT_location[DW_OP_bregx 0x24 16]
$C$DW$453	.dwtag  DW_TAG_variable, DW_AT_name("signy")
	.dwattr $C$DW$453, DW_AT_TI_symbol_name("_signy")
	.dwattr $C$DW$453, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$453, DW_AT_location[DW_OP_bregx 0x24 18]
$C$DW$454	.dwtag  DW_TAG_variable, DW_AT_name("ylen")
	.dwattr $C$DW$454, DW_AT_TI_symbol_name("_ylen")
	.dwattr $C$DW$454, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$454, DW_AT_location[DW_OP_bregx 0x24 20]
$C$DW$455	.dwtag  DW_TAG_variable, DW_AT_name("idx")
	.dwattr $C$DW$455, DW_AT_TI_symbol_name("_idx")
	.dwattr $C$DW$455, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$455, DW_AT_location[DW_OP_bregx 0x24 22]
$C$DW$456	.dwtag  DW_TAG_variable, DW_AT_name("h")
	.dwattr $C$DW$456, DW_AT_TI_symbol_name("_h")
	.dwattr $C$DW$456, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$456, DW_AT_location[DW_OP_bregx 0x24 24]
        MOV AC2, dbl(*SP(#6)) ; |1220| 
        MOV AC1, dbl(*SP(#4)) ; |1220| 
        MOV AC0, dbl(*SP(#2)) ; |1220| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./mp3_encode.c",line 1221,column 13,is_stmt
        MOV #0, AC0 ; |1221| 
        MOV AC0, dbl(*SP(#8)) ; |1221| 
	.dwpsn	file "./mp3_encode.c",line 1221,column 24,is_stmt
        MOV AC0, dbl(*SP(#10)) ; |1221| 
	.dwpsn	file "./mp3_encode.c",line 1222,column 14,is_stmt
        MOV AC0, dbl(*SP(#12)) ; |1222| 
	.dwpsn	file "./mp3_encode.c",line 1222,column 24,is_stmt
        MOV AC0, dbl(*SP(#14)) ; |1222| 
	.dwpsn	file "./mp3_encode.c",line 1226,column 5,is_stmt
        AMAR *SP(#4), XAR0
$C$DW$457	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$457, DW_AT_low_pc(0x00)
	.dwattr $C$DW$457, DW_AT_name("_shine_abs_and_sign")
	.dwattr $C$DW$457, DW_AT_TI_call
        CALL #_shine_abs_and_sign ; |1226| 
                                        ; call occurs [#_shine_abs_and_sign] ; |1226| 
        MOV AC0, dbl(*SP(#16)) ; |1226| 
	.dwpsn	file "./mp3_encode.c",line 1227,column 5,is_stmt
        AMAR *SP(#6), XAR0
$C$DW$458	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$458, DW_AT_low_pc(0x00)
	.dwattr $C$DW$458, DW_AT_name("_shine_abs_and_sign")
	.dwattr $C$DW$458, DW_AT_TI_call
        CALL #_shine_abs_and_sign ; |1227| 
                                        ; call occurs [#_shine_abs_and_sign] ; |1227| 
        MOV AC0, dbl(*SP(#18)) ; |1227| 
	.dwpsn	file "./mp3_encode.c",line 1229,column 5,is_stmt
        MPYMK *SP(#3), #12, AC0 ; |1229| 
        MOV AC0, AR1 ; |1229| 
        AMOV #_shine_huffman_table, XAR3 ; |1229| 

        MOV XAR3, dbl(*SP(#24))
||      AADD AR1, AR3 ; |1229| 

	.dwpsn	file "./mp3_encode.c",line 1230,column 5,is_stmt
        MOV dbl(*AR3(short(#2))), AC0 ; |1230| 
        MOV AC0, dbl(*SP(#20)) ; |1230| 
	.dwpsn	file "./mp3_encode.c",line 1232,column 5,is_stmt

        MOV dbl(*SP(#2)), AC1 ; |1232| 
||      MOV #15, AC0 ; |1232| 

        CMP AC1 <= AC0, TC1 ; |1232| 
        BCC $C$L95,TC1 ; |1232| 
                                        ; branchcc occurs ; |1232| 

$C$DW$459	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$460	.dwtag  DW_TAG_variable, DW_AT_name("linbitsx")
	.dwattr $C$DW$460, DW_AT_TI_symbol_name("_linbitsx")
	.dwattr $C$DW$460, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$460, DW_AT_location[DW_OP_bregx 0x24 26]
$C$DW$461	.dwtag  DW_TAG_variable, DW_AT_name("linbitsy")
	.dwattr $C$DW$461, DW_AT_TI_symbol_name("_linbitsy")
	.dwattr $C$DW$461, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$461, DW_AT_location[DW_OP_bregx 0x24 28]
$C$DW$462	.dwtag  DW_TAG_variable, DW_AT_name("linbits")
	.dwattr $C$DW$462, DW_AT_TI_symbol_name("_linbits")
	.dwattr $C$DW$462, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$462, DW_AT_location[DW_OP_bregx 0x24 30]
	.dwpsn	file "./mp3_encode.c",line 1234,column 18,is_stmt
        MOV #0, AC0 ; |1234| 
        MOV AC0, dbl(*SP(#26)) ; |1234| 
	.dwpsn	file "./mp3_encode.c",line 1234,column 32,is_stmt
        MOV AC0, dbl(*SP(#28)) ; |1234| 
	.dwpsn	file "./mp3_encode.c",line 1234,column 46,is_stmt
        MOV dbl(*SP(#24)), XAR3
        MOV dbl(*AR3(short(#4))), AC0 ; |1234| 
        MOV AC0, dbl(*SP(#30)) ; |1234| 
	.dwpsn	file "./mp3_encode.c",line 1236,column 9,is_stmt

        MOV dbl(*SP(#4)), AC1 ; |1236| 
||      MOV #14, AC0 ; |1236| 

        CMP AC1 <= AC0, TC1 ; |1236| 
        BCC $C$L89,TC1 ; |1236| 
                                        ; branchcc occurs ; |1236| 
	.dwpsn	file "./mp3_encode.c",line 1238,column 13,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |1238| 
        SUB #15, AC0 ; |1238| 
        MOV AC0, dbl(*SP(#26)) ; |1238| 
	.dwpsn	file "./mp3_encode.c",line 1239,column 13,is_stmt
        MOV #15, AC0 ; |1239| 
        MOV AC0, dbl(*SP(#4)) ; |1239| 
$C$L89:    
	.dwpsn	file "./mp3_encode.c",line 1241,column 9,is_stmt

        MOV dbl(*SP(#6)), AC1 ; |1241| 
||      MOV #14, AC0 ; |1241| 

        CMP AC1 <= AC0, TC1 ; |1241| 
        BCC $C$L90,TC1 ; |1241| 
                                        ; branchcc occurs ; |1241| 
	.dwpsn	file "./mp3_encode.c",line 1243,column 13,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |1243| 
        SUB #15, AC0 ; |1243| 
        MOV AC0, dbl(*SP(#28)) ; |1243| 
	.dwpsn	file "./mp3_encode.c",line 1244,column 13,is_stmt
        MOV #15, AC0 ; |1244| 
        MOV AC0, dbl(*SP(#6)) ; |1244| 
$C$L90:    
	.dwpsn	file "./mp3_encode.c",line 1247,column 9,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |1247| 
        MOV dbl(*SP(#20)), AC1 ; |1247| 
$C$DW$463	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$463, DW_AT_low_pc(0x00)
	.dwattr $C$DW$463, DW_AT_name("__mpyli")
	.dwattr $C$DW$463, DW_AT_TI_call
        CALL #__mpyli ; |1247| 
                                        ; call occurs [#__mpyli] ; |1247| 
        ADD dbl(*SP(#6)), AC0, AC0 ; |1247| 
        MOV AC0, dbl(*SP(#22)) ; |1247| 
	.dwpsn	file "./mp3_encode.c",line 1248,column 9,is_stmt
        MOV dbl(*SP(#24)), XAR3
        MOV *SP(#23), T0 ; |1248| 
        MOV dbl(*AR3(#8)), XAR3
        MOV uns(*AR3(T0)), AC0 ; |1248| 
        MOV AC0, dbl(*SP(#12)) ; |1248| 
	.dwpsn	file "./mp3_encode.c",line 1249,column 9,is_stmt
        MOV dbl(*SP(#24)), XAR3
        MOV *SP(#23), T0 ; |1249| 
        MOV dbl(*AR3(#10)), XAR3
        MOV uns(*AR3(T0)), AC0 ; |1249| 
        MOV AC0, dbl(*SP(#8)) ; |1249| 
	.dwpsn	file "./mp3_encode.c",line 1250,column 9,is_stmt

        MOV dbl(*SP(#4)), AC1 ; |1250| 
||      MOV #14, AC0 ; |1250| 

        CMP AC1 <= AC0, TC1 ; |1250| 
        BCC $C$L91,TC1 ; |1250| 
                                        ; branchcc occurs ; |1250| 
	.dwpsn	file "./mp3_encode.c",line 1252,column 13,is_stmt
        MOV dbl(*SP(#14)), AC1 ; |1252| 
        MOV dbl(*SP(#26)), AC0 ; |1252| 
        OR AC1, AC0 ; |1252| 
        MOV AC0, dbl(*SP(#14)) ; |1252| 
	.dwpsn	file "./mp3_encode.c",line 1253,column 13,is_stmt
        MOV dbl(*SP(#30)), AC0 ; |1253| 
        ADD dbl(*SP(#10)), AC0, AC0 ; |1253| 
        MOV AC0, dbl(*SP(#10)) ; |1253| 
$C$L91:    
	.dwpsn	file "./mp3_encode.c",line 1255,column 9,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |1255| 
        BCC $C$L92,AC0 == #0 ; |1255| 
                                        ; branchcc occurs ; |1255| 
	.dwpsn	file "./mp3_encode.c",line 1257,column 13,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |1257| 
        SFTL AC0, #1 ; |1257| 
        MOV AC0, dbl(*SP(#14)) ; |1257| 
	.dwpsn	file "./mp3_encode.c",line 1258,column 13,is_stmt
        MOV dbl(*SP(#14)), AC1 ; |1258| 
        MOV dbl(*SP(#16)), AC0 ; |1258| 
        OR AC1, AC0 ; |1258| 
        MOV AC0, dbl(*SP(#14)) ; |1258| 
	.dwpsn	file "./mp3_encode.c",line 1259,column 13,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |1259| 
        ADD #1, AC0 ; |1259| 
        MOV AC0, dbl(*SP(#10)) ; |1259| 
$C$L92:    
	.dwpsn	file "./mp3_encode.c",line 1261,column 9,is_stmt

        MOV dbl(*SP(#6)), AC1 ; |1261| 
||      MOV #14, AC0 ; |1261| 

        CMP AC1 <= AC0, TC1 ; |1261| 
        BCC $C$L93,TC1 ; |1261| 
                                        ; branchcc occurs ; |1261| 
	.dwpsn	file "./mp3_encode.c",line 1263,column 13,is_stmt
        MOV *SP(#31), T1 ; |1263| 
        MOV dbl(*SP(#14)), AC0 ; |1263| 
        SFTL AC0, T1, AC0 ; |1263| 
        MOV AC0, dbl(*SP(#14)) ; |1263| 
	.dwpsn	file "./mp3_encode.c",line 1264,column 13,is_stmt
        MOV dbl(*SP(#14)), AC1 ; |1264| 
        MOV dbl(*SP(#28)), AC0 ; |1264| 
        OR AC1, AC0 ; |1264| 
        MOV AC0, dbl(*SP(#14)) ; |1264| 
	.dwpsn	file "./mp3_encode.c",line 1265,column 13,is_stmt
        MOV dbl(*SP(#30)), AC0 ; |1265| 
        ADD dbl(*SP(#10)), AC0, AC0 ; |1265| 
        MOV AC0, dbl(*SP(#10)) ; |1265| 
$C$L93:    
	.dwpsn	file "./mp3_encode.c",line 1267,column 9,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |1267| 
        BCC $C$L94,AC0 == #0 ; |1267| 
                                        ; branchcc occurs ; |1267| 
	.dwpsn	file "./mp3_encode.c",line 1269,column 13,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |1269| 
        SFTL AC0, #1 ; |1269| 
        MOV AC0, dbl(*SP(#14)) ; |1269| 
	.dwpsn	file "./mp3_encode.c",line 1270,column 13,is_stmt
        MOV dbl(*SP(#14)), AC1 ; |1270| 
        MOV dbl(*SP(#18)), AC0 ; |1270| 
        OR AC1, AC0 ; |1270| 
        MOV AC0, dbl(*SP(#14)) ; |1270| 
	.dwpsn	file "./mp3_encode.c",line 1271,column 13,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |1271| 
        ADD #1, AC0 ; |1271| 
        MOV AC0, dbl(*SP(#10)) ; |1271| 
$C$L94:    
	.dwpsn	file "./mp3_encode.c",line 1274,column 9,is_stmt
        MOV dbl(*SP(#8)), AC1 ; |1274| 
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#12)), AC0 ; |1274| 
$C$DW$464	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$464, DW_AT_low_pc(0x00)
	.dwattr $C$DW$464, DW_AT_name("_shine_putbits")
	.dwattr $C$DW$464, DW_AT_TI_call
        CALL #_shine_putbits ; |1274| 
                                        ; call occurs [#_shine_putbits] ; |1274| 
	.dwpsn	file "./mp3_encode.c",line 1275,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#10)), AC1 ; |1275| 
        MOV dbl(*SP(#14)), AC0 ; |1275| 
$C$DW$465	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$465, DW_AT_low_pc(0x00)
	.dwattr $C$DW$465, DW_AT_name("_shine_putbits")
	.dwattr $C$DW$465, DW_AT_TI_call
        CALL #_shine_putbits ; |1275| 
                                        ; call occurs [#_shine_putbits] ; |1275| 
	.dwendtag $C$DW$459

	.dwpsn	file "./mp3_encode.c",line 1276,column 5,is_stmt
        B $C$L98  ; |1276| 
                                        ; branch occurs ; |1276| 
$C$L95:    
	.dwpsn	file "./mp3_encode.c",line 1279,column 9,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |1279| 
        MOV dbl(*SP(#20)), AC1 ; |1279| 
$C$DW$466	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$466, DW_AT_low_pc(0x00)
	.dwattr $C$DW$466, DW_AT_name("__mpyli")
	.dwattr $C$DW$466, DW_AT_TI_call
        CALL #__mpyli ; |1279| 
                                        ; call occurs [#__mpyli] ; |1279| 
        ADD dbl(*SP(#6)), AC0, AC0 ; |1279| 
        MOV AC0, dbl(*SP(#22)) ; |1279| 
	.dwpsn	file "./mp3_encode.c",line 1280,column 9,is_stmt
        MOV dbl(*SP(#24)), XAR3
        MOV *SP(#23), T0 ; |1280| 
        MOV dbl(*AR3(#8)), XAR3
        MOV uns(*AR3(T0)), AC0 ; |1280| 
        MOV AC0, dbl(*SP(#12)) ; |1280| 
	.dwpsn	file "./mp3_encode.c",line 1281,column 9,is_stmt
        MOV dbl(*SP(#24)), XAR3
        MOV *SP(#23), T0 ; |1281| 
        MOV dbl(*AR3(#10)), XAR3
        MOV uns(*AR3(T0)), AC0 ; |1281| 
        MOV AC0, dbl(*SP(#8)) ; |1281| 
	.dwpsn	file "./mp3_encode.c",line 1282,column 9,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |1282| 
        BCC $C$L96,AC0 == #0 ; |1282| 
                                        ; branchcc occurs ; |1282| 
	.dwpsn	file "./mp3_encode.c",line 1284,column 13,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |1284| 
        SFTL AC0, #1 ; |1284| 
        MOV AC0, dbl(*SP(#12)) ; |1284| 
	.dwpsn	file "./mp3_encode.c",line 1285,column 13,is_stmt
        MOV dbl(*SP(#12)), AC1 ; |1285| 
        MOV dbl(*SP(#16)), AC0 ; |1285| 
        OR AC1, AC0 ; |1285| 
        MOV AC0, dbl(*SP(#12)) ; |1285| 
	.dwpsn	file "./mp3_encode.c",line 1286,column 13,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |1286| 
        ADD #1, AC0 ; |1286| 
        MOV AC0, dbl(*SP(#8)) ; |1286| 
$C$L96:    
	.dwpsn	file "./mp3_encode.c",line 1288,column 9,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |1288| 
        BCC $C$L97,AC0 == #0 ; |1288| 
                                        ; branchcc occurs ; |1288| 
	.dwpsn	file "./mp3_encode.c",line 1290,column 13,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |1290| 
        SFTL AC0, #1 ; |1290| 
        MOV AC0, dbl(*SP(#12)) ; |1290| 
	.dwpsn	file "./mp3_encode.c",line 1291,column 13,is_stmt
        MOV dbl(*SP(#12)), AC1 ; |1291| 
        MOV dbl(*SP(#18)), AC0 ; |1291| 
        OR AC1, AC0 ; |1291| 
        MOV AC0, dbl(*SP(#12)) ; |1291| 
	.dwpsn	file "./mp3_encode.c",line 1292,column 13,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |1292| 
        ADD #1, AC0 ; |1292| 
        MOV AC0, dbl(*SP(#8)) ; |1292| 
$C$L97:    
	.dwpsn	file "./mp3_encode.c",line 1295,column 9,is_stmt
        MOV dbl(*SP(#8)), AC1 ; |1295| 
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#12)), AC0 ; |1295| 
$C$DW$467	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$467, DW_AT_low_pc(0x00)
	.dwattr $C$DW$467, DW_AT_name("_shine_putbits")
	.dwattr $C$DW$467, DW_AT_TI_call
        CALL #_shine_putbits ; |1295| 
                                        ; call occurs [#_shine_putbits] ; |1295| 
	.dwpsn	file "./mp3_encode.c",line 1297,column 1,is_stmt
$C$L98:    
        AADD #33, SP
	.dwcfi	cfa_offset, 1
$C$DW$468	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$468, DW_AT_low_pc(0x00)
	.dwattr $C$DW$468, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$439, DW_AT_TI_end_file("./mp3_encode.c")
	.dwattr $C$DW$439, DW_AT_TI_end_line(0x511)
	.dwattr $C$DW$439, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$439

	.sect	".text"
	.global	_shine_inner_loop

$C$DW$469	.dwtag  DW_TAG_subprogram, DW_AT_name("shine_inner_loop")
	.dwattr $C$DW$469, DW_AT_low_pc(_shine_inner_loop)
	.dwattr $C$DW$469, DW_AT_high_pc(0x00)
	.dwattr $C$DW$469, DW_AT_TI_symbol_name("_shine_inner_loop")
	.dwattr $C$DW$469, DW_AT_external
	.dwattr $C$DW$469, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$469, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$469, DW_AT_TI_begin_line(0x539)
	.dwattr $C$DW$469, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$469, DW_AT_TI_max_frame_size(0x14)
	.dwpsn	file "./mp3_encode.c",line 1340,column 1,is_stmt,address _shine_inner_loop

	.dwfde $C$DW$CIE, _shine_inner_loop
$C$DW$470	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ix")
	.dwattr $C$DW$470, DW_AT_TI_symbol_name("_ix")
	.dwattr $C$DW$470, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$470, DW_AT_location[DW_OP_reg17]
$C$DW$471	.dwtag  DW_TAG_formal_parameter, DW_AT_name("max_bits")
	.dwattr $C$DW$471, DW_AT_TI_symbol_name("_max_bits")
	.dwattr $C$DW$471, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$471, DW_AT_location[DW_OP_reg0]
$C$DW$472	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cod_info")
	.dwattr $C$DW$472, DW_AT_TI_symbol_name("_cod_info")
	.dwattr $C$DW$472, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$472, DW_AT_location[DW_OP_reg19]
$C$DW$473	.dwtag  DW_TAG_formal_parameter, DW_AT_name("gr")
	.dwattr $C$DW$473, DW_AT_TI_symbol_name("_gr")
	.dwattr $C$DW$473, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$473, DW_AT_location[DW_OP_reg3]
$C$DW$474	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ch")
	.dwattr $C$DW$474, DW_AT_TI_symbol_name("_ch")
	.dwattr $C$DW$474, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$474, DW_AT_location[DW_OP_reg6]
$C$DW$475	.dwtag  DW_TAG_formal_parameter, DW_AT_name("config")
	.dwattr $C$DW$475, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$475, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$475, DW_AT_location[DW_OP_reg21]
;*******************************************************************************
;* FUNCTION NAME: shine_inner_loop                                             *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,AC2,AC2,AR0,XAR0,AR1,XAR1,AR2,XAR2,  *
;*                        AR3,XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL    *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 20 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (18 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_shine_inner_loop:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-19, SP
	.dwcfi	cfa_offset, 20
$C$DW$476	.dwtag  DW_TAG_variable, DW_AT_name("ix")
	.dwattr $C$DW$476, DW_AT_TI_symbol_name("_ix")
	.dwattr $C$DW$476, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$476, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$477	.dwtag  DW_TAG_variable, DW_AT_name("max_bits")
	.dwattr $C$DW$477, DW_AT_TI_symbol_name("_max_bits")
	.dwattr $C$DW$477, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$477, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$478	.dwtag  DW_TAG_variable, DW_AT_name("cod_info")
	.dwattr $C$DW$478, DW_AT_TI_symbol_name("_cod_info")
	.dwattr $C$DW$478, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$478, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$479	.dwtag  DW_TAG_variable, DW_AT_name("gr")
	.dwattr $C$DW$479, DW_AT_TI_symbol_name("_gr")
	.dwattr $C$DW$479, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$479, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$480	.dwtag  DW_TAG_variable, DW_AT_name("ch")
	.dwattr $C$DW$480, DW_AT_TI_symbol_name("_ch")
	.dwattr $C$DW$480, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$480, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$481	.dwtag  DW_TAG_variable, DW_AT_name("config")
	.dwattr $C$DW$481, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$481, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$481, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$482	.dwtag  DW_TAG_variable, DW_AT_name("bits")
	.dwattr $C$DW$482, DW_AT_TI_symbol_name("_bits")
	.dwattr $C$DW$482, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$482, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$483	.dwtag  DW_TAG_variable, DW_AT_name("c1bits")
	.dwattr $C$DW$483, DW_AT_TI_symbol_name("_c1bits")
	.dwattr $C$DW$483, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$483, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$484	.dwtag  DW_TAG_variable, DW_AT_name("bvbits")
	.dwattr $C$DW$484, DW_AT_TI_symbol_name("_bvbits")
	.dwattr $C$DW$484, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$484, DW_AT_location[DW_OP_bregx 0x24 16]
        MOV XAR2, dbl(*SP(#10))
        MOV AC2, dbl(*SP(#8)) ; |1340| 
        MOV AC1, dbl(*SP(#6)) ; |1340| 
        MOV XAR1, dbl(*SP(#4))
        MOV AC0, dbl(*SP(#2)) ; |1340| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./mp3_encode.c",line 1343,column 5,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |1343| 
        BCC $C$L99,AC0 >= #0 ; |1343| 
                                        ; branchcc occurs ; |1343| 
	.dwpsn	file "./mp3_encode.c",line 1344,column 9,is_stmt
        MOV dbl(*SP(#4)), XAR3
        SUB #1, *AR3(#22) ; |1344| 
	.dwpsn	file "./mp3_encode.c",line 1347,column 9,is_stmt
$C$L99:    
$C$DW$L$_shine_inner_loop$3$B:
	.dwpsn	file "./mp3_encode.c",line 1347,column 16,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV *AR3(#22), AR1 ; |1347| 
        ADD #1, AR1, AR1 ; |1347| 
        MOV AR1, AC0
        MOV AR1, *AR3(#22) ; |1347| 
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#10)), XAR1
$C$DW$485	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$485, DW_AT_low_pc(0x00)
	.dwattr $C$DW$485, DW_AT_name("_quantize")
	.dwattr $C$DW$485, DW_AT_TI_call
        CALL #_quantize ; |1347| 
                                        ; call occurs [#_quantize] ; |1347| 
        MOV #8192, AC1 ; |1347| 
        CMP AC0 > AC1, TC1 ; |1347| 
        BCC $C$L99,TC1 ; |1347| 
                                        ; branchcc occurs ; |1347| 
$C$DW$L$_shine_inner_loop$3$E:
$C$DW$L$_shine_inner_loop$4$B:
	.dwpsn	file "./mp3_encode.c",line 1350,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#4)), XAR1
$C$DW$486	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$486, DW_AT_low_pc(0x00)
	.dwattr $C$DW$486, DW_AT_name("_calc_runlen")
	.dwattr $C$DW$486, DW_AT_TI_call
        CALL #_calc_runlen ; |1350| 
                                        ; call occurs [#_calc_runlen] ; |1350| 
	.dwpsn	file "./mp3_encode.c",line 1351,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#4)), XAR1
$C$DW$487	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$487, DW_AT_low_pc(0x00)
	.dwattr $C$DW$487, DW_AT_name("_count1_bitcount")
	.dwattr $C$DW$487, DW_AT_TI_call
        CALL #_count1_bitcount ; |1351| 
                                        ; call occurs [#_count1_bitcount] ; |1351| 
        MOV AC0, dbl(*SP(#14)) ; |1351| 
        MOV AC0, dbl(*SP(#12)) ; |1351| 
	.dwpsn	file "./mp3_encode.c",line 1352,column 9,is_stmt
        MOV dbl(*SP(#4)), XAR0
        MOV dbl(*SP(#10)), XAR1
$C$DW$488	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$488, DW_AT_low_pc(0x00)
	.dwattr $C$DW$488, DW_AT_name("_subdivide")
	.dwattr $C$DW$488, DW_AT_TI_call
        CALL #_subdivide ; |1352| 
                                        ; call occurs [#_subdivide] ; |1352| 
	.dwpsn	file "./mp3_encode.c",line 1353,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#4)), XAR1
$C$DW$489	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$489, DW_AT_low_pc(0x00)
	.dwattr $C$DW$489, DW_AT_name("_bigv_tab_select")
	.dwattr $C$DW$489, DW_AT_TI_call
        CALL #_bigv_tab_select ; |1353| 
                                        ; call occurs [#_bigv_tab_select] ; |1353| 
	.dwpsn	file "./mp3_encode.c",line 1354,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#4)), XAR1
$C$DW$490	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$490, DW_AT_low_pc(0x00)
	.dwattr $C$DW$490, DW_AT_name("_bigv_bitcount")
	.dwattr $C$DW$490, DW_AT_TI_call
        CALL #_bigv_bitcount ; |1354| 
                                        ; call occurs [#_bigv_bitcount] ; |1354| 
        MOV AC0, dbl(*SP(#16)) ; |1354| 
        ADD dbl(*SP(#12)), AC0, AC0 ; |1354| 
        MOV AC0, dbl(*SP(#12)) ; |1354| 
	.dwpsn	file "./mp3_encode.c",line 1355,column 14,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |1355| 
        MOV dbl(*SP(#12)), AC1 ; |1355| 
        CMP AC1 > AC0, TC1 ; |1355| 
        BCC $C$L99,TC1 ; |1355| 
                                        ; branchcc occurs ; |1355| 
$C$DW$L$_shine_inner_loop$4$E:
	.dwpsn	file "./mp3_encode.c",line 1356,column 5,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |1356| 
	.dwpsn	file "./mp3_encode.c",line 1357,column 1,is_stmt
        AADD #19, SP
	.dwcfi	cfa_offset, 1
$C$DW$491	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$491, DW_AT_low_pc(0x00)
	.dwattr $C$DW$491, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$492	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$492, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L99:1:1738864582")
	.dwattr $C$DW$492, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$492, DW_AT_TI_begin_line(0x543)
	.dwattr $C$DW$492, DW_AT_TI_end_line(0x54b)
$C$DW$493	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$493, DW_AT_low_pc($C$DW$L$_shine_inner_loop$3$B)
	.dwattr $C$DW$493, DW_AT_high_pc($C$DW$L$_shine_inner_loop$3$E)
$C$DW$494	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$494, DW_AT_low_pc($C$DW$L$_shine_inner_loop$4$B)
	.dwattr $C$DW$494, DW_AT_high_pc($C$DW$L$_shine_inner_loop$4$E)
	.dwendtag $C$DW$492

	.dwattr $C$DW$469, DW_AT_TI_end_file("./mp3_encode.c")
	.dwattr $C$DW$469, DW_AT_TI_end_line(0x54d)
	.dwattr $C$DW$469, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$469

	.sect	".text"
	.global	_shine_outer_loop

$C$DW$495	.dwtag  DW_TAG_subprogram, DW_AT_name("shine_outer_loop")
	.dwattr $C$DW$495, DW_AT_low_pc(_shine_outer_loop)
	.dwattr $C$DW$495, DW_AT_high_pc(0x00)
	.dwattr $C$DW$495, DW_AT_TI_symbol_name("_shine_outer_loop")
	.dwattr $C$DW$495, DW_AT_external
	.dwattr $C$DW$495, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$495, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$495, DW_AT_TI_begin_line(0x557)
	.dwattr $C$DW$495, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$495, DW_AT_TI_max_frame_size(0x16)
	.dwpsn	file "./mp3_encode.c",line 1371,column 1,is_stmt,address _shine_outer_loop

	.dwfde $C$DW$CIE, _shine_outer_loop
$C$DW$496	.dwtag  DW_TAG_formal_parameter, DW_AT_name("max_bits")
	.dwattr $C$DW$496, DW_AT_TI_symbol_name("_max_bits")
	.dwattr $C$DW$496, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$496, DW_AT_location[DW_OP_reg0]
$C$DW$497	.dwtag  DW_TAG_formal_parameter, DW_AT_name("l3_xmin")
	.dwattr $C$DW$497, DW_AT_TI_symbol_name("_l3_xmin")
	.dwattr $C$DW$497, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$497, DW_AT_location[DW_OP_reg17]
$C$DW$498	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ix")
	.dwattr $C$DW$498, DW_AT_TI_symbol_name("_ix")
	.dwattr $C$DW$498, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$498, DW_AT_location[DW_OP_reg19]
$C$DW$499	.dwtag  DW_TAG_formal_parameter, DW_AT_name("gr")
	.dwattr $C$DW$499, DW_AT_TI_symbol_name("_gr")
	.dwattr $C$DW$499, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$499, DW_AT_location[DW_OP_reg3]
$C$DW$500	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ch")
	.dwattr $C$DW$500, DW_AT_TI_symbol_name("_ch")
	.dwattr $C$DW$500, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$500, DW_AT_location[DW_OP_reg6]
$C$DW$501	.dwtag  DW_TAG_formal_parameter, DW_AT_name("config")
	.dwattr $C$DW$501, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$501, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$501, DW_AT_location[DW_OP_reg21]
;*******************************************************************************
;* FUNCTION NAME: shine_outer_loop                                             *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,AC2,AC2,AR0,XAR0,AR1,XAR1,AR2,XAR2,  *
;*                        AR3,XAR3,SP,CARRY,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 22 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (20 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_shine_outer_loop:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-21, SP
	.dwcfi	cfa_offset, 22
$C$DW$502	.dwtag  DW_TAG_variable, DW_AT_name("max_bits")
	.dwattr $C$DW$502, DW_AT_TI_symbol_name("_max_bits")
	.dwattr $C$DW$502, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$502, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$503	.dwtag  DW_TAG_variable, DW_AT_name("l3_xmin")
	.dwattr $C$DW$503, DW_AT_TI_symbol_name("_l3_xmin")
	.dwattr $C$DW$503, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$503, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$504	.dwtag  DW_TAG_variable, DW_AT_name("ix")
	.dwattr $C$DW$504, DW_AT_TI_symbol_name("_ix")
	.dwattr $C$DW$504, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$504, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$505	.dwtag  DW_TAG_variable, DW_AT_name("gr")
	.dwattr $C$DW$505, DW_AT_TI_symbol_name("_gr")
	.dwattr $C$DW$505, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$505, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$506	.dwtag  DW_TAG_variable, DW_AT_name("ch")
	.dwattr $C$DW$506, DW_AT_TI_symbol_name("_ch")
	.dwattr $C$DW$506, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$506, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$507	.dwtag  DW_TAG_variable, DW_AT_name("config")
	.dwattr $C$DW$507, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$507, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$507, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$508	.dwtag  DW_TAG_variable, DW_AT_name("bits")
	.dwattr $C$DW$508, DW_AT_TI_symbol_name("_bits")
	.dwattr $C$DW$508, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$508, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$509	.dwtag  DW_TAG_variable, DW_AT_name("huff_bits")
	.dwattr $C$DW$509, DW_AT_TI_symbol_name("_huff_bits")
	.dwattr $C$DW$509, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$509, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$510	.dwtag  DW_TAG_variable, DW_AT_name("side_info")
	.dwattr $C$DW$510, DW_AT_TI_symbol_name("_side_info")
	.dwattr $C$DW$510, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$510, DW_AT_location[DW_OP_bregx 0x24 16]
$C$DW$511	.dwtag  DW_TAG_variable, DW_AT_name("cod_info")
	.dwattr $C$DW$511, DW_AT_TI_symbol_name("_cod_info")
	.dwattr $C$DW$511, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$511, DW_AT_location[DW_OP_bregx 0x24 18]
        MOV XAR2, dbl(*SP(#10))
        MOV AC2, dbl(*SP(#8)) ; |1371| 
        MOV AC1, dbl(*SP(#6)) ; |1371| 
        MOV XAR1, dbl(*SP(#4))
        MOV XAR0, dbl(*SP(#2))
        MOV AC0, dbl(*SP(#0)) ; |1371| 
	.dwpsn	file "./mp3_encode.c",line 1373,column 24,is_stmt
        MOV dbl(*SP(#10)), XAR3
        AMAR *+AR3(#11888) ; |1373| 
        MOV XAR3, dbl(*SP(#16))
	.dwpsn	file "./mp3_encode.c",line 1374,column 14,is_stmt
        MPYMK *SP(#7), #23, AC0 ; |1374| 
        MOV AC0, AR1 ; |1374| 
        MPYMK *SP(#9), #23, AC0 ; |1374| 

        MOV AC0, AR1 ; |1374| 
||      AADD AR1, AR3 ; |1374| 

        AADD AR1, AR3 ; |1374| 

        MOV XAR3, dbl(*SP(#18))
||      AADD #6, AR3 ; |1374| 

	.dwpsn	file "./mp3_encode.c",line 1376,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR0
        MOV dbl(*SP(#10)), XAR2
        MOV dbl(*SP(#18)), XAR1
        MOV dbl(*SP(#0)), AC0 ; |1376| 
$C$DW$512	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$512, DW_AT_low_pc(0x00)
	.dwattr $C$DW$512, DW_AT_name("_bin_search_StepSize")
	.dwattr $C$DW$512, DW_AT_TI_call
        CALL #_bin_search_StepSize ; |1376| 
                                        ; call occurs [#_bin_search_StepSize] ; |1376| 
        MOV dbl(*SP(#18)), XAR3
        MOV AC0, *AR3(#22) ; |1376| 
	.dwpsn	file "./mp3_encode.c",line 1378,column 5,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |1378| 
        MOV dbl(*SP(#8)), AC1 ; |1378| 
        MOV dbl(*SP(#10)), XAR0
$C$DW$513	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$513, DW_AT_low_pc(0x00)
	.dwattr $C$DW$513, DW_AT_name("_part2_length")
	.dwattr $C$DW$513, DW_AT_TI_call
        CALL #_part2_length ; |1378| 
                                        ; call occurs [#_part2_length] ; |1378| 
        MOV dbl(*SP(#18)), XAR3
        MOV AC0, *AR3(#13) ; |1378| 
	.dwpsn	file "./mp3_encode.c",line 1379,column 5,is_stmt
        MOV dbl(*SP(#18)), XAR3
        MOV uns(*AR3(#13)), AC0 ; |1379| 
        SUB AC0, dbl(*SP(#0)), AC0 ; |1379| 
        MOV AC0, dbl(*SP(#14)) ; |1379| 
	.dwpsn	file "./mp3_encode.c",line 1381,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR0
        MOV dbl(*SP(#14)), AC0 ; |1381| 
        MOV dbl(*SP(#6)), AC1 ; |1381| 
        MOV dbl(*SP(#8)), AC2 ; |1381| 
        MOV dbl(*SP(#18)), XAR1
        MOV dbl(*SP(#10)), XAR2
$C$DW$514	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$514, DW_AT_low_pc(0x00)
	.dwattr $C$DW$514, DW_AT_name("_shine_inner_loop")
	.dwattr $C$DW$514, DW_AT_TI_call
        CALL #_shine_inner_loop ; |1381| 
                                        ; call occurs [#_shine_inner_loop] ; |1381| 
        MOV AC0, dbl(*SP(#12)) ; |1381| 
	.dwpsn	file "./mp3_encode.c",line 1382,column 5,is_stmt
        MOV dbl(*SP(#18)), XAR3
        MOV dbl(*SP(#12)), AC0 ; |1382| 
        ADD uns(*AR3(#13)), AC0, AC0 ; |1382| 
        MOV AC0, *AR3 ; |1382| 
	.dwpsn	file "./mp3_encode.c",line 1384,column 5,is_stmt
        MOV dbl(*SP(#18)), XAR3
        MOV uns(*AR3), AC0 ; |1384| 
	.dwpsn	file "./mp3_encode.c",line 1385,column 1,is_stmt
        AADD #21, SP
	.dwcfi	cfa_offset, 1
$C$DW$515	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$515, DW_AT_low_pc(0x00)
	.dwattr $C$DW$515, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$495, DW_AT_TI_end_file("./mp3_encode.c")
	.dwattr $C$DW$495, DW_AT_TI_end_line(0x569)
	.dwattr $C$DW$495, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$495

	.sect	".text"
	.global	_shine_iteration_loop

$C$DW$516	.dwtag  DW_TAG_subprogram, DW_AT_name("shine_iteration_loop")
	.dwattr $C$DW$516, DW_AT_low_pc(_shine_iteration_loop)
	.dwattr $C$DW$516, DW_AT_high_pc(0x00)
	.dwattr $C$DW$516, DW_AT_TI_symbol_name("_shine_iteration_loop")
	.dwattr $C$DW$516, DW_AT_external
	.dwattr $C$DW$516, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$516, DW_AT_TI_begin_line(0x56f)
	.dwattr $C$DW$516, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$516, DW_AT_TI_max_frame_size(0x3c)
	.dwpsn	file "./mp3_encode.c",line 1392,column 1,is_stmt,address _shine_iteration_loop

	.dwfde $C$DW$CIE, _shine_iteration_loop
$C$DW$517	.dwtag  DW_TAG_formal_parameter, DW_AT_name("config")
	.dwattr $C$DW$517, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$517, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$517, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: shine_iteration_loop                                         *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,AC2,AC2,T0,T1,AR0,XAR0,AR1,XAR1,AR2, *
;*                        XAR2,AR3,XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,   *
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 60 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (58 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_shine_iteration_loop:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-59, SP
	.dwcfi	cfa_offset, 60
$C$DW$518	.dwtag  DW_TAG_variable, DW_AT_name("config")
	.dwattr $C$DW$518, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$518, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$518, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$519	.dwtag  DW_TAG_variable, DW_AT_name("l3_xmin")
	.dwattr $C$DW$519, DW_AT_TI_symbol_name("_l3_xmin")
	.dwattr $C$DW$519, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$519, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$520	.dwtag  DW_TAG_variable, DW_AT_name("cod_info")
	.dwattr $C$DW$520, DW_AT_TI_symbol_name("_cod_info")
	.dwattr $C$DW$520, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$520, DW_AT_location[DW_OP_bregx 0x24 44]
$C$DW$521	.dwtag  DW_TAG_variable, DW_AT_name("max_bits")
	.dwattr $C$DW$521, DW_AT_TI_symbol_name("_max_bits")
	.dwattr $C$DW$521, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$521, DW_AT_location[DW_OP_bregx 0x24 46]
$C$DW$522	.dwtag  DW_TAG_variable, DW_AT_name("ch")
	.dwattr $C$DW$522, DW_AT_TI_symbol_name("_ch")
	.dwattr $C$DW$522, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$522, DW_AT_location[DW_OP_bregx 0x24 48]
$C$DW$523	.dwtag  DW_TAG_variable, DW_AT_name("gr")
	.dwattr $C$DW$523, DW_AT_TI_symbol_name("_gr")
	.dwattr $C$DW$523, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$523, DW_AT_location[DW_OP_bregx 0x24 50]
$C$DW$524	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$524, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$524, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$524, DW_AT_location[DW_OP_bregx 0x24 52]
$C$DW$525	.dwtag  DW_TAG_variable, DW_AT_name("ix")
	.dwattr $C$DW$525, DW_AT_TI_symbol_name("_ix")
	.dwattr $C$DW$525, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$525, DW_AT_location[DW_OP_bregx 0x24 54]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./mp3_encode.c",line 1399,column 10,is_stmt
        MOV #1, AC0 ; |1399| 
        MOV AC0, dbl(*SP(#48)) ; |1399| 
        MOV dbl(*SP(#48)), AC0 ; |1399| 
        SUB #1, AC0, AC1 ; |1399| 
        MOV AC1, dbl(*SP(#48)) ; |1399| 
        BCC $C$L110,AC0 == #0 ; |1399| 
                                        ; branchcc occurs ; |1399| 
$C$L100:    
$C$DW$L$_shine_iteration_loop$2$B:
	.dwpsn	file "./mp3_encode.c",line 1401,column 14,is_stmt
        MOV #0, AC0 ; |1401| 
        MOV AC0, dbl(*SP(#50)) ; |1401| 
	.dwpsn	file "./mp3_encode.c",line 1401,column 22,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#50)), AC1 ; |1401| 
        MOV *AR3(#722), AC0 ; |1401| 
        CMP AC1 >= AC0, TC1 ; |1401| 
        BCC $C$L109,TC1 ; |1401| 
                                        ; branchcc occurs ; |1401| 
$C$DW$L$_shine_iteration_loop$2$E:
$C$L101:    
$C$DW$L$_shine_iteration_loop$3$B:
	.dwpsn	file "./mp3_encode.c",line 1404,column 13,is_stmt
        MOV *SP(#49) << #16, AC0
        MPYK #1152, AC0, AC0 ; |1404| 
        MOV AC0, AR1 ; |1404| 
        MOV *SP(#51) << #16, AC0
        MPYK #1152, AC0, AC0 ; |1404| 

        MOV AC0, AR1 ; |1404| 
||      AADD AR1, AR3 ; |1404| 

        AADD AR1, AR3 ; |1404| 
        AMAR *+AR3(#7272) ; |1404| 
        MOV XAR3, dbl(*SP(#54))
	.dwpsn	file "./mp3_encode.c",line 1405,column 13,is_stmt
        MOV *SP(#49) << #16, AC0
        MOV dbl(*SP(#0)), XAR3
        MPYK #1152, AC0, AC0 ; |1405| 
        MOV AC0, AR1 ; |1405| 
        MOV *SP(#51) << #16, AC0
        MPYK #1152, AC0, AC0 ; |1405| 

        MOV AC0, AR1 ; |1405| 
||      AADD AR1, AR3 ; |1405| 

        MOV dbl(*SP(#0)), XAR2
        AADD AR1, AR3 ; |1405| 
        AMAR *+AR3(#10728) ; |1405| 
        MOV XAR3, dbl(*AR2(short(#2)))
	.dwpsn	file "./mp3_encode.c",line 1410,column 18,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #576, AC0 ; |1410| 

        MOV #0, AC0 ; |1410| 
||      MOV AC0, dbl(*SP(#52)) ; |1410| 

        MOV AC0, dbl(*AR3(short(#4))) ; |1410| 
        MOV dbl(*SP(#52)), AC0 ; |1410| 
        SUB #1, AC0, AC1 ; |1410| 
        MOV AC1, dbl(*SP(#52)) ; |1410| 
        BCC $C$L104,AC0 == #0 ; |1410| 
                                        ; branchcc occurs ; |1410| 
$C$DW$L$_shine_iteration_loop$3$E:
$C$L102:    
$C$DW$L$_shine_iteration_loop$4$B:

$C$DW$526	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$527	.dwtag  DW_TAG_variable, DW_AT_name("temp")
	.dwattr $C$DW$527, DW_AT_TI_symbol_name("_temp")
	.dwattr $C$DW$527, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$527, DW_AT_location[DW_OP_bregx 0x24 56]
	.dwpsn	file "./mp3_encode.c",line 1414,column 25,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#53), T0 ; |1414| 
        SFTL T0, #1 ; |1414| 
        MOV dbl(*AR3(short(#2))), XAR3
        MOV dbl(*AR3(T0)), AC0 ; |1414| 
        ABS AC0, AC0 ; |1414| 
        MOV AC0, dbl(*SP(#56)) ; |1414| 
	.dwpsn	file "./mp3_encode.c",line 1415,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#56)), AC1 ; |1415| 
        MOV dbl(*AR3(short(#4))), AC0 ; |1415| 
        CMP AC1 <= AC0, TC1 ; |1415| 
        BCC $C$L103,TC1 ; |1415| 
                                        ; branchcc occurs ; |1415| 
$C$DW$L$_shine_iteration_loop$4$E:
$C$DW$L$_shine_iteration_loop$5$B:
	.dwpsn	file "./mp3_encode.c",line 1417,column 21,is_stmt
        MOV dbl(*SP(#56)), AC0 ; |1417| 
        MOV AC0, dbl(*AR3(short(#4))) ; |1417| 
$C$DW$L$_shine_iteration_loop$5$E:
$C$L103:    
$C$DW$L$_shine_iteration_loop$6$B:
	.dwendtag $C$DW$526

	.dwpsn	file "./mp3_encode.c",line 1419,column 13,is_stmt
        MOV dbl(*SP(#52)), AC0 ; |1419| 
        SUB #1, AC0, AC1 ; |1419| 
        MOV AC1, dbl(*SP(#52)) ; |1419| 
        BCC $C$L102,AC0 != #0 ; |1419| 
                                        ; branchcc occurs ; |1419| 
$C$DW$L$_shine_iteration_loop$6$E:
$C$L104:    
$C$DW$L$_shine_iteration_loop$7$B:
	.dwpsn	file "./mp3_encode.c",line 1421,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#51), #23, AC0 ; |1421| 
        MOV AC0, AR1 ; |1421| 
        MPYMK *SP(#49), #23, AC0 ; |1421| 

        MOV AC0, AR1 ; |1421| 
||      AADD AR1, AR3 ; |1421| 

        AADD AR1, AR3 ; |1421| 
        AMAR *+AR3(#11894) ; |1421| 
        MOV XAR3, dbl(*SP(#44))
	.dwpsn	file "./mp3_encode.c",line 1422,column 13,is_stmt
        MOV #21, *AR3(#14) ; |1422| 
	.dwpsn	file "./mp3_encode.c",line 1424,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR0
        AMAR *SP(#2), XAR2
        MOV dbl(*SP(#48)), AC1 ; |1424| 
        MOV dbl(*SP(#44)), XAR1
        MOV dbl(*SP(#50)), AC0 ; |1424| 
        AMAR *+AR0(#664) ; |1424| 
$C$DW$528	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$528, DW_AT_low_pc(0x00)
	.dwattr $C$DW$528, DW_AT_name("_calc_xmin")
	.dwattr $C$DW$528, DW_AT_TI_call
        CALL #_calc_xmin ; |1424| 
                                        ; call occurs [#_calc_xmin] ; |1424| 
	.dwpsn	file "./mp3_encode.c",line 1426,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        CMP *AR3(#720) == #3, TC1 ; |1426| 
        BCC $C$L105,!TC1 ; |1426| 
                                        ; branchcc occurs ; |1426| 
$C$DW$L$_shine_iteration_loop$7$E:
$C$DW$L$_shine_iteration_loop$8$B:
	.dwpsn	file "./mp3_encode.c",line 1427,column 17,is_stmt
        AMAR *SP(#2), XAR0
        MOV dbl(*SP(#48)), AC0 ; |1427| 
        MOV dbl(*SP(#50)), AC1 ; |1427| 
        MOV dbl(*SP(#0)), XAR1
$C$DW$529	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$529, DW_AT_low_pc(0x00)
	.dwattr $C$DW$529, DW_AT_name("_calc_scfsi")
	.dwattr $C$DW$529, DW_AT_TI_call
        CALL #_calc_scfsi ; |1427| 
                                        ; call occurs [#_calc_scfsi] ; |1427| 
$C$DW$L$_shine_iteration_loop$8$E:
$C$L105:    
$C$DW$L$_shine_iteration_loop$9$B:
	.dwpsn	file "./mp3_encode.c",line 1430,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV *SP(#49), AR1 ; |1430| 
        SFTL AR1, #1 ; |1430| 

        MOV *SP(#51), AR1 ; |1430| 
||      AADD AR1, AR0 ; |1430| 

        SFTL AR1, #1 ; |1430| 
        AADD AR1, AR0 ; |1430| 
        MOV dbl(*SP(#0)), XAR1
        AMAR *+AR0(#662) ; |1430| 
$C$DW$530	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$530, DW_AT_low_pc(0x00)
	.dwattr $C$DW$530, DW_AT_name("_shine_max_reservoir_bits")
	.dwattr $C$DW$530, DW_AT_TI_call
        CALL #_shine_max_reservoir_bits ; |1430| 
                                        ; call occurs [#_shine_max_reservoir_bits] ; |1430| 
        MOV AC0, dbl(*SP(#46)) ; |1430| 
	.dwpsn	file "./mp3_encode.c",line 1433,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MPYMK *SP(#51), #44, AC0 ; |1433| 
        MOV AC0, AR1 ; |1433| 
        MPYMK *SP(#49), #44, AC0 ; |1433| 

        MOV AC0, AR1 ; |1433| 
||      AADD AR1, AR0 ; |1433| 

        MOV #44, T1 ; |1433| 
        AADD AR1, AR0 ; |1433| 
        AMAR *+AR0(#732) ; |1433| 
$C$DW$531	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$531, DW_AT_low_pc(0x00)
	.dwattr $C$DW$531, DW_AT_name("_memset")
	.dwattr $C$DW$531, DW_AT_TI_call

        CALL #_memset ; |1433| 
||      MOV #0, T0

                                        ; call occurs [#_memset] ; |1433| 
	.dwpsn	file "./mp3_encode.c",line 1434,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MPYMK *SP(#51), #78, AC0 ; |1434| 
        MOV AC0, AR1 ; |1434| 
        MPYMK *SP(#49), #78, AC0 ; |1434| 

        MOV AC0, AR1 ; |1434| 
||      AADD AR1, AR0 ; |1434| 

        MOV #78, T1 ; |1434| 
        AADD AR1, AR0 ; |1434| 
        AMAR *+AR0(#776) ; |1434| 
$C$DW$532	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$532, DW_AT_low_pc(0x00)
	.dwattr $C$DW$532, DW_AT_name("_memset")
	.dwattr $C$DW$532, DW_AT_TI_call

        CALL #_memset ; |1434| 
||      MOV #0, T0

                                        ; call occurs [#_memset] ; |1434| 
	.dwpsn	file "./mp3_encode.c",line 1436,column 18,is_stmt
        MOV #4, AC0 ; |1436| 
        MOV AC0, dbl(*SP(#52)) ; |1436| 
        MOV dbl(*SP(#52)), AC0 ; |1436| 
        SUB #1, AC0, AC1 ; |1436| 
        MOV AC1, dbl(*SP(#52)) ; |1436| 
        BCC $C$L107,AC0 == #0 ; |1436| 
                                        ; branchcc occurs ; |1436| 
$C$DW$L$_shine_iteration_loop$9$E:
$C$L106:    
$C$DW$L$_shine_iteration_loop$10$B:
	.dwpsn	file "./mp3_encode.c",line 1437,column 17,is_stmt
        MOV *SP(#53), AR1 ; |1437| 
        MOV dbl(*SP(#44)), XAR3
        AADD AR1, AR3 ; |1437| 
        MOV #0, *AR3(#18) ; |1437| 
        MOV dbl(*SP(#52)), AC0 ; |1437| 
        SUB #1, AC0, AC1 ; |1437| 
        MOV AC1, dbl(*SP(#52)) ; |1437| 
        BCC $C$L106,AC0 != #0 ; |1437| 
                                        ; branchcc occurs ; |1437| 
$C$DW$L$_shine_iteration_loop$10$E:
$C$L107:    
$C$DW$L$_shine_iteration_loop$11$B:
	.dwpsn	file "./mp3_encode.c",line 1439,column 13,is_stmt
        MOV dbl(*SP(#44)), XAR3
        MOV #0, *AR3 ; |1439| 
	.dwpsn	file "./mp3_encode.c",line 1440,column 13,is_stmt
        MOV dbl(*SP(#44)), XAR3
        MOV #0, *AR3(short(#1)) ; |1440| 
	.dwpsn	file "./mp3_encode.c",line 1441,column 13,is_stmt
        MOV dbl(*SP(#44)), XAR3
        MOV #0, *AR3(short(#2)) ; |1441| 
	.dwpsn	file "./mp3_encode.c",line 1442,column 13,is_stmt
        MOV dbl(*SP(#44)), XAR3
        MOV #0, *AR3(short(#4)) ; |1442| 
	.dwpsn	file "./mp3_encode.c",line 1443,column 13,is_stmt
        MOV dbl(*SP(#44)), XAR3
        MOV #0, *AR3(short(#5)) ; |1443| 
	.dwpsn	file "./mp3_encode.c",line 1444,column 13,is_stmt
        MOV dbl(*SP(#44)), XAR3
        MOV #0, *AR3(short(#6)) ; |1444| 
	.dwpsn	file "./mp3_encode.c",line 1445,column 13,is_stmt
        MOV dbl(*SP(#44)), XAR3
        MOV #0, *AR3(short(#7)) ; |1445| 
	.dwpsn	file "./mp3_encode.c",line 1446,column 13,is_stmt
        MOV dbl(*SP(#44)), XAR3
        MOV #0, *AR3(#8) ; |1446| 
	.dwpsn	file "./mp3_encode.c",line 1447,column 13,is_stmt
        MOV dbl(*SP(#44)), XAR3
        MOV #0, *AR3(#9) ; |1447| 
	.dwpsn	file "./mp3_encode.c",line 1448,column 13,is_stmt
        MOV dbl(*SP(#44)), XAR3
        MOV #0, *AR3(#13) ; |1448| 
	.dwpsn	file "./mp3_encode.c",line 1449,column 13,is_stmt
        MOV dbl(*SP(#44)), XAR3
        MOV #0, *AR3(#10) ; |1449| 
	.dwpsn	file "./mp3_encode.c",line 1450,column 13,is_stmt
        MOV dbl(*SP(#44)), XAR3
        MOV #0, *AR3(#11) ; |1450| 
	.dwpsn	file "./mp3_encode.c",line 1451,column 13,is_stmt
        MOV dbl(*SP(#44)), XAR3
        MOV #0, *AR3(#12) ; |1451| 
	.dwpsn	file "./mp3_encode.c",line 1454,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#4))), AC0 ; |1454| 
        BCC $C$L108,AC0 == #0 ; |1454| 
                                        ; branchcc occurs ; |1454| 
$C$DW$L$_shine_iteration_loop$11$E:
$C$DW$L$_shine_iteration_loop$12$B:
	.dwpsn	file "./mp3_encode.c",line 1455,column 17,is_stmt
        MOV dbl(*SP(#46)), AC0 ; |1455| 
        AMAR *SP(#2), XAR0
        MOV dbl(*SP(#54)), XAR1
        MOV dbl(*SP(#50)), AC1 ; |1455| 
        MOV dbl(*SP(#48)), AC2 ; |1455| 
        MOV dbl(*SP(#0)), XAR2
$C$DW$533	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$533, DW_AT_low_pc(0x00)
	.dwattr $C$DW$533, DW_AT_name("_shine_outer_loop")
	.dwattr $C$DW$533, DW_AT_TI_call
        CALL #_shine_outer_loop ; |1455| 
                                        ; call occurs [#_shine_outer_loop] ; |1455| 
        MOV dbl(*SP(#44)), XAR3
        MOV AC0, *AR3 ; |1455| 
$C$DW$L$_shine_iteration_loop$12$E:
$C$L108:    
$C$DW$L$_shine_iteration_loop$13$B:
	.dwpsn	file "./mp3_encode.c",line 1458,column 13,is_stmt
        MOV dbl(*SP(#44)), XAR0
        MOV dbl(*SP(#0)), XAR1
$C$DW$534	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$534, DW_AT_low_pc(0x00)
	.dwattr $C$DW$534, DW_AT_name("_shine_ResvAdjust")
	.dwattr $C$DW$534, DW_AT_TI_call
        CALL #_shine_ResvAdjust ; |1458| 
                                        ; call occurs [#_shine_ResvAdjust] ; |1458| 
	.dwpsn	file "./mp3_encode.c",line 1459,column 13,is_stmt
        MOV dbl(*SP(#44)), XAR3
        MOV *AR3(#22), AR1 ; |1459| 
        ADD #210, AR1, AR1 ; |1459| 
        MOV AR1, *AR3(short(#3)) ; |1459| 
	.dwpsn	file "./mp3_encode.c",line 1401,column 60,is_stmt
        MOV dbl(*SP(#50)), AC0 ; |1401| 
        ADD #1, AC0 ; |1401| 
        MOV AC0, dbl(*SP(#50)) ; |1401| 
	.dwpsn	file "./mp3_encode.c",line 1401,column 22,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#50)), AC1 ; |1401| 
        MOV *AR3(#722), AC0 ; |1401| 
        CMP AC1 < AC0, TC1 ; |1401| 
        BCC $C$L101,TC1 ; |1401| 
                                        ; branchcc occurs ; |1401| 
$C$DW$L$_shine_iteration_loop$13$E:
$C$L109:    
$C$DW$L$_shine_iteration_loop$14$B:
	.dwpsn	file "./mp3_encode.c",line 1462,column 5,is_stmt
        MOV dbl(*SP(#48)), AC0 ; |1462| 
        SUB #1, AC0, AC1 ; |1462| 
        MOV AC1, dbl(*SP(#48)) ; |1462| 
        BCC $C$L100,AC0 != #0 ; |1462| 
                                        ; branchcc occurs ; |1462| 
$C$DW$L$_shine_iteration_loop$14$E:
$C$L110:    
	.dwpsn	file "./mp3_encode.c",line 1464,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$535	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$535, DW_AT_low_pc(0x00)
	.dwattr $C$DW$535, DW_AT_name("_shine_ResvFrameEnd")
	.dwattr $C$DW$535, DW_AT_TI_call
        CALL #_shine_ResvFrameEnd ; |1464| 
                                        ; call occurs [#_shine_ResvFrameEnd] ; |1464| 
	.dwpsn	file "./mp3_encode.c",line 1465,column 1,is_stmt
        AADD #59, SP
	.dwcfi	cfa_offset, 1
$C$DW$536	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$536, DW_AT_low_pc(0x00)
	.dwattr $C$DW$536, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$537	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$537, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L100:1:1738864582")
	.dwattr $C$DW$537, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$537, DW_AT_TI_begin_line(0x577)
	.dwattr $C$DW$537, DW_AT_TI_end_line(0x5b6)
$C$DW$538	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$538, DW_AT_low_pc($C$DW$L$_shine_iteration_loop$2$B)
	.dwattr $C$DW$538, DW_AT_high_pc($C$DW$L$_shine_iteration_loop$2$E)
$C$DW$539	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$539, DW_AT_low_pc($C$DW$L$_shine_iteration_loop$14$B)
	.dwattr $C$DW$539, DW_AT_high_pc($C$DW$L$_shine_iteration_loop$14$E)

$C$DW$540	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$540, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L101:2:1738864582")
	.dwattr $C$DW$540, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$540, DW_AT_TI_begin_line(0x579)
	.dwattr $C$DW$540, DW_AT_TI_end_line(0x5b5)
$C$DW$541	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$541, DW_AT_low_pc($C$DW$L$_shine_iteration_loop$3$B)
	.dwattr $C$DW$541, DW_AT_high_pc($C$DW$L$_shine_iteration_loop$3$E)
$C$DW$542	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$542, DW_AT_low_pc($C$DW$L$_shine_iteration_loop$7$B)
	.dwattr $C$DW$542, DW_AT_high_pc($C$DW$L$_shine_iteration_loop$7$E)
$C$DW$543	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$543, DW_AT_low_pc($C$DW$L$_shine_iteration_loop$8$B)
	.dwattr $C$DW$543, DW_AT_high_pc($C$DW$L$_shine_iteration_loop$8$E)
$C$DW$544	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$544, DW_AT_low_pc($C$DW$L$_shine_iteration_loop$9$B)
	.dwattr $C$DW$544, DW_AT_high_pc($C$DW$L$_shine_iteration_loop$9$E)
$C$DW$545	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$545, DW_AT_low_pc($C$DW$L$_shine_iteration_loop$11$B)
	.dwattr $C$DW$545, DW_AT_high_pc($C$DW$L$_shine_iteration_loop$11$E)
$C$DW$546	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$546, DW_AT_low_pc($C$DW$L$_shine_iteration_loop$12$B)
	.dwattr $C$DW$546, DW_AT_high_pc($C$DW$L$_shine_iteration_loop$12$E)
$C$DW$547	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$547, DW_AT_low_pc($C$DW$L$_shine_iteration_loop$13$B)
	.dwattr $C$DW$547, DW_AT_high_pc($C$DW$L$_shine_iteration_loop$13$E)

$C$DW$548	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$548, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L102:3:1738864582")
	.dwattr $C$DW$548, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$548, DW_AT_TI_begin_line(0x582)
	.dwattr $C$DW$548, DW_AT_TI_end_line(0x58b)
$C$DW$549	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$549, DW_AT_low_pc($C$DW$L$_shine_iteration_loop$4$B)
	.dwattr $C$DW$549, DW_AT_high_pc($C$DW$L$_shine_iteration_loop$4$E)
$C$DW$550	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$550, DW_AT_low_pc($C$DW$L$_shine_iteration_loop$5$B)
	.dwattr $C$DW$550, DW_AT_high_pc($C$DW$L$_shine_iteration_loop$5$E)
$C$DW$551	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$551, DW_AT_low_pc($C$DW$L$_shine_iteration_loop$6$B)
	.dwattr $C$DW$551, DW_AT_high_pc($C$DW$L$_shine_iteration_loop$6$E)
	.dwendtag $C$DW$548


$C$DW$552	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$552, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L106:3:1738864582")
	.dwattr $C$DW$552, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$552, DW_AT_TI_begin_line(0x59c)
	.dwattr $C$DW$552, DW_AT_TI_end_line(0x59d)
$C$DW$553	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$553, DW_AT_low_pc($C$DW$L$_shine_iteration_loop$10$B)
	.dwattr $C$DW$553, DW_AT_high_pc($C$DW$L$_shine_iteration_loop$10$E)
	.dwendtag $C$DW$552

	.dwendtag $C$DW$540

	.dwendtag $C$DW$537

	.dwattr $C$DW$516, DW_AT_TI_end_file("./mp3_encode.c")
	.dwattr $C$DW$516, DW_AT_TI_end_line(0x5b9)
	.dwattr $C$DW$516, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$516

	.sect	".text"

$C$DW$554	.dwtag  DW_TAG_subprogram, DW_AT_name("calc_scfsi")
	.dwattr $C$DW$554, DW_AT_low_pc(_calc_scfsi)
	.dwattr $C$DW$554, DW_AT_high_pc(0x00)
	.dwattr $C$DW$554, DW_AT_TI_symbol_name("_calc_scfsi")
	.dwattr $C$DW$554, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$554, DW_AT_TI_begin_line(0x5c0)
	.dwattr $C$DW$554, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$554, DW_AT_TI_max_frame_size(0x0e)
	.dwpsn	file "./mp3_encode.c",line 1474,column 1,is_stmt,address _calc_scfsi

	.dwfde $C$DW$CIE, _calc_scfsi
$C$DW$555	.dwtag  DW_TAG_formal_parameter, DW_AT_name("l3_xmin")
	.dwattr $C$DW$555, DW_AT_TI_symbol_name("_l3_xmin")
	.dwattr $C$DW$555, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$555, DW_AT_location[DW_OP_reg17]
$C$DW$556	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ch")
	.dwattr $C$DW$556, DW_AT_TI_symbol_name("_ch")
	.dwattr $C$DW$556, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$556, DW_AT_location[DW_OP_reg0]
$C$DW$557	.dwtag  DW_TAG_formal_parameter, DW_AT_name("gr")
	.dwattr $C$DW$557, DW_AT_TI_symbol_name("_gr")
	.dwattr $C$DW$557, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$557, DW_AT_location[DW_OP_reg3]
$C$DW$558	.dwtag  DW_TAG_formal_parameter, DW_AT_name("config")
	.dwattr $C$DW$558, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$558, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$558, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: calc_scfsi                                                   *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,CARRY, *
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 14 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (12 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_calc_scfsi:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-13, SP
	.dwcfi	cfa_offset, 14
$C$DW$559	.dwtag  DW_TAG_variable, DW_AT_name("l3_xmin")
	.dwattr $C$DW$559, DW_AT_TI_symbol_name("_l3_xmin")
	.dwattr $C$DW$559, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$559, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$560	.dwtag  DW_TAG_variable, DW_AT_name("ch")
	.dwattr $C$DW$560, DW_AT_TI_symbol_name("_ch")
	.dwattr $C$DW$560, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$560, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$561	.dwtag  DW_TAG_variable, DW_AT_name("gr")
	.dwattr $C$DW$561, DW_AT_TI_symbol_name("_gr")
	.dwattr $C$DW$561, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$561, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$562	.dwtag  DW_TAG_variable, DW_AT_name("config")
	.dwattr $C$DW$562, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$562, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$562, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$563	.dwtag  DW_TAG_variable, DW_AT_name("l3_side")
	.dwattr $C$DW$563, DW_AT_TI_symbol_name("_l3_side")
	.dwattr $C$DW$563, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$563, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$564	.dwtag  DW_TAG_variable, DW_AT_name("scfsi_band")
	.dwattr $C$DW$564, DW_AT_TI_symbol_name("_scfsi_band")
	.dwattr $C$DW$564, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$564, DW_AT_location[DW_OP_bregx 0x24 10]
        MOV XAR1, dbl(*SP(#6))
        MOV AC1, dbl(*SP(#4)) ; |1474| 
        MOV AC0, dbl(*SP(#2)) ; |1474| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./mp3_encode.c",line 1475,column 24,is_stmt
        MOV dbl(*SP(#6)), XAR3
        AMAR *+AR3(#11888) ; |1475| 
        MOV XAR3, dbl(*SP(#8))
	.dwpsn	file "./mp3_encode.c",line 1492,column 9,is_stmt
        MOV #0, AC0 ; |1492| 
        MOV AC0, dbl(*SP(#10)) ; |1492| 
	.dwpsn	file "./mp3_encode.c",line 1492,column 22,is_stmt

        MOV dbl(*SP(#10)), AC1 ; |1492| 
||      MOV #4, AC0 ; |1492| 

        CMP AC1 >= AC0, TC1 ; |1492| 
        BCC $C$L112,TC1 ; |1492| 
                                        ; branchcc occurs ; |1492| 
$C$L111:    
$C$DW$L$_calc_scfsi$2$B:
	.dwpsn	file "./mp3_encode.c",line 1494,column 7,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV *SP(#3) << #2, AC0 ; |1494| 
        MOV AC0, AR1 ; |1494| 

        MOV *SP(#11), AR1 ; |1494| 
||      AADD AR1, AR3 ; |1494| 

        AADD AR1, AR3 ; |1494| 
        MOV #0, *AR3(short(#2)) ; |1494| 
	.dwpsn	file "./mp3_encode.c",line 1492,column 35,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |1492| 
        ADD #1, AC0 ; |1492| 
        MOV AC0, dbl(*SP(#10)) ; |1492| 
	.dwpsn	file "./mp3_encode.c",line 1492,column 22,is_stmt

        MOV #4, AC0 ; |1492| 
||      MOV dbl(*SP(#10)), AC1 ; |1492| 

        CMP AC1 < AC0, TC1 ; |1492| 
        BCC $C$L111,TC1 ; |1492| 
                                        ; branchcc occurs ; |1492| 
$C$DW$L$_calc_scfsi$2$E:
	.dwpsn	file "./mp3_encode.c",line 1496,column 5,is_stmt
        B $C$L112 ; |1496| 
                                        ; branch occurs ; |1496| 
$C$L112:    
	.dwpsn	file "./mp3_encode.c",line 1591,column 1,is_stmt
        AADD #13, SP
	.dwcfi	cfa_offset, 1
$C$DW$565	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$565, DW_AT_low_pc(0x00)
	.dwattr $C$DW$565, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$566	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$566, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L111:1:1738864582")
	.dwattr $C$DW$566, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$566, DW_AT_TI_begin_line(0x5d4)
	.dwattr $C$DW$566, DW_AT_TI_end_line(0x5d7)
$C$DW$567	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$567, DW_AT_low_pc($C$DW$L$_calc_scfsi$2$B)
	.dwattr $C$DW$567, DW_AT_high_pc($C$DW$L$_calc_scfsi$2$E)
	.dwendtag $C$DW$566

	.dwattr $C$DW$554, DW_AT_TI_end_file("./mp3_encode.c")
	.dwattr $C$DW$554, DW_AT_TI_end_line(0x637)
	.dwattr $C$DW$554, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$554

	.sect	".text"

$C$DW$568	.dwtag  DW_TAG_subprogram, DW_AT_name("part2_length")
	.dwattr $C$DW$568, DW_AT_low_pc(_part2_length)
	.dwattr $C$DW$568, DW_AT_high_pc(0x00)
	.dwattr $C$DW$568, DW_AT_TI_symbol_name("_part2_length")
	.dwattr $C$DW$568, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$568, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$568, DW_AT_TI_begin_line(0x63f)
	.dwattr $C$DW$568, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$568, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "./mp3_encode.c",line 1600,column 1,is_stmt,address _part2_length

	.dwfde $C$DW$CIE, _part2_length
$C$DW$569	.dwtag  DW_TAG_formal_parameter, DW_AT_name("gr")
	.dwattr $C$DW$569, DW_AT_TI_symbol_name("_gr")
	.dwattr $C$DW$569, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$569, DW_AT_location[DW_OP_reg0]
$C$DW$570	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ch")
	.dwattr $C$DW$570, DW_AT_TI_symbol_name("_ch")
	.dwattr $C$DW$570, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$570, DW_AT_location[DW_OP_reg3]
$C$DW$571	.dwtag  DW_TAG_formal_parameter, DW_AT_name("config")
	.dwattr $C$DW$571, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$571, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$571, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: part2_length                                                 *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR3,XAR3,SP,CARRY,   *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 16 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (14 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_part2_length:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-15, SP
	.dwcfi	cfa_offset, 16
$C$DW$572	.dwtag  DW_TAG_variable, DW_AT_name("gr")
	.dwattr $C$DW$572, DW_AT_TI_symbol_name("_gr")
	.dwattr $C$DW$572, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$572, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$573	.dwtag  DW_TAG_variable, DW_AT_name("ch")
	.dwattr $C$DW$573, DW_AT_TI_symbol_name("_ch")
	.dwattr $C$DW$573, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$573, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$574	.dwtag  DW_TAG_variable, DW_AT_name("config")
	.dwattr $C$DW$574, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$574, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$574, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$575	.dwtag  DW_TAG_variable, DW_AT_name("slen1")
	.dwattr $C$DW$575, DW_AT_TI_symbol_name("_slen1")
	.dwattr $C$DW$575, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$575, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$576	.dwtag  DW_TAG_variable, DW_AT_name("slen2")
	.dwattr $C$DW$576, DW_AT_TI_symbol_name("_slen2")
	.dwattr $C$DW$576, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$576, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$577	.dwtag  DW_TAG_variable, DW_AT_name("bits")
	.dwattr $C$DW$577, DW_AT_TI_symbol_name("_bits")
	.dwattr $C$DW$577, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$577, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$578	.dwtag  DW_TAG_variable, DW_AT_name("gi")
	.dwattr $C$DW$578, DW_AT_TI_symbol_name("_gi")
	.dwattr $C$DW$578, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$578, DW_AT_location[DW_OP_bregx 0x24 12]
        MOV XAR0, dbl(*SP(#4))
        MOV AC1, dbl(*SP(#2)) ; |1600| 
        MOV AC0, dbl(*SP(#0)) ; |1600| 
	.dwpsn	file "./mp3_encode.c",line 1602,column 14,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MPYMK *SP(#1), #23, AC0 ; |1602| 
        MOV AC0, AR1 ; |1602| 
        MPYMK *SP(#3), #23, AC0 ; |1602| 

        MOV AC0, AR1 ; |1602| 
||      AADD AR1, AR3 ; |1602| 

        AADD AR1, AR3 ; |1602| 
        AMAR *+AR3(#11894) ; |1602| 
        MOV XAR3, dbl(*SP(#12))
	.dwpsn	file "./mp3_encode.c",line 1604,column 5,is_stmt
        MOV #0, AC0 ; |1604| 
        MOV AC0, dbl(*SP(#10)) ; |1604| 
	.dwpsn	file "./mp3_encode.c",line 1607,column 9,is_stmt
        MOV dbl(*SP(#12)), XAR3
        MOV *AR3(short(#4)), T0 ; |1607| 
        SFTL T0, #1 ; |1607| 
        AMOV #_shine_slen1_tab, XAR3 ; |1607| 
        MOV dbl(*AR3(T0)), AC0 ; |1607| 
        MOV AC0, dbl(*SP(#6)) ; |1607| 
	.dwpsn	file "./mp3_encode.c",line 1608,column 9,is_stmt
        MOV dbl(*SP(#12)), XAR3
        MOV *AR3(short(#4)), T0 ; |1608| 
        SFTL T0, #1 ; |1608| 
        AMOV #_shine_slen2_tab, XAR3 ; |1608| 
        MOV dbl(*AR3(T0)), AC0 ; |1608| 
        MOV AC0, dbl(*SP(#8)) ; |1608| 
	.dwpsn	file "./mp3_encode.c",line 1610,column 9,is_stmt
        MOV dbl(*SP(#0)), AC0 ; |1610| 
        BCC $C$L113,AC0 == #0 ; |1610| 
                                        ; branchcc occurs ; |1610| 
        MOV dbl(*SP(#4)), XAR3
        MOV *SP(#3) << #2, AC0 ; |1610| 
        MOV AC0, AR1 ; |1610| 
        AADD AR1, AR3 ; |1610| 
        MOV *AR3(#11890), AR1 ; |1610| 
        BCC $C$L114,AR1 != #0 ; |1610| 
                                        ; branchcc occurs ; |1610| 
$C$L113:    
	.dwpsn	file "./mp3_encode.c",line 1611,column 13,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |1611| 
        SFTS AC0, #1, AC1 ; |1611| 
        ADD AC0 << #2, AC1 ; |1611| 
        ADD dbl(*SP(#10)), AC1, AC0 ; |1611| 
        MOV AC0, dbl(*SP(#10)) ; |1611| 
$C$L114:    
	.dwpsn	file "./mp3_encode.c",line 1613,column 9,is_stmt
        MOV dbl(*SP(#0)), AC0 ; |1613| 
        BCC $C$L115,AC0 == #0 ; |1613| 
                                        ; branchcc occurs ; |1613| 
        MOV dbl(*SP(#4)), XAR3
        MOV *SP(#3) << #2, AC0 ; |1613| 
        MOV AC0, AR1 ; |1613| 
        AADD AR1, AR3 ; |1613| 
        MOV *AR3(#11891), AR1 ; |1613| 
        BCC $C$L116,AR1 != #0 ; |1613| 
                                        ; branchcc occurs ; |1613| 
$C$L115:    
	.dwpsn	file "./mp3_encode.c",line 1614,column 13,is_stmt
        MOV dbl(*SP(#6)), AC1 ; |1614| 
        OR #0, AC1, AC0
        ADD AC1 << #2, AC0 ; |1614| 
        ADD dbl(*SP(#10)), AC0, AC0 ; |1614| 
        MOV AC0, dbl(*SP(#10)) ; |1614| 
$C$L116:    
	.dwpsn	file "./mp3_encode.c",line 1616,column 9,is_stmt
        MOV dbl(*SP(#0)), AC0 ; |1616| 
        BCC $C$L117,AC0 == #0 ; |1616| 
                                        ; branchcc occurs ; |1616| 
        MOV dbl(*SP(#4)), XAR3
        MOV *SP(#3) << #2, AC0 ; |1616| 
        MOV AC0, AR1 ; |1616| 
        AADD AR1, AR3 ; |1616| 
        MOV *AR3(#11892), AR1 ; |1616| 
        BCC $C$L118,AR1 != #0 ; |1616| 
                                        ; branchcc occurs ; |1616| 
$C$L117:    
	.dwpsn	file "./mp3_encode.c",line 1617,column 13,is_stmt
        MOV dbl(*SP(#8)), AC1 ; |1617| 
        OR #0, AC1, AC0
        ADD AC1 << #2, AC0 ; |1617| 
        ADD dbl(*SP(#10)), AC0, AC0 ; |1617| 
        MOV AC0, dbl(*SP(#10)) ; |1617| 
$C$L118:    
	.dwpsn	file "./mp3_encode.c",line 1619,column 9,is_stmt
        MOV dbl(*SP(#0)), AC0 ; |1619| 
        BCC $C$L119,AC0 == #0 ; |1619| 
                                        ; branchcc occurs ; |1619| 
        MOV dbl(*SP(#4)), XAR3
        MOV *SP(#3) << #2, AC0 ; |1619| 
        MOV AC0, AR1 ; |1619| 
        AADD AR1, AR3 ; |1619| 
        MOV *AR3(#11893), AR1 ; |1619| 
        BCC $C$L120,AR1 != #0 ; |1619| 
                                        ; branchcc occurs ; |1619| 
$C$L119:    
	.dwpsn	file "./mp3_encode.c",line 1620,column 13,is_stmt
        MOV dbl(*SP(#8)), AC1 ; |1620| 
        OR #0, AC1, AC0
        ADD AC1 << #2, AC0 ; |1620| 
        ADD dbl(*SP(#10)), AC0, AC0 ; |1620| 
        MOV AC0, dbl(*SP(#10)) ; |1620| 
$C$L120:    
	.dwpsn	file "./mp3_encode.c",line 1622,column 5,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |1622| 
	.dwpsn	file "./mp3_encode.c",line 1623,column 1,is_stmt
        AADD #15, SP
	.dwcfi	cfa_offset, 1
$C$DW$579	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$579, DW_AT_low_pc(0x00)
	.dwattr $C$DW$579, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$568, DW_AT_TI_end_file("./mp3_encode.c")
	.dwattr $C$DW$568, DW_AT_TI_end_line(0x657)
	.dwattr $C$DW$568, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$568

	.sect	".text"

$C$DW$580	.dwtag  DW_TAG_subprogram, DW_AT_name("calc_xmin")
	.dwattr $C$DW$580, DW_AT_low_pc(_calc_xmin)
	.dwattr $C$DW$580, DW_AT_high_pc(0x00)
	.dwattr $C$DW$580, DW_AT_TI_symbol_name("_calc_xmin")
	.dwattr $C$DW$580, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$580, DW_AT_TI_begin_line(0x660)
	.dwattr $C$DW$580, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$580, DW_AT_TI_max_frame_size(0x0e)
	.dwpsn	file "./mp3_encode.c",line 1636,column 1,is_stmt,address _calc_xmin

	.dwfde $C$DW$CIE, _calc_xmin
$C$DW$581	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ratio")
	.dwattr $C$DW$581, DW_AT_TI_symbol_name("_ratio")
	.dwattr $C$DW$581, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$581, DW_AT_location[DW_OP_reg17]
$C$DW$582	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cod_info")
	.dwattr $C$DW$582, DW_AT_TI_symbol_name("_cod_info")
	.dwattr $C$DW$582, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$582, DW_AT_location[DW_OP_reg19]
$C$DW$583	.dwtag  DW_TAG_formal_parameter, DW_AT_name("l3_xmin")
	.dwattr $C$DW$583, DW_AT_TI_symbol_name("_l3_xmin")
	.dwattr $C$DW$583, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$583, DW_AT_location[DW_OP_reg21]
$C$DW$584	.dwtag  DW_TAG_formal_parameter, DW_AT_name("gr")
	.dwattr $C$DW$584, DW_AT_TI_symbol_name("_gr")
	.dwattr $C$DW$584, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$584, DW_AT_location[DW_OP_reg0]
$C$DW$585	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ch")
	.dwattr $C$DW$585, DW_AT_TI_symbol_name("_ch")
	.dwattr $C$DW$585, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$585, DW_AT_location[DW_OP_reg3]
;*******************************************************************************
;* FUNCTION NAME: calc_xmin                                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,   *
;*                        XAR3,SP,CARRY,M40,SATA,SATD,RDM,FRCT,SMUL            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 14 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (12 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_calc_xmin:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-13, SP
	.dwcfi	cfa_offset, 14
$C$DW$586	.dwtag  DW_TAG_variable, DW_AT_name("ratio")
	.dwattr $C$DW$586, DW_AT_TI_symbol_name("_ratio")
	.dwattr $C$DW$586, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$586, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$587	.dwtag  DW_TAG_variable, DW_AT_name("cod_info")
	.dwattr $C$DW$587, DW_AT_TI_symbol_name("_cod_info")
	.dwattr $C$DW$587, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$587, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$588	.dwtag  DW_TAG_variable, DW_AT_name("l3_xmin")
	.dwattr $C$DW$588, DW_AT_TI_symbol_name("_l3_xmin")
	.dwattr $C$DW$588, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$588, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$589	.dwtag  DW_TAG_variable, DW_AT_name("gr")
	.dwattr $C$DW$589, DW_AT_TI_symbol_name("_gr")
	.dwattr $C$DW$589, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$589, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$590	.dwtag  DW_TAG_variable, DW_AT_name("ch")
	.dwattr $C$DW$590, DW_AT_TI_symbol_name("_ch")
	.dwattr $C$DW$590, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$590, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$591	.dwtag  DW_TAG_variable, DW_AT_name("sfb")
	.dwattr $C$DW$591, DW_AT_TI_symbol_name("_sfb")
	.dwattr $C$DW$591, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$591, DW_AT_location[DW_OP_bregx 0x24 10]
        MOV AC1, dbl(*SP(#8)) ; |1636| 
        MOV AC0, dbl(*SP(#6)) ; |1636| 
        MOV XAR2, dbl(*SP(#4))
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./mp3_encode.c",line 1639,column 10,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(*AR3(#14)), AC0 ; |1639| 
        MOV AC0, dbl(*SP(#10)) ; |1639| 
        MOV dbl(*SP(#10)), AC0 ; |1639| 
        SUB #1, AC0, AC1 ; |1639| 
        MOV AC1, dbl(*SP(#10)) ; |1639| 
        BCC $C$L122,AC0 == #0 ; |1639| 
                                        ; branchcc occurs ; |1639| 
$C$L121:    
$C$DW$L$_calc_xmin$2$B:
	.dwpsn	file "./mp3_encode.c",line 1652,column 9,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MPYMK *SP(#7), #42, AC0 ; |1652| 
        MOV AC0, AR1 ; |1652| 
        MPYMK *SP(#9), #42, AC0 ; |1652| 

        MOV AC0, AR1 ; |1652| 
||      AADD AR1, AR3 ; |1652| 

        MOV *SP(#11), T0 ; |1652| 
        SFTL T0, #1 ; |1652| 
        MOV dbl(*($C$FL4)), AC0 ; |1652| 
        AADD AR1, AR3 ; |1652| 
        MOV AC0, dbl(*AR3(T0)) ; |1652| 
	.dwpsn	file "./mp3_encode.c",line 1653,column 5,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |1653| 
        SUB #1, AC0, AC1 ; |1653| 
        MOV AC1, dbl(*SP(#10)) ; |1653| 
        BCC $C$L121,AC0 != #0 ; |1653| 
                                        ; branchcc occurs ; |1653| 
$C$DW$L$_calc_xmin$2$E:
	.dwpsn	file "./mp3_encode.c",line 1654,column 1,is_stmt
$C$L122:    
        AADD #13, SP
	.dwcfi	cfa_offset, 1
$C$DW$592	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$592, DW_AT_low_pc(0x00)
	.dwattr $C$DW$592, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$593	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$593, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L121:1:1738864582")
	.dwattr $C$DW$593, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$593, DW_AT_TI_begin_line(0x667)
	.dwattr $C$DW$593, DW_AT_TI_end_line(0x675)
$C$DW$594	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$594, DW_AT_low_pc($C$DW$L$_calc_xmin$2$B)
	.dwattr $C$DW$594, DW_AT_high_pc($C$DW$L$_calc_xmin$2$E)
	.dwendtag $C$DW$593

	.dwattr $C$DW$580, DW_AT_TI_end_file("./mp3_encode.c")
	.dwattr $C$DW$580, DW_AT_TI_end_line(0x676)
	.dwattr $C$DW$580, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$580

	.sect	".text"
	.global	_shine_loop_initialise

$C$DW$595	.dwtag  DW_TAG_subprogram, DW_AT_name("shine_loop_initialise")
	.dwattr $C$DW$595, DW_AT_low_pc(_shine_loop_initialise)
	.dwattr $C$DW$595, DW_AT_high_pc(0x00)
	.dwattr $C$DW$595, DW_AT_TI_symbol_name("_shine_loop_initialise")
	.dwattr $C$DW$595, DW_AT_external
	.dwattr $C$DW$595, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$595, DW_AT_TI_begin_line(0x67d)
	.dwattr $C$DW$595, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$595, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "./mp3_encode.c",line 1662,column 1,is_stmt,address _shine_loop_initialise

	.dwfde $C$DW$CIE, _shine_loop_initialise
$C$DW$596	.dwtag  DW_TAG_formal_parameter, DW_AT_name("config")
	.dwattr $C$DW$596, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$596, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$596, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: shine_loop_initialise                                        *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR3,XAR3,SP,CARRY,   *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (8 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_shine_loop_initialise:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-9, SP
	.dwcfi	cfa_offset, 10
$C$DW$597	.dwtag  DW_TAG_variable, DW_AT_name("config")
	.dwattr $C$DW$597, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$597, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$597, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$598	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$598, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$598, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$598, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./mp3_encode.c",line 1670,column 10,is_stmt
        MOV #128, AC0 ; |1670| 
        MOV AC0, dbl(*SP(#2)) ; |1670| 
        MOV dbl(*SP(#2)), AC0 ; |1670| 
        SUB #1, AC0, AC1 ; |1670| 
        MOV AC1, dbl(*SP(#2)) ; |1670| 
        BCC $C$L126,AC0 == #0 ; |1670| 
                                        ; branchcc occurs ; |1670| 
$C$L123:    
$C$DW$L$_shine_loop_initialise$2$B:

$C$DW$599	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$600	.dwtag  DW_TAG_variable, DW_AT_name("temp")
	.dwattr $C$DW$600, DW_AT_TI_symbol_name("_temp")
	.dwattr $C$DW$600, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$600, DW_AT_location[DW_OP_bregx 0x24 4]
	.dwpsn	file "./mp3_encode.c",line 1673,column 16,is_stmt
        MOV #127, AC0 ; |1673| 
        SUB dbl(*SP(#2)), AC0, AC0 ; |1673| 
$C$DW$601	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$601, DW_AT_low_pc(0x00)
	.dwattr $C$DW$601, DW_AT_name("__fltlid")
	.dwattr $C$DW$601, DW_AT_TI_call
        CALL #__fltlid ; |1673| 
                                        ; call occurs [#__fltlid] ; |1673| 
        MOV dbl(*($C$FL7)), AC1 ; |1673| 
$C$DW$602	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$602, DW_AT_low_pc(0x00)
	.dwattr $C$DW$602, DW_AT_name("__divd")
	.dwattr $C$DW$602, DW_AT_TI_call
        CALL #__divd ; |1673| 
                                        ; call occurs [#__divd] ; |1673| 
        OR #0, AC0, AC1
        MOV dbl(*($C$FL6)), AC0 ; |1673| 
$C$DW$603	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$603, DW_AT_low_pc(0x00)
	.dwattr $C$DW$603, DW_AT_name("_pow")
	.dwattr $C$DW$603, DW_AT_TI_call
        CALL #_pow ; |1673| 
                                        ; call occurs [#_pow] ; |1673| 
        MOV AC0, dbl(*SP(#4)) ; |1673| 
	.dwpsn	file "./mp3_encode.c",line 1674,column 9,is_stmt
        MOV dbl(*($C$FL6)), AC1 ; |1674| 
$C$DW$604	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$604, DW_AT_low_pc(0x00)
	.dwattr $C$DW$604, DW_AT_name("__mpyd")
	.dwattr $C$DW$604, DW_AT_TI_call
        CALL #__mpyd ; |1674| 
                                        ; call occurs [#__mpyd] ; |1674| 
        MOV dbl(*($C$FL8)), AC1 ; |1674| 
$C$DW$605	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$605, DW_AT_low_pc(0x00)
	.dwattr $C$DW$605, DW_AT_name("__cmpd")
	.dwattr $C$DW$605, DW_AT_TI_call
        CALL #__cmpd ; |1674| 
                                        ; call occurs [#__cmpd] ; |1674| 
        BCC $C$L124,T0 <= #0 ; |1674| 
                                        ; branchcc occurs ; |1674| 
$C$DW$L$_shine_loop_initialise$2$E:
$C$DW$L$_shine_loop_initialise$3$B:
	.dwpsn	file "./mp3_encode.c",line 1676,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#3), AR1 ; |1676| 
        SFTL AR1, #1 ; |1676| 
        MOV #32767 << #16, AC0 ; |1676| 
        OR #0xffff, AC0, AC0 ; |1676| 
        AADD AR1, AR3 ; |1676| 
        MOV AC0, dbl(*AR3(short(#6))) ; |1676| 
	.dwpsn	file "./mp3_encode.c",line 1677,column 9,is_stmt
        B $C$L125 ; |1677| 
                                        ; branch occurs ; |1677| 
$C$DW$L$_shine_loop_initialise$3$E:
$C$L124:    
$C$DW$L$_shine_loop_initialise$4$B:
	.dwpsn	file "./mp3_encode.c",line 1684,column 13,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |1684| 
        MOV dbl(*($C$FL6)), AC1 ; |1684| 
$C$DW$606	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$606, DW_AT_low_pc(0x00)
	.dwattr $C$DW$606, DW_AT_name("__mpyd")
	.dwattr $C$DW$606, DW_AT_TI_call
        CALL #__mpyd ; |1684| 
                                        ; call occurs [#__mpyd] ; |1684| 
        MOV dbl(*($C$FL9)), AC1 ; |1684| 
$C$DW$607	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$607, DW_AT_low_pc(0x00)
	.dwattr $C$DW$607, DW_AT_name("__addd")
	.dwattr $C$DW$607, DW_AT_TI_call
        CALL #__addd ; |1684| 
                                        ; call occurs [#__addd] ; |1684| 
$C$DW$608	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$608, DW_AT_low_pc(0x00)
	.dwattr $C$DW$608, DW_AT_name("__fixdli")
	.dwattr $C$DW$608, DW_AT_TI_call
        CALL #__fixdli ; |1684| 
                                        ; call occurs [#__fixdli] ; |1684| 
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#3), AR1 ; |1684| 
        SFTL AR1, #1 ; |1684| 
        AADD AR1, AR3 ; |1684| 
        MOV AC0, dbl(*AR3(short(#6))) ; |1684| 
$C$DW$L$_shine_loop_initialise$4$E:
$C$L125:    
$C$DW$L$_shine_loop_initialise$5$B:
	.dwendtag $C$DW$599

	.dwpsn	file "./mp3_encode.c",line 1686,column 5,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |1686| 
        SUB #1, AC0, AC1 ; |1686| 
        MOV AC1, dbl(*SP(#2)) ; |1686| 
        BCC $C$L123,AC0 != #0 ; |1686| 
                                        ; branchcc occurs ; |1686| 
$C$DW$L$_shine_loop_initialise$5$E:
$C$L126:    
	.dwpsn	file "./mp3_encode.c",line 1691,column 10,is_stmt
        MOV #200, AC0 ; |1691| 
        MOV AC0, dbl(*SP(#2)) ; |1691| 
        MOV dbl(*SP(#2)), AC0 ; |1691| 
        SUB #1, AC0, AC1 ; |1691| 
        MOV AC1, dbl(*SP(#2)) ; |1691| 
        BCC $C$L128,AC0 == #0 ; |1691| 
                                        ; branchcc occurs ; |1691| 
$C$L127:    
$C$DW$L$_shine_loop_initialise$7$B:
	.dwpsn	file "./mp3_encode.c",line 1693,column 9,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |1693| 
$C$DW$609	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$609, DW_AT_low_pc(0x00)
	.dwattr $C$DW$609, DW_AT_name("__fltlid")
	.dwattr $C$DW$609, DW_AT_TI_call
        CALL #__fltlid ; |1693| 
                                        ; call occurs [#__fltlid] ; |1693| 
$C$DW$610	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$610, DW_AT_low_pc(0x00)
	.dwattr $C$DW$610, DW_AT_name("_sqrt")
	.dwattr $C$DW$610, DW_AT_TI_call
        CALL #_sqrt ; |1693| 
                                        ; call occurs [#_sqrt] ; |1693| 
        MOV AC0, dbl(*SP(#6)) ; |1693| 
        MOV dbl(*SP(#2)), AC0 ; |1693| 
$C$DW$611	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$611, DW_AT_low_pc(0x00)
	.dwattr $C$DW$611, DW_AT_name("__fltlid")
	.dwattr $C$DW$611, DW_AT_TI_call
        CALL #__fltlid ; |1693| 
                                        ; call occurs [#__fltlid] ; |1693| 

        MOV dbl(*SP(#6)), AC0 ; |1693| 
||      OR #0, AC0, AC1

$C$DW$612	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$612, DW_AT_low_pc(0x00)
	.dwattr $C$DW$612, DW_AT_name("__mpyd")
	.dwattr $C$DW$612, DW_AT_TI_call
        CALL #__mpyd ; |1693| 
                                        ; call occurs [#__mpyd] ; |1693| 
$C$DW$613	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$613, DW_AT_low_pc(0x00)
	.dwattr $C$DW$613, DW_AT_name("_sqrt")
	.dwattr $C$DW$613, DW_AT_TI_call
        CALL #_sqrt ; |1693| 
                                        ; call occurs [#_sqrt] ; |1693| 
        MOV dbl(*($C$FL10)), AC1 ; |1693| 
$C$DW$614	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$614, DW_AT_low_pc(0x00)
	.dwattr $C$DW$614, DW_AT_name("__subd")
	.dwattr $C$DW$614, DW_AT_TI_call
        CALL #__subd ; |1693| 
                                        ; call occurs [#__subd] ; |1693| 
        MOV dbl(*($C$FL9)), AC1 ; |1693| 
$C$DW$615	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$615, DW_AT_low_pc(0x00)
	.dwattr $C$DW$615, DW_AT_name("__addd")
	.dwattr $C$DW$615, DW_AT_TI_call
        CALL #__addd ; |1693| 
                                        ; call occurs [#__addd] ; |1693| 
$C$DW$616	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$616, DW_AT_low_pc(0x00)
	.dwattr $C$DW$616, DW_AT_name("__fixdli")
	.dwattr $C$DW$616, DW_AT_TI_call
        CALL #__fixdli ; |1693| 
                                        ; call occurs [#__fixdli] ; |1693| 
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#3), AR1 ; |1693| 
        SFTL AR1, #1 ; |1693| 
        AADD AR1, AR3 ; |1693| 
        MOV AC0, dbl(*AR3(#262)) ; |1693| 
	.dwpsn	file "./mp3_encode.c",line 1694,column 5,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |1694| 
        SUB #1, AC0, AC1 ; |1694| 
        MOV AC1, dbl(*SP(#2)) ; |1694| 
        BCC $C$L127,AC0 != #0 ; |1694| 
                                        ; branchcc occurs ; |1694| 
$C$DW$L$_shine_loop_initialise$7$E:
	.dwpsn	file "./mp3_encode.c",line 1695,column 1,is_stmt
$C$L128:    
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$617	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$617, DW_AT_low_pc(0x00)
	.dwattr $C$DW$617, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$618	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$618, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L127:1:1738864582")
	.dwattr $C$DW$618, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$618, DW_AT_TI_begin_line(0x69b)
	.dwattr $C$DW$618, DW_AT_TI_end_line(0x69e)
$C$DW$619	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$619, DW_AT_low_pc($C$DW$L$_shine_loop_initialise$7$B)
	.dwattr $C$DW$619, DW_AT_high_pc($C$DW$L$_shine_loop_initialise$7$E)
	.dwendtag $C$DW$618


$C$DW$620	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$620, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L123:1:1738864582")
	.dwattr $C$DW$620, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$620, DW_AT_TI_begin_line(0x686)
	.dwattr $C$DW$620, DW_AT_TI_end_line(0x696)
$C$DW$621	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$621, DW_AT_low_pc($C$DW$L$_shine_loop_initialise$2$B)
	.dwattr $C$DW$621, DW_AT_high_pc($C$DW$L$_shine_loop_initialise$2$E)
$C$DW$622	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$622, DW_AT_low_pc($C$DW$L$_shine_loop_initialise$3$B)
	.dwattr $C$DW$622, DW_AT_high_pc($C$DW$L$_shine_loop_initialise$3$E)
$C$DW$623	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$623, DW_AT_low_pc($C$DW$L$_shine_loop_initialise$4$B)
	.dwattr $C$DW$623, DW_AT_high_pc($C$DW$L$_shine_loop_initialise$4$E)
$C$DW$624	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$624, DW_AT_low_pc($C$DW$L$_shine_loop_initialise$5$B)
	.dwattr $C$DW$624, DW_AT_high_pc($C$DW$L$_shine_loop_initialise$5$E)
	.dwendtag $C$DW$620

	.dwattr $C$DW$595, DW_AT_TI_end_file("./mp3_encode.c")
	.dwattr $C$DW$595, DW_AT_TI_end_line(0x69f)
	.dwattr $C$DW$595, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$595

	.sect	".text"
	.global	_get_int2idx_value

$C$DW$625	.dwtag  DW_TAG_subprogram, DW_AT_name("get_int2idx_value")
	.dwattr $C$DW$625, DW_AT_low_pc(_get_int2idx_value)
	.dwattr $C$DW$625, DW_AT_high_pc(0x00)
	.dwattr $C$DW$625, DW_AT_TI_symbol_name("_get_int2idx_value")
	.dwattr $C$DW$625, DW_AT_external
	.dwattr $C$DW$625, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$625, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$625, DW_AT_TI_begin_line(0x6a1)
	.dwattr $C$DW$625, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$625, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "./mp3_encode.c",line 1698,column 1,is_stmt,address _get_int2idx_value

	.dwfde $C$DW$CIE, _get_int2idx_value
$C$DW$626	.dwtag  DW_TAG_formal_parameter, DW_AT_name("i")
	.dwattr $C$DW$626, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$626, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$626, DW_AT_location[DW_OP_reg0]
;*******************************************************************************
;* FUNCTION NAME: get_int2idx_value                                            *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,SP,M40,SATA,SATD,RDM,FRCT,SMUL       *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_get_int2idx_value:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$627	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$627, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$627, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$627, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV AC0, dbl(*SP(#0)) ; |1698| 
	.dwpsn	file "./mp3_encode.c",line 1699,column 5,is_stmt
        MOV dbl(*SP(#0)), AC0 ; |1699| 
$C$DW$628	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$628, DW_AT_low_pc(0x00)
	.dwattr $C$DW$628, DW_AT_name("__fltlid")
	.dwattr $C$DW$628, DW_AT_TI_call
        CALL #__fltlid ; |1699| 
                                        ; call occurs [#__fltlid] ; |1699| 
$C$DW$629	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$629, DW_AT_low_pc(0x00)
	.dwattr $C$DW$629, DW_AT_name("_sqrt")
	.dwattr $C$DW$629, DW_AT_TI_call
        CALL #_sqrt ; |1699| 
                                        ; call occurs [#_sqrt] ; |1699| 
        MOV AC0, dbl(*SP(#2)) ; |1699| 
        MOV dbl(*SP(#0)), AC0 ; |1699| 
$C$DW$630	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$630, DW_AT_low_pc(0x00)
	.dwattr $C$DW$630, DW_AT_name("__fltlid")
	.dwattr $C$DW$630, DW_AT_TI_call
        CALL #__fltlid ; |1699| 
                                        ; call occurs [#__fltlid] ; |1699| 

        MOV dbl(*SP(#2)), AC0 ; |1699| 
||      OR #0, AC0, AC1

$C$DW$631	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$631, DW_AT_low_pc(0x00)
	.dwattr $C$DW$631, DW_AT_name("__mpyd")
	.dwattr $C$DW$631, DW_AT_TI_call
        CALL #__mpyd ; |1699| 
                                        ; call occurs [#__mpyd] ; |1699| 
$C$DW$632	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$632, DW_AT_low_pc(0x00)
	.dwattr $C$DW$632, DW_AT_name("_sqrt")
	.dwattr $C$DW$632, DW_AT_TI_call
        CALL #_sqrt ; |1699| 
                                        ; call occurs [#_sqrt] ; |1699| 
        MOV dbl(*($C$FL10)), AC1 ; |1699| 
$C$DW$633	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$633, DW_AT_low_pc(0x00)
	.dwattr $C$DW$633, DW_AT_name("__subd")
	.dwattr $C$DW$633, DW_AT_TI_call
        CALL #__subd ; |1699| 
                                        ; call occurs [#__subd] ; |1699| 
        MOV dbl(*($C$FL9)), AC1 ; |1699| 
$C$DW$634	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$634, DW_AT_low_pc(0x00)
	.dwattr $C$DW$634, DW_AT_name("__addd")
	.dwattr $C$DW$634, DW_AT_TI_call
        CALL #__addd ; |1699| 
                                        ; call occurs [#__addd] ; |1699| 
$C$DW$635	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$635, DW_AT_low_pc(0x00)
	.dwattr $C$DW$635, DW_AT_name("__fixdli")
	.dwattr $C$DW$635, DW_AT_TI_call
        CALL #__fixdli ; |1699| 
                                        ; call occurs [#__fixdli] ; |1699| 
	.dwpsn	file "./mp3_encode.c",line 1700,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$636	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$636, DW_AT_low_pc(0x00)
	.dwattr $C$DW$636, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$625, DW_AT_TI_end_file("./mp3_encode.c")
	.dwattr $C$DW$625, DW_AT_TI_end_line(0x6a4)
	.dwattr $C$DW$625, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$625

	.sect	".text"

$C$DW$637	.dwtag  DW_TAG_subprogram, DW_AT_name("quantize")
	.dwattr $C$DW$637, DW_AT_low_pc(_quantize)
	.dwattr $C$DW$637, DW_AT_high_pc(0x00)
	.dwattr $C$DW$637, DW_AT_TI_symbol_name("_quantize")
	.dwattr $C$DW$637, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$637, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$637, DW_AT_TI_begin_line(0x6ab)
	.dwattr $C$DW$637, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$637, DW_AT_TI_max_frame_size(0x16)
	.dwpsn	file "./mp3_encode.c",line 1708,column 1,is_stmt,address _quantize

	.dwfde $C$DW$CIE, _quantize
$C$DW$638	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ix")
	.dwattr $C$DW$638, DW_AT_TI_symbol_name("_ix")
	.dwattr $C$DW$638, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$638, DW_AT_location[DW_OP_reg17]
$C$DW$639	.dwtag  DW_TAG_formal_parameter, DW_AT_name("stepsize")
	.dwattr $C$DW$639, DW_AT_TI_symbol_name("_stepsize")
	.dwattr $C$DW$639, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$639, DW_AT_location[DW_OP_reg0]
$C$DW$640	.dwtag  DW_TAG_formal_parameter, DW_AT_name("config")
	.dwattr $C$DW$640, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$640, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$640, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: quantize                                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,   *
;*                        XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 22 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (20 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_quantize:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-21, SP
	.dwcfi	cfa_offset, 22
$C$DW$641	.dwtag  DW_TAG_variable, DW_AT_name("ix")
	.dwattr $C$DW$641, DW_AT_TI_symbol_name("_ix")
	.dwattr $C$DW$641, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$641, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$642	.dwtag  DW_TAG_variable, DW_AT_name("stepsize")
	.dwattr $C$DW$642, DW_AT_TI_symbol_name("_stepsize")
	.dwattr $C$DW$642, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$642, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$643	.dwtag  DW_TAG_variable, DW_AT_name("config")
	.dwattr $C$DW$643, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$643, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$643, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$644	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$644, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$644, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$644, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$645	.dwtag  DW_TAG_variable, DW_AT_name("max")
	.dwattr $C$DW$645, DW_AT_TI_symbol_name("_max")
	.dwattr $C$DW$645, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$645, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$646	.dwtag  DW_TAG_variable, DW_AT_name("ln")
	.dwattr $C$DW$646, DW_AT_TI_symbol_name("_ln")
	.dwattr $C$DW$646, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$646, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$647	.dwtag  DW_TAG_variable, DW_AT_name("scalei")
	.dwattr $C$DW$647, DW_AT_TI_symbol_name("_scalei")
	.dwattr $C$DW$647, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$647, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$648	.dwtag  DW_TAG_variable, DW_AT_name("scale")
	.dwattr $C$DW$648, DW_AT_TI_symbol_name("_scale")
	.dwattr $C$DW$648, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$648, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$649	.dwtag  DW_TAG_variable, DW_AT_name("dbl")
	.dwattr $C$DW$649, DW_AT_TI_symbol_name("_dbl")
	.dwattr $C$DW$649, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$649, DW_AT_location[DW_OP_bregx 0x24 16]
        MOV XAR1, dbl(*SP(#4))
        MOV AC0, dbl(*SP(#2)) ; |1708| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./mp3_encode.c",line 1713,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #127, AC0 ; |1713| 
        ADD dbl(*SP(#2)), AC0, AC0 ; |1713| 
        MOV AC0, AR1 ; |1713| 
        SFTL AR1, #1 ; |1713| 
        AADD AR1, AR3 ; |1713| 
        MOV dbl(*AR3(short(#6))), AC0 ; |1713| 
        MOV AC0, dbl(*SP(#12)) ; |1713| 
	.dwpsn	file "./mp3_encode.c",line 1717,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*SP(#12)), AC1 ; |1717| 
        MOV dbl(*AR3(short(#4))), AC0 ; |1717| 
$C$DW$650	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$650, DW_AT_low_pc(0x00)
	.dwattr $C$DW$650, DW_AT_name("__mpylli")
	.dwattr $C$DW$650, DW_AT_TI_call
        CALL #__mpylli ; |1717| 
                                        ; call occurs [#__mpylli] ; |1717| 
        AMOV #165140, XAR3 ; |1717| 
        MOV #0, AC1 ; |1717| 

        OR #0x8000, AC1, AC1 ; |1717| 
||      BSET ST1_M40

        ADD AC0, AC1 ; |1717| 
        SFTS AC1, #-16, AC0 ; |1717| 

        MOV XAR3, AC1
||      BCLR ST1_M40

        CMP AC0 <= AC1, TC1 ; |1717| 
        BCC $C$L129,TC1 ; |1717| 
                                        ; branchcc occurs ; |1717| 
	.dwpsn	file "./mp3_encode.c",line 1718,column 9,is_stmt
        MOV #16384, AC0 ; |1718| 
        MOV AC0, dbl(*SP(#8)) ; |1718| 
        B $C$L135 ; |1718| 
                                        ; branch occurs ; |1718| 
$C$L129:    
	.dwpsn	file "./mp3_encode.c",line 1720,column 14,is_stmt
        MOV #0, AC0 ; |1720| 
        MOV AC0, dbl(*SP(#6)) ; |1720| 
        MOV AC0, dbl(*SP(#8)) ; |1720| 
	.dwpsn	file "./mp3_encode.c",line 1720,column 30,is_stmt
        MOV dbl(*SP(#6)), AC1 ; |1720| 
        MOV #576, AC0 ; |1720| 
        CMP AC1 >= AC0, TC1 ; |1720| 
        BCC $C$L135,TC1 ; |1720| 
                                        ; branchcc occurs ; |1720| 
$C$L130:    
$C$DW$L$_quantize$4$B:
	.dwpsn	file "./mp3_encode.c",line 1725,column 13,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV *SP(#7), T0 ; |1725| 
        SFTL T0, #1 ; |1725| 
        MOV dbl(*AR3(short(#2))), XAR3
        MOV dbl(*AR3(T0)), AC0 ; |1725| 

        ABS AC0, AC0 ; |1725| 
||      MOV dbl(*SP(#12)), AC1 ; |1725| 

$C$DW$651	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$651, DW_AT_low_pc(0x00)
	.dwattr $C$DW$651, DW_AT_name("__mpylli")
	.dwattr $C$DW$651, DW_AT_TI_call

        CALL #__mpylli ; |1725| 
||      SFTS AC0, #0, AC0 ; |1725| 

                                        ; call occurs [#__mpylli] ; |1725| 
        MOV #0, AC1 ; |1725| 

        OR #0x8000, AC1, AC1 ; |1725| 
||      BSET ST1_M40

        ADD AC0, AC1 ; |1725| 
        SFTS AC1, #-16, AC0 ; |1725| 
        MOV AC0, dbl(*SP(#10)) ; |1725| 
	.dwpsn	file "./mp3_encode.c",line 1727,column 13,is_stmt
        MOV #200, AC0 ; |1727| 

        MOV dbl(*SP(#10)), AC1 ; |1727| 
||      BCLR ST1_M40

        CMP AC1 >= AC0, TC1 ; |1727| 
        BCC $C$L131,TC1 ; |1727| 
                                        ; branchcc occurs ; |1727| 
$C$DW$L$_quantize$4$E:
$C$DW$L$_quantize$5$B:
	.dwpsn	file "./mp3_encode.c",line 1729,column 17,is_stmt
        MOV dbl(*SP(#4)), XAR2
        MOV *SP(#11), AR1 ; |1729| 
        SFTL AR1, #1 ; |1729| 
        MOV dbl(*SP(#0)), XAR3

        MOV *SP(#7), AR1 ; |1729| 
||      AADD AR1, AR2 ; |1729| 

        SFTL AR1, #1 ; |1729| 
        MOV #262, T0 ; |1729| 
        AADD AR1, AR3 ; |1729| 
        MOV dbl(*AR2(T0)), dbl(*AR3) ; |1729| 
	.dwpsn	file "./mp3_encode.c",line 1730,column 13,is_stmt
        B $C$L133 ; |1730| 
                                        ; branch occurs ; |1730| 
$C$DW$L$_quantize$5$E:
$C$L131:    
$C$DW$L$_quantize$6$B:
	.dwpsn	file "./mp3_encode.c",line 1731,column 18,is_stmt
        MOV #10000, AC0 ; |1731| 
        MOV dbl(*SP(#10)), AC1 ; |1731| 
        CMP AC1 >= AC0, TC1 ; |1731| 
        BCC $C$L132,TC1 ; |1731| 
                                        ; branchcc occurs ; |1731| 
$C$DW$L$_quantize$6$E:
$C$DW$L$_quantize$7$B:
	.dwpsn	file "./mp3_encode.c",line 1733,column 17,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |1733| 
$C$DW$652	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$652, DW_AT_low_pc(0x00)
	.dwattr $C$DW$652, DW_AT_name("_get_int2idx_value")
	.dwattr $C$DW$652, DW_AT_TI_call
        CALL #_get_int2idx_value ; |1733| 
                                        ; call occurs [#_get_int2idx_value] ; |1733| 
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#7), T0 ; |1733| 
        SFTL T0, #1 ; |1733| 
        MOV AC0, dbl(*AR3(T0)) ; |1733| 
	.dwpsn	file "./mp3_encode.c",line 1734,column 13,is_stmt
        B $C$L133 ; |1734| 
                                        ; branch occurs ; |1734| 
$C$DW$L$_quantize$7$E:
$C$L132:    
$C$DW$L$_quantize$8$B:

$C$DW$653	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$654	.dwtag  DW_TAG_variable, DW_AT_name("xrabs_i")
	.dwattr $C$DW$654, DW_AT_TI_symbol_name("_xrabs_i")
	.dwattr $C$DW$654, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$654, DW_AT_location[DW_OP_bregx 0x24 18]
	.dwpsn	file "./mp3_encode.c",line 1739,column 17,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |1739| 
$C$DW$655	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$655, DW_AT_low_pc(0x00)
	.dwattr $C$DW$655, DW_AT_name("__fltlid")
	.dwattr $C$DW$655, DW_AT_TI_call

        CALL #__fltlid ; |1739| 
||      NEG AC0, AC0 ; |1739| 

                                        ; call occurs [#__fltlid] ; |1739| 
        MOV dbl(*($C$FL7)), AC1 ; |1739| 
$C$DW$656	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$656, DW_AT_low_pc(0x00)
	.dwattr $C$DW$656, DW_AT_name("__divd")
	.dwattr $C$DW$656, DW_AT_TI_call
        CALL #__divd ; |1739| 
                                        ; call occurs [#__divd] ; |1739| 
        OR #0, AC0, AC1
        MOV dbl(*($C$FL6)), AC0 ; |1739| 
$C$DW$657	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$657, DW_AT_low_pc(0x00)
	.dwattr $C$DW$657, DW_AT_name("_pow")
	.dwattr $C$DW$657, DW_AT_TI_call
        CALL #_pow ; |1739| 
                                        ; call occurs [#_pow] ; |1739| 
        MOV AC0, dbl(*SP(#14)) ; |1739| 
	.dwpsn	file "./mp3_encode.c",line 1740,column 25,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV *SP(#7), T0 ; |1740| 
        SFTL T0, #1 ; |1740| 
        MOV dbl(*AR3(short(#2))), XAR3
        MOV dbl(*AR3(T0)), AC0 ; |1740| 
        ABS AC0, AC0 ; |1740| 
        MOV AC0, dbl(*SP(#18)) ; |1740| 
	.dwpsn	file "./mp3_encode.c",line 1742,column 17,is_stmt
        MOV dbl(*SP(#18)), AC0 ; |1742| 
$C$DW$658	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$658, DW_AT_low_pc(0x00)
	.dwattr $C$DW$658, DW_AT_name("__fltlid")
	.dwattr $C$DW$658, DW_AT_TI_call
        CALL #__fltlid ; |1742| 
                                        ; call occurs [#__fltlid] ; |1742| 
        MOV dbl(*SP(#14)), AC1 ; |1742| 
$C$DW$659	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$659, DW_AT_low_pc(0x00)
	.dwattr $C$DW$659, DW_AT_name("__mpyd")
	.dwattr $C$DW$659, DW_AT_TI_call
        CALL #__mpyd ; |1742| 
                                        ; call occurs [#__mpyd] ; |1742| 
        MOV dbl(*($C$FL11)), AC1 ; |1742| 
$C$DW$660	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$660, DW_AT_low_pc(0x00)
	.dwattr $C$DW$660, DW_AT_name("__mpyd")
	.dwattr $C$DW$660, DW_AT_TI_call
        CALL #__mpyd ; |1742| 
                                        ; call occurs [#__mpyd] ; |1742| 
        MOV AC0, dbl(*SP(#16)) ; |1742| 
	.dwpsn	file "./mp3_encode.c",line 1743,column 17,is_stmt
$C$DW$661	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$661, DW_AT_low_pc(0x00)
	.dwattr $C$DW$661, DW_AT_name("_sqrt")
	.dwattr $C$DW$661, DW_AT_TI_call
        CALL #_sqrt ; |1743| 
                                        ; call occurs [#_sqrt] ; |1743| 
        MOV dbl(*SP(#16)), AC1 ; |1743| 
$C$DW$662	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$662, DW_AT_low_pc(0x00)
	.dwattr $C$DW$662, DW_AT_name("__mpyd")
	.dwattr $C$DW$662, DW_AT_TI_call
        CALL #__mpyd ; |1743| 
                                        ; call occurs [#__mpyd] ; |1743| 
$C$DW$663	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$663, DW_AT_low_pc(0x00)
	.dwattr $C$DW$663, DW_AT_name("_sqrt")
	.dwattr $C$DW$663, DW_AT_TI_call
        CALL #_sqrt ; |1743| 
                                        ; call occurs [#_sqrt] ; |1743| 
$C$DW$664	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$664, DW_AT_low_pc(0x00)
	.dwattr $C$DW$664, DW_AT_name("__fixdli")
	.dwattr $C$DW$664, DW_AT_TI_call
        CALL #__fixdli ; |1743| 
                                        ; call occurs [#__fixdli] ; |1743| 
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#7), T0 ; |1743| 
        SFTL T0, #1 ; |1743| 
        MOV AC0, dbl(*AR3(T0)) ; |1743| 
	.dwendtag $C$DW$653

$C$DW$L$_quantize$8$E:
$C$L133:    
$C$DW$L$_quantize$9$B:
	.dwpsn	file "./mp3_encode.c",line 1748,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#7), T0 ; |1748| 
        SFTL T0, #1 ; |1748| 
        MOV dbl(*SP(#8)), AC1 ; |1748| 
        MOV dbl(*AR3(T0)), AC0 ; |1748| 
        CMP AC1 >= AC0, TC1 ; |1748| 
        BCC $C$L134,TC1 ; |1748| 
                                        ; branchcc occurs ; |1748| 
$C$DW$L$_quantize$9$E:
$C$DW$L$_quantize$10$B:
	.dwpsn	file "./mp3_encode.c",line 1749,column 17,is_stmt
        MOV *SP(#7), T0 ; |1749| 
        SFTL T0, #1 ; |1749| 
        MOV dbl(*AR3(T0)), AC0 ; |1749| 
        MOV AC0, dbl(*SP(#8)) ; |1749| 
$C$DW$L$_quantize$10$E:
$C$L134:    
$C$DW$L$_quantize$11$B:
	.dwpsn	file "./mp3_encode.c",line 1720,column 48,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |1720| 
        ADD #1, AC0 ; |1720| 
        MOV AC0, dbl(*SP(#6)) ; |1720| 
	.dwpsn	file "./mp3_encode.c",line 1720,column 30,is_stmt
        MOV dbl(*SP(#6)), AC1 ; |1720| 
        MOV #576, AC0 ; |1720| 
        CMP AC1 < AC0, TC1 ; |1720| 
        BCC $C$L130,TC1 ; |1720| 
                                        ; branchcc occurs ; |1720| 
$C$DW$L$_quantize$11$E:
$C$L135:    
	.dwpsn	file "./mp3_encode.c",line 1751,column 5,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |1751| 
	.dwpsn	file "./mp3_encode.c",line 1752,column 1,is_stmt
        AADD #21, SP
	.dwcfi	cfa_offset, 1
$C$DW$665	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$665, DW_AT_low_pc(0x00)
	.dwattr $C$DW$665, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$666	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$666, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L130:1:1738864582")
	.dwattr $C$DW$666, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$666, DW_AT_TI_begin_line(0x6b8)
	.dwattr $C$DW$666, DW_AT_TI_end_line(0x6d6)
$C$DW$667	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$667, DW_AT_low_pc($C$DW$L$_quantize$4$B)
	.dwattr $C$DW$667, DW_AT_high_pc($C$DW$L$_quantize$4$E)
$C$DW$668	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$668, DW_AT_low_pc($C$DW$L$_quantize$6$B)
	.dwattr $C$DW$668, DW_AT_high_pc($C$DW$L$_quantize$6$E)
$C$DW$669	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$669, DW_AT_low_pc($C$DW$L$_quantize$5$B)
	.dwattr $C$DW$669, DW_AT_high_pc($C$DW$L$_quantize$5$E)
$C$DW$670	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$670, DW_AT_low_pc($C$DW$L$_quantize$7$B)
	.dwattr $C$DW$670, DW_AT_high_pc($C$DW$L$_quantize$7$E)
$C$DW$671	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$671, DW_AT_low_pc($C$DW$L$_quantize$8$B)
	.dwattr $C$DW$671, DW_AT_high_pc($C$DW$L$_quantize$8$E)
$C$DW$672	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$672, DW_AT_low_pc($C$DW$L$_quantize$9$B)
	.dwattr $C$DW$672, DW_AT_high_pc($C$DW$L$_quantize$9$E)
$C$DW$673	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$673, DW_AT_low_pc($C$DW$L$_quantize$10$B)
	.dwattr $C$DW$673, DW_AT_high_pc($C$DW$L$_quantize$10$E)
$C$DW$674	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$674, DW_AT_low_pc($C$DW$L$_quantize$11$B)
	.dwattr $C$DW$674, DW_AT_high_pc($C$DW$L$_quantize$11$E)
	.dwendtag $C$DW$666

	.dwattr $C$DW$637, DW_AT_TI_end_file("./mp3_encode.c")
	.dwattr $C$DW$637, DW_AT_TI_end_line(0x6d8)
	.dwattr $C$DW$637, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$637

	.sect	".text"

$C$DW$675	.dwtag  DW_TAG_subprogram, DW_AT_name("calc_runlen")
	.dwattr $C$DW$675, DW_AT_low_pc(_calc_runlen)
	.dwattr $C$DW$675, DW_AT_high_pc(0x00)
	.dwattr $C$DW$675, DW_AT_TI_symbol_name("_calc_runlen")
	.dwattr $C$DW$675, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$675, DW_AT_TI_begin_line(0x6f0)
	.dwattr $C$DW$675, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$675, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "./mp3_encode.c",line 1777,column 1,is_stmt,address _calc_runlen

	.dwfde $C$DW$CIE, _calc_runlen
$C$DW$676	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ix")
	.dwattr $C$DW$676, DW_AT_TI_symbol_name("_ix")
	.dwattr $C$DW$676, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$676, DW_AT_location[DW_OP_reg17]
$C$DW$677	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cod_info")
	.dwattr $C$DW$677, DW_AT_TI_symbol_name("_cod_info")
	.dwattr $C$DW$677, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$677, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: calc_runlen                                                  *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,    *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (8 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_calc_runlen:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-9, SP
	.dwcfi	cfa_offset, 10
$C$DW$678	.dwtag  DW_TAG_variable, DW_AT_name("ix")
	.dwattr $C$DW$678, DW_AT_TI_symbol_name("_ix")
	.dwattr $C$DW$678, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$678, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$679	.dwtag  DW_TAG_variable, DW_AT_name("cod_info")
	.dwattr $C$DW$679, DW_AT_TI_symbol_name("_cod_info")
	.dwattr $C$DW$679, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$679, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$680	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$680, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$680, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$680, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$681	.dwtag  DW_TAG_variable, DW_AT_name("rzero")
	.dwattr $C$DW$681, DW_AT_TI_symbol_name("_rzero")
	.dwattr $C$DW$681, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$681, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./mp3_encode.c",line 1779,column 13,is_stmt
        MOV #0, AC0 ; |1779| 
        MOV AC0, dbl(*SP(#6)) ; |1779| 
	.dwpsn	file "./mp3_encode.c",line 1781,column 10,is_stmt
        MOV #576, AC0 ; |1781| 
        MOV AC0, dbl(*SP(#4)) ; |1781| 
	.dwpsn	file "./mp3_encode.c",line 1781,column 28,is_stmt

        MOV dbl(*SP(#4)), AC1 ; |1781| 
||      MOV #1, AC0 ; |1781| 

        CMP AC1 <= AC0, TC1 ; |1781| 
        BCC $C$L138,TC1 ; |1781| 
                                        ; branchcc occurs ; |1781| 
$C$L136:    
$C$DW$L$_calc_runlen$2$B:
	.dwpsn	file "./mp3_encode.c",line 1782,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#4)), AC0 ; |1782| 
        SUB #1, AC0 ; |1782| 
        MOV AC0, T0 ; |1782| 
        SFTL T0, #1 ; |1782| 
        MOV dbl(*AR3(T0)), AC0 ; |1782| 
        BCC $C$L138,AC0 != #0 ; |1782| 
                                        ; branchcc occurs ; |1782| 
$C$DW$L$_calc_runlen$2$E:
$C$DW$L$_calc_runlen$3$B:
        MOV dbl(*SP(#4)), AC0 ; |1782| 
        SUB #2, AC0 ; |1782| 
        MOV AC0, T0 ; |1782| 
        SFTL T0, #1 ; |1782| 
        MOV dbl(*AR3(T0)), AC0 ; |1782| 
        BCC $C$L138,AC0 != #0 ; |1782| 
                                        ; branchcc occurs ; |1782| 
$C$DW$L$_calc_runlen$3$E:
$C$DW$L$_calc_runlen$4$B:
	.dwpsn	file "./mp3_encode.c",line 1783,column 13,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |1783| 
        ADD #1, AC0 ; |1783| 
        MOV AC0, dbl(*SP(#6)) ; |1783| 
        B $C$L137 ; |1783| 
                                        ; branch occurs ; |1783| 
$C$DW$L$_calc_runlen$4$E:
$C$L137:    
$C$DW$L$_calc_runlen$6$B:
	.dwpsn	file "./mp3_encode.c",line 1781,column 35,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |1781| 
        SUB #2, AC0 ; |1781| 
        MOV AC0, dbl(*SP(#4)) ; |1781| 
	.dwpsn	file "./mp3_encode.c",line 1781,column 28,is_stmt

        MOV #1, AC0 ; |1781| 
||      MOV dbl(*SP(#4)), AC1 ; |1781| 

        CMP AC1 > AC0, TC1 ; |1781| 
        BCC $C$L136,TC1 ; |1781| 
                                        ; branchcc occurs ; |1781| 
$C$DW$L$_calc_runlen$6$E:
$C$L138:    
	.dwpsn	file "./mp3_encode.c",line 1787,column 5,is_stmt
	.dwpsn	file "./mp3_encode.c",line 1789,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #0, *AR3(short(#2)) ; |1789| 
	.dwpsn	file "./mp3_encode.c",line 1790,column 12,is_stmt

        MOV dbl(*SP(#4)), AC1 ; |1790| 
||      MOV #3, AC0 ; |1790| 

        CMP AC1 <= AC0, TC1 ; |1790| 
        BCC $C$L141,TC1 ; |1790| 
                                        ; branchcc occurs ; |1790| 
$C$L139:    
$C$DW$L$_calc_runlen$8$B:
	.dwpsn	file "./mp3_encode.c",line 1791,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#4)), AC0 ; |1791| 
        SUB #1, AC0 ; |1791| 
        MOV AC0, T0 ; |1791| 
        SFTL T0, #1 ; |1791| 

        MOV dbl(*AR3(T0)), AC1 ; |1791| 
||      MOV #1, AC0 ; |1791| 

        CMP AC1 > AC0, TC1 ; |1791| 
        BCC $C$L141,TC1 ; |1791| 
                                        ; branchcc occurs ; |1791| 
$C$DW$L$_calc_runlen$8$E:
$C$DW$L$_calc_runlen$9$B:
        MOV dbl(*SP(#4)), AC0 ; |1791| 
        SUB #2, AC0 ; |1791| 
        MOV AC0, T0 ; |1791| 
        SFTL T0, #1 ; |1791| 

        MOV dbl(*AR3(T0)), AC1 ; |1791| 
||      MOV #1, AC0 ; |1791| 

        CMP AC1 > AC0, TC1 ; |1791| 
        BCC $C$L141,TC1 ; |1791| 
                                        ; branchcc occurs ; |1791| 
$C$DW$L$_calc_runlen$9$E:
$C$DW$L$_calc_runlen$10$B:
        MOV dbl(*SP(#4)), AC0 ; |1791| 
        SUB #3, AC0 ; |1791| 
        MOV AC0, T0 ; |1791| 
        SFTL T0, #1 ; |1791| 

        MOV dbl(*AR3(T0)), AC1 ; |1791| 
||      MOV #1, AC0 ; |1791| 

        CMP AC1 > AC0, TC1 ; |1791| 
        BCC $C$L141,TC1 ; |1791| 
                                        ; branchcc occurs ; |1791| 
$C$DW$L$_calc_runlen$10$E:
$C$DW$L$_calc_runlen$11$B:
        MOV dbl(*SP(#4)), AC0 ; |1791| 
        SUB #4, AC0 ; |1791| 
        MOV AC0, T0 ; |1791| 
        SFTL T0, #1 ; |1791| 

        MOV dbl(*AR3(T0)), AC1 ; |1791| 
||      MOV #1, AC0 ; |1791| 

        CMP AC1 > AC0, TC1 ; |1791| 
        BCC $C$L141,TC1 ; |1791| 
                                        ; branchcc occurs ; |1791| 
$C$DW$L$_calc_runlen$11$E:
$C$DW$L$_calc_runlen$12$B:
	.dwpsn	file "./mp3_encode.c",line 1792,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        ADD #1, *AR3(short(#2)) ; |1792| 
        B $C$L140 ; |1792| 
                                        ; branch occurs ; |1792| 
$C$DW$L$_calc_runlen$12$E:
$C$L140:    
$C$DW$L$_calc_runlen$14$B:
	.dwpsn	file "./mp3_encode.c",line 1790,column 19,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |1790| 
        SUB #4, AC0 ; |1790| 
        MOV AC0, dbl(*SP(#4)) ; |1790| 
	.dwpsn	file "./mp3_encode.c",line 1790,column 12,is_stmt

        MOV #3, AC0 ; |1790| 
||      MOV dbl(*SP(#4)), AC1 ; |1790| 

        CMP AC1 > AC0, TC1 ; |1790| 
        BCC $C$L139,TC1 ; |1790| 
                                        ; branchcc occurs ; |1790| 
$C$DW$L$_calc_runlen$14$E:
$C$L141:    
	.dwpsn	file "./mp3_encode.c",line 1796,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*SP(#4)), AC0 ; |1796| 
        SFTS AC0, #-1 ; |1796| 
        MOV AC0, *AR3(short(#1)) ; |1796| 
	.dwpsn	file "./mp3_encode.c",line 1797,column 1,is_stmt
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$682	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$682, DW_AT_low_pc(0x00)
	.dwattr $C$DW$682, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$683	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$683, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L139:1:1738864582")
	.dwattr $C$DW$683, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$683, DW_AT_TI_begin_line(0x6fe)
	.dwattr $C$DW$683, DW_AT_TI_end_line(0x702)
$C$DW$684	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$684, DW_AT_low_pc($C$DW$L$_calc_runlen$8$B)
	.dwattr $C$DW$684, DW_AT_high_pc($C$DW$L$_calc_runlen$8$E)
$C$DW$685	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$685, DW_AT_low_pc($C$DW$L$_calc_runlen$9$B)
	.dwattr $C$DW$685, DW_AT_high_pc($C$DW$L$_calc_runlen$9$E)
$C$DW$686	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$686, DW_AT_low_pc($C$DW$L$_calc_runlen$10$B)
	.dwattr $C$DW$686, DW_AT_high_pc($C$DW$L$_calc_runlen$10$E)
$C$DW$687	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$687, DW_AT_low_pc($C$DW$L$_calc_runlen$11$B)
	.dwattr $C$DW$687, DW_AT_high_pc($C$DW$L$_calc_runlen$11$E)
$C$DW$688	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$688, DW_AT_low_pc($C$DW$L$_calc_runlen$12$B)
	.dwattr $C$DW$688, DW_AT_high_pc($C$DW$L$_calc_runlen$12$E)
$C$DW$689	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$689, DW_AT_low_pc($C$DW$L$_calc_runlen$14$B)
	.dwattr $C$DW$689, DW_AT_high_pc($C$DW$L$_calc_runlen$14$E)
	.dwendtag $C$DW$683


$C$DW$690	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$690, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L136:1:1738864582")
	.dwattr $C$DW$690, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$690, DW_AT_TI_begin_line(0x6f5)
	.dwattr $C$DW$690, DW_AT_TI_end_line(0x6f9)
$C$DW$691	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$691, DW_AT_low_pc($C$DW$L$_calc_runlen$2$B)
	.dwattr $C$DW$691, DW_AT_high_pc($C$DW$L$_calc_runlen$2$E)
$C$DW$692	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$692, DW_AT_low_pc($C$DW$L$_calc_runlen$3$B)
	.dwattr $C$DW$692, DW_AT_high_pc($C$DW$L$_calc_runlen$3$E)
$C$DW$693	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$693, DW_AT_low_pc($C$DW$L$_calc_runlen$4$B)
	.dwattr $C$DW$693, DW_AT_high_pc($C$DW$L$_calc_runlen$4$E)
$C$DW$694	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$694, DW_AT_low_pc($C$DW$L$_calc_runlen$6$B)
	.dwattr $C$DW$694, DW_AT_high_pc($C$DW$L$_calc_runlen$6$E)
	.dwendtag $C$DW$690

	.dwattr $C$DW$675, DW_AT_TI_end_file("./mp3_encode.c")
	.dwattr $C$DW$675, DW_AT_TI_end_line(0x705)
	.dwattr $C$DW$675, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$675

	.sect	".text"

$C$DW$695	.dwtag  DW_TAG_subprogram, DW_AT_name("count1_bitcount")
	.dwattr $C$DW$695, DW_AT_low_pc(_count1_bitcount)
	.dwattr $C$DW$695, DW_AT_high_pc(0x00)
	.dwattr $C$DW$695, DW_AT_TI_symbol_name("_count1_bitcount")
	.dwattr $C$DW$695, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$695, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$695, DW_AT_TI_begin_line(0x70c)
	.dwattr $C$DW$695, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$695, DW_AT_TI_max_frame_size(0x1a)
	.dwpsn	file "./mp3_encode.c",line 1805,column 1,is_stmt,address _count1_bitcount

	.dwfde $C$DW$CIE, _count1_bitcount
$C$DW$696	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ix")
	.dwattr $C$DW$696, DW_AT_TI_symbol_name("_ix")
	.dwattr $C$DW$696, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$696, DW_AT_location[DW_OP_reg17]
$C$DW$697	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cod_info")
	.dwattr $C$DW$697, DW_AT_TI_symbol_name("_cod_info")
	.dwattr $C$DW$697, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$697, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: count1_bitcount                                              *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,    *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 26 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (24 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_count1_bitcount:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-25, SP
	.dwcfi	cfa_offset, 26
$C$DW$698	.dwtag  DW_TAG_variable, DW_AT_name("ix")
	.dwattr $C$DW$698, DW_AT_TI_symbol_name("_ix")
	.dwattr $C$DW$698, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$698, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$699	.dwtag  DW_TAG_variable, DW_AT_name("cod_info")
	.dwattr $C$DW$699, DW_AT_TI_symbol_name("_cod_info")
	.dwattr $C$DW$699, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$699, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$700	.dwtag  DW_TAG_variable, DW_AT_name("p")
	.dwattr $C$DW$700, DW_AT_TI_symbol_name("_p")
	.dwattr $C$DW$700, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$700, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$701	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$701, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$701, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$701, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$702	.dwtag  DW_TAG_variable, DW_AT_name("k")
	.dwattr $C$DW$702, DW_AT_TI_symbol_name("_k")
	.dwattr $C$DW$702, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$702, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$703	.dwtag  DW_TAG_variable, DW_AT_name("v")
	.dwattr $C$DW$703, DW_AT_TI_symbol_name("_v")
	.dwattr $C$DW$703, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$703, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$704	.dwtag  DW_TAG_variable, DW_AT_name("w")
	.dwattr $C$DW$704, DW_AT_TI_symbol_name("_w")
	.dwattr $C$DW$704, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$704, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$705	.dwtag  DW_TAG_variable, DW_AT_name("x")
	.dwattr $C$DW$705, DW_AT_TI_symbol_name("_x")
	.dwattr $C$DW$705, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$705, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$706	.dwtag  DW_TAG_variable, DW_AT_name("y")
	.dwattr $C$DW$706, DW_AT_TI_symbol_name("_y")
	.dwattr $C$DW$706, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$706, DW_AT_location[DW_OP_bregx 0x24 16]
$C$DW$707	.dwtag  DW_TAG_variable, DW_AT_name("signbits")
	.dwattr $C$DW$707, DW_AT_TI_symbol_name("_signbits")
	.dwattr $C$DW$707, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$707, DW_AT_location[DW_OP_bregx 0x24 18]
$C$DW$708	.dwtag  DW_TAG_variable, DW_AT_name("sum0")
	.dwattr $C$DW$708, DW_AT_TI_symbol_name("_sum0")
	.dwattr $C$DW$708, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$708, DW_AT_location[DW_OP_bregx 0x24 20]
$C$DW$709	.dwtag  DW_TAG_variable, DW_AT_name("sum1")
	.dwattr $C$DW$709, DW_AT_TI_symbol_name("_sum1")
	.dwattr $C$DW$709, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$709, DW_AT_location[DW_OP_bregx 0x24 22]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./mp3_encode.c",line 1808,column 13,is_stmt
        MOV #0, AC0 ; |1808| 
        MOV AC0, dbl(*SP(#20)) ; |1808| 
	.dwpsn	file "./mp3_encode.c",line 1809,column 13,is_stmt
        MOV AC0, dbl(*SP(#22)) ; |1809| 
	.dwpsn	file "./mp3_encode.c",line 1811,column 10,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#1)), AR1 ; |1811| 
        SFTL AR1, #1 ; |1811| 
        AND #0xffff, AR1, AC0 ; |1811| 

        MOV #0, AC0 ; |1811| 
||      MOV AC0, dbl(*SP(#6)) ; |1811| 

        MOV AC0, dbl(*SP(#8)) ; |1811| 
	.dwpsn	file "./mp3_encode.c",line 1811,column 48,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*SP(#8)), AC1 ; |1811| 
        MOV uns(*AR3(short(#2))), AC0 ; |1811| 
        CMP AC1 >= AC0, TC1 ; |1811| 
        BCC $C$L147,TC1 ; |1811| 
                                        ; branchcc occurs ; |1811| 
$C$L142:    
$C$DW$L$_count1_bitcount$2$B:
	.dwpsn	file "./mp3_encode.c",line 1813,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#7), T0 ; |1813| 
        SFTL T0, #1 ; |1813| 
        MOV dbl(*AR3(T0)), AC0 ; |1813| 
        MOV AC0, dbl(*SP(#10)) ; |1813| 
	.dwpsn	file "./mp3_encode.c",line 1814,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#6)), AC0 ; |1814| 
        ADD #1, AC0 ; |1814| 
        MOV AC0, T0 ; |1814| 
        SFTL T0, #1 ; |1814| 
        MOV dbl(*AR3(T0)), AC0 ; |1814| 
        MOV AC0, dbl(*SP(#12)) ; |1814| 
	.dwpsn	file "./mp3_encode.c",line 1815,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#6)), AC0 ; |1815| 
        ADD #2, AC0 ; |1815| 
        MOV AC0, T0 ; |1815| 
        SFTL T0, #1 ; |1815| 
        MOV dbl(*AR3(T0)), AC0 ; |1815| 
        MOV AC0, dbl(*SP(#14)) ; |1815| 
	.dwpsn	file "./mp3_encode.c",line 1816,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#6)), AC0 ; |1816| 
        ADD #3, AC0 ; |1816| 
        MOV AC0, T0 ; |1816| 
        SFTL T0, #1 ; |1816| 
        MOV dbl(*AR3(T0)), AC0 ; |1816| 
        MOV AC0, dbl(*SP(#16)) ; |1816| 
	.dwpsn	file "./mp3_encode.c",line 1818,column 9,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |1818| 

        SFTL AC0, #1 ; |1818| 
||      MOV dbl(*SP(#14)), AC1 ; |1818| 

        ADD dbl(*SP(#10)), AC0, AC0 ; |1818| 

        MOV dbl(*SP(#16)), AC1 ; |1818| 
||      ADD AC1 << #2, AC0 ; |1818| 

        ADD AC1 << #3, AC0 ; |1818| 
        MOV AC0, dbl(*SP(#4)) ; |1818| 
	.dwpsn	file "./mp3_encode.c",line 1820,column 9,is_stmt
        MOV #0, AC0 ; |1820| 
        MOV AC0, dbl(*SP(#18)) ; |1820| 
	.dwpsn	file "./mp3_encode.c",line 1821,column 9,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |1821| 
        BCC $C$L143,AC0 == #0 ; |1821| 
                                        ; branchcc occurs ; |1821| 
$C$DW$L$_count1_bitcount$2$E:
$C$DW$L$_count1_bitcount$3$B:
	.dwpsn	file "./mp3_encode.c",line 1822,column 13,is_stmt
        MOV dbl(*SP(#18)), AC0 ; |1822| 
        ADD #1, AC0 ; |1822| 
        MOV AC0, dbl(*SP(#18)) ; |1822| 
$C$DW$L$_count1_bitcount$3$E:
$C$L143:    
$C$DW$L$_count1_bitcount$4$B:
	.dwpsn	file "./mp3_encode.c",line 1823,column 9,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |1823| 
        BCC $C$L144,AC0 == #0 ; |1823| 
                                        ; branchcc occurs ; |1823| 
$C$DW$L$_count1_bitcount$4$E:
$C$DW$L$_count1_bitcount$5$B:
	.dwpsn	file "./mp3_encode.c",line 1824,column 13,is_stmt
        MOV dbl(*SP(#18)), AC0 ; |1824| 
        ADD #1, AC0 ; |1824| 
        MOV AC0, dbl(*SP(#18)) ; |1824| 
$C$DW$L$_count1_bitcount$5$E:
$C$L144:    
$C$DW$L$_count1_bitcount$6$B:
	.dwpsn	file "./mp3_encode.c",line 1825,column 9,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |1825| 
        BCC $C$L145,AC0 == #0 ; |1825| 
                                        ; branchcc occurs ; |1825| 
$C$DW$L$_count1_bitcount$6$E:
$C$DW$L$_count1_bitcount$7$B:
	.dwpsn	file "./mp3_encode.c",line 1826,column 13,is_stmt
        MOV dbl(*SP(#18)), AC0 ; |1826| 
        ADD #1, AC0 ; |1826| 
        MOV AC0, dbl(*SP(#18)) ; |1826| 
$C$DW$L$_count1_bitcount$7$E:
$C$L145:    
$C$DW$L$_count1_bitcount$8$B:
	.dwpsn	file "./mp3_encode.c",line 1827,column 9,is_stmt
        MOV dbl(*SP(#16)), AC0 ; |1827| 
        BCC $C$L146,AC0 == #0 ; |1827| 
                                        ; branchcc occurs ; |1827| 
$C$DW$L$_count1_bitcount$8$E:
$C$DW$L$_count1_bitcount$9$B:
	.dwpsn	file "./mp3_encode.c",line 1828,column 13,is_stmt
        MOV dbl(*SP(#18)), AC0 ; |1828| 
        ADD #1, AC0 ; |1828| 
        MOV AC0, dbl(*SP(#18)) ; |1828| 
$C$DW$L$_count1_bitcount$9$E:
$C$L146:    
$C$DW$L$_count1_bitcount$10$B:
	.dwpsn	file "./mp3_encode.c",line 1830,column 9,is_stmt
        MOV dbl(*SP(#18)), AC0 ; |1830| 
        ADD dbl(*SP(#20)), AC0, AC0 ; |1830| 
        MOV AC0, dbl(*SP(#20)) ; |1830| 
	.dwpsn	file "./mp3_encode.c",line 1831,column 9,is_stmt
        MOV dbl(*SP(#18)), AC0 ; |1831| 
        ADD dbl(*SP(#22)), AC0, AC0 ; |1831| 
        MOV AC0, dbl(*SP(#22)) ; |1831| 
	.dwpsn	file "./mp3_encode.c",line 1833,column 9,is_stmt
        MOV dbl(*(#(_shine_huffman_table+394))), XAR3
        MOV *SP(#5), T0 ; |1833| 
        MOV uns(*AR3(T0)), AC0 ; |1833| 
        ADD dbl(*SP(#20)), AC0, AC0 ; |1833| 
        MOV AC0, dbl(*SP(#20)) ; |1833| 
	.dwpsn	file "./mp3_encode.c",line 1834,column 9,is_stmt
        MOV dbl(*(#(_shine_huffman_table+406))), XAR3
        MOV *SP(#5), T0 ; |1834| 
        MOV uns(*AR3(T0)), AC0 ; |1834| 
        ADD dbl(*SP(#22)), AC0, AC0 ; |1834| 
        MOV AC0, dbl(*SP(#22)) ; |1834| 
	.dwpsn	file "./mp3_encode.c",line 1811,column 70,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |1811| 
        ADD #4, AC0 ; |1811| 
        MOV AC0, dbl(*SP(#6)) ; |1811| 
        MOV dbl(*SP(#8)), AC0 ; |1811| 
        ADD #1, AC0 ; |1811| 
        MOV AC0, dbl(*SP(#8)) ; |1811| 
	.dwpsn	file "./mp3_encode.c",line 1811,column 48,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*SP(#8)), AC1 ; |1811| 
        MOV uns(*AR3(short(#2))), AC0 ; |1811| 
        CMP AC1 < AC0, TC1 ; |1811| 
        BCC $C$L142,TC1 ; |1811| 
                                        ; branchcc occurs ; |1811| 
$C$DW$L$_count1_bitcount$10$E:
$C$L147:    
	.dwpsn	file "./mp3_encode.c",line 1837,column 5,is_stmt
        MOV dbl(*SP(#22)), AC0 ; |1837| 
        MOV dbl(*SP(#20)), AC1 ; |1837| 
        CMP AC1 >= AC0, TC1 ; |1837| 
        BCC $C$L148,TC1 ; |1837| 
                                        ; branchcc occurs ; |1837| 
	.dwpsn	file "./mp3_encode.c",line 1839,column 9,is_stmt
        MOV #0, *AR3(#12) ; |1839| 
	.dwpsn	file "./mp3_encode.c",line 1840,column 9,is_stmt
        MOV dbl(*SP(#20)), AC0 ; |1840| 
        B $C$L149 ; |1840| 
                                        ; branch occurs ; |1840| 
$C$L148:    
	.dwpsn	file "./mp3_encode.c",line 1844,column 9,is_stmt
        MOV #1, *AR3(#12) ; |1844| 
	.dwpsn	file "./mp3_encode.c",line 1845,column 9,is_stmt
        MOV dbl(*SP(#22)), AC0 ; |1845| 
$C$L149:    
	.dwpsn	file "./mp3_encode.c",line 1847,column 1,is_stmt
        AADD #25, SP
	.dwcfi	cfa_offset, 1
$C$DW$710	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$710, DW_AT_low_pc(0x00)
	.dwattr $C$DW$710, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$711	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$711, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L142:1:1738864582")
	.dwattr $C$DW$711, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$711, DW_AT_TI_begin_line(0x713)
	.dwattr $C$DW$711, DW_AT_TI_end_line(0x72b)
$C$DW$712	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$712, DW_AT_low_pc($C$DW$L$_count1_bitcount$2$B)
	.dwattr $C$DW$712, DW_AT_high_pc($C$DW$L$_count1_bitcount$2$E)
$C$DW$713	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$713, DW_AT_low_pc($C$DW$L$_count1_bitcount$3$B)
	.dwattr $C$DW$713, DW_AT_high_pc($C$DW$L$_count1_bitcount$3$E)
$C$DW$714	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$714, DW_AT_low_pc($C$DW$L$_count1_bitcount$4$B)
	.dwattr $C$DW$714, DW_AT_high_pc($C$DW$L$_count1_bitcount$4$E)
$C$DW$715	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$715, DW_AT_low_pc($C$DW$L$_count1_bitcount$5$B)
	.dwattr $C$DW$715, DW_AT_high_pc($C$DW$L$_count1_bitcount$5$E)
$C$DW$716	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$716, DW_AT_low_pc($C$DW$L$_count1_bitcount$6$B)
	.dwattr $C$DW$716, DW_AT_high_pc($C$DW$L$_count1_bitcount$6$E)
$C$DW$717	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$717, DW_AT_low_pc($C$DW$L$_count1_bitcount$7$B)
	.dwattr $C$DW$717, DW_AT_high_pc($C$DW$L$_count1_bitcount$7$E)
$C$DW$718	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$718, DW_AT_low_pc($C$DW$L$_count1_bitcount$8$B)
	.dwattr $C$DW$718, DW_AT_high_pc($C$DW$L$_count1_bitcount$8$E)
$C$DW$719	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$719, DW_AT_low_pc($C$DW$L$_count1_bitcount$9$B)
	.dwattr $C$DW$719, DW_AT_high_pc($C$DW$L$_count1_bitcount$9$E)
$C$DW$720	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$720, DW_AT_low_pc($C$DW$L$_count1_bitcount$10$B)
	.dwattr $C$DW$720, DW_AT_high_pc($C$DW$L$_count1_bitcount$10$E)
	.dwendtag $C$DW$711

	.dwattr $C$DW$695, DW_AT_TI_end_file("./mp3_encode.c")
	.dwattr $C$DW$695, DW_AT_TI_end_line(0x737)
	.dwattr $C$DW$695, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$695

	.sect	".text"

$C$DW$721	.dwtag  DW_TAG_subprogram, DW_AT_name("subdivide")
	.dwattr $C$DW$721, DW_AT_low_pc(_subdivide)
	.dwattr $C$DW$721, DW_AT_high_pc(0x00)
	.dwattr $C$DW$721, DW_AT_TI_symbol_name("_subdivide")
	.dwattr $C$DW$721, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$721, DW_AT_TI_begin_line(0x73e)
	.dwattr $C$DW$721, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$721, DW_AT_TI_max_frame_size(0x0e)
	.dwpsn	file "./mp3_encode.c",line 1855,column 1,is_stmt,address _subdivide

	.dwfde $C$DW$CIE, _subdivide
$C$DW$722	.dwtag  DW_TAG_variable, DW_AT_name("subdv_table")
	.dwattr $C$DW$722, DW_AT_TI_symbol_name("_subdv_table$1")
	.dwattr $C$DW$722, DW_AT_type(*$C$DW$T$104)
	.dwattr $C$DW$722, DW_AT_location[DW_OP_addr _subdv_table$1]
$C$DW$723	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cod_info")
	.dwattr $C$DW$723, DW_AT_TI_symbol_name("_cod_info")
	.dwattr $C$DW$723, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$723, DW_AT_location[DW_OP_reg17]
$C$DW$724	.dwtag  DW_TAG_formal_parameter, DW_AT_name("config")
	.dwattr $C$DW$724, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$724, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$724, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: subdivide                                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,    *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 14 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (12 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_subdivide:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-13, SP
	.dwcfi	cfa_offset, 14
$C$DW$725	.dwtag  DW_TAG_variable, DW_AT_name("cod_info")
	.dwattr $C$DW$725, DW_AT_TI_symbol_name("_cod_info")
	.dwattr $C$DW$725, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$725, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$726	.dwtag  DW_TAG_variable, DW_AT_name("config")
	.dwattr $C$DW$726, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$726, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$726, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./mp3_encode.c",line 1887,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR1 ; |1887| 
        BCC $C$L150,AR1 != #0 ; |1887| 
                                        ; branchcc occurs ; |1887| 
	.dwpsn	file "./mp3_encode.c",line 1889,column 9,is_stmt
        MOV #0, *AR3(#8) ; |1889| 
	.dwpsn	file "./mp3_encode.c",line 1890,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3(#9) ; |1890| 
	.dwpsn	file "./mp3_encode.c",line 1891,column 5,is_stmt
        B $C$L157 ; |1891| 
                                        ; branch occurs ; |1891| 
$C$L150:    

$C$DW$727	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$728	.dwtag  DW_TAG_variable, DW_AT_name("scalefac_band_long")
	.dwattr $C$DW$728, DW_AT_TI_symbol_name("_scalefac_band_long")
	.dwattr $C$DW$728, DW_AT_type(*$C$DW$T$254)
	.dwattr $C$DW$728, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$729	.dwtag  DW_TAG_variable, DW_AT_name("bigvalues_region")
	.dwattr $C$DW$729, DW_AT_TI_symbol_name("_bigvalues_region")
	.dwattr $C$DW$729, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$729, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$730	.dwtag  DW_TAG_variable, DW_AT_name("scfb_anz")
	.dwattr $C$DW$730, DW_AT_TI_symbol_name("_scfb_anz")
	.dwattr $C$DW$730, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$730, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$731	.dwtag  DW_TAG_variable, DW_AT_name("thiscount")
	.dwattr $C$DW$731, DW_AT_TI_symbol_name("_thiscount")
	.dwattr $C$DW$731, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$731, DW_AT_location[DW_OP_bregx 0x24 10]
	.dwpsn	file "./mp3_encode.c",line 1894,column 24,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MPYMK *AR3(#719), #46, AC0 ; |1894| 
        MOV AC0, AR1 ; |1894| 
        AMOV #_shine_scale_fact_band_index, XAR3 ; |1894| 

        MOV XAR3, dbl(*SP(#4))
||      AADD AR1, AR3 ; |1894| 

	.dwpsn	file "./mp3_encode.c",line 1897,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR1 ; |1897| 
        SFTL AR1, #1 ; |1897| 
        AND #0xffff, AR1, AC0 ; |1897| 
        MOV AC0, dbl(*SP(#6)) ; |1897| 
	.dwpsn	file "./mp3_encode.c",line 1900,column 9,is_stmt
        MOV #0, AC0 ; |1900| 
        MOV AC0, dbl(*SP(#8)) ; |1900| 
	.dwpsn	file "./mp3_encode.c",line 1901,column 16,is_stmt
        MOV *SP(#9), T0 ; |1901| 
        SFTL T0, #1 ; |1901| 
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*SP(#6)), AC0 ; |1901| 
        MOV dbl(*AR3(T0)), AC1 ; |1901| 
        CMP AC1 >= AC0, TC1 ; |1901| 
        BCC $C$L152,TC1 ; |1901| 
                                        ; branchcc occurs ; |1901| 
$C$L151:    
$C$DW$L$_subdivide$4$B:
	.dwpsn	file "./mp3_encode.c",line 1902,column 13,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |1902| 
        ADD #1, AC0 ; |1902| 
        MOV AC0, dbl(*SP(#8)) ; |1902| 
	.dwpsn	file "./mp3_encode.c",line 1901,column 16,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV *SP(#9), T0 ; |1901| 
        SFTL T0, #1 ; |1901| 
        MOV dbl(*SP(#6)), AC0 ; |1901| 
        MOV dbl(*AR3(T0)), AC1 ; |1901| 
        CMP AC1 < AC0, TC1 ; |1901| 
        BCC $C$L151,TC1 ; |1901| 
                                        ; branchcc occurs ; |1901| 
$C$DW$L$_subdivide$4$E:
$C$L152:    
	.dwpsn	file "./mp3_encode.c",line 1904,column 14,is_stmt
        MOV *SP(#9) << #2, AC0 ; |1904| 
        MOV AC0, T0 ; |1904| 
        AMOV #_subdv_table$1, XAR3 ; |1904| 
        MOV dbl(*AR3(T0)), AC0 ; |1904| 
        MOV AC0, dbl(*SP(#10)) ; |1904| 
        MOV dbl(*SP(#10)), AC0 ; |1904| 
        BCC $C$L154,AC0 == #0 ; |1904| 
                                        ; branchcc occurs ; |1904| 
$C$L153:    
$C$DW$L$_subdivide$6$B:
	.dwpsn	file "./mp3_encode.c",line 1906,column 13,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |1906| 
        MOV dbl(*SP(#4)), XAR3
        ADD #1, AC0 ; |1906| 
        MOV AC0, T0 ; |1906| 
        SFTL T0, #1 ; |1906| 
        MOV dbl(*SP(#6)), AC0 ; |1906| 
        MOV dbl(*AR3(T0)), AC1 ; |1906| 
        CMP AC1 > AC0, TC1 ; |1906| 
        BCC $C$L154,!TC1 ; |1906| 
                                        ; branchcc occurs ; |1906| 
$C$DW$L$_subdivide$6$E:
$C$DW$L$_subdivide$7$B:
	.dwpsn	file "./mp3_encode.c",line 1907,column 17,is_stmt
	.dwpsn	file "./mp3_encode.c",line 1904,column 74,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |1904| 
        SUB #1, AC0 ; |1904| 
        MOV AC0, dbl(*SP(#10)) ; |1904| 
        MOV dbl(*SP(#10)), AC0 ; |1904| 
        BCC $C$L153,AC0 != #0 ; |1904| 
                                        ; branchcc occurs ; |1904| 
$C$DW$L$_subdivide$7$E:
$C$L154:    
	.dwpsn	file "./mp3_encode.c",line 1909,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#11), AR1 ; |1909| 
        MOV AR1, *AR3(#8) ; |1909| 
	.dwpsn	file "./mp3_encode.c",line 1910,column 9,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*SP(#10)), AC0 ; |1910| 
        ADD #1, AC0 ; |1910| 
        MOV AC0, AR1 ; |1910| 
        SFTL AR1, #1 ; |1910| 
        AADD AR1, AR3 ; |1910| 
        MOV *AR3(short(#1)), AR1 ; |1910| 
        MOV dbl(*SP(#0)), XAR3
        MOV AR1, *AR3(#15) ; |1910| 
	.dwpsn	file "./mp3_encode.c",line 1912,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#8), AR1 ; |1912| 
        MOV dbl(*SP(#4)), XAR3
        ADD #1, AR1 ; |1912| 
        SFTL AR1, #1 ; |1912| 

        MOV XAR3, dbl(*SP(#4))
||      AADD AR1, AR3 ; |1912| 

	.dwpsn	file "./mp3_encode.c",line 1914,column 14,is_stmt
        MOV *SP(#9) << #2, AC0 ; |1914| 
        MOV AC0, T0 ; |1914| 
        AMOV #(_subdv_table$1+2), XAR3 ; |1914| 
        MOV dbl(*AR3(T0)), AC0 ; |1914| 
        MOV AC0, dbl(*SP(#10)) ; |1914| 
        MOV dbl(*SP(#10)), AC0 ; |1914| 
        BCC $C$L156,AC0 == #0 ; |1914| 
                                        ; branchcc occurs ; |1914| 
$C$L155:    
$C$DW$L$_subdivide$9$B:
	.dwpsn	file "./mp3_encode.c",line 1916,column 13,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |1916| 
        MOV dbl(*SP(#4)), XAR3
        ADD #1, AC0 ; |1916| 
        MOV AC0, T0 ; |1916| 
        SFTL T0, #1 ; |1916| 
        MOV dbl(*SP(#6)), AC0 ; |1916| 
        MOV dbl(*AR3(T0)), AC1 ; |1916| 
        CMP AC1 > AC0, TC1 ; |1916| 
        BCC $C$L156,!TC1 ; |1916| 
                                        ; branchcc occurs ; |1916| 
$C$DW$L$_subdivide$9$E:
$C$DW$L$_subdivide$10$B:
	.dwpsn	file "./mp3_encode.c",line 1917,column 17,is_stmt
	.dwpsn	file "./mp3_encode.c",line 1914,column 74,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |1914| 
        SUB #1, AC0 ; |1914| 
        MOV AC0, dbl(*SP(#10)) ; |1914| 
        MOV dbl(*SP(#10)), AC0 ; |1914| 
        BCC $C$L155,AC0 != #0 ; |1914| 
                                        ; branchcc occurs ; |1914| 
$C$DW$L$_subdivide$10$E:
$C$L156:    
	.dwpsn	file "./mp3_encode.c",line 1919,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#11), AR1 ; |1919| 
        MOV AR1, *AR3(#9) ; |1919| 
	.dwpsn	file "./mp3_encode.c",line 1920,column 9,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*SP(#10)), AC0 ; |1920| 
        ADD #1, AC0 ; |1920| 
        MOV AC0, AR1 ; |1920| 
        SFTL AR1, #1 ; |1920| 
        AADD AR1, AR3 ; |1920| 
        MOV *AR3(short(#1)), AR1 ; |1920| 
        MOV dbl(*SP(#0)), XAR3
        MOV AR1, *AR3(#16) ; |1920| 
	.dwpsn	file "./mp3_encode.c",line 1922,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#7), AR1 ; |1922| 
        MOV AR1, *AR3(#17) ; |1922| 
	.dwendtag $C$DW$727

	.dwpsn	file "./mp3_encode.c",line 1924,column 1,is_stmt
$C$L157:    
        AADD #13, SP
	.dwcfi	cfa_offset, 1
$C$DW$732	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$732, DW_AT_low_pc(0x00)
	.dwattr $C$DW$732, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$733	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$733, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L155:1:1738864582")
	.dwattr $C$DW$733, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$733, DW_AT_TI_begin_line(0x77a)
	.dwattr $C$DW$733, DW_AT_TI_end_line(0x77e)
$C$DW$734	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$734, DW_AT_low_pc($C$DW$L$_subdivide$9$B)
	.dwattr $C$DW$734, DW_AT_high_pc($C$DW$L$_subdivide$9$E)
$C$DW$735	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$735, DW_AT_low_pc($C$DW$L$_subdivide$10$B)
	.dwattr $C$DW$735, DW_AT_high_pc($C$DW$L$_subdivide$10$E)
	.dwendtag $C$DW$733


$C$DW$736	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$736, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L153:1:1738864582")
	.dwattr $C$DW$736, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$736, DW_AT_TI_begin_line(0x770)
	.dwattr $C$DW$736, DW_AT_TI_end_line(0x774)
$C$DW$737	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$737, DW_AT_low_pc($C$DW$L$_subdivide$6$B)
	.dwattr $C$DW$737, DW_AT_high_pc($C$DW$L$_subdivide$6$E)
$C$DW$738	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$738, DW_AT_low_pc($C$DW$L$_subdivide$7$B)
	.dwattr $C$DW$738, DW_AT_high_pc($C$DW$L$_subdivide$7$E)
	.dwendtag $C$DW$736


$C$DW$739	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$739, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L151:1:1738864582")
	.dwattr $C$DW$739, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$739, DW_AT_TI_begin_line(0x76d)
	.dwattr $C$DW$739, DW_AT_TI_end_line(0x76e)
$C$DW$740	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$740, DW_AT_low_pc($C$DW$L$_subdivide$4$B)
	.dwattr $C$DW$740, DW_AT_high_pc($C$DW$L$_subdivide$4$E)
	.dwendtag $C$DW$739

	.dwattr $C$DW$721, DW_AT_TI_end_file("./mp3_encode.c")
	.dwattr $C$DW$721, DW_AT_TI_end_line(0x784)
	.dwattr $C$DW$721, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$721

	.sect	".text"

$C$DW$741	.dwtag  DW_TAG_subprogram, DW_AT_name("bigv_tab_select")
	.dwattr $C$DW$741, DW_AT_low_pc(_bigv_tab_select)
	.dwattr $C$DW$741, DW_AT_high_pc(0x00)
	.dwattr $C$DW$741, DW_AT_TI_symbol_name("_bigv_tab_select")
	.dwattr $C$DW$741, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$741, DW_AT_TI_begin_line(0x78b)
	.dwattr $C$DW$741, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$741, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "./mp3_encode.c",line 1932,column 1,is_stmt,address _bigv_tab_select

	.dwfde $C$DW$CIE, _bigv_tab_select
$C$DW$742	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ix")
	.dwattr $C$DW$742, DW_AT_TI_symbol_name("_ix")
	.dwattr $C$DW$742, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$742, DW_AT_location[DW_OP_reg17]
$C$DW$743	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cod_info")
	.dwattr $C$DW$743, DW_AT_TI_symbol_name("_cod_info")
	.dwattr $C$DW$743, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$743, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: bigv_tab_select                                              *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,   *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_bigv_tab_select:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$744	.dwtag  DW_TAG_variable, DW_AT_name("ix")
	.dwattr $C$DW$744, DW_AT_TI_symbol_name("_ix")
	.dwattr $C$DW$744, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$744, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$745	.dwtag  DW_TAG_variable, DW_AT_name("cod_info")
	.dwattr $C$DW$745, DW_AT_TI_symbol_name("_cod_info")
	.dwattr $C$DW$745, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$745, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./mp3_encode.c",line 1933,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #0, *AR3(short(#5)) ; |1933| 
	.dwpsn	file "./mp3_encode.c",line 1934,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #0, *AR3(short(#6)) ; |1934| 
	.dwpsn	file "./mp3_encode.c",line 1935,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #0, *AR3(short(#7)) ; |1935| 
	.dwpsn	file "./mp3_encode.c",line 1938,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#15), AR1 ; |1938| 
        BCC $C$L158,AR1 == #0 ; |1938| 
                                        ; branchcc occurs ; |1938| 
	.dwpsn	file "./mp3_encode.c",line 1939,column 13,is_stmt
        MOV uns(*AR3(#15)), AC1 ; |1939| 
        MOV dbl(*SP(#0)), XAR0
$C$DW$746	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$746, DW_AT_low_pc(0x00)
	.dwattr $C$DW$746, DW_AT_name("_new_choose_table")
	.dwattr $C$DW$746, DW_AT_TI_call

        CALL #_new_choose_table ; |1939| 
||      MOV #0, AC0 ; |1939| 

                                        ; call occurs [#_new_choose_table] ; |1939| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, *AR3(short(#5)) ; |1939| 
$C$L158:    
	.dwpsn	file "./mp3_encode.c",line 1941,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#15), AR1 ; |1941| 
        MOV *AR3(#16), AR2 ; |1941| 
        CMPU AR2 <= AR1, TC1 ; |1941| 
        BCC $C$L159,TC1 ; |1941| 
                                        ; branchcc occurs ; |1941| 
	.dwpsn	file "./mp3_encode.c",line 1942,column 13,is_stmt
        MOV uns(*AR3(#15)), AC0 ; |1942| 
        MOV uns(*AR3(#16)), AC1 ; |1942| 
        MOV dbl(*SP(#0)), XAR0
$C$DW$747	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$747, DW_AT_low_pc(0x00)
	.dwattr $C$DW$747, DW_AT_name("_new_choose_table")
	.dwattr $C$DW$747, DW_AT_TI_call
        CALL #_new_choose_table ; |1942| 
                                        ; call occurs [#_new_choose_table] ; |1942| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, *AR3(short(#6)) ; |1942| 
$C$L159:    
	.dwpsn	file "./mp3_encode.c",line 1944,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#1)), AR2 ; |1944| 
        MOV *AR3(#16), AR1 ; |1944| 
        SFTL AR2, #1 ; |1944| 
        CMPU AR2 <= AR1, TC1 ; |1944| 
        BCC $C$L160,TC1 ; |1944| 
                                        ; branchcc occurs ; |1944| 
	.dwpsn	file "./mp3_encode.c",line 1945,column 13,is_stmt
        MOV *AR3(short(#1)), AR1 ; |1945| 
        MOV uns(*AR3(#16)), AC0 ; |1945| 
        MOV dbl(*SP(#0)), XAR0
        SFTL AR1, #1 ; |1945| 
        AND #0xffff, AR1, AC1 ; |1945| 
$C$DW$748	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$748, DW_AT_low_pc(0x00)
	.dwattr $C$DW$748, DW_AT_name("_new_choose_table")
	.dwattr $C$DW$748, DW_AT_TI_call
        CALL #_new_choose_table ; |1945| 
                                        ; call occurs [#_new_choose_table] ; |1945| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, *AR3(short(#7)) ; |1945| 
	.dwpsn	file "./mp3_encode.c",line 1947,column 1,is_stmt
$C$L160:    
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$749	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$749, DW_AT_low_pc(0x00)
	.dwattr $C$DW$749, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$741, DW_AT_TI_end_file("./mp3_encode.c")
	.dwattr $C$DW$741, DW_AT_TI_end_line(0x79b)
	.dwattr $C$DW$741, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$741

	.sect	".text"

$C$DW$750	.dwtag  DW_TAG_subprogram, DW_AT_name("new_choose_table")
	.dwattr $C$DW$750, DW_AT_low_pc(_new_choose_table)
	.dwattr $C$DW$750, DW_AT_high_pc(0x00)
	.dwattr $C$DW$750, DW_AT_TI_symbol_name("_new_choose_table")
	.dwattr $C$DW$750, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$750, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$750, DW_AT_TI_begin_line(0x7a6)
	.dwattr $C$DW$750, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$750, DW_AT_TI_max_frame_size(0x14)
	.dwpsn	file "./mp3_encode.c",line 1959,column 1,is_stmt,address _new_choose_table

	.dwfde $C$DW$CIE, _new_choose_table
$C$DW$751	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ix")
	.dwattr $C$DW$751, DW_AT_TI_symbol_name("_ix")
	.dwattr $C$DW$751, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$751, DW_AT_location[DW_OP_reg17]
$C$DW$752	.dwtag  DW_TAG_formal_parameter, DW_AT_name("begin")
	.dwattr $C$DW$752, DW_AT_TI_symbol_name("_begin")
	.dwattr $C$DW$752, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$752, DW_AT_location[DW_OP_reg0]
$C$DW$753	.dwtag  DW_TAG_formal_parameter, DW_AT_name("end")
	.dwattr $C$DW$753, DW_AT_TI_symbol_name("_end")
	.dwattr $C$DW$753, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$753, DW_AT_location[DW_OP_reg3]
;*******************************************************************************
;* FUNCTION NAME: new_choose_table                                             *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,AC2,AC2,T0,AR0,XAR0,AR3,XAR3,SP,     *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 20 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (18 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_new_choose_table:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-19, SP
	.dwcfi	cfa_offset, 20
$C$DW$754	.dwtag  DW_TAG_variable, DW_AT_name("ix")
	.dwattr $C$DW$754, DW_AT_TI_symbol_name("_ix")
	.dwattr $C$DW$754, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$754, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$755	.dwtag  DW_TAG_variable, DW_AT_name("begin")
	.dwattr $C$DW$755, DW_AT_TI_symbol_name("_begin")
	.dwattr $C$DW$755, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$755, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$756	.dwtag  DW_TAG_variable, DW_AT_name("end")
	.dwattr $C$DW$756, DW_AT_TI_symbol_name("_end")
	.dwattr $C$DW$756, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$756, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$757	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$757, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$757, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$757, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$758	.dwtag  DW_TAG_variable, DW_AT_name("max")
	.dwattr $C$DW$758, DW_AT_TI_symbol_name("_max")
	.dwattr $C$DW$758, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$758, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$759	.dwtag  DW_TAG_variable, DW_AT_name("choice")
	.dwattr $C$DW$759, DW_AT_TI_symbol_name("_choice")
	.dwattr $C$DW$759, DW_AT_type(*$C$DW$T$244)
	.dwattr $C$DW$759, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$760	.dwtag  DW_TAG_variable, DW_AT_name("sum")
	.dwattr $C$DW$760, DW_AT_TI_symbol_name("_sum")
	.dwattr $C$DW$760, DW_AT_type(*$C$DW$T$244)
	.dwattr $C$DW$760, DW_AT_location[DW_OP_bregx 0x24 14]
        MOV AC1, dbl(*SP(#4)) ; |1959| 
        MOV AC0, dbl(*SP(#2)) ; |1959| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./mp3_encode.c",line 1964,column 5,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |1964| 
        MOV dbl(*SP(#4)), AC1 ; |1964| 
$C$DW$761	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$761, DW_AT_low_pc(0x00)
	.dwattr $C$DW$761, DW_AT_name("_ix_max")
	.dwattr $C$DW$761, DW_AT_TI_call
        CALL #_ix_max ; |1964| 
                                        ; call occurs [#_ix_max] ; |1964| 
        MOV AC0, dbl(*SP(#8)) ; |1964| 
	.dwpsn	file "./mp3_encode.c",line 1965,column 5,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |1965| 
        BCC $C$L161,AC0 != #0 ; |1965| 
                                        ; branchcc occurs ; |1965| 
	.dwpsn	file "./mp3_encode.c",line 1966,column 9,is_stmt
        MOV #0, AC0 ; |1966| 
        B $C$L182 ; |1966| 
                                        ; branch occurs ; |1966| 
$C$L161:    
	.dwpsn	file "./mp3_encode.c",line 1968,column 5,is_stmt
        MOV #0, AC0 ; |1968| 
        MOV AC0, dbl(*SP(#10)) ; |1968| 
	.dwpsn	file "./mp3_encode.c",line 1969,column 5,is_stmt
        MOV AC0, dbl(*SP(#12)) ; |1969| 
	.dwpsn	file "./mp3_encode.c",line 1971,column 5,is_stmt

        MOV #15, AC0 ; |1971| 
||      MOV dbl(*SP(#8)), AC1 ; |1971| 

        CMP AC1 >= AC0, TC1 ; |1971| 
        BCC $C$L174,TC1 ; |1971| 
                                        ; branchcc occurs ; |1971| 
	.dwpsn	file "./mp3_encode.c",line 1974,column 14,is_stmt
        MOV #14, AC0 ; |1974| 
        MOV AC0, dbl(*SP(#6)) ; |1974| 
        MOV dbl(*SP(#6)), AC0 ; |1974| 
        SUB #1, AC0, AC1 ; |1974| 
        MOV AC1, dbl(*SP(#6)) ; |1974| 
        BCC $C$L164,AC0 == #0 ; |1974| 
                                        ; branchcc occurs ; |1974| 
$C$L162:    
$C$DW$L$_new_choose_table$5$B:
	.dwpsn	file "./mp3_encode.c",line 1975,column 13,is_stmt
        MPYMK *SP(#7), #12, AC0 ; |1975| 
        MOV AC0, T0 ; |1975| 
        AMOV #_shine_huffman_table, XAR3 ; |1975| 
        MOV dbl(*SP(#8)), AC0 ; |1975| 
        MOV dbl(*AR3(T0)), AC1 ; |1975| 
        CMPU AC1 <= AC0, TC1 ; |1975| 
        BCC $C$L163,TC1 ; |1975| 
                                        ; branchcc occurs ; |1975| 
$C$DW$L$_new_choose_table$5$E:
	.dwpsn	file "./mp3_encode.c",line 1977,column 17,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |1977| 
        MOV AC0, dbl(*SP(#10)) ; |1977| 
	.dwpsn	file "./mp3_encode.c",line 1978,column 17,is_stmt
        B $C$L164 ; |1978| 
                                        ; branch occurs ; |1978| 
$C$L163:    
$C$DW$L$_new_choose_table$7$B:
	.dwpsn	file "./mp3_encode.c",line 1979,column 13,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |1979| 
        SUB #1, AC0, AC1 ; |1979| 
        MOV AC1, dbl(*SP(#6)) ; |1979| 
        BCC $C$L162,AC0 != #0 ; |1979| 
                                        ; branchcc occurs ; |1979| 
$C$DW$L$_new_choose_table$7$E:
$C$L164:    
	.dwpsn	file "./mp3_encode.c",line 1981,column 9,is_stmt
        MOV dbl(*SP(#10)), AC2 ; |1981| 
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#2)), AC0 ; |1981| 
        MOV dbl(*SP(#4)), AC1 ; |1981| 
$C$DW$762	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$762, DW_AT_low_pc(0x00)
	.dwattr $C$DW$762, DW_AT_name("_count_bit")
	.dwattr $C$DW$762, DW_AT_TI_call
        CALL #_count_bit ; |1981| 
                                        ; call occurs [#_count_bit] ; |1981| 
        MOV AC0, dbl(*SP(#14)) ; |1981| 
	.dwpsn	file "./mp3_encode.c",line 1983,column 9,is_stmt
        B $C$L172 ; |1983| 
                                        ; branch occurs ; |1983| 
$C$L165:    
	.dwpsn	file "./mp3_encode.c",line 1986,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#2)), AC0 ; |1986| 
        MOV dbl(*SP(#4)), AC1 ; |1986| 
$C$DW$763	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$763, DW_AT_low_pc(0x00)
	.dwattr $C$DW$763, DW_AT_name("_count_bit")
	.dwattr $C$DW$763, DW_AT_TI_call

        CALL #_count_bit ; |1986| 
||      MOV #3, AC2 ; |1986| 

                                        ; call occurs [#_count_bit] ; |1986| 
        MOV AC0, dbl(*SP(#16)) ; |1986| 
	.dwpsn	file "./mp3_encode.c",line 1987,column 13,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |1987| 
        MOV dbl(*SP(#16)), AC1 ; |1987| 
        CMP AC1 > AC0, TC1 ; |1987| 
        BCC $C$L181,TC1 ; |1987| 
                                        ; branchcc occurs ; |1987| 
	.dwpsn	file "./mp3_encode.c",line 1988,column 17,is_stmt
        MOV #3, AC0 ; |1988| 
        MOV AC0, dbl(*SP(#10)) ; |1988| 
	.dwpsn	file "./mp3_encode.c",line 1989,column 18,is_stmt
        B $C$L181 ; |1989| 
                                        ; branch occurs ; |1989| 
$C$L166:    
	.dwpsn	file "./mp3_encode.c",line 1992,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#2)), AC0 ; |1992| 
        MOV dbl(*SP(#4)), AC1 ; |1992| 
$C$DW$764	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$764, DW_AT_low_pc(0x00)
	.dwattr $C$DW$764, DW_AT_name("_count_bit")
	.dwattr $C$DW$764, DW_AT_TI_call

        CALL #_count_bit ; |1992| 
||      MOV #6, AC2 ; |1992| 

                                        ; call occurs [#_count_bit] ; |1992| 
        MOV AC0, dbl(*SP(#16)) ; |1992| 
	.dwpsn	file "./mp3_encode.c",line 1993,column 13,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |1993| 
        MOV dbl(*SP(#16)), AC1 ; |1993| 
        CMP AC1 > AC0, TC1 ; |1993| 
        BCC $C$L181,TC1 ; |1993| 
                                        ; branchcc occurs ; |1993| 
	.dwpsn	file "./mp3_encode.c",line 1994,column 17,is_stmt
        MOV #6, AC0 ; |1994| 
        MOV AC0, dbl(*SP(#10)) ; |1994| 
	.dwpsn	file "./mp3_encode.c",line 1995,column 18,is_stmt
        B $C$L181 ; |1995| 
                                        ; branch occurs ; |1995| 
$C$L167:    
	.dwpsn	file "./mp3_encode.c",line 1998,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#2)), AC0 ; |1998| 
        MOV dbl(*SP(#4)), AC1 ; |1998| 
$C$DW$765	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$765, DW_AT_low_pc(0x00)
	.dwattr $C$DW$765, DW_AT_name("_count_bit")
	.dwattr $C$DW$765, DW_AT_TI_call

        CALL #_count_bit ; |1998| 
||      MOV #8, AC2 ; |1998| 

                                        ; call occurs [#_count_bit] ; |1998| 
        MOV AC0, dbl(*SP(#16)) ; |1998| 
	.dwpsn	file "./mp3_encode.c",line 1999,column 13,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |1999| 
        MOV dbl(*SP(#16)), AC1 ; |1999| 
        CMP AC1 > AC0, TC1 ; |1999| 
        BCC $C$L168,TC1 ; |1999| 
                                        ; branchcc occurs ; |1999| 
	.dwpsn	file "./mp3_encode.c",line 2001,column 17,is_stmt
        MOV #8, AC0 ; |2001| 
        MOV AC0, dbl(*SP(#10)) ; |2001| 
	.dwpsn	file "./mp3_encode.c",line 2002,column 17,is_stmt
        MOV dbl(*SP(#16)), AC0 ; |2002| 
        MOV AC0, dbl(*SP(#14)) ; |2002| 
$C$L168:    
	.dwpsn	file "./mp3_encode.c",line 2004,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#2)), AC0 ; |2004| 
        MOV dbl(*SP(#4)), AC1 ; |2004| 
$C$DW$766	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$766, DW_AT_low_pc(0x00)
	.dwattr $C$DW$766, DW_AT_name("_count_bit")
	.dwattr $C$DW$766, DW_AT_TI_call

        CALL #_count_bit ; |2004| 
||      MOV #9, AC2 ; |2004| 

                                        ; call occurs [#_count_bit] ; |2004| 
        MOV AC0, dbl(*SP(#16)) ; |2004| 
	.dwpsn	file "./mp3_encode.c",line 2005,column 13,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |2005| 
        MOV dbl(*SP(#16)), AC1 ; |2005| 
        CMP AC1 > AC0, TC1 ; |2005| 
        BCC $C$L181,TC1 ; |2005| 
                                        ; branchcc occurs ; |2005| 
	.dwpsn	file "./mp3_encode.c",line 2006,column 17,is_stmt
        MOV #9, AC0 ; |2006| 
        MOV AC0, dbl(*SP(#10)) ; |2006| 
	.dwpsn	file "./mp3_encode.c",line 2007,column 18,is_stmt
        B $C$L181 ; |2007| 
                                        ; branch occurs ; |2007| 
$C$L169:    
	.dwpsn	file "./mp3_encode.c",line 2010,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#2)), AC0 ; |2010| 
        MOV dbl(*SP(#4)), AC1 ; |2010| 
$C$DW$767	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$767, DW_AT_low_pc(0x00)
	.dwattr $C$DW$767, DW_AT_name("_count_bit")
	.dwattr $C$DW$767, DW_AT_TI_call

        CALL #_count_bit ; |2010| 
||      MOV #11, AC2 ; |2010| 

                                        ; call occurs [#_count_bit] ; |2010| 
        MOV AC0, dbl(*SP(#16)) ; |2010| 
	.dwpsn	file "./mp3_encode.c",line 2011,column 13,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |2011| 
        MOV dbl(*SP(#16)), AC1 ; |2011| 
        CMP AC1 > AC0, TC1 ; |2011| 
        BCC $C$L170,TC1 ; |2011| 
                                        ; branchcc occurs ; |2011| 
	.dwpsn	file "./mp3_encode.c",line 2013,column 17,is_stmt
        MOV #11, AC0 ; |2013| 
        MOV AC0, dbl(*SP(#10)) ; |2013| 
	.dwpsn	file "./mp3_encode.c",line 2014,column 17,is_stmt
        MOV dbl(*SP(#16)), AC0 ; |2014| 
        MOV AC0, dbl(*SP(#14)) ; |2014| 
$C$L170:    
	.dwpsn	file "./mp3_encode.c",line 2016,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#2)), AC0 ; |2016| 
        MOV dbl(*SP(#4)), AC1 ; |2016| 
$C$DW$768	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$768, DW_AT_low_pc(0x00)
	.dwattr $C$DW$768, DW_AT_name("_count_bit")
	.dwattr $C$DW$768, DW_AT_TI_call

        CALL #_count_bit ; |2016| 
||      MOV #12, AC2 ; |2016| 

                                        ; call occurs [#_count_bit] ; |2016| 
        MOV AC0, dbl(*SP(#16)) ; |2016| 
	.dwpsn	file "./mp3_encode.c",line 2017,column 13,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |2017| 
        MOV dbl(*SP(#16)), AC1 ; |2017| 
        CMP AC1 > AC0, TC1 ; |2017| 
        BCC $C$L181,TC1 ; |2017| 
                                        ; branchcc occurs ; |2017| 
	.dwpsn	file "./mp3_encode.c",line 2018,column 17,is_stmt
        MOV #12, AC0 ; |2018| 
        MOV AC0, dbl(*SP(#10)) ; |2018| 
	.dwpsn	file "./mp3_encode.c",line 2019,column 18,is_stmt
        B $C$L181 ; |2019| 
                                        ; branch occurs ; |2019| 
$C$L171:    
	.dwpsn	file "./mp3_encode.c",line 2022,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#2)), AC0 ; |2022| 
        MOV dbl(*SP(#4)), AC1 ; |2022| 
$C$DW$769	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$769, DW_AT_low_pc(0x00)
	.dwattr $C$DW$769, DW_AT_name("_count_bit")
	.dwattr $C$DW$769, DW_AT_TI_call

        CALL #_count_bit ; |2022| 
||      MOV #15, AC2 ; |2022| 

                                        ; call occurs [#_count_bit] ; |2022| 
        MOV AC0, dbl(*SP(#16)) ; |2022| 
	.dwpsn	file "./mp3_encode.c",line 2023,column 13,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |2023| 
        MOV dbl(*SP(#16)), AC1 ; |2023| 
        CMP AC1 > AC0, TC1 ; |2023| 
        BCC $C$L181,TC1 ; |2023| 
                                        ; branchcc occurs ; |2023| 
	.dwpsn	file "./mp3_encode.c",line 2024,column 17,is_stmt
        MOV #15, AC0 ; |2024| 
        MOV AC0, dbl(*SP(#10)) ; |2024| 
	.dwpsn	file "./mp3_encode.c",line 2025,column 18,is_stmt
        B $C$L181 ; |2025| 
                                        ; branch occurs ; |2025| 
$C$L172:    
	.dwpsn	file "./mp3_encode.c",line 1983,column 9,is_stmt

        MOV dbl(*SP(#10)), AC0 ; |1983| 
||      MOV #7, AC1 ; |1983| 

        CMP AC0 > AC1, TC1 ; |1983| 
        BCC $C$L173,TC1 ; |1983| 
                                        ; branchcc occurs ; |1983| 
        CMP AC0 == AC1, TC1 ; |1983| 
        BCC $C$L167,TC1 ; |1983| 
                                        ; branchcc occurs ; |1983| 
        MOV #2, AC1 ; |1983| 
        CMP AC0 == AC1, TC1 ; |1983| 
        BCC $C$L165,TC1 ; |1983| 
                                        ; branchcc occurs ; |1983| 
        MOV #5, AC1 ; |1983| 
        CMP AC0 == AC1, TC1 ; |1983| 
        BCC $C$L166,TC1 ; |1983| 
                                        ; branchcc occurs ; |1983| 
        B $C$L181 ; |1983| 
                                        ; branch occurs ; |1983| 
$C$L173:    
        MOV #10, AC1 ; |1983| 
        CMP AC0 == AC1, TC1 ; |1983| 
        BCC $C$L169,TC1 ; |1983| 
                                        ; branchcc occurs ; |1983| 
        MOV #13, AC1 ; |1983| 
        CMP AC0 == AC1, TC1 ; |1983| 
        BCC $C$L171,TC1 ; |1983| 
                                        ; branchcc occurs ; |1983| 
        B $C$L181 ; |1983| 
                                        ; branch occurs ; |1983| 
$C$L174:    
	.dwpsn	file "./mp3_encode.c",line 2031,column 9,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |2031| 
        SUB #15, AC0 ; |2031| 
        MOV AC0, dbl(*SP(#8)) ; |2031| 
	.dwpsn	file "./mp3_encode.c",line 2033,column 14,is_stmt
        MOV #15, AC0 ; |2033| 
        MOV AC0, dbl(*SP(#6)) ; |2033| 
	.dwpsn	file "./mp3_encode.c",line 2033,column 22,is_stmt
        MOV dbl(*SP(#6)), AC1 ; |2033| 
        MOV #24, AC0 ; |2033| 
        CMP AC1 >= AC0, TC1 ; |2033| 
        BCC $C$L177,TC1 ; |2033| 
                                        ; branchcc occurs ; |2033| 
$C$L175:    
$C$DW$L$_new_choose_table$34$B:
	.dwpsn	file "./mp3_encode.c",line 2034,column 13,is_stmt
        MPYMK *SP(#7), #12, AC0 ; |2034| 
        MOV AC0, T0 ; |2034| 
        AMOV #(_shine_huffman_table+6), XAR3 ; |2034| 
        MOV dbl(*SP(#8)), AC0 ; |2034| 
        MOV dbl(*AR3(T0)), AC1 ; |2034| 
        CMPU AC1 < AC0, TC1 ; |2034| 
        BCC $C$L176,TC1 ; |2034| 
                                        ; branchcc occurs ; |2034| 
$C$DW$L$_new_choose_table$34$E:
	.dwpsn	file "./mp3_encode.c",line 2036,column 17,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |2036| 
        MOV AC0, dbl(*SP(#10)) ; |2036| 
	.dwpsn	file "./mp3_encode.c",line 2037,column 17,is_stmt
        B $C$L177 ; |2037| 
                                        ; branch occurs ; |2037| 
$C$L176:    
$C$DW$L$_new_choose_table$36$B:
	.dwpsn	file "./mp3_encode.c",line 2033,column 30,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |2033| 
        ADD #1, AC0 ; |2033| 
        MOV AC0, dbl(*SP(#6)) ; |2033| 
	.dwpsn	file "./mp3_encode.c",line 2033,column 22,is_stmt
        MOV dbl(*SP(#6)), AC1 ; |2033| 
        MOV #24, AC0 ; |2033| 
        CMP AC1 < AC0, TC1 ; |2033| 
        BCC $C$L175,TC1 ; |2033| 
                                        ; branchcc occurs ; |2033| 
$C$DW$L$_new_choose_table$36$E:
$C$L177:    
	.dwpsn	file "./mp3_encode.c",line 2040,column 14,is_stmt
        MOV #24, AC0 ; |2040| 
        MOV AC0, dbl(*SP(#6)) ; |2040| 
	.dwpsn	file "./mp3_encode.c",line 2040,column 22,is_stmt
        MOV dbl(*SP(#6)), AC1 ; |2040| 
        MOV #32, AC0 ; |2040| 
        CMP AC1 >= AC0, TC1 ; |2040| 
        BCC $C$L180,TC1 ; |2040| 
                                        ; branchcc occurs ; |2040| 
$C$L178:    
$C$DW$L$_new_choose_table$38$B:
	.dwpsn	file "./mp3_encode.c",line 2041,column 13,is_stmt
        MPYMK *SP(#7), #12, AC0 ; |2041| 
        MOV AC0, T0 ; |2041| 
        AMOV #(_shine_huffman_table+6), XAR3 ; |2041| 
        MOV dbl(*SP(#8)), AC0 ; |2041| 
        MOV dbl(*AR3(T0)), AC1 ; |2041| 
        CMPU AC1 < AC0, TC1 ; |2041| 
        BCC $C$L179,TC1 ; |2041| 
                                        ; branchcc occurs ; |2041| 
$C$DW$L$_new_choose_table$38$E:
	.dwpsn	file "./mp3_encode.c",line 2043,column 17,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |2043| 
        MOV AC0, dbl(*SP(#12)) ; |2043| 
	.dwpsn	file "./mp3_encode.c",line 2044,column 17,is_stmt
        B $C$L180 ; |2044| 
                                        ; branch occurs ; |2044| 
$C$L179:    
$C$DW$L$_new_choose_table$40$B:
	.dwpsn	file "./mp3_encode.c",line 2040,column 30,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |2040| 
        ADD #1, AC0 ; |2040| 
        MOV AC0, dbl(*SP(#6)) ; |2040| 
	.dwpsn	file "./mp3_encode.c",line 2040,column 22,is_stmt
        MOV dbl(*SP(#6)), AC1 ; |2040| 
        MOV #32, AC0 ; |2040| 
        CMP AC1 < AC0, TC1 ; |2040| 
        BCC $C$L178,TC1 ; |2040| 
                                        ; branchcc occurs ; |2040| 
$C$DW$L$_new_choose_table$40$E:
$C$L180:    
	.dwpsn	file "./mp3_encode.c",line 2047,column 9,is_stmt
        MOV dbl(*SP(#10)), AC2 ; |2047| 
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#2)), AC0 ; |2047| 
        MOV dbl(*SP(#4)), AC1 ; |2047| 
$C$DW$770	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$770, DW_AT_low_pc(0x00)
	.dwattr $C$DW$770, DW_AT_name("_count_bit")
	.dwattr $C$DW$770, DW_AT_TI_call
        CALL #_count_bit ; |2047| 
                                        ; call occurs [#_count_bit] ; |2047| 
        MOV AC0, dbl(*SP(#14)) ; |2047| 
	.dwpsn	file "./mp3_encode.c",line 2048,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#2)), AC0 ; |2048| 
        MOV dbl(*SP(#12)), AC2 ; |2048| 
        MOV dbl(*SP(#4)), AC1 ; |2048| 
$C$DW$771	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$771, DW_AT_low_pc(0x00)
	.dwattr $C$DW$771, DW_AT_name("_count_bit")
	.dwattr $C$DW$771, DW_AT_TI_call
        CALL #_count_bit ; |2048| 
                                        ; call occurs [#_count_bit] ; |2048| 
        MOV AC0, dbl(*SP(#16)) ; |2048| 
	.dwpsn	file "./mp3_encode.c",line 2049,column 9,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |2049| 
        MOV dbl(*SP(#16)), AC1 ; |2049| 
        CMP AC1 >= AC0, TC1 ; |2049| 
        BCC $C$L181,TC1 ; |2049| 
                                        ; branchcc occurs ; |2049| 
	.dwpsn	file "./mp3_encode.c",line 2050,column 13,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |2050| 
        MOV AC0, dbl(*SP(#10)) ; |2050| 
$C$L181:    
	.dwpsn	file "./mp3_encode.c",line 2052,column 5,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |2052| 
$C$L182:    
	.dwpsn	file "./mp3_encode.c",line 2053,column 1,is_stmt
        AADD #19, SP
	.dwcfi	cfa_offset, 1
$C$DW$772	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$772, DW_AT_low_pc(0x00)
	.dwattr $C$DW$772, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$773	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$773, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L178:1:1738864582")
	.dwattr $C$DW$773, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$773, DW_AT_TI_begin_line(0x7f8)
	.dwattr $C$DW$773, DW_AT_TI_end_line(0x7fd)
$C$DW$774	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$774, DW_AT_low_pc($C$DW$L$_new_choose_table$38$B)
	.dwattr $C$DW$774, DW_AT_high_pc($C$DW$L$_new_choose_table$38$E)
$C$DW$775	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$775, DW_AT_low_pc($C$DW$L$_new_choose_table$40$B)
	.dwattr $C$DW$775, DW_AT_high_pc($C$DW$L$_new_choose_table$40$E)
	.dwendtag $C$DW$773


$C$DW$776	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$776, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L175:1:1738864582")
	.dwattr $C$DW$776, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$776, DW_AT_TI_begin_line(0x7f1)
	.dwattr $C$DW$776, DW_AT_TI_end_line(0x7f6)
$C$DW$777	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$777, DW_AT_low_pc($C$DW$L$_new_choose_table$34$B)
	.dwattr $C$DW$777, DW_AT_high_pc($C$DW$L$_new_choose_table$34$E)
$C$DW$778	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$778, DW_AT_low_pc($C$DW$L$_new_choose_table$36$B)
	.dwattr $C$DW$778, DW_AT_high_pc($C$DW$L$_new_choose_table$36$E)
	.dwendtag $C$DW$776


$C$DW$779	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$779, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L162:1:1738864582")
	.dwattr $C$DW$779, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$779, DW_AT_TI_begin_line(0x7b6)
	.dwattr $C$DW$779, DW_AT_TI_end_line(0x7bb)
$C$DW$780	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$780, DW_AT_low_pc($C$DW$L$_new_choose_table$5$B)
	.dwattr $C$DW$780, DW_AT_high_pc($C$DW$L$_new_choose_table$5$E)
$C$DW$781	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$781, DW_AT_low_pc($C$DW$L$_new_choose_table$7$B)
	.dwattr $C$DW$781, DW_AT_high_pc($C$DW$L$_new_choose_table$7$E)
	.dwendtag $C$DW$779

	.dwattr $C$DW$750, DW_AT_TI_end_file("./mp3_encode.c")
	.dwattr $C$DW$750, DW_AT_TI_end_line(0x805)
	.dwattr $C$DW$750, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$750

	.sect	".text"

$C$DW$782	.dwtag  DW_TAG_subprogram, DW_AT_name("bigv_bitcount")
	.dwattr $C$DW$782, DW_AT_low_pc(_bigv_bitcount)
	.dwattr $C$DW$782, DW_AT_high_pc(0x00)
	.dwattr $C$DW$782, DW_AT_TI_symbol_name("_bigv_bitcount")
	.dwattr $C$DW$782, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$782, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$782, DW_AT_TI_begin_line(0x80c)
	.dwattr $C$DW$782, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$782, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "./mp3_encode.c",line 2061,column 1,is_stmt,address _bigv_bitcount

	.dwfde $C$DW$CIE, _bigv_bitcount
$C$DW$783	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ix")
	.dwattr $C$DW$783, DW_AT_TI_symbol_name("_ix")
	.dwattr $C$DW$783, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$783, DW_AT_location[DW_OP_reg17]
$C$DW$784	.dwtag  DW_TAG_formal_parameter, DW_AT_name("gi")
	.dwattr $C$DW$784, DW_AT_TI_symbol_name("_gi")
	.dwattr $C$DW$784, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$784, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: bigv_bitcount                                                *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,AC2,AC2,AR0,XAR0,AR1,XAR1,AR3,XAR3,  *
;*                        SP,CARRY,M40,SATA,SATD,RDM,FRCT,SMUL                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (8 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_bigv_bitcount:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-9, SP
	.dwcfi	cfa_offset, 10
$C$DW$785	.dwtag  DW_TAG_variable, DW_AT_name("ix")
	.dwattr $C$DW$785, DW_AT_TI_symbol_name("_ix")
	.dwattr $C$DW$785, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$785, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$786	.dwtag  DW_TAG_variable, DW_AT_name("gi")
	.dwattr $C$DW$786, DW_AT_TI_symbol_name("_gi")
	.dwattr $C$DW$786, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$786, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$787	.dwtag  DW_TAG_variable, DW_AT_name("bits")
	.dwattr $C$DW$787, DW_AT_TI_symbol_name("_bits")
	.dwattr $C$DW$787, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$787, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$788	.dwtag  DW_TAG_variable, DW_AT_name("table")
	.dwattr $C$DW$788, DW_AT_TI_symbol_name("_table")
	.dwattr $C$DW$788, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$788, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./mp3_encode.c",line 2062,column 13,is_stmt
        MOV #0, AC0 ; |2062| 
        MOV AC0, dbl(*SP(#4)) ; |2062| 
	.dwpsn	file "./mp3_encode.c",line 2065,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(*AR3(short(#5))), AC0 ; |2065| 
        MOV AC0, dbl(*SP(#6)) ; |2065| 
        BCC $C$L183,AC0 == #0 ; |2065| 
                                        ; branchcc occurs ; |2065| 
	.dwpsn	file "./mp3_encode.c",line 2066,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#6)), AC2 ; |2066| 
        MOV uns(*AR3(#15)), AC1 ; |2066| 
$C$DW$789	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$789, DW_AT_low_pc(0x00)
	.dwattr $C$DW$789, DW_AT_name("_count_bit")
	.dwattr $C$DW$789, DW_AT_TI_call

        CALL #_count_bit ; |2066| 
||      MOV #0, AC0 ; |2066| 

                                        ; call occurs [#_count_bit] ; |2066| 
        ADD dbl(*SP(#4)), AC0, AC0 ; |2066| 
        MOV AC0, dbl(*SP(#4)) ; |2066| 
$C$L183:    
	.dwpsn	file "./mp3_encode.c",line 2067,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(*AR3(short(#6))), AC0 ; |2067| 
        MOV AC0, dbl(*SP(#6)) ; |2067| 
        BCC $C$L184,AC0 == #0 ; |2067| 
                                        ; branchcc occurs ; |2067| 
	.dwpsn	file "./mp3_encode.c",line 2068,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#6)), AC2 ; |2068| 
        MOV uns(*AR3(#15)), AC0 ; |2068| 
        MOV uns(*AR3(#16)), AC1 ; |2068| 
$C$DW$790	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$790, DW_AT_low_pc(0x00)
	.dwattr $C$DW$790, DW_AT_name("_count_bit")
	.dwattr $C$DW$790, DW_AT_TI_call
        CALL #_count_bit ; |2068| 
                                        ; call occurs [#_count_bit] ; |2068| 
        ADD dbl(*SP(#4)), AC0, AC0 ; |2068| 
        MOV AC0, dbl(*SP(#4)) ; |2068| 
$C$L184:    
	.dwpsn	file "./mp3_encode.c",line 2069,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(*AR3(short(#7))), AC0 ; |2069| 
        MOV AC0, dbl(*SP(#6)) ; |2069| 
        BCC $C$L185,AC0 == #0 ; |2069| 
                                        ; branchcc occurs ; |2069| 
	.dwpsn	file "./mp3_encode.c",line 2070,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#6)), AC2 ; |2070| 
        MOV uns(*AR3(#16)), AC0 ; |2070| 
        MOV uns(*AR3(#17)), AC1 ; |2070| 
$C$DW$791	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$791, DW_AT_low_pc(0x00)
	.dwattr $C$DW$791, DW_AT_name("_count_bit")
	.dwattr $C$DW$791, DW_AT_TI_call
        CALL #_count_bit ; |2070| 
                                        ; call occurs [#_count_bit] ; |2070| 
        ADD dbl(*SP(#4)), AC0, AC0 ; |2070| 
        MOV AC0, dbl(*SP(#4)) ; |2070| 
$C$L185:    
	.dwpsn	file "./mp3_encode.c",line 2071,column 5,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |2071| 
	.dwpsn	file "./mp3_encode.c",line 2072,column 1,is_stmt
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$792	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$792, DW_AT_low_pc(0x00)
	.dwattr $C$DW$792, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$782, DW_AT_TI_end_file("./mp3_encode.c")
	.dwattr $C$DW$782, DW_AT_TI_end_line(0x818)
	.dwattr $C$DW$782, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$782

	.sect	".text"

$C$DW$793	.dwtag  DW_TAG_subprogram, DW_AT_name("count_bit")
	.dwattr $C$DW$793, DW_AT_low_pc(_count_bit)
	.dwattr $C$DW$793, DW_AT_high_pc(0x00)
	.dwattr $C$DW$793, DW_AT_TI_symbol_name("_count_bit")
	.dwattr $C$DW$793, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$793, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$793, DW_AT_TI_begin_line(0x81f)
	.dwattr $C$DW$793, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$793, DW_AT_TI_max_frame_size(0x14)
	.dwpsn	file "./mp3_encode.c",line 2083,column 1,is_stmt,address _count_bit

	.dwfde $C$DW$CIE, _count_bit
$C$DW$794	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ix")
	.dwattr $C$DW$794, DW_AT_TI_symbol_name("_ix")
	.dwattr $C$DW$794, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$794, DW_AT_location[DW_OP_reg17]
$C$DW$795	.dwtag  DW_TAG_formal_parameter, DW_AT_name("start")
	.dwattr $C$DW$795, DW_AT_TI_symbol_name("_start")
	.dwattr $C$DW$795, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$795, DW_AT_location[DW_OP_reg0]
$C$DW$796	.dwtag  DW_TAG_formal_parameter, DW_AT_name("end")
	.dwattr $C$DW$796, DW_AT_TI_symbol_name("_end")
	.dwattr $C$DW$796, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$796, DW_AT_location[DW_OP_reg3]
$C$DW$797	.dwtag  DW_TAG_formal_parameter, DW_AT_name("table")
	.dwattr $C$DW$797, DW_AT_TI_symbol_name("_table")
	.dwattr $C$DW$797, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$797, DW_AT_location[DW_OP_reg6]
;*******************************************************************************
;* FUNCTION NAME: count_bit                                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,AC2,AC2,AC3,AC3,T0,AR0,XAR0,AR1,AR3, *
;*                        XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 20 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (18 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_count_bit:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-19, SP
	.dwcfi	cfa_offset, 20
$C$DW$798	.dwtag  DW_TAG_variable, DW_AT_name("ix")
	.dwattr $C$DW$798, DW_AT_TI_symbol_name("_ix")
	.dwattr $C$DW$798, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$798, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$799	.dwtag  DW_TAG_variable, DW_AT_name("start")
	.dwattr $C$DW$799, DW_AT_TI_symbol_name("_start")
	.dwattr $C$DW$799, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$799, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$800	.dwtag  DW_TAG_variable, DW_AT_name("end")
	.dwattr $C$DW$800, DW_AT_TI_symbol_name("_end")
	.dwattr $C$DW$800, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$800, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$801	.dwtag  DW_TAG_variable, DW_AT_name("table")
	.dwattr $C$DW$801, DW_AT_TI_symbol_name("_table")
	.dwattr $C$DW$801, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$801, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$802	.dwtag  DW_TAG_variable, DW_AT_name("linbits")
	.dwattr $C$DW$802, DW_AT_TI_symbol_name("_linbits")
	.dwattr $C$DW$802, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$802, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$803	.dwtag  DW_TAG_variable, DW_AT_name("ylen")
	.dwattr $C$DW$803, DW_AT_TI_symbol_name("_ylen")
	.dwattr $C$DW$803, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$803, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$804	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$804, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$804, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$804, DW_AT_location[DW_OP_bregx 0x24 14]
;* AC2   assigned to _sum
$C$DW$805	.dwtag  DW_TAG_variable, DW_AT_name("sum")
	.dwattr $C$DW$805, DW_AT_TI_symbol_name("_sum")
	.dwattr $C$DW$805, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$805, DW_AT_location[DW_OP_reg6]
$C$DW$806	.dwtag  DW_TAG_variable, DW_AT_name("x")
	.dwattr $C$DW$806, DW_AT_TI_symbol_name("_x")
	.dwattr $C$DW$806, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$806, DW_AT_location[DW_OP_bregx 0x24 16]
;* AC3   assigned to _y
$C$DW$807	.dwtag  DW_TAG_variable, DW_AT_name("y")
	.dwattr $C$DW$807, DW_AT_TI_symbol_name("_y")
	.dwattr $C$DW$807, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$807, DW_AT_location[DW_OP_reg9]
$C$DW$808	.dwtag  DW_TAG_variable, DW_AT_name("h")
	.dwattr $C$DW$808, DW_AT_TI_symbol_name("_h")
	.dwattr $C$DW$808, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$808, DW_AT_location[DW_OP_bregx 0x24 12]
        MOV AC2, dbl(*SP(#6)) ; |2083| 
        MOV AC1, dbl(*SP(#4)) ; |2083| 
        MOV AC0, dbl(*SP(#2)) ; |2083| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./mp3_encode.c",line 2089,column 5,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |2089| 
        BCC $C$L186,AC0 != #0 ; |2089| 
                                        ; branchcc occurs ; |2089| 
	.dwpsn	file "./mp3_encode.c",line 2090,column 9,is_stmt
        MOV #0, AC0 ; |2090| 
        B $C$L197 ; |2090| 
                                        ; branch occurs ; |2090| 
$C$L186:    
	.dwpsn	file "./mp3_encode.c",line 2092,column 5,is_stmt
        MPYMK *SP(#7), #12, AC0 ; |2092| 
        MOV AC0, AR1 ; |2092| 
        AMOV #_shine_huffman_table, XAR3 ; |2092| 

        MOV XAR3, dbl(*SP(#12))
||      AADD AR1, AR3 ; |2092| 

	.dwpsn	file "./mp3_encode.c",line 2093,column 5,is_stmt
        MOV #0, AC2 ; |2093| 
	.dwpsn	file "./mp3_encode.c",line 2095,column 5,is_stmt
        MOV dbl(*AR3(short(#2))), AC0 ; |2095| 
        MOV AC0, dbl(*SP(#10)) ; |2095| 
	.dwpsn	file "./mp3_encode.c",line 2096,column 5,is_stmt
        MOV dbl(*SP(#12)), XAR3
        MOV dbl(*AR3(short(#4))), AC0 ; |2096| 
        MOV AC0, dbl(*SP(#8)) ; |2096| 
	.dwpsn	file "./mp3_encode.c",line 2098,column 5,is_stmt

        MOV dbl(*SP(#6)), AC1 ; |2098| 
||      MOV #15, AC0 ; |2098| 

        CMPU AC1 <= AC0, TC1 ; |2098| 
        BCC $C$L192,TC1 ; |2098| 
                                        ; branchcc occurs ; |2098| 
	.dwpsn	file "./mp3_encode.c",line 2100,column 14,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |2100| 
        MOV AC0, dbl(*SP(#14)) ; |2100| 
	.dwpsn	file "./mp3_encode.c",line 2100,column 25,is_stmt
        MOV dbl(*SP(#4)), AC1 ; |2100| 
        MOV dbl(*SP(#14)), AC0 ; |2100| 
        CMPU AC0 >= AC1, TC1 ; |2100| 
        BCC $C$L196,TC1 ; |2100| 
                                        ; branchcc occurs ; |2100| 
$C$L187:    
$C$DW$L$_count_bit$5$B:
	.dwpsn	file "./mp3_encode.c",line 2102,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#15), T0
        SFTL T0, #1 ; |2102| 
        MOV dbl(*AR3(T0)), AC0 ; |2102| 
        MOV AC0, dbl(*SP(#16)) ; |2102| 
	.dwpsn	file "./mp3_encode.c",line 2103,column 13,is_stmt
        MOV dbl(*SP(#14)), AC0
        ADD #1, AC0, AC0 ; |2103| 
        MOV AC0, T0 ; |2103| 
        SFTL T0, #1 ; |2103| 
        MOV dbl(*AR3(T0)), AC3 ; |2103| 
	.dwpsn	file "./mp3_encode.c",line 2104,column 13,is_stmt

        MOV dbl(*SP(#16)), AC0 ; |2104| 
||      MOV #14, AC1 ; |2104| 

        CMP AC0 <= AC1, TC1 ; |2104| 
        BCC $C$L188,TC1 ; |2104| 
                                        ; branchcc occurs ; |2104| 
$C$DW$L$_count_bit$5$E:
$C$DW$L$_count_bit$6$B:
	.dwpsn	file "./mp3_encode.c",line 2106,column 17,is_stmt
        MOV #15, AC0 ; |2106| 
        MOV AC0, dbl(*SP(#16)) ; |2106| 
	.dwpsn	file "./mp3_encode.c",line 2107,column 17,is_stmt
        ADD dbl(*SP(#8)), AC2, AC2 ; |2107| 
$C$DW$L$_count_bit$6$E:
$C$L188:    
$C$DW$L$_count_bit$7$B:
	.dwpsn	file "./mp3_encode.c",line 2109,column 13,is_stmt
        MOV #14, AC0 ; |2109| 
        CMP AC3 <= AC0, TC1 ; |2109| 
        BCC $C$L189,TC1 ; |2109| 
                                        ; branchcc occurs ; |2109| 
$C$DW$L$_count_bit$7$E:
$C$DW$L$_count_bit$8$B:
	.dwpsn	file "./mp3_encode.c",line 2111,column 17,is_stmt
        MOV #15, AC3 ; |2111| 
	.dwpsn	file "./mp3_encode.c",line 2112,column 17,is_stmt
        ADD dbl(*SP(#8)), AC2, AC2 ; |2112| 
$C$DW$L$_count_bit$8$E:
$C$L189:    
$C$DW$L$_count_bit$9$B:
	.dwpsn	file "./mp3_encode.c",line 2115,column 13,is_stmt
        MOV dbl(*SP(#16)), AC0
        MOV dbl(*SP(#10)), AC1 ; |2115| 
$C$DW$809	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$809, DW_AT_low_pc(0x00)
	.dwattr $C$DW$809, DW_AT_name("__mpyli")
	.dwattr $C$DW$809, DW_AT_TI_call
        CALL #__mpyli ; |2115| 
                                        ; call occurs [#__mpyli] ; |2115| 
        MOV dbl(*SP(#12)), XAR3
        OR #0, AC3, AC1
        ADD AC0, AC1 ; |2115| 
        MOV AC1, T0 ; |2115| 
        MOV dbl(*AR3(#10)), XAR3
        ADD uns(*AR3(T0)), AC2, AC2 ; |2115| 
	.dwpsn	file "./mp3_encode.c",line 2116,column 13,is_stmt
        MOV dbl(*SP(#16)), AC0
        BCC $C$L190,AC0 == #0 ; |2116| 
                                        ; branchcc occurs ; |2116| 
$C$DW$L$_count_bit$9$E:
$C$DW$L$_count_bit$10$B:
	.dwpsn	file "./mp3_encode.c",line 2117,column 17,is_stmt
        ADD #1, AC2 ; |2117| 
$C$DW$L$_count_bit$10$E:
$C$L190:    
$C$DW$L$_count_bit$11$B:
	.dwpsn	file "./mp3_encode.c",line 2118,column 13,is_stmt
        BCC $C$L191,AC3 == #0 ; |2118| 
                                        ; branchcc occurs ; |2118| 
$C$DW$L$_count_bit$11$E:
$C$DW$L$_count_bit$12$B:
	.dwpsn	file "./mp3_encode.c",line 2119,column 17,is_stmt
        ADD #1, AC2 ; |2119| 
$C$DW$L$_count_bit$12$E:
$C$L191:    
$C$DW$L$_count_bit$13$B:
	.dwpsn	file "./mp3_encode.c",line 2100,column 34,is_stmt
        MOV dbl(*SP(#14)), AC0
        ADD #2, AC0 ; |2100| 
        MOV AC0, dbl(*SP(#14)) ; |2100| 
	.dwpsn	file "./mp3_encode.c",line 2100,column 25,is_stmt
        MOV dbl(*SP(#4)), AC1 ; |2100| 
        MOV dbl(*SP(#14)), AC0 ; |2100| 
        CMPU AC0 < AC1, TC1 ; |2100| 
        BCC $C$L187,TC1 ; |2100| 
                                        ; branchcc occurs ; |2100| 
$C$DW$L$_count_bit$13$E:
	.dwpsn	file "./mp3_encode.c",line 2121,column 5,is_stmt
        B $C$L196 ; |2121| 
                                        ; branch occurs ; |2121| 
$C$L192:    
	.dwpsn	file "./mp3_encode.c",line 2124,column 14,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |2124| 
        MOV AC0, dbl(*SP(#14)) ; |2124| 
	.dwpsn	file "./mp3_encode.c",line 2124,column 25,is_stmt
        MOV dbl(*SP(#4)), AC1 ; |2124| 
        MOV dbl(*SP(#14)), AC0 ; |2124| 
        CMPU AC0 >= AC1, TC1 ; |2124| 
        BCC $C$L196,TC1 ; |2124| 
                                        ; branchcc occurs ; |2124| 
$C$L193:    
$C$DW$L$_count_bit$16$B:
	.dwpsn	file "./mp3_encode.c",line 2126,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#15), T0
        SFTL T0, #1 ; |2126| 
        MOV dbl(*AR3(T0)), AC0 ; |2126| 
        MOV AC0, dbl(*SP(#16)) ; |2126| 
	.dwpsn	file "./mp3_encode.c",line 2127,column 13,is_stmt
        MOV dbl(*SP(#14)), AC0
        ADD #1, AC0, AC0 ; |2127| 
        MOV AC0, T0 ; |2127| 
        SFTL T0, #1 ; |2127| 
        MOV dbl(*AR3(T0)), AC3 ; |2127| 
	.dwpsn	file "./mp3_encode.c",line 2129,column 13,is_stmt
        MOV dbl(*SP(#10)), AC1 ; |2129| 
        MOV dbl(*SP(#16)), AC0
$C$DW$810	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$810, DW_AT_low_pc(0x00)
	.dwattr $C$DW$810, DW_AT_name("__mpyli")
	.dwattr $C$DW$810, DW_AT_TI_call
        CALL #__mpyli ; |2129| 
                                        ; call occurs [#__mpyli] ; |2129| 
        MOV dbl(*SP(#12)), XAR3
        OR #0, AC3, AC1
        ADD AC0, AC1 ; |2129| 
        MOV AC1, T0 ; |2129| 
        MOV dbl(*AR3(#10)), XAR3
        ADD uns(*AR3(T0)), AC2, AC2 ; |2129| 
	.dwpsn	file "./mp3_encode.c",line 2131,column 13,is_stmt
        MOV dbl(*SP(#16)), AC0
        BCC $C$L194,AC0 == #0 ; |2131| 
                                        ; branchcc occurs ; |2131| 
$C$DW$L$_count_bit$16$E:
$C$DW$L$_count_bit$17$B:
	.dwpsn	file "./mp3_encode.c",line 2132,column 17,is_stmt
        ADD #1, AC2 ; |2132| 
$C$DW$L$_count_bit$17$E:
$C$L194:    
$C$DW$L$_count_bit$18$B:
	.dwpsn	file "./mp3_encode.c",line 2133,column 13,is_stmt
        BCC $C$L195,AC3 == #0 ; |2133| 
                                        ; branchcc occurs ; |2133| 
$C$DW$L$_count_bit$18$E:
$C$DW$L$_count_bit$19$B:
	.dwpsn	file "./mp3_encode.c",line 2134,column 17,is_stmt
        ADD #1, AC2 ; |2134| 
$C$DW$L$_count_bit$19$E:
$C$L195:    
$C$DW$L$_count_bit$20$B:
	.dwpsn	file "./mp3_encode.c",line 2124,column 34,is_stmt
        MOV dbl(*SP(#14)), AC0
        ADD #2, AC0 ; |2124| 
        MOV AC0, dbl(*SP(#14)) ; |2124| 
	.dwpsn	file "./mp3_encode.c",line 2124,column 25,is_stmt
        MOV dbl(*SP(#4)), AC1 ; |2124| 
        MOV dbl(*SP(#14)), AC0 ; |2124| 
        CMPU AC0 < AC1, TC1 ; |2124| 
        BCC $C$L193,TC1 ; |2124| 
                                        ; branchcc occurs ; |2124| 
$C$DW$L$_count_bit$20$E:
$C$L196:    
	.dwpsn	file "./mp3_encode.c",line 2137,column 5,is_stmt
        OR #0, AC2, AC0
$C$L197:    
	.dwpsn	file "./mp3_encode.c",line 2138,column 1,is_stmt
        AADD #19, SP
	.dwcfi	cfa_offset, 1
$C$DW$811	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$811, DW_AT_low_pc(0x00)
	.dwattr $C$DW$811, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$812	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$812, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L193:1:1738864582")
	.dwattr $C$DW$812, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$812, DW_AT_TI_begin_line(0x84c)
	.dwattr $C$DW$812, DW_AT_TI_end_line(0x857)
$C$DW$813	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$813, DW_AT_low_pc($C$DW$L$_count_bit$16$B)
	.dwattr $C$DW$813, DW_AT_high_pc($C$DW$L$_count_bit$16$E)
$C$DW$814	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$814, DW_AT_low_pc($C$DW$L$_count_bit$17$B)
	.dwattr $C$DW$814, DW_AT_high_pc($C$DW$L$_count_bit$17$E)
$C$DW$815	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$815, DW_AT_low_pc($C$DW$L$_count_bit$18$B)
	.dwattr $C$DW$815, DW_AT_high_pc($C$DW$L$_count_bit$18$E)
$C$DW$816	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$816, DW_AT_low_pc($C$DW$L$_count_bit$19$B)
	.dwattr $C$DW$816, DW_AT_high_pc($C$DW$L$_count_bit$19$E)
$C$DW$817	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$817, DW_AT_low_pc($C$DW$L$_count_bit$20$B)
	.dwattr $C$DW$817, DW_AT_high_pc($C$DW$L$_count_bit$20$E)
	.dwendtag $C$DW$812


$C$DW$818	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$818, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L187:1:1738864582")
	.dwattr $C$DW$818, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$818, DW_AT_TI_begin_line(0x834)
	.dwattr $C$DW$818, DW_AT_TI_end_line(0x848)
$C$DW$819	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$819, DW_AT_low_pc($C$DW$L$_count_bit$5$B)
	.dwattr $C$DW$819, DW_AT_high_pc($C$DW$L$_count_bit$5$E)
$C$DW$820	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$820, DW_AT_low_pc($C$DW$L$_count_bit$6$B)
	.dwattr $C$DW$820, DW_AT_high_pc($C$DW$L$_count_bit$6$E)
$C$DW$821	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$821, DW_AT_low_pc($C$DW$L$_count_bit$7$B)
	.dwattr $C$DW$821, DW_AT_high_pc($C$DW$L$_count_bit$7$E)
$C$DW$822	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$822, DW_AT_low_pc($C$DW$L$_count_bit$8$B)
	.dwattr $C$DW$822, DW_AT_high_pc($C$DW$L$_count_bit$8$E)
$C$DW$823	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$823, DW_AT_low_pc($C$DW$L$_count_bit$9$B)
	.dwattr $C$DW$823, DW_AT_high_pc($C$DW$L$_count_bit$9$E)
$C$DW$824	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$824, DW_AT_low_pc($C$DW$L$_count_bit$10$B)
	.dwattr $C$DW$824, DW_AT_high_pc($C$DW$L$_count_bit$10$E)
$C$DW$825	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$825, DW_AT_low_pc($C$DW$L$_count_bit$11$B)
	.dwattr $C$DW$825, DW_AT_high_pc($C$DW$L$_count_bit$11$E)
$C$DW$826	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$826, DW_AT_low_pc($C$DW$L$_count_bit$12$B)
	.dwattr $C$DW$826, DW_AT_high_pc($C$DW$L$_count_bit$12$E)
$C$DW$827	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$827, DW_AT_low_pc($C$DW$L$_count_bit$13$B)
	.dwattr $C$DW$827, DW_AT_high_pc($C$DW$L$_count_bit$13$E)
	.dwendtag $C$DW$818

	.dwattr $C$DW$793, DW_AT_TI_end_file("./mp3_encode.c")
	.dwattr $C$DW$793, DW_AT_TI_end_line(0x85a)
	.dwattr $C$DW$793, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$793

	.sect	".text"

$C$DW$828	.dwtag  DW_TAG_subprogram, DW_AT_name("bin_search_StepSize")
	.dwattr $C$DW$828, DW_AT_low_pc(_bin_search_StepSize)
	.dwattr $C$DW$828, DW_AT_high_pc(0x00)
	.dwattr $C$DW$828, DW_AT_TI_symbol_name("_bin_search_StepSize")
	.dwattr $C$DW$828, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$828, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$828, DW_AT_TI_begin_line(0x868)
	.dwattr $C$DW$828, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$828, DW_AT_TI_max_frame_size(0x12)
	.dwpsn	file "./mp3_encode.c",line 2154,column 1,is_stmt,address _bin_search_StepSize

	.dwfde $C$DW$CIE, _bin_search_StepSize
$C$DW$829	.dwtag  DW_TAG_formal_parameter, DW_AT_name("desired_rate")
	.dwattr $C$DW$829, DW_AT_TI_symbol_name("_desired_rate")
	.dwattr $C$DW$829, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$829, DW_AT_location[DW_OP_reg0]
$C$DW$830	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ix")
	.dwattr $C$DW$830, DW_AT_TI_symbol_name("_ix")
	.dwattr $C$DW$830, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$830, DW_AT_location[DW_OP_reg17]
$C$DW$831	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cod_info")
	.dwattr $C$DW$831, DW_AT_TI_symbol_name("_cod_info")
	.dwattr $C$DW$831, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$831, DW_AT_location[DW_OP_reg19]
$C$DW$832	.dwtag  DW_TAG_formal_parameter, DW_AT_name("config")
	.dwattr $C$DW$832, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$832, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$832, DW_AT_location[DW_OP_reg21]
;*******************************************************************************
;* FUNCTION NAME: bin_search_StepSize                                          *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3, *
;*                        SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL             *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 18 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (16 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_bin_search_StepSize:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-17, SP
	.dwcfi	cfa_offset, 18
$C$DW$833	.dwtag  DW_TAG_variable, DW_AT_name("desired_rate")
	.dwattr $C$DW$833, DW_AT_TI_symbol_name("_desired_rate")
	.dwattr $C$DW$833, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$833, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$834	.dwtag  DW_TAG_variable, DW_AT_name("ix")
	.dwattr $C$DW$834, DW_AT_TI_symbol_name("_ix")
	.dwattr $C$DW$834, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$834, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$835	.dwtag  DW_TAG_variable, DW_AT_name("cod_info")
	.dwattr $C$DW$835, DW_AT_TI_symbol_name("_cod_info")
	.dwattr $C$DW$835, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$835, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$836	.dwtag  DW_TAG_variable, DW_AT_name("config")
	.dwattr $C$DW$836, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$836, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$836, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$837	.dwtag  DW_TAG_variable, DW_AT_name("bit")
	.dwattr $C$DW$837, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$837, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$837, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$838	.dwtag  DW_TAG_variable, DW_AT_name("next")
	.dwattr $C$DW$838, DW_AT_TI_symbol_name("_next")
	.dwattr $C$DW$838, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$838, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$839	.dwtag  DW_TAG_variable, DW_AT_name("count")
	.dwattr $C$DW$839, DW_AT_TI_symbol_name("_count")
	.dwattr $C$DW$839, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$839, DW_AT_location[DW_OP_bregx 0x24 12]
        MOV XAR2, dbl(*SP(#6))
        MOV XAR1, dbl(*SP(#4))
        MOV XAR0, dbl(*SP(#2))
        MOV AC0, dbl(*SP(#0)) ; |2154| 
	.dwpsn	file "./mp3_encode.c",line 2157,column 5,is_stmt
        MOV #-120, AC0 ; |2157| 
        MOV AC0, dbl(*SP(#10)) ; |2157| 
	.dwpsn	file "./mp3_encode.c",line 2158,column 5,is_stmt
        MOV #120, AC0 ; |2158| 
        MOV AC0, dbl(*SP(#12)) ; |2158| 
$C$L198:    
$C$DW$L$_bin_search_StepSize$2$B:

$C$DW$840	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$841	.dwtag  DW_TAG_variable, DW_AT_name("half")
	.dwattr $C$DW$841, DW_AT_TI_symbol_name("_half")
	.dwattr $C$DW$841, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$841, DW_AT_location[DW_OP_bregx 0x24 14]
	.dwpsn	file "./mp3_encode.c",line 2162,column 17,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |2162| 
        SFTL AC0, #-31, AC1 ; |2162| 
        ADD AC0, AC1 ; |2162| 
        SFTS AC1, #-1 ; |2162| 
        MOV AC1, dbl(*SP(#14)) ; |2162| 
	.dwpsn	file "./mp3_encode.c",line 2164,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR0
        MOV dbl(*SP(#6)), XAR1
        MOV dbl(*SP(#14)), AC0 ; |2164| 
        ADD dbl(*SP(#10)), AC0, AC0 ; |2164| 
$C$DW$842	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$842, DW_AT_low_pc(0x00)
	.dwattr $C$DW$842, DW_AT_name("_quantize")
	.dwattr $C$DW$842, DW_AT_TI_call
        CALL #_quantize ; |2164| 
                                        ; call occurs [#_quantize] ; |2164| 
        MOV #8192, AC1 ; |2164| 
        CMP AC0 <= AC1, TC1 ; |2164| 
        BCC $C$L199,TC1 ; |2164| 
                                        ; branchcc occurs ; |2164| 
$C$DW$L$_bin_search_StepSize$2$E:
$C$DW$L$_bin_search_StepSize$3$B:
	.dwpsn	file "./mp3_encode.c",line 2165,column 13,is_stmt
        AMOV #100000, XAR3 ; |2165| 
        MOV XAR3, AC0
        MOV AC0, dbl(*SP(#8)) ; |2165| 
        B $C$L200 ; |2165| 
                                        ; branch occurs ; |2165| 
$C$DW$L$_bin_search_StepSize$3$E:
$C$L199:    
$C$DW$L$_bin_search_StepSize$4$B:
	.dwpsn	file "./mp3_encode.c",line 2168,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR0
        MOV dbl(*SP(#4)), XAR1
$C$DW$843	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$843, DW_AT_low_pc(0x00)
	.dwattr $C$DW$843, DW_AT_name("_calc_runlen")
	.dwattr $C$DW$843, DW_AT_TI_call
        CALL #_calc_runlen ; |2168| 
                                        ; call occurs [#_calc_runlen] ; |2168| 
	.dwpsn	file "./mp3_encode.c",line 2169,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR0
        MOV dbl(*SP(#4)), XAR1
$C$DW$844	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$844, DW_AT_low_pc(0x00)
	.dwattr $C$DW$844, DW_AT_name("_count1_bitcount")
	.dwattr $C$DW$844, DW_AT_TI_call
        CALL #_count1_bitcount ; |2169| 
                                        ; call occurs [#_count1_bitcount] ; |2169| 
        MOV AC0, dbl(*SP(#8)) ; |2169| 
	.dwpsn	file "./mp3_encode.c",line 2170,column 13,is_stmt
        MOV dbl(*SP(#4)), XAR0
        MOV dbl(*SP(#6)), XAR1
$C$DW$845	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$845, DW_AT_low_pc(0x00)
	.dwattr $C$DW$845, DW_AT_name("_subdivide")
	.dwattr $C$DW$845, DW_AT_TI_call
        CALL #_subdivide ; |2170| 
                                        ; call occurs [#_subdivide] ; |2170| 
	.dwpsn	file "./mp3_encode.c",line 2171,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR0
        MOV dbl(*SP(#4)), XAR1
$C$DW$846	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$846, DW_AT_low_pc(0x00)
	.dwattr $C$DW$846, DW_AT_name("_bigv_tab_select")
	.dwattr $C$DW$846, DW_AT_TI_call
        CALL #_bigv_tab_select ; |2171| 
                                        ; call occurs [#_bigv_tab_select] ; |2171| 
	.dwpsn	file "./mp3_encode.c",line 2172,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR0
        MOV dbl(*SP(#4)), XAR1
$C$DW$847	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$847, DW_AT_low_pc(0x00)
	.dwattr $C$DW$847, DW_AT_name("_bigv_bitcount")
	.dwattr $C$DW$847, DW_AT_TI_call
        CALL #_bigv_bitcount ; |2172| 
                                        ; call occurs [#_bigv_bitcount] ; |2172| 
        ADD dbl(*SP(#8)), AC0, AC0 ; |2172| 
        MOV AC0, dbl(*SP(#8)) ; |2172| 
$C$DW$L$_bin_search_StepSize$4$E:
$C$L200:    
$C$DW$L$_bin_search_StepSize$5$B:
	.dwpsn	file "./mp3_encode.c",line 2175,column 9,is_stmt
        MOV dbl(*SP(#0)), AC0 ; |2175| 
        MOV dbl(*SP(#8)), AC1 ; |2175| 
        CMP AC1 >= AC0, TC1 ; |2175| 
        BCC $C$L201,TC1 ; |2175| 
                                        ; branchcc occurs ; |2175| 
$C$DW$L$_bin_search_StepSize$5$E:
$C$DW$L$_bin_search_StepSize$6$B:
	.dwpsn	file "./mp3_encode.c",line 2176,column 13,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |2176| 
        MOV AC0, dbl(*SP(#12)) ; |2176| 
        B $C$L202 ; |2176| 
                                        ; branch occurs ; |2176| 
$C$DW$L$_bin_search_StepSize$6$E:
$C$L201:    
$C$DW$L$_bin_search_StepSize$7$B:
	.dwpsn	file "./mp3_encode.c",line 2179,column 13,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |2179| 
        ADD dbl(*SP(#10)), AC0, AC0 ; |2179| 
        MOV AC0, dbl(*SP(#10)) ; |2179| 
	.dwpsn	file "./mp3_encode.c",line 2180,column 13,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |2180| 
        SUB AC0, dbl(*SP(#12)), AC0 ; |2180| 
        MOV AC0, dbl(*SP(#12)) ; |2180| 
$C$DW$L$_bin_search_StepSize$7$E:
$C$L202:    
$C$DW$L$_bin_search_StepSize$8$B:
	.dwendtag $C$DW$840

	.dwpsn	file "./mp3_encode.c",line 2182,column 14,is_stmt

        MOV dbl(*SP(#12)), AC1 ; |2182| 
||      MOV #1, AC0 ; |2182| 

        CMP AC1 > AC0, TC1 ; |2182| 
        BCC $C$L198,TC1 ; |2182| 
                                        ; branchcc occurs ; |2182| 
$C$DW$L$_bin_search_StepSize$8$E:
	.dwpsn	file "./mp3_encode.c",line 2184,column 5,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |2184| 
	.dwpsn	file "./mp3_encode.c",line 2185,column 1,is_stmt
        AADD #17, SP
	.dwcfi	cfa_offset, 1
$C$DW$848	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$848, DW_AT_low_pc(0x00)
	.dwattr $C$DW$848, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$849	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$849, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L198:1:1738864582")
	.dwattr $C$DW$849, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$849, DW_AT_TI_begin_line(0x870)
	.dwattr $C$DW$849, DW_AT_TI_end_line(0x886)
$C$DW$850	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$850, DW_AT_low_pc($C$DW$L$_bin_search_StepSize$2$B)
	.dwattr $C$DW$850, DW_AT_high_pc($C$DW$L$_bin_search_StepSize$2$E)
$C$DW$851	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$851, DW_AT_low_pc($C$DW$L$_bin_search_StepSize$3$B)
	.dwattr $C$DW$851, DW_AT_high_pc($C$DW$L$_bin_search_StepSize$3$E)
$C$DW$852	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$852, DW_AT_low_pc($C$DW$L$_bin_search_StepSize$4$B)
	.dwattr $C$DW$852, DW_AT_high_pc($C$DW$L$_bin_search_StepSize$4$E)
$C$DW$853	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$853, DW_AT_low_pc($C$DW$L$_bin_search_StepSize$5$B)
	.dwattr $C$DW$853, DW_AT_high_pc($C$DW$L$_bin_search_StepSize$5$E)
$C$DW$854	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$854, DW_AT_low_pc($C$DW$L$_bin_search_StepSize$6$B)
	.dwattr $C$DW$854, DW_AT_high_pc($C$DW$L$_bin_search_StepSize$6$E)
$C$DW$855	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$855, DW_AT_low_pc($C$DW$L$_bin_search_StepSize$7$B)
	.dwattr $C$DW$855, DW_AT_high_pc($C$DW$L$_bin_search_StepSize$7$E)
$C$DW$856	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$856, DW_AT_low_pc($C$DW$L$_bin_search_StepSize$8$B)
	.dwattr $C$DW$856, DW_AT_high_pc($C$DW$L$_bin_search_StepSize$8$E)
	.dwendtag $C$DW$849

	.dwattr $C$DW$828, DW_AT_TI_end_file("./mp3_encode.c")
	.dwattr $C$DW$828, DW_AT_TI_end_line(0x889)
	.dwattr $C$DW$828, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$828

	.sect	".text"
	.global	_shine_mdct_initialise

$C$DW$857	.dwtag  DW_TAG_subprogram, DW_AT_name("shine_mdct_initialise")
	.dwattr $C$DW$857, DW_AT_low_pc(_shine_mdct_initialise)
	.dwattr $C$DW$857, DW_AT_high_pc(0x00)
	.dwattr $C$DW$857, DW_AT_TI_symbol_name("_shine_mdct_initialise")
	.dwattr $C$DW$857, DW_AT_external
	.dwattr $C$DW$857, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$857, DW_AT_TI_begin_line(0x8a5)
	.dwattr $C$DW$857, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$857, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "./mp3_encode.c",line 2214,column 1,is_stmt,address _shine_mdct_initialise

	.dwfde $C$DW$CIE, _shine_mdct_initialise
$C$DW$858	.dwtag  DW_TAG_formal_parameter, DW_AT_name("config")
	.dwattr $C$DW$858, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$858, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$858, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: shine_mdct_initialise                                        *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,AR0,XAR0,AR1,AR3,XAR3,SP,CARRY,M40,  *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (10 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_shine_mdct_initialise:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-11, SP
	.dwcfi	cfa_offset, 12
$C$DW$859	.dwtag  DW_TAG_variable, DW_AT_name("config")
	.dwattr $C$DW$859, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$859, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$859, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$860	.dwtag  DW_TAG_variable, DW_AT_name("m")
	.dwattr $C$DW$860, DW_AT_TI_symbol_name("_m")
	.dwattr $C$DW$860, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$860, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$861	.dwtag  DW_TAG_variable, DW_AT_name("k")
	.dwattr $C$DW$861, DW_AT_TI_symbol_name("_k")
	.dwattr $C$DW$861, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$861, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./mp3_encode.c",line 2218,column 10,is_stmt
        MOV #18, AC0 ; |2218| 
        MOV AC0, dbl(*SP(#2)) ; |2218| 
        MOV dbl(*SP(#2)), AC0 ; |2218| 
        SUB #1, AC0, AC1 ; |2218| 
        MOV AC1, dbl(*SP(#2)) ; |2218| 
        BCC $C$L206,AC0 == #0 ; |2218| 
                                        ; branchcc occurs ; |2218| 
$C$L203:    
$C$DW$L$_shine_mdct_initialise$2$B:
	.dwpsn	file "./mp3_encode.c",line 2219,column 14,is_stmt
        MOV #36, AC0 ; |2219| 
        MOV AC0, dbl(*SP(#4)) ; |2219| 
        MOV dbl(*SP(#4)), AC0 ; |2219| 
        SUB #1, AC0, AC1 ; |2219| 
        MOV AC1, dbl(*SP(#4)) ; |2219| 
        BCC $C$L205,AC0 == #0 ; |2219| 
                                        ; branchcc occurs ; |2219| 
$C$DW$L$_shine_mdct_initialise$2$E:
$C$L204:    
$C$DW$L$_shine_mdct_initialise$3$B:
	.dwpsn	file "./mp3_encode.c",line 2222,column 13,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |2222| 
$C$DW$862	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$862, DW_AT_low_pc(0x00)
	.dwattr $C$DW$862, DW_AT_name("__fltlid")
	.dwattr $C$DW$862, DW_AT_TI_call
        CALL #__fltlid ; |2222| 
                                        ; call occurs [#__fltlid] ; |2222| 
        MOV dbl(*($C$FL9)), AC1 ; |2222| 
$C$DW$863	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$863, DW_AT_low_pc(0x00)
	.dwattr $C$DW$863, DW_AT_name("__addd")
	.dwattr $C$DW$863, DW_AT_TI_call
        CALL #__addd ; |2222| 
                                        ; call occurs [#__addd] ; |2222| 
        OR #0, AC0, AC1
        MOV dbl(*($C$FL12)), AC0 ; |2222| 
$C$DW$864	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$864, DW_AT_low_pc(0x00)
	.dwattr $C$DW$864, DW_AT_name("__mpyd")
	.dwattr $C$DW$864, DW_AT_TI_call
        CALL #__mpyd ; |2222| 
                                        ; call occurs [#__mpyd] ; |2222| 
$C$DW$865	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$865, DW_AT_low_pc(0x00)
	.dwattr $C$DW$865, DW_AT_name("_sin")
	.dwattr $C$DW$865, DW_AT_TI_call
        CALL #_sin ; |2222| 
                                        ; call occurs [#_sin] ; |2222| 
        MOV AC0, dbl(*SP(#8)) ; |2222| 
        MOV dbl(*SP(#4)), AC0 ; |2222| 
        SFTL AC0, #1 ; |2222| 
        ADD #19, AC0, AC0 ; |2222| 
$C$DW$866	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$866, DW_AT_low_pc(0x00)
	.dwattr $C$DW$866, DW_AT_name("__fltlid")
	.dwattr $C$DW$866, DW_AT_TI_call
        CALL #__fltlid ; |2222| 
                                        ; call occurs [#__fltlid] ; |2222| 
        OR #0, AC0, AC1
        MOV dbl(*($C$FL13)), AC0 ; |2222| 
$C$DW$867	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$867, DW_AT_low_pc(0x00)
	.dwattr $C$DW$867, DW_AT_name("__mpyd")
	.dwattr $C$DW$867, DW_AT_TI_call
        CALL #__mpyd ; |2222| 
                                        ; call occurs [#__mpyd] ; |2222| 
        MOV AC0, dbl(*SP(#6)) ; |2222| 
        MOV dbl(*SP(#2)), AC0 ; |2222| 
        SFTL AC0, #1 ; |2222| 
$C$DW$868	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$868, DW_AT_low_pc(0x00)
	.dwattr $C$DW$868, DW_AT_name("__fltlid")
	.dwattr $C$DW$868, DW_AT_TI_call

        CALL #__fltlid ; |2222| 
||      ADD #1, AC0, AC0 ; |2222| 

                                        ; call occurs [#__fltlid] ; |2222| 

        MOV dbl(*SP(#6)), AC0 ; |2222| 
||      OR #0, AC0, AC1

$C$DW$869	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$869, DW_AT_low_pc(0x00)
	.dwattr $C$DW$869, DW_AT_name("__mpyd")
	.dwattr $C$DW$869, DW_AT_TI_call
        CALL #__mpyd ; |2222| 
                                        ; call occurs [#__mpyd] ; |2222| 
$C$DW$870	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$870, DW_AT_low_pc(0x00)
	.dwattr $C$DW$870, DW_AT_name("_cos")
	.dwattr $C$DW$870, DW_AT_TI_call
        CALL #_cos ; |2222| 
                                        ; call occurs [#_cos] ; |2222| 

        MOV dbl(*SP(#8)), AC0 ; |2222| 
||      OR #0, AC0, AC1

$C$DW$871	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$871, DW_AT_low_pc(0x00)
	.dwattr $C$DW$871, DW_AT_name("__mpyd")
	.dwattr $C$DW$871, DW_AT_TI_call
        CALL #__mpyd ; |2222| 
                                        ; call occurs [#__mpyd] ; |2222| 
        MOV dbl(*($C$FL8)), AC1 ; |2222| 
$C$DW$872	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$872, DW_AT_low_pc(0x00)
	.dwattr $C$DW$872, DW_AT_name("__mpyd")
	.dwattr $C$DW$872, DW_AT_TI_call
        CALL #__mpyd ; |2222| 
                                        ; call occurs [#__mpyd] ; |2222| 
$C$DW$L$_shine_mdct_initialise$3$E:
$C$DW$L$_shine_mdct_initialise$4$B:
$C$DW$873	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$873, DW_AT_low_pc(0x00)
	.dwattr $C$DW$873, DW_AT_name("__fixdli")
	.dwattr $C$DW$873, DW_AT_TI_call
        CALL #__fixdli ; |2222| 
                                        ; call occurs [#__fixdli] ; |2222| 
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#3), #72, AC1 ; |2222| 
        MOV AC1, AR1 ; |2222| 

        MOV *SP(#5), AR1 ; |2222| 
||      AADD AR1, AR3 ; |2222| 

        SFTL AR1, #1 ; |2222| 
        AADD AR1, AR3 ; |2222| 
        MOV AC0, dbl(*AR3(#854)) ; |2222| 
        MOV dbl(*SP(#4)), AC0 ; |2222| 
        SUB #1, AC0, AC1 ; |2222| 
        MOV AC1, dbl(*SP(#4)) ; |2222| 
        BCC $C$L204,AC0 != #0 ; |2222| 
                                        ; branchcc occurs ; |2222| 
$C$DW$L$_shine_mdct_initialise$4$E:
$C$L205:    
$C$DW$L$_shine_mdct_initialise$5$B:
        MOV dbl(*SP(#2)), AC0 ; |2222| 
        SUB #1, AC0, AC1 ; |2222| 
        MOV AC1, dbl(*SP(#2)) ; |2222| 
        BCC $C$L203,AC0 != #0 ; |2222| 
                                        ; branchcc occurs ; |2222| 
$C$DW$L$_shine_mdct_initialise$5$E:
	.dwpsn	file "./mp3_encode.c",line 2223,column 1,is_stmt
$C$L206:    
        AADD #11, SP
	.dwcfi	cfa_offset, 1
$C$DW$874	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$874, DW_AT_low_pc(0x00)
	.dwattr $C$DW$874, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$875	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$875, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L203:1:1738864582")
	.dwattr $C$DW$875, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$875, DW_AT_TI_begin_line(0x8aa)
	.dwattr $C$DW$875, DW_AT_TI_end_line(0x8ae)
$C$DW$876	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$876, DW_AT_low_pc($C$DW$L$_shine_mdct_initialise$2$B)
	.dwattr $C$DW$876, DW_AT_high_pc($C$DW$L$_shine_mdct_initialise$2$E)
$C$DW$877	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$877, DW_AT_low_pc($C$DW$L$_shine_mdct_initialise$5$B)
	.dwattr $C$DW$877, DW_AT_high_pc($C$DW$L$_shine_mdct_initialise$5$E)

$C$DW$878	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$878, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L204:2:1738864582")
	.dwattr $C$DW$878, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$878, DW_AT_TI_begin_line(0x8ab)
	.dwattr $C$DW$878, DW_AT_TI_end_line(0x8ae)
$C$DW$879	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$879, DW_AT_low_pc($C$DW$L$_shine_mdct_initialise$3$B)
	.dwattr $C$DW$879, DW_AT_high_pc($C$DW$L$_shine_mdct_initialise$3$E)
$C$DW$880	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$880, DW_AT_low_pc($C$DW$L$_shine_mdct_initialise$4$B)
	.dwattr $C$DW$880, DW_AT_high_pc($C$DW$L$_shine_mdct_initialise$4$E)
	.dwendtag $C$DW$878

	.dwendtag $C$DW$875

	.dwattr $C$DW$857, DW_AT_TI_end_file("./mp3_encode.c")
	.dwattr $C$DW$857, DW_AT_TI_end_line(0x8af)
	.dwattr $C$DW$857, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$857

	.sect	".text"
	.global	_shine_mdct_sub

$C$DW$881	.dwtag  DW_TAG_subprogram, DW_AT_name("shine_mdct_sub")
	.dwattr $C$DW$881, DW_AT_low_pc(_shine_mdct_sub)
	.dwattr $C$DW$881, DW_AT_high_pc(0x00)
	.dwattr $C$DW$881, DW_AT_TI_symbol_name("_shine_mdct_sub")
	.dwattr $C$DW$881, DW_AT_external
	.dwattr $C$DW$881, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$881, DW_AT_TI_begin_line(0x8b5)
	.dwattr $C$DW$881, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$881, DW_AT_TI_max_frame_size(0x60)
	.dwpsn	file "./mp3_encode.c",line 2230,column 1,is_stmt,address _shine_mdct_sub

	.dwfde $C$DW$CIE, _shine_mdct_sub
$C$DW$882	.dwtag  DW_TAG_formal_parameter, DW_AT_name("config")
	.dwattr $C$DW$882, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$882, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$882, DW_AT_location[DW_OP_reg17]
$C$DW$883	.dwtag  DW_TAG_formal_parameter, DW_AT_name("stride")
	.dwattr $C$DW$883, DW_AT_TI_symbol_name("_stride")
	.dwattr $C$DW$883, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$883, DW_AT_location[DW_OP_reg0]
;*******************************************************************************
;* FUNCTION NAME: shine_mdct_sub                                               *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,AC2,AC2,T0,AR0,XAR0,AR1,XAR1,AR2,    *
;*                        XAR2,AR3,XAR3,FP,XFP,SP,CSR,RPTC,CARRY,TC1,M40,SATA, *
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Save On Entry Regs : FP                                                   *
;*   Stack Frame        : Full (Frame Pointer in AR6, w/ debug)                *
;*   Total Frame Size   : 96 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (94 local values)                                    *
;*                        (1 register save area)                               *
;*   Min System Stack   : 2 words                                              *
;*******************************************************************************
_shine_mdct_sub:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        PSHBOTH XFP
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 32, -2
        AADD #-94, SP
        AMAR *SP(#0), XFP
	.dwcfi	cfa_offset, 96
$C$DW$884	.dwtag  DW_TAG_variable, DW_AT_name("config")
	.dwattr $C$DW$884, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$884, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$884, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$885	.dwtag  DW_TAG_variable, DW_AT_name("stride")
	.dwattr $C$DW$885, DW_AT_TI_symbol_name("_stride")
	.dwattr $C$DW$885, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$885, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$886	.dwtag  DW_TAG_variable, DW_AT_name("mdct_enc")
	.dwattr $C$DW$886, DW_AT_TI_symbol_name("_mdct_enc")
	.dwattr $C$DW$886, DW_AT_type(*$C$DW$T$247)
	.dwattr $C$DW$886, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$887	.dwtag  DW_TAG_variable, DW_AT_name("ch")
	.dwattr $C$DW$887, DW_AT_TI_symbol_name("_ch")
	.dwattr $C$DW$887, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$887, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$888	.dwtag  DW_TAG_variable, DW_AT_name("gr")
	.dwattr $C$DW$888, DW_AT_TI_symbol_name("_gr")
	.dwattr $C$DW$888, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$888, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$889	.dwtag  DW_TAG_variable, DW_AT_name("band")
	.dwattr $C$DW$889, DW_AT_TI_symbol_name("_band")
	.dwattr $C$DW$889, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$889, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$890	.dwtag  DW_TAG_variable, DW_AT_name("j")
	.dwattr $C$DW$890, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$890, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$890, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$891	.dwtag  DW_TAG_variable, DW_AT_name("k")
	.dwattr $C$DW$891, DW_AT_TI_symbol_name("_k")
	.dwattr $C$DW$891, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$891, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$892	.dwtag  DW_TAG_variable, DW_AT_name("mdct_in")
	.dwattr $C$DW$892, DW_AT_TI_symbol_name("_mdct_in")
	.dwattr $C$DW$892, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$892, DW_AT_location[DW_OP_bregx 0x24 16]
        MOV AC0, dbl(*SP(#2)) ; |2230| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./mp3_encode.c",line 2239,column 10,is_stmt
        MOV #1, AC0 ; |2239| 
        MOV AC0, dbl(*SP(#6)) ; |2239| 
        MOV dbl(*SP(#6)), AC0 ; |2239| 
        SUB #1, AC0, AC1 ; |2239| 
        MOV AC1, dbl(*SP(#6)) ; |2239| 
        BCC $C$L225,AC0 == #0 ; |2239| 
                                        ; branchcc occurs ; |2239| 
$C$L207:    
$C$DW$L$_shine_mdct_sub$2$B:
	.dwpsn	file "./mp3_encode.c",line 2241,column 14,is_stmt
        MOV #0, AC0 ; |2241| 
        MOV AC0, dbl(*SP(#8)) ; |2241| 
	.dwpsn	file "./mp3_encode.c",line 2241,column 22,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#8)), AC1 ; |2241| 
        MOV *AR3(#722), AC0 ; |2241| 
        CMP AC1 >= AC0, TC1 ; |2241| 
        BCC $C$L222,TC1 ; |2241| 
                                        ; branchcc occurs ; |2241| 
$C$DW$L$_shine_mdct_sub$2$E:
$C$L208:    
$C$DW$L$_shine_mdct_sub$3$B:
	.dwpsn	file "./mp3_encode.c",line 2244,column 13,is_stmt
        MOV *SP(#7) << #16, AC0
        MPYK #1152, AC0, AC0 ; |2244| 
        MOV AC0, AR1 ; |2244| 
        MOV *SP(#9) << #16, AC0
        MPYK #1152, AC0, AC0 ; |2244| 

        MOV AC0, AR1 ; |2244| 
||      AADD AR1, AR3 ; |2244| 

        AADD AR1, AR3 ; |2244| 
        AMAR *+AR3(#10728) ; |2244| 
        MOV XAR3, dbl(*SP(#4))
	.dwpsn	file "./mp3_encode.c",line 2247,column 18,is_stmt
        MOV #0, AC0 ; |2247| 
        MOV AC0, dbl(*SP(#14)) ; |2247| 
	.dwpsn	file "./mp3_encode.c",line 2247,column 25,is_stmt
        MOV dbl(*SP(#14)), AC1 ; |2247| 
        MOV #18, AC0 ; |2247| 
        CMP AC1 >= AC0, TC1 ; |2247| 
        BCC $C$L212,TC1 ; |2247| 
                                        ; branchcc occurs ; |2247| 
$C$DW$L$_shine_mdct_sub$3$E:
$C$L209:    
$C$DW$L$_shine_mdct_sub$4$B:
	.dwpsn	file "./mp3_encode.c",line 2249,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV *SP(#7), AR1 ; |2249| 
        SFTL AR1, #1 ; |2249| 
        MOV *SP(#7) << #16, AC0
        MPYK #2304, AC0, AC0 ; |2249| 

        AADD AR1, AR0 ; |2249| 
||      MOV AC0, AR2 ; |2249| 

        MOV dbl(*SP(#0)), XAR1
        MOV dbl(*SP(#8)), AC0 ; |2249| 
        ADD #1, AC0 ; |2249| 
        SFTS AC0, #16, AC0
        MPYK #1152, AC0, AC0 ; |2249| 

        MOV AC0, AR2 ; |2249| 
||      AADD AR2, AR1 ; |2249| 

        MOV *SP(#15) << #6, AC0 ; |2249| 

        MOV AC0, AR2 ; |2249| 
||      AADD AR2, AR1 ; |2249| 

        MOV dbl(*SP(#2)), AC1 ; |2249| 

        MOV dbl(*SP(#6)), AC0 ; |2249| 
||      AADD AR2, AR1 ; |2249| 

        MOV dbl(*SP(#0)), XAR2
        AMAR *+AR1(#8424) ; |2249| 
$C$DW$893	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$893, DW_AT_low_pc(0x00)
	.dwattr $C$DW$893, DW_AT_name("_shine_window_filter_subband")
	.dwattr $C$DW$893, DW_AT_TI_call
        CALL #_shine_window_filter_subband ; |2249| 
                                        ; call occurs [#_shine_window_filter_subband] ; |2249| 
	.dwpsn	file "./mp3_encode.c",line 2251,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV *SP(#7), AR1 ; |2251| 
        SFTL AR1, #1 ; |2251| 
        MOV *SP(#7) << #16, AC0
        MPYK #2304, AC0, AC0 ; |2251| 

        MOV AC0, AR2 ; |2251| 
||      AADD AR1, AR0 ; |2251| 

        MOV dbl(*SP(#0)), XAR1
        MOV dbl(*SP(#8)), AC0 ; |2251| 
        ADD #1, AC0 ; |2251| 
        SFTS AC0, #16, AC0
        MPYK #1152, AC0, AC0 ; |2251| 

        MOV AC0, AR2 ; |2251| 
||      AADD AR2, AR1 ; |2251| 

        MOV dbl(*SP(#14)), AC0 ; |2251| 
        ADD #1, AC0 ; |2251| 
        SFTS AC0, #6, AC0 ; |2251| 

        MOV AC0, AR2 ; |2251| 
||      AADD AR2, AR1 ; |2251| 

        MOV dbl(*SP(#2)), AC1 ; |2251| 

        MOV dbl(*SP(#6)), AC0 ; |2251| 
||      AADD AR2, AR1 ; |2251| 

        AMAR *+AR1(#8424) ; |2251| 
        MOV dbl(*SP(#0)), XAR2
$C$DW$894	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$894, DW_AT_low_pc(0x00)
	.dwattr $C$DW$894, DW_AT_name("_shine_window_filter_subband")
	.dwattr $C$DW$894, DW_AT_TI_call
        CALL #_shine_window_filter_subband ; |2251| 
                                        ; call occurs [#_shine_window_filter_subband] ; |2251| 
	.dwpsn	file "./mp3_encode.c",line 2256,column 22,is_stmt
        MOV #1, AC0 ; |2256| 
        MOV AC0, dbl(*SP(#10)) ; |2256| 
	.dwpsn	file "./mp3_encode.c",line 2256,column 32,is_stmt
        MOV #32, AC0 ; |2256| 
        MOV dbl(*SP(#10)), AC1 ; |2256| 
        CMP AC1 >= AC0, TC1 ; |2256| 
        BCC $C$L211,TC1 ; |2256| 
                                        ; branchcc occurs ; |2256| 
$C$DW$L$_shine_mdct_sub$4$E:
$C$L210:    
$C$DW$L$_shine_mdct_sub$5$B:
	.dwpsn	file "./mp3_encode.c",line 2257,column 21,is_stmt
        MOV *SP(#11) << #1, AC0 ; |2257| 
        MOV dbl(*SP(#0)), XAR3

        MOV *SP(#7) << #16, AC0
||      MOV AC0, T0 ; |2257| 

        MPYK #2304, AC0, AC0 ; |2257| 
        MOV AC0, AR1 ; |2257| 
        MOV dbl(*SP(#8)), AC0 ; |2257| 
        ADD #1, AC0 ; |2257| 
        SFTS AC0, #16, AC0
        MPYK #1152, AC0, AC0 ; |2257| 

        MOV AC0, AR1 ; |2257| 
||      AADD AR1, AR3 ; |2257| 

        MOV dbl(*SP(#14)), AC0 ; |2257| 
        ADD #1, AC0 ; |2257| 
        SFTS AC0, #6, AC0 ; |2257| 

        MOV AC0, AR1 ; |2257| 
||      AADD AR1, AR3 ; |2257| 

        AADD AR1, AR3 ; |2257| 
        AMAR *+AR3(#8424) ; |2257| 
        MOV dbl(*AR3(T0)), AC0 ; |2257| 
        NEG AC0, AC0 ; |2257| 
        MOV AC0, dbl(*AR3(T0)) ; |2257| 
	.dwpsn	file "./mp3_encode.c",line 2256,column 43,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |2256| 
        ADD #2, AC0 ; |2256| 
        MOV AC0, dbl(*SP(#10)) ; |2256| 
	.dwpsn	file "./mp3_encode.c",line 2256,column 32,is_stmt
        MOV dbl(*SP(#10)), AC1 ; |2256| 
        MOV #32, AC0 ; |2256| 
        CMP AC1 < AC0, TC1 ; |2256| 
        BCC $C$L210,TC1 ; |2256| 
                                        ; branchcc occurs ; |2256| 
$C$DW$L$_shine_mdct_sub$5$E:
$C$L211:    
$C$DW$L$_shine_mdct_sub$6$B:
	.dwpsn	file "./mp3_encode.c",line 2247,column 33,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |2247| 
        ADD #2, AC0 ; |2247| 
        MOV AC0, dbl(*SP(#14)) ; |2247| 
	.dwpsn	file "./mp3_encode.c",line 2247,column 25,is_stmt
        MOV dbl(*SP(#14)), AC1 ; |2247| 
        MOV #18, AC0 ; |2247| 
        CMP AC1 < AC0, TC1 ; |2247| 
        BCC $C$L209,TC1 ; |2247| 
                                        ; branchcc occurs ; |2247| 
$C$DW$L$_shine_mdct_sub$6$E:
$C$L212:    
$C$DW$L$_shine_mdct_sub$7$B:
	.dwpsn	file "./mp3_encode.c",line 2261,column 18,is_stmt
        MOV #0, AC0 ; |2261| 
        MOV AC0, dbl(*SP(#10)) ; |2261| 
	.dwpsn	file "./mp3_encode.c",line 2261,column 28,is_stmt
        MOV dbl(*SP(#10)), AC1 ; |2261| 
        MOV #32, AC0 ; |2261| 
        CMP AC1 >= AC0, TC1 ; |2261| 
        BCC $C$L221,TC1 ; |2261| 
                                        ; branchcc occurs ; |2261| 
$C$DW$L$_shine_mdct_sub$7$E:
$C$L213:    
$C$DW$L$_shine_mdct_sub$8$B:
	.dwpsn	file "./mp3_encode.c",line 2263,column 22,is_stmt
        MOV #18, AC0 ; |2263| 
        MOV AC0, dbl(*SP(#14)) ; |2263| 
        MOV dbl(*SP(#14)), AC0 ; |2263| 
        SUB #1, AC0, AC1 ; |2263| 
        MOV AC1, dbl(*SP(#14)) ; |2263| 
        BCC $C$L215,AC0 == #0 ; |2263| 
                                        ; branchcc occurs ; |2263| 
$C$DW$L$_shine_mdct_sub$8$E:
$C$L214:    
$C$DW$L$_shine_mdct_sub$9$B:
	.dwpsn	file "./mp3_encode.c",line 2265,column 21,is_stmt
        MOV *SP(#7) << #16, AC0
        MOV dbl(*SP(#0)), XAR2
        MPYK #2304, AC0, AC0 ; |2265| 
        MOV AC0, AR1 ; |2265| 
        MOV *SP(#9) << #16, AC0
        MPYK #1152, AC0, AC0 ; |2265| 

        MOV AC0, AR1 ; |2265| 
||      AADD AR1, AR2 ; |2265| 

        MOV *SP(#15) << #6, AC0 ; |2265| 

        MOV AC0, AR1 ; |2265| 
||      AADD AR1, AR2 ; |2265| 

        MOV *SP(#11), AR1 ; |2265| 
||      AADD AR1, AR2 ; |2265| 

        SFTL AR1, #1 ; |2265| 

        MOV *SP(#15), AR1 ; |2265| 
||      AADD AR1, AR2 ; |2265| 

        SFTL AR1, #1 ; |2265| 
        MOV #8424, T0 ; |2265| 
        AMAR *SP(#16), XAR3
        AADD AR1, AR3 ; |2265| 
        MOV dbl(*AR2(T0)), dbl(*AR3) ; |2265| 
	.dwpsn	file "./mp3_encode.c",line 2266,column 21,is_stmt
        MOV *SP(#7) << #16, AC0
        MOV dbl(*SP(#0)), XAR2
        MPYK #2304, AC0, AC0 ; |2266| 
        MOV AC0, AR1 ; |2266| 
        MOV dbl(*SP(#8)), AC0 ; |2266| 
        ADD #1, AC0 ; |2266| 
        SFTS AC0, #16, AC0
        MPYK #1152, AC0, AC0 ; |2266| 

        MOV AC0, AR1 ; |2266| 
||      AADD AR1, AR2 ; |2266| 

        MOV *SP(#15) << #6, AC0 ; |2266| 

        MOV AC0, AR1 ; |2266| 
||      AADD AR1, AR2 ; |2266| 

        MOV *SP(#11), AR1 ; |2266| 
||      AADD AR1, AR2 ; |2266| 

        SFTL AR1, #1 ; |2266| 
        MOV #18, AC0 ; |2266| 
        ADD dbl(*SP(#14)), AC0, AC0 ; |2266| 

        MOV AC0, AR1 ; |2266| 
||      AADD AR1, AR2 ; |2266| 

        SFTL AR1, #1 ; |2266| 
        AMAR *SP(#16), XAR3
        AADD AR1, AR3 ; |2266| 
        MOV dbl(*AR2(T0)), dbl(*AR3) ; |2266| 
	.dwpsn	file "./mp3_encode.c",line 2267,column 17,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |2267| 
        SUB #1, AC0, AC1 ; |2267| 
        MOV AC1, dbl(*SP(#14)) ; |2267| 
        BCC $C$L214,AC0 != #0 ; |2267| 
                                        ; branchcc occurs ; |2267| 
$C$DW$L$_shine_mdct_sub$9$E:
$C$L215:    
$C$DW$L$_shine_mdct_sub$10$B:
	.dwpsn	file "./mp3_encode.c",line 2274,column 22,is_stmt
        MOV #18, AC0 ; |2274| 
        MOV AC0, dbl(*SP(#14)) ; |2274| 
        MOV dbl(*SP(#14)), AC0 ; |2274| 
        SUB #1, AC0, AC1 ; |2274| 
        MOV AC1, dbl(*SP(#14)) ; |2274| 
        BCC $C$L219,AC0 == #0 ; |2274| 
                                        ; branchcc occurs ; |2274| 
$C$DW$L$_shine_mdct_sub$10$E:
$C$L216:    
$C$DW$L$_shine_mdct_sub$11$B:

$C$DW$895	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$896	.dwtag  DW_TAG_variable, DW_AT_name("vm")
	.dwattr $C$DW$896, DW_AT_TI_symbol_name("_vm")
	.dwattr $C$DW$896, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$896, DW_AT_location[DW_OP_bregx 0x24 88]
	.dwpsn	file "./mp3_encode.c",line 2279,column 21,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#15), #72, AC1 ; |2279| 
        MOV AC1, AR1 ; |2279| 

        AADD AR1, AR3 ; |2279| 
||      MOV dbl(*SP(#86)), AC0 ; |2279| 

        MOV dbl(*AR3(#924)), AC1 ; |2279| 
$C$DW$897	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$897, DW_AT_low_pc(0x00)
	.dwattr $C$DW$897, DW_AT_name("__mpylli")
	.dwattr $C$DW$897, DW_AT_TI_call
        CALL #__mpylli ; |2279| 
                                        ; call occurs [#__mpylli] ; |2279| 
        BSET ST1_M40
        SFTS AC0, #-16, AC0 ; |2279| 
        MOV AC0, dbl(*SP(#88)) ; |2279| 
	.dwpsn	file "./mp3_encode.c",line 2280,column 26,is_stmt
        MOV #35, AC0 ; |2280| 
        MOV AC0, dbl(*SP(#12)) ; |2280| 
        MOV dbl(*SP(#12)), AC0 ; |2280| 
        BCLR ST1_M40
        BCC $C$L218,AC0 == #0 ; |2280| 
                                        ; branchcc occurs ; |2280| 
$C$DW$L$_shine_mdct_sub$11$E:
$C$L217:    
$C$DW$L$_shine_mdct_sub$12$B:
	.dwpsn	file "./mp3_encode.c",line 2282,column 25,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |2282| 
        SUB #1, AC0 ; |2282| 
        MOV AC0, T0 ; |2282| 
        SFTL T0, #1 ; |2282| 
        MPYMK *SP(#15), #72, AC1 ; |2282| 

        MOV AC1, AR1 ; |2282| 
||      AMAR *SP(#16), XAR3

        MOV dbl(*AR3(T0)), AC0 ; |2282| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#12)), AC1 ; |2282| 
        SUB #1, AC1 ; |2282| 

        MOV AC1, AR1 ; |2282| 
||      AADD AR1, AR3 ; |2282| 

        SFTL AR1, #1 ; |2282| 
        AADD AR1, AR3 ; |2282| 
        MOV dbl(*AR3(#854)), AC1 ; |2282| 
$C$DW$898	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$898, DW_AT_low_pc(0x00)
	.dwattr $C$DW$898, DW_AT_name("__mpylli")
	.dwattr $C$DW$898, DW_AT_TI_call
        CALL #__mpylli ; |2282| 
                                        ; call occurs [#__mpylli] ; |2282| 
        BSET ST1_M40

        BCLR ST1_M40
||      SFTS AC0, #-16, AC0 ; |2282| 

        ADD dbl(*SP(#88)), AC0, AC0 ; |2282| 
        MOV AC0, dbl(*SP(#88)) ; |2282| 
	.dwpsn	file "./mp3_encode.c",line 2283,column 25,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |2283| 
        SUB #2, AC0 ; |2283| 
        MOV AC0, T0 ; |2283| 
        SFTL T0, #1 ; |2283| 
        MPYMK *SP(#15), #72, AC1 ; |2283| 

        MOV AC1, AR1 ; |2283| 
||      AMAR *SP(#16), XAR3

        MOV dbl(*AR3(T0)), AC0 ; |2283| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#12)), AC1 ; |2283| 
        SUB #2, AC1 ; |2283| 

        MOV AC1, AR1 ; |2283| 
||      AADD AR1, AR3 ; |2283| 

        SFTL AR1, #1 ; |2283| 
        AADD AR1, AR3 ; |2283| 
        MOV dbl(*AR3(#854)), AC1 ; |2283| 
$C$DW$899	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$899, DW_AT_low_pc(0x00)
	.dwattr $C$DW$899, DW_AT_name("__mpylli")
	.dwattr $C$DW$899, DW_AT_TI_call
        CALL #__mpylli ; |2283| 
                                        ; call occurs [#__mpylli] ; |2283| 
        BSET ST1_M40

        BCLR ST1_M40
||      SFTS AC0, #-16, AC0 ; |2283| 

        ADD dbl(*SP(#88)), AC0, AC0 ; |2283| 
        MOV AC0, dbl(*SP(#88)) ; |2283| 
	.dwpsn	file "./mp3_encode.c",line 2284,column 25,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |2284| 
        SUB #3, AC0 ; |2284| 
        MOV AC0, T0 ; |2284| 
        SFTL T0, #1 ; |2284| 
        MPYMK *SP(#15), #72, AC1 ; |2284| 

        MOV AC1, AR1 ; |2284| 
||      AMAR *SP(#16), XAR3

        MOV dbl(*AR3(T0)), AC0 ; |2284| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#12)), AC1 ; |2284| 
        SUB #3, AC1 ; |2284| 

        MOV AC1, AR1 ; |2284| 
||      AADD AR1, AR3 ; |2284| 

        SFTL AR1, #1 ; |2284| 
        AADD AR1, AR3 ; |2284| 
        MOV dbl(*AR3(#854)), AC1 ; |2284| 
$C$DW$900	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$900, DW_AT_low_pc(0x00)
	.dwattr $C$DW$900, DW_AT_name("__mpylli")
	.dwattr $C$DW$900, DW_AT_TI_call
        CALL #__mpylli ; |2284| 
                                        ; call occurs [#__mpylli] ; |2284| 
        BSET ST1_M40

        BCLR ST1_M40
||      SFTS AC0, #-16, AC0 ; |2284| 

        ADD dbl(*SP(#88)), AC0, AC0 ; |2284| 
        MOV AC0, dbl(*SP(#88)) ; |2284| 
	.dwpsn	file "./mp3_encode.c",line 2285,column 25,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |2285| 
        SUB #4, AC0 ; |2285| 
        MOV AC0, T0 ; |2285| 
        SFTL T0, #1 ; |2285| 
        MPYMK *SP(#15), #72, AC1 ; |2285| 

        MOV AC1, AR1 ; |2285| 
||      AMAR *SP(#16), XAR3

        MOV dbl(*AR3(T0)), AC0 ; |2285| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#12)), AC1 ; |2285| 
        SUB #4, AC1 ; |2285| 

        MOV AC1, AR1 ; |2285| 
||      AADD AR1, AR3 ; |2285| 

        SFTL AR1, #1 ; |2285| 
        AADD AR1, AR3 ; |2285| 
        MOV dbl(*AR3(#854)), AC1 ; |2285| 
$C$DW$901	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$901, DW_AT_low_pc(0x00)
	.dwattr $C$DW$901, DW_AT_name("__mpylli")
	.dwattr $C$DW$901, DW_AT_TI_call
        CALL #__mpylli ; |2285| 
                                        ; call occurs [#__mpylli] ; |2285| 
        BSET ST1_M40

        BCLR ST1_M40
||      SFTS AC0, #-16, AC0 ; |2285| 

        ADD dbl(*SP(#88)), AC0, AC0 ; |2285| 
        MOV AC0, dbl(*SP(#88)) ; |2285| 
	.dwpsn	file "./mp3_encode.c",line 2286,column 25,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |2286| 
        SUB #5, AC0 ; |2286| 
        MOV AC0, T0 ; |2286| 
        SFTL T0, #1 ; |2286| 
        MPYMK *SP(#15), #72, AC1 ; |2286| 

        MOV AC1, AR1 ; |2286| 
||      AMAR *SP(#16), XAR3

        MOV dbl(*AR3(T0)), AC0 ; |2286| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#12)), AC1 ; |2286| 
        SUB #5, AC1 ; |2286| 

        MOV AC1, AR1 ; |2286| 
||      AADD AR1, AR3 ; |2286| 

        SFTL AR1, #1 ; |2286| 
        AADD AR1, AR3 ; |2286| 
        MOV dbl(*AR3(#854)), AC1 ; |2286| 
$C$DW$902	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$902, DW_AT_low_pc(0x00)
	.dwattr $C$DW$902, DW_AT_name("__mpylli")
	.dwattr $C$DW$902, DW_AT_TI_call
        CALL #__mpylli ; |2286| 
                                        ; call occurs [#__mpylli] ; |2286| 
        BSET ST1_M40

        BCLR ST1_M40
||      SFTS AC0, #-16, AC0 ; |2286| 

        ADD dbl(*SP(#88)), AC0, AC0 ; |2286| 
        MOV AC0, dbl(*SP(#88)) ; |2286| 
	.dwpsn	file "./mp3_encode.c",line 2287,column 25,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |2287| 
        SUB #6, AC0 ; |2287| 
        MOV AC0, T0 ; |2287| 
        SFTL T0, #1 ; |2287| 
        MPYMK *SP(#15), #72, AC1 ; |2287| 

        MOV AC1, AR1 ; |2287| 
||      AMAR *SP(#16), XAR3

        MOV dbl(*AR3(T0)), AC0 ; |2287| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#12)), AC1 ; |2287| 
        SUB #6, AC1 ; |2287| 

        MOV AC1, AR1 ; |2287| 
||      AADD AR1, AR3 ; |2287| 

        SFTL AR1, #1 ; |2287| 
        AADD AR1, AR3 ; |2287| 
        MOV dbl(*AR3(#854)), AC1 ; |2287| 
$C$DW$903	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$903, DW_AT_low_pc(0x00)
	.dwattr $C$DW$903, DW_AT_name("__mpylli")
	.dwattr $C$DW$903, DW_AT_TI_call
        CALL #__mpylli ; |2287| 
                                        ; call occurs [#__mpylli] ; |2287| 
        BSET ST1_M40

        BCLR ST1_M40
||      SFTS AC0, #-16, AC0 ; |2287| 

        ADD dbl(*SP(#88)), AC0, AC0 ; |2287| 
        MOV AC0, dbl(*SP(#88)) ; |2287| 
	.dwpsn	file "./mp3_encode.c",line 2288,column 25,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |2288| 
        SUB #7, AC0 ; |2288| 
        MOV AC0, T0 ; |2288| 
        SFTL T0, #1 ; |2288| 
        MPYMK *SP(#15), #72, AC1 ; |2288| 

        MOV AC1, AR1 ; |2288| 
||      AMAR *SP(#16), XAR3

        MOV dbl(*AR3(T0)), AC0 ; |2288| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#12)), AC1 ; |2288| 
        SUB #7, AC1 ; |2288| 

        MOV AC1, AR1 ; |2288| 
||      AADD AR1, AR3 ; |2288| 

        SFTL AR1, #1 ; |2288| 
        AADD AR1, AR3 ; |2288| 
        MOV dbl(*AR3(#854)), AC1 ; |2288| 
$C$DW$904	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$904, DW_AT_low_pc(0x00)
	.dwattr $C$DW$904, DW_AT_name("__mpylli")
	.dwattr $C$DW$904, DW_AT_TI_call
        CALL #__mpylli ; |2288| 
                                        ; call occurs [#__mpylli] ; |2288| 
        BSET ST1_M40

        BCLR ST1_M40
||      SFTS AC0, #-16, AC0 ; |2288| 

        ADD dbl(*SP(#88)), AC0, AC0 ; |2288| 
        MOV AC0, dbl(*SP(#88)) ; |2288| 
	.dwpsn	file "./mp3_encode.c",line 2280,column 37,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |2280| 
        SUB #7, AC0 ; |2280| 
        MOV AC0, dbl(*SP(#12)) ; |2280| 
        MOV dbl(*SP(#12)), AC0 ; |2280| 
        BCC $C$L217,AC0 != #0 ; |2280| 
                                        ; branchcc occurs ; |2280| 
$C$DW$L$_shine_mdct_sub$12$E:
$C$L218:    
$C$DW$L$_shine_mdct_sub$13$B:
	.dwpsn	file "./mp3_encode.c",line 2291,column 21,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MPYMK *SP(#11), #36, AC0 ; |2291| 
        MOV AC0, AR1 ; |2291| 
        MOV *SP(#15), T0 ; |2291| 
        SFTL T0, #1 ; |2291| 

        AADD AR1, AR3 ; |2291| 
||      MOV dbl(*SP(#88)), AC0 ; |2291| 

        MOV AC0, dbl(*AR3(T0)) ; |2291| 
	.dwendtag $C$DW$895

	.dwpsn	file "./mp3_encode.c",line 2292,column 17,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |2292| 
        SUB #1, AC0, AC1 ; |2292| 
        MOV AC1, dbl(*SP(#14)) ; |2292| 
        BCC $C$L216,AC0 != #0 ; |2292| 
                                        ; branchcc occurs ; |2292| 
$C$DW$L$_shine_mdct_sub$13$E:
$C$L219:    
$C$DW$L$_shine_mdct_sub$14$B:
	.dwpsn	file "./mp3_encode.c",line 2295,column 17,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |2295| 
        BCC $C$L220,AC0 == #0 ; |2295| 
                                        ; branchcc occurs ; |2295| 
$C$DW$L$_shine_mdct_sub$14$E:
$C$DW$L$_shine_mdct_sub$15$B:

$C$DW$905	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$906	.dwtag  DW_TAG_variable, DW_AT_name("tre")
	.dwattr $C$DW$906, DW_AT_TI_symbol_name("_tre")
	.dwattr $C$DW$906, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$906, DW_AT_location[DW_OP_bregx 0x24 88]
	.dwpsn	file "./mp3_encode.c",line 2297,column 21,is_stmt
        MOV dbl(*($C$FL14)), AC0 ; |2297| 
$C$DW$907	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$907, DW_AT_low_pc(0x00)
	.dwattr $C$DW$907, DW_AT_name("_sqrt")
	.dwattr $C$DW$907, DW_AT_TI_call
        CALL #_sqrt ; |2297| 
                                        ; call occurs [#_sqrt] ; |2297| 
        OR #0, AC0, AC1
        MOV dbl(*($C$FL15)), AC0 ; |2297| 
$C$DW$908	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$908, DW_AT_low_pc(0x00)
	.dwattr $C$DW$908, DW_AT_name("__divd")
	.dwattr $C$DW$908, DW_AT_TI_call
        CALL #__divd ; |2297| 
                                        ; call occurs [#__divd] ; |2297| 
        MOV dbl(*($C$FL8)), AC1 ; |2297| 
$C$DW$909	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$909, DW_AT_low_pc(0x00)
	.dwattr $C$DW$909, DW_AT_name("__mpyd")
	.dwattr $C$DW$909, DW_AT_TI_call
        CALL #__mpyd ; |2297| 
                                        ; call occurs [#__mpyd] ; |2297| 
$C$DW$910	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$910, DW_AT_low_pc(0x00)
	.dwattr $C$DW$910, DW_AT_name("__fixdli")
	.dwattr $C$DW$910, DW_AT_TI_call
        CALL #__fixdli ; |2297| 
                                        ; call occurs [#__fixdli] ; |2297| 
        MOV dbl(*SP(#4)), XAR3

        MOV dbl(*SP(#10)), AC0 ; |2297| 
||      SFTS AC0, #0, AC1 ; |2297| 

        SUB #1, AC0 ; |2297| 
        SFTS AC0, #16, AC0
        MPYK #36, AC0, AC0 ; |2297| 
        MOV AC0, AR1 ; |2297| 
        AADD AR1, AR3 ; |2297| 
        MOV dbl(*AR3(#34)), AC0 ; |2297| 
$C$DW$911	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$911, DW_AT_low_pc(0x00)
	.dwattr $C$DW$911, DW_AT_name("__mpylli")
	.dwattr $C$DW$911, DW_AT_TI_call
        CALL #__mpylli ; |2297| 
                                        ; call occurs [#__mpylli] ; |2297| 
        BSET ST1_M40
        SFTL AC0, #-32, AC1 ; |2297| 
        MOV AC1, dbl(*SP(#90)) ; |2297| 

        MOV AC0, dbl(*SP(#92)) ; |2297| 
||      BCLR ST1_M40

        MOV dbl(*($C$FL14)), AC0 ; |2297| 
$C$DW$912	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$912, DW_AT_low_pc(0x00)
	.dwattr $C$DW$912, DW_AT_name("_sqrt")
	.dwattr $C$DW$912, DW_AT_TI_call
        CALL #_sqrt ; |2297| 
                                        ; call occurs [#_sqrt] ; |2297| 
        OR #0, AC0, AC1
        MOV dbl(*($C$FL5)), AC0 ; |2297| 
$C$DW$913	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$913, DW_AT_low_pc(0x00)
	.dwattr $C$DW$913, DW_AT_name("__divd")
	.dwattr $C$DW$913, DW_AT_TI_call
        CALL #__divd ; |2297| 
                                        ; call occurs [#__divd] ; |2297| 
        MOV dbl(*($C$FL8)), AC1 ; |2297| 
$C$DW$914	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$914, DW_AT_low_pc(0x00)
	.dwattr $C$DW$914, DW_AT_name("__mpyd")
	.dwattr $C$DW$914, DW_AT_TI_call
        CALL #__mpyd ; |2297| 
                                        ; call occurs [#__mpyd] ; |2297| 
$C$DW$915	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$915, DW_AT_low_pc(0x00)
	.dwattr $C$DW$915, DW_AT_name("__fixdli")
	.dwattr $C$DW$915, DW_AT_TI_call
        CALL #__fixdli ; |2297| 
                                        ; call occurs [#__fixdli] ; |2297| 
        MOV dbl(*SP(#4)), XAR3

        MPYMK *SP(#11), #36, AC0 ; |2297| 
||      SFTS AC0, #0, AC1 ; |2297| 

        MOV AC0, T0 ; |2297| 
        MOV dbl(*AR3(T0)), AC0 ; |2297| 
$C$DW$916	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$916, DW_AT_low_pc(0x00)
	.dwattr $C$DW$916, DW_AT_name("__mpylli")
	.dwattr $C$DW$916, DW_AT_TI_call
        CALL #__mpylli ; |2297| 
                                        ; call occurs [#__mpylli] ; |2297| 
        MOV dbl(*SP(#92)), AC1
        MOV dbl(*SP(#90)), AC2
        MOV AC2, mmap(AC1G)
        BSET ST1_M40
        SUB AC1, AC0 ; |2297| 
        SFTS AC0, #-15, AC0 ; |2297| 

        MOV AC0, dbl(*SP(#88)) ; |2297| 
||      BCLR ST1_M40

        MOV dbl(*($C$FL14)), AC0 ; |2297| 
$C$DW$917	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$917, DW_AT_low_pc(0x00)
	.dwattr $C$DW$917, DW_AT_name("_sqrt")
	.dwattr $C$DW$917, DW_AT_TI_call
        CALL #_sqrt ; |2297| 
                                        ; call occurs [#_sqrt] ; |2297| 
$C$DW$L$_shine_mdct_sub$15$E:
$C$DW$L$_shine_mdct_sub$16$B:
        OR #0, AC0, AC1
        MOV dbl(*($C$FL15)), AC0 ; |2297| 
$C$DW$918	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$918, DW_AT_low_pc(0x00)
	.dwattr $C$DW$918, DW_AT_name("__divd")
	.dwattr $C$DW$918, DW_AT_TI_call
        CALL #__divd ; |2297| 
                                        ; call occurs [#__divd] ; |2297| 
        MOV dbl(*($C$FL8)), AC1 ; |2297| 
$C$DW$919	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$919, DW_AT_low_pc(0x00)
	.dwattr $C$DW$919, DW_AT_name("__mpyd")
	.dwattr $C$DW$919, DW_AT_TI_call
        CALL #__mpyd ; |2297| 
                                        ; call occurs [#__mpyd] ; |2297| 
$C$DW$920	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$920, DW_AT_low_pc(0x00)
	.dwattr $C$DW$920, DW_AT_name("__fixdli")
	.dwattr $C$DW$920, DW_AT_TI_call
        CALL #__fixdli ; |2297| 
                                        ; call occurs [#__fixdli] ; |2297| 
        MOV dbl(*SP(#4)), XAR3

        MPYMK *SP(#11), #36, AC0 ; |2297| 
||      SFTS AC0, #0, AC1 ; |2297| 

        MOV AC0, T0 ; |2297| 
        MOV dbl(*AR3(T0)), AC0 ; |2297| 
$C$DW$921	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$921, DW_AT_low_pc(0x00)
	.dwattr $C$DW$921, DW_AT_name("__mpylli")
	.dwattr $C$DW$921, DW_AT_TI_call
        CALL #__mpylli ; |2297| 
                                        ; call occurs [#__mpylli] ; |2297| 
        BSET ST1_M40
        SFTL AC0, #-32, AC1 ; |2297| 
        MOV AC1, dbl(*SP(#90)) ; |2297| 

        MOV AC0, dbl(*SP(#92)) ; |2297| 
||      BCLR ST1_M40

        MOV dbl(*($C$FL14)), AC0 ; |2297| 
$C$DW$922	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$922, DW_AT_low_pc(0x00)
	.dwattr $C$DW$922, DW_AT_name("_sqrt")
	.dwattr $C$DW$922, DW_AT_TI_call
        CALL #_sqrt ; |2297| 
                                        ; call occurs [#_sqrt] ; |2297| 
        OR #0, AC0, AC1
        MOV dbl(*($C$FL5)), AC0 ; |2297| 
$C$DW$923	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$923, DW_AT_low_pc(0x00)
	.dwattr $C$DW$923, DW_AT_name("__divd")
	.dwattr $C$DW$923, DW_AT_TI_call
        CALL #__divd ; |2297| 
                                        ; call occurs [#__divd] ; |2297| 
        MOV dbl(*($C$FL8)), AC1 ; |2297| 
$C$DW$924	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$924, DW_AT_low_pc(0x00)
	.dwattr $C$DW$924, DW_AT_name("__mpyd")
	.dwattr $C$DW$924, DW_AT_TI_call
        CALL #__mpyd ; |2297| 
                                        ; call occurs [#__mpyd] ; |2297| 
$C$DW$925	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$925, DW_AT_low_pc(0x00)
	.dwattr $C$DW$925, DW_AT_name("__fixdli")
	.dwattr $C$DW$925, DW_AT_TI_call
        CALL #__fixdli ; |2297| 
                                        ; call occurs [#__fixdli] ; |2297| 
        MOV dbl(*SP(#4)), XAR3

        MOV dbl(*SP(#10)), AC0 ; |2297| 
||      SFTS AC0, #0, AC1 ; |2297| 

        SUB #1, AC0 ; |2297| 
        SFTS AC0, #16, AC0
        MPYK #36, AC0, AC0 ; |2297| 
        MOV AC0, AR1 ; |2297| 
        AADD AR1, AR3 ; |2297| 
        MOV dbl(*AR3(#34)), AC0 ; |2297| 
$C$DW$926	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$926, DW_AT_low_pc(0x00)
	.dwattr $C$DW$926, DW_AT_name("__mpylli")
	.dwattr $C$DW$926, DW_AT_TI_call
        CALL #__mpylli ; |2297| 
                                        ; call occurs [#__mpylli] ; |2297| 
        MOV dbl(*SP(#92)), AC1

        MOV dbl(*SP(#90)), AC2
||      BSET ST1_M40

        MOV AC2, mmap(AC1G)
        MOV dbl(*SP(#4)), XAR3
        ADD AC1, AC0 ; |2297| 
        SFTS AC0, #-15, AC1 ; |2297| 

        MOV dbl(*SP(#10)), AC0 ; |2297| 
||      BCLR ST1_M40

        SUB #1, AC0 ; |2297| 
        SFTS AC0, #16, AC0
        MPYK #36, AC0, AC0 ; |2297| 
        MOV AC0, AR1 ; |2297| 
        AADD AR1, AR3 ; |2297| 
        MOV AC1, dbl(*AR3(#34)) ; |2297| 
        MOV dbl(*SP(#4)), XAR3
        MPYMK *SP(#11), #36, AC0 ; |2297| 
        MOV AC0, T0 ; |2297| 
        MOV dbl(*SP(#88)), AC1 ; |2297| 
        MOV AC1, dbl(*AR3(T0)) ; |2297| 
	.dwendtag $C$DW$905


$C$DW$927	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$928	.dwtag  DW_TAG_variable, DW_AT_name("tre")
	.dwattr $C$DW$928, DW_AT_TI_symbol_name("_tre")
	.dwattr $C$DW$928, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$928, DW_AT_location[DW_OP_bregx 0x24 88]
	.dwpsn	file "./mp3_encode.c",line 2299,column 21,is_stmt
        MOV dbl(*($C$FL16)), AC0 ; |2299| 
$C$DW$929	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$929, DW_AT_low_pc(0x00)
	.dwattr $C$DW$929, DW_AT_name("_sqrt")
	.dwattr $C$DW$929, DW_AT_TI_call
        CALL #_sqrt ; |2299| 
                                        ; call occurs [#_sqrt] ; |2299| 
        OR #0, AC0, AC1
        MOV dbl(*($C$FL17)), AC0 ; |2299| 
$C$DW$930	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$930, DW_AT_low_pc(0x00)
	.dwattr $C$DW$930, DW_AT_name("__divd")
	.dwattr $C$DW$930, DW_AT_TI_call
        CALL #__divd ; |2299| 
                                        ; call occurs [#__divd] ; |2299| 
$C$DW$L$_shine_mdct_sub$16$E:
$C$DW$L$_shine_mdct_sub$17$B:
        MOV dbl(*($C$FL8)), AC1 ; |2299| 
$C$DW$931	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$931, DW_AT_low_pc(0x00)
	.dwattr $C$DW$931, DW_AT_name("__mpyd")
	.dwattr $C$DW$931, DW_AT_TI_call
        CALL #__mpyd ; |2299| 
                                        ; call occurs [#__mpyd] ; |2299| 
$C$DW$932	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$932, DW_AT_low_pc(0x00)
	.dwattr $C$DW$932, DW_AT_name("__fixdli")
	.dwattr $C$DW$932, DW_AT_TI_call
        CALL #__fixdli ; |2299| 
                                        ; call occurs [#__fixdli] ; |2299| 
        MOV dbl(*SP(#4)), XAR3

        MOV dbl(*SP(#10)), AC0 ; |2299| 
||      SFTS AC0, #0, AC1 ; |2299| 

        SUB #1, AC0 ; |2299| 
        SFTS AC0, #16, AC0
        MPYK #36, AC0, AC0 ; |2299| 
        MOV AC0, AR1 ; |2299| 
        AADD AR1, AR3 ; |2299| 
        MOV dbl(*AR3(#32)), AC0 ; |2299| 
$C$DW$933	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$933, DW_AT_low_pc(0x00)
	.dwattr $C$DW$933, DW_AT_name("__mpylli")
	.dwattr $C$DW$933, DW_AT_TI_call
        CALL #__mpylli ; |2299| 
                                        ; call occurs [#__mpylli] ; |2299| 
        BSET ST1_M40
        SFTL AC0, #-32, AC1 ; |2299| 
        MOV AC1, dbl(*SP(#90)) ; |2299| 

        MOV AC0, dbl(*SP(#92)) ; |2299| 
||      BCLR ST1_M40

        MOV dbl(*($C$FL16)), AC0 ; |2299| 
$C$DW$934	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$934, DW_AT_low_pc(0x00)
	.dwattr $C$DW$934, DW_AT_name("_sqrt")
	.dwattr $C$DW$934, DW_AT_TI_call
        CALL #_sqrt ; |2299| 
                                        ; call occurs [#_sqrt] ; |2299| 
        OR #0, AC0, AC1
        MOV dbl(*($C$FL5)), AC0 ; |2299| 
$C$DW$935	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$935, DW_AT_low_pc(0x00)
	.dwattr $C$DW$935, DW_AT_name("__divd")
	.dwattr $C$DW$935, DW_AT_TI_call
        CALL #__divd ; |2299| 
                                        ; call occurs [#__divd] ; |2299| 
        MOV dbl(*($C$FL8)), AC1 ; |2299| 
$C$DW$936	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$936, DW_AT_low_pc(0x00)
	.dwattr $C$DW$936, DW_AT_name("__mpyd")
	.dwattr $C$DW$936, DW_AT_TI_call
        CALL #__mpyd ; |2299| 
                                        ; call occurs [#__mpyd] ; |2299| 
$C$DW$937	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$937, DW_AT_low_pc(0x00)
	.dwattr $C$DW$937, DW_AT_name("__fixdli")
	.dwattr $C$DW$937, DW_AT_TI_call
        CALL #__fixdli ; |2299| 
                                        ; call occurs [#__fixdli] ; |2299| 
        MOV dbl(*SP(#4)), XAR3

        MPYMK *SP(#11), #36, AC0 ; |2299| 
||      SFTS AC0, #0, AC1 ; |2299| 

        MOV AC0, AR1 ; |2299| 
        AADD AR1, AR3 ; |2299| 
        MOV dbl(*AR3(short(#2))), AC0 ; |2299| 
$C$DW$938	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$938, DW_AT_low_pc(0x00)
	.dwattr $C$DW$938, DW_AT_name("__mpylli")
	.dwattr $C$DW$938, DW_AT_TI_call
        CALL #__mpylli ; |2299| 
                                        ; call occurs [#__mpylli] ; |2299| 
        MOV dbl(*SP(#92)), AC1
        MOV dbl(*SP(#90)), AC2
        MOV AC2, mmap(AC1G)
        BSET ST1_M40
        SUB AC1, AC0 ; |2299| 
        SFTS AC0, #-15, AC0 ; |2299| 

        MOV AC0, dbl(*SP(#88)) ; |2299| 
||      BCLR ST1_M40

        MOV dbl(*($C$FL16)), AC0 ; |2299| 
$C$DW$939	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$939, DW_AT_low_pc(0x00)
	.dwattr $C$DW$939, DW_AT_name("_sqrt")
	.dwattr $C$DW$939, DW_AT_TI_call
        CALL #_sqrt ; |2299| 
                                        ; call occurs [#_sqrt] ; |2299| 
$C$DW$L$_shine_mdct_sub$17$E:
$C$DW$L$_shine_mdct_sub$18$B:
        OR #0, AC0, AC1
        MOV dbl(*($C$FL17)), AC0 ; |2299| 
$C$DW$940	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$940, DW_AT_low_pc(0x00)
	.dwattr $C$DW$940, DW_AT_name("__divd")
	.dwattr $C$DW$940, DW_AT_TI_call
        CALL #__divd ; |2299| 
                                        ; call occurs [#__divd] ; |2299| 
        MOV dbl(*($C$FL8)), AC1 ; |2299| 
$C$DW$941	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$941, DW_AT_low_pc(0x00)
	.dwattr $C$DW$941, DW_AT_name("__mpyd")
	.dwattr $C$DW$941, DW_AT_TI_call
        CALL #__mpyd ; |2299| 
                                        ; call occurs [#__mpyd] ; |2299| 
$C$DW$942	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$942, DW_AT_low_pc(0x00)
	.dwattr $C$DW$942, DW_AT_name("__fixdli")
	.dwattr $C$DW$942, DW_AT_TI_call
        CALL #__fixdli ; |2299| 
                                        ; call occurs [#__fixdli] ; |2299| 
        MOV dbl(*SP(#4)), XAR3

        MPYMK *SP(#11), #36, AC0 ; |2299| 
||      SFTS AC0, #0, AC1 ; |2299| 

        MOV AC0, AR1 ; |2299| 
        AADD AR1, AR3 ; |2299| 
        MOV dbl(*AR3(short(#2))), AC0 ; |2299| 
$C$DW$943	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$943, DW_AT_low_pc(0x00)
	.dwattr $C$DW$943, DW_AT_name("__mpylli")
	.dwattr $C$DW$943, DW_AT_TI_call
        CALL #__mpylli ; |2299| 
                                        ; call occurs [#__mpylli] ; |2299| 
        BSET ST1_M40
        SFTL AC0, #-32, AC1 ; |2299| 
        MOV AC1, dbl(*SP(#90)) ; |2299| 

        MOV AC0, dbl(*SP(#92)) ; |2299| 
||      BCLR ST1_M40

        MOV dbl(*($C$FL16)), AC0 ; |2299| 
$C$DW$944	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$944, DW_AT_low_pc(0x00)
	.dwattr $C$DW$944, DW_AT_name("_sqrt")
	.dwattr $C$DW$944, DW_AT_TI_call
        CALL #_sqrt ; |2299| 
                                        ; call occurs [#_sqrt] ; |2299| 
        OR #0, AC0, AC1
        MOV dbl(*($C$FL5)), AC0 ; |2299| 
$C$DW$945	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$945, DW_AT_low_pc(0x00)
	.dwattr $C$DW$945, DW_AT_name("__divd")
	.dwattr $C$DW$945, DW_AT_TI_call
        CALL #__divd ; |2299| 
                                        ; call occurs [#__divd] ; |2299| 
        MOV dbl(*($C$FL8)), AC1 ; |2299| 
$C$DW$946	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$946, DW_AT_low_pc(0x00)
	.dwattr $C$DW$946, DW_AT_name("__mpyd")
	.dwattr $C$DW$946, DW_AT_TI_call
        CALL #__mpyd ; |2299| 
                                        ; call occurs [#__mpyd] ; |2299| 
$C$DW$947	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$947, DW_AT_low_pc(0x00)
	.dwattr $C$DW$947, DW_AT_name("__fixdli")
	.dwattr $C$DW$947, DW_AT_TI_call
        CALL #__fixdli ; |2299| 
                                        ; call occurs [#__fixdli] ; |2299| 
        MOV dbl(*SP(#4)), XAR3

        MOV dbl(*SP(#10)), AC0 ; |2299| 
||      SFTS AC0, #0, AC1 ; |2299| 

        SUB #1, AC0 ; |2299| 
        SFTS AC0, #16, AC0
        MPYK #36, AC0, AC0 ; |2299| 
        MOV AC0, AR1 ; |2299| 
        AADD AR1, AR3 ; |2299| 
        MOV dbl(*AR3(#32)), AC0 ; |2299| 
$C$DW$948	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$948, DW_AT_low_pc(0x00)
	.dwattr $C$DW$948, DW_AT_name("__mpylli")
	.dwattr $C$DW$948, DW_AT_TI_call
        CALL #__mpylli ; |2299| 
                                        ; call occurs [#__mpylli] ; |2299| 
        MOV dbl(*SP(#92)), AC1

        MOV dbl(*SP(#90)), AC2
||      BSET ST1_M40

        MOV AC2, mmap(AC1G)
        MOV dbl(*SP(#4)), XAR3
        ADD AC1, AC0 ; |2299| 
        SFTS AC0, #-15, AC1 ; |2299| 

        MOV dbl(*SP(#10)), AC0 ; |2299| 
||      BCLR ST1_M40

        SUB #1, AC0 ; |2299| 
        SFTS AC0, #16, AC0
        MPYK #36, AC0, AC0 ; |2299| 
        MOV AC0, AR1 ; |2299| 
        AADD AR1, AR3 ; |2299| 
        MOV AC1, dbl(*AR3(#32)) ; |2299| 
        MOV dbl(*SP(#4)), XAR3
        MPYMK *SP(#11), #36, AC0 ; |2299| 
        MOV AC0, AR1 ; |2299| 

        AADD AR1, AR3 ; |2299| 
||      MOV dbl(*SP(#88)), AC0 ; |2299| 

        MOV AC0, dbl(*AR3(short(#2))) ; |2299| 
	.dwendtag $C$DW$927


$C$DW$949	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$950	.dwtag  DW_TAG_variable, DW_AT_name("tre")
	.dwattr $C$DW$950, DW_AT_TI_symbol_name("_tre")
	.dwattr $C$DW$950, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$950, DW_AT_location[DW_OP_bregx 0x24 88]
	.dwpsn	file "./mp3_encode.c",line 2301,column 21,is_stmt
        MOV dbl(*($C$FL18)), AC0 ; |2301| 
$C$DW$951	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$951, DW_AT_low_pc(0x00)
	.dwattr $C$DW$951, DW_AT_name("_sqrt")
	.dwattr $C$DW$951, DW_AT_TI_call
        CALL #_sqrt ; |2301| 
                                        ; call occurs [#_sqrt] ; |2301| 
        OR #0, AC0, AC1
        MOV dbl(*($C$FL19)), AC0 ; |2301| 
$C$DW$952	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$952, DW_AT_low_pc(0x00)
	.dwattr $C$DW$952, DW_AT_name("__divd")
	.dwattr $C$DW$952, DW_AT_TI_call
        CALL #__divd ; |2301| 
                                        ; call occurs [#__divd] ; |2301| 
$C$DW$L$_shine_mdct_sub$18$E:
$C$DW$L$_shine_mdct_sub$19$B:
        MOV dbl(*($C$FL8)), AC1 ; |2301| 
$C$DW$953	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$953, DW_AT_low_pc(0x00)
	.dwattr $C$DW$953, DW_AT_name("__mpyd")
	.dwattr $C$DW$953, DW_AT_TI_call
        CALL #__mpyd ; |2301| 
                                        ; call occurs [#__mpyd] ; |2301| 
$C$DW$954	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$954, DW_AT_low_pc(0x00)
	.dwattr $C$DW$954, DW_AT_name("__fixdli")
	.dwattr $C$DW$954, DW_AT_TI_call
        CALL #__fixdli ; |2301| 
                                        ; call occurs [#__fixdli] ; |2301| 
        MOV dbl(*SP(#4)), XAR3

        MOV dbl(*SP(#10)), AC0 ; |2301| 
||      SFTS AC0, #0, AC1 ; |2301| 

        SUB #1, AC0 ; |2301| 
        SFTS AC0, #16, AC0
        MPYK #36, AC0, AC0 ; |2301| 
        MOV AC0, AR1 ; |2301| 
        AADD AR1, AR3 ; |2301| 
        MOV dbl(*AR3(#30)), AC0 ; |2301| 
$C$DW$955	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$955, DW_AT_low_pc(0x00)
	.dwattr $C$DW$955, DW_AT_name("__mpylli")
	.dwattr $C$DW$955, DW_AT_TI_call
        CALL #__mpylli ; |2301| 
                                        ; call occurs [#__mpylli] ; |2301| 
        BSET ST1_M40
        SFTL AC0, #-32, AC1 ; |2301| 
        MOV AC1, dbl(*SP(#90)) ; |2301| 

        MOV AC0, dbl(*SP(#92)) ; |2301| 
||      BCLR ST1_M40

        MOV dbl(*($C$FL18)), AC0 ; |2301| 
$C$DW$956	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$956, DW_AT_low_pc(0x00)
	.dwattr $C$DW$956, DW_AT_name("_sqrt")
	.dwattr $C$DW$956, DW_AT_TI_call
        CALL #_sqrt ; |2301| 
                                        ; call occurs [#_sqrt] ; |2301| 
        OR #0, AC0, AC1
        MOV dbl(*($C$FL5)), AC0 ; |2301| 
$C$DW$957	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$957, DW_AT_low_pc(0x00)
	.dwattr $C$DW$957, DW_AT_name("__divd")
	.dwattr $C$DW$957, DW_AT_TI_call
        CALL #__divd ; |2301| 
                                        ; call occurs [#__divd] ; |2301| 
        MOV dbl(*($C$FL8)), AC1 ; |2301| 
$C$DW$958	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$958, DW_AT_low_pc(0x00)
	.dwattr $C$DW$958, DW_AT_name("__mpyd")
	.dwattr $C$DW$958, DW_AT_TI_call
        CALL #__mpyd ; |2301| 
                                        ; call occurs [#__mpyd] ; |2301| 
$C$DW$959	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$959, DW_AT_low_pc(0x00)
	.dwattr $C$DW$959, DW_AT_name("__fixdli")
	.dwattr $C$DW$959, DW_AT_TI_call
        CALL #__fixdli ; |2301| 
                                        ; call occurs [#__fixdli] ; |2301| 
        MOV dbl(*SP(#4)), XAR3

        MPYMK *SP(#11), #36, AC0 ; |2301| 
||      SFTS AC0, #0, AC1 ; |2301| 

        MOV AC0, AR1 ; |2301| 
        AADD AR1, AR3 ; |2301| 
        MOV dbl(*AR3(short(#4))), AC0 ; |2301| 
$C$DW$960	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$960, DW_AT_low_pc(0x00)
	.dwattr $C$DW$960, DW_AT_name("__mpylli")
	.dwattr $C$DW$960, DW_AT_TI_call
        CALL #__mpylli ; |2301| 
                                        ; call occurs [#__mpylli] ; |2301| 
        MOV dbl(*SP(#92)), AC1
        MOV dbl(*SP(#90)), AC2
        MOV AC2, mmap(AC1G)
        BSET ST1_M40
        SUB AC1, AC0 ; |2301| 
        SFTS AC0, #-15, AC0 ; |2301| 

        MOV AC0, dbl(*SP(#88)) ; |2301| 
||      BCLR ST1_M40

        MOV dbl(*($C$FL18)), AC0 ; |2301| 
$C$DW$961	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$961, DW_AT_low_pc(0x00)
	.dwattr $C$DW$961, DW_AT_name("_sqrt")
	.dwattr $C$DW$961, DW_AT_TI_call
        CALL #_sqrt ; |2301| 
                                        ; call occurs [#_sqrt] ; |2301| 
$C$DW$L$_shine_mdct_sub$19$E:
$C$DW$L$_shine_mdct_sub$20$B:
        OR #0, AC0, AC1
        MOV dbl(*($C$FL19)), AC0 ; |2301| 
$C$DW$962	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$962, DW_AT_low_pc(0x00)
	.dwattr $C$DW$962, DW_AT_name("__divd")
	.dwattr $C$DW$962, DW_AT_TI_call
        CALL #__divd ; |2301| 
                                        ; call occurs [#__divd] ; |2301| 
        MOV dbl(*($C$FL8)), AC1 ; |2301| 
$C$DW$963	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$963, DW_AT_low_pc(0x00)
	.dwattr $C$DW$963, DW_AT_name("__mpyd")
	.dwattr $C$DW$963, DW_AT_TI_call
        CALL #__mpyd ; |2301| 
                                        ; call occurs [#__mpyd] ; |2301| 
$C$DW$964	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$964, DW_AT_low_pc(0x00)
	.dwattr $C$DW$964, DW_AT_name("__fixdli")
	.dwattr $C$DW$964, DW_AT_TI_call
        CALL #__fixdli ; |2301| 
                                        ; call occurs [#__fixdli] ; |2301| 
        MOV dbl(*SP(#4)), XAR3

        MPYMK *SP(#11), #36, AC0 ; |2301| 
||      SFTS AC0, #0, AC1 ; |2301| 

        MOV AC0, AR1 ; |2301| 
        AADD AR1, AR3 ; |2301| 
        MOV dbl(*AR3(short(#4))), AC0 ; |2301| 
$C$DW$965	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$965, DW_AT_low_pc(0x00)
	.dwattr $C$DW$965, DW_AT_name("__mpylli")
	.dwattr $C$DW$965, DW_AT_TI_call
        CALL #__mpylli ; |2301| 
                                        ; call occurs [#__mpylli] ; |2301| 
        BSET ST1_M40
        SFTL AC0, #-32, AC1 ; |2301| 
        MOV AC1, dbl(*SP(#90)) ; |2301| 

        MOV AC0, dbl(*SP(#92)) ; |2301| 
||      BCLR ST1_M40

        MOV dbl(*($C$FL18)), AC0 ; |2301| 
$C$DW$966	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$966, DW_AT_low_pc(0x00)
	.dwattr $C$DW$966, DW_AT_name("_sqrt")
	.dwattr $C$DW$966, DW_AT_TI_call
        CALL #_sqrt ; |2301| 
                                        ; call occurs [#_sqrt] ; |2301| 
        OR #0, AC0, AC1
        MOV dbl(*($C$FL5)), AC0 ; |2301| 
$C$DW$967	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$967, DW_AT_low_pc(0x00)
	.dwattr $C$DW$967, DW_AT_name("__divd")
	.dwattr $C$DW$967, DW_AT_TI_call
        CALL #__divd ; |2301| 
                                        ; call occurs [#__divd] ; |2301| 
        MOV dbl(*($C$FL8)), AC1 ; |2301| 
$C$DW$968	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$968, DW_AT_low_pc(0x00)
	.dwattr $C$DW$968, DW_AT_name("__mpyd")
	.dwattr $C$DW$968, DW_AT_TI_call
        CALL #__mpyd ; |2301| 
                                        ; call occurs [#__mpyd] ; |2301| 
$C$DW$969	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$969, DW_AT_low_pc(0x00)
	.dwattr $C$DW$969, DW_AT_name("__fixdli")
	.dwattr $C$DW$969, DW_AT_TI_call
        CALL #__fixdli ; |2301| 
                                        ; call occurs [#__fixdli] ; |2301| 
        MOV dbl(*SP(#4)), XAR3

        MOV dbl(*SP(#10)), AC0 ; |2301| 
||      SFTS AC0, #0, AC1 ; |2301| 

        SUB #1, AC0 ; |2301| 
        SFTS AC0, #16, AC0
        MPYK #36, AC0, AC0 ; |2301| 
        MOV AC0, AR1 ; |2301| 
        AADD AR1, AR3 ; |2301| 
        MOV dbl(*AR3(#30)), AC0 ; |2301| 
$C$DW$970	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$970, DW_AT_low_pc(0x00)
	.dwattr $C$DW$970, DW_AT_name("__mpylli")
	.dwattr $C$DW$970, DW_AT_TI_call
        CALL #__mpylli ; |2301| 
                                        ; call occurs [#__mpylli] ; |2301| 
        MOV dbl(*SP(#92)), AC1

        MOV dbl(*SP(#90)), AC2
||      BSET ST1_M40

        MOV AC2, mmap(AC1G)
        MOV dbl(*SP(#4)), XAR3
        ADD AC1, AC0 ; |2301| 
        SFTS AC0, #-15, AC1 ; |2301| 

        MOV dbl(*SP(#10)), AC0 ; |2301| 
||      BCLR ST1_M40

        SUB #1, AC0 ; |2301| 
        SFTS AC0, #16, AC0
        MPYK #36, AC0, AC0 ; |2301| 
        MOV AC0, AR1 ; |2301| 
        AADD AR1, AR3 ; |2301| 
        MOV AC1, dbl(*AR3(#30)) ; |2301| 
        MOV dbl(*SP(#4)), XAR3
        MPYMK *SP(#11), #36, AC0 ; |2301| 
        MOV AC0, AR1 ; |2301| 

        AADD AR1, AR3 ; |2301| 
||      MOV dbl(*SP(#88)), AC0 ; |2301| 

        MOV AC0, dbl(*AR3(short(#4))) ; |2301| 
	.dwendtag $C$DW$949


$C$DW$971	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$972	.dwtag  DW_TAG_variable, DW_AT_name("tre")
	.dwattr $C$DW$972, DW_AT_TI_symbol_name("_tre")
	.dwattr $C$DW$972, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$972, DW_AT_location[DW_OP_bregx 0x24 88]
	.dwpsn	file "./mp3_encode.c",line 2303,column 21,is_stmt
        MOV dbl(*($C$FL20)), AC0 ; |2303| 
$C$DW$973	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$973, DW_AT_low_pc(0x00)
	.dwattr $C$DW$973, DW_AT_name("_sqrt")
	.dwattr $C$DW$973, DW_AT_TI_call
        CALL #_sqrt ; |2303| 
                                        ; call occurs [#_sqrt] ; |2303| 
        OR #0, AC0, AC1
        MOV dbl(*($C$FL21)), AC0 ; |2303| 
$C$DW$974	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$974, DW_AT_low_pc(0x00)
	.dwattr $C$DW$974, DW_AT_name("__divd")
	.dwattr $C$DW$974, DW_AT_TI_call
        CALL #__divd ; |2303| 
                                        ; call occurs [#__divd] ; |2303| 
$C$DW$L$_shine_mdct_sub$20$E:
$C$DW$L$_shine_mdct_sub$21$B:
        MOV dbl(*($C$FL8)), AC1 ; |2303| 
$C$DW$975	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$975, DW_AT_low_pc(0x00)
	.dwattr $C$DW$975, DW_AT_name("__mpyd")
	.dwattr $C$DW$975, DW_AT_TI_call
        CALL #__mpyd ; |2303| 
                                        ; call occurs [#__mpyd] ; |2303| 
$C$DW$976	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$976, DW_AT_low_pc(0x00)
	.dwattr $C$DW$976, DW_AT_name("__fixdli")
	.dwattr $C$DW$976, DW_AT_TI_call
        CALL #__fixdli ; |2303| 
                                        ; call occurs [#__fixdli] ; |2303| 
        MOV dbl(*SP(#4)), XAR3

        MOV dbl(*SP(#10)), AC0 ; |2303| 
||      SFTS AC0, #0, AC1 ; |2303| 

        SUB #1, AC0 ; |2303| 
        SFTS AC0, #16, AC0
        MPYK #36, AC0, AC0 ; |2303| 
        MOV AC0, AR1 ; |2303| 
        AADD AR1, AR3 ; |2303| 
        MOV dbl(*AR3(#28)), AC0 ; |2303| 
$C$DW$977	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$977, DW_AT_low_pc(0x00)
	.dwattr $C$DW$977, DW_AT_name("__mpylli")
	.dwattr $C$DW$977, DW_AT_TI_call
        CALL #__mpylli ; |2303| 
                                        ; call occurs [#__mpylli] ; |2303| 
        BSET ST1_M40
        SFTL AC0, #-32, AC1 ; |2303| 
        MOV AC1, dbl(*SP(#90)) ; |2303| 

        MOV AC0, dbl(*SP(#92)) ; |2303| 
||      BCLR ST1_M40

        MOV dbl(*($C$FL20)), AC0 ; |2303| 
$C$DW$978	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$978, DW_AT_low_pc(0x00)
	.dwattr $C$DW$978, DW_AT_name("_sqrt")
	.dwattr $C$DW$978, DW_AT_TI_call
        CALL #_sqrt ; |2303| 
                                        ; call occurs [#_sqrt] ; |2303| 
        OR #0, AC0, AC1
        MOV dbl(*($C$FL5)), AC0 ; |2303| 
$C$DW$979	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$979, DW_AT_low_pc(0x00)
	.dwattr $C$DW$979, DW_AT_name("__divd")
	.dwattr $C$DW$979, DW_AT_TI_call
        CALL #__divd ; |2303| 
                                        ; call occurs [#__divd] ; |2303| 
        MOV dbl(*($C$FL8)), AC1 ; |2303| 
$C$DW$980	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$980, DW_AT_low_pc(0x00)
	.dwattr $C$DW$980, DW_AT_name("__mpyd")
	.dwattr $C$DW$980, DW_AT_TI_call
        CALL #__mpyd ; |2303| 
                                        ; call occurs [#__mpyd] ; |2303| 
$C$DW$981	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$981, DW_AT_low_pc(0x00)
	.dwattr $C$DW$981, DW_AT_name("__fixdli")
	.dwattr $C$DW$981, DW_AT_TI_call
        CALL #__fixdli ; |2303| 
                                        ; call occurs [#__fixdli] ; |2303| 
        MOV dbl(*SP(#4)), XAR3

        MPYMK *SP(#11), #36, AC0 ; |2303| 
||      SFTS AC0, #0, AC1 ; |2303| 

        MOV AC0, AR1 ; |2303| 
        AADD AR1, AR3 ; |2303| 
        MOV dbl(*AR3(short(#6))), AC0 ; |2303| 
$C$DW$982	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$982, DW_AT_low_pc(0x00)
	.dwattr $C$DW$982, DW_AT_name("__mpylli")
	.dwattr $C$DW$982, DW_AT_TI_call
        CALL #__mpylli ; |2303| 
                                        ; call occurs [#__mpylli] ; |2303| 
        MOV dbl(*SP(#92)), AC1
        MOV dbl(*SP(#90)), AC2
        MOV AC2, mmap(AC1G)
        BSET ST1_M40
        SUB AC1, AC0 ; |2303| 
        SFTS AC0, #-15, AC0 ; |2303| 

        MOV AC0, dbl(*SP(#88)) ; |2303| 
||      BCLR ST1_M40

        MOV dbl(*($C$FL20)), AC0 ; |2303| 
$C$DW$983	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$983, DW_AT_low_pc(0x00)
	.dwattr $C$DW$983, DW_AT_name("_sqrt")
	.dwattr $C$DW$983, DW_AT_TI_call
        CALL #_sqrt ; |2303| 
                                        ; call occurs [#_sqrt] ; |2303| 
$C$DW$L$_shine_mdct_sub$21$E:
$C$DW$L$_shine_mdct_sub$22$B:
        OR #0, AC0, AC1
        MOV dbl(*($C$FL21)), AC0 ; |2303| 
$C$DW$984	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$984, DW_AT_low_pc(0x00)
	.dwattr $C$DW$984, DW_AT_name("__divd")
	.dwattr $C$DW$984, DW_AT_TI_call
        CALL #__divd ; |2303| 
                                        ; call occurs [#__divd] ; |2303| 
        MOV dbl(*($C$FL8)), AC1 ; |2303| 
$C$DW$985	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$985, DW_AT_low_pc(0x00)
	.dwattr $C$DW$985, DW_AT_name("__mpyd")
	.dwattr $C$DW$985, DW_AT_TI_call
        CALL #__mpyd ; |2303| 
                                        ; call occurs [#__mpyd] ; |2303| 
$C$DW$986	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$986, DW_AT_low_pc(0x00)
	.dwattr $C$DW$986, DW_AT_name("__fixdli")
	.dwattr $C$DW$986, DW_AT_TI_call
        CALL #__fixdli ; |2303| 
                                        ; call occurs [#__fixdli] ; |2303| 
        MOV dbl(*SP(#4)), XAR3

        MPYMK *SP(#11), #36, AC0 ; |2303| 
||      SFTS AC0, #0, AC1 ; |2303| 

        MOV AC0, AR1 ; |2303| 
        AADD AR1, AR3 ; |2303| 
        MOV dbl(*AR3(short(#6))), AC0 ; |2303| 
$C$DW$987	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$987, DW_AT_low_pc(0x00)
	.dwattr $C$DW$987, DW_AT_name("__mpylli")
	.dwattr $C$DW$987, DW_AT_TI_call
        CALL #__mpylli ; |2303| 
                                        ; call occurs [#__mpylli] ; |2303| 
        BSET ST1_M40
        SFTL AC0, #-32, AC1 ; |2303| 
        MOV AC1, dbl(*SP(#90)) ; |2303| 

        MOV AC0, dbl(*SP(#92)) ; |2303| 
||      BCLR ST1_M40

        MOV dbl(*($C$FL20)), AC0 ; |2303| 
$C$DW$988	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$988, DW_AT_low_pc(0x00)
	.dwattr $C$DW$988, DW_AT_name("_sqrt")
	.dwattr $C$DW$988, DW_AT_TI_call
        CALL #_sqrt ; |2303| 
                                        ; call occurs [#_sqrt] ; |2303| 
        OR #0, AC0, AC1
        MOV dbl(*($C$FL5)), AC0 ; |2303| 
$C$DW$989	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$989, DW_AT_low_pc(0x00)
	.dwattr $C$DW$989, DW_AT_name("__divd")
	.dwattr $C$DW$989, DW_AT_TI_call
        CALL #__divd ; |2303| 
                                        ; call occurs [#__divd] ; |2303| 
        MOV dbl(*($C$FL8)), AC1 ; |2303| 
$C$DW$990	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$990, DW_AT_low_pc(0x00)
	.dwattr $C$DW$990, DW_AT_name("__mpyd")
	.dwattr $C$DW$990, DW_AT_TI_call
        CALL #__mpyd ; |2303| 
                                        ; call occurs [#__mpyd] ; |2303| 
$C$DW$991	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$991, DW_AT_low_pc(0x00)
	.dwattr $C$DW$991, DW_AT_name("__fixdli")
	.dwattr $C$DW$991, DW_AT_TI_call
        CALL #__fixdli ; |2303| 
                                        ; call occurs [#__fixdli] ; |2303| 
        MOV dbl(*SP(#4)), XAR3

        MOV dbl(*SP(#10)), AC0 ; |2303| 
||      SFTS AC0, #0, AC1 ; |2303| 

        SUB #1, AC0 ; |2303| 
        SFTS AC0, #16, AC0
        MPYK #36, AC0, AC0 ; |2303| 
        MOV AC0, AR1 ; |2303| 
        AADD AR1, AR3 ; |2303| 
        MOV dbl(*AR3(#28)), AC0 ; |2303| 
$C$DW$992	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$992, DW_AT_low_pc(0x00)
	.dwattr $C$DW$992, DW_AT_name("__mpylli")
	.dwattr $C$DW$992, DW_AT_TI_call
        CALL #__mpylli ; |2303| 
                                        ; call occurs [#__mpylli] ; |2303| 
        MOV dbl(*SP(#92)), AC1

        MOV dbl(*SP(#90)), AC2
||      BSET ST1_M40

        MOV AC2, mmap(AC1G)
        MOV dbl(*SP(#4)), XAR3
        ADD AC1, AC0 ; |2303| 
        SFTS AC0, #-15, AC1 ; |2303| 

        MOV dbl(*SP(#10)), AC0 ; |2303| 
||      BCLR ST1_M40

        SUB #1, AC0 ; |2303| 
        SFTS AC0, #16, AC0
        MPYK #36, AC0, AC0 ; |2303| 
        MOV AC0, AR1 ; |2303| 
        AADD AR1, AR3 ; |2303| 
        MOV AC1, dbl(*AR3(#28)) ; |2303| 
        MOV dbl(*SP(#4)), XAR3
        MPYMK *SP(#11), #36, AC0 ; |2303| 
        MOV AC0, AR1 ; |2303| 

        AADD AR1, AR3 ; |2303| 
||      MOV dbl(*SP(#88)), AC0 ; |2303| 

        MOV AC0, dbl(*AR3(short(#6))) ; |2303| 
	.dwendtag $C$DW$971


$C$DW$993	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$994	.dwtag  DW_TAG_variable, DW_AT_name("tre")
	.dwattr $C$DW$994, DW_AT_TI_symbol_name("_tre")
	.dwattr $C$DW$994, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$994, DW_AT_location[DW_OP_bregx 0x24 88]
	.dwpsn	file "./mp3_encode.c",line 2305,column 21,is_stmt
        MOV dbl(*($C$FL22)), AC0 ; |2305| 
$C$DW$995	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$995, DW_AT_low_pc(0x00)
	.dwattr $C$DW$995, DW_AT_name("_sqrt")
	.dwattr $C$DW$995, DW_AT_TI_call
        CALL #_sqrt ; |2305| 
                                        ; call occurs [#_sqrt] ; |2305| 
        OR #0, AC0, AC1
        MOV dbl(*($C$FL23)), AC0 ; |2305| 
$C$DW$996	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$996, DW_AT_low_pc(0x00)
	.dwattr $C$DW$996, DW_AT_name("__divd")
	.dwattr $C$DW$996, DW_AT_TI_call
        CALL #__divd ; |2305| 
                                        ; call occurs [#__divd] ; |2305| 
$C$DW$L$_shine_mdct_sub$22$E:
$C$DW$L$_shine_mdct_sub$23$B:
        MOV dbl(*($C$FL8)), AC1 ; |2305| 
$C$DW$997	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$997, DW_AT_low_pc(0x00)
	.dwattr $C$DW$997, DW_AT_name("__mpyd")
	.dwattr $C$DW$997, DW_AT_TI_call
        CALL #__mpyd ; |2305| 
                                        ; call occurs [#__mpyd] ; |2305| 
$C$DW$998	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$998, DW_AT_low_pc(0x00)
	.dwattr $C$DW$998, DW_AT_name("__fixdli")
	.dwattr $C$DW$998, DW_AT_TI_call
        CALL #__fixdli ; |2305| 
                                        ; call occurs [#__fixdli] ; |2305| 
        MOV dbl(*SP(#4)), XAR3

        MOV dbl(*SP(#10)), AC0 ; |2305| 
||      SFTS AC0, #0, AC1 ; |2305| 

        SUB #1, AC0 ; |2305| 
        SFTS AC0, #16, AC0
        MPYK #36, AC0, AC0 ; |2305| 
        MOV AC0, AR1 ; |2305| 
        AADD AR1, AR3 ; |2305| 
        MOV dbl(*AR3(#26)), AC0 ; |2305| 
$C$DW$999	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$999, DW_AT_low_pc(0x00)
	.dwattr $C$DW$999, DW_AT_name("__mpylli")
	.dwattr $C$DW$999, DW_AT_TI_call
        CALL #__mpylli ; |2305| 
                                        ; call occurs [#__mpylli] ; |2305| 
        BSET ST1_M40
        SFTL AC0, #-32, AC1 ; |2305| 
        MOV AC1, dbl(*SP(#90)) ; |2305| 

        MOV AC0, dbl(*SP(#92)) ; |2305| 
||      BCLR ST1_M40

        MOV dbl(*($C$FL22)), AC0 ; |2305| 
$C$DW$1000	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1000, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1000, DW_AT_name("_sqrt")
	.dwattr $C$DW$1000, DW_AT_TI_call
        CALL #_sqrt ; |2305| 
                                        ; call occurs [#_sqrt] ; |2305| 
        OR #0, AC0, AC1
        MOV dbl(*($C$FL5)), AC0 ; |2305| 
$C$DW$1001	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1001, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1001, DW_AT_name("__divd")
	.dwattr $C$DW$1001, DW_AT_TI_call
        CALL #__divd ; |2305| 
                                        ; call occurs [#__divd] ; |2305| 
        MOV dbl(*($C$FL8)), AC1 ; |2305| 
$C$DW$1002	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1002, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1002, DW_AT_name("__mpyd")
	.dwattr $C$DW$1002, DW_AT_TI_call
        CALL #__mpyd ; |2305| 
                                        ; call occurs [#__mpyd] ; |2305| 
$C$DW$1003	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1003, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1003, DW_AT_name("__fixdli")
	.dwattr $C$DW$1003, DW_AT_TI_call
        CALL #__fixdli ; |2305| 
                                        ; call occurs [#__fixdli] ; |2305| 
        MOV dbl(*SP(#4)), XAR3

        MPYMK *SP(#11), #36, AC0 ; |2305| 
||      SFTS AC0, #0, AC1 ; |2305| 

        MOV AC0, AR1 ; |2305| 
        AADD AR1, AR3 ; |2305| 
        MOV dbl(*AR3(#8)), AC0 ; |2305| 
$C$DW$1004	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1004, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1004, DW_AT_name("__mpylli")
	.dwattr $C$DW$1004, DW_AT_TI_call
        CALL #__mpylli ; |2305| 
                                        ; call occurs [#__mpylli] ; |2305| 
        MOV dbl(*SP(#92)), AC1
        MOV dbl(*SP(#90)), AC2
        MOV AC2, mmap(AC1G)
        BSET ST1_M40
        SUB AC1, AC0 ; |2305| 
        SFTS AC0, #-15, AC0 ; |2305| 

        MOV AC0, dbl(*SP(#88)) ; |2305| 
||      BCLR ST1_M40

        MOV dbl(*($C$FL22)), AC0 ; |2305| 
$C$DW$1005	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1005, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1005, DW_AT_name("_sqrt")
	.dwattr $C$DW$1005, DW_AT_TI_call
        CALL #_sqrt ; |2305| 
                                        ; call occurs [#_sqrt] ; |2305| 
$C$DW$L$_shine_mdct_sub$23$E:
$C$DW$L$_shine_mdct_sub$24$B:
        OR #0, AC0, AC1
        MOV dbl(*($C$FL23)), AC0 ; |2305| 
$C$DW$1006	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1006, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1006, DW_AT_name("__divd")
	.dwattr $C$DW$1006, DW_AT_TI_call
        CALL #__divd ; |2305| 
                                        ; call occurs [#__divd] ; |2305| 
        MOV dbl(*($C$FL8)), AC1 ; |2305| 
$C$DW$1007	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1007, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1007, DW_AT_name("__mpyd")
	.dwattr $C$DW$1007, DW_AT_TI_call
        CALL #__mpyd ; |2305| 
                                        ; call occurs [#__mpyd] ; |2305| 
$C$DW$1008	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1008, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1008, DW_AT_name("__fixdli")
	.dwattr $C$DW$1008, DW_AT_TI_call
        CALL #__fixdli ; |2305| 
                                        ; call occurs [#__fixdli] ; |2305| 
        MOV dbl(*SP(#4)), XAR3

        MPYMK *SP(#11), #36, AC0 ; |2305| 
||      SFTS AC0, #0, AC1 ; |2305| 

        MOV AC0, AR1 ; |2305| 
        AADD AR1, AR3 ; |2305| 
        MOV dbl(*AR3(#8)), AC0 ; |2305| 
$C$DW$1009	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1009, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1009, DW_AT_name("__mpylli")
	.dwattr $C$DW$1009, DW_AT_TI_call
        CALL #__mpylli ; |2305| 
                                        ; call occurs [#__mpylli] ; |2305| 
        BSET ST1_M40
        SFTL AC0, #-32, AC1 ; |2305| 
        MOV AC1, dbl(*SP(#90)) ; |2305| 

        MOV AC0, dbl(*SP(#92)) ; |2305| 
||      BCLR ST1_M40

        MOV dbl(*($C$FL22)), AC0 ; |2305| 
$C$DW$1010	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1010, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1010, DW_AT_name("_sqrt")
	.dwattr $C$DW$1010, DW_AT_TI_call
        CALL #_sqrt ; |2305| 
                                        ; call occurs [#_sqrt] ; |2305| 
        OR #0, AC0, AC1
        MOV dbl(*($C$FL5)), AC0 ; |2305| 
$C$DW$1011	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1011, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1011, DW_AT_name("__divd")
	.dwattr $C$DW$1011, DW_AT_TI_call
        CALL #__divd ; |2305| 
                                        ; call occurs [#__divd] ; |2305| 
        MOV dbl(*($C$FL8)), AC1 ; |2305| 
$C$DW$1012	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1012, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1012, DW_AT_name("__mpyd")
	.dwattr $C$DW$1012, DW_AT_TI_call
        CALL #__mpyd ; |2305| 
                                        ; call occurs [#__mpyd] ; |2305| 
$C$DW$1013	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1013, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1013, DW_AT_name("__fixdli")
	.dwattr $C$DW$1013, DW_AT_TI_call
        CALL #__fixdli ; |2305| 
                                        ; call occurs [#__fixdli] ; |2305| 
        MOV dbl(*SP(#4)), XAR3

        MOV dbl(*SP(#10)), AC0 ; |2305| 
||      SFTS AC0, #0, AC1 ; |2305| 

        SUB #1, AC0 ; |2305| 
        SFTS AC0, #16, AC0
        MPYK #36, AC0, AC0 ; |2305| 
        MOV AC0, AR1 ; |2305| 
        AADD AR1, AR3 ; |2305| 
        MOV dbl(*AR3(#26)), AC0 ; |2305| 
$C$DW$1014	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1014, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1014, DW_AT_name("__mpylli")
	.dwattr $C$DW$1014, DW_AT_TI_call
        CALL #__mpylli ; |2305| 
                                        ; call occurs [#__mpylli] ; |2305| 
        MOV dbl(*SP(#92)), AC1

        MOV dbl(*SP(#90)), AC2
||      BSET ST1_M40

        MOV AC2, mmap(AC1G)
        MOV dbl(*SP(#4)), XAR3
        ADD AC1, AC0 ; |2305| 
        SFTS AC0, #-15, AC1 ; |2305| 

        MOV dbl(*SP(#10)), AC0 ; |2305| 
||      BCLR ST1_M40

        SUB #1, AC0 ; |2305| 
        SFTS AC0, #16, AC0
        MPYK #36, AC0, AC0 ; |2305| 
        MOV AC0, AR1 ; |2305| 
        AADD AR1, AR3 ; |2305| 
        MOV AC1, dbl(*AR3(#26)) ; |2305| 
        MOV dbl(*SP(#4)), XAR3
        MPYMK *SP(#11), #36, AC0 ; |2305| 
        MOV AC0, AR1 ; |2305| 

        AADD AR1, AR3 ; |2305| 
||      MOV dbl(*SP(#88)), AC0 ; |2305| 

        MOV AC0, dbl(*AR3(#8)) ; |2305| 
	.dwendtag $C$DW$993


$C$DW$1015	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$1016	.dwtag  DW_TAG_variable, DW_AT_name("tre")
	.dwattr $C$DW$1016, DW_AT_TI_symbol_name("_tre")
	.dwattr $C$DW$1016, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1016, DW_AT_location[DW_OP_bregx 0x24 88]
	.dwpsn	file "./mp3_encode.c",line 2307,column 21,is_stmt
        MOV dbl(*($C$FL24)), AC0 ; |2307| 
$C$DW$1017	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1017, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1017, DW_AT_name("_sqrt")
	.dwattr $C$DW$1017, DW_AT_TI_call
        CALL #_sqrt ; |2307| 
                                        ; call occurs [#_sqrt] ; |2307| 
        OR #0, AC0, AC1
        MOV dbl(*($C$FL25)), AC0 ; |2307| 
$C$DW$1018	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1018, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1018, DW_AT_name("__divd")
	.dwattr $C$DW$1018, DW_AT_TI_call
        CALL #__divd ; |2307| 
                                        ; call occurs [#__divd] ; |2307| 
$C$DW$L$_shine_mdct_sub$24$E:
$C$DW$L$_shine_mdct_sub$25$B:
        MOV dbl(*($C$FL8)), AC1 ; |2307| 
$C$DW$1019	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1019, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1019, DW_AT_name("__mpyd")
	.dwattr $C$DW$1019, DW_AT_TI_call
        CALL #__mpyd ; |2307| 
                                        ; call occurs [#__mpyd] ; |2307| 
$C$DW$1020	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1020, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1020, DW_AT_name("__fixdli")
	.dwattr $C$DW$1020, DW_AT_TI_call
        CALL #__fixdli ; |2307| 
                                        ; call occurs [#__fixdli] ; |2307| 
        MOV dbl(*SP(#4)), XAR3

        MOV dbl(*SP(#10)), AC0 ; |2307| 
||      SFTS AC0, #0, AC1 ; |2307| 

        SUB #1, AC0 ; |2307| 
        SFTS AC0, #16, AC0
        MPYK #36, AC0, AC0 ; |2307| 
        MOV AC0, AR1 ; |2307| 
        AADD AR1, AR3 ; |2307| 
        MOV dbl(*AR3(#24)), AC0 ; |2307| 
$C$DW$1021	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1021, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1021, DW_AT_name("__mpylli")
	.dwattr $C$DW$1021, DW_AT_TI_call
        CALL #__mpylli ; |2307| 
                                        ; call occurs [#__mpylli] ; |2307| 
        BSET ST1_M40
        SFTL AC0, #-32, AC1 ; |2307| 
        MOV AC1, dbl(*SP(#90)) ; |2307| 

        MOV AC0, dbl(*SP(#92)) ; |2307| 
||      BCLR ST1_M40

        MOV dbl(*($C$FL24)), AC0 ; |2307| 
$C$DW$1022	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1022, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1022, DW_AT_name("_sqrt")
	.dwattr $C$DW$1022, DW_AT_TI_call
        CALL #_sqrt ; |2307| 
                                        ; call occurs [#_sqrt] ; |2307| 
        OR #0, AC0, AC1
        MOV dbl(*($C$FL5)), AC0 ; |2307| 
$C$DW$1023	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1023, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1023, DW_AT_name("__divd")
	.dwattr $C$DW$1023, DW_AT_TI_call
        CALL #__divd ; |2307| 
                                        ; call occurs [#__divd] ; |2307| 
        MOV dbl(*($C$FL8)), AC1 ; |2307| 
$C$DW$1024	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1024, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1024, DW_AT_name("__mpyd")
	.dwattr $C$DW$1024, DW_AT_TI_call
        CALL #__mpyd ; |2307| 
                                        ; call occurs [#__mpyd] ; |2307| 
$C$DW$1025	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1025, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1025, DW_AT_name("__fixdli")
	.dwattr $C$DW$1025, DW_AT_TI_call
        CALL #__fixdli ; |2307| 
                                        ; call occurs [#__fixdli] ; |2307| 
        MOV dbl(*SP(#4)), XAR3

        MPYMK *SP(#11), #36, AC0 ; |2307| 
||      SFTS AC0, #0, AC1 ; |2307| 

        MOV AC0, AR1 ; |2307| 
        AADD AR1, AR3 ; |2307| 
        MOV dbl(*AR3(#10)), AC0 ; |2307| 
$C$DW$1026	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1026, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1026, DW_AT_name("__mpylli")
	.dwattr $C$DW$1026, DW_AT_TI_call
        CALL #__mpylli ; |2307| 
                                        ; call occurs [#__mpylli] ; |2307| 
        MOV dbl(*SP(#92)), AC1
        MOV dbl(*SP(#90)), AC2
        MOV AC2, mmap(AC1G)
        BSET ST1_M40
        SUB AC1, AC0 ; |2307| 
        SFTS AC0, #-15, AC0 ; |2307| 

        MOV AC0, dbl(*SP(#88)) ; |2307| 
||      BCLR ST1_M40

        MOV dbl(*($C$FL24)), AC0 ; |2307| 
$C$DW$1027	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1027, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1027, DW_AT_name("_sqrt")
	.dwattr $C$DW$1027, DW_AT_TI_call
        CALL #_sqrt ; |2307| 
                                        ; call occurs [#_sqrt] ; |2307| 
$C$DW$L$_shine_mdct_sub$25$E:
$C$DW$L$_shine_mdct_sub$26$B:
        OR #0, AC0, AC1
        MOV dbl(*($C$FL25)), AC0 ; |2307| 
$C$DW$1028	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1028, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1028, DW_AT_name("__divd")
	.dwattr $C$DW$1028, DW_AT_TI_call
        CALL #__divd ; |2307| 
                                        ; call occurs [#__divd] ; |2307| 
        MOV dbl(*($C$FL8)), AC1 ; |2307| 
$C$DW$1029	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1029, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1029, DW_AT_name("__mpyd")
	.dwattr $C$DW$1029, DW_AT_TI_call
        CALL #__mpyd ; |2307| 
                                        ; call occurs [#__mpyd] ; |2307| 
$C$DW$1030	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1030, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1030, DW_AT_name("__fixdli")
	.dwattr $C$DW$1030, DW_AT_TI_call
        CALL #__fixdli ; |2307| 
                                        ; call occurs [#__fixdli] ; |2307| 
        MOV dbl(*SP(#4)), XAR3

        MPYMK *SP(#11), #36, AC0 ; |2307| 
||      SFTS AC0, #0, AC1 ; |2307| 

        MOV AC0, AR1 ; |2307| 
        AADD AR1, AR3 ; |2307| 
        MOV dbl(*AR3(#10)), AC0 ; |2307| 
$C$DW$1031	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1031, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1031, DW_AT_name("__mpylli")
	.dwattr $C$DW$1031, DW_AT_TI_call
        CALL #__mpylli ; |2307| 
                                        ; call occurs [#__mpylli] ; |2307| 
        BSET ST1_M40
        SFTL AC0, #-32, AC1 ; |2307| 
        MOV AC1, dbl(*SP(#90)) ; |2307| 

        MOV AC0, dbl(*SP(#92)) ; |2307| 
||      BCLR ST1_M40

        MOV dbl(*($C$FL24)), AC0 ; |2307| 
$C$DW$1032	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1032, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1032, DW_AT_name("_sqrt")
	.dwattr $C$DW$1032, DW_AT_TI_call
        CALL #_sqrt ; |2307| 
                                        ; call occurs [#_sqrt] ; |2307| 
        OR #0, AC0, AC1
        MOV dbl(*($C$FL5)), AC0 ; |2307| 
$C$DW$1033	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1033, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1033, DW_AT_name("__divd")
	.dwattr $C$DW$1033, DW_AT_TI_call
        CALL #__divd ; |2307| 
                                        ; call occurs [#__divd] ; |2307| 
        MOV dbl(*($C$FL8)), AC1 ; |2307| 
$C$DW$1034	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1034, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1034, DW_AT_name("__mpyd")
	.dwattr $C$DW$1034, DW_AT_TI_call
        CALL #__mpyd ; |2307| 
                                        ; call occurs [#__mpyd] ; |2307| 
$C$DW$1035	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1035, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1035, DW_AT_name("__fixdli")
	.dwattr $C$DW$1035, DW_AT_TI_call
        CALL #__fixdli ; |2307| 
                                        ; call occurs [#__fixdli] ; |2307| 
        MOV dbl(*SP(#4)), XAR3

        MOV dbl(*SP(#10)), AC0 ; |2307| 
||      SFTS AC0, #0, AC1 ; |2307| 

        SUB #1, AC0 ; |2307| 
        SFTS AC0, #16, AC0
        MPYK #36, AC0, AC0 ; |2307| 
        MOV AC0, AR1 ; |2307| 
        AADD AR1, AR3 ; |2307| 
        MOV dbl(*AR3(#24)), AC0 ; |2307| 
$C$DW$1036	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1036, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1036, DW_AT_name("__mpylli")
	.dwattr $C$DW$1036, DW_AT_TI_call
        CALL #__mpylli ; |2307| 
                                        ; call occurs [#__mpylli] ; |2307| 
        MOV dbl(*SP(#92)), AC1

        MOV dbl(*SP(#90)), AC2
||      BSET ST1_M40

        MOV AC2, mmap(AC1G)
        MOV dbl(*SP(#4)), XAR3
        ADD AC1, AC0 ; |2307| 
        SFTS AC0, #-15, AC1 ; |2307| 

        MOV dbl(*SP(#10)), AC0 ; |2307| 
||      BCLR ST1_M40

        SUB #1, AC0 ; |2307| 
        SFTS AC0, #16, AC0
        MPYK #36, AC0, AC0 ; |2307| 
        MOV AC0, AR1 ; |2307| 
        AADD AR1, AR3 ; |2307| 
        MOV AC1, dbl(*AR3(#24)) ; |2307| 
        MOV dbl(*SP(#4)), XAR3
        MPYMK *SP(#11), #36, AC0 ; |2307| 
        MOV AC0, AR1 ; |2307| 

        AADD AR1, AR3 ; |2307| 
||      MOV dbl(*SP(#88)), AC0 ; |2307| 

        MOV AC0, dbl(*AR3(#10)) ; |2307| 
	.dwendtag $C$DW$1015


$C$DW$1037	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$1038	.dwtag  DW_TAG_variable, DW_AT_name("tre")
	.dwattr $C$DW$1038, DW_AT_TI_symbol_name("_tre")
	.dwattr $C$DW$1038, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1038, DW_AT_location[DW_OP_bregx 0x24 88]
	.dwpsn	file "./mp3_encode.c",line 2309,column 21,is_stmt
        MOV dbl(*($C$FL26)), AC0 ; |2309| 
$C$DW$1039	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1039, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1039, DW_AT_name("_sqrt")
	.dwattr $C$DW$1039, DW_AT_TI_call
        CALL #_sqrt ; |2309| 
                                        ; call occurs [#_sqrt] ; |2309| 
        OR #0, AC0, AC1
        MOV dbl(*($C$FL27)), AC0 ; |2309| 
$C$DW$1040	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1040, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1040, DW_AT_name("__divd")
	.dwattr $C$DW$1040, DW_AT_TI_call
        CALL #__divd ; |2309| 
                                        ; call occurs [#__divd] ; |2309| 
$C$DW$L$_shine_mdct_sub$26$E:
$C$DW$L$_shine_mdct_sub$27$B:
        MOV dbl(*($C$FL8)), AC1 ; |2309| 
$C$DW$1041	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1041, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1041, DW_AT_name("__mpyd")
	.dwattr $C$DW$1041, DW_AT_TI_call
        CALL #__mpyd ; |2309| 
                                        ; call occurs [#__mpyd] ; |2309| 
$C$DW$1042	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1042, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1042, DW_AT_name("__fixdli")
	.dwattr $C$DW$1042, DW_AT_TI_call
        CALL #__fixdli ; |2309| 
                                        ; call occurs [#__fixdli] ; |2309| 
        MOV dbl(*SP(#4)), XAR3

        MOV dbl(*SP(#10)), AC0 ; |2309| 
||      SFTS AC0, #0, AC1 ; |2309| 

        SUB #1, AC0 ; |2309| 
        SFTS AC0, #16, AC0
        MPYK #36, AC0, AC0 ; |2309| 
        MOV AC0, AR1 ; |2309| 
        AADD AR1, AR3 ; |2309| 
        MOV dbl(*AR3(#22)), AC0 ; |2309| 
$C$DW$1043	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1043, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1043, DW_AT_name("__mpylli")
	.dwattr $C$DW$1043, DW_AT_TI_call
        CALL #__mpylli ; |2309| 
                                        ; call occurs [#__mpylli] ; |2309| 
        BSET ST1_M40
        SFTL AC0, #-32, AC1 ; |2309| 
        MOV AC1, dbl(*SP(#90)) ; |2309| 

        MOV AC0, dbl(*SP(#92)) ; |2309| 
||      BCLR ST1_M40

        MOV dbl(*($C$FL26)), AC0 ; |2309| 
$C$DW$1044	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1044, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1044, DW_AT_name("_sqrt")
	.dwattr $C$DW$1044, DW_AT_TI_call
        CALL #_sqrt ; |2309| 
                                        ; call occurs [#_sqrt] ; |2309| 
        OR #0, AC0, AC1
        MOV dbl(*($C$FL5)), AC0 ; |2309| 
$C$DW$1045	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1045, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1045, DW_AT_name("__divd")
	.dwattr $C$DW$1045, DW_AT_TI_call
        CALL #__divd ; |2309| 
                                        ; call occurs [#__divd] ; |2309| 
        MOV dbl(*($C$FL8)), AC1 ; |2309| 
$C$DW$1046	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1046, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1046, DW_AT_name("__mpyd")
	.dwattr $C$DW$1046, DW_AT_TI_call
        CALL #__mpyd ; |2309| 
                                        ; call occurs [#__mpyd] ; |2309| 
$C$DW$1047	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1047, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1047, DW_AT_name("__fixdli")
	.dwattr $C$DW$1047, DW_AT_TI_call
        CALL #__fixdli ; |2309| 
                                        ; call occurs [#__fixdli] ; |2309| 
        MOV dbl(*SP(#4)), XAR3

        MPYMK *SP(#11), #36, AC0 ; |2309| 
||      SFTS AC0, #0, AC1 ; |2309| 

        MOV AC0, AR1 ; |2309| 
        AADD AR1, AR3 ; |2309| 
        MOV dbl(*AR3(#12)), AC0 ; |2309| 
$C$DW$1048	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1048, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1048, DW_AT_name("__mpylli")
	.dwattr $C$DW$1048, DW_AT_TI_call
        CALL #__mpylli ; |2309| 
                                        ; call occurs [#__mpylli] ; |2309| 
        MOV dbl(*SP(#92)), AC1
        MOV dbl(*SP(#90)), AC2
        MOV AC2, mmap(AC1G)
        BSET ST1_M40
        SUB AC1, AC0 ; |2309| 
        SFTS AC0, #-15, AC0 ; |2309| 

        MOV AC0, dbl(*SP(#88)) ; |2309| 
||      BCLR ST1_M40

        MOV dbl(*($C$FL26)), AC0 ; |2309| 
$C$DW$1049	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1049, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1049, DW_AT_name("_sqrt")
	.dwattr $C$DW$1049, DW_AT_TI_call
        CALL #_sqrt ; |2309| 
                                        ; call occurs [#_sqrt] ; |2309| 
$C$DW$L$_shine_mdct_sub$27$E:
$C$DW$L$_shine_mdct_sub$28$B:
        OR #0, AC0, AC1
        MOV dbl(*($C$FL27)), AC0 ; |2309| 
$C$DW$1050	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1050, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1050, DW_AT_name("__divd")
	.dwattr $C$DW$1050, DW_AT_TI_call
        CALL #__divd ; |2309| 
                                        ; call occurs [#__divd] ; |2309| 
        MOV dbl(*($C$FL8)), AC1 ; |2309| 
$C$DW$1051	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1051, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1051, DW_AT_name("__mpyd")
	.dwattr $C$DW$1051, DW_AT_TI_call
        CALL #__mpyd ; |2309| 
                                        ; call occurs [#__mpyd] ; |2309| 
$C$DW$1052	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1052, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1052, DW_AT_name("__fixdli")
	.dwattr $C$DW$1052, DW_AT_TI_call
        CALL #__fixdli ; |2309| 
                                        ; call occurs [#__fixdli] ; |2309| 
        MOV dbl(*SP(#4)), XAR3

        MPYMK *SP(#11), #36, AC0 ; |2309| 
||      SFTS AC0, #0, AC1 ; |2309| 

        MOV AC0, AR1 ; |2309| 
        AADD AR1, AR3 ; |2309| 
        MOV dbl(*AR3(#12)), AC0 ; |2309| 
$C$DW$1053	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1053, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1053, DW_AT_name("__mpylli")
	.dwattr $C$DW$1053, DW_AT_TI_call
        CALL #__mpylli ; |2309| 
                                        ; call occurs [#__mpylli] ; |2309| 
        BSET ST1_M40
        SFTL AC0, #-32, AC1 ; |2309| 
        MOV AC1, dbl(*SP(#90)) ; |2309| 

        MOV AC0, dbl(*SP(#92)) ; |2309| 
||      BCLR ST1_M40

        MOV dbl(*($C$FL26)), AC0 ; |2309| 
$C$DW$1054	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1054, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1054, DW_AT_name("_sqrt")
	.dwattr $C$DW$1054, DW_AT_TI_call
        CALL #_sqrt ; |2309| 
                                        ; call occurs [#_sqrt] ; |2309| 
        OR #0, AC0, AC1
        MOV dbl(*($C$FL5)), AC0 ; |2309| 
$C$DW$1055	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1055, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1055, DW_AT_name("__divd")
	.dwattr $C$DW$1055, DW_AT_TI_call
        CALL #__divd ; |2309| 
                                        ; call occurs [#__divd] ; |2309| 
        MOV dbl(*($C$FL8)), AC1 ; |2309| 
$C$DW$1056	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1056, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1056, DW_AT_name("__mpyd")
	.dwattr $C$DW$1056, DW_AT_TI_call
        CALL #__mpyd ; |2309| 
                                        ; call occurs [#__mpyd] ; |2309| 
$C$DW$1057	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1057, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1057, DW_AT_name("__fixdli")
	.dwattr $C$DW$1057, DW_AT_TI_call
        CALL #__fixdli ; |2309| 
                                        ; call occurs [#__fixdli] ; |2309| 
        MOV dbl(*SP(#4)), XAR3

        MOV dbl(*SP(#10)), AC0 ; |2309| 
||      SFTS AC0, #0, AC1 ; |2309| 

        SUB #1, AC0 ; |2309| 
        SFTS AC0, #16, AC0
        MPYK #36, AC0, AC0 ; |2309| 
        MOV AC0, AR1 ; |2309| 
        AADD AR1, AR3 ; |2309| 
        MOV dbl(*AR3(#22)), AC0 ; |2309| 
$C$DW$1058	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1058, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1058, DW_AT_name("__mpylli")
	.dwattr $C$DW$1058, DW_AT_TI_call
        CALL #__mpylli ; |2309| 
                                        ; call occurs [#__mpylli] ; |2309| 
        MOV dbl(*SP(#92)), AC1

        MOV dbl(*SP(#90)), AC2
||      BSET ST1_M40

        MOV AC2, mmap(AC1G)
        MOV dbl(*SP(#4)), XAR3
        ADD AC1, AC0 ; |2309| 
        SFTS AC0, #-15, AC1 ; |2309| 

        MOV dbl(*SP(#10)), AC0 ; |2309| 
||      BCLR ST1_M40

        SUB #1, AC0 ; |2309| 
        SFTS AC0, #16, AC0
        MPYK #36, AC0, AC0 ; |2309| 
        MOV AC0, AR1 ; |2309| 
        AADD AR1, AR3 ; |2309| 
        MOV AC1, dbl(*AR3(#22)) ; |2309| 
        MOV dbl(*SP(#4)), XAR3
        MPYMK *SP(#11), #36, AC0 ; |2309| 
        MOV AC0, AR1 ; |2309| 

        AADD AR1, AR3 ; |2309| 
||      MOV dbl(*SP(#88)), AC0 ; |2309| 

        MOV AC0, dbl(*AR3(#12)) ; |2309| 
	.dwendtag $C$DW$1037


$C$DW$1059	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$1060	.dwtag  DW_TAG_variable, DW_AT_name("tre")
	.dwattr $C$DW$1060, DW_AT_TI_symbol_name("_tre")
	.dwattr $C$DW$1060, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1060, DW_AT_location[DW_OP_bregx 0x24 88]
	.dwpsn	file "./mp3_encode.c",line 2311,column 21,is_stmt
        MOV dbl(*($C$FL28)), AC0 ; |2311| 
$C$DW$1061	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1061, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1061, DW_AT_name("_sqrt")
	.dwattr $C$DW$1061, DW_AT_TI_call
        CALL #_sqrt ; |2311| 
                                        ; call occurs [#_sqrt] ; |2311| 
        OR #0, AC0, AC1
        MOV dbl(*($C$FL29)), AC0 ; |2311| 
$C$DW$1062	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1062, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1062, DW_AT_name("__divd")
	.dwattr $C$DW$1062, DW_AT_TI_call
        CALL #__divd ; |2311| 
                                        ; call occurs [#__divd] ; |2311| 
$C$DW$L$_shine_mdct_sub$28$E:
$C$DW$L$_shine_mdct_sub$29$B:
        MOV dbl(*($C$FL8)), AC1 ; |2311| 
$C$DW$1063	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1063, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1063, DW_AT_name("__mpyd")
	.dwattr $C$DW$1063, DW_AT_TI_call
        CALL #__mpyd ; |2311| 
                                        ; call occurs [#__mpyd] ; |2311| 
$C$DW$1064	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1064, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1064, DW_AT_name("__fixdli")
	.dwattr $C$DW$1064, DW_AT_TI_call
        CALL #__fixdli ; |2311| 
                                        ; call occurs [#__fixdli] ; |2311| 
        MOV dbl(*SP(#4)), XAR3

        MOV dbl(*SP(#10)), AC0 ; |2311| 
||      SFTS AC0, #0, AC1 ; |2311| 

        SUB #1, AC0 ; |2311| 
        SFTS AC0, #16, AC0
        MPYK #36, AC0, AC0 ; |2311| 
        MOV AC0, AR1 ; |2311| 
        AADD AR1, AR3 ; |2311| 
        MOV dbl(*AR3(#20)), AC0 ; |2311| 
$C$DW$1065	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1065, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1065, DW_AT_name("__mpylli")
	.dwattr $C$DW$1065, DW_AT_TI_call
        CALL #__mpylli ; |2311| 
                                        ; call occurs [#__mpylli] ; |2311| 
        BSET ST1_M40
        SFTL AC0, #-32, AC1 ; |2311| 
        MOV AC1, dbl(*SP(#90)) ; |2311| 

        MOV AC0, dbl(*SP(#92)) ; |2311| 
||      BCLR ST1_M40

        MOV dbl(*($C$FL28)), AC0 ; |2311| 
$C$DW$1066	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1066, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1066, DW_AT_name("_sqrt")
	.dwattr $C$DW$1066, DW_AT_TI_call
        CALL #_sqrt ; |2311| 
                                        ; call occurs [#_sqrt] ; |2311| 
        OR #0, AC0, AC1
        MOV dbl(*($C$FL5)), AC0 ; |2311| 
$C$DW$1067	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1067, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1067, DW_AT_name("__divd")
	.dwattr $C$DW$1067, DW_AT_TI_call
        CALL #__divd ; |2311| 
                                        ; call occurs [#__divd] ; |2311| 
        MOV dbl(*($C$FL8)), AC1 ; |2311| 
$C$DW$1068	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1068, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1068, DW_AT_name("__mpyd")
	.dwattr $C$DW$1068, DW_AT_TI_call
        CALL #__mpyd ; |2311| 
                                        ; call occurs [#__mpyd] ; |2311| 
$C$DW$1069	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1069, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1069, DW_AT_name("__fixdli")
	.dwattr $C$DW$1069, DW_AT_TI_call
        CALL #__fixdli ; |2311| 
                                        ; call occurs [#__fixdli] ; |2311| 
        MOV dbl(*SP(#4)), XAR3

        MPYMK *SP(#11), #36, AC0 ; |2311| 
||      SFTS AC0, #0, AC1 ; |2311| 

        MOV AC0, AR1 ; |2311| 
        AADD AR1, AR3 ; |2311| 
        MOV dbl(*AR3(#14)), AC0 ; |2311| 
$C$DW$1070	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1070, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1070, DW_AT_name("__mpylli")
	.dwattr $C$DW$1070, DW_AT_TI_call
        CALL #__mpylli ; |2311| 
                                        ; call occurs [#__mpylli] ; |2311| 
        MOV dbl(*SP(#92)), AC1
        MOV dbl(*SP(#90)), AC2
        MOV AC2, mmap(AC1G)
        BSET ST1_M40
        SUB AC1, AC0 ; |2311| 
        SFTS AC0, #-15, AC0 ; |2311| 

        MOV AC0, dbl(*SP(#88)) ; |2311| 
||      BCLR ST1_M40

        MOV dbl(*($C$FL28)), AC0 ; |2311| 
$C$DW$1071	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1071, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1071, DW_AT_name("_sqrt")
	.dwattr $C$DW$1071, DW_AT_TI_call
        CALL #_sqrt ; |2311| 
                                        ; call occurs [#_sqrt] ; |2311| 
$C$DW$L$_shine_mdct_sub$29$E:
$C$DW$L$_shine_mdct_sub$30$B:
        OR #0, AC0, AC1
        MOV dbl(*($C$FL29)), AC0 ; |2311| 
$C$DW$1072	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1072, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1072, DW_AT_name("__divd")
	.dwattr $C$DW$1072, DW_AT_TI_call
        CALL #__divd ; |2311| 
                                        ; call occurs [#__divd] ; |2311| 
        MOV dbl(*($C$FL8)), AC1 ; |2311| 
$C$DW$1073	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1073, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1073, DW_AT_name("__mpyd")
	.dwattr $C$DW$1073, DW_AT_TI_call
        CALL #__mpyd ; |2311| 
                                        ; call occurs [#__mpyd] ; |2311| 
$C$DW$1074	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1074, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1074, DW_AT_name("__fixdli")
	.dwattr $C$DW$1074, DW_AT_TI_call
        CALL #__fixdli ; |2311| 
                                        ; call occurs [#__fixdli] ; |2311| 
        MOV dbl(*SP(#4)), XAR3

        MPYMK *SP(#11), #36, AC0 ; |2311| 
||      SFTS AC0, #0, AC1 ; |2311| 

        MOV AC0, AR1 ; |2311| 
        AADD AR1, AR3 ; |2311| 
        MOV dbl(*AR3(#14)), AC0 ; |2311| 
$C$DW$1075	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1075, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1075, DW_AT_name("__mpylli")
	.dwattr $C$DW$1075, DW_AT_TI_call
        CALL #__mpylli ; |2311| 
                                        ; call occurs [#__mpylli] ; |2311| 
        BSET ST1_M40
        SFTL AC0, #-32, AC1 ; |2311| 
        MOV AC1, dbl(*SP(#90)) ; |2311| 

        MOV AC0, dbl(*SP(#92)) ; |2311| 
||      BCLR ST1_M40

        MOV dbl(*($C$FL28)), AC0 ; |2311| 
$C$DW$1076	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1076, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1076, DW_AT_name("_sqrt")
	.dwattr $C$DW$1076, DW_AT_TI_call
        CALL #_sqrt ; |2311| 
                                        ; call occurs [#_sqrt] ; |2311| 
        OR #0, AC0, AC1
        MOV dbl(*($C$FL5)), AC0 ; |2311| 
$C$DW$1077	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1077, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1077, DW_AT_name("__divd")
	.dwattr $C$DW$1077, DW_AT_TI_call
        CALL #__divd ; |2311| 
                                        ; call occurs [#__divd] ; |2311| 
        MOV dbl(*($C$FL8)), AC1 ; |2311| 
$C$DW$1078	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1078, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1078, DW_AT_name("__mpyd")
	.dwattr $C$DW$1078, DW_AT_TI_call
        CALL #__mpyd ; |2311| 
                                        ; call occurs [#__mpyd] ; |2311| 
$C$DW$1079	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1079, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1079, DW_AT_name("__fixdli")
	.dwattr $C$DW$1079, DW_AT_TI_call
        CALL #__fixdli ; |2311| 
                                        ; call occurs [#__fixdli] ; |2311| 
        MOV dbl(*SP(#4)), XAR3

        MOV dbl(*SP(#10)), AC0 ; |2311| 
||      SFTS AC0, #0, AC1 ; |2311| 

        SUB #1, AC0 ; |2311| 
        SFTS AC0, #16, AC0
        MPYK #36, AC0, AC0 ; |2311| 
        MOV AC0, AR1 ; |2311| 
        AADD AR1, AR3 ; |2311| 
        MOV dbl(*AR3(#20)), AC0 ; |2311| 
$C$DW$1080	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1080, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1080, DW_AT_name("__mpylli")
	.dwattr $C$DW$1080, DW_AT_TI_call
        CALL #__mpylli ; |2311| 
                                        ; call occurs [#__mpylli] ; |2311| 
        MOV dbl(*SP(#92)), AC1

        MOV dbl(*SP(#90)), AC2
||      BSET ST1_M40

        MOV AC2, mmap(AC1G)
        MOV dbl(*SP(#4)), XAR3
        ADD AC1, AC0 ; |2311| 
        SFTS AC0, #-15, AC1 ; |2311| 

        MOV dbl(*SP(#10)), AC0 ; |2311| 
||      BCLR ST1_M40

        SUB #1, AC0 ; |2311| 
        SFTS AC0, #16, AC0
        MPYK #36, AC0, AC0 ; |2311| 
        MOV AC0, AR1 ; |2311| 
        AADD AR1, AR3 ; |2311| 
        MOV AC1, dbl(*AR3(#20)) ; |2311| 
        MOV dbl(*SP(#4)), XAR3
        MPYMK *SP(#11), #36, AC0 ; |2311| 
        MOV AC0, AR1 ; |2311| 

        AADD AR1, AR3 ; |2311| 
||      MOV dbl(*SP(#88)), AC0 ; |2311| 

        MOV AC0, dbl(*AR3(#14)) ; |2311| 
	.dwendtag $C$DW$1059

$C$DW$L$_shine_mdct_sub$30$E:
$C$L220:    
$C$DW$L$_shine_mdct_sub$31$B:
	.dwpsn	file "./mp3_encode.c",line 2261,column 39,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |2261| 
        ADD #1, AC0 ; |2261| 
        MOV AC0, dbl(*SP(#10)) ; |2261| 
	.dwpsn	file "./mp3_encode.c",line 2261,column 28,is_stmt
        MOV dbl(*SP(#10)), AC1 ; |2261| 
        MOV #32, AC0 ; |2261| 
        CMP AC1 < AC0, TC1 ; |2261| 
        BCC $C$L213,TC1 ; |2261| 
                                        ; branchcc occurs ; |2261| 
$C$DW$L$_shine_mdct_sub$31$E:
$C$L221:    
$C$DW$L$_shine_mdct_sub$32$B:
	.dwpsn	file "./mp3_encode.c",line 2241,column 60,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |2241| 
        ADD #1, AC0 ; |2241| 
        MOV AC0, dbl(*SP(#8)) ; |2241| 
	.dwpsn	file "./mp3_encode.c",line 2241,column 22,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#8)), AC1 ; |2241| 
        MOV *AR3(#722), AC0 ; |2241| 
        CMP AC1 < AC0, TC1 ; |2241| 
        BCC $C$L208,TC1 ; |2241| 
                                        ; branchcc occurs ; |2241| 
$C$DW$L$_shine_mdct_sub$32$E:
$C$L222:    
$C$DW$L$_shine_mdct_sub$33$B:
	.dwpsn	file "./mp3_encode.c",line 2318,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR2
        MOV *SP(#7) << #16, AC0
        MPYK #2304, AC0, AC0 ; |2318| 
        MOV AC0, AR1 ; |2318| 
        MOV *AR2(#722) << #16, AC0
        MPYK #1152, AC0, AC0 ; |2318| 

        MOV AC0, AR1 ; |2318| 
||      AADD AR1, AR3 ; |2318| 

        MOV *SP(#7) << #16, AC0
        MPYK #2304, AC0, AC0 ; |2318| 

        MOV AC0, AR1 ; |2318| 
||      AADD AR1, AR3 ; |2318| 

        AMAR *+AR3(#8424) ; |2318| 
        AADD AR1, AR2 ; |2318| 
        AMAR *+AR2(#8424) ; |2318| 
        RPT #575  ; |2318| 
                                            ; loop starts ; |2318| 
$C$DW$L$_shine_mdct_sub$33$E:
$C$L223:    
$C$DW$L$_shine_mdct_sub$34$B:
            MOV dbl(*AR3+), dbl(*AR2+) ; |2318| 
                                        ; loop ends ; |2318| 
$C$DW$L$_shine_mdct_sub$34$E:
$C$L224:    
$C$DW$L$_shine_mdct_sub$35$B:
	.dwpsn	file "./mp3_encode.c",line 2320,column 5,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |2320| 
        SUB #1, AC0, AC1 ; |2320| 
        MOV AC1, dbl(*SP(#6)) ; |2320| 
        BCC $C$L207,AC0 != #0 ; |2320| 
                                        ; branchcc occurs ; |2320| 
$C$DW$L$_shine_mdct_sub$35$E:
	.dwpsn	file "./mp3_encode.c",line 2321,column 1,is_stmt
$C$L225:    
        AADD #94, SP
	.dwcfi	cfa_offset, 2
        POPBOTH XFP
	.dwcfi	restore_reg, 32
	.dwcfi	cfa_offset, 1
$C$DW$1081	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1081, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1081, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$1082	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$1082, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L207:1:1738864582")
	.dwattr $C$DW$1082, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$1082, DW_AT_TI_begin_line(0x8bf)
	.dwattr $C$DW$1082, DW_AT_TI_end_line(0x910)
$C$DW$1083	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1083, DW_AT_low_pc($C$DW$L$_shine_mdct_sub$2$B)
	.dwattr $C$DW$1083, DW_AT_high_pc($C$DW$L$_shine_mdct_sub$2$E)
$C$DW$1084	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1084, DW_AT_low_pc($C$DW$L$_shine_mdct_sub$33$B)
	.dwattr $C$DW$1084, DW_AT_high_pc($C$DW$L$_shine_mdct_sub$33$E)
$C$DW$1085	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1085, DW_AT_low_pc($C$DW$L$_shine_mdct_sub$35$B)
	.dwattr $C$DW$1085, DW_AT_high_pc($C$DW$L$_shine_mdct_sub$35$E)

$C$DW$1086	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$1086, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L208:2:1738864582")
	.dwattr $C$DW$1086, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$1086, DW_AT_TI_begin_line(0x8c1)
	.dwattr $C$DW$1086, DW_AT_TI_end_line(0x90b)
$C$DW$1087	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1087, DW_AT_low_pc($C$DW$L$_shine_mdct_sub$3$B)
	.dwattr $C$DW$1087, DW_AT_high_pc($C$DW$L$_shine_mdct_sub$3$E)
$C$DW$1088	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1088, DW_AT_low_pc($C$DW$L$_shine_mdct_sub$7$B)
	.dwattr $C$DW$1088, DW_AT_high_pc($C$DW$L$_shine_mdct_sub$7$E)
$C$DW$1089	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1089, DW_AT_low_pc($C$DW$L$_shine_mdct_sub$32$B)
	.dwattr $C$DW$1089, DW_AT_high_pc($C$DW$L$_shine_mdct_sub$32$E)

$C$DW$1090	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$1090, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L209:3:1738864582")
	.dwattr $C$DW$1090, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$1090, DW_AT_TI_begin_line(0x8c7)
	.dwattr $C$DW$1090, DW_AT_TI_end_line(0x8d2)
$C$DW$1091	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1091, DW_AT_low_pc($C$DW$L$_shine_mdct_sub$4$B)
	.dwattr $C$DW$1091, DW_AT_high_pc($C$DW$L$_shine_mdct_sub$4$E)
$C$DW$1092	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1092, DW_AT_low_pc($C$DW$L$_shine_mdct_sub$6$B)
	.dwattr $C$DW$1092, DW_AT_high_pc($C$DW$L$_shine_mdct_sub$6$E)

$C$DW$1093	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$1093, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L210:4:1738864582")
	.dwattr $C$DW$1093, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$1093, DW_AT_TI_begin_line(0x8d0)
	.dwattr $C$DW$1093, DW_AT_TI_end_line(0x8d1)
$C$DW$1094	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1094, DW_AT_low_pc($C$DW$L$_shine_mdct_sub$5$B)
	.dwattr $C$DW$1094, DW_AT_high_pc($C$DW$L$_shine_mdct_sub$5$E)
	.dwendtag $C$DW$1093

	.dwendtag $C$DW$1090


$C$DW$1095	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$1095, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L213:3:1738864582")
	.dwattr $C$DW$1095, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$1095, DW_AT_TI_begin_line(0x8d5)
	.dwattr $C$DW$1095, DW_AT_TI_end_line(0x90a)
$C$DW$1096	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1096, DW_AT_low_pc($C$DW$L$_shine_mdct_sub$8$B)
	.dwattr $C$DW$1096, DW_AT_high_pc($C$DW$L$_shine_mdct_sub$8$E)
$C$DW$1097	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1097, DW_AT_low_pc($C$DW$L$_shine_mdct_sub$15$B)
	.dwattr $C$DW$1097, DW_AT_high_pc($C$DW$L$_shine_mdct_sub$15$E)
$C$DW$1098	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1098, DW_AT_low_pc($C$DW$L$_shine_mdct_sub$16$B)
	.dwattr $C$DW$1098, DW_AT_high_pc($C$DW$L$_shine_mdct_sub$16$E)
$C$DW$1099	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1099, DW_AT_low_pc($C$DW$L$_shine_mdct_sub$17$B)
	.dwattr $C$DW$1099, DW_AT_high_pc($C$DW$L$_shine_mdct_sub$17$E)
$C$DW$1100	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1100, DW_AT_low_pc($C$DW$L$_shine_mdct_sub$18$B)
	.dwattr $C$DW$1100, DW_AT_high_pc($C$DW$L$_shine_mdct_sub$18$E)
$C$DW$1101	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1101, DW_AT_low_pc($C$DW$L$_shine_mdct_sub$19$B)
	.dwattr $C$DW$1101, DW_AT_high_pc($C$DW$L$_shine_mdct_sub$19$E)
$C$DW$1102	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1102, DW_AT_low_pc($C$DW$L$_shine_mdct_sub$20$B)
	.dwattr $C$DW$1102, DW_AT_high_pc($C$DW$L$_shine_mdct_sub$20$E)
$C$DW$1103	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1103, DW_AT_low_pc($C$DW$L$_shine_mdct_sub$21$B)
	.dwattr $C$DW$1103, DW_AT_high_pc($C$DW$L$_shine_mdct_sub$21$E)
$C$DW$1104	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1104, DW_AT_low_pc($C$DW$L$_shine_mdct_sub$22$B)
	.dwattr $C$DW$1104, DW_AT_high_pc($C$DW$L$_shine_mdct_sub$22$E)
$C$DW$1105	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1105, DW_AT_low_pc($C$DW$L$_shine_mdct_sub$23$B)
	.dwattr $C$DW$1105, DW_AT_high_pc($C$DW$L$_shine_mdct_sub$23$E)
$C$DW$1106	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1106, DW_AT_low_pc($C$DW$L$_shine_mdct_sub$24$B)
	.dwattr $C$DW$1106, DW_AT_high_pc($C$DW$L$_shine_mdct_sub$24$E)
$C$DW$1107	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1107, DW_AT_low_pc($C$DW$L$_shine_mdct_sub$25$B)
	.dwattr $C$DW$1107, DW_AT_high_pc($C$DW$L$_shine_mdct_sub$25$E)
$C$DW$1108	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1108, DW_AT_low_pc($C$DW$L$_shine_mdct_sub$26$B)
	.dwattr $C$DW$1108, DW_AT_high_pc($C$DW$L$_shine_mdct_sub$26$E)
$C$DW$1109	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1109, DW_AT_low_pc($C$DW$L$_shine_mdct_sub$27$B)
	.dwattr $C$DW$1109, DW_AT_high_pc($C$DW$L$_shine_mdct_sub$27$E)
$C$DW$1110	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1110, DW_AT_low_pc($C$DW$L$_shine_mdct_sub$28$B)
	.dwattr $C$DW$1110, DW_AT_high_pc($C$DW$L$_shine_mdct_sub$28$E)
$C$DW$1111	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1111, DW_AT_low_pc($C$DW$L$_shine_mdct_sub$29$B)
	.dwattr $C$DW$1111, DW_AT_high_pc($C$DW$L$_shine_mdct_sub$29$E)
$C$DW$1112	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1112, DW_AT_low_pc($C$DW$L$_shine_mdct_sub$10$B)
	.dwattr $C$DW$1112, DW_AT_high_pc($C$DW$L$_shine_mdct_sub$10$E)
$C$DW$1113	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1113, DW_AT_low_pc($C$DW$L$_shine_mdct_sub$14$B)
	.dwattr $C$DW$1113, DW_AT_high_pc($C$DW$L$_shine_mdct_sub$14$E)
$C$DW$1114	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1114, DW_AT_low_pc($C$DW$L$_shine_mdct_sub$30$B)
	.dwattr $C$DW$1114, DW_AT_high_pc($C$DW$L$_shine_mdct_sub$30$E)
$C$DW$1115	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1115, DW_AT_low_pc($C$DW$L$_shine_mdct_sub$31$B)
	.dwattr $C$DW$1115, DW_AT_high_pc($C$DW$L$_shine_mdct_sub$31$E)

$C$DW$1116	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$1116, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L214:4:1738864582")
	.dwattr $C$DW$1116, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$1116, DW_AT_TI_begin_line(0x8d7)
	.dwattr $C$DW$1116, DW_AT_TI_end_line(0x8db)
$C$DW$1117	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1117, DW_AT_low_pc($C$DW$L$_shine_mdct_sub$9$B)
	.dwattr $C$DW$1117, DW_AT_high_pc($C$DW$L$_shine_mdct_sub$9$E)
	.dwendtag $C$DW$1116


$C$DW$1118	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$1118, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L216:4:1738864582")
	.dwattr $C$DW$1118, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$1118, DW_AT_TI_begin_line(0x8e2)
	.dwattr $C$DW$1118, DW_AT_TI_end_line(0x8f4)
$C$DW$1119	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1119, DW_AT_low_pc($C$DW$L$_shine_mdct_sub$11$B)
	.dwattr $C$DW$1119, DW_AT_high_pc($C$DW$L$_shine_mdct_sub$11$E)
$C$DW$1120	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1120, DW_AT_low_pc($C$DW$L$_shine_mdct_sub$13$B)
	.dwattr $C$DW$1120, DW_AT_high_pc($C$DW$L$_shine_mdct_sub$13$E)

$C$DW$1121	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$1121, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L217:5:1738864582")
	.dwattr $C$DW$1121, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$1121, DW_AT_TI_begin_line(0x8e8)
	.dwattr $C$DW$1121, DW_AT_TI_end_line(0x8f1)
$C$DW$1122	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1122, DW_AT_low_pc($C$DW$L$_shine_mdct_sub$12$B)
	.dwattr $C$DW$1122, DW_AT_high_pc($C$DW$L$_shine_mdct_sub$12$E)
	.dwendtag $C$DW$1121

	.dwendtag $C$DW$1118

	.dwendtag $C$DW$1095

	.dwendtag $C$DW$1086


$C$DW$1123	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$1123, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L223:2:1738864582")
	.dwattr $C$DW$1123, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$1123, DW_AT_TI_begin_line(0x90e)
	.dwattr $C$DW$1123, DW_AT_TI_end_line(0x90e)
$C$DW$1124	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1124, DW_AT_low_pc($C$DW$L$_shine_mdct_sub$34$B)
	.dwattr $C$DW$1124, DW_AT_high_pc($C$DW$L$_shine_mdct_sub$34$E)
	.dwendtag $C$DW$1123

	.dwendtag $C$DW$1082

	.dwattr $C$DW$881, DW_AT_TI_end_file("./mp3_encode.c")
	.dwattr $C$DW$881, DW_AT_TI_end_line(0x911)
	.dwattr $C$DW$881, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$881

	.sect	".text"
	.global	_shine_subband_initialise

$C$DW$1125	.dwtag  DW_TAG_subprogram, DW_AT_name("shine_subband_initialise")
	.dwattr $C$DW$1125, DW_AT_low_pc(_shine_subband_initialise)
	.dwattr $C$DW$1125, DW_AT_high_pc(0x00)
	.dwattr $C$DW$1125, DW_AT_TI_symbol_name("_shine_subband_initialise")
	.dwattr $C$DW$1125, DW_AT_external
	.dwattr $C$DW$1125, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$1125, DW_AT_TI_begin_line(0x91a)
	.dwattr $C$DW$1125, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$1125, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "./mp3_encode.c",line 2331,column 1,is_stmt,address _shine_subband_initialise

	.dwfde $C$DW$CIE, _shine_subband_initialise
$C$DW$1126	.dwtag  DW_TAG_formal_parameter, DW_AT_name("config")
	.dwattr $C$DW$1126, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$1126, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$1126, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: shine_subband_initialise                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,AR3,XAR3,SP,CARRY,*
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (8 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_shine_subband_initialise:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-9, SP
	.dwcfi	cfa_offset, 10
$C$DW$1127	.dwtag  DW_TAG_variable, DW_AT_name("config")
	.dwattr $C$DW$1127, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$1127, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$1127, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$1128	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$1128, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$1128, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1128, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$1129	.dwtag  DW_TAG_variable, DW_AT_name("j")
	.dwattr $C$DW$1129, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$1129, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1129, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$1130	.dwtag  DW_TAG_variable, DW_AT_name("filter")
	.dwattr $C$DW$1130, DW_AT_TI_symbol_name("_filter")
	.dwattr $C$DW$1130, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$1130, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./mp3_encode.c",line 2335,column 10,is_stmt
        MOV #1, AC0 ; |2335| 
        MOV AC0, dbl(*SP(#2)) ; |2335| 
        MOV dbl(*SP(#2)), AC0 ; |2335| 
        SUB #1, AC0, AC1 ; |2335| 
        MOV AC1, dbl(*SP(#2)) ; |2335| 
        BCC $C$L227,AC0 == #0 ; |2335| 
                                        ; branchcc occurs ; |2335| 
$C$L226:    
$C$DW$L$_shine_subband_initialise$2$B:
	.dwpsn	file "./mp3_encode.c",line 2337,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#3), AR1 ; |2337| 
        SFTL AR1, #1 ; |2337| 

        AADD AR1, AR3 ; |2337| 
||      MOV #0, AC0 ; |2337| 

        MOV AC0, dbl(*AR3(#2150)) ; |2337| 
	.dwpsn	file "./mp3_encode.c",line 2338,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV *SP(#3) << #10, AC0 ; |2338| 
        MOV AC0, AR1 ; |2338| 
        MOV #1024, T1 ; |2338| 
        AADD AR1, AR0 ; |2338| 
        AMAR *+AR0(#6248) ; |2338| 
$C$DW$1131	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1131, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1131, DW_AT_name("_memset")
	.dwattr $C$DW$1131, DW_AT_TI_call

        CALL #_memset ; |2338| 
||      MOV #0, T0

                                        ; call occurs [#_memset] ; |2338| 
	.dwpsn	file "./mp3_encode.c",line 2339,column 5,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |2339| 
        SUB #1, AC0, AC1 ; |2339| 
        MOV AC1, dbl(*SP(#2)) ; |2339| 
        BCC $C$L226,AC0 != #0 ; |2339| 
                                        ; branchcc occurs ; |2339| 
$C$DW$L$_shine_subband_initialise$2$E:
$C$L227:    
	.dwpsn	file "./mp3_encode.c",line 2341,column 10,is_stmt
        MOV #32, AC0 ; |2341| 
        MOV AC0, dbl(*SP(#2)) ; |2341| 
        MOV dbl(*SP(#2)), AC0 ; |2341| 
        SUB #1, AC0, AC1 ; |2341| 
        MOV AC1, dbl(*SP(#2)) ; |2341| 
        BCC $C$L233,AC0 == #0 ; |2341| 
                                        ; branchcc occurs ; |2341| 
$C$L228:    
$C$DW$L$_shine_subband_initialise$4$B:
	.dwpsn	file "./mp3_encode.c",line 2342,column 14,is_stmt
        MOV #64, AC0 ; |2342| 
        MOV AC0, dbl(*SP(#4)) ; |2342| 
        MOV dbl(*SP(#4)), AC0 ; |2342| 
        SUB #1, AC0, AC1 ; |2342| 
        MOV AC1, dbl(*SP(#4)) ; |2342| 
        BCC $C$L232,AC0 == #0 ; |2342| 
                                        ; branchcc occurs ; |2342| 
$C$DW$L$_shine_subband_initialise$4$E:
$C$L229:    
$C$DW$L$_shine_subband_initialise$5$B:
	.dwpsn	file "./mp3_encode.c",line 2344,column 13,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |2344| 
        SFTL AC0, #1 ; |2344| 

        ADD #1, AC0, AC0 ; |2344| 
||      MOV #16, AC1 ; |2344| 

        SUB dbl(*SP(#4)), AC1, AC1 ; |2344| 
$C$DW$1132	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1132, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1132, DW_AT_name("__mpyli")
	.dwattr $C$DW$1132, DW_AT_TI_call
        CALL #__mpyli ; |2344| 
                                        ; call occurs [#__mpyli] ; |2344| 
$C$DW$1133	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1133, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1133, DW_AT_name("__fltlid")
	.dwattr $C$DW$1133, DW_AT_TI_call
        CALL #__fltlid ; |2344| 
                                        ; call occurs [#__fltlid] ; |2344| 
        MOV dbl(*($C$FL30)), AC1 ; |2344| 
$C$DW$1134	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1134, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1134, DW_AT_name("__mpyd")
	.dwattr $C$DW$1134, DW_AT_TI_call
        CALL #__mpyd ; |2344| 
                                        ; call occurs [#__mpyd] ; |2344| 
$C$DW$1135	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1135, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1135, DW_AT_name("_cos")
	.dwattr $C$DW$1135, DW_AT_TI_call
        CALL #_cos ; |2344| 
                                        ; call occurs [#_cos] ; |2344| 
        OR #0, AC0, AC1
        MOV dbl(*($C$FL31)), AC0 ; |2344| 
$C$DW$1136	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1136, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1136, DW_AT_name("__mpyd")
	.dwattr $C$DW$1136, DW_AT_TI_call
        CALL #__mpyd ; |2344| 
                                        ; call occurs [#__mpyd] ; |2344| 
        MOV AC0, dbl(*SP(#6)) ; |2344| 
        MOV dbl(*($C$FL4)), AC1 ; |2344| 
$C$DW$1137	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1137, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1137, DW_AT_name("__cmpd")
	.dwattr $C$DW$1137, DW_AT_TI_call
        CALL #__cmpd ; |2344| 
                                        ; call occurs [#__cmpd] ; |2344| 
        BCC $C$L230,T0 < #0 ; |2344| 
                                        ; branchcc occurs ; |2344| 
$C$DW$L$_shine_subband_initialise$5$E:
$C$DW$L$_shine_subband_initialise$6$B:
	.dwpsn	file "./mp3_encode.c",line 2345,column 17,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |2345| 
        MOV dbl(*($C$FL9)), AC1 ; |2345| 
$C$DW$1138	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1138, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1138, DW_AT_name("__addd")
	.dwattr $C$DW$1138, DW_AT_TI_call
        CALL #__addd ; |2345| 
                                        ; call occurs [#__addd] ; |2345| 
        AMAR *SP(#6), XAR0
$C$DW$1139	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1139, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1139, DW_AT_name("_modf")
	.dwattr $C$DW$1139, DW_AT_TI_call
        CALL #_modf ; |2345| 
                                        ; call occurs [#_modf] ; |2345| 
        B $C$L231 ; |2345| 
                                        ; branch occurs ; |2345| 
$C$DW$L$_shine_subband_initialise$6$E:
$C$L230:    
$C$DW$L$_shine_subband_initialise$7$B:
	.dwpsn	file "./mp3_encode.c",line 2347,column 17,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |2347| 
        MOV dbl(*($C$FL9)), AC1 ; |2347| 
$C$DW$1140	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1140, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1140, DW_AT_name("__subd")
	.dwattr $C$DW$1140, DW_AT_TI_call
        CALL #__subd ; |2347| 
                                        ; call occurs [#__subd] ; |2347| 
        AMAR *SP(#6), XAR0
$C$DW$1141	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1141, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1141, DW_AT_name("_modf")
	.dwattr $C$DW$1141, DW_AT_TI_call
        CALL #_modf ; |2347| 
                                        ; call occurs [#_modf] ; |2347| 
$C$DW$L$_shine_subband_initialise$7$E:
$C$L231:    
$C$DW$L$_shine_subband_initialise$8$B:
	.dwpsn	file "./mp3_encode.c",line 2349,column 13,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |2349| 
        MOV dbl(*($C$FL32)), AC1 ; |2349| 
$C$DW$1142	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1142, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1142, DW_AT_name("__mpyd")
	.dwattr $C$DW$1142, DW_AT_TI_call
        CALL #__mpyd ; |2349| 
                                        ; call occurs [#__mpyd] ; |2349| 
$C$DW$1143	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1143, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1143, DW_AT_name("__fixdli")
	.dwattr $C$DW$1143, DW_AT_TI_call
        CALL #__fixdli ; |2349| 
                                        ; call occurs [#__fixdli] ; |2349| 
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#3) << #7, AC1 ; |2349| 
        MOV AC1, AR1 ; |2349| 

        MOV *SP(#5), AR1 ; |2349| 
||      AADD AR1, AR3 ; |2349| 

        SFTL AR1, #1 ; |2349| 
        AADD AR1, AR3 ; |2349| 
        MOV AC0, dbl(*AR3(#2152)) ; |2349| 
	.dwpsn	file "./mp3_encode.c",line 2350,column 9,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |2350| 
        SUB #1, AC0, AC1 ; |2350| 
        MOV AC1, dbl(*SP(#4)) ; |2350| 
        BCC $C$L229,AC0 != #0 ; |2350| 
                                        ; branchcc occurs ; |2350| 
$C$DW$L$_shine_subband_initialise$8$E:
$C$L232:    
$C$DW$L$_shine_subband_initialise$9$B:
        MOV dbl(*SP(#2)), AC0 ; |2350| 
        SUB #1, AC0, AC1 ; |2350| 
        MOV AC1, dbl(*SP(#2)) ; |2350| 
        BCC $C$L228,AC0 != #0 ; |2350| 
                                        ; branchcc occurs ; |2350| 
$C$DW$L$_shine_subband_initialise$9$E:
	.dwpsn	file "./mp3_encode.c",line 2351,column 1,is_stmt
$C$L233:    
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$1144	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1144, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1144, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$1145	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$1145, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L228:1:1738864582")
	.dwattr $C$DW$1145, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$1145, DW_AT_TI_begin_line(0x925)
	.dwattr $C$DW$1145, DW_AT_TI_end_line(0x92e)
$C$DW$1146	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1146, DW_AT_low_pc($C$DW$L$_shine_subband_initialise$4$B)
	.dwattr $C$DW$1146, DW_AT_high_pc($C$DW$L$_shine_subband_initialise$4$E)
$C$DW$1147	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1147, DW_AT_low_pc($C$DW$L$_shine_subband_initialise$9$B)
	.dwattr $C$DW$1147, DW_AT_high_pc($C$DW$L$_shine_subband_initialise$9$E)

$C$DW$1148	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$1148, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L229:2:1738864582")
	.dwattr $C$DW$1148, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$1148, DW_AT_TI_begin_line(0x926)
	.dwattr $C$DW$1148, DW_AT_TI_end_line(0x92e)
$C$DW$1149	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1149, DW_AT_low_pc($C$DW$L$_shine_subband_initialise$5$B)
	.dwattr $C$DW$1149, DW_AT_high_pc($C$DW$L$_shine_subband_initialise$5$E)
$C$DW$1150	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1150, DW_AT_low_pc($C$DW$L$_shine_subband_initialise$6$B)
	.dwattr $C$DW$1150, DW_AT_high_pc($C$DW$L$_shine_subband_initialise$6$E)
$C$DW$1151	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1151, DW_AT_low_pc($C$DW$L$_shine_subband_initialise$7$B)
	.dwattr $C$DW$1151, DW_AT_high_pc($C$DW$L$_shine_subband_initialise$7$E)
$C$DW$1152	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1152, DW_AT_low_pc($C$DW$L$_shine_subband_initialise$8$B)
	.dwattr $C$DW$1152, DW_AT_high_pc($C$DW$L$_shine_subband_initialise$8$E)
	.dwendtag $C$DW$1148

	.dwendtag $C$DW$1145


$C$DW$1153	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$1153, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L226:1:1738864582")
	.dwattr $C$DW$1153, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$1153, DW_AT_TI_begin_line(0x91f)
	.dwattr $C$DW$1153, DW_AT_TI_end_line(0x923)
$C$DW$1154	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1154, DW_AT_low_pc($C$DW$L$_shine_subband_initialise$2$B)
	.dwattr $C$DW$1154, DW_AT_high_pc($C$DW$L$_shine_subband_initialise$2$E)
	.dwendtag $C$DW$1153

	.dwattr $C$DW$1125, DW_AT_TI_end_file("./mp3_encode.c")
	.dwattr $C$DW$1125, DW_AT_TI_end_line(0x92f)
	.dwattr $C$DW$1125, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$1125

	.sect	".text"
	.global	_shine_window_filter_subband

$C$DW$1155	.dwtag  DW_TAG_subprogram, DW_AT_name("shine_window_filter_subband")
	.dwattr $C$DW$1155, DW_AT_low_pc(_shine_window_filter_subband)
	.dwattr $C$DW$1155, DW_AT_high_pc(0x00)
	.dwattr $C$DW$1155, DW_AT_TI_symbol_name("_shine_window_filter_subband")
	.dwattr $C$DW$1155, DW_AT_external
	.dwattr $C$DW$1155, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$1155, DW_AT_TI_begin_line(0x93f)
	.dwattr $C$DW$1155, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$1155, DW_AT_TI_max_frame_size(0x94)
	.dwpsn	file "./mp3_encode.c",line 2368,column 1,is_stmt,address _shine_window_filter_subband

	.dwfde $C$DW$CIE, _shine_window_filter_subband
$C$DW$1156	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buffer")
	.dwattr $C$DW$1156, DW_AT_TI_symbol_name("_buffer")
	.dwattr $C$DW$1156, DW_AT_type(*$C$DW$T$152)
	.dwattr $C$DW$1156, DW_AT_location[DW_OP_reg17]
$C$DW$1157	.dwtag  DW_TAG_formal_parameter, DW_AT_name("s")
	.dwattr $C$DW$1157, DW_AT_TI_symbol_name("_s")
	.dwattr $C$DW$1157, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$1157, DW_AT_location[DW_OP_reg19]
$C$DW$1158	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ch")
	.dwattr $C$DW$1158, DW_AT_TI_symbol_name("_ch")
	.dwattr $C$DW$1158, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1158, DW_AT_location[DW_OP_reg0]
$C$DW$1159	.dwtag  DW_TAG_formal_parameter, DW_AT_name("config")
	.dwattr $C$DW$1159, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$1159, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$1159, DW_AT_location[DW_OP_reg21]
$C$DW$1160	.dwtag  DW_TAG_formal_parameter, DW_AT_name("stride")
	.dwattr $C$DW$1160, DW_AT_TI_symbol_name("_stride")
	.dwattr $C$DW$1160, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1160, DW_AT_location[DW_OP_reg3]
;*******************************************************************************
;* FUNCTION NAME: shine_window_filter_subband                                  *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,   *
;*                        XAR3,FP,XFP,SP,CARRY,M40,SATA,SATD,RDM,FRCT,SMUL     *
;*   Save On Entry Regs : FP                                                   *
;*   Stack Frame        : Full (Frame Pointer in AR6, w/ debug)                *
;*   Total Frame Size   : 148 words                                            *
;*                        (1 return address/alignment)                         *
;*                        (146 local values)                                   *
;*                        (1 register save area)                               *
;*   Min System Stack   : 2 words                                              *
;*******************************************************************************
_shine_window_filter_subband:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        PSHBOTH XFP
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 32, -2
        ADD #-146, mmap(SP)
        AMAR *SP(#0), XFP
	.dwcfi	cfa_offset, 148
$C$DW$1161	.dwtag  DW_TAG_variable, DW_AT_name("buffer")
	.dwattr $C$DW$1161, DW_AT_TI_symbol_name("_buffer")
	.dwattr $C$DW$1161, DW_AT_type(*$C$DW$T$152)
	.dwattr $C$DW$1161, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$1162	.dwtag  DW_TAG_variable, DW_AT_name("s")
	.dwattr $C$DW$1162, DW_AT_TI_symbol_name("_s")
	.dwattr $C$DW$1162, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$1162, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$1163	.dwtag  DW_TAG_variable, DW_AT_name("ch")
	.dwattr $C$DW$1163, DW_AT_TI_symbol_name("_ch")
	.dwattr $C$DW$1163, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1163, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$1164	.dwtag  DW_TAG_variable, DW_AT_name("config")
	.dwattr $C$DW$1164, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$1164, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$1164, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$1165	.dwtag  DW_TAG_variable, DW_AT_name("stride")
	.dwattr $C$DW$1165, DW_AT_TI_symbol_name("_stride")
	.dwattr $C$DW$1165, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1165, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$1166	.dwtag  DW_TAG_variable, DW_AT_name("y")
	.dwattr $C$DW$1166, DW_AT_TI_symbol_name("_y")
	.dwattr $C$DW$1166, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$1166, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$1167	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$1167, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$1167, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1167, DW_AT_location[DW_OP_bregx 0x24 138]
$C$DW$1168	.dwtag  DW_TAG_variable, DW_AT_name("j")
	.dwattr $C$DW$1168, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$1168, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1168, DW_AT_location[DW_OP_bregx 0x24 140]
$C$DW$1169	.dwtag  DW_TAG_variable, DW_AT_name("ptr")
	.dwattr $C$DW$1169, DW_AT_TI_symbol_name("_ptr")
	.dwattr $C$DW$1169, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$1169, DW_AT_location[DW_OP_bregx 0x24 142]
        MOV AC1, dbl(*SP(#8)) ; |2368| 
        MOV XAR2, dbl(*SP(#6))
        MOV AC0, dbl(*SP(#4)) ; |2368| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./mp3_encode.c",line 2371,column 14,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3), XAR3
        MOV XAR3, dbl(*FP(#142))
	.dwpsn	file "./mp3_encode.c",line 2374,column 10,is_stmt
        MOV #32, AC0 ; |2374| 
        MOV AC0, dbl(*FP(#138)) ; |2374| 
        MOV dbl(*FP(#138)), AC0 ; |2374| 
        SUB #1, AC0, AC1 ; |2374| 
        MOV AC1, dbl(*FP(#138)) ; |2374| 
        BCC $C$L235,AC0 == #0 ; |2374| 
                                        ; branchcc occurs ; |2374| 
$C$L234:    
$C$DW$L$_shine_window_filter_subband$2$B:
	.dwpsn	file "./mp3_encode.c",line 2376,column 9,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV *SP(#5), AR1 ; |2376| 
        SFTL AR1, #1 ; |2376| 
        AADD AR1, AR3 ; |2376| 
        MOV dbl(*AR3(#2150)), AC0 ; |2376| 
        MOV dbl(*SP(#6)), XAR3
        ADD dbl(*FP(#138)), AC0, AC0 ; |2376| 

        MOV *SP(#5) << #10, AC0 ; |2376| 
||      MOV AC0, AR1 ; |2376| 

        MOV AC0, AR2 ; |2376| 
        SFTL AR1, #1 ; |2376| 
        AADD AR2, AR3 ; |2376| 
        MOV dbl(*FP(#142)), XAR2

        MOV *AR2 << #16, AC0 ; |2376| 
||      AADD AR1, AR3 ; |2376| 

        MOV AC0, dbl(*AR3(#6248)) ; |2376| 
	.dwpsn	file "./mp3_encode.c",line 2377,column 9,is_stmt
        MOV *SP(#9), AR1 ; |2377| 
        MOV dbl(*FP(#142)), XAR3
        AADD AR1, AR3 ; |2377| 
        MOV XAR3, dbl(*FP(#142))
	.dwpsn	file "./mp3_encode.c",line 2378,column 5,is_stmt
        MOV dbl(*FP(#138)), AC0 ; |2378| 
        SUB #1, AC0, AC1 ; |2378| 
        MOV AC1, dbl(*FP(#138)) ; |2378| 
        BCC $C$L234,AC0 != #0 ; |2378| 
                                        ; branchcc occurs ; |2378| 
$C$DW$L$_shine_window_filter_subband$2$E:
$C$L235:    
	.dwpsn	file "./mp3_encode.c",line 2379,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR2
        MOV dbl(*FP(#142)), XAR3
        MOV XAR3, dbl(*AR2)
	.dwpsn	file "./mp3_encode.c",line 2381,column 10,is_stmt
        MOV #64, AC0 ; |2381| 
        MOV AC0, dbl(*FP(#138)) ; |2381| 
        MOV dbl(*FP(#138)), AC0 ; |2381| 
        SUB #1, AC0, AC1 ; |2381| 
        MOV AC1, dbl(*FP(#138)) ; |2381| 
        BCC $C$L237,AC0 == #0 ; |2381| 
                                        ; branchcc occurs ; |2381| 
$C$L236:    
$C$DW$L$_shine_window_filter_subband$4$B:

$C$DW$1170	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$1171	.dwtag  DW_TAG_variable, DW_AT_name("s_value")
	.dwattr $C$DW$1171, DW_AT_TI_symbol_name("_s_value")
	.dwattr $C$DW$1171, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1171, DW_AT_location[DW_OP_bregx 0x24 144]
	.dwpsn	file "./mp3_encode.c",line 2386,column 9,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV *SP(#5), AR1 ; |2386| 
        SFTL AR1, #1 ; |2386| 
        MOV dbl(*FP(#138)), AC0 ; |2386| 
        AADD AR1, AR3 ; |2386| 
        ADD dbl(*AR3(#2150)), AC0, AC0 ; |2386| 
        AND #0x01ff, AC0, AR1 ; |2386| 
        MOV dbl(*SP(#6)), XAR3
        MOV *SP(#5) << #10, AC0 ; |2386| 
        MOV AC0, AR2 ; |2386| 
        SFTL AR1, #1 ; |2386| 
        MOV *FP(#139), T0 ; |2386| 
        SFTL T0, #1 ; |2386| 
        AADD AR2, AR3 ; |2386| 
        AADD AR1, AR3 ; |2386| 
        MOV dbl(*AR3(#6248)), AC0 ; |2386| 
        AMOV #_shine_enwindow, XAR3 ; |2386| 
        MOV dbl(*AR3(T0)), AC1 ; |2386| 
$C$DW$1172	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1172, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1172, DW_AT_name("__mpylli")
	.dwattr $C$DW$1172, DW_AT_TI_call
        CALL #__mpylli ; |2386| 
                                        ; call occurs [#__mpylli] ; |2386| 
        BSET ST1_M40
        SFTS AC0, #-16, AC0 ; |2386| 
        MOV AC0, dbl(*FP(#144)) ; |2386| 
	.dwpsn	file "./mp3_encode.c",line 2388,column 9,is_stmt
        MOV dbl(*SP(#6)), XAR3

        MOV *SP(#5), AR1 ; |2388| 
||      BCLR ST1_M40

        SFTL AR1, #1 ; |2388| 
        MOV dbl(*FP(#138)), AC0 ; |2388| 
        AADD AR1, AR3 ; |2388| 
        ADD dbl(*AR3(#2150)), AC0, AC0 ; |2388| 
        ADD #64, AC0, AC0 ; |2388| 
        MOV dbl(*SP(#6)), XAR3
        AND #0x01ff, AC0, AR1 ; |2388| 
        MOV *SP(#5) << #10, AC0 ; |2388| 
        MOV AC0, AR2 ; |2388| 

        SFTL AR1, #1 ; |2388| 
||      MOV #64, AC1 ; |2388| 

        ADD dbl(*FP(#138)), AC1, AC1 ; |2388| 
        MOV AC1, T0 ; |2388| 
        SFTL T0, #1 ; |2388| 
        AADD AR2, AR3 ; |2388| 
        AADD AR1, AR3 ; |2388| 
        MOV dbl(*AR3(#6248)), AC0 ; |2388| 
        AMOV #_shine_enwindow, XAR3 ; |2388| 
        MOV dbl(*AR3(T0)), AC1 ; |2388| 
$C$DW$1173	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1173, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1173, DW_AT_name("__mpylli")
	.dwattr $C$DW$1173, DW_AT_TI_call
        CALL #__mpylli ; |2388| 
                                        ; call occurs [#__mpylli] ; |2388| 
        BSET ST1_M40

        BCLR ST1_M40
||      SFTS AC0, #-16, AC0 ; |2388| 

        ADD dbl(*FP(#144)), AC0, AC0 ; |2388| 
        MOV AC0, dbl(*FP(#144)) ; |2388| 
	.dwpsn	file "./mp3_encode.c",line 2390,column 9,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV *SP(#5), AR1 ; |2390| 
        SFTL AR1, #1 ; |2390| 
        MOV dbl(*FP(#138)), AC0 ; |2390| 
        AADD AR1, AR3 ; |2390| 
        ADD dbl(*AR3(#2150)), AC0, AC0 ; |2390| 
        ADD #128, AC0, AC0 ; |2390| 
        MOV dbl(*SP(#6)), XAR3
        AND #0x01ff, AC0, AR1 ; |2390| 
        MOV *SP(#5) << #10, AC0 ; |2390| 
        MOV AC0, AR2 ; |2390| 

        SFTL AR1, #1 ; |2390| 
||      MOV #128, AC1 ; |2390| 

        ADD dbl(*FP(#138)), AC1, AC1 ; |2390| 
        MOV AC1, T0 ; |2390| 
        SFTL T0, #1 ; |2390| 
        AADD AR2, AR3 ; |2390| 
        AADD AR1, AR3 ; |2390| 
        MOV dbl(*AR3(#6248)), AC0 ; |2390| 
        AMOV #_shine_enwindow, XAR3 ; |2390| 
        MOV dbl(*AR3(T0)), AC1 ; |2390| 
$C$DW$1174	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1174, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1174, DW_AT_name("__mpylli")
	.dwattr $C$DW$1174, DW_AT_TI_call
        CALL #__mpylli ; |2390| 
                                        ; call occurs [#__mpylli] ; |2390| 
        BSET ST1_M40

        BCLR ST1_M40
||      SFTS AC0, #-16, AC0 ; |2390| 

        ADD dbl(*FP(#144)), AC0, AC0 ; |2390| 
        MOV AC0, dbl(*FP(#144)) ; |2390| 
	.dwpsn	file "./mp3_encode.c",line 2392,column 9,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV *SP(#5), AR1 ; |2392| 
        SFTL AR1, #1 ; |2392| 
        MOV dbl(*FP(#138)), AC0 ; |2392| 
        AADD AR1, AR3 ; |2392| 
        ADD dbl(*AR3(#2150)), AC0, AC0 ; |2392| 
        MOV dbl(*SP(#6)), XAR3
        ADD #192, AC0, AC0 ; |2392| 
        AND #0x01ff, AC0, AR1 ; |2392| 
        MOV *SP(#5) << #10, AC0 ; |2392| 
        MOV AC0, AR2 ; |2392| 

        SFTL AR1, #1 ; |2392| 
||      MOV #192, AC1 ; |2392| 

        ADD dbl(*FP(#138)), AC1, AC1 ; |2392| 
        MOV AC1, T0 ; |2392| 
        SFTL T0, #1 ; |2392| 
        AADD AR2, AR3 ; |2392| 
        AADD AR1, AR3 ; |2392| 
        MOV dbl(*AR3(#6248)), AC0 ; |2392| 
        AMOV #_shine_enwindow, XAR3 ; |2392| 
        MOV dbl(*AR3(T0)), AC1 ; |2392| 
$C$DW$1175	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1175, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1175, DW_AT_name("__mpylli")
	.dwattr $C$DW$1175, DW_AT_TI_call
        CALL #__mpylli ; |2392| 
                                        ; call occurs [#__mpylli] ; |2392| 
        BSET ST1_M40

        BCLR ST1_M40
||      SFTS AC0, #-16, AC0 ; |2392| 

        ADD dbl(*FP(#144)), AC0, AC0 ; |2392| 
        MOV AC0, dbl(*FP(#144)) ; |2392| 
	.dwpsn	file "./mp3_encode.c",line 2394,column 9,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV *SP(#5), AR1 ; |2394| 
        SFTL AR1, #1 ; |2394| 
        MOV dbl(*FP(#138)), AC0 ; |2394| 
        AADD AR1, AR3 ; |2394| 
        ADD dbl(*AR3(#2150)), AC0, AC0 ; |2394| 
        MOV dbl(*SP(#6)), XAR3
        ADD #256, AC0, AC0 ; |2394| 
        AND #0x01ff, AC0, AR1 ; |2394| 
        MOV *SP(#5) << #10, AC0 ; |2394| 
        MOV AC0, AR2 ; |2394| 

        SFTL AR1, #1 ; |2394| 
||      MOV #256, AC1 ; |2394| 

        ADD dbl(*FP(#138)), AC1, AC1 ; |2394| 
        MOV AC1, T0 ; |2394| 
        SFTL T0, #1 ; |2394| 
        AADD AR2, AR3 ; |2394| 
        AADD AR1, AR3 ; |2394| 
        MOV dbl(*AR3(#6248)), AC0 ; |2394| 
        AMOV #_shine_enwindow, XAR3 ; |2394| 
        MOV dbl(*AR3(T0)), AC1 ; |2394| 
$C$DW$1176	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1176, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1176, DW_AT_name("__mpylli")
	.dwattr $C$DW$1176, DW_AT_TI_call
        CALL #__mpylli ; |2394| 
                                        ; call occurs [#__mpylli] ; |2394| 
        BSET ST1_M40

        BCLR ST1_M40
||      SFTS AC0, #-16, AC0 ; |2394| 

        ADD dbl(*FP(#144)), AC0, AC0 ; |2394| 
        MOV AC0, dbl(*FP(#144)) ; |2394| 
	.dwpsn	file "./mp3_encode.c",line 2396,column 9,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV *SP(#5), AR1 ; |2396| 
        SFTL AR1, #1 ; |2396| 
        MOV dbl(*FP(#138)), AC0 ; |2396| 
        AADD AR1, AR3 ; |2396| 
        ADD dbl(*AR3(#2150)), AC0, AC0 ; |2396| 
        MOV dbl(*SP(#6)), XAR3
        ADD #320, AC0, AC0 ; |2396| 
        AND #0x01ff, AC0, AR1 ; |2396| 
        MOV *SP(#5) << #10, AC0 ; |2396| 
        MOV AC0, AR2 ; |2396| 

        SFTL AR1, #1 ; |2396| 
||      MOV #320, AC1 ; |2396| 

        ADD dbl(*FP(#138)), AC1, AC1 ; |2396| 
        MOV AC1, T0 ; |2396| 
        SFTL T0, #1 ; |2396| 
        AADD AR2, AR3 ; |2396| 
        AADD AR1, AR3 ; |2396| 
        MOV dbl(*AR3(#6248)), AC0 ; |2396| 
        AMOV #_shine_enwindow, XAR3 ; |2396| 
        MOV dbl(*AR3(T0)), AC1 ; |2396| 
$C$DW$1177	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1177, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1177, DW_AT_name("__mpylli")
	.dwattr $C$DW$1177, DW_AT_TI_call
        CALL #__mpylli ; |2396| 
                                        ; call occurs [#__mpylli] ; |2396| 
        BSET ST1_M40

        BCLR ST1_M40
||      SFTS AC0, #-16, AC0 ; |2396| 

        ADD dbl(*FP(#144)), AC0, AC0 ; |2396| 
        MOV AC0, dbl(*FP(#144)) ; |2396| 
	.dwpsn	file "./mp3_encode.c",line 2398,column 9,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV *SP(#5), AR1 ; |2398| 
        SFTL AR1, #1 ; |2398| 
        MOV dbl(*FP(#138)), AC0 ; |2398| 
        AADD AR1, AR3 ; |2398| 
        ADD dbl(*AR3(#2150)), AC0, AC0 ; |2398| 
        MOV dbl(*SP(#6)), XAR3
        ADD #384, AC0, AC0 ; |2398| 
        AND #0x01ff, AC0, AR1 ; |2398| 
        MOV *SP(#5) << #10, AC0 ; |2398| 
        MOV AC0, AR2 ; |2398| 

        SFTL AR1, #1 ; |2398| 
||      MOV #384, AC1 ; |2398| 

        ADD dbl(*FP(#138)), AC1, AC1 ; |2398| 
        MOV AC1, T0 ; |2398| 
        SFTL T0, #1 ; |2398| 
        AADD AR2, AR3 ; |2398| 
        AADD AR1, AR3 ; |2398| 
        MOV dbl(*AR3(#6248)), AC0 ; |2398| 
        AMOV #_shine_enwindow, XAR3 ; |2398| 
        MOV dbl(*AR3(T0)), AC1 ; |2398| 
$C$DW$1178	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1178, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1178, DW_AT_name("__mpylli")
	.dwattr $C$DW$1178, DW_AT_TI_call
        CALL #__mpylli ; |2398| 
                                        ; call occurs [#__mpylli] ; |2398| 
        BSET ST1_M40

        BCLR ST1_M40
||      SFTS AC0, #-16, AC0 ; |2398| 

        ADD dbl(*FP(#144)), AC0, AC0 ; |2398| 
        MOV AC0, dbl(*FP(#144)) ; |2398| 
	.dwpsn	file "./mp3_encode.c",line 2400,column 9,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV *SP(#5), AR1 ; |2400| 
        SFTL AR1, #1 ; |2400| 
        MOV dbl(*FP(#138)), AC0 ; |2400| 
        AADD AR1, AR3 ; |2400| 
        ADD dbl(*AR3(#2150)), AC0, AC0 ; |2400| 
        MOV dbl(*SP(#6)), XAR3
        ADD #448, AC0, AC0 ; |2400| 
        AND #0x01ff, AC0, AR1 ; |2400| 
        MOV *SP(#5) << #10, AC0 ; |2400| 
        MOV AC0, AR2 ; |2400| 

        SFTL AR1, #1 ; |2400| 
||      MOV #448, AC1 ; |2400| 

        ADD dbl(*FP(#138)), AC1, AC1 ; |2400| 
        MOV AC1, T0 ; |2400| 
        SFTL T0, #1 ; |2400| 
        AADD AR2, AR3 ; |2400| 
        AADD AR1, AR3 ; |2400| 
        MOV dbl(*AR3(#6248)), AC0 ; |2400| 
        AMOV #_shine_enwindow, XAR3 ; |2400| 
        MOV dbl(*AR3(T0)), AC1 ; |2400| 
$C$DW$1179	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1179, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1179, DW_AT_name("__mpylli")
	.dwattr $C$DW$1179, DW_AT_TI_call
        CALL #__mpylli ; |2400| 
                                        ; call occurs [#__mpylli] ; |2400| 
        BSET ST1_M40

        BCLR ST1_M40
||      SFTS AC0, #-16, AC0 ; |2400| 

        ADD dbl(*FP(#144)), AC0, AC0 ; |2400| 
        MOV AC0, dbl(*FP(#144)) ; |2400| 
	.dwpsn	file "./mp3_encode.c",line 2403,column 9,is_stmt
        MOV *FP(#139), T0 ; |2403| 
        SFTL T0, #1 ; |2403| 
        AMAR *SP(#10), XAR3
        MOV dbl(*FP(#144)), AC0 ; |2403| 
        MOV AC0, dbl(*AR3(T0)) ; |2403| 
	.dwendtag $C$DW$1170

	.dwpsn	file "./mp3_encode.c",line 2404,column 5,is_stmt
        MOV dbl(*FP(#138)), AC0 ; |2404| 
        SUB #1, AC0, AC1 ; |2404| 
        MOV AC1, dbl(*FP(#138)) ; |2404| 
        BCC $C$L236,AC0 != #0 ; |2404| 
                                        ; branchcc occurs ; |2404| 
$C$DW$L$_shine_window_filter_subband$4$E:
$C$L237:    
	.dwpsn	file "./mp3_encode.c",line 2406,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV *SP(#5), AR1 ; |2406| 
        SFTL AR1, #1 ; |2406| 
        MOV #480, AC0 ; |2406| 
        AADD AR1, AR3 ; |2406| 
        ADD dbl(*AR3(#2150)), AC0, AC0 ; |2406| 
        MOV dbl(*SP(#6)), XAR3
        MOV *SP(#5), AR1 ; |2406| 
        SFTL AR1, #1 ; |2406| 
        AND #0x01ff, AC0, AC0 ; |2406| 
        AADD AR1, AR3 ; |2406| 
        MOV AC0, dbl(*AR3(#2150)) ; |2406| 
	.dwpsn	file "./mp3_encode.c",line 2408,column 10,is_stmt
        MOV #32, AC0 ; |2408| 
        MOV AC0, dbl(*FP(#138)) ; |2408| 
        MOV dbl(*FP(#138)), AC0 ; |2408| 
        SUB #1, AC0, AC1 ; |2408| 
        MOV AC1, dbl(*FP(#138)) ; |2408| 
        BCC $C$L241,AC0 == #0 ; |2408| 
                                        ; branchcc occurs ; |2408| 
$C$L238:    
$C$DW$L$_shine_window_filter_subband$6$B:

$C$DW$1180	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$1181	.dwtag  DW_TAG_variable, DW_AT_name("s_value")
	.dwattr $C$DW$1181, DW_AT_TI_symbol_name("_s_value")
	.dwattr $C$DW$1181, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1181, DW_AT_location[DW_OP_bregx 0x24 144]
	.dwpsn	file "./mp3_encode.c",line 2413,column 9,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV *FP(#139) << #7, AC0 ; |2413| 
        MOV AC0, AR1 ; |2413| 
        MOV dbl(*FP(#136)), AC1 ; |2413| 
        AADD AR1, AR3 ; |2413| 
        MOV dbl(*AR3(#2278)), AC0 ; |2413| 
$C$DW$1182	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1182, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1182, DW_AT_name("__mpylli")
	.dwattr $C$DW$1182, DW_AT_TI_call
        CALL #__mpylli ; |2413| 
                                        ; call occurs [#__mpylli] ; |2413| 
        BSET ST1_M40
        SFTS AC0, #-16, AC0 ; |2413| 
        MOV AC0, dbl(*FP(#144)) ; |2413| 
	.dwpsn	file "./mp3_encode.c",line 2414,column 14,is_stmt
        MOV #63, AC0 ; |2414| 
        MOV AC0, dbl(*FP(#140)) ; |2414| 
        MOV dbl(*FP(#140)), AC0 ; |2414| 
        BCLR ST1_M40
        BCC $C$L240,AC0 == #0 ; |2414| 
                                        ; branchcc occurs ; |2414| 
$C$DW$L$_shine_window_filter_subband$6$E:
$C$L239:    
$C$DW$L$_shine_window_filter_subband$7$B:
	.dwpsn	file "./mp3_encode.c",line 2416,column 13,is_stmt
        MOV *FP(#139) << #7, AC0 ; |2416| 
        MOV AC0, AR1 ; |2416| 
        MOV dbl(*SP(#6)), XAR3
        MOV dbl(*FP(#140)), AC0 ; |2416| 
        SUB #1, AC0 ; |2416| 

        MOV AC0, AR1 ; |2416| 
||      AADD AR1, AR3 ; |2416| 

        SFTL AR1, #1 ; |2416| 
        MOV dbl(*FP(#140)), AC1 ; |2416| 
        SUB #1, AC1 ; |2416| 
        MOV AC1, T0 ; |2416| 
        SFTL T0, #1 ; |2416| 
        AADD AR1, AR3 ; |2416| 
        MOV dbl(*AR3(#2152)), AC0 ; |2416| 
        AMAR *SP(#10), XAR3
        MOV dbl(*AR3(T0)), AC1 ; |2416| 
$C$DW$1183	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1183, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1183, DW_AT_name("__mpylli")
	.dwattr $C$DW$1183, DW_AT_TI_call
        CALL #__mpylli ; |2416| 
                                        ; call occurs [#__mpylli] ; |2416| 
        BSET ST1_M40

        BCLR ST1_M40
||      SFTS AC0, #-16, AC0 ; |2416| 

        ADD dbl(*FP(#144)), AC0, AC0 ; |2416| 
        MOV AC0, dbl(*FP(#144)) ; |2416| 
	.dwpsn	file "./mp3_encode.c",line 2417,column 13,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV *FP(#139) << #7, AC0 ; |2417| 
        MOV AC0, AR1 ; |2417| 
        MOV dbl(*FP(#140)), AC0 ; |2417| 
        SUB #2, AC0 ; |2417| 

        MOV AC0, AR1 ; |2417| 
||      AADD AR1, AR3 ; |2417| 

        SFTL AR1, #1 ; |2417| 
        MOV dbl(*FP(#140)), AC1 ; |2417| 
        SUB #2, AC1 ; |2417| 
        MOV AC1, T0 ; |2417| 
        SFTL T0, #1 ; |2417| 
        AADD AR1, AR3 ; |2417| 
        MOV dbl(*AR3(#2152)), AC0 ; |2417| 
        AMAR *SP(#10), XAR3
        MOV dbl(*AR3(T0)), AC1 ; |2417| 
$C$DW$1184	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1184, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1184, DW_AT_name("__mpylli")
	.dwattr $C$DW$1184, DW_AT_TI_call
        CALL #__mpylli ; |2417| 
                                        ; call occurs [#__mpylli] ; |2417| 
        BSET ST1_M40

        BCLR ST1_M40
||      SFTS AC0, #-16, AC0 ; |2417| 

        ADD dbl(*FP(#144)), AC0, AC0 ; |2417| 
        MOV AC0, dbl(*FP(#144)) ; |2417| 
	.dwpsn	file "./mp3_encode.c",line 2418,column 13,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV *FP(#139) << #7, AC0 ; |2418| 
        MOV AC0, AR1 ; |2418| 
        MOV dbl(*FP(#140)), AC0 ; |2418| 
        SUB #3, AC0 ; |2418| 

        MOV AC0, AR1 ; |2418| 
||      AADD AR1, AR3 ; |2418| 

        SFTL AR1, #1 ; |2418| 
        MOV dbl(*FP(#140)), AC1 ; |2418| 
        SUB #3, AC1 ; |2418| 
        MOV AC1, T0 ; |2418| 
        SFTL T0, #1 ; |2418| 
        AADD AR1, AR3 ; |2418| 
        MOV dbl(*AR3(#2152)), AC0 ; |2418| 
        AMAR *SP(#10), XAR3
        MOV dbl(*AR3(T0)), AC1 ; |2418| 
$C$DW$1185	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1185, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1185, DW_AT_name("__mpylli")
	.dwattr $C$DW$1185, DW_AT_TI_call
        CALL #__mpylli ; |2418| 
                                        ; call occurs [#__mpylli] ; |2418| 
        BSET ST1_M40

        BCLR ST1_M40
||      SFTS AC0, #-16, AC0 ; |2418| 

        ADD dbl(*FP(#144)), AC0, AC0 ; |2418| 
        MOV AC0, dbl(*FP(#144)) ; |2418| 
	.dwpsn	file "./mp3_encode.c",line 2419,column 13,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV *FP(#139) << #7, AC0 ; |2419| 
        MOV AC0, AR1 ; |2419| 
        MOV dbl(*FP(#140)), AC0 ; |2419| 
        SUB #4, AC0 ; |2419| 

        MOV AC0, AR1 ; |2419| 
||      AADD AR1, AR3 ; |2419| 

        SFTL AR1, #1 ; |2419| 
        MOV dbl(*FP(#140)), AC1 ; |2419| 
        SUB #4, AC1 ; |2419| 
        MOV AC1, T0 ; |2419| 
        SFTL T0, #1 ; |2419| 
        AADD AR1, AR3 ; |2419| 
        MOV dbl(*AR3(#2152)), AC0 ; |2419| 
        AMAR *SP(#10), XAR3
        MOV dbl(*AR3(T0)), AC1 ; |2419| 
$C$DW$1186	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1186, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1186, DW_AT_name("__mpylli")
	.dwattr $C$DW$1186, DW_AT_TI_call
        CALL #__mpylli ; |2419| 
                                        ; call occurs [#__mpylli] ; |2419| 
        BSET ST1_M40

        BCLR ST1_M40
||      SFTS AC0, #-16, AC0 ; |2419| 

        ADD dbl(*FP(#144)), AC0, AC0 ; |2419| 
        MOV AC0, dbl(*FP(#144)) ; |2419| 
	.dwpsn	file "./mp3_encode.c",line 2420,column 13,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV *FP(#139) << #7, AC0 ; |2420| 
        MOV AC0, AR1 ; |2420| 
        MOV dbl(*FP(#140)), AC0 ; |2420| 
        SUB #5, AC0 ; |2420| 

        MOV AC0, AR1 ; |2420| 
||      AADD AR1, AR3 ; |2420| 

        SFTL AR1, #1 ; |2420| 
        MOV dbl(*FP(#140)), AC1 ; |2420| 
        SUB #5, AC1 ; |2420| 
        MOV AC1, T0 ; |2420| 
        SFTL T0, #1 ; |2420| 
        AADD AR1, AR3 ; |2420| 
        MOV dbl(*AR3(#2152)), AC0 ; |2420| 
        AMAR *SP(#10), XAR3
        MOV dbl(*AR3(T0)), AC1 ; |2420| 
$C$DW$1187	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1187, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1187, DW_AT_name("__mpylli")
	.dwattr $C$DW$1187, DW_AT_TI_call
        CALL #__mpylli ; |2420| 
                                        ; call occurs [#__mpylli] ; |2420| 
        BSET ST1_M40

        BCLR ST1_M40
||      SFTS AC0, #-16, AC0 ; |2420| 

        ADD dbl(*FP(#144)), AC0, AC0 ; |2420| 
        MOV AC0, dbl(*FP(#144)) ; |2420| 
	.dwpsn	file "./mp3_encode.c",line 2421,column 13,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV *FP(#139) << #7, AC0 ; |2421| 
        MOV AC0, AR1 ; |2421| 
        MOV dbl(*FP(#140)), AC0 ; |2421| 
        SUB #6, AC0 ; |2421| 

        MOV AC0, AR1 ; |2421| 
||      AADD AR1, AR3 ; |2421| 

        SFTL AR1, #1 ; |2421| 
        MOV dbl(*FP(#140)), AC1 ; |2421| 
        SUB #6, AC1 ; |2421| 
        MOV AC1, T0 ; |2421| 
        SFTL T0, #1 ; |2421| 
        AADD AR1, AR3 ; |2421| 
        MOV dbl(*AR3(#2152)), AC0 ; |2421| 
        AMAR *SP(#10), XAR3
        MOV dbl(*AR3(T0)), AC1 ; |2421| 
$C$DW$1188	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1188, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1188, DW_AT_name("__mpylli")
	.dwattr $C$DW$1188, DW_AT_TI_call
        CALL #__mpylli ; |2421| 
                                        ; call occurs [#__mpylli] ; |2421| 
        BSET ST1_M40

        BCLR ST1_M40
||      SFTS AC0, #-16, AC0 ; |2421| 

        ADD dbl(*FP(#144)), AC0, AC0 ; |2421| 
        MOV AC0, dbl(*FP(#144)) ; |2421| 
	.dwpsn	file "./mp3_encode.c",line 2422,column 13,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV *FP(#139) << #7, AC0 ; |2422| 
        MOV AC0, AR1 ; |2422| 
        MOV dbl(*FP(#140)), AC0 ; |2422| 
        SUB #7, AC0 ; |2422| 

        MOV AC0, AR1 ; |2422| 
||      AADD AR1, AR3 ; |2422| 

        SFTL AR1, #1 ; |2422| 
        MOV dbl(*FP(#140)), AC1 ; |2422| 
        SUB #7, AC1 ; |2422| 
        MOV AC1, T0 ; |2422| 
        SFTL T0, #1 ; |2422| 
        AADD AR1, AR3 ; |2422| 
        MOV dbl(*AR3(#2152)), AC0 ; |2422| 
        AMAR *SP(#10), XAR3
        MOV dbl(*AR3(T0)), AC1 ; |2422| 
$C$DW$1189	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1189, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1189, DW_AT_name("__mpylli")
	.dwattr $C$DW$1189, DW_AT_TI_call
        CALL #__mpylli ; |2422| 
                                        ; call occurs [#__mpylli] ; |2422| 
        BSET ST1_M40

        BCLR ST1_M40
||      SFTS AC0, #-16, AC0 ; |2422| 

        ADD dbl(*FP(#144)), AC0, AC0 ; |2422| 
        MOV AC0, dbl(*FP(#144)) ; |2422| 
	.dwpsn	file "./mp3_encode.c",line 2414,column 25,is_stmt
        MOV dbl(*FP(#140)), AC0 ; |2414| 
        SUB #7, AC0 ; |2414| 
        MOV AC0, dbl(*FP(#140)) ; |2414| 
        MOV dbl(*FP(#140)), AC0 ; |2414| 
        BCC $C$L239,AC0 != #0 ; |2414| 
                                        ; branchcc occurs ; |2414| 
$C$DW$L$_shine_window_filter_subband$7$E:
$C$L240:    
$C$DW$L$_shine_window_filter_subband$8$B:
	.dwpsn	file "./mp3_encode.c",line 2425,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *FP(#139), T0 ; |2425| 
        SFTL T0, #1 ; |2425| 
        MOV dbl(*FP(#144)), AC0 ; |2425| 
        MOV AC0, dbl(*AR3(T0)) ; |2425| 
	.dwendtag $C$DW$1180

	.dwpsn	file "./mp3_encode.c",line 2426,column 5,is_stmt
        MOV dbl(*FP(#138)), AC0 ; |2426| 
        SUB #1, AC0, AC1 ; |2426| 
        MOV AC1, dbl(*FP(#138)) ; |2426| 
        BCC $C$L238,AC0 != #0 ; |2426| 
                                        ; branchcc occurs ; |2426| 
$C$DW$L$_shine_window_filter_subband$8$E:
	.dwpsn	file "./mp3_encode.c",line 2427,column 1,is_stmt
$C$L241:    
        ADD #146, mmap(SP)
	.dwcfi	cfa_offset, 2
        POPBOTH XFP
	.dwcfi	restore_reg, 32
	.dwcfi	cfa_offset, 1
$C$DW$1190	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1190, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1190, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$1191	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$1191, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L238:1:1738864582")
	.dwattr $C$DW$1191, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$1191, DW_AT_TI_begin_line(0x968)
	.dwattr $C$DW$1191, DW_AT_TI_end_line(0x97a)
$C$DW$1192	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1192, DW_AT_low_pc($C$DW$L$_shine_window_filter_subband$6$B)
	.dwattr $C$DW$1192, DW_AT_high_pc($C$DW$L$_shine_window_filter_subband$6$E)
$C$DW$1193	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1193, DW_AT_low_pc($C$DW$L$_shine_window_filter_subband$8$B)
	.dwattr $C$DW$1193, DW_AT_high_pc($C$DW$L$_shine_window_filter_subband$8$E)

$C$DW$1194	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$1194, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L239:2:1738864582")
	.dwattr $C$DW$1194, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$1194, DW_AT_TI_begin_line(0x96e)
	.dwattr $C$DW$1194, DW_AT_TI_end_line(0x977)
$C$DW$1195	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1195, DW_AT_low_pc($C$DW$L$_shine_window_filter_subband$7$B)
	.dwattr $C$DW$1195, DW_AT_high_pc($C$DW$L$_shine_window_filter_subband$7$E)
	.dwendtag $C$DW$1194

	.dwendtag $C$DW$1191


$C$DW$1196	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$1196, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L236:1:1738864582")
	.dwattr $C$DW$1196, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$1196, DW_AT_TI_begin_line(0x94d)
	.dwattr $C$DW$1196, DW_AT_TI_end_line(0x964)
$C$DW$1197	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1197, DW_AT_low_pc($C$DW$L$_shine_window_filter_subband$4$B)
	.dwattr $C$DW$1197, DW_AT_high_pc($C$DW$L$_shine_window_filter_subband$4$E)
	.dwendtag $C$DW$1196


$C$DW$1198	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$1198, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L234:1:1738864582")
	.dwattr $C$DW$1198, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$1198, DW_AT_TI_begin_line(0x946)
	.dwattr $C$DW$1198, DW_AT_TI_end_line(0x94a)
$C$DW$1199	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1199, DW_AT_low_pc($C$DW$L$_shine_window_filter_subband$2$B)
	.dwattr $C$DW$1199, DW_AT_high_pc($C$DW$L$_shine_window_filter_subband$2$E)
	.dwendtag $C$DW$1198

	.dwattr $C$DW$1155, DW_AT_TI_end_file("./mp3_encode.c")
	.dwattr $C$DW$1155, DW_AT_TI_end_line(0x97b)
	.dwattr $C$DW$1155, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$1155

	.sect	".text"
	.global	_shine_max_reservoir_bits

$C$DW$1200	.dwtag  DW_TAG_subprogram, DW_AT_name("shine_max_reservoir_bits")
	.dwattr $C$DW$1200, DW_AT_low_pc(_shine_max_reservoir_bits)
	.dwattr $C$DW$1200, DW_AT_high_pc(0x00)
	.dwattr $C$DW$1200, DW_AT_TI_symbol_name("_shine_max_reservoir_bits")
	.dwattr $C$DW$1200, DW_AT_external
	.dwattr $C$DW$1200, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1200, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$1200, DW_AT_TI_begin_line(0x984)
	.dwattr $C$DW$1200, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$1200, DW_AT_TI_max_frame_size(0x14)
	.dwpsn	file "./mp3_encode.c",line 2437,column 1,is_stmt,address _shine_max_reservoir_bits

	.dwfde $C$DW$CIE, _shine_max_reservoir_bits
$C$DW$1201	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pe")
	.dwattr $C$DW$1201, DW_AT_TI_symbol_name("_pe")
	.dwattr $C$DW$1201, DW_AT_type(*$C$DW$T$239)
	.dwattr $C$DW$1201, DW_AT_location[DW_OP_reg17]
$C$DW$1202	.dwtag  DW_TAG_formal_parameter, DW_AT_name("config")
	.dwattr $C$DW$1202, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$1202, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$1202, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: shine_max_reservoir_bits                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,CARRY, *
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 20 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (18 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_shine_max_reservoir_bits:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-19, SP
	.dwcfi	cfa_offset, 20
$C$DW$1203	.dwtag  DW_TAG_variable, DW_AT_name("pe")
	.dwattr $C$DW$1203, DW_AT_TI_symbol_name("_pe")
	.dwattr $C$DW$1203, DW_AT_type(*$C$DW$T$239)
	.dwattr $C$DW$1203, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$1204	.dwtag  DW_TAG_variable, DW_AT_name("config")
	.dwattr $C$DW$1204, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$1204, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$1204, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$1205	.dwtag  DW_TAG_variable, DW_AT_name("more_bits")
	.dwattr $C$DW$1205, DW_AT_TI_symbol_name("_more_bits")
	.dwattr $C$DW$1205, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1205, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$1206	.dwtag  DW_TAG_variable, DW_AT_name("max_bits")
	.dwattr $C$DW$1206, DW_AT_TI_symbol_name("_max_bits")
	.dwattr $C$DW$1206, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1206, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$1207	.dwtag  DW_TAG_variable, DW_AT_name("add_bits")
	.dwattr $C$DW$1207, DW_AT_TI_symbol_name("_add_bits")
	.dwattr $C$DW$1207, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1207, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$1208	.dwtag  DW_TAG_variable, DW_AT_name("over_bits")
	.dwattr $C$DW$1208, DW_AT_TI_symbol_name("_over_bits")
	.dwattr $C$DW$1208, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1208, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$1209	.dwtag  DW_TAG_variable, DW_AT_name("mean_bits")
	.dwattr $C$DW$1209, DW_AT_TI_symbol_name("_mean_bits")
	.dwattr $C$DW$1209, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1209, DW_AT_location[DW_OP_bregx 0x24 12]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./mp3_encode.c",line 2439,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(#11882)), AC0 ; |2439| 
        MOV AC0, dbl(*SP(#12)) ; |2439| 
	.dwpsn	file "./mp3_encode.c",line 2441,column 5,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |2441| 
        MOV AC0, dbl(*SP(#12)) ; |2441| 
	.dwpsn	file "./mp3_encode.c",line 2442,column 5,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |2442| 
        MOV AC0, dbl(*SP(#6)) ; |2442| 
	.dwpsn	file "./mp3_encode.c",line 2444,column 5,is_stmt
        MOV #4095, AC0 ; |2444| 
        MOV dbl(*SP(#6)), AC1 ; |2444| 
        CMP AC1 <= AC0, TC1 ; |2444| 
        BCC $C$L242,TC1 ; |2444| 
                                        ; branchcc occurs ; |2444| 
	.dwpsn	file "./mp3_encode.c",line 2445,column 9,is_stmt
        MOV AC0, dbl(*SP(#6)) ; |2445| 
$C$L242:    
	.dwpsn	file "./mp3_encode.c",line 2446,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(#11886)), AC0 ; |2446| 
        BCC $C$L243,AC0 != #0 ; |2446| 
                                        ; branchcc occurs ; |2446| 
	.dwpsn	file "./mp3_encode.c",line 2447,column 9,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |2447| 
        B $C$L249 ; |2447| 
                                        ; branch occurs ; |2447| 
$C$L243:    
	.dwpsn	file "./mp3_encode.c",line 2449,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*($C$FL33)), AC1 ; |2449| 
        MOV dbl(*AR3), AC0 ; |2449| 
$C$DW$1210	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1210, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1210, DW_AT_name("__mpyd")
	.dwattr $C$DW$1210, DW_AT_TI_call
        CALL #__mpyd ; |2449| 
                                        ; call occurs [#__mpyd] ; |2449| 
        MOV AC0, dbl(*SP(#16)) ; |2449| 
        MOV dbl(*SP(#12)), AC0 ; |2449| 
$C$DW$1211	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1211, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1211, DW_AT_name("__fltlid")
	.dwattr $C$DW$1211, DW_AT_TI_call
        CALL #__fltlid ; |2449| 
                                        ; call occurs [#__fltlid] ; |2449| 

        MOV dbl(*SP(#16)), AC0 ; |2449| 
||      OR #0, AC0, AC1

$C$DW$1212	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1212, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1212, DW_AT_name("__subd")
	.dwattr $C$DW$1212, DW_AT_TI_call
        CALL #__subd ; |2449| 
                                        ; call occurs [#__subd] ; |2449| 
$C$DW$1213	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1213, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1213, DW_AT_name("__fixdli")
	.dwattr $C$DW$1213, DW_AT_TI_call
        CALL #__fixdli ; |2449| 
                                        ; call occurs [#__fixdli] ; |2449| 
        MOV AC0, dbl(*SP(#4)) ; |2449| 
	.dwpsn	file "./mp3_encode.c",line 2450,column 5,is_stmt
        MOV #0, AC0 ; |2450| 
        MOV AC0, dbl(*SP(#8)) ; |2450| 
	.dwpsn	file "./mp3_encode.c",line 2451,column 5,is_stmt
        MOV #100, AC0 ; |2451| 
        MOV dbl(*SP(#4)), AC1 ; |2451| 
        CMP AC1 <= AC0, TC1 ; |2451| 
        BCC $C$L246,TC1 ; |2451| 
                                        ; branchcc occurs ; |2451| 

$C$DW$1214	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$1215	.dwtag  DW_TAG_variable, DW_AT_name("frac")
	.dwattr $C$DW$1215, DW_AT_TI_symbol_name("_frac")
	.dwattr $C$DW$1215, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1215, DW_AT_location[DW_OP_bregx 0x24 14]
	.dwpsn	file "./mp3_encode.c",line 2453,column 17,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(#11884)), AC1 ; |2453| 
        SFTS AC1, #1, AC0 ; |2453| 
        ADD AC1 << #2, AC0 ; |2453| 
$C$DW$1216	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1216, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1216, DW_AT_name("__divli")
	.dwattr $C$DW$1216, DW_AT_TI_call

        CALL #__divli ; |2453| 
||      MOV #10, AC1 ; |2453| 

                                        ; call occurs [#__divli] ; |2453| 
        MOV AC0, dbl(*SP(#14)) ; |2453| 
	.dwpsn	file "./mp3_encode.c",line 2455,column 9,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |2455| 
        MOV dbl(*SP(#14)), AC1 ; |2455| 
        CMP AC1 >= AC0, TC1 ; |2455| 
        BCC $C$L244,TC1 ; |2455| 
                                        ; branchcc occurs ; |2455| 
	.dwpsn	file "./mp3_encode.c",line 2456,column 13,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |2456| 
        MOV AC0, dbl(*SP(#8)) ; |2456| 
        B $C$L245 ; |2456| 
                                        ; branch occurs ; |2456| 
$C$L244:    
	.dwpsn	file "./mp3_encode.c",line 2458,column 13,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |2458| 
        MOV AC0, dbl(*SP(#8)) ; |2458| 
$C$L245:    
	.dwendtag $C$DW$1214

$C$L246:    
	.dwpsn	file "./mp3_encode.c",line 2460,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #10, AC1 ; |2460| 
        MOV dbl(*AR3(#11886)), AC0 ; |2460| 
$C$DW$1217	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1217, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1217, DW_AT_name("__divli")
	.dwattr $C$DW$1217, DW_AT_TI_call

        CALL #__divli ; |2460| 
||      SFTS AC0, #3, AC0 ; |2460| 

                                        ; call occurs [#__divli] ; |2460| 
        MOV dbl(*SP(#2)), XAR3
        SUB AC0, dbl(*AR3(#11884)), AC0 ; |2460| 
        SUB dbl(*SP(#8)), AC0, AC0 ; |2460| 
        MOV AC0, dbl(*SP(#10)) ; |2460| 
	.dwpsn	file "./mp3_encode.c",line 2461,column 5,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |2461| 
        BCC $C$L247,AC0 <= #0 ; |2461| 
                                        ; branchcc occurs ; |2461| 
	.dwpsn	file "./mp3_encode.c",line 2462,column 9,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |2462| 
        ADD dbl(*SP(#8)), AC0, AC0 ; |2462| 
        MOV AC0, dbl(*SP(#8)) ; |2462| 
$C$L247:    
	.dwpsn	file "./mp3_encode.c",line 2464,column 5,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |2464| 
        ADD dbl(*SP(#6)), AC0, AC0 ; |2464| 
        MOV AC0, dbl(*SP(#6)) ; |2464| 
	.dwpsn	file "./mp3_encode.c",line 2465,column 5,is_stmt
        MOV dbl(*SP(#6)), AC1 ; |2465| 
        MOV #4095, AC0 ; |2465| 
        CMP AC1 <= AC0, TC1 ; |2465| 
        BCC $C$L248,TC1 ; |2465| 
                                        ; branchcc occurs ; |2465| 
	.dwpsn	file "./mp3_encode.c",line 2466,column 9,is_stmt
        MOV AC0, dbl(*SP(#6)) ; |2466| 
$C$L248:    
	.dwpsn	file "./mp3_encode.c",line 2467,column 5,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |2467| 
$C$L249:    
	.dwpsn	file "./mp3_encode.c",line 2468,column 1,is_stmt
        AADD #19, SP
	.dwcfi	cfa_offset, 1
$C$DW$1218	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1218, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1218, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$1200, DW_AT_TI_end_file("./mp3_encode.c")
	.dwattr $C$DW$1200, DW_AT_TI_end_line(0x9a4)
	.dwattr $C$DW$1200, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$1200

	.sect	".text"
	.global	_shine_ResvAdjust

$C$DW$1219	.dwtag  DW_TAG_subprogram, DW_AT_name("shine_ResvAdjust")
	.dwattr $C$DW$1219, DW_AT_low_pc(_shine_ResvAdjust)
	.dwattr $C$DW$1219, DW_AT_high_pc(0x00)
	.dwattr $C$DW$1219, DW_AT_TI_symbol_name("_shine_ResvAdjust")
	.dwattr $C$DW$1219, DW_AT_external
	.dwattr $C$DW$1219, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$1219, DW_AT_TI_begin_line(0x9ac)
	.dwattr $C$DW$1219, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$1219, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "./mp3_encode.c",line 2477,column 1,is_stmt,address _shine_ResvAdjust

	.dwfde $C$DW$CIE, _shine_ResvAdjust
$C$DW$1220	.dwtag  DW_TAG_formal_parameter, DW_AT_name("gi")
	.dwattr $C$DW$1220, DW_AT_TI_symbol_name("_gi")
	.dwattr $C$DW$1220, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$1220, DW_AT_location[DW_OP_reg17]
$C$DW$1221	.dwtag  DW_TAG_formal_parameter, DW_AT_name("config")
	.dwattr $C$DW$1221, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$1221, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$1221, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: shine_ResvAdjust                                             *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,CARRY,*
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_shine_ResvAdjust:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$1222	.dwtag  DW_TAG_variable, DW_AT_name("gi")
	.dwattr $C$DW$1222, DW_AT_TI_symbol_name("_gi")
	.dwattr $C$DW$1222, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$1222, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$1223	.dwtag  DW_TAG_variable, DW_AT_name("config")
	.dwattr $C$DW$1223, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$1223, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$1223, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./mp3_encode.c",line 2478,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR2
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR2(#11882)), AC0 ; |2478| 
        MOV dbl(*SP(#0)), XAR2
        ADD dbl(*AR3(#11884)), AC0, AC0 ; |2478| 
        SUB uns(*AR2), AC0, AC0 ; |2478| 
        MOV AC0, dbl(*AR3(#11884)) ; |2478| 
	.dwpsn	file "./mp3_encode.c",line 2479,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$1224	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1224, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1224, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$1219, DW_AT_TI_end_file("./mp3_encode.c")
	.dwattr $C$DW$1219, DW_AT_TI_end_line(0x9af)
	.dwattr $C$DW$1219, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$1219

	.sect	".text"
	.global	_shine_ResvFrameEnd

$C$DW$1225	.dwtag  DW_TAG_subprogram, DW_AT_name("shine_ResvFrameEnd")
	.dwattr $C$DW$1225, DW_AT_low_pc(_shine_ResvFrameEnd)
	.dwattr $C$DW$1225, DW_AT_high_pc(0x00)
	.dwattr $C$DW$1225, DW_AT_TI_symbol_name("_shine_ResvFrameEnd")
	.dwattr $C$DW$1225, DW_AT_external
	.dwattr $C$DW$1225, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$1225, DW_AT_TI_begin_line(0x9ba)
	.dwattr $C$DW$1225, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$1225, DW_AT_TI_max_frame_size(0x18)
	.dwpsn	file "./mp3_encode.c",line 2491,column 1,is_stmt,address _shine_ResvFrameEnd

	.dwfde $C$DW$CIE, _shine_ResvFrameEnd
$C$DW$1226	.dwtag  DW_TAG_formal_parameter, DW_AT_name("config")
	.dwattr $C$DW$1226, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$1226, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$1226, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: shine_ResvFrameEnd                                           *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,AR0,XAR0,AR1,AR3,XAR3,SP,CARRY,TC1,  *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 24 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (22 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_shine_ResvFrameEnd:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-23, SP
	.dwcfi	cfa_offset, 24
$C$DW$1227	.dwtag  DW_TAG_variable, DW_AT_name("config")
	.dwattr $C$DW$1227, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$1227, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$1227, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$1228	.dwtag  DW_TAG_variable, DW_AT_name("gi")
	.dwattr $C$DW$1228, DW_AT_TI_symbol_name("_gi")
	.dwattr $C$DW$1228, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$1228, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$1229	.dwtag  DW_TAG_variable, DW_AT_name("gr")
	.dwattr $C$DW$1229, DW_AT_TI_symbol_name("_gr")
	.dwattr $C$DW$1229, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1229, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$1230	.dwtag  DW_TAG_variable, DW_AT_name("ch")
	.dwattr $C$DW$1230, DW_AT_TI_symbol_name("_ch")
	.dwattr $C$DW$1230, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1230, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$1231	.dwtag  DW_TAG_variable, DW_AT_name("ancillary_pad")
	.dwattr $C$DW$1231, DW_AT_TI_symbol_name("_ancillary_pad")
	.dwattr $C$DW$1231, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1231, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$1232	.dwtag  DW_TAG_variable, DW_AT_name("stuffingBits")
	.dwattr $C$DW$1232, DW_AT_TI_symbol_name("_stuffingBits")
	.dwattr $C$DW$1232, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1232, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$1233	.dwtag  DW_TAG_variable, DW_AT_name("over_bits")
	.dwattr $C$DW$1233, DW_AT_TI_symbol_name("_over_bits")
	.dwattr $C$DW$1233, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1233, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$1234	.dwtag  DW_TAG_variable, DW_AT_name("l3_side")
	.dwattr $C$DW$1234, DW_AT_TI_symbol_name("_l3_side")
	.dwattr $C$DW$1234, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$1234, DW_AT_location[DW_OP_bregx 0x24 14]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./mp3_encode.c",line 2495,column 24,is_stmt
        MOV dbl(*SP(#0)), XAR3
        AMAR *+AR3(#11888) ; |2495| 
        MOV XAR3, dbl(*SP(#14))
	.dwpsn	file "./mp3_encode.c",line 2497,column 5,is_stmt
        MOV #0, AC0 ; |2497| 
        MOV AC0, dbl(*SP(#8)) ; |2497| 
	.dwpsn	file "./mp3_encode.c",line 2500,column 5,is_stmt
        B $C$L250 ; |2500| 
                                        ; branch occurs ; |2500| 
$C$L250:    
	.dwpsn	file "./mp3_encode.c",line 2503,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#11886)), AC0 ; |2503| 
        SUB AC0, dbl(*AR3(#11884)), AC0 ; |2503| 
        MOV AC0, dbl(*SP(#12)) ; |2503| 
	.dwpsn	file "./mp3_encode.c",line 2504,column 5,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |2504| 
        BCC $C$L251,AC0 >= #0 ; |2504| 
                                        ; branchcc occurs ; |2504| 
	.dwpsn	file "./mp3_encode.c",line 2505,column 9,is_stmt
        MOV #0, AC0 ; |2505| 
        MOV AC0, dbl(*SP(#12)) ; |2505| 
$C$L251:    
	.dwpsn	file "./mp3_encode.c",line 2507,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#12)), AC0 ; |2507| 
        SUB AC0, dbl(*AR3(#11884)), AC0 ; |2507| 
        MOV AC0, dbl(*AR3(#11884)) ; |2507| 
	.dwpsn	file "./mp3_encode.c",line 2508,column 5,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |2508| 
        ADD dbl(*SP(#12)), AC0, AC0 ; |2508| 
        MOV AC0, dbl(*SP(#10)) ; |2508| 
	.dwpsn	file "./mp3_encode.c",line 2511,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#11884)), AC0 ; |2511| 
$C$DW$1235	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1235, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1235, DW_AT_name("__remli")
	.dwattr $C$DW$1235, DW_AT_TI_call

        CALL #__remli ; |2511| 
||      MOV #8, AC1 ; |2511| 

                                        ; call occurs [#__remli] ; |2511| 
        MOV AC0, dbl(*SP(#12)) ; |2511| 
        BCC $C$L252,AC0 == #0 ; |2511| 
                                        ; branchcc occurs ; |2511| 
	.dwpsn	file "./mp3_encode.c",line 2513,column 9,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |2513| 
        ADD dbl(*SP(#10)), AC0, AC0 ; |2513| 
        MOV AC0, dbl(*SP(#10)) ; |2513| 
	.dwpsn	file "./mp3_encode.c",line 2514,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#12)), AC0 ; |2514| 
        SUB AC0, dbl(*AR3(#11884)), AC0 ; |2514| 
        MOV AC0, dbl(*AR3(#11884)) ; |2514| 
$C$L252:    
	.dwpsn	file "./mp3_encode.c",line 2517,column 5,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |2517| 
        BCC $C$L260,AC0 == #0 ; |2517| 
                                        ; branchcc occurs ; |2517| 
	.dwpsn	file "./mp3_encode.c",line 2524,column 9,is_stmt
        MOV dbl(*SP(#14)), XAR3

        MOV XAR3, dbl(*SP(#2))
||      AADD #6, AR3 ; |2524| 

	.dwpsn	file "./mp3_encode.c",line 2526,column 9,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |2526| 
        ADD uns(*AR3), AC0, AC1 ; |2526| 
        MOV #4095, AC0 ; |2526| 
        CMP AC1 >= AC0, TC1 ; |2526| 
        BCC $C$L253,TC1 ; |2526| 
                                        ; branchcc occurs ; |2526| 
	.dwpsn	file "./mp3_encode.c",line 2527,column 13,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |2527| 
        ADD uns(*AR3), AC0, AC0 ; |2527| 
        MOV AC0, *AR3 ; |2527| 
        B $C$L260 ; |2527| 
                                        ; branch occurs ; |2527| 
$C$L253:    
	.dwpsn	file "./mp3_encode.c",line 2531,column 18,is_stmt
        MOV #0, AC0 ; |2531| 
        MOV AC0, dbl(*SP(#4)) ; |2531| 
	.dwpsn	file "./mp3_encode.c",line 2531,column 26,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#4)), AC1 ; |2531| 
        MOV *AR3(#722), AC0 ; |2531| 
        CMP AC1 >= AC0, TC1 ; |2531| 
        BCC $C$L259,TC1 ; |2531| 
                                        ; branchcc occurs ; |2531| 
$C$L254:    
$C$DW$L$_shine_ResvFrameEnd$11$B:
	.dwpsn	file "./mp3_encode.c",line 2532,column 22,is_stmt
        MOV #0, AC0 ; |2532| 
        MOV AC0, dbl(*SP(#6)) ; |2532| 
	.dwpsn	file "./mp3_encode.c",line 2532,column 30,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |2532| 
        BCC $C$L258,AC0 > #0 ; |2532| 
                                        ; branchcc occurs ; |2532| 
$C$DW$L$_shine_ResvFrameEnd$11$E:
$C$L255:    
$C$DW$L$_shine_ResvFrameEnd$12$B:

$C$DW$1236	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$1237	.dwtag  DW_TAG_variable, DW_AT_name("extraBits")
	.dwattr $C$DW$1237, DW_AT_TI_symbol_name("_extraBits")
	.dwattr $C$DW$1237, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1237, DW_AT_location[DW_OP_bregx 0x24 16]
$C$DW$1238	.dwtag  DW_TAG_variable, DW_AT_name("bitsThisGr")
	.dwattr $C$DW$1238, DW_AT_TI_symbol_name("_bitsThisGr")
	.dwattr $C$DW$1238, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1238, DW_AT_location[DW_OP_bregx 0x24 18]
$C$DW$1239	.dwtag  DW_TAG_variable, DW_AT_name("gi")
	.dwattr $C$DW$1239, DW_AT_TI_symbol_name("_gi")
	.dwattr $C$DW$1239, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$1239, DW_AT_location[DW_OP_bregx 0x24 20]
	.dwpsn	file "./mp3_encode.c",line 2535,column 30,is_stmt
        MOV dbl(*SP(#14)), XAR3
        MPYMK *SP(#5), #23, AC0 ; |2535| 
        MOV AC0, AR1 ; |2535| 
        MPYMK *SP(#7), #23, AC0 ; |2535| 

        MOV AC0, AR1 ; |2535| 
||      AADD AR1, AR3 ; |2535| 

        AADD AR1, AR3 ; |2535| 

        MOV XAR3, dbl(*SP(#20))
||      AADD #6, AR3 ; |2535| 

	.dwpsn	file "./mp3_encode.c",line 2536,column 21,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |2536| 
        BCC $C$L258,AC0 == #0 ; |2536| 
                                        ; branchcc occurs ; |2536| 
$C$DW$L$_shine_ResvFrameEnd$12$E:
$C$DW$L$_shine_ResvFrameEnd$13$B:
	.dwpsn	file "./mp3_encode.c",line 2537,column 25,is_stmt
	.dwpsn	file "./mp3_encode.c",line 2538,column 21,is_stmt
        MOV #4095, AC0 ; |2538| 
        SUB uns(*AR3), AC0, AC0 ; |2538| 
        AND #0xffff, AC0, AC0 ; |2538| 
        MOV AC0, dbl(*SP(#16)) ; |2538| 
	.dwpsn	file "./mp3_encode.c",line 2539,column 21,is_stmt
        MOV dbl(*SP(#16)), AC1 ; |2539| 
        MOV dbl(*SP(#10)), AC0 ; |2539| 
        CMP AC1 >= AC0, TC1 ; |2539| 
        BCC $C$L256,TC1 ; |2539| 
                                        ; branchcc occurs ; |2539| 
$C$DW$L$_shine_ResvFrameEnd$13$E:
$C$DW$L$_shine_ResvFrameEnd$14$B:
        MOV dbl(*SP(#16)), AC0 ; |2539| 
        B $C$L257 ; |2539| 
                                        ; branch occurs ; |2539| 
$C$DW$L$_shine_ResvFrameEnd$14$E:
$C$L256:    
$C$DW$L$_shine_ResvFrameEnd$15$B:
        MOV dbl(*SP(#10)), AC0 ; |2539| 
$C$DW$L$_shine_ResvFrameEnd$15$E:
$C$L257:    
$C$DW$L$_shine_ResvFrameEnd$16$B:
        MOV AC0, dbl(*SP(#18)) ; |2539| 
	.dwpsn	file "./mp3_encode.c",line 2540,column 21,is_stmt
        MOV dbl(*SP(#20)), XAR3
        MOV dbl(*SP(#18)), AC0 ; |2540| 
        ADD uns(*AR3), AC0, AC0 ; |2540| 
        MOV AC0, *AR3 ; |2540| 
	.dwpsn	file "./mp3_encode.c",line 2541,column 21,is_stmt
        MOV dbl(*SP(#18)), AC0 ; |2541| 
        SUB AC0, dbl(*SP(#10)), AC0 ; |2541| 
        MOV AC0, dbl(*SP(#10)) ; |2541| 
	.dwendtag $C$DW$1236

	.dwpsn	file "./mp3_encode.c",line 2532,column 49,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |2532| 
        ADD #1, AC0 ; |2532| 
        MOV AC0, dbl(*SP(#6)) ; |2532| 
	.dwpsn	file "./mp3_encode.c",line 2532,column 30,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |2532| 
        BCC $C$L255,AC0 <= #0 ; |2532| 
                                        ; branchcc occurs ; |2532| 
$C$DW$L$_shine_ResvFrameEnd$16$E:
$C$L258:    
$C$DW$L$_shine_ResvFrameEnd$17$B:
	.dwpsn	file "./mp3_encode.c",line 2531,column 64,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |2531| 
        ADD #1, AC0 ; |2531| 
        MOV AC0, dbl(*SP(#4)) ; |2531| 
	.dwpsn	file "./mp3_encode.c",line 2531,column 26,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#4)), AC1 ; |2531| 
        MOV *AR3(#722), AC0 ; |2531| 
        CMP AC1 < AC0, TC1 ; |2531| 
        BCC $C$L254,TC1 ; |2531| 
                                        ; branchcc occurs ; |2531| 
$C$DW$L$_shine_ResvFrameEnd$17$E:
$C$L259:    
	.dwpsn	file "./mp3_encode.c",line 2548,column 13,is_stmt
        MOV dbl(*SP(#14)), XAR3
        MOV *SP(#11), AR1 ; |2548| 
        MOV AR1, *AR3(short(#1)) ; |2548| 
	.dwpsn	file "./mp3_encode.c",line 2551,column 1,is_stmt
$C$L260:    
        AADD #23, SP
	.dwcfi	cfa_offset, 1
$C$DW$1240	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1240, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1240, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$1241	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$1241, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L254:1:1738864582")
	.dwattr $C$DW$1241, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$1241, DW_AT_TI_begin_line(0x9e3)
	.dwattr $C$DW$1241, DW_AT_TI_end_line(0x9ee)
$C$DW$1242	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1242, DW_AT_low_pc($C$DW$L$_shine_ResvFrameEnd$11$B)
	.dwattr $C$DW$1242, DW_AT_high_pc($C$DW$L$_shine_ResvFrameEnd$11$E)
$C$DW$1243	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1243, DW_AT_low_pc($C$DW$L$_shine_ResvFrameEnd$17$B)
	.dwattr $C$DW$1243, DW_AT_high_pc($C$DW$L$_shine_ResvFrameEnd$17$E)

$C$DW$1244	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$1244, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L255:2:1738864582")
	.dwattr $C$DW$1244, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$1244, DW_AT_TI_begin_line(0x9e4)
	.dwattr $C$DW$1244, DW_AT_TI_end_line(0x9ee)
$C$DW$1245	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1245, DW_AT_low_pc($C$DW$L$_shine_ResvFrameEnd$12$B)
	.dwattr $C$DW$1245, DW_AT_high_pc($C$DW$L$_shine_ResvFrameEnd$12$E)
$C$DW$1246	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1246, DW_AT_low_pc($C$DW$L$_shine_ResvFrameEnd$13$B)
	.dwattr $C$DW$1246, DW_AT_high_pc($C$DW$L$_shine_ResvFrameEnd$13$E)
$C$DW$1247	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1247, DW_AT_low_pc($C$DW$L$_shine_ResvFrameEnd$14$B)
	.dwattr $C$DW$1247, DW_AT_high_pc($C$DW$L$_shine_ResvFrameEnd$14$E)
$C$DW$1248	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1248, DW_AT_low_pc($C$DW$L$_shine_ResvFrameEnd$15$B)
	.dwattr $C$DW$1248, DW_AT_high_pc($C$DW$L$_shine_ResvFrameEnd$15$E)
$C$DW$1249	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1249, DW_AT_low_pc($C$DW$L$_shine_ResvFrameEnd$16$B)
	.dwattr $C$DW$1249, DW_AT_high_pc($C$DW$L$_shine_ResvFrameEnd$16$E)
	.dwendtag $C$DW$1244

	.dwendtag $C$DW$1241

	.dwattr $C$DW$1225, DW_AT_TI_end_file("./mp3_encode.c")
	.dwattr $C$DW$1225, DW_AT_TI_end_line(0x9f7)
	.dwattr $C$DW$1225, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$1225

	.sect	".text"
	.global	_verify_output

$C$DW$1250	.dwtag  DW_TAG_subprogram, DW_AT_name("verify_output")
	.dwattr $C$DW$1250, DW_AT_low_pc(_verify_output)
	.dwattr $C$DW$1250, DW_AT_high_pc(0x00)
	.dwattr $C$DW$1250, DW_AT_TI_symbol_name("_verify_output")
	.dwattr $C$DW$1250, DW_AT_external
	.dwattr $C$DW$1250, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$1250, DW_AT_TI_begin_line(0x9fb)
	.dwattr $C$DW$1250, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$1250, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "./mp3_encode.c",line 2556,column 1,is_stmt,address _verify_output

	.dwfde $C$DW$CIE, _verify_output
$C$DW$1251	.dwtag  DW_TAG_formal_parameter, DW_AT_name("output_buffer")
	.dwattr $C$DW$1251, DW_AT_TI_symbol_name("_output_buffer")
	.dwattr $C$DW$1251, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$1251, DW_AT_location[DW_OP_reg17]
$C$DW$1252	.dwtag  DW_TAG_formal_parameter, DW_AT_name("num_bytes")
	.dwattr $C$DW$1252, DW_AT_TI_symbol_name("_num_bytes")
	.dwattr $C$DW$1252, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1252, DW_AT_location[DW_OP_reg0]
$C$DW$1253	.dwtag  DW_TAG_formal_parameter, DW_AT_name("checksum")
	.dwattr $C$DW$1253, DW_AT_TI_symbol_name("_checksum")
	.dwattr $C$DW$1253, DW_AT_type(*$C$DW$T$155)
	.dwattr $C$DW$1253, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: verify_output                                                *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,   *
;*                        XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (7 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_verify_output:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$1254	.dwtag  DW_TAG_variable, DW_AT_name("output_buffer")
	.dwattr $C$DW$1254, DW_AT_TI_symbol_name("_output_buffer")
	.dwattr $C$DW$1254, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$1254, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$1255	.dwtag  DW_TAG_variable, DW_AT_name("num_bytes")
	.dwattr $C$DW$1255, DW_AT_TI_symbol_name("_num_bytes")
	.dwattr $C$DW$1255, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1255, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$1256	.dwtag  DW_TAG_variable, DW_AT_name("checksum")
	.dwattr $C$DW$1256, DW_AT_TI_symbol_name("_checksum")
	.dwattr $C$DW$1256, DW_AT_type(*$C$DW$T$155)
	.dwattr $C$DW$1256, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$1257	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$1257, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$1257, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$1257, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV XAR1, dbl(*SP(#4))
        MOV AC0, dbl(*SP(#2)) ; |2556| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./mp3_encode.c",line 2558,column 7,is_stmt
        MOV #0, *SP(#6) ; |2558| 
	.dwpsn	file "./mp3_encode.c",line 2558,column 14,is_stmt
        MOV uns(*SP(#6)), AC1 ; |2558| 
        MOV dbl(*SP(#2)), AC0 ; |2558| 
        CMP AC1 >= AC0, TC1 ; |2558| 
        BCC $C$L262,TC1 ; |2558| 
                                        ; branchcc occurs ; |2558| 
$C$L261:    
$C$DW$L$_verify_output$2$B:
	.dwpsn	file "./mp3_encode.c",line 2560,column 9,is_stmt
        MOV *SP(#6), T0 ; |2560| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#4)), XAR2
        MOV uns(*AR3(T0)), AC0 ; |2560| 
        ADD dbl(*AR2), AC0, AC0 ; |2560| 
        MOV AC0, dbl(*AR2) ; |2560| 
	.dwpsn	file "./mp3_encode.c",line 2558,column 29,is_stmt
        ADD #1, *SP(#6) ; |2558| 
	.dwpsn	file "./mp3_encode.c",line 2558,column 14,is_stmt
        MOV uns(*SP(#6)), AC1 ; |2558| 
        MOV dbl(*SP(#2)), AC0 ; |2558| 
        CMP AC1 < AC0, TC1 ; |2558| 
        BCC $C$L261,TC1 ; |2558| 
                                        ; branchcc occurs ; |2558| 
$C$DW$L$_verify_output$2$E:
	.dwpsn	file "./mp3_encode.c",line 2562,column 1,is_stmt
$C$L262:    
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$1258	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1258, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1258, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$1259	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$1259, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L261:1:1738864582")
	.dwattr $C$DW$1259, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$1259, DW_AT_TI_begin_line(0x9fe)
	.dwattr $C$DW$1259, DW_AT_TI_end_line(0xa01)
$C$DW$1260	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1260, DW_AT_low_pc($C$DW$L$_verify_output$2$B)
	.dwattr $C$DW$1260, DW_AT_high_pc($C$DW$L$_verify_output$2$E)
	.dwendtag $C$DW$1259

	.dwattr $C$DW$1250, DW_AT_TI_end_file("./mp3_encode.c")
	.dwattr $C$DW$1250, DW_AT_TI_end_line(0xa02)
	.dwattr $C$DW$1250, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$1250

	.sect	".text"
	.global	_mp3_encode

$C$DW$1261	.dwtag  DW_TAG_subprogram, DW_AT_name("mp3_encode")
	.dwattr $C$DW$1261, DW_AT_low_pc(_mp3_encode)
	.dwattr $C$DW$1261, DW_AT_high_pc(0x00)
	.dwattr $C$DW$1261, DW_AT_TI_symbol_name("_mp3_encode")
	.dwattr $C$DW$1261, DW_AT_external
	.dwattr $C$DW$1261, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1261, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$1261, DW_AT_TI_begin_line(0xa04)
	.dwattr $C$DW$1261, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$1261, DW_AT_TI_max_frame_size(0x22)
	.dwpsn	file "./mp3_encode.c",line 2565,column 1,is_stmt,address _mp3_encode

	.dwfde $C$DW$CIE, _mp3_encode
$C$DW$1262	.dwtag  DW_TAG_formal_parameter, DW_AT_name("test_data")
	.dwattr $C$DW$1262, DW_AT_TI_symbol_name("_test_data")
	.dwattr $C$DW$1262, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$1262, DW_AT_location[DW_OP_reg17]
$C$DW$1263	.dwtag  DW_TAG_formal_parameter, DW_AT_name("input_size")
	.dwattr $C$DW$1263, DW_AT_TI_symbol_name("_input_size")
	.dwattr $C$DW$1263, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$1263, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: mp3_encode                                                   *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,*
;*                        XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 34 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (33 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_mp3_encode:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-33, SP
	.dwcfi	cfa_offset, 34
$C$DW$1264	.dwtag  DW_TAG_variable, DW_AT_name("test_data")
	.dwattr $C$DW$1264, DW_AT_TI_symbol_name("_test_data")
	.dwattr $C$DW$1264, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$1264, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$1265	.dwtag  DW_TAG_variable, DW_AT_name("input_size")
	.dwattr $C$DW$1265, DW_AT_TI_symbol_name("_input_size")
	.dwattr $C$DW$1265, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$1265, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$1266	.dwtag  DW_TAG_variable, DW_AT_name("config")
	.dwattr $C$DW$1266, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$1266, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$1266, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$1267	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$1267, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$1267, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$1267, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$1268	.dwtag  DW_TAG_variable, DW_AT_name("bytes_written")
	.dwattr $C$DW$1268, DW_AT_TI_symbol_name("_bytes_written")
	.dwattr $C$DW$1268, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1268, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$1269	.dwtag  DW_TAG_variable, DW_AT_name("output_data")
	.dwattr $C$DW$1269, DW_AT_TI_symbol_name("_output_data")
	.dwattr $C$DW$1269, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$1269, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$1270	.dwtag  DW_TAG_variable, DW_AT_name("cache")
	.dwattr $C$DW$1270, DW_AT_TI_symbol_name("_cache")
	.dwattr $C$DW$1270, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$1270, DW_AT_location[DW_OP_bregx 0x24 16]
$C$DW$1271	.dwtag  DW_TAG_variable, DW_AT_name("output_size")
	.dwattr $C$DW$1271, DW_AT_TI_symbol_name("_output_size")
	.dwattr $C$DW$1271, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$1271, DW_AT_location[DW_OP_bregx 0x24 18]
$C$DW$1272	.dwtag  DW_TAG_variable, DW_AT_name("checksum")
	.dwattr $C$DW$1272, DW_AT_TI_symbol_name("_checksum")
	.dwattr $C$DW$1272, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$1272, DW_AT_location[DW_OP_bregx 0x24 20]
$C$DW$1273	.dwtag  DW_TAG_variable, DW_AT_name("shine_encoder")
	.dwattr $C$DW$1273, DW_AT_TI_symbol_name("_shine_encoder")
	.dwattr $C$DW$1273, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$1273, DW_AT_location[DW_OP_bregx 0x24 22]
$C$DW$1274	.dwtag  DW_TAG_variable, DW_AT_name("input_buffer")
	.dwattr $C$DW$1274, DW_AT_TI_symbol_name("_input_buffer")
	.dwattr $C$DW$1274, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$1274, DW_AT_location[DW_OP_bregx 0x24 24]
$C$DW$1275	.dwtag  DW_TAG_variable, DW_AT_name("totalSampleCount")
	.dwattr $C$DW$1275, DW_AT_TI_symbol_name("_totalSampleCount")
	.dwattr $C$DW$1275, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$1275, DW_AT_location[DW_OP_bregx 0x24 26]
$C$DW$1276	.dwtag  DW_TAG_variable, DW_AT_name("samples_per_pass")
	.dwattr $C$DW$1276, DW_AT_TI_symbol_name("_samples_per_pass")
	.dwattr $C$DW$1276, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$1276, DW_AT_location[DW_OP_bregx 0x24 28]
$C$DW$1277	.dwtag  DW_TAG_variable, DW_AT_name("num_passes")
	.dwattr $C$DW$1277, DW_AT_TI_symbol_name("_num_passes")
	.dwattr $C$DW$1277, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$1277, DW_AT_location[DW_OP_bregx 0x24 30]
$C$DW$1278	.dwtag  DW_TAG_variable, DW_AT_name("last")
	.dwattr $C$DW$1278, DW_AT_TI_symbol_name("_last")
	.dwattr $C$DW$1278, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$1278, DW_AT_location[DW_OP_bregx 0x24 32]
        MOV T0, *SP(#2) ; |2565| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./mp3_encode.c",line 2566,column 9,is_stmt
        MOV *SP(#2), AC0 ; |2566| 
        MOV AC0, dbl(*(#_g_wav_file_size)) ; |2566| 
	.dwpsn	file "./mp3_encode.c",line 2571,column 12,is_stmt
        MOV #0, AC0 ; |2571| 
        MOV AC0, dbl(*SP(#16))
	.dwpsn	file "./mp3_encode.c",line 2572,column 18,is_stmt
        MOV AC0, dbl(*SP(#18)) ; |2572| 
	.dwpsn	file "./mp3_encode.c",line 2573,column 18,is_stmt
        MOV AC0, dbl(*SP(#20)) ; |2573| 
	.dwpsn	file "./mp3_encode.c",line 2576,column 9,is_stmt
        AMAR *SP(#4), XAR0
$C$DW$1279	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1279, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1279, DW_AT_name("_shine_set_config_mpeg_defaults")
	.dwattr $C$DW$1279, DW_AT_TI_call
        CALL #_shine_set_config_mpeg_defaults ; |2576| 
                                        ; call occurs [#_shine_set_config_mpeg_defaults] ; |2576| 
	.dwpsn	file "./mp3_encode.c",line 2578,column 9,is_stmt
        MOV dbl(*(#_g_output_bitrate)), AC0 ; |2578| 
        MOV AC0, dbl(*SP(#6)) ; |2578| 
	.dwpsn	file "./mp3_encode.c",line 2579,column 9,is_stmt
        MOV #3, *SP(#4) ; |2579| 
	.dwpsn	file "./mp3_encode.c",line 2582,column 17,is_stmt
        AMOV #_g_shine_encoder_block, XAR3 ; |2582| 
        MOV XAR3, dbl(*SP(#22))
	.dwpsn	file "./mp3_encode.c",line 2584,column 9,is_stmt
        MOV dbl(*SP(#22)), XAR1
        AMAR *SP(#4), XAR0
$C$DW$1280	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1280, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1280, DW_AT_name("_shine_initialise")
	.dwattr $C$DW$1280, DW_AT_TI_call
        CALL #_shine_initialise ; |2584| 
                                        ; call occurs [#_shine_initialise] ; |2584| 
	.dwpsn	file "./mp3_encode.c",line 2586,column 18,is_stmt
        MOV *(#(_g_header_size_bytes+1)), AR1 ; |2586| 
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, dbl(*SP(#24))
||      AADD AR1, AR3 ; |2586| 

	.dwpsn	file "./mp3_encode.c",line 2588,column 18,is_stmt
        MOV dbl(*(#_g_header_size_bytes)), AC0 ; |2588| 
        SUB AC0, dbl(*(#_g_wav_file_size)), AC0 ; |2588| 
        MOV AC0, dbl(*SP(#26)) ; |2588| 
	.dwpsn	file "./mp3_encode.c",line 2589,column 18,is_stmt
        MOV dbl(*SP(#22)), XAR0
$C$DW$1281	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1281, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1281, DW_AT_name("_shine_samples_per_pass")
	.dwattr $C$DW$1281, DW_AT_TI_call
        CALL #_shine_samples_per_pass ; |2589| 
                                        ; call occurs [#_shine_samples_per_pass] ; |2589| 
        MOV AC0, dbl(*SP(#28)) ; |2589| 
	.dwpsn	file "./mp3_encode.c",line 2590,column 18,is_stmt
        MOV dbl(*SP(#28)), AC1 ; |2590| 
        MOV dbl(*SP(#26)), AC0 ; |2590| 
$C$DW$1282	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1282, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1282, DW_AT_name("__divul")
	.dwattr $C$DW$1282, DW_AT_TI_call
        CALL #__divul ; |2590| 
                                        ; call occurs [#__divul] ; |2590| 
        MOV AC0, dbl(*SP(#30)) ; |2590| 
	.dwpsn	file "./mp3_encode.c",line 2593,column 14,is_stmt
        MOV #0, AC0 ; |2593| 
        MOV AC0, dbl(*SP(#10)) ; |2593| 
	.dwpsn	file "./mp3_encode.c",line 2593,column 21,is_stmt
        MOV dbl(*SP(#30)), AC0 ; |2593| 
        MOV dbl(*SP(#10)), AC1 ; |2593| 
        CMPU AC1 >= AC0, TC1 ; |2593| 
        BCC $C$L264,TC1 ; |2593| 
                                        ; branchcc occurs ; |2593| 
$C$L263:    
$C$DW$L$_mp3_encode$2$B:
	.dwpsn	file "./mp3_encode.c",line 2595,column 17,is_stmt
        MOV dbl(*SP(#22)), XAR0
        AMAR *SP(#24), XAR1
        AMAR *SP(#12), XAR2
$C$DW$1283	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1283, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1283, DW_AT_name("_shine_encode_buffer")
	.dwattr $C$DW$1283, DW_AT_TI_call
        CALL #_shine_encode_buffer ; |2595| 
                                        ; call occurs [#_shine_encode_buffer] ; |2595| 
        MOV XAR0, dbl(*SP(#14))
	.dwpsn	file "./mp3_encode.c",line 2596,column 17,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |2596| 
        AMAR *SP(#20), XAR1
$C$DW$1284	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1284, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1284, DW_AT_name("_verify_output")
	.dwattr $C$DW$1284, DW_AT_TI_call
        CALL #_verify_output ; |2596| 
                                        ; call occurs [#_verify_output] ; |2596| 
	.dwpsn	file "./mp3_encode.c",line 2597,column 17,is_stmt
        MOV *SP(#29), AR1 ; |2597| 
        MOV dbl(*SP(#24)), XAR3

        MOV XAR3, dbl(*SP(#24))
||      AADD AR1, AR3 ; |2597| 

	.dwpsn	file "./mp3_encode.c",line 2598,column 17,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |2598| 
        ADD dbl(*SP(#18)), AC0, AC0 ; |2598| 
        MOV AC0, dbl(*SP(#18)) ; |2598| 
	.dwpsn	file "./mp3_encode.c",line 2593,column 37,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |2593| 
        ADD #1, AC0 ; |2593| 
        MOV AC0, dbl(*SP(#10)) ; |2593| 
	.dwpsn	file "./mp3_encode.c",line 2593,column 21,is_stmt
        MOV dbl(*SP(#30)), AC0 ; |2593| 
        MOV dbl(*SP(#10)), AC1 ; |2593| 
        CMPU AC1 < AC0, TC1 ; |2593| 
        BCC $C$L263,TC1 ; |2593| 
                                        ; branchcc occurs ; |2593| 
$C$DW$L$_mp3_encode$2$E:
$C$L264:    
	.dwpsn	file "./mp3_encode.c",line 2601,column 16,is_stmt
        MOV dbl(*SP(#26)), AC0 ; |2601| 
        MOV dbl(*SP(#28)), AC1 ; |2601| 
$C$DW$1285	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1285, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1285, DW_AT_name("__remul")
	.dwattr $C$DW$1285, DW_AT_TI_call
        CALL #__remul ; |2601| 
                                        ; call occurs [#__remul] ; |2601| 
        MOV AC0, *SP(#32) ; |2601| 
	.dwpsn	file "./mp3_encode.c",line 2602,column 9,is_stmt
        MOV AC0, AR1
        BCC $C$L265,AR1 == #0 ; |2602| 
                                        ; branchcc occurs ; |2602| 
	.dwpsn	file "./mp3_encode.c",line 2604,column 17,is_stmt
        MOV *SP(#29), T0 ; |2604| 
$C$DW$1286	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1286, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1286, DW_AT_name("_malloc")
	.dwattr $C$DW$1286, DW_AT_TI_call
        CALL #_malloc ; |2604| 
                                        ; call occurs [#_malloc] ; |2604| 
        MOV XAR0, dbl(*SP(#16))
	.dwpsn	file "./mp3_encode.c",line 2605,column 17,is_stmt
        MOV *SP(#29), T1 ; |2605| 
$C$DW$1287	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1287, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1287, DW_AT_name("_memset")
	.dwattr $C$DW$1287, DW_AT_TI_call

        CALL #_memset ; |2605| 
||      MOV #0, T0

                                        ; call occurs [#_memset] ; |2605| 
	.dwpsn	file "./mp3_encode.c",line 2606,column 17,is_stmt
        MOV *SP(#32), T0 ; |2606| 
        MOV dbl(*SP(#16)), XAR0
        MOV dbl(*SP(#24)), XAR1
$C$DW$1288	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1288, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1288, DW_AT_name("_memcpy")
	.dwattr $C$DW$1288, DW_AT_TI_call
        CALL #_memcpy ; |2606| 
                                        ; call occurs [#_memcpy] ; |2606| 
	.dwpsn	file "./mp3_encode.c",line 2607,column 17,is_stmt
        AMAR *SP(#16), XAR1
        AMAR *SP(#12), XAR2
        MOV dbl(*SP(#22)), XAR0
$C$DW$1289	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1289, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1289, DW_AT_name("_shine_encode_buffer")
	.dwattr $C$DW$1289, DW_AT_TI_call
        CALL #_shine_encode_buffer ; |2607| 
                                        ; call occurs [#_shine_encode_buffer] ; |2607| 
        MOV XAR0, dbl(*SP(#14))
	.dwpsn	file "./mp3_encode.c",line 2608,column 17,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |2608| 
        AMAR *SP(#20), XAR1
$C$DW$1290	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1290, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1290, DW_AT_name("_verify_output")
	.dwattr $C$DW$1290, DW_AT_TI_call
        CALL #_verify_output ; |2608| 
                                        ; call occurs [#_verify_output] ; |2608| 
	.dwpsn	file "./mp3_encode.c",line 2609,column 17,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |2609| 
        ADD dbl(*SP(#18)), AC0, AC0 ; |2609| 
        MOV AC0, dbl(*SP(#18)) ; |2609| 
$C$L265:    
	.dwpsn	file "./mp3_encode.c",line 2613,column 9,is_stmt
        MOV dbl(*SP(#22)), XAR0
        AMAR *SP(#12), XAR1
$C$DW$1291	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1291, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1291, DW_AT_name("_shine_flush")
	.dwattr $C$DW$1291, DW_AT_TI_call
        CALL #_shine_flush ; |2613| 
                                        ; call occurs [#_shine_flush] ; |2613| 
        MOV XAR0, dbl(*SP(#14))
	.dwpsn	file "./mp3_encode.c",line 2614,column 9,is_stmt
        AMAR *SP(#20), XAR1
        MOV dbl(*SP(#12)), AC0 ; |2614| 
$C$DW$1292	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1292, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1292, DW_AT_name("_verify_output")
	.dwattr $C$DW$1292, DW_AT_TI_call
        CALL #_verify_output ; |2614| 
                                        ; call occurs [#_verify_output] ; |2614| 
	.dwpsn	file "./mp3_encode.c",line 2615,column 9,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |2615| 
        ADD dbl(*SP(#18)), AC0, AC0 ; |2615| 
        MOV AC0, dbl(*SP(#18)) ; |2615| 
	.dwpsn	file "./mp3_encode.c",line 2618,column 9,is_stmt
        MOV dbl(*SP(#22)), XAR0
$C$DW$1293	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1293, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1293, DW_AT_name("_shine_close")
	.dwattr $C$DW$1293, DW_AT_TI_call
        CALL #_shine_close ; |2618| 
                                        ; call occurs [#_shine_close] ; |2618| 
	.dwpsn	file "./mp3_encode.c",line 2619,column 2,is_stmt
        MOV dbl(*SP(#16)), XAR3
        MOV XAR3, AC0
        BCC $C$L266,AC0 == #0 ; |2619| 
                                        ; branchcc occurs ; |2619| 
	.dwpsn	file "./mp3_encode.c",line 2620,column 3,is_stmt
        MOV dbl(*SP(#16)), XAR0
$C$DW$1294	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1294, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1294, DW_AT_name("_free")
	.dwattr $C$DW$1294, DW_AT_TI_call
        CALL #_free ; |2620| 
                                        ; call occurs [#_free] ; |2620| 
$C$L266:    
	.dwpsn	file "./mp3_encode.c",line 2622,column 9,is_stmt
        MOV #0, AC0 ; |2622| 
	.dwpsn	file "./mp3_encode.c",line 2623,column 1,is_stmt
        AADD #33, SP
	.dwcfi	cfa_offset, 1
$C$DW$1295	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$1295, DW_AT_low_pc(0x00)
	.dwattr $C$DW$1295, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$1296	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$1296, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/mp3_encode/mp3_encode.asm:$C$L263:1:1738864582")
	.dwattr $C$DW$1296, DW_AT_TI_begin_file("./mp3_encode.c")
	.dwattr $C$DW$1296, DW_AT_TI_begin_line(0xa21)
	.dwattr $C$DW$1296, DW_AT_TI_end_line(0xa27)
$C$DW$1297	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$1297, DW_AT_low_pc($C$DW$L$_mp3_encode$2$B)
	.dwattr $C$DW$1297, DW_AT_high_pc($C$DW$L$_mp3_encode$2$E)
	.dwendtag $C$DW$1296

	.dwattr $C$DW$1261, DW_AT_TI_end_file("./mp3_encode.c")
	.dwattr $C$DW$1261, DW_AT_TI_end_line(0xa3f)
	.dwattr $C$DW$1261, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$1261

;*******************************************************************************
;* FLOATING-POINT CONSTANTS                                                    *
;*******************************************************************************
	.sect	".const"
	.align	2
$C$FL1:	.xlong	0x44100000
	.align	2
$C$FL2:	.xlong	0x45fa0000
	.align	2
$C$FL3:	.xlong	0x447a0000
	.align	2
$C$FL4:	.xlong	0x00000000
	.align	2
$C$FL5:	.xlong	0x3f800000
	.align	2
$C$FL6:	.xlong	0x40000000
	.align	2
$C$FL7:	.xlong	0x40800000
	.align	2
$C$FL8:	.xlong	0x4f000000
	.align	2
$C$FL9:	.xlong	0x3f000000
	.align	2
$C$FL10:	.xlong	0x3dc1bda5
	.align	2
$C$FL11:	.xlong	0x30000000
	.align	2
$C$FL12:	.xlong	0x3db2b8c2
	.align	2
$C$FL13:	.xlong	0x3d32b8c3
	.align	2
$C$FL14:	.xlong	0x3fae147b
	.align	2
$C$FL15:	.xlong	0xbf19999a
	.align	2
$C$FL16:	.xlong	0x3fa4a306
	.align	2
$C$FL17:	.xlong	0xbf08f5c3
	.align	2
$C$FL18:	.xlong	0x3f8df070
	.align	2
$C$FL19:	.xlong	0xbea8f5c3
	.align	2
$C$FL20:	.xlong	0x3f84617c
	.align	2
$C$FL21:	.xlong	0xbe3d70a4
	.align	2
$C$FL22:	.xlong	0x3f8127bb
	.align	2
$C$FL23:	.xlong	0xbdc28f5c
	.align	2
$C$FL24:	.xlong	0x3f803715
	.align	2
$C$FL25:	.xlong	0xbd27ef9e
	.align	2
$C$FL26:	.xlong	0x3f80069b
	.align	2
$C$FL27:	.xlong	0xbc68a71e
	.align	2
$C$FL28:	.xlong	0x3f800073
	.align	2
$C$FL29:	.xlong	0xbb727bb3
	.align	2
$C$FL30:	.xlong	0x3d490fdb
	.align	2
$C$FL31:	.xlong	0x4e6e6b28
	.align	2
$C$FL32:	.xlong	0x4009705f
	.align	2
$C$FL33:	.xlong	0x40466666
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_malloc
	.global	_free
	.global	_exit
	.global	_memset
	.global	_sqrt
	.global	_pow
	.global	_sin
	.global	_cos
	.global	_modf
	.global	__divd
	.global	__fltid
	.global	__mpyd
	.global	__fixdli
	.global	__subd
	.global	__negd
	.global	__cmpd
	.global	__addd
	.global	__divli
	.global	__remi
	.global	__remli
	.global	__mpyli
	.global	__fltlid
	.global	__mpylli
	.global	__divul
	.global	__remul
	.global	_memcpy

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x06)
$C$DW$1298	.dwtag  DW_TAG_member
	.dwattr $C$DW$1298, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1298, DW_AT_name("mode")
	.dwattr $C$DW$1298, DW_AT_TI_symbol_name("_mode")
	.dwattr $C$DW$1298, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1298, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1299	.dwtag  DW_TAG_member
	.dwattr $C$DW$1299, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1299, DW_AT_name("bitr")
	.dwattr $C$DW$1299, DW_AT_TI_symbol_name("_bitr")
	.dwattr $C$DW$1299, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1299, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1300	.dwtag  DW_TAG_member
	.dwattr $C$DW$1300, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$1300, DW_AT_name("emph")
	.dwattr $C$DW$1300, DW_AT_TI_symbol_name("_emph")
	.dwattr $C$DW$1300, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$1300, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$22

$C$DW$T$61	.dwtag  DW_TAG_typedef, DW_AT_name("shine_mpeg_t")
	.dwattr $C$DW$T$61, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$61, DW_AT_language(DW_LANG_C)
$C$DW$T$91	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$91, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$T$91, DW_AT_address_class(0x17)

$C$DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x294)
$C$DW$1301	.dwtag  DW_TAG_member
	.dwattr $C$DW$1301, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$1301, DW_AT_name("xr")
	.dwattr $C$DW$1301, DW_AT_TI_symbol_name("_xr")
	.dwattr $C$DW$1301, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1301, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1302	.dwtag  DW_TAG_member
	.dwattr $C$DW$1302, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1302, DW_AT_name("xrmax")
	.dwattr $C$DW$1302, DW_AT_TI_symbol_name("_xrmax")
	.dwattr $C$DW$1302, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1302, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1303	.dwtag  DW_TAG_member
	.dwattr $C$DW$1303, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$1303, DW_AT_name("steptabi")
	.dwattr $C$DW$1303, DW_AT_TI_symbol_name("_steptabi")
	.dwattr $C$DW$1303, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$1303, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1304	.dwtag  DW_TAG_member
	.dwattr $C$DW$1304, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$1304, DW_AT_name("int2idx")
	.dwattr $C$DW$1304, DW_AT_TI_symbol_name("_int2idx")
	.dwattr $C$DW$1304, DW_AT_data_member_location[DW_OP_plus_uconst 0x104]
	.dwattr $C$DW$1304, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$26

$C$DW$T$73	.dwtag  DW_TAG_typedef, DW_AT_name("l3loop_t")
	.dwattr $C$DW$T$73, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$73, DW_AT_language(DW_LANG_C)

$C$DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x2a)
$C$DW$1305	.dwtag  DW_TAG_member
	.dwattr $C$DW$1305, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$1305, DW_AT_name("l")
	.dwattr $C$DW$1305, DW_AT_TI_symbol_name("_l")
	.dwattr $C$DW$1305, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1305, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$30

$C$DW$T$76	.dwtag  DW_TAG_typedef, DW_AT_name("shine_psy_ratio_t")
	.dwattr $C$DW$T$76, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$76, DW_AT_language(DW_LANG_C)
$C$DW$T$92	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$92, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$T$92, DW_AT_address_class(0x17)

$C$DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x12)
$C$DW$1306	.dwtag  DW_TAG_member
	.dwattr $C$DW$1306, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$1306, DW_AT_name("frac_slots_per_frame")
	.dwattr $C$DW$1306, DW_AT_TI_symbol_name("_frac_slots_per_frame")
	.dwattr $C$DW$1306, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1306, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1307	.dwtag  DW_TAG_member
	.dwattr $C$DW$1307, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$1307, DW_AT_name("slot_lag")
	.dwattr $C$DW$1307, DW_AT_TI_symbol_name("_slot_lag")
	.dwattr $C$DW$1307, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1307, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1308	.dwtag  DW_TAG_member
	.dwattr $C$DW$1308, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$1308, DW_AT_name("bitr")
	.dwattr $C$DW$1308, DW_AT_TI_symbol_name("_bitr")
	.dwattr $C$DW$1308, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$1308, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1309	.dwtag  DW_TAG_member
	.dwattr $C$DW$1309, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$1309, DW_AT_name("emph")
	.dwattr $C$DW$1309, DW_AT_TI_symbol_name("_emph")
	.dwattr $C$DW$1309, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$1309, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1310	.dwtag  DW_TAG_member
	.dwattr $C$DW$1310, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$1310, DW_AT_name("padding")
	.dwattr $C$DW$1310, DW_AT_TI_symbol_name("_padding")
	.dwattr $C$DW$1310, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$1310, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1311	.dwtag  DW_TAG_member
	.dwattr $C$DW$1311, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$1311, DW_AT_name("bits_per_frame")
	.dwattr $C$DW$1311, DW_AT_TI_symbol_name("_bits_per_frame")
	.dwattr $C$DW$1311, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$1311, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1312	.dwtag  DW_TAG_member
	.dwattr $C$DW$1312, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$1312, DW_AT_name("bits_per_slot")
	.dwattr $C$DW$1312, DW_AT_TI_symbol_name("_bits_per_slot")
	.dwattr $C$DW$1312, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$1312, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1313	.dwtag  DW_TAG_member
	.dwattr $C$DW$1313, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$1313, DW_AT_name("whole_slots_per_frame")
	.dwattr $C$DW$1313, DW_AT_TI_symbol_name("_whole_slots_per_frame")
	.dwattr $C$DW$1313, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$1313, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1314	.dwtag  DW_TAG_member
	.dwattr $C$DW$1314, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$1314, DW_AT_name("crc")
	.dwattr $C$DW$1314, DW_AT_TI_symbol_name("_crc")
	.dwattr $C$DW$1314, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$1314, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1315	.dwtag  DW_TAG_member
	.dwattr $C$DW$1315, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$1315, DW_AT_name("ext")
	.dwattr $C$DW$1315, DW_AT_TI_symbol_name("_ext")
	.dwattr $C$DW$1315, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$1315, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1316	.dwtag  DW_TAG_member
	.dwattr $C$DW$1316, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$1316, DW_AT_name("bitrate_index")
	.dwattr $C$DW$1316, DW_AT_TI_symbol_name("_bitrate_index")
	.dwattr $C$DW$1316, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$1316, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1317	.dwtag  DW_TAG_member
	.dwattr $C$DW$1317, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$1317, DW_AT_name("samplerate_index")
	.dwattr $C$DW$1317, DW_AT_TI_symbol_name("_samplerate_index")
	.dwattr $C$DW$1317, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$1317, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1318	.dwtag  DW_TAG_member
	.dwattr $C$DW$1318, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$1318, DW_AT_name("version")
	.dwattr $C$DW$1318, DW_AT_TI_symbol_name("_version")
	.dwattr $C$DW$1318, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$1318, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1319	.dwtag  DW_TAG_member
	.dwattr $C$DW$1319, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$1319, DW_AT_name("layer")
	.dwattr $C$DW$1319, DW_AT_TI_symbol_name("_layer")
	.dwattr $C$DW$1319, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$1319, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1320	.dwtag  DW_TAG_member
	.dwattr $C$DW$1320, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$1320, DW_AT_name("granules_per_frame")
	.dwattr $C$DW$1320, DW_AT_TI_symbol_name("_granules_per_frame")
	.dwattr $C$DW$1320, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$1320, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1321	.dwtag  DW_TAG_member
	.dwattr $C$DW$1321, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$1321, DW_AT_name("mode")
	.dwattr $C$DW$1321, DW_AT_TI_symbol_name("_mode")
	.dwattr $C$DW$1321, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$1321, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$32

$C$DW$T$77	.dwtag  DW_TAG_typedef, DW_AT_name("priv_shine_mpeg_t")
	.dwattr $C$DW$T$77, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$77, DW_AT_language(DW_LANG_C)

$C$DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x7a)
$C$DW$1322	.dwtag  DW_TAG_member
	.dwattr $C$DW$1322, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$1322, DW_AT_name("l")
	.dwattr $C$DW$1322, DW_AT_TI_symbol_name("_l")
	.dwattr $C$DW$1322, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1322, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1323	.dwtag  DW_TAG_member
	.dwattr $C$DW$1323, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$1323, DW_AT_name("s")
	.dwattr $C$DW$1323, DW_AT_TI_symbol_name("_s")
	.dwattr $C$DW$1323, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$1323, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$40

$C$DW$T$79	.dwtag  DW_TAG_typedef, DW_AT_name("shine_scalefac_t")
	.dwattr $C$DW$T$79, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$79, DW_AT_language(DW_LANG_C)

$C$DW$T$43	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x510)
$C$DW$1324	.dwtag  DW_TAG_member
	.dwattr $C$DW$1324, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$1324, DW_AT_name("cos_l")
	.dwattr $C$DW$1324, DW_AT_TI_symbol_name("_cos_l")
	.dwattr $C$DW$1324, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1324, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$43

$C$DW$T$80	.dwtag  DW_TAG_typedef, DW_AT_name("mdct_t")
	.dwattr $C$DW$T$80, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$80, DW_AT_language(DW_LANG_C)

$C$DW$T$49	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$49, DW_AT_byte_size(0x1402)
$C$DW$1325	.dwtag  DW_TAG_member
	.dwattr $C$DW$1325, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$1325, DW_AT_name("off")
	.dwattr $C$DW$1325, DW_AT_TI_symbol_name("_off")
	.dwattr $C$DW$1325, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1325, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1326	.dwtag  DW_TAG_member
	.dwattr $C$DW$1326, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$1326, DW_AT_name("fl")
	.dwattr $C$DW$1326, DW_AT_TI_symbol_name("_fl")
	.dwattr $C$DW$1326, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1326, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1327	.dwtag  DW_TAG_member
	.dwattr $C$DW$1327, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$1327, DW_AT_name("x")
	.dwattr $C$DW$1327, DW_AT_TI_symbol_name("_x")
	.dwattr $C$DW$1327, DW_AT_data_member_location[DW_OP_plus_uconst 0x1002]
	.dwattr $C$DW$1327, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$49

$C$DW$T$81	.dwtag  DW_TAG_typedef, DW_AT_name("subband_t")
	.dwattr $C$DW$T$81, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$T$81, DW_AT_language(DW_LANG_C)

$C$DW$T$53	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x17)
$C$DW$1328	.dwtag  DW_TAG_member
	.dwattr $C$DW$1328, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$1328, DW_AT_name("part2_3_length")
	.dwattr $C$DW$1328, DW_AT_TI_symbol_name("_part2_3_length")
	.dwattr $C$DW$1328, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1328, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1329	.dwtag  DW_TAG_member
	.dwattr $C$DW$1329, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$1329, DW_AT_name("big_values")
	.dwattr $C$DW$1329, DW_AT_TI_symbol_name("_big_values")
	.dwattr $C$DW$1329, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1329, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1330	.dwtag  DW_TAG_member
	.dwattr $C$DW$1330, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$1330, DW_AT_name("count1")
	.dwattr $C$DW$1330, DW_AT_TI_symbol_name("_count1")
	.dwattr $C$DW$1330, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1330, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1331	.dwtag  DW_TAG_member
	.dwattr $C$DW$1331, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$1331, DW_AT_name("global_gain")
	.dwattr $C$DW$1331, DW_AT_TI_symbol_name("_global_gain")
	.dwattr $C$DW$1331, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$1331, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1332	.dwtag  DW_TAG_member
	.dwattr $C$DW$1332, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$1332, DW_AT_name("scalefac_compress")
	.dwattr $C$DW$1332, DW_AT_TI_symbol_name("_scalefac_compress")
	.dwattr $C$DW$1332, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$1332, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1333	.dwtag  DW_TAG_member
	.dwattr $C$DW$1333, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$1333, DW_AT_name("table_select")
	.dwattr $C$DW$1333, DW_AT_TI_symbol_name("_table_select")
	.dwattr $C$DW$1333, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$1333, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1334	.dwtag  DW_TAG_member
	.dwattr $C$DW$1334, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$1334, DW_AT_name("region0_count")
	.dwattr $C$DW$1334, DW_AT_TI_symbol_name("_region0_count")
	.dwattr $C$DW$1334, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$1334, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1335	.dwtag  DW_TAG_member
	.dwattr $C$DW$1335, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$1335, DW_AT_name("region1_count")
	.dwattr $C$DW$1335, DW_AT_TI_symbol_name("_region1_count")
	.dwattr $C$DW$1335, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$1335, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1336	.dwtag  DW_TAG_member
	.dwattr $C$DW$1336, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$1336, DW_AT_name("preflag")
	.dwattr $C$DW$1336, DW_AT_TI_symbol_name("_preflag")
	.dwattr $C$DW$1336, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$1336, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1337	.dwtag  DW_TAG_member
	.dwattr $C$DW$1337, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$1337, DW_AT_name("scalefac_scale")
	.dwattr $C$DW$1337, DW_AT_TI_symbol_name("_scalefac_scale")
	.dwattr $C$DW$1337, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$1337, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1338	.dwtag  DW_TAG_member
	.dwattr $C$DW$1338, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$1338, DW_AT_name("count1table_select")
	.dwattr $C$DW$1338, DW_AT_TI_symbol_name("_count1table_select")
	.dwattr $C$DW$1338, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$1338, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1339	.dwtag  DW_TAG_member
	.dwattr $C$DW$1339, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$1339, DW_AT_name("part2_length")
	.dwattr $C$DW$1339, DW_AT_TI_symbol_name("_part2_length")
	.dwattr $C$DW$1339, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$1339, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1340	.dwtag  DW_TAG_member
	.dwattr $C$DW$1340, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$1340, DW_AT_name("sfb_lmax")
	.dwattr $C$DW$1340, DW_AT_TI_symbol_name("_sfb_lmax")
	.dwattr $C$DW$1340, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$1340, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1341	.dwtag  DW_TAG_member
	.dwattr $C$DW$1341, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$1341, DW_AT_name("address1")
	.dwattr $C$DW$1341, DW_AT_TI_symbol_name("_address1")
	.dwattr $C$DW$1341, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$1341, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1342	.dwtag  DW_TAG_member
	.dwattr $C$DW$1342, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$1342, DW_AT_name("address2")
	.dwattr $C$DW$1342, DW_AT_TI_symbol_name("_address2")
	.dwattr $C$DW$1342, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$1342, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1343	.dwtag  DW_TAG_member
	.dwattr $C$DW$1343, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$1343, DW_AT_name("address3")
	.dwattr $C$DW$1343, DW_AT_TI_symbol_name("_address3")
	.dwattr $C$DW$1343, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$1343, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1344	.dwtag  DW_TAG_member
	.dwattr $C$DW$1344, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$1344, DW_AT_name("slen")
	.dwattr $C$DW$1344, DW_AT_TI_symbol_name("_slen")
	.dwattr $C$DW$1344, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$1344, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1345	.dwtag  DW_TAG_member
	.dwattr $C$DW$1345, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$1345, DW_AT_name("quantizerStepSize")
	.dwattr $C$DW$1345, DW_AT_TI_symbol_name("_quantizerStepSize")
	.dwattr $C$DW$1345, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$1345, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$53

$C$DW$T$54	.dwtag  DW_TAG_typedef, DW_AT_name("gr_info")
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$T$54, DW_AT_language(DW_LANG_C)
$C$DW$T$93	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$93, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$T$93, DW_AT_address_class(0x17)

$C$DW$T$55	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x17)
$C$DW$1346	.dwtag  DW_TAG_member
	.dwattr $C$DW$1346, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$1346, DW_AT_name("tt")
	.dwattr $C$DW$1346, DW_AT_TI_symbol_name("_tt")
	.dwattr $C$DW$1346, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1346, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$55


$C$DW$T$56	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$T$56, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$56, DW_AT_byte_size(0x17)
$C$DW$1347	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1347, DW_AT_upper_bound(0x00)
	.dwendtag $C$DW$T$56


$C$DW$T$57	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$57, DW_AT_byte_size(0x17)
$C$DW$1348	.dwtag  DW_TAG_member
	.dwattr $C$DW$1348, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$1348, DW_AT_name("ch")
	.dwattr $C$DW$1348, DW_AT_TI_symbol_name("_ch")
	.dwattr $C$DW$1348, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1348, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$57


$C$DW$T$59	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$59, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$59, DW_AT_byte_size(0x17)
$C$DW$1349	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1349, DW_AT_upper_bound(0x00)
	.dwendtag $C$DW$T$59


$C$DW$T$60	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$60, DW_AT_byte_size(0x1d)
$C$DW$1350	.dwtag  DW_TAG_member
	.dwattr $C$DW$1350, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$1350, DW_AT_name("private_bits")
	.dwattr $C$DW$1350, DW_AT_TI_symbol_name("_private_bits")
	.dwattr $C$DW$1350, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1350, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1351	.dwtag  DW_TAG_member
	.dwattr $C$DW$1351, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$1351, DW_AT_name("resvDrain")
	.dwattr $C$DW$1351, DW_AT_TI_symbol_name("_resvDrain")
	.dwattr $C$DW$1351, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1351, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1352	.dwtag  DW_TAG_member
	.dwattr $C$DW$1352, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$1352, DW_AT_name("scfsi")
	.dwattr $C$DW$1352, DW_AT_TI_symbol_name("_scfsi")
	.dwattr $C$DW$1352, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1352, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1353	.dwtag  DW_TAG_member
	.dwattr $C$DW$1353, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$1353, DW_AT_name("gr")
	.dwattr $C$DW$1353, DW_AT_TI_symbol_name("_gr")
	.dwattr $C$DW$1353, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$1353, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$60

$C$DW$T$89	.dwtag  DW_TAG_typedef, DW_AT_name("shine_side_info_t")
	.dwattr $C$DW$T$89, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$T$89, DW_AT_language(DW_LANG_C)
$C$DW$T$98	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$98, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$T$98, DW_AT_address_class(0x17)

$C$DW$T$62	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$62, DW_AT_byte_size(0x06)
$C$DW$1354	.dwtag  DW_TAG_member
	.dwattr $C$DW$1354, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$1354, DW_AT_name("mpeg")
	.dwattr $C$DW$1354, DW_AT_TI_symbol_name("_mpeg")
	.dwattr $C$DW$1354, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1354, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$62

$C$DW$T$99	.dwtag  DW_TAG_typedef, DW_AT_name("shine_config_t")
	.dwattr $C$DW$T$99, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$T$99, DW_AT_language(DW_LANG_C)
$C$DW$T$100	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$100, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$T$100, DW_AT_address_class(0x17)

$C$DW$T$63	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$63, DW_AT_byte_size(0x2a)
$C$DW$1355	.dwtag  DW_TAG_member
	.dwattr $C$DW$1355, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$1355, DW_AT_name("l")
	.dwattr $C$DW$1355, DW_AT_TI_symbol_name("_l")
	.dwattr $C$DW$1355, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1355, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$63

$C$DW$T$101	.dwtag  DW_TAG_typedef, DW_AT_name("shine_psy_xmin_t")
	.dwattr $C$DW$T$101, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$101, DW_AT_language(DW_LANG_C)
$C$DW$T$102	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$102, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$T$102, DW_AT_address_class(0x17)

$C$DW$T$65	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$65, DW_AT_byte_size(0x04)
$C$DW$1356	.dwtag  DW_TAG_member
	.dwattr $C$DW$1356, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$1356, DW_AT_name("region0_count")
	.dwattr $C$DW$1356, DW_AT_TI_symbol_name("_region0_count")
	.dwattr $C$DW$1356, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1356, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1357	.dwtag  DW_TAG_member
	.dwattr $C$DW$1357, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$1357, DW_AT_name("region1_count")
	.dwattr $C$DW$1357, DW_AT_TI_symbol_name("_region1_count")
	.dwattr $C$DW$1357, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1357, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$65

$C$DW$1358	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1358, DW_AT_type(*$C$DW$T$65)
$C$DW$T$103	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$103, DW_AT_type(*$C$DW$1358)

$C$DW$T$104	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$104, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$T$104, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$104, DW_AT_byte_size(0x5c)
$C$DW$1359	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1359, DW_AT_upper_bound(0x16)
	.dwendtag $C$DW$T$104

$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x17)
$C$DW$1360	.dwtag  DW_TAG_TI_far_type
$C$DW$T$106	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$106, DW_AT_type(*$C$DW$1360)
$C$DW$T$107	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$107, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$T$107, DW_AT_address_class(0x17)
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
$C$DW$T$31	.dwtag  DW_TAG_typedef, DW_AT_name("int16_t")
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$31, DW_AT_language(DW_LANG_C)
$C$DW$T$71	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$71, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$71, DW_AT_address_class(0x17)

$C$DW$T$72	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$72, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$T$72, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$72, DW_AT_byte_size(0x02)
$C$DW$1361	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1361, DW_AT_upper_bound(0x00)
	.dwendtag $C$DW$T$72

$C$DW$T$152	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$152, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$T$152, DW_AT_address_class(0x17)
$C$DW$1362	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1362, DW_AT_type(*$C$DW$T$31)
$C$DW$T$166	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$166, DW_AT_type(*$C$DW$1362)

$C$DW$T$167	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$167, DW_AT_type(*$C$DW$T$166)
	.dwattr $C$DW$T$167, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$167, DW_AT_byte_size(0x04)
$C$DW$1363	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1363, DW_AT_upper_bound(0x03)
	.dwendtag $C$DW$T$167


$C$DW$T$168	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$168, DW_AT_type(*$C$DW$T$166)
	.dwattr $C$DW$T$168, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$168, DW_AT_byte_size(0x40)
$C$DW$1364	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1364, DW_AT_upper_bound(0x0f)
$C$DW$1365	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1365, DW_AT_upper_bound(0x03)
	.dwendtag $C$DW$T$168

$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)
$C$DW$T$108	.dwtag  DW_TAG_typedef, DW_AT_name("size_t")
	.dwattr $C$DW$T$108, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$108, DW_AT_language(DW_LANG_C)
$C$DW$T$50	.dwtag  DW_TAG_typedef, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$50, DW_AT_language(DW_LANG_C)

$C$DW$T$51	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$51, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x03)
$C$DW$1366	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1366, DW_AT_upper_bound(0x02)
	.dwendtag $C$DW$T$51


$C$DW$T$52	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$52, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x04)
$C$DW$1367	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1367, DW_AT_upper_bound(0x03)
	.dwendtag $C$DW$T$52


$C$DW$T$58	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$58, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$58, DW_AT_byte_size(0x04)
$C$DW$1368	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1368, DW_AT_upper_bound(0x00)
$C$DW$1369	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1369, DW_AT_upper_bound(0x03)
	.dwendtag $C$DW$T$58

$C$DW$T$66	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$66, DW_AT_address_class(0x17)

$C$DW$T$181	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$181, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$181, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$181, DW_AT_byte_size(0x5d98)
$C$DW$1370	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1370, DW_AT_upper_bound(0x5d97)
	.dwendtag $C$DW$T$181


$C$DW$T$182	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$182, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$182, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$182, DW_AT_byte_size(0x200)
$C$DW$1371	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1371, DW_AT_upper_bound(0x1ff)
	.dwendtag $C$DW$T$182

$C$DW$1372	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1372, DW_AT_type(*$C$DW$T$50)
$C$DW$T$68	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$1372)
$C$DW$T$69	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$69, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$T$69, DW_AT_address_class(0x17)

$C$DW$T$184	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$184, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$T$184, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$184, DW_AT_byte_size(0x04)
$C$DW$1373	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1373, DW_AT_upper_bound(0x03)
	.dwendtag $C$DW$T$184


$C$DW$T$185	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$185, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$T$185, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$185, DW_AT_byte_size(0x09)
$C$DW$1374	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1374, DW_AT_upper_bound(0x08)
	.dwendtag $C$DW$T$185


$C$DW$T$186	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$186, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$T$186, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$186, DW_AT_byte_size(0x10)
$C$DW$1375	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1375, DW_AT_upper_bound(0x0f)
	.dwendtag $C$DW$T$186


$C$DW$T$187	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$187, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$T$187, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$187, DW_AT_byte_size(0x24)
$C$DW$1376	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1376, DW_AT_upper_bound(0x23)
	.dwendtag $C$DW$T$187


$C$DW$T$188	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$188, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$T$188, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$188, DW_AT_byte_size(0x40)
$C$DW$1377	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1377, DW_AT_upper_bound(0x3f)
	.dwendtag $C$DW$T$188


$C$DW$T$189	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$189, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$T$189, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$189, DW_AT_byte_size(0x100)
$C$DW$1378	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1378, DW_AT_upper_bound(0xff)
	.dwendtag $C$DW$T$189

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)
$C$DW$T$20	.dwtag  DW_TAG_typedef, DW_AT_name("int32_t")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$20, DW_AT_language(DW_LANG_C)
$C$DW$T$23	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$23, DW_AT_address_class(0x17)

$C$DW$T$24	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x100)
$C$DW$1379	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1379, DW_AT_upper_bound(0x7f)
	.dwendtag $C$DW$T$24


$C$DW$T$25	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$25, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x190)
$C$DW$1380	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1380, DW_AT_upper_bound(0xc7)
	.dwendtag $C$DW$T$25


$C$DW$T$33	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$33, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x2c)
$C$DW$1381	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1381, DW_AT_upper_bound(0x15)
	.dwendtag $C$DW$T$33


$C$DW$T$34	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x2c)
$C$DW$1382	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1382, DW_AT_upper_bound(0x00)
$C$DW$1383	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1383, DW_AT_upper_bound(0x15)
	.dwendtag $C$DW$T$34


$C$DW$T$35	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$35, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x2c)
$C$DW$1384	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1384, DW_AT_upper_bound(0x00)
$C$DW$1385	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1385, DW_AT_upper_bound(0x00)
$C$DW$1386	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1386, DW_AT_upper_bound(0x15)
	.dwendtag $C$DW$T$35


$C$DW$T$36	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x06)
$C$DW$1387	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1387, DW_AT_upper_bound(0x02)
	.dwendtag $C$DW$T$36


$C$DW$T$37	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x4e)
$C$DW$1388	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1388, DW_AT_upper_bound(0x0c)
$C$DW$1389	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1389, DW_AT_upper_bound(0x02)
	.dwendtag $C$DW$T$37


$C$DW$T$38	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$38, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x4e)
$C$DW$1390	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1390, DW_AT_upper_bound(0x00)
$C$DW$1391	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1391, DW_AT_upper_bound(0x0c)
$C$DW$1392	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1392, DW_AT_upper_bound(0x02)
	.dwendtag $C$DW$T$38


$C$DW$T$39	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$39, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x4e)
$C$DW$1393	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1393, DW_AT_upper_bound(0x00)
$C$DW$1394	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1394, DW_AT_upper_bound(0x00)
$C$DW$1395	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1395, DW_AT_upper_bound(0x0c)
$C$DW$1396	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1396, DW_AT_upper_bound(0x02)
	.dwendtag $C$DW$T$39


$C$DW$T$41	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$41, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x48)
$C$DW$1397	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1397, DW_AT_upper_bound(0x23)
	.dwendtag $C$DW$T$41


$C$DW$T$42	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$42, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x510)
$C$DW$1398	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1398, DW_AT_upper_bound(0x11)
$C$DW$1399	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1399, DW_AT_upper_bound(0x23)
	.dwendtag $C$DW$T$42


$C$DW$T$44	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x02)
$C$DW$1400	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1400, DW_AT_upper_bound(0x00)
	.dwendtag $C$DW$T$44


$C$DW$T$45	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$45, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x80)
$C$DW$1401	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1401, DW_AT_upper_bound(0x3f)
	.dwendtag $C$DW$T$45


$C$DW$T$46	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$46, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$46, DW_AT_byte_size(0x1000)
$C$DW$1402	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1402, DW_AT_upper_bound(0x1f)
$C$DW$1403	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1403, DW_AT_upper_bound(0x3f)
	.dwendtag $C$DW$T$46


$C$DW$T$47	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$47, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x400)
$C$DW$1404	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1404, DW_AT_upper_bound(0x1ff)
	.dwendtag $C$DW$T$47


$C$DW$T$48	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$48, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x400)
$C$DW$1405	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1405, DW_AT_upper_bound(0x00)
$C$DW$1406	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1406, DW_AT_upper_bound(0x1ff)
	.dwendtag $C$DW$T$48


$C$DW$T$82	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$82, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$82, DW_AT_byte_size(0x480)
$C$DW$1407	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1407, DW_AT_upper_bound(0x23f)
	.dwendtag $C$DW$T$82


$C$DW$T$83	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$83, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$83, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$83, DW_AT_byte_size(0x480)
$C$DW$1408	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1408, DW_AT_upper_bound(0x00)
$C$DW$1409	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1409, DW_AT_upper_bound(0x23f)
	.dwendtag $C$DW$T$83


$C$DW$T$84	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$84, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$84, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$84, DW_AT_byte_size(0x480)
$C$DW$1410	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1410, DW_AT_upper_bound(0x00)
$C$DW$1411	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1411, DW_AT_upper_bound(0x00)
$C$DW$1412	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1412, DW_AT_upper_bound(0x23f)
	.dwendtag $C$DW$T$84


$C$DW$T$85	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$85, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$85, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$85, DW_AT_byte_size(0x40)
$C$DW$1413	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1413, DW_AT_upper_bound(0x1f)
	.dwendtag $C$DW$T$85


$C$DW$T$86	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$86, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$86, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$86, DW_AT_byte_size(0x480)
$C$DW$1414	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1414, DW_AT_upper_bound(0x11)
$C$DW$1415	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1415, DW_AT_upper_bound(0x1f)
	.dwendtag $C$DW$T$86


$C$DW$T$87	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$87, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$87, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$87, DW_AT_byte_size(0x900)
$C$DW$1416	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1416, DW_AT_upper_bound(0x01)
$C$DW$1417	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1417, DW_AT_upper_bound(0x11)
$C$DW$1418	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1418, DW_AT_upper_bound(0x1f)
	.dwendtag $C$DW$T$87


$C$DW$T$88	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$88, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$88, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$88, DW_AT_byte_size(0x900)
$C$DW$1419	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1419, DW_AT_upper_bound(0x00)
$C$DW$1420	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1420, DW_AT_upper_bound(0x01)
$C$DW$1421	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1421, DW_AT_upper_bound(0x11)
$C$DW$1422	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1422, DW_AT_upper_bound(0x1f)
	.dwendtag $C$DW$T$88


$C$DW$T$243	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$243, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$243, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$243, DW_AT_byte_size(0x08)
$C$DW$1423	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1423, DW_AT_upper_bound(0x03)
	.dwendtag $C$DW$T$243


$C$DW$T$244	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$244, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$244, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$244, DW_AT_byte_size(0x04)
$C$DW$1424	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1424, DW_AT_upper_bound(0x01)
	.dwendtag $C$DW$T$244


$C$DW$T$246	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$246, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$246, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$246, DW_AT_byte_size(0x24)
$C$DW$1425	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1425, DW_AT_upper_bound(0x11)
	.dwendtag $C$DW$T$246

$C$DW$T$247	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$247, DW_AT_type(*$C$DW$T$246)
	.dwattr $C$DW$T$247, DW_AT_address_class(0x17)
$C$DW$1426	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1426, DW_AT_type(*$C$DW$T$20)
$C$DW$T$158	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$158, DW_AT_type(*$C$DW$1426)

$C$DW$T$248	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$248, DW_AT_type(*$C$DW$T$158)
	.dwattr $C$DW$T$248, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$248, DW_AT_byte_size(0x20)
$C$DW$1427	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1427, DW_AT_upper_bound(0x0f)
	.dwendtag $C$DW$T$248


$C$DW$T$249	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$249, DW_AT_type(*$C$DW$T$158)
	.dwattr $C$DW$T$249, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$249, DW_AT_byte_size(0x12)
$C$DW$1428	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1428, DW_AT_upper_bound(0x08)
	.dwendtag $C$DW$T$249


$C$DW$T$250	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$250, DW_AT_type(*$C$DW$T$158)
	.dwattr $C$DW$T$250, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$250, DW_AT_byte_size(0x2e)
$C$DW$1429	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1429, DW_AT_upper_bound(0x16)
	.dwendtag $C$DW$T$250


$C$DW$T$251	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$251, DW_AT_type(*$C$DW$T$158)
	.dwattr $C$DW$T$251, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$251, DW_AT_byte_size(0x19e)
$C$DW$1430	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1430, DW_AT_upper_bound(0x08)
$C$DW$1431	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1431, DW_AT_upper_bound(0x16)
	.dwendtag $C$DW$T$251


$C$DW$T$253	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$253, DW_AT_type(*$C$DW$T$158)
	.dwattr $C$DW$T$253, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$253, DW_AT_byte_size(0x400)
$C$DW$1432	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1432, DW_AT_upper_bound(0x1ff)
	.dwendtag $C$DW$T$253

$C$DW$T$254	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$254, DW_AT_type(*$C$DW$T$158)
	.dwattr $C$DW$T$254, DW_AT_address_class(0x17)
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)
$C$DW$T$64	.dwtag  DW_TAG_typedef, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$64, DW_AT_language(DW_LANG_C)
$C$DW$T$155	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$155, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$155, DW_AT_address_class(0x17)
$C$DW$1433	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1433, DW_AT_type(*$C$DW$T$64)
$C$DW$T$255	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$255, DW_AT_type(*$C$DW$1433)
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

$C$DW$T$27	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x2a)
$C$DW$1434	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1434, DW_AT_upper_bound(0x14)
	.dwendtag $C$DW$T$27


$C$DW$T$28	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x2a)
$C$DW$1435	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1435, DW_AT_upper_bound(0x00)
$C$DW$1436	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1436, DW_AT_upper_bound(0x14)
	.dwendtag $C$DW$T$28


$C$DW$T$29	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$T$29, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x2a)
$C$DW$1437	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1437, DW_AT_upper_bound(0x00)
$C$DW$1438	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1438, DW_AT_upper_bound(0x00)
$C$DW$1439	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1439, DW_AT_upper_bound(0x14)
	.dwendtag $C$DW$T$29


$C$DW$T$74	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$74, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$T$74, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$74, DW_AT_byte_size(0x02)
$C$DW$1440	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1440, DW_AT_upper_bound(0x00)
	.dwendtag $C$DW$T$74


$C$DW$T$75	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$75, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$T$75, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$75, DW_AT_byte_size(0x02)
$C$DW$1441	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1441, DW_AT_upper_bound(0x00)
$C$DW$1442	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1442, DW_AT_upper_bound(0x00)
	.dwendtag $C$DW$T$75

$C$DW$T$239	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$239, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$T$239, DW_AT_address_class(0x17)
$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x02)
$C$DW$T$267	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$267, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$267, DW_AT_name("signed char")
	.dwattr $C$DW$T$267, DW_AT_byte_size(0x01)

$C$DW$T$67	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$67, DW_AT_name("bit_stream_struc")
	.dwattr $C$DW$T$67, DW_AT_byte_size(0x08)
$C$DW$1443	.dwtag  DW_TAG_member
	.dwattr $C$DW$1443, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$1443, DW_AT_name("data")
	.dwattr $C$DW$1443, DW_AT_TI_symbol_name("_data")
	.dwattr $C$DW$1443, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1443, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1444	.dwtag  DW_TAG_member
	.dwattr $C$DW$1444, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$1444, DW_AT_name("cache")
	.dwattr $C$DW$1444, DW_AT_TI_symbol_name("_cache")
	.dwattr $C$DW$1444, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1444, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1445	.dwtag  DW_TAG_member
	.dwattr $C$DW$1445, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1445, DW_AT_name("cache_bits")
	.dwattr $C$DW$1445, DW_AT_TI_symbol_name("_cache_bits")
	.dwattr $C$DW$1445, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$1445, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1446	.dwtag  DW_TAG_member
	.dwattr $C$DW$1446, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$1446, DW_AT_name("data_size")
	.dwattr $C$DW$1446, DW_AT_TI_symbol_name("_data_size")
	.dwattr $C$DW$1446, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$1446, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1447	.dwtag  DW_TAG_member
	.dwattr $C$DW$1447, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$1447, DW_AT_name("data_position")
	.dwattr $C$DW$1447, DW_AT_TI_symbol_name("_data_position")
	.dwattr $C$DW$1447, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$1447, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$67

$C$DW$T$78	.dwtag  DW_TAG_typedef, DW_AT_name("bitstream_t")
	.dwattr $C$DW$T$78, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$T$78, DW_AT_language(DW_LANG_C)
$C$DW$T$128	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$128, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$T$128, DW_AT_address_class(0x17)

$C$DW$T$21	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$21, DW_AT_name("emph")
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x01)
$C$DW$1448	.dwtag  DW_TAG_enumerator, DW_AT_name("NONE"), DW_AT_const_value(0x00)
$C$DW$1449	.dwtag  DW_TAG_enumerator, DW_AT_name("MU50_15"), DW_AT_const_value(0x01)
$C$DW$1450	.dwtag  DW_TAG_enumerator, DW_AT_name("CITT"), DW_AT_const_value(0x03)
	.dwendtag $C$DW$T$21


$C$DW$T$70	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$70, DW_AT_name("huffcodetab")
	.dwattr $C$DW$T$70, DW_AT_byte_size(0x0c)
$C$DW$1451	.dwtag  DW_TAG_member
	.dwattr $C$DW$1451, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$1451, DW_AT_name("xlen")
	.dwattr $C$DW$1451, DW_AT_TI_symbol_name("_xlen")
	.dwattr $C$DW$1451, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1451, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1452	.dwtag  DW_TAG_member
	.dwattr $C$DW$1452, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$1452, DW_AT_name("ylen")
	.dwattr $C$DW$1452, DW_AT_TI_symbol_name("_ylen")
	.dwattr $C$DW$1452, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1452, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1453	.dwtag  DW_TAG_member
	.dwattr $C$DW$1453, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$1453, DW_AT_name("linbits")
	.dwattr $C$DW$1453, DW_AT_TI_symbol_name("_linbits")
	.dwattr $C$DW$1453, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$1453, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1454	.dwtag  DW_TAG_member
	.dwattr $C$DW$1454, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$1454, DW_AT_name("linmax")
	.dwattr $C$DW$1454, DW_AT_TI_symbol_name("_linmax")
	.dwattr $C$DW$1454, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$1454, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1455	.dwtag  DW_TAG_member
	.dwattr $C$DW$1455, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$1455, DW_AT_name("table")
	.dwattr $C$DW$1455, DW_AT_TI_symbol_name("_table")
	.dwattr $C$DW$1455, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$1455, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1456	.dwtag  DW_TAG_member
	.dwattr $C$DW$1456, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$1456, DW_AT_name("hlen")
	.dwattr $C$DW$1456, DW_AT_TI_symbol_name("_hlen")
	.dwattr $C$DW$1456, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$1456, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$70

$C$DW$1457	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1457, DW_AT_type(*$C$DW$T$70)
$C$DW$T$136	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$136, DW_AT_type(*$C$DW$1457)
$C$DW$T$137	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$137, DW_AT_type(*$C$DW$T$136)
	.dwattr $C$DW$T$137, DW_AT_address_class(0x17)

$C$DW$T$269	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$269, DW_AT_type(*$C$DW$T$136)
	.dwattr $C$DW$T$269, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$269, DW_AT_byte_size(0x198)
$C$DW$1458	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1458, DW_AT_upper_bound(0x21)
	.dwendtag $C$DW$T$269


$C$DW$T$19	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$19, DW_AT_name("modes")
	.dwattr $C$DW$T$19, DW_AT_byte_size(0x01)
$C$DW$1459	.dwtag  DW_TAG_enumerator, DW_AT_name("STEREO"), DW_AT_const_value(0x00)
$C$DW$1460	.dwtag  DW_TAG_enumerator, DW_AT_name("JOINT_STEREO"), DW_AT_const_value(0x01)
$C$DW$1461	.dwtag  DW_TAG_enumerator, DW_AT_name("DUAL_CHANNEL"), DW_AT_const_value(0x02)
$C$DW$1462	.dwtag  DW_TAG_enumerator, DW_AT_name("MONO"), DW_AT_const_value(0x03)
	.dwendtag $C$DW$T$19


$C$DW$T$90	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$90, DW_AT_name("shine_global_flags")
	.dwattr $C$DW$T$90, DW_AT_byte_size(0x2e8e)
$C$DW$1463	.dwtag  DW_TAG_member
	.dwattr $C$DW$1463, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$1463, DW_AT_name("buffer")
	.dwattr $C$DW$1463, DW_AT_TI_symbol_name("_buffer")
	.dwattr $C$DW$1463, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1463, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1464	.dwtag  DW_TAG_member
	.dwattr $C$DW$1464, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$1464, DW_AT_name("l3loop")
	.dwattr $C$DW$1464, DW_AT_TI_symbol_name("_l3loop")
	.dwattr $C$DW$1464, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1464, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1465	.dwtag  DW_TAG_member
	.dwattr $C$DW$1465, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$1465, DW_AT_name("pe")
	.dwattr $C$DW$1465, DW_AT_TI_symbol_name("_pe")
	.dwattr $C$DW$1465, DW_AT_data_member_location[DW_OP_plus_uconst 0x296]
	.dwattr $C$DW$1465, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1466	.dwtag  DW_TAG_member
	.dwattr $C$DW$1466, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$1466, DW_AT_name("ratio")
	.dwattr $C$DW$1466, DW_AT_TI_symbol_name("_ratio")
	.dwattr $C$DW$1466, DW_AT_data_member_location[DW_OP_plus_uconst 0x298]
	.dwattr $C$DW$1466, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1467	.dwtag  DW_TAG_member
	.dwattr $C$DW$1467, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$1467, DW_AT_name("mpeg")
	.dwattr $C$DW$1467, DW_AT_TI_symbol_name("_mpeg")
	.dwattr $C$DW$1467, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c2]
	.dwattr $C$DW$1467, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1468	.dwtag  DW_TAG_member
	.dwattr $C$DW$1468, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$1468, DW_AT_name("bs")
	.dwattr $C$DW$1468, DW_AT_TI_symbol_name("_bs")
	.dwattr $C$DW$1468, DW_AT_data_member_location[DW_OP_plus_uconst 0x2d4]
	.dwattr $C$DW$1468, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1469	.dwtag  DW_TAG_member
	.dwattr $C$DW$1469, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$1469, DW_AT_name("scalefactor")
	.dwattr $C$DW$1469, DW_AT_TI_symbol_name("_scalefactor")
	.dwattr $C$DW$1469, DW_AT_data_member_location[DW_OP_plus_uconst 0x2dc]
	.dwattr $C$DW$1469, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1470	.dwtag  DW_TAG_member
	.dwattr $C$DW$1470, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$1470, DW_AT_name("mdct")
	.dwattr $C$DW$1470, DW_AT_TI_symbol_name("_mdct")
	.dwattr $C$DW$1470, DW_AT_data_member_location[DW_OP_plus_uconst 0x356]
	.dwattr $C$DW$1470, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1471	.dwtag  DW_TAG_member
	.dwattr $C$DW$1471, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$1471, DW_AT_name("subband")
	.dwattr $C$DW$1471, DW_AT_TI_symbol_name("_subband")
	.dwattr $C$DW$1471, DW_AT_data_member_location[DW_OP_plus_uconst 0x866]
	.dwattr $C$DW$1471, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1472	.dwtag  DW_TAG_member
	.dwattr $C$DW$1472, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$1472, DW_AT_name("l3_enc")
	.dwattr $C$DW$1472, DW_AT_TI_symbol_name("_l3_enc")
	.dwattr $C$DW$1472, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c68]
	.dwattr $C$DW$1472, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1473	.dwtag  DW_TAG_member
	.dwattr $C$DW$1473, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$1473, DW_AT_name("l3_sb_sample")
	.dwattr $C$DW$1473, DW_AT_TI_symbol_name("_l3_sb_sample")
	.dwattr $C$DW$1473, DW_AT_data_member_location[DW_OP_plus_uconst 0x20e8]
	.dwattr $C$DW$1473, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1474	.dwtag  DW_TAG_member
	.dwattr $C$DW$1474, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$1474, DW_AT_name("mdct_freq")
	.dwattr $C$DW$1474, DW_AT_TI_symbol_name("_mdct_freq")
	.dwattr $C$DW$1474, DW_AT_data_member_location[DW_OP_plus_uconst 0x29e8]
	.dwattr $C$DW$1474, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1475	.dwtag  DW_TAG_member
	.dwattr $C$DW$1475, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1475, DW_AT_name("sideinfo_len")
	.dwattr $C$DW$1475, DW_AT_TI_symbol_name("_sideinfo_len")
	.dwattr $C$DW$1475, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e68]
	.dwattr $C$DW$1475, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1476	.dwtag  DW_TAG_member
	.dwattr $C$DW$1476, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1476, DW_AT_name("mean_bits")
	.dwattr $C$DW$1476, DW_AT_TI_symbol_name("_mean_bits")
	.dwattr $C$DW$1476, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e6a]
	.dwattr $C$DW$1476, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1477	.dwtag  DW_TAG_member
	.dwattr $C$DW$1477, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1477, DW_AT_name("ResvSize")
	.dwattr $C$DW$1477, DW_AT_TI_symbol_name("_ResvSize")
	.dwattr $C$DW$1477, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e6c]
	.dwattr $C$DW$1477, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1478	.dwtag  DW_TAG_member
	.dwattr $C$DW$1478, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1478, DW_AT_name("ResvMax")
	.dwattr $C$DW$1478, DW_AT_TI_symbol_name("_ResvMax")
	.dwattr $C$DW$1478, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e6e]
	.dwattr $C$DW$1478, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1479	.dwtag  DW_TAG_member
	.dwattr $C$DW$1479, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$1479, DW_AT_name("side_info")
	.dwattr $C$DW$1479, DW_AT_TI_symbol_name("_side_info")
	.dwattr $C$DW$1479, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e70]
	.dwattr $C$DW$1479, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$90

$C$DW$T$120	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$120, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$T$120, DW_AT_address_class(0x17)
$C$DW$T$121	.dwtag  DW_TAG_typedef, DW_AT_name("shine_t")
	.dwattr $C$DW$T$121, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$T$121, DW_AT_language(DW_LANG_C)
$C$DW$T$124	.dwtag  DW_TAG_typedef, DW_AT_name("shine_global_config")
	.dwattr $C$DW$T$124, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$T$124, DW_AT_language(DW_LANG_C)
$C$DW$T$125	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$125, DW_AT_type(*$C$DW$T$124)
	.dwattr $C$DW$T$125, DW_AT_address_class(0x17)
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

$C$DW$1480	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$1480, DW_AT_location[DW_OP_reg0]
$C$DW$1481	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$1481, DW_AT_location[DW_OP_reg1]
$C$DW$1482	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$1482, DW_AT_location[DW_OP_reg2]
$C$DW$1483	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$1483, DW_AT_location[DW_OP_reg3]
$C$DW$1484	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$1484, DW_AT_location[DW_OP_reg4]
$C$DW$1485	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$1485, DW_AT_location[DW_OP_reg5]
$C$DW$1486	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$1486, DW_AT_location[DW_OP_reg6]
$C$DW$1487	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$1487, DW_AT_location[DW_OP_reg7]
$C$DW$1488	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$1488, DW_AT_location[DW_OP_reg8]
$C$DW$1489	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$1489, DW_AT_location[DW_OP_reg9]
$C$DW$1490	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$1490, DW_AT_location[DW_OP_reg10]
$C$DW$1491	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$1491, DW_AT_location[DW_OP_reg11]
$C$DW$1492	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$1492, DW_AT_location[DW_OP_reg12]
$C$DW$1493	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$1493, DW_AT_location[DW_OP_reg13]
$C$DW$1494	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$1494, DW_AT_location[DW_OP_reg14]
$C$DW$1495	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$1495, DW_AT_location[DW_OP_reg15]
$C$DW$1496	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$1496, DW_AT_location[DW_OP_reg16]
$C$DW$1497	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$1497, DW_AT_location[DW_OP_reg17]
$C$DW$1498	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$1498, DW_AT_location[DW_OP_reg18]
$C$DW$1499	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$1499, DW_AT_location[DW_OP_reg19]
$C$DW$1500	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$1500, DW_AT_location[DW_OP_reg20]
$C$DW$1501	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$1501, DW_AT_location[DW_OP_reg21]
$C$DW$1502	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$1502, DW_AT_location[DW_OP_reg22]
$C$DW$1503	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$1503, DW_AT_location[DW_OP_reg23]
$C$DW$1504	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$1504, DW_AT_location[DW_OP_reg24]
$C$DW$1505	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$1505, DW_AT_location[DW_OP_reg25]
$C$DW$1506	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$1506, DW_AT_location[DW_OP_reg26]
$C$DW$1507	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$1507, DW_AT_location[DW_OP_reg27]
$C$DW$1508	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$1508, DW_AT_location[DW_OP_reg28]
$C$DW$1509	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$1509, DW_AT_location[DW_OP_reg29]
$C$DW$1510	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$1510, DW_AT_location[DW_OP_reg30]
$C$DW$1511	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$1511, DW_AT_location[DW_OP_reg31]
$C$DW$1512	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$1512, DW_AT_location[DW_OP_regx 0x20]
$C$DW$1513	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$1513, DW_AT_location[DW_OP_regx 0x21]
$C$DW$1514	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$1514, DW_AT_location[DW_OP_regx 0x22]
$C$DW$1515	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$1515, DW_AT_location[DW_OP_regx 0x23]
$C$DW$1516	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$1516, DW_AT_location[DW_OP_regx 0x24]
$C$DW$1517	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$1517, DW_AT_location[DW_OP_regx 0x25]
$C$DW$1518	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$1518, DW_AT_location[DW_OP_regx 0x26]
$C$DW$1519	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$1519, DW_AT_location[DW_OP_regx 0x27]
$C$DW$1520	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$1520, DW_AT_location[DW_OP_regx 0x28]
$C$DW$1521	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$1521, DW_AT_location[DW_OP_regx 0x29]
$C$DW$1522	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$1522, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$1523	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$1523, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$1524	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$1524, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$1525	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$1525, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$1526	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$1526, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$1527	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$1527, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$1528	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$1528, DW_AT_location[DW_OP_regx 0x30]
$C$DW$1529	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$1529, DW_AT_location[DW_OP_regx 0x31]
$C$DW$1530	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$1530, DW_AT_location[DW_OP_regx 0x32]
$C$DW$1531	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$1531, DW_AT_location[DW_OP_regx 0x33]
$C$DW$1532	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$1532, DW_AT_location[DW_OP_regx 0x34]
$C$DW$1533	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$1533, DW_AT_location[DW_OP_regx 0x35]
$C$DW$1534	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$1534, DW_AT_location[DW_OP_regx 0x36]
$C$DW$1535	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$1535, DW_AT_location[DW_OP_regx 0x37]
$C$DW$1536	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$1536, DW_AT_location[DW_OP_regx 0x38]
$C$DW$1537	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$1537, DW_AT_location[DW_OP_regx 0x39]
$C$DW$1538	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$1538, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$1539	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$1539, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$1540	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$1540, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$1541	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$1541, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$1542	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$1542, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$1543	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$1543, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$1544	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$1544, DW_AT_location[DW_OP_regx 0x40]
$C$DW$1545	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$1545, DW_AT_location[DW_OP_regx 0x41]
$C$DW$1546	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$1546, DW_AT_location[DW_OP_regx 0x42]
$C$DW$1547	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$1547, DW_AT_location[DW_OP_regx 0x43]
$C$DW$1548	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$1548, DW_AT_location[DW_OP_regx 0x44]
$C$DW$1549	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$1549, DW_AT_location[DW_OP_regx 0x45]
$C$DW$1550	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$1550, DW_AT_location[DW_OP_regx 0x46]
$C$DW$1551	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$1551, DW_AT_location[DW_OP_regx 0x47]
$C$DW$1552	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$1552, DW_AT_location[DW_OP_regx 0x48]
$C$DW$1553	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$1553, DW_AT_location[DW_OP_regx 0x49]
$C$DW$1554	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$1554, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$1555	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$1555, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$1556	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$1556, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$1557	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$1557, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$1558	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$1558, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$1559	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$1559, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$1560	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$1560, DW_AT_location[DW_OP_regx 0x50]
$C$DW$1561	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$1561, DW_AT_location[DW_OP_regx 0x51]
$C$DW$1562	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$1562, DW_AT_location[DW_OP_regx 0x52]
$C$DW$1563	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$1563, DW_AT_location[DW_OP_regx 0x53]
$C$DW$1564	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$1564, DW_AT_location[DW_OP_regx 0x54]
$C$DW$1565	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$1565, DW_AT_location[DW_OP_regx 0x55]
$C$DW$1566	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$1566, DW_AT_location[DW_OP_regx 0x56]
$C$DW$1567	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$1567, DW_AT_location[DW_OP_regx 0x57]
$C$DW$1568	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$1568, DW_AT_location[DW_OP_regx 0x58]
$C$DW$1569	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$1569, DW_AT_location[DW_OP_regx 0x59]
$C$DW$1570	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$1570, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$1571	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$1571, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

