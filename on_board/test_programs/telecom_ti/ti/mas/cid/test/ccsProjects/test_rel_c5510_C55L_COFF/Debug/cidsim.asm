;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                          PC v4.4.1 *
;* Date/Time created: Fri Jul 05 14:11:14 2013                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen PC v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\cid\test\ccsProjects\test_rel_c5510_C55L_COFF\Debug")
;******************************************************************************
;* CINIT RECORDS                                                              *
;******************************************************************************
	.sect	".cinit"
	.align	1
	.field  	1,16
	.field  	_v21_flags+0,24
	.field  	0,8
	.field	32382,16			; _v21_flags @ 0

	.sect	".cinit"
	.align	1
	.field  	1,16
	.field  	_multi_msg_idx+0,24
	.field  	0,8
	.field	0,16			; _multi_msg_idx @ 0

	.sect	".cinit"
	.align	1
	.field  	1,16
	.field  	_multi_msg_len+0,24
	.field  	0,8
	.field	0,16			; _multi_msg_len @ 0

	.sect	".cinit"
	.align	1
	.field  	2,16
	.field  	_sgnRxInst+0,24
	.field  	0,8
	.field	0,32			; _sgnRxInst @ 0

	.sect	".cinit"
	.align	1
	.field  	1,16
	.field  	_flog+0,24
	.field  	0,8
	.field	0,16			; _flog @ 0

	.sect	".cinit"
	.align	1
	.field  	$C$IR_1,16
	.field  	_cidProfile+0,24
	.field  	0,8
	.field	0,32			; _cidProfile._fptr @ 0
	.field	1,16			; _cidProfile._use_cache @ 32
	.field	0,16			; _cidProfile._enabled @ 48
	.field	0,32			; _cidProfile._profile_ovrhd @ 64
	.field	0,32			; _cidProfile._profile_start @ 96
	.field	0,32			; _cidProfile._profile_cycles[0] @ 128
	.field	0,32			; _cidProfile._profile_cycles[1] @ 160
	.field	0,32			; _cidProfile._ignore_ovrhd @ 192
	.field	0,32			; _cidProfile._ignore_start @ 224
	.field	0,32			; _cidProfile._ignore_cycles @ 256
$C$IR_1:	.set	18

	.sect	".cinit"
	.align	1
	.field  	$C$IR_2,16
	.field  	_cidBindConfig+0,24
	.field  	0,8
	.field	_cidModulator,32		; _cidBindConfig._mod @ 0
	.field	_cidModCtrl,32		; _cidBindConfig._modCtrl @ 32
	.field	_cidDetect,32		; _cidBindConfig._demod @ 64
	.field	_cidDemodCtrl,32		; _cidBindConfig._demodCtrl @ 96
	.field	0,16			; _cidBindConfig._cidBindStandard[0]._standard @ 128
	.space	16
	.field	_cidGnrtFsmUsEtsi,32		; _cidBindConfig._cidBindStandard[0]._gnrt_fsm @ 160
	.field	_cidDtctFsmUsEtsi,32		; _cidBindConfig._cidBindStandard[0]._dtct_fsm @ 192
	.field	5,16			; _cidBindConfig._cidBindStandard[1]._standard @ 224
	.space	16
	.field	_cidGnrtFsmUsEtsi,32		; _cidBindConfig._cidBindStandard[1]._gnrt_fsm @ 256
	.field	_cidDtctFsmUsEtsi,32		; _cidBindConfig._cidBindStandard[1]._dtct_fsm @ 288
	.field	4,16			; _cidBindConfig._cidBindStandard[2]._standard @ 320
	.space	16
	.field	_cidGnrtFsmUsEtsi,32		; _cidBindConfig._cidBindStandard[2]._gnrt_fsm @ 352
	.field	_cidDtctFsmUsEtsi,32		; _cidBindConfig._cidBindStandard[2]._dtct_fsm @ 384
	.field	1,16			; _cidBindConfig._cidBindStandard[3]._standard @ 416
	.space	16
	.field	_cidGnrtFsmNtt,32		; _cidBindConfig._cidBindStandard[3]._gnrt_fsm @ 448
	.field	_cidDtctFsmNtt,32		; _cidBindConfig._cidBindStandard[3]._dtct_fsm @ 480
	.field	2,16			; _cidBindConfig._cidBindStandard[4]._standard @ 512
	.space	16
	.field	_cidGnrtFsmUsEtsi,32		; _cidBindConfig._cidBindStandard[4]._gnrt_fsm @ 544
	.field	_cidDtctFsmUsEtsi,32		; _cidBindConfig._cidBindStandard[4]._dtct_fsm @ 576
	.field	3,16			; _cidBindConfig._cidBindStandard[5]._standard @ 608
	.space	16
	.field	_cidGnrtFsmUsEtsi,32		; _cidBindConfig._cidBindStandard[5]._gnrt_fsm @ 640
	.field	_cidDtctFsmUsEtsi,32		; _cidBindConfig._cidBindStandard[5]._dtct_fsm @ 672
$C$IR_2:	.set	44

	.sect	".cinit"
	.align	1
	.field  	$C$IR_3,16
	.field  	_ntt_message+0,24
	.field  	0,8
	.field	522,16			; _ntt_message[0] @ 0
	.field	4113,16			; _ntt_message[1] @ 16
	.field	4627,16			; _ntt_message[2] @ 32
	.field	5141,16			; _ntt_message[3] @ 48
	.field	5655,16			; _ntt_message[4] @ 64
	.field	6169,16			; _ntt_message[5] @ 80
	.field	8225,16			; _ntt_message[6] @ 96
	.field	8739,16			; _ntt_message[7] @ 112
	.field	9253,16			; _ntt_message[8] @ 128
	.field	9767,16			; _ntt_message[9] @ 144
	.field	10281,16			; _ntt_message[10] @ 160
	.field	12337,16			; _ntt_message[11] @ 176
	.field	12851,16			; _ntt_message[12] @ 192
	.field	13365,16			; _ntt_message[13] @ 208
	.field	13879,16			; _ntt_message[14] @ 224
	.field	14393,16			; _ntt_message[15] @ 240
	.field	16449,16			; _ntt_message[16] @ 256
	.field	16963,16			; _ntt_message[17] @ 272
	.field	17477,16			; _ntt_message[18] @ 288
	.field	17991,16			; _ntt_message[19] @ 304
	.field	18505,16			; _ntt_message[20] @ 320
	.field	20561,16			; _ntt_message[21] @ 336
	.field	21075,16			; _ntt_message[22] @ 352
	.field	21589,16			; _ntt_message[23] @ 368
	.field	22103,16			; _ntt_message[24] @ 384
	.field	22617,16			; _ntt_message[25] @ 400
	.field	24673,16			; _ntt_message[26] @ 416
	.field	25187,16			; _ntt_message[27] @ 432
	.field	25701,16			; _ntt_message[28] @ 448
	.field	26215,16			; _ntt_message[29] @ 464
	.field	26729,16			; _ntt_message[30] @ 480
	.field	28785,16			; _ntt_message[31] @ 496
	.field	29299,16			; _ntt_message[32] @ 512
	.field	29813,16			; _ntt_message[33] @ 528
	.field	30327,16			; _ntt_message[34] @ 544
	.field	30841,16			; _ntt_message[35] @ 560
	.field	6683,16			; _ntt_message[36] @ 576
	.field	7197,16			; _ntt_message[37] @ 592
	.field	7711,16			; _ntt_message[38] @ 608
	.field	10795,16			; _ntt_message[39] @ 624
	.field	11309,16			; _ntt_message[40] @ 640
	.field	11823,16			; _ntt_message[41] @ 656
	.field	14907,16			; _ntt_message[42] @ 672
	.field	15421,16			; _ntt_message[43] @ 688
	.field	15935,16			; _ntt_message[44] @ 704
$C$IR_3:	.set	45

	.sect	".cinit"
	.align	1
	.field  	$C$IR_4,16
	.field  	_bellcore_message+0,24
	.field  	0,8
	.field	534,16			; _bellcore_message[0] @ 0
	.field	12339,16			; _bellcore_message[1] @ 16
	.field	13617,16			; _bellcore_message[2] @ 32
	.field	11571,16			; _bellcore_message[3] @ 48
	.field	12849,16			; _bellcore_message[4] @ 64
	.field	12336,16			; _bellcore_message[5] @ 80
	.field	13108,16			; _bellcore_message[6] @ 96
	.field	13622,16			; _bellcore_message[7] @ 112
	.field	14136,16			; _bellcore_message[8] @ 128
	.field	14640,16			; _bellcore_message[9] @ 144
	.field	12594,16			; _bellcore_message[10] @ 160
	.field	13108,16			; _bellcore_message[11] @ 176
	.field	14648,16			; _bellcore_message[12] @ 192
$C$IR_4:	.set	13

	.sect	".cinit"
	.align	1
	.field  	$C$IR_5,16
	.field  	_siuSetup+0,24
	.field  	0,8
	.field	8,16			; _siuSetup._pcm_bits @ 0
	.field	40,16			; _siuSetup._frame_size @ 16
	.field	0,16			; _siuSetup._tog_cid1 @ 32
	.space	16
	.field	-1,16			; _siuSetup._cid_ctlMsg1._ctlCode @ 64
	.field	0,16			; _siuSetup._cid_ctlMsg1._call_waiting @ 80
	.field	0,16			; _siuSetup._cid_ctlMsg1._u._gnrt._marks_gain @ 96
	.field	128,16			; _siuSetup._cid_ctlMsg1._u._gnrt._msg_type @ 112
	.field	26,16			; _siuSetup._cid_ctlMsg1._u._gnrt._msg_length @ 128
	.space	16
	.field	_bellcore_message,32		; _siuSetup._cid_ctlMsg1._u._gnrt._msg @ 160
	.field	0,16			; _siuSetup._tog_cid2 @ 192
	.space	16
	.field	-1,16			; _siuSetup._cid_ctlMsg2._ctlCode @ 224
	.field	0,16			; _siuSetup._cid_ctlMsg2._call_waiting @ 240
	.field	9999,16			; _siuSetup._cid_ctlMsg2._u._gnrt._marks_gain @ 256
	.field	0,16			; _siuSetup._cid_ctlMsg2._u._gnrt._msg_type @ 272
	.space	64
	.field	0,16			; _siuSetup._tog_chnl_sim @ 352
	.field	0,16			; _siuSetup._chSim._chnl_sim_on @ 368
	.field	-40,16			; _siuSetup._chSim._nlevel @ 384
	.field	1531,16			; _siuSetup._chSim._nseed @ 400
	.field	0,16			; _siuSetup._tog_rx_SGN @ 416
	.field	1,16			; _siuSetup._rxSGN._state @ 432
	.field	0,16			; _siuSetup._rxSGN._dcoffset @ 448
	.field	2,16			; _siuSetup._rxSGN._wftype @ 464
	.field	1000,16			; _siuSetup._rxSGN._f1 @ 480
	.field	0,16			; _siuSetup._rxSGN._f2 @ 496
	.field	0,16			; _siuSetup._rxSGN._amp1 @ 512
	.field	0,16			; _siuSetup._rxSGN._amp2 @ 528
	.field	0,16			; _siuSetup._rxSGN._nlevel @ 544
	.field	1531,16			; _siuSetup._rxSGN._nseed @ 560
	.field	1,16			; _siuSetup._rxSGN._ntype @ 576
	.field	-70,16			; _siuSetup._rxSGN._pow_level @ 592
	.field	18401,16			; _siuSetup._rxSGN._hoth_seed @ 608
$C$IR_5:	.set	39


$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("fclose")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_fclose")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$88)
	.dwendtag $C$DW$1


$C$DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("fopen")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_fopen")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$99)
$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$99)
	.dwendtag $C$DW$3


$C$DW$6	.dwtag  DW_TAG_subprogram, DW_AT_name("fflush")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_fflush")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$6, DW_AT_declaration
	.dwattr $C$DW$6, DW_AT_external
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$88)
	.dwendtag $C$DW$6


$C$DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("fprintf")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_fprintf")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$8, DW_AT_declaration
	.dwattr $C$DW$8, DW_AT_external
$C$DW$9	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$88)
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$99)
$C$DW$11	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag $C$DW$8


$C$DW$12	.dwtag  DW_TAG_subprogram, DW_AT_name("printf")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_printf")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$12, DW_AT_declaration
	.dwattr $C$DW$12, DW_AT_external
$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$99)
$C$DW$14	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag $C$DW$12


$C$DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("malloc")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_malloc")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$15, DW_AT_declaration
	.dwattr $C$DW$15, DW_AT_external
$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$124)
	.dwendtag $C$DW$15


$C$DW$17	.dwtag  DW_TAG_subprogram, DW_AT_name("free")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_free")
	.dwattr $C$DW$17, DW_AT_declaration
	.dwattr $C$DW$17, DW_AT_external
$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$17


$C$DW$19	.dwtag  DW_TAG_subprogram, DW_AT_name("exit")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_exit")
	.dwattr $C$DW$19, DW_AT_declaration
	.dwattr $C$DW$19, DW_AT_external
$C$DW$20	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$19


$C$DW$21	.dwtag  DW_TAG_subprogram, DW_AT_name("cidCreate")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_cidCreate")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$21, DW_AT_declaration
	.dwattr $C$DW$21, DW_AT_external
$C$DW$22	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$104)
	.dwendtag $C$DW$21


$C$DW$23	.dwtag  DW_TAG_subprogram, DW_AT_name("cidGetSizes")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_cidGetSizes")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$23, DW_AT_declaration
	.dwattr $C$DW$23, DW_AT_external
$C$DW$24	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$65)
$C$DW$25	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$107)
	.dwendtag $C$DW$23


$C$DW$26	.dwtag  DW_TAG_subprogram, DW_AT_name("cidNew")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_cidNew")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$26, DW_AT_declaration
	.dwattr $C$DW$26, DW_AT_external
$C$DW$27	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$127)
$C$DW$28	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$30)
$C$DW$29	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$85)
$C$DW$30	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$109)
	.dwendtag $C$DW$26


$C$DW$31	.dwtag  DW_TAG_subprogram, DW_AT_name("cidClose")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_cidClose")
	.dwattr $C$DW$31, DW_AT_declaration
	.dwattr $C$DW$31, DW_AT_external
$C$DW$32	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$31


$C$DW$33	.dwtag  DW_TAG_subprogram, DW_AT_name("cidDelete")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_cidDelete")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$33, DW_AT_declaration
	.dwattr $C$DW$33, DW_AT_external
$C$DW$34	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$127)
$C$DW$35	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$30)
$C$DW$36	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$85)
	.dwendtag $C$DW$33


$C$DW$37	.dwtag  DW_TAG_subprogram, DW_AT_name("cidBind")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_cidBind")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$37, DW_AT_declaration
	.dwattr $C$DW$37, DW_AT_external
$C$DW$38	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$3)
$C$DW$39	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$111)
	.dwendtag $C$DW$37


$C$DW$40	.dwtag  DW_TAG_subprogram, DW_AT_name("cidOpen")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_cidOpen")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$40, DW_AT_declaration
	.dwattr $C$DW$40, DW_AT_external
$C$DW$41	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$3)
$C$DW$42	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$113)
	.dwendtag $C$DW$40


$C$DW$43	.dwtag  DW_TAG_subprogram, DW_AT_name("cidControl")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_cidControl")
	.dwattr $C$DW$43, DW_AT_declaration
	.dwattr $C$DW$43, DW_AT_external
$C$DW$44	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$3)
$C$DW$45	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$54)
	.dwendtag $C$DW$43


$C$DW$46	.dwtag  DW_TAG_subprogram, DW_AT_name("cidReceiveIn")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_cidReceiveIn")
	.dwattr $C$DW$46, DW_AT_declaration
	.dwattr $C$DW$46, DW_AT_external
$C$DW$47	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$3)
$C$DW$48	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$3)
$C$DW$49	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$37)
$C$DW$50	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$134)
	.dwendtag $C$DW$46


$C$DW$51	.dwtag  DW_TAG_subprogram, DW_AT_name("cidSendIn")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_cidSendIn")
	.dwattr $C$DW$51, DW_AT_declaration
	.dwattr $C$DW$51, DW_AT_external
$C$DW$52	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$3)
$C$DW$53	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$51


$C$DW$54	.dwtag  DW_TAG_subprogram, DW_AT_name("cidModulator")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_cidModulator")
	.dwattr $C$DW$54, DW_AT_declaration
	.dwattr $C$DW$54, DW_AT_external
$C$DW$55	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$3)
$C$DW$56	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$50)
	.dwendtag $C$DW$54


$C$DW$57	.dwtag  DW_TAG_subprogram, DW_AT_name("cidModCtrl")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_cidModCtrl")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$57, DW_AT_declaration
	.dwattr $C$DW$57, DW_AT_external
$C$DW$58	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$3)
$C$DW$59	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$54)
	.dwendtag $C$DW$57


$C$DW$60	.dwtag  DW_TAG_subprogram, DW_AT_name("cidDetect")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_cidDetect")
	.dwattr $C$DW$60, DW_AT_declaration
	.dwattr $C$DW$60, DW_AT_external
$C$DW$61	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$3)
$C$DW$62	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$50)
	.dwendtag $C$DW$60


$C$DW$63	.dwtag  DW_TAG_subprogram, DW_AT_name("cidDemodCtrl")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_cidDemodCtrl")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$63, DW_AT_declaration
	.dwattr $C$DW$63, DW_AT_external
$C$DW$64	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$3)
$C$DW$65	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$54)
	.dwendtag $C$DW$63


$C$DW$66	.dwtag  DW_TAG_subprogram, DW_AT_name("cidDtctFsmNtt")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_cidDtctFsmNtt")
	.dwattr $C$DW$66, DW_AT_declaration
	.dwattr $C$DW$66, DW_AT_external
$C$DW$67	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$3)
$C$DW$68	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$30)
	.dwendtag $C$DW$66


$C$DW$69	.dwtag  DW_TAG_subprogram, DW_AT_name("cidGnrtFsmNtt")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_cidGnrtFsmNtt")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$69, DW_AT_declaration
	.dwattr $C$DW$69, DW_AT_external
$C$DW$70	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$69


$C$DW$71	.dwtag  DW_TAG_subprogram, DW_AT_name("cidDtctFsmUsEtsi")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_cidDtctFsmUsEtsi")
	.dwattr $C$DW$71, DW_AT_declaration
	.dwattr $C$DW$71, DW_AT_external
$C$DW$72	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$3)
$C$DW$73	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$30)
	.dwendtag $C$DW$71


$C$DW$74	.dwtag  DW_TAG_subprogram, DW_AT_name("cidGnrtFsmUsEtsi")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_cidGnrtFsmUsEtsi")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$74, DW_AT_declaration
	.dwattr $C$DW$74, DW_AT_external
$C$DW$75	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$74


$C$DW$76	.dwtag  DW_TAG_subprogram, DW_AT_name("wngInit")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_wngInit")
	.dwattr $C$DW$76, DW_AT_declaration
	.dwattr $C$DW$76, DW_AT_external
$C$DW$77	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$30)
$C$DW$78	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$23)
$C$DW$79	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$65)
$C$DW$80	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$24)
	.dwendtag $C$DW$76


$C$DW$81	.dwtag  DW_TAG_subprogram, DW_AT_name("wngGenNoiseSample")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_wngGenNoiseSample")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$81, DW_AT_declaration
	.dwattr $C$DW$81, DW_AT_external
$C$DW$82	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$30)
$C$DW$83	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$24)
	.dwendtag $C$DW$81


$C$DW$84	.dwtag  DW_TAG_subprogram, DW_AT_name("sgnGetSizes")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_sgnGetSizes")
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$84, DW_AT_declaration
	.dwattr $C$DW$84, DW_AT_external
$C$DW$85	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$65)
	.dwendtag $C$DW$84


$C$DW$86	.dwtag  DW_TAG_subprogram, DW_AT_name("sgnControl")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("_sgnControl")
	.dwattr $C$DW$86, DW_AT_declaration
	.dwattr $C$DW$86, DW_AT_external
$C$DW$87	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$3)
$C$DW$88	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$115)
	.dwendtag $C$DW$86


$C$DW$89	.dwtag  DW_TAG_subprogram, DW_AT_name("sgnGenerateFrame")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_sgnGenerateFrame")
	.dwattr $C$DW$89, DW_AT_declaration
	.dwattr $C$DW$89, DW_AT_external
$C$DW$90	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$3)
$C$DW$91	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$30)
$C$DW$92	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$89


$C$DW$93	.dwtag  DW_TAG_subprogram, DW_AT_name("sgnInit")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_sgnInit")
	.dwattr $C$DW$93, DW_AT_declaration
	.dwattr $C$DW$93, DW_AT_external
$C$DW$94	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$3)
$C$DW$95	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$117)
	.dwendtag $C$DW$93

$C$DW$96	.dwtag  DW_TAG_variable, DW_AT_name("_ftable")
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("__ftable")
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$96, DW_AT_declaration
	.dwattr $C$DW$96, DW_AT_external
	.global	_siuRxInStream
	.bss	_siuRxInStream,44,0,0
$C$DW$97	.dwtag  DW_TAG_variable, DW_AT_name("siuRxInStream")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("_siuRxInStream")
	.dwattr $C$DW$97, DW_AT_location[DW_OP_addr _siuRxInStream]
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$188)
	.dwattr $C$DW$97, DW_AT_external
	.global	_siuPcmOutStream
	.bss	_siuPcmOutStream,44,0,0
$C$DW$98	.dwtag  DW_TAG_variable, DW_AT_name("siuPcmOutStream")
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("_siuPcmOutStream")
	.dwattr $C$DW$98, DW_AT_location[DW_OP_addr _siuPcmOutStream]
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$188)
	.dwattr $C$DW$98, DW_AT_external
	.global	_siuPcmInStream
	.bss	_siuPcmInStream,44,0,0
$C$DW$99	.dwtag  DW_TAG_variable, DW_AT_name("siuPcmInStream")
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_siuPcmInStream")
	.dwattr $C$DW$99, DW_AT_location[DW_OP_addr _siuPcmInStream]
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$188)
	.dwattr $C$DW$99, DW_AT_external
	.global	_v21_flags
	.bss	_v21_flags,1,0,0
$C$DW$100	.dwtag  DW_TAG_variable, DW_AT_name("v21_flags")
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("_v21_flags")
	.dwattr $C$DW$100, DW_AT_location[DW_OP_addr _v21_flags]
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$100, DW_AT_external
	.global	_siuInst
	.bss	_siuInst,20,0,2
$C$DW$101	.dwtag  DW_TAG_variable, DW_AT_name("siuInst")
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_siuInst")
	.dwattr $C$DW$101, DW_AT_location[DW_OP_addr _siuInst]
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$101, DW_AT_external
	.global	_frame_in
	.bss	_frame_in,2,0,2
$C$DW$102	.dwtag  DW_TAG_variable, DW_AT_name("frame_in")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("_frame_in")
	.dwattr $C$DW$102, DW_AT_location[DW_OP_addr _frame_in]
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$102, DW_AT_external
	.global	_siu_dbg_message
	.bss	_siu_dbg_message,256,0,0
$C$DW$103	.dwtag  DW_TAG_variable, DW_AT_name("siu_dbg_message")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("_siu_dbg_message")
	.dwattr $C$DW$103, DW_AT_location[DW_OP_addr _siu_dbg_message]
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$202)
	.dwattr $C$DW$103, DW_AT_external
	.global	_siu_dbg_id
	.bss	_siu_dbg_id,1,0,0
$C$DW$104	.dwtag  DW_TAG_variable, DW_AT_name("siu_dbg_id")
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_siu_dbg_id")
	.dwattr $C$DW$104, DW_AT_location[DW_OP_addr _siu_dbg_id]
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$104, DW_AT_external
	.global	_rptBuff
	.bss	_rptBuff,1,0,0
$C$DW$105	.dwtag  DW_TAG_variable, DW_AT_name("rptBuff")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_rptBuff")
	.dwattr $C$DW$105, DW_AT_location[DW_OP_addr _rptBuff]
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$105, DW_AT_external
	.global	_multi_msg_idx
	.bss	_multi_msg_idx,1,0,0
$C$DW$106	.dwtag  DW_TAG_variable, DW_AT_name("multi_msg_idx")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_multi_msg_idx")
	.dwattr $C$DW$106, DW_AT_location[DW_OP_addr _multi_msg_idx]
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$106, DW_AT_external
	.global	_multi_msg_len
	.bss	_multi_msg_len,1,0,0
$C$DW$107	.dwtag  DW_TAG_variable, DW_AT_name("multi_msg_len")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_multi_msg_len")
	.dwattr $C$DW$107, DW_AT_location[DW_OP_addr _multi_msg_len]
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$107, DW_AT_external
	.global	_multi_msg
	.bss	_multi_msg,2,0,2
$C$DW$108	.dwtag  DW_TAG_variable, DW_AT_name("multi_msg")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_multi_msg")
	.dwattr $C$DW$108, DW_AT_location[DW_OP_addr _multi_msg]
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$108, DW_AT_external
	.global	_sgnRxInst
	.bss	_sgnRxInst,2,0,2
$C$DW$109	.dwtag  DW_TAG_variable, DW_AT_name("sgnRxInst")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_sgnRxInst")
	.dwattr $C$DW$109, DW_AT_location[DW_OP_addr _sgnRxInst]
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$109, DW_AT_external
	.global	_flog
	.bss	_flog,1,0,0
$C$DW$110	.dwtag  DW_TAG_variable, DW_AT_name("flog")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_flog")
	.dwattr $C$DW$110, DW_AT_location[DW_OP_addr _flog]
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$110, DW_AT_external
	.global	_cidProfile
	.bss	_cidProfile,18,0,2
$C$DW$111	.dwtag  DW_TAG_variable, DW_AT_name("cidProfile")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_cidProfile")
	.dwattr $C$DW$111, DW_AT_location[DW_OP_addr _cidProfile]
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$111, DW_AT_external
	.global	_csmInst
	.bss	_csmInst,2,0,0
$C$DW$112	.dwtag  DW_TAG_variable, DW_AT_name("csmInst")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_csmInst")
	.dwattr $C$DW$112, DW_AT_location[DW_OP_addr _csmInst]
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$112, DW_AT_external
	.global	_cidBindConfig
	.bss	_cidBindConfig,44,0,2
$C$DW$113	.dwtag  DW_TAG_variable, DW_AT_name("cidBindConfig")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_cidBindConfig")
	.dwattr $C$DW$113, DW_AT_location[DW_OP_addr _cidBindConfig]
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$113, DW_AT_external
	.global	_ntt_message
	.bss	_ntt_message,45,0,0
$C$DW$114	.dwtag  DW_TAG_variable, DW_AT_name("ntt_message")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_ntt_message")
	.dwattr $C$DW$114, DW_AT_location[DW_OP_addr _ntt_message]
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$183)
	.dwattr $C$DW$114, DW_AT_external
	.global	_bellcore_message
	.bss	_bellcore_message,13,0,0
$C$DW$115	.dwtag  DW_TAG_variable, DW_AT_name("bellcore_message")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_bellcore_message")
	.dwattr $C$DW$115, DW_AT_location[DW_OP_addr _bellcore_message]
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$184)
	.dwattr $C$DW$115, DW_AT_external
	.global	_siuSetup
	.bss	_siuSetup,40,0,2
$C$DW$116	.dwtag  DW_TAG_variable, DW_AT_name("siuSetup")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("_siuSetup")
	.dwattr $C$DW$116, DW_AT_location[DW_OP_addr _siuSetup]
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$116, DW_AT_external
	.global	_glob_flg
	.bss	_glob_flg,1,0,0
$C$DW$117	.dwtag  DW_TAG_variable, DW_AT_name("glob_flg")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_glob_flg")
	.dwattr $C$DW$117, DW_AT_location[DW_OP_addr _glob_flg]
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$192)
	.dwattr $C$DW$117, DW_AT_external
	.global	_glob_msgLength
	.bss	_glob_msgLength,1,0,0
$C$DW$118	.dwtag  DW_TAG_variable, DW_AT_name("glob_msgLength")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_glob_msgLength")
	.dwattr $C$DW$118, DW_AT_location[DW_OP_addr _glob_msgLength]
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$118, DW_AT_external
	.global	_glob_moduleID
	.bss	_glob_moduleID,1,0,0
$C$DW$119	.dwtag  DW_TAG_variable, DW_AT_name("glob_moduleID")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_glob_moduleID")
	.dwattr $C$DW$119, DW_AT_location[DW_OP_addr _glob_moduleID]
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$119, DW_AT_external
	.global	_glob_msgType
	.bss	_glob_msgType,1,0,0
$C$DW$120	.dwtag  DW_TAG_variable, DW_AT_name("glob_msgType")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_glob_msgType")
	.dwattr $C$DW$120, DW_AT_location[DW_OP_addr _glob_msgType]
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$120, DW_AT_external
	.global	_glob_messageCode
	.bss	_glob_messageCode,1,0,0
$C$DW$121	.dwtag  DW_TAG_variable, DW_AT_name("glob_messageCode")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("_glob_messageCode")
	.dwattr $C$DW$121, DW_AT_location[DW_OP_addr _glob_messageCode]
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$121, DW_AT_external
	.global	_glob_msgData
	.bss	_glob_msgData,4,0,0
$C$DW$122	.dwtag  DW_TAG_variable, DW_AT_name("glob_msgData")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_glob_msgData")
	.dwattr $C$DW$122, DW_AT_location[DW_OP_addr _glob_msgData]
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$196)
	.dwattr $C$DW$122, DW_AT_external
;	C:\MAS_Tools\CCSV5_2_1\ccsv5\tools\compiler\c5500_4.4.1\bin\acp55.exe -@C:\\DOCUME~1\\a0868396\\LOCALS~1\\Temp\\0294012 
	.sect	".text"

$C$DW$123	.dwtag  DW_TAG_subprogram, DW_AT_name("profile_initCycleProfiling")
	.dwattr $C$DW$123, DW_AT_low_pc(_profile_initCycleProfiling)
	.dwattr $C$DW$123, DW_AT_high_pc(0x00)
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_profile_initCycleProfiling")
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$123, DW_AT_TI_begin_file("../../../../../../../ti/mas/sdk/src/c55/profile.h")
	.dwattr $C$DW$123, DW_AT_TI_begin_line(0x38)
	.dwattr $C$DW$123, DW_AT_TI_begin_column(0x15)
	.dwattr $C$DW$123, DW_AT_TI_max_frame_size(0x01)
	.dwpsn	file "../../../../../../../ti/mas/sdk/src/c55/profile.h",line 57,column 1,is_stmt,address _profile_initCycleProfiling

	.dwfde $C$DW$CIE, _profile_initCycleProfiling
;----------------------------------------------------------------------
;  56 | static inline tbool profile_initCycleProfiling(void)                   
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: profile_initCycleProfiling                                   *
;*                                                                             *
;*   Function Uses Regs : T0,SP,M40,SATA,SATD,RDM,FRCT,SMUL                    *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 1 word                                               *
;*                        (1 return address/alignment)                         *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_profile_initCycleProfiling:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
	.dwpsn	file "../../../../../../../ti/mas/sdk/src/c55/profile.h",line 58,column 3,is_stmt
;----------------------------------------------------------------------
;  58 | C55X__TCR   =  (1<<C55X__TSS) | (1<<C55X__TLB) | (1<<C55X__ARB);       
;----------------------------------------------------------------------
        *port(#4098) = #1072 ; |58| 
	.dwpsn	file "../../../../../../../ti/mas/sdk/src/c55/profile.h",line 59,column 3,is_stmt
;----------------------------------------------------------------------
;  59 | C55X__PRSC  =  (sdk_PROFILE_TDDR - 1);                                 
;----------------------------------------------------------------------
        *port(#4099) = #15 ; |59| 
        T0 = #1
	.dwpsn	file "../../../../../../../ti/mas/sdk/src/c55/profile.h",line 60,column 3,is_stmt
;----------------------------------------------------------------------
;  60 | C55X__PRD   =  (sdk_PROFILE_PRD  - 1);                                 
;----------------------------------------------------------------------
        *port(#4097) = #65535 ; |60| 
	.dwpsn	file "../../../../../../../ti/mas/sdk/src/c55/profile.h",line 61,column 3,is_stmt
;----------------------------------------------------------------------
;  61 | C55X__TCR  &= ~(1<<C55X__TLB);                                         
;----------------------------------------------------------------------
        *port(#4098) = *port(#4098) & #0xfbff ; |61| 
	.dwpsn	file "../../../../../../../ti/mas/sdk/src/c55/profile.h",line 62,column 3,is_stmt
;----------------------------------------------------------------------
;  62 | C55X__TCR  &= ~(1<<C55X__TSS);                                         
;  64 | return TRUE;                                                           
;----------------------------------------------------------------------
        *port(#4098) = *port(#4098) & #0xffef ; |62| 
$C$DW$124	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$124, DW_AT_low_pc(0x00)
	.dwattr $C$DW$124, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$123, DW_AT_TI_end_file("../../../../../../../ti/mas/sdk/src/c55/profile.h")
	.dwattr $C$DW$123, DW_AT_TI_end_line(0x41)
	.dwattr $C$DW$123, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$123

	.sect	".text"

$C$DW$125	.dwtag  DW_TAG_subprogram, DW_AT_name("profile_getCPUcycleCount")
	.dwattr $C$DW$125, DW_AT_low_pc(_profile_getCPUcycleCount)
	.dwattr $C$DW$125, DW_AT_high_pc(0x00)
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_profile_getCPUcycleCount")
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$125, DW_AT_TI_begin_file("../../../../../../../ti/mas/sdk/src/c55/profile.h")
	.dwattr $C$DW$125, DW_AT_TI_begin_line(0x43)
	.dwattr $C$DW$125, DW_AT_TI_begin_column(0x15)
	.dwattr $C$DW$125, DW_AT_TI_max_frame_size(0x01)
	.dwpsn	file "../../../../../../../ti/mas/sdk/src/c55/profile.h",line 68,column 1,is_stmt,address _profile_getCPUcycleCount

	.dwfde $C$DW$CIE, _profile_getCPUcycleCount
;----------------------------------------------------------------------
;  67 | static inline tlong profile_getCPUcycleCount(void)                     
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: profile_getCPUcycleCount                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AR3,XAR3,SP,CARRY,M40,SATA,SATD,RDM,FRCT,    *
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 1 word                                               *
;*                        (1 return address/alignment)                         *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_profile_getCPUcycleCount:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
	.dwpsn	file "../../../../../../../ti/mas/sdk/src/c55/profile.h",line 69,column 3,is_stmt
;----------------------------------------------------------------------
;  69 | return ((tlong) sdk_PROFILE_TDDR * (sdk_PROFILE_PRD - C55X__TIM));     
;----------------------------------------------------------------------
        XAR3 = #65536 ; |69| 
        AC0 = XAR3
        AC0 = AC0 - uns(*port(#4096)) ; |69| 
        AC0 = AC0 << #4 ; |69| 
$C$DW$126	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$126, DW_AT_low_pc(0x00)
	.dwattr $C$DW$126, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$125, DW_AT_TI_end_file("../../../../../../../ti/mas/sdk/src/c55/profile.h")
	.dwattr $C$DW$125, DW_AT_TI_end_line(0x46)
	.dwattr $C$DW$125, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$125

	.sect	".text"

$C$DW$127	.dwtag  DW_TAG_subprogram, DW_AT_name("profile_closeCycleProfiling")
	.dwattr $C$DW$127, DW_AT_low_pc(_profile_closeCycleProfiling)
	.dwattr $C$DW$127, DW_AT_high_pc(0x00)
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_profile_closeCycleProfiling")
	.dwattr $C$DW$127, DW_AT_TI_begin_file("../../../../../../../ti/mas/sdk/src/c55/profile.h")
	.dwattr $C$DW$127, DW_AT_TI_begin_line(0x48)
	.dwattr $C$DW$127, DW_AT_TI_begin_column(0x14)
	.dwattr $C$DW$127, DW_AT_TI_max_frame_size(0x01)
	.dwpsn	file "../../../../../../../ti/mas/sdk/src/c55/profile.h",line 73,column 1,is_stmt,address _profile_closeCycleProfiling

	.dwfde $C$DW$CIE, _profile_closeCycleProfiling
;----------------------------------------------------------------------
;  72 | static inline void profile_closeCycleProfiling(void)                   
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: profile_closeCycleProfiling                                  *
;*                                                                             *
;*   Function Uses Regs : SP,M40,SATA,SATD,RDM,FRCT,SMUL                       *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 1 word                                               *
;*                        (1 return address/alignment)                         *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_profile_closeCycleProfiling:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
	.dwpsn	file "../../../../../../../ti/mas/sdk/src/c55/profile.h",line 74,column 3,is_stmt
;----------------------------------------------------------------------
;  74 | C55X__TCR |=  (1<<C55X__TSS);                                          
;----------------------------------------------------------------------
        *port(#4098) = *port(#4098) | #0x0010 ; |74| 
$C$DW$128	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$128, DW_AT_low_pc(0x00)
	.dwattr $C$DW$128, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$127, DW_AT_TI_end_file("../../../../../../../ti/mas/sdk/src/c55/profile.h")
	.dwattr $C$DW$127, DW_AT_TI_end_line(0x4b)
	.dwattr $C$DW$127, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$127

	.sect	".text"

$C$DW$129	.dwtag  DW_TAG_subprogram, DW_AT_name("memarchcfg_cacheEnable")
	.dwattr $C$DW$129, DW_AT_low_pc(_memarchcfg_cacheEnable)
	.dwattr $C$DW$129, DW_AT_high_pc(0x00)
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_memarchcfg_cacheEnable")
	.dwattr $C$DW$129, DW_AT_TI_begin_file("../../../../../../../ti/mas/sdk/src/c55/memArchCfg.h")
	.dwattr $C$DW$129, DW_AT_TI_begin_line(0x06)
	.dwattr $C$DW$129, DW_AT_TI_begin_column(0x14)
	.dwattr $C$DW$129, DW_AT_TI_max_frame_size(0x01)
	.dwpsn	file "../../../../../../../ti/mas/sdk/src/c55/memArchCfg.h",line 7,column 1,is_stmt,address _memarchcfg_cacheEnable

	.dwfde $C$DW$CIE, _memarchcfg_cacheEnable
;----------------------------------------------------------------------
;   6 | static inline void memarchcfg_cacheEnable(void)                        
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: memarchcfg_cacheEnable                                       *
;*                                                                             *
;*   Function Uses Regs : SP,M40,SATA,SATD,RDM,FRCT,SMUL                       *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 1 word                                               *
;*                        (1 return address/alignment)                         *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_memarchcfg_cacheEnable:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
	.dwpsn	file "../../../../../../../ti/mas/sdk/src/c55/memArchCfg.h",line 8,column 5,is_stmt
;----------------------------------------------------------------------
;   8 | *((ioport volatile unsigned int *)0x1400) = 0xCBFF; /* GCR */          
;----------------------------------------------------------------------
        *port(#5120) = #52223 ; |8| 
	.dwpsn	file "../../../../../../../ti/mas/sdk/src/c55/memArchCfg.h",line 9,column 5,is_stmt
;----------------------------------------------------------------------
;   9 | *((ioport volatile unsigned int *)0x1403) = 0x000F; /* NWCR */         
;----------------------------------------------------------------------
        *port(#5123) = #15 ; |9| 
	.dwpsn	file "../../../../../../../ti/mas/sdk/src/c55/memArchCfg.h",line 10,column 5,is_stmt
;----------------------------------------------------------------------
;  10 | *((ioport volatile unsigned int *)0x1405) = 0x0000; /* RCR1 */         
;----------------------------------------------------------------------
        *port(#5125) = #0 ; |10| 
	.dwpsn	file "../../../../../../../ti/mas/sdk/src/c55/memArchCfg.h",line 12,column 5,is_stmt
;----------------------------------------------------------------------
;  12 | ST3 |= 0x2000;   /* Cache clear */                                     
;----------------------------------------------------------------------
        *(#4) = *(#4) | #0x2000 ; |12| 
	.dwpsn	file "../../../../../../../ti/mas/sdk/src/c55/memArchCfg.h",line 13,column 5,is_stmt
;----------------------------------------------------------------------
;  13 | ST3 &= 0xdfff;                                                         
;----------------------------------------------------------------------
        *(#4) = *(#4) & #0xdfff ; |13| 
	.dwpsn	file "../../../../../../../ti/mas/sdk/src/c55/memArchCfg.h",line 14,column 5,is_stmt
;----------------------------------------------------------------------
;  14 | ST3 |= 0x4000;   /* Cache Enable */                                    
;----------------------------------------------------------------------
        *(#4) = *(#4) | #0x4000 ; |14| 
$C$DW$130	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$130, DW_AT_low_pc(0x00)
	.dwattr $C$DW$130, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$129, DW_AT_TI_end_file("../../../../../../../ti/mas/sdk/src/c55/memArchCfg.h")
	.dwattr $C$DW$129, DW_AT_TI_end_line(0x0f)
	.dwattr $C$DW$129, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$129

	.sect	".text"

$C$DW$131	.dwtag  DW_TAG_subprogram, DW_AT_name("memarchcfg_cacheFlush")
	.dwattr $C$DW$131, DW_AT_low_pc(_memarchcfg_cacheFlush)
	.dwattr $C$DW$131, DW_AT_high_pc(0x00)
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("_memarchcfg_cacheFlush")
	.dwattr $C$DW$131, DW_AT_TI_begin_file("../../../../../../../ti/mas/sdk/src/c55/memArchCfg.h")
	.dwattr $C$DW$131, DW_AT_TI_begin_line(0x11)
	.dwattr $C$DW$131, DW_AT_TI_begin_column(0x14)
	.dwattr $C$DW$131, DW_AT_TI_max_frame_size(0x01)
	.dwpsn	file "../../../../../../../ti/mas/sdk/src/c55/memArchCfg.h",line 18,column 1,is_stmt,address _memarchcfg_cacheFlush

	.dwfde $C$DW$CIE, _memarchcfg_cacheFlush
;----------------------------------------------------------------------
;  17 | static inline void memarchcfg_cacheFlush(void)                         
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: memarchcfg_cacheFlush                                        *
;*                                                                             *
;*   Function Uses Regs : SP,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 1 word                                               *
;*                        (1 return address/alignment)                         *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_memarchcfg_cacheFlush:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
	.dwpsn	file "../../../../../../../ti/mas/sdk/src/c55/memArchCfg.h",line 20,column 3,is_stmt
;----------------------------------------------------------------------
;  20 | ST3 |= 0x2000;  /* Cache clear */                                      
;----------------------------------------------------------------------
        *(#4) = *(#4) | #0x2000 ; |20| 
        nop
        nop
        nop
	.dwpsn	file "../../../../../../../ti/mas/sdk/src/c55/memArchCfg.h",line 22,column 3,is_stmt
;----------------------------------------------------------------------
;  22 | while (ST3 & 0x2000);                                                  
;----------------------------------------------------------------------
        TC1 = bit(*(#4),#13) ; |22| 
        if (!TC1) goto $C$L2 ; |22| 
                                        ; branchcc occurs ; |22| 
$C$L1:    
$C$DW$L$_memarchcfg_cacheFlush$2$B:
        TC1 = bit(*(#4),#13) ; |22| 
        if (TC1) goto $C$L1 ; |22| 
                                        ; branchcc occurs ; |22| 
$C$DW$L$_memarchcfg_cacheFlush$2$E:
$C$L2:    
$C$DW$132	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$132, DW_AT_low_pc(0x00)
	.dwattr $C$DW$132, DW_AT_TI_return
        return
                                        ; return occurs

$C$DW$133	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$133, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\cid\test\ccsProjects\test_rel_c5510_C55L_COFF\Debug\cidsim.asm:$C$L1:1:1373047874")
	.dwattr $C$DW$133, DW_AT_TI_begin_file("../../../../../../../ti/mas/sdk/src/c55/memArchCfg.h")
	.dwattr $C$DW$133, DW_AT_TI_begin_line(0x16)
	.dwattr $C$DW$133, DW_AT_TI_end_line(0x16)
$C$DW$134	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$134, DW_AT_low_pc($C$DW$L$_memarchcfg_cacheFlush$2$B)
	.dwattr $C$DW$134, DW_AT_high_pc($C$DW$L$_memarchcfg_cacheFlush$2$E)
	.dwendtag $C$DW$133

	.dwattr $C$DW$131, DW_AT_TI_end_file("../../../../../../../ti/mas/sdk/src/c55/memArchCfg.h")
	.dwattr $C$DW$131, DW_AT_TI_end_line(0x17)
	.dwattr $C$DW$131, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$131

	.sect	".text"

$C$DW$135	.dwtag  DW_TAG_subprogram, DW_AT_name("cidsim_profile_enable")
	.dwattr $C$DW$135, DW_AT_low_pc(_cidsim_profile_enable)
	.dwattr $C$DW$135, DW_AT_high_pc(0x00)
	.dwattr $C$DW$135, DW_AT_TI_symbol_name("_cidsim_profile_enable")
	.dwattr $C$DW$135, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$135, DW_AT_TI_begin_line(0xb6)
	.dwattr $C$DW$135, DW_AT_TI_begin_column(0x14)
	.dwattr $C$DW$135, DW_AT_TI_max_frame_size(0x01)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 183,column 1,is_stmt,address _cidsim_profile_enable

	.dwfde $C$DW$CIE, _cidsim_profile_enable
;----------------------------------------------------------------------
; 182 | static inline void cidsim_profile_enable (void)                        
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: cidsim_profile_enable                                        *
;*                                                                             *
;*   Function Uses Regs : SP,M40,SATA,SATD,RDM,FRCT,SMUL                       *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 1 word                                               *
;*                        (1 return address/alignment)                         *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_cidsim_profile_enable:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 184,column 3,is_stmt
;----------------------------------------------------------------------
; 184 | cidProfile.enabled = TRUE;                                             
;----------------------------------------------------------------------
        *(#(_cidProfile+3)) = #1 ; |184| 
$C$DW$136	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$136, DW_AT_low_pc(0x00)
	.dwattr $C$DW$136, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$135, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$135, DW_AT_TI_end_line(0xb9)
	.dwattr $C$DW$135, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$135

	.sect	".text"

$C$DW$137	.dwtag  DW_TAG_subprogram, DW_AT_name("cidsim_profile_disable")
	.dwattr $C$DW$137, DW_AT_low_pc(_cidsim_profile_disable)
	.dwattr $C$DW$137, DW_AT_high_pc(0x00)
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("_cidsim_profile_disable")
	.dwattr $C$DW$137, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$137, DW_AT_TI_begin_line(0xbc)
	.dwattr $C$DW$137, DW_AT_TI_begin_column(0x14)
	.dwattr $C$DW$137, DW_AT_TI_max_frame_size(0x01)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 189,column 1,is_stmt,address _cidsim_profile_disable

	.dwfde $C$DW$CIE, _cidsim_profile_disable
;----------------------------------------------------------------------
; 188 | static inline void cidsim_profile_disable (void)                       
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: cidsim_profile_disable                                       *
;*                                                                             *
;*   Function Uses Regs : SP,M40,SATA,SATD,RDM,FRCT,SMUL                       *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 1 word                                               *
;*                        (1 return address/alignment)                         *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_cidsim_profile_disable:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 190,column 3,is_stmt
;----------------------------------------------------------------------
; 190 | cidProfile.enabled = FALSE;                                            
;----------------------------------------------------------------------
        *(#(_cidProfile+3)) = #0 ; |190| 
$C$DW$138	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$138, DW_AT_low_pc(0x00)
	.dwattr $C$DW$138, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$137, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$137, DW_AT_TI_end_line(0xbf)
	.dwattr $C$DW$137, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$137

	.sect	".text"

$C$DW$139	.dwtag  DW_TAG_subprogram, DW_AT_name("cidsim_profile_start")
	.dwattr $C$DW$139, DW_AT_low_pc(_cidsim_profile_start)
	.dwattr $C$DW$139, DW_AT_high_pc(0x00)
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_cidsim_profile_start")
	.dwattr $C$DW$139, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$139, DW_AT_TI_begin_line(0xc2)
	.dwattr $C$DW$139, DW_AT_TI_begin_column(0x14)
	.dwattr $C$DW$139, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 195,column 1,is_stmt,address _cidsim_profile_start

	.dwfde $C$DW$CIE, _cidsim_profile_start
$C$DW$140	.dwtag  DW_TAG_formal_parameter, DW_AT_name("code")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_code")
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$140, DW_AT_location[DW_OP_reg12]
;----------------------------------------------------------------------
; 194 | static inline void cidsim_profile_start (tint code)                    
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: cidsim_profile_start                                         *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR1,AR3,XAR3,SP,CARRY,M40,SATA,SATD,RDM,  *
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 2 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (1 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_cidsim_profile_start:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-1
	.dwcfi	cfa_offset, 2
$C$DW$141	.dwtag  DW_TAG_variable, DW_AT_name("code")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("_code")
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$141, DW_AT_location[DW_OP_bregx 0x24 0]
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 197,column 3,is_stmt
;----------------------------------------------------------------------
; 197 | if (cidProfile.use_cache) {                                            
;----------------------------------------------------------------------
        AR1 = *(#(_cidProfile+2)) ; |197| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 195,column 1,is_stmt
        *SP(#0) = T0 ; |195| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 197,column 3,is_stmt
        if (AR1 == #0) goto $C$L3 ; |197| 
                                        ; branchcc occurs ; |197| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 198,column 5,is_stmt
;----------------------------------------------------------------------
; 198 | memarchcfg_cacheFlush ();                                              
;----------------------------------------------------------------------
$C$DW$142	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$142, DW_AT_low_pc(0x00)
	.dwattr $C$DW$142, DW_AT_name("_memarchcfg_cacheFlush")
	.dwattr $C$DW$142, DW_AT_TI_call
        call #_memarchcfg_cacheFlush ; |198| 
                                        ; call occurs [#_memarchcfg_cacheFlush] ; |198| 
$C$L3:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 202,column 3,is_stmt
;----------------------------------------------------------------------
; 202 | cidProfile.profile_cycles[code] = 0L;                                  
;----------------------------------------------------------------------
        T0 = *SP(#0) ; |202| 
        T0 = T0 <<< #1 ; |202| 
        AC0 = #0  ; |202| 
        XAR3 = #(_cidProfile+8) ; |202| 
        dbl(*AR3(T0)) = AC0 ; |202| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 203,column 3,is_stmt
;----------------------------------------------------------------------
; 203 | cidProfile.ignore_cycles        = 0L;                                  
;----------------------------------------------------------------------
        dbl(*(#(_cidProfile+16))) = AC0 ; |203| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 206,column 3,is_stmt
;----------------------------------------------------------------------
; 206 | cidProfile.profile_start = profile_getCPUcycleCount ();                
;----------------------------------------------------------------------
$C$DW$143	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$143, DW_AT_low_pc(0x00)
	.dwattr $C$DW$143, DW_AT_name("_profile_getCPUcycleCount")
	.dwattr $C$DW$143, DW_AT_TI_call
        call #_profile_getCPUcycleCount ; |206| 
                                        ; call occurs [#_profile_getCPUcycleCount] ; |206| 
        SP = SP + #1
        dbl(*(#(_cidProfile+6))) = AC0 ; |206| 
	.dwcfi	cfa_offset, 1
$C$DW$144	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$144, DW_AT_low_pc(0x00)
	.dwattr $C$DW$144, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$139, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$139, DW_AT_TI_end_line(0xcf)
	.dwattr $C$DW$139, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$139

	.sect	".text"

$C$DW$145	.dwtag  DW_TAG_subprogram, DW_AT_name("cidsim_profile_stop")
	.dwattr $C$DW$145, DW_AT_low_pc(_cidsim_profile_stop)
	.dwattr $C$DW$145, DW_AT_high_pc(0x00)
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_cidsim_profile_stop")
	.dwattr $C$DW$145, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$145, DW_AT_TI_begin_line(0xd2)
	.dwattr $C$DW$145, DW_AT_TI_begin_column(0x14)
	.dwattr $C$DW$145, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 211,column 1,is_stmt,address _cidsim_profile_stop

	.dwfde $C$DW$CIE, _cidsim_profile_stop
$C$DW$146	.dwtag  DW_TAG_formal_parameter, DW_AT_name("code")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("_code")
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$146, DW_AT_location[DW_OP_reg12]
;----------------------------------------------------------------------
; 210 | static inline void cidsim_profile_stop (tint code)                     
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: cidsim_profile_stop                                          *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR3,XAR3,SP,CARRY,M40,SATA,SATD,RDM,FRCT, *
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_cidsim_profile_stop:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-5
	.dwcfi	cfa_offset, 6
$C$DW$147	.dwtag  DW_TAG_variable, DW_AT_name("code")
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("_code")
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$147, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$148	.dwtag  DW_TAG_variable, DW_AT_name("count")
	.dwattr $C$DW$148, DW_AT_TI_symbol_name("_count")
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$148, DW_AT_location[DW_OP_bregx 0x24 2]
        *SP(#0) = T0 ; |211| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 213,column 9,is_stmt
;----------------------------------------------------------------------
; 213 | tlong count = profile_getCPUcycleCount();                              
;----------------------------------------------------------------------
$C$DW$149	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$149, DW_AT_low_pc(0x00)
	.dwattr $C$DW$149, DW_AT_name("_profile_getCPUcycleCount")
	.dwattr $C$DW$149, DW_AT_TI_call
        call #_profile_getCPUcycleCount ; |213| 
                                        ; call occurs [#_profile_getCPUcycleCount] ; |213| 
        dbl(*SP(#2)) = AC0 ; |213| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 216,column 3,is_stmt
;----------------------------------------------------------------------
; 216 | count -= cidProfile.profile_start;                                     
;----------------------------------------------------------------------
        AC0 = dbl(*(#(_cidProfile+6))) ; |216| 
        AC0 = dbl(*SP(#2)) - AC0 ; |216| 
        dbl(*SP(#2)) = AC0 ; |216| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 217,column 3,is_stmt
;----------------------------------------------------------------------
; 217 | if (count < 0) {                                                       
;----------------------------------------------------------------------
        AC0 = dbl(*SP(#2)) ; |217| 
        if (AC0 >= #0) goto $C$L4 ; |217| 
                                        ; branchcc occurs ; |217| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 218,column 5,is_stmt
;----------------------------------------------------------------------
; 218 | count += sdk_PROFILE_MAXCNT;                                           
;----------------------------------------------------------------------
        XAR3 = #1048576 ; |218| 
        AC0 = XAR3
        AC0 = AC0 + dbl(*SP(#2)) ; |218| 
        dbl(*SP(#2)) = AC0 ; |218| 
$C$L4:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 222,column 3,is_stmt
;----------------------------------------------------------------------
; 222 | cidProfile.profile_cycles[code] = (count - cidProfile.profile_ovrhd - c
;     | idProfile.ignore_cycles);                                              
;----------------------------------------------------------------------
        T0 = *SP(#0) ; |222| 
        T0 = T0 <<< #1 ; |222| 
        AC0 = dbl(*(#(_cidProfile+4))) ; |222| 
        AC0 = dbl(*SP(#2)) - AC0 ; |222| 
        AC0 = AC0 - dbl(*(#(_cidProfile+16))) ; |222| 
        XAR3 = #(_cidProfile+8) ; |222| 
        dbl(*AR3(T0)) = AC0 ; |222| 
        SP = SP + #5
	.dwcfi	cfa_offset, 1
$C$DW$150	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$150, DW_AT_low_pc(0x00)
	.dwattr $C$DW$150, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$145, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$145, DW_AT_TI_end_line(0xdf)
	.dwattr $C$DW$145, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$145

	.sect	".text"

$C$DW$151	.dwtag  DW_TAG_subprogram, DW_AT_name("cidsim_ignore_start")
	.dwattr $C$DW$151, DW_AT_low_pc(_cidsim_ignore_start)
	.dwattr $C$DW$151, DW_AT_high_pc(0x00)
	.dwattr $C$DW$151, DW_AT_TI_symbol_name("_cidsim_ignore_start")
	.dwattr $C$DW$151, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$151, DW_AT_TI_begin_line(0xe2)
	.dwattr $C$DW$151, DW_AT_TI_begin_column(0x14)
	.dwattr $C$DW$151, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 227,column 1,is_stmt,address _cidsim_ignore_start

	.dwfde $C$DW$CIE, _cidsim_ignore_start
;----------------------------------------------------------------------
; 226 | static inline void cidsim_ignore_start (void)                          
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: cidsim_ignore_start                                          *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,SP,M40,SATA,SATD,RDM,FRCT,SMUL               *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 2 words                                              *
;*                        (2 return address/alignment)                         *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_cidsim_ignore_start:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-1
	.dwcfi	cfa_offset, 2
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 229,column 3,is_stmt
;----------------------------------------------------------------------
; 229 | cidProfile.ignore_start = profile_getCPUcycleCount ();                 
;----------------------------------------------------------------------
$C$DW$152	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$152, DW_AT_low_pc(0x00)
	.dwattr $C$DW$152, DW_AT_name("_profile_getCPUcycleCount")
	.dwattr $C$DW$152, DW_AT_TI_call
        call #_profile_getCPUcycleCount ; |229| 
                                        ; call occurs [#_profile_getCPUcycleCount] ; |229| 
        SP = SP + #1
        dbl(*(#(_cidProfile+14))) = AC0 ; |229| 
	.dwcfi	cfa_offset, 1
$C$DW$153	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$153, DW_AT_low_pc(0x00)
	.dwattr $C$DW$153, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$151, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$151, DW_AT_TI_end_line(0xe6)
	.dwattr $C$DW$151, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$151

	.sect	".text"

$C$DW$154	.dwtag  DW_TAG_subprogram, DW_AT_name("cidsim_ignore_stop")
	.dwattr $C$DW$154, DW_AT_low_pc(_cidsim_ignore_stop)
	.dwattr $C$DW$154, DW_AT_high_pc(0x00)
	.dwattr $C$DW$154, DW_AT_TI_symbol_name("_cidsim_ignore_stop")
	.dwattr $C$DW$154, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$154, DW_AT_TI_begin_line(0xe9)
	.dwattr $C$DW$154, DW_AT_TI_begin_column(0x14)
	.dwattr $C$DW$154, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 234,column 1,is_stmt,address _cidsim_ignore_stop

	.dwfde $C$DW$CIE, _cidsim_ignore_stop
;----------------------------------------------------------------------
; 233 | static inline void cidsim_ignore_stop (void)                           
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: cidsim_ignore_stop                                           *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AR3,XAR3,SP,CARRY,M40,SATA,SATD,RDM,FRCT,    *
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_cidsim_ignore_stop:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-3
	.dwcfi	cfa_offset, 4
$C$DW$155	.dwtag  DW_TAG_variable, DW_AT_name("count")
	.dwattr $C$DW$155, DW_AT_TI_symbol_name("_count")
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$155, DW_AT_location[DW_OP_bregx 0x24 0]
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 236,column 9,is_stmt
;----------------------------------------------------------------------
; 236 | tlong count = profile_getCPUcycleCount();                              
;----------------------------------------------------------------------
$C$DW$156	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$156, DW_AT_low_pc(0x00)
	.dwattr $C$DW$156, DW_AT_name("_profile_getCPUcycleCount")
	.dwattr $C$DW$156, DW_AT_TI_call
        call #_profile_getCPUcycleCount ; |236| 
                                        ; call occurs [#_profile_getCPUcycleCount] ; |236| 
        dbl(*SP(#0)) = AC0 ; |236| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 239,column 3,is_stmt
;----------------------------------------------------------------------
; 239 | count -= cidProfile.ignore_start;                                      
;----------------------------------------------------------------------
        AC0 = dbl(*(#(_cidProfile+14))) ; |239| 
        AC0 = dbl(*SP(#0)) - AC0 ; |239| 
        dbl(*SP(#0)) = AC0 ; |239| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 240,column 3,is_stmt
;----------------------------------------------------------------------
; 240 | if (count < 0) {                                                       
;----------------------------------------------------------------------
        AC0 = dbl(*SP(#0)) ; |240| 
        if (AC0 >= #0) goto $C$L5 ; |240| 
                                        ; branchcc occurs ; |240| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 241,column 5,is_stmt
;----------------------------------------------------------------------
; 241 | count += sdk_PROFILE_MAXCNT;                                           
;----------------------------------------------------------------------
        XAR3 = #1048576 ; |241| 
        AC0 = XAR3
        AC0 = AC0 + dbl(*SP(#0)) ; |241| 
        dbl(*SP(#0)) = AC0 ; |241| 
$C$L5:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 245,column 3,is_stmt
;----------------------------------------------------------------------
; 245 | cidProfile.ignore_cycles += (count - cidProfile.ignore_ovrhd);         
;----------------------------------------------------------------------
        AC0 = dbl(*SP(#0)) ; |245| 
        AC0 = AC0 + dbl(*(#(_cidProfile+16))) ; |245| 
        AC0 = AC0 - dbl(*(#(_cidProfile+12))) ; |245| 
        SP = SP + #3
        dbl(*(#(_cidProfile+16))) = AC0 ; |245| 
	.dwcfi	cfa_offset, 1
$C$DW$157	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$157, DW_AT_low_pc(0x00)
	.dwattr $C$DW$157, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$154, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$154, DW_AT_TI_end_line(0xf6)
	.dwattr $C$DW$154, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$154

	.sect	".text"

$C$DW$158	.dwtag  DW_TAG_subprogram, DW_AT_name("siuDebugInternal")
	.dwattr $C$DW$158, DW_AT_low_pc(_siuDebugInternal)
	.dwattr $C$DW$158, DW_AT_high_pc(0x00)
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("_siuDebugInternal")
	.dwattr $C$DW$158, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$158, DW_AT_TI_begin_line(0x1a6)
	.dwattr $C$DW$158, DW_AT_TI_begin_column(0x14)
	.dwattr $C$DW$158, DW_AT_TI_max_frame_size(0x12)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 423,column 1,is_stmt,address _siuDebugInternal

	.dwfde $C$DW$CIE, _siuDebugInternal
$C$DW$159	.dwtag  DW_TAG_formal_parameter, DW_AT_name("id")
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("_id")
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$159, DW_AT_location[DW_OP_reg12]
$C$DW$160	.dwtag  DW_TAG_formal_parameter, DW_AT_name("str")
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("_str")
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$160, DW_AT_location[DW_OP_reg17]
;----------------------------------------------------------------------
; 422 | static inline void siuDebugInternal (tuint id, char *str)              
; 424 | tint i;                                                                
; 425 | char *src;                                                             
; 426 | char *dst;                                                             
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: siuDebugInternal                                             *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR1,AR2,XAR2,AR3,XAR3,SP,CARRY,TC1,M40,  *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 18 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (6 function parameters)                              *
;*                        (10 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_siuDebugInternal:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-17
	.dwcfi	cfa_offset, 18
$C$DW$161	.dwtag  DW_TAG_variable, DW_AT_name("id")
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("_id")
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$161, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$162	.dwtag  DW_TAG_variable, DW_AT_name("str")
	.dwattr $C$DW$162, DW_AT_TI_symbol_name("_str")
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$162, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$163	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$163, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$163, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$164	.dwtag  DW_TAG_variable, DW_AT_name("src")
	.dwattr $C$DW$164, DW_AT_TI_symbol_name("_src")
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$164, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$165	.dwtag  DW_TAG_variable, DW_AT_name("dst")
	.dwattr $C$DW$165, DW_AT_TI_symbol_name("_dst")
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$165, DW_AT_location[DW_OP_bregx 0x24 14]
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 428,column 3,is_stmt
;----------------------------------------------------------------------
; 428 | printf("ID=%d %s\n", id, str);                                         
;----------------------------------------------------------------------
        XAR3 = #$C$FSL1 ; |428| 
        dbl(*SP(#8)) = XAR0
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 423,column 1,is_stmt
        *SP(#6) = T0 ; |423| 
        dbl(*SP(#0)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 428,column 3,is_stmt
        AR1 = *SP(#6) ; |428| 
        *SP(#2) = AR1 ; |428| 
        XAR3 = dbl(*SP(#8))
        dbl(*SP(#4)) = XAR3
$C$DW$166	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$166, DW_AT_low_pc(0x00)
	.dwattr $C$DW$166, DW_AT_name("_printf")
	.dwattr $C$DW$166, DW_AT_TI_call
        call #_printf ; |428| 
                                        ; call occurs [#_printf] ; |428| 
        XAR3 = dbl(*SP(#8))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 431,column 3,is_stmt
;----------------------------------------------------------------------
; 431 | siu_dbg_id = id;                                                       
; 432 | src = str;                                                             
; 433 | dst = (char*) &siu_dbg_message[0];                                     
;----------------------------------------------------------------------
        AR1 = *SP(#6) ; |431| 
        dbl(*SP(#12)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 434,column 13,is_stmt
;----------------------------------------------------------------------
; 434 | for (i=0; i<SIU_DBGMSG_SIZE; i++) {                                    
;----------------------------------------------------------------------
        AR2 = #256 ; |434| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 431,column 3,is_stmt
        *(#_siu_dbg_id) = AR1 ; |431| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 433,column 3,is_stmt
        XAR3 = #_siu_dbg_message ; |433| 
        dbl(*SP(#14)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 434,column 8,is_stmt
        *SP(#10) = #0 ; |434| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 434,column 13,is_stmt
        AR1 = *SP(#10) ; |434| 
        TC1 = (AR1 >= AR2) ; |434| 
        if (TC1) goto $C$L7 ; |434| 
                                        ; branchcc occurs ; |434| 
$C$L6:    
$C$DW$L$_siuDebugInternal$2$B:
        XAR3 = dbl(*SP(#12))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 435,column 5,is_stmt
;----------------------------------------------------------------------
; 435 | *dst++ = *src++;                                                       
;----------------------------------------------------------------------
        AR1 = *AR3+ ; |435| 
        dbl(*SP(#12)) = XAR3
        XAR2 = dbl(*SP(#14))
        XAR3 = mar(*AR2)
        mar(*AR3+)
        dbl(*SP(#14)) = XAR3
        *AR2 = AR1 ; |435| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 434,column 13,is_stmt
        AR2 = #256 ; |434| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 434,column 32,is_stmt
        *SP(#10) = *SP(#10) + #1 ; |434| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 434,column 13,is_stmt
        AR1 = *SP(#10) ; |434| 
        TC1 = (AR1 < AR2) ; |434| 
        if (TC1) goto $C$L6 ; |434| 
                                        ; branchcc occurs ; |434| 
$C$DW$L$_siuDebugInternal$2$E:
$C$L7:    
        SP = SP + #17
	.dwcfi	cfa_offset, 1
$C$DW$167	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$167, DW_AT_low_pc(0x00)
	.dwattr $C$DW$167, DW_AT_TI_return
        return
                                        ; return occurs

$C$DW$168	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$168, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\cid\test\ccsProjects\test_rel_c5510_C55L_COFF\Debug\cidsim.asm:$C$L6:1:1373047874")
	.dwattr $C$DW$168, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$168, DW_AT_TI_begin_line(0x1b2)
	.dwattr $C$DW$168, DW_AT_TI_end_line(0x1b4)
$C$DW$169	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$169, DW_AT_low_pc($C$DW$L$_siuDebugInternal$2$B)
	.dwattr $C$DW$169, DW_AT_high_pc($C$DW$L$_siuDebugInternal$2$E)
	.dwendtag $C$DW$168

	.dwattr $C$DW$158, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$158, DW_AT_TI_end_line(0x1b5)
	.dwattr $C$DW$158, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$158

	.sect	".text"
	.global	_siuException

$C$DW$170	.dwtag  DW_TAG_subprogram, DW_AT_name("siuException")
	.dwattr $C$DW$170, DW_AT_low_pc(_siuException)
	.dwattr $C$DW$170, DW_AT_high_pc(0x00)
	.dwattr $C$DW$170, DW_AT_TI_symbol_name("_siuException")
	.dwattr $C$DW$170, DW_AT_external
	.dwattr $C$DW$170, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$170, DW_AT_TI_begin_line(0x1b7)
	.dwattr $C$DW$170, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$170, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 440,column 1,is_stmt,address _siuException

	.dwfde $C$DW$CIE, _siuException
$C$DW$171	.dwtag  DW_TAG_formal_parameter, DW_AT_name("id")
	.dwattr $C$DW$171, DW_AT_TI_symbol_name("_id")
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$171, DW_AT_location[DW_OP_reg12]
$C$DW$172	.dwtag  DW_TAG_formal_parameter, DW_AT_name("s")
	.dwattr $C$DW$172, DW_AT_TI_symbol_name("_s")
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$172, DW_AT_location[DW_OP_reg17]
;----------------------------------------------------------------------
; 439 | void siuException (tuint id, char *s)                                  
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: siuException                                                 *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR1,SP,M40,SATA,SATD,RDM,FRCT,SMUL       *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_siuException:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-5
	.dwcfi	cfa_offset, 6
$C$DW$173	.dwtag  DW_TAG_variable, DW_AT_name("id")
	.dwattr $C$DW$173, DW_AT_TI_symbol_name("_id")
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$173, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$174	.dwtag  DW_TAG_variable, DW_AT_name("s")
	.dwattr $C$DW$174, DW_AT_TI_symbol_name("_s")
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$174, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$175	.dwtag  DW_TAG_variable, DW_AT_name("exit_code")
	.dwattr $C$DW$175, DW_AT_TI_symbol_name("_exit_code")
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$189)
	.dwattr $C$DW$175, DW_AT_location[DW_OP_bregx 0x24 4]
        dbl(*SP(#2)) = XAR0
        *SP(#0) = T0 ; |440| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 441,column 17,is_stmt
;----------------------------------------------------------------------
; 441 | volatile tint exit_code = 0;                                           
;----------------------------------------------------------------------
        *SP(#4) = #0 ; |441| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 442,column 3,is_stmt
;----------------------------------------------------------------------
; 442 | siuDebugInternal (id, s);                                              
; 444 | loop {                                                                 
;----------------------------------------------------------------------
        T0 = *SP(#0) ; |442| 
        XAR0 = dbl(*SP(#2))
$C$DW$176	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$176, DW_AT_low_pc(0x00)
	.dwattr $C$DW$176, DW_AT_name("_siuDebugInternal")
	.dwattr $C$DW$176, DW_AT_TI_call
        call #_siuDebugInternal ; |442| 
                                        ; call occurs [#_siuDebugInternal] ; |442| 
$C$L8:    
$C$DW$L$_siuException$2$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 445,column 5,is_stmt
;----------------------------------------------------------------------
; 445 | if(exit_code)                                                          
; 446 |   break;                                                               
; 447 | };     /* loop forever */                                              
;----------------------------------------------------------------------
        AR1 = *SP(#4) ; |445| 
        if (AR1 == #0) goto $C$L8 ; |445| 
                                        ; branchcc occurs ; |445| 
$C$DW$L$_siuException$2$E:
        SP = SP + #5
	.dwcfi	cfa_offset, 1
$C$DW$177	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$177, DW_AT_low_pc(0x00)
	.dwattr $C$DW$177, DW_AT_TI_return
        return
                                        ; return occurs

$C$DW$178	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$178, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\cid\test\ccsProjects\test_rel_c5510_C55L_COFF\Debug\cidsim.asm:$C$L8:1:1373047874")
	.dwattr $C$DW$178, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$178, DW_AT_TI_begin_line(0x1bc)
	.dwattr $C$DW$178, DW_AT_TI_end_line(0x1bf)
$C$DW$179	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$179, DW_AT_low_pc($C$DW$L$_siuException$2$B)
	.dwattr $C$DW$179, DW_AT_high_pc($C$DW$L$_siuException$2$E)
	.dwendtag $C$DW$178

	.dwattr $C$DW$170, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$170, DW_AT_TI_end_line(0x1c0)
	.dwattr $C$DW$170, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$170

	.sect	".text"
	.global	_siuDebugInfo

$C$DW$180	.dwtag  DW_TAG_subprogram, DW_AT_name("siuDebugInfo")
	.dwattr $C$DW$180, DW_AT_low_pc(_siuDebugInfo)
	.dwattr $C$DW$180, DW_AT_high_pc(0x00)
	.dwattr $C$DW$180, DW_AT_TI_symbol_name("_siuDebugInfo")
	.dwattr $C$DW$180, DW_AT_external
	.dwattr $C$DW$180, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$180, DW_AT_TI_begin_line(0x1c7)
	.dwattr $C$DW$180, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$180, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 456,column 57,is_stmt,address _siuDebugInfo

	.dwfde $C$DW$CIE, _siuDebugInfo
$C$DW$181	.dwtag  DW_TAG_formal_parameter, DW_AT_name("moduleID")
	.dwattr $C$DW$181, DW_AT_TI_symbol_name("_moduleID")
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$181, DW_AT_location[DW_OP_reg17]
$C$DW$182	.dwtag  DW_TAG_formal_parameter, DW_AT_name("msgType")
	.dwattr $C$DW$182, DW_AT_TI_symbol_name("_msgType")
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$182, DW_AT_location[DW_OP_reg12]
$C$DW$183	.dwtag  DW_TAG_formal_parameter, DW_AT_name("messageCode")
	.dwattr $C$DW$183, DW_AT_TI_symbol_name("_messageCode")
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$183, DW_AT_location[DW_OP_reg13]
$C$DW$184	.dwtag  DW_TAG_formal_parameter, DW_AT_name("msgLength")
	.dwattr $C$DW$184, DW_AT_TI_symbol_name("_msgLength")
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$184, DW_AT_location[DW_OP_reg18]
$C$DW$185	.dwtag  DW_TAG_formal_parameter, DW_AT_name("messageData")
	.dwattr $C$DW$185, DW_AT_TI_symbol_name("_messageData")
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$185, DW_AT_location[DW_OP_reg21]
;----------------------------------------------------------------------
; 455 | void siuDebugInfo (void * moduleID, tuint msgType, tuint messageCode,  
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: siuDebugInfo                                                 *
;*                                                                             *
;*   Function Uses Regs : T0,T1,AR0,XAR0,AR1,AR2,XAR2,AR3,XAR3,SP,CARRY,TC1,   *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (9 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_siuDebugInfo:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-9
	.dwcfi	cfa_offset, 10
$C$DW$186	.dwtag  DW_TAG_variable, DW_AT_name("moduleID")
	.dwattr $C$DW$186, DW_AT_TI_symbol_name("_moduleID")
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$186, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$187	.dwtag  DW_TAG_variable, DW_AT_name("msgType")
	.dwattr $C$DW$187, DW_AT_TI_symbol_name("_msgType")
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$187, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$188	.dwtag  DW_TAG_variable, DW_AT_name("messageCode")
	.dwattr $C$DW$188, DW_AT_TI_symbol_name("_messageCode")
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$188, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$189	.dwtag  DW_TAG_variable, DW_AT_name("msgLength")
	.dwattr $C$DW$189, DW_AT_TI_symbol_name("_msgLength")
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$189, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$190	.dwtag  DW_TAG_variable, DW_AT_name("messageData")
	.dwattr $C$DW$190, DW_AT_TI_symbol_name("_messageData")
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$190, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$191	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$191, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$191, DW_AT_location[DW_OP_bregx 0x24 8]
        dbl(*SP(#6)) = XAR2
;----------------------------------------------------------------------
; 456 | tuint msgLength, tuint *messageData) {                                 
; 457 | tint i;                                                                
;----------------------------------------------------------------------
        *SP(#4) = AR1 ; |456| 
        *SP(#3) = T1 ; |456| 
        *SP(#2) = T0 ; |456| 
        dbl(*SP(#0)) = XAR0
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 460,column 3,is_stmt
;----------------------------------------------------------------------
; 460 | cidsim_ignore_start();                                                 
;----------------------------------------------------------------------
$C$DW$192	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$192, DW_AT_low_pc(0x00)
	.dwattr $C$DW$192, DW_AT_name("_cidsim_ignore_start")
	.dwattr $C$DW$192, DW_AT_TI_call
        call #_cidsim_ignore_start ; |460| 
                                        ; call occurs [#_cidsim_ignore_start] ; |460| 
        XAR3 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 462,column 3,is_stmt
;----------------------------------------------------------------------
; 462 | glob_flg         = TRUE;                                               
;----------------------------------------------------------------------
        *(#_glob_flg) = #1 ; |462| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 463,column 3,is_stmt
;----------------------------------------------------------------------
; 463 | glob_moduleID    = *((tuint *) moduleID);                              
;----------------------------------------------------------------------
        AR1 = *AR3 ; |463| 
        *(#_glob_moduleID) = AR1 ; |463| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 464,column 3,is_stmt
;----------------------------------------------------------------------
; 464 | glob_msgType     = msgType;                                            
;----------------------------------------------------------------------
        AR1 = *SP(#2) ; |464| 
        *(#_glob_msgType) = AR1 ; |464| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 465,column 3,is_stmt
;----------------------------------------------------------------------
; 465 | glob_messageCode = messageCode;                                        
;----------------------------------------------------------------------
        AR1 = *SP(#3) ; |465| 
        *(#_glob_messageCode) = AR1 ; |465| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 466,column 3,is_stmt
;----------------------------------------------------------------------
; 466 | glob_msgLength   = msgLength;                                          
;----------------------------------------------------------------------
        AR1 = *SP(#4) ; |466| 
        *(#_glob_msgLength) = AR1 ; |466| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 467,column 8,is_stmt
;----------------------------------------------------------------------
; 467 | for (i = 0; i < msgLength; i ++)                                       
;----------------------------------------------------------------------
        *SP(#8) = #0 ; |467| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 467,column 15,is_stmt
        AR2 = *SP(#8) ; |467| 
        AR1 = *SP(#4) ; |467| 
        TC1 = uns(AR2 >= AR1) ; |467| 
        if (TC1) goto $C$L10 ; |467| 
                                        ; branchcc occurs ; |467| 
$C$L9:    
$C$DW$L$_siuDebugInfo$2$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 468,column 5,is_stmt
;----------------------------------------------------------------------
; 468 | glob_msgData[i++] = messageData[i];                                    
;----------------------------------------------------------------------
        T0 = *SP(#8) ; |468| 
        AR1 = T0  ; |468| 
        AR3 = AR1 + #1 ; |468| 
        XAR2 = dbl(*SP(#6))
        *SP(#8) = AR3 ; |468| 
        XAR3 = #_glob_msgData ; |468| 
        mar(AR3 + AR1) ; |468| 
        *AR3 = *AR2(T0) ; |468| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 467,column 30,is_stmt
        *SP(#8) = *SP(#8) + #1 ; |467| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 467,column 15,is_stmt
        AR2 = *SP(#8) ; |467| 
        AR1 = *SP(#4) ; |467| 
        TC1 = uns(AR2 < AR1) ; |467| 
        if (TC1) goto $C$L9 ; |467| 
                                        ; branchcc occurs ; |467| 
$C$DW$L$_siuDebugInfo$2$E:
$C$L10:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 471,column 3,is_stmt
;----------------------------------------------------------------------
; 471 | while(glob_msgLength);                                                 
;----------------------------------------------------------------------
        AR1 = *(#_glob_msgLength) ; |471| 
        if (AR1 == #0) goto $C$L12 ; |471| 
                                        ; branchcc occurs ; |471| 
$C$L11:    
$C$DW$L$_siuDebugInfo$4$B:
        if (AR1 != #0) goto $C$L11 ; |471| 
                                        ; branchcc occurs ; |471| 
$C$DW$L$_siuDebugInfo$4$E:
$C$L12:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 474,column 3,is_stmt
;----------------------------------------------------------------------
; 474 | cidsim_ignore_stop();                                                  
;----------------------------------------------------------------------
$C$DW$193	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$193, DW_AT_low_pc(0x00)
	.dwattr $C$DW$193, DW_AT_name("_cidsim_ignore_stop")
	.dwattr $C$DW$193, DW_AT_TI_call
        call #_cidsim_ignore_stop ; |474| 
                                        ; call occurs [#_cidsim_ignore_stop] ; |474| 
        SP = SP + #9
	.dwcfi	cfa_offset, 1
$C$DW$194	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$194, DW_AT_low_pc(0x00)
	.dwattr $C$DW$194, DW_AT_TI_return
        return
                                        ; return occurs

$C$DW$195	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$195, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\cid\test\ccsProjects\test_rel_c5510_C55L_COFF\Debug\cidsim.asm:$C$L11:1:1373047874")
	.dwattr $C$DW$195, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$195, DW_AT_TI_begin_line(0x1d7)
	.dwattr $C$DW$195, DW_AT_TI_end_line(0x1d7)
$C$DW$196	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$196, DW_AT_low_pc($C$DW$L$_siuDebugInfo$4$B)
	.dwattr $C$DW$196, DW_AT_high_pc($C$DW$L$_siuDebugInfo$4$E)
	.dwendtag $C$DW$195


$C$DW$197	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$197, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\cid\test\ccsProjects\test_rel_c5510_C55L_COFF\Debug\cidsim.asm:$C$L9:1:1373047874")
	.dwattr $C$DW$197, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$197, DW_AT_TI_begin_line(0x1d3)
	.dwattr $C$DW$197, DW_AT_TI_end_line(0x1d4)
$C$DW$198	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$198, DW_AT_low_pc($C$DW$L$_siuDebugInfo$2$B)
	.dwattr $C$DW$198, DW_AT_high_pc($C$DW$L$_siuDebugInfo$2$E)
	.dwendtag $C$DW$197

	.dwattr $C$DW$180, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$180, DW_AT_TI_end_line(0x1db)
	.dwattr $C$DW$180, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$180

	.sect	".text"
	.global	_siu_rx_file

$C$DW$199	.dwtag  DW_TAG_subprogram, DW_AT_name("siu_rx_file")
	.dwattr $C$DW$199, DW_AT_low_pc(_siu_rx_file)
	.dwattr $C$DW$199, DW_AT_high_pc(0x00)
	.dwattr $C$DW$199, DW_AT_TI_symbol_name("_siu_rx_file")
	.dwattr $C$DW$199, DW_AT_external
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$199, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$199, DW_AT_TI_begin_line(0x1de)
	.dwattr $C$DW$199, DW_AT_TI_begin_column(0x0e)
	.dwattr $C$DW$199, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 479,column 1,is_stmt,address _siu_rx_file

	.dwfde $C$DW$CIE, _siu_rx_file
$C$DW$200	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dsc")
	.dwattr $C$DW$200, DW_AT_TI_symbol_name("_dsc")
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$200, DW_AT_location[DW_OP_reg17]
;----------------------------------------------------------------------
; 478 | sgnFileIo_t *siu_rx_file (sgnFileIo_t *dsc)                            
; 480 | #ifndef _HWDKST                                                        
; 481 | asm (" nop");                                                          
; 482 | asm (" nop");                                                          
; 483 | asm (" nop");                                                          
; 484 | asm (" nop");                                                          
; 485 | asm (" nop");                                                          
; 486 | asm (" nop");                                                          
; 487 | #endif                                                                 
; 488 | return (dsc);                                                          
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: siu_rx_file                                                  *
;*                                                                             *
;*   Function Uses Regs : AR0,XAR0,SP,M40,SATA,SATD,RDM,FRCT,SMUL              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_siu_rx_file:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-3
	.dwcfi	cfa_offset, 4
$C$DW$201	.dwtag  DW_TAG_variable, DW_AT_name("dsc")
	.dwattr $C$DW$201, DW_AT_TI_symbol_name("_dsc")
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$201, DW_AT_location[DW_OP_bregx 0x24 0]
        dbl(*SP(#0)) = XAR0
 nop
 nop
 nop
 nop
 nop
 nop
        SP = SP + #3
	.dwcfi	cfa_offset, 1
$C$DW$202	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$202, DW_AT_low_pc(0x00)
	.dwattr $C$DW$202, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$199, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$199, DW_AT_TI_end_line(0x1e9)
	.dwattr $C$DW$199, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$199

	.sect	".text"
	.global	_generate_rx_frame

$C$DW$203	.dwtag  DW_TAG_subprogram, DW_AT_name("generate_rx_frame")
	.dwattr $C$DW$203, DW_AT_low_pc(_generate_rx_frame)
	.dwattr $C$DW$203, DW_AT_high_pc(0x00)
	.dwattr $C$DW$203, DW_AT_TI_symbol_name("_generate_rx_frame")
	.dwattr $C$DW$203, DW_AT_external
	.dwattr $C$DW$203, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$203, DW_AT_TI_begin_line(0x1f4)
	.dwattr $C$DW$203, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$203, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 501,column 1,is_stmt,address _generate_rx_frame

	.dwfde $C$DW$CIE, _generate_rx_frame
$C$DW$204	.dwtag  DW_TAG_formal_parameter, DW_AT_name("frame_size")
	.dwattr $C$DW$204, DW_AT_TI_symbol_name("_frame_size")
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$204, DW_AT_location[DW_OP_reg12]
$C$DW$205	.dwtag  DW_TAG_formal_parameter, DW_AT_name("frame")
	.dwattr $C$DW$205, DW_AT_TI_symbol_name("_frame")
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$205, DW_AT_location[DW_OP_reg17]
;----------------------------------------------------------------------
; 500 | void generate_rx_frame (tint frame_size, linSample *frame)             
; 502 | int k;                                                                 
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: generate_rx_frame                                            *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,CARRY,TC1,M40,  *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_generate_rx_frame:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-5
	.dwcfi	cfa_offset, 6
$C$DW$206	.dwtag  DW_TAG_variable, DW_AT_name("frame_size")
	.dwattr $C$DW$206, DW_AT_TI_symbol_name("_frame_size")
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$206, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$207	.dwtag  DW_TAG_variable, DW_AT_name("frame")
	.dwattr $C$DW$207, DW_AT_TI_symbol_name("_frame")
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$207, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$208	.dwtag  DW_TAG_variable, DW_AT_name("k")
	.dwattr $C$DW$208, DW_AT_TI_symbol_name("_k")
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$208, DW_AT_location[DW_OP_bregx 0x24 4]
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 504,column 3,is_stmt
;----------------------------------------------------------------------
; 504 | if (siuSetup.rxSGN.state) {                         /* rx SGN is on */ 
;----------------------------------------------------------------------
        AR1 = *(#(_siuSetup+27)) ; |504| 
        dbl(*SP(#2)) = XAR0
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 501,column 1,is_stmt
        *SP(#0) = T0 ; |501| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 504,column 3,is_stmt
        if (AR1 == #0) goto $C$L13 ; |504| 
                                        ; branchcc occurs ; |504| 
        XAR1 = dbl(*SP(#2))
        XAR0 = dbl(*(#_sgnRxInst))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 505,column 5,is_stmt
;----------------------------------------------------------------------
; 505 | sgnGenerateFrame (sgnRxInst, frame_size, frame);  /* Generate a frame *
;     | /                                                                      
;----------------------------------------------------------------------
$C$DW$209	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$209, DW_AT_low_pc(0x00)
	.dwattr $C$DW$209, DW_AT_name("_sgnGenerateFrame")
	.dwattr $C$DW$209, DW_AT_TI_call
        call #_sgnGenerateFrame ; |505| 
                                        ; call occurs [#_sgnGenerateFrame] ; |505| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 506,column 3,is_stmt
;----------------------------------------------------------------------
; 507 | else {                                              /* SGN is off */   
;----------------------------------------------------------------------
        goto $C$L15 ; |506| 
                                        ; branch occurs ; |506| 
$C$L13:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 508,column 10,is_stmt
;----------------------------------------------------------------------
; 508 | for (k = 0; k < frame_size; k++)                  /* send a 0 frame */ 
;----------------------------------------------------------------------
        *SP(#4) = #0 ; |508| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 508,column 17,is_stmt
        AR1 = *SP(#0) ; |508| 
        AR2 = *SP(#4) ; |508| 
        TC1 = (AR2 >= AR1) ; |508| 
        if (TC1) goto $C$L15 ; |508| 
                                        ; branchcc occurs ; |508| 
$C$L14:    
$C$DW$L$_generate_rx_frame$4$B:
        XAR3 = dbl(*SP(#2))
        T0 = AR2
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 509,column 7,is_stmt
;----------------------------------------------------------------------
; 509 | frame[k] = 0;                                                          
;----------------------------------------------------------------------
        *AR3(T0) = #0 ; |509| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 508,column 33,is_stmt
        *SP(#4) = *SP(#4) + #1 ; |508| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 508,column 17,is_stmt
        AR1 = *SP(#0) ; |508| 
        AR2 = *SP(#4) ; |508| 
        TC1 = (AR2 < AR1) ; |508| 
        if (TC1) goto $C$L14 ; |508| 
                                        ; branchcc occurs ; |508| 
$C$DW$L$_generate_rx_frame$4$E:
$C$L15:    
        SP = SP + #5
	.dwcfi	cfa_offset, 1
$C$DW$210	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$210, DW_AT_low_pc(0x00)
	.dwattr $C$DW$210, DW_AT_TI_return
        return
                                        ; return occurs

$C$DW$211	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$211, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\cid\test\ccsProjects\test_rel_c5510_C55L_COFF\Debug\cidsim.asm:$C$L14:1:1373047874")
	.dwattr $C$DW$211, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$211, DW_AT_TI_begin_line(0x1fc)
	.dwattr $C$DW$211, DW_AT_TI_end_line(0x1fd)
$C$DW$212	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$212, DW_AT_low_pc($C$DW$L$_generate_rx_frame$4$B)
	.dwattr $C$DW$212, DW_AT_high_pc($C$DW$L$_generate_rx_frame$4$E)
	.dwendtag $C$DW$211

	.dwattr $C$DW$203, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$203, DW_AT_TI_end_line(0x1ff)
	.dwattr $C$DW$203, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$203

	.sect	".text"
	.global	_cidsim_profile_init

$C$DW$213	.dwtag  DW_TAG_subprogram, DW_AT_name("cidsim_profile_init")
	.dwattr $C$DW$213, DW_AT_low_pc(_cidsim_profile_init)
	.dwattr $C$DW$213, DW_AT_high_pc(0x00)
	.dwattr $C$DW$213, DW_AT_TI_symbol_name("_cidsim_profile_init")
	.dwattr $C$DW$213, DW_AT_external
	.dwattr $C$DW$213, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$213, DW_AT_TI_begin_line(0x203)
	.dwattr $C$DW$213, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$213, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 516,column 1,is_stmt,address _cidsim_profile_init

	.dwfde $C$DW$CIE, _cidsim_profile_init
;----------------------------------------------------------------------
; 515 | void cidsim_profile_init (void)                                        
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: cidsim_profile_init                                          *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,M40,SATA,   *
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 function parameters)                              *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_cidsim_profile_init:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-3
	.dwcfi	cfa_offset, 4
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 518,column 3,is_stmt
;----------------------------------------------------------------------
; 518 | cidsim_profile_disable ();                                             
;----------------------------------------------------------------------
$C$DW$214	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$214, DW_AT_low_pc(0x00)
	.dwattr $C$DW$214, DW_AT_name("_cidsim_profile_disable")
	.dwattr $C$DW$214, DW_AT_TI_call
        call #_cidsim_profile_disable ; |518| 
                                        ; call occurs [#_cidsim_profile_disable] ; |518| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 521,column 3,is_stmt
;----------------------------------------------------------------------
; 521 | profile_initCycleProfiling ();                                         
;----------------------------------------------------------------------
$C$DW$215	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$215, DW_AT_low_pc(0x00)
	.dwattr $C$DW$215, DW_AT_name("_profile_initCycleProfiling")
	.dwattr $C$DW$215, DW_AT_TI_call
        call #_profile_initCycleProfiling ; |521| 
                                        ; call occurs [#_profile_initCycleProfiling] ; |521| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 522,column 3,is_stmt
;----------------------------------------------------------------------
; 522 | if (cidProfile.use_cache) {                                            
;----------------------------------------------------------------------
        AR1 = *(#(_cidProfile+2)) ; |522| 
        if (AR1 == #0) goto $C$L16 ; |522| 
                                        ; branchcc occurs ; |522| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 523,column 5,is_stmt
;----------------------------------------------------------------------
; 523 | memarchcfg_cacheEnable ();                                             
;----------------------------------------------------------------------
$C$DW$216	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$216, DW_AT_low_pc(0x00)
	.dwattr $C$DW$216, DW_AT_name("_memarchcfg_cacheEnable")
	.dwattr $C$DW$216, DW_AT_TI_call
        call #_memarchcfg_cacheEnable ; |523| 
                                        ; call occurs [#_memarchcfg_cacheEnable] ; |523| 
$C$L16:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 527,column 3,is_stmt
;----------------------------------------------------------------------
; 527 | cidProfile.profile_ovrhd = 0L;                                         
;----------------------------------------------------------------------
        AC0 = #0  ; |527| 
        T0 = #0
        dbl(*(#(_cidProfile+4))) = AC0 ; |527| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 528,column 3,is_stmt
;----------------------------------------------------------------------
; 528 | cidsim_profile_start (0);                                              
;----------------------------------------------------------------------
$C$DW$217	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$217, DW_AT_low_pc(0x00)
	.dwattr $C$DW$217, DW_AT_name("_cidsim_profile_start")
	.dwattr $C$DW$217, DW_AT_TI_call
        call #_cidsim_profile_start ; |528| 
                                        ; call occurs [#_cidsim_profile_start] ; |528| 
        T0 = #0
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 529,column 3,is_stmt
;----------------------------------------------------------------------
; 529 | cidsim_profile_stop (0);                                               
;----------------------------------------------------------------------
$C$DW$218	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$218, DW_AT_low_pc(0x00)
	.dwattr $C$DW$218, DW_AT_name("_cidsim_profile_stop")
	.dwattr $C$DW$218, DW_AT_TI_call
        call #_cidsim_profile_stop ; |529| 
                                        ; call occurs [#_cidsim_profile_stop] ; |529| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 530,column 3,is_stmt
;----------------------------------------------------------------------
; 530 | cidProfile.profile_ovrhd = cidProfile.profile_cycles[0];               
;----------------------------------------------------------------------
        AC0 = dbl(*(#(_cidProfile+8))) ; |530| 
        dbl(*(#(_cidProfile+4))) = AC0 ; |530| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 533,column 3,is_stmt
;----------------------------------------------------------------------
; 533 | cidProfile.ignore_ovrhd = 0L;                                          
;----------------------------------------------------------------------
        AC0 = #0  ; |533| 
        dbl(*(#(_cidProfile+12))) = AC0 ; |533| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 534,column 3,is_stmt
;----------------------------------------------------------------------
; 534 | cidsim_ignore_start ();                                                
;----------------------------------------------------------------------
$C$DW$219	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$219, DW_AT_low_pc(0x00)
	.dwattr $C$DW$219, DW_AT_name("_cidsim_ignore_start")
	.dwattr $C$DW$219, DW_AT_TI_call
        call #_cidsim_ignore_start ; |534| 
                                        ; call occurs [#_cidsim_ignore_start] ; |534| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 535,column 3,is_stmt
;----------------------------------------------------------------------
; 535 | cidsim_ignore_stop ();                                                 
; 536 | cidProfile.ignore_ovrhd = cidProfile.ignore_cycles;                    
;----------------------------------------------------------------------
$C$DW$220	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$220, DW_AT_low_pc(0x00)
	.dwattr $C$DW$220, DW_AT_name("_cidsim_ignore_stop")
	.dwattr $C$DW$220, DW_AT_TI_call
        call #_cidsim_ignore_stop ; |535| 
                                        ; call occurs [#_cidsim_ignore_stop] ; |535| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 539,column 3,is_stmt
;----------------------------------------------------------------------
; 539 | cidProfile.fptr = fopen (cidsim_PROFILE_FNAME,"w");                    
;----------------------------------------------------------------------
        XAR0 = #$C$FSL3 ; |539| 
        XAR1 = #$C$FSL2 ; |539| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 536,column 3,is_stmt
        AC0 = dbl(*(#(_cidProfile+16))) ; |536| 
        dbl(*(#(_cidProfile+12))) = AC0 ; |536| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 539,column 3,is_stmt
$C$DW$221	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$221, DW_AT_low_pc(0x00)
	.dwattr $C$DW$221, DW_AT_name("_fopen")
	.dwattr $C$DW$221, DW_AT_TI_call
        call #_fopen ; |539| 
                                        ; call occurs [#_fopen] ; |539| 
        dbl(*(#_cidProfile)) = XAR0
        XAR3 = dbl(*(#_cidProfile))
        AC0 = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 540,column 3,is_stmt
;----------------------------------------------------------------------
; 540 | if (cidProfile.fptr == (FILE *) NULL) {                                
;----------------------------------------------------------------------
        if (AC0 != #0) goto $C$L17 ; |540| 
                                        ; branchcc occurs ; |540| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 541,column 5,is_stmt
;----------------------------------------------------------------------
; 541 | fprintf (stderr, "Unable to open profiling file");                     
;----------------------------------------------------------------------
        XAR3 = #$C$FSL4 ; |541| 
        XAR0 = #(__ftable+24) ; |541| 
        dbl(*SP(#0)) = XAR3
$C$DW$222	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$222, DW_AT_low_pc(0x00)
	.dwattr $C$DW$222, DW_AT_name("_fprintf")
	.dwattr $C$DW$222, DW_AT_TI_call
        call #_fprintf ; |541| 
                                        ; call occurs [#_fprintf] ; |541| 
        T0 = #-1
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 542,column 5,is_stmt
;----------------------------------------------------------------------
; 542 | exit (-1);                                                             
;----------------------------------------------------------------------
$C$DW$223	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$223, DW_AT_low_pc(0x00)
	.dwattr $C$DW$223, DW_AT_name("_exit")
	.dwattr $C$DW$223, DW_AT_TI_call
        call #_exit ; |542| 
                                        ; call occurs [#_exit] ; |542| 
$C$L17:    
        SP = SP + #3
	.dwcfi	cfa_offset, 1
$C$DW$224	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$224, DW_AT_low_pc(0x00)
	.dwattr $C$DW$224, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$213, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$213, DW_AT_TI_end_line(0x220)
	.dwattr $C$DW$213, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$213

	.sect	".text"
	.global	_cidsim_profile_close

$C$DW$225	.dwtag  DW_TAG_subprogram, DW_AT_name("cidsim_profile_close")
	.dwattr $C$DW$225, DW_AT_low_pc(_cidsim_profile_close)
	.dwattr $C$DW$225, DW_AT_high_pc(0x00)
	.dwattr $C$DW$225, DW_AT_TI_symbol_name("_cidsim_profile_close")
	.dwattr $C$DW$225, DW_AT_external
	.dwattr $C$DW$225, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$225, DW_AT_TI_begin_line(0x223)
	.dwattr $C$DW$225, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$225, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 548,column 1,is_stmt,address _cidsim_profile_close

	.dwfde $C$DW$CIE, _cidsim_profile_close
;----------------------------------------------------------------------
; 547 | void cidsim_profile_close (void)                                       
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: cidsim_profile_close                                         *
;*                                                                             *
;*   Function Uses Regs : AR0,XAR0,SP,M40,SATA,SATD,RDM,FRCT,SMUL              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 2 words                                              *
;*                        (2 return address/alignment)                         *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_cidsim_profile_close:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-1
	.dwcfi	cfa_offset, 2
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 550,column 3,is_stmt
;----------------------------------------------------------------------
; 550 | cidsim_profile_disable ();                                             
;----------------------------------------------------------------------
$C$DW$226	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$226, DW_AT_low_pc(0x00)
	.dwattr $C$DW$226, DW_AT_name("_cidsim_profile_disable")
	.dwattr $C$DW$226, DW_AT_TI_call
        call #_cidsim_profile_disable ; |550| 
                                        ; call occurs [#_cidsim_profile_disable] ; |550| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 553,column 3,is_stmt
;----------------------------------------------------------------------
; 553 | profile_closeCycleProfiling ();                                        
;----------------------------------------------------------------------
$C$DW$227	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$227, DW_AT_low_pc(0x00)
	.dwattr $C$DW$227, DW_AT_name("_profile_closeCycleProfiling")
	.dwattr $C$DW$227, DW_AT_TI_call
        call #_profile_closeCycleProfiling ; |553| 
                                        ; call occurs [#_profile_closeCycleProfiling] ; |553| 
        XAR0 = dbl(*(#_cidProfile))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 556,column 3,is_stmt
;----------------------------------------------------------------------
; 556 | fclose (cidProfile.fptr);                                              
;----------------------------------------------------------------------
$C$DW$228	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$228, DW_AT_low_pc(0x00)
	.dwattr $C$DW$228, DW_AT_name("_fclose")
	.dwattr $C$DW$228, DW_AT_TI_call
        call #_fclose ; |556| 
                                        ; call occurs [#_fclose] ; |556| 
        SP = SP + #1
	.dwcfi	cfa_offset, 1
$C$DW$229	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$229, DW_AT_low_pc(0x00)
	.dwattr $C$DW$229, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$225, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$225, DW_AT_TI_end_line(0x22d)
	.dwattr $C$DW$225, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$225

	.sect	".text"
	.global	_cidsim_profile_print

$C$DW$230	.dwtag  DW_TAG_subprogram, DW_AT_name("cidsim_profile_print")
	.dwattr $C$DW$230, DW_AT_low_pc(_cidsim_profile_print)
	.dwattr $C$DW$230, DW_AT_high_pc(0x00)
	.dwattr $C$DW$230, DW_AT_TI_symbol_name("_cidsim_profile_print")
	.dwattr $C$DW$230, DW_AT_external
	.dwattr $C$DW$230, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$230, DW_AT_TI_begin_line(0x230)
	.dwattr $C$DW$230, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$230, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 561,column 1,is_stmt,address _cidsim_profile_print

	.dwfde $C$DW$CIE, _cidsim_profile_print
$C$DW$231	.dwtag  DW_TAG_formal_parameter, DW_AT_name("msg")
	.dwattr $C$DW$231, DW_AT_TI_symbol_name("_msg")
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$231, DW_AT_location[DW_OP_reg17]
;----------------------------------------------------------------------
; 560 | void cidsim_profile_print (char *msg)                                  
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: cidsim_profile_print                                         *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR3,XAR3,SP,M40,SATA,*
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (4 function parameters)                              *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_cidsim_profile_print:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-11
	.dwcfi	cfa_offset, 12
$C$DW$232	.dwtag  DW_TAG_variable, DW_AT_name("msg")
	.dwattr $C$DW$232, DW_AT_TI_symbol_name("_msg")
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$232, DW_AT_location[DW_OP_bregx 0x24 4]
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 563,column 3,is_stmt
;----------------------------------------------------------------------
; 563 | if (cidProfile.enabled) {                                              
;----------------------------------------------------------------------
        AR1 = *(#(_cidProfile+3)) ; |563| 
        dbl(*SP(#4)) = XAR0
        if (AR1 == #0) goto $C$L20 ; |563| 
                                        ; branchcc occurs ; |563| 
        XAR3 = dbl(*SP(#4))
        AC0 = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 565,column 5,is_stmt
;----------------------------------------------------------------------
; 565 | if (msg) {                                                             
;----------------------------------------------------------------------
        if (AC0 == #0) goto $C$L18 ; |565| 
                                        ; branchcc occurs ; |565| 
        dbl(*SP(#0)) = XAR3
        XAR0 = dbl(*(#_cidProfile))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 566,column 7,is_stmt
;----------------------------------------------------------------------
; 566 | fprintf (cidProfile.fptr, msg);                                        
;----------------------------------------------------------------------
$C$DW$233	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$233, DW_AT_low_pc(0x00)
	.dwattr $C$DW$233, DW_AT_name("_fprintf")
	.dwattr $C$DW$233, DW_AT_TI_call
        call #_fprintf ; |566| 
                                        ; call occurs [#_fprintf] ; |566| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 567,column 5,is_stmt
        goto $C$L19 ; |567| 
                                        ; branch occurs ; |567| 
$C$L18:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 568,column 10,is_stmt
;----------------------------------------------------------------------
; 568 | else {                                                                 
; 569 |   float mips;                                                          
;----------------------------------------------------------------------

$C$DW$234	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$235	.dwtag  DW_TAG_variable, DW_AT_name("mips")
	.dwattr $C$DW$235, DW_AT_TI_symbol_name("_mips")
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$235, DW_AT_location[DW_OP_bregx 0x24 6]
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 571,column 7,is_stmt
;----------------------------------------------------------------------
; 571 | mips = (float) cidProfile.profile_cycles[cidsim_PROFILE_RCV_IDX] * 8000
;     |  /                                                                     
; 572 |                siuSetup.frame_size / 1e6;                              
;----------------------------------------------------------------------
        AC0 = dbl(*(#(_cidProfile+10))) ; |571| 
$C$DW$236	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$236, DW_AT_low_pc(0x00)
	.dwattr $C$DW$236, DW_AT_name("__fltlid")
	.dwattr $C$DW$236, DW_AT_TI_call
        call #__fltlid ; |571| 
                                        ; call occurs [#__fltlid] ; |571| 
        AC1 = dbl(*($C$FL1)) ; |571| 
$C$DW$237	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$237, DW_AT_low_pc(0x00)
	.dwattr $C$DW$237, DW_AT_name("__mpyd")
	.dwattr $C$DW$237, DW_AT_TI_call
        call #__mpyd ; |571| 
                                        ; call occurs [#__mpyd] ; |571| 
        T0 = *(#(_siuSetup+1)) ; |571| 
        dbl(*SP(#8)) = AC0 ; |571| 
$C$DW$238	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$238, DW_AT_low_pc(0x00)
	.dwattr $C$DW$238, DW_AT_name("__fltid")
	.dwattr $C$DW$238, DW_AT_TI_call
        call #__fltid ; |571| 
                                        ; call occurs [#__fltid] ; |571| 

        AC0 = dbl(*SP(#8)) ; |571| 
||      AC1 = AC0 | #0

$C$DW$239	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$239, DW_AT_low_pc(0x00)
	.dwattr $C$DW$239, DW_AT_name("__divd")
	.dwattr $C$DW$239, DW_AT_TI_call
        call #__divd ; |571| 
                                        ; call occurs [#__divd] ; |571| 
        AC1 = dbl(*($C$FL2)) ; |571| 
$C$DW$240	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$240, DW_AT_low_pc(0x00)
	.dwattr $C$DW$240, DW_AT_name("__divd")
	.dwattr $C$DW$240, DW_AT_TI_call
        call #__divd ; |571| 
                                        ; call occurs [#__divd] ; |571| 
        dbl(*SP(#6)) = AC0 ; |571| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 573,column 7,is_stmt
;----------------------------------------------------------------------
; 573 | fprintf (cidProfile.fptr, "  %6.2f", mips);                            
;----------------------------------------------------------------------
        XAR3 = #$C$FSL5 ; |573| 
        XAR0 = dbl(*(#_cidProfile))
        dbl(*SP(#0)) = XAR3
        AC0 = dbl(*SP(#6)) ; |573| 
        dbl(*SP(#2)) = AC0 ; |573| 
$C$DW$241	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$241, DW_AT_low_pc(0x00)
	.dwattr $C$DW$241, DW_AT_name("_fprintf")
	.dwattr $C$DW$241, DW_AT_TI_call
        call #_fprintf ; |573| 
                                        ; call occurs [#_fprintf] ; |573| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 575,column 7,is_stmt
;----------------------------------------------------------------------
; 575 | mips = (float) cidProfile.profile_cycles[cidsim_PROFILE_SND_IDX] * 8000
;     |  /                                                                     
; 576 |                siuSetup.frame_size / 1e6;                              
;----------------------------------------------------------------------
        AC0 = dbl(*(#(_cidProfile+8))) ; |575| 
$C$DW$242	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$242, DW_AT_low_pc(0x00)
	.dwattr $C$DW$242, DW_AT_name("__fltlid")
	.dwattr $C$DW$242, DW_AT_TI_call
        call #__fltlid ; |575| 
                                        ; call occurs [#__fltlid] ; |575| 
        AC1 = dbl(*($C$FL1)) ; |575| 
$C$DW$243	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$243, DW_AT_low_pc(0x00)
	.dwattr $C$DW$243, DW_AT_name("__mpyd")
	.dwattr $C$DW$243, DW_AT_TI_call
        call #__mpyd ; |575| 
                                        ; call occurs [#__mpyd] ; |575| 
        dbl(*SP(#8)) = AC0 ; |575| 
        T0 = *(#(_siuSetup+1)) ; |575| 
$C$DW$244	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$244, DW_AT_low_pc(0x00)
	.dwattr $C$DW$244, DW_AT_name("__fltid")
	.dwattr $C$DW$244, DW_AT_TI_call
        call #__fltid ; |575| 
                                        ; call occurs [#__fltid] ; |575| 

        AC0 = dbl(*SP(#8)) ; |575| 
||      AC1 = AC0 | #0

$C$DW$245	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$245, DW_AT_low_pc(0x00)
	.dwattr $C$DW$245, DW_AT_name("__divd")
	.dwattr $C$DW$245, DW_AT_TI_call
        call #__divd ; |575| 
                                        ; call occurs [#__divd] ; |575| 
        AC1 = dbl(*($C$FL2)) ; |575| 
$C$DW$246	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$246, DW_AT_low_pc(0x00)
	.dwattr $C$DW$246, DW_AT_name("__divd")
	.dwattr $C$DW$246, DW_AT_TI_call
        call #__divd ; |575| 
                                        ; call occurs [#__divd] ; |575| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 577,column 7,is_stmt
;----------------------------------------------------------------------
; 577 | fprintf (cidProfile.fptr, "  %6.2f\n", mips);                          
;----------------------------------------------------------------------
        XAR3 = #$C$FSL6 ; |577| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 575,column 7,is_stmt
        dbl(*SP(#6)) = AC0 ; |575| 
        XAR0 = dbl(*(#_cidProfile))
        dbl(*SP(#0)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 577,column 7,is_stmt
        AC0 = dbl(*SP(#6)) ; |577| 
        dbl(*SP(#2)) = AC0 ; |577| 
$C$DW$247	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$247, DW_AT_low_pc(0x00)
	.dwattr $C$DW$247, DW_AT_name("_fprintf")
	.dwattr $C$DW$247, DW_AT_TI_call
        call #_fprintf ; |577| 
                                        ; call occurs [#_fprintf] ; |577| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 578,column 5,is_stmt
	.dwendtag $C$DW$234

$C$L19:    
        XAR0 = dbl(*(#_cidProfile))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 580,column 5,is_stmt
;----------------------------------------------------------------------
; 580 | fflush (cidProfile.fptr);                                              
;----------------------------------------------------------------------
$C$DW$248	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$248, DW_AT_low_pc(0x00)
	.dwattr $C$DW$248, DW_AT_name("_fflush")
	.dwattr $C$DW$248, DW_AT_TI_call
        call #_fflush ; |580| 
                                        ; call occurs [#_fflush] ; |580| 
$C$L20:    
        SP = SP + #11
	.dwcfi	cfa_offset, 1
$C$DW$249	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$249, DW_AT_low_pc(0x00)
	.dwattr $C$DW$249, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$230, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$230, DW_AT_TI_end_line(0x246)
	.dwattr $C$DW$230, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$230

	.sect	".text"
	.global	_siuChSim

$C$DW$250	.dwtag  DW_TAG_subprogram, DW_AT_name("siuChSim")
	.dwattr $C$DW$250, DW_AT_low_pc(_siuChSim)
	.dwattr $C$DW$250, DW_AT_high_pc(0x00)
	.dwattr $C$DW$250, DW_AT_TI_symbol_name("_siuChSim")
	.dwattr $C$DW$250, DW_AT_external
	.dwattr $C$DW$250, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$250, DW_AT_TI_begin_line(0x250)
	.dwattr $C$DW$250, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$250, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 593,column 1,is_stmt,address _siuChSim

	.dwfde $C$DW$CIE, _siuChSim
$C$DW$251	.dwtag  DW_TAG_formal_parameter, DW_AT_name("sample_in")
	.dwattr $C$DW$251, DW_AT_TI_symbol_name("_sample_in")
	.dwattr $C$DW$251, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$251, DW_AT_location[DW_OP_reg17]
;----------------------------------------------------------------------
; 592 | void siuChSim (void *sample_in)                                        
; 594 | int i;                                                                 
; 595 | linSample *sample = (linSample *) sample_in;                           
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: siuChSim                                                     *
;*                                                                             *
;*   Function Uses Regs : T0,T2,AR0,XAR0,AR1,AR2,XAR2,AR3,XAR3,AR5,XAR5,SP,    *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Save On Entry Regs : T2,AR5                                               *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*                        (2 register save area)                               *
;*   Min System Stack   : 2 words                                              *
;*******************************************************************************
_siuChSim:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        push(T2)
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 14, -2
        pshboth(XAR5)
	.dwcfi	cfa_offset, 3
	.dwcfi	save_reg_to_mem, 26, -3
        SP = SP + #-7
	.dwcfi	cfa_offset, 10
$C$DW$252	.dwtag  DW_TAG_variable, DW_AT_name("sample_in")
	.dwattr $C$DW$252, DW_AT_TI_symbol_name("_sample_in")
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$252, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$253	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$253, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$253, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$253, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$254	.dwtag  DW_TAG_variable, DW_AT_name("sample")
	.dwattr $C$DW$254, DW_AT_TI_symbol_name("_sample")
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$254, DW_AT_location[DW_OP_bregx 0x24 4]
        dbl(*SP(#0)) = XAR0
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 598,column 15,is_stmt
;----------------------------------------------------------------------
; 598 | for (i = 0; i < siuSetup.frame_size; i++) {                            
;----------------------------------------------------------------------
        AR1 = *(#(_siuSetup+1)) ; |598| 
        XAR3 = dbl(*SP(#0))
        dbl(*SP(#4)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 598,column 8,is_stmt
        *SP(#2) = #0 ; |598| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 598,column 15,is_stmt
        AR2 = *SP(#2) ; |598| 
        TC1 = (AR2 >= AR1) ; |598| 
        if (TC1) goto $C$L22 ; |598| 
                                        ; branchcc occurs ; |598| 
$C$L21:    
$C$DW$L$_siuChSim$2$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 599,column 5,is_stmt
;----------------------------------------------------------------------
; 599 | siuPcmOutStream[i] = sample[i];                                        
;----------------------------------------------------------------------
        T0 = *SP(#2) ; |599| 
        AR1 = T0  ; |599| 
        XAR2 = dbl(*SP(#4))
        XAR3 = #_siuPcmOutStream ; |599| 
        mar(AR3 + AR1) ; |599| 
        *AR3 = *AR2(T0) ; |599| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 598,column 40,is_stmt
        *SP(#2) = *SP(#2) + #1 ; |598| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 598,column 15,is_stmt
        AR1 = *(#(_siuSetup+1)) ; |598| 
        AR2 = *SP(#2) ; |598| 
        TC1 = (AR2 < AR1) ; |598| 
        if (TC1) goto $C$L21 ; |598| 
                                        ; branchcc occurs ; |598| 
$C$DW$L$_siuChSim$2$E:
$C$L22:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 603,column 3,is_stmt
;----------------------------------------------------------------------
; 603 | if (siuSetup.chSim.chnl_sim_on) {                                      
;----------------------------------------------------------------------
        AR1 = *(#(_siuSetup+23)) ; |603| 
        if (AR1 == #0) goto $C$L24 ; |603| 
                                        ; branchcc occurs ; |603| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 605,column 10,is_stmt
;----------------------------------------------------------------------
; 605 | for (i=0; i<siuSetup.frame_size; i++) {                                
;----------------------------------------------------------------------
        *SP(#2) = #0 ; |605| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 605,column 15,is_stmt
        AR1 = *(#(_siuSetup+1)) ; |605| 
        AR2 = *SP(#2) ; |605| 
        TC1 = (AR2 >= AR1) ; |605| 
        if (TC1) goto $C$L24 ; |605| 
                                        ; branchcc occurs ; |605| 
$C$L23:    
$C$DW$L$_siuChSim$5$B:
        XAR5 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 606,column 7,is_stmt
;----------------------------------------------------------------------
; 606 | sample[i] += wngGenNoiseSample (csmInst.nscale, &csmInst.rng_state);   
;----------------------------------------------------------------------
        T0 = *(#_csmInst) ; |606| 
        XAR0 = #(_csmInst+1) ; |606| 
        T2 = AR2
$C$DW$255	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$255, DW_AT_low_pc(0x00)
	.dwattr $C$DW$255, DW_AT_name("_wngGenNoiseSample")
	.dwattr $C$DW$255, DW_AT_TI_call
        call #_wngGenNoiseSample ; |606| 
                                        ; call occurs [#_wngGenNoiseSample] ; |606| 
        AR1 = T0  ; |606| 
        T0 = T2   ; |606| 
        AR1 = AR1 + *AR5(T0) ; |606| 
        *AR5(T0) = AR1 ; |606| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 605,column 15,is_stmt
        AR1 = *(#(_siuSetup+1)) ; |605| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 605,column 38,is_stmt
        *SP(#2) = *SP(#2) + #1 ; |605| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 605,column 15,is_stmt
        AR2 = *SP(#2) ; |605| 
        TC1 = (AR2 < AR1) ; |605| 
        if (TC1) goto $C$L23 ; |605| 
                                        ; branchcc occurs ; |605| 
$C$DW$L$_siuChSim$5$E:
$C$L24:    
        SP = SP + #7
	.dwcfi	cfa_offset, 3
        XAR5 = popboth()
	.dwcfi	restore_reg, 26
	.dwcfi	cfa_offset, 2
        T2 = pop()
	.dwcfi	restore_reg, 14
	.dwcfi	cfa_offset, 1
$C$DW$256	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$256, DW_AT_low_pc(0x00)
	.dwattr $C$DW$256, DW_AT_TI_return
        return
                                        ; return occurs

$C$DW$257	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$257, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\cid\test\ccsProjects\test_rel_c5510_C55L_COFF\Debug\cidsim.asm:$C$L23:1:1373047874")
	.dwattr $C$DW$257, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$257, DW_AT_TI_begin_line(0x25d)
	.dwattr $C$DW$257, DW_AT_TI_end_line(0x25f)
$C$DW$258	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$258, DW_AT_low_pc($C$DW$L$_siuChSim$5$B)
	.dwattr $C$DW$258, DW_AT_high_pc($C$DW$L$_siuChSim$5$E)
	.dwendtag $C$DW$257


$C$DW$259	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$259, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\cid\test\ccsProjects\test_rel_c5510_C55L_COFF\Debug\cidsim.asm:$C$L21:1:1373047874")
	.dwattr $C$DW$259, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$259, DW_AT_TI_begin_line(0x256)
	.dwattr $C$DW$259, DW_AT_TI_end_line(0x258)
$C$DW$260	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$260, DW_AT_low_pc($C$DW$L$_siuChSim$2$B)
	.dwattr $C$DW$260, DW_AT_high_pc($C$DW$L$_siuChSim$2$E)
	.dwendtag $C$DW$259

	.dwattr $C$DW$250, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$250, DW_AT_TI_end_line(0x261)
	.dwattr $C$DW$250, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$250

	.sect	".text"
	.global	_siuCidRptIn

$C$DW$261	.dwtag  DW_TAG_subprogram, DW_AT_name("siuCidRptIn")
	.dwattr $C$DW$261, DW_AT_low_pc(_siuCidRptIn)
	.dwattr $C$DW$261, DW_AT_high_pc(0x00)
	.dwattr $C$DW$261, DW_AT_TI_symbol_name("_siuCidRptIn")
	.dwattr $C$DW$261, DW_AT_external
	.dwattr $C$DW$261, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$261, DW_AT_TI_begin_line(0x27b)
	.dwattr $C$DW$261, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$261, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 638,column 1,is_stmt,address _siuCidRptIn

	.dwfde $C$DW$CIE, _siuCidRptIn
$C$DW$262	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ID")
	.dwattr $C$DW$262, DW_AT_TI_symbol_name("_ID")
	.dwattr $C$DW$262, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$262, DW_AT_location[DW_OP_reg12]
$C$DW$263	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rcode")
	.dwattr $C$DW$263, DW_AT_TI_symbol_name("_rcode")
	.dwattr $C$DW$263, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$263, DW_AT_location[DW_OP_reg13]
$C$DW$264	.dwtag  DW_TAG_formal_parameter, DW_AT_name("final_state")
	.dwattr $C$DW$264, DW_AT_TI_symbol_name("_final_state")
	.dwattr $C$DW$264, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$264, DW_AT_location[DW_OP_reg16]
$C$DW$265	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dropout_ct")
	.dwattr $C$DW$265, DW_AT_TI_symbol_name("_dropout_ct")
	.dwattr $C$DW$265, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$265, DW_AT_location[DW_OP_reg18]
$C$DW$266	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bad_mtype_ct")
	.dwattr $C$DW$266, DW_AT_TI_symbol_name("_bad_mtype_ct")
	.dwattr $C$DW$266, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$266, DW_AT_location[DW_OP_reg20]
$C$DW$267	.dwtag  DW_TAG_formal_parameter, DW_AT_name("type")
	.dwattr $C$DW$267, DW_AT_TI_symbol_name("_type")
	.dwattr $C$DW$267, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$267, DW_AT_location[DW_OP_reg22]
$C$DW$268	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len")
	.dwattr $C$DW$268, DW_AT_TI_symbol_name("_len")
	.dwattr $C$DW$268, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$268, DW_AT_location[DW_OP_reg24]
$C$DW$269	.dwtag  DW_TAG_formal_parameter, DW_AT_name("msg")
	.dwattr $C$DW$269, DW_AT_TI_symbol_name("_msg")
	.dwattr $C$DW$269, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$269, DW_AT_location[DW_OP_bregx 0x24 16]
$C$DW$270	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len_in_word")
	.dwattr $C$DW$270, DW_AT_TI_symbol_name("_len_in_word")
	.dwattr $C$DW$270, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$270, DW_AT_location[DW_OP_bregx 0x24 18]
;----------------------------------------------------------------------
; 635 | void siuCidRptIn (tuint ID, tint rcode, tint final_state,              
; 636 | tint dropout_ct, tint bad_mtype_ct, tint type, tint len,               
; 637 | tuint *msg, tint len_in_word)                                          
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: siuCidRptIn                                                  *
;*                                                                             *
;*   Function Uses Regs : T0,T1,AR0,AR1,AR2,AR3,XAR3,AR4,SP,CARRY,TC1,M40,SATA,*
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 16 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (6 function parameters)                              *
;*                        (8 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_siuCidRptIn:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-15
	.dwcfi	cfa_offset, 16
$C$DW$271	.dwtag  DW_TAG_variable, DW_AT_name("ID")
	.dwattr $C$DW$271, DW_AT_TI_symbol_name("_ID")
	.dwattr $C$DW$271, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$271, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$272	.dwtag  DW_TAG_variable, DW_AT_name("rcode")
	.dwattr $C$DW$272, DW_AT_TI_symbol_name("_rcode")
	.dwattr $C$DW$272, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$272, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$273	.dwtag  DW_TAG_variable, DW_AT_name("final_state")
	.dwattr $C$DW$273, DW_AT_TI_symbol_name("_final_state")
	.dwattr $C$DW$273, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$273, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$274	.dwtag  DW_TAG_variable, DW_AT_name("dropout_ct")
	.dwattr $C$DW$274, DW_AT_TI_symbol_name("_dropout_ct")
	.dwattr $C$DW$274, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$274, DW_AT_location[DW_OP_bregx 0x24 9]
$C$DW$275	.dwtag  DW_TAG_variable, DW_AT_name("bad_mtype_ct")
	.dwattr $C$DW$275, DW_AT_TI_symbol_name("_bad_mtype_ct")
	.dwattr $C$DW$275, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$275, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$276	.dwtag  DW_TAG_variable, DW_AT_name("type")
	.dwattr $C$DW$276, DW_AT_TI_symbol_name("_type")
	.dwattr $C$DW$276, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$276, DW_AT_location[DW_OP_bregx 0x24 11]
$C$DW$277	.dwtag  DW_TAG_variable, DW_AT_name("len")
	.dwattr $C$DW$277, DW_AT_TI_symbol_name("_len")
	.dwattr $C$DW$277, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$277, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$278	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$278, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$278, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$278, DW_AT_location[DW_OP_bregx 0x24 13]
;----------------------------------------------------------------------
; 639 | tint  i;                                                               
;----------------------------------------------------------------------
        *SP(#12) = AR4 ; |638| 
        *SP(#11) = AR3 ; |638| 
        *SP(#10) = AR2 ; |638| 
        *SP(#9) = AR1 ; |638| 
        *SP(#8) = AR0 ; |638| 
        *SP(#7) = T1 ; |638| 
        *SP(#6) = T0 ; |638| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 642,column 3,is_stmt
;----------------------------------------------------------------------
; 642 | cidsim_ignore_start ();                                                
;----------------------------------------------------------------------
$C$DW$279	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$279, DW_AT_low_pc(0x00)
	.dwattr $C$DW$279, DW_AT_name("_cidsim_ignore_start")
	.dwattr $C$DW$279, DW_AT_TI_call
        call #_cidsim_ignore_start ; |642| 
                                        ; call occurs [#_cidsim_ignore_start] ; |642| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 644,column 3,is_stmt
;----------------------------------------------------------------------
; 644 | printf ("siuCidRptIn(): ID=%d rcode=%d length=%d word length=%d\n", ID,
;     |  rcode,                                                                
; 645 |         len, len_in_word);                                             
;----------------------------------------------------------------------
        XAR3 = #$C$FSL7 ; |644| 
        dbl(*SP(#0)) = XAR3
        AR1 = *SP(#6) ; |644| 
        *SP(#2) = AR1 ; |644| 
        AR1 = *SP(#7) ; |644| 
        *SP(#3) = AR1 ; |644| 
        AR1 = *SP(#12) ; |644| 
        *SP(#4) = AR1 ; |644| 
        AR1 = *SP(#18) ; |644| 
        *SP(#5) = AR1 ; |644| 
$C$DW$280	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$280, DW_AT_low_pc(0x00)
	.dwattr $C$DW$280, DW_AT_name("_printf")
	.dwattr $C$DW$280, DW_AT_TI_call
        call #_printf ; |644| 
                                        ; call occurs [#_printf] ; |644| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 647,column 3,is_stmt
;----------------------------------------------------------------------
; 647 | if (rcode == cid_RPT_MULTI_RQST) {                                     
;----------------------------------------------------------------------
        TC1 = (*SP(#7) == #20) ; |647| 
        if (!TC1) goto $C$L25 ; |647| 
                                        ; branchcc occurs ; |647| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 648,column 5,is_stmt
;----------------------------------------------------------------------
; 648 | multi_msg_idx = len;                                                   
; 649 | multi_msg_len = len_in_word;                                           
;----------------------------------------------------------------------
        AR1 = *SP(#12) ; |648| 
        *(#_multi_msg_idx) = AR1 ; |648| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 650,column 5,is_stmt
;----------------------------------------------------------------------
; 650 | siuSetup.tog_cid1 = 9; /* This will initiate a cid_CTL_MULTI_RQST messa
;     | ge */                                                                  
;----------------------------------------------------------------------
        *(#(_siuSetup+2)) = #9 ; |650| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 649,column 5,is_stmt
        AR1 = *SP(#18) ; |649| 
        *(#_multi_msg_len) = AR1 ; |649| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 651,column 3,is_stmt
        goto $C$L28 ; |651| 
                                        ; branch occurs ; |651| 
$C$L25:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 652,column 8,is_stmt
;----------------------------------------------------------------------
; 652 | else if (rcode == cid_RPT_GNRT_DEACT) {                                
;----------------------------------------------------------------------
        TC1 = (*SP(#7) == #10) ; |652| 
        if (!TC1) goto $C$L26 ; |652| 
                                        ; branchcc occurs ; |652| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 653,column 4,is_stmt
;----------------------------------------------------------------------
; 653 | if (ID == 1) {                                                         
;----------------------------------------------------------------------
        TC1 = (*SP(#6) == #1) ; |653| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 654,column 7,is_stmt
;----------------------------------------------------------------------
; 654 | siuSetup.tog_cid1 = 10;                                                
; 656 | else {                                                                 
;----------------------------------------------------------------------
        if (TC1) execute (D_Unit)
           *(#(_siuSetup+2)) = #10 ; |654| 
        nop       ;                     avoids Silicon Exception CPU_93
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 657,column 7,is_stmt
;----------------------------------------------------------------------
; 657 | siuSetup.tog_cid2 = 10;                                                
;----------------------------------------------------------------------
        if (!TC1) execute (D_Unit)
           *(#(_siuSetup+12)) = #10 ; |657| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 659,column 3,is_stmt
;----------------------------------------------------------------------
; 660 | else {                                                                 
;----------------------------------------------------------------------
        goto $C$L28 ; |659| 
                                        ; branch occurs ; |659| 
$C$L26:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 661,column 10,is_stmt
;----------------------------------------------------------------------
; 661 | for (i=0; i<len_in_word; i++) {                                        
;----------------------------------------------------------------------
        *SP(#13) = #0 ; |661| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 661,column 15,is_stmt
        AR1 = *SP(#18) ; |661| 
        AR2 = *SP(#13) ; |661| 
        TC1 = (AR2 >= AR1) ; |661| 
        if (TC1) goto $C$L28 ; |661| 
                                        ; branchcc occurs ; |661| 
$C$L27:    
$C$DW$L$_siuCidRptIn$6$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 662,column 6,is_stmt
;----------------------------------------------------------------------
; 662 | printf("msg[%d]=0x%x\n", i, msg[i]);                                   
;----------------------------------------------------------------------
        XAR3 = #$C$FSL8 ; |662| 
        dbl(*SP(#0)) = XAR3
        AR1 = *SP(#13) ; |662| 
        *SP(#2) = AR1 ; |662| 
        T0 = *SP(#13) ; |662| 
        XAR3 = dbl(*SP(#16))
        AR1 = *AR3(T0) ; |662| 
        *SP(#3) = AR1 ; |662| 
$C$DW$281	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$281, DW_AT_low_pc(0x00)
	.dwattr $C$DW$281, DW_AT_name("_printf")
	.dwattr $C$DW$281, DW_AT_TI_call
        call #_printf ; |662| 
                                        ; call occurs [#_printf] ; |662| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 661,column 30,is_stmt
        *SP(#13) = *SP(#13) + #1 ; |661| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 661,column 15,is_stmt
        AR2 = *SP(#13) ; |661| 
        AR1 = *SP(#18) ; |661| 
        TC1 = (AR2 < AR1) ; |661| 
        if (TC1) goto $C$L27 ; |661| 
                                        ; branchcc occurs ; |661| 
$C$DW$L$_siuCidRptIn$6$E:
$C$L28:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 667,column 3,is_stmt
;----------------------------------------------------------------------
; 667 | if (rcode == cid_RPT_END_GNRT) {                                       
;----------------------------------------------------------------------
        TC1 = (*SP(#7) == #9) ; |667| 
        if (!TC1) goto $C$L29 ; |667| 
                                        ; branchcc occurs ; |667| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 668,column 5,is_stmt
;----------------------------------------------------------------------
; 668 | cidsim_profile_disable ();                                             
;----------------------------------------------------------------------
$C$DW$282	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$282, DW_AT_low_pc(0x00)
	.dwattr $C$DW$282, DW_AT_name("_cidsim_profile_disable")
	.dwattr $C$DW$282, DW_AT_TI_call
        call #_cidsim_profile_disable ; |668| 
                                        ; call occurs [#_cidsim_profile_disable] ; |668| 
$C$L29:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 672,column 3,is_stmt
;----------------------------------------------------------------------
; 672 | cidsim_ignore_stop ();                                                 
;----------------------------------------------------------------------
$C$DW$283	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$283, DW_AT_low_pc(0x00)
	.dwattr $C$DW$283, DW_AT_name("_cidsim_ignore_stop")
	.dwattr $C$DW$283, DW_AT_TI_call
        call #_cidsim_ignore_stop ; |672| 
                                        ; call occurs [#_cidsim_ignore_stop] ; |672| 
        SP = SP + #15
	.dwcfi	cfa_offset, 1
$C$DW$284	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$284, DW_AT_low_pc(0x00)
	.dwattr $C$DW$284, DW_AT_TI_return
        return
                                        ; return occurs

$C$DW$285	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$285, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\cid\test\ccsProjects\test_rel_c5510_C55L_COFF\Debug\cidsim.asm:$C$L27:1:1373047874")
	.dwattr $C$DW$285, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$285, DW_AT_TI_begin_line(0x295)
	.dwattr $C$DW$285, DW_AT_TI_end_line(0x297)
$C$DW$286	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$286, DW_AT_low_pc($C$DW$L$_siuCidRptIn$6$B)
	.dwattr $C$DW$286, DW_AT_high_pc($C$DW$L$_siuCidRptIn$6$E)
	.dwendtag $C$DW$285

	.dwattr $C$DW$261, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$261, DW_AT_TI_end_line(0x2a1)
	.dwattr $C$DW$261, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$261

	.sect	".text"
	.global	_siu_new_cid

$C$DW$287	.dwtag  DW_TAG_subprogram, DW_AT_name("siu_new_cid")
	.dwattr $C$DW$287, DW_AT_low_pc(_siu_new_cid)
	.dwattr $C$DW$287, DW_AT_high_pc(0x00)
	.dwattr $C$DW$287, DW_AT_TI_symbol_name("_siu_new_cid")
	.dwattr $C$DW$287, DW_AT_external
	.dwattr $C$DW$287, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$287, DW_AT_TI_begin_line(0x2ab)
	.dwattr $C$DW$287, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$287, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 684,column 1,is_stmt,address _siu_new_cid

	.dwfde $C$DW$CIE, _siu_new_cid
$C$DW$288	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chnum")
	.dwattr $C$DW$288, DW_AT_TI_symbol_name("_chnum")
	.dwattr $C$DW$288, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$288, DW_AT_location[DW_OP_reg12]
;----------------------------------------------------------------------
; 683 | void siu_new_cid (tint chnum)                                          
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: siu_new_cid                                                  *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,   *
;*                        CSR,RPTC,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL       *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (11 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_siu_new_cid:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-11
	.dwcfi	cfa_offset, 12
$C$DW$289	.dwtag  DW_TAG_variable, DW_AT_name("chnum")
	.dwattr $C$DW$289, DW_AT_TI_symbol_name("_chnum")
	.dwattr $C$DW$289, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$289, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$290	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$290, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$290, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$290, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$291	.dwtag  DW_TAG_variable, DW_AT_name("stat")
	.dwattr $C$DW$291, DW_AT_TI_symbol_name("_stat")
	.dwattr $C$DW$291, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$291, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$292	.dwtag  DW_TAG_variable, DW_AT_name("cidNbufs")
	.dwattr $C$DW$292, DW_AT_TI_symbol_name("_cidNbufs")
	.dwattr $C$DW$292, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$292, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$293	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$293, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$293, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$293, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$294	.dwtag  DW_TAG_variable, DW_AT_name("bufs")
	.dwattr $C$DW$294, DW_AT_TI_symbol_name("_bufs")
	.dwattr $C$DW$294, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$294, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$295	.dwtag  DW_TAG_variable, DW_AT_name("cidBufs")
	.dwattr $C$DW$295, DW_AT_TI_symbol_name("_cidBufs")
	.dwattr $C$DW$295, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$295, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$296	.dwtag  DW_TAG_variable, DW_AT_name("cidCfgNew")
	.dwattr $C$DW$296, DW_AT_TI_symbol_name("_cidCfgNew")
	.dwattr $C$DW$296, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$296, DW_AT_location[DW_OP_bregx 0x24 10]
;----------------------------------------------------------------------
; 685 | int i;                                                                 
; 686 | tint stat, cidNbufs;                                                   
;----------------------------------------------------------------------
        *SP(#0) = T0 ; |684| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 687,column 25,is_stmt
;----------------------------------------------------------------------
; 687 | siuInst_t            *inst = &siuInst[chnum - 1];                      
; 688 | const ecomemBuffer_t *bufs;                                            
; 689 | ecomemBuffer_t       *cidBufs;                                         
; 690 | cidNewConfig_t        cidCfgNew;                                       
;----------------------------------------------------------------------
        AC0 = *SP(#0) * #10 ; |687| 
        AC0 = AC0 - #10 ; |687| 
        AR1 = AC0 ; |687| 
        XAR3 = #_siuInst ; |687| 
        XAR0 = mar(*SP(#3))

        dbl(*SP(#4)) = XAR3
||      mar(AR3 + AR1) ; |687| 

        XAR1 = mar(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 693,column 3,is_stmt
;----------------------------------------------------------------------
; 693 | stat = cidGetSizes (&cidNbufs, &bufs);                                 
;----------------------------------------------------------------------
$C$DW$297	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$297, DW_AT_low_pc(0x00)
	.dwattr $C$DW$297, DW_AT_name("_cidGetSizes")
	.dwattr $C$DW$297, DW_AT_TI_call
        call #_cidGetSizes ; |693| 
                                        ; call occurs [#_cidGetSizes] ; |693| 
        AR1 = T0  ; |693| 
        *SP(#2) = T0 ; |693| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 695,column 3,is_stmt
;----------------------------------------------------------------------
; 695 | if (stat != cid_NOERR) {                                               
;----------------------------------------------------------------------
        if (AR1 == #0) goto $C$L30 ; |695| 
                                        ; branchcc occurs ; |695| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 696,column 4,is_stmt
;----------------------------------------------------------------------
; 696 | siuException (chnum, "Error in GetSizes");                             
;----------------------------------------------------------------------
        T0 = *SP(#0) ; |696| 
        XAR0 = #$C$FSL9 ; |696| 
$C$DW$298	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$298, DW_AT_low_pc(0x00)
	.dwattr $C$DW$298, DW_AT_name("_siuException")
	.dwattr $C$DW$298, DW_AT_TI_call
        call #_siuException ; |696| 
                                        ; call occurs [#_siuException] ; |696| 
$C$L30:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 699,column 3,is_stmt
;----------------------------------------------------------------------
; 699 | cidBufs = (ecomemBuffer_t*)malloc (cidNbufs*sizeof(ecomemBuffer_t));   
;----------------------------------------------------------------------
        AC0 = *SP(#3) * #6 ; |699| 
        T0 = AC0  ; |699| 
$C$DW$299	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$299, DW_AT_low_pc(0x00)
	.dwattr $C$DW$299, DW_AT_name("_malloc")
	.dwattr $C$DW$299, DW_AT_TI_call
        call #_malloc ; |699| 
                                        ; call occurs [#_malloc] ; |699| 
        dbl(*SP(#8)) = XAR0
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 700,column 3,is_stmt
;----------------------------------------------------------------------
; 700 | inst->aux_heap_size += cidNbufs * sizeof(ecomemBuffer_t);              
;----------------------------------------------------------------------
        AC0 = *AR3(#8) ; |700| 
        AC0 = AC0 + (*SP(#3) * #6) ; |700| 
        *AR3(#8) = AC0 ; |700| 
        XAR3 = dbl(*SP(#8))
        AC0 = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 702,column 3,is_stmt
;----------------------------------------------------------------------
; 702 | if (cidBufs == NULL) {                                                 
;----------------------------------------------------------------------
        if (AC0 != #0) goto $C$L31 ; |702| 
                                        ; branchcc occurs ; |702| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 703,column 5,is_stmt
;----------------------------------------------------------------------
; 703 | siuException (chnum, "No memory");                                     
;----------------------------------------------------------------------
        T0 = *SP(#0) ; |703| 
        XAR0 = #$C$FSL10 ; |703| 
$C$DW$300	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$300, DW_AT_low_pc(0x00)
	.dwattr $C$DW$300, DW_AT_name("_siuException")
	.dwattr $C$DW$300, DW_AT_TI_call
        call #_siuException ; |703| 
                                        ; call occurs [#_siuException] ; |703| 
$C$L31:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 707,column 8,is_stmt
;----------------------------------------------------------------------
; 707 | for (i = 0; i < cidNbufs; i++) {                                       
;----------------------------------------------------------------------
        *SP(#1) = #0 ; |707| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 707,column 15,is_stmt
        AR1 = *SP(#3) ; |707| 
        AR2 = *SP(#1) ; |707| 
        TC1 = (AR2 >= AR1) ; |707| 
        if (TC1) goto $C$L37 ; |707| 
                                        ; branchcc occurs ; |707| 
$C$L32:    
$C$DW$L$_siu_new_cid$6$B:
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 708,column 5,is_stmt
;----------------------------------------------------------------------
; 708 | cidBufs[i] = bufs[i];                                                  
;----------------------------------------------------------------------
        AC0 = *SP(#1) * #6 ; |708| 
        AR1 = AC0 ; |708| 
        XAR2 = dbl(*SP(#8))
        AC0 = *SP(#1) * #6 ; |708| 

        AR1 = AC0 ; |708| 
||      mar(AR3 + AR1) ; |708| 

        repeat(#2) ; |708| 
||      mar(AR2 + AR1) ; |708| 

                                            ; loop starts ; |708| 
$C$DW$L$_siu_new_cid$6$E:
$C$L33:    
$C$DW$L$_siu_new_cid$7$B:
            dbl(*AR2+) = dbl(*AR3+) ; |708| 
                                        ; loop ends ; |708| 
$C$DW$L$_siu_new_cid$7$E:
$C$L34:    
$C$DW$L$_siu_new_cid$8$B:
        XAR3 = dbl(*SP(#8))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 709,column 5,is_stmt
;----------------------------------------------------------------------
; 709 | cidBufs[i].volat  = FALSE;                                             
;----------------------------------------------------------------------
        AC0 = *SP(#1) * #6 ; |709| 
        AR1 = AC0 ; |709| 
        mar(AR3 + AR1) ; |709| 
        *AR3(short(#3)) = #0 ; |709| 
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 710,column 5,is_stmt
;----------------------------------------------------------------------
; 710 | if(bufs[i].size) {                                                     
;----------------------------------------------------------------------
        AC0 = *SP(#1) * #6 ; |710| 
        AR1 = AC0 ; |710| 
        mar(AR3 + AR1) ; |710| 
        AR1 = *AR3(short(#2)) ; |710| 
        if (AR1 == #0) goto $C$L35 ; |710| 
                                        ; branchcc occurs ; |710| 
$C$DW$L$_siu_new_cid$8$E:
$C$DW$L$_siu_new_cid$9$B:
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 711,column 7,is_stmt
;----------------------------------------------------------------------
; 711 | cidBufs[i].base   = malloc (bufs[i].size);                             
;----------------------------------------------------------------------
        AC0 = *SP(#1) * #6 ; |711| 
        AR1 = AC0 ; |711| 
        mar(AR3 + AR1) ; |711| 
        T0 = *AR3(short(#2)) ; |711| 
$C$DW$301	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$301, DW_AT_low_pc(0x00)
	.dwattr $C$DW$301, DW_AT_name("_malloc")
	.dwattr $C$DW$301, DW_AT_TI_call
        call #_malloc ; |711| 
                                        ; call occurs [#_malloc] ; |711| 
        XAR3 = dbl(*SP(#8))
        AC0 = *SP(#1) * #6 ; |711| 
        AR1 = AC0 ; |711| 
        mar(AR3 + AR1) ; |711| 
        dbl(*AR3(short(#4))) = XAR0
        XAR3 = dbl(*SP(#8))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 712,column 7,is_stmt
;----------------------------------------------------------------------
; 712 | if (cidBufs[i].base == NULL) {                                         
;----------------------------------------------------------------------
        AC0 = *SP(#1) * #6 ; |712| 
        AR1 = AC0 ; |712| 
        mar(AR3 + AR1) ; |712| 
        XAR3 = dbl(*AR3(short(#4)))
        AC0 = XAR3
        if (AC0 != #0) goto $C$L36 ; |712| 
                                        ; branchcc occurs ; |712| 
$C$DW$L$_siu_new_cid$9$E:
$C$DW$L$_siu_new_cid$10$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 713,column 9,is_stmt
;----------------------------------------------------------------------
; 713 | siuException (chnum, "No memory");                                     
;----------------------------------------------------------------------
        T0 = *SP(#0) ; |713| 
        XAR0 = #$C$FSL10 ; |713| 
$C$DW$302	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$302, DW_AT_low_pc(0x00)
	.dwattr $C$DW$302, DW_AT_name("_siuException")
	.dwattr $C$DW$302, DW_AT_TI_call
        call #_siuException ; |713| 
                                        ; call occurs [#_siuException] ; |713| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 715,column 5,is_stmt
;----------------------------------------------------------------------
; 716 | else {                                                                 
;----------------------------------------------------------------------
        goto $C$L36 ; |715| 
                                        ; branch occurs ; |715| 
$C$DW$L$_siu_new_cid$10$E:
$C$L35:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 710,column 5,is_stmt
$C$DW$L$_siu_new_cid$11$B:
        XAR3 = dbl(*SP(#8))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 717,column 7,is_stmt
;----------------------------------------------------------------------
; 717 | cidBufs[i].base   = NULL;                                              
;----------------------------------------------------------------------
        AC0 = *SP(#1) * #6 ; |717| 
        AR1 = AC0 ; |717| 

        mar(AR3 + AR1) ; |717| 
||      AC0 = #0  ; |717| 

        dbl(*AR3(short(#4))) = AC0
$C$DW$L$_siu_new_cid$11$E:
$C$L36:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 715,column 5,is_stmt
$C$DW$L$_siu_new_cid$12$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 707,column 29,is_stmt
        *SP(#1) = *SP(#1) + #1 ; |707| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 707,column 15,is_stmt
        AR1 = *SP(#3) ; |707| 
        AR2 = *SP(#1) ; |707| 
        TC1 = (AR2 < AR1) ; |707| 
        if (TC1) goto $C$L32 ; |707| 
                                        ; branchcc occurs ; |707| 
$C$DW$L$_siu_new_cid$12$E:
$C$L37:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 722,column 3,is_stmt
;----------------------------------------------------------------------
; 722 | cidCfgNew.ID        = chnum;                                           
;----------------------------------------------------------------------
        AR1 = *SP(#0) ; |722| 
        *SP(#10) = AR1 ; |722| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 725,column 3,is_stmt
;----------------------------------------------------------------------
; 725 | inst->cidInst = NULL;                                                  
;----------------------------------------------------------------------
        AC0 = #0  ; |725| 
        dbl(*AR3(short(#4))) = AC0
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 726,column 3,is_stmt
;----------------------------------------------------------------------
; 726 | inst->cidNbufs = cidNbufs;                                             
; 727 | inst->cidBufs  = &cidBufs[0];                                          
;----------------------------------------------------------------------
        AR1 = *SP(#3) ; |726| 
        *AR3(short(#6)) = AR1 ; |726| 
        XAR2 = dbl(*SP(#4))
        XAR3 = dbl(*SP(#8))
        dbl(*AR2) = XAR3
        XAR0 = dbl(*SP(#4))
        XAR1 = dbl(*SP(#8))
        XAR2 = mar(*SP(#10))

        mar(AR0 + #4) ; |729| 
||      T0 = *SP(#3) ; |729| 

	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 729,column 3,is_stmt
;----------------------------------------------------------------------
; 729 | stat = cidNew (&inst->cidInst, cidNbufs, cidBufs, &cidCfgNew);         
;----------------------------------------------------------------------
$C$DW$303	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$303, DW_AT_low_pc(0x00)
	.dwattr $C$DW$303, DW_AT_name("_cidNew")
	.dwattr $C$DW$303, DW_AT_TI_call
        call #_cidNew ; |729| 
                                        ; call occurs [#_cidNew] ; |729| 
        AR1 = T0  ; |729| 
        *SP(#2) = T0 ; |729| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 730,column 3,is_stmt
;----------------------------------------------------------------------
; 730 | if (stat != cid_NOERR) {                                               
;----------------------------------------------------------------------
        if (AR1 == #0) goto $C$L38 ; |730| 
                                        ; branchcc occurs ; |730| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 731,column 5,is_stmt
;----------------------------------------------------------------------
; 731 | siuException (chnum, "Errors in cidNew");                              
;----------------------------------------------------------------------
        T0 = *SP(#0) ; |731| 
        XAR0 = #$C$FSL11 ; |731| 
$C$DW$304	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$304, DW_AT_low_pc(0x00)
	.dwattr $C$DW$304, DW_AT_name("_siuException")
	.dwattr $C$DW$304, DW_AT_TI_call
        call #_siuException ; |731| 
                                        ; call occurs [#_siuException] ; |731| 
$C$L38:    
        SP = SP + #11
	.dwcfi	cfa_offset, 1
$C$DW$305	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$305, DW_AT_low_pc(0x00)
	.dwattr $C$DW$305, DW_AT_TI_return
        return
                                        ; return occurs

$C$DW$306	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$306, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\cid\test\ccsProjects\test_rel_c5510_C55L_COFF\Debug\cidsim.asm:$C$L32:1:1373047874")
	.dwattr $C$DW$306, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$306, DW_AT_TI_begin_line(0x2c3)
	.dwattr $C$DW$306, DW_AT_TI_end_line(0x2cf)
$C$DW$307	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$307, DW_AT_low_pc($C$DW$L$_siu_new_cid$6$B)
	.dwattr $C$DW$307, DW_AT_high_pc($C$DW$L$_siu_new_cid$6$E)
$C$DW$308	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$308, DW_AT_low_pc($C$DW$L$_siu_new_cid$8$B)
	.dwattr $C$DW$308, DW_AT_high_pc($C$DW$L$_siu_new_cid$8$E)
$C$DW$309	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$309, DW_AT_low_pc($C$DW$L$_siu_new_cid$9$B)
	.dwattr $C$DW$309, DW_AT_high_pc($C$DW$L$_siu_new_cid$9$E)
$C$DW$310	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$310, DW_AT_low_pc($C$DW$L$_siu_new_cid$10$B)
	.dwattr $C$DW$310, DW_AT_high_pc($C$DW$L$_siu_new_cid$10$E)
$C$DW$311	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$311, DW_AT_low_pc($C$DW$L$_siu_new_cid$11$B)
	.dwattr $C$DW$311, DW_AT_high_pc($C$DW$L$_siu_new_cid$11$E)
$C$DW$312	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$312, DW_AT_low_pc($C$DW$L$_siu_new_cid$12$B)
	.dwattr $C$DW$312, DW_AT_high_pc($C$DW$L$_siu_new_cid$12$E)

$C$DW$313	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$313, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\cid\test\ccsProjects\test_rel_c5510_C55L_COFF\Debug\cidsim.asm:$C$L33:2:1373047874")
	.dwattr $C$DW$313, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$313, DW_AT_TI_begin_line(0x2c4)
	.dwattr $C$DW$313, DW_AT_TI_end_line(0x2c4)
$C$DW$314	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$314, DW_AT_low_pc($C$DW$L$_siu_new_cid$7$B)
	.dwattr $C$DW$314, DW_AT_high_pc($C$DW$L$_siu_new_cid$7$E)
	.dwendtag $C$DW$313

	.dwendtag $C$DW$306

	.dwattr $C$DW$287, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$287, DW_AT_TI_end_line(0x2dd)
	.dwattr $C$DW$287, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$287

	.sect	".text"
	.global	_siu_open_cid

$C$DW$315	.dwtag  DW_TAG_subprogram, DW_AT_name("siu_open_cid")
	.dwattr $C$DW$315, DW_AT_low_pc(_siu_open_cid)
	.dwattr $C$DW$315, DW_AT_high_pc(0x00)
	.dwattr $C$DW$315, DW_AT_TI_symbol_name("_siu_open_cid")
	.dwattr $C$DW$315, DW_AT_external
	.dwattr $C$DW$315, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$315, DW_AT_TI_begin_line(0x2e7)
	.dwattr $C$DW$315, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$315, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 744,column 1,is_stmt,address _siu_open_cid

	.dwfde $C$DW$CIE, _siu_open_cid
$C$DW$316	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chnum")
	.dwattr $C$DW$316, DW_AT_TI_symbol_name("_chnum")
	.dwattr $C$DW$316, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$316, DW_AT_location[DW_OP_reg12]
;----------------------------------------------------------------------
; 743 | void siu_open_cid (tint chnum)                                         
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: siu_open_cid                                                 *
;*                                                                             *
;*   Function Uses Regs : AC0,T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,CARRY,M40,SATA, *
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_siu_open_cid:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-7
	.dwcfi	cfa_offset, 8
$C$DW$317	.dwtag  DW_TAG_variable, DW_AT_name("chnum")
	.dwattr $C$DW$317, DW_AT_TI_symbol_name("_chnum")
	.dwattr $C$DW$317, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$317, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$318	.dwtag  DW_TAG_variable, DW_AT_name("cidCfg")
	.dwattr $C$DW$318, DW_AT_TI_symbol_name("_cidCfg")
	.dwattr $C$DW$318, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$318, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$319	.dwtag  DW_TAG_variable, DW_AT_name("stat")
	.dwattr $C$DW$319, DW_AT_TI_symbol_name("_stat")
	.dwattr $C$DW$319, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$319, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$320	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$320, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$320, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$320, DW_AT_location[DW_OP_bregx 0x24 4]
;----------------------------------------------------------------------
; 745 | cidOpenConfig_t cidCfg;                                                
; 746 | tint stat;                                                             
;----------------------------------------------------------------------
        *SP(#0) = T0 ; |744| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 747,column 19,is_stmt
;----------------------------------------------------------------------
; 747 | siuInst_t      *inst = &siuInst[chnum - 1];                            
;----------------------------------------------------------------------
        AC0 = *SP(#0) * #10 ; |747| 
        AC0 = AC0 - #10 ; |747| 
        AR1 = AC0 ; |747| 
        XAR3 = #_siuInst ; |747| 

        dbl(*SP(#4)) = XAR3
||      mar(AR3 + AR1) ; |747| 

	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 749,column 3,is_stmt
;----------------------------------------------------------------------
; 749 | cidCfg.samples_per_frame = SIU_FRAME_LENGTH;                           
;----------------------------------------------------------------------
        *SP(#1) = #40 ; |749| 
        XAR3 = dbl(*SP(#4))
        XAR1 = mar(*SP(#1))
        XAR0 = dbl(*AR3(short(#4)))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 751,column 3,is_stmt
;----------------------------------------------------------------------
; 751 | stat = cidOpen (inst->cidInst, &cidCfg);                               
;----------------------------------------------------------------------
$C$DW$321	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$321, DW_AT_low_pc(0x00)
	.dwattr $C$DW$321, DW_AT_name("_cidOpen")
	.dwattr $C$DW$321, DW_AT_TI_call
        call #_cidOpen ; |751| 
                                        ; call occurs [#_cidOpen] ; |751| 
        AR1 = T0  ; |751| 
        *SP(#2) = T0 ; |751| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 753,column 3,is_stmt
;----------------------------------------------------------------------
; 753 | if (stat != cid_NOERR) {                                               
;----------------------------------------------------------------------
        if (AR1 == #0) goto $C$L39 ; |753| 
                                        ; branchcc occurs ; |753| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 754,column 5,is_stmt
;----------------------------------------------------------------------
; 754 | siuException (chnum, "Error in cidOpen");                              
;----------------------------------------------------------------------
        T0 = *SP(#0) ; |754| 
        XAR0 = #$C$FSL12 ; |754| 
$C$DW$322	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$322, DW_AT_low_pc(0x00)
	.dwattr $C$DW$322, DW_AT_name("_siuException")
	.dwattr $C$DW$322, DW_AT_TI_call
        call #_siuException ; |754| 
                                        ; call occurs [#_siuException] ; |754| 
$C$L39:    
        SP = SP + #7
	.dwcfi	cfa_offset, 1
$C$DW$323	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$323, DW_AT_low_pc(0x00)
	.dwattr $C$DW$323, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$315, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$315, DW_AT_TI_end_line(0x2f4)
	.dwattr $C$DW$315, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$315

	.sect	".text"
	.global	_siu_close_cid

$C$DW$324	.dwtag  DW_TAG_subprogram, DW_AT_name("siu_close_cid")
	.dwattr $C$DW$324, DW_AT_low_pc(_siu_close_cid)
	.dwattr $C$DW$324, DW_AT_high_pc(0x00)
	.dwattr $C$DW$324, DW_AT_TI_symbol_name("_siu_close_cid")
	.dwattr $C$DW$324, DW_AT_external
	.dwattr $C$DW$324, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$324, DW_AT_TI_begin_line(0x303)
	.dwattr $C$DW$324, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$324, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 772,column 1,is_stmt,address _siu_close_cid

	.dwfde $C$DW$CIE, _siu_close_cid
$C$DW$325	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chnum")
	.dwattr $C$DW$325, DW_AT_TI_symbol_name("_chnum")
	.dwattr $C$DW$325, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$325, DW_AT_location[DW_OP_reg12]
;----------------------------------------------------------------------
; 771 | void siu_close_cid (tint chnum)                                        
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: siu_close_cid                                                *
;*                                                                             *
;*   Function Uses Regs : AC0,T0,AR0,XAR0,AR1,AR3,XAR3,SP,CARRY,M40,SATA,SATD, *
;*                        RDM,FRCT,SMUL                                        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_siu_close_cid:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-5
	.dwcfi	cfa_offset, 6
$C$DW$326	.dwtag  DW_TAG_variable, DW_AT_name("chnum")
	.dwattr $C$DW$326, DW_AT_TI_symbol_name("_chnum")
	.dwattr $C$DW$326, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$326, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$327	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$327, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$327, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$327, DW_AT_location[DW_OP_bregx 0x24 2]
        *SP(#0) = T0 ; |772| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 773,column 14,is_stmt
;----------------------------------------------------------------------
; 773 | siuInst_t *inst = &siuInst[chnum - 1];                                 
;----------------------------------------------------------------------
        AC0 = *SP(#0) * #10 ; |773| 
        AC0 = AC0 - #10 ; |773| 
        AR1 = AC0 ; |773| 
        XAR3 = #_siuInst ; |773| 

        dbl(*SP(#2)) = XAR3
||      mar(AR3 + AR1) ; |773| 

        XAR0 = dbl(*AR3(short(#4)))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 774,column 3,is_stmt
;----------------------------------------------------------------------
; 774 | cidClose (inst->cidInst);                                              
;----------------------------------------------------------------------
$C$DW$328	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$328, DW_AT_low_pc(0x00)
	.dwattr $C$DW$328, DW_AT_name("_cidClose")
	.dwattr $C$DW$328, DW_AT_TI_call
        call #_cidClose ; |774| 
                                        ; call occurs [#_cidClose] ; |774| 
        SP = SP + #5
	.dwcfi	cfa_offset, 1
$C$DW$329	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$329, DW_AT_low_pc(0x00)
	.dwattr $C$DW$329, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$324, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$324, DW_AT_TI_end_line(0x307)
	.dwattr $C$DW$324, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$324

	.sect	".text"
	.global	_siu_delete_cid

$C$DW$330	.dwtag  DW_TAG_subprogram, DW_AT_name("siu_delete_cid")
	.dwattr $C$DW$330, DW_AT_low_pc(_siu_delete_cid)
	.dwattr $C$DW$330, DW_AT_high_pc(0x00)
	.dwattr $C$DW$330, DW_AT_TI_symbol_name("_siu_delete_cid")
	.dwattr $C$DW$330, DW_AT_external
	.dwattr $C$DW$330, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$330, DW_AT_TI_begin_line(0x316)
	.dwattr $C$DW$330, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$330, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 791,column 1,is_stmt,address _siu_delete_cid

	.dwfde $C$DW$CIE, _siu_delete_cid
$C$DW$331	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chnum")
	.dwattr $C$DW$331, DW_AT_TI_symbol_name("_chnum")
	.dwattr $C$DW$331, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$331, DW_AT_location[DW_OP_reg12]
;----------------------------------------------------------------------
; 790 | void siu_delete_cid (tint chnum)                                       
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: siu_delete_cid                                               *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,   *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_siu_delete_cid:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-5
	.dwcfi	cfa_offset, 6
$C$DW$332	.dwtag  DW_TAG_variable, DW_AT_name("chnum")
	.dwattr $C$DW$332, DW_AT_TI_symbol_name("_chnum")
	.dwattr $C$DW$332, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$332, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$333	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$333, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$333, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$333, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$334	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$334, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$334, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$334, DW_AT_location[DW_OP_bregx 0x24 2]
;----------------------------------------------------------------------
; 792 | tint i;                                                                
;----------------------------------------------------------------------
        *SP(#0) = T0 ; |791| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 793,column 14,is_stmt
;----------------------------------------------------------------------
; 793 | siuInst_t *inst = &siuInst[chnum - 1];                                 
;----------------------------------------------------------------------
        AC0 = *SP(#0) * #10 ; |793| 
        AC0 = AC0 - #10 ; |793| 
        AR1 = AC0 ; |793| 
        XAR3 = #_siuInst ; |793| 

        dbl(*SP(#2)) = XAR3
||      mar(AR3 + AR1) ; |793| 

        XAR0 = dbl(*SP(#2))
        XAR1 = dbl(*AR3)

        mar(AR0 + #4) ; |794| 
||      T0 = *AR3(short(#6)) ; |794| 

	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 794,column 3,is_stmt
;----------------------------------------------------------------------
; 794 | cidDelete (&(inst->cidInst),inst->cidNbufs,inst->cidBufs);             
;----------------------------------------------------------------------
$C$DW$335	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$335, DW_AT_low_pc(0x00)
	.dwattr $C$DW$335, DW_AT_name("_cidDelete")
	.dwattr $C$DW$335, DW_AT_TI_call
        call #_cidDelete ; |794| 
                                        ; call occurs [#_cidDelete] ; |794| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 797,column 8,is_stmt
;----------------------------------------------------------------------
; 797 | for (i = 0; i < inst->cidNbufs; i++) {                                 
;----------------------------------------------------------------------
        *SP(#1) = #0 ; |797| 
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 797,column 15,is_stmt
        AR2 = *SP(#1) ; |797| 
        AR1 = *AR3(short(#6)) ; |797| 
        TC1 = (AR2 >= AR1) ; |797| 
        if (TC1) goto $C$L41 ; |797| 
                                        ; branchcc occurs ; |797| 
$C$L40:    
$C$DW$L$_siu_delete_cid$2$B:
        XAR3 = dbl(*AR3)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 798,column 5,is_stmt
;----------------------------------------------------------------------
; 798 | free (inst->cidBufs[i].base);                                          
;----------------------------------------------------------------------
        AC0 = *SP(#1) * #6 ; |798| 
        AR1 = AC0 ; |798| 
        mar(AR3 + AR1) ; |798| 
        XAR0 = dbl(*AR3(short(#4)))
$C$DW$336	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$336, DW_AT_low_pc(0x00)
	.dwattr $C$DW$336, DW_AT_name("_free")
	.dwattr $C$DW$336, DW_AT_TI_call
        call #_free ; |798| 
                                        ; call occurs [#_free] ; |798| 
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 799,column 5,is_stmt
;----------------------------------------------------------------------
; 799 | inst->cid_heap_size -= inst->cidBufs[i].size;                          
;----------------------------------------------------------------------
        AC0 = *SP(#1) * #6 ; |799| 
        AR1 = AC0 ; |799| 
        XAR3 = dbl(*AR3)
        XAR2 = dbl(*SP(#2))
        mar(AR3 + AR1) ; |799| 
        AR1 = *AR3(short(#2)) ; |799| 
        AR1 = *AR2(short(#7)) - AR1 ; |799| 
        *AR2(short(#7)) = AR1 ; |799| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 797,column 35,is_stmt
        *SP(#1) = *SP(#1) + #1 ; |797| 
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 797,column 15,is_stmt
        AR2 = *SP(#1) ; |797| 
        AR1 = *AR3(short(#6)) ; |797| 
        TC1 = (AR2 < AR1) ; |797| 
        if (TC1) goto $C$L40 ; |797| 
                                        ; branchcc occurs ; |797| 
$C$DW$L$_siu_delete_cid$2$E:
$C$L41:    
        XAR0 = dbl(*AR3)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 803,column 3,is_stmt
;----------------------------------------------------------------------
; 803 | free (inst->cidBufs);                                                  
;----------------------------------------------------------------------
$C$DW$337	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$337, DW_AT_low_pc(0x00)
	.dwattr $C$DW$337, DW_AT_name("_free")
	.dwattr $C$DW$337, DW_AT_TI_call
        call #_free ; |803| 
                                        ; call occurs [#_free] ; |803| 
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 804,column 3,is_stmt
;----------------------------------------------------------------------
; 804 | inst->cidBufs = NULL;                                                  
;----------------------------------------------------------------------
        AC0 = #0  ; |804| 
        dbl(*AR3) = AC0
        XAR3 = dbl(*SP(#2))
        XAR2 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 805,column 3,is_stmt
;----------------------------------------------------------------------
; 805 | inst->aux_heap_size -= inst->cidNbufs * sizeof(ecomemBuffer_t);        
;----------------------------------------------------------------------
        AC0 = *AR3(short(#6)) * #6 ; |805| 
        AR1 = *AR2(#8) - AC0 ; |805| 
        *AR2(#8) = AR1 ; |805| 
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 806,column 3,is_stmt
;----------------------------------------------------------------------
; 806 | inst->cidNbufs = 0;                                                    
;----------------------------------------------------------------------
        *AR3(short(#6)) = #0 ; |806| 
        SP = SP + #5
	.dwcfi	cfa_offset, 1
$C$DW$338	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$338, DW_AT_low_pc(0x00)
	.dwattr $C$DW$338, DW_AT_TI_return
        return
                                        ; return occurs

$C$DW$339	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$339, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\cid\test\ccsProjects\test_rel_c5510_C55L_COFF\Debug\cidsim.asm:$C$L40:1:1373047874")
	.dwattr $C$DW$339, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$339, DW_AT_TI_begin_line(0x31d)
	.dwattr $C$DW$339, DW_AT_TI_end_line(0x320)
$C$DW$340	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$340, DW_AT_low_pc($C$DW$L$_siu_delete_cid$2$B)
	.dwattr $C$DW$340, DW_AT_high_pc($C$DW$L$_siu_delete_cid$2$E)
	.dwendtag $C$DW$339

	.dwattr $C$DW$330, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$330, DW_AT_TI_end_line(0x329)
	.dwattr $C$DW$330, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$330

	.sect	".text"
	.global	_siu_open_csm

$C$DW$341	.dwtag  DW_TAG_subprogram, DW_AT_name("siu_open_csm")
	.dwattr $C$DW$341, DW_AT_low_pc(_siu_open_csm)
	.dwattr $C$DW$341, DW_AT_high_pc(0x00)
	.dwattr $C$DW$341, DW_AT_TI_symbol_name("_siu_open_csm")
	.dwattr $C$DW$341, DW_AT_external
	.dwattr $C$DW$341, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$341, DW_AT_TI_begin_line(0x330)
	.dwattr $C$DW$341, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$341, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 817,column 1,is_stmt,address _siu_open_csm

	.dwfde $C$DW$CIE, _siu_open_csm
;----------------------------------------------------------------------
; 816 | void siu_open_csm ()                                                   
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: siu_open_csm                                                 *
;*                                                                             *
;*   Function Uses Regs : T0,T1,AR0,XAR0,AR1,XAR1,SP,M40,SATA,SATD,RDM,FRCT,   *
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 2 words                                              *
;*                        (2 return address/alignment)                         *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_siu_open_csm:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-1
	.dwcfi	cfa_offset, 2
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 819,column 3,is_stmt
;----------------------------------------------------------------------
; 819 | wngInit (siuSetup.chSim.nlevel, siuSetup.chSim.nseed, &csmInst.nscale, 
; 820 |          &csmInst.rng_state);                                          
;----------------------------------------------------------------------
        T0 = *(#(_siuSetup+24)) ; |819| 
        T1 = *(#(_siuSetup+25)) ; |819| 
        XAR1 = #(_csmInst+1) ; |819| 
        XAR0 = #_csmInst ; |819| 
$C$DW$342	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$342, DW_AT_low_pc(0x00)
	.dwattr $C$DW$342, DW_AT_name("_wngInit")
	.dwattr $C$DW$342, DW_AT_TI_call
        call #_wngInit ; |819| 
                                        ; call occurs [#_wngInit] ; |819| 
        SP = SP + #1
	.dwcfi	cfa_offset, 1
$C$DW$343	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$343, DW_AT_low_pc(0x00)
	.dwattr $C$DW$343, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$341, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$341, DW_AT_TI_end_line(0x335)
	.dwattr $C$DW$341, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$341

	.sect	".text"
	.global	_siu_open_rxsgn

$C$DW$344	.dwtag  DW_TAG_subprogram, DW_AT_name("siu_open_rxsgn")
	.dwattr $C$DW$344, DW_AT_low_pc(_siu_open_rxsgn)
	.dwattr $C$DW$344, DW_AT_high_pc(0x00)
	.dwattr $C$DW$344, DW_AT_TI_symbol_name("_siu_open_rxsgn")
	.dwattr $C$DW$344, DW_AT_external
	.dwattr $C$DW$344, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$344, DW_AT_TI_begin_line(0x33c)
	.dwattr $C$DW$344, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$344, DW_AT_TI_max_frame_size(0x26)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 829,column 1,is_stmt,address _siu_open_rxsgn

	.dwfde $C$DW$CIE, _siu_open_rxsgn
$C$DW$345	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chnum")
	.dwattr $C$DW$345, DW_AT_TI_symbol_name("_chnum")
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$345, DW_AT_location[DW_OP_reg12]
;----------------------------------------------------------------------
; 828 | void siu_open_rxsgn (tint chnum)                                       
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: siu_open_rxsgn                                               *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,M40,SATA,   *
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 38 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (36 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_siu_open_rxsgn:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-37
	.dwcfi	cfa_offset, 38
$C$DW$346	.dwtag  DW_TAG_variable, DW_AT_name("chnum")
	.dwattr $C$DW$346, DW_AT_TI_symbol_name("_chnum")
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$346, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$347	.dwtag  DW_TAG_variable, DW_AT_name("cfg")
	.dwattr $C$DW$347, DW_AT_TI_symbol_name("_cfg")
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$347, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$348	.dwtag  DW_TAG_variable, DW_AT_name("sgnSize")
	.dwattr $C$DW$348, DW_AT_TI_symbol_name("_sgnSize")
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$348, DW_AT_location[DW_OP_bregx 0x24 34]
$C$DW$349	.dwtag  DW_TAG_variable, DW_AT_name("retVal")
	.dwattr $C$DW$349, DW_AT_TI_symbol_name("_retVal")
	.dwattr $C$DW$349, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$349, DW_AT_location[DW_OP_bregx 0x24 35]
;----------------------------------------------------------------------
; 830 | sgnConfig_t cfg;                                                       
; 831 | tint sgnSize;                                                          
; 832 | tint retVal;                                                           
;----------------------------------------------------------------------
        *SP(#0) = T0 ; |829| 
        XAR0 = mar(*SP(#34))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 835,column 3,is_stmt
;----------------------------------------------------------------------
; 835 | retVal = sgnGetSizes(&sgnSize);                                        
;----------------------------------------------------------------------
$C$DW$350	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$350, DW_AT_low_pc(0x00)
	.dwattr $C$DW$350, DW_AT_name("_sgnGetSizes")
	.dwattr $C$DW$350, DW_AT_TI_call
        call #_sgnGetSizes ; |835| 
                                        ; call occurs [#_sgnGetSizes] ; |835| 
        AR1 = T0  ; |835| 
        *SP(#35) = T0 ; |835| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 836,column 3,is_stmt
;----------------------------------------------------------------------
; 836 | if (retVal != sgn_NOERR){                                              
;----------------------------------------------------------------------
        if (AR1 == #0) goto $C$L42 ; |836| 
                                        ; branchcc occurs ; |836| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 837,column 5,is_stmt
;----------------------------------------------------------------------
; 837 | siuException (chnum, "Error in sgnCreate");                            
;----------------------------------------------------------------------
        T0 = *SP(#0) ; |837| 
        XAR0 = #$C$FSL13 ; |837| 
$C$DW$351	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$351, DW_AT_low_pc(0x00)
	.dwattr $C$DW$351, DW_AT_name("_siuException")
	.dwattr $C$DW$351, DW_AT_TI_call
        call #_siuException ; |837| 
                                        ; call occurs [#_siuException] ; |837| 
$C$L42:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 839,column 3,is_stmt
;----------------------------------------------------------------------
; 839 | sgnRxInst = malloc (sgnSize);                                          
;----------------------------------------------------------------------
        T0 = *SP(#34) ; |839| 
$C$DW$352	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$352, DW_AT_low_pc(0x00)
	.dwattr $C$DW$352, DW_AT_name("_malloc")
	.dwattr $C$DW$352, DW_AT_TI_call
        call #_malloc ; |839| 
                                        ; call occurs [#_malloc] ; |839| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 842,column 3,is_stmt
;----------------------------------------------------------------------
; 842 | cfg.dc_offset     = siuSetup.rxSGN.dcoffset;                           
;----------------------------------------------------------------------
        AR1 = *(#(_siuSetup+28)) ; |842| 
        *SP(#3) = AR1 ; |842| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 843,column 3,is_stmt
;----------------------------------------------------------------------
; 843 | cfg.wf_type       = siuSetup.rxSGN.wftype;                             
; 844 | cfg.f1            = siuSetup.rxSGN.f1;                                 
; 845 | cfg.f2            = siuSetup.rxSGN.f2;                                 
; 846 | cfg.t_amp1        = siuSetup.rxSGN.amp1;                               
; 847 | cfg.t_amp2        = siuSetup.rxSGN.amp2;                               
; 848 | cfg.pr_period     = 1000;       /* # of samples between phase reversals
;     |  */                                                                    
; 849 | cfg.pr_enable     = FALSE;      /* disable phase reversal */           
; 850 | cfg.noise_level   = siuSetup.rxSGN.nlevel;                             
; 851 | cfg.noise_seed    = siuSetup.rxSGN.nseed;                              
; 852 | cfg.noise_type    = siuSetup.rxSGN.ntype;                              
;----------------------------------------------------------------------
        AR1 = *(#(_siuSetup+29)) ; |843| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 853,column 3,is_stmt
;----------------------------------------------------------------------
; 853 | cfg.fsk_duration  = 90;         /* 90/300 = 300ms */                   
;----------------------------------------------------------------------
        AC0 = #90 ; |853| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 854,column 3,is_stmt
;----------------------------------------------------------------------
; 854 | cfg.fsk_dataptr   = &v21_flags;                                        
; 855 | cfg.fsk_numword   = 1;          /* 1 word for V21 flags */             
;----------------------------------------------------------------------
        XAR3 = #_v21_flags ; |854| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 843,column 3,is_stmt
        *SP(#4) = AR1 ; |843| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 844,column 3,is_stmt
        AR1 = *(#(_siuSetup+30)) ; |844| 
        *SP(#5) = AR1 ; |844| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 845,column 3,is_stmt
        AR1 = *(#(_siuSetup+31)) ; |845| 
        *SP(#6) = AR1 ; |845| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 846,column 3,is_stmt
        AR1 = *(#(_siuSetup+32)) ; |846| 
        *SP(#8) = AR1 ; |846| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 847,column 3,is_stmt
        AR1 = *(#(_siuSetup+33)) ; |847| 
        *SP(#9) = AR1 ; |847| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 850,column 3,is_stmt
        AR1 = *(#(_siuSetup+34)) ; |850| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 848,column 3,is_stmt
        *SP(#10) = #1000 ; |848| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 849,column 3,is_stmt
        *SP(#11) = #0 ; |849| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 850,column 3,is_stmt
        *SP(#17) = AR1 ; |850| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 851,column 3,is_stmt
        AR1 = *(#(_siuSetup+35)) ; |851| 
        *SP(#18) = AR1 ; |851| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 852,column 3,is_stmt
        AR1 = *(#(_siuSetup+36)) ; |852| 
        *SP(#19) = AR1 ; |852| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 856,column 3,is_stmt
;----------------------------------------------------------------------
; 856 | cfg.power_level   = siuSetup.rxSGN.pow_level;                          
;----------------------------------------------------------------------
        AR1 = *(#(_siuSetup+37)) ; |856| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 853,column 3,is_stmt
        dbl(*SP(#12)) = AC0 ; |853| 
        dbl(*SP(#14)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 855,column 3,is_stmt
        *SP(#16) = #1 ; |855| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 856,column 3,is_stmt
        *SP(#20) = AR1 ; |856| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 857,column 3,is_stmt
;----------------------------------------------------------------------
; 857 | cfg.hoth_wng_seed = siuSetup.rxSGN.hoth_seed;                          
;----------------------------------------------------------------------
        AR1 = *(#(_siuSetup+38)) ; |857| 
        *SP(#21) = AR1 ; |857| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 858,column 3,is_stmt
;----------------------------------------------------------------------
; 858 | cfg.file_io_fcn   = siu_rx_file;                                       
;----------------------------------------------------------------------
        AC0 = #(_siu_rx_file >> 16) << #16 ; |858| 
        AC0 = AC0 | #(_siu_rx_file & 0xffff) ; |858| 
        dbl(*(#_sgnRxInst)) = XAR0
        XAR1 = mar(*SP(#2))
        dbl(*SP(#22)) = AC0 ; |858| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 859,column 3,is_stmt
;----------------------------------------------------------------------
; 859 | cfg.exception     = siuException;                                      
;----------------------------------------------------------------------
        AC0 = #(_siuException >> 16) << #16 ; |859| 
        AC0 = AC0 | #(_siuException & 0xffff) ; |859| 
        dbl(*SP(#30)) = AC0 ; |859| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 860,column 3,is_stmt
;----------------------------------------------------------------------
; 860 | cfg.debug         = siuDebugInternal;                                  
;----------------------------------------------------------------------
        AC0 = #(_siuDebugInternal >> 16) << #16 ; |860| 
        AC0 = AC0 | #(_siuDebugInternal & 0xffff) ; |860| 
        dbl(*SP(#32)) = AC0 ; |860| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 862,column 3,is_stmt
;----------------------------------------------------------------------
; 862 | sgnInit (sgnRxInst, &cfg);                                             
;----------------------------------------------------------------------
$C$DW$353	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$353, DW_AT_low_pc(0x00)
	.dwattr $C$DW$353, DW_AT_name("_sgnInit")
	.dwattr $C$DW$353, DW_AT_TI_call
        call #_sgnInit ; |862| 
                                        ; call occurs [#_sgnInit] ; |862| 
        SP = SP + #37
	.dwcfi	cfa_offset, 1
$C$DW$354	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$354, DW_AT_low_pc(0x00)
	.dwattr $C$DW$354, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$344, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$344, DW_AT_TI_end_line(0x35f)
	.dwattr $C$DW$344, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$344

	.sect	".text"
	.global	_siu_set_sgn

$C$DW$355	.dwtag  DW_TAG_subprogram, DW_AT_name("siu_set_sgn")
	.dwattr $C$DW$355, DW_AT_low_pc(_siu_set_sgn)
	.dwattr $C$DW$355, DW_AT_high_pc(0x00)
	.dwattr $C$DW$355, DW_AT_TI_symbol_name("_siu_set_sgn")
	.dwattr $C$DW$355, DW_AT_external
	.dwattr $C$DW$355, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$355, DW_AT_TI_begin_line(0x36a)
	.dwattr $C$DW$355, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$355, DW_AT_TI_max_frame_size(0x0e)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 875,column 1,is_stmt,address _siu_set_sgn

	.dwfde $C$DW$CIE, _siu_set_sgn
$C$DW$356	.dwtag  DW_TAG_formal_parameter, DW_AT_name("inst")
	.dwattr $C$DW$356, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$356, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$356, DW_AT_location[DW_OP_reg17]
$C$DW$357	.dwtag  DW_TAG_formal_parameter, DW_AT_name("sgn")
	.dwattr $C$DW$357, DW_AT_TI_symbol_name("_sgn")
	.dwattr $C$DW$357, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$357, DW_AT_location[DW_OP_reg19]
;----------------------------------------------------------------------
; 874 | void siu_set_sgn (void *inst, siuSGNPars_t *sgn)                       
; 876 | sgnControl_t  ctl;                                                     
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: siu_set_sgn                                                  *
;*                                                                             *
;*   Function Uses Regs : AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,TC1,M40,SATA,SATD,RDM, *
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 14 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (12 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_siu_set_sgn:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-13
	.dwcfi	cfa_offset, 14
$C$DW$358	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$358, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$358, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$358, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$359	.dwtag  DW_TAG_variable, DW_AT_name("sgn")
	.dwattr $C$DW$359, DW_AT_TI_symbol_name("_sgn")
	.dwattr $C$DW$359, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$359, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$360	.dwtag  DW_TAG_variable, DW_AT_name("ctl")
	.dwattr $C$DW$360, DW_AT_TI_symbol_name("_ctl")
	.dwattr $C$DW$360, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$360, DW_AT_location[DW_OP_bregx 0x24 4]
        dbl(*SP(#2)) = XAR1
        dbl(*SP(#0)) = XAR0
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 878,column 3,is_stmt
;----------------------------------------------------------------------
; 878 | if (sgn->state) {                                                      
;----------------------------------------------------------------------
        AR1 = *AR3 ; |878| 
        if (AR1 == #0) goto $C$L48 ; |878| 
                                        ; branchcc occurs ; |878| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 879,column 5,is_stmt
;----------------------------------------------------------------------
; 879 | if (sgn->wftype == sgn_WFT_CSS || sgn->wftype == sgn_WFT_CSS_DTK) {    
;----------------------------------------------------------------------
        TC1 = (*AR3(short(#2)) == #4) ; |879| 
        if (TC1) goto $C$L43 ; |879| 
                                        ; branchcc occurs ; |879| 
        TC1 = (*AR3(short(#2)) == #5) ; |879| 
        if (!TC1) goto $C$L44 ; |879| 
                                        ; branchcc occurs ; |879| 
$C$L43:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 880,column 7,is_stmt
;----------------------------------------------------------------------
; 880 | ctl.code          = sgn_CTL_CSS_POW;                                   
; 881 | ctl.u.power_level = sgn->pow_level;                                    
;----------------------------------------------------------------------
        *SP(#4) = #6 ; |880| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 882,column 5,is_stmt
        goto $C$L45 ; |882| 
                                        ; branch occurs ; |882| 
$C$L44:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 883,column 10,is_stmt
;----------------------------------------------------------------------
; 883 | else if (sgn->wftype == sgn_WFT_HOTH) {                                
;----------------------------------------------------------------------
        TC1 = (*AR3(short(#2)) == #7) ; |883| 
        if (!TC1) goto $C$L46 ; |883| 
                                        ; branchcc occurs ; |883| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 884,column 7,is_stmt
;----------------------------------------------------------------------
; 884 | ctl.code          = sgn_CTL_HOTH_POW;                                  
;----------------------------------------------------------------------
        *SP(#4) = #8 ; |884| 
$C$L45:    
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 885,column 7,is_stmt
;----------------------------------------------------------------------
; 885 | ctl.u.power_level = sgn->pow_level;                                    
;----------------------------------------------------------------------
        AR1 = *AR3(#10) ; |885| 
        *SP(#6) = AR1 ; |885| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 886,column 5,is_stmt
;----------------------------------------------------------------------
; 887 | else {                                                                 
;----------------------------------------------------------------------
        goto $C$L47 ; |886| 
                                        ; branch occurs ; |886| 
$C$L46:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 888,column 7,is_stmt
;----------------------------------------------------------------------
; 888 | ctl.code      = sgn_CTL_TONE;                                          
;----------------------------------------------------------------------
        *SP(#4) = #1 ; |888| 
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 889,column 7,is_stmt
;----------------------------------------------------------------------
; 889 | ctl.u.t.f1    = sgn->f1;                                               
;----------------------------------------------------------------------
        AR1 = *AR3(short(#3)) ; |889| 
        *SP(#6) = AR1 ; |889| 
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 890,column 7,is_stmt
;----------------------------------------------------------------------
; 890 | ctl.u.t.f2    = sgn->f2;                                               
;----------------------------------------------------------------------
        AR1 = *AR3(short(#4)) ; |890| 
        *SP(#7) = AR1 ; |890| 
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 891,column 7,is_stmt
;----------------------------------------------------------------------
; 891 | ctl.u.t.amp1  = sgn->amp1;                                             
;----------------------------------------------------------------------
        AR1 = *AR3(short(#5)) ; |891| 
        *SP(#8) = AR1 ; |891| 
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 892,column 7,is_stmt
;----------------------------------------------------------------------
; 892 | ctl.u.t.amp2  = sgn->amp2;                                             
;----------------------------------------------------------------------
        AR1 = *AR3(short(#6)) ; |892| 
        *SP(#9) = AR1 ; |892| 
$C$L47:    
        XAR0 = dbl(*SP(#0))
        XAR1 = mar(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 894,column 5,is_stmt
;----------------------------------------------------------------------
; 894 | sgnControl (inst, &ctl);                                               
;----------------------------------------------------------------------
$C$DW$361	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$361, DW_AT_low_pc(0x00)
	.dwattr $C$DW$361, DW_AT_name("_sgnControl")
	.dwattr $C$DW$361, DW_AT_TI_call
        call #_sgnControl ; |894| 
                                        ; call occurs [#_sgnControl] ; |894| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 896,column 5,is_stmt
;----------------------------------------------------------------------
; 896 | ctl.code           = sgn_CTL_NOISE;                                    
;----------------------------------------------------------------------
        *SP(#4) = #2 ; |896| 
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 897,column 5,is_stmt
;----------------------------------------------------------------------
; 897 | ctl.u.noise_level  = sgn->nlevel;                                      
;----------------------------------------------------------------------
        AR1 = *AR3(short(#7)) ; |897| 
        *SP(#6) = AR1 ; |897| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 898,column 3,is_stmt
;----------------------------------------------------------------------
; 899 | else {                                                                 
;----------------------------------------------------------------------
        goto $C$L52 ; |898| 
                                        ; branch occurs ; |898| 
$C$L48:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 900,column 5,is_stmt
;----------------------------------------------------------------------
; 900 | if (sgn->wftype == sgn_WFT_CSS || sgn->wftype == sgn_WFT_CSS_DTK) {    
;----------------------------------------------------------------------
        TC1 = (*AR3(short(#2)) == #4) ; |900| 
        if (TC1) goto $C$L49 ; |900| 
                                        ; branchcc occurs ; |900| 
        TC1 = (*AR3(short(#2)) == #5) ; |900| 
        if (!TC1) goto $C$L50 ; |900| 
                                        ; branchcc occurs ; |900| 
$C$L49:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 901,column 7,is_stmt
;----------------------------------------------------------------------
; 901 | ctl.code          = sgn_CTL_CSS_POW;                                   
;----------------------------------------------------------------------
        *SP(#4) = #6 ; |901| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 902,column 7,is_stmt
;----------------------------------------------------------------------
; 902 | ctl.u.power_level = -80;                                               
;----------------------------------------------------------------------
        *SP(#6) = #-80 ; |902| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 903,column 5,is_stmt
        goto $C$L51 ; |903| 
                                        ; branch occurs ; |903| 
$C$L50:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 904,column 10,is_stmt
;----------------------------------------------------------------------
; 904 | else if (sgn->wftype == sgn_WFT_HOTH) {                                
;----------------------------------------------------------------------
        TC1 = (*AR3(short(#2)) == #7) ; |904| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 905,column 7,is_stmt
;----------------------------------------------------------------------
; 905 | ctl.code          = sgn_CTL_HOTH_POW;                                  
;----------------------------------------------------------------------
        if (TC1) execute (D_Unit) ||
           *SP(#4) = #8 ; |905| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 906,column 7,is_stmt
;----------------------------------------------------------------------
; 906 | ctl.u.power_level = -80;                                               
;----------------------------------------------------------------------
        if (TC1) execute (D_Unit) ||
           *SP(#6) = #-80 ; |906| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 907,column 5,is_stmt
;----------------------------------------------------------------------
; 908 | else {                                                                 
;----------------------------------------------------------------------
        if (TC1) goto $C$L51 ; |907| 
                                        ; branchcc occurs ; |907| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 909,column 7,is_stmt
;----------------------------------------------------------------------
; 909 | ctl.code     = sgn_CTL_TONE;                                           
;----------------------------------------------------------------------
        *SP(#4) = #1 ; |909| 
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 910,column 7,is_stmt
;----------------------------------------------------------------------
; 910 | ctl.u.t.f1   = sgn->f1;                                                
;----------------------------------------------------------------------
        AR1 = *AR3(short(#3)) ; |910| 
        *SP(#6) = AR1 ; |910| 
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 911,column 7,is_stmt
;----------------------------------------------------------------------
; 911 | ctl.u.t.f2   = sgn->f2;                                                
;----------------------------------------------------------------------
        AR1 = *AR3(short(#4)) ; |911| 
        *SP(#7) = AR1 ; |911| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 912,column 7,is_stmt
;----------------------------------------------------------------------
; 912 | ctl.u.t.amp1 = 0;                                                      
;----------------------------------------------------------------------
        *SP(#8) = #0 ; |912| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 913,column 7,is_stmt
;----------------------------------------------------------------------
; 913 | ctl.u.t.amp2 = 0;                                                      
;----------------------------------------------------------------------
        *SP(#9) = #0 ; |913| 
$C$L51:    
        XAR0 = dbl(*SP(#0))
        XAR1 = mar(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 915,column 5,is_stmt
;----------------------------------------------------------------------
; 915 | sgnControl (inst, &ctl);                                               
;----------------------------------------------------------------------
$C$DW$362	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$362, DW_AT_low_pc(0x00)
	.dwattr $C$DW$362, DW_AT_name("_sgnControl")
	.dwattr $C$DW$362, DW_AT_TI_call
        call #_sgnControl ; |915| 
                                        ; call occurs [#_sgnControl] ; |915| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 917,column 5,is_stmt
;----------------------------------------------------------------------
; 917 | ctl.code           = sgn_CTL_NOISE;                                    
;----------------------------------------------------------------------
        *SP(#4) = #2 ; |917| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 918,column 5,is_stmt
;----------------------------------------------------------------------
; 918 | ctl.u.noise_level  = -80;                                              
;----------------------------------------------------------------------
        *SP(#6) = #-80 ; |918| 
$C$L52:    
        XAR0 = dbl(*SP(#0))
        XAR1 = mar(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 920,column 3,is_stmt
;----------------------------------------------------------------------
; 920 | sgnControl (inst, &ctl);                                               
;----------------------------------------------------------------------
$C$DW$363	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$363, DW_AT_low_pc(0x00)
	.dwattr $C$DW$363, DW_AT_name("_sgnControl")
	.dwattr $C$DW$363, DW_AT_TI_call
        call #_sgnControl ; |920| 
                                        ; call occurs [#_sgnControl] ; |920| 
        SP = SP + #13
	.dwcfi	cfa_offset, 1
$C$DW$364	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$364, DW_AT_low_pc(0x00)
	.dwattr $C$DW$364, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$355, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$355, DW_AT_TI_end_line(0x399)
	.dwattr $C$DW$355, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$355

	.sect	".text"
	.global	_main

$C$DW$365	.dwtag  DW_TAG_subprogram, DW_AT_name("main")
	.dwattr $C$DW$365, DW_AT_low_pc(_main)
	.dwattr $C$DW$365, DW_AT_high_pc(0x00)
	.dwattr $C$DW$365, DW_AT_TI_symbol_name("_main")
	.dwattr $C$DW$365, DW_AT_external
	.dwattr $C$DW$365, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$365, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$365, DW_AT_TI_begin_line(0x3a2)
	.dwattr $C$DW$365, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$365, DW_AT_TI_max_frame_size(0x14)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 931,column 1,is_stmt,address _main

	.dwfde $C$DW$CIE, _main
$C$DW$366	.dwtag  DW_TAG_formal_parameter, DW_AT_name("argc")
	.dwattr $C$DW$366, DW_AT_TI_symbol_name("_argc")
	.dwattr $C$DW$366, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$366, DW_AT_location[DW_OP_reg12]
$C$DW$367	.dwtag  DW_TAG_formal_parameter, DW_AT_name("argv")
	.dwattr $C$DW$367, DW_AT_TI_symbol_name("_argv")
	.dwattr $C$DW$367, DW_AT_type(*$C$DW$T$165)
	.dwattr $C$DW$367, DW_AT_location[DW_OP_reg17]
;----------------------------------------------------------------------
; 930 | int main (int argc, char *argv[])                                      
; 932 | int i;                                                                 
; 933 | tbool rxReplace, genWork;                                              
; 934 | tint chnum, frame_size, error;                                         
; 935 | cidCreateConfig_t create_cfg;                                          
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: main                                                         *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,   *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 20 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (3 function parameters)                              *
;*                        (15 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_main:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-19
	.dwcfi	cfa_offset, 20
$C$DW$368	.dwtag  DW_TAG_variable, DW_AT_name("argc")
	.dwattr $C$DW$368, DW_AT_TI_symbol_name("_argc")
	.dwattr $C$DW$368, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$368, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$369	.dwtag  DW_TAG_variable, DW_AT_name("argv")
	.dwattr $C$DW$369, DW_AT_TI_symbol_name("_argv")
	.dwattr $C$DW$369, DW_AT_type(*$C$DW$T$165)
	.dwattr $C$DW$369, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$370	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$370, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$370, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$370, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$371	.dwtag  DW_TAG_variable, DW_AT_name("rxReplace")
	.dwattr $C$DW$371, DW_AT_TI_symbol_name("_rxReplace")
	.dwattr $C$DW$371, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$371, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$372	.dwtag  DW_TAG_variable, DW_AT_name("genWork")
	.dwattr $C$DW$372, DW_AT_TI_symbol_name("_genWork")
	.dwattr $C$DW$372, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$372, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$373	.dwtag  DW_TAG_variable, DW_AT_name("chnum")
	.dwattr $C$DW$373, DW_AT_TI_symbol_name("_chnum")
	.dwattr $C$DW$373, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$373, DW_AT_location[DW_OP_bregx 0x24 9]
$C$DW$374	.dwtag  DW_TAG_variable, DW_AT_name("frame_size")
	.dwattr $C$DW$374, DW_AT_TI_symbol_name("_frame_size")
	.dwattr $C$DW$374, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$374, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$375	.dwtag  DW_TAG_variable, DW_AT_name("error")
	.dwattr $C$DW$375, DW_AT_TI_symbol_name("_error")
	.dwattr $C$DW$375, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$375, DW_AT_location[DW_OP_bregx 0x24 11]
$C$DW$376	.dwtag  DW_TAG_variable, DW_AT_name("create_cfg")
	.dwattr $C$DW$376, DW_AT_TI_symbol_name("_create_cfg")
	.dwattr $C$DW$376, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$376, DW_AT_location[DW_OP_bregx 0x24 12]
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 937,column 3,is_stmt
;----------------------------------------------------------------------
; 937 | printf("START TEST\n");                                                
;----------------------------------------------------------------------
        XAR3 = #$C$FSL14 ; |937| 
        dbl(*SP(#4)) = XAR0
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 931,column 1,is_stmt
        *SP(#3) = T0 ; |931| 
        dbl(*SP(#0)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 937,column 3,is_stmt
$C$DW$377	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$377, DW_AT_low_pc(0x00)
	.dwattr $C$DW$377, DW_AT_name("_printf")
	.dwattr $C$DW$377, DW_AT_TI_call
        call #_printf ; |937| 
                                        ; call occurs [#_printf] ; |937| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 943,column 3,is_stmt
;----------------------------------------------------------------------
; 943 | frame_size = siuSetup.frame_size;                                      
;----------------------------------------------------------------------
        AR1 = *(#(_siuSetup+1)) ; |943| 
        *SP(#10) = AR1 ; |943| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 945,column 3,is_stmt
;----------------------------------------------------------------------
; 945 | frame_in = (linSample*) malloc (frame_size*sizeof(linSample));         
;----------------------------------------------------------------------
        T0 = *SP(#10) ; |945| 
$C$DW$378	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$378, DW_AT_low_pc(0x00)
	.dwattr $C$DW$378, DW_AT_name("_malloc")
	.dwattr $C$DW$378, DW_AT_TI_call
        call #_malloc ; |945| 
                                        ; call occurs [#_malloc] ; |945| 
        dbl(*(#_frame_in)) = XAR0
        XAR3 = dbl(*(#_frame_in))
        AC0 = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 946,column 3,is_stmt
;----------------------------------------------------------------------
; 946 | if (frame_in == NULL) {                                                
;----------------------------------------------------------------------
        if (AC0 != #0) goto $C$L53 ; |946| 
                                        ; branchcc occurs ; |946| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 947,column 4,is_stmt
;----------------------------------------------------------------------
; 947 | siuException (3, "Can not allocate memory for frame");                 
;----------------------------------------------------------------------
        XAR0 = #$C$FSL15 ; |947| 
        T0 = #3
$C$DW$379	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$379, DW_AT_low_pc(0x00)
	.dwattr $C$DW$379, DW_AT_name("_siuException")
	.dwattr $C$DW$379, DW_AT_TI_call
        call #_siuException ; |947| 
                                        ; call occurs [#_siuException] ; |947| 
$C$L53:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 951,column 3,is_stmt
;----------------------------------------------------------------------
; 951 | chnum = 1;                                                             
;----------------------------------------------------------------------
        *SP(#9) = #1 ; |951| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 952,column 3,is_stmt
;----------------------------------------------------------------------
; 952 | siu_open_rxsgn (chnum);                                                
;----------------------------------------------------------------------
        T0 = *SP(#9) ; |952| 
$C$DW$380	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$380, DW_AT_low_pc(0x00)
	.dwattr $C$DW$380, DW_AT_name("_siu_open_rxsgn")
	.dwattr $C$DW$380, DW_AT_TI_call
        call #_siu_open_rxsgn ; |952| 
                                        ; call occurs [#_siu_open_rxsgn] ; |952| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 955,column 3,is_stmt
;----------------------------------------------------------------------
; 955 | cidsim_profile_init ();                                                
;----------------------------------------------------------------------
$C$DW$381	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$381, DW_AT_low_pc(0x00)
	.dwattr $C$DW$381, DW_AT_name("_cidsim_profile_init")
	.dwattr $C$DW$381, DW_AT_TI_call
        call #_cidsim_profile_init ; |955| 
                                        ; call occurs [#_cidsim_profile_init] ; |955| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 958,column 3,is_stmt
;----------------------------------------------------------------------
; 958 | siu_open_csm ();                                                       
; 960 | #if cid_USE_GMP                                                        
; 961 | tstgmpInit (); /* GMP simulation initialization */                     
; 962 | #endif                                                                 
;----------------------------------------------------------------------
$C$DW$382	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$382, DW_AT_low_pc(0x00)
	.dwattr $C$DW$382, DW_AT_name("_siu_open_csm")
	.dwattr $C$DW$382, DW_AT_TI_call
        call #_siu_open_csm ; |958| 
                                        ; call occurs [#_siu_open_csm] ; |958| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 965,column 3,is_stmt
;----------------------------------------------------------------------
; 965 | create_cfg.debugInfo          = siuDebugInfo;                          
;----------------------------------------------------------------------
        AC0 = #(_siuDebugInfo >> 16) << #16 ; |965| 
        XAR0 = mar(*SP(#12))
        AC0 = AC0 | #(_siuDebugInfo & 0xffff) ; |965| 
        dbl(*SP(#12)) = AC0 ; |965| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 966,column 3,is_stmt
;----------------------------------------------------------------------
; 966 | create_cfg.reportOutFcn       = siuCidRptIn;                           
;----------------------------------------------------------------------
        AC0 = #(_siuCidRptIn >> 16) << #16 ; |966| 
        AC0 = AC0 | #(_siuCidRptIn & 0xffff) ; |966| 
        dbl(*SP(#14)) = AC0 ; |966| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 967,column 3,is_stmt
;----------------------------------------------------------------------
; 967 | create_cfg.maxSamplesPerFrame = SIU_MAX_FRAME_LENGTH;                  
;----------------------------------------------------------------------
        *SP(#16) = #44 ; |967| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 968,column 3,is_stmt
;----------------------------------------------------------------------
; 968 | create_cfg.maxFragmentSize    = 20;                                    
;----------------------------------------------------------------------
        *SP(#17) = #20 ; |968| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 970,column 3,is_stmt
;----------------------------------------------------------------------
; 970 | error = cidCreate (&create_cfg);                                       
;----------------------------------------------------------------------
$C$DW$383	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$383, DW_AT_low_pc(0x00)
	.dwattr $C$DW$383, DW_AT_name("_cidCreate")
	.dwattr $C$DW$383, DW_AT_TI_call
        call #_cidCreate ; |970| 
                                        ; call occurs [#_cidCreate] ; |970| 
        AR1 = T0  ; |970| 
        *SP(#11) = T0 ; |970| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 971,column 3,is_stmt
;----------------------------------------------------------------------
; 971 | if (error != cid_NOERR) {                                              
;----------------------------------------------------------------------
        if (AR1 == #0) goto $C$L54 ; |971| 
                                        ; branchcc occurs ; |971| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 972,column 5,is_stmt
;----------------------------------------------------------------------
; 972 | siuException (chnum, "Error in cidCreate");                            
;----------------------------------------------------------------------
        T0 = *SP(#9) ; |972| 
        XAR0 = #$C$FSL16 ; |972| 
$C$DW$384	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$384, DW_AT_low_pc(0x00)
	.dwattr $C$DW$384, DW_AT_name("_siuException")
	.dwattr $C$DW$384, DW_AT_TI_call
        call #_siuException ; |972| 
                                        ; call occurs [#_siuException] ; |972| 
$C$L54:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 975,column 3,is_stmt
;----------------------------------------------------------------------
; 975 | error = cidBind (NULL, &cidBindConfig);                                
;----------------------------------------------------------------------
        XAR1 = #_cidBindConfig ; |975| 
        XAR0 = #0 ; |975| 
$C$DW$385	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$385, DW_AT_low_pc(0x00)
	.dwattr $C$DW$385, DW_AT_name("_cidBind")
	.dwattr $C$DW$385, DW_AT_TI_call
        call #_cidBind ; |975| 
                                        ; call occurs [#_cidBind] ; |975| 
        AR1 = T0  ; |975| 
        *SP(#11) = T0 ; |975| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 976,column 3,is_stmt
;----------------------------------------------------------------------
; 976 | if (error != cid_NOERR) {                                              
;----------------------------------------------------------------------
        if (AR1 == #0) goto $C$L55 ; |976| 
                                        ; branchcc occurs ; |976| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 977,column 5,is_stmt
;----------------------------------------------------------------------
; 977 | siuException (chnum, "Error in cidBind");                              
;----------------------------------------------------------------------
        T0 = *SP(#9) ; |977| 
        XAR0 = #$C$FSL17 ; |977| 
$C$DW$386	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$386, DW_AT_low_pc(0x00)
	.dwattr $C$DW$386, DW_AT_name("_siuException")
	.dwattr $C$DW$386, DW_AT_TI_call
        call #_siuException ; |977| 
                                        ; call occurs [#_siuException] ; |977| 
$C$L55:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 981,column 9,is_stmt
;----------------------------------------------------------------------
; 981 | for (chnum=1; chnum<=SIU_NUMBER_OF_CHANNELS; chnum ++) {               
;----------------------------------------------------------------------
        *SP(#9) = #1 ; |981| 

        AR1 = *SP(#9) ; |981| 
||      AR2 = #2

	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 981,column 18,is_stmt
        TC1 = (AR1 > AR2) ; |981| 
        if (TC1) goto $C$L57 ; |981| 
                                        ; branchcc occurs ; |981| 
$C$L56:    
$C$DW$L$_main$8$B:
        T0 = AR1
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 982,column 6,is_stmt
;----------------------------------------------------------------------
; 982 | siu_new_cid  (chnum);           /* Create CID module*/                 
;----------------------------------------------------------------------
$C$DW$387	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$387, DW_AT_low_pc(0x00)
	.dwattr $C$DW$387, DW_AT_name("_siu_new_cid")
	.dwattr $C$DW$387, DW_AT_TI_call
        call #_siu_new_cid ; |982| 
                                        ; call occurs [#_siu_new_cid] ; |982| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 983,column 6,is_stmt
;----------------------------------------------------------------------
; 983 | siu_open_cid (chnum);           /* Open   CID module*/                 
; 987 | loop {                                                                 
;----------------------------------------------------------------------
        T0 = *SP(#9) ; |983| 
$C$DW$388	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$388, DW_AT_low_pc(0x00)
	.dwattr $C$DW$388, DW_AT_name("_siu_open_cid")
	.dwattr $C$DW$388, DW_AT_TI_call
        call #_siu_open_cid ; |983| 
                                        ; call occurs [#_siu_open_cid] ; |983| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 981,column 49,is_stmt
        *SP(#9) = *SP(#9) + #1 ; |981| 

        AR1 = *SP(#9) ; |981| 
||      AR2 = #2

	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 981,column 18,is_stmt
        TC1 = (AR1 <= AR2) ; |981| 
        if (TC1) goto $C$L56 ; |981| 
                                        ; branchcc occurs ; |981| 
$C$DW$L$_main$8$E:
$C$L57:    
$C$DW$L$_main$9$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 988,column 5,is_stmt
;----------------------------------------------------------------------
; 988 | if (siuSetup.tog_cid1 == -1) {                                         
;----------------------------------------------------------------------
        TC1 = (*(#(_siuSetup+2)) == #-1) ; |988| 
        if (!TC1) goto $C$L58 ; |988| 
                                        ; branchcc occurs ; |988| 
$C$DW$L$_main$9$E:
$C$DW$L$_main$10$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 989,column 7,is_stmt
;----------------------------------------------------------------------
; 989 | cidsim_profile_close ();                                               
;----------------------------------------------------------------------
$C$DW$389	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$389, DW_AT_low_pc(0x00)
	.dwattr $C$DW$389, DW_AT_name("_cidsim_profile_close")
	.dwattr $C$DW$389, DW_AT_TI_call
        call #_cidsim_profile_close ; |989| 
                                        ; call occurs [#_cidsim_profile_close] ; |989| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 990,column 7,is_stmt
;----------------------------------------------------------------------
; 990 | siuSetup.tog_cid1 = 0;                                                 
;----------------------------------------------------------------------
        *(#(_siuSetup+2)) = #0 ; |990| 
        T0 = #1
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 991,column 6,is_stmt
;----------------------------------------------------------------------
; 991 | siu_close_cid (1);                                                     
;----------------------------------------------------------------------
$C$DW$390	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$390, DW_AT_low_pc(0x00)
	.dwattr $C$DW$390, DW_AT_name("_siu_close_cid")
	.dwattr $C$DW$390, DW_AT_TI_call
        call #_siu_close_cid ; |991| 
                                        ; call occurs [#_siu_close_cid] ; |991| 
        T0 = #1
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 992,column 6,is_stmt
;----------------------------------------------------------------------
; 992 | siu_delete_cid (1);                                                    
;----------------------------------------------------------------------
$C$DW$391	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$391, DW_AT_low_pc(0x00)
	.dwattr $C$DW$391, DW_AT_name("_siu_delete_cid")
	.dwattr $C$DW$391, DW_AT_TI_call
        call #_siu_delete_cid ; |992| 
                                        ; call occurs [#_siu_delete_cid] ; |992| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 993,column 7,is_stmt
;----------------------------------------------------------------------
; 993 | printf("Channel 1 closed and deleted\n");                              
;----------------------------------------------------------------------
        XAR3 = #$C$FSL18 ; |993| 
        dbl(*SP(#0)) = XAR3
$C$DW$392	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$392, DW_AT_low_pc(0x00)
	.dwattr $C$DW$392, DW_AT_name("_printf")
	.dwattr $C$DW$392, DW_AT_TI_call
        call #_printf ; |993| 
                                        ; call occurs [#_printf] ; |993| 
$C$DW$L$_main$10$E:
$C$L58:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 988,column 5,is_stmt
$C$DW$L$_main$11$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 997,column 5,is_stmt
;----------------------------------------------------------------------
; 997 | if (siuSetup.tog_cid1 != 0) {                                          
;----------------------------------------------------------------------
        AR1 = *(#(_siuSetup+2)) ; |997| 
        if (AR1 == #0) goto $C$L71 ; |997| 
                                        ; branchcc occurs ; |997| 
$C$DW$L$_main$11$E:
$C$DW$L$_main$12$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 998,column 7,is_stmt
;----------------------------------------------------------------------
; 998 | cidsim_profile_enable ();                                              
;----------------------------------------------------------------------
$C$DW$393	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$393, DW_AT_low_pc(0x00)
	.dwattr $C$DW$393, DW_AT_name("_cidsim_profile_enable")
	.dwattr $C$DW$393, DW_AT_TI_call
        call #_cidsim_profile_enable ; |998| 
                                        ; call occurs [#_cidsim_profile_enable] ; |998| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1001,column 6,is_stmt
;----------------------------------------------------------------------
; 1001 | siuSetup.cid_ctlMsg1.ctlCode = ((siuSetup.tog_cid1 - 1) << 1) + 1;     
;----------------------------------------------------------------------
        AR1 = *(#(_siuSetup+2)) ; |1001| 
        AR1 = AR1 <<< #1 ; |1001| 
        AR1 = AR1 - #1 ; |1001| 
        *(#(_siuSetup+4)) = AR1 ; |1001| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1002,column 6,is_stmt
;----------------------------------------------------------------------
; 1002 | if (siuSetup.tog_cid1 == 1) {                                          
;----------------------------------------------------------------------
        TC1 = (*(#(_siuSetup+2)) == #1) ; |1002| 
        if (!TC1) goto $C$L59 ; |1002| 
                                        ; branchcc occurs ; |1002| 
$C$DW$L$_main$12$E:
$C$DW$L$_main$13$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1003,column 9,is_stmt
;----------------------------------------------------------------------
; 1003 | cidsim_profile_print ("CID Standard: US\n");                           
; 1004 | siuSetup.cid_ctlMsg1.u.gnrt.msg_type = cid_US_SDMF_MSGTYPE; /* SDMF, US
;     |  */                                                                    
; 1005 | siuSetup.cid_ctlMsg1.u.gnrt.msg_length = BELLCORE_MSG_LENGTH;          
; 1006 | siuSetup.cid_ctlMsg1.u.gnrt.msg = (tuint*) bellcore_message;           
; 1007 | multi_msg = bellcore_message;                                          
;----------------------------------------------------------------------
        XAR0 = #$C$FSL19 ; |1003| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1008,column 7,is_stmt
        goto $C$L63 ; |1008| 
                                        ; branch occurs ; |1008| 
$C$DW$L$_main$13$E:
$C$L59:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1002,column 6,is_stmt
$C$DW$L$_main$14$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1009,column 11,is_stmt
;----------------------------------------------------------------------
; 1009 | else if (siuSetup.tog_cid1 == 2) {                                     
;----------------------------------------------------------------------
        TC1 = (*(#(_siuSetup+2)) == #2) ; |1009| 
        if (!TC1) goto $C$L60 ; |1009| 
                                        ; branchcc occurs ; |1009| 
$C$DW$L$_main$14$E:
$C$DW$L$_main$15$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1010,column 9,is_stmt
;----------------------------------------------------------------------
; 1010 | cidsim_profile_print ("CID Standard: Japan\n");                        
;----------------------------------------------------------------------
        XAR0 = #$C$FSL20 ; |1010| 
$C$DW$394	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$394, DW_AT_low_pc(0x00)
	.dwattr $C$DW$394, DW_AT_name("_cidsim_profile_print")
	.dwattr $C$DW$394, DW_AT_TI_call
        call #_cidsim_profile_print ; |1010| 
                                        ; call occurs [#_cidsim_profile_print] ; |1010| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1011,column 8,is_stmt
;----------------------------------------------------------------------
; 1011 | siuSetup.cid_ctlMsg1.u.gnrt.msg_type = cid_NTT_BYTE_SERVICE; /* NTT */ 
; 1012 | siuSetup.cid_ctlMsg1.u.gnrt.msg_length = NTT_MSG_LENGTH;               
;----------------------------------------------------------------------
        *(#(_siuSetup+7)) = #64 ; |1011| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1013,column 9,is_stmt
;----------------------------------------------------------------------
; 1013 | siuSetup.cid_ctlMsg1.u.gnrt.msg = (tuint*)ntt_message;                 
; 1014 | multi_msg = ntt_message;                                               
;----------------------------------------------------------------------
        XAR3 = #_ntt_message ; |1013| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1012,column 9,is_stmt
        *(#(_siuSetup+8)) = #90 ; |1012| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1015,column 7,is_stmt
        goto $C$L67 ; |1015| 
                                        ; branch occurs ; |1015| 
$C$DW$L$_main$15$E:
$C$L60:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1009,column 11,is_stmt
$C$DW$L$_main$16$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1016,column 10,is_stmt
;----------------------------------------------------------------------
; 1016 | else if (siuSetup.tog_cid1 == 3) {                                     
;----------------------------------------------------------------------
        TC1 = (*(#(_siuSetup+2)) == #3) ; |1016| 
        if (!TC1) goto $C$L61 ; |1016| 
                                        ; branchcc occurs ; |1016| 
$C$DW$L$_main$16$E:
$C$DW$L$_main$17$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1017,column 9,is_stmt
;----------------------------------------------------------------------
; 1017 | cidsim_profile_print ("CID Standard: Europe\n");                       
;----------------------------------------------------------------------
        XAR0 = #$C$FSL21 ; |1017| 
$C$DW$395	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$395, DW_AT_low_pc(0x00)
	.dwattr $C$DW$395, DW_AT_name("_cidsim_profile_print")
	.dwattr $C$DW$395, DW_AT_TI_call
        call #_cidsim_profile_print ; |1017| 
                                        ; call occurs [#_cidsim_profile_print] ; |1017| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1018,column 8,is_stmt
;----------------------------------------------------------------------
; 1018 | siuSetup.cid_ctlMsg1.u.gnrt.msg_type = cid_ETSI_SMS_MSGTYPE; /* SMS, ET
;     | SI only */                                                             
; 1019 | siuSetup.cid_ctlMsg1.u.gnrt.msg_length = BELLCORE_MSG_LENGTH;          
; 1020 | siuSetup.cid_ctlMsg1.u.gnrt.msg = (tuint*)bellcore_message;            
; 1021 | multi_msg = bellcore_message;                                          
;----------------------------------------------------------------------
        *(#(_siuSetup+7)) = #137 ; |1018| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1022,column 7,is_stmt
        goto $C$L66 ; |1022| 
                                        ; branch occurs ; |1022| 
$C$DW$L$_main$17$E:
$C$L61:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1016,column 10,is_stmt
$C$DW$L$_main$18$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1023,column 10,is_stmt
;----------------------------------------------------------------------
; 1023 | else if (siuSetup.tog_cid1 == 4) {                                     
;----------------------------------------------------------------------
        TC1 = (*(#(_siuSetup+2)) == #4) ; |1023| 
        if (!TC1) goto $C$L62 ; |1023| 
                                        ; branchcc occurs ; |1023| 
$C$DW$L$_main$18$E:
$C$DW$L$_main$19$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1024,column 9,is_stmt
;----------------------------------------------------------------------
; 1024 | cidsim_profile_print ("CID Standard: China\n");                        
; 1025 |     siuSetup.cid_ctlMsg1.u.gnrt.msg_type = cid_US_MDMF_MSGTYPE; /* MDMF
;     | , YDN */                                                               
; 1026 | siuSetup.cid_ctlMsg1.u.gnrt.msg_length = BELLCORE_MSG_LENGTH;          
; 1027 | siuSetup.cid_ctlMsg1.u.gnrt.msg = (tuint*)bellcore_message;            
; 1028 | multi_msg = bellcore_message;                                          
;----------------------------------------------------------------------
        XAR0 = #$C$FSL22 ; |1024| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1029,column 7,is_stmt
        goto $C$L65 ; |1029| 
                                        ; branch occurs ; |1029| 
$C$DW$L$_main$19$E:
$C$L62:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1023,column 10,is_stmt
$C$DW$L$_main$20$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1030,column 10,is_stmt
;----------------------------------------------------------------------
; 1030 | else if (siuSetup.tog_cid1 == 5) {                                     
;----------------------------------------------------------------------
        TC1 = (*(#(_siuSetup+2)) == #5) ; |1030| 
        if (!TC1) goto $C$L64 ; |1030| 
                                        ; branchcc occurs ; |1030| 
$C$DW$L$_main$20$E:
$C$DW$L$_main$21$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1031,column 9,is_stmt
;----------------------------------------------------------------------
; 1031 | cidsim_profile_print ("CID Standard: UK\n");                           
;----------------------------------------------------------------------
        XAR0 = #$C$FSL23 ; |1031| 
$C$DW$L$_main$21$E:
$C$L63:    
$C$DW$L$_main$22$B:
$C$DW$396	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$396, DW_AT_low_pc(0x00)
	.dwattr $C$DW$396, DW_AT_name("_cidsim_profile_print")
	.dwattr $C$DW$396, DW_AT_TI_call
        call #_cidsim_profile_print ; |1031| 
                                        ; call occurs [#_cidsim_profile_print] ; |1031| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1032,column 8,is_stmt
;----------------------------------------------------------------------
; 1032 | siuSetup.cid_ctlMsg1.u.gnrt.msg_type = cid_US_SDMF_MSGTYPE; /* SDMF, BT
;     |  */                                                                    
; 1033 | siuSetup.cid_ctlMsg1.u.gnrt.msg_length = BELLCORE_MSG_LENGTH;          
; 1034 | siuSetup.cid_ctlMsg1.u.gnrt.msg = (tuint*)bellcore_message;            
; 1035 | multi_msg = bellcore_message;                                          
;----------------------------------------------------------------------
        *(#(_siuSetup+7)) = #4 ; |1032| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1036,column 7,is_stmt
        goto $C$L66 ; |1036| 
                                        ; branch occurs ; |1036| 
$C$DW$L$_main$22$E:
$C$L64:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1030,column 10,is_stmt
$C$DW$L$_main$23$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1037,column 10,is_stmt
;----------------------------------------------------------------------
; 1037 | else if (siuSetup.tog_cid1 == 6) {                                     
;----------------------------------------------------------------------
        TC1 = (*(#(_siuSetup+2)) == #6) ; |1037| 
        if (!TC1) goto $C$L68 ; |1037| 
                                        ; branchcc occurs ; |1037| 
$C$DW$L$_main$23$E:
$C$DW$L$_main$24$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1038,column 9,is_stmt
;----------------------------------------------------------------------
; 1038 | cidsim_profile_print ("CID Standard: Australia\n");                    
;----------------------------------------------------------------------
        XAR0 = #$C$FSL24 ; |1038| 
$C$DW$L$_main$24$E:
$C$L65:    
$C$DW$L$_main$25$B:
$C$DW$397	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$397, DW_AT_low_pc(0x00)
	.dwattr $C$DW$397, DW_AT_name("_cidsim_profile_print")
	.dwattr $C$DW$397, DW_AT_TI_call
        call #_cidsim_profile_print ; |1038| 
                                        ; call occurs [#_cidsim_profile_print] ; |1038| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1039,column 8,is_stmt
;----------------------------------------------------------------------
; 1039 | siuSetup.cid_ctlMsg1.u.gnrt.msg_type = cid_US_MDMF_MSGTYPE; /* MDMF, AU
;     | S */                                                                   
; 1040 | siuSetup.cid_ctlMsg1.u.gnrt.msg_length = BELLCORE_MSG_LENGTH;          
;----------------------------------------------------------------------
        *(#(_siuSetup+7)) = #128 ; |1039| 
$C$DW$L$_main$25$E:
$C$L66:    
$C$DW$L$_main$26$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1041,column 9,is_stmt
;----------------------------------------------------------------------
; 1041 | siuSetup.cid_ctlMsg1.u.gnrt.msg = (tuint*)bellcore_message;            
; 1042 | multi_msg = bellcore_message;                                          
;----------------------------------------------------------------------
        XAR3 = #_bellcore_message ; |1041| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1040,column 9,is_stmt
        *(#(_siuSetup+8)) = #26 ; |1040| 
$C$DW$L$_main$26$E:
$C$L67:    
$C$DW$L$_main$27$B:
        dbl(*(#(_siuSetup+10))) = XAR3
        dbl(*(#_multi_msg)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1043,column 7,is_stmt
        goto $C$L70 ; |1043| 
                                        ; branch occurs ; |1043| 
$C$DW$L$_main$27$E:
$C$L68:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1037,column 10,is_stmt
$C$DW$L$_main$28$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1044,column 12,is_stmt
;----------------------------------------------------------------------
; 1044 | else if (siuSetup.tog_cid1 == 9) {                                     
; 1045 |   siuSetup.cid_ctlMsg1.ctlCode = cid_CTL_MULTI_RQST; /* Multi-part mess
;     | age */                                                                 
;----------------------------------------------------------------------
        TC1 = (*(#(_siuSetup+2)) == #9) ; |1044| 
        if (!TC1) goto $C$L69 ; |1044| 
                                        ; branchcc occurs ; |1044| 
$C$DW$L$_main$28$E:
$C$DW$L$_main$29$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1046,column 9,is_stmt
;----------------------------------------------------------------------
; 1046 | siuSetup.cid_ctlMsg1.u.mgnrt.fragment_offset = multi_msg_idx;          
;----------------------------------------------------------------------
        AR1 = *(#_multi_msg_idx) ; |1046| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1045,column 9,is_stmt
        *(#(_siuSetup+4)) = #14 ; |1045| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1046,column 9,is_stmt
        *(#(_siuSetup+6)) = AR1 ; |1046| 
        XAR3 = dbl(*(#_multi_msg))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1047,column 9,is_stmt
;----------------------------------------------------------------------
; 1047 | siuSetup.cid_ctlMsg1.u.mgnrt.fragment_size   = multi_msg_len;          
;----------------------------------------------------------------------
        AR1 = *(#_multi_msg_len) ; |1047| 
        *(#(_siuSetup+7)) = AR1 ; |1047| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1048,column 9,is_stmt
;----------------------------------------------------------------------
; 1048 | siuSetup.cid_ctlMsg1.u.mgnrt.msg             = (tuint*)(&multi_msg[(mul
;     | ti_msg_idx >> 1)]);                                                    
;----------------------------------------------------------------------
        AR1 = *(#_multi_msg_idx) ; |1048| 
        AR1 = AR1 >>> #1 ; |1048| 
        mar(AR3 + AR1) ; |1048| 
        dbl(*(#(_siuSetup+8))) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1049,column 7,is_stmt
        goto $C$L70 ; |1049| 
                                        ; branch occurs ; |1049| 
$C$DW$L$_main$29$E:
$C$L69:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1044,column 12,is_stmt
$C$DW$L$_main$30$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1050,column 12,is_stmt
;----------------------------------------------------------------------
; 1050 | else if (siuSetup.tog_cid1 == 10) {                                    
;----------------------------------------------------------------------
        TC1 = (*(#(_siuSetup+2)) == #10) ; |1050| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1051,column 9,is_stmt
;----------------------------------------------------------------------
; 1051 | siuSetup.cid_ctlMsg1.ctlCode = cid_CTL_DEACTIVATE;                     
;----------------------------------------------------------------------
        if (TC1) execute (D_Unit)
           *(#(_siuSetup+4)) = #13 ; |1051| 
$C$DW$L$_main$30$E:
$C$L70:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1008,column 7,is_stmt
$C$DW$L$_main$31$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1054,column 7,is_stmt
;----------------------------------------------------------------------
; 1054 | siuSetup.tog_cid1 = 0;                                                 
;----------------------------------------------------------------------
        *(#(_siuSetup+2)) = #0 ; |1054| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1055,column 7,is_stmt
;----------------------------------------------------------------------
; 1055 | printf ("Send CID control message %d to channel 1\n", siuSetup.cid_ctlM
;     | sg1.ctlCode);                                                          
;----------------------------------------------------------------------
        XAR3 = #$C$FSL25 ; |1055| 
        AR1 = *(#(_siuSetup+4)) ; |1055| 
        dbl(*SP(#0)) = XAR3
        *SP(#2) = AR1 ; |1055| 
$C$DW$398	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$398, DW_AT_low_pc(0x00)
	.dwattr $C$DW$398, DW_AT_name("_printf")
	.dwattr $C$DW$398, DW_AT_TI_call
        call #_printf ; |1055| 
                                        ; call occurs [#_printf] ; |1055| 
        XAR0 = dbl(*(#(_siuInst+4)))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1056,column 7,is_stmt
;----------------------------------------------------------------------
; 1056 | cidControl (siuInst[0].cidInst, &siuSetup.cid_ctlMsg1);                
;----------------------------------------------------------------------
        XAR1 = #(_siuSetup+4) ; |1056| 
$C$DW$399	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$399, DW_AT_low_pc(0x00)
	.dwattr $C$DW$399, DW_AT_name("_cidControl")
	.dwattr $C$DW$399, DW_AT_TI_call
        call #_cidControl ; |1056| 
                                        ; call occurs [#_cidControl] ; |1056| 
$C$DW$L$_main$31$E:
$C$L71:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 997,column 5,is_stmt
$C$DW$L$_main$32$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1059,column 5,is_stmt
;----------------------------------------------------------------------
; 1059 | if (siuSetup.tog_cid2 == -1) {                                         
;----------------------------------------------------------------------
        TC1 = (*(#(_siuSetup+12)) == #-1) ; |1059| 
        if (!TC1) goto $C$L72 ; |1059| 
                                        ; branchcc occurs ; |1059| 
$C$DW$L$_main$32$E:
$C$DW$L$_main$33$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1060,column 7,is_stmt
;----------------------------------------------------------------------
; 1060 | siuSetup.tog_cid2 = 0;                                                 
;----------------------------------------------------------------------
        *(#(_siuSetup+12)) = #0 ; |1060| 
        T0 = #2
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1061,column 6,is_stmt
;----------------------------------------------------------------------
; 1061 | siu_close_cid (2);                                                     
;----------------------------------------------------------------------
$C$DW$400	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$400, DW_AT_low_pc(0x00)
	.dwattr $C$DW$400, DW_AT_name("_siu_close_cid")
	.dwattr $C$DW$400, DW_AT_TI_call
        call #_siu_close_cid ; |1061| 
                                        ; call occurs [#_siu_close_cid] ; |1061| 
        T0 = #2
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1062,column 6,is_stmt
;----------------------------------------------------------------------
; 1062 | siu_delete_cid (2);                                                    
;----------------------------------------------------------------------
$C$DW$401	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$401, DW_AT_low_pc(0x00)
	.dwattr $C$DW$401, DW_AT_name("_siu_delete_cid")
	.dwattr $C$DW$401, DW_AT_TI_call
        call #_siu_delete_cid ; |1062| 
                                        ; call occurs [#_siu_delete_cid] ; |1062| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1063,column 7,is_stmt
;----------------------------------------------------------------------
; 1063 | printf ("Channel 2 closed and deleted\n");                             
;----------------------------------------------------------------------
        XAR3 = #$C$FSL26 ; |1063| 
        dbl(*SP(#0)) = XAR3
$C$DW$402	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$402, DW_AT_low_pc(0x00)
	.dwattr $C$DW$402, DW_AT_name("_printf")
	.dwattr $C$DW$402, DW_AT_TI_call
        call #_printf ; |1063| 
                                        ; call occurs [#_printf] ; |1063| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1064,column 5,is_stmt
        goto $C$L73 ; |1064| 
                                        ; branch occurs ; |1064| 
$C$DW$L$_main$33$E:
$C$L72:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1059,column 5,is_stmt
$C$DW$L$_main$34$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1065,column 10,is_stmt
;----------------------------------------------------------------------
; 1065 | else if (siuSetup.tog_cid2 == 10) {                                    
;----------------------------------------------------------------------
        TC1 = (*(#(_siuSetup+12)) == #10) ; |1065| 
        if (!TC1) goto $C$L73 ; |1065| 
                                        ; branchcc occurs ; |1065| 
$C$DW$L$_main$34$E:
$C$DW$L$_main$35$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1066,column 7,is_stmt
;----------------------------------------------------------------------
; 1066 | siuSetup.tog_cid2 = 0;                                                 
; 1067 | siuSetup.cid_ctlMsg2.ctlCode = cid_CTL_DEACTIVATE;                     
;----------------------------------------------------------------------
        *(#(_siuSetup+12)) = #0 ; |1066| 
        XAR0 = dbl(*(#(_siuInst+14)))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1068,column 7,is_stmt
;----------------------------------------------------------------------
; 1068 | cidControl (siuInst[1].cidInst, &siuSetup.cid_ctlMsg2);                
;----------------------------------------------------------------------
        XAR1 = #(_siuSetup+14) ; |1068| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1067,column 7,is_stmt
        *(#(_siuSetup+14)) = #13 ; |1067| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1068,column 7,is_stmt
$C$DW$403	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$403, DW_AT_low_pc(0x00)
	.dwattr $C$DW$403, DW_AT_name("_cidControl")
	.dwattr $C$DW$403, DW_AT_TI_call
        call #_cidControl ; |1068| 
                                        ; call occurs [#_cidControl] ; |1068| 
$C$DW$L$_main$35$E:
$C$L73:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1064,column 5,is_stmt
$C$DW$L$_main$36$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1072,column 5,is_stmt
;----------------------------------------------------------------------
; 1072 | if (siuSetup.tog_cid2 != 0) {                                          
;----------------------------------------------------------------------
        AR1 = *(#(_siuSetup+12)) ; |1072| 
        if (AR1 == #0) goto $C$L74 ; |1072| 
                                        ; branchcc occurs ; |1072| 
$C$DW$L$_main$36$E:
$C$DW$L$_main$37$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1076,column 6,is_stmt
;----------------------------------------------------------------------
; 1076 | siuSetup.cid_ctlMsg2.ctlCode = ((siuSetup.tog_cid2 - 1) << 1) + 2;     
; 1077 | siuSetup.tog_cid2 = 0;                                                 
;----------------------------------------------------------------------
        AR1 = AR1 <<< #1 ; |1076| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1078,column 7,is_stmt
;----------------------------------------------------------------------
; 1078 | printf ("Send CID control message %d to channel 2\n", siuSetup.cid_ctlM
;     | sg2.ctlCode);                                                          
;----------------------------------------------------------------------
        XAR3 = #$C$FSL27 ; |1078| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1076,column 6,is_stmt
        *(#(_siuSetup+14)) = AR1 ; |1076| 
        dbl(*SP(#0)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1077,column 7,is_stmt
        *(#(_siuSetup+12)) = #0 ; |1077| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1078,column 7,is_stmt
        AR1 = *(#(_siuSetup+14)) ; |1078| 
        *SP(#2) = AR1 ; |1078| 
$C$DW$404	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$404, DW_AT_low_pc(0x00)
	.dwattr $C$DW$404, DW_AT_name("_printf")
	.dwattr $C$DW$404, DW_AT_TI_call
        call #_printf ; |1078| 
                                        ; call occurs [#_printf] ; |1078| 
        XAR0 = dbl(*(#(_siuInst+14)))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1079,column 7,is_stmt
;----------------------------------------------------------------------
; 1079 | cidControl (siuInst[1].cidInst, &siuSetup.cid_ctlMsg2);                
;----------------------------------------------------------------------
        XAR1 = #(_siuSetup+14) ; |1079| 
$C$DW$405	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$405, DW_AT_low_pc(0x00)
	.dwattr $C$DW$405, DW_AT_name("_cidControl")
	.dwattr $C$DW$405, DW_AT_TI_call
        call #_cidControl ; |1079| 
                                        ; call occurs [#_cidControl] ; |1079| 
$C$DW$L$_main$37$E:
$C$L74:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1072,column 5,is_stmt
$C$DW$L$_main$38$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1083,column 5,is_stmt
;----------------------------------------------------------------------
; 1083 | if (siuSetup.tog_chnl_sim) {                                           
;----------------------------------------------------------------------
        AR1 = *(#(_siuSetup+22)) ; |1083| 
        if (AR1 == #0) goto $C$L75 ; |1083| 
                                        ; branchcc occurs ; |1083| 
$C$DW$L$_main$38$E:
$C$DW$L$_main$39$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1084,column 7,is_stmt
;----------------------------------------------------------------------
; 1084 | siuSetup.tog_chnl_sim = FALSE;                                         
;----------------------------------------------------------------------
        *(#(_siuSetup+22)) = #0 ; |1084| 
        AR1 = #0
        AR3 = #0
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1085,column 7,is_stmt
;----------------------------------------------------------------------
; 1085 | siuSetup.chSim.chnl_sim_on = !siuSetup.chSim.chnl_sim_on;              
;----------------------------------------------------------------------
        AR2 = *(#(_siuSetup+23)) ; |1085| 
        if (AR2 != #0) execute (D_Unit) ||
           AR1 = #1
        if (AR1 == #0) execute (D_Unit) ||
           AR3 = #1
        *(#(_siuSetup+23)) = AR3 ; |1085| 
$C$DW$L$_main$39$E:
$C$L75:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1083,column 5,is_stmt
$C$DW$L$_main$40$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1089,column 5,is_stmt
;----------------------------------------------------------------------
; 1089 | if (siuSetup.tog_rx_SGN) {                                             
;----------------------------------------------------------------------
        AR1 = *(#(_siuSetup+26)) ; |1089| 
        if (AR1 == #0) goto $C$L76 ; |1089| 
                                        ; branchcc occurs ; |1089| 
$C$DW$L$_main$40$E:
$C$DW$L$_main$41$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1090,column 7,is_stmt
;----------------------------------------------------------------------
; 1090 | siuSetup.tog_rx_SGN = FALSE;                                           
;----------------------------------------------------------------------
        *(#(_siuSetup+26)) = #0 ; |1090| 
        AR1 = #0
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1091,column 7,is_stmt
;----------------------------------------------------------------------
; 1091 | siuSetup.rxSGN.state = !siuSetup.rxSGN.state;                          
;----------------------------------------------------------------------
        AR2 = *(#(_siuSetup+27)) ; |1091| 
        if (AR2 != #0) execute (D_Unit) ||
           AR1 = #1
        AR3 = #0
        if (AR1 == #0) execute (D_Unit) ||
           AR3 = #1
        XAR0 = dbl(*(#_sgnRxInst))
        *(#(_siuSetup+27)) = AR3 ; |1091| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1092,column 7,is_stmt
;----------------------------------------------------------------------
; 1092 | siu_set_sgn (sgnRxInst, (siuSGNPars_t*)&siuSetup.rxSGN);               
;----------------------------------------------------------------------
        XAR1 = #(_siuSetup+27) ; |1092| 
$C$DW$406	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$406, DW_AT_low_pc(0x00)
	.dwattr $C$DW$406, DW_AT_name("_siu_set_sgn")
	.dwattr $C$DW$406, DW_AT_TI_call
        call #_siu_set_sgn ; |1092| 
                                        ; call occurs [#_siu_set_sgn] ; |1092| 
$C$DW$L$_main$41$E:
$C$L76:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1089,column 5,is_stmt
$C$DW$L$_main$42$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1096,column 5,is_stmt
;----------------------------------------------------------------------
; 1096 | generate_rx_frame (frame_size, frame_in);                              
;----------------------------------------------------------------------
        T0 = *SP(#10) ; |1096| 
        XAR0 = dbl(*(#_frame_in))
$C$DW$407	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$407, DW_AT_low_pc(0x00)
	.dwattr $C$DW$407, DW_AT_name("_generate_rx_frame")
	.dwattr $C$DW$407, DW_AT_TI_call
        call #_generate_rx_frame ; |1096| 
                                        ; call occurs [#_generate_rx_frame] ; |1096| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1099,column 10,is_stmt
;----------------------------------------------------------------------
; 1099 | for (i=0; i<frame_size; i++) {                                         
;----------------------------------------------------------------------
        *SP(#6) = #0 ; |1099| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1099,column 15,is_stmt
        AR1 = *SP(#10) ; |1099| 
        AR2 = *SP(#6) ; |1099| 
        TC1 = (AR2 >= AR1) ; |1099| 
        if (TC1) goto $C$L78 ; |1099| 
                                        ; branchcc occurs ; |1099| 
$C$DW$L$_main$42$E:
$C$L77:    
$C$DW$L$_main$43$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1100,column 7,is_stmt
;----------------------------------------------------------------------
; 1100 | siuRxInStream[i] = frame_in[i];                                        
; 1104 | rptBuff = 0;                                                           
;----------------------------------------------------------------------
        T0 = *SP(#6) ; |1100| 
        AR1 = T0  ; |1100| 
        XAR2 = dbl(*(#_frame_in))
        XAR3 = #_siuRxInStream ; |1100| 
        mar(AR3 + AR1) ; |1100| 
        *AR3 = *AR2(T0) ; |1100| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1099,column 29,is_stmt
        *SP(#6) = *SP(#6) + #1 ; |1099| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1099,column 15,is_stmt
        AR1 = *SP(#10) ; |1099| 
        AR2 = *SP(#6) ; |1099| 
        TC1 = (AR2 < AR1) ; |1099| 
        if (TC1) goto $C$L77 ; |1099| 
                                        ; branchcc occurs ; |1099| 
$C$DW$L$_main$43$E:
$C$L78:    
$C$DW$L$_main$44$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1106,column 5,is_stmt
;----------------------------------------------------------------------
; 1106 | rxReplace = FALSE;                                                     
;----------------------------------------------------------------------
        *SP(#7) = #0 ; |1106| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1104,column 5,is_stmt
        *(#_rptBuff) = #0 ; |1104| 
        T0 = #1
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1108,column 5,is_stmt
;----------------------------------------------------------------------
; 1108 | genWork   = TRUE;                                                      
;----------------------------------------------------------------------
        *SP(#8) = #1 ; |1108| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1111,column 5,is_stmt
;----------------------------------------------------------------------
; 1111 | cidsim_profile_start (cidsim_PROFILE_RCV_IDX);                         
;----------------------------------------------------------------------
$C$DW$408	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$408, DW_AT_low_pc(0x00)
	.dwattr $C$DW$408, DW_AT_name("_cidsim_profile_start")
	.dwattr $C$DW$408, DW_AT_TI_call
        call #_cidsim_profile_start ; |1111| 
                                        ; call occurs [#_cidsim_profile_start] ; |1111| 
        XAR2 = mar(*SP(#7))
        XAR0 = dbl(*(#(_siuInst+4)))
        XAR1 = dbl(*(#_frame_in))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1112,column 5,is_stmt
;----------------------------------------------------------------------
; 1112 | cidReceiveIn (siuInst[0].cidInst, frame_in, genWork, &rxReplace);      
;----------------------------------------------------------------------
        T0 = *SP(#8) ; |1112| 
$C$DW$409	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$409, DW_AT_low_pc(0x00)
	.dwattr $C$DW$409, DW_AT_name("_cidReceiveIn")
	.dwattr $C$DW$409, DW_AT_TI_call
        call #_cidReceiveIn ; |1112| 
                                        ; call occurs [#_cidReceiveIn] ; |1112| 
        T0 = #1
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1113,column 5,is_stmt
;----------------------------------------------------------------------
; 1113 | cidsim_profile_stop (cidsim_PROFILE_RCV_IDX);                          
;----------------------------------------------------------------------
$C$DW$410	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$410, DW_AT_low_pc(0x00)
	.dwattr $C$DW$410, DW_AT_name("_cidsim_profile_stop")
	.dwattr $C$DW$410, DW_AT_TI_call
        call #_cidsim_profile_stop ; |1113| 
                                        ; call occurs [#_cidsim_profile_stop] ; |1113| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1116,column 10,is_stmt
;----------------------------------------------------------------------
; 1116 | for (i=0; i<frame_size; i++) {                                         
;----------------------------------------------------------------------
        *SP(#6) = #0 ; |1116| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1116,column 15,is_stmt
        AR1 = *SP(#10) ; |1116| 
        AR2 = *SP(#6) ; |1116| 
        TC1 = (AR2 >= AR1) ; |1116| 
        if (TC1) goto $C$L80 ; |1116| 
                                        ; branchcc occurs ; |1116| 
$C$DW$L$_main$44$E:
$C$L79:    
$C$DW$L$_main$45$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1117,column 7,is_stmt
;----------------------------------------------------------------------
; 1117 | siuPcmInStream[i] = frame_in[i];                                       
;----------------------------------------------------------------------
        T0 = *SP(#6) ; |1117| 
        AR1 = T0  ; |1117| 
        XAR2 = dbl(*(#_frame_in))
        XAR3 = #_siuPcmInStream ; |1117| 
        mar(AR3 + AR1) ; |1117| 
        *AR3 = *AR2(T0) ; |1117| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1116,column 29,is_stmt
        *SP(#6) = *SP(#6) + #1 ; |1116| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1116,column 15,is_stmt
        AR1 = *SP(#10) ; |1116| 
        AR2 = *SP(#6) ; |1116| 
        TC1 = (AR2 < AR1) ; |1116| 
        if (TC1) goto $C$L79 ; |1116| 
                                        ; branchcc occurs ; |1116| 
$C$DW$L$_main$45$E:
$C$L80:    
$C$DW$L$_main$46$B:
        XAR0 = dbl(*(#_frame_in))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1120,column 5,is_stmt
;----------------------------------------------------------------------
; 1120 | siuChSim (frame_in);                                                   
;----------------------------------------------------------------------
$C$DW$411	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$411, DW_AT_low_pc(0x00)
	.dwattr $C$DW$411, DW_AT_name("_siuChSim")
	.dwattr $C$DW$411, DW_AT_TI_call
        call #_siuChSim ; |1120| 
                                        ; call occurs [#_siuChSim] ; |1120| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1123,column 5,is_stmt
;----------------------------------------------------------------------
; 1123 | rptBuff = 1;                                                           
;----------------------------------------------------------------------
        *(#_rptBuff) = #1 ; |1123| 
        T0 = #0
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1124,column 5,is_stmt
;----------------------------------------------------------------------
; 1124 | cidsim_profile_start (cidsim_PROFILE_SND_IDX);                         
;----------------------------------------------------------------------
$C$DW$412	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$412, DW_AT_low_pc(0x00)
	.dwattr $C$DW$412, DW_AT_name("_cidsim_profile_start")
	.dwattr $C$DW$412, DW_AT_TI_call
        call #_cidsim_profile_start ; |1124| 
                                        ; call occurs [#_cidsim_profile_start] ; |1124| 
        XAR0 = dbl(*(#(_siuInst+14)))
        XAR1 = dbl(*(#_frame_in))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1125,column 5,is_stmt
;----------------------------------------------------------------------
; 1125 | cidSendIn (siuInst[1].cidInst, frame_in);                              
;----------------------------------------------------------------------
$C$DW$413	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$413, DW_AT_low_pc(0x00)
	.dwattr $C$DW$413, DW_AT_name("_cidSendIn")
	.dwattr $C$DW$413, DW_AT_TI_call
        call #_cidSendIn ; |1125| 
                                        ; call occurs [#_cidSendIn] ; |1125| 
        T0 = #0
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1126,column 5,is_stmt
;----------------------------------------------------------------------
; 1126 | cidsim_profile_stop (cidsim_PROFILE_SND_IDX);                          
;----------------------------------------------------------------------
$C$DW$414	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$414, DW_AT_low_pc(0x00)
	.dwattr $C$DW$414, DW_AT_name("_cidsim_profile_stop")
	.dwattr $C$DW$414, DW_AT_TI_call
        call #_cidsim_profile_stop ; |1126| 
                                        ; call occurs [#_cidsim_profile_stop] ; |1126| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1127,column 5,is_stmt
;----------------------------------------------------------------------
; 1127 | cidsim_profile_print (NULL);                                           
;----------------------------------------------------------------------
        XAR0 = #0 ; |1127| 
$C$DW$415	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$415, DW_AT_low_pc(0x00)
	.dwattr $C$DW$415, DW_AT_name("_cidsim_profile_print")
	.dwattr $C$DW$415, DW_AT_TI_call
        call #_cidsim_profile_print ; |1127| 
                                        ; call occurs [#_cidsim_profile_print] ; |1127| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c",line 1128,column 3,is_stmt
        goto $C$L57 ; |1128| 
                                        ; branch occurs ; |1128| 
$C$DW$L$_main$46$E:
	.dwcfi	cfa_offset, 1

$C$DW$416	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$416, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\cid\test\ccsProjects\test_rel_c5510_C55L_COFF\Debug\cidsim.asm:$C$L57:1:1373047874")
	.dwattr $C$DW$416, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$416, DW_AT_TI_begin_line(0x3db)
	.dwattr $C$DW$416, DW_AT_TI_end_line(0x468)
$C$DW$417	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$417, DW_AT_low_pc($C$DW$L$_main$9$B)
	.dwattr $C$DW$417, DW_AT_high_pc($C$DW$L$_main$9$E)
$C$DW$418	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$418, DW_AT_low_pc($C$DW$L$_main$28$B)
	.dwattr $C$DW$418, DW_AT_high_pc($C$DW$L$_main$28$E)
$C$DW$419	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$419, DW_AT_low_pc($C$DW$L$_main$23$B)
	.dwattr $C$DW$419, DW_AT_high_pc($C$DW$L$_main$23$E)
$C$DW$420	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$420, DW_AT_low_pc($C$DW$L$_main$19$B)
	.dwattr $C$DW$420, DW_AT_high_pc($C$DW$L$_main$19$E)
$C$DW$421	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$421, DW_AT_low_pc($C$DW$L$_main$24$B)
	.dwattr $C$DW$421, DW_AT_high_pc($C$DW$L$_main$24$E)
$C$DW$422	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$422, DW_AT_low_pc($C$DW$L$_main$18$B)
	.dwattr $C$DW$422, DW_AT_high_pc($C$DW$L$_main$18$E)
$C$DW$423	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$423, DW_AT_low_pc($C$DW$L$_main$20$B)
	.dwattr $C$DW$423, DW_AT_high_pc($C$DW$L$_main$20$E)
$C$DW$424	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$424, DW_AT_low_pc($C$DW$L$_main$13$B)
	.dwattr $C$DW$424, DW_AT_high_pc($C$DW$L$_main$13$E)
$C$DW$425	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$425, DW_AT_low_pc($C$DW$L$_main$21$B)
	.dwattr $C$DW$425, DW_AT_high_pc($C$DW$L$_main$21$E)
$C$DW$426	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$426, DW_AT_low_pc($C$DW$L$_main$16$B)
	.dwattr $C$DW$426, DW_AT_high_pc($C$DW$L$_main$16$E)
$C$DW$427	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$427, DW_AT_low_pc($C$DW$L$_main$17$B)
	.dwattr $C$DW$427, DW_AT_high_pc($C$DW$L$_main$17$E)
$C$DW$428	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$428, DW_AT_low_pc($C$DW$L$_main$22$B)
	.dwattr $C$DW$428, DW_AT_high_pc($C$DW$L$_main$22$E)
$C$DW$429	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$429, DW_AT_low_pc($C$DW$L$_main$25$B)
	.dwattr $C$DW$429, DW_AT_high_pc($C$DW$L$_main$25$E)
$C$DW$430	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$430, DW_AT_low_pc($C$DW$L$_main$12$B)
	.dwattr $C$DW$430, DW_AT_high_pc($C$DW$L$_main$12$E)
$C$DW$431	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$431, DW_AT_low_pc($C$DW$L$_main$14$B)
	.dwattr $C$DW$431, DW_AT_high_pc($C$DW$L$_main$14$E)
$C$DW$432	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$432, DW_AT_low_pc($C$DW$L$_main$15$B)
	.dwattr $C$DW$432, DW_AT_high_pc($C$DW$L$_main$15$E)
$C$DW$433	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$433, DW_AT_low_pc($C$DW$L$_main$26$B)
	.dwattr $C$DW$433, DW_AT_high_pc($C$DW$L$_main$26$E)
$C$DW$434	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$434, DW_AT_low_pc($C$DW$L$_main$27$B)
	.dwattr $C$DW$434, DW_AT_high_pc($C$DW$L$_main$27$E)
$C$DW$435	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$435, DW_AT_low_pc($C$DW$L$_main$29$B)
	.dwattr $C$DW$435, DW_AT_high_pc($C$DW$L$_main$29$E)
$C$DW$436	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$436, DW_AT_low_pc($C$DW$L$_main$30$B)
	.dwattr $C$DW$436, DW_AT_high_pc($C$DW$L$_main$30$E)
$C$DW$437	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$437, DW_AT_low_pc($C$DW$L$_main$10$B)
	.dwattr $C$DW$437, DW_AT_high_pc($C$DW$L$_main$10$E)
$C$DW$438	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$438, DW_AT_low_pc($C$DW$L$_main$11$B)
	.dwattr $C$DW$438, DW_AT_high_pc($C$DW$L$_main$11$E)
$C$DW$439	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$439, DW_AT_low_pc($C$DW$L$_main$31$B)
	.dwattr $C$DW$439, DW_AT_high_pc($C$DW$L$_main$31$E)
$C$DW$440	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$440, DW_AT_low_pc($C$DW$L$_main$32$B)
	.dwattr $C$DW$440, DW_AT_high_pc($C$DW$L$_main$32$E)
$C$DW$441	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$441, DW_AT_low_pc($C$DW$L$_main$33$B)
	.dwattr $C$DW$441, DW_AT_high_pc($C$DW$L$_main$33$E)
$C$DW$442	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$442, DW_AT_low_pc($C$DW$L$_main$34$B)
	.dwattr $C$DW$442, DW_AT_high_pc($C$DW$L$_main$34$E)
$C$DW$443	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$443, DW_AT_low_pc($C$DW$L$_main$35$B)
	.dwattr $C$DW$443, DW_AT_high_pc($C$DW$L$_main$35$E)
$C$DW$444	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$444, DW_AT_low_pc($C$DW$L$_main$36$B)
	.dwattr $C$DW$444, DW_AT_high_pc($C$DW$L$_main$36$E)
$C$DW$445	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$445, DW_AT_low_pc($C$DW$L$_main$37$B)
	.dwattr $C$DW$445, DW_AT_high_pc($C$DW$L$_main$37$E)
$C$DW$446	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$446, DW_AT_low_pc($C$DW$L$_main$38$B)
	.dwattr $C$DW$446, DW_AT_high_pc($C$DW$L$_main$38$E)
$C$DW$447	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$447, DW_AT_low_pc($C$DW$L$_main$39$B)
	.dwattr $C$DW$447, DW_AT_high_pc($C$DW$L$_main$39$E)
$C$DW$448	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$448, DW_AT_low_pc($C$DW$L$_main$40$B)
	.dwattr $C$DW$448, DW_AT_high_pc($C$DW$L$_main$40$E)
$C$DW$449	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$449, DW_AT_low_pc($C$DW$L$_main$41$B)
	.dwattr $C$DW$449, DW_AT_high_pc($C$DW$L$_main$41$E)
$C$DW$450	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$450, DW_AT_low_pc($C$DW$L$_main$42$B)
	.dwattr $C$DW$450, DW_AT_high_pc($C$DW$L$_main$42$E)
$C$DW$451	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$451, DW_AT_low_pc($C$DW$L$_main$44$B)
	.dwattr $C$DW$451, DW_AT_high_pc($C$DW$L$_main$44$E)
$C$DW$452	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$452, DW_AT_low_pc($C$DW$L$_main$46$B)
	.dwattr $C$DW$452, DW_AT_high_pc($C$DW$L$_main$46$E)

$C$DW$453	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$453, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\cid\test\ccsProjects\test_rel_c5510_C55L_COFF\Debug\cidsim.asm:$C$L77:2:1373047874")
	.dwattr $C$DW$453, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$453, DW_AT_TI_begin_line(0x44b)
	.dwattr $C$DW$453, DW_AT_TI_end_line(0x44d)
$C$DW$454	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$454, DW_AT_low_pc($C$DW$L$_main$43$B)
	.dwattr $C$DW$454, DW_AT_high_pc($C$DW$L$_main$43$E)
	.dwendtag $C$DW$453


$C$DW$455	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$455, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\cid\test\ccsProjects\test_rel_c5510_C55L_COFF\Debug\cidsim.asm:$C$L79:2:1373047874")
	.dwattr $C$DW$455, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$455, DW_AT_TI_begin_line(0x45c)
	.dwattr $C$DW$455, DW_AT_TI_end_line(0x45e)
$C$DW$456	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$456, DW_AT_low_pc($C$DW$L$_main$45$B)
	.dwattr $C$DW$456, DW_AT_high_pc($C$DW$L$_main$45$E)
	.dwendtag $C$DW$455

	.dwendtag $C$DW$416


$C$DW$457	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$457, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\cid\test\ccsProjects\test_rel_c5510_C55L_COFF\Debug\cidsim.asm:$C$L56:1:1373047874")
	.dwattr $C$DW$457, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$457, DW_AT_TI_begin_line(0x3d5)
	.dwattr $C$DW$457, DW_AT_TI_end_line(0x3d8)
$C$DW$458	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$458, DW_AT_low_pc($C$DW$L$_main$8$B)
	.dwattr $C$DW$458, DW_AT_high_pc($C$DW$L$_main$8$E)
	.dwendtag $C$DW$457

	.dwattr $C$DW$365, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c")
	.dwattr $C$DW$365, DW_AT_TI_end_line(0x469)
	.dwattr $C$DW$365, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$365

;*******************************************************************************
;* FLOATING-POINT CONSTANTS                                                    *
;*******************************************************************************
	.sect	".const"
	.align	2
$C$FL1:	.xlong	0x45fa0000
	.align	2
$C$FL2:	.xlong	0x49742400
;*******************************************************************************
;* FAR STRINGS                                                                 *
;*******************************************************************************
	.sect	".const:.string"
	.align	2
$C$FSL1:	.string	"ID=%d %s",10,0
	.align	2
$C$FSL2:	.string	"w",0
	.align	2
$C$FSL3:	.string	"profile.txt",0
	.align	2
$C$FSL4:	.string	"Unable to open profiling file",0
	.align	2
$C$FSL5:	.string	"  %6.2f",0
	.align	2
$C$FSL6:	.string	"  %6.2f",10,0
	.align	2
$C$FSL7:	.string	"siuCidRptIn(): ID=%d rcode=%d length=%d word length=%d",10,0
	.align	2
$C$FSL8:	.string	"msg[%d]=0x%x",10,0
	.align	2
$C$FSL9:	.string	"Error in GetSizes",0
	.align	2
$C$FSL10:	.string	"No memory",0
	.align	2
$C$FSL11:	.string	"Errors in cidNew",0
	.align	2
$C$FSL12:	.string	"Error in cidOpen",0
	.align	2
$C$FSL13:	.string	"Error in sgnCreate",0
	.align	2
$C$FSL14:	.string	"START TEST",10,0
	.align	2
$C$FSL15:	.string	"Can not allocate memory for frame",0
	.align	2
$C$FSL16:	.string	"Error in cidCreate",0
	.align	2
$C$FSL17:	.string	"Error in cidBind",0
	.align	2
$C$FSL18:	.string	"Channel 1 closed and deleted",10,0
	.align	2
$C$FSL19:	.string	"CID Standard: US",10,0
	.align	2
$C$FSL20:	.string	"CID Standard: Japan",10,0
	.align	2
$C$FSL21:	.string	"CID Standard: Europe",10,0
	.align	2
$C$FSL22:	.string	"CID Standard: China",10,0
	.align	2
$C$FSL23:	.string	"CID Standard: UK",10,0
	.align	2
$C$FSL24:	.string	"CID Standard: Australia",10,0
	.align	2
$C$FSL25:	.string	"Send CID control message %d to channel 1",10,0
	.align	2
$C$FSL26:	.string	"Channel 2 closed and deleted",10,0
	.align	2
$C$FSL27:	.string	"Send CID control message %d to channel 2",10,0
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_fclose
	.global	_fopen
	.global	_fflush
	.global	_fprintf
	.global	_printf
	.global	_malloc
	.global	_free
	.global	_exit
	.global	_cidCreate
	.global	_cidGetSizes
	.global	_cidNew
	.global	_cidClose
	.global	_cidDelete
	.global	_cidBind
	.global	_cidOpen
	.global	_cidControl
	.global	_cidReceiveIn
	.global	_cidSendIn
	.global	_cidModulator
	.global	_cidModCtrl
	.global	_cidDetect
	.global	_cidDemodCtrl
	.global	_cidDtctFsmNtt
	.global	_cidGnrtFsmNtt
	.global	_cidDtctFsmUsEtsi
	.global	_cidGnrtFsmUsEtsi
	.global	_wngInit
	.global	_wngGenNoiseSample
	.global	_sgnGetSizes
	.global	_sgnControl
	.global	_sgnGenerateFrame
	.global	_sgnInit
	.global	__ftable
	.global	__divd
	.global	__fltlid
	.global	__mpyd
	.global	__fltid

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x0c)
$C$DW$459	.dwtag  DW_TAG_member
	.dwattr $C$DW$459, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$459, DW_AT_name("fd")
	.dwattr $C$DW$459, DW_AT_TI_symbol_name("_fd")
	.dwattr $C$DW$459, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$459, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$460	.dwtag  DW_TAG_member
	.dwattr $C$DW$460, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$460, DW_AT_name("buf")
	.dwattr $C$DW$460, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$460, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$460, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$461	.dwtag  DW_TAG_member
	.dwattr $C$DW$461, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$461, DW_AT_name("pos")
	.dwattr $C$DW$461, DW_AT_TI_symbol_name("_pos")
	.dwattr $C$DW$461, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$461, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$462	.dwtag  DW_TAG_member
	.dwattr $C$DW$462, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$462, DW_AT_name("bufend")
	.dwattr $C$DW$462, DW_AT_TI_symbol_name("_bufend")
	.dwattr $C$DW$462, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$462, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$463	.dwtag  DW_TAG_member
	.dwattr $C$DW$463, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$463, DW_AT_name("buff_stop")
	.dwattr $C$DW$463, DW_AT_TI_symbol_name("_buff_stop")
	.dwattr $C$DW$463, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$463, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$464	.dwtag  DW_TAG_member
	.dwattr $C$DW$464, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$464, DW_AT_name("flags")
	.dwattr $C$DW$464, DW_AT_TI_symbol_name("_flags")
	.dwattr $C$DW$464, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$464, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$20

$C$DW$T$87	.dwtag  DW_TAG_typedef, DW_AT_name("FILE")
	.dwattr $C$DW$T$87, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$87, DW_AT_language(DW_LANG_C)
$C$DW$T$88	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$88, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$T$88, DW_AT_address_class(0x17)

$C$DW$T$102	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$102, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$T$102, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$102, DW_AT_byte_size(0x78)
$C$DW$465	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$465, DW_AT_upper_bound(0x09)
	.dwendtag $C$DW$T$102


$C$DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x06)
$C$DW$466	.dwtag  DW_TAG_member
	.dwattr $C$DW$466, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$466, DW_AT_name("debugInfo")
	.dwattr $C$DW$466, DW_AT_TI_symbol_name("_debugInfo")
	.dwattr $C$DW$466, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$466, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$467	.dwtag  DW_TAG_member
	.dwattr $C$DW$467, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$467, DW_AT_name("reportOutFcn")
	.dwattr $C$DW$467, DW_AT_TI_symbol_name("_reportOutFcn")
	.dwattr $C$DW$467, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$467, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$468	.dwtag  DW_TAG_member
	.dwattr $C$DW$468, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$468, DW_AT_name("maxSamplesPerFrame")
	.dwattr $C$DW$468, DW_AT_TI_symbol_name("_maxSamplesPerFrame")
	.dwattr $C$DW$468, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$468, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$469	.dwtag  DW_TAG_member
	.dwattr $C$DW$469, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$469, DW_AT_name("maxFragmentSize")
	.dwattr $C$DW$469, DW_AT_TI_symbol_name("_maxFragmentSize")
	.dwattr $C$DW$469, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$469, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$33

$C$DW$T$103	.dwtag  DW_TAG_typedef, DW_AT_name("cidCreateConfig_t")
	.dwattr $C$DW$T$103, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$103, DW_AT_language(DW_LANG_C)
$C$DW$T$104	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$104, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$T$104, DW_AT_address_class(0x17)

$C$DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x06)
$C$DW$470	.dwtag  DW_TAG_member
	.dwattr $C$DW$470, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$470, DW_AT_name("mclass")
	.dwattr $C$DW$470, DW_AT_TI_symbol_name("_mclass")
	.dwattr $C$DW$470, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$470, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$471	.dwtag  DW_TAG_member
	.dwattr $C$DW$471, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$471, DW_AT_name("log2align")
	.dwattr $C$DW$471, DW_AT_TI_symbol_name("_log2align")
	.dwattr $C$DW$471, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$471, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$472	.dwtag  DW_TAG_member
	.dwattr $C$DW$472, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$472, DW_AT_name("size")
	.dwattr $C$DW$472, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$472, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$472, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$473	.dwtag  DW_TAG_member
	.dwattr $C$DW$473, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$473, DW_AT_name("volat")
	.dwattr $C$DW$473, DW_AT_TI_symbol_name("_volat")
	.dwattr $C$DW$473, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$473, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$474	.dwtag  DW_TAG_member
	.dwattr $C$DW$474, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$474, DW_AT_name("base")
	.dwattr $C$DW$474, DW_AT_TI_symbol_name("_base")
	.dwattr $C$DW$474, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$474, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$38

$C$DW$T$84	.dwtag  DW_TAG_typedef, DW_AT_name("ecomemBuffer_t")
	.dwattr $C$DW$T$84, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$84, DW_AT_language(DW_LANG_C)
$C$DW$T$85	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$85, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$T$85, DW_AT_address_class(0x17)
$C$DW$475	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$475, DW_AT_type(*$C$DW$T$84)
$C$DW$T$105	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$105, DW_AT_type(*$C$DW$475)
$C$DW$T$106	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$106, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$T$106, DW_AT_address_class(0x17)
$C$DW$T$107	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$107, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$T$107, DW_AT_address_class(0x17)

$C$DW$T$39	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x01)
$C$DW$476	.dwtag  DW_TAG_member
	.dwattr $C$DW$476, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$476, DW_AT_name("ID")
	.dwattr $C$DW$476, DW_AT_TI_symbol_name("_ID")
	.dwattr $C$DW$476, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$476, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$39

$C$DW$T$108	.dwtag  DW_TAG_typedef, DW_AT_name("cidNewConfig_t")
	.dwattr $C$DW$T$108, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$108, DW_AT_language(DW_LANG_C)
$C$DW$T$109	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$109, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$T$109, DW_AT_address_class(0x17)

$C$DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x06)
$C$DW$477	.dwtag  DW_TAG_member
	.dwattr $C$DW$477, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$477, DW_AT_name("marks_gain")
	.dwattr $C$DW$477, DW_AT_TI_symbol_name("_marks_gain")
	.dwattr $C$DW$477, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$477, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$478	.dwtag  DW_TAG_member
	.dwattr $C$DW$478, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$478, DW_AT_name("msg_type")
	.dwattr $C$DW$478, DW_AT_TI_symbol_name("_msg_type")
	.dwattr $C$DW$478, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$478, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$479	.dwtag  DW_TAG_member
	.dwattr $C$DW$479, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$479, DW_AT_name("msg_length")
	.dwattr $C$DW$479, DW_AT_TI_symbol_name("_msg_length")
	.dwattr $C$DW$479, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$479, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$480	.dwtag  DW_TAG_member
	.dwattr $C$DW$480, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$480, DW_AT_name("msg")
	.dwattr $C$DW$480, DW_AT_TI_symbol_name("_msg")
	.dwattr $C$DW$480, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$480, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$40


$C$DW$T$41	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x04)
$C$DW$481	.dwtag  DW_TAG_member
	.dwattr $C$DW$481, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$481, DW_AT_name("fragment_offset")
	.dwattr $C$DW$481, DW_AT_TI_symbol_name("_fragment_offset")
	.dwattr $C$DW$481, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$481, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$482	.dwtag  DW_TAG_member
	.dwattr $C$DW$482, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$482, DW_AT_name("fragment_size")
	.dwattr $C$DW$482, DW_AT_TI_symbol_name("_fragment_size")
	.dwattr $C$DW$482, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$482, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$483	.dwtag  DW_TAG_member
	.dwattr $C$DW$483, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$483, DW_AT_name("msg")
	.dwattr $C$DW$483, DW_AT_TI_symbol_name("_msg")
	.dwattr $C$DW$483, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$483, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$41


$C$DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x03)
$C$DW$484	.dwtag  DW_TAG_member
	.dwattr $C$DW$484, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$484, DW_AT_name("timeout")
	.dwattr $C$DW$484, DW_AT_TI_symbol_name("_timeout")
	.dwattr $C$DW$484, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$484, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$485	.dwtag  DW_TAG_member
	.dwattr $C$DW$485, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$485, DW_AT_name("direction")
	.dwattr $C$DW$485, DW_AT_TI_symbol_name("_direction")
	.dwattr $C$DW$485, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$485, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$486	.dwtag  DW_TAG_member
	.dwattr $C$DW$486, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$486, DW_AT_name("leading_marks")
	.dwattr $C$DW$486, DW_AT_TI_symbol_name("_leading_marks")
	.dwattr $C$DW$486, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$486, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$42


$C$DW$T$43	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x08)
$C$DW$487	.dwtag  DW_TAG_member
	.dwattr $C$DW$487, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$487, DW_AT_name("ctlCode")
	.dwattr $C$DW$487, DW_AT_TI_symbol_name("_ctlCode")
	.dwattr $C$DW$487, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$487, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$488	.dwtag  DW_TAG_member
	.dwattr $C$DW$488, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$488, DW_AT_name("call_waiting")
	.dwattr $C$DW$488, DW_AT_TI_symbol_name("_call_waiting")
	.dwattr $C$DW$488, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$488, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$489	.dwtag  DW_TAG_member
	.dwattr $C$DW$489, DW_AT_type(*$C$DW$T$96)
	.dwattr $C$DW$489, DW_AT_name("u")
	.dwattr $C$DW$489, DW_AT_TI_symbol_name("_u")
	.dwattr $C$DW$489, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$489, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$43

$C$DW$T$53	.dwtag  DW_TAG_typedef, DW_AT_name("cidCtlMsg_t")
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$53, DW_AT_language(DW_LANG_C)
$C$DW$T$54	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$T$54, DW_AT_address_class(0x17)

$C$DW$T$48	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x06)
$C$DW$490	.dwtag  DW_TAG_member
	.dwattr $C$DW$490, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$490, DW_AT_name("standard")
	.dwattr $C$DW$490, DW_AT_TI_symbol_name("_standard")
	.dwattr $C$DW$490, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$490, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$491	.dwtag  DW_TAG_member
	.dwattr $C$DW$491, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$491, DW_AT_name("gnrt_fsm")
	.dwattr $C$DW$491, DW_AT_TI_symbol_name("_gnrt_fsm")
	.dwattr $C$DW$491, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$491, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$492	.dwtag  DW_TAG_member
	.dwattr $C$DW$492, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$492, DW_AT_name("dtct_fsm")
	.dwattr $C$DW$492, DW_AT_TI_symbol_name("_dtct_fsm")
	.dwattr $C$DW$492, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$492, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$48

$C$DW$T$57	.dwtag  DW_TAG_typedef, DW_AT_name("cidBindStandard_t")
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$57, DW_AT_language(DW_LANG_C)

$C$DW$T$58	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$58, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$58, DW_AT_byte_size(0x24)
$C$DW$493	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$493, DW_AT_upper_bound(0x05)
	.dwendtag $C$DW$T$58


$C$DW$T$59	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$59, DW_AT_byte_size(0x2c)
$C$DW$494	.dwtag  DW_TAG_member
	.dwattr $C$DW$494, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$494, DW_AT_name("mod")
	.dwattr $C$DW$494, DW_AT_TI_symbol_name("_mod")
	.dwattr $C$DW$494, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$494, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$495	.dwtag  DW_TAG_member
	.dwattr $C$DW$495, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$495, DW_AT_name("modCtrl")
	.dwattr $C$DW$495, DW_AT_TI_symbol_name("_modCtrl")
	.dwattr $C$DW$495, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$495, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$496	.dwtag  DW_TAG_member
	.dwattr $C$DW$496, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$496, DW_AT_name("demod")
	.dwattr $C$DW$496, DW_AT_TI_symbol_name("_demod")
	.dwattr $C$DW$496, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$496, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$497	.dwtag  DW_TAG_member
	.dwattr $C$DW$497, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$497, DW_AT_name("demodCtrl")
	.dwattr $C$DW$497, DW_AT_TI_symbol_name("_demodCtrl")
	.dwattr $C$DW$497, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$497, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$498	.dwtag  DW_TAG_member
	.dwattr $C$DW$498, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$498, DW_AT_name("cidBindStandard")
	.dwattr $C$DW$498, DW_AT_TI_symbol_name("_cidBindStandard")
	.dwattr $C$DW$498, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$498, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$59

$C$DW$T$110	.dwtag  DW_TAG_typedef, DW_AT_name("cidBindConfig_t")
	.dwattr $C$DW$T$110, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$T$110, DW_AT_language(DW_LANG_C)
$C$DW$T$111	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$111, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$T$111, DW_AT_address_class(0x17)

$C$DW$T$60	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$60, DW_AT_byte_size(0x01)
$C$DW$499	.dwtag  DW_TAG_member
	.dwattr $C$DW$499, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$499, DW_AT_name("samples_per_frame")
	.dwattr $C$DW$499, DW_AT_TI_symbol_name("_samples_per_frame")
	.dwattr $C$DW$499, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$499, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$60

$C$DW$T$112	.dwtag  DW_TAG_typedef, DW_AT_name("cidOpenConfig_t")
	.dwattr $C$DW$T$112, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$T$112, DW_AT_language(DW_LANG_C)
$C$DW$T$113	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$113, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$T$113, DW_AT_address_class(0x17)

$C$DW$T$61	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$61, DW_AT_byte_size(0x04)
$C$DW$500	.dwtag  DW_TAG_member
	.dwattr $C$DW$500, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$500, DW_AT_name("f1")
	.dwattr $C$DW$500, DW_AT_TI_symbol_name("_f1")
	.dwattr $C$DW$500, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$500, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$501	.dwtag  DW_TAG_member
	.dwattr $C$DW$501, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$501, DW_AT_name("f2")
	.dwattr $C$DW$501, DW_AT_TI_symbol_name("_f2")
	.dwattr $C$DW$501, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$501, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$502	.dwtag  DW_TAG_member
	.dwattr $C$DW$502, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$502, DW_AT_name("amp1")
	.dwattr $C$DW$502, DW_AT_TI_symbol_name("_amp1")
	.dwattr $C$DW$502, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$502, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$503	.dwtag  DW_TAG_member
	.dwattr $C$DW$503, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$503, DW_AT_name("amp2")
	.dwattr $C$DW$503, DW_AT_TI_symbol_name("_amp2")
	.dwattr $C$DW$503, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$503, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$61


$C$DW$T$66	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$66, DW_AT_byte_size(0x06)
$C$DW$504	.dwtag  DW_TAG_member
	.dwattr $C$DW$504, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$504, DW_AT_name("duration")
	.dwattr $C$DW$504, DW_AT_TI_symbol_name("_duration")
	.dwattr $C$DW$504, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$504, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$505	.dwtag  DW_TAG_member
	.dwattr $C$DW$505, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$505, DW_AT_name("dataptr")
	.dwattr $C$DW$505, DW_AT_TI_symbol_name("_dataptr")
	.dwattr $C$DW$505, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$505, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$506	.dwtag  DW_TAG_member
	.dwattr $C$DW$506, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$506, DW_AT_name("numword")
	.dwattr $C$DW$506, DW_AT_TI_symbol_name("_numword")
	.dwattr $C$DW$506, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$506, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$66


$C$DW$T$67	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$67, DW_AT_byte_size(0x08)
$C$DW$507	.dwtag  DW_TAG_member
	.dwattr $C$DW$507, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$507, DW_AT_name("code")
	.dwattr $C$DW$507, DW_AT_TI_symbol_name("_code")
	.dwattr $C$DW$507, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$507, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$508	.dwtag  DW_TAG_member
	.dwattr $C$DW$508, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$508, DW_AT_name("Fs")
	.dwattr $C$DW$508, DW_AT_TI_symbol_name("_Fs")
	.dwattr $C$DW$508, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$508, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$509	.dwtag  DW_TAG_member
	.dwattr $C$DW$509, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$509, DW_AT_name("u")
	.dwattr $C$DW$509, DW_AT_TI_symbol_name("_u")
	.dwattr $C$DW$509, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$509, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$67

$C$DW$T$114	.dwtag  DW_TAG_typedef, DW_AT_name("sgnControl_t")
	.dwattr $C$DW$T$114, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$T$114, DW_AT_language(DW_LANG_C)
$C$DW$T$115	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$115, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$T$115, DW_AT_address_class(0x17)

$C$DW$T$68	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$68, DW_AT_byte_size(0x04)
$C$DW$510	.dwtag  DW_TAG_member
	.dwattr $C$DW$510, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$510, DW_AT_name("frame")
	.dwattr $C$DW$510, DW_AT_TI_symbol_name("_frame")
	.dwattr $C$DW$510, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$510, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$511	.dwtag  DW_TAG_member
	.dwattr $C$DW$511, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$511, DW_AT_name("cnt")
	.dwattr $C$DW$511, DW_AT_TI_symbol_name("_cnt")
	.dwattr $C$DW$511, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$511, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$68

$C$DW$T$69	.dwtag  DW_TAG_typedef, DW_AT_name("sgnFileIo_t")
	.dwattr $C$DW$T$69, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$T$69, DW_AT_language(DW_LANG_C)
$C$DW$T$70	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$70, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$T$70, DW_AT_address_class(0x17)

$C$DW$T$71	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$71, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$T$71, DW_AT_language(DW_LANG_C)
$C$DW$512	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$512, DW_AT_type(*$C$DW$T$70)
	.dwendtag $C$DW$T$71

$C$DW$T$72	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$72, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$T$72, DW_AT_address_class(0x20)

$C$DW$T$82	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$82, DW_AT_byte_size(0x20)
$C$DW$513	.dwtag  DW_TAG_member
	.dwattr $C$DW$513, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$513, DW_AT_name("delay")
	.dwattr $C$DW$513, DW_AT_TI_symbol_name("_delay")
	.dwattr $C$DW$513, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$513, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$514	.dwtag  DW_TAG_member
	.dwattr $C$DW$514, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$514, DW_AT_name("dc_offset")
	.dwattr $C$DW$514, DW_AT_TI_symbol_name("_dc_offset")
	.dwattr $C$DW$514, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$514, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$515	.dwtag  DW_TAG_member
	.dwattr $C$DW$515, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$515, DW_AT_name("wf_type")
	.dwattr $C$DW$515, DW_AT_TI_symbol_name("_wf_type")
	.dwattr $C$DW$515, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$515, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$516	.dwtag  DW_TAG_member
	.dwattr $C$DW$516, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$516, DW_AT_name("f1")
	.dwattr $C$DW$516, DW_AT_TI_symbol_name("_f1")
	.dwattr $C$DW$516, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$516, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$517	.dwtag  DW_TAG_member
	.dwattr $C$DW$517, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$517, DW_AT_name("f2")
	.dwattr $C$DW$517, DW_AT_TI_symbol_name("_f2")
	.dwattr $C$DW$517, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$517, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$518	.dwtag  DW_TAG_member
	.dwattr $C$DW$518, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$518, DW_AT_name("Fs")
	.dwattr $C$DW$518, DW_AT_TI_symbol_name("_Fs")
	.dwattr $C$DW$518, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$518, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$519	.dwtag  DW_TAG_member
	.dwattr $C$DW$519, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$519, DW_AT_name("t_amp1")
	.dwattr $C$DW$519, DW_AT_TI_symbol_name("_t_amp1")
	.dwattr $C$DW$519, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$519, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$520	.dwtag  DW_TAG_member
	.dwattr $C$DW$520, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$520, DW_AT_name("t_amp2")
	.dwattr $C$DW$520, DW_AT_TI_symbol_name("_t_amp2")
	.dwattr $C$DW$520, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$520, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$521	.dwtag  DW_TAG_member
	.dwattr $C$DW$521, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$521, DW_AT_name("pr_period")
	.dwattr $C$DW$521, DW_AT_TI_symbol_name("_pr_period")
	.dwattr $C$DW$521, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$521, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$522	.dwtag  DW_TAG_member
	.dwattr $C$DW$522, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$522, DW_AT_name("pr_enable")
	.dwattr $C$DW$522, DW_AT_TI_symbol_name("_pr_enable")
	.dwattr $C$DW$522, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$522, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$523	.dwtag  DW_TAG_member
	.dwattr $C$DW$523, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$523, DW_AT_name("fsk_duration")
	.dwattr $C$DW$523, DW_AT_TI_symbol_name("_fsk_duration")
	.dwattr $C$DW$523, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$523, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$524	.dwtag  DW_TAG_member
	.dwattr $C$DW$524, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$524, DW_AT_name("fsk_dataptr")
	.dwattr $C$DW$524, DW_AT_TI_symbol_name("_fsk_dataptr")
	.dwattr $C$DW$524, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$524, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$525	.dwtag  DW_TAG_member
	.dwattr $C$DW$525, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$525, DW_AT_name("fsk_numword")
	.dwattr $C$DW$525, DW_AT_TI_symbol_name("_fsk_numword")
	.dwattr $C$DW$525, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$525, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$526	.dwtag  DW_TAG_member
	.dwattr $C$DW$526, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$526, DW_AT_name("noise_level")
	.dwattr $C$DW$526, DW_AT_TI_symbol_name("_noise_level")
	.dwattr $C$DW$526, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$526, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$527	.dwtag  DW_TAG_member
	.dwattr $C$DW$527, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$527, DW_AT_name("noise_seed")
	.dwattr $C$DW$527, DW_AT_TI_symbol_name("_noise_seed")
	.dwattr $C$DW$527, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$527, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$528	.dwtag  DW_TAG_member
	.dwattr $C$DW$528, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$528, DW_AT_name("noise_type")
	.dwattr $C$DW$528, DW_AT_TI_symbol_name("_noise_type")
	.dwattr $C$DW$528, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$528, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$529	.dwtag  DW_TAG_member
	.dwattr $C$DW$529, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$529, DW_AT_name("power_level")
	.dwattr $C$DW$529, DW_AT_TI_symbol_name("_power_level")
	.dwattr $C$DW$529, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$529, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$530	.dwtag  DW_TAG_member
	.dwattr $C$DW$530, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$530, DW_AT_name("hoth_wng_seed")
	.dwattr $C$DW$530, DW_AT_TI_symbol_name("_hoth_wng_seed")
	.dwattr $C$DW$530, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$530, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$531	.dwtag  DW_TAG_member
	.dwattr $C$DW$531, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$531, DW_AT_name("file_io_fcn")
	.dwattr $C$DW$531, DW_AT_TI_symbol_name("_file_io_fcn")
	.dwattr $C$DW$531, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$531, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$532	.dwtag  DW_TAG_member
	.dwattr $C$DW$532, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$532, DW_AT_name("addr")
	.dwattr $C$DW$532, DW_AT_TI_symbol_name("_addr")
	.dwattr $C$DW$532, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$532, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$533	.dwtag  DW_TAG_member
	.dwattr $C$DW$533, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$533, DW_AT_name("count")
	.dwattr $C$DW$533, DW_AT_TI_symbol_name("_count")
	.dwattr $C$DW$533, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$533, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$534	.dwtag  DW_TAG_member
	.dwattr $C$DW$534, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$534, DW_AT_name("pcmtbl")
	.dwattr $C$DW$534, DW_AT_TI_symbol_name("_pcmtbl")
	.dwattr $C$DW$534, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$534, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$535	.dwtag  DW_TAG_member
	.dwattr $C$DW$535, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$535, DW_AT_name("exception")
	.dwattr $C$DW$535, DW_AT_TI_symbol_name("_exception")
	.dwattr $C$DW$535, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$535, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$536	.dwtag  DW_TAG_member
	.dwattr $C$DW$536, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$536, DW_AT_name("debug")
	.dwattr $C$DW$536, DW_AT_TI_symbol_name("_debug")
	.dwattr $C$DW$536, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$536, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$82

$C$DW$T$116	.dwtag  DW_TAG_typedef, DW_AT_name("sgnConfig_t")
	.dwattr $C$DW$T$116, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$T$116, DW_AT_language(DW_LANG_C)
$C$DW$T$117	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$117, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$T$117, DW_AT_address_class(0x17)

$C$DW$T$83	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$83, DW_AT_byte_size(0x0c)
$C$DW$537	.dwtag  DW_TAG_member
	.dwattr $C$DW$537, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$537, DW_AT_name("state")
	.dwattr $C$DW$537, DW_AT_TI_symbol_name("_state")
	.dwattr $C$DW$537, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$537, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$538	.dwtag  DW_TAG_member
	.dwattr $C$DW$538, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$538, DW_AT_name("dcoffset")
	.dwattr $C$DW$538, DW_AT_TI_symbol_name("_dcoffset")
	.dwattr $C$DW$538, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$538, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$539	.dwtag  DW_TAG_member
	.dwattr $C$DW$539, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$539, DW_AT_name("wftype")
	.dwattr $C$DW$539, DW_AT_TI_symbol_name("_wftype")
	.dwattr $C$DW$539, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$539, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$540	.dwtag  DW_TAG_member
	.dwattr $C$DW$540, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$540, DW_AT_name("f1")
	.dwattr $C$DW$540, DW_AT_TI_symbol_name("_f1")
	.dwattr $C$DW$540, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$540, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$541	.dwtag  DW_TAG_member
	.dwattr $C$DW$541, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$541, DW_AT_name("f2")
	.dwattr $C$DW$541, DW_AT_TI_symbol_name("_f2")
	.dwattr $C$DW$541, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$541, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$542	.dwtag  DW_TAG_member
	.dwattr $C$DW$542, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$542, DW_AT_name("amp1")
	.dwattr $C$DW$542, DW_AT_TI_symbol_name("_amp1")
	.dwattr $C$DW$542, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$542, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$543	.dwtag  DW_TAG_member
	.dwattr $C$DW$543, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$543, DW_AT_name("amp2")
	.dwattr $C$DW$543, DW_AT_TI_symbol_name("_amp2")
	.dwattr $C$DW$543, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$543, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$544	.dwtag  DW_TAG_member
	.dwattr $C$DW$544, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$544, DW_AT_name("nlevel")
	.dwattr $C$DW$544, DW_AT_TI_symbol_name("_nlevel")
	.dwattr $C$DW$544, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$544, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$545	.dwtag  DW_TAG_member
	.dwattr $C$DW$545, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$545, DW_AT_name("nseed")
	.dwattr $C$DW$545, DW_AT_TI_symbol_name("_nseed")
	.dwattr $C$DW$545, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$545, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$546	.dwtag  DW_TAG_member
	.dwattr $C$DW$546, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$546, DW_AT_name("ntype")
	.dwattr $C$DW$546, DW_AT_TI_symbol_name("_ntype")
	.dwattr $C$DW$546, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$546, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$547	.dwtag  DW_TAG_member
	.dwattr $C$DW$547, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$547, DW_AT_name("pow_level")
	.dwattr $C$DW$547, DW_AT_TI_symbol_name("_pow_level")
	.dwattr $C$DW$547, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$547, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$548	.dwtag  DW_TAG_member
	.dwattr $C$DW$548, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$548, DW_AT_name("hoth_seed")
	.dwattr $C$DW$548, DW_AT_TI_symbol_name("_hoth_seed")
	.dwattr $C$DW$548, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$548, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$83

$C$DW$T$94	.dwtag  DW_TAG_typedef, DW_AT_name("siuSGNPars_t")
	.dwattr $C$DW$T$94, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$T$94, DW_AT_language(DW_LANG_C)
$C$DW$T$118	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$118, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$T$118, DW_AT_address_class(0x17)

$C$DW$T$86	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$86, DW_AT_byte_size(0x0a)
$C$DW$549	.dwtag  DW_TAG_member
	.dwattr $C$DW$549, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$549, DW_AT_name("cidBufs")
	.dwattr $C$DW$549, DW_AT_TI_symbol_name("_cidBufs")
	.dwattr $C$DW$549, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$549, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$550	.dwtag  DW_TAG_member
	.dwattr $C$DW$550, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$550, DW_AT_name("ID")
	.dwattr $C$DW$550, DW_AT_TI_symbol_name("_ID")
	.dwattr $C$DW$550, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$550, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$551	.dwtag  DW_TAG_member
	.dwattr $C$DW$551, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$551, DW_AT_name("cidInst")
	.dwattr $C$DW$551, DW_AT_TI_symbol_name("_cidInst")
	.dwattr $C$DW$551, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$551, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$552	.dwtag  DW_TAG_member
	.dwattr $C$DW$552, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$552, DW_AT_name("cidNbufs")
	.dwattr $C$DW$552, DW_AT_TI_symbol_name("_cidNbufs")
	.dwattr $C$DW$552, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$552, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$553	.dwtag  DW_TAG_member
	.dwattr $C$DW$553, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$553, DW_AT_name("cid_heap_size")
	.dwattr $C$DW$553, DW_AT_TI_symbol_name("_cid_heap_size")
	.dwattr $C$DW$553, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$553, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$554	.dwtag  DW_TAG_member
	.dwattr $C$DW$554, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$554, DW_AT_name("aux_heap_size")
	.dwattr $C$DW$554, DW_AT_TI_symbol_name("_aux_heap_size")
	.dwattr $C$DW$554, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$554, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$86

$C$DW$T$119	.dwtag  DW_TAG_typedef, DW_AT_name("siuInst_t")
	.dwattr $C$DW$T$119, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$T$119, DW_AT_language(DW_LANG_C)

$C$DW$T$120	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$120, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$T$120, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$120, DW_AT_byte_size(0x14)
$C$DW$555	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$555, DW_AT_upper_bound(0x01)
	.dwendtag $C$DW$T$120

$C$DW$T$121	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$121, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$T$121, DW_AT_address_class(0x17)

$C$DW$T$90	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$90, DW_AT_byte_size(0x12)
$C$DW$556	.dwtag  DW_TAG_member
	.dwattr $C$DW$556, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$556, DW_AT_name("fptr")
	.dwattr $C$DW$556, DW_AT_TI_symbol_name("_fptr")
	.dwattr $C$DW$556, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$556, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$557	.dwtag  DW_TAG_member
	.dwattr $C$DW$557, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$557, DW_AT_name("use_cache")
	.dwattr $C$DW$557, DW_AT_TI_symbol_name("_use_cache")
	.dwattr $C$DW$557, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$557, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$558	.dwtag  DW_TAG_member
	.dwattr $C$DW$558, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$558, DW_AT_name("enabled")
	.dwattr $C$DW$558, DW_AT_TI_symbol_name("_enabled")
	.dwattr $C$DW$558, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$558, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$559	.dwtag  DW_TAG_member
	.dwattr $C$DW$559, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$559, DW_AT_name("profile_ovrhd")
	.dwattr $C$DW$559, DW_AT_TI_symbol_name("_profile_ovrhd")
	.dwattr $C$DW$559, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$559, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$560	.dwtag  DW_TAG_member
	.dwattr $C$DW$560, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$560, DW_AT_name("profile_start")
	.dwattr $C$DW$560, DW_AT_TI_symbol_name("_profile_start")
	.dwattr $C$DW$560, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$560, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$561	.dwtag  DW_TAG_member
	.dwattr $C$DW$561, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$561, DW_AT_name("profile_cycles")
	.dwattr $C$DW$561, DW_AT_TI_symbol_name("_profile_cycles")
	.dwattr $C$DW$561, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$561, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$562	.dwtag  DW_TAG_member
	.dwattr $C$DW$562, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$562, DW_AT_name("ignore_ovrhd")
	.dwattr $C$DW$562, DW_AT_TI_symbol_name("_ignore_ovrhd")
	.dwattr $C$DW$562, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$562, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$563	.dwtag  DW_TAG_member
	.dwattr $C$DW$563, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$563, DW_AT_name("ignore_start")
	.dwattr $C$DW$563, DW_AT_TI_symbol_name("_ignore_start")
	.dwattr $C$DW$563, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$563, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$564	.dwtag  DW_TAG_member
	.dwattr $C$DW$564, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$564, DW_AT_name("ignore_cycles")
	.dwattr $C$DW$564, DW_AT_TI_symbol_name("_ignore_cycles")
	.dwattr $C$DW$564, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$564, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$90

$C$DW$T$122	.dwtag  DW_TAG_typedef, DW_AT_name("cidProfile_t")
	.dwattr $C$DW$T$122, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$T$122, DW_AT_language(DW_LANG_C)

$C$DW$T$91	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$91, DW_AT_byte_size(0x02)
$C$DW$565	.dwtag  DW_TAG_member
	.dwattr $C$DW$565, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$565, DW_AT_name("nscale")
	.dwattr $C$DW$565, DW_AT_TI_symbol_name("_nscale")
	.dwattr $C$DW$565, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$565, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$566	.dwtag  DW_TAG_member
	.dwattr $C$DW$566, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$566, DW_AT_name("rng_state")
	.dwattr $C$DW$566, DW_AT_TI_symbol_name("_rng_state")
	.dwattr $C$DW$566, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$566, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$91


$C$DW$T$92	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$92, DW_AT_byte_size(0x03)
$C$DW$567	.dwtag  DW_TAG_member
	.dwattr $C$DW$567, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$567, DW_AT_name("chnl_sim_on")
	.dwattr $C$DW$567, DW_AT_TI_symbol_name("_chnl_sim_on")
	.dwattr $C$DW$567, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$567, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$568	.dwtag  DW_TAG_member
	.dwattr $C$DW$568, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$568, DW_AT_name("nlevel")
	.dwattr $C$DW$568, DW_AT_TI_symbol_name("_nlevel")
	.dwattr $C$DW$568, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$568, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$569	.dwtag  DW_TAG_member
	.dwattr $C$DW$569, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$569, DW_AT_name("nseed")
	.dwattr $C$DW$569, DW_AT_TI_symbol_name("_nseed")
	.dwattr $C$DW$569, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$569, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$92

$C$DW$T$93	.dwtag  DW_TAG_typedef, DW_AT_name("siuCHSMPars_t")
	.dwattr $C$DW$T$93, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$T$93, DW_AT_language(DW_LANG_C)

$C$DW$T$95	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$95, DW_AT_byte_size(0x28)
$C$DW$570	.dwtag  DW_TAG_member
	.dwattr $C$DW$570, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$570, DW_AT_name("pcm_bits")
	.dwattr $C$DW$570, DW_AT_TI_symbol_name("_pcm_bits")
	.dwattr $C$DW$570, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$570, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$571	.dwtag  DW_TAG_member
	.dwattr $C$DW$571, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$571, DW_AT_name("frame_size")
	.dwattr $C$DW$571, DW_AT_TI_symbol_name("_frame_size")
	.dwattr $C$DW$571, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$571, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$572	.dwtag  DW_TAG_member
	.dwattr $C$DW$572, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$572, DW_AT_name("tog_cid1")
	.dwattr $C$DW$572, DW_AT_TI_symbol_name("_tog_cid1")
	.dwattr $C$DW$572, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$572, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$573	.dwtag  DW_TAG_member
	.dwattr $C$DW$573, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$573, DW_AT_name("cid_ctlMsg1")
	.dwattr $C$DW$573, DW_AT_TI_symbol_name("_cid_ctlMsg1")
	.dwattr $C$DW$573, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$573, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$574	.dwtag  DW_TAG_member
	.dwattr $C$DW$574, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$574, DW_AT_name("tog_cid2")
	.dwattr $C$DW$574, DW_AT_TI_symbol_name("_tog_cid2")
	.dwattr $C$DW$574, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$574, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$575	.dwtag  DW_TAG_member
	.dwattr $C$DW$575, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$575, DW_AT_name("cid_ctlMsg2")
	.dwattr $C$DW$575, DW_AT_TI_symbol_name("_cid_ctlMsg2")
	.dwattr $C$DW$575, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$575, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$576	.dwtag  DW_TAG_member
	.dwattr $C$DW$576, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$576, DW_AT_name("tog_chnl_sim")
	.dwattr $C$DW$576, DW_AT_TI_symbol_name("_tog_chnl_sim")
	.dwattr $C$DW$576, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$576, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$577	.dwtag  DW_TAG_member
	.dwattr $C$DW$577, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$577, DW_AT_name("chSim")
	.dwattr $C$DW$577, DW_AT_TI_symbol_name("_chSim")
	.dwattr $C$DW$577, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$577, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$578	.dwtag  DW_TAG_member
	.dwattr $C$DW$578, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$578, DW_AT_name("tog_rx_SGN")
	.dwattr $C$DW$578, DW_AT_TI_symbol_name("_tog_rx_SGN")
	.dwattr $C$DW$578, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$578, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$579	.dwtag  DW_TAG_member
	.dwattr $C$DW$579, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$579, DW_AT_name("rxSGN")
	.dwattr $C$DW$579, DW_AT_TI_symbol_name("_rxSGN")
	.dwattr $C$DW$579, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr $C$DW$579, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$95

$C$DW$T$123	.dwtag  DW_TAG_typedef, DW_AT_name("siuSetup_t")
	.dwattr $C$DW$T$123, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$T$123, DW_AT_language(DW_LANG_C)

$C$DW$T$96	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$96, DW_AT_byte_size(0x06)
$C$DW$580	.dwtag  DW_TAG_member
	.dwattr $C$DW$580, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$580, DW_AT_name("gnrt")
	.dwattr $C$DW$580, DW_AT_TI_symbol_name("_gnrt")
	.dwattr $C$DW$580, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$580, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$581	.dwtag  DW_TAG_member
	.dwattr $C$DW$581, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$581, DW_AT_name("mgnrt")
	.dwattr $C$DW$581, DW_AT_TI_symbol_name("_mgnrt")
	.dwattr $C$DW$581, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$581, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$582	.dwtag  DW_TAG_member
	.dwattr $C$DW$582, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$582, DW_AT_name("dtct")
	.dwattr $C$DW$582, DW_AT_TI_symbol_name("_dtct")
	.dwattr $C$DW$582, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$582, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$96


$C$DW$T$97	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$97, DW_AT_byte_size(0x06)
$C$DW$583	.dwtag  DW_TAG_member
	.dwattr $C$DW$583, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$583, DW_AT_name("dc_offset")
	.dwattr $C$DW$583, DW_AT_TI_symbol_name("_dc_offset")
	.dwattr $C$DW$583, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$583, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$584	.dwtag  DW_TAG_member
	.dwattr $C$DW$584, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$584, DW_AT_name("pr_period")
	.dwattr $C$DW$584, DW_AT_TI_symbol_name("_pr_period")
	.dwattr $C$DW$584, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$584, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$585	.dwtag  DW_TAG_member
	.dwattr $C$DW$585, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$585, DW_AT_name("t")
	.dwattr $C$DW$585, DW_AT_TI_symbol_name("_t")
	.dwattr $C$DW$585, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$585, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$586	.dwtag  DW_TAG_member
	.dwattr $C$DW$586, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$586, DW_AT_name("noise_level")
	.dwattr $C$DW$586, DW_AT_TI_symbol_name("_noise_level")
	.dwattr $C$DW$586, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$586, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$587	.dwtag  DW_TAG_member
	.dwattr $C$DW$587, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$587, DW_AT_name("fsk")
	.dwattr $C$DW$587, DW_AT_TI_symbol_name("_fsk")
	.dwattr $C$DW$587, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$587, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$588	.dwtag  DW_TAG_member
	.dwattr $C$DW$588, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$588, DW_AT_name("power_level")
	.dwattr $C$DW$588, DW_AT_TI_symbol_name("_power_level")
	.dwattr $C$DW$588, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$588, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$97

$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x17)
$C$DW$T$127	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$127, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$T$127, DW_AT_address_class(0x17)

$C$DW$T$25	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$25, DW_AT_language(DW_LANG_C)
$C$DW$589	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$589, DW_AT_type(*$C$DW$T$3)
$C$DW$590	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$590, DW_AT_type(*$C$DW$T$23)
$C$DW$591	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$591, DW_AT_type(*$C$DW$T$23)
$C$DW$592	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$592, DW_AT_type(*$C$DW$T$23)
$C$DW$593	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$593, DW_AT_type(*$C$DW$T$24)
	.dwendtag $C$DW$T$25

$C$DW$T$26	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_address_class(0x20)
$C$DW$T$27	.dwtag  DW_TAG_typedef, DW_AT_name("dbgInfo_t")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)

$C$DW$T$31	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$31, DW_AT_language(DW_LANG_C)
$C$DW$594	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$594, DW_AT_type(*$C$DW$T$23)
$C$DW$595	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$595, DW_AT_type(*$C$DW$T$30)
$C$DW$596	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$596, DW_AT_type(*$C$DW$T$30)
$C$DW$597	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$597, DW_AT_type(*$C$DW$T$30)
$C$DW$598	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$598, DW_AT_type(*$C$DW$T$30)
$C$DW$599	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$599, DW_AT_type(*$C$DW$T$30)
$C$DW$600	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$600, DW_AT_type(*$C$DW$T$30)
$C$DW$601	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$601, DW_AT_type(*$C$DW$T$24)
$C$DW$602	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$602, DW_AT_type(*$C$DW$T$30)
	.dwendtag $C$DW$T$31

$C$DW$T$32	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$32, DW_AT_address_class(0x20)

$C$DW$T$46	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$46, DW_AT_language(DW_LANG_C)
$C$DW$603	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$603, DW_AT_type(*$C$DW$T$3)
$C$DW$604	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$604, DW_AT_type(*$C$DW$T$30)
	.dwendtag $C$DW$T$46

$C$DW$T$47	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$47, DW_AT_address_class(0x20)

$C$DW$T$51	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$51, DW_AT_language(DW_LANG_C)
$C$DW$605	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$605, DW_AT_type(*$C$DW$T$3)
$C$DW$606	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$606, DW_AT_type(*$C$DW$T$50)
	.dwendtag $C$DW$T$51

$C$DW$T$52	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$T$52, DW_AT_address_class(0x20)

$C$DW$T$80	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$80, DW_AT_language(DW_LANG_C)
$C$DW$607	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$607, DW_AT_type(*$C$DW$T$23)
$C$DW$608	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$608, DW_AT_type(*$C$DW$T$79)
	.dwendtag $C$DW$T$80

$C$DW$T$81	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$81, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$T$81, DW_AT_address_class(0x20)
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
$C$DW$T$28	.dwtag  DW_TAG_typedef, DW_AT_name("int16_t")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C)
$C$DW$T$29	.dwtag  DW_TAG_typedef, DW_AT_name("int_least16_t")
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$29, DW_AT_language(DW_LANG_C)
$C$DW$T$30	.dwtag  DW_TAG_typedef, DW_AT_name("tint")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$30, DW_AT_language(DW_LANG_C)

$C$DW$T$44	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)
$C$DW$609	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$609, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$T$44

$C$DW$T$45	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$45, DW_AT_address_class(0x20)
$C$DW$T$65	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$65, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$65, DW_AT_address_class(0x17)

$C$DW$T$183	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$183, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$183, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$183, DW_AT_byte_size(0x2d)
$C$DW$610	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$610, DW_AT_upper_bound(0x2c)
	.dwendtag $C$DW$T$183


$C$DW$T$184	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$184, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$184, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$184, DW_AT_byte_size(0x0d)
$C$DW$611	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$611, DW_AT_upper_bound(0x0c)
	.dwendtag $C$DW$T$184

$C$DW$T$49	.dwtag  DW_TAG_typedef, DW_AT_name("linSample")
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$49, DW_AT_language(DW_LANG_C)
$C$DW$T$50	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$T$50, DW_AT_address_class(0x17)

$C$DW$T$188	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$188, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$T$188, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$188, DW_AT_byte_size(0x2c)
$C$DW$612	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$612, DW_AT_upper_bound(0x2b)
	.dwendtag $C$DW$T$188

$C$DW$613	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$613, DW_AT_type(*$C$DW$T$30)
$C$DW$T$76	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$76, DW_AT_type(*$C$DW$613)
$C$DW$T$77	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$77, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$T$77, DW_AT_address_class(0x17)
$C$DW$614	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$614, DW_AT_type(*$C$DW$T$30)
$C$DW$T$189	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$189, DW_AT_type(*$C$DW$614)
$C$DW$T$35	.dwtag  DW_TAG_typedef, DW_AT_name("int_least8_t")
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$35, DW_AT_language(DW_LANG_C)
$C$DW$T$36	.dwtag  DW_TAG_typedef, DW_AT_name("tshort")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)
$C$DW$T$37	.dwtag  DW_TAG_typedef, DW_AT_name("tbool")
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)

$C$DW$T$55	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$55, DW_AT_language(DW_LANG_C)
$C$DW$615	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$615, DW_AT_type(*$C$DW$T$3)
$C$DW$616	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$616, DW_AT_type(*$C$DW$T$54)
	.dwendtag $C$DW$T$55

$C$DW$T$56	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$T$56, DW_AT_address_class(0x20)
$C$DW$T$134	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$134, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$134, DW_AT_address_class(0x17)
$C$DW$617	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$617, DW_AT_type(*$C$DW$T$37)
$C$DW$T$192	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$192, DW_AT_type(*$C$DW$617)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)
$C$DW$618	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$618, DW_AT_type(*$C$DW$T$11)
$C$DW$619	.dwtag  DW_TAG_TI_ioport_type
	.dwattr $C$DW$619, DW_AT_type(*$C$DW$618)
$C$DW$T$193	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$193, DW_AT_type(*$C$DW$619)
$C$DW$T$194	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$194, DW_AT_type(*$C$DW$T$193)
	.dwattr $C$DW$T$194, DW_AT_address_class(0x10)
$C$DW$T$195	.dwtag  DW_TAG_typedef, DW_AT_name("profIOPort")
	.dwattr $C$DW$T$195, DW_AT_type(*$C$DW$T$194)
	.dwattr $C$DW$T$195, DW_AT_language(DW_LANG_C)
$C$DW$T$124	.dwtag  DW_TAG_typedef, DW_AT_name("size_t")
	.dwattr $C$DW$T$124, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$124, DW_AT_language(DW_LANG_C)
$C$DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
$C$DW$T$22	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least16_t")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
$C$DW$T$23	.dwtag  DW_TAG_typedef, DW_AT_name("tuint")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
$C$DW$T$24	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$24, DW_AT_address_class(0x17)

$C$DW$T$196	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$196, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$196, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$196, DW_AT_byte_size(0x04)
$C$DW$620	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$620, DW_AT_upper_bound(0x03)
	.dwendtag $C$DW$T$196

$C$DW$T$34	.dwtag  DW_TAG_typedef, DW_AT_name("tsize")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)
$C$DW$T$62	.dwtag  DW_TAG_typedef, DW_AT_name("int32_t")
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$62, DW_AT_language(DW_LANG_C)
$C$DW$T$63	.dwtag  DW_TAG_typedef, DW_AT_name("int_least32_t")
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$T$63, DW_AT_language(DW_LANG_C)
$C$DW$T$64	.dwtag  DW_TAG_typedef, DW_AT_name("tlong")
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$64, DW_AT_language(DW_LANG_C)

$C$DW$T$89	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$89, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$89, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$89, DW_AT_byte_size(0x04)
$C$DW$621	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$621, DW_AT_upper_bound(0x01)
	.dwendtag $C$DW$T$89

$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)
$C$DW$T$73	.dwtag  DW_TAG_typedef, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$73, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$73, DW_AT_language(DW_LANG_C)
$C$DW$T$74	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least32_t")
	.dwattr $C$DW$T$74, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$T$74, DW_AT_language(DW_LANG_C)
$C$DW$T$75	.dwtag  DW_TAG_typedef, DW_AT_name("tulong")
	.dwattr $C$DW$T$75, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$T$75, DW_AT_language(DW_LANG_C)
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
$C$DW$T$78	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$78, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$78, DW_AT_name("signed char")
	.dwattr $C$DW$T$78, DW_AT_byte_size(0x01)
$C$DW$T$79	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$79, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$T$79, DW_AT_address_class(0x17)
$C$DW$T$165	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$165, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$T$165, DW_AT_address_class(0x17)
$C$DW$622	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$622, DW_AT_type(*$C$DW$T$78)
$C$DW$T$98	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$98, DW_AT_type(*$C$DW$622)
$C$DW$T$99	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$99, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$T$99, DW_AT_address_class(0x17)

$C$DW$T$202	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$202, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$T$202, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$202, DW_AT_byte_size(0x100)
$C$DW$623	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$623, DW_AT_upper_bound(0xff)
	.dwendtag $C$DW$T$202

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

$C$DW$624	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$624, DW_AT_location[DW_OP_reg0]
$C$DW$625	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$625, DW_AT_location[DW_OP_reg1]
$C$DW$626	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$626, DW_AT_location[DW_OP_reg2]
$C$DW$627	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$627, DW_AT_location[DW_OP_reg3]
$C$DW$628	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$628, DW_AT_location[DW_OP_reg4]
$C$DW$629	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$629, DW_AT_location[DW_OP_reg5]
$C$DW$630	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$630, DW_AT_location[DW_OP_reg6]
$C$DW$631	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$631, DW_AT_location[DW_OP_reg7]
$C$DW$632	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$632, DW_AT_location[DW_OP_reg8]
$C$DW$633	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$633, DW_AT_location[DW_OP_reg9]
$C$DW$634	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$634, DW_AT_location[DW_OP_reg10]
$C$DW$635	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$635, DW_AT_location[DW_OP_reg11]
$C$DW$636	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$636, DW_AT_location[DW_OP_reg12]
$C$DW$637	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$637, DW_AT_location[DW_OP_reg13]
$C$DW$638	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$638, DW_AT_location[DW_OP_reg14]
$C$DW$639	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$639, DW_AT_location[DW_OP_reg15]
$C$DW$640	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$640, DW_AT_location[DW_OP_reg16]
$C$DW$641	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$641, DW_AT_location[DW_OP_reg17]
$C$DW$642	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$642, DW_AT_location[DW_OP_reg18]
$C$DW$643	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$643, DW_AT_location[DW_OP_reg19]
$C$DW$644	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$644, DW_AT_location[DW_OP_reg20]
$C$DW$645	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$645, DW_AT_location[DW_OP_reg21]
$C$DW$646	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$646, DW_AT_location[DW_OP_reg22]
$C$DW$647	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$647, DW_AT_location[DW_OP_reg23]
$C$DW$648	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$648, DW_AT_location[DW_OP_reg24]
$C$DW$649	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$649, DW_AT_location[DW_OP_reg25]
$C$DW$650	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$650, DW_AT_location[DW_OP_reg26]
$C$DW$651	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$651, DW_AT_location[DW_OP_reg27]
$C$DW$652	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$652, DW_AT_location[DW_OP_reg28]
$C$DW$653	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$653, DW_AT_location[DW_OP_reg29]
$C$DW$654	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$654, DW_AT_location[DW_OP_reg30]
$C$DW$655	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$655, DW_AT_location[DW_OP_reg31]
$C$DW$656	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$656, DW_AT_location[DW_OP_regx 0x20]
$C$DW$657	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$657, DW_AT_location[DW_OP_regx 0x21]
$C$DW$658	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$658, DW_AT_location[DW_OP_regx 0x22]
$C$DW$659	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$659, DW_AT_location[DW_OP_regx 0x23]
$C$DW$660	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$660, DW_AT_location[DW_OP_regx 0x24]
$C$DW$661	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$661, DW_AT_location[DW_OP_regx 0x25]
$C$DW$662	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$662, DW_AT_location[DW_OP_regx 0x26]
$C$DW$663	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$663, DW_AT_location[DW_OP_regx 0x27]
$C$DW$664	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$664, DW_AT_location[DW_OP_regx 0x28]
$C$DW$665	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$665, DW_AT_location[DW_OP_regx 0x29]
$C$DW$666	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$666, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$667	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$667, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$668	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$668, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$669	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$669, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$670	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$670, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$671	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$671, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$672	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$672, DW_AT_location[DW_OP_regx 0x30]
$C$DW$673	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$673, DW_AT_location[DW_OP_regx 0x31]
$C$DW$674	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$674, DW_AT_location[DW_OP_regx 0x32]
$C$DW$675	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$675, DW_AT_location[DW_OP_regx 0x33]
$C$DW$676	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$676, DW_AT_location[DW_OP_regx 0x34]
$C$DW$677	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$677, DW_AT_location[DW_OP_regx 0x35]
$C$DW$678	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$678, DW_AT_location[DW_OP_regx 0x36]
$C$DW$679	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$679, DW_AT_location[DW_OP_regx 0x37]
$C$DW$680	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$680, DW_AT_location[DW_OP_regx 0x38]
$C$DW$681	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$681, DW_AT_location[DW_OP_regx 0x39]
$C$DW$682	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$682, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$683	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$683, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$684	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$684, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$685	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$685, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$686	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$686, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$687	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$687, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$688	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$688, DW_AT_location[DW_OP_regx 0x40]
$C$DW$689	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$689, DW_AT_location[DW_OP_regx 0x41]
$C$DW$690	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$690, DW_AT_location[DW_OP_regx 0x42]
$C$DW$691	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$691, DW_AT_location[DW_OP_regx 0x43]
$C$DW$692	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$692, DW_AT_location[DW_OP_regx 0x44]
$C$DW$693	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$693, DW_AT_location[DW_OP_regx 0x45]
$C$DW$694	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$694, DW_AT_location[DW_OP_regx 0x46]
$C$DW$695	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$695, DW_AT_location[DW_OP_regx 0x47]
$C$DW$696	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$696, DW_AT_location[DW_OP_regx 0x48]
$C$DW$697	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$697, DW_AT_location[DW_OP_regx 0x49]
$C$DW$698	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$698, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$699	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$699, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$700	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$700, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$701	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$701, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$702	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$702, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$703	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$703, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$704	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$704, DW_AT_location[DW_OP_regx 0x50]
$C$DW$705	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$705, DW_AT_location[DW_OP_regx 0x51]
$C$DW$706	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$706, DW_AT_location[DW_OP_regx 0x52]
$C$DW$707	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$707, DW_AT_location[DW_OP_regx 0x53]
$C$DW$708	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$708, DW_AT_location[DW_OP_regx 0x54]
$C$DW$709	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$709, DW_AT_location[DW_OP_regx 0x55]
$C$DW$710	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$710, DW_AT_location[DW_OP_regx 0x56]
$C$DW$711	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$711, DW_AT_location[DW_OP_regx 0x57]
$C$DW$712	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$712, DW_AT_location[DW_OP_regx 0x58]
$C$DW$713	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$713, DW_AT_location[DW_OP_regx 0x59]
$C$DW$714	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$714, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$715	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$715, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

