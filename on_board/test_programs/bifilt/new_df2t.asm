;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                        Unix v4.3.9 *
;* Date/Time created: Sun Jan 11 16:47:45 2026                                 *
;*******************************************************************************
	.compiler_opts --hll_source=on --mem_model:code=flat --mem_model:data=small --silicon_core_1_0 --silicon_core_1_1 --silicon_core_2_0 --silicon_core_2_1 --silicon_core_2_2 --symdebug:skeletal 
	.mmregs
	.cpl_on
	.arms_on
	.c54cm_off
	.asg AR6, FP
	.asg XAR6, XFP
	.asg DPH, MDP
	.model call=c55_std
	.model mem=small
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
;*   Memory             : Small Model (16-Bit Data Pointers)                   *
;*   Calls              : Normal Library ASM calls                             *
;*   Debug Info         : Optimized TI Debug Information                       *
;*******************************************************************************

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("./df2t.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen Unix v4.3.9 Copyright (c) 1996-2011 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/santiago/Research/dspfuzz/on_board/test_programs/df2t")
;******************************************************************************
;* CINIT RECORDS                                                              *
;******************************************************************************
	.sect	".cinit"
	.align	1
	.field  	$C$IR_1,16
	.field  	_coeff+0,24
	.field  	0,8
	.xlong	0x3b816150		; _coeff[0] @ 0
	.xlong	0x3c016150		; _coeff[1] @ 32
	.xlong	0x3b816150		; _coeff[2] @ 64
	.xlong	0x3fe16487		; _coeff[3] @ 96
	.xlong	0xbf46acd9		; _coeff[4] @ 128
	.xlong	0x3b816150		; _coeff[5] @ 160
	.xlong	0x3c016150		; _coeff[6] @ 192
	.xlong	0x3b816150		; _coeff[7] @ 224
	.xlong	0x3fe85d19		; _coeff[8] @ 256
	.xlong	0xbf54bcc8		; _coeff[9] @ 288
	.xlong	0x3b816150		; _coeff[10] @ 320
	.xlong	0x3c016150		; _coeff[11] @ 352
	.xlong	0x3b816150		; _coeff[12] @ 384
	.xlong	0x3ff58406		; _coeff[13] @ 416
	.xlong	0xbf6f44bd		; _coeff[14] @ 448
$C$IR_1:	.set	30

	.sect	".cinit"
	.align	1
	.field  	$C$IR_2,16
	.field  	_output_init+0,24
	.field  	0,8
	.xlong	0x00000000		; _output_init[0] @ 0
$C$IR_2:	.set	2

	.sect	".cinit"
	.align	1
	.field  	$C$IR_3,16
	.field  	_output+0,24
	.field  	0,8
	.xlong	0x00000000		; _output[0] @ 0
$C$IR_3:	.set	2

	.sect	".cinit"
	.align	1
	.field  	$C$IR_4,16
	.field  	_filter_state+0,24
	.field  	0,8
	.xlong	0x00000000		; _filter_state[0] @ 0
$C$IR_4:	.set	2

	.ref _coverage_log;
	.global	_coeff
	.bss	_coeff,30,0,2
$C$DW$1	.dwtag  DW_TAG_variable, DW_AT_name("coeff")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_coeff")
	.dwattr $C$DW$1, DW_AT_location[DW_OP_addr _coeff]
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("./df2t.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x14)
	.dwattr $C$DW$1, DW_AT_decl_column(0x07)
	.global	_output_init
	.bss	_output_init,214,0,2
$C$DW$2	.dwtag  DW_TAG_variable, DW_AT_name("output_init")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("_output_init")
	.dwattr $C$DW$2, DW_AT_location[DW_OP_addr _output_init]
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$2, DW_AT_external
	.dwattr $C$DW$2, DW_AT_decl_file("./df2t.c")
	.dwattr $C$DW$2, DW_AT_decl_line(0x04)
	.dwattr $C$DW$2, DW_AT_decl_column(0x07)
	.global	_output
	.bss	_output,2,0,2
$C$DW$3	.dwtag  DW_TAG_variable, DW_AT_name("output")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_output")
	.dwattr $C$DW$3, DW_AT_location[DW_OP_addr _output]
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_decl_file("./df2t.c")
	.dwattr $C$DW$3, DW_AT_decl_line(0x05)
	.dwattr $C$DW$3, DW_AT_decl_column(0x07)
	.global	_filter_state
	.bss	_filter_state,12,0,2
$C$DW$4	.dwtag  DW_TAG_variable, DW_AT_name("filter_state")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_filter_state")
	.dwattr $C$DW$4, DW_AT_location[DW_OP_addr _filter_state]
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$4, DW_AT_external
	.dwattr $C$DW$4, DW_AT_decl_file("./df2t.c")
	.dwattr $C$DW$4, DW_AT_decl_line(0x06)
	.dwattr $C$DW$4, DW_AT_decl_column(0x07)
;	acp55 -@/tmp/21655QoPctE 
	.sect	".text"
	.global	_biquad_cascade_df2T_init_f

$C$DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("biquad_cascade_df2T_init_f")
	.dwattr $C$DW$5, DW_AT_low_pc(_biquad_cascade_df2T_init_f)
	.dwattr $C$DW$5, DW_AT_high_pc(0x00)
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_biquad_cascade_df2T_init_f")
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_TI_begin_file("./df2t.c")
	.dwattr $C$DW$5, DW_AT_TI_begin_line(0x09)
	.dwattr $C$DW$5, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$5, DW_AT_decl_file("./df2t.c")
	.dwattr $C$DW$5, DW_AT_decl_line(0x09)
	.dwattr $C$DW$5, DW_AT_decl_column(0x06)
	.dwattr $C$DW$5, DW_AT_TI_max_frame_size(0x06)
	.dwattr $C$DW$5, DW_AT_frame_base[DW_OP_bregx 0x24 6]
	.dwattr $C$DW$5, DW_AT_TI_skeletal
	.dwpsn	file "./df2t.c",line 10,column 1,is_stmt,address _biquad_cascade_df2T_init_f
$C$DW$6	.dwtag  DW_TAG_formal_parameter, DW_AT_name("S")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_S")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_reg16]
$C$DW$7	.dwtag  DW_TAG_formal_parameter, DW_AT_name("numStages")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_numStages")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_reg12]
$C$DW$8	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pCoeffs")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_pCoeffs")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_reg18]
$C$DW$9	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pState")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_pState")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_reg20]
;*******************************************************************************
;* FUNCTION NAME: biquad_cascade_df2T_init_f                                   *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,AR1,AR2,AR3,SP,M40,SATA,SATD,RDM,FRCT,SMUL    *
;*   Stack Frame        : Compact (No Frame Pointer)                           *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_biquad_cascade_df2T_init_f:
	CALL #_coverage_log;
        AADD #-5, SP

        MOV AR0, AR3 ; |11| 
||      MOV AR2, *SP(#3) ; |10| 

        MOV AR1, *SP(#2) ; |10| 
        MOV T0, *SP(#1) ; |10| 
        MOV AR0, *SP(#0) ; |10| 
        MOV *SP(#1), AR1 ; |11| 
        MOV AR1, *AR3 ; |11| 
        MOV *SP(#0), AR3 ; |12| 
        MOV *SP(#2), AR1 ; |12| 
        MOV AR1, *AR3(short(#2)) ; |12| 
        MOV *SP(#0), AR3 ; |14| 
        MOV *SP(#3), AR1 ; |14| 
        MOV AR1, *AR3(short(#1)) ; |14| 
        AADD #5, SP
	.dwpsn	file "./df2t.c",line 16,column 1,is_stmt
$C$DW$10	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$10, DW_AT_low_pc(0x00)
	.dwattr $C$DW$10, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$5, DW_AT_TI_end_file("./df2t.c")
	.dwattr $C$DW$5, DW_AT_TI_end_line(0x10)
	.dwattr $C$DW$5, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$5

	.sect	".text"
	.global	_biquad_cascade_df2T_f

$C$DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("biquad_cascade_df2T_f")
	.dwattr $C$DW$11, DW_AT_low_pc(_biquad_cascade_df2T_f)
	.dwattr $C$DW$11, DW_AT_high_pc(0x00)
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_biquad_cascade_df2T_f")
	.dwattr $C$DW$11, DW_AT_external
	.dwattr $C$DW$11, DW_AT_TI_begin_file("./df2t.c")
	.dwattr $C$DW$11, DW_AT_TI_begin_line(0x12)
	.dwattr $C$DW$11, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$11, DW_AT_decl_file("./df2t.c")
	.dwattr $C$DW$11, DW_AT_decl_line(0x12)
	.dwattr $C$DW$11, DW_AT_decl_column(0x06)
	.dwattr $C$DW$11, DW_AT_TI_max_frame_size(0x22)
	.dwattr $C$DW$11, DW_AT_frame_base[DW_OP_bregx 0x24 34]
	.dwattr $C$DW$11, DW_AT_TI_skeletal
	.dwpsn	file "./df2t.c",line 19,column 1,is_stmt,address _biquad_cascade_df2T_f
$C$DW$12	.dwtag  DW_TAG_formal_parameter, DW_AT_name("S")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_S")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_reg16]
$C$DW$13	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pSrc")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_pSrc")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_reg18]
$C$DW$14	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pDst")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_pDst")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_reg20]
$C$DW$15	.dwtag  DW_TAG_formal_parameter, DW_AT_name("blockSize")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_blockSize")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_reg0]
;*******************************************************************************
;* FUNCTION NAME: biquad_cascade_df2T_f                                        *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,AR0,AR1,AR2,AR3,SP,CARRY,M40,SATA,   *
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer)                           *
;*   Total Frame Size   : 34 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (32 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_biquad_cascade_df2T_f:
	CALL #_coverage_log;
        AADD #-33, SP
        MOV AC0, dbl(*SP(#4)) ; |19| 
        MOV AR2, *SP(#2) ; |19| 
        MOV AR1, *SP(#1) ; |19| 
        MOV AR0, *SP(#0) ; |19| 
        MOV *SP(#1), AR1 ; |20| 
        MOV AR1, *SP(#6) ; |20| 
        MOV *SP(#2), AR1 ; |21| 
        MOV AR1, *SP(#7) ; |21| 
        MOV *SP(#0), AR3 ; |22| 
        MOV *AR3(short(#2)), AR1 ; |22| 
        MOV AR1, *SP(#8) ; |22| 
        MOV *SP(#0), AR3 ; |23| 
        MOV *AR3(short(#2)), AR1 ; |23| 
        MOV AR1, *SP(#9) ; |23| 
        MOV *SP(#0), AR3 ; |28| 
        MOV uns(*AR3), AC0 ; |28| 
	.dwpsn	file "./df2t.c",line 30,column 0,is_stmt
        MOV AC0, dbl(*SP(#30)) ; |28| 
$C$L1:    
	CALL #_coverage_log;
$C$DW$L$_biquad_cascade_df2T_f$2$B:
	.dwpsn	file "./df2t.c",line 31,column 0,is_stmt
        MOV *SP(#9), AR3 ; |33| 
        MOV dbl(*AR3), AC0 ; |33| 
        MOV AC0, dbl(*SP(#12)) ; |33| 
        MOV *SP(#9), AR3 ; |34| 
        MOV dbl(*AR3(short(#2))), AC0 ; |34| 
        MOV AC0, dbl(*SP(#14)) ; |34| 
        MOV *SP(#9), AR3 ; |35| 
        MOV dbl(*AR3(short(#4))), AC0 ; |35| 
        MOV AC0, dbl(*SP(#16)) ; |35| 
        MOV *SP(#9), AR3 ; |36| 
        MOV dbl(*AR3(short(#6))), AC0 ; |36| 
        MOV AC0, dbl(*SP(#18)) ; |36| 
        MOV *SP(#9), AR3 ; |37| 
        MOV dbl(*AR3(#8)), AC0 ; |37| 
        MOV AC0, dbl(*SP(#20)) ; |37| 
        MOV *SP(#8), AR3 ; |40| 
        MOV dbl(*AR3), AC0 ; |40| 
        MOV AC0, dbl(*SP(#24)) ; |40| 
        MOV dbl(*AR3(short(#2))), AC0 ; |41| 
        MOV AC0, dbl(*SP(#26)) ; |41| 
        ADD #10, *SP(#9) ; |43| 
        MOV dbl(*SP(#4)), AC0 ; |46| 
        MOV AC0, dbl(*SP(#28)) ; |46| 
        MOV dbl(*SP(#28)), AC0 ; |48| 
        BCC $C$L3,AC0 == #0 ; |48| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |48| 
$C$DW$L$_biquad_cascade_df2T_f$2$E:
$C$L2:    
	CALL #_coverage_log;
$C$DW$L$_biquad_cascade_df2T_f$3$B:
	.dwpsn	file "./df2t.c",line 49,column 0,is_stmt
        MOV *SP(#6), AR3 ; |50| 
        MOV dbl(*AR3+), AC0 ; |50| 
        MOV AR3, *SP(#6) ; |50| 
        MOV AC0, dbl(*SP(#22)) ; |50| 
        MOV dbl(*SP(#22)), AC1 ; |52| 
        MOV dbl(*SP(#12)), AC0 ; |52| 
$C$DW$16	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$16, DW_AT_low_pc(0x00)
	.dwattr $C$DW$16, DW_AT_name("__mpyd")
	.dwattr $C$DW$16, DW_AT_TI_call
        CALL #__mpyd ; |52| 
                                        ; call occurs [#__mpyd] ; |52| 
        MOV dbl(*SP(#24)), AC1 ; |52| 
$C$DW$17	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$17, DW_AT_low_pc(0x00)
	.dwattr $C$DW$17, DW_AT_name("__addd")
	.dwattr $C$DW$17, DW_AT_TI_call
        CALL #__addd ; |52| 
                                        ; call occurs [#__addd] ; |52| 
        MOV AC0, dbl(*SP(#10)) ; |52| 
        MOV dbl(*SP(#14)), AC0 ; |54| 
        MOV dbl(*SP(#22)), AC1 ; |54| 
$C$DW$18	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$18, DW_AT_low_pc(0x00)
	.dwattr $C$DW$18, DW_AT_name("__mpyd")
	.dwattr $C$DW$18, DW_AT_TI_call
        CALL #__mpyd ; |54| 
                                        ; call occurs [#__mpyd] ; |54| 
        MOV dbl(*SP(#26)), AC1 ; |54| 
$C$DW$19	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$19, DW_AT_low_pc(0x00)
	.dwattr $C$DW$19, DW_AT_name("__addd")
	.dwattr $C$DW$19, DW_AT_TI_call
        CALL #__addd ; |54| 
                                        ; call occurs [#__addd] ; |54| 
        MOV AC0, dbl(*SP(#24)) ; |54| 
        MOV dbl(*SP(#18)), AC0 ; |55| 
        MOV dbl(*SP(#10)), AC1 ; |55| 
$C$DW$20	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$20, DW_AT_low_pc(0x00)
	.dwattr $C$DW$20, DW_AT_name("__mpyd")
	.dwattr $C$DW$20, DW_AT_TI_call
        CALL #__mpyd ; |55| 
                                        ; call occurs [#__mpyd] ; |55| 

        MOV dbl(*SP(#24)), AC0 ; |55| 
||      OR #0, AC0, AC1

$C$DW$21	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$21, DW_AT_low_pc(0x00)
	.dwattr $C$DW$21, DW_AT_name("__addd")
	.dwattr $C$DW$21, DW_AT_TI_call
        CALL #__addd ; |55| 
                                        ; call occurs [#__addd] ; |55| 
        MOV AC0, dbl(*SP(#24)) ; |55| 
        MOV dbl(*SP(#16)), AC0 ; |57| 
        MOV dbl(*SP(#22)), AC1 ; |57| 
$C$DW$22	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$22, DW_AT_low_pc(0x00)
	.dwattr $C$DW$22, DW_AT_name("__mpyd")
	.dwattr $C$DW$22, DW_AT_TI_call
        CALL #__mpyd ; |57| 
                                        ; call occurs [#__mpyd] ; |57| 
        MOV AC0, dbl(*SP(#26)) ; |57| 
        MOV dbl(*SP(#20)), AC0 ; |58| 
        MOV dbl(*SP(#10)), AC1 ; |58| 
$C$DW$23	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$23, DW_AT_low_pc(0x00)
	.dwattr $C$DW$23, DW_AT_name("__mpyd")
	.dwattr $C$DW$23, DW_AT_TI_call
        CALL #__mpyd ; |58| 
                                        ; call occurs [#__mpyd] ; |58| 

        MOV dbl(*SP(#26)), AC0 ; |58| 
||      OR #0, AC0, AC1

$C$DW$24	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$24, DW_AT_low_pc(0x00)
	.dwattr $C$DW$24, DW_AT_name("__addd")
	.dwattr $C$DW$24, DW_AT_TI_call
        CALL #__addd ; |58| 
                                        ; call occurs [#__addd] ; |58| 
        MOV *SP(#7), AR2 ; |60| 
        MOV AC0, dbl(*SP(#26)) ; |58| 

        AMOV AR2, AR3 ; |60| 
||      MOV dbl(*SP(#10)), AC0 ; |60| 

        MOV AR3, *SP(#7) ; |60| 
||      AADD #2, AR3 ; |60| 

        MOV AC0, dbl(*AR2) ; |60| 
        MOV dbl(*SP(#28)), AC0 ; |62| 
        SUB #1, AC0 ; |62| 
        MOV AC0, dbl(*SP(#28)) ; |62| 
        MOV dbl(*SP(#28)), AC0 ; |48| 
	.dwpsn	file "./df2t.c",line 63,column 0,is_stmt
        BCC $C$L2,AC0 != #0 ; |48| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |48| 
$C$DW$L$_biquad_cascade_df2T_f$3$E:
$C$L3:    
	CALL #_coverage_log;
$C$DW$L$_biquad_cascade_df2T_f$4$B:
        MOV *SP(#8), AR3 ; |65| 
        MOV dbl(*SP(#24)), AC0 ; |65| 
        MOV AC0, dbl(*AR3) ; |65| 
        MOV *SP(#8), AR3 ; |66| 
        MOV dbl(*SP(#26)), AC0 ; |66| 
        MOV AC0, dbl(*AR3(short(#2))) ; |66| 
        ADD #4, *SP(#8) ; |68| 
        MOV dbl(*SP(#30)), AC0 ; |77| 
        MOV *SP(#2), AR1 ; |71| 

        MOV AR1, *SP(#6) ; |71| 
||      SUB #1, AC0 ; |77| 

        MOV AC0, dbl(*SP(#30)) ; |77| 
        MOV *SP(#2), AR1 ; |74| 
        MOV dbl(*SP(#30)), AC0 ; |79| 
        MOV AR1, *SP(#7) ; |74| 
	.dwpsn	file "./df2t.c",line 79,column 0,is_stmt
        BCC $C$L1,AC0 != #0 ; |79| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |79| 
$C$DW$L$_biquad_cascade_df2T_f$4$E:
        AADD #33, SP
	.dwpsn	file "./df2t.c",line 82,column 1,is_stmt
$C$DW$25	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$25, DW_AT_low_pc(0x00)
	.dwattr $C$DW$25, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$26	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$26, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/df2t/df2t.asm:$C$L1:1:1768168065")
	.dwattr $C$DW$26, DW_AT_TI_begin_file("./df2t.c")
	.dwattr $C$DW$26, DW_AT_TI_begin_line(0x1e)
	.dwattr $C$DW$26, DW_AT_TI_end_line(0x4f)
$C$DW$27	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$27, DW_AT_low_pc($C$DW$L$_biquad_cascade_df2T_f$2$B)
	.dwattr $C$DW$27, DW_AT_high_pc($C$DW$L$_biquad_cascade_df2T_f$2$E)
$C$DW$28	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$28, DW_AT_low_pc($C$DW$L$_biquad_cascade_df2T_f$4$B)
	.dwattr $C$DW$28, DW_AT_high_pc($C$DW$L$_biquad_cascade_df2T_f$4$E)

$C$DW$29	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$29, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/df2t/df2t.asm:$C$L2:2:1768168065")
	.dwattr $C$DW$29, DW_AT_TI_begin_file("./df2t.c")
	.dwattr $C$DW$29, DW_AT_TI_begin_line(0x30)
	.dwattr $C$DW$29, DW_AT_TI_end_line(0x3f)
$C$DW$30	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$30, DW_AT_low_pc($C$DW$L$_biquad_cascade_df2T_f$3$B)
	.dwattr $C$DW$30, DW_AT_high_pc($C$DW$L$_biquad_cascade_df2T_f$3$E)
	.dwendtag $C$DW$29

	.dwendtag $C$DW$26

	.dwattr $C$DW$11, DW_AT_TI_end_file("./df2t.c")
	.dwattr $C$DW$11, DW_AT_TI_end_line(0x52)
	.dwattr $C$DW$11, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$11

	.sect	".text"
	.global	_df2t_test

$C$DW$31	.dwtag  DW_TAG_subprogram, DW_AT_name("df2t_test")
	.dwattr $C$DW$31, DW_AT_low_pc(_df2t_test)
	.dwattr $C$DW$31, DW_AT_high_pc(0x00)
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_df2t_test")
	.dwattr $C$DW$31, DW_AT_external
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$31, DW_AT_TI_begin_file("./df2t.c")
	.dwattr $C$DW$31, DW_AT_TI_begin_line(0x56)
	.dwattr $C$DW$31, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$31, DW_AT_decl_file("./df2t.c")
	.dwattr $C$DW$31, DW_AT_decl_line(0x56)
	.dwattr $C$DW$31, DW_AT_decl_column(0x05)
	.dwattr $C$DW$31, DW_AT_TI_max_frame_size(0x06)
	.dwattr $C$DW$31, DW_AT_frame_base[DW_OP_bregx 0x24 6]
	.dwattr $C$DW$31, DW_AT_TI_skeletal
	.dwpsn	file "./df2t.c",line 87,column 1,is_stmt,address _df2t_test
$C$DW$32	.dwtag  DW_TAG_formal_parameter, DW_AT_name("input")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_reg16]
;*******************************************************************************
;* FUNCTION NAME: df2t_test                                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,AR1,AR2,SP,CARRY,M40,SATA,SATD,RDM,   *
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer)                           *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_df2t_test:
	CALL #_coverage_log;
        AADD #-5, SP

        MOV SP, AR0
||      MOV AR0, *SP(#0) ; |87| 

        MOV #(_filter_state & 0xffff), AR2 ; |90| 
        MOV #(_coeff & 0xffff), AR1 ; |90| 

        AMAR *AR0+
||      MOV #3, T0

$C$DW$33	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$33, DW_AT_low_pc(0x00)
	.dwattr $C$DW$33, DW_AT_name("_biquad_cascade_df2T_init_f")
	.dwattr $C$DW$33, DW_AT_TI_call
        CALL #_biquad_cascade_df2T_init_f ; |90| 
                                        ; call occurs [#_biquad_cascade_df2T_init_f] ; |90| 
        MOV SP, AR0
        MOV #107, AC0 ; |92| 
        MOV #(_output_init & 0xffff), AR2 ; |92| 
        MOV *SP(#0), AR1 ; |92| 
        AMAR *AR0+
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_name("_biquad_cascade_df2T_f")
	.dwattr $C$DW$34, DW_AT_TI_call
        CALL #_biquad_cascade_df2T_f ; |92| 
                                        ; call occurs [#_biquad_cascade_df2T_f] ; |92| 
        MOV SP, AR0
        MOV #214, AR1 ; |93| 
        MOV #(_output & 0xffff), AR2 ; |93| 
        AMAR *AR0+

        ADD *SP(#0), AR1, AR1 ; |93| 
||      MOV #1, AC0 ; |93| 

$C$DW$35	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$35, DW_AT_low_pc(0x00)
	.dwattr $C$DW$35, DW_AT_name("_biquad_cascade_df2T_f")
	.dwattr $C$DW$35, DW_AT_TI_call
        CALL #_biquad_cascade_df2T_f ; |93| 
                                        ; call occurs [#_biquad_cascade_df2T_f] ; |93| 
        MOV #0, T0
        AADD #5, SP
	.dwpsn	file "./df2t.c",line 97,column 1,is_stmt
$C$DW$36	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$36, DW_AT_low_pc(0x00)
	.dwattr $C$DW$36, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$31, DW_AT_TI_end_file("./df2t.c")
	.dwattr $C$DW$31, DW_AT_TI_end_line(0x61)
	.dwattr $C$DW$31, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$31

;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	__mpyd
	.global	__addd

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
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)
$C$DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$19, DW_AT_decl_file("/opt/TI/C5500CGT4.3.9/include/stdint.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x13)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x1c)
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)
$C$DW$T$26	.dwtag  DW_TAG_typedef, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$26, DW_AT_decl_file("/opt/TI/C5500CGT4.3.9/include/stdint.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0x15)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x1c)
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
$C$DW$T$20	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$20, DW_AT_address_class(0x10)

$C$DW$T$30	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$30, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x1e)
$C$DW$37	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$37, DW_AT_upper_bound(0x0e)
	.dwendtag $C$DW$T$30


$C$DW$T$31	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$31, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$31, DW_AT_byte_size(0xd6)
$C$DW$38	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$38, DW_AT_upper_bound(0x6a)
	.dwendtag $C$DW$T$31


$C$DW$T$32	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$32, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x02)
$C$DW$39	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$39, DW_AT_upper_bound(0x00)
	.dwendtag $C$DW$T$32


$C$DW$T$33	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$33, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x0c)
$C$DW$40	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$40, DW_AT_upper_bound(0x05)
	.dwendtag $C$DW$T$33

$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x02)
$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x02)

$C$DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x03)
$C$DW$41	.dwtag  DW_TAG_member
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$41, DW_AT_name("numStages")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_numStages")
	.dwattr $C$DW$41, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$41, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$41, DW_AT_decl_file("./df2t.h")
	.dwattr $C$DW$41, DW_AT_decl_line(0x0c)
	.dwattr $C$DW$41, DW_AT_decl_column(0x0b)
$C$DW$42	.dwtag  DW_TAG_member
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$42, DW_AT_name("pState")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_pState")
	.dwattr $C$DW$42, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$42, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$42, DW_AT_decl_file("./df2t.h")
	.dwattr $C$DW$42, DW_AT_decl_line(0x0e)
	.dwattr $C$DW$42, DW_AT_decl_column(0x09)
$C$DW$43	.dwtag  DW_TAG_member
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$43, DW_AT_name("pCoeffs")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_pCoeffs")
	.dwattr $C$DW$43, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$43, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$43, DW_AT_decl_file("./df2t.h")
	.dwattr $C$DW$43, DW_AT_decl_line(0x0f)
	.dwattr $C$DW$43, DW_AT_decl_column(0x09)
	.dwendtag $C$DW$T$21

	.dwattr $C$DW$T$21, DW_AT_decl_file("./df2t.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x0b)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x01)
$C$DW$T$22	.dwtag  DW_TAG_typedef, DW_AT_name("biquad_cascade_df2T_instance_f")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$22, DW_AT_decl_file("./df2t.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x12)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x03)
$C$DW$T$23	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$23, DW_AT_address_class(0x10)
	.dwattr $C$DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

$C$DW$44	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$44, DW_AT_location[DW_OP_reg0]
$C$DW$45	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$45, DW_AT_location[DW_OP_reg1]
$C$DW$46	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$46, DW_AT_location[DW_OP_reg2]
$C$DW$47	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$47, DW_AT_location[DW_OP_reg3]
$C$DW$48	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$48, DW_AT_location[DW_OP_reg4]
$C$DW$49	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$49, DW_AT_location[DW_OP_reg5]
$C$DW$50	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$50, DW_AT_location[DW_OP_reg6]
$C$DW$51	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$51, DW_AT_location[DW_OP_reg7]
$C$DW$52	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$52, DW_AT_location[DW_OP_reg8]
$C$DW$53	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$53, DW_AT_location[DW_OP_reg9]
$C$DW$54	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$54, DW_AT_location[DW_OP_reg10]
$C$DW$55	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$55, DW_AT_location[DW_OP_reg11]
$C$DW$56	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$56, DW_AT_location[DW_OP_reg12]
$C$DW$57	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$57, DW_AT_location[DW_OP_reg13]
$C$DW$58	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$58, DW_AT_location[DW_OP_reg14]
$C$DW$59	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$59, DW_AT_location[DW_OP_reg15]
$C$DW$60	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$60, DW_AT_location[DW_OP_reg16]
$C$DW$61	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$61, DW_AT_location[DW_OP_reg17]
$C$DW$62	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$62, DW_AT_location[DW_OP_reg18]
$C$DW$63	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$63, DW_AT_location[DW_OP_reg19]
$C$DW$64	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$64, DW_AT_location[DW_OP_reg20]
$C$DW$65	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$65, DW_AT_location[DW_OP_reg21]
$C$DW$66	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$66, DW_AT_location[DW_OP_reg22]
$C$DW$67	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$67, DW_AT_location[DW_OP_reg23]
$C$DW$68	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$68, DW_AT_location[DW_OP_reg24]
$C$DW$69	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$69, DW_AT_location[DW_OP_reg25]
$C$DW$70	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$70, DW_AT_location[DW_OP_reg26]
$C$DW$71	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$71, DW_AT_location[DW_OP_reg27]
$C$DW$72	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$72, DW_AT_location[DW_OP_reg28]
$C$DW$73	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$73, DW_AT_location[DW_OP_reg29]
$C$DW$74	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$74, DW_AT_location[DW_OP_reg30]
$C$DW$75	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$75, DW_AT_location[DW_OP_reg31]
$C$DW$76	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$76, DW_AT_location[DW_OP_regx 0x20]
$C$DW$77	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$77, DW_AT_location[DW_OP_regx 0x21]
$C$DW$78	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$78, DW_AT_location[DW_OP_regx 0x22]
$C$DW$79	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$79, DW_AT_location[DW_OP_regx 0x23]
$C$DW$80	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$80, DW_AT_location[DW_OP_regx 0x24]
$C$DW$81	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$81, DW_AT_location[DW_OP_regx 0x25]
$C$DW$82	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$82, DW_AT_location[DW_OP_regx 0x26]
$C$DW$83	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$83, DW_AT_location[DW_OP_regx 0x27]
$C$DW$84	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$84, DW_AT_location[DW_OP_regx 0x28]
$C$DW$85	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$85, DW_AT_location[DW_OP_regx 0x29]
$C$DW$86	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$86, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$87	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$87, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$88	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$88, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$89	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$89, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$90	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$90, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$91	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$91, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$92	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$92, DW_AT_location[DW_OP_regx 0x30]
$C$DW$93	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$93, DW_AT_location[DW_OP_regx 0x31]
$C$DW$94	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$94, DW_AT_location[DW_OP_regx 0x32]
$C$DW$95	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$95, DW_AT_location[DW_OP_regx 0x33]
$C$DW$96	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$96, DW_AT_location[DW_OP_regx 0x34]
$C$DW$97	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$97, DW_AT_location[DW_OP_regx 0x35]
$C$DW$98	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$98, DW_AT_location[DW_OP_regx 0x36]
$C$DW$99	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$99, DW_AT_location[DW_OP_regx 0x37]
$C$DW$100	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$100, DW_AT_location[DW_OP_regx 0x38]
$C$DW$101	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$101, DW_AT_location[DW_OP_regx 0x39]
$C$DW$102	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$102, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$103	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$103, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$104	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$104, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$105	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$105, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$106	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$106, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$107	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$107, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$108	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$108, DW_AT_location[DW_OP_regx 0x40]
$C$DW$109	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$109, DW_AT_location[DW_OP_regx 0x41]
$C$DW$110	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$110, DW_AT_location[DW_OP_regx 0x42]
$C$DW$111	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$111, DW_AT_location[DW_OP_regx 0x43]
$C$DW$112	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$112, DW_AT_location[DW_OP_regx 0x44]
$C$DW$113	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$113, DW_AT_location[DW_OP_regx 0x45]
$C$DW$114	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$114, DW_AT_location[DW_OP_regx 0x46]
$C$DW$115	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$115, DW_AT_location[DW_OP_regx 0x47]
$C$DW$116	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$116, DW_AT_location[DW_OP_regx 0x48]
$C$DW$117	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$117, DW_AT_location[DW_OP_regx 0x49]
$C$DW$118	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$118, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$119	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$119, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$120	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$120, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$121	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$121, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$122	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$122, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$123	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$123, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$124	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$124, DW_AT_location[DW_OP_regx 0x50]
$C$DW$125	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$125, DW_AT_location[DW_OP_regx 0x51]
$C$DW$126	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$126, DW_AT_location[DW_OP_regx 0x52]
$C$DW$127	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$127, DW_AT_location[DW_OP_regx 0x53]
$C$DW$128	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$128, DW_AT_location[DW_OP_regx 0x54]
$C$DW$129	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$129, DW_AT_location[DW_OP_regx 0x55]
$C$DW$130	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$130, DW_AT_location[DW_OP_regx 0x56]
$C$DW$131	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$131, DW_AT_location[DW_OP_regx 0x57]
$C$DW$132	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$132, DW_AT_location[DW_OP_regx 0x58]
$C$DW$133	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$133, DW_AT_location[DW_OP_regx 0x59]
$C$DW$134	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$134, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$135	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$135, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

