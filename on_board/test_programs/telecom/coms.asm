;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                        Unix v4.4.1 *
;* Date/Time created: Tue Sep 10 19:12:51 2024                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("./telecom/coms.c")
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
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$73)
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$74)
	.dwendtag $C$DW$1


$C$DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("calloc")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_calloc")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$74)
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$74)
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
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$81)
$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$82)
	.dwendtag $C$DW$12


$C$DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("unpack")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_unpack")
	.dwattr $C$DW$15, DW_AT_declaration
	.dwattr $C$DW$15, DW_AT_external
$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$81)
$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$82)
	.dwendtag $C$DW$15


$C$DW$18	.dwtag  DW_TAG_subprogram, DW_AT_name("cbrev")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_cbrev")
	.dwattr $C$DW$18, DW_AT_declaration
	.dwattr $C$DW$18, DW_AT_external
$C$DW$19	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$81)
$C$DW$20	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$81)
$C$DW$21	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$82)
	.dwendtag $C$DW$18


$C$DW$22	.dwtag  DW_TAG_subprogram, DW_AT_name("convol")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_convol")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$22, DW_AT_declaration
	.dwattr $C$DW$22, DW_AT_external
$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$81)
$C$DW$24	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$81)
$C$DW$25	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$81)
$C$DW$26	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$82)
$C$DW$27	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$82)
	.dwendtag $C$DW$22


$C$DW$28	.dwtag  DW_TAG_subprogram, DW_AT_name("LCD_init")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_LCD_init")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$28, DW_AT_declaration
	.dwattr $C$DW$28, DW_AT_external

$C$DW$29	.dwtag  DW_TAG_subprogram, DW_AT_name("LCD_open")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_LCD_open")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$29, DW_AT_declaration
	.dwattr $C$DW$29, DW_AT_external
$C$DW$30	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$19)
$C$DW$31	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$66)
$C$DW$32	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$69)
	.dwendtag $C$DW$29


$C$DW$33	.dwtag  DW_TAG_subprogram, DW_AT_name("LCD_setup")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_LCD_setup")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$33, DW_AT_declaration
	.dwattr $C$DW$33, DW_AT_external
$C$DW$34	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$67)
$C$DW$35	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$56)
	.dwendtag $C$DW$33


$C$DW$36	.dwtag  DW_TAG_subprogram, DW_AT_name("LCD_close")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_LCD_close")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$36, DW_AT_declaration
	.dwattr $C$DW$36, DW_AT_external
$C$DW$37	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$67)
	.dwendtag $C$DW$36


$C$DW$38	.dwtag  DW_TAG_subprogram, DW_AT_name("delay")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_delay")
	.dwattr $C$DW$38, DW_AT_declaration
	.dwattr $C$DW$38, DW_AT_external
$C$DW$39	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$19)
	.dwendtag $C$DW$38


$C$DW$40	.dwtag  DW_TAG_subprogram, DW_AT_name("lcdTextPrintDMA")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_lcdTextPrintDMA")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$40, DW_AT_declaration
	.dwattr $C$DW$40, DW_AT_external
$C$DW$41	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$93)
$C$DW$42	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$19)
$C$DW$43	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$19)
	.dwendtag $C$DW$40


$C$DW$44	.dwtag  DW_TAG_subprogram, DW_AT_name("lcdClearLine")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_lcdClearLine")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$44, DW_AT_declaration
	.dwattr $C$DW$44, DW_AT_external
$C$DW$45	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$19)
$C$DW$46	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$19)
	.dwendtag $C$DW$44


$C$DW$47	.dwtag  DW_TAG_subprogram, DW_AT_name("lcdClearPanel")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_lcdClearPanel")
	.dwattr $C$DW$47, DW_AT_declaration
	.dwattr $C$DW$47, DW_AT_external
$C$DW$48	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$19)
	.dwendtag $C$DW$47


$C$DW$49	.dwtag  DW_TAG_subprogram, DW_AT_name("panelSetup")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_panelSetup")
	.dwattr $C$DW$49, DW_AT_declaration
	.dwattr $C$DW$49, DW_AT_external
$C$DW$50	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$19)
	.dwendtag $C$DW$49


$C$DW$51	.dwtag  DW_TAG_subprogram, DW_AT_name("SYS_setEBSR")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_SYS_setEBSR")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$51, DW_AT_declaration
	.dwattr $C$DW$51, DW_AT_external
$C$DW$52	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$54)
$C$DW$53	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$50)
	.dwendtag $C$DW$51

	.global	_hLcdc
	.bss	_hLcdc,2,0,2
$C$DW$54	.dwtag  DW_TAG_variable, DW_AT_name("hLcdc")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_hLcdc")
	.dwattr $C$DW$54, DW_AT_location[DW_OP_addr _hLcdc]
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$54, DW_AT_external
;	/home/santiago/Research/Ti/C55_Tools/acp55 -@/tmp/362443SXWv0 
	.sect	".text"
	.global	_gen_sinc

$C$DW$55	.dwtag  DW_TAG_subprogram, DW_AT_name("gen_sinc")
	.dwattr $C$DW$55, DW_AT_low_pc(_gen_sinc)
	.dwattr $C$DW$55, DW_AT_high_pc(0x00)
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_gen_sinc")
	.dwattr $C$DW$55, DW_AT_external
	.dwattr $C$DW$55, DW_AT_TI_begin_file("./telecom/coms.c")
	.dwattr $C$DW$55, DW_AT_TI_begin_line(0x22)
	.dwattr $C$DW$55, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$55, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "./telecom/coms.c",line 34,column 45,is_stmt,address _gen_sinc

	.dwfde $C$DW$CIE, _gen_sinc
$C$DW$56	.dwtag  DW_TAG_formal_parameter, DW_AT_name("input")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$56, DW_AT_location[DW_OP_reg17]
$C$DW$57	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_reg12]
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
$C$DW$58	.dwtag  DW_TAG_variable, DW_AT_name("input")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$59	.dwtag  DW_TAG_variable, DW_AT_name("size")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$60	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_bregx 0x24 3]
        MOV T0, *SP(#2) ; |34| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./telecom/coms.c",line 37,column 10,is_stmt
        MOV #0, *SP(#3) ; |37| 
	.dwpsn	file "./telecom/coms.c",line 37,column 17,is_stmt
        MOV *SP(#2), AR1 ; |37| 
        MOV *SP(#3), AR2 ; |37| 
        CMP AR2 >= AR1, TC1 ; |37| 
        BCC $C$L2,TC1 ; |37| 
                                        ; branchcc occurs ; |37| 
$C$L1:    
$C$DW$L$_gen_sinc$2$B:
	.dwpsn	file "./telecom/coms.c",line 38,column 9,is_stmt
        MOV AR2, T0
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(T0), T0 ; |38| 
$C$DW$61	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$61, DW_AT_low_pc(0x00)
	.dwattr $C$DW$61, DW_AT_name("__fltid")
	.dwattr $C$DW$61, DW_AT_TI_call
        CALL #__fltid ; |38| 
                                        ; call occurs [#__fltid] ; |38| 
$C$DW$62	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$62, DW_AT_low_pc(0x00)
	.dwattr $C$DW$62, DW_AT_name("_sin")
	.dwattr $C$DW$62, DW_AT_TI_call
        CALL #_sin ; |38| 
                                        ; call occurs [#_sin] ; |38| 
        MOV *SP(#3), T0 ; |38| 
        MOV dbl(*SP(#0)), XAR3
        MOV AC0, dbl(*SP(#4)) ; |38| 
        MOV *AR3(T0), T0 ; |38| 
$C$DW$63	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$63, DW_AT_low_pc(0x00)
	.dwattr $C$DW$63, DW_AT_name("__fltid")
	.dwattr $C$DW$63, DW_AT_TI_call
        CALL #__fltid ; |38| 
                                        ; call occurs [#__fltid] ; |38| 

        MOV dbl(*SP(#4)), AC0 ; |38| 
||      OR #0, AC0, AC1

$C$DW$64	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$64, DW_AT_low_pc(0x00)
	.dwattr $C$DW$64, DW_AT_name("__divd")
	.dwattr $C$DW$64, DW_AT_TI_call
        CALL #__divd ; |38| 
                                        ; call occurs [#__divd] ; |38| 
$C$DW$65	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$65, DW_AT_low_pc(0x00)
	.dwattr $C$DW$65, DW_AT_name("__fixdi")
	.dwattr $C$DW$65, DW_AT_TI_call
        CALL #__fixdi ; |38| 
                                        ; call occurs [#__fixdi] ; |38| 
        MOV dbl(*SP(#0)), XAR3

        MOV *SP(#3), T0 ; |38| 
||      MOV T0, AR1 ; |38| 

        MOV AR1, *AR3(T0) ; |38| 
	.dwpsn	file "./telecom/coms.c",line 37,column 26,is_stmt
        ADD #1, *SP(#3) ; |37| 
	.dwpsn	file "./telecom/coms.c",line 37,column 17,is_stmt
        MOV *SP(#2), AR1 ; |37| 
        MOV *SP(#3), AR2 ; |37| 
        CMP AR2 < AR1, TC1 ; |37| 
        BCC $C$L1,TC1 ; |37| 
                                        ; branchcc occurs ; |37| 
$C$DW$L$_gen_sinc$2$E:
	.dwpsn	file "./telecom/coms.c",line 41,column 1,is_stmt
$C$L2:    
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$66	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$66, DW_AT_low_pc(0x00)
	.dwattr $C$DW$66, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$67	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$67, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/coms.asm:$C$L1:1:1726009971")
	.dwattr $C$DW$67, DW_AT_TI_begin_file("./telecom/coms.c")
	.dwattr $C$DW$67, DW_AT_TI_begin_line(0x25)
	.dwattr $C$DW$67, DW_AT_TI_end_line(0x27)
$C$DW$68	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$68, DW_AT_low_pc($C$DW$L$_gen_sinc$2$B)
	.dwattr $C$DW$68, DW_AT_high_pc($C$DW$L$_gen_sinc$2$E)
	.dwendtag $C$DW$67

	.dwattr $C$DW$55, DW_AT_TI_end_file("./telecom/coms.c")
	.dwattr $C$DW$55, DW_AT_TI_end_line(0x29)
	.dwattr $C$DW$55, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$55

	.sect	".text"
	.global	_analog_digital_conversion

$C$DW$69	.dwtag  DW_TAG_subprogram, DW_AT_name("analog_digital_conversion")
	.dwattr $C$DW$69, DW_AT_low_pc(_analog_digital_conversion)
	.dwattr $C$DW$69, DW_AT_high_pc(0x00)
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_analog_digital_conversion")
	.dwattr $C$DW$69, DW_AT_external
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$69, DW_AT_TI_begin_file("./telecom/coms.c")
	.dwattr $C$DW$69, DW_AT_TI_begin_line(0x2c)
	.dwattr $C$DW$69, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$69, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "./telecom/coms.c",line 44,column 91,is_stmt,address _analog_digital_conversion

	.dwfde $C$DW$CIE, _analog_digital_conversion
$C$DW$70	.dwtag  DW_TAG_formal_parameter, DW_AT_name("analog_sig")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_analog_sig")
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$111)
	.dwattr $C$DW$70, DW_AT_location[DW_OP_reg17]
$C$DW$71	.dwtag  DW_TAG_formal_parameter, DW_AT_name("digital_out")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_digital_out")
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$71, DW_AT_location[DW_OP_reg19]
$C$DW$72	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$72, DW_AT_location[DW_OP_reg12]
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
$C$DW$73	.dwtag  DW_TAG_variable, DW_AT_name("analog_sig")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_analog_sig")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$111)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$74	.dwtag  DW_TAG_variable, DW_AT_name("digital_out")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_digital_out")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$75	.dwtag  DW_TAG_variable, DW_AT_name("size")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$75, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$76	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$76, DW_AT_location[DW_OP_bregx 0x24 5]
        MOV T0, *SP(#4) ; |44| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./telecom/coms.c",line 47,column 10,is_stmt
        MOV #0, *SP(#5) ; |47| 
	.dwpsn	file "./telecom/coms.c",line 47,column 17,is_stmt
        MOV *SP(#5), AR2 ; |47| 
        MOV *SP(#4), AR1 ; |47| 
        CMP AR2 >= AR1, TC1 ; |47| 
        BCC $C$L6,TC1 ; |47| 
                                        ; branchcc occurs ; |47| 
$C$L3:    
$C$DW$L$_analog_digital_conversion$2$B:
	.dwpsn	file "./telecom/coms.c",line 48,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV AR2, T0
        SFTL T0, #1 ; |48| 
        MOV dbl(*($C$FL1)), AC1 ; |48| 
        MOV dbl(*AR3(T0)), AC0 ; |48| 
$C$DW$77	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$77, DW_AT_low_pc(0x00)
	.dwattr $C$DW$77, DW_AT_name("__cmpd")
	.dwattr $C$DW$77, DW_AT_TI_call
        CALL #__cmpd ; |48| 
                                        ; call occurs [#__cmpd] ; |48| 
        BCC $C$L4,T0 <= #0 ; |48| 
                                        ; branchcc occurs ; |48| 
$C$DW$L$_analog_digital_conversion$2$E:
$C$DW$L$_analog_digital_conversion$3$B:
	.dwpsn	file "./telecom/coms.c",line 49,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#5), T0 ; |49| 
        SFTL T0, #1 ; |49| 
        MOV dbl(*($C$FL2)), AC0 ; |49| 
        MOV AC0, dbl(*AR3(T0)) ; |49| 
	.dwpsn	file "./telecom/coms.c",line 50,column 9,is_stmt
        B $C$L5   ; |50| 
                                        ; branch occurs ; |50| 
$C$DW$L$_analog_digital_conversion$3$E:
$C$L4:    
$C$DW$L$_analog_digital_conversion$4$B:
	.dwpsn	file "./telecom/coms.c",line 51,column 14,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#5), T0 ; |51| 
        SFTL T0, #1 ; |51| 
        MOV dbl(*($C$FL3)), AC1 ; |51| 
        MOV dbl(*AR3(T0)), AC0 ; |51| 
$C$DW$78	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$78, DW_AT_low_pc(0x00)
	.dwattr $C$DW$78, DW_AT_name("__cmpd")
	.dwattr $C$DW$78, DW_AT_TI_call
        CALL #__cmpd ; |51| 
                                        ; call occurs [#__cmpd] ; |51| 
        BCC $C$L5,T0 >= #0 ; |51| 
                                        ; branchcc occurs ; |51| 
$C$DW$L$_analog_digital_conversion$4$E:
$C$DW$L$_analog_digital_conversion$5$B:
	.dwpsn	file "./telecom/coms.c",line 52,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#5), T0 ; |52| 
        SFTL T0, #1 ; |52| 
        MOV dbl(*($C$FL3)), AC0 ; |52| 
        MOV AC0, dbl(*AR3(T0)) ; |52| 
$C$DW$L$_analog_digital_conversion$5$E:
$C$L5:    
$C$DW$L$_analog_digital_conversion$6$B:
	.dwpsn	file "./telecom/coms.c",line 55,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#5), T0 ; |55| 
        SFTL T0, #1 ; |55| 
        MOV dbl(*($C$FL1)), AC1 ; |55| 
        MOV dbl(*AR3(T0)), AC0 ; |55| 
$C$DW$79	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$79, DW_AT_low_pc(0x00)
	.dwattr $C$DW$79, DW_AT_name("__divd")
	.dwattr $C$DW$79, DW_AT_TI_call
        CALL #__divd ; |55| 
                                        ; call occurs [#__divd] ; |55| 
        MOV dbl(*($C$FL4)), AC1 ; |55| 
$C$DW$80	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$80, DW_AT_low_pc(0x00)
	.dwattr $C$DW$80, DW_AT_name("__mpyd")
	.dwattr $C$DW$80, DW_AT_TI_call
        CALL #__mpyd ; |55| 
                                        ; call occurs [#__mpyd] ; |55| 
$C$DW$81	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$81, DW_AT_low_pc(0x00)
	.dwattr $C$DW$81, DW_AT_name("__fixdi")
	.dwattr $C$DW$81, DW_AT_TI_call
        CALL #__fixdi ; |55| 
                                        ; call occurs [#__fixdi] ; |55| 

        MOV *SP(#5), T0 ; |55| 
||      MOV T0, AR1 ; |55| 

        MOV dbl(*SP(#2)), XAR3
        MOV AR1, *AR3(T0) ; |55| 
	.dwpsn	file "./telecom/coms.c",line 47,column 27,is_stmt
        ADD #1, *SP(#5) ; |47| 
	.dwpsn	file "./telecom/coms.c",line 47,column 17,is_stmt
        MOV *SP(#4), AR1 ; |47| 
        MOV *SP(#5), AR2 ; |47| 
        CMP AR2 < AR1, TC1 ; |47| 
        BCC $C$L3,TC1 ; |47| 
                                        ; branchcc occurs ; |47| 
$C$DW$L$_analog_digital_conversion$6$E:
$C$L6:    
	.dwpsn	file "./telecom/coms.c",line 57,column 5,is_stmt
        MOV #0, T0
	.dwpsn	file "./telecom/coms.c",line 58,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$82	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$82, DW_AT_low_pc(0x00)
	.dwattr $C$DW$82, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$83	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$83, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/coms.asm:$C$L3:1:1726009971")
	.dwattr $C$DW$83, DW_AT_TI_begin_file("./telecom/coms.c")
	.dwattr $C$DW$83, DW_AT_TI_begin_line(0x2f)
	.dwattr $C$DW$83, DW_AT_TI_end_line(0x38)
$C$DW$84	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$84, DW_AT_low_pc($C$DW$L$_analog_digital_conversion$2$B)
	.dwattr $C$DW$84, DW_AT_high_pc($C$DW$L$_analog_digital_conversion$2$E)
$C$DW$85	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$85, DW_AT_low_pc($C$DW$L$_analog_digital_conversion$3$B)
	.dwattr $C$DW$85, DW_AT_high_pc($C$DW$L$_analog_digital_conversion$3$E)
$C$DW$86	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$86, DW_AT_low_pc($C$DW$L$_analog_digital_conversion$4$B)
	.dwattr $C$DW$86, DW_AT_high_pc($C$DW$L$_analog_digital_conversion$4$E)
$C$DW$87	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$87, DW_AT_low_pc($C$DW$L$_analog_digital_conversion$5$B)
	.dwattr $C$DW$87, DW_AT_high_pc($C$DW$L$_analog_digital_conversion$5$E)
$C$DW$88	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$88, DW_AT_low_pc($C$DW$L$_analog_digital_conversion$6$B)
	.dwattr $C$DW$88, DW_AT_high_pc($C$DW$L$_analog_digital_conversion$6$E)
	.dwendtag $C$DW$83

	.dwattr $C$DW$69, DW_AT_TI_end_file("./telecom/coms.c")
	.dwattr $C$DW$69, DW_AT_TI_end_line(0x3a)
	.dwattr $C$DW$69, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$69

	.sect	".text"
	.global	_noise_reduction

$C$DW$89	.dwtag  DW_TAG_subprogram, DW_AT_name("noise_reduction")
	.dwattr $C$DW$89, DW_AT_low_pc(_noise_reduction)
	.dwattr $C$DW$89, DW_AT_high_pc(0x00)
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_noise_reduction")
	.dwattr $C$DW$89, DW_AT_external
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$89, DW_AT_TI_begin_file("./telecom/coms.c")
	.dwattr $C$DW$89, DW_AT_TI_begin_line(0x3c)
	.dwattr $C$DW$89, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$89, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "./telecom/coms.c",line 60,column 67,is_stmt,address _noise_reduction

	.dwfde $C$DW$CIE, _noise_reduction
$C$DW$90	.dwtag  DW_TAG_formal_parameter, DW_AT_name("in")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$90, DW_AT_location[DW_OP_reg17]
$C$DW$91	.dwtag  DW_TAG_formal_parameter, DW_AT_name("out")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_out")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$91, DW_AT_location[DW_OP_reg19]
$C$DW$92	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_reg12]
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
$C$DW$93	.dwtag  DW_TAG_variable, DW_AT_name("in")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$93, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$94	.dwtag  DW_TAG_variable, DW_AT_name("out")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("_out")
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$94, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$95	.dwtag  DW_TAG_variable, DW_AT_name("size")
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$95, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$96	.dwtag  DW_TAG_variable, DW_AT_name("buf")
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$96, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV T0, *SP(#4) ; |60| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./telecom/coms.c",line 63,column 15,is_stmt
        MOV *SP(#4), T0 ; |63| 
$C$DW$97	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$97, DW_AT_low_pc(0x00)
	.dwattr $C$DW$97, DW_AT_name("_calloc")
	.dwattr $C$DW$97, DW_AT_TI_call

        CALL #_calloc ; |63| 
||      MOV #1, T1

                                        ; call occurs [#_calloc] ; |63| 
        MOV XAR0, dbl(*SP(#6))
	.dwpsn	file "./telecom/coms.c",line 64,column 5,is_stmt
        MOV *SP(#4), T0 ; |64| 
        MOV dbl(*SP(#0)), XAR1
$C$DW$98	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$98, DW_AT_low_pc(0x00)
	.dwattr $C$DW$98, DW_AT_name("_memcpy")
	.dwattr $C$DW$98, DW_AT_TI_call
        CALL #_memcpy ; |64| 
                                        ; call occurs [#_memcpy] ; |64| 
	.dwpsn	file "./telecom/coms.c",line 67,column 5,is_stmt
        MOV *SP(#4), T0 ; |67| 
        MOV dbl(*SP(#6)), XAR0
$C$DW$99	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$99, DW_AT_low_pc(0x00)
	.dwattr $C$DW$99, DW_AT_name("_gen_sinc")
	.dwattr $C$DW$99, DW_AT_TI_call
        CALL #_gen_sinc ; |67| 
                                        ; call occurs [#_gen_sinc] ; |67| 
	.dwpsn	file "./telecom/coms.c",line 70,column 5,is_stmt
        MOV *SP(#4), AC0 ; |70| 
        MOV dbl(*SP(#0)), XAR0
        BFXTR #0xfffe, AC0, T0 ; |70| 
$C$DW$100	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$100, DW_AT_low_pc(0x00)
	.dwattr $C$DW$100, DW_AT_name("_cfft_NOSCALE")
	.dwattr $C$DW$100, DW_AT_TI_call
        CALL #_cfft_NOSCALE ; |70| 
                                        ; call occurs [#_cfft_NOSCALE] ; |70| 
        MOV *SP(#4), AC0 ; |70| 
        MOV dbl(*SP(#0)), XAR0
        BFXTR #0xfffe, AC0, T0 ; |70| 
        MOV dbl(*SP(#0)), XAR1
$C$DW$101	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$101, DW_AT_low_pc(0x00)
	.dwattr $C$DW$101, DW_AT_name("_cbrev")
	.dwattr $C$DW$101, DW_AT_TI_call
        CALL #_cbrev ; |70| 
                                        ; call occurs [#_cbrev] ; |70| 
        MOV *SP(#4), T0 ; |70| 
        MOV dbl(*SP(#0)), XAR0
$C$DW$102	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$102, DW_AT_low_pc(0x00)
	.dwattr $C$DW$102, DW_AT_name("_unpack")
	.dwattr $C$DW$102, DW_AT_TI_call
        CALL #_unpack ; |70| 
                                        ; call occurs [#_unpack] ; |70| 
	.dwpsn	file "./telecom/coms.c",line 72,column 5,is_stmt
        MOV *SP(#4), T0 ; |72| 
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#6)), XAR1
        MOV dbl(*SP(#2)), XAR2
$C$DW$103	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$103, DW_AT_low_pc(0x00)
	.dwattr $C$DW$103, DW_AT_name("_convol")
	.dwattr $C$DW$103, DW_AT_TI_call

        CALL #_convol ; |72| 
||      MOV T0, T1 ; |72| 

                                        ; call occurs [#_convol] ; |72| 
	.dwpsn	file "./telecom/coms.c",line 75,column 5,is_stmt
        MOV #0, T0
	.dwpsn	file "./telecom/coms.c",line 76,column 1,is_stmt
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$104	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$104, DW_AT_low_pc(0x00)
	.dwattr $C$DW$104, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$89, DW_AT_TI_end_file("./telecom/coms.c")
	.dwattr $C$DW$89, DW_AT_TI_end_line(0x4c)
	.dwattr $C$DW$89, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$89

	.sect	".text"
	.global	_CSL_lcdcTextDisplayTest

$C$DW$105	.dwtag  DW_TAG_subprogram, DW_AT_name("CSL_lcdcTextDisplayTest")
	.dwattr $C$DW$105, DW_AT_low_pc(_CSL_lcdcTextDisplayTest)
	.dwattr $C$DW$105, DW_AT_high_pc(0x00)
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_CSL_lcdcTextDisplayTest")
	.dwattr $C$DW$105, DW_AT_external
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$105, DW_AT_TI_begin_file("./telecom/coms.c")
	.dwattr $C$DW$105, DW_AT_TI_begin_line(0x4d)
	.dwattr $C$DW$105, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$105, DW_AT_TI_max_frame_size(0x30)
	.dwpsn	file "./telecom/coms.c",line 78,column 1,is_stmt,address _CSL_lcdcTextDisplayTest

	.dwfde $C$DW$CIE, _CSL_lcdcTextDisplayTest
$C$DW$106	.dwtag  DW_TAG_formal_parameter, DW_AT_name("input")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$106, DW_AT_location[DW_OP_reg17]
$C$DW$107	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$107, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: CSL_lcdcTextDisplayTest                                      *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,*
;*                        CSR,RPTC,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL       *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 48 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (46 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_CSL_lcdcTextDisplayTest:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-47, SP
	.dwcfi	cfa_offset, 48
$C$DW$108	.dwtag  DW_TAG_variable, DW_AT_name("input")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$108, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$109	.dwtag  DW_TAG_variable, DW_AT_name("size")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$109, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$110	.dwtag  DW_TAG_variable, DW_AT_name("retVal")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_retVal")
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$110, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$111	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$111, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$112	.dwtag  DW_TAG_variable, DW_AT_name("lcdcObj")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_lcdcObj")
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$112, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$113	.dwtag  DW_TAG_variable, DW_AT_name("lcdcLiddSetup")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_lcdcLiddSetup")
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$113, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$114	.dwtag  DW_TAG_variable, DW_AT_name("configLIDD")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_configLIDD")
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$114, DW_AT_location[DW_OP_bregx 0x24 32]
$C$DW$115	.dwtag  DW_TAG_variable, DW_AT_name("timingCs0LIDD")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_timingCs0LIDD")
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$115, DW_AT_location[DW_OP_bregx 0x24 38]
$C$DW$116	.dwtag  DW_TAG_variable, DW_AT_name("lineCount")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("_lineCount")
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$116, DW_AT_location[DW_OP_bregx 0x24 45]
        MOV T0, *SP(#2) ; |78| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./telecom/coms.c",line 89,column 5,is_stmt
        MOV #3, *SP(#32) ; |89| 
	.dwpsn	file "./telecom/coms.c",line 90,column 5,is_stmt
        MOV #1, *SP(#33) ; |90| 
	.dwpsn	file "./telecom/coms.c",line 91,column 5,is_stmt
        MOV #0, *SP(#34) ; |91| 
	.dwpsn	file "./telecom/coms.c",line 92,column 5,is_stmt
        MOV #0, *SP(#35) ; |92| 
	.dwpsn	file "./telecom/coms.c",line 93,column 5,is_stmt
        MOV #0, *SP(#36) ; |93| 
	.dwpsn	file "./telecom/coms.c",line 94,column 5,is_stmt
        MOV #3, *SP(#37) ; |94| 
	.dwpsn	file "./telecom/coms.c",line 96,column 5,is_stmt
        MOV #31, *SP(#38) ; |96| 
	.dwpsn	file "./telecom/coms.c",line 97,column 5,is_stmt
        MOV #63, *SP(#39) ; |97| 
	.dwpsn	file "./telecom/coms.c",line 98,column 5,is_stmt
        MOV #15, *SP(#40) ; |98| 
	.dwpsn	file "./telecom/coms.c",line 99,column 5,is_stmt
        MOV #31, *SP(#41) ; |99| 
	.dwpsn	file "./telecom/coms.c",line 100,column 5,is_stmt
        MOV #63, *SP(#42) ; |100| 
	.dwpsn	file "./telecom/coms.c",line 101,column 5,is_stmt
        MOV #15, *SP(#43) ; |101| 
	.dwpsn	file "./telecom/coms.c",line 102,column 5,is_stmt
        MOV #1, *SP(#44) ; |102| 
	.dwpsn	file "./telecom/coms.c",line 105,column 5,is_stmt
        AMAR *SP(#10), XAR2

        RPT #5    ; |105| 
||      AMAR *SP(#32), XAR3

                                            ; loop starts ; |105| 
$C$L7:    
$C$DW$L$_CSL_lcdcTextDisplayTest$2$B:
            MOV *AR3+, *AR2+ ; |105| 
                                        ; loop ends ; |105| 
$C$DW$L$_CSL_lcdcTextDisplayTest$2$E:
$C$L8:    
	.dwpsn	file "./telecom/coms.c",line 107,column 5,is_stmt
        MOV #0, *SP(#23) ; |107| 
	.dwpsn	file "./telecom/coms.c",line 109,column 5,is_stmt
        AMAR *SP(#16), XAR2

        RPT #6    ; |109| 
||      AMAR *SP(#38), XAR3

                                            ; loop starts ; |109| 
$C$L9:    
$C$DW$L$_CSL_lcdcTextDisplayTest$4$B:
            MOV *AR3+, *AR2+ ; |109| 
                                        ; loop ends ; |109| 
$C$DW$L$_CSL_lcdcTextDisplayTest$4$E:
$C$L10:    
	.dwpsn	file "./telecom/coms.c",line 111,column 5,is_stmt
        MOV #0, AC0 ; |111| 
        MOV AC0, dbl(*SP(#8))
	.dwpsn	file "./telecom/coms.c",line 114,column 5,is_stmt
$C$DW$117	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$117, DW_AT_low_pc(0x00)
	.dwattr $C$DW$117, DW_AT_name("_LCD_init")
	.dwattr $C$DW$117, DW_AT_TI_call
        CALL #_LCD_init ; |114| 
                                        ; call occurs [#_LCD_init] ; |114| 
        MOV T0, *SP(#4) ; |114| 
	.dwpsn	file "./telecom/coms.c",line 115,column 2,is_stmt
        MOV T0, AR1
        BCC $C$L17,AR1 != #0 ; |115| 
                                        ; branchcc occurs ; |115| 
	.dwpsn	file "./telecom/coms.c",line 118,column 3,is_stmt
	.dwpsn	file "./telecom/coms.c",line 126,column 2,is_stmt
        MOV *port(#7168), AR1 ; |126| 
        AND #0x8fff, AR1, AC0 ; |126| 
        BSET @#13, AC0 ; |126| 
        MOV AC0, *port(#7168) ; |126| 
	.dwpsn	file "./telecom/coms.c",line 127,column 2,is_stmt
        MOV *port(#7168), AR1 ; |127| 
        AND #0xf3ff, AR1, AC0 ; |127| 
        BSET @#11, AC0 ; |127| 
        MOV AC0, *port(#7168) ; |127| 
	.dwpsn	file "./telecom/coms.c",line 129,column 5,is_stmt
        MOV #0, T0
$C$DW$118	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$118, DW_AT_low_pc(0x00)
	.dwattr $C$DW$118, DW_AT_name("_SYS_setEBSR")
	.dwattr $C$DW$118, DW_AT_TI_call

        CALL #_SYS_setEBSR ; |129| 
||      MOV #0, T1

                                        ; call occurs [#_SYS_setEBSR] ; |129| 
        MOV T0, *SP(#4) ; |129| 
	.dwpsn	file "./telecom/coms.c",line 133,column 5,is_stmt

        MOV T0, AR1
||      MOV #0, AR2

        CMP AR2 == AR1, TC1 ; |133| 
        BCC $C$L17,!TC1 ; |133| 
                                        ; branchcc occurs ; |133| 
	.dwpsn	file "./telecom/coms.c",line 136,column 9,is_stmt
	.dwpsn	file "./telecom/coms.c",line 138,column 5,is_stmt
        MOV #2048, *port(#7174) ; |138| 
	.dwpsn	file "./telecom/coms.c",line 139,column 5,is_stmt
        MOV #2048, *port(#7178) ; |139| 
	.dwpsn	file "./telecom/coms.c",line 142,column 2,is_stmt
        AMAR *SP(#5), XAR0
        AMAR *SP(#4), XAR1
$C$DW$119	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$119, DW_AT_low_pc(0x00)
	.dwattr $C$DW$119, DW_AT_name("_LCD_open")
	.dwattr $C$DW$119, DW_AT_TI_call

        CALL #_LCD_open ; |142| 
||      MOV #0, T0

                                        ; call occurs [#_LCD_open] ; |142| 
        MOV XAR0, dbl(*(#_hLcdc))
	.dwpsn	file "./telecom/coms.c",line 143,column 2,is_stmt
        MOV dbl(*(#_hLcdc)), XAR3
        MOV XAR3, AC0
        BCC $C$L11,AC0 != #0 ; |143| 
                                        ; branchcc occurs ; |143| 
	.dwpsn	file "./telecom/coms.c",line 146,column 3,is_stmt
        MOV #-1, T0
        B $C$L17  ; |146| 
                                        ; branch occurs ; |146| 
$C$L11:    
	.dwpsn	file "./telecom/coms.c",line 154,column 2,is_stmt
        AMAR *SP(#8), XAR1
$C$DW$120	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$120, DW_AT_low_pc(0x00)
	.dwattr $C$DW$120, DW_AT_name("_LCD_setup")
	.dwattr $C$DW$120, DW_AT_TI_call
        CALL #_LCD_setup ; |154| 
                                        ; call occurs [#_LCD_setup] ; |154| 
        MOV T0, *SP(#4) ; |154| 
	.dwpsn	file "./telecom/coms.c",line 155,column 2,is_stmt
        MOV T0, AR1
        BCC $C$L12,AR1 == #0 ; |155| 
                                        ; branchcc occurs ; |155| 
	.dwpsn	file "./telecom/coms.c",line 158,column 3,is_stmt
        B $C$L17  ; |158| 
                                        ; branch occurs ; |158| 
$C$L12:    
	.dwpsn	file "./telecom/coms.c",line 166,column 2,is_stmt
$C$DW$121	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$121, DW_AT_low_pc(0x00)
	.dwattr $C$DW$121, DW_AT_name("_panelSetup")
	.dwattr $C$DW$121, DW_AT_TI_call

        CALL #_panelSetup ; |166| 
||      MOV #0, T0

                                        ; call occurs [#_panelSetup] ; |166| 
	.dwpsn	file "./telecom/coms.c",line 173,column 2,is_stmt
        MOV #0, T1
        MOV dbl(*SP(#0)), XAR0
$C$DW$122	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$122, DW_AT_low_pc(0x00)
	.dwattr $C$DW$122, DW_AT_name("_lcdTextPrintDMA")
	.dwattr $C$DW$122, DW_AT_TI_call

        CALL #_lcdTextPrintDMA ; |173| 
||      MOV #0, T0

                                        ; call occurs [#_lcdTextPrintDMA] ; |173| 
        MOV T0, *SP(#3) ; |173| 
	.dwpsn	file "./telecom/coms.c",line 174,column 2,is_stmt
        MOV T0, AR1
        BCC $C$L13,AR1 == #0 ; |174| 
                                        ; branchcc occurs ; |174| 
	.dwpsn	file "./telecom/coms.c",line 177,column 3,is_stmt
        MOV #-1, T0
        B $C$L17  ; |177| 
                                        ; branch occurs ; |177| 
$C$L13:    
	.dwpsn	file "./telecom/coms.c",line 184,column 2,is_stmt
        MOV #100, T0 ; |184| 
$C$DW$123	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$123, DW_AT_low_pc(0x00)
	.dwattr $C$DW$123, DW_AT_name("_delay")
	.dwattr $C$DW$123, DW_AT_TI_call
        CALL #_delay ; |184| 
                                        ; call occurs [#_delay] ; |184| 
	.dwpsn	file "./telecom/coms.c",line 186,column 6,is_stmt
        MOV #0, *SP(#45) ; |186| 
	.dwpsn	file "./telecom/coms.c",line 186,column 21,is_stmt

        MOV *SP(#45), AR1 ; |186| 
||      MOV #8, AR2

        CMPU AR1 >= AR2, TC1 ; |186| 
        BCC $C$L16,TC1 ; |186| 
                                        ; branchcc occurs ; |186| 
$C$L14:    
$C$DW$L$_CSL_lcdcTextDisplayTest$15$B:
	.dwpsn	file "./telecom/coms.c",line 188,column 3,is_stmt
        MOV #0, T1
$C$DW$124	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$124, DW_AT_low_pc(0x00)
	.dwattr $C$DW$124, DW_AT_name("_lcdClearLine")
	.dwattr $C$DW$124, DW_AT_TI_call

        CALL #_lcdClearLine ; |188| 
||      MOV AR1, T0

                                        ; call occurs [#_lcdClearLine] ; |188| 
        MOV T0, *SP(#3) ; |188| 
	.dwpsn	file "./telecom/coms.c",line 189,column 3,is_stmt
        MOV T0, AR1
        BCC $C$L15,AR1 == #0 ; |189| 
                                        ; branchcc occurs ; |189| 
$C$DW$L$_CSL_lcdcTextDisplayTest$15$E:
	.dwpsn	file "./telecom/coms.c",line 192,column 4,is_stmt
        MOV #-1, T0
        B $C$L17  ; |192| 
                                        ; branch occurs ; |192| 
$C$L15:    
$C$DW$L$_CSL_lcdcTextDisplayTest$17$B:
	.dwpsn	file "./telecom/coms.c",line 195,column 3,is_stmt
        MOV #100, T0 ; |195| 
$C$DW$125	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$125, DW_AT_low_pc(0x00)
	.dwattr $C$DW$125, DW_AT_name("_delay")
	.dwattr $C$DW$125, DW_AT_TI_call
        CALL #_delay ; |195| 
                                        ; call occurs [#_delay] ; |195| 
	.dwpsn	file "./telecom/coms.c",line 186,column 36,is_stmt
        ADD #1, *SP(#45) ; |186| 
	.dwpsn	file "./telecom/coms.c",line 186,column 21,is_stmt

        MOV *SP(#45), AR1 ; |186| 
||      MOV #8, AR2

        CMPU AR1 < AR2, TC1 ; |186| 
        BCC $C$L14,TC1 ; |186| 
                                        ; branchcc occurs ; |186| 
$C$DW$L$_CSL_lcdcTextDisplayTest$17$E:
$C$L16:    
	.dwpsn	file "./telecom/coms.c",line 199,column 2,is_stmt
$C$DW$126	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$126, DW_AT_low_pc(0x00)
	.dwattr $C$DW$126, DW_AT_name("_lcdClearPanel")
	.dwattr $C$DW$126, DW_AT_TI_call

        CALL #_lcdClearPanel ; |199| 
||      MOV #0, T0

                                        ; call occurs [#_lcdClearPanel] ; |199| 
	.dwpsn	file "./telecom/coms.c",line 209,column 5,is_stmt
$C$DW$127	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$127, DW_AT_low_pc(0x00)
	.dwattr $C$DW$127, DW_AT_name("_lcdClearPanel")
	.dwattr $C$DW$127, DW_AT_TI_call

        CALL #_lcdClearPanel ; |209| 
||      MOV #0, T0

                                        ; call occurs [#_lcdClearPanel] ; |209| 
	.dwpsn	file "./telecom/coms.c",line 211,column 5,is_stmt
        MOV dbl(*(#_hLcdc)), XAR0
$C$DW$128	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$128, DW_AT_low_pc(0x00)
	.dwattr $C$DW$128, DW_AT_name("_LCD_close")
	.dwattr $C$DW$128, DW_AT_TI_call
        CALL #_LCD_close ; |211| 
                                        ; call occurs [#_LCD_close] ; |211| 
        MOV T0, *SP(#4) ; |211| 
	.dwpsn	file "./telecom/coms.c",line 212,column 2,is_stmt
        MOV T0, AR1
        BCC $C$L17,AR1 != #0 ; |212| 
                                        ; branchcc occurs ; |212| 
	.dwpsn	file "./telecom/coms.c",line 214,column 3,is_stmt
	.dwpsn	file "./telecom/coms.c",line 217,column 2,is_stmt
        MOV #0, T0
$C$L17:    
	.dwpsn	file "./telecom/coms.c",line 218,column 1,is_stmt
        AADD #47, SP
	.dwcfi	cfa_offset, 1
$C$DW$129	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$129, DW_AT_low_pc(0x00)
	.dwattr $C$DW$129, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$130	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$130, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/coms.asm:$C$L14:1:1726009971")
	.dwattr $C$DW$130, DW_AT_TI_begin_file("./telecom/coms.c")
	.dwattr $C$DW$130, DW_AT_TI_begin_line(0xba)
	.dwattr $C$DW$130, DW_AT_TI_end_line(0xc4)
$C$DW$131	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$131, DW_AT_low_pc($C$DW$L$_CSL_lcdcTextDisplayTest$15$B)
	.dwattr $C$DW$131, DW_AT_high_pc($C$DW$L$_CSL_lcdcTextDisplayTest$15$E)
$C$DW$132	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$132, DW_AT_low_pc($C$DW$L$_CSL_lcdcTextDisplayTest$17$B)
	.dwattr $C$DW$132, DW_AT_high_pc($C$DW$L$_CSL_lcdcTextDisplayTest$17$E)
	.dwendtag $C$DW$130


$C$DW$133	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$133, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/coms.asm:$C$L9:1:1726009971")
	.dwattr $C$DW$133, DW_AT_TI_begin_file("./telecom/coms.c")
	.dwattr $C$DW$133, DW_AT_TI_begin_line(0x6d)
	.dwattr $C$DW$133, DW_AT_TI_end_line(0x6d)
$C$DW$134	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$134, DW_AT_low_pc($C$DW$L$_CSL_lcdcTextDisplayTest$4$B)
	.dwattr $C$DW$134, DW_AT_high_pc($C$DW$L$_CSL_lcdcTextDisplayTest$4$E)
	.dwendtag $C$DW$133


$C$DW$135	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$135, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/coms.asm:$C$L7:1:1726009971")
	.dwattr $C$DW$135, DW_AT_TI_begin_file("./telecom/coms.c")
	.dwattr $C$DW$135, DW_AT_TI_begin_line(0x69)
	.dwattr $C$DW$135, DW_AT_TI_end_line(0x69)
$C$DW$136	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$136, DW_AT_low_pc($C$DW$L$_CSL_lcdcTextDisplayTest$2$B)
	.dwattr $C$DW$136, DW_AT_high_pc($C$DW$L$_CSL_lcdcTextDisplayTest$2$E)
	.dwendtag $C$DW$135

	.dwattr $C$DW$105, DW_AT_TI_end_file("./telecom/coms.c")
	.dwattr $C$DW$105, DW_AT_TI_end_line(0xda)
	.dwattr $C$DW$105, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$105

	.sect	".text"
	.global	_communcation_test

$C$DW$137	.dwtag  DW_TAG_subprogram, DW_AT_name("communcation_test")
	.dwattr $C$DW$137, DW_AT_low_pc(_communcation_test)
	.dwattr $C$DW$137, DW_AT_high_pc(0x00)
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("_communcation_test")
	.dwattr $C$DW$137, DW_AT_external
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$137, DW_AT_TI_begin_file("./telecom/coms.c")
	.dwattr $C$DW$137, DW_AT_TI_begin_line(0xdd)
	.dwattr $C$DW$137, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$137, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "./telecom/coms.c",line 221,column 57,is_stmt,address _communcation_test

	.dwfde $C$DW$CIE, _communcation_test
$C$DW$138	.dwtag  DW_TAG_formal_parameter, DW_AT_name("input")
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$138, DW_AT_location[DW_OP_reg17]
$C$DW$139	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size")
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$139, DW_AT_location[DW_OP_reg12]
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
$C$DW$140	.dwtag  DW_TAG_variable, DW_AT_name("input")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$140, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$141	.dwtag  DW_TAG_variable, DW_AT_name("size")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$141, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$142	.dwtag  DW_TAG_variable, DW_AT_name("real_size")
	.dwattr $C$DW$142, DW_AT_TI_symbol_name("_real_size")
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$142, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$143	.dwtag  DW_TAG_variable, DW_AT_name("real_buf")
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("_real_buf")
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$111)
	.dwattr $C$DW$143, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$144	.dwtag  DW_TAG_variable, DW_AT_name("out_buf")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_out_buf")
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$144, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$145	.dwtag  DW_TAG_variable, DW_AT_name("in_buf")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_in_buf")
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$145, DW_AT_location[DW_OP_bregx 0x24 8]
        MOV T0, *SP(#2) ; |221| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./telecom/coms.c",line 223,column 13,is_stmt
        MOV *SP(#2), AC0 ; |223| 
        BFXTR #0x8000, AC0, AR1 ; |223| 
        ADD AC0, AR1 ; |223| 
        SFTS AR1, #-1 ; |223| 
        MOV AR1, *SP(#3) ; |223| 
	.dwpsn	file "./telecom/coms.c",line 226,column 13,is_stmt
        MOV *SP(#2), T0 ; |226| 
$C$DW$146	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$146, DW_AT_low_pc(0x00)
	.dwattr $C$DW$146, DW_AT_name("_calloc")
	.dwattr $C$DW$146, DW_AT_TI_call

        CALL #_calloc ; |226| 
||      MOV #1, T1

                                        ; call occurs [#_calloc] ; |226| 
        MOV XAR0, dbl(*SP(#4))
	.dwpsn	file "./telecom/coms.c",line 227,column 15,is_stmt
        MOV *SP(#3), T0 ; |227| 
$C$DW$147	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$147, DW_AT_low_pc(0x00)
	.dwattr $C$DW$147, DW_AT_name("_calloc")
	.dwattr $C$DW$147, DW_AT_TI_call

        CALL #_calloc ; |227| 
||      MOV #1, T1

                                        ; call occurs [#_calloc] ; |227| 
        MOV XAR0, dbl(*SP(#6))
	.dwpsn	file "./telecom/coms.c",line 229,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR0
        MOV *SP(#2), T0 ; |229| 
        MOV dbl(*SP(#0)), XAR1
$C$DW$148	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$148, DW_AT_low_pc(0x00)
	.dwattr $C$DW$148, DW_AT_name("_memcpy")
	.dwattr $C$DW$148, DW_AT_TI_call
        CALL #_memcpy ; |229| 
                                        ; call occurs [#_memcpy] ; |229| 
	.dwpsn	file "./telecom/coms.c",line 232,column 5,is_stmt
        MOV *SP(#3), T0 ; |232| 
        MOV dbl(*SP(#4)), XAR0
        MOV dbl(*SP(#6)), XAR1
$C$DW$149	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$149, DW_AT_low_pc(0x00)
	.dwattr $C$DW$149, DW_AT_name("_analog_digital_conversion")
	.dwattr $C$DW$149, DW_AT_TI_call
        CALL #_analog_digital_conversion ; |232| 
                                        ; call occurs [#_analog_digital_conversion] ; |232| 
	.dwpsn	file "./telecom/coms.c",line 233,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR0
$C$DW$150	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$150, DW_AT_low_pc(0x00)
	.dwattr $C$DW$150, DW_AT_name("_free")
	.dwattr $C$DW$150, DW_AT_TI_call
        CALL #_free ; |233| 
                                        ; call occurs [#_free] ; |233| 
	.dwpsn	file "./telecom/coms.c",line 235,column 15,is_stmt
        MOV *SP(#3), T0 ; |235| 
$C$DW$151	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$151, DW_AT_low_pc(0x00)
	.dwattr $C$DW$151, DW_AT_name("_calloc")
	.dwattr $C$DW$151, DW_AT_TI_call

        CALL #_calloc ; |235| 
||      MOV #1, T1

                                        ; call occurs [#_calloc] ; |235| 
        MOV XAR0, dbl(*SP(#8))
	.dwpsn	file "./telecom/coms.c",line 236,column 5,is_stmt
        MOV *SP(#3), T0 ; |236| 
        MOV dbl(*SP(#6)), XAR1
$C$DW$152	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$152, DW_AT_low_pc(0x00)
	.dwattr $C$DW$152, DW_AT_name("_memcpy")
	.dwattr $C$DW$152, DW_AT_TI_call
        CALL #_memcpy ; |236| 
                                        ; call occurs [#_memcpy] ; |236| 
	.dwpsn	file "./telecom/coms.c",line 237,column 5,is_stmt
        MOV *SP(#3), T0 ; |237| 
        MOV dbl(*SP(#8)), XAR0
        MOV dbl(*SP(#6)), XAR1
$C$DW$153	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$153, DW_AT_low_pc(0x00)
	.dwattr $C$DW$153, DW_AT_name("_noise_reduction")
	.dwattr $C$DW$153, DW_AT_TI_call
        CALL #_noise_reduction ; |237| 
                                        ; call occurs [#_noise_reduction] ; |237| 
	.dwpsn	file "./telecom/coms.c",line 240,column 5,is_stmt
        MOV *SP(#2), T0 ; |240| 
        MOV dbl(*SP(#0)), XAR0
$C$DW$154	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$154, DW_AT_low_pc(0x00)
	.dwattr $C$DW$154, DW_AT_name("_CSL_lcdcTextDisplayTest")
	.dwattr $C$DW$154, DW_AT_TI_call
        CALL #_CSL_lcdcTextDisplayTest ; |240| 
                                        ; call occurs [#_CSL_lcdcTextDisplayTest] ; |240| 
	.dwpsn	file "./telecom/coms.c",line 246,column 5,is_stmt
        MOV dbl(*SP(#8)), XAR0
$C$DW$155	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$155, DW_AT_low_pc(0x00)
	.dwattr $C$DW$155, DW_AT_name("_free")
	.dwattr $C$DW$155, DW_AT_TI_call
        CALL #_free ; |246| 
                                        ; call occurs [#_free] ; |246| 
	.dwpsn	file "./telecom/coms.c",line 247,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR0
$C$DW$156	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$156, DW_AT_low_pc(0x00)
	.dwattr $C$DW$156, DW_AT_name("_free")
	.dwattr $C$DW$156, DW_AT_TI_call
        CALL #_free ; |247| 
                                        ; call occurs [#_free] ; |247| 
	.dwpsn	file "./telecom/coms.c",line 249,column 5,is_stmt
        MOV #0, T0
	.dwpsn	file "./telecom/coms.c",line 251,column 1,is_stmt
        AADD #11, SP
	.dwcfi	cfa_offset, 1
$C$DW$157	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$157, DW_AT_low_pc(0x00)
	.dwattr $C$DW$157, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$137, DW_AT_TI_end_file("./telecom/coms.c")
	.dwattr $C$DW$137, DW_AT_TI_end_line(0xfb)
	.dwattr $C$DW$137, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$137

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
	.global	_LCD_init
	.global	_LCD_open
	.global	_LCD_setup
	.global	_LCD_close
	.global	_delay
	.global	_lcdTextPrintDMA
	.global	_lcdClearLine
	.global	_lcdClearPanel
	.global	_panelSetup
	.global	_SYS_setEBSR
	.global	__fltid
	.global	__divd
	.global	__fixdi
	.global	__cmpd
	.global	__mpyd
	.global	_memcpy

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$25	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x01)
$C$DW$158	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_LCDC_LIDD_FDONE_DISABLE"), DW_AT_const_value(0x00)
$C$DW$159	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_LCDC_LIDD_FDONE_ENABLE"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$25

$C$DW$T$26	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_LcdcFdoneCtl")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)

$C$DW$T$27	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x01)
$C$DW$160	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_LCDC_LIDD_CS0"), DW_AT_const_value(0x00)
$C$DW$161	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_LCDC_LIDD_CS1"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$27

$C$DW$T$28	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_LcdcChipSelect")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C)

$C$DW$T$29	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x01)
$C$DW$162	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_LCDC_LIDD_DMA_DISABLE"), DW_AT_const_value(0x00)
$C$DW$163	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_LCDC_LIDD_DMA_ENABLE"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$29

$C$DW$T$30	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_LcdcDmaCtl")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$30, DW_AT_language(DW_LANG_C)

$C$DW$T$32	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x01)
$C$DW$164	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_LCDC_LIDD_SYNC_MPU68"), DW_AT_const_value(0x00)
$C$DW$165	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_LCDC_LIDD_ASYNC_MPU68"), DW_AT_const_value(0x01)
$C$DW$166	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_LCDC_LIDD_SYNC_MPU80"), DW_AT_const_value(0x02)
$C$DW$167	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_LCDC_LIDD_ASYNC_MPU80"), DW_AT_const_value(0x03)
$C$DW$168	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_LCDC_LIDD_ASYNC_HITACHI"), DW_AT_const_value(0x04)
	.dwendtag $C$DW$T$32

$C$DW$T$33	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_LcdcLiddMode")
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$33, DW_AT_language(DW_LANG_C)

$C$DW$T$38	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x01)
$C$DW$169	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_LCDC_LIDD_NOT_USE_CS1"), DW_AT_const_value(0x00)
$C$DW$170	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_LCDC_LIDD_USE_CS1"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$38

$C$DW$T$39	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_LcdcCs1Status")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$39, DW_AT_language(DW_LANG_C)

$C$DW$T$53	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x01)
$C$DW$171	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_EBSR_FIELD_PPMODE"), DW_AT_const_value(0x00)
$C$DW$172	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_EBSR_FIELD_SP1MODE"), DW_AT_const_value(0x01)
$C$DW$173	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_EBSR_FIELD_SP0MODE"), DW_AT_const_value(0x02)
$C$DW$174	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_EBSR_FIELD_A20MODE"), DW_AT_const_value(0x03)
$C$DW$175	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_EBSR_FIELD_A19MODE"), DW_AT_const_value(0x04)
$C$DW$176	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_EBSR_FIELD_A18MODE"), DW_AT_const_value(0x05)
$C$DW$177	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_EBSR_FIELD_A17MODE"), DW_AT_const_value(0x06)
$C$DW$178	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_EBSR_FIELD_A16MODE"), DW_AT_const_value(0x07)
$C$DW$179	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_EBSR_FIELD_A15MODE"), DW_AT_const_value(0x08)
$C$DW$180	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_EBSR_FIELD_MAX"), DW_AT_const_value(0x09)
	.dwendtag $C$DW$T$53

$C$DW$T$54	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SysEbsrMode")
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$T$54, DW_AT_language(DW_LANG_C)

$C$DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x52)
$C$DW$181	.dwtag  DW_TAG_member
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$181, DW_AT_name("LCDREVMIN")
	.dwattr $C$DW$181, DW_AT_TI_symbol_name("_LCDREVMIN")
	.dwattr $C$DW$181, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$181, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$182	.dwtag  DW_TAG_member
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$182, DW_AT_name("LCDREVMAJ")
	.dwattr $C$DW$182, DW_AT_TI_symbol_name("_LCDREVMAJ")
	.dwattr $C$DW$182, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$182, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$183	.dwtag  DW_TAG_member
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$183, DW_AT_name("RSVD0")
	.dwattr $C$DW$183, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$183, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$183, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$184	.dwtag  DW_TAG_member
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$184, DW_AT_name("LCDCR")
	.dwattr $C$DW$184, DW_AT_TI_symbol_name("_LCDCR")
	.dwattr $C$DW$184, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$184, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$185	.dwtag  DW_TAG_member
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$185, DW_AT_name("RSVD1")
	.dwattr $C$DW$185, DW_AT_TI_symbol_name("_RSVD1")
	.dwattr $C$DW$185, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$185, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$186	.dwtag  DW_TAG_member
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$186, DW_AT_name("LCDSR")
	.dwattr $C$DW$186, DW_AT_TI_symbol_name("_LCDSR")
	.dwattr $C$DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$186, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$187	.dwtag  DW_TAG_member
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$187, DW_AT_name("RSVD2")
	.dwattr $C$DW$187, DW_AT_TI_symbol_name("_RSVD2")
	.dwattr $C$DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$187, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$188	.dwtag  DW_TAG_member
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$188, DW_AT_name("LCDLIDDCR")
	.dwattr $C$DW$188, DW_AT_TI_symbol_name("_LCDLIDDCR")
	.dwattr $C$DW$188, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$188, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$189	.dwtag  DW_TAG_member
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$189, DW_AT_name("RSVD3")
	.dwattr $C$DW$189, DW_AT_TI_symbol_name("_RSVD3")
	.dwattr $C$DW$189, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$189, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$190	.dwtag  DW_TAG_member
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$190, DW_AT_name("LCDLIDDCS0CONFIG0")
	.dwattr $C$DW$190, DW_AT_TI_symbol_name("_LCDLIDDCS0CONFIG0")
	.dwattr $C$DW$190, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$190, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$191	.dwtag  DW_TAG_member
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$191, DW_AT_name("LCDLIDDCS0CONFIG1")
	.dwattr $C$DW$191, DW_AT_TI_symbol_name("_LCDLIDDCS0CONFIG1")
	.dwattr $C$DW$191, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$191, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$192	.dwtag  DW_TAG_member
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$192, DW_AT_name("RSVD4")
	.dwattr $C$DW$192, DW_AT_TI_symbol_name("_RSVD4")
	.dwattr $C$DW$192, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$192, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$193	.dwtag  DW_TAG_member
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$193, DW_AT_name("LCDLIDDCS0ADDR")
	.dwattr $C$DW$193, DW_AT_TI_symbol_name("_LCDLIDDCS0ADDR")
	.dwattr $C$DW$193, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$193, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$194	.dwtag  DW_TAG_member
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$194, DW_AT_name("RSVD5")
	.dwattr $C$DW$194, DW_AT_TI_symbol_name("_RSVD5")
	.dwattr $C$DW$194, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$194, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$195	.dwtag  DW_TAG_member
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$195, DW_AT_name("LCDLIDDCS0DATA")
	.dwattr $C$DW$195, DW_AT_TI_symbol_name("_LCDLIDDCS0DATA")
	.dwattr $C$DW$195, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$195, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$196	.dwtag  DW_TAG_member
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$196, DW_AT_name("RSVD6")
	.dwattr $C$DW$196, DW_AT_TI_symbol_name("_RSVD6")
	.dwattr $C$DW$196, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$196, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$197	.dwtag  DW_TAG_member
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$197, DW_AT_name("LCDLIDDCS1CONFIG0")
	.dwattr $C$DW$197, DW_AT_TI_symbol_name("_LCDLIDDCS1CONFIG0")
	.dwattr $C$DW$197, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$197, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$198	.dwtag  DW_TAG_member
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$198, DW_AT_name("LCDLIDDCS1CONFIG1")
	.dwattr $C$DW$198, DW_AT_TI_symbol_name("_LCDLIDDCS1CONFIG1")
	.dwattr $C$DW$198, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr $C$DW$198, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$199	.dwtag  DW_TAG_member
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$199, DW_AT_name("RSVD7")
	.dwattr $C$DW$199, DW_AT_TI_symbol_name("_RSVD7")
	.dwattr $C$DW$199, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$199, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$200	.dwtag  DW_TAG_member
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$200, DW_AT_name("LCDLIDDCS1ADDR")
	.dwattr $C$DW$200, DW_AT_TI_symbol_name("_LCDLIDDCS1ADDR")
	.dwattr $C$DW$200, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$200, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$201	.dwtag  DW_TAG_member
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$201, DW_AT_name("RSVD8")
	.dwattr $C$DW$201, DW_AT_TI_symbol_name("_RSVD8")
	.dwattr $C$DW$201, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr $C$DW$201, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$202	.dwtag  DW_TAG_member
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$202, DW_AT_name("LCDLIDDCS1DATA")
	.dwattr $C$DW$202, DW_AT_TI_symbol_name("_LCDLIDDCS1DATA")
	.dwattr $C$DW$202, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$202, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$203	.dwtag  DW_TAG_member
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$203, DW_AT_name("RSVD9")
	.dwattr $C$DW$203, DW_AT_TI_symbol_name("_RSVD9")
	.dwattr $C$DW$203, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr $C$DW$203, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$204	.dwtag  DW_TAG_member
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$204, DW_AT_name("LCDDMACR")
	.dwattr $C$DW$204, DW_AT_TI_symbol_name("_LCDDMACR")
	.dwattr $C$DW$204, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$204, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$205	.dwtag  DW_TAG_member
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$205, DW_AT_name("RSVD10")
	.dwattr $C$DW$205, DW_AT_TI_symbol_name("_RSVD10")
	.dwattr $C$DW$205, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr $C$DW$205, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$206	.dwtag  DW_TAG_member
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$206, DW_AT_name("LCDDMAFB0BAR0")
	.dwattr $C$DW$206, DW_AT_TI_symbol_name("_LCDDMAFB0BAR0")
	.dwattr $C$DW$206, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$206, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$207	.dwtag  DW_TAG_member
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$207, DW_AT_name("LCDDMAFB0BAR1")
	.dwattr $C$DW$207, DW_AT_TI_symbol_name("_LCDDMAFB0BAR1")
	.dwattr $C$DW$207, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr $C$DW$207, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$208	.dwtag  DW_TAG_member
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$208, DW_AT_name("RSVD11")
	.dwattr $C$DW$208, DW_AT_TI_symbol_name("_RSVD11")
	.dwattr $C$DW$208, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr $C$DW$208, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$209	.dwtag  DW_TAG_member
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$209, DW_AT_name("LCDDMAFB0CAR0")
	.dwattr $C$DW$209, DW_AT_TI_symbol_name("_LCDDMAFB0CAR0")
	.dwattr $C$DW$209, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr $C$DW$209, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$210	.dwtag  DW_TAG_member
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$210, DW_AT_name("LCDDMAFB0CAR1")
	.dwattr $C$DW$210, DW_AT_TI_symbol_name("_LCDDMAFB0CAR1")
	.dwattr $C$DW$210, DW_AT_data_member_location[DW_OP_plus_uconst 0x49]
	.dwattr $C$DW$210, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$211	.dwtag  DW_TAG_member
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$211, DW_AT_name("RSVD12")
	.dwattr $C$DW$211, DW_AT_TI_symbol_name("_RSVD12")
	.dwattr $C$DW$211, DW_AT_data_member_location[DW_OP_plus_uconst 0x4a]
	.dwattr $C$DW$211, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$212	.dwtag  DW_TAG_member
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$212, DW_AT_name("LCDDMAFB1BAR0")
	.dwattr $C$DW$212, DW_AT_TI_symbol_name("_LCDDMAFB1BAR0")
	.dwattr $C$DW$212, DW_AT_data_member_location[DW_OP_plus_uconst 0x4c]
	.dwattr $C$DW$212, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$213	.dwtag  DW_TAG_member
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$213, DW_AT_name("LCDDMAFB1BAR1")
	.dwattr $C$DW$213, DW_AT_TI_symbol_name("_LCDDMAFB1BAR1")
	.dwattr $C$DW$213, DW_AT_data_member_location[DW_OP_plus_uconst 0x4d]
	.dwattr $C$DW$213, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$214	.dwtag  DW_TAG_member
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$214, DW_AT_name("RSVD13")
	.dwattr $C$DW$214, DW_AT_TI_symbol_name("_RSVD13")
	.dwattr $C$DW$214, DW_AT_data_member_location[DW_OP_plus_uconst 0x4e]
	.dwattr $C$DW$214, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$215	.dwtag  DW_TAG_member
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$215, DW_AT_name("LCDDMAFB1CAR0")
	.dwattr $C$DW$215, DW_AT_TI_symbol_name("_LCDDMAFB1CAR0")
	.dwattr $C$DW$215, DW_AT_data_member_location[DW_OP_plus_uconst 0x50]
	.dwattr $C$DW$215, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$216	.dwtag  DW_TAG_member
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$216, DW_AT_name("LCDDMAFB1CAR1")
	.dwattr $C$DW$216, DW_AT_TI_symbol_name("_LCDDMAFB1CAR1")
	.dwattr $C$DW$216, DW_AT_data_member_location[DW_OP_plus_uconst 0x51]
	.dwattr $C$DW$216, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$24

$C$DW$T$46	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_LcdcRegs")
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$46, DW_AT_language(DW_LANG_C)
$C$DW$217	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$46)
$C$DW$218	.dwtag  DW_TAG_TI_ioport_type
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$217)
$C$DW$T$47	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$218)
$C$DW$T$48	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$48, DW_AT_address_class(0x10)
$C$DW$T$49	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_LcdcRegsOvly")
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$49, DW_AT_language(DW_LANG_C)

$C$DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x06)
$C$DW$219	.dwtag  DW_TAG_member
	.dwattr $C$DW$219, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$219, DW_AT_name("clkDiv")
	.dwattr $C$DW$219, DW_AT_TI_symbol_name("_clkDiv")
	.dwattr $C$DW$219, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$219, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$220	.dwtag  DW_TAG_member
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$220, DW_AT_name("fdoneIntEn")
	.dwattr $C$DW$220, DW_AT_TI_symbol_name("_fdoneIntEn")
	.dwattr $C$DW$220, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$220, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$221	.dwtag  DW_TAG_member
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$221, DW_AT_name("dmaCs0Cs1")
	.dwattr $C$DW$221, DW_AT_TI_symbol_name("_dmaCs0Cs1")
	.dwattr $C$DW$221, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$221, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$222	.dwtag  DW_TAG_member
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$222, DW_AT_name("dmaEnable")
	.dwattr $C$DW$222, DW_AT_TI_symbol_name("_dmaEnable")
	.dwattr $C$DW$222, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$222, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$223	.dwtag  DW_TAG_member
	.dwattr $C$DW$223, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$223, DW_AT_name("polControl")
	.dwattr $C$DW$223, DW_AT_TI_symbol_name("_polControl")
	.dwattr $C$DW$223, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$223, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$224	.dwtag  DW_TAG_member
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$224, DW_AT_name("modeSel")
	.dwattr $C$DW$224, DW_AT_TI_symbol_name("_modeSel")
	.dwattr $C$DW$224, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$224, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$34

$C$DW$T$36	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_LcdcConfigLidd")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)

$C$DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x07)
$C$DW$225	.dwtag  DW_TAG_member
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$225, DW_AT_name("wSu")
	.dwattr $C$DW$225, DW_AT_TI_symbol_name("_wSu")
	.dwattr $C$DW$225, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$225, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$226	.dwtag  DW_TAG_member
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$226, DW_AT_name("wStrobe")
	.dwattr $C$DW$226, DW_AT_TI_symbol_name("_wStrobe")
	.dwattr $C$DW$226, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$226, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$227	.dwtag  DW_TAG_member
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$227, DW_AT_name("wHold")
	.dwattr $C$DW$227, DW_AT_TI_symbol_name("_wHold")
	.dwattr $C$DW$227, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$227, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$228	.dwtag  DW_TAG_member
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$228, DW_AT_name("rSu")
	.dwattr $C$DW$228, DW_AT_TI_symbol_name("_rSu")
	.dwattr $C$DW$228, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$228, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$229	.dwtag  DW_TAG_member
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$229, DW_AT_name("rStrobe")
	.dwattr $C$DW$229, DW_AT_TI_symbol_name("_rStrobe")
	.dwattr $C$DW$229, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$229, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$230	.dwtag  DW_TAG_member
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$230, DW_AT_name("rHold")
	.dwattr $C$DW$230, DW_AT_TI_symbol_name("_rHold")
	.dwattr $C$DW$230, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$230, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$231	.dwtag  DW_TAG_member
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$231, DW_AT_name("ta")
	.dwattr $C$DW$231, DW_AT_TI_symbol_name("_ta")
	.dwattr $C$DW$231, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$231, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$35

$C$DW$T$37	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_LcdcLiddTiming")
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)

$C$DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x18)
$C$DW$232	.dwtag  DW_TAG_member
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$232, DW_AT_name("extendSetup")
	.dwattr $C$DW$232, DW_AT_TI_symbol_name("_extendSetup")
	.dwattr $C$DW$232, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$232, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$233	.dwtag  DW_TAG_member
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$233, DW_AT_name("config")
	.dwattr $C$DW$233, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$233, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$233, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$234	.dwtag  DW_TAG_member
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$234, DW_AT_name("timingCs0")
	.dwattr $C$DW$234, DW_AT_TI_symbol_name("_timingCs0")
	.dwattr $C$DW$234, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$234, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$235	.dwtag  DW_TAG_member
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$235, DW_AT_name("useCs1")
	.dwattr $C$DW$235, DW_AT_TI_symbol_name("_useCs1")
	.dwattr $C$DW$235, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$235, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$236	.dwtag  DW_TAG_member
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$236, DW_AT_name("timingCs1")
	.dwattr $C$DW$236, DW_AT_TI_symbol_name("_timingCs1")
	.dwattr $C$DW$236, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$236, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$40

$C$DW$T$55	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_LcdcHwSetup")
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$55, DW_AT_language(DW_LANG_C)
$C$DW$T$56	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$T$56, DW_AT_address_class(0x17)

$C$DW$T$43	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x48)
$C$DW$237	.dwtag  DW_TAG_member
	.dwattr $C$DW$237, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$237, DW_AT_name("EBSR")
	.dwattr $C$DW$237, DW_AT_TI_symbol_name("_EBSR")
	.dwattr $C$DW$237, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$237, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$238	.dwtag  DW_TAG_member
	.dwattr $C$DW$238, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$238, DW_AT_name("RSVD0")
	.dwattr $C$DW$238, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$238, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$238, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$239	.dwtag  DW_TAG_member
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$239, DW_AT_name("PCGCR1")
	.dwattr $C$DW$239, DW_AT_TI_symbol_name("_PCGCR1")
	.dwattr $C$DW$239, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$239, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$240	.dwtag  DW_TAG_member
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$240, DW_AT_name("PCGCR2")
	.dwattr $C$DW$240, DW_AT_TI_symbol_name("_PCGCR2")
	.dwattr $C$DW$240, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$240, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$241	.dwtag  DW_TAG_member
	.dwattr $C$DW$241, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$241, DW_AT_name("PSRCR")
	.dwattr $C$DW$241, DW_AT_TI_symbol_name("_PSRCR")
	.dwattr $C$DW$241, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$241, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$242	.dwtag  DW_TAG_member
	.dwattr $C$DW$242, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$242, DW_AT_name("PRCR")
	.dwattr $C$DW$242, DW_AT_TI_symbol_name("_PRCR")
	.dwattr $C$DW$242, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$242, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$243	.dwtag  DW_TAG_member
	.dwattr $C$DW$243, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$243, DW_AT_name("RSVD1")
	.dwattr $C$DW$243, DW_AT_TI_symbol_name("_RSVD1")
	.dwattr $C$DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$243, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$244	.dwtag  DW_TAG_member
	.dwattr $C$DW$244, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$244, DW_AT_name("TIAFR")
	.dwattr $C$DW$244, DW_AT_TI_symbol_name("_TIAFR")
	.dwattr $C$DW$244, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$244, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$245	.dwtag  DW_TAG_member
	.dwattr $C$DW$245, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$245, DW_AT_name("RSVD2")
	.dwattr $C$DW$245, DW_AT_TI_symbol_name("_RSVD2")
	.dwattr $C$DW$245, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$245, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$246	.dwtag  DW_TAG_member
	.dwattr $C$DW$246, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$246, DW_AT_name("ODSCR")
	.dwattr $C$DW$246, DW_AT_TI_symbol_name("_ODSCR")
	.dwattr $C$DW$246, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$246, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$247	.dwtag  DW_TAG_member
	.dwattr $C$DW$247, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$247, DW_AT_name("PDINHIBR1")
	.dwattr $C$DW$247, DW_AT_TI_symbol_name("_PDINHIBR1")
	.dwattr $C$DW$247, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$247, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$248	.dwtag  DW_TAG_member
	.dwattr $C$DW$248, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$248, DW_AT_name("PDINHIBR2")
	.dwattr $C$DW$248, DW_AT_TI_symbol_name("_PDINHIBR2")
	.dwattr $C$DW$248, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$248, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$249	.dwtag  DW_TAG_member
	.dwattr $C$DW$249, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$249, DW_AT_name("PDINHIBR3")
	.dwattr $C$DW$249, DW_AT_TI_symbol_name("_PDINHIBR3")
	.dwattr $C$DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$249, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$250	.dwtag  DW_TAG_member
	.dwattr $C$DW$250, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$250, DW_AT_name("DMA0CESR1")
	.dwattr $C$DW$250, DW_AT_TI_symbol_name("_DMA0CESR1")
	.dwattr $C$DW$250, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$250, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$251	.dwtag  DW_TAG_member
	.dwattr $C$DW$251, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$251, DW_AT_name("DMA0CESR2")
	.dwattr $C$DW$251, DW_AT_TI_symbol_name("_DMA0CESR2")
	.dwattr $C$DW$251, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr $C$DW$251, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$252	.dwtag  DW_TAG_member
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$252, DW_AT_name("DMA1CESR1")
	.dwattr $C$DW$252, DW_AT_TI_symbol_name("_DMA1CESR1")
	.dwattr $C$DW$252, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$252, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$253	.dwtag  DW_TAG_member
	.dwattr $C$DW$253, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$253, DW_AT_name("DMA1CESR2")
	.dwattr $C$DW$253, DW_AT_TI_symbol_name("_DMA1CESR2")
	.dwattr $C$DW$253, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr $C$DW$253, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$254	.dwtag  DW_TAG_member
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$254, DW_AT_name("CCR1")
	.dwattr $C$DW$254, DW_AT_TI_symbol_name("_CCR1")
	.dwattr $C$DW$254, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$254, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$255	.dwtag  DW_TAG_member
	.dwattr $C$DW$255, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$255, DW_AT_name("CCR2")
	.dwattr $C$DW$255, DW_AT_TI_symbol_name("_CCR2")
	.dwattr $C$DW$255, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr $C$DW$255, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$256	.dwtag  DW_TAG_member
	.dwattr $C$DW$256, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$256, DW_AT_name("CGCR1")
	.dwattr $C$DW$256, DW_AT_TI_symbol_name("_CGCR1")
	.dwattr $C$DW$256, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$256, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$257	.dwtag  DW_TAG_member
	.dwattr $C$DW$257, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$257, DW_AT_name("CGCR2")
	.dwattr $C$DW$257, DW_AT_TI_symbol_name("_CGCR2")
	.dwattr $C$DW$257, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr $C$DW$257, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$258	.dwtag  DW_TAG_member
	.dwattr $C$DW$258, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$258, DW_AT_name("CGCR3")
	.dwattr $C$DW$258, DW_AT_TI_symbol_name("_CGCR3")
	.dwattr $C$DW$258, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$258, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$259	.dwtag  DW_TAG_member
	.dwattr $C$DW$259, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$259, DW_AT_name("CGCR4")
	.dwattr $C$DW$259, DW_AT_TI_symbol_name("_CGCR4")
	.dwattr $C$DW$259, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr $C$DW$259, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$260	.dwtag  DW_TAG_member
	.dwattr $C$DW$260, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$260, DW_AT_name("CCSSR")
	.dwattr $C$DW$260, DW_AT_TI_symbol_name("_CCSSR")
	.dwattr $C$DW$260, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$260, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$261	.dwtag  DW_TAG_member
	.dwattr $C$DW$261, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$261, DW_AT_name("RSVD3")
	.dwattr $C$DW$261, DW_AT_TI_symbol_name("_RSVD3")
	.dwattr $C$DW$261, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr $C$DW$261, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$262	.dwtag  DW_TAG_member
	.dwattr $C$DW$262, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$262, DW_AT_name("ECDR")
	.dwattr $C$DW$262, DW_AT_TI_symbol_name("_ECDR")
	.dwattr $C$DW$262, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$262, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$263	.dwtag  DW_TAG_member
	.dwattr $C$DW$263, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$263, DW_AT_name("RSVD4")
	.dwattr $C$DW$263, DW_AT_TI_symbol_name("_RSVD4")
	.dwattr $C$DW$263, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr $C$DW$263, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$264	.dwtag  DW_TAG_member
	.dwattr $C$DW$264, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$264, DW_AT_name("RAMSLPMDCNTLR1")
	.dwattr $C$DW$264, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR1")
	.dwattr $C$DW$264, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$264, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$265	.dwtag  DW_TAG_member
	.dwattr $C$DW$265, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$265, DW_AT_name("RSVD5")
	.dwattr $C$DW$265, DW_AT_TI_symbol_name("_RSVD5")
	.dwattr $C$DW$265, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr $C$DW$265, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$266	.dwtag  DW_TAG_member
	.dwattr $C$DW$266, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$266, DW_AT_name("RAMSLPMDCNTLR2")
	.dwattr $C$DW$266, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR2")
	.dwattr $C$DW$266, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$266, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$267	.dwtag  DW_TAG_member
	.dwattr $C$DW$267, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$267, DW_AT_name("RAMSLPMDCNTLR3")
	.dwattr $C$DW$267, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR3")
	.dwattr $C$DW$267, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr $C$DW$267, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$268	.dwtag  DW_TAG_member
	.dwattr $C$DW$268, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$268, DW_AT_name("RAMSLPMDCNTLR4")
	.dwattr $C$DW$268, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR4")
	.dwattr $C$DW$268, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$268, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$269	.dwtag  DW_TAG_member
	.dwattr $C$DW$269, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$269, DW_AT_name("RAMSLPMDCNTLR5")
	.dwattr $C$DW$269, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR5")
	.dwattr $C$DW$269, DW_AT_data_member_location[DW_OP_plus_uconst 0x2d]
	.dwattr $C$DW$269, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$270	.dwtag  DW_TAG_member
	.dwattr $C$DW$270, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$270, DW_AT_name("RSVD6")
	.dwattr $C$DW$270, DW_AT_TI_symbol_name("_RSVD6")
	.dwattr $C$DW$270, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr $C$DW$270, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$271	.dwtag  DW_TAG_member
	.dwattr $C$DW$271, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$271, DW_AT_name("DMAIFR")
	.dwattr $C$DW$271, DW_AT_TI_symbol_name("_DMAIFR")
	.dwattr $C$DW$271, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$271, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$272	.dwtag  DW_TAG_member
	.dwattr $C$DW$272, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$272, DW_AT_name("DMAIER")
	.dwattr $C$DW$272, DW_AT_TI_symbol_name("_DMAIER")
	.dwattr $C$DW$272, DW_AT_data_member_location[DW_OP_plus_uconst 0x31]
	.dwattr $C$DW$272, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$273	.dwtag  DW_TAG_member
	.dwattr $C$DW$273, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$273, DW_AT_name("USBSCR")
	.dwattr $C$DW$273, DW_AT_TI_symbol_name("_USBSCR")
	.dwattr $C$DW$273, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$273, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$274	.dwtag  DW_TAG_member
	.dwattr $C$DW$274, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$274, DW_AT_name("ESCR")
	.dwattr $C$DW$274, DW_AT_TI_symbol_name("_ESCR")
	.dwattr $C$DW$274, DW_AT_data_member_location[DW_OP_plus_uconst 0x33]
	.dwattr $C$DW$274, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$275	.dwtag  DW_TAG_member
	.dwattr $C$DW$275, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$275, DW_AT_name("RSVD7")
	.dwattr $C$DW$275, DW_AT_TI_symbol_name("_RSVD7")
	.dwattr $C$DW$275, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$275, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$276	.dwtag  DW_TAG_member
	.dwattr $C$DW$276, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$276, DW_AT_name("DMA2CESR1")
	.dwattr $C$DW$276, DW_AT_TI_symbol_name("_DMA2CESR1")
	.dwattr $C$DW$276, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$276, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$277	.dwtag  DW_TAG_member
	.dwattr $C$DW$277, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$277, DW_AT_name("DMA2CESR2")
	.dwattr $C$DW$277, DW_AT_TI_symbol_name("_DMA2CESR2")
	.dwattr $C$DW$277, DW_AT_data_member_location[DW_OP_plus_uconst 0x37]
	.dwattr $C$DW$277, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$278	.dwtag  DW_TAG_member
	.dwattr $C$DW$278, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$278, DW_AT_name("DMA3CESR1")
	.dwattr $C$DW$278, DW_AT_TI_symbol_name("_DMA3CESR1")
	.dwattr $C$DW$278, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$278, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$279	.dwtag  DW_TAG_member
	.dwattr $C$DW$279, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$279, DW_AT_name("DMA3CESR2")
	.dwattr $C$DW$279, DW_AT_TI_symbol_name("_DMA3CESR2")
	.dwattr $C$DW$279, DW_AT_data_member_location[DW_OP_plus_uconst 0x39]
	.dwattr $C$DW$279, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$280	.dwtag  DW_TAG_member
	.dwattr $C$DW$280, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$280, DW_AT_name("CLKSTOP")
	.dwattr $C$DW$280, DW_AT_TI_symbol_name("_CLKSTOP")
	.dwattr $C$DW$280, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr $C$DW$280, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$281	.dwtag  DW_TAG_member
	.dwattr $C$DW$281, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$281, DW_AT_name("RSVD8")
	.dwattr $C$DW$281, DW_AT_TI_symbol_name("_RSVD8")
	.dwattr $C$DW$281, DW_AT_data_member_location[DW_OP_plus_uconst 0x3b]
	.dwattr $C$DW$281, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$282	.dwtag  DW_TAG_member
	.dwattr $C$DW$282, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$282, DW_AT_name("DIEIDR0")
	.dwattr $C$DW$282, DW_AT_TI_symbol_name("_DIEIDR0")
	.dwattr $C$DW$282, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$282, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$283	.dwtag  DW_TAG_member
	.dwattr $C$DW$283, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$283, DW_AT_name("DIEIDR1")
	.dwattr $C$DW$283, DW_AT_TI_symbol_name("_DIEIDR1")
	.dwattr $C$DW$283, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr $C$DW$283, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$284	.dwtag  DW_TAG_member
	.dwattr $C$DW$284, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$284, DW_AT_name("DIEIDR2")
	.dwattr $C$DW$284, DW_AT_TI_symbol_name("_DIEIDR2")
	.dwattr $C$DW$284, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr $C$DW$284, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$285	.dwtag  DW_TAG_member
	.dwattr $C$DW$285, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$285, DW_AT_name("DIEIDR3")
	.dwattr $C$DW$285, DW_AT_TI_symbol_name("_DIEIDR3")
	.dwattr $C$DW$285, DW_AT_data_member_location[DW_OP_plus_uconst 0x43]
	.dwattr $C$DW$285, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$286	.dwtag  DW_TAG_member
	.dwattr $C$DW$286, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$286, DW_AT_name("DIEIDR4")
	.dwattr $C$DW$286, DW_AT_TI_symbol_name("_DIEIDR4")
	.dwattr $C$DW$286, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$286, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$287	.dwtag  DW_TAG_member
	.dwattr $C$DW$287, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$287, DW_AT_name("DIEIDR5")
	.dwattr $C$DW$287, DW_AT_TI_symbol_name("_DIEIDR5")
	.dwattr $C$DW$287, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr $C$DW$287, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$288	.dwtag  DW_TAG_member
	.dwattr $C$DW$288, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$288, DW_AT_name("DIEIDR6")
	.dwattr $C$DW$288, DW_AT_TI_symbol_name("_DIEIDR6")
	.dwattr $C$DW$288, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr $C$DW$288, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$289	.dwtag  DW_TAG_member
	.dwattr $C$DW$289, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$289, DW_AT_name("DIEIDR7")
	.dwattr $C$DW$289, DW_AT_TI_symbol_name("_DIEIDR7")
	.dwattr $C$DW$289, DW_AT_data_member_location[DW_OP_plus_uconst 0x47]
	.dwattr $C$DW$289, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$43

$C$DW$T$57	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SysRegs")
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$57, DW_AT_language(DW_LANG_C)
$C$DW$290	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$290, DW_AT_type(*$C$DW$T$57)
$C$DW$291	.dwtag  DW_TAG_TI_ioport_type
	.dwattr $C$DW$291, DW_AT_type(*$C$DW$290)
$C$DW$T$58	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$291)
$C$DW$T$59	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$T$59, DW_AT_address_class(0x10)
$C$DW$T$60	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SysRegsOvly")
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$T$60, DW_AT_language(DW_LANG_C)

$C$DW$T$45	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x12)
$C$DW$292	.dwtag  DW_TAG_member
	.dwattr $C$DW$292, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$292, DW_AT_name("RSVD0")
	.dwattr $C$DW$292, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$292, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$292, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$293	.dwtag  DW_TAG_member
	.dwattr $C$DW$293, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$293, DW_AT_name("IODIR1")
	.dwattr $C$DW$293, DW_AT_TI_symbol_name("_IODIR1")
	.dwattr $C$DW$293, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$293, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$294	.dwtag  DW_TAG_member
	.dwattr $C$DW$294, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$294, DW_AT_name("IODIR2")
	.dwattr $C$DW$294, DW_AT_TI_symbol_name("_IODIR2")
	.dwattr $C$DW$294, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$294, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$295	.dwtag  DW_TAG_member
	.dwattr $C$DW$295, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$295, DW_AT_name("IOINDATA1")
	.dwattr $C$DW$295, DW_AT_TI_symbol_name("_IOINDATA1")
	.dwattr $C$DW$295, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$295, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$296	.dwtag  DW_TAG_member
	.dwattr $C$DW$296, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$296, DW_AT_name("IOINDATA2")
	.dwattr $C$DW$296, DW_AT_TI_symbol_name("_IOINDATA2")
	.dwattr $C$DW$296, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$296, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$297	.dwtag  DW_TAG_member
	.dwattr $C$DW$297, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$297, DW_AT_name("IOOUTDATA1")
	.dwattr $C$DW$297, DW_AT_TI_symbol_name("_IOOUTDATA1")
	.dwattr $C$DW$297, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$297, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$298	.dwtag  DW_TAG_member
	.dwattr $C$DW$298, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$298, DW_AT_name("IOOUTDATA2")
	.dwattr $C$DW$298, DW_AT_TI_symbol_name("_IOOUTDATA2")
	.dwattr $C$DW$298, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$298, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$299	.dwtag  DW_TAG_member
	.dwattr $C$DW$299, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$299, DW_AT_name("IOINTEDG1")
	.dwattr $C$DW$299, DW_AT_TI_symbol_name("_IOINTEDG1")
	.dwattr $C$DW$299, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$299, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$300	.dwtag  DW_TAG_member
	.dwattr $C$DW$300, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$300, DW_AT_name("IOINTEDG2")
	.dwattr $C$DW$300, DW_AT_TI_symbol_name("_IOINTEDG2")
	.dwattr $C$DW$300, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$300, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$301	.dwtag  DW_TAG_member
	.dwattr $C$DW$301, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$301, DW_AT_name("IOINTEN1")
	.dwattr $C$DW$301, DW_AT_TI_symbol_name("_IOINTEN1")
	.dwattr $C$DW$301, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$301, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$302	.dwtag  DW_TAG_member
	.dwattr $C$DW$302, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$302, DW_AT_name("IOINTEN2")
	.dwattr $C$DW$302, DW_AT_TI_symbol_name("_IOINTEN2")
	.dwattr $C$DW$302, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$302, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$303	.dwtag  DW_TAG_member
	.dwattr $C$DW$303, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$303, DW_AT_name("IOINTFLG1")
	.dwattr $C$DW$303, DW_AT_TI_symbol_name("_IOINTFLG1")
	.dwattr $C$DW$303, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$303, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$304	.dwtag  DW_TAG_member
	.dwattr $C$DW$304, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$304, DW_AT_name("IOINTFLG2")
	.dwattr $C$DW$304, DW_AT_TI_symbol_name("_IOINTFLG2")
	.dwattr $C$DW$304, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$304, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$45

$C$DW$T$61	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_GpioRegs")
	.dwattr $C$DW$T$61, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$61, DW_AT_language(DW_LANG_C)
$C$DW$305	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$305, DW_AT_type(*$C$DW$T$61)
$C$DW$306	.dwtag  DW_TAG_TI_ioport_type
	.dwattr $C$DW$306, DW_AT_type(*$C$DW$305)
$C$DW$T$62	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$306)
$C$DW$T$63	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$T$63, DW_AT_address_class(0x10)
$C$DW$T$64	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_GpioRegsOvly")
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$64, DW_AT_language(DW_LANG_C)

$C$DW$T$52	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$52, DW_AT_name("CSL_LcdcObj")
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x02)
$C$DW$307	.dwtag  DW_TAG_member
	.dwattr $C$DW$307, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$307, DW_AT_name("regs")
	.dwattr $C$DW$307, DW_AT_TI_symbol_name("_regs")
	.dwattr $C$DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$307, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$308	.dwtag  DW_TAG_member
	.dwattr $C$DW$308, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$308, DW_AT_name("perNum")
	.dwattr $C$DW$308, DW_AT_TI_symbol_name("_perNum")
	.dwattr $C$DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$308, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$52

$C$DW$T$65	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_LcdcObj")
	.dwattr $C$DW$T$65, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$T$65, DW_AT_language(DW_LANG_C)
$C$DW$T$66	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$T$66, DW_AT_address_class(0x17)
$C$DW$T$67	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_LcdcHandle")
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$T$67, DW_AT_language(DW_LANG_C)
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x17)
$C$DW$309	.dwtag  DW_TAG_TI_far_type
$C$DW$T$72	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$72, DW_AT_type(*$C$DW$309)
$C$DW$T$73	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$73, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$T$73, DW_AT_address_class(0x17)
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
$C$DW$T$93	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$93, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$93, DW_AT_address_class(0x17)
$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x01)
$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x01)
$C$DW$T$80	.dwtag  DW_TAG_typedef, DW_AT_name("DATA")
	.dwattr $C$DW$T$80, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$80, DW_AT_language(DW_LANG_C)
$C$DW$T$81	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$81, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$T$81, DW_AT_address_class(0x17)
$C$DW$T$50	.dwtag  DW_TAG_typedef, DW_AT_name("Int16")
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$50, DW_AT_language(DW_LANG_C)
$C$DW$T$51	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_InstNum")
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$51, DW_AT_language(DW_LANG_C)
$C$DW$T$68	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_Status")
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$68, DW_AT_language(DW_LANG_C)
$C$DW$T$69	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$69, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$T$69, DW_AT_address_class(0x17)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)
$C$DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
$C$DW$T$31	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_BitMask16")
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$31, DW_AT_language(DW_LANG_C)
$C$DW$310	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$310, DW_AT_type(*$C$DW$T$19)
$C$DW$T$20	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$310)

$C$DW$T$21	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x02)
$C$DW$311	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$311, DW_AT_upper_bound(0x01)
	.dwendtag $C$DW$T$21


$C$DW$T$22	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x03)
$C$DW$312	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$312, DW_AT_upper_bound(0x02)
	.dwendtag $C$DW$T$22


$C$DW$T$23	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x1b)
$C$DW$313	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$313, DW_AT_upper_bound(0x1a)
	.dwendtag $C$DW$T$23


$C$DW$T$41	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$41, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x0e)
$C$DW$314	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$314, DW_AT_upper_bound(0x0d)
	.dwendtag $C$DW$T$41


$C$DW$T$42	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$42, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x05)
$C$DW$315	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$315, DW_AT_upper_bound(0x04)
	.dwendtag $C$DW$T$42


$C$DW$T$44	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x06)
$C$DW$316	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$316, DW_AT_upper_bound(0x05)
	.dwendtag $C$DW$T$44

$C$DW$T$82	.dwtag  DW_TAG_typedef, DW_AT_name("ushort")
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$82, DW_AT_language(DW_LANG_C)
$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x01)
$C$DW$T$89	.dwtag  DW_TAG_typedef, DW_AT_name("int16_t")
	.dwattr $C$DW$T$89, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$89, DW_AT_language(DW_LANG_C)
$C$DW$T$90	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$90, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$T$90, DW_AT_address_class(0x17)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)
$C$DW$T$74	.dwtag  DW_TAG_typedef, DW_AT_name("size_t")
	.dwattr $C$DW$T$74, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$74, DW_AT_language(DW_LANG_C)
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
$C$DW$T$111	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$111, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$111, DW_AT_address_class(0x17)
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

$C$DW$317	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$317, DW_AT_location[DW_OP_reg0]
$C$DW$318	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$318, DW_AT_location[DW_OP_reg1]
$C$DW$319	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$319, DW_AT_location[DW_OP_reg2]
$C$DW$320	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$320, DW_AT_location[DW_OP_reg3]
$C$DW$321	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$321, DW_AT_location[DW_OP_reg4]
$C$DW$322	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$322, DW_AT_location[DW_OP_reg5]
$C$DW$323	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$323, DW_AT_location[DW_OP_reg6]
$C$DW$324	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$324, DW_AT_location[DW_OP_reg7]
$C$DW$325	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$325, DW_AT_location[DW_OP_reg8]
$C$DW$326	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$326, DW_AT_location[DW_OP_reg9]
$C$DW$327	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$327, DW_AT_location[DW_OP_reg10]
$C$DW$328	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$328, DW_AT_location[DW_OP_reg11]
$C$DW$329	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$329, DW_AT_location[DW_OP_reg12]
$C$DW$330	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$330, DW_AT_location[DW_OP_reg13]
$C$DW$331	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$331, DW_AT_location[DW_OP_reg14]
$C$DW$332	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$332, DW_AT_location[DW_OP_reg15]
$C$DW$333	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$333, DW_AT_location[DW_OP_reg16]
$C$DW$334	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$334, DW_AT_location[DW_OP_reg17]
$C$DW$335	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$335, DW_AT_location[DW_OP_reg18]
$C$DW$336	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$336, DW_AT_location[DW_OP_reg19]
$C$DW$337	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$337, DW_AT_location[DW_OP_reg20]
$C$DW$338	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$338, DW_AT_location[DW_OP_reg21]
$C$DW$339	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$339, DW_AT_location[DW_OP_reg22]
$C$DW$340	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$340, DW_AT_location[DW_OP_reg23]
$C$DW$341	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$341, DW_AT_location[DW_OP_reg24]
$C$DW$342	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$342, DW_AT_location[DW_OP_reg25]
$C$DW$343	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$343, DW_AT_location[DW_OP_reg26]
$C$DW$344	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$344, DW_AT_location[DW_OP_reg27]
$C$DW$345	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$345, DW_AT_location[DW_OP_reg28]
$C$DW$346	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$346, DW_AT_location[DW_OP_reg29]
$C$DW$347	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$347, DW_AT_location[DW_OP_reg30]
$C$DW$348	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$348, DW_AT_location[DW_OP_reg31]
$C$DW$349	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$349, DW_AT_location[DW_OP_regx 0x20]
$C$DW$350	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$350, DW_AT_location[DW_OP_regx 0x21]
$C$DW$351	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$351, DW_AT_location[DW_OP_regx 0x22]
$C$DW$352	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$352, DW_AT_location[DW_OP_regx 0x23]
$C$DW$353	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$353, DW_AT_location[DW_OP_regx 0x24]
$C$DW$354	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$354, DW_AT_location[DW_OP_regx 0x25]
$C$DW$355	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$355, DW_AT_location[DW_OP_regx 0x26]
$C$DW$356	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$356, DW_AT_location[DW_OP_regx 0x27]
$C$DW$357	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$357, DW_AT_location[DW_OP_regx 0x28]
$C$DW$358	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$358, DW_AT_location[DW_OP_regx 0x29]
$C$DW$359	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$359, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$360	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$360, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$361	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$361, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$362	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$362, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$363	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$363, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$364	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$364, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$365	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$365, DW_AT_location[DW_OP_regx 0x30]
$C$DW$366	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$366, DW_AT_location[DW_OP_regx 0x31]
$C$DW$367	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$367, DW_AT_location[DW_OP_regx 0x32]
$C$DW$368	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$368, DW_AT_location[DW_OP_regx 0x33]
$C$DW$369	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$369, DW_AT_location[DW_OP_regx 0x34]
$C$DW$370	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$370, DW_AT_location[DW_OP_regx 0x35]
$C$DW$371	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$371, DW_AT_location[DW_OP_regx 0x36]
$C$DW$372	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$372, DW_AT_location[DW_OP_regx 0x37]
$C$DW$373	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$373, DW_AT_location[DW_OP_regx 0x38]
$C$DW$374	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$374, DW_AT_location[DW_OP_regx 0x39]
$C$DW$375	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$375, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$376	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$376, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$377	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$377, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$378	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$378, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$379	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$379, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$380	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$380, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$381	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$381, DW_AT_location[DW_OP_regx 0x40]
$C$DW$382	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$382, DW_AT_location[DW_OP_regx 0x41]
$C$DW$383	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$383, DW_AT_location[DW_OP_regx 0x42]
$C$DW$384	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$384, DW_AT_location[DW_OP_regx 0x43]
$C$DW$385	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$385, DW_AT_location[DW_OP_regx 0x44]
$C$DW$386	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$386, DW_AT_location[DW_OP_regx 0x45]
$C$DW$387	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$387, DW_AT_location[DW_OP_regx 0x46]
$C$DW$388	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$388, DW_AT_location[DW_OP_regx 0x47]
$C$DW$389	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$389, DW_AT_location[DW_OP_regx 0x48]
$C$DW$390	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$390, DW_AT_location[DW_OP_regx 0x49]
$C$DW$391	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$391, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$392	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$392, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$393	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$393, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$394	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$394, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$395	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$395, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$396	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$396, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$397	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$397, DW_AT_location[DW_OP_regx 0x50]
$C$DW$398	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$398, DW_AT_location[DW_OP_regx 0x51]
$C$DW$399	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$399, DW_AT_location[DW_OP_regx 0x52]
$C$DW$400	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$400, DW_AT_location[DW_OP_regx 0x53]
$C$DW$401	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$401, DW_AT_location[DW_OP_regx 0x54]
$C$DW$402	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$402, DW_AT_location[DW_OP_regx 0x55]
$C$DW$403	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$403, DW_AT_location[DW_OP_regx 0x56]
$C$DW$404	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$404, DW_AT_location[DW_OP_regx 0x57]
$C$DW$405	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$405, DW_AT_location[DW_OP_regx 0x58]
$C$DW$406	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$406, DW_AT_location[DW_OP_regx 0x59]
$C$DW$407	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$407, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$408	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$408, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

