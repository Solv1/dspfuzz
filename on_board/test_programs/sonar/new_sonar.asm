;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                        Unix v4.4.1 *
;* Date/Time created: Mon Sep 23 09:50:53 2024                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("./sonar/sonar.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen Unix v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/santiago/Research/DSPFuzz/on_board/test_programs")
;******************************************************************************
;* CINIT RECORDS                                                              *
;******************************************************************************
	.sect	".cinit"
	.align	1
	.field  	$C$IR_1,16
	.field  	_FIR_BANDPASS_TAPS+0,24
	.field  	0,8
	.field	-131,16			; _FIR_BANDPASS_TAPS[0] @ 0
	.field	-294,16			; _FIR_BANDPASS_TAPS[1] @ 16
	.field	491,16			; _FIR_BANDPASS_TAPS[2] @ 32
	.field	1376,16			; _FIR_BANDPASS_TAPS[3] @ 48
	.field	1503,16			; _FIR_BANDPASS_TAPS[4] @ 64
	.field	0,16			; _FIR_BANDPASS_TAPS[5] @ 80
	.field	-2785,16			; _FIR_BANDPASS_TAPS[6] @ 96
	.field	-4980,16			; _FIR_BANDPASS_TAPS[7] @ 112
	.field	-3019,16			; _FIR_BANDPASS_TAPS[8] @ 128
	.field	4424,16			; _FIR_BANDPASS_TAPS[9] @ 144
	.field	15363,16			; _FIR_BANDPASS_TAPS[10] @ 160
	.field	4424,16			; _FIR_BANDPASS_TAPS[11] @ 176
	.field	-3019,16			; _FIR_BANDPASS_TAPS[12] @ 192
	.field	-4980,16			; _FIR_BANDPASS_TAPS[13] @ 208
	.field	-2785,16			; _FIR_BANDPASS_TAPS[14] @ 224
	.field	0,16			; _FIR_BANDPASS_TAPS[15] @ 240
	.field	1503,16			; _FIR_BANDPASS_TAPS[16] @ 256
	.field	1376,16			; _FIR_BANDPASS_TAPS[17] @ 272
	.field	491,16			; _FIR_BANDPASS_TAPS[18] @ 288
	.field	-294,16			; _FIR_BANDPASS_TAPS[19] @ 304
$C$IR_1:	.set	20

	.sect	".cinit"
	.align	1
	.field  	$C$IR_2,16
	.field  	_PULSE_REFERENCE_FLIPPED+0,24
	.field  	0,8
	.field	-16384,16			; _PULSE_REFERENCE_FLIPPED[0] @ 0
	.field	-16381,16			; _PULSE_REFERENCE_FLIPPED[1] @ 16
	.field	-16374,16			; _PULSE_REFERENCE_FLIPPED[2] @ 32
	.field	-16361,16			; _PULSE_REFERENCE_FLIPPED[3] @ 48
	.field	-16344,16			; _PULSE_REFERENCE_FLIPPED[4] @ 64
	.field	-16321,16			; _PULSE_REFERENCE_FLIPPED[5] @ 80
	.field	-16294,16			; _PULSE_REFERENCE_FLIPPED[6] @ 96
	.field	-16261,16			; _PULSE_REFERENCE_FLIPPED[7] @ 112
	.field	-16224,16			; _PULSE_REFERENCE_FLIPPED[8] @ 128
	.field	-16182,16			; _PULSE_REFERENCE_FLIPPED[9] @ 144
	.field	-16135,16			; _PULSE_REFERENCE_FLIPPED[10] @ 160
	.field	-16082,16			; _PULSE_REFERENCE_FLIPPED[11] @ 176
	.field	-16025,16			; _PULSE_REFERENCE_FLIPPED[12] @ 192
	.field	-15964,16			; _PULSE_REFERENCE_FLIPPED[13] @ 208
	.field	-15897,16			; _PULSE_REFERENCE_FLIPPED[14] @ 224
	.field	-15825,16			; _PULSE_REFERENCE_FLIPPED[15] @ 240
	.field	-15749,16			; _PULSE_REFERENCE_FLIPPED[16] @ 256
	.field	-15668,16			; _PULSE_REFERENCE_FLIPPED[17] @ 272
	.field	-15582,16			; _PULSE_REFERENCE_FLIPPED[18] @ 288
	.field	-15491,16			; _PULSE_REFERENCE_FLIPPED[19] @ 304
	.field	-15395,16			; _PULSE_REFERENCE_FLIPPED[20] @ 320
	.field	-15295,16			; _PULSE_REFERENCE_FLIPPED[21] @ 336
	.field	-15190,16			; _PULSE_REFERENCE_FLIPPED[22] @ 352
	.field	-15081,16			; _PULSE_REFERENCE_FLIPPED[23] @ 368
	.field	-14967,16			; _PULSE_REFERENCE_FLIPPED[24] @ 384
	.field	-14848,16			; _PULSE_REFERENCE_FLIPPED[25] @ 400
	.field	-14725,16			; _PULSE_REFERENCE_FLIPPED[26] @ 416
	.field	-14598,16			; _PULSE_REFERENCE_FLIPPED[27] @ 432
	.field	-14466,16			; _PULSE_REFERENCE_FLIPPED[28] @ 448
	.field	-14329,16			; _PULSE_REFERENCE_FLIPPED[29] @ 464
	.field	-14188,16			; _PULSE_REFERENCE_FLIPPED[30] @ 480
	.field	-14043,16			; _PULSE_REFERENCE_FLIPPED[31] @ 496
	.field	-13894,16			; _PULSE_REFERENCE_FLIPPED[32] @ 512
	.field	-13740,16			; _PULSE_REFERENCE_FLIPPED[33] @ 528
	.field	-13582,16			; _PULSE_REFERENCE_FLIPPED[34] @ 544
	.field	-13420,16			; _PULSE_REFERENCE_FLIPPED[35] @ 560
	.field	-13254,16			; _PULSE_REFERENCE_FLIPPED[36] @ 576
	.field	-13084,16			; _PULSE_REFERENCE_FLIPPED[37] @ 592
	.field	-12910,16			; _PULSE_REFERENCE_FLIPPED[38] @ 608
	.field	-12732,16			; _PULSE_REFERENCE_FLIPPED[39] @ 624
	.field	-12550,16			; _PULSE_REFERENCE_FLIPPED[40] @ 640
	.field	-12365,16			; _PULSE_REFERENCE_FLIPPED[41] @ 656
	.field	-12175,16			; _PULSE_REFERENCE_FLIPPED[42] @ 672
	.field	-11982,16			; _PULSE_REFERENCE_FLIPPED[43] @ 688
	.field	-11785,16			; _PULSE_REFERENCE_FLIPPED[44] @ 704
	.field	-11585,16			; _PULSE_REFERENCE_FLIPPED[45] @ 720
	.field	-11381,16			; _PULSE_REFERENCE_FLIPPED[46] @ 736
	.field	-11173,16			; _PULSE_REFERENCE_FLIPPED[47] @ 752
	.field	-10963,16			; _PULSE_REFERENCE_FLIPPED[48] @ 768
	.field	-10748,16			; _PULSE_REFERENCE_FLIPPED[49] @ 784
	.field	-10531,16			; _PULSE_REFERENCE_FLIPPED[50] @ 800
	.field	-10310,16			; _PULSE_REFERENCE_FLIPPED[51] @ 816
	.field	-10086,16			; _PULSE_REFERENCE_FLIPPED[52] @ 832
	.field	-9860,16			; _PULSE_REFERENCE_FLIPPED[53] @ 848
	.field	-9630,16			; _PULSE_REFERENCE_FLIPPED[54] @ 864
	.field	-9397,16			; _PULSE_REFERENCE_FLIPPED[55] @ 880
	.field	-9161,16			; _PULSE_REFERENCE_FLIPPED[56] @ 896
	.field	-8923,16			; _PULSE_REFERENCE_FLIPPED[57] @ 912
	.field	-8682,16			; _PULSE_REFERENCE_FLIPPED[58] @ 928
	.field	-8438,16			; _PULSE_REFERENCE_FLIPPED[59] @ 944
	.field	-8191,16			; _PULSE_REFERENCE_FLIPPED[60] @ 960
	.field	-7943,16			; _PULSE_REFERENCE_FLIPPED[61] @ 976
	.field	-7691,16			; _PULSE_REFERENCE_FLIPPED[62] @ 992
	.field	-7438,16			; _PULSE_REFERENCE_FLIPPED[63] @ 1008
	.field	-7182,16			; _PULSE_REFERENCE_FLIPPED[64] @ 1024
	.field	-6924,16			; _PULSE_REFERENCE_FLIPPED[65] @ 1040
	.field	-6663,16			; _PULSE_REFERENCE_FLIPPED[66] @ 1056
	.field	-6401,16			; _PULSE_REFERENCE_FLIPPED[67] @ 1072
	.field	-6137,16			; _PULSE_REFERENCE_FLIPPED[68] @ 1088
	.field	-5871,16			; _PULSE_REFERENCE_FLIPPED[69] @ 1104
	.field	-5603,16			; _PULSE_REFERENCE_FLIPPED[70] @ 1120
	.field	-5334,16			; _PULSE_REFERENCE_FLIPPED[71] @ 1136
	.field	-5062,16			; _PULSE_REFERENCE_FLIPPED[72] @ 1152
	.field	-4790,16			; _PULSE_REFERENCE_FLIPPED[73] @ 1168
	.field	-4516,16			; _PULSE_REFERENCE_FLIPPED[74] @ 1184
	.field	-4240,16			; _PULSE_REFERENCE_FLIPPED[75] @ 1200
	.field	-3963,16			; _PULSE_REFERENCE_FLIPPED[76] @ 1216
	.field	-3685,16			; _PULSE_REFERENCE_FLIPPED[77] @ 1232
	.field	-3406,16			; _PULSE_REFERENCE_FLIPPED[78] @ 1248
	.field	-3126,16			; _PULSE_REFERENCE_FLIPPED[79] @ 1264
	.field	-2845,16			; _PULSE_REFERENCE_FLIPPED[80] @ 1280
	.field	-2563,16			; _PULSE_REFERENCE_FLIPPED[81] @ 1296
	.field	-2280,16			; _PULSE_REFERENCE_FLIPPED[82] @ 1312
	.field	-1996,16			; _PULSE_REFERENCE_FLIPPED[83] @ 1328
	.field	-1712,16			; _PULSE_REFERENCE_FLIPPED[84] @ 1344
	.field	-1427,16			; _PULSE_REFERENCE_FLIPPED[85] @ 1360
	.field	-1142,16			; _PULSE_REFERENCE_FLIPPED[86] @ 1376
	.field	-857,16			; _PULSE_REFERENCE_FLIPPED[87] @ 1392
	.field	-571,16			; _PULSE_REFERENCE_FLIPPED[88] @ 1408
	.field	-285,16			; _PULSE_REFERENCE_FLIPPED[89] @ 1424
	.field	0,16			; _PULSE_REFERENCE_FLIPPED[90] @ 1440
$C$IR_2:	.set	91


$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("memcpy")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_memcpy")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$3)
$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$20)
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$1


$C$DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("rand")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_rand")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external

$C$DW$6	.dwtag  DW_TAG_subprogram, DW_AT_name("calloc")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_calloc")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$6, DW_AT_declaration
	.dwattr $C$DW$6, DW_AT_external
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$21)
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$6


$C$DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("free")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_free")
	.dwattr $C$DW$9, DW_AT_declaration
	.dwattr $C$DW$9, DW_AT_external
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$9


$C$DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("memset")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_memset")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$11, DW_AT_declaration
	.dwattr $C$DW$11, DW_AT_external
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$3)
$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$10)
$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$11


$C$DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("cfft_NOSCALE")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_cfft_NOSCALE")
	.dwattr $C$DW$15, DW_AT_declaration
	.dwattr $C$DW$15, DW_AT_external
$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$30)
$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$31)
	.dwendtag $C$DW$15


$C$DW$18	.dwtag  DW_TAG_subprogram, DW_AT_name("unpack")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_unpack")
	.dwattr $C$DW$18, DW_AT_declaration
	.dwattr $C$DW$18, DW_AT_external
$C$DW$19	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$30)
$C$DW$20	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$31)
	.dwendtag $C$DW$18


$C$DW$21	.dwtag  DW_TAG_subprogram, DW_AT_name("cbrev")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_cbrev")
	.dwattr $C$DW$21, DW_AT_declaration
	.dwattr $C$DW$21, DW_AT_external
$C$DW$22	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$30)
$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$30)
$C$DW$24	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$31)
	.dwendtag $C$DW$21


$C$DW$25	.dwtag  DW_TAG_subprogram, DW_AT_name("convol")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_convol")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$25, DW_AT_declaration
	.dwattr $C$DW$25, DW_AT_external
$C$DW$26	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$30)
$C$DW$27	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$30)
$C$DW$28	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$30)
$C$DW$29	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$31)
$C$DW$30	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$31)
	.dwendtag $C$DW$25


$C$DW$31	.dwtag  DW_TAG_subprogram, DW_AT_name("fir")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_fir")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$31, DW_AT_declaration
	.dwattr $C$DW$31, DW_AT_external
$C$DW$32	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$30)
$C$DW$33	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$30)
$C$DW$34	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$30)
$C$DW$35	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$30)
$C$DW$36	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$31)
$C$DW$37	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$31)
	.dwendtag $C$DW$31


$C$DW$38	.dwtag  DW_TAG_subprogram, DW_AT_name("maxidx")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_maxidx")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$38, DW_AT_declaration
	.dwattr $C$DW$38, DW_AT_external
$C$DW$39	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$30)
$C$DW$40	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$31)
$C$DW$41	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$31)
	.dwendtag $C$DW$38

	.ref _coverage_log;
	.global	_FIR_BANDPASS_TAPS
	.bss	_FIR_BANDPASS_TAPS,20,0,0
$C$DW$42	.dwtag  DW_TAG_variable, DW_AT_name("FIR_BANDPASS_TAPS")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_FIR_BANDPASS_TAPS")
	.dwattr $C$DW$42, DW_AT_location[DW_OP_addr _FIR_BANDPASS_TAPS]
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$42, DW_AT_external
	.global	_PULSE_REFERENCE_FLIPPED
	.bss	_PULSE_REFERENCE_FLIPPED,91,0,0
$C$DW$43	.dwtag  DW_TAG_variable, DW_AT_name("PULSE_REFERENCE_FLIPPED")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_PULSE_REFERENCE_FLIPPED")
	.dwattr $C$DW$43, DW_AT_location[DW_OP_addr _PULSE_REFERENCE_FLIPPED]
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$43, DW_AT_external
;	/home/santiago/Research/Ti/C55_Tools/acp55 -@/tmp/268033vuRyP 
	.sect	".text"
	.global	_sonar_test

$C$DW$44	.dwtag  DW_TAG_subprogram, DW_AT_name("sonar_test")
	.dwattr $C$DW$44, DW_AT_low_pc(_sonar_test)
	.dwattr $C$DW$44, DW_AT_high_pc(0x00)
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_sonar_test")
	.dwattr $C$DW$44, DW_AT_external
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$44, DW_AT_TI_begin_file("./sonar/sonar.c")
	.dwattr $C$DW$44, DW_AT_TI_begin_line(0x27)
	.dwattr $C$DW$44, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$44, DW_AT_TI_max_frame_size(0x18)
	.dwpsn	file "./sonar/sonar.c",line 39,column 50,is_stmt,address _sonar_test

	.dwfde $C$DW$CIE, _sonar_test
$C$DW$45	.dwtag  DW_TAG_formal_parameter, DW_AT_name("input")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_reg17]
$C$DW$46	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: sonar_test                                                   *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,*
;*                        XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 24 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (22 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_sonar_test:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-23, SP
	.dwcfi	cfa_offset, 24
$C$DW$47	.dwtag  DW_TAG_variable, DW_AT_name("input")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$48	.dwtag  DW_TAG_variable, DW_AT_name("size")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$49	.dwtag  DW_TAG_variable, DW_AT_name("sum")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_sum")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$50	.dwtag  DW_TAG_variable, DW_AT_name("average")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_average")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$51	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$52	.dwtag  DW_TAG_variable, DW_AT_name("overflow")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_overflow")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_bregx 0x24 9]
$C$DW$53	.dwtag  DW_TAG_variable, DW_AT_name("groups")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_groups")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$54	.dwtag  DW_TAG_variable, DW_AT_name("size_of_groups")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_size_of_groups")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_bregx 0x24 11]
$C$DW$55	.dwtag  DW_TAG_variable, DW_AT_name("delay_index")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_delay_index")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$55, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$56	.dwtag  DW_TAG_variable, DW_AT_name("object_speed")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_object_speed")
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$56, DW_AT_location[DW_OP_bregx 0x24 13]
$C$DW$57	.dwtag  DW_TAG_variable, DW_AT_name("retVal")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_retVal")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$58	.dwtag  DW_TAG_variable, DW_AT_name("in_buf")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_in_buf")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_bregx 0x24 16]
$C$DW$59	.dwtag  DW_TAG_variable, DW_AT_name("out_buf")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_out_buf")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_bregx 0x24 18]
$C$DW$60	.dwtag  DW_TAG_variable, DW_AT_name("data_buf")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_data_buf")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_bregx 0x24 20]
        MOV T0, *SP(#2) ; |39| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./sonar/sonar.c",line 41,column 13,is_stmt
        MOV #0, AC0 ; |41| 
        MOV AC0, dbl(*SP(#4)) ; |41| 
	.dwpsn	file "./sonar/sonar.c",line 42,column 13,is_stmt
        MOV AC0, dbl(*SP(#6)) ; |42| 
	.dwpsn	file "./sonar/sonar.c",line 44,column 10,is_stmt
        MOV #0, *SP(#9) ; |44| 
	.dwpsn	file "./sonar/sonar.c",line 47,column 13,is_stmt
        MOV #0, *SP(#13) ; |47| 
	.dwpsn	file "./sonar/sonar.c",line 48,column 11,is_stmt
        MOV #0, *SP(#14) ; |48| 
	.dwpsn	file "./sonar/sonar.c",line 50,column 12,is_stmt
        MOV *SP(#2), T0 ; |50| 
$C$DW$61	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$61, DW_AT_low_pc(0x00)
	.dwattr $C$DW$61, DW_AT_name("_calloc")
	.dwattr $C$DW$61, DW_AT_TI_call

        CALL #_calloc ; |50| 
||      MOV #1, T1

                                        ; call occurs [#_calloc] ; |50| 
        MOV XAR0, dbl(*SP(#16))
	.dwpsn	file "./sonar/sonar.c",line 51,column 12,is_stmt
        MOV *SP(#2), T0 ; |51| 
$C$DW$62	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$62, DW_AT_low_pc(0x00)
	.dwattr $C$DW$62, DW_AT_name("_calloc")
	.dwattr $C$DW$62, DW_AT_TI_call

        CALL #_calloc ; |51| 
||      MOV #1, T1

                                        ; call occurs [#_calloc] ; |51| 
        MOV XAR0, dbl(*SP(#18))
	.dwpsn	file "./sonar/sonar.c",line 52,column 12,is_stmt
        MOV #22, T0 ; |52| 
$C$DW$63	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$63, DW_AT_low_pc(0x00)
	.dwattr $C$DW$63, DW_AT_name("_calloc")
	.dwattr $C$DW$63, DW_AT_TI_call

        CALL #_calloc ; |52| 
||      MOV #1, T1

                                        ; call occurs [#_calloc] ; |52| 
        MOV XAR0, dbl(*SP(#20))
	.dwpsn	file "./sonar/sonar.c",line 54,column 5,is_stmt
        MOV *SP(#2), T0 ; |54| 
        MOV dbl(*SP(#16)), XAR0
        MOV dbl(*SP(#0)), XAR1
$C$DW$64	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$64, DW_AT_low_pc(0x00)
	.dwattr $C$DW$64, DW_AT_name("_memcpy")
	.dwattr $C$DW$64, DW_AT_TI_call
        CALL #_memcpy ; |54| 
                                        ; call occurs [#_memcpy] ; |54| 
	.dwpsn	file "./sonar/sonar.c",line 55,column 5,is_stmt
        MOV *SP(#2), AR1 ; |55| 
        MOV dbl(*SP(#20)), XAR0
        ADD #2, AR1, T1 ; |55| 
$C$DW$65	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$65, DW_AT_low_pc(0x00)
	.dwattr $C$DW$65, DW_AT_name("_memset")
	.dwattr $C$DW$65, DW_AT_TI_call

        CALL #_memset ; |55| 
||      MOV #0, T0

                                        ; call occurs [#_memset] ; |55| 
	.dwpsn	file "./sonar/sonar.c",line 59,column 5,is_stmt
        MOV #20, T1 ; |59| 
        MOV *SP(#2), T0 ; |59| 
        MOV dbl(*SP(#16)), XAR0
        AMOV #_FIR_BANDPASS_TAPS, XAR1 ; |59| 
        MOV dbl(*SP(#18)), XAR2
        MOV dbl(*SP(#20)), XAR3
$C$DW$66	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$66, DW_AT_low_pc(0x00)
	.dwattr $C$DW$66, DW_AT_name("_fir")
	.dwattr $C$DW$66, DW_AT_TI_call
        CALL #_fir ; |59| 
                                        ; call occurs [#_fir] ; |59| 
        MOV T0, *SP(#14) ; |59| 
	.dwpsn	file "./sonar/sonar.c",line 60,column 5,is_stmt
        MOV T0, AR1
        BCC $C$L1,AR1 == #0 ; |60| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |60| 
	.dwpsn	file "./sonar/sonar.c",line 62,column 9,is_stmt
        MOV dbl(*SP(#16)), XAR0
$C$DW$67	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$67, DW_AT_low_pc(0x00)
	.dwattr $C$DW$67, DW_AT_name("_free")
	.dwattr $C$DW$67, DW_AT_TI_call
        CALL #_free ; |62| 
                                        ; call occurs [#_free] ; |62| 
	.dwpsn	file "./sonar/sonar.c",line 63,column 9,is_stmt
        MOV dbl(*SP(#18)), XAR0
$C$DW$68	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$68, DW_AT_low_pc(0x00)
	.dwattr $C$DW$68, DW_AT_name("_free")
	.dwattr $C$DW$68, DW_AT_TI_call
        CALL #_free ; |63| 
                                        ; call occurs [#_free] ; |63| 
	.dwpsn	file "./sonar/sonar.c",line 64,column 9,is_stmt
        MOV dbl(*SP(#20)), XAR0
$C$DW$69	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$69, DW_AT_low_pc(0x00)
	.dwattr $C$DW$69, DW_AT_name("_free")
	.dwattr $C$DW$69, DW_AT_TI_call
        CALL #_free ; |64| 
                                        ; call occurs [#_free] ; |64| 
	.dwpsn	file "./sonar/sonar.c",line 65,column 9,is_stmt
        MOV #1, T0
        B $C$L12  ; |65| 
                                        ; branch occurs ; |65| 
$C$L1:    
	CALL #_coverage_log;
	.dwpsn	file "./sonar/sonar.c",line 70,column 5,is_stmt
        MOV *SP(#2), AR1 ; |70| 
        ADD #91, AR1, T1 ; |70| 
        MOV *SP(#2), T0 ; |70| 
        MOV dbl(*SP(#16)), XAR0
        MOV dbl(*SP(#18)), XAR2
        AMOV #_PULSE_REFERENCE_FLIPPED, XAR1 ; |70| 
$C$DW$70	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$70, DW_AT_low_pc(0x00)
	.dwattr $C$DW$70, DW_AT_name("_convol")
	.dwattr $C$DW$70, DW_AT_TI_call
        CALL #_convol ; |70| 
                                        ; call occurs [#_convol] ; |70| 
        MOV T0, *SP(#14) ; |70| 
	.dwpsn	file "./sonar/sonar.c",line 71,column 5,is_stmt
        MOV T0, AR1
        BCC $C$L2,AR1 == #0 ; |71| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |71| 
	.dwpsn	file "./sonar/sonar.c",line 73,column 9,is_stmt
        MOV dbl(*SP(#16)), XAR0
$C$DW$71	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$71, DW_AT_low_pc(0x00)
	.dwattr $C$DW$71, DW_AT_name("_free")
	.dwattr $C$DW$71, DW_AT_TI_call
        CALL #_free ; |73| 
                                        ; call occurs [#_free] ; |73| 
	.dwpsn	file "./sonar/sonar.c",line 74,column 9,is_stmt
        MOV dbl(*SP(#18)), XAR0
$C$DW$72	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$72, DW_AT_low_pc(0x00)
	.dwattr $C$DW$72, DW_AT_name("_free")
	.dwattr $C$DW$72, DW_AT_TI_call
        CALL #_free ; |74| 
                                        ; call occurs [#_free] ; |74| 
	.dwpsn	file "./sonar/sonar.c",line 75,column 9,is_stmt
        MOV dbl(*SP(#20)), XAR0
$C$DW$73	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$73, DW_AT_low_pc(0x00)
	.dwattr $C$DW$73, DW_AT_name("_free")
	.dwattr $C$DW$73, DW_AT_TI_call
        CALL #_free ; |75| 
                                        ; call occurs [#_free] ; |75| 
	.dwpsn	file "./sonar/sonar.c",line 76,column 9,is_stmt
        MOV #1, T0
        B $C$L12  ; |76| 
                                        ; branch occurs ; |76| 
$C$L2:    
	CALL #_coverage_log;
	.dwpsn	file "./sonar/sonar.c",line 81,column 10,is_stmt
        MOV #0, *SP(#8) ; |81| 
	.dwpsn	file "./sonar/sonar.c",line 81,column 17,is_stmt
        MOV *SP(#2), AR1 ; |81| 
        MOV *SP(#8), AR2 ; |81| 
        CMP AR2 >= AR1, TC1 ; |81| 
        BCC $C$L4,TC1 ; |81| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |81| 
$C$L3:    
	CALL #_coverage_log;
$C$DW$L$_sonar_test$6$B:
	.dwpsn	file "./sonar/sonar.c",line 82,column 9,is_stmt
        MOV AR2, T0
        MOV dbl(*SP(#18)), XAR3
        MOV *AR3(T0), AC0 ; |82| 
        ADD dbl(*SP(#4)), AC0, AC0 ; |82| 
        MOV AC0, dbl(*SP(#4)) ; |82| 
	.dwpsn	file "./sonar/sonar.c",line 81,column 26,is_stmt
        ADD #1, *SP(#8) ; |81| 
	.dwpsn	file "./sonar/sonar.c",line 81,column 17,is_stmt
        MOV *SP(#2), AR1 ; |81| 
        MOV *SP(#8), AR2 ; |81| 
        CMP AR2 < AR1, TC1 ; |81| 
        BCC $C$L3,TC1 ; |81| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |81| 
$C$DW$L$_sonar_test$6$E:
$C$L4:    
	CALL #_coverage_log;
	.dwpsn	file "./sonar/sonar.c",line 84,column 5,is_stmt
        MOV *SP(#2), AC1 ; |84| 
        MOV dbl(*SP(#4)), AC0 ; |84| 
$C$DW$74	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$74, DW_AT_low_pc(0x00)
	.dwattr $C$DW$74, DW_AT_name("__divli")
	.dwattr $C$DW$74, DW_AT_TI_call
        CALL #__divli ; |84| 
                                        ; call occurs [#__divli] ; |84| 
        MOV AC0, dbl(*SP(#6)) ; |84| 
	.dwpsn	file "./sonar/sonar.c",line 85,column 5,is_stmt
        MOV #27853, AC0 ; |85| 
        MOV dbl(*SP(#6)), AC1 ; |85| 
        CMP AC1 >= AC0, TC1 ; |85| 
        BCC $C$L5,TC1 ; |85| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |85| 
	.dwpsn	file "./sonar/sonar.c",line 87,column 9,is_stmt
        MOV dbl(*SP(#16)), XAR0
$C$DW$75	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$75, DW_AT_low_pc(0x00)
	.dwattr $C$DW$75, DW_AT_name("_free")
	.dwattr $C$DW$75, DW_AT_TI_call
        CALL #_free ; |87| 
                                        ; call occurs [#_free] ; |87| 
	.dwpsn	file "./sonar/sonar.c",line 88,column 9,is_stmt
        MOV dbl(*SP(#18)), XAR0
$C$DW$76	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$76, DW_AT_low_pc(0x00)
	.dwattr $C$DW$76, DW_AT_name("_free")
	.dwattr $C$DW$76, DW_AT_TI_call
        CALL #_free ; |88| 
                                        ; call occurs [#_free] ; |88| 
	.dwpsn	file "./sonar/sonar.c",line 89,column 9,is_stmt
        MOV dbl(*SP(#20)), XAR0
$C$DW$77	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$77, DW_AT_low_pc(0x00)
	.dwattr $C$DW$77, DW_AT_name("_free")
	.dwattr $C$DW$77, DW_AT_TI_call
        CALL #_free ; |89| 
                                        ; call occurs [#_free] ; |89| 
	.dwpsn	file "./sonar/sonar.c",line 90,column 9,is_stmt
        MOV #1, T0
        B $C$L12  ; |90| 
                                        ; branch occurs ; |90| 
$C$L5:    
	CALL #_coverage_log;
	.dwpsn	file "./sonar/sonar.c",line 95,column 5,is_stmt
        MOV *SP(#2), AR1 ; |95| 
        MOV AR1, AC0 ; |95| 
        MOV AC0, AR2 ; |95| 
        SFTS AR2, #-1 ; |95| 
        MOV AR2, AC0 ; |95| 

        BFXTR #0xc000, AC0, AR3 ; |95| 
||      MOV #3, AR2

        NOT AR2, AR2 ; |95| 
        ADD AR1, AR3 ; |95| 
        AND AR3, AR2 ; |95| 
        SUB AR2, AR1 ; |95| 
        BCC $C$L6,AR1 != #0 ; |95| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |95| 
	.dwpsn	file "./sonar/sonar.c",line 96,column 9,is_stmt
        MOV #4, *SP(#11) ; |96| 
	.dwpsn	file "./sonar/sonar.c",line 97,column 9,is_stmt
        MOV *SP(#2), AC0 ; |97| 
        SFTL AC0, #-30, AC1 ; |97| 
        ADD AC0, AC1 ; |97| 
        SFTS AC1, #-2, AC0 ; |97| 
        MOV AC0, *SP(#10) ; |97| 
	.dwpsn	file "./sonar/sonar.c",line 98,column 5,is_stmt
        B $C$L8   ; |98| 
                                        ; branch occurs ; |98| 
$C$L6:    
	CALL #_coverage_log;
	.dwpsn	file "./sonar/sonar.c",line 99,column 10,is_stmt
        MOV *SP(#2), AC0 ; |99| 

        BFXTR #0x8000, AC0, AR1 ; |99| 
||      MOV #1, AR2

        NOT AR2, AR2 ; |99| 
        ADD AC0, AR1 ; |99| 
        AND AR1, AR2 ; |99| 
        MOV AC0, AR1 ; |99| 
        SUB AR2, AR1 ; |99| 
        BCC $C$L7,AR1 != #0 ; |99| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |99| 
	.dwpsn	file "./sonar/sonar.c",line 100,column 9,is_stmt
        MOV #2, *SP(#11) ; |100| 
	.dwpsn	file "./sonar/sonar.c",line 101,column 9,is_stmt
        MOV *SP(#2), AC0 ; |101| 
        BFXTR #0x8000, AC0, AR1 ; |101| 
        ADD AC0, AR1 ; |101| 
        SFTS AR1, #-1 ; |101| 
        MOV AR1, *SP(#10) ; |101| 
	.dwpsn	file "./sonar/sonar.c",line 102,column 5,is_stmt
        B $C$L8   ; |102| 
                                        ; branch occurs ; |102| 
$C$L7:    
	CALL #_coverage_log;
	.dwpsn	file "./sonar/sonar.c",line 103,column 10,is_stmt
        MOV #3, T1
$C$DW$78	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$78, DW_AT_low_pc(0x00)
	.dwattr $C$DW$78, DW_AT_name("__remi")
	.dwattr $C$DW$78, DW_AT_TI_call

        CALL #__remi ; |103| 
||      MOV AC0, T0

                                        ; call occurs [#__remi] ; |103| 
        BCC $C$L8,T0 != #0 ; |103| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |103| 
	.dwpsn	file "./sonar/sonar.c",line 104,column 9,is_stmt
        MOV #3, *SP(#11) ; |104| 
	.dwpsn	file "./sonar/sonar.c",line 105,column 9,is_stmt
        MOV *SP(#2), T0 ; |105| 
$C$DW$79	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$79, DW_AT_low_pc(0x00)
	.dwattr $C$DW$79, DW_AT_name("__divi")
	.dwattr $C$DW$79, DW_AT_TI_call

        CALL #__divi ; |105| 
||      MOV #3, T1

                                        ; call occurs [#__divi] ; |105| 
        MOV T0, *SP(#10) ; |105| 
$C$L8:    
	CALL #_coverage_log;
	.dwpsn	file "./sonar/sonar.c",line 108,column 5,is_stmt
        MOV *SP(#10), T0 ; |108| 
        MOV *SP(#11), T1 ; |108| 
        MOV dbl(*SP(#18)), XAR0
$C$DW$80	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$80, DW_AT_low_pc(0x00)
	.dwattr $C$DW$80, DW_AT_name("_maxidx")
	.dwattr $C$DW$80, DW_AT_TI_call
        CALL #_maxidx ; |108| 
                                        ; call occurs [#_maxidx] ; |108| 
        MOV T0, *SP(#12) ; |108| 
	.dwpsn	file "./sonar/sonar.c",line 110,column 5,is_stmt
        MOV T0, AR1
        BCC $C$L9,AR1 < #0 ; |110| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |110| 

        MOV T0, AR2 ; |110| 
||      MOV *SP(#2), AR1 ; |110| 

        CMP AR2 <= AR1, TC1 ; |110| 
        BCC $C$L10,TC1 ; |110| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |110| 
$C$L9:    
	CALL #_coverage_log;
	.dwpsn	file "./sonar/sonar.c",line 112,column 9,is_stmt
        MOV #1, T0
        B $C$L12  ; |112| 
                                        ; branch occurs ; |112| 
$C$L10:    
	CALL #_coverage_log;
	.dwpsn	file "./sonar/sonar.c",line 114,column 5,is_stmt
        MOV dbl(*SP(#16)), XAR0
        MOV dbl(*SP(#0)), XAR1
        MOV *SP(#2), T0 ; |114| 
$C$DW$81	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$81, DW_AT_low_pc(0x00)
	.dwattr $C$DW$81, DW_AT_name("_memcpy")
	.dwattr $C$DW$81, DW_AT_TI_call
        CALL #_memcpy ; |114| 
                                        ; call occurs [#_memcpy] ; |114| 
	.dwpsn	file "./sonar/sonar.c",line 115,column 5,is_stmt
        MOV dbl(*SP(#16)), XAR0
        MOV *SP(#2), T0 ; |115| 
$C$DW$82	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$82, DW_AT_low_pc(0x00)
	.dwattr $C$DW$82, DW_AT_name("_calculate_velocity")
	.dwattr $C$DW$82, DW_AT_TI_call
        CALL #_calculate_velocity ; |115| 
                                        ; call occurs [#_calculate_velocity] ; |115| 
        MOV T0, *SP(#13) ; |115| 
	.dwpsn	file "./sonar/sonar.c",line 116,column 5,is_stmt
        CMP *SP(#13) == #-1, TC1 ; |116| 
        BCC $C$L11,!TC1 ; |116| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |116| 
	.dwpsn	file "./sonar/sonar.c",line 117,column 9,is_stmt
        MOV dbl(*SP(#16)), XAR0
$C$DW$83	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$83, DW_AT_low_pc(0x00)
	.dwattr $C$DW$83, DW_AT_name("_free")
	.dwattr $C$DW$83, DW_AT_TI_call
        CALL #_free ; |117| 
                                        ; call occurs [#_free] ; |117| 
	.dwpsn	file "./sonar/sonar.c",line 118,column 9,is_stmt
        MOV dbl(*SP(#18)), XAR0
$C$DW$84	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$84, DW_AT_low_pc(0x00)
	.dwattr $C$DW$84, DW_AT_name("_free")
	.dwattr $C$DW$84, DW_AT_TI_call
        CALL #_free ; |118| 
                                        ; call occurs [#_free] ; |118| 
	.dwpsn	file "./sonar/sonar.c",line 119,column 9,is_stmt
        MOV dbl(*SP(#20)), XAR0
$C$DW$85	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$85, DW_AT_low_pc(0x00)
	.dwattr $C$DW$85, DW_AT_name("_free")
	.dwattr $C$DW$85, DW_AT_TI_call
        CALL #_free ; |119| 
                                        ; call occurs [#_free] ; |119| 
	.dwpsn	file "./sonar/sonar.c",line 120,column 9,is_stmt
        MOV #1, T0
        B $C$L12  ; |120| 
                                        ; branch occurs ; |120| 
$C$L11:    
	CALL #_coverage_log;
	.dwpsn	file "./sonar/sonar.c",line 124,column 5,is_stmt
        MOV dbl(*SP(#16)), XAR0
$C$DW$86	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$86, DW_AT_low_pc(0x00)
	.dwattr $C$DW$86, DW_AT_name("_free")
	.dwattr $C$DW$86, DW_AT_TI_call
        CALL #_free ; |124| 
                                        ; call occurs [#_free] ; |124| 
	.dwpsn	file "./sonar/sonar.c",line 125,column 5,is_stmt
        MOV dbl(*SP(#18)), XAR0
$C$DW$87	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$87, DW_AT_low_pc(0x00)
	.dwattr $C$DW$87, DW_AT_name("_free")
	.dwattr $C$DW$87, DW_AT_TI_call
        CALL #_free ; |125| 
                                        ; call occurs [#_free] ; |125| 
	.dwpsn	file "./sonar/sonar.c",line 126,column 5,is_stmt
        MOV dbl(*SP(#20)), XAR0
$C$DW$88	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$88, DW_AT_low_pc(0x00)
	.dwattr $C$DW$88, DW_AT_name("_free")
	.dwattr $C$DW$88, DW_AT_TI_call
        CALL #_free ; |126| 
                                        ; call occurs [#_free] ; |126| 
	.dwpsn	file "./sonar/sonar.c",line 128,column 5,is_stmt
        MOV #0, T0
$C$L12:    
	CALL #_coverage_log;
	.dwpsn	file "./sonar/sonar.c",line 129,column 1,is_stmt
        AADD #23, SP
	.dwcfi	cfa_offset, 1
$C$DW$89	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$89, DW_AT_low_pc(0x00)
	.dwattr $C$DW$89, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$90	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$90, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/sonar.asm:$C$L3:1:1727099453")
	.dwattr $C$DW$90, DW_AT_TI_begin_file("./sonar/sonar.c")
	.dwattr $C$DW$90, DW_AT_TI_begin_line(0x51)
	.dwattr $C$DW$90, DW_AT_TI_end_line(0x53)
$C$DW$91	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$91, DW_AT_low_pc($C$DW$L$_sonar_test$6$B)
	.dwattr $C$DW$91, DW_AT_high_pc($C$DW$L$_sonar_test$6$E)
	.dwendtag $C$DW$90

	.dwattr $C$DW$44, DW_AT_TI_end_file("./sonar/sonar.c")
	.dwattr $C$DW$44, DW_AT_TI_end_line(0x81)
	.dwattr $C$DW$44, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$44

	.sect	".text"
	.global	_calculate_velocity

$C$DW$92	.dwtag  DW_TAG_subprogram, DW_AT_name("calculate_velocity")
	.dwattr $C$DW$92, DW_AT_low_pc(_calculate_velocity)
	.dwattr $C$DW$92, DW_AT_high_pc(0x00)
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_calculate_velocity")
	.dwattr $C$DW$92, DW_AT_external
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$92, DW_AT_TI_begin_file("./sonar/sonar.c")
	.dwattr $C$DW$92, DW_AT_TI_begin_line(0x84)
	.dwattr $C$DW$92, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$92, DW_AT_TI_max_frame_size(0x12)
	.dwpsn	file "./sonar/sonar.c",line 132,column 55,is_stmt,address _calculate_velocity

	.dwfde $C$DW$CIE, _calculate_velocity
$C$DW$93	.dwtag  DW_TAG_formal_parameter, DW_AT_name("input")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$93, DW_AT_location[DW_OP_reg17]
$C$DW$94	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$94, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: calculate_velocity                                           *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,*
;*                        XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 18 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (16 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_calculate_velocity:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-17, SP
	.dwcfi	cfa_offset, 18
$C$DW$95	.dwtag  DW_TAG_variable, DW_AT_name("input")
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$95, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$96	.dwtag  DW_TAG_variable, DW_AT_name("size")
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$96, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$97	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$97, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$98	.dwtag  DW_TAG_variable, DW_AT_name("out_buf")
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("_out_buf")
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$98, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$99	.dwtag  DW_TAG_variable, DW_AT_name("data_buf")
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_data_buf")
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$99, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$100	.dwtag  DW_TAG_variable, DW_AT_name("source_movement")
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("_source_movement")
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$100, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$101	.dwtag  DW_TAG_variable, DW_AT_name("velocity")
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_velocity")
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$101, DW_AT_location[DW_OP_bregx 0x24 9]
$C$DW$102	.dwtag  DW_TAG_variable, DW_AT_name("retVal")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("_retVal")
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$102, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$103	.dwtag  DW_TAG_variable, DW_AT_name("sum")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("_sum")
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$103, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$104	.dwtag  DW_TAG_variable, DW_AT_name("average_f")
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_average_f")
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$104, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$105	.dwtag  DW_TAG_variable, DW_AT_name("doppler_f")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_doppler_f")
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$105, DW_AT_location[DW_OP_bregx 0x24 15]
        MOV T0, *SP(#2) ; |132| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./sonar/sonar.c",line 135,column 12,is_stmt
        MOV *SP(#2), T0 ; |135| 
$C$DW$106	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$106, DW_AT_low_pc(0x00)
	.dwattr $C$DW$106, DW_AT_name("_calloc")
	.dwattr $C$DW$106, DW_AT_TI_call

        CALL #_calloc ; |135| 
||      MOV #1, T1

                                        ; call occurs [#_calloc] ; |135| 
        MOV XAR0, dbl(*SP(#4))
	.dwpsn	file "./sonar/sonar.c",line 136,column 12,is_stmt
        MOV *SP(#2), AR1 ; |136| 
        ADD #2, AR1, T0 ; |136| 
$C$DW$107	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$107, DW_AT_low_pc(0x00)
	.dwattr $C$DW$107, DW_AT_name("_calloc")
	.dwattr $C$DW$107, DW_AT_TI_call

        CALL #_calloc ; |136| 
||      MOV #1, T1

                                        ; call occurs [#_calloc] ; |136| 
        MOV XAR0, dbl(*SP(#6))
	.dwpsn	file "./sonar/sonar.c",line 137,column 13,is_stmt
$C$DW$108	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$108, DW_AT_low_pc(0x00)
	.dwattr $C$DW$108, DW_AT_name("_rand")
	.dwattr $C$DW$108, DW_AT_TI_call
        CALL #_rand ; |137| 
                                        ; call occurs [#_rand] ; |137| 
        MOV T0, AC0 ; |137| 

        BFXTR #0x8000, AC0, AR1 ; |137| 
||      MOV #1, AR2

        NOT AR2, AR2 ; |137| 
        ADD AC0, AR1 ; |137| 
        AND AR1, AR2 ; |137| 
        SUB AR2, AC0 ; |137| 
        MOV AC0, *SP(#8) ; |137| 
	.dwpsn	file "./sonar/sonar.c",line 138,column 13,is_stmt
        MOV #0, *SP(#9) ; |138| 
	.dwpsn	file "./sonar/sonar.c",line 139,column 11,is_stmt
        MOV #0, *SP(#10) ; |139| 
	.dwpsn	file "./sonar/sonar.c",line 140,column 13,is_stmt
        MOV #0, AC0 ; |140| 
        MOV AC0, dbl(*SP(#12)) ; |140| 
	.dwpsn	file "./sonar/sonar.c",line 141,column 13,is_stmt
        MOV #0, *SP(#14) ; |141| 
	.dwpsn	file "./sonar/sonar.c",line 142,column 13,is_stmt
        MOV #0, *SP(#15) ; |142| 
	.dwpsn	file "./sonar/sonar.c",line 145,column 5,is_stmt
        MOV #20, T1 ; |145| 
        AMOV #_FIR_BANDPASS_TAPS, XAR1 ; |145| 
        MOV *SP(#2), T0 ; |145| 
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#4)), XAR2
        MOV dbl(*SP(#6)), XAR3
$C$DW$109	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$109, DW_AT_low_pc(0x00)
	.dwattr $C$DW$109, DW_AT_name("_fir")
	.dwattr $C$DW$109, DW_AT_TI_call
        CALL #_fir ; |145| 
                                        ; call occurs [#_fir] ; |145| 
        MOV T0, *SP(#10) ; |145| 
	.dwpsn	file "./sonar/sonar.c",line 146,column 5,is_stmt
        MOV T0, AR1
        BCC $C$L13,AR1 == #0 ; |146| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |146| 
	.dwpsn	file "./sonar/sonar.c",line 148,column 9,is_stmt
        MOV dbl(*SP(#4)), XAR0
$C$DW$110	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$110, DW_AT_low_pc(0x00)
	.dwattr $C$DW$110, DW_AT_name("_free")
	.dwattr $C$DW$110, DW_AT_TI_call
        CALL #_free ; |148| 
                                        ; call occurs [#_free] ; |148| 
	.dwpsn	file "./sonar/sonar.c",line 149,column 9,is_stmt
        MOV dbl(*SP(#6)), XAR0
$C$DW$111	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$111, DW_AT_low_pc(0x00)
	.dwattr $C$DW$111, DW_AT_name("_free")
	.dwattr $C$DW$111, DW_AT_TI_call
        CALL #_free ; |149| 
                                        ; call occurs [#_free] ; |149| 
	.dwpsn	file "./sonar/sonar.c",line 150,column 9,is_stmt
        MOV #-1, T0
        B $C$L18  ; |150| 
                                        ; branch occurs ; |150| 
$C$L13:    
	CALL #_coverage_log;
	.dwpsn	file "./sonar/sonar.c",line 153,column 5,is_stmt
        MOV *SP(#2), AC0 ; |153| 
        MOV dbl(*SP(#4)), XAR0
        BFXTR #0x8000, AC0, T0 ; |153| 
        ADD AC0, T0 ; |153| 
$C$DW$112	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$112, DW_AT_low_pc(0x00)
	.dwattr $C$DW$112, DW_AT_name("_cfft_NOSCALE")
	.dwattr $C$DW$112, DW_AT_TI_call

        CALL #_cfft_NOSCALE ; |153| 
||      SFTS T0, #-1 ; |153| 

                                        ; call occurs [#_cfft_NOSCALE] ; |153| 
        MOV *SP(#2), AC0 ; |153| 
        MOV dbl(*SP(#4)), XAR1
        MOV dbl(*SP(#4)), XAR0
        BFXTR #0x8000, AC0, T0 ; |153| 
        ADD AC0, T0 ; |153| 
$C$DW$113	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$113, DW_AT_low_pc(0x00)
	.dwattr $C$DW$113, DW_AT_name("_cbrev")
	.dwattr $C$DW$113, DW_AT_TI_call

        CALL #_cbrev ; |153| 
||      SFTS T0, #-1 ; |153| 

                                        ; call occurs [#_cbrev] ; |153| 
        MOV *SP(#2), T0 ; |153| 
        MOV dbl(*SP(#4)), XAR0
$C$DW$114	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$114, DW_AT_low_pc(0x00)
	.dwattr $C$DW$114, DW_AT_name("_unpack")
	.dwattr $C$DW$114, DW_AT_TI_call
        CALL #_unpack ; |153| 
                                        ; call occurs [#_unpack] ; |153| 
	.dwpsn	file "./sonar/sonar.c",line 156,column 10,is_stmt
        MOV #0, *SP(#3) ; |156| 
	.dwpsn	file "./sonar/sonar.c",line 156,column 17,is_stmt
        MOV *SP(#2), AR1 ; |156| 
        MOV *SP(#3), AR2 ; |156| 
        CMP AR2 >= AR1, TC1 ; |156| 
        BCC $C$L15,TC1 ; |156| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |156| 
$C$L14:    
	CALL #_coverage_log;
$C$DW$L$_calculate_velocity$4$B:
	.dwpsn	file "./sonar/sonar.c",line 157,column 9,is_stmt
        MOV AR2, T0
        MOV dbl(*SP(#4)), XAR3
        MOV *AR3(T0), AC0 ; |157| 
        ADD dbl(*SP(#12)), AC0, AC0 ; |157| 
        MOV AC0, dbl(*SP(#12)) ; |157| 
	.dwpsn	file "./sonar/sonar.c",line 156,column 26,is_stmt
        ADD #1, *SP(#3) ; |156| 
	.dwpsn	file "./sonar/sonar.c",line 156,column 17,is_stmt
        MOV *SP(#2), AR1 ; |156| 
        MOV *SP(#3), AR2 ; |156| 
        CMP AR2 < AR1, TC1 ; |156| 
        BCC $C$L14,TC1 ; |156| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |156| 
$C$DW$L$_calculate_velocity$4$E:
$C$L15:    
	CALL #_coverage_log;
	.dwpsn	file "./sonar/sonar.c",line 159,column 5,is_stmt
        MOV *SP(#2), AC1 ; |159| 
        MOV dbl(*SP(#12)), AC0 ; |159| 
$C$DW$115	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$115, DW_AT_low_pc(0x00)
	.dwattr $C$DW$115, DW_AT_name("__divli")
	.dwattr $C$DW$115, DW_AT_TI_call
        CALL #__divli ; |159| 
                                        ; call occurs [#__divli] ; |159| 
        MOV AC0, *SP(#14) ; |159| 
	.dwpsn	file "./sonar/sonar.c",line 162,column 5,is_stmt
        MOV #0, AC0 ; |162| 
        OR #0xc350, AC0, AC0 ; |162| 
        MOV *SP(#14), AC1 ; |162| 
        CMP AC1 <= AC0, TC1 ; |162| 
        BCC $C$L16,TC1 ; |162| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |162| 
	.dwpsn	file "./sonar/sonar.c",line 164,column 9,is_stmt
        MOV #0, AC0 ; |164| 
        OR #0xc350, AC0, AC0 ; |164| 
        ADD *SP(#14), AC0, AC0 ; |164| 
        MOV AC0, *SP(#15) ; |164| 
	.dwpsn	file "./sonar/sonar.c",line 165,column 9,is_stmt
        AMOV #100000, XAR3 ; |165| 
        MOV *SP(#15) << #16, AC0
        MPYK #343, AC0, AC0 ; |165| 
        MOV XAR3, AC1
        MOV mmap(AC0L), AC0 ; |165| 
$C$DW$116	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$116, DW_AT_low_pc(0x00)
	.dwattr $C$DW$116, DW_AT_name("__divli")
	.dwattr $C$DW$116, DW_AT_TI_call
        CALL #__divli ; |165| 
                                        ; call occurs [#__divli] ; |165| 
        MOV AC0, *SP(#9) ; |165| 
	.dwpsn	file "./sonar/sonar.c",line 166,column 5,is_stmt
        B $C$L17  ; |166| 
                                        ; branch occurs ; |166| 
$C$L16:    
	CALL #_coverage_log;
	.dwpsn	file "./sonar/sonar.c",line 167,column 10,is_stmt

        MOV *SP(#14), AC1 ; |167| 
||      MOV #0, AC0 ; |167| 

        OR #0xc350, AC0, AC0 ; |167| 
        CMP AC1 > AC0, TC1 ; |167| 
        BCC $C$L17,TC1 ; |167| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |167| 
	.dwpsn	file "./sonar/sonar.c",line 169,column 9,is_stmt
        MOV #0, AC0 ; |169| 
        OR #0xc350, AC0, AC0 ; |169| 
        SUB AC0, *SP(#14), AC0 ; |169| 
        MOV AC0, *SP(#15) ; |169| 
	.dwpsn	file "./sonar/sonar.c",line 170,column 9,is_stmt
        AMOV #100000, XAR3 ; |170| 
        MOV *SP(#15) << #16, AC0
        MPYK #343, AC0, AC0 ; |170| 
        MOV XAR3, AC1
        MOV mmap(AC0L), AC0 ; |170| 
$C$DW$117	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$117, DW_AT_low_pc(0x00)
	.dwattr $C$DW$117, DW_AT_name("__divli")
	.dwattr $C$DW$117, DW_AT_TI_call
        CALL #__divli ; |170| 
                                        ; call occurs [#__divli] ; |170| 
        MOV AC0, *SP(#9) ; |170| 
$C$L17:    
	CALL #_coverage_log;
	.dwpsn	file "./sonar/sonar.c",line 173,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR0
$C$DW$118	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$118, DW_AT_low_pc(0x00)
	.dwattr $C$DW$118, DW_AT_name("_free")
	.dwattr $C$DW$118, DW_AT_TI_call
        CALL #_free ; |173| 
                                        ; call occurs [#_free] ; |173| 
	.dwpsn	file "./sonar/sonar.c",line 174,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR0
$C$DW$119	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$119, DW_AT_low_pc(0x00)
	.dwattr $C$DW$119, DW_AT_name("_free")
	.dwattr $C$DW$119, DW_AT_TI_call
        CALL #_free ; |174| 
                                        ; call occurs [#_free] ; |174| 
	.dwpsn	file "./sonar/sonar.c",line 175,column 5,is_stmt
        MOV *SP(#9), T0 ; |175| 
$C$L18:    
	CALL #_coverage_log;
	.dwpsn	file "./sonar/sonar.c",line 176,column 1,is_stmt
        AADD #17, SP
	.dwcfi	cfa_offset, 1
$C$DW$120	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$120, DW_AT_low_pc(0x00)
	.dwattr $C$DW$120, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$121	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$121, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/sonar.asm:$C$L14:1:1727099453")
	.dwattr $C$DW$121, DW_AT_TI_begin_file("./sonar/sonar.c")
	.dwattr $C$DW$121, DW_AT_TI_begin_line(0x9c)
	.dwattr $C$DW$121, DW_AT_TI_end_line(0x9e)
$C$DW$122	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$122, DW_AT_low_pc($C$DW$L$_calculate_velocity$4$B)
	.dwattr $C$DW$122, DW_AT_high_pc($C$DW$L$_calculate_velocity$4$E)
	.dwendtag $C$DW$121

	.dwattr $C$DW$92, DW_AT_TI_end_file("./sonar/sonar.c")
	.dwattr $C$DW$92, DW_AT_TI_end_line(0xb0)
	.dwattr $C$DW$92, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$92

;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_rand
	.global	_calloc
	.global	_free
	.global	_memset
	.global	_cfft_NOSCALE
	.global	_unpack
	.global	_cbrev
	.global	_convol
	.global	_fir
	.global	_maxidx
	.global	_memcpy
	.global	__divli
	.global	__remi
	.global	__divi

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x17)
$C$DW$123	.dwtag  DW_TAG_TI_far_type
$C$DW$T$19	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$123)
$C$DW$T$20	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_address_class(0x17)
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
$C$DW$T$29	.dwtag  DW_TAG_typedef, DW_AT_name("DATA")
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$29, DW_AT_language(DW_LANG_C)
$C$DW$T$30	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$30, DW_AT_address_class(0x17)

$C$DW$T$36	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x14)
$C$DW$124	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$124, DW_AT_upper_bound(0x13)
	.dwendtag $C$DW$T$36


$C$DW$T$37	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x5b)
$C$DW$125	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$125, DW_AT_upper_bound(0x5a)
	.dwendtag $C$DW$T$37

$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)
$C$DW$T$31	.dwtag  DW_TAG_typedef, DW_AT_name("ushort")
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$31, DW_AT_language(DW_LANG_C)
$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x01)
$C$DW$T$46	.dwtag  DW_TAG_typedef, DW_AT_name("int16_t")
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$46, DW_AT_language(DW_LANG_C)
$C$DW$T$47	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$47, DW_AT_address_class(0x17)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)
$C$DW$T$51	.dwtag  DW_TAG_typedef, DW_AT_name("_Bool")
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$51, DW_AT_language(DW_LANG_C)
$C$DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("size_t")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)
$C$DW$T$52	.dwtag  DW_TAG_typedef, DW_AT_name("int32_t")
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$52, DW_AT_language(DW_LANG_C)
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

$C$DW$126	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$126, DW_AT_location[DW_OP_reg0]
$C$DW$127	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$127, DW_AT_location[DW_OP_reg1]
$C$DW$128	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$128, DW_AT_location[DW_OP_reg2]
$C$DW$129	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$129, DW_AT_location[DW_OP_reg3]
$C$DW$130	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$130, DW_AT_location[DW_OP_reg4]
$C$DW$131	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$131, DW_AT_location[DW_OP_reg5]
$C$DW$132	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$132, DW_AT_location[DW_OP_reg6]
$C$DW$133	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$133, DW_AT_location[DW_OP_reg7]
$C$DW$134	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$134, DW_AT_location[DW_OP_reg8]
$C$DW$135	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$135, DW_AT_location[DW_OP_reg9]
$C$DW$136	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$136, DW_AT_location[DW_OP_reg10]
$C$DW$137	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$137, DW_AT_location[DW_OP_reg11]
$C$DW$138	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$138, DW_AT_location[DW_OP_reg12]
$C$DW$139	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$139, DW_AT_location[DW_OP_reg13]
$C$DW$140	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$140, DW_AT_location[DW_OP_reg14]
$C$DW$141	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$141, DW_AT_location[DW_OP_reg15]
$C$DW$142	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$142, DW_AT_location[DW_OP_reg16]
$C$DW$143	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$143, DW_AT_location[DW_OP_reg17]
$C$DW$144	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$144, DW_AT_location[DW_OP_reg18]
$C$DW$145	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$145, DW_AT_location[DW_OP_reg19]
$C$DW$146	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$146, DW_AT_location[DW_OP_reg20]
$C$DW$147	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$147, DW_AT_location[DW_OP_reg21]
$C$DW$148	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$148, DW_AT_location[DW_OP_reg22]
$C$DW$149	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$149, DW_AT_location[DW_OP_reg23]
$C$DW$150	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$150, DW_AT_location[DW_OP_reg24]
$C$DW$151	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$151, DW_AT_location[DW_OP_reg25]
$C$DW$152	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$152, DW_AT_location[DW_OP_reg26]
$C$DW$153	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$153, DW_AT_location[DW_OP_reg27]
$C$DW$154	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$154, DW_AT_location[DW_OP_reg28]
$C$DW$155	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$155, DW_AT_location[DW_OP_reg29]
$C$DW$156	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$156, DW_AT_location[DW_OP_reg30]
$C$DW$157	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$157, DW_AT_location[DW_OP_reg31]
$C$DW$158	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$158, DW_AT_location[DW_OP_regx 0x20]
$C$DW$159	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$159, DW_AT_location[DW_OP_regx 0x21]
$C$DW$160	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$160, DW_AT_location[DW_OP_regx 0x22]
$C$DW$161	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$161, DW_AT_location[DW_OP_regx 0x23]
$C$DW$162	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$162, DW_AT_location[DW_OP_regx 0x24]
$C$DW$163	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$163, DW_AT_location[DW_OP_regx 0x25]
$C$DW$164	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$164, DW_AT_location[DW_OP_regx 0x26]
$C$DW$165	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$165, DW_AT_location[DW_OP_regx 0x27]
$C$DW$166	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$166, DW_AT_location[DW_OP_regx 0x28]
$C$DW$167	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$167, DW_AT_location[DW_OP_regx 0x29]
$C$DW$168	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$168, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$169	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$169, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$170	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$170, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$171	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$171, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$172	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$172, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$173	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$173, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$174	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$174, DW_AT_location[DW_OP_regx 0x30]
$C$DW$175	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$175, DW_AT_location[DW_OP_regx 0x31]
$C$DW$176	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$176, DW_AT_location[DW_OP_regx 0x32]
$C$DW$177	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$177, DW_AT_location[DW_OP_regx 0x33]
$C$DW$178	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$178, DW_AT_location[DW_OP_regx 0x34]
$C$DW$179	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$179, DW_AT_location[DW_OP_regx 0x35]
$C$DW$180	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$180, DW_AT_location[DW_OP_regx 0x36]
$C$DW$181	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$181, DW_AT_location[DW_OP_regx 0x37]
$C$DW$182	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$182, DW_AT_location[DW_OP_regx 0x38]
$C$DW$183	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$183, DW_AT_location[DW_OP_regx 0x39]
$C$DW$184	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$184, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$185	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$185, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$186	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$186, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$187	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$187, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$188	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$188, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$189	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$189, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$190	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$190, DW_AT_location[DW_OP_regx 0x40]
$C$DW$191	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$191, DW_AT_location[DW_OP_regx 0x41]
$C$DW$192	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$192, DW_AT_location[DW_OP_regx 0x42]
$C$DW$193	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$193, DW_AT_location[DW_OP_regx 0x43]
$C$DW$194	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$194, DW_AT_location[DW_OP_regx 0x44]
$C$DW$195	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$195, DW_AT_location[DW_OP_regx 0x45]
$C$DW$196	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$196, DW_AT_location[DW_OP_regx 0x46]
$C$DW$197	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$197, DW_AT_location[DW_OP_regx 0x47]
$C$DW$198	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$198, DW_AT_location[DW_OP_regx 0x48]
$C$DW$199	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$199, DW_AT_location[DW_OP_regx 0x49]
$C$DW$200	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$200, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$201	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$201, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$202	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$202, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$203	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$203, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$204	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$204, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$205	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$205, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$206	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$206, DW_AT_location[DW_OP_regx 0x50]
$C$DW$207	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$207, DW_AT_location[DW_OP_regx 0x51]
$C$DW$208	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$208, DW_AT_location[DW_OP_regx 0x52]
$C$DW$209	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$209, DW_AT_location[DW_OP_regx 0x53]
$C$DW$210	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$210, DW_AT_location[DW_OP_regx 0x54]
$C$DW$211	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$211, DW_AT_location[DW_OP_regx 0x55]
$C$DW$212	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$212, DW_AT_location[DW_OP_regx 0x56]
$C$DW$213	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$213, DW_AT_location[DW_OP_regx 0x57]
$C$DW$214	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$214, DW_AT_location[DW_OP_regx 0x58]
$C$DW$215	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$215, DW_AT_location[DW_OP_regx 0x59]
$C$DW$216	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$216, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$217	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$217, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

