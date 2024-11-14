;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                        Unix v4.4.1 *
;* Date/Time created: Fri Sep  6 11:52:04 2024                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("./coms.c")
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


$C$DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("calloc")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_calloc")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$21)
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$5


$C$DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("free")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_free")
	.dwattr $C$DW$8, DW_AT_declaration
	.dwattr $C$DW$8, DW_AT_external
$C$DW$9	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$8


$C$DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("sin")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_sin")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$10, DW_AT_declaration
	.dwattr $C$DW$10, DW_AT_external
$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$17)
	.dwendtag $C$DW$10


$C$DW$12	.dwtag  DW_TAG_subprogram, DW_AT_name("cfft_NOSCALE")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_cfft_NOSCALE")
	.dwattr $C$DW$12, DW_AT_declaration
	.dwattr $C$DW$12, DW_AT_external
$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$28)
$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$29)
	.dwendtag $C$DW$12


$C$DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("unpack")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_unpack")
	.dwattr $C$DW$15, DW_AT_declaration
	.dwattr $C$DW$15, DW_AT_external
$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$28)
$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$29)
	.dwendtag $C$DW$15


$C$DW$18	.dwtag  DW_TAG_subprogram, DW_AT_name("cbrev")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_cbrev")
	.dwattr $C$DW$18, DW_AT_declaration
	.dwattr $C$DW$18, DW_AT_external
$C$DW$19	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$28)
$C$DW$20	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$28)
$C$DW$21	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$29)
	.dwendtag $C$DW$18


$C$DW$22	.dwtag  DW_TAG_subprogram, DW_AT_name("convol")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_convol")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$22, DW_AT_declaration
	.dwattr $C$DW$22, DW_AT_external
$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$28)
$C$DW$24	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$28)
$C$DW$25	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$28)
$C$DW$26	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$29)
$C$DW$27	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$29)
	.dwendtag $C$DW$22

;	/home/santiago/Research/Ti/C55_Tools/acp55 -@/tmp/48286at6RwJ 
	.sect	".text"
	.global	_gen_sinc

$C$DW$28	.dwtag  DW_TAG_subprogram, DW_AT_name("gen_sinc")
	.dwattr $C$DW$28, DW_AT_low_pc(_gen_sinc)
	.dwattr $C$DW$28, DW_AT_high_pc(0x00)
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_gen_sinc")
	.dwattr $C$DW$28, DW_AT_external
	.dwattr $C$DW$28, DW_AT_TI_begin_file("./coms.c")
	.dwattr $C$DW$28, DW_AT_TI_begin_line(0x19)
	.dwattr $C$DW$28, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$28, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "./coms.c",line 25,column 45,is_stmt,address _gen_sinc

	.dwfde $C$DW$CIE, _gen_sinc
$C$DW$29	.dwtag  DW_TAG_formal_parameter, DW_AT_name("input")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_reg17]
$C$DW$30	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: gen_sinc                                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,     *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_gen_sinc:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$31	.dwtag  DW_TAG_variable, DW_AT_name("input")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$32	.dwtag  DW_TAG_variable, DW_AT_name("size")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$33	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_bregx 0x24 3]
        MOV T0, *SP(#2) ; |25| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./coms.c",line 28,column 10,is_stmt
        MOV #0, *SP(#3) ; |28| 
	.dwpsn	file "./coms.c",line 28,column 17,is_stmt
        MOV *SP(#2), AR1 ; |28| 
        MOV *SP(#3), AR2 ; |28| 

        CMP AR2 >= AR1, TC1 ; |28| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L2,TC1 ; |28| 
                                        ; branchcc occurs ; |28| 
$C$L1:    
$C$DW$L$_gen_sinc$2$B:
	.dwpsn	file "./coms.c",line 29,column 9,is_stmt
        MOV AR2, T0
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(T0), T0 ; |29| 
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_name("__fltid")
	.dwattr $C$DW$34, DW_AT_TI_call
        CALL #__fltid ; |29| 
                                        ; call occurs [#__fltid] ; |29| 
$C$DW$35	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$35, DW_AT_low_pc(0x00)
	.dwattr $C$DW$35, DW_AT_name("_sin")
	.dwattr $C$DW$35, DW_AT_TI_call
        CALL #_sin ; |29| 
                                        ; call occurs [#_sin] ; |29| 
        MOV *SP(#3), T0 ; |29| 
        MOV dbl(*SP(#0)), XAR3
        MOV AC0, dbl(*SP(#4)) ; |29| 
        MOV *AR3(T0), T0 ; |29| 
$C$DW$36	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$36, DW_AT_low_pc(0x00)
	.dwattr $C$DW$36, DW_AT_name("__fltid")
	.dwattr $C$DW$36, DW_AT_TI_call
        CALL #__fltid ; |29| 
                                        ; call occurs [#__fltid] ; |29| 

        MOV dbl(*SP(#4)), AC0 ; |29| 
||      OR #0, AC0, AC1

$C$DW$37	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$37, DW_AT_low_pc(0x00)
	.dwattr $C$DW$37, DW_AT_name("__divd")
	.dwattr $C$DW$37, DW_AT_TI_call
        CALL #__divd ; |29| 
                                        ; call occurs [#__divd] ; |29| 
$C$DW$38	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$38, DW_AT_low_pc(0x00)
	.dwattr $C$DW$38, DW_AT_name("__fixdi")
	.dwattr $C$DW$38, DW_AT_TI_call
        CALL #__fixdi ; |29| 
                                        ; call occurs [#__fixdi] ; |29| 
        MOV dbl(*SP(#0)), XAR3

        MOV *SP(#3), T0 ; |29| 
||      MOV T0, AR1 ; |29| 

        MOV AR1, *AR3(T0) ; |29| 
	.dwpsn	file "./coms.c",line 28,column 26,is_stmt
        ADD #1, *SP(#3) ; |28| 
	.dwpsn	file "./coms.c",line 28,column 17,is_stmt
        MOV *SP(#2), AR1 ; |28| 
        MOV *SP(#3), AR2 ; |28| 

        CMP AR2 < AR1, TC1 ; |28| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L1,TC1 ; |28| 
                                        ; branchcc occurs ; |28| 
$C$DW$L$_gen_sinc$2$E:
	.dwpsn	file "./coms.c",line 32,column 1,is_stmt
$C$L2:    
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$39	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$39, DW_AT_low_pc(0x00)
	.dwattr $C$DW$39, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$40	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$40, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/coms.asm:$C$L1:1:1725637924")
	.dwattr $C$DW$40, DW_AT_TI_begin_file("./coms.c")
	.dwattr $C$DW$40, DW_AT_TI_begin_line(0x1c)
	.dwattr $C$DW$40, DW_AT_TI_end_line(0x1e)
$C$DW$41	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$41, DW_AT_low_pc($C$DW$L$_gen_sinc$2$B)
	.dwattr $C$DW$41, DW_AT_high_pc($C$DW$L$_gen_sinc$2$E)
	.dwendtag $C$DW$40

	.dwattr $C$DW$28, DW_AT_TI_end_file("./coms.c")
	.dwattr $C$DW$28, DW_AT_TI_end_line(0x20)
	.dwattr $C$DW$28, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$28

	.sect	".text"
	.global	_analog_digital_conversion

$C$DW$42	.dwtag  DW_TAG_subprogram, DW_AT_name("analog_digital_conversion")
	.dwattr $C$DW$42, DW_AT_low_pc(_analog_digital_conversion)
	.dwattr $C$DW$42, DW_AT_high_pc(0x00)
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_analog_digital_conversion")
	.dwattr $C$DW$42, DW_AT_external
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$42, DW_AT_TI_begin_file("./coms.c")
	.dwattr $C$DW$42, DW_AT_TI_begin_line(0x23)
	.dwattr $C$DW$42, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$42, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "./coms.c",line 35,column 91,is_stmt,address _analog_digital_conversion

	.dwfde $C$DW$CIE, _analog_digital_conversion
$C$DW$43	.dwtag  DW_TAG_formal_parameter, DW_AT_name("analog_sig")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_analog_sig")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_reg17]
$C$DW$44	.dwtag  DW_TAG_formal_parameter, DW_AT_name("digital_out")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_digital_out")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_reg19]
$C$DW$45	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: analog_digital_conversion                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,*
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_analog_digital_conversion:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$46	.dwtag  DW_TAG_variable, DW_AT_name("analog_sig")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_analog_sig")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$47	.dwtag  DW_TAG_variable, DW_AT_name("digital_out")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_digital_out")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$48	.dwtag  DW_TAG_variable, DW_AT_name("size")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$49	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_bregx 0x24 5]
        MOV T0, *SP(#4) ; |35| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./coms.c",line 38,column 10,is_stmt
        MOV #0, *SP(#5) ; |38| 
	.dwpsn	file "./coms.c",line 38,column 17,is_stmt
        MOV *SP(#5), AR2 ; |38| 
        MOV *SP(#4), AR1 ; |38| 

        CMP AR2 >= AR1, TC1 ; |38| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L6,TC1 ; |38| 
                                        ; branchcc occurs ; |38| 
$C$L3:    
$C$DW$L$_analog_digital_conversion$2$B:
	.dwpsn	file "./coms.c",line 39,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV AR2, T0
        SFTL T0, #1 ; |39| 
        MOV dbl(*($C$FL1)), AC1 ; |39| 
        MOV dbl(*AR3(T0)), AC0 ; |39| 
$C$DW$50	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$50, DW_AT_low_pc(0x00)
	.dwattr $C$DW$50, DW_AT_name("__cmpd")
	.dwattr $C$DW$50, DW_AT_TI_call
        CALL #__cmpd ; |39| 
                                        ; call occurs [#__cmpd] ; |39| 
        BCC $C$L4,T0 <= #0 ; |39| 
                                        ; branchcc occurs ; |39| 
$C$DW$L$_analog_digital_conversion$2$E:
$C$DW$L$_analog_digital_conversion$3$B:
	.dwpsn	file "./coms.c",line 40,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#5), T0 ; |40| 
        SFTL T0, #1 ; |40| 
        MOV dbl(*($C$FL2)), AC0 ; |40| 
        MOV AC0, dbl(*AR3(T0)) ; |40| 
	.dwpsn	file "./coms.c",line 41,column 9,is_stmt
        B $C$L5   ; |41| 
                                        ; branch occurs ; |41| 
$C$DW$L$_analog_digital_conversion$3$E:
$C$L4:    
$C$DW$L$_analog_digital_conversion$4$B:
	.dwpsn	file "./coms.c",line 42,column 14,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#5), T0 ; |42| 
        SFTL T0, #1 ; |42| 
        MOV dbl(*($C$FL3)), AC1 ; |42| 
        MOV dbl(*AR3(T0)), AC0 ; |42| 
$C$DW$51	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$51, DW_AT_low_pc(0x00)
	.dwattr $C$DW$51, DW_AT_name("__cmpd")
	.dwattr $C$DW$51, DW_AT_TI_call
        CALL #__cmpd ; |42| 
                                        ; call occurs [#__cmpd] ; |42| 
        BCC $C$L5,T0 >= #0 ; |42| 
                                        ; branchcc occurs ; |42| 
$C$DW$L$_analog_digital_conversion$4$E:
$C$DW$L$_analog_digital_conversion$5$B:
	.dwpsn	file "./coms.c",line 43,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#5), T0 ; |43| 
        SFTL T0, #1 ; |43| 
        MOV dbl(*($C$FL3)), AC0 ; |43| 
        MOV AC0, dbl(*AR3(T0)) ; |43| 
$C$DW$L$_analog_digital_conversion$5$E:
$C$L5:    
$C$DW$L$_analog_digital_conversion$6$B:
	.dwpsn	file "./coms.c",line 46,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#5), T0 ; |46| 
        SFTL T0, #1 ; |46| 
        MOV dbl(*($C$FL1)), AC1 ; |46| 
        MOV dbl(*AR3(T0)), AC0 ; |46| 
$C$DW$52	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$52, DW_AT_low_pc(0x00)
	.dwattr $C$DW$52, DW_AT_name("__divd")
	.dwattr $C$DW$52, DW_AT_TI_call
        CALL #__divd ; |46| 
                                        ; call occurs [#__divd] ; |46| 
        MOV dbl(*($C$FL4)), AC1 ; |46| 
$C$DW$53	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$53, DW_AT_low_pc(0x00)
	.dwattr $C$DW$53, DW_AT_name("__mpyd")
	.dwattr $C$DW$53, DW_AT_TI_call
        CALL #__mpyd ; |46| 
                                        ; call occurs [#__mpyd] ; |46| 
$C$DW$54	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$54, DW_AT_low_pc(0x00)
	.dwattr $C$DW$54, DW_AT_name("__fixdi")
	.dwattr $C$DW$54, DW_AT_TI_call
        CALL #__fixdi ; |46| 
                                        ; call occurs [#__fixdi] ; |46| 

        MOV *SP(#5), T0 ; |46| 
||      MOV T0, AR1 ; |46| 

        MOV dbl(*SP(#2)), XAR3
        MOV AR1, *AR3(T0) ; |46| 
	.dwpsn	file "./coms.c",line 38,column 27,is_stmt
        ADD #1, *SP(#5) ; |38| 
	.dwpsn	file "./coms.c",line 38,column 17,is_stmt
        MOV *SP(#4), AR1 ; |38| 
        MOV *SP(#5), AR2 ; |38| 

        CMP AR2 < AR1, TC1 ; |38| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L3,TC1 ; |38| 
                                        ; branchcc occurs ; |38| 
$C$DW$L$_analog_digital_conversion$6$E:
$C$L6:    
	.dwpsn	file "./coms.c",line 48,column 5,is_stmt
        MOV #0, T0
	.dwpsn	file "./coms.c",line 49,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$55	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$55, DW_AT_low_pc(0x00)
	.dwattr $C$DW$55, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$56	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$56, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/coms.asm:$C$L3:1:1725637924")
	.dwattr $C$DW$56, DW_AT_TI_begin_file("./coms.c")
	.dwattr $C$DW$56, DW_AT_TI_begin_line(0x26)
	.dwattr $C$DW$56, DW_AT_TI_end_line(0x2f)
$C$DW$57	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$57, DW_AT_low_pc($C$DW$L$_analog_digital_conversion$2$B)
	.dwattr $C$DW$57, DW_AT_high_pc($C$DW$L$_analog_digital_conversion$2$E)
$C$DW$58	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$58, DW_AT_low_pc($C$DW$L$_analog_digital_conversion$3$B)
	.dwattr $C$DW$58, DW_AT_high_pc($C$DW$L$_analog_digital_conversion$3$E)
$C$DW$59	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$59, DW_AT_low_pc($C$DW$L$_analog_digital_conversion$4$B)
	.dwattr $C$DW$59, DW_AT_high_pc($C$DW$L$_analog_digital_conversion$4$E)
$C$DW$60	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$60, DW_AT_low_pc($C$DW$L$_analog_digital_conversion$5$B)
	.dwattr $C$DW$60, DW_AT_high_pc($C$DW$L$_analog_digital_conversion$5$E)
$C$DW$61	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$61, DW_AT_low_pc($C$DW$L$_analog_digital_conversion$6$B)
	.dwattr $C$DW$61, DW_AT_high_pc($C$DW$L$_analog_digital_conversion$6$E)
	.dwendtag $C$DW$56

	.dwattr $C$DW$42, DW_AT_TI_end_file("./coms.c")
	.dwattr $C$DW$42, DW_AT_TI_end_line(0x31)
	.dwattr $C$DW$42, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$42

	.sect	".text"
	.global	_noise_reduction

$C$DW$62	.dwtag  DW_TAG_subprogram, DW_AT_name("noise_reduction")
	.dwattr $C$DW$62, DW_AT_low_pc(_noise_reduction)
	.dwattr $C$DW$62, DW_AT_high_pc(0x00)
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_noise_reduction")
	.dwattr $C$DW$62, DW_AT_external
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$62, DW_AT_TI_begin_file("./coms.c")
	.dwattr $C$DW$62, DW_AT_TI_begin_line(0x33)
	.dwattr $C$DW$62, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$62, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "./coms.c",line 51,column 67,is_stmt,address _noise_reduction

	.dwfde $C$DW$CIE, _noise_reduction
$C$DW$63	.dwtag  DW_TAG_formal_parameter, DW_AT_name("in")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$63, DW_AT_location[DW_OP_reg17]
$C$DW$64	.dwtag  DW_TAG_formal_parameter, DW_AT_name("out")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_out")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_reg19]
$C$DW$65	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: noise_reduction                                              *
;*                                                                             *
;*   Function Uses Regs : AC0,T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,SP,M40,SATA,    *
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (8 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_noise_reduction:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-9, SP
	.dwcfi	cfa_offset, 10
$C$DW$66	.dwtag  DW_TAG_variable, DW_AT_name("in")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$67	.dwtag  DW_TAG_variable, DW_AT_name("out")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_out")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$67, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$68	.dwtag  DW_TAG_variable, DW_AT_name("size")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$68, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$69	.dwtag  DW_TAG_variable, DW_AT_name("buf")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$69, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV T0, *SP(#4) ; |51| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./coms.c",line 54,column 15,is_stmt

        MOV *SP(#4), T0 ; |54| 
||      MOV #1, T1

$C$DW$70	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$70, DW_AT_low_pc(0x00)
	.dwattr $C$DW$70, DW_AT_name("_calloc")
	.dwattr $C$DW$70, DW_AT_TI_call
        CALL #_calloc ; |54| 
                                        ; call occurs [#_calloc] ; |54| 
        MOV XAR0, dbl(*SP(#6))
	.dwpsn	file "./coms.c",line 55,column 5,is_stmt
        MOV *SP(#4), T0 ; |55| 
        MOV dbl(*SP(#0)), XAR1
$C$DW$71	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$71, DW_AT_low_pc(0x00)
	.dwattr $C$DW$71, DW_AT_name("_memcpy")
	.dwattr $C$DW$71, DW_AT_TI_call
        CALL #_memcpy ; |55| 
                                        ; call occurs [#_memcpy] ; |55| 
	.dwpsn	file "./coms.c",line 58,column 5,is_stmt
        MOV *SP(#4), T0 ; |58| 
        MOV dbl(*SP(#6)), XAR0
$C$DW$72	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$72, DW_AT_low_pc(0x00)
	.dwattr $C$DW$72, DW_AT_name("_gen_sinc")
	.dwattr $C$DW$72, DW_AT_TI_call
        CALL #_gen_sinc ; |58| 
                                        ; call occurs [#_gen_sinc] ; |58| 
	.dwpsn	file "./coms.c",line 61,column 5,is_stmt
        MOV *SP(#4), AC0 ; |61| 
        MOV dbl(*SP(#0)), XAR0
        BFXTR #0xfffe, AC0, T0 ; |61| 
$C$DW$73	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$73, DW_AT_low_pc(0x00)
	.dwattr $C$DW$73, DW_AT_name("_cfft_NOSCALE")
	.dwattr $C$DW$73, DW_AT_TI_call
        CALL #_cfft_NOSCALE ; |61| 
                                        ; call occurs [#_cfft_NOSCALE] ; |61| 
        MOV *SP(#4), AC0 ; |61| 
        MOV dbl(*SP(#0)), XAR0
        BFXTR #0xfffe, AC0, T0 ; |61| 
        MOV dbl(*SP(#0)), XAR1
$C$DW$74	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$74, DW_AT_low_pc(0x00)
	.dwattr $C$DW$74, DW_AT_name("_cbrev")
	.dwattr $C$DW$74, DW_AT_TI_call
        CALL #_cbrev ; |61| 
                                        ; call occurs [#_cbrev] ; |61| 
        MOV *SP(#4), T0 ; |61| 
        MOV dbl(*SP(#0)), XAR0
$C$DW$75	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$75, DW_AT_low_pc(0x00)
	.dwattr $C$DW$75, DW_AT_name("_unpack")
	.dwattr $C$DW$75, DW_AT_TI_call
        CALL #_unpack ; |61| 
                                        ; call occurs [#_unpack] ; |61| 
	.dwpsn	file "./coms.c",line 63,column 5,is_stmt
        MOV *SP(#4), T0 ; |63| 
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#6)), XAR1
        MOV T0, T1 ; |63| 
        MOV dbl(*SP(#2)), XAR2
$C$DW$76	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$76, DW_AT_low_pc(0x00)
	.dwattr $C$DW$76, DW_AT_name("_convol")
	.dwattr $C$DW$76, DW_AT_TI_call
        CALL #_convol ; |63| 
                                        ; call occurs [#_convol] ; |63| 
	.dwpsn	file "./coms.c",line 66,column 5,is_stmt
        MOV #0, T0
	.dwpsn	file "./coms.c",line 67,column 1,is_stmt
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$77	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$77, DW_AT_low_pc(0x00)
	.dwattr $C$DW$77, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$62, DW_AT_TI_end_file("./coms.c")
	.dwattr $C$DW$62, DW_AT_TI_end_line(0x43)
	.dwattr $C$DW$62, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$62

	.sect	".text"
	.global	_communcation_test

$C$DW$78	.dwtag  DW_TAG_subprogram, DW_AT_name("communcation_test")
	.dwattr $C$DW$78, DW_AT_low_pc(_communcation_test)
	.dwattr $C$DW$78, DW_AT_high_pc(0x00)
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_communcation_test")
	.dwattr $C$DW$78, DW_AT_external
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$78, DW_AT_TI_begin_file("./coms.c")
	.dwattr $C$DW$78, DW_AT_TI_begin_line(0x46)
	.dwattr $C$DW$78, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$78, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "./coms.c",line 70,column 57,is_stmt,address _communcation_test

	.dwfde $C$DW$CIE, _communcation_test
$C$DW$79	.dwtag  DW_TAG_formal_parameter, DW_AT_name("input")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$79, DW_AT_location[DW_OP_reg17]
$C$DW$80	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$80, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: communcation_test                                            *
;*                                                                             *
;*   Function Uses Regs : AC0,T0,T1,AR0,XAR0,AR1,XAR1,SP,CARRY,M40,SATA,SATD,  *
;*                        RDM,FRCT,SMUL                                        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (10 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_communcation_test:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-11, SP
	.dwcfi	cfa_offset, 12
$C$DW$81	.dwtag  DW_TAG_variable, DW_AT_name("input")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$81, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$82	.dwtag  DW_TAG_variable, DW_AT_name("size")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$83	.dwtag  DW_TAG_variable, DW_AT_name("real_size")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_real_size")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$83, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$84	.dwtag  DW_TAG_variable, DW_AT_name("real_buf")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_real_buf")
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$84, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$85	.dwtag  DW_TAG_variable, DW_AT_name("out_buf")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_out_buf")
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$85, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$86	.dwtag  DW_TAG_variable, DW_AT_name("in_buf")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("_in_buf")
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$86, DW_AT_location[DW_OP_bregx 0x24 8]
        MOV T0, *SP(#2) ; |70| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./coms.c",line 72,column 13,is_stmt
        MOV *SP(#2), AC0 ; |72| 
        BFXTR #0x8000, AC0, AR1 ; |72| 
        ADD AC0, AR1 ; |72| 
        SFTS AR1, #-1 ; |72| 
        MOV AR1, *SP(#3) ; |72| 
	.dwpsn	file "./coms.c",line 75,column 13,is_stmt

        MOV *SP(#2), T0 ; |75| 
||      MOV #1, T1

$C$DW$87	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$87, DW_AT_low_pc(0x00)
	.dwattr $C$DW$87, DW_AT_name("_calloc")
	.dwattr $C$DW$87, DW_AT_TI_call
        CALL #_calloc ; |75| 
                                        ; call occurs [#_calloc] ; |75| 
        MOV XAR0, dbl(*SP(#4))
	.dwpsn	file "./coms.c",line 76,column 15,is_stmt

        MOV *SP(#3), T0 ; |76| 
||      MOV #1, T1

$C$DW$88	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$88, DW_AT_low_pc(0x00)
	.dwattr $C$DW$88, DW_AT_name("_calloc")
	.dwattr $C$DW$88, DW_AT_TI_call
        CALL #_calloc ; |76| 
                                        ; call occurs [#_calloc] ; |76| 
        MOV XAR0, dbl(*SP(#6))
	.dwpsn	file "./coms.c",line 78,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR0
        MOV *SP(#2), T0 ; |78| 
        MOV dbl(*SP(#0)), XAR1
$C$DW$89	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$89, DW_AT_low_pc(0x00)
	.dwattr $C$DW$89, DW_AT_name("_memcpy")
	.dwattr $C$DW$89, DW_AT_TI_call
        CALL #_memcpy ; |78| 
                                        ; call occurs [#_memcpy] ; |78| 
	.dwpsn	file "./coms.c",line 81,column 5,is_stmt
        MOV *SP(#3), T0 ; |81| 
        MOV dbl(*SP(#4)), XAR0
        MOV dbl(*SP(#6)), XAR1
$C$DW$90	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$90, DW_AT_low_pc(0x00)
	.dwattr $C$DW$90, DW_AT_name("_analog_digital_conversion")
	.dwattr $C$DW$90, DW_AT_TI_call
        CALL #_analog_digital_conversion ; |81| 
                                        ; call occurs [#_analog_digital_conversion] ; |81| 
	.dwpsn	file "./coms.c",line 82,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR0
$C$DW$91	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$91, DW_AT_low_pc(0x00)
	.dwattr $C$DW$91, DW_AT_name("_free")
	.dwattr $C$DW$91, DW_AT_TI_call
        CALL #_free ; |82| 
                                        ; call occurs [#_free] ; |82| 
	.dwpsn	file "./coms.c",line 84,column 15,is_stmt

        MOV #1, T1
||      MOV *SP(#3), T0 ; |84| 

$C$DW$92	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$92, DW_AT_low_pc(0x00)
	.dwattr $C$DW$92, DW_AT_name("_calloc")
	.dwattr $C$DW$92, DW_AT_TI_call
        CALL #_calloc ; |84| 
                                        ; call occurs [#_calloc] ; |84| 
        MOV XAR0, dbl(*SP(#8))
	.dwpsn	file "./coms.c",line 85,column 5,is_stmt
        MOV *SP(#3), T0 ; |85| 
        MOV dbl(*SP(#6)), XAR1
$C$DW$93	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$93, DW_AT_low_pc(0x00)
	.dwattr $C$DW$93, DW_AT_name("_memcpy")
	.dwattr $C$DW$93, DW_AT_TI_call
        CALL #_memcpy ; |85| 
                                        ; call occurs [#_memcpy] ; |85| 
	.dwpsn	file "./coms.c",line 86,column 5,is_stmt
        MOV *SP(#3), T0 ; |86| 
        MOV dbl(*SP(#8)), XAR0
        MOV dbl(*SP(#6)), XAR1
$C$DW$94	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$94, DW_AT_low_pc(0x00)
	.dwattr $C$DW$94, DW_AT_name("_noise_reduction")
	.dwattr $C$DW$94, DW_AT_TI_call
        CALL #_noise_reduction ; |86| 
                                        ; call occurs [#_noise_reduction] ; |86| 
	.dwpsn	file "./coms.c",line 89,column 5,is_stmt
        MOV dbl(*SP(#8)), XAR0
$C$DW$95	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$95, DW_AT_low_pc(0x00)
	.dwattr $C$DW$95, DW_AT_name("_free")
	.dwattr $C$DW$95, DW_AT_TI_call
        CALL #_free ; |89| 
                                        ; call occurs [#_free] ; |89| 
	.dwpsn	file "./coms.c",line 90,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR0
$C$DW$96	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$96, DW_AT_low_pc(0x00)
	.dwattr $C$DW$96, DW_AT_name("_free")
	.dwattr $C$DW$96, DW_AT_TI_call
        CALL #_free ; |90| 
                                        ; call occurs [#_free] ; |90| 
	.dwpsn	file "./coms.c",line 92,column 5,is_stmt
        MOV #0, T0
	.dwpsn	file "./coms.c",line 94,column 1,is_stmt
        AADD #11, SP
	.dwcfi	cfa_offset, 1
$C$DW$97	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$97, DW_AT_low_pc(0x00)
	.dwattr $C$DW$97, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$78, DW_AT_TI_end_file("./coms.c")
	.dwattr $C$DW$78, DW_AT_TI_end_line(0x5e)
	.dwattr $C$DW$78, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$78

;*******************************************************************************
;* FLOATING-POINT CONSTANTS                                                    *
;*******************************************************************************
	.sect	".const"
	.align	2
$C$FL1:	.xlong	0x41400000
	.align	2
$C$FL2:	.xlong	0x41400000
	.align	2
$C$FL3:	.xlong	0x00000000
	.align	2
$C$FL4:	.xlong	0x437f0000
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_calloc
	.global	_free
	.global	_sin
	.global	_cfft_NOSCALE
	.global	_unpack
	.global	_cbrev
	.global	_convol
	.global	__fltid
	.global	__divd
	.global	__fixdi
	.global	__cmpd
	.global	__mpyd
	.global	_memcpy

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x17)
$C$DW$98	.dwtag  DW_TAG_TI_far_type
$C$DW$T$19	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$98)
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
$C$DW$T$34	.dwtag  DW_TAG_typedef, DW_AT_name("int16_t")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)
$C$DW$T$35	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$35, DW_AT_address_class(0x17)
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
$C$DW$T$40	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$40, DW_AT_address_class(0x17)
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

$C$DW$99	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$99, DW_AT_location[DW_OP_reg0]
$C$DW$100	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$100, DW_AT_location[DW_OP_reg1]
$C$DW$101	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$101, DW_AT_location[DW_OP_reg2]
$C$DW$102	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$102, DW_AT_location[DW_OP_reg3]
$C$DW$103	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$103, DW_AT_location[DW_OP_reg4]
$C$DW$104	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$104, DW_AT_location[DW_OP_reg5]
$C$DW$105	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$105, DW_AT_location[DW_OP_reg6]
$C$DW$106	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$106, DW_AT_location[DW_OP_reg7]
$C$DW$107	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$107, DW_AT_location[DW_OP_reg8]
$C$DW$108	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$108, DW_AT_location[DW_OP_reg9]
$C$DW$109	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$109, DW_AT_location[DW_OP_reg10]
$C$DW$110	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$110, DW_AT_location[DW_OP_reg11]
$C$DW$111	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$111, DW_AT_location[DW_OP_reg12]
$C$DW$112	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$112, DW_AT_location[DW_OP_reg13]
$C$DW$113	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$113, DW_AT_location[DW_OP_reg14]
$C$DW$114	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$114, DW_AT_location[DW_OP_reg15]
$C$DW$115	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$115, DW_AT_location[DW_OP_reg16]
$C$DW$116	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$116, DW_AT_location[DW_OP_reg17]
$C$DW$117	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$117, DW_AT_location[DW_OP_reg18]
$C$DW$118	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$118, DW_AT_location[DW_OP_reg19]
$C$DW$119	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$119, DW_AT_location[DW_OP_reg20]
$C$DW$120	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$120, DW_AT_location[DW_OP_reg21]
$C$DW$121	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$121, DW_AT_location[DW_OP_reg22]
$C$DW$122	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$122, DW_AT_location[DW_OP_reg23]
$C$DW$123	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$123, DW_AT_location[DW_OP_reg24]
$C$DW$124	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$124, DW_AT_location[DW_OP_reg25]
$C$DW$125	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$125, DW_AT_location[DW_OP_reg26]
$C$DW$126	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$126, DW_AT_location[DW_OP_reg27]
$C$DW$127	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$127, DW_AT_location[DW_OP_reg28]
$C$DW$128	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$128, DW_AT_location[DW_OP_reg29]
$C$DW$129	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$129, DW_AT_location[DW_OP_reg30]
$C$DW$130	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$130, DW_AT_location[DW_OP_reg31]
$C$DW$131	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$131, DW_AT_location[DW_OP_regx 0x20]
$C$DW$132	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$132, DW_AT_location[DW_OP_regx 0x21]
$C$DW$133	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$133, DW_AT_location[DW_OP_regx 0x22]
$C$DW$134	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$134, DW_AT_location[DW_OP_regx 0x23]
$C$DW$135	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$135, DW_AT_location[DW_OP_regx 0x24]
$C$DW$136	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$136, DW_AT_location[DW_OP_regx 0x25]
$C$DW$137	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$137, DW_AT_location[DW_OP_regx 0x26]
$C$DW$138	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$138, DW_AT_location[DW_OP_regx 0x27]
$C$DW$139	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$139, DW_AT_location[DW_OP_regx 0x28]
$C$DW$140	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$140, DW_AT_location[DW_OP_regx 0x29]
$C$DW$141	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$141, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$142	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$142, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$143	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$143, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$144	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$144, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$145	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$145, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$146	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$146, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$147	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$147, DW_AT_location[DW_OP_regx 0x30]
$C$DW$148	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$148, DW_AT_location[DW_OP_regx 0x31]
$C$DW$149	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$149, DW_AT_location[DW_OP_regx 0x32]
$C$DW$150	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$150, DW_AT_location[DW_OP_regx 0x33]
$C$DW$151	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$151, DW_AT_location[DW_OP_regx 0x34]
$C$DW$152	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$152, DW_AT_location[DW_OP_regx 0x35]
$C$DW$153	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$153, DW_AT_location[DW_OP_regx 0x36]
$C$DW$154	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$154, DW_AT_location[DW_OP_regx 0x37]
$C$DW$155	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$155, DW_AT_location[DW_OP_regx 0x38]
$C$DW$156	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$156, DW_AT_location[DW_OP_regx 0x39]
$C$DW$157	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$157, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$158	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$158, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$159	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$159, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$160	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$160, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$161	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$161, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$162	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$162, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$163	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$163, DW_AT_location[DW_OP_regx 0x40]
$C$DW$164	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$164, DW_AT_location[DW_OP_regx 0x41]
$C$DW$165	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$165, DW_AT_location[DW_OP_regx 0x42]
$C$DW$166	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$166, DW_AT_location[DW_OP_regx 0x43]
$C$DW$167	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$167, DW_AT_location[DW_OP_regx 0x44]
$C$DW$168	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$168, DW_AT_location[DW_OP_regx 0x45]
$C$DW$169	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$169, DW_AT_location[DW_OP_regx 0x46]
$C$DW$170	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$170, DW_AT_location[DW_OP_regx 0x47]
$C$DW$171	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$171, DW_AT_location[DW_OP_regx 0x48]
$C$DW$172	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$172, DW_AT_location[DW_OP_regx 0x49]
$C$DW$173	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$173, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$174	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$174, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$175	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$175, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$176	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$176, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$177	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$177, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$178	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$178, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$179	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$179, DW_AT_location[DW_OP_regx 0x50]
$C$DW$180	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$180, DW_AT_location[DW_OP_regx 0x51]
$C$DW$181	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$181, DW_AT_location[DW_OP_regx 0x52]
$C$DW$182	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$182, DW_AT_location[DW_OP_regx 0x53]
$C$DW$183	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$183, DW_AT_location[DW_OP_regx 0x54]
$C$DW$184	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$184, DW_AT_location[DW_OP_regx 0x55]
$C$DW$185	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$185, DW_AT_location[DW_OP_regx 0x56]
$C$DW$186	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$186, DW_AT_location[DW_OP_regx 0x57]
$C$DW$187	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$187, DW_AT_location[DW_OP_regx 0x58]
$C$DW$188	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$188, DW_AT_location[DW_OP_regx 0x59]
$C$DW$189	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$189, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$190	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$190, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

