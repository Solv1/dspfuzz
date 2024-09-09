;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                        Unix v4.4.1 *
;* Date/Time created: Fri Sep  6 11:52:05 2024                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("./sonar.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen Unix v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/santiago/Research/DSPFuzz/on_board/test_programs")

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


$C$DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("cfft_NOSCALE")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_cfft_NOSCALE")
	.dwattr $C$DW$11, DW_AT_declaration
	.dwattr $C$DW$11, DW_AT_external
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$28)
$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$29)
	.dwendtag $C$DW$11


$C$DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("unpack")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_unpack")
	.dwattr $C$DW$14, DW_AT_declaration
	.dwattr $C$DW$14, DW_AT_external
$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$28)
$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$29)
	.dwendtag $C$DW$14


$C$DW$17	.dwtag  DW_TAG_subprogram, DW_AT_name("cbrev")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_cbrev")
	.dwattr $C$DW$17, DW_AT_declaration
	.dwattr $C$DW$17, DW_AT_external
$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$28)
$C$DW$19	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$28)
$C$DW$20	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$29)
	.dwendtag $C$DW$17


$C$DW$21	.dwtag  DW_TAG_subprogram, DW_AT_name("convol")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_convol")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$21, DW_AT_declaration
	.dwattr $C$DW$21, DW_AT_external
$C$DW$22	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$28)
$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$28)
$C$DW$24	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$28)
$C$DW$25	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$29)
$C$DW$26	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$29)
	.dwendtag $C$DW$21


$C$DW$27	.dwtag  DW_TAG_subprogram, DW_AT_name("fir")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_fir")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$27, DW_AT_declaration
	.dwattr $C$DW$27, DW_AT_external
$C$DW$28	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$28)
$C$DW$29	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$28)
$C$DW$30	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$28)
$C$DW$31	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$28)
$C$DW$32	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$29)
$C$DW$33	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$29)
	.dwendtag $C$DW$27


$C$DW$34	.dwtag  DW_TAG_subprogram, DW_AT_name("maxidx")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_maxidx")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$34, DW_AT_declaration
	.dwattr $C$DW$34, DW_AT_external
$C$DW$35	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$28)
$C$DW$36	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$29)
$C$DW$37	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$29)
	.dwendtag $C$DW$34

	.global	_FIR_BANDPASS_TAPS
	.sect	".const:_FIR_BANDPASS_TAPS"
	.clink
	.align	1
_FIR_BANDPASS_TAPS:
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

$C$DW$38	.dwtag  DW_TAG_variable, DW_AT_name("FIR_BANDPASS_TAPS")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_FIR_BANDPASS_TAPS")
	.dwattr $C$DW$38, DW_AT_location[DW_OP_addr _FIR_BANDPASS_TAPS]
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$38, DW_AT_external
	.global	_PULSE_REFERENCE_FLIPPED
	.sect	".const:_PULSE_REFERENCE_FLIPPED"
	.clink
	.align	1
_PULSE_REFERENCE_FLIPPED:
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

$C$DW$39	.dwtag  DW_TAG_variable, DW_AT_name("PULSE_REFERENCE_FLIPPED")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_PULSE_REFERENCE_FLIPPED")
	.dwattr $C$DW$39, DW_AT_location[DW_OP_addr _PULSE_REFERENCE_FLIPPED]
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$39, DW_AT_external
;	/home/santiago/Research/Ti/C55_Tools/acp55 -@/tmp/48286XLumPb 
	.sect	".text"
	.global	_calculate_velocity

$C$DW$40	.dwtag  DW_TAG_subprogram, DW_AT_name("calculate_velocity")
	.dwattr $C$DW$40, DW_AT_low_pc(_calculate_velocity)
	.dwattr $C$DW$40, DW_AT_high_pc(0x00)
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_calculate_velocity")
	.dwattr $C$DW$40, DW_AT_external
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$40, DW_AT_TI_begin_file("./sonar.c")
	.dwattr $C$DW$40, DW_AT_TI_begin_line(0x23)
	.dwattr $C$DW$40, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$40, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "./sonar.c",line 35,column 58,is_stmt,address _calculate_velocity

	.dwfde $C$DW$CIE, _calculate_velocity
$C$DW$41	.dwtag  DW_TAG_formal_parameter, DW_AT_name("input")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_reg17]
$C$DW$42	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: calculate_velocity                                           *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,*
;*                        XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 16 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (14 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_calculate_velocity:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-15, SP
	.dwcfi	cfa_offset, 16
$C$DW$43	.dwtag  DW_TAG_variable, DW_AT_name("input")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$44	.dwtag  DW_TAG_variable, DW_AT_name("size")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$45	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$46	.dwtag  DW_TAG_variable, DW_AT_name("out_buf")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_out_buf")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$47	.dwtag  DW_TAG_variable, DW_AT_name("data_buf")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_data_buf")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$48	.dwtag  DW_TAG_variable, DW_AT_name("source_movement")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_source_movement")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$49	.dwtag  DW_TAG_variable, DW_AT_name("velocity")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_velocity")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_bregx 0x24 9]
$C$DW$50	.dwtag  DW_TAG_variable, DW_AT_name("sum")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_sum")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$51	.dwtag  DW_TAG_variable, DW_AT_name("average_f")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_average_f")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$52	.dwtag  DW_TAG_variable, DW_AT_name("doppler_f")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_doppler_f")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_bregx 0x24 13]
        MOV T0, *SP(#2) ; |35| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./sonar.c",line 38,column 15,is_stmt

        MOV *SP(#2), T0 ; |38| 
||      MOV #1, T1

$C$DW$53	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$53, DW_AT_low_pc(0x00)
	.dwattr $C$DW$53, DW_AT_name("_calloc")
	.dwattr $C$DW$53, DW_AT_TI_call
        CALL #_calloc ; |38| 
                                        ; call occurs [#_calloc] ; |38| 
        MOV XAR0, dbl(*SP(#4))
	.dwpsn	file "./sonar.c",line 39,column 15,is_stmt

        MOV *SP(#2), AR1 ; |39| 
||      MOV #1, T1

        ADD #2, AR1, T0 ; |39| 
$C$DW$54	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$54, DW_AT_low_pc(0x00)
	.dwattr $C$DW$54, DW_AT_name("_calloc")
	.dwattr $C$DW$54, DW_AT_TI_call
        CALL #_calloc ; |39| 
                                        ; call occurs [#_calloc] ; |39| 
        MOV XAR0, dbl(*SP(#6))
	.dwpsn	file "./sonar.c",line 40,column 13,is_stmt
$C$DW$55	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$55, DW_AT_low_pc(0x00)
	.dwattr $C$DW$55, DW_AT_name("_rand")
	.dwattr $C$DW$55, DW_AT_TI_call
        CALL #_rand ; |40| 
                                        ; call occurs [#_rand] ; |40| 

        MOV T0, AC0 ; |40| 
||      MOV #1, AR2

        BFXTR #0x8000, AC0, AR1 ; |40| 
        NOT AR2, AR2 ; |40| 
        ADD AC0, AR1 ; |40| 
        AND AR1, AR2 ; |40| 
        SUB AR2, AC0 ; |40| 
        MOV AC0, *SP(#8) ; |40| 
	.dwpsn	file "./sonar.c",line 41,column 13,is_stmt
        MOV #0, *SP(#9) ; |41| 
	.dwpsn	file "./sonar.c",line 42,column 13,is_stmt
        MOV #0, AC0 ; |42| 
        MOV AC0, dbl(*SP(#10)) ; |42| 
	.dwpsn	file "./sonar.c",line 43,column 13,is_stmt
        MOV #0, *SP(#12) ; |43| 
	.dwpsn	file "./sonar.c",line 44,column 13,is_stmt
        MOV #0, *SP(#13) ; |44| 
	.dwpsn	file "./sonar.c",line 47,column 5,is_stmt
        MOV #20, T1 ; |47| 
        MOV *SP(#2), T0 ; |47| 
        AMOV #_FIR_BANDPASS_TAPS, XAR1 ; |47| 
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#4)), XAR2
        MOV dbl(*SP(#6)), XAR3
$C$DW$56	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$56, DW_AT_low_pc(0x00)
	.dwattr $C$DW$56, DW_AT_name("_fir")
	.dwattr $C$DW$56, DW_AT_TI_call
        CALL #_fir ; |47| 
                                        ; call occurs [#_fir] ; |47| 
	.dwpsn	file "./sonar.c",line 49,column 5,is_stmt
        MOV *SP(#2), AC0 ; |49| 
        MOV dbl(*SP(#4)), XAR0
        BFXTR #0x8000, AC0, T0 ; |49| 
        ADD AC0, T0 ; |49| 
        SFTS T0, #-1 ; |49| 
$C$DW$57	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$57, DW_AT_low_pc(0x00)
	.dwattr $C$DW$57, DW_AT_name("_cfft_NOSCALE")
	.dwattr $C$DW$57, DW_AT_TI_call
        CALL #_cfft_NOSCALE ; |49| 
                                        ; call occurs [#_cfft_NOSCALE] ; |49| 
        MOV *SP(#2), AC0 ; |49| 
        MOV dbl(*SP(#4)), XAR0
        MOV dbl(*SP(#4)), XAR1
        BFXTR #0x8000, AC0, T0 ; |49| 
        ADD AC0, T0 ; |49| 
        SFTS T0, #-1 ; |49| 
$C$DW$58	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$58, DW_AT_low_pc(0x00)
	.dwattr $C$DW$58, DW_AT_name("_cbrev")
	.dwattr $C$DW$58, DW_AT_TI_call
        CALL #_cbrev ; |49| 
                                        ; call occurs [#_cbrev] ; |49| 
        MOV *SP(#2), T0 ; |49| 
        MOV dbl(*SP(#4)), XAR0
$C$DW$59	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$59, DW_AT_low_pc(0x00)
	.dwattr $C$DW$59, DW_AT_name("_unpack")
	.dwattr $C$DW$59, DW_AT_TI_call
        CALL #_unpack ; |49| 
                                        ; call occurs [#_unpack] ; |49| 
	.dwpsn	file "./sonar.c",line 51,column 10,is_stmt
        MOV #0, *SP(#3) ; |51| 
	.dwpsn	file "./sonar.c",line 51,column 17,is_stmt
        MOV *SP(#2), AR1 ; |51| 
        MOV *SP(#3), AR2 ; |51| 

        CMP AR2 >= AR1, TC1 ; |51| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L2,TC1 ; |51| 
                                        ; branchcc occurs ; |51| 
$C$L1:    
$C$DW$L$_calculate_velocity$2$B:
	.dwpsn	file "./sonar.c",line 52,column 9,is_stmt
        MOV AR2, T0
        MOV dbl(*SP(#4)), XAR3
        MOV *AR3(T0), AC0 ; |52| 
        ADD dbl(*SP(#10)), AC0, AC0 ; |52| 
        MOV AC0, dbl(*SP(#10)) ; |52| 
	.dwpsn	file "./sonar.c",line 51,column 26,is_stmt
        ADD #1, *SP(#3) ; |51| 
	.dwpsn	file "./sonar.c",line 51,column 17,is_stmt
        MOV *SP(#2), AR1 ; |51| 
        MOV *SP(#3), AR2 ; |51| 

        CMP AR2 < AR1, TC1 ; |51| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L1,TC1 ; |51| 
                                        ; branchcc occurs ; |51| 
$C$DW$L$_calculate_velocity$2$E:
$C$L2:    
	.dwpsn	file "./sonar.c",line 54,column 5,is_stmt
        MOV *SP(#2), AC1 ; |54| 
        MOV dbl(*SP(#10)), AC0 ; |54| 
$C$DW$60	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$60, DW_AT_low_pc(0x00)
	.dwattr $C$DW$60, DW_AT_name("__divli")
	.dwattr $C$DW$60, DW_AT_TI_call
        CALL #__divli ; |54| 
                                        ; call occurs [#__divli] ; |54| 
        MOV AC0, *SP(#12) ; |54| 
	.dwpsn	file "./sonar.c",line 57,column 5,is_stmt
        MOV #0, AC0 ; |57| 
        OR #0xc350, AC0, AC0 ; |57| 
        MOV *SP(#12), AC1 ; |57| 
        CMP AC1 <= AC0, TC1 ; |57| 
        BCC $C$L3,TC1 ; |57| 
                                        ; branchcc occurs ; |57| 
	.dwpsn	file "./sonar.c",line 59,column 9,is_stmt
        MOV #0, AC0 ; |59| 
        OR #0xc350, AC0, AC0 ; |59| 
        ADD *SP(#12), AC0, AC0 ; |59| 
        MOV AC0, *SP(#13) ; |59| 
	.dwpsn	file "./sonar.c",line 60,column 9,is_stmt
        AMOV #100000, XAR3 ; |60| 
        MOV *SP(#13) << #16, AC0
        MPYK #343, AC0, AC0 ; |60| 
        MOV XAR3, AC1
        MOV mmap(AC0L), AC0 ; |60| 
$C$DW$61	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$61, DW_AT_low_pc(0x00)
	.dwattr $C$DW$61, DW_AT_name("__divli")
	.dwattr $C$DW$61, DW_AT_TI_call
        CALL #__divli ; |60| 
                                        ; call occurs [#__divli] ; |60| 
        MOV AC0, *SP(#9) ; |60| 
	.dwpsn	file "./sonar.c",line 61,column 5,is_stmt
        B $C$L4   ; |61| 
                                        ; branch occurs ; |61| 
$C$L3:    
	.dwpsn	file "./sonar.c",line 62,column 10,is_stmt

        MOV *SP(#12), AC1 ; |62| 
||      MOV #0, AC0 ; |62| 

        OR #0xc350, AC0, AC0 ; |62| 
        CMP AC1 > AC0, TC1 ; |62| 
        BCC $C$L4,TC1 ; |62| 
                                        ; branchcc occurs ; |62| 
	.dwpsn	file "./sonar.c",line 64,column 9,is_stmt
        MOV #0, AC0 ; |64| 
        OR #0xc350, AC0, AC0 ; |64| 
        SUB AC0, *SP(#12), AC0 ; |64| 
        MOV AC0, *SP(#13) ; |64| 
	.dwpsn	file "./sonar.c",line 65,column 9,is_stmt
        AMOV #100000, XAR3 ; |65| 
        MOV *SP(#13) << #16, AC0
        MPYK #343, AC0, AC0 ; |65| 
        MOV XAR3, AC1
        MOV mmap(AC0L), AC0 ; |65| 
$C$DW$62	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$62, DW_AT_low_pc(0x00)
	.dwattr $C$DW$62, DW_AT_name("__divli")
	.dwattr $C$DW$62, DW_AT_TI_call
        CALL #__divli ; |65| 
                                        ; call occurs [#__divli] ; |65| 
        MOV AC0, *SP(#9) ; |65| 
$C$L4:    
	.dwpsn	file "./sonar.c",line 68,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR0
$C$DW$63	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$63, DW_AT_low_pc(0x00)
	.dwattr $C$DW$63, DW_AT_name("_free")
	.dwattr $C$DW$63, DW_AT_TI_call
        CALL #_free ; |68| 
                                        ; call occurs [#_free] ; |68| 
	.dwpsn	file "./sonar.c",line 69,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR0
$C$DW$64	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$64, DW_AT_low_pc(0x00)
	.dwattr $C$DW$64, DW_AT_name("_free")
	.dwattr $C$DW$64, DW_AT_TI_call
        CALL #_free ; |69| 
                                        ; call occurs [#_free] ; |69| 
	.dwpsn	file "./sonar.c",line 70,column 5,is_stmt
        MOV *SP(#9), T0 ; |70| 
	.dwpsn	file "./sonar.c",line 71,column 1,is_stmt
        AADD #15, SP
	.dwcfi	cfa_offset, 1
$C$DW$65	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$65, DW_AT_low_pc(0x00)
	.dwattr $C$DW$65, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$66	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$66, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/sonar.asm:$C$L1:1:1725637925")
	.dwattr $C$DW$66, DW_AT_TI_begin_file("./sonar.c")
	.dwattr $C$DW$66, DW_AT_TI_begin_line(0x33)
	.dwattr $C$DW$66, DW_AT_TI_end_line(0x35)
$C$DW$67	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$67, DW_AT_low_pc($C$DW$L$_calculate_velocity$2$B)
	.dwattr $C$DW$67, DW_AT_high_pc($C$DW$L$_calculate_velocity$2$E)
	.dwendtag $C$DW$66

	.dwattr $C$DW$40, DW_AT_TI_end_file("./sonar.c")
	.dwattr $C$DW$40, DW_AT_TI_end_line(0x47)
	.dwattr $C$DW$40, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$40

	.sect	".text"
	.global	_sonar_test

$C$DW$68	.dwtag  DW_TAG_subprogram, DW_AT_name("sonar_test")
	.dwattr $C$DW$68, DW_AT_low_pc(_sonar_test)
	.dwattr $C$DW$68, DW_AT_high_pc(0x00)
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_sonar_test")
	.dwattr $C$DW$68, DW_AT_external
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$68, DW_AT_TI_begin_file("./sonar.c")
	.dwattr $C$DW$68, DW_AT_TI_begin_line(0x4b)
	.dwattr $C$DW$68, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$68, DW_AT_TI_max_frame_size(0x16)
	.dwpsn	file "./sonar.c",line 75,column 50,is_stmt,address _sonar_test

	.dwfde $C$DW$CIE, _sonar_test
$C$DW$69	.dwtag  DW_TAG_formal_parameter, DW_AT_name("input")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$69, DW_AT_location[DW_OP_reg17]
$C$DW$70	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$70, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: sonar_test                                                   *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,*
;*                        XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 22 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (20 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_sonar_test:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-21, SP
	.dwcfi	cfa_offset, 22
$C$DW$71	.dwtag  DW_TAG_variable, DW_AT_name("input")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$71, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$72	.dwtag  DW_TAG_variable, DW_AT_name("size")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$72, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$73	.dwtag  DW_TAG_variable, DW_AT_name("sum")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_sum")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$74	.dwtag  DW_TAG_variable, DW_AT_name("average")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_average")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$75	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$75, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$76	.dwtag  DW_TAG_variable, DW_AT_name("groups")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_groups")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$76, DW_AT_location[DW_OP_bregx 0x24 9]
$C$DW$77	.dwtag  DW_TAG_variable, DW_AT_name("size_of_groups")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_size_of_groups")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$78	.dwtag  DW_TAG_variable, DW_AT_name("delay_index")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_delay_index")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_bregx 0x24 11]
$C$DW$79	.dwtag  DW_TAG_variable, DW_AT_name("object_speed")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_object_speed")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$79, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$80	.dwtag  DW_TAG_variable, DW_AT_name("in_buf")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_in_buf")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$80, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$81	.dwtag  DW_TAG_variable, DW_AT_name("out_buf")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_out_buf")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$81, DW_AT_location[DW_OP_bregx 0x24 16]
$C$DW$82	.dwtag  DW_TAG_variable, DW_AT_name("data_buf")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_data_buf")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_bregx 0x24 18]
        MOV T0, *SP(#2) ; |75| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./sonar.c",line 77,column 13,is_stmt
        MOV #0, AC0 ; |77| 
        MOV AC0, dbl(*SP(#4)) ; |77| 
	.dwpsn	file "./sonar.c",line 78,column 13,is_stmt
        MOV AC0, dbl(*SP(#6)) ; |78| 
	.dwpsn	file "./sonar.c",line 82,column 13,is_stmt
        MOV #0, *SP(#12) ; |82| 
	.dwpsn	file "./sonar.c",line 84,column 15,is_stmt

        MOV *SP(#2), T0 ; |84| 
||      MOV #1, T1

$C$DW$83	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$83, DW_AT_low_pc(0x00)
	.dwattr $C$DW$83, DW_AT_name("_calloc")
	.dwattr $C$DW$83, DW_AT_TI_call
        CALL #_calloc ; |84| 
                                        ; call occurs [#_calloc] ; |84| 
        MOV XAR0, dbl(*SP(#14))
	.dwpsn	file "./sonar.c",line 85,column 15,is_stmt

        MOV *SP(#2), T0 ; |85| 
||      MOV #1, T1

$C$DW$84	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$84, DW_AT_low_pc(0x00)
	.dwattr $C$DW$84, DW_AT_name("_calloc")
	.dwattr $C$DW$84, DW_AT_TI_call
        CALL #_calloc ; |85| 
                                        ; call occurs [#_calloc] ; |85| 
        MOV XAR0, dbl(*SP(#16))
	.dwpsn	file "./sonar.c",line 86,column 15,is_stmt

        MOV *SP(#2), AR1 ; |86| 
||      MOV #1, T1

        ADD #2, AR1, T0 ; |86| 
$C$DW$85	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$85, DW_AT_low_pc(0x00)
	.dwattr $C$DW$85, DW_AT_name("_calloc")
	.dwattr $C$DW$85, DW_AT_TI_call
        CALL #_calloc ; |86| 
                                        ; call occurs [#_calloc] ; |86| 
        MOV XAR0, dbl(*SP(#18))
	.dwpsn	file "./sonar.c",line 88,column 5,is_stmt
        MOV *SP(#2), T0 ; |88| 
        MOV dbl(*SP(#14)), XAR0
        MOV dbl(*SP(#0)), XAR1
$C$DW$86	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$86, DW_AT_low_pc(0x00)
	.dwattr $C$DW$86, DW_AT_name("_memcpy")
	.dwattr $C$DW$86, DW_AT_TI_call
        CALL #_memcpy ; |88| 
                                        ; call occurs [#_memcpy] ; |88| 
	.dwpsn	file "./sonar.c",line 92,column 5,is_stmt
        AMOV #_FIR_BANDPASS_TAPS, XAR1 ; |92| 
        MOV #20, T1 ; |92| 
        MOV *SP(#2), T0 ; |92| 
        MOV dbl(*SP(#14)), XAR0
        MOV dbl(*SP(#16)), XAR2
        MOV dbl(*SP(#18)), XAR3
$C$DW$87	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$87, DW_AT_low_pc(0x00)
	.dwattr $C$DW$87, DW_AT_name("_fir")
	.dwattr $C$DW$87, DW_AT_TI_call
        CALL #_fir ; |92| 
                                        ; call occurs [#_fir] ; |92| 
	.dwpsn	file "./sonar.c",line 95,column 5,is_stmt
        MOV *SP(#2), T0 ; |95| 
        AMOV #_PULSE_REFERENCE_FLIPPED, XAR1 ; |95| 
        MOV dbl(*SP(#16)), XAR0
        MOV dbl(*SP(#14)), XAR2
        MOV T0, T1 ; |95| 
$C$DW$88	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$88, DW_AT_low_pc(0x00)
	.dwattr $C$DW$88, DW_AT_name("_convol")
	.dwattr $C$DW$88, DW_AT_TI_call
        CALL #_convol ; |95| 
                                        ; call occurs [#_convol] ; |95| 
	.dwpsn	file "./sonar.c",line 98,column 10,is_stmt
        MOV #0, *SP(#8) ; |98| 
	.dwpsn	file "./sonar.c",line 98,column 17,is_stmt
        MOV *SP(#2), AR1 ; |98| 
        MOV *SP(#8), AR2 ; |98| 

        CMP AR2 >= AR1, TC1 ; |98| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L6,TC1 ; |98| 
                                        ; branchcc occurs ; |98| 
$C$L5:    
$C$DW$L$_sonar_test$2$B:
	.dwpsn	file "./sonar.c",line 99,column 9,is_stmt
        MOV AR2, T0
        MOV dbl(*SP(#14)), XAR3
        MOV *AR3(T0), AC0 ; |99| 
        ADD dbl(*SP(#4)), AC0, AC0 ; |99| 
        MOV AC0, dbl(*SP(#4)) ; |99| 
	.dwpsn	file "./sonar.c",line 98,column 26,is_stmt
        ADD #1, *SP(#8) ; |98| 
	.dwpsn	file "./sonar.c",line 98,column 17,is_stmt
        MOV *SP(#2), AR1 ; |98| 
        MOV *SP(#8), AR2 ; |98| 

        CMP AR2 < AR1, TC1 ; |98| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L5,TC1 ; |98| 
                                        ; branchcc occurs ; |98| 
$C$DW$L$_sonar_test$2$E:
$C$L6:    
	.dwpsn	file "./sonar.c",line 101,column 5,is_stmt
        MOV *SP(#2), AC1 ; |101| 
        MOV dbl(*SP(#4)), AC0 ; |101| 
$C$DW$89	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$89, DW_AT_low_pc(0x00)
	.dwattr $C$DW$89, DW_AT_name("__divli")
	.dwattr $C$DW$89, DW_AT_TI_call
        CALL #__divli ; |101| 
                                        ; call occurs [#__divli] ; |101| 
        MOV AC0, dbl(*SP(#6)) ; |101| 
	.dwpsn	file "./sonar.c",line 102,column 5,is_stmt
        MOV #27853, AC0 ; |102| 
        MOV dbl(*SP(#6)), AC1 ; |102| 
        CMP AC1 >= AC0, TC1 ; |102| 
        BCC $C$L7,TC1 ; |102| 
                                        ; branchcc occurs ; |102| 
	.dwpsn	file "./sonar.c",line 104,column 9,is_stmt
        MOV #1, T0
        B $C$L13  ; |104| 
                                        ; branch occurs ; |104| 
$C$L7:    
	.dwpsn	file "./sonar.c",line 109,column 5,is_stmt
        MOV *SP(#2), AR1 ; |109| 
        MOV AR1, AC0 ; |109| 
        MOV AC0, AR2 ; |109| 
        SFTS AR2, #-1 ; |109| 

        MOV #3, AR2
||      MOV AR2, AC0 ; |109| 

        BFXTR #0xc000, AC0, AR3 ; |109| 
        NOT AR2, AR2 ; |109| 
        ADD AR1, AR3 ; |109| 
        AND AR3, AR2 ; |109| 
        SUB AR2, AR1 ; |109| 
        BCC $C$L8,AR1 != #0 ; |109| 
                                        ; branchcc occurs ; |109| 
	.dwpsn	file "./sonar.c",line 110,column 9,is_stmt
        MOV #4, *SP(#10) ; |110| 
	.dwpsn	file "./sonar.c",line 111,column 9,is_stmt
        MOV *SP(#2), AC0 ; |111| 
        SFTL AC0, #-30, AC1 ; |111| 
        ADD AC0, AC1 ; |111| 
        SFTS AC1, #-2, AC0 ; |111| 
        MOV AC0, *SP(#9) ; |111| 
	.dwpsn	file "./sonar.c",line 112,column 5,is_stmt
        B $C$L10  ; |112| 
                                        ; branch occurs ; |112| 
$C$L8:    
	.dwpsn	file "./sonar.c",line 113,column 10,is_stmt

        MOV #1, AR2
||      MOV *SP(#2), AC0 ; |113| 

        BFXTR #0x8000, AC0, AR1 ; |113| 
        NOT AR2, AR2 ; |113| 
        ADD AC0, AR1 ; |113| 
        AND AR1, AR2 ; |113| 
        MOV AC0, AR1 ; |113| 
        SUB AR2, AR1 ; |113| 
        BCC $C$L9,AR1 != #0 ; |113| 
                                        ; branchcc occurs ; |113| 
	.dwpsn	file "./sonar.c",line 114,column 9,is_stmt
        MOV #2, *SP(#10) ; |114| 
	.dwpsn	file "./sonar.c",line 115,column 9,is_stmt
        MOV *SP(#2), AC0 ; |115| 
        BFXTR #0x8000, AC0, AR1 ; |115| 
        ADD AC0, AR1 ; |115| 
        SFTS AR1, #-1 ; |115| 
        MOV AR1, *SP(#9) ; |115| 
	.dwpsn	file "./sonar.c",line 116,column 5,is_stmt
        B $C$L10  ; |116| 
                                        ; branch occurs ; |116| 
$C$L9:    
	.dwpsn	file "./sonar.c",line 117,column 10,is_stmt

        MOV #3, T1
||      MOV AC0, T0

$C$DW$90	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$90, DW_AT_low_pc(0x00)
	.dwattr $C$DW$90, DW_AT_name("__remi")
	.dwattr $C$DW$90, DW_AT_TI_call
        CALL #__remi ; |117| 
                                        ; call occurs [#__remi] ; |117| 
        BCC $C$L10,T0 != #0 ; |117| 
                                        ; branchcc occurs ; |117| 
	.dwpsn	file "./sonar.c",line 118,column 9,is_stmt
        MOV #3, *SP(#10) ; |118| 
	.dwpsn	file "./sonar.c",line 119,column 9,is_stmt

        MOV *SP(#2), T0 ; |119| 
||      MOV #3, T1

$C$DW$91	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$91, DW_AT_low_pc(0x00)
	.dwattr $C$DW$91, DW_AT_name("__divi")
	.dwattr $C$DW$91, DW_AT_TI_call
        CALL #__divi ; |119| 
                                        ; call occurs [#__divi] ; |119| 
        MOV T0, *SP(#9) ; |119| 
$C$L10:    
	.dwpsn	file "./sonar.c",line 122,column 5,is_stmt
        MOV *SP(#9), T0 ; |122| 
        MOV *SP(#10), T1 ; |122| 
        MOV dbl(*SP(#14)), XAR0
$C$DW$92	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$92, DW_AT_low_pc(0x00)
	.dwattr $C$DW$92, DW_AT_name("_maxidx")
	.dwattr $C$DW$92, DW_AT_TI_call
        CALL #_maxidx ; |122| 
                                        ; call occurs [#_maxidx] ; |122| 
        MOV T0, *SP(#11) ; |122| 
	.dwpsn	file "./sonar.c",line 124,column 5,is_stmt
        MOV T0, AR1
        BCC $C$L11,AR1 < #0 ; |124| 
                                        ; branchcc occurs ; |124| 

        MOV T0, AR2 ; |124| 
||      MOV *SP(#2), AR1 ; |124| 

        CMP AR2 <= AR1, TC1 ; |124| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L12,TC1 ; |124| 
                                        ; branchcc occurs ; |124| 
$C$L11:    
	.dwpsn	file "./sonar.c",line 126,column 9,is_stmt
        MOV #1, T0
        B $C$L13  ; |126| 
                                        ; branch occurs ; |126| 
$C$L12:    
	.dwpsn	file "./sonar.c",line 128,column 5,is_stmt
        MOV dbl(*SP(#14)), XAR0
        MOV dbl(*SP(#0)), XAR1
        MOV *SP(#2), T0 ; |128| 
$C$DW$93	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$93, DW_AT_low_pc(0x00)
	.dwattr $C$DW$93, DW_AT_name("_memcpy")
	.dwattr $C$DW$93, DW_AT_TI_call
        CALL #_memcpy ; |128| 
                                        ; call occurs [#_memcpy] ; |128| 
	.dwpsn	file "./sonar.c",line 129,column 5,is_stmt
        MOV dbl(*SP(#14)), XAR0
        MOV *SP(#2), T0 ; |129| 
$C$DW$94	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$94, DW_AT_low_pc(0x00)
	.dwattr $C$DW$94, DW_AT_name("_calculate_velocity")
	.dwattr $C$DW$94, DW_AT_TI_call
        CALL #_calculate_velocity ; |129| 
                                        ; call occurs [#_calculate_velocity] ; |129| 
        MOV T0, *SP(#12) ; |129| 
	.dwpsn	file "./sonar.c",line 136,column 5,is_stmt
        MOV dbl(*SP(#14)), XAR0
$C$DW$95	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$95, DW_AT_low_pc(0x00)
	.dwattr $C$DW$95, DW_AT_name("_free")
	.dwattr $C$DW$95, DW_AT_TI_call
        CALL #_free ; |136| 
                                        ; call occurs [#_free] ; |136| 
	.dwpsn	file "./sonar.c",line 137,column 5,is_stmt
        MOV dbl(*SP(#16)), XAR0
$C$DW$96	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$96, DW_AT_low_pc(0x00)
	.dwattr $C$DW$96, DW_AT_name("_free")
	.dwattr $C$DW$96, DW_AT_TI_call
        CALL #_free ; |137| 
                                        ; call occurs [#_free] ; |137| 
	.dwpsn	file "./sonar.c",line 138,column 5,is_stmt
        MOV dbl(*SP(#18)), XAR0
$C$DW$97	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$97, DW_AT_low_pc(0x00)
	.dwattr $C$DW$97, DW_AT_name("_free")
	.dwattr $C$DW$97, DW_AT_TI_call
        CALL #_free ; |138| 
                                        ; call occurs [#_free] ; |138| 
	.dwpsn	file "./sonar.c",line 140,column 5,is_stmt
        MOV #0, T0
$C$L13:    
	.dwpsn	file "./sonar.c",line 141,column 1,is_stmt
        AADD #21, SP
	.dwcfi	cfa_offset, 1
$C$DW$98	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$98, DW_AT_low_pc(0x00)
	.dwattr $C$DW$98, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$99	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$99, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/sonar.asm:$C$L5:1:1725637925")
	.dwattr $C$DW$99, DW_AT_TI_begin_file("./sonar.c")
	.dwattr $C$DW$99, DW_AT_TI_begin_line(0x62)
	.dwattr $C$DW$99, DW_AT_TI_end_line(0x64)
$C$DW$100	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$100, DW_AT_low_pc($C$DW$L$_sonar_test$2$B)
	.dwattr $C$DW$100, DW_AT_high_pc($C$DW$L$_sonar_test$2$E)
	.dwendtag $C$DW$99

	.dwattr $C$DW$68, DW_AT_TI_end_file("./sonar.c")
	.dwattr $C$DW$68, DW_AT_TI_end_line(0x8d)
	.dwattr $C$DW$68, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$68

;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_rand
	.global	_calloc
	.global	_free
	.global	_cfft_NOSCALE
	.global	_unpack
	.global	_cbrev
	.global	_convol
	.global	_fir
	.global	_maxidx
	.global	__divli
	.global	_memcpy
	.global	__remi
	.global	__divi

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x17)
$C$DW$101	.dwtag  DW_TAG_TI_far_type
$C$DW$T$19	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$101)
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
$C$DW$T$27	.dwtag  DW_TAG_typedef, DW_AT_name("DATA")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)
$C$DW$T$28	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$28, DW_AT_address_class(0x17)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)
$C$DW$T$29	.dwtag  DW_TAG_typedef, DW_AT_name("ushort")
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$29, DW_AT_language(DW_LANG_C)
$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x01)
$C$DW$T$42	.dwtag  DW_TAG_typedef, DW_AT_name("int16_t")
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$42, DW_AT_language(DW_LANG_C)
$C$DW$T$43	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$43, DW_AT_address_class(0x17)
$C$DW$102	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$42)
$C$DW$T$46	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$102)

$C$DW$T$47	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$47, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x14)
$C$DW$103	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$103, DW_AT_upper_bound(0x13)
	.dwendtag $C$DW$T$47


$C$DW$T$48	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$48, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x5b)
$C$DW$104	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$104, DW_AT_upper_bound(0x5a)
	.dwendtag $C$DW$T$48

$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)
$C$DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("size_t")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)
$C$DW$T$50	.dwtag  DW_TAG_typedef, DW_AT_name("int32_t")
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$50, DW_AT_language(DW_LANG_C)
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

$C$DW$105	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$105, DW_AT_location[DW_OP_reg0]
$C$DW$106	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$106, DW_AT_location[DW_OP_reg1]
$C$DW$107	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$107, DW_AT_location[DW_OP_reg2]
$C$DW$108	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$108, DW_AT_location[DW_OP_reg3]
$C$DW$109	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$109, DW_AT_location[DW_OP_reg4]
$C$DW$110	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$110, DW_AT_location[DW_OP_reg5]
$C$DW$111	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$111, DW_AT_location[DW_OP_reg6]
$C$DW$112	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$112, DW_AT_location[DW_OP_reg7]
$C$DW$113	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$113, DW_AT_location[DW_OP_reg8]
$C$DW$114	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$114, DW_AT_location[DW_OP_reg9]
$C$DW$115	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$115, DW_AT_location[DW_OP_reg10]
$C$DW$116	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$116, DW_AT_location[DW_OP_reg11]
$C$DW$117	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$117, DW_AT_location[DW_OP_reg12]
$C$DW$118	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$118, DW_AT_location[DW_OP_reg13]
$C$DW$119	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$119, DW_AT_location[DW_OP_reg14]
$C$DW$120	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$120, DW_AT_location[DW_OP_reg15]
$C$DW$121	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$121, DW_AT_location[DW_OP_reg16]
$C$DW$122	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$122, DW_AT_location[DW_OP_reg17]
$C$DW$123	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$123, DW_AT_location[DW_OP_reg18]
$C$DW$124	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$124, DW_AT_location[DW_OP_reg19]
$C$DW$125	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$125, DW_AT_location[DW_OP_reg20]
$C$DW$126	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$126, DW_AT_location[DW_OP_reg21]
$C$DW$127	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$127, DW_AT_location[DW_OP_reg22]
$C$DW$128	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$128, DW_AT_location[DW_OP_reg23]
$C$DW$129	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$129, DW_AT_location[DW_OP_reg24]
$C$DW$130	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$130, DW_AT_location[DW_OP_reg25]
$C$DW$131	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$131, DW_AT_location[DW_OP_reg26]
$C$DW$132	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$132, DW_AT_location[DW_OP_reg27]
$C$DW$133	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$133, DW_AT_location[DW_OP_reg28]
$C$DW$134	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$134, DW_AT_location[DW_OP_reg29]
$C$DW$135	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$135, DW_AT_location[DW_OP_reg30]
$C$DW$136	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$136, DW_AT_location[DW_OP_reg31]
$C$DW$137	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$137, DW_AT_location[DW_OP_regx 0x20]
$C$DW$138	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$138, DW_AT_location[DW_OP_regx 0x21]
$C$DW$139	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$139, DW_AT_location[DW_OP_regx 0x22]
$C$DW$140	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$140, DW_AT_location[DW_OP_regx 0x23]
$C$DW$141	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$141, DW_AT_location[DW_OP_regx 0x24]
$C$DW$142	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$142, DW_AT_location[DW_OP_regx 0x25]
$C$DW$143	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$143, DW_AT_location[DW_OP_regx 0x26]
$C$DW$144	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$144, DW_AT_location[DW_OP_regx 0x27]
$C$DW$145	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$145, DW_AT_location[DW_OP_regx 0x28]
$C$DW$146	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$146, DW_AT_location[DW_OP_regx 0x29]
$C$DW$147	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$147, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$148	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$148, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$149	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$149, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$150	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$150, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$151	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$151, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$152	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$152, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$153	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$153, DW_AT_location[DW_OP_regx 0x30]
$C$DW$154	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$154, DW_AT_location[DW_OP_regx 0x31]
$C$DW$155	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$155, DW_AT_location[DW_OP_regx 0x32]
$C$DW$156	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$156, DW_AT_location[DW_OP_regx 0x33]
$C$DW$157	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$157, DW_AT_location[DW_OP_regx 0x34]
$C$DW$158	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$158, DW_AT_location[DW_OP_regx 0x35]
$C$DW$159	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$159, DW_AT_location[DW_OP_regx 0x36]
$C$DW$160	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$160, DW_AT_location[DW_OP_regx 0x37]
$C$DW$161	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$161, DW_AT_location[DW_OP_regx 0x38]
$C$DW$162	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$162, DW_AT_location[DW_OP_regx 0x39]
$C$DW$163	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$163, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$164	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$164, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$165	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$165, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$166	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$166, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$167	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$167, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$168	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$168, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$169	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$169, DW_AT_location[DW_OP_regx 0x40]
$C$DW$170	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$170, DW_AT_location[DW_OP_regx 0x41]
$C$DW$171	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$171, DW_AT_location[DW_OP_regx 0x42]
$C$DW$172	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$172, DW_AT_location[DW_OP_regx 0x43]
$C$DW$173	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$173, DW_AT_location[DW_OP_regx 0x44]
$C$DW$174	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$174, DW_AT_location[DW_OP_regx 0x45]
$C$DW$175	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$175, DW_AT_location[DW_OP_regx 0x46]
$C$DW$176	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$176, DW_AT_location[DW_OP_regx 0x47]
$C$DW$177	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$177, DW_AT_location[DW_OP_regx 0x48]
$C$DW$178	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$178, DW_AT_location[DW_OP_regx 0x49]
$C$DW$179	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$179, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$180	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$180, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$181	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$181, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$182	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$182, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$183	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$183, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$184	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$184, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$185	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$185, DW_AT_location[DW_OP_regx 0x50]
$C$DW$186	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$186, DW_AT_location[DW_OP_regx 0x51]
$C$DW$187	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$187, DW_AT_location[DW_OP_regx 0x52]
$C$DW$188	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$188, DW_AT_location[DW_OP_regx 0x53]
$C$DW$189	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$189, DW_AT_location[DW_OP_regx 0x54]
$C$DW$190	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$190, DW_AT_location[DW_OP_regx 0x55]
$C$DW$191	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$191, DW_AT_location[DW_OP_regx 0x56]
$C$DW$192	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$192, DW_AT_location[DW_OP_regx 0x57]
$C$DW$193	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$193, DW_AT_location[DW_OP_regx 0x58]
$C$DW$194	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$194, DW_AT_location[DW_OP_regx 0x59]
$C$DW$195	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$195, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$196	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$196, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

