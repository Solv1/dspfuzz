;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                        Unix v4.3.9 *
;* Date/Time created: Sun Jan 11 16:44:44 2026                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("./lms_f32.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen Unix v4.3.9 Copyright (c) 1996-2011 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/santiago/Research/dspfuzz/on_board/test_programs/lms_f32")
;******************************************************************************
;* CINIT RECORDS                                                              *
;******************************************************************************
	.sect	".cinit"
	.align	1
	.field  	2,16
	.field  	_mu+0,24
	.field  	0,8
	.xlong	0x3d4ccccd		; _mu @ 0

	.sect	".cinit"
	.align	1
	.field  	$C$IR_1,16
	.field  	_out+0,24
	.field  	0,8
	.xlong	0x00000000		; _out[0] @ 0
$C$IR_1:	.set	2

	.sect	".cinit"
	.align	1
	.field  	$C$IR_2,16
	.field  	_err+0,24
	.field  	0,8
	.xlong	0x00000000		; _err[0] @ 0
$C$IR_2:	.set	2

	.sect	".cinit"
	.align	1
	.field  	$C$IR_3,16
	.field  	_filter_state+0,24
	.field  	0,8
	.xlong	0x00000000		; _filter_state[0] @ 0
$C$IR_3:	.set	2

	.bss	_mu,2,0,2
$C$DW$1	.dwtag  DW_TAG_variable, DW_AT_name("mu")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_mu")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$1, DW_AT_location[DW_OP_addr _mu]
	.dwattr $C$DW$1, DW_AT_decl_file("./lms_f32.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x13)
	.dwattr $C$DW$1, DW_AT_decl_column(0x0e)
	.global	_ref
	.bss	_ref,514,0,2
$C$DW$2	.dwtag  DW_TAG_variable, DW_AT_name("ref")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("_ref")
	.dwattr $C$DW$2, DW_AT_location[DW_OP_addr _ref]
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$2, DW_AT_external
	.dwattr $C$DW$2, DW_AT_decl_file("./lms_f32.h")
	.dwattr $C$DW$2, DW_AT_decl_line(0x15)
	.dwattr $C$DW$2, DW_AT_decl_column(0x07)
	.global	_output_ref
	.bss	_output_ref,514,0,2
$C$DW$3	.dwtag  DW_TAG_variable, DW_AT_name("output_ref")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_output_ref")
	.dwattr $C$DW$3, DW_AT_location[DW_OP_addr _output_ref]
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_decl_file("./lms_f32.h")
	.dwattr $C$DW$3, DW_AT_decl_line(0x16)
	.dwattr $C$DW$3, DW_AT_decl_column(0x07)
	.global	_out
	.bss	_out,514,0,2
$C$DW$4	.dwtag  DW_TAG_variable, DW_AT_name("out")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_out")
	.dwattr $C$DW$4, DW_AT_location[DW_OP_addr _out]
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$4, DW_AT_external
	.dwattr $C$DW$4, DW_AT_decl_file("./lms_f32.c")
	.dwattr $C$DW$4, DW_AT_decl_line(0x0c)
	.dwattr $C$DW$4, DW_AT_decl_column(0x07)
	.global	_err
	.bss	_err,514,0,2
$C$DW$5	.dwtag  DW_TAG_variable, DW_AT_name("err")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_err")
	.dwattr $C$DW$5, DW_AT_location[DW_OP_addr _err]
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_decl_file("./lms_f32.c")
	.dwattr $C$DW$5, DW_AT_decl_line(0x0d)
	.dwattr $C$DW$5, DW_AT_decl_column(0x07)
	.global	_filter_state
	.bss	_filter_state,512,0,2
$C$DW$6	.dwtag  DW_TAG_variable, DW_AT_name("filter_state")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_filter_state")
	.dwattr $C$DW$6, DW_AT_location[DW_OP_addr _filter_state]
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$6, DW_AT_external
	.dwattr $C$DW$6, DW_AT_decl_file("./lms_f32.c")
	.dwattr $C$DW$6, DW_AT_decl_line(0x0e)
	.dwattr $C$DW$6, DW_AT_decl_column(0x07)
	.sect	".const:_$P$T0$1"
	.clink
	.align	2
_$P$T0$1:
	.xlong	0x00000000		; _$P$T0$1[0] @ 0
	.space	8160

$C$DW$7	.dwtag  DW_TAG_variable, DW_AT_name("$P$T0$1")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_$P$T0$1")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_addr _$P$T0$1]
	.dwattr $C$DW$7, DW_AT_decl_file("./lms_f32.c")
	.dwattr $C$DW$7, DW_AT_decl_line(0xd6)
	.dwattr $C$DW$7, DW_AT_decl_column(0x09)
;	acp55 -@/tmp/20277Zimgb3 
	.sect	".text"
	.global	_lms_f32

$C$DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("lms_f32")
	.dwattr $C$DW$8, DW_AT_low_pc(_lms_f32)
	.dwattr $C$DW$8, DW_AT_high_pc(0x00)
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_lms_f32")
	.dwattr $C$DW$8, DW_AT_external
	.dwattr $C$DW$8, DW_AT_TI_begin_file("./lms_f32.c")
	.dwattr $C$DW$8, DW_AT_TI_begin_line(0x10)
	.dwattr $C$DW$8, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$8, DW_AT_decl_file("./lms_f32.c")
	.dwattr $C$DW$8, DW_AT_decl_line(0x10)
	.dwattr $C$DW$8, DW_AT_decl_column(0x06)
	.dwattr $C$DW$8, DW_AT_TI_max_frame_size(0x1e)
	.dwattr $C$DW$8, DW_AT_frame_base[DW_OP_bregx 0x24 30]
	.dwattr $C$DW$8, DW_AT_TI_skeletal
	.dwpsn	file "./lms_f32.c",line 23,column 1,is_stmt,address _lms_f32
$C$DW$9	.dwtag  DW_TAG_formal_parameter, DW_AT_name("S")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_S")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_reg16]
$C$DW$10	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pSrc")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_pSrc")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_reg18]
$C$DW$11	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pRef")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_pRef")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_reg20]
$C$DW$12	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pOut")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_pOut")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_reg22]
$C$DW$13	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pErr")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_pErr")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_reg24]
$C$DW$14	.dwtag  DW_TAG_formal_parameter, DW_AT_name("blockSize")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_blockSize")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_reg0]
;*******************************************************************************
;* FUNCTION NAME: lms_f32                                                      *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,AR0,AR1,AR2,AR3,AR4,AR5,SP,CARRY,M40,*
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Save On Entry Regs : AR5                                                  *
;*   Stack Frame        : Compact (No Frame Pointer)                           *
;*   Total Frame Size   : 30 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (28 local values)                                    *
;*                        (1 register save area)                               *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_lms_f32:
        PSH AR5
        AADD #-28, SP
        MOV AC0, dbl(*SP(#6)) ; |23| 
        MOV AR4, *SP(#4) ; |23| 

        MOV AR0, AR3 ; |23| 
||      MOV AR3, *SP(#3) ; |23| 

        MOV AR2, *SP(#2) ; |23| 
        MOV AR1, *SP(#1) ; |23| 
        MOV AR0, *SP(#0) ; |23| 
        MOV *AR3(short(#1)), AR1 ; |24| 
        MOV AR1, *SP(#8) ; |24| 
        MOV *SP(#0), AR3 ; |25| 
        MOV *AR3(short(#2)), AR1 ; |25| 
        MOV AR1, *SP(#9) ; |25| 
        MOV *SP(#0), AR3 ; |28| 
        MOV dbl(*AR3(short(#4))), AC0 ; |28| 
        MOV AC0, dbl(*SP(#14)) ; |28| 
        MOV *SP(#0), AR3 ; |31| 
        MOV uns(*AR3), AC0 ; |31| 
        MOV AC0, dbl(*SP(#22)) ; |31| 
        MOV dbl(*abs16($C$FL1)), AC0 ; |35| 
        MOV AC0, dbl(*SP(#18)) ; |35| 
        MOV AC0, dbl(*SP(#20)) ; |36| 
        MOV dbl(*SP(#22)), AC0 ; |40| 
        SUB #1, AC0 ; |40| 
        SFTL AC0, #1 ; |40| 
        ADD *AR3(short(#1)), AC0, AR1 ; |40| 
        MOV AR1, *SP(#10) ; |40| 
        MOV dbl(*SP(#6)), AC0 ; |43| 
        MOV AC0, dbl(*SP(#26)) ; |43| 
        MOV dbl(*SP(#26)), AC0 ; |45| 
        BCC $C$L10,AC0 == #0 ; |45| 
                                        ; branchcc occurs ; |45| 
$C$L1:    
$C$DW$L$_lms_f32$2$B:
	.dwpsn	file "./lms_f32.c",line 46,column 0,is_stmt
        MOV *SP(#1), AR3 ; |48| 
        MOV dbl(*AR3+), AC0 ; |48| 
        MOV AR3, *SP(#1) ; |48| 
        MOV *SP(#10), AR2 ; |48| 
        AMOV AR2, AR3 ; |48| 

        MOV AR3, *SP(#10) ; |48| 
||      AADD #2, AR3 ; |48| 

        MOV AC0, dbl(*AR2) ; |48| 
        MOV *SP(#8), AR1 ; |51| 
        MOV dbl(*abs16($C$FL1)), AC0 ; |57| 
        MOV AR1, *SP(#11) ; |51| 
        MOV *SP(#9), AR1 ; |54| 
        MOV AR1, *SP(#12) ; |54| 
        MOV AC0, dbl(*SP(#16)) ; |57| 
        MOV dbl(*SP(#22)), AC0 ; |60| 
        SFTL AC0, #-2, AC0 ; |60| 
        MOV AC0, dbl(*SP(#24)) ; |60| 
        MOV dbl(*SP(#24)), AC0 ; |62| 
        BCC $C$L3,AC0 == #0 ; |62| 
                                        ; branchcc occurs ; |62| 
$C$DW$L$_lms_f32$2$E:
$C$L2:    
$C$DW$L$_lms_f32$3$B:
	.dwpsn	file "./lms_f32.c",line 63,column 0,is_stmt
        MOV *SP(#11), AR3 ; |65| 
        MOV dbl(*AR3+), AC0 ; |65| 
        MOV AR3, *SP(#11) ; |65| 
        MOV *SP(#12), AR3 ; |65| 
        MOV dbl(*AR3+), AC1 ; |65| 
        MOV AR3, *SP(#12) ; |65| 
$C$DW$15	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$15, DW_AT_low_pc(0x00)
	.dwattr $C$DW$15, DW_AT_name("__mpyd")
	.dwattr $C$DW$15, DW_AT_TI_call
        CALL #__mpyd ; |65| 
                                        ; call occurs [#__mpyd] ; |65| 

        MOV dbl(*SP(#16)), AC0 ; |65| 
||      OR #0, AC0, AC1

$C$DW$16	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$16, DW_AT_low_pc(0x00)
	.dwattr $C$DW$16, DW_AT_name("__addd")
	.dwattr $C$DW$16, DW_AT_TI_call
        CALL #__addd ; |65| 
                                        ; call occurs [#__addd] ; |65| 
        MOV AC0, dbl(*SP(#16)) ; |65| 
        MOV *SP(#11), AR3 ; |67| 
        MOV dbl(*AR3+), AC0 ; |67| 
        MOV AR3, *SP(#11) ; |67| 
        MOV *SP(#12), AR3 ; |67| 
        MOV dbl(*AR3+), AC1 ; |67| 
        MOV AR3, *SP(#12) ; |67| 
$C$DW$17	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$17, DW_AT_low_pc(0x00)
	.dwattr $C$DW$17, DW_AT_name("__mpyd")
	.dwattr $C$DW$17, DW_AT_TI_call
        CALL #__mpyd ; |67| 
                                        ; call occurs [#__mpyd] ; |67| 

        MOV dbl(*SP(#16)), AC0 ; |67| 
||      OR #0, AC0, AC1

$C$DW$18	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$18, DW_AT_low_pc(0x00)
	.dwattr $C$DW$18, DW_AT_name("__addd")
	.dwattr $C$DW$18, DW_AT_TI_call
        CALL #__addd ; |67| 
                                        ; call occurs [#__addd] ; |67| 
        MOV AC0, dbl(*SP(#16)) ; |67| 
        MOV *SP(#11), AR3 ; |69| 
        MOV dbl(*AR3+), AC0 ; |69| 
        MOV AR3, *SP(#11) ; |69| 
        MOV *SP(#12), AR3 ; |69| 
        MOV dbl(*AR3+), AC1 ; |69| 
        MOV AR3, *SP(#12) ; |69| 
$C$DW$19	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$19, DW_AT_low_pc(0x00)
	.dwattr $C$DW$19, DW_AT_name("__mpyd")
	.dwattr $C$DW$19, DW_AT_TI_call
        CALL #__mpyd ; |69| 
                                        ; call occurs [#__mpyd] ; |69| 

        MOV dbl(*SP(#16)), AC0 ; |69| 
||      OR #0, AC0, AC1

$C$DW$20	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$20, DW_AT_low_pc(0x00)
	.dwattr $C$DW$20, DW_AT_name("__addd")
	.dwattr $C$DW$20, DW_AT_TI_call
        CALL #__addd ; |69| 
                                        ; call occurs [#__addd] ; |69| 
        MOV AC0, dbl(*SP(#16)) ; |69| 
        MOV *SP(#11), AR3 ; |71| 
        MOV dbl(*AR3+), AC0 ; |71| 
        MOV AR3, *SP(#11) ; |71| 
        MOV *SP(#12), AR3 ; |71| 
        MOV dbl(*AR3+), AC1 ; |71| 
        MOV AR3, *SP(#12) ; |71| 
$C$DW$21	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$21, DW_AT_low_pc(0x00)
	.dwattr $C$DW$21, DW_AT_name("__mpyd")
	.dwattr $C$DW$21, DW_AT_TI_call
        CALL #__mpyd ; |71| 
                                        ; call occurs [#__mpyd] ; |71| 

        MOV dbl(*SP(#16)), AC0 ; |71| 
||      OR #0, AC0, AC1

$C$DW$22	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$22, DW_AT_low_pc(0x00)
	.dwattr $C$DW$22, DW_AT_name("__addd")
	.dwattr $C$DW$22, DW_AT_TI_call
        CALL #__addd ; |71| 
                                        ; call occurs [#__addd] ; |71| 
        MOV AC0, dbl(*SP(#16)) ; |71| 
        MOV dbl(*SP(#24)), AC0 ; |74| 
        SUB #1, AC0 ; |74| 
        MOV AC0, dbl(*SP(#24)) ; |74| 
        MOV dbl(*SP(#24)), AC0 ; |62| 
	.dwpsn	file "./lms_f32.c",line 75,column 0,is_stmt
        BCC $C$L2,AC0 != #0 ; |62| 
                                        ; branchcc occurs ; |62| 
$C$DW$L$_lms_f32$3$E:
$C$L3:    
$C$DW$L$_lms_f32$4$B:
        MOV dbl(*SP(#22)), AC0 ; |78| 
        AND #0x0003, AC0, AC0 ; |78| 
        MOV AC0, dbl(*SP(#24)) ; |78| 
        MOV dbl(*SP(#24)), AC0 ; |80| 
        BCC $C$L5,AC0 == #0 ; |80| 
                                        ; branchcc occurs ; |80| 
$C$DW$L$_lms_f32$4$E:
$C$L4:    
$C$DW$L$_lms_f32$5$B:
	.dwpsn	file "./lms_f32.c",line 81,column 0,is_stmt
        MOV *SP(#11), AR3 ; |83| 
        MOV dbl(*AR3+), AC0 ; |83| 
        MOV AR3, *SP(#11) ; |83| 
        MOV *SP(#12), AR3 ; |83| 
        MOV dbl(*AR3+), AC1 ; |83| 
        MOV AR3, *SP(#12) ; |83| 
$C$DW$23	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$23, DW_AT_low_pc(0x00)
	.dwattr $C$DW$23, DW_AT_name("__mpyd")
	.dwattr $C$DW$23, DW_AT_TI_call
        CALL #__mpyd ; |83| 
                                        ; call occurs [#__mpyd] ; |83| 

        MOV dbl(*SP(#16)), AC0 ; |83| 
||      OR #0, AC0, AC1

$C$DW$24	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$24, DW_AT_low_pc(0x00)
	.dwattr $C$DW$24, DW_AT_name("__addd")
	.dwattr $C$DW$24, DW_AT_TI_call
        CALL #__addd ; |83| 
                                        ; call occurs [#__addd] ; |83| 
        MOV AC0, dbl(*SP(#16)) ; |83| 
        MOV dbl(*SP(#24)), AC0 ; |86| 
        SUB #1, AC0 ; |86| 
        MOV AC0, dbl(*SP(#24)) ; |86| 
        MOV dbl(*SP(#24)), AC0 ; |80| 
	.dwpsn	file "./lms_f32.c",line 87,column 0,is_stmt
        BCC $C$L4,AC0 != #0 ; |80| 
                                        ; branchcc occurs ; |80| 
$C$DW$L$_lms_f32$5$E:
$C$L5:    
$C$DW$L$_lms_f32$6$B:
        MOV *SP(#3), AR2 ; |90| 

        AMOV AR2, AR3 ; |90| 
||      MOV dbl(*SP(#16)), AC0 ; |90| 

        MOV AR3, *SP(#3) ; |90| 
||      AADD #2, AR3 ; |90| 

        MOV AC0, dbl(*AR2) ; |90| 
        MOV *SP(#2), AR3 ; |93| 
        MOV dbl(*AR3+), AC0 ; |93| 
        MOV AR3, *SP(#2) ; |93| 
        MOV dbl(*SP(#16)), AC1 ; |93| 
$C$DW$25	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$25, DW_AT_low_pc(0x00)
	.dwattr $C$DW$25, DW_AT_name("__subd")
	.dwattr $C$DW$25, DW_AT_TI_call
        CALL #__subd ; |93| 
                                        ; call occurs [#__subd] ; |93| 
        MOV AC0, dbl(*SP(#18)) ; |93| 
        MOV *SP(#4), AR2 ; |94| 
        AMOV AR2, AR3 ; |94| 

        MOV AR3, *SP(#4) ; |94| 
||      AADD #2, AR3 ; |94| 

        MOV AC0, dbl(*AR2) ; |94| 
        MOV dbl(*SP(#18)), AC0 ; |97| 
        MOV dbl(*SP(#14)), AC1 ; |97| 
$C$DW$26	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$26, DW_AT_low_pc(0x00)
	.dwattr $C$DW$26, DW_AT_name("__mpyd")
	.dwattr $C$DW$26, DW_AT_TI_call
        CALL #__mpyd ; |97| 
                                        ; call occurs [#__mpyd] ; |97| 
        MOV AC0, dbl(*SP(#20)) ; |97| 
        MOV *SP(#8), AR2 ; |101| 
        AMOV AR2, AR3 ; |101| 

        MOV AR3, *SP(#8) ; |101| 
||      AADD #2, AR3 ; |101| 

        MOV AR2, *SP(#11) ; |101| 
        MOV *SP(#9), AR1 ; |104| 
        MOV AR1, *SP(#12) ; |104| 
        MOV dbl(*SP(#22)), AC0 ; |107| 
        SFTL AC0, #-2, AC0 ; |107| 
        MOV AC0, dbl(*SP(#24)) ; |107| 
        MOV dbl(*SP(#24)), AC0 ; |110| 
        BCC $C$L7,AC0 == #0 ; |110| 
                                        ; branchcc occurs ; |110| 
$C$DW$L$_lms_f32$6$E:
$C$L6:    
$C$DW$L$_lms_f32$7$B:
	.dwpsn	file "./lms_f32.c",line 111,column 0,is_stmt
        MOV *SP(#11), AR3 ; |113| 
        MOV *SP(#12), AR5 ; |113| 
        MOV dbl(*AR3+), AC1 ; |113| 
        MOV AR3, *SP(#11) ; |113| 
        MOV dbl(*SP(#20)), AC0 ; |113| 
$C$DW$27	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$27, DW_AT_low_pc(0x00)
	.dwattr $C$DW$27, DW_AT_name("__mpyd")
	.dwattr $C$DW$27, DW_AT_TI_call
        CALL #__mpyd ; |113| 
                                        ; call occurs [#__mpyd] ; |113| 

        MOV dbl(*AR5), AC0 ; |113| 
||      OR #0, AC0, AC1

$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x00)
	.dwattr $C$DW$28, DW_AT_name("__addd")
	.dwattr $C$DW$28, DW_AT_TI_call
        CALL #__addd ; |113| 
                                        ; call occurs [#__addd] ; |113| 
        MOV AC0, dbl(*AR5) ; |113| 
        ADD #2, *SP(#12) ; |114| 
        MOV *SP(#11), AR3 ; |116| 
        MOV *SP(#12), AR5 ; |116| 
        MOV dbl(*AR3+), AC1 ; |116| 
        MOV AR3, *SP(#11) ; |116| 
        MOV dbl(*SP(#20)), AC0 ; |116| 
$C$DW$29	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$29, DW_AT_low_pc(0x00)
	.dwattr $C$DW$29, DW_AT_name("__mpyd")
	.dwattr $C$DW$29, DW_AT_TI_call
        CALL #__mpyd ; |116| 
                                        ; call occurs [#__mpyd] ; |116| 

        MOV dbl(*AR5), AC0 ; |116| 
||      OR #0, AC0, AC1

$C$DW$30	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$30, DW_AT_low_pc(0x00)
	.dwattr $C$DW$30, DW_AT_name("__addd")
	.dwattr $C$DW$30, DW_AT_TI_call
        CALL #__addd ; |116| 
                                        ; call occurs [#__addd] ; |116| 
        MOV AC0, dbl(*AR5) ; |116| 
        ADD #2, *SP(#12) ; |117| 
        MOV *SP(#11), AR3 ; |119| 
        MOV *SP(#12), AR5 ; |119| 
        MOV dbl(*AR3+), AC1 ; |119| 
        MOV AR3, *SP(#11) ; |119| 
        MOV dbl(*SP(#20)), AC0 ; |119| 
$C$DW$31	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$31, DW_AT_low_pc(0x00)
	.dwattr $C$DW$31, DW_AT_name("__mpyd")
	.dwattr $C$DW$31, DW_AT_TI_call
        CALL #__mpyd ; |119| 
                                        ; call occurs [#__mpyd] ; |119| 

        MOV dbl(*AR5), AC0 ; |119| 
||      OR #0, AC0, AC1

$C$DW$32	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$32, DW_AT_low_pc(0x00)
	.dwattr $C$DW$32, DW_AT_name("__addd")
	.dwattr $C$DW$32, DW_AT_TI_call
        CALL #__addd ; |119| 
                                        ; call occurs [#__addd] ; |119| 
        MOV AC0, dbl(*AR5) ; |119| 
        ADD #2, *SP(#12) ; |120| 
        MOV *SP(#11), AR3 ; |122| 
        MOV *SP(#12), AR5 ; |122| 
        MOV dbl(*AR3+), AC1 ; |122| 
        MOV AR3, *SP(#11) ; |122| 
        MOV dbl(*SP(#20)), AC0 ; |122| 
$C$DW$33	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$33, DW_AT_low_pc(0x00)
	.dwattr $C$DW$33, DW_AT_name("__mpyd")
	.dwattr $C$DW$33, DW_AT_TI_call
        CALL #__mpyd ; |122| 
                                        ; call occurs [#__mpyd] ; |122| 

        MOV dbl(*AR5), AC0 ; |122| 
||      OR #0, AC0, AC1

$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_name("__addd")
	.dwattr $C$DW$34, DW_AT_TI_call
        CALL #__addd ; |122| 
                                        ; call occurs [#__addd] ; |122| 
        MOV AC0, dbl(*AR5) ; |122| 
        ADD #2, *SP(#12) ; |123| 
        MOV dbl(*SP(#24)), AC0 ; |126| 
        SUB #1, AC0 ; |126| 
        MOV AC0, dbl(*SP(#24)) ; |126| 
        MOV dbl(*SP(#24)), AC0 ; |110| 
	.dwpsn	file "./lms_f32.c",line 127,column 0,is_stmt
        BCC $C$L6,AC0 != #0 ; |110| 
                                        ; branchcc occurs ; |110| 
$C$DW$L$_lms_f32$7$E:
$C$L7:    
$C$DW$L$_lms_f32$8$B:
        MOV dbl(*SP(#22)), AC0 ; |130| 
        AND #0x0003, AC0, AC0 ; |130| 
        MOV AC0, dbl(*SP(#24)) ; |130| 
        MOV dbl(*SP(#24)), AC0 ; |132| 
        BCC $C$L9,AC0 == #0 ; |132| 
                                        ; branchcc occurs ; |132| 
$C$DW$L$_lms_f32$8$E:
$C$L8:    
$C$DW$L$_lms_f32$9$B:
	.dwpsn	file "./lms_f32.c",line 133,column 0,is_stmt
        MOV *SP(#11), AR3 ; |135| 
        MOV *SP(#12), AR5 ; |135| 
        MOV dbl(*AR3+), AC1 ; |135| 
        MOV AR3, *SP(#11) ; |135| 
        MOV dbl(*SP(#20)), AC0 ; |135| 
$C$DW$35	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$35, DW_AT_low_pc(0x00)
	.dwattr $C$DW$35, DW_AT_name("__mpyd")
	.dwattr $C$DW$35, DW_AT_TI_call
        CALL #__mpyd ; |135| 
                                        ; call occurs [#__mpyd] ; |135| 

        MOV dbl(*AR5), AC0 ; |135| 
||      OR #0, AC0, AC1

$C$DW$36	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$36, DW_AT_low_pc(0x00)
	.dwattr $C$DW$36, DW_AT_name("__addd")
	.dwattr $C$DW$36, DW_AT_TI_call
        CALL #__addd ; |135| 
                                        ; call occurs [#__addd] ; |135| 
        MOV AC0, dbl(*AR5) ; |135| 
        ADD #2, *SP(#12) ; |136| 
        MOV dbl(*SP(#24)), AC0 ; |139| 
        SUB #1, AC0 ; |139| 
        MOV AC0, dbl(*SP(#24)) ; |139| 
        MOV dbl(*SP(#24)), AC0 ; |132| 
	.dwpsn	file "./lms_f32.c",line 140,column 0,is_stmt
        BCC $C$L8,AC0 != #0 ; |132| 
                                        ; branchcc occurs ; |132| 
$C$DW$L$_lms_f32$9$E:
$C$L9:    
$C$DW$L$_lms_f32$10$B:
        MOV dbl(*SP(#26)), AC0 ; |143| 
        SUB #1, AC0 ; |143| 
        MOV AC0, dbl(*SP(#26)) ; |143| 
        MOV dbl(*SP(#26)), AC0 ; |45| 
	.dwpsn	file "./lms_f32.c",line 144,column 0,is_stmt
        BCC $C$L1,AC0 != #0 ; |45| 
                                        ; branchcc occurs ; |45| 
$C$DW$L$_lms_f32$10$E:
$C$L10:    
        MOV *SP(#0), AR3 ; |151| 
        MOV *AR3(short(#1)), AR1 ; |151| 
        MOV AR1, *SP(#10) ; |151| 
        MOV dbl(*SP(#22)), AC0 ; |154| 
        SUB #1, AC0 ; |154| 
        SFTL AC0, #-2, AC0 ; |154| 
        MOV AC0, dbl(*SP(#24)) ; |154| 
        MOV dbl(*SP(#24)), AC0 ; |156| 
        BCC $C$L12,AC0 == #0 ; |156| 
                                        ; branchcc occurs ; |156| 
$C$L11:    
$C$DW$L$_lms_f32$12$B:
	.dwpsn	file "./lms_f32.c",line 156,column 0,is_stmt
        MOV *SP(#8), AR3 ; |157| 
        MOV dbl(*AR3+), AC0 ; |157| 
        MOV AR3, *SP(#8) ; |157| 
        MOV *SP(#10), AR2 ; |157| 
        AMOV AR2, AR3 ; |157| 

        MOV AR3, *SP(#10) ; |157| 
||      AADD #2, AR3 ; |157| 

        MOV AC0, dbl(*AR2) ; |157| 
        MOV *SP(#8), AR3 ; |158| 
        MOV dbl(*AR3+), AC0 ; |158| 
        MOV AR3, *SP(#8) ; |158| 
        MOV *SP(#10), AR2 ; |158| 
        AMOV AR2, AR3 ; |158| 

        MOV AR3, *SP(#10) ; |158| 
||      AADD #2, AR3 ; |158| 

        MOV AC0, dbl(*AR2) ; |158| 
        MOV *SP(#8), AR3 ; |159| 
        MOV dbl(*AR3+), AC0 ; |159| 
        MOV AR3, *SP(#8) ; |159| 
        MOV *SP(#10), AR2 ; |159| 
        AMOV AR2, AR3 ; |159| 

        MOV AR3, *SP(#10) ; |159| 
||      AADD #2, AR3 ; |159| 

        MOV AC0, dbl(*AR2) ; |159| 
        MOV *SP(#8), AR3 ; |160| 
        MOV dbl(*AR3+), AC0 ; |160| 
        MOV AR3, *SP(#8) ; |160| 
        MOV *SP(#10), AR2 ; |160| 
        AMOV AR2, AR3 ; |160| 

        MOV AR3, *SP(#10) ; |160| 
||      AADD #2, AR3 ; |160| 

        MOV AC0, dbl(*AR2) ; |160| 
        MOV dbl(*SP(#24)), AC0 ; |163| 
        SUB #1, AC0 ; |163| 
        MOV AC0, dbl(*SP(#24)) ; |163| 
        MOV dbl(*SP(#24)), AC0 ; |156| 
	.dwpsn	file "./lms_f32.c",line 164,column 0,is_stmt
        BCC $C$L11,AC0 != #0 ; |156| 
                                        ; branchcc occurs ; |156| 
$C$DW$L$_lms_f32$12$E:
$C$L12:    
        MOV dbl(*SP(#22)), AC0 ; |167| 
        SUB #1, AC0 ; |167| 
        AND #0x0003, AC0, AC0 ; |167| 
        MOV AC0, dbl(*SP(#24)) ; |167| 
        MOV dbl(*SP(#24)), AC0 ; |169| 
        BCC $C$L14,AC0 == #0 ; |169| 
                                        ; branchcc occurs ; |169| 
$C$L13:    
$C$DW$L$_lms_f32$14$B:
	.dwpsn	file "./lms_f32.c",line 170,column 0,is_stmt
        MOV *SP(#8), AR3 ; |171| 
        MOV dbl(*AR3+), AC0 ; |171| 
        MOV AR3, *SP(#8) ; |171| 
        MOV *SP(#10), AR2 ; |171| 
        AMOV AR2, AR3 ; |171| 

        MOV AR3, *SP(#10) ; |171| 
||      AADD #2, AR3 ; |171| 

        MOV AC0, dbl(*AR2) ; |171| 
        MOV dbl(*SP(#24)), AC0 ; |174| 
        SUB #1, AC0 ; |174| 
        MOV AC0, dbl(*SP(#24)) ; |174| 
        MOV dbl(*SP(#24)), AC0 ; |169| 
	.dwpsn	file "./lms_f32.c",line 175,column 0,is_stmt
        BCC $C$L13,AC0 != #0 ; |169| 
                                        ; branchcc occurs ; |169| 
$C$DW$L$_lms_f32$14$E:
$C$L14:    
        AADD #28, SP
        POP AR5
	.dwpsn	file "./lms_f32.c",line 177,column 1,is_stmt
$C$DW$37	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$37, DW_AT_low_pc(0x00)
	.dwattr $C$DW$37, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$38	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$38, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/lms_f32/lms_f32.asm:$C$L13:1:1768167884")
	.dwattr $C$DW$38, DW_AT_TI_begin_file("./lms_f32.c")
	.dwattr $C$DW$38, DW_AT_TI_begin_line(0xa9)
	.dwattr $C$DW$38, DW_AT_TI_end_line(0xaf)
$C$DW$39	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$39, DW_AT_low_pc($C$DW$L$_lms_f32$14$B)
	.dwattr $C$DW$39, DW_AT_high_pc($C$DW$L$_lms_f32$14$E)
	.dwendtag $C$DW$38


$C$DW$40	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$40, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/lms_f32/lms_f32.asm:$C$L11:1:1768167884")
	.dwattr $C$DW$40, DW_AT_TI_begin_file("./lms_f32.c")
	.dwattr $C$DW$40, DW_AT_TI_begin_line(0x9c)
	.dwattr $C$DW$40, DW_AT_TI_end_line(0xa4)
$C$DW$41	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$41, DW_AT_low_pc($C$DW$L$_lms_f32$12$B)
	.dwattr $C$DW$41, DW_AT_high_pc($C$DW$L$_lms_f32$12$E)
	.dwendtag $C$DW$40


$C$DW$42	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$42, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/lms_f32/lms_f32.asm:$C$L1:1:1768167884")
	.dwattr $C$DW$42, DW_AT_TI_begin_file("./lms_f32.c")
	.dwattr $C$DW$42, DW_AT_TI_begin_line(0x2d)
	.dwattr $C$DW$42, DW_AT_TI_end_line(0x90)
$C$DW$43	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$43, DW_AT_low_pc($C$DW$L$_lms_f32$2$B)
	.dwattr $C$DW$43, DW_AT_high_pc($C$DW$L$_lms_f32$2$E)
$C$DW$44	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$44, DW_AT_low_pc($C$DW$L$_lms_f32$4$B)
	.dwattr $C$DW$44, DW_AT_high_pc($C$DW$L$_lms_f32$4$E)
$C$DW$45	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$45, DW_AT_low_pc($C$DW$L$_lms_f32$6$B)
	.dwattr $C$DW$45, DW_AT_high_pc($C$DW$L$_lms_f32$6$E)
$C$DW$46	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$46, DW_AT_low_pc($C$DW$L$_lms_f32$8$B)
	.dwattr $C$DW$46, DW_AT_high_pc($C$DW$L$_lms_f32$8$E)
$C$DW$47	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$47, DW_AT_low_pc($C$DW$L$_lms_f32$10$B)
	.dwattr $C$DW$47, DW_AT_high_pc($C$DW$L$_lms_f32$10$E)

$C$DW$48	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$48, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/lms_f32/lms_f32.asm:$C$L2:2:1768167884")
	.dwattr $C$DW$48, DW_AT_TI_begin_file("./lms_f32.c")
	.dwattr $C$DW$48, DW_AT_TI_begin_line(0x3e)
	.dwattr $C$DW$48, DW_AT_TI_end_line(0x4b)
$C$DW$49	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$49, DW_AT_low_pc($C$DW$L$_lms_f32$3$B)
	.dwattr $C$DW$49, DW_AT_high_pc($C$DW$L$_lms_f32$3$E)
	.dwendtag $C$DW$48


$C$DW$50	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$50, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/lms_f32/lms_f32.asm:$C$L4:2:1768167884")
	.dwattr $C$DW$50, DW_AT_TI_begin_file("./lms_f32.c")
	.dwattr $C$DW$50, DW_AT_TI_begin_line(0x50)
	.dwattr $C$DW$50, DW_AT_TI_end_line(0x57)
$C$DW$51	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$51, DW_AT_low_pc($C$DW$L$_lms_f32$5$B)
	.dwattr $C$DW$51, DW_AT_high_pc($C$DW$L$_lms_f32$5$E)
	.dwendtag $C$DW$50


$C$DW$52	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$52, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/lms_f32/lms_f32.asm:$C$L6:2:1768167884")
	.dwattr $C$DW$52, DW_AT_TI_begin_file("./lms_f32.c")
	.dwattr $C$DW$52, DW_AT_TI_begin_line(0x6e)
	.dwattr $C$DW$52, DW_AT_TI_end_line(0x7f)
$C$DW$53	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$53, DW_AT_low_pc($C$DW$L$_lms_f32$7$B)
	.dwattr $C$DW$53, DW_AT_high_pc($C$DW$L$_lms_f32$7$E)
	.dwendtag $C$DW$52


$C$DW$54	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$54, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/lms_f32/lms_f32.asm:$C$L8:2:1768167884")
	.dwattr $C$DW$54, DW_AT_TI_begin_file("./lms_f32.c")
	.dwattr $C$DW$54, DW_AT_TI_begin_line(0x84)
	.dwattr $C$DW$54, DW_AT_TI_end_line(0x8c)
$C$DW$55	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$55, DW_AT_low_pc($C$DW$L$_lms_f32$9$B)
	.dwattr $C$DW$55, DW_AT_high_pc($C$DW$L$_lms_f32$9$E)
	.dwendtag $C$DW$54

	.dwendtag $C$DW$42

	.dwattr $C$DW$8, DW_AT_TI_end_file("./lms_f32.c")
	.dwattr $C$DW$8, DW_AT_TI_end_line(0xb1)
	.dwattr $C$DW$8, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$8

	.sect	".text"
	.global	_lms_init_f32

$C$DW$56	.dwtag  DW_TAG_subprogram, DW_AT_name("lms_init_f32")
	.dwattr $C$DW$56, DW_AT_low_pc(_lms_init_f32)
	.dwattr $C$DW$56, DW_AT_high_pc(0x00)
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_lms_init_f32")
	.dwattr $C$DW$56, DW_AT_external
	.dwattr $C$DW$56, DW_AT_TI_begin_file("./lms_f32.c")
	.dwattr $C$DW$56, DW_AT_TI_begin_line(0xb5)
	.dwattr $C$DW$56, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$56, DW_AT_decl_file("./lms_f32.c")
	.dwattr $C$DW$56, DW_AT_decl_line(0xb5)
	.dwattr $C$DW$56, DW_AT_decl_column(0x06)
	.dwattr $C$DW$56, DW_AT_TI_max_frame_size(0x0a)
	.dwattr $C$DW$56, DW_AT_frame_base[DW_OP_bregx 0x24 10]
	.dwattr $C$DW$56, DW_AT_TI_skeletal
	.dwpsn	file "./lms_f32.c",line 188,column 1,is_stmt,address _lms_init_f32
$C$DW$57	.dwtag  DW_TAG_formal_parameter, DW_AT_name("S")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_S")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_reg16]
$C$DW$58	.dwtag  DW_TAG_formal_parameter, DW_AT_name("numTaps")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_numTaps")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_reg12]
$C$DW$59	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pCoeffs")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_pCoeffs")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_reg18]
$C$DW$60	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pState")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_pState")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_reg20]
$C$DW$61	.dwtag  DW_TAG_formal_parameter, DW_AT_name("mu")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_mu")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$61, DW_AT_location[DW_OP_reg0]
$C$DW$62	.dwtag  DW_TAG_formal_parameter, DW_AT_name("blockSize")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_blockSize")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_reg3]
;*******************************************************************************
;* FUNCTION NAME: lms_init_f32                                                 *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,AR1,AR2,AR3,SP,M40,SATA,SATD, *
;*                        RDM,FRCT,SMUL                                        *
;*   Stack Frame        : Compact (No Frame Pointer)                           *
;*   Total Frame Size   : 10 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (8 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_lms_init_f32:
        AADD #-9, SP
        MOV AC1, dbl(*SP(#6)) ; |188| 
        MOV AC0, dbl(*SP(#4)) ; |188| 

        MOV AR2, *SP(#3) ; |188| 
||      MOV AR0, AR3 ; |190| 

        MOV AR1, *SP(#2) ; |188| 
        MOV T0, *SP(#1) ; |188| 
        MOV AR0, *SP(#0) ; |188| 
        MOV *SP(#1), AR1 ; |190| 
        MOV AR1, *AR3 ; |190| 
        MOV *SP(#0), AR3 ; |193| 
        MOV *SP(#2), AR1 ; |193| 
        MOV AR1, *AR3(short(#2)) ; |193| 
        MOV *SP(#0), AR3 ; |196| 
        MOV *SP(#3), AR1 ; |196| 
        MOV AR1, *AR3(short(#1)) ; |196| 
        MOV *SP(#0), AR3 ; |199| 
        MOV dbl(*SP(#4)), AC0 ; |199| 
        MOV AC0, dbl(*AR3(short(#4))) ; |199| 
        AADD #9, SP
	.dwpsn	file "./lms_f32.c",line 200,column 1,is_stmt
$C$DW$63	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$63, DW_AT_low_pc(0x00)
	.dwattr $C$DW$63, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$56, DW_AT_TI_end_file("./lms_f32.c")
	.dwattr $C$DW$56, DW_AT_TI_end_line(0xc8)
	.dwattr $C$DW$56, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$56

	.sect	".text"
	.global	_lms_f32_t

$C$DW$64	.dwtag  DW_TAG_subprogram, DW_AT_name("lms_f32_t")
	.dwattr $C$DW$64, DW_AT_low_pc(_lms_f32_t)
	.dwattr $C$DW$64, DW_AT_high_pc(0x00)
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_lms_f32_t")
	.dwattr $C$DW$64, DW_AT_external
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$64, DW_AT_TI_begin_file("./lms_f32.c")
	.dwattr $C$DW$64, DW_AT_TI_begin_line(0xce)
	.dwattr $C$DW$64, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$64, DW_AT_decl_file("./lms_f32.c")
	.dwattr $C$DW$64, DW_AT_decl_line(0xce)
	.dwattr $C$DW$64, DW_AT_decl_column(0x05)
	.dwattr $C$DW$64, DW_AT_TI_max_frame_size(0x20e)
	.dwattr $C$DW$64, DW_AT_frame_base[DW_OP_bregx 0x24 526]
	.dwattr $C$DW$64, DW_AT_TI_skeletal
	.dwpsn	file "./lms_f32.c",line 207,column 1,is_stmt,address _lms_f32_t
$C$DW$65	.dwtag  DW_TAG_formal_parameter, DW_AT_name("input")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_reg16]
;*******************************************************************************
;* FUNCTION NAME: lms_f32_t                                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,AR1,AR2,AR3,AR4,FP,SP,CSR,    *
;*                        RPTC,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL           *
;*   Save On Entry Regs : FP                                                   *
;*   Stack Frame        : Full (Frame Pointer in AR6)                          *
;*   Total Frame Size   : 526 words                                            *
;*                        (1 return address/alignment)                         *
;*                        (524 local values)                                   *
;*                        (1 register save area)                               *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_lms_f32_t:
        PSH FP
        ADD #-524, mmap(SP)
        MOV SP, AR2
        MOV #(_$P$T0$1 & 0xffff), AR3 ; |214| 

        MOV AR0, *SP(#0) ; |207| 
||      MOV #0, AC0 ; |209| 

        AMAR *+AR2(#12)
        MOV AC0, dbl(*SP(#2)) ; |209| 

        RPT #255  ; |214| 
||      MOV SP, FP

                                            ; loop starts ; |214| 
$C$L15:    
$C$DW$L$_lms_f32_t$2$B:
            MOV dbl(*AR3+), dbl(*AR2+) ; |214| 
                                        ; loop ends ; |214| 
$C$DW$L$_lms_f32_t$2$E:
$C$L16:    
        MOV SP, AR1
        MOV SP, AR0
        MOV dbl(*abs16(#_mu)), AC0 ; |216| 
        MOV #1, AC1 ; |216| 
        MOV #(_filter_state & 0xffff), AR2 ; |216| 
        MOV #256, T0 ; |216| 
        AMAR *+AR1(#12)
        AMAR *+AR0(#6)
$C$DW$66	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$66, DW_AT_low_pc(0x00)
	.dwattr $C$DW$66, DW_AT_name("_lms_init_f32")
	.dwattr $C$DW$66, DW_AT_TI_call
        CALL #_lms_init_f32 ; |216| 
                                        ; call occurs [#_lms_init_f32] ; |216| 
        MOV #0, AC0 ; |219| 
        MOV AC0, dbl(*SP(#4)) ; |219| 
        MOV #256, AC0 ; |219| 
        MOV dbl(*SP(#4)), AC1 ; |219| 
        CMPU AC1 >= AC0, TC1 ; |219| 
        BCC $C$L18,TC1 ; |219| 
                                        ; branchcc occurs ; |219| 
$C$L17:    
$C$DW$L$_lms_f32_t$4$B:
	.dwpsn	file "./lms_f32.c",line 220,column 0,is_stmt
        MOV *SP(#5), AR3 ; |221| 

        SFTL AR3, #1 ; |221| 
||      MOV *SP(#5), AR2 ; |221| 

        SFTL AR2, #1 ; |221| 

        MOV SP, AR0
||      MOV *SP(#5), AR1 ; |221| 

        MOV *SP(#5), AR4 ; |221| 
||      SFTL AR1, #1 ; |221| 

        ADD #(_out & 0xffff), AR3, AR3 ; |221| 
        ADD #(_ref & 0xffff), AR2, AR2 ; |221| 
        ADD *SP(#0), AR1, AR1 ; |221| 
        AMAR *+AR0(#6)

        SFTL AR4, #1 ; |221| 
||      MOV #1, AC0 ; |221| 

        ADD #(_err & 0xffff), AR4, AR4 ; |221| 
$C$DW$67	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$67, DW_AT_low_pc(0x00)
	.dwattr $C$DW$67, DW_AT_name("_lms_f32")
	.dwattr $C$DW$67, DW_AT_TI_call
        CALL #_lms_f32 ; |221| 
                                        ; call occurs [#_lms_f32] ; |221| 
        MOV dbl(*SP(#4)), AC0 ; |219| 
        ADD #1, AC0 ; |219| 
        MOV AC0, dbl(*SP(#4)) ; |219| 
        MOV #256, AC0 ; |219| 
        MOV dbl(*SP(#4)), AC1 ; |219| 
        CMPU AC1 < AC0, TC1 ; |219| 
	.dwpsn	file "./lms_f32.c",line 222,column 0,is_stmt
        BCC $C$L17,TC1 ; |219| 
                                        ; branchcc occurs ; |219| 
$C$DW$L$_lms_f32_t$4$E:
$C$L18:    

        MOV SP, AR0
||      MOV #512, AR1 ; |224| 

        MOV #((_err+512) & 0xffff), AR4 ; |224| 
        MOV #((_out+512) & 0xffff), AR3 ; |224| 
        MOV #((_ref+512) & 0xffff), AR2 ; |224| 

        ADD *SP(#0), AR1, AR1 ; |224| 
||      MOV #1, AC0 ; |224| 

        AMAR *+AR0(#6)
$C$DW$68	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$68, DW_AT_low_pc(0x00)
	.dwattr $C$DW$68, DW_AT_name("_lms_f32")
	.dwattr $C$DW$68, DW_AT_TI_call
        CALL #_lms_f32 ; |224| 
                                        ; call occurs [#_lms_f32] ; |224| 
        ADD #524, mmap(SP)
        MOV #0, T0
        POP FP
	.dwpsn	file "./lms_f32.c",line 227,column 1,is_stmt
$C$DW$69	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$69, DW_AT_low_pc(0x00)
	.dwattr $C$DW$69, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$70	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$70, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/lms_f32/lms_f32.asm:$C$L17:1:1768167884")
	.dwattr $C$DW$70, DW_AT_TI_begin_file("./lms_f32.c")
	.dwattr $C$DW$70, DW_AT_TI_begin_line(0xdb)
	.dwattr $C$DW$70, DW_AT_TI_end_line(0xde)
$C$DW$71	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$71, DW_AT_low_pc($C$DW$L$_lms_f32_t$4$B)
	.dwattr $C$DW$71, DW_AT_high_pc($C$DW$L$_lms_f32_t$4$E)
	.dwendtag $C$DW$70


$C$DW$72	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$72, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/lms_f32/lms_f32.asm:$C$L15:1:1768167884")
	.dwattr $C$DW$72, DW_AT_TI_begin_file("./lms_f32.c")
	.dwattr $C$DW$72, DW_AT_TI_begin_line(0xd6)
	.dwattr $C$DW$72, DW_AT_TI_end_line(0xd6)
$C$DW$73	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$73, DW_AT_low_pc($C$DW$L$_lms_f32_t$2$B)
	.dwattr $C$DW$73, DW_AT_high_pc($C$DW$L$_lms_f32_t$2$E)
	.dwendtag $C$DW$72

	.dwattr $C$DW$64, DW_AT_TI_end_file("./lms_f32.c")
	.dwattr $C$DW$64, DW_AT_TI_end_line(0xe3)
	.dwattr $C$DW$64, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$64

;*******************************************************************************
;* FLOATING-POINT CONSTANTS                                                    *
;*******************************************************************************
	.sect	".const"
	.align	2
$C$FL1:	.xlong	0x00000000
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	__mpyd
	.global	__addd
	.global	__subd

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
$C$DW$T$24	.dwtag  DW_TAG_typedef, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$24, DW_AT_decl_file("/opt/TI/C5500CGT4.3.9/include/stdint.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0x15)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x1c)
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
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x202)
$C$DW$74	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$74, DW_AT_upper_bound(0x100)
	.dwendtag $C$DW$T$30


$C$DW$T$31	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$31, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x200)
$C$DW$75	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$75, DW_AT_upper_bound(0xff)
	.dwendtag $C$DW$T$31

$C$DW$T$33	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$16)

$C$DW$T$34	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x200)
$C$DW$76	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$76, DW_AT_upper_bound(0xff)
	.dwendtag $C$DW$T$34

$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x02)
$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x02)

$C$DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x06)
$C$DW$77	.dwtag  DW_TAG_member
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$77, DW_AT_name("numTaps")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_numTaps")
	.dwattr $C$DW$77, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$77, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$77, DW_AT_decl_file("./lms_f32.h")
	.dwattr $C$DW$77, DW_AT_decl_line(0x0e)
	.dwattr $C$DW$77, DW_AT_decl_column(0x12)
$C$DW$78	.dwtag  DW_TAG_member
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$78, DW_AT_name("pState")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_pState")
	.dwattr $C$DW$78, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$78, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$78, DW_AT_decl_file("./lms_f32.h")
	.dwattr $C$DW$78, DW_AT_decl_line(0x0f)
	.dwattr $C$DW$78, DW_AT_decl_column(0x10)
$C$DW$79	.dwtag  DW_TAG_member
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$79, DW_AT_name("pCoeffs")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_pCoeffs")
	.dwattr $C$DW$79, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$79, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$79, DW_AT_decl_file("./lms_f32.h")
	.dwattr $C$DW$79, DW_AT_decl_line(0x10)
	.dwattr $C$DW$79, DW_AT_decl_column(0x09)
$C$DW$80	.dwtag  DW_TAG_member
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$80, DW_AT_name("mu")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_mu")
	.dwattr $C$DW$80, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$80, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$80, DW_AT_decl_file("./lms_f32.h")
	.dwattr $C$DW$80, DW_AT_decl_line(0x11)
	.dwattr $C$DW$80, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$21

	.dwattr $C$DW$T$21, DW_AT_decl_file("./lms_f32.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x0d)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x03)
$C$DW$T$22	.dwtag  DW_TAG_typedef, DW_AT_name("lms_instance_f32")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$22, DW_AT_decl_file("./lms_f32.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x12)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x05)
$C$DW$T$23	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$23, DW_AT_address_class(0x10)
	.dwattr $C$DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

$C$DW$81	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$81, DW_AT_location[DW_OP_reg0]
$C$DW$82	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$82, DW_AT_location[DW_OP_reg1]
$C$DW$83	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$83, DW_AT_location[DW_OP_reg2]
$C$DW$84	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$84, DW_AT_location[DW_OP_reg3]
$C$DW$85	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$85, DW_AT_location[DW_OP_reg4]
$C$DW$86	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$86, DW_AT_location[DW_OP_reg5]
$C$DW$87	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$87, DW_AT_location[DW_OP_reg6]
$C$DW$88	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$88, DW_AT_location[DW_OP_reg7]
$C$DW$89	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$89, DW_AT_location[DW_OP_reg8]
$C$DW$90	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$90, DW_AT_location[DW_OP_reg9]
$C$DW$91	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$91, DW_AT_location[DW_OP_reg10]
$C$DW$92	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$92, DW_AT_location[DW_OP_reg11]
$C$DW$93	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$93, DW_AT_location[DW_OP_reg12]
$C$DW$94	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$94, DW_AT_location[DW_OP_reg13]
$C$DW$95	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$95, DW_AT_location[DW_OP_reg14]
$C$DW$96	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$96, DW_AT_location[DW_OP_reg15]
$C$DW$97	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$97, DW_AT_location[DW_OP_reg16]
$C$DW$98	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$98, DW_AT_location[DW_OP_reg17]
$C$DW$99	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$99, DW_AT_location[DW_OP_reg18]
$C$DW$100	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$100, DW_AT_location[DW_OP_reg19]
$C$DW$101	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$101, DW_AT_location[DW_OP_reg20]
$C$DW$102	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$102, DW_AT_location[DW_OP_reg21]
$C$DW$103	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$103, DW_AT_location[DW_OP_reg22]
$C$DW$104	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$104, DW_AT_location[DW_OP_reg23]
$C$DW$105	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$105, DW_AT_location[DW_OP_reg24]
$C$DW$106	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$106, DW_AT_location[DW_OP_reg25]
$C$DW$107	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$107, DW_AT_location[DW_OP_reg26]
$C$DW$108	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$108, DW_AT_location[DW_OP_reg27]
$C$DW$109	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$109, DW_AT_location[DW_OP_reg28]
$C$DW$110	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$110, DW_AT_location[DW_OP_reg29]
$C$DW$111	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$111, DW_AT_location[DW_OP_reg30]
$C$DW$112	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$112, DW_AT_location[DW_OP_reg31]
$C$DW$113	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$113, DW_AT_location[DW_OP_regx 0x20]
$C$DW$114	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$114, DW_AT_location[DW_OP_regx 0x21]
$C$DW$115	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$115, DW_AT_location[DW_OP_regx 0x22]
$C$DW$116	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$116, DW_AT_location[DW_OP_regx 0x23]
$C$DW$117	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$117, DW_AT_location[DW_OP_regx 0x24]
$C$DW$118	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$118, DW_AT_location[DW_OP_regx 0x25]
$C$DW$119	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$119, DW_AT_location[DW_OP_regx 0x26]
$C$DW$120	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$120, DW_AT_location[DW_OP_regx 0x27]
$C$DW$121	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$121, DW_AT_location[DW_OP_regx 0x28]
$C$DW$122	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$122, DW_AT_location[DW_OP_regx 0x29]
$C$DW$123	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$123, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$124	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$124, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$125	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$125, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$126	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$126, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$127	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$127, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$128	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$128, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$129	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$129, DW_AT_location[DW_OP_regx 0x30]
$C$DW$130	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$130, DW_AT_location[DW_OP_regx 0x31]
$C$DW$131	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$131, DW_AT_location[DW_OP_regx 0x32]
$C$DW$132	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$132, DW_AT_location[DW_OP_regx 0x33]
$C$DW$133	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$133, DW_AT_location[DW_OP_regx 0x34]
$C$DW$134	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$134, DW_AT_location[DW_OP_regx 0x35]
$C$DW$135	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$135, DW_AT_location[DW_OP_regx 0x36]
$C$DW$136	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$136, DW_AT_location[DW_OP_regx 0x37]
$C$DW$137	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$137, DW_AT_location[DW_OP_regx 0x38]
$C$DW$138	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$138, DW_AT_location[DW_OP_regx 0x39]
$C$DW$139	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$139, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$140	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$140, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$141	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$141, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$142	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$142, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$143	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$143, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$144	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$144, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$145	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$145, DW_AT_location[DW_OP_regx 0x40]
$C$DW$146	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$146, DW_AT_location[DW_OP_regx 0x41]
$C$DW$147	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$147, DW_AT_location[DW_OP_regx 0x42]
$C$DW$148	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$148, DW_AT_location[DW_OP_regx 0x43]
$C$DW$149	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$149, DW_AT_location[DW_OP_regx 0x44]
$C$DW$150	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$150, DW_AT_location[DW_OP_regx 0x45]
$C$DW$151	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$151, DW_AT_location[DW_OP_regx 0x46]
$C$DW$152	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$152, DW_AT_location[DW_OP_regx 0x47]
$C$DW$153	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$153, DW_AT_location[DW_OP_regx 0x48]
$C$DW$154	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$154, DW_AT_location[DW_OP_regx 0x49]
$C$DW$155	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$155, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$156	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$156, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$157	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$157, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$158	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$158, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$159	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$159, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$160	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$160, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$161	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$161, DW_AT_location[DW_OP_regx 0x50]
$C$DW$162	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$162, DW_AT_location[DW_OP_regx 0x51]
$C$DW$163	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$163, DW_AT_location[DW_OP_regx 0x52]
$C$DW$164	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$164, DW_AT_location[DW_OP_regx 0x53]
$C$DW$165	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$165, DW_AT_location[DW_OP_regx 0x54]
$C$DW$166	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$166, DW_AT_location[DW_OP_regx 0x55]
$C$DW$167	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$167, DW_AT_location[DW_OP_regx 0x56]
$C$DW$168	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$168, DW_AT_location[DW_OP_regx 0x57]
$C$DW$169	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$169, DW_AT_location[DW_OP_regx 0x58]
$C$DW$170	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$170, DW_AT_location[DW_OP_regx 0x59]
$C$DW$171	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$171, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$172	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$172, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

