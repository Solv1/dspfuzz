;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                        Unix v4.4.1 *
;* Date/Time created: Fri Feb  7 09:24:27 2025                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("./susan.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen Unix v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_smooth")

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


$C$DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("exp")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_exp")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$17)
	.dwendtag $C$DW$5

	.bss	_setbrightness,516,0,0
$C$DW$7	.dwtag  DW_TAG_variable, DW_AT_name("setbrightness")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_setbrightness")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_addr _setbrightness]
	.bss	_g_tmp_image,14256,0,0
$C$DW$8	.dwtag  DW_TAG_variable, DW_AT_name("g_tmp_image")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_g_tmp_image")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_addr _g_tmp_image]
	.bss	_g_dp,289,0,0
$C$DW$9	.dwtag  DW_TAG_variable, DW_AT_name("g_dp")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_g_dp")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_addr _g_dp]
	.global	_fakeFile
	.bss	_fakeFile,2,0,2
$C$DW$10	.dwtag  DW_TAG_variable, DW_AT_name("fakeFile")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_fakeFile")
	.dwattr $C$DW$10, DW_AT_location[DW_OP_addr _fakeFile]
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$10, DW_AT_external
;	/home/santiago/ti/ccs1281/ccs/tools/compiler/c5500_4.4.1/bin/acp55 -@/tmp/18717M8XgSW 
	.sect	".text"
	.global	_fgetc2

$C$DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("fgetc2")
	.dwattr $C$DW$11, DW_AT_low_pc(_fgetc2)
	.dwattr $C$DW$11, DW_AT_high_pc(0x00)
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_fgetc2")
	.dwattr $C$DW$11, DW_AT_external
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$11, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$11, DW_AT_TI_begin_line(0xc3)
	.dwattr $C$DW$11, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$11, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "./susan.c",line 196,column 1,is_stmt,address _fgetc2

	.dwfde $C$DW$CIE, _fgetc2
;*******************************************************************************
;* FUNCTION NAME: fgetc2                                                       *
;*                                                                             *
;*   Function Uses Regs : T0,AR1,AR3,XAR3,SP,M40,SATA,SATD,RDM,FRCT,SMUL       *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 2 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (1 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_fgetc2:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-1, SP
	.dwcfi	cfa_offset, 2
$C$DW$12	.dwtag  DW_TAG_variable, DW_AT_name("ret")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_ret")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_bregx 0x24 0]
	.dwpsn	file "./susan.c",line 197,column 10,is_stmt
        MOV dbl(*(#_fakeFile)), XAR3
        MOV *AR3, AR1 ; |197| 
        MOV AR1, *SP(#0) ; |197| 
	.dwpsn	file "./susan.c",line 198,column 5,is_stmt
        AMAR *AR3+
        MOV XAR3, dbl(*(#_fakeFile))
	.dwpsn	file "./susan.c",line 199,column 5,is_stmt
        MOV AR1, T0
	.dwpsn	file "./susan.c",line 200,column 1,is_stmt
        AADD #1, SP
	.dwcfi	cfa_offset, 1
$C$DW$13	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$13, DW_AT_low_pc(0x00)
	.dwattr $C$DW$13, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$11, DW_AT_TI_end_file("./susan.c")
	.dwattr $C$DW$11, DW_AT_TI_end_line(0xc8)
	.dwattr $C$DW$11, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$11

	.sect	".text"
	.global	_getint

$C$DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("getint")
	.dwattr $C$DW$14, DW_AT_low_pc(_getint)
	.dwattr $C$DW$14, DW_AT_high_pc(0x00)
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_getint")
	.dwattr $C$DW$14, DW_AT_external
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$14, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$14, DW_AT_TI_begin_line(0xca)
	.dwattr $C$DW$14, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$14, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "./susan.c",line 203,column 1,is_stmt,address _getint

	.dwfde $C$DW$CIE, _getint
;*******************************************************************************
;* FUNCTION NAME: getint                                                       *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,SP,CARRY,TC1,M40,SATA,SATD,RDM,   *
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_getint:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$15	.dwtag  DW_TAG_variable, DW_AT_name("c")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_c")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$16	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_bregx 0x24 2]
	.dwpsn	file "./susan.c",line 206,column 5,is_stmt
$C$DW$17	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$17, DW_AT_low_pc(0x00)
	.dwattr $C$DW$17, DW_AT_name("_fgetc2")
	.dwattr $C$DW$17, DW_AT_TI_call
        CALL #_fgetc2 ; |206| 
                                        ; call occurs [#_fgetc2] ; |206| 
        MOV T0, AC0
        MOV AC0, dbl(*SP(#0)) ; |206| 
	.dwpsn	file "./susan.c",line 207,column 12,is_stmt
$C$L1:    
$C$DW$L$_getint$2$B:
	.dwpsn	file "./susan.c",line 209,column 9,is_stmt
        MOV #35, AC0 ; |209| 
        MOV dbl(*SP(#0)), AC1 ; |209| 
        CMP AC1 != AC0, TC1 ; |209| 
        BCC $C$L3,TC1 ; |209| 
                                        ; branchcc occurs ; |209| 
$C$DW$L$_getint$2$E:
$C$DW$L$_getint$3$B:
	.dwpsn	file "./susan.c",line 210,column 20,is_stmt

        MOV dbl(*SP(#0)), AC1 ; |210| 
||      MOV #10, AC0 ; |210| 

        CMP AC1 == AC0, TC1 ; |210| 
        BCC $C$L3,TC1 ; |210| 
                                        ; branchcc occurs ; |210| 
$C$DW$L$_getint$3$E:
$C$L2:    
$C$DW$L$_getint$4$B:
	.dwpsn	file "./susan.c",line 211,column 17,is_stmt
$C$DW$18	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$18, DW_AT_low_pc(0x00)
	.dwattr $C$DW$18, DW_AT_name("_fgetc2")
	.dwattr $C$DW$18, DW_AT_TI_call
        CALL #_fgetc2 ; |211| 
                                        ; call occurs [#_fgetc2] ; |211| 
        MOV T0, AC0
        MOV AC0, dbl(*SP(#0)) ; |211| 
	.dwpsn	file "./susan.c",line 210,column 20,is_stmt

        MOV dbl(*SP(#0)), AC1 ; |210| 
||      MOV #10, AC0 ; |210| 

        CMP AC1 != AC0, TC1 ; |210| 
        BCC $C$L2,TC1 ; |210| 
                                        ; branchcc occurs ; |210| 
$C$DW$L$_getint$4$E:
$C$L3:    
$C$DW$L$_getint$5$B:
	.dwpsn	file "./susan.c",line 212,column 9,is_stmt

        MOV dbl(*SP(#0)), AC1 ; |212| 
||      MOV #-1, AC0 ; |212| 

        CMP AC1 != AC0, TC1 ; |212| 
        BCC $C$L9,!TC1 ; |212| 
                                        ; branchcc occurs ; |212| 
$C$DW$L$_getint$5$E:
$C$DW$L$_getint$6$B:
	.dwpsn	file "./susan.c",line 214,column 13,is_stmt
	.dwpsn	file "./susan.c",line 216,column 9,is_stmt
        MOV #48, AC0 ; |216| 
        MOV dbl(*SP(#0)), AC1 ; |216| 
        CMP AC1 < AC0, TC1 ; |216| 
        BCC $C$L4,TC1 ; |216| 
                                        ; branchcc occurs ; |216| 
$C$DW$L$_getint$6$E:
$C$DW$L$_getint$7$B:
        MOV #57, AC0 ; |216| 
        MOV dbl(*SP(#0)), AC1 ; |216| 
        CMP AC1 > AC0, TC1 ; |216| 
        BCC $C$L5,!TC1 ; |216| 
                                        ; branchcc occurs ; |216| 
$C$DW$L$_getint$7$E:
$C$DW$L$_getint$8$B:
	.dwpsn	file "./susan.c",line 217,column 13,is_stmt
$C$DW$L$_getint$8$E:
$C$L4:    
$C$DW$L$_getint$9$B:
	.dwpsn	file "./susan.c",line 218,column 9,is_stmt
$C$DW$19	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$19, DW_AT_low_pc(0x00)
	.dwattr $C$DW$19, DW_AT_name("_fgetc2")
	.dwattr $C$DW$19, DW_AT_TI_call
        CALL #_fgetc2 ; |218| 
                                        ; call occurs [#_fgetc2] ; |218| 
        MOV T0, AC0
        MOV AC0, dbl(*SP(#0)) ; |218| 
	.dwpsn	file "./susan.c",line 207,column 12,is_stmt
        B $C$L1   ; |207| 
                                        ; branch occurs ; |207| 
$C$DW$L$_getint$9$E:
$C$L5:    
	.dwpsn	file "./susan.c",line 222,column 5,is_stmt
        MOV #0, AC0 ; |222| 
        MOV AC0, dbl(*SP(#2)) ; |222| 
	.dwpsn	file "./susan.c",line 223,column 12,is_stmt
$C$L6:    
$C$DW$L$_getint$11$B:
	.dwpsn	file "./susan.c",line 225,column 9,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |225| 
        SFTS AC0, #1, AC1 ; |225| 
        ADD AC0 << #3, AC1 ; |225| 
        ADD dbl(*SP(#0)), AC1, AC0 ; |225| 
        SUB #48, AC0, AC0 ; |225| 
        MOV AC0, dbl(*SP(#2)) ; |225| 
	.dwpsn	file "./susan.c",line 226,column 9,is_stmt
$C$DW$20	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$20, DW_AT_low_pc(0x00)
	.dwattr $C$DW$20, DW_AT_name("_fgetc2")
	.dwattr $C$DW$20, DW_AT_TI_call
        CALL #_fgetc2 ; |226| 
                                        ; call occurs [#_fgetc2] ; |226| 
        MOV T0, AC0
        MOV AC0, dbl(*SP(#0)) ; |226| 
	.dwpsn	file "./susan.c",line 227,column 9,is_stmt

        MOV dbl(*SP(#0)), AC1 ; |227| 
||      MOV #-1, AC0 ; |227| 

        CMP AC1 != AC0, TC1 ; |227| 
        BCC $C$L7,TC1 ; |227| 
                                        ; branchcc occurs ; |227| 
$C$DW$L$_getint$11$E:
	.dwpsn	file "./susan.c",line 228,column 13,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |228| 
        B $C$L9   ; |228| 
                                        ; branch occurs ; |228| 
$C$L7:    
$C$DW$L$_getint$13$B:
	.dwpsn	file "./susan.c",line 229,column 9,is_stmt
        MOV #48, AC0 ; |229| 
        MOV dbl(*SP(#0)), AC1 ; |229| 
        CMP AC1 < AC0, TC1 ; |229| 
        BCC $C$L8,TC1 ; |229| 
                                        ; branchcc occurs ; |229| 
$C$DW$L$_getint$13$E:
$C$DW$L$_getint$14$B:
        MOV #57, AC0 ; |229| 
        MOV dbl(*SP(#0)), AC1 ; |229| 
        CMP AC1 <= AC0, TC1 ; |229| 
        BCC $C$L6,TC1 ; |229| 
                                        ; branchcc occurs ; |229| 
$C$DW$L$_getint$14$E:
        B $C$L8   ; |229| 
                                        ; branch occurs ; |229| 
$C$L8:    
	.dwpsn	file "./susan.c",line 233,column 5,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |233| 
$C$L9:    
	.dwpsn	file "./susan.c",line 234,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$21	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$21, DW_AT_low_pc(0x00)
	.dwattr $C$DW$21, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$22	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$22, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_smooth/susan.asm:$C$L6:1:1738938267")
	.dwattr $C$DW$22, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$22, DW_AT_TI_begin_line(0xdf)
	.dwattr $C$DW$22, DW_AT_TI_end_line(0xe7)
$C$DW$23	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$23, DW_AT_low_pc($C$DW$L$_getint$11$B)
	.dwattr $C$DW$23, DW_AT_high_pc($C$DW$L$_getint$11$E)
$C$DW$24	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$24, DW_AT_low_pc($C$DW$L$_getint$13$B)
	.dwattr $C$DW$24, DW_AT_high_pc($C$DW$L$_getint$13$E)
$C$DW$25	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$25, DW_AT_low_pc($C$DW$L$_getint$14$B)
	.dwattr $C$DW$25, DW_AT_high_pc($C$DW$L$_getint$14$E)
	.dwendtag $C$DW$22


$C$DW$26	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$26, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_smooth/susan.asm:$C$L1:1:1738938267")
	.dwattr $C$DW$26, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$26, DW_AT_TI_begin_line(0xcf)
	.dwattr $C$DW$26, DW_AT_TI_end_line(0xdb)
$C$DW$27	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$27, DW_AT_low_pc($C$DW$L$_getint$2$B)
	.dwattr $C$DW$27, DW_AT_high_pc($C$DW$L$_getint$2$E)
$C$DW$28	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$28, DW_AT_low_pc($C$DW$L$_getint$7$B)
	.dwattr $C$DW$28, DW_AT_high_pc($C$DW$L$_getint$7$E)
$C$DW$29	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$29, DW_AT_low_pc($C$DW$L$_getint$3$B)
	.dwattr $C$DW$29, DW_AT_high_pc($C$DW$L$_getint$3$E)
$C$DW$30	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$30, DW_AT_low_pc($C$DW$L$_getint$5$B)
	.dwattr $C$DW$30, DW_AT_high_pc($C$DW$L$_getint$5$E)
$C$DW$31	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$31, DW_AT_low_pc($C$DW$L$_getint$6$B)
	.dwattr $C$DW$31, DW_AT_high_pc($C$DW$L$_getint$6$E)
$C$DW$32	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$32, DW_AT_low_pc($C$DW$L$_getint$8$B)
	.dwattr $C$DW$32, DW_AT_high_pc($C$DW$L$_getint$8$E)
$C$DW$33	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$33, DW_AT_low_pc($C$DW$L$_getint$9$B)
	.dwattr $C$DW$33, DW_AT_high_pc($C$DW$L$_getint$9$E)

$C$DW$34	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$34, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_smooth/susan.asm:$C$L2:2:1738938267")
	.dwattr $C$DW$34, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$34, DW_AT_TI_begin_line(0xd2)
	.dwattr $C$DW$34, DW_AT_TI_end_line(0xd3)
$C$DW$35	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$35, DW_AT_low_pc($C$DW$L$_getint$4$B)
	.dwattr $C$DW$35, DW_AT_high_pc($C$DW$L$_getint$4$E)
	.dwendtag $C$DW$34

	.dwendtag $C$DW$26

	.dwattr $C$DW$14, DW_AT_TI_end_file("./susan.c")
	.dwattr $C$DW$14, DW_AT_TI_end_line(0xea)
	.dwattr $C$DW$14, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$14

	.sect	".text"
	.global	_get_image

$C$DW$36	.dwtag  DW_TAG_subprogram, DW_AT_name("get_image")
	.dwattr $C$DW$36, DW_AT_low_pc(_get_image)
	.dwattr $C$DW$36, DW_AT_high_pc(0x00)
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_get_image")
	.dwattr $C$DW$36, DW_AT_external
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$36, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$36, DW_AT_TI_begin_line(0xec)
	.dwattr $C$DW$36, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$36, DW_AT_TI_max_frame_size(0x6c)
	.dwpsn	file "./susan.c",line 237,column 1,is_stmt,address _get_image

	.dwfde $C$DW$CIE, _get_image
$C$DW$37	.dwtag  DW_TAG_formal_parameter, DW_AT_name("in")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_reg17]
$C$DW$38	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x_size")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_x_size")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_reg19]
$C$DW$39	.dwtag  DW_TAG_formal_parameter, DW_AT_name("y_size")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_y_size")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_reg21]
;*******************************************************************************
;* FUNCTION NAME: get_image                                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,   *
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 108 words                                            *
;*                        (1 return address/alignment)                         *
;*                        (107 local values)                                   *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_get_image:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-107, SP
	.dwcfi	cfa_offset, 108
$C$DW$40	.dwtag  DW_TAG_variable, DW_AT_name("in")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$41	.dwtag  DW_TAG_variable, DW_AT_name("x_size")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_x_size")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$42	.dwtag  DW_TAG_variable, DW_AT_name("y_size")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_y_size")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$43	.dwtag  DW_TAG_variable, DW_AT_name("header")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_header")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$44	.dwtag  DW_TAG_variable, DW_AT_name("temp")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_temp")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_bregx 0x24 106]
        MOV XAR2, dbl(*SP(#4))
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./susan.c",line 240,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3), XAR3
        MOV XAR3, dbl(*(#_fakeFile))
	.dwpsn	file "./susan.c",line 243,column 5,is_stmt
$C$DW$45	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$45, DW_AT_low_pc(0x00)
	.dwattr $C$DW$45, DW_AT_name("_fgetc2")
	.dwattr $C$DW$45, DW_AT_TI_call
        CALL #_fgetc2 ; |243| 
                                        ; call occurs [#_fgetc2] ; |243| 
        MOV T0, *SP(#6) ; |243| 
	.dwpsn	file "./susan.c",line 244,column 5,is_stmt
$C$DW$46	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$46, DW_AT_low_pc(0x00)
	.dwattr $C$DW$46, DW_AT_name("_fgetc2")
	.dwattr $C$DW$46, DW_AT_TI_call
        CALL #_fgetc2 ; |244| 
                                        ; call occurs [#_fgetc2] ; |244| 
        MOV T0, *SP(#7) ; |244| 
	.dwpsn	file "./susan.c",line 246,column 5,is_stmt
        CMP *SP(#6) == #80, TC1 ; |246| 
        BCC $C$L10,!TC1 ; |246| 
                                        ; branchcc occurs ; |246| 
        CMP *SP(#7) == #53, TC1 ; |246| 
        BCC $C$L11,TC1 ; |246| 
                                        ; branchcc occurs ; |246| 
$C$L10:    
	.dwpsn	file "./susan.c",line 248,column 9,is_stmt
        MOV #-1, T0
        B $C$L12  ; |248| 
                                        ; branch occurs ; |248| 
$C$L11:    
	.dwpsn	file "./susan.c",line 251,column 5,is_stmt
$C$DW$47	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$47, DW_AT_low_pc(0x00)
	.dwattr $C$DW$47, DW_AT_name("_getint")
	.dwattr $C$DW$47, DW_AT_TI_call
        CALL #_getint ; |251| 
                                        ; call occurs [#_getint] ; |251| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*AR3) ; |251| 
	.dwpsn	file "./susan.c",line 252,column 5,is_stmt
$C$DW$48	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$48, DW_AT_low_pc(0x00)
	.dwattr $C$DW$48, DW_AT_name("_getint")
	.dwattr $C$DW$48, DW_AT_TI_call
        CALL #_getint ; |252| 
                                        ; call occurs [#_getint] ; |252| 
        MOV dbl(*SP(#4)), XAR3
        MOV AC0, dbl(*AR3) ; |252| 
	.dwpsn	file "./susan.c",line 253,column 5,is_stmt
$C$DW$49	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$49, DW_AT_low_pc(0x00)
	.dwattr $C$DW$49, DW_AT_name("_getint")
	.dwattr $C$DW$49, DW_AT_TI_call
        CALL #_getint ; |253| 
                                        ; call occurs [#_getint] ; |253| 
        MOV AC0, *SP(#106) ; |253| 
	.dwpsn	file "./susan.c",line 254,column 5,is_stmt
	.dwpsn	file "./susan.c",line 256,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR2
        MOV dbl(*(#_fakeFile)), XAR3
        MOV XAR3, dbl(*AR2)
	.dwpsn	file "./susan.c",line 258,column 5,is_stmt
        MOV #0, T0
$C$L12:    
	.dwpsn	file "./susan.c",line 259,column 1,is_stmt
        AADD #107, SP
	.dwcfi	cfa_offset, 1
$C$DW$50	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$50, DW_AT_low_pc(0x00)
	.dwattr $C$DW$50, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$36, DW_AT_TI_end_file("./susan.c")
	.dwattr $C$DW$36, DW_AT_TI_end_line(0x103)
	.dwattr $C$DW$36, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$36

	.sect	".text"
	.global	_int_to_uint16_t

$C$DW$51	.dwtag  DW_TAG_subprogram, DW_AT_name("int_to_uint16_t")
	.dwattr $C$DW$51, DW_AT_low_pc(_int_to_uint16_t)
	.dwattr $C$DW$51, DW_AT_high_pc(0x00)
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_int_to_uint16_t")
	.dwattr $C$DW$51, DW_AT_external
	.dwattr $C$DW$51, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$51, DW_AT_TI_begin_line(0x119)
	.dwattr $C$DW$51, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$51, DW_AT_TI_max_frame_size(0x0e)
	.dwpsn	file "./susan.c",line 282,column 1,is_stmt,address _int_to_uint16_t

	.dwfde $C$DW$CIE, _int_to_uint16_t
$C$DW$52	.dwtag  DW_TAG_formal_parameter, DW_AT_name("r")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_r")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_reg17]
$C$DW$53	.dwtag  DW_TAG_formal_parameter, DW_AT_name("in")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_reg19]
$C$DW$54	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_reg0]
;*******************************************************************************
;* FUNCTION NAME: int_to_uint16_t                                              *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,    *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 14 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (12 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_int_to_uint16_t:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-13, SP
	.dwcfi	cfa_offset, 14
$C$DW$55	.dwtag  DW_TAG_variable, DW_AT_name("r")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_r")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$55, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$56	.dwtag  DW_TAG_variable, DW_AT_name("in")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$56, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$57	.dwtag  DW_TAG_variable, DW_AT_name("size")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$58	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$59	.dwtag  DW_TAG_variable, DW_AT_name("max_r")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_max_r")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$60	.dwtag  DW_TAG_variable, DW_AT_name("min_r")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_min_r")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_bregx 0x24 10]
        MOV AC0, dbl(*SP(#4)) ; |282| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./susan.c",line 284,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3), AC0 ; |284| 
        MOV AC0, dbl(*SP(#8)) ; |284| 
	.dwpsn	file "./susan.c",line 285,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3), AC0 ; |285| 
        MOV AC0, dbl(*SP(#10)) ; |285| 
	.dwpsn	file "./susan.c",line 287,column 10,is_stmt
        MOV #0, AC0 ; |287| 
        MOV AC0, dbl(*SP(#6)) ; |287| 
	.dwpsn	file "./susan.c",line 287,column 17,is_stmt
        MOV dbl(*SP(#6)), AC1 ; |287| 
        MOV dbl(*SP(#4)), AC0 ; |287| 
        CMP AC1 >= AC0, TC1 ; |287| 
        BCC $C$L16,TC1 ; |287| 
                                        ; branchcc occurs ; |287| 
$C$L13:    
$C$DW$L$_int_to_uint16_t$2$B:
	.dwpsn	file "./susan.c",line 289,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#7), T0 ; |289| 
        SFTL T0, #1 ; |289| 
        MOV dbl(*SP(#8)), AC0 ; |289| 
        MOV dbl(*AR3(T0)), AC1 ; |289| 
        CMP AC1 <= AC0, TC1 ; |289| 
        BCC $C$L14,TC1 ; |289| 
                                        ; branchcc occurs ; |289| 
$C$DW$L$_int_to_uint16_t$2$E:
$C$DW$L$_int_to_uint16_t$3$B:
	.dwpsn	file "./susan.c",line 290,column 13,is_stmt
        MOV *SP(#7), T0 ; |290| 
        SFTL T0, #1 ; |290| 
        MOV dbl(*AR3(T0)), AC0 ; |290| 
        MOV AC0, dbl(*SP(#8)) ; |290| 
$C$DW$L$_int_to_uint16_t$3$E:
$C$L14:    
$C$DW$L$_int_to_uint16_t$4$B:
	.dwpsn	file "./susan.c",line 291,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#7), T0 ; |291| 
        SFTL T0, #1 ; |291| 
        MOV dbl(*SP(#10)), AC0 ; |291| 
        MOV dbl(*AR3(T0)), AC1 ; |291| 
        CMP AC1 >= AC0, TC1 ; |291| 
        BCC $C$L15,TC1 ; |291| 
                                        ; branchcc occurs ; |291| 
$C$DW$L$_int_to_uint16_t$4$E:
$C$DW$L$_int_to_uint16_t$5$B:
	.dwpsn	file "./susan.c",line 292,column 13,is_stmt
        MOV *SP(#7), T0 ; |292| 
        SFTL T0, #1 ; |292| 
        MOV dbl(*AR3(T0)), AC0 ; |292| 
        MOV AC0, dbl(*SP(#10)) ; |292| 
$C$DW$L$_int_to_uint16_t$5$E:
$C$L15:    
$C$DW$L$_int_to_uint16_t$6$B:
	.dwpsn	file "./susan.c",line 287,column 27,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |287| 
        ADD #1, AC0 ; |287| 
        MOV AC0, dbl(*SP(#6)) ; |287| 
	.dwpsn	file "./susan.c",line 287,column 17,is_stmt
        MOV dbl(*SP(#6)), AC1 ; |287| 
        MOV dbl(*SP(#4)), AC0 ; |287| 
        CMP AC1 < AC0, TC1 ; |287| 
        BCC $C$L13,TC1 ; |287| 
                                        ; branchcc occurs ; |287| 
$C$DW$L$_int_to_uint16_t$6$E:
$C$L16:    
	.dwpsn	file "./susan.c",line 295,column 5,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |295| 
        SUB AC0, dbl(*SP(#8)), AC0 ; |295| 
        MOV AC0, dbl(*SP(#8)) ; |295| 
	.dwpsn	file "./susan.c",line 297,column 10,is_stmt
        MOV #0, AC0 ; |297| 
        MOV AC0, dbl(*SP(#6)) ; |297| 
	.dwpsn	file "./susan.c",line 297,column 17,is_stmt
        MOV dbl(*SP(#6)), AC1 ; |297| 
        MOV dbl(*SP(#4)), AC0 ; |297| 
        CMP AC1 >= AC0, TC1 ; |297| 
        BCC $C$L18,TC1 ; |297| 
                                        ; branchcc occurs ; |297| 
$C$L17:    
$C$DW$L$_int_to_uint16_t$8$B:
	.dwpsn	file "./susan.c",line 298,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#7), T0 ; |298| 
        SFTL T0, #1 ; |298| 
        MOV dbl(*SP(#10)), AC0 ; |298| 
        SUB AC0, dbl(*AR3(T0)), AC1 ; |298| 
        SFTS AC1, #8, AC0 ; |298| 

        MOV dbl(*SP(#8)), AC1 ; |298| 
||      SUB AC1, AC0 ; |298| 

$C$DW$61	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$61, DW_AT_low_pc(0x00)
	.dwattr $C$DW$61, DW_AT_name("__divli")
	.dwattr $C$DW$61, DW_AT_TI_call
        CALL #__divli ; |298| 
                                        ; call occurs [#__divli] ; |298| 
        MOV *SP(#7), T0 ; |298| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, *AR3(T0) ; |298| 
	.dwpsn	file "./susan.c",line 297,column 27,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |297| 
        ADD #1, AC0 ; |297| 
        MOV AC0, dbl(*SP(#6)) ; |297| 
	.dwpsn	file "./susan.c",line 297,column 17,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |297| 
        MOV dbl(*SP(#6)), AC1 ; |297| 
        CMP AC1 < AC0, TC1 ; |297| 
        BCC $C$L17,TC1 ; |297| 
                                        ; branchcc occurs ; |297| 
$C$DW$L$_int_to_uint16_t$8$E:
	.dwpsn	file "./susan.c",line 299,column 1,is_stmt
$C$L18:    
        AADD #13, SP
	.dwcfi	cfa_offset, 1
$C$DW$62	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$62, DW_AT_low_pc(0x00)
	.dwattr $C$DW$62, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$63	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$63, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_smooth/susan.asm:$C$L17:1:1738938267")
	.dwattr $C$DW$63, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$63, DW_AT_TI_begin_line(0x129)
	.dwattr $C$DW$63, DW_AT_TI_end_line(0x12a)
$C$DW$64	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$64, DW_AT_low_pc($C$DW$L$_int_to_uint16_t$8$B)
	.dwattr $C$DW$64, DW_AT_high_pc($C$DW$L$_int_to_uint16_t$8$E)
	.dwendtag $C$DW$63


$C$DW$65	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$65, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_smooth/susan.asm:$C$L13:1:1738938267")
	.dwattr $C$DW$65, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$65, DW_AT_TI_begin_line(0x11f)
	.dwattr $C$DW$65, DW_AT_TI_end_line(0x125)
$C$DW$66	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$66, DW_AT_low_pc($C$DW$L$_int_to_uint16_t$2$B)
	.dwattr $C$DW$66, DW_AT_high_pc($C$DW$L$_int_to_uint16_t$2$E)
$C$DW$67	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$67, DW_AT_low_pc($C$DW$L$_int_to_uint16_t$3$B)
	.dwattr $C$DW$67, DW_AT_high_pc($C$DW$L$_int_to_uint16_t$3$E)
$C$DW$68	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$68, DW_AT_low_pc($C$DW$L$_int_to_uint16_t$4$B)
	.dwattr $C$DW$68, DW_AT_high_pc($C$DW$L$_int_to_uint16_t$4$E)
$C$DW$69	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$69, DW_AT_low_pc($C$DW$L$_int_to_uint16_t$5$B)
	.dwattr $C$DW$69, DW_AT_high_pc($C$DW$L$_int_to_uint16_t$5$E)
$C$DW$70	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$70, DW_AT_low_pc($C$DW$L$_int_to_uint16_t$6$B)
	.dwattr $C$DW$70, DW_AT_high_pc($C$DW$L$_int_to_uint16_t$6$E)
	.dwendtag $C$DW$65

	.dwattr $C$DW$51, DW_AT_TI_end_file("./susan.c")
	.dwattr $C$DW$51, DW_AT_TI_end_line(0x12b)
	.dwattr $C$DW$51, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$51

	.sect	".text"
	.global	_setup_brightness_lut

$C$DW$71	.dwtag  DW_TAG_subprogram, DW_AT_name("setup_brightness_lut")
	.dwattr $C$DW$71, DW_AT_low_pc(_setup_brightness_lut)
	.dwattr $C$DW$71, DW_AT_high_pc(0x00)
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_setup_brightness_lut")
	.dwattr $C$DW$71, DW_AT_external
	.dwattr $C$DW$71, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$71, DW_AT_TI_begin_line(0x12d)
	.dwattr $C$DW$71, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$71, DW_AT_TI_max_frame_size(0x0e)
	.dwpsn	file "./susan.c",line 302,column 1,is_stmt,address _setup_brightness_lut

	.dwfde $C$DW$CIE, _setup_brightness_lut
$C$DW$72	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bp")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_bp")
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$72, DW_AT_location[DW_OP_reg17]
$C$DW$73	.dwtag  DW_TAG_formal_parameter, DW_AT_name("thresh")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_thresh")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_reg0]
$C$DW$74	.dwtag  DW_TAG_formal_parameter, DW_AT_name("form")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_form")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_reg3]
;*******************************************************************************
;* FUNCTION NAME: setup_brightness_lut                                         *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR2,XAR2,AR3,XAR3,SP,*
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 14 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (12 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_setup_brightness_lut:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-13, SP
	.dwcfi	cfa_offset, 14
$C$DW$75	.dwtag  DW_TAG_variable, DW_AT_name("bp")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_bp")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$75, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$76	.dwtag  DW_TAG_variable, DW_AT_name("thresh")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_thresh")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$76, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$77	.dwtag  DW_TAG_variable, DW_AT_name("form")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_form")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$78	.dwtag  DW_TAG_variable, DW_AT_name("k")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_k")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$79	.dwtag  DW_TAG_variable, DW_AT_name("temp")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_temp")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$79, DW_AT_location[DW_OP_bregx 0x24 8]
        MOV AC1, dbl(*SP(#4)) ; |302| 
        MOV AC0, dbl(*SP(#2)) ; |302| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./susan.c",line 306,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR2
        AMOV #_setbrightness, XAR3 ; |306| 
        MOV XAR3, dbl(*AR2)
	.dwpsn	file "./susan.c",line 307,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3), XAR3
        MOV dbl(*SP(#0)), XAR2
        AMAR *+AR3(#258) ; |307| 
        MOV XAR3, dbl(*AR2)
	.dwpsn	file "./susan.c",line 309,column 10,is_stmt
        MOV #-256, AC0 ; |309| 
        MOV AC0, dbl(*SP(#6)) ; |309| 
	.dwpsn	file "./susan.c",line 309,column 20,is_stmt
        MOV #257, AC0 ; |309| 
        MOV dbl(*SP(#6)), AC1 ; |309| 
        CMP AC1 >= AC0, TC1 ; |309| 
        BCC $C$L21,TC1 ; |309| 
                                        ; branchcc occurs ; |309| 
$C$L19:    
$C$DW$L$_setup_brightness_lut$2$B:
	.dwpsn	file "./susan.c",line 311,column 9,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |311| 
$C$DW$80	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$80, DW_AT_low_pc(0x00)
	.dwattr $C$DW$80, DW_AT_name("__fltlid")
	.dwattr $C$DW$80, DW_AT_TI_call
        CALL #__fltlid ; |311| 
                                        ; call occurs [#__fltlid] ; |311| 
        MOV AC0, dbl(*SP(#10)) ; |311| 
        MOV dbl(*SP(#2)), AC0 ; |311| 
$C$DW$81	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$81, DW_AT_low_pc(0x00)
	.dwattr $C$DW$81, DW_AT_name("__fltlid")
	.dwattr $C$DW$81, DW_AT_TI_call
        CALL #__fltlid ; |311| 
                                        ; call occurs [#__fltlid] ; |311| 

        MOV dbl(*SP(#10)), AC0 ; |311| 
||      OR #0, AC0, AC1

$C$DW$82	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$82, DW_AT_low_pc(0x00)
	.dwattr $C$DW$82, DW_AT_name("__divd")
	.dwattr $C$DW$82, DW_AT_TI_call
        CALL #__divd ; |311| 
                                        ; call occurs [#__divd] ; |311| 
        MOV AC0, dbl(*SP(#8)) ; |311| 
	.dwpsn	file "./susan.c",line 312,column 9,is_stmt
        MOV dbl(*SP(#8)), AC1 ; |312| 
$C$DW$83	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$83, DW_AT_low_pc(0x00)
	.dwattr $C$DW$83, DW_AT_name("__mpyd")
	.dwattr $C$DW$83, DW_AT_TI_call
        CALL #__mpyd ; |312| 
                                        ; call occurs [#__mpyd] ; |312| 
        MOV AC0, dbl(*SP(#8)) ; |312| 
	.dwpsn	file "./susan.c",line 313,column 9,is_stmt

        MOV dbl(*SP(#4)), AC1 ; |313| 
||      MOV #6, AC0 ; |313| 

        CMP AC1 != AC0, TC1 ; |313| 
        BCC $C$L20,TC1 ; |313| 
                                        ; branchcc occurs ; |313| 
$C$DW$L$_setup_brightness_lut$2$E:
$C$DW$L$_setup_brightness_lut$3$B:
	.dwpsn	file "./susan.c",line 314,column 13,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |314| 
        MOV dbl(*SP(#8)), AC1 ; |314| 
$C$DW$84	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$84, DW_AT_low_pc(0x00)
	.dwattr $C$DW$84, DW_AT_name("__mpyd")
	.dwattr $C$DW$84, DW_AT_TI_call
        CALL #__mpyd ; |314| 
                                        ; call occurs [#__mpyd] ; |314| 
        MOV dbl(*SP(#8)), AC1 ; |314| 
$C$DW$85	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$85, DW_AT_low_pc(0x00)
	.dwattr $C$DW$85, DW_AT_name("__mpyd")
	.dwattr $C$DW$85, DW_AT_TI_call
        CALL #__mpyd ; |314| 
                                        ; call occurs [#__mpyd] ; |314| 
        MOV AC0, dbl(*SP(#8)) ; |314| 
$C$DW$L$_setup_brightness_lut$3$E:
$C$L20:    
$C$DW$L$_setup_brightness_lut$4$B:
	.dwpsn	file "./susan.c",line 315,column 9,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |315| 
$C$DW$86	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$86, DW_AT_low_pc(0x00)
	.dwattr $C$DW$86, DW_AT_name("__negd")
	.dwattr $C$DW$86, DW_AT_TI_call
        CALL #__negd ; |315| 
                                        ; call occurs [#__negd] ; |315| 
$C$DW$87	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$87, DW_AT_low_pc(0x00)
	.dwattr $C$DW$87, DW_AT_name("_exp")
	.dwattr $C$DW$87, DW_AT_TI_call
        CALL #_exp ; |315| 
                                        ; call occurs [#_exp] ; |315| 
        OR #0, AC0, AC1
        MOV dbl(*($C$FL1)), AC0 ; |315| 
$C$DW$88	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$88, DW_AT_low_pc(0x00)
	.dwattr $C$DW$88, DW_AT_name("__mpyd")
	.dwattr $C$DW$88, DW_AT_TI_call
        CALL #__mpyd ; |315| 
                                        ; call occurs [#__mpyd] ; |315| 
        MOV AC0, dbl(*SP(#8)) ; |315| 
	.dwpsn	file "./susan.c",line 316,column 9,is_stmt
$C$DW$89	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$89, DW_AT_low_pc(0x00)
	.dwattr $C$DW$89, DW_AT_name("__fixdu")
	.dwattr $C$DW$89, DW_AT_TI_call
        CALL #__fixdu ; |316| 
                                        ; call occurs [#__fixdu] ; |316| 
        MOV dbl(*SP(#0)), XAR3

        MOV *SP(#7), T0 ; |316| 
||      MOV T0, AR1 ; |316| 

        MOV dbl(*AR3), XAR3
        MOV AR1, *AR3(T0) ; |316| 
	.dwpsn	file "./susan.c",line 309,column 29,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |309| 
        ADD #1, AC0 ; |309| 
        MOV AC0, dbl(*SP(#6)) ; |309| 
	.dwpsn	file "./susan.c",line 309,column 20,is_stmt
        MOV #257, AC0 ; |309| 
        MOV dbl(*SP(#6)), AC1 ; |309| 
        CMP AC1 < AC0, TC1 ; |309| 
        BCC $C$L19,TC1 ; |309| 
                                        ; branchcc occurs ; |309| 
$C$DW$L$_setup_brightness_lut$4$E:
	.dwpsn	file "./susan.c",line 318,column 1,is_stmt
$C$L21:    
        AADD #13, SP
	.dwcfi	cfa_offset, 1
$C$DW$90	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$90, DW_AT_low_pc(0x00)
	.dwattr $C$DW$90, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$91	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$91, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_smooth/susan.asm:$C$L19:1:1738938267")
	.dwattr $C$DW$91, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$91, DW_AT_TI_begin_line(0x135)
	.dwattr $C$DW$91, DW_AT_TI_end_line(0x13d)
$C$DW$92	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$92, DW_AT_low_pc($C$DW$L$_setup_brightness_lut$2$B)
	.dwattr $C$DW$92, DW_AT_high_pc($C$DW$L$_setup_brightness_lut$2$E)
$C$DW$93	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$93, DW_AT_low_pc($C$DW$L$_setup_brightness_lut$3$B)
	.dwattr $C$DW$93, DW_AT_high_pc($C$DW$L$_setup_brightness_lut$3$E)
$C$DW$94	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$94, DW_AT_low_pc($C$DW$L$_setup_brightness_lut$4$B)
	.dwattr $C$DW$94, DW_AT_high_pc($C$DW$L$_setup_brightness_lut$4$E)
	.dwendtag $C$DW$91

	.dwattr $C$DW$71, DW_AT_TI_end_file("./susan.c")
	.dwattr $C$DW$71, DW_AT_TI_end_line(0x13e)
	.dwattr $C$DW$71, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$71

	.sect	".text"
	.global	_median

$C$DW$95	.dwtag  DW_TAG_subprogram, DW_AT_name("median")
	.dwattr $C$DW$95, DW_AT_low_pc(_median)
	.dwattr $C$DW$95, DW_AT_high_pc(0x00)
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("_median")
	.dwattr $C$DW$95, DW_AT_external
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$95, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$95, DW_AT_TI_begin_line(0x140)
	.dwattr $C$DW$95, DW_AT_TI_begin_column(0x0a)
	.dwattr $C$DW$95, DW_AT_TI_max_frame_size(0x20)
	.dwpsn	file "./susan.c",line 321,column 1,is_stmt,address _median

	.dwfde $C$DW$CIE, _median
$C$DW$96	.dwtag  DW_TAG_formal_parameter, DW_AT_name("in")
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$96, DW_AT_location[DW_OP_reg17]
$C$DW$97	.dwtag  DW_TAG_formal_parameter, DW_AT_name("i")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$97, DW_AT_location[DW_OP_reg0]
$C$DW$98	.dwtag  DW_TAG_formal_parameter, DW_AT_name("j")
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$98, DW_AT_location[DW_OP_reg3]
$C$DW$99	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x_size")
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_x_size")
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$99, DW_AT_location[DW_OP_reg6]
;*******************************************************************************
;* FUNCTION NAME: median                                                       *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,AC2,AC2,T0,AR0,XAR0,AR1,AR2,XAR2,AR3,*
;*                        XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 32 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (30 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_median:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-31, SP
	.dwcfi	cfa_offset, 32
$C$DW$100	.dwtag  DW_TAG_variable, DW_AT_name("in")
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$100, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$101	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$101, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$102	.dwtag  DW_TAG_variable, DW_AT_name("j")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$102, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$103	.dwtag  DW_TAG_variable, DW_AT_name("x_size")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("_x_size")
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$103, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$104	.dwtag  DW_TAG_variable, DW_AT_name("p")
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_p")
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$104, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$105	.dwtag  DW_TAG_variable, DW_AT_name("k")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_k")
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$105, DW_AT_location[DW_OP_bregx 0x24 24]
$C$DW$106	.dwtag  DW_TAG_variable, DW_AT_name("l")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_l")
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$106, DW_AT_location[DW_OP_bregx 0x24 26]
$C$DW$107	.dwtag  DW_TAG_variable, DW_AT_name("tmp")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_tmp")
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$107, DW_AT_location[DW_OP_bregx 0x24 28]
        MOV AC2, dbl(*SP(#6)) ; |321| 
        MOV AC1, dbl(*SP(#4)) ; |321| 
        MOV AC0, dbl(*SP(#2)) ; |321| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./susan.c",line 324,column 5,is_stmt

        MOV dbl(*SP(#6)), AC1 ; |324| 
||      MOV #1, AC0 ; |324| 

        SUB AC0, dbl(*SP(#2)), AC0 ; |324| 
$C$DW$108	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$108, DW_AT_low_pc(0x00)
	.dwattr $C$DW$108, DW_AT_name("__mpyli")
	.dwattr $C$DW$108, DW_AT_TI_call
        CALL #__mpyli ; |324| 
                                        ; call occurs [#__mpyli] ; |324| 
        MOV dbl(*SP(#0)), XAR3
        ADD dbl(*SP(#4)), AC0, AC0 ; |324| 
        SUB #1, AC0 ; |324| 
        MOV AC0, T0 ; |324| 
        MOV uns(*AR3(T0)), AC0 ; |324| 
        MOV AC0, dbl(*SP(#8)) ; |324| 
	.dwpsn	file "./susan.c",line 325,column 5,is_stmt

        MOV dbl(*SP(#6)), AC1 ; |325| 
||      MOV #1, AC0 ; |325| 

        SUB AC0, dbl(*SP(#2)), AC0 ; |325| 
$C$DW$109	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$109, DW_AT_low_pc(0x00)
	.dwattr $C$DW$109, DW_AT_name("__mpyli")
	.dwattr $C$DW$109, DW_AT_TI_call
        CALL #__mpyli ; |325| 
                                        ; call occurs [#__mpyli] ; |325| 
        MOV dbl(*SP(#0)), XAR3
        ADD dbl(*SP(#4)), AC0, AC0 ; |325| 
        MOV AC0, T0 ; |325| 
        MOV uns(*AR3(T0)), AC0 ; |325| 
        MOV AC0, dbl(*SP(#10)) ; |325| 
	.dwpsn	file "./susan.c",line 326,column 5,is_stmt

        MOV dbl(*SP(#6)), AC1 ; |326| 
||      MOV #1, AC0 ; |326| 

        SUB AC0, dbl(*SP(#2)), AC0 ; |326| 
$C$DW$110	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$110, DW_AT_low_pc(0x00)
	.dwattr $C$DW$110, DW_AT_name("__mpyli")
	.dwattr $C$DW$110, DW_AT_TI_call
        CALL #__mpyli ; |326| 
                                        ; call occurs [#__mpyli] ; |326| 
        MOV dbl(*SP(#0)), XAR3
        ADD dbl(*SP(#4)), AC0, AC0 ; |326| 
        ADD #1, AC0 ; |326| 
        MOV AC0, T0 ; |326| 
        MOV uns(*AR3(T0)), AC0 ; |326| 
        MOV AC0, dbl(*SP(#12)) ; |326| 
	.dwpsn	file "./susan.c",line 327,column 5,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |327| 
        MOV dbl(*SP(#6)), AC1 ; |327| 
$C$DW$111	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$111, DW_AT_low_pc(0x00)
	.dwattr $C$DW$111, DW_AT_name("__mpyli")
	.dwattr $C$DW$111, DW_AT_TI_call
        CALL #__mpyli ; |327| 
                                        ; call occurs [#__mpyli] ; |327| 
        MOV dbl(*SP(#0)), XAR3
        ADD dbl(*SP(#4)), AC0, AC0 ; |327| 
        SUB #1, AC0 ; |327| 
        MOV AC0, T0 ; |327| 
        MOV uns(*AR3(T0)), AC0 ; |327| 
        MOV AC0, dbl(*SP(#14)) ; |327| 
	.dwpsn	file "./susan.c",line 328,column 5,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |328| 
        MOV dbl(*SP(#6)), AC1 ; |328| 
$C$DW$112	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$112, DW_AT_low_pc(0x00)
	.dwattr $C$DW$112, DW_AT_name("__mpyli")
	.dwattr $C$DW$112, DW_AT_TI_call
        CALL #__mpyli ; |328| 
                                        ; call occurs [#__mpyli] ; |328| 
        MOV dbl(*SP(#0)), XAR3
        ADD dbl(*SP(#4)), AC0, AC0 ; |328| 
        ADD #1, AC0 ; |328| 
        MOV AC0, T0 ; |328| 
        MOV uns(*AR3(T0)), AC0 ; |328| 
        MOV AC0, dbl(*SP(#16)) ; |328| 
	.dwpsn	file "./susan.c",line 329,column 5,is_stmt

        MOV dbl(*SP(#6)), AC1 ; |329| 
||      MOV #1, AC0 ; |329| 

        ADD dbl(*SP(#2)), AC0, AC0 ; |329| 
$C$DW$113	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$113, DW_AT_low_pc(0x00)
	.dwattr $C$DW$113, DW_AT_name("__mpyli")
	.dwattr $C$DW$113, DW_AT_TI_call
        CALL #__mpyli ; |329| 
                                        ; call occurs [#__mpyli] ; |329| 
        MOV dbl(*SP(#0)), XAR3
        ADD dbl(*SP(#4)), AC0, AC0 ; |329| 
        SUB #1, AC0 ; |329| 
        MOV AC0, T0 ; |329| 
        MOV uns(*AR3(T0)), AC0 ; |329| 
        MOV AC0, dbl(*SP(#18)) ; |329| 
	.dwpsn	file "./susan.c",line 330,column 5,is_stmt

        MOV dbl(*SP(#6)), AC1 ; |330| 
||      MOV #1, AC0 ; |330| 

        ADD dbl(*SP(#2)), AC0, AC0 ; |330| 
$C$DW$114	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$114, DW_AT_low_pc(0x00)
	.dwattr $C$DW$114, DW_AT_name("__mpyli")
	.dwattr $C$DW$114, DW_AT_TI_call
        CALL #__mpyli ; |330| 
                                        ; call occurs [#__mpyli] ; |330| 
        MOV dbl(*SP(#0)), XAR3
        ADD dbl(*SP(#4)), AC0, AC0 ; |330| 
        MOV AC0, T0 ; |330| 
        MOV uns(*AR3(T0)), AC0 ; |330| 
        MOV AC0, dbl(*SP(#20)) ; |330| 
	.dwpsn	file "./susan.c",line 331,column 5,is_stmt

        MOV dbl(*SP(#6)), AC1 ; |331| 
||      MOV #1, AC0 ; |331| 

        ADD dbl(*SP(#2)), AC0, AC0 ; |331| 
$C$DW$115	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$115, DW_AT_low_pc(0x00)
	.dwattr $C$DW$115, DW_AT_name("__mpyli")
	.dwattr $C$DW$115, DW_AT_TI_call
        CALL #__mpyli ; |331| 
                                        ; call occurs [#__mpyli] ; |331| 
        MOV dbl(*SP(#0)), XAR3
        ADD dbl(*SP(#4)), AC0, AC0 ; |331| 
        ADD #1, AC0 ; |331| 
        MOV AC0, T0 ; |331| 
        MOV uns(*AR3(T0)), AC0 ; |331| 
        MOV AC0, dbl(*SP(#22)) ; |331| 
	.dwpsn	file "./susan.c",line 333,column 10,is_stmt
        MOV #0, AC0 ; |333| 
        MOV AC0, dbl(*SP(#24)) ; |333| 
	.dwpsn	file "./susan.c",line 333,column 17,is_stmt

        MOV dbl(*SP(#24)), AC1 ; |333| 
||      MOV #7, AC0 ; |333| 

        CMP AC1 >= AC0, TC1 ; |333| 
        BCC $C$L26,TC1 ; |333| 
                                        ; branchcc occurs ; |333| 
$C$L22:    
$C$DW$L$_median$2$B:
	.dwpsn	file "./susan.c",line 335,column 14,is_stmt
        MOV #0, AC0 ; |335| 
        MOV AC0, dbl(*SP(#26)) ; |335| 
	.dwpsn	file "./susan.c",line 335,column 21,is_stmt

        MOV #7, AC0 ; |335| 
||      MOV dbl(*SP(#26)), AC1 ; |335| 

        SUB dbl(*SP(#24)), AC0, AC0 ; |335| 
        CMP AC1 >= AC0, TC1 ; |335| 
        BCC $C$L25,TC1 ; |335| 
                                        ; branchcc occurs ; |335| 
$C$DW$L$_median$2$E:
$C$L23:    
$C$DW$L$_median$3$B:
	.dwpsn	file "./susan.c",line 337,column 13,is_stmt
        MOV dbl(*SP(#26)), AC0 ; |337| 
        ADD #1, AC0 ; |337| 
        MOV AC0, T0 ; |337| 
        SFTL T0, #1 ; |337| 
        AMAR *SP(#8), XAR3
        MOV dbl(*AR3(T0)), AC0 ; |337| 
        MOV *SP(#27), T0 ; |337| 
        SFTL T0, #1 ; |337| 
        AMAR *SP(#8), XAR3
        MOV dbl(*AR3(T0)), AC1 ; |337| 
        CMP AC1 <= AC0, TC1 ; |337| 
        BCC $C$L24,TC1 ; |337| 
                                        ; branchcc occurs ; |337| 
$C$DW$L$_median$3$E:
$C$DW$L$_median$4$B:
	.dwpsn	file "./susan.c",line 339,column 17,is_stmt
        MOV *SP(#27), T0 ; |339| 
        SFTL T0, #1 ; |339| 
        AMAR *SP(#8), XAR3
        MOV dbl(*AR3(T0)), AC0 ; |339| 
        MOV AC0, dbl(*SP(#28)) ; |339| 
	.dwpsn	file "./susan.c",line 340,column 17,is_stmt
        MOV *SP(#27), AR1 ; |340| 
        MOV dbl(*SP(#26)), AC0 ; |340| 

        ADD #1, AC0 ; |340| 
||      SFTL AR1, #1 ; |340| 

        MOV AC0, T0 ; |340| 
        SFTL T0, #1 ; |340| 
        AMAR *SP(#8), XAR3
        AMAR *SP(#8), XAR2
        AADD AR1, AR3 ; |340| 
        MOV dbl(*AR2(T0)), dbl(*AR3) ; |340| 
	.dwpsn	file "./susan.c",line 341,column 17,is_stmt
        MOV dbl(*SP(#26)), AC0 ; |341| 
        ADD #1, AC0 ; |341| 
        MOV AC0, T0 ; |341| 
        SFTL T0, #1 ; |341| 
        AMAR *SP(#8), XAR3
        MOV dbl(*SP(#28)), AC0 ; |341| 
        MOV AC0, dbl(*AR3(T0)) ; |341| 
$C$DW$L$_median$4$E:
$C$L24:    
$C$DW$L$_median$5$B:
	.dwpsn	file "./susan.c",line 335,column 34,is_stmt
        MOV dbl(*SP(#26)), AC0 ; |335| 
        ADD #1, AC0 ; |335| 
        MOV AC0, dbl(*SP(#26)) ; |335| 
	.dwpsn	file "./susan.c",line 335,column 21,is_stmt

        MOV #7, AC0 ; |335| 
||      MOV dbl(*SP(#26)), AC1 ; |335| 

        SUB dbl(*SP(#24)), AC0, AC0 ; |335| 
        CMP AC1 < AC0, TC1 ; |335| 
        BCC $C$L23,TC1 ; |335| 
                                        ; branchcc occurs ; |335| 
$C$DW$L$_median$5$E:
$C$L25:    
$C$DW$L$_median$6$B:
	.dwpsn	file "./susan.c",line 333,column 24,is_stmt
        MOV dbl(*SP(#24)), AC0 ; |333| 
        ADD #1, AC0 ; |333| 
        MOV AC0, dbl(*SP(#24)) ; |333| 
	.dwpsn	file "./susan.c",line 333,column 17,is_stmt

        MOV #7, AC0 ; |333| 
||      MOV dbl(*SP(#24)), AC1 ; |333| 

        CMP AC1 < AC0, TC1 ; |333| 
        BCC $C$L22,TC1 ; |333| 
                                        ; branchcc occurs ; |333| 
$C$DW$L$_median$6$E:
$C$L26:    
	.dwpsn	file "./susan.c",line 346,column 5,is_stmt
        MOV dbl(*SP(#16)), AC0 ; |346| 
        ADD dbl(*SP(#14)), AC0, AC1 ; |346| 
        SFTL AC1, #-31, AC0 ; |346| 
        ADD AC1, AC0 ; |346| 
        SFTS AC0, #-1 ; |346| 
	.dwpsn	file "./susan.c",line 347,column 1,is_stmt
        MOV AC0, T0 ; |346| 
        AADD #31, SP ; |346| 
	.dwcfi	cfa_offset, 1
$C$DW$116	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$116, DW_AT_low_pc(0x00)
	.dwattr $C$DW$116, DW_AT_TI_return
        RET       ; |346| 
                                        ; return occurs ; |346| 

$C$DW$117	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$117, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_smooth/susan.asm:$C$L22:1:1738938267")
	.dwattr $C$DW$117, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$117, DW_AT_TI_begin_line(0x14d)
	.dwattr $C$DW$117, DW_AT_TI_end_line(0x158)
$C$DW$118	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$118, DW_AT_low_pc($C$DW$L$_median$2$B)
	.dwattr $C$DW$118, DW_AT_high_pc($C$DW$L$_median$2$E)
$C$DW$119	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$119, DW_AT_low_pc($C$DW$L$_median$6$B)
	.dwattr $C$DW$119, DW_AT_high_pc($C$DW$L$_median$6$E)

$C$DW$120	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$120, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_smooth/susan.asm:$C$L23:2:1738938267")
	.dwattr $C$DW$120, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$120, DW_AT_TI_begin_line(0x14f)
	.dwattr $C$DW$120, DW_AT_TI_end_line(0x157)
$C$DW$121	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$121, DW_AT_low_pc($C$DW$L$_median$3$B)
	.dwattr $C$DW$121, DW_AT_high_pc($C$DW$L$_median$3$E)
$C$DW$122	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$122, DW_AT_low_pc($C$DW$L$_median$4$B)
	.dwattr $C$DW$122, DW_AT_high_pc($C$DW$L$_median$4$E)
$C$DW$123	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$123, DW_AT_low_pc($C$DW$L$_median$5$B)
	.dwattr $C$DW$123, DW_AT_high_pc($C$DW$L$_median$5$E)
	.dwendtag $C$DW$120

	.dwendtag $C$DW$117

	.dwattr $C$DW$95, DW_AT_TI_end_file("./susan.c")
	.dwattr $C$DW$95, DW_AT_TI_end_line(0x15b)
	.dwattr $C$DW$95, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$95

	.sect	".text"
	.global	_enlarge

$C$DW$124	.dwtag  DW_TAG_subprogram, DW_AT_name("enlarge")
	.dwattr $C$DW$124, DW_AT_low_pc(_enlarge)
	.dwattr $C$DW$124, DW_AT_high_pc(0x00)
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_enlarge")
	.dwattr $C$DW$124, DW_AT_external
	.dwattr $C$DW$124, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$124, DW_AT_TI_begin_line(0x15e)
	.dwattr $C$DW$124, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$124, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "./susan.c",line 351,column 1,is_stmt,address _enlarge

	.dwfde $C$DW$CIE, _enlarge
$C$DW$125	.dwtag  DW_TAG_formal_parameter, DW_AT_name("in")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$125, DW_AT_location[DW_OP_reg17]
$C$DW$126	.dwtag  DW_TAG_formal_parameter, DW_AT_name("tmp_image")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_tmp_image")
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$126, DW_AT_location[DW_OP_reg19]
$C$DW$127	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x_size")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_x_size")
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$127, DW_AT_location[DW_OP_reg21]
$C$DW$128	.dwtag  DW_TAG_formal_parameter, DW_AT_name("y_size")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_y_size")
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$128, DW_AT_location[DW_OP_reg23]
$C$DW$129	.dwtag  DW_TAG_formal_parameter, DW_AT_name("border")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_border")
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$129, DW_AT_location[DW_OP_reg0]
;*******************************************************************************
;* FUNCTION NAME: enlarge                                                      *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,   *
;*                        XAR3,AR4,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL    *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 16 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (14 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_enlarge:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-15, SP
	.dwcfi	cfa_offset, 16
$C$DW$130	.dwtag  DW_TAG_variable, DW_AT_name("in")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$130, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$131	.dwtag  DW_TAG_variable, DW_AT_name("tmp_image")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("_tmp_image")
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$131, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$132	.dwtag  DW_TAG_variable, DW_AT_name("x_size")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("_x_size")
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$132, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$133	.dwtag  DW_TAG_variable, DW_AT_name("y_size")
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("_y_size")
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$133, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$134	.dwtag  DW_TAG_variable, DW_AT_name("border")
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("_border")
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$134, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$135	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$135, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$135, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$136	.dwtag  DW_TAG_variable, DW_AT_name("j")
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$136, DW_AT_location[DW_OP_bregx 0x24 12]
        MOV AC0, dbl(*SP(#8)) ; |351| 
        MOV XAR3, dbl(*SP(#6))
        MOV XAR2, dbl(*SP(#4))
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./susan.c",line 354,column 10,is_stmt
        MOV #0, AC0 ; |354| 
        MOV AC0, dbl(*SP(#10)) ; |354| 
	.dwpsn	file "./susan.c",line 354,column 17,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV dbl(*SP(#10)), AC1 ; |354| 
        MOV dbl(*AR3), AC0 ; |354| 
        CMP AC1 >= AC0, TC1 ; |354| 
        BCC $C$L28,TC1 ; |354| 
                                        ; branchcc occurs ; |354| 
$C$L27:    
$C$DW$L$_enlarge$2$B:
	.dwpsn	file "./susan.c",line 355,column 9,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*SP(#8)), AC0 ; |355| 
        MOV dbl(*SP(#8)), AC1 ; |355| 
        ADD dbl(*SP(#10)), AC0, AC0 ; |355| 
        SFTL AC1, #1 ; |355| 
        ADD dbl(*AR3), AC1, AC1 ; |355| 
$C$DW$137	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$137, DW_AT_low_pc(0x00)
	.dwattr $C$DW$137, DW_AT_name("__mpyli")
	.dwattr $C$DW$137, DW_AT_TI_call
        CALL #__mpyli ; |355| 
                                        ; call occurs [#__mpyli] ; |355| 
        MOV AC0, AR1 ; |355| 
        MOV dbl(*SP(#2)), XAR0
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*SP(#10)), AC0 ; |355| 

        MOV *SP(#9), AR1 ; |355| 
||      AADD AR1, AR0 ; |355| 

        MOV dbl(*AR3), AC1 ; |355| 
$C$DW$138	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$138, DW_AT_low_pc(0x00)
	.dwattr $C$DW$138, DW_AT_name("__mpyli")
	.dwattr $C$DW$138, DW_AT_TI_call
        CALL #__mpyli ; |355| 
                                        ; call occurs [#__mpyli] ; |355| 
        MOV dbl(*SP(#0)), XAR3
        MOV AC0, AR2 ; |355| 
        AADD AR1, AR0 ; |355| 
        MOV dbl(*AR3), XAR1
        MOV dbl(*SP(#4)), XAR3

        MOV *AR3(short(#1)), T0 ; |355| 
||      AADD AR2, AR1 ; |355| 

$C$DW$139	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$139, DW_AT_low_pc(0x00)
	.dwattr $C$DW$139, DW_AT_name("_memcpy")
	.dwattr $C$DW$139, DW_AT_TI_call
        CALL #_memcpy ; |355| 
                                        ; call occurs [#_memcpy] ; |355| 
	.dwpsn	file "./susan.c",line 354,column 30,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |354| 
        ADD #1, AC0 ; |354| 
        MOV AC0, dbl(*SP(#10)) ; |354| 
	.dwpsn	file "./susan.c",line 354,column 17,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV dbl(*SP(#10)), AC1 ; |354| 
        MOV dbl(*AR3), AC0 ; |354| 
        CMP AC1 < AC0, TC1 ; |354| 
        BCC $C$L27,TC1 ; |354| 
                                        ; branchcc occurs ; |354| 
$C$DW$L$_enlarge$2$E:
$C$L28:    
	.dwpsn	file "./susan.c",line 357,column 10,is_stmt
        MOV #0, AC0 ; |357| 
        MOV AC0, dbl(*SP(#10)) ; |357| 
	.dwpsn	file "./susan.c",line 357,column 17,is_stmt
        MOV dbl(*SP(#10)), AC1 ; |357| 
        MOV dbl(*SP(#8)), AC0 ; |357| 
        CMP AC1 >= AC0, TC1 ; |357| 
        BCC $C$L30,TC1 ; |357| 
                                        ; branchcc occurs ; |357| 
$C$L29:    
$C$DW$L$_enlarge$4$B:
	.dwpsn	file "./susan.c",line 359,column 9,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*SP(#10)), AC0 ; |359| 
        SUB AC0, dbl(*SP(#8)), AC0 ; |359| 

        SUB #1, AC0, AC0 ; |359| 
||      MOV dbl(*SP(#8)), AC1 ; |359| 

        SFTL AC1, #1 ; |359| 
        ADD dbl(*AR3), AC1, AC1 ; |359| 
$C$DW$140	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$140, DW_AT_low_pc(0x00)
	.dwattr $C$DW$140, DW_AT_name("__mpyli")
	.dwattr $C$DW$140, DW_AT_TI_call
        CALL #__mpyli ; |359| 
                                        ; call occurs [#__mpyli] ; |359| 
        MOV AC0, AR1 ; |359| 
        MOV dbl(*SP(#2)), XAR0
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*SP(#10)), AC0 ; |359| 

        MOV *SP(#9), AR1 ; |359| 
||      AADD AR1, AR0 ; |359| 

        MOV dbl(*AR3), AC1 ; |359| 
$C$DW$141	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$141, DW_AT_low_pc(0x00)
	.dwattr $C$DW$141, DW_AT_name("__mpyli")
	.dwattr $C$DW$141, DW_AT_TI_call
        CALL #__mpyli ; |359| 
                                        ; call occurs [#__mpyli] ; |359| 
        MOV dbl(*SP(#0)), XAR3
        MOV AC0, AR2 ; |359| 
        AADD AR1, AR0 ; |359| 
        MOV dbl(*AR3), XAR1
        MOV dbl(*SP(#4)), XAR3

        MOV *AR3(short(#1)), T0 ; |359| 
||      AADD AR2, AR1 ; |359| 

$C$DW$142	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$142, DW_AT_low_pc(0x00)
	.dwattr $C$DW$142, DW_AT_name("_memcpy")
	.dwattr $C$DW$142, DW_AT_TI_call
        CALL #_memcpy ; |359| 
                                        ; call occurs [#_memcpy] ; |359| 
	.dwpsn	file "./susan.c",line 360,column 9,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV dbl(*SP(#8)), AC0 ; |360| 
        ADD dbl(*AR3), AC0, AC0 ; |360| 
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*SP(#8)), AC1 ; |360| 

        ADD dbl(*SP(#10)), AC0, AC0 ; |360| 
||      SFTL AC1, #1 ; |360| 

        ADD dbl(*AR3), AC1, AC1 ; |360| 
$C$DW$143	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$143, DW_AT_low_pc(0x00)
	.dwattr $C$DW$143, DW_AT_name("__mpyli")
	.dwattr $C$DW$143, DW_AT_TI_call
        CALL #__mpyli ; |360| 
                                        ; call occurs [#__mpyli] ; |360| 
        MOV dbl(*SP(#6)), XAR3
        MOV AC0, AR1 ; |360| 
        MOV dbl(*SP(#2)), XAR0
        MOV dbl(*SP(#10)), AC0 ; |360| 
        SUB AC0, dbl(*AR3), AC0 ; |360| 
        MOV dbl(*SP(#4)), XAR3

        MOV *SP(#9), AR1 ; |360| 
||      AADD AR1, AR0 ; |360| 

        MOV dbl(*AR3), AC1 ; |360| 
$C$DW$144	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$144, DW_AT_low_pc(0x00)
	.dwattr $C$DW$144, DW_AT_name("__mpyli")
	.dwattr $C$DW$144, DW_AT_TI_call

        CALL #__mpyli ; |360| 
||      SUB #1, AC0, AC0 ; |360| 

                                        ; call occurs [#__mpyli] ; |360| 
        MOV dbl(*SP(#0)), XAR3
        MOV AC0, AR2 ; |360| 
        AADD AR1, AR0 ; |360| 
        MOV dbl(*AR3), XAR1
        MOV dbl(*SP(#4)), XAR3

        MOV *AR3(short(#1)), T0 ; |360| 
||      AADD AR2, AR1 ; |360| 

$C$DW$145	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$145, DW_AT_low_pc(0x00)
	.dwattr $C$DW$145, DW_AT_name("_memcpy")
	.dwattr $C$DW$145, DW_AT_TI_call
        CALL #_memcpy ; |360| 
                                        ; call occurs [#_memcpy] ; |360| 
	.dwpsn	file "./susan.c",line 357,column 29,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |357| 
        ADD #1, AC0 ; |357| 
        MOV AC0, dbl(*SP(#10)) ; |357| 
	.dwpsn	file "./susan.c",line 357,column 17,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |357| 
        MOV dbl(*SP(#10)), AC1 ; |357| 
        CMP AC1 < AC0, TC1 ; |357| 
        BCC $C$L29,TC1 ; |357| 
                                        ; branchcc occurs ; |357| 
$C$DW$L$_enlarge$4$E:
$C$L30:    
	.dwpsn	file "./susan.c",line 363,column 10,is_stmt
        MOV #0, AC0 ; |363| 
        MOV AC0, dbl(*SP(#10)) ; |363| 
	.dwpsn	file "./susan.c",line 363,column 17,is_stmt
        MOV dbl(*SP(#10)), AC1 ; |363| 
        MOV dbl(*SP(#8)), AC0 ; |363| 
        CMP AC1 >= AC0, TC1 ; |363| 
        BCC $C$L34,TC1 ; |363| 
                                        ; branchcc occurs ; |363| 
$C$L31:    
$C$DW$L$_enlarge$6$B:
	.dwpsn	file "./susan.c",line 365,column 14,is_stmt
        MOV #0, AC0 ; |365| 
        MOV AC0, dbl(*SP(#12)) ; |365| 
	.dwpsn	file "./susan.c",line 365,column 21,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV dbl(*SP(#8)), AC0 ; |365| 

        SFTL AC0, #1 ; |365| 
||      MOV dbl(*SP(#12)), AC1 ; |365| 

        ADD dbl(*AR3), AC0, AC0 ; |365| 
        CMP AC1 >= AC0, TC1 ; |365| 
        BCC $C$L33,TC1 ; |365| 
                                        ; branchcc occurs ; |365| 
$C$DW$L$_enlarge$6$E:
$C$L32:    
$C$DW$L$_enlarge$7$B:
	.dwpsn	file "./susan.c",line 367,column 13,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*SP(#8)), AC0 ; |367| 
        SFTL AC0, #1 ; |367| 
        ADD dbl(*AR3), AC0, AC1 ; |367| 
        MOV dbl(*SP(#12)), AC0 ; |367| 
$C$DW$146	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$146, DW_AT_low_pc(0x00)
	.dwattr $C$DW$146, DW_AT_name("__mpyli")
	.dwattr $C$DW$146, DW_AT_TI_call
        CALL #__mpyli ; |367| 
                                        ; call occurs [#__mpyli] ; |367| 
        MOV dbl(*SP(#2)), XAR2
        MOV dbl(*SP(#4)), XAR3
        ADD dbl(*SP(#8)), AC0, AC0 ; |367| 
        ADD dbl(*SP(#10)), AC0, AC0 ; |367| 

        MOV dbl(*SP(#8)), AC0 ; |367| 
||      MOV AC0, AR4 ; |367| 

        SFTL AC0, #1 ; |367| 
        ADD dbl(*AR3), AC0, AC1 ; |367| 
        MOV dbl(*SP(#12)), AC0 ; |367| 
$C$DW$147	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$147, DW_AT_low_pc(0x00)
	.dwattr $C$DW$147, DW_AT_name("__mpyli")
	.dwattr $C$DW$147, DW_AT_TI_call
        CALL #__mpyli ; |367| 
                                        ; call occurs [#__mpyli] ; |367| 
        ADD dbl(*SP(#8)), AC0, AC0 ; |367| 
        MOV dbl(*SP(#2)), XAR3
        SUB dbl(*SP(#10)), AC0, AC0 ; |367| 
        SUB #1, AC0 ; |367| 
        MOV AC0, AR1 ; |367| 
        MOV AR4, T0 ; |367| 
        AADD AR1, AR3 ; |367| 
        MOV *AR2(T0), *AR3 ; |367| 
	.dwpsn	file "./susan.c",line 368,column 13,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*SP(#8)), AC0 ; |368| 
        SFTL AC0, #1 ; |368| 
        ADD dbl(*AR3), AC0, AC1 ; |368| 
        MOV dbl(*SP(#12)), AC0 ; |368| 
$C$DW$148	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$148, DW_AT_low_pc(0x00)
	.dwattr $C$DW$148, DW_AT_name("__mpyli")
	.dwattr $C$DW$148, DW_AT_TI_call
        CALL #__mpyli ; |368| 
                                        ; call occurs [#__mpyli] ; |368| 
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*SP(#2)), XAR2
        ADD dbl(*AR3), AC0, AC0 ; |368| 
        ADD dbl(*SP(#8)), AC0, AC0 ; |368| 
        SUB dbl(*SP(#10)), AC0, AC0 ; |368| 
        SUB #1, AC0 ; |368| 

        MOV dbl(*SP(#8)), AC0 ; |368| 
||      MOV AC0, AR4 ; |368| 

        SFTL AC0, #1 ; |368| 
        ADD dbl(*AR3), AC0, AC1 ; |368| 
        MOV dbl(*SP(#12)), AC0 ; |368| 
$C$DW$149	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$149, DW_AT_low_pc(0x00)
	.dwattr $C$DW$149, DW_AT_name("__mpyli")
	.dwattr $C$DW$149, DW_AT_TI_call
        CALL #__mpyli ; |368| 
                                        ; call occurs [#__mpyli] ; |368| 
        MOV dbl(*SP(#4)), XAR3
        ADD dbl(*AR3), AC0, AC0 ; |368| 
        MOV dbl(*SP(#2)), XAR3
        ADD dbl(*SP(#8)), AC0, AC0 ; |368| 
        ADD dbl(*SP(#10)), AC0, AC0 ; |368| 
        MOV AC0, AR1 ; |368| 
        MOV AR4, T0 ; |368| 
        AADD AR1, AR3 ; |368| 
        MOV *AR2(T0), *AR3 ; |368| 
	.dwpsn	file "./susan.c",line 365,column 47,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |365| 
        ADD #1, AC0 ; |365| 
        MOV AC0, dbl(*SP(#12)) ; |365| 
	.dwpsn	file "./susan.c",line 365,column 21,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV dbl(*SP(#8)), AC0 ; |365| 

        SFTL AC0, #1 ; |365| 
||      MOV dbl(*SP(#12)), AC1 ; |365| 

        ADD dbl(*AR3), AC0, AC0 ; |365| 
        CMP AC1 < AC0, TC1 ; |365| 
        BCC $C$L32,TC1 ; |365| 
                                        ; branchcc occurs ; |365| 
$C$DW$L$_enlarge$7$E:
$C$L33:    
$C$DW$L$_enlarge$8$B:
	.dwpsn	file "./susan.c",line 363,column 29,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |363| 
        ADD #1, AC0 ; |363| 
        MOV AC0, dbl(*SP(#10)) ; |363| 
	.dwpsn	file "./susan.c",line 363,column 17,is_stmt
        MOV dbl(*SP(#10)), AC1 ; |363| 
        MOV dbl(*SP(#8)), AC0 ; |363| 
        CMP AC1 < AC0, TC1 ; |363| 
        BCC $C$L31,TC1 ; |363| 
                                        ; branchcc occurs ; |363| 
$C$DW$L$_enlarge$8$E:
$C$L34:    
	.dwpsn	file "./susan.c",line 372,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*SP(#8)), AC0 ; |372| 
        SFTL AC0, #1 ; |372| 
        ADD dbl(*AR3), AC0, AC0 ; |372| 
        MOV AC0, dbl(*AR3) ; |372| 
	.dwpsn	file "./susan.c",line 373,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV dbl(*SP(#8)), AC0 ; |373| 
        SFTL AC0, #1 ; |373| 
        ADD dbl(*AR3), AC0, AC0 ; |373| 
        MOV AC0, dbl(*AR3) ; |373| 
	.dwpsn	file "./susan.c",line 374,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR2
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, dbl(*AR2)
	.dwpsn	file "./susan.c",line 375,column 1,is_stmt
        AADD #15, SP
	.dwcfi	cfa_offset, 1
$C$DW$150	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$150, DW_AT_low_pc(0x00)
	.dwattr $C$DW$150, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$151	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$151, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_smooth/susan.asm:$C$L31:1:1738938267")
	.dwattr $C$DW$151, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$151, DW_AT_TI_begin_line(0x16b)
	.dwattr $C$DW$151, DW_AT_TI_end_line(0x172)
$C$DW$152	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$152, DW_AT_low_pc($C$DW$L$_enlarge$6$B)
	.dwattr $C$DW$152, DW_AT_high_pc($C$DW$L$_enlarge$6$E)
$C$DW$153	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$153, DW_AT_low_pc($C$DW$L$_enlarge$8$B)
	.dwattr $C$DW$153, DW_AT_high_pc($C$DW$L$_enlarge$8$E)

$C$DW$154	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$154, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_smooth/susan.asm:$C$L32:2:1738938267")
	.dwattr $C$DW$154, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$154, DW_AT_TI_begin_line(0x16d)
	.dwattr $C$DW$154, DW_AT_TI_end_line(0x171)
$C$DW$155	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$155, DW_AT_low_pc($C$DW$L$_enlarge$7$B)
	.dwattr $C$DW$155, DW_AT_high_pc($C$DW$L$_enlarge$7$E)
	.dwendtag $C$DW$154

	.dwendtag $C$DW$151


$C$DW$156	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$156, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_smooth/susan.asm:$C$L29:1:1738938267")
	.dwattr $C$DW$156, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$156, DW_AT_TI_begin_line(0x165)
	.dwattr $C$DW$156, DW_AT_TI_end_line(0x169)
$C$DW$157	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$157, DW_AT_low_pc($C$DW$L$_enlarge$4$B)
	.dwattr $C$DW$157, DW_AT_high_pc($C$DW$L$_enlarge$4$E)
	.dwendtag $C$DW$156


$C$DW$158	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$158, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_smooth/susan.asm:$C$L27:1:1738938267")
	.dwattr $C$DW$158, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$158, DW_AT_TI_begin_line(0x162)
	.dwattr $C$DW$158, DW_AT_TI_end_line(0x163)
$C$DW$159	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$159, DW_AT_low_pc($C$DW$L$_enlarge$2$B)
	.dwattr $C$DW$159, DW_AT_high_pc($C$DW$L$_enlarge$2$E)
	.dwendtag $C$DW$158

	.dwattr $C$DW$124, DW_AT_TI_end_file("./susan.c")
	.dwattr $C$DW$124, DW_AT_TI_end_line(0x177)
	.dwattr $C$DW$124, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$124

	.sect	".text"
	.global	_susan_smoothing

$C$DW$160	.dwtag  DW_TAG_subprogram, DW_AT_name("susan_smoothing")
	.dwattr $C$DW$160, DW_AT_low_pc(_susan_smoothing)
	.dwattr $C$DW$160, DW_AT_high_pc(0x00)
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("_susan_smoothing")
	.dwattr $C$DW$160, DW_AT_external
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$160, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$160, DW_AT_TI_begin_line(0x179)
	.dwattr $C$DW$160, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$160, DW_AT_TI_max_frame_size(0x32)
	.dwpsn	file "./susan.c",line 378,column 1,is_stmt,address _susan_smoothing

	.dwfde $C$DW$CIE, _susan_smoothing
$C$DW$161	.dwtag  DW_TAG_formal_parameter, DW_AT_name("three_by_three")
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("_three_by_three")
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$161, DW_AT_location[DW_OP_reg0]
$C$DW$162	.dwtag  DW_TAG_formal_parameter, DW_AT_name("in")
	.dwattr $C$DW$162, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$162, DW_AT_location[DW_OP_reg17]
$C$DW$163	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dt")
	.dwattr $C$DW$163, DW_AT_TI_symbol_name("_dt")
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$163, DW_AT_location[DW_OP_reg3]
$C$DW$164	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x_size")
	.dwattr $C$DW$164, DW_AT_TI_symbol_name("_x_size")
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$164, DW_AT_location[DW_OP_reg6]
$C$DW$165	.dwtag  DW_TAG_formal_parameter, DW_AT_name("y_size")
	.dwattr $C$DW$165, DW_AT_TI_symbol_name("_y_size")
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$165, DW_AT_location[DW_OP_bregx 0x24 50]
$C$DW$166	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bp")
	.dwattr $C$DW$166, DW_AT_TI_symbol_name("_bp")
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$166, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: susan_smoothing                                              *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,AC2,AC2,T0,T1,AR0,XAR0,AR1,XAR1,AR2, *
;*                        XAR2,AR3,XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,   *
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 50 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (48 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_susan_smoothing:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-49, SP
	.dwcfi	cfa_offset, 50
$C$DW$167	.dwtag  DW_TAG_variable, DW_AT_name("three_by_three")
	.dwattr $C$DW$167, DW_AT_TI_symbol_name("_three_by_three")
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$167, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$168	.dwtag  DW_TAG_variable, DW_AT_name("in")
	.dwattr $C$DW$168, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$168, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$169	.dwtag  DW_TAG_variable, DW_AT_name("dt")
	.dwattr $C$DW$169, DW_AT_TI_symbol_name("_dt")
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$169, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$170	.dwtag  DW_TAG_variable, DW_AT_name("x_size")
	.dwattr $C$DW$170, DW_AT_TI_symbol_name("_x_size")
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$170, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$171	.dwtag  DW_TAG_variable, DW_AT_name("bp")
	.dwattr $C$DW$171, DW_AT_TI_symbol_name("_bp")
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$171, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$172	.dwtag  DW_TAG_variable, DW_AT_name("temp")
	.dwattr $C$DW$172, DW_AT_TI_symbol_name("_temp")
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$172, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$173	.dwtag  DW_TAG_variable, DW_AT_name("n_max")
	.dwattr $C$DW$173, DW_AT_TI_symbol_name("_n_max")
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$173, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$174	.dwtag  DW_TAG_variable, DW_AT_name("increment")
	.dwattr $C$DW$174, DW_AT_TI_symbol_name("_increment")
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$174, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$175	.dwtag  DW_TAG_variable, DW_AT_name("mask_size")
	.dwattr $C$DW$175, DW_AT_TI_symbol_name("_mask_size")
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$175, DW_AT_location[DW_OP_bregx 0x24 16]
$C$DW$176	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$176, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$176, DW_AT_location[DW_OP_bregx 0x24 18]
$C$DW$177	.dwtag  DW_TAG_variable, DW_AT_name("j")
	.dwattr $C$DW$177, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$177, DW_AT_location[DW_OP_bregx 0x24 20]
$C$DW$178	.dwtag  DW_TAG_variable, DW_AT_name("x")
	.dwattr $C$DW$178, DW_AT_TI_symbol_name("_x")
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$178, DW_AT_location[DW_OP_bregx 0x24 22]
$C$DW$179	.dwtag  DW_TAG_variable, DW_AT_name("y")
	.dwattr $C$DW$179, DW_AT_TI_symbol_name("_y")
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$179, DW_AT_location[DW_OP_bregx 0x24 24]
$C$DW$180	.dwtag  DW_TAG_variable, DW_AT_name("area")
	.dwattr $C$DW$180, DW_AT_TI_symbol_name("_area")
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$180, DW_AT_location[DW_OP_bregx 0x24 26]
$C$DW$181	.dwtag  DW_TAG_variable, DW_AT_name("brightness")
	.dwattr $C$DW$181, DW_AT_TI_symbol_name("_brightness")
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$181, DW_AT_location[DW_OP_bregx 0x24 28]
$C$DW$182	.dwtag  DW_TAG_variable, DW_AT_name("tmp")
	.dwattr $C$DW$182, DW_AT_TI_symbol_name("_tmp")
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$182, DW_AT_location[DW_OP_bregx 0x24 30]
$C$DW$183	.dwtag  DW_TAG_variable, DW_AT_name("centre")
	.dwattr $C$DW$183, DW_AT_TI_symbol_name("_centre")
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$183, DW_AT_location[DW_OP_bregx 0x24 32]
$C$DW$184	.dwtag  DW_TAG_variable, DW_AT_name("ip")
	.dwattr $C$DW$184, DW_AT_TI_symbol_name("_ip")
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$184, DW_AT_location[DW_OP_bregx 0x24 34]
$C$DW$185	.dwtag  DW_TAG_variable, DW_AT_name("dp")
	.dwattr $C$DW$185, DW_AT_TI_symbol_name("_dp")
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$185, DW_AT_location[DW_OP_bregx 0x24 36]
$C$DW$186	.dwtag  DW_TAG_variable, DW_AT_name("dpt")
	.dwattr $C$DW$186, DW_AT_TI_symbol_name("_dpt")
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$186, DW_AT_location[DW_OP_bregx 0x24 38]
$C$DW$187	.dwtag  DW_TAG_variable, DW_AT_name("cp")
	.dwattr $C$DW$187, DW_AT_TI_symbol_name("_cp")
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$187, DW_AT_location[DW_OP_bregx 0x24 40]
$C$DW$188	.dwtag  DW_TAG_variable, DW_AT_name("out")
	.dwattr $C$DW$188, DW_AT_TI_symbol_name("_out")
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$188, DW_AT_location[DW_OP_bregx 0x24 42]
$C$DW$189	.dwtag  DW_TAG_variable, DW_AT_name("tmp_image")
	.dwattr $C$DW$189, DW_AT_TI_symbol_name("_tmp_image")
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$189, DW_AT_location[DW_OP_bregx 0x24 44]
$C$DW$190	.dwtag  DW_TAG_variable, DW_AT_name("total")
	.dwattr $C$DW$190, DW_AT_TI_symbol_name("_total")
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$190, DW_AT_location[DW_OP_bregx 0x24 46]
        MOV XAR1, dbl(*SP(#8))
        MOV AC2, dbl(*SP(#6)) ; |378| 
        MOV AC1, dbl(*SP(#4)) ; |378| 
        MOV XAR0, dbl(*SP(#2))
        MOV AC0, dbl(*SP(#0)) ; |378| 
	.dwpsn	file "./susan.c",line 382,column 36,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, dbl(*SP(#42))
	.dwpsn	file "./susan.c",line 388,column 5,is_stmt
        MOV dbl(*SP(#0)), AC0 ; |388| 
        BCC $C$L35,AC0 != #0 ; |388| 
                                        ; branchcc occurs ; |388| 
	.dwpsn	file "./susan.c",line 389,column 9,is_stmt
        MOV dbl(*SP(#4)), AC1 ; |389| 
        MOV dbl(*($C$FL2)), AC0 ; |389| 
$C$DW$191	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$191, DW_AT_low_pc(0x00)
	.dwattr $C$DW$191, DW_AT_name("__mpyd")
	.dwattr $C$DW$191, DW_AT_TI_call
        CALL #__mpyd ; |389| 
                                        ; call occurs [#__mpyd] ; |389| 
$C$DW$192	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$192, DW_AT_low_pc(0x00)
	.dwattr $C$DW$192, DW_AT_name("__fixdli")
	.dwattr $C$DW$192, DW_AT_TI_call
        CALL #__fixdli ; |389| 
                                        ; call occurs [#__fixdli] ; |389| 
        ADD #1, AC0, AC0 ; |389| 
        MOV AC0, dbl(*SP(#16)) ; |389| 
        B $C$L36  ; |389| 
                                        ; branch occurs ; |389| 
$C$L35:    
	.dwpsn	file "./susan.c",line 391,column 9,is_stmt
        MOV #1, AC0 ; |391| 
        MOV AC0, dbl(*SP(#16)) ; |391| 
$C$L36:    
	.dwpsn	file "./susan.c",line 393,column 5,is_stmt
        MOV dbl(*SP(#16)), AC0 ; |393| 
        SFTL AC0, #1 ; |393| 

        ADD #1, AC0 ; |393| 
||      MOV dbl(*SP(#6)), AC1 ; |393| 

        CMP AC0 > AC1, TC1 ; |393| 
        BCC $C$L37,TC1 ; |393| 
                                        ; branchcc occurs ; |393| 
        MOV dbl(*SP(#16)), AC0 ; |393| 
        SFTL AC0, #1 ; |393| 

        ADD #1, AC0 ; |393| 
||      MOV dbl(*SP(#50)), AC1 ; |393| 

        CMP AC0 <= AC1, TC1 ; |393| 
        BCC $C$L38,TC1 ; |393| 
                                        ; branchcc occurs ; |393| 
$C$L37:    
	.dwpsn	file "./susan.c",line 395,column 9,is_stmt
        MOV #0, T0
        B $C$L59  ; |395| 
                                        ; branch occurs ; |395| 
$C$L38:    
	.dwpsn	file "./susan.c",line 400,column 5,is_stmt
        AMOV #_g_tmp_image, XAR3 ; |400| 
        MOV XAR3, dbl(*SP(#44))
	.dwpsn	file "./susan.c",line 401,column 5,is_stmt
        AMAR *SP(#2), XAR0
        AMAR *SP(#6), XAR2
        MOV dbl(*SP(#44)), XAR1
        MOV dbl(*SP(#16)), AC0 ; |401| 
        AMAR *SP(#50), XAR3
$C$DW$193	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$193, DW_AT_low_pc(0x00)
	.dwattr $C$DW$193, DW_AT_name("_enlarge")
	.dwattr $C$DW$193, DW_AT_TI_call
        CALL #_enlarge ; |401| 
                                        ; call occurs [#_enlarge] ; |401| 
	.dwpsn	file "./susan.c",line 403,column 5,is_stmt
        MOV dbl(*SP(#0)), AC0 ; |403| 
        BCC $C$L52,AC0 != #0 ; |403| 
                                        ; branchcc occurs ; |403| 
	.dwpsn	file "./susan.c",line 407,column 9,is_stmt
        MOV dbl(*SP(#16)), AC0 ; |407| 
        SFTL AC0, #1 ; |407| 
        ADD #1, AC0 ; |407| 
        MOV AC0, dbl(*SP(#12)) ; |407| 
	.dwpsn	file "./susan.c",line 409,column 9,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |409| 
        SUB AC0, dbl(*SP(#6)), AC0 ; |409| 
        MOV AC0, dbl(*SP(#14)) ; |409| 
	.dwpsn	file "./susan.c",line 413,column 9,is_stmt
        AMOV #_g_dp, XAR3 ; |413| 
        MOV XAR3, dbl(*SP(#36))
	.dwpsn	file "./susan.c",line 414,column 9,is_stmt
        MOV XAR3, dbl(*SP(#38))
	.dwpsn	file "./susan.c",line 415,column 9,is_stmt
        MOV dbl(*SP(#4)), AC1 ; |415| 
        MOV dbl(*SP(#4)), AC0 ; |415| 
$C$DW$194	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$194, DW_AT_low_pc(0x00)
	.dwattr $C$DW$194, DW_AT_name("__mpyd")
	.dwattr $C$DW$194, DW_AT_TI_call
        CALL #__mpyd ; |415| 
                                        ; call occurs [#__mpyd] ; |415| 
$C$DW$195	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$195, DW_AT_low_pc(0x00)
	.dwattr $C$DW$195, DW_AT_name("__negd")
	.dwattr $C$DW$195, DW_AT_TI_call
        CALL #__negd ; |415| 
                                        ; call occurs [#__negd] ; |415| 
        MOV AC0, dbl(*SP(#10)) ; |415| 
	.dwpsn	file "./susan.c",line 417,column 14,is_stmt
        MOV dbl(*SP(#16)), AC0 ; |417| 
        NEG AC0, AC0 ; |417| 
        MOV AC0, dbl(*SP(#18)) ; |417| 
	.dwpsn	file "./susan.c",line 417,column 30,is_stmt
        MOV dbl(*SP(#16)), AC0 ; |417| 
        MOV dbl(*SP(#18)), AC1 ; |417| 
        CMP AC1 > AC0, TC1 ; |417| 
        BCC $C$L42,TC1 ; |417| 
                                        ; branchcc occurs ; |417| 
$C$L39:    
$C$DW$L$_susan_smoothing$9$B:
	.dwpsn	file "./susan.c",line 419,column 18,is_stmt
        MOV dbl(*SP(#16)), AC0 ; |419| 
        NEG AC0, AC0 ; |419| 
        MOV AC0, dbl(*SP(#20)) ; |419| 
	.dwpsn	file "./susan.c",line 419,column 34,is_stmt
        MOV dbl(*SP(#20)), AC1 ; |419| 
        MOV dbl(*SP(#16)), AC0 ; |419| 
        CMP AC1 > AC0, TC1 ; |419| 
        BCC $C$L41,TC1 ; |419| 
                                        ; branchcc occurs ; |419| 
$C$DW$L$_susan_smoothing$9$E:
$C$L40:    
$C$DW$L$_susan_smoothing$10$B:
	.dwpsn	file "./susan.c",line 421,column 17,is_stmt
        MOV dbl(*SP(#18)), AC0 ; |421| 
        MOV dbl(*SP(#18)), AC1 ; |421| 
$C$DW$196	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$196, DW_AT_low_pc(0x00)
	.dwattr $C$DW$196, DW_AT_name("__mpyli")
	.dwattr $C$DW$196, DW_AT_TI_call
        CALL #__mpyli ; |421| 
                                        ; call occurs [#__mpyli] ; |421| 
        MOV dbl(*SP(#20)), AC1 ; |421| 

        MOV dbl(*SP(#20)), AC0 ; |421| 
||      OR #0, AC0, AC2

$C$DW$197	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$197, DW_AT_low_pc(0x00)
	.dwattr $C$DW$197, DW_AT_name("__mpyli")
	.dwattr $C$DW$197, DW_AT_TI_call
        CALL #__mpyli ; |421| 
                                        ; call occurs [#__mpyli] ; |421| 
$C$DW$198	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$198, DW_AT_low_pc(0x00)
	.dwattr $C$DW$198, DW_AT_name("__fltlid")
	.dwattr $C$DW$198, DW_AT_TI_call

        CALL #__fltlid ; |421| 
||      ADD AC2, AC0 ; |421| 

                                        ; call occurs [#__fltlid] ; |421| 
        MOV dbl(*SP(#10)), AC1 ; |421| 
$C$DW$199	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$199, DW_AT_low_pc(0x00)
	.dwattr $C$DW$199, DW_AT_name("__divd")
	.dwattr $C$DW$199, DW_AT_TI_call
        CALL #__divd ; |421| 
                                        ; call occurs [#__divd] ; |421| 
$C$DW$200	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$200, DW_AT_low_pc(0x00)
	.dwattr $C$DW$200, DW_AT_name("_exp")
	.dwattr $C$DW$200, DW_AT_TI_call
        CALL #_exp ; |421| 
                                        ; call occurs [#_exp] ; |421| 
        OR #0, AC0, AC1
        MOV dbl(*($C$FL1)), AC0 ; |421| 
$C$DW$201	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$201, DW_AT_low_pc(0x00)
	.dwattr $C$DW$201, DW_AT_name("__mpyd")
	.dwattr $C$DW$201, DW_AT_TI_call
        CALL #__mpyd ; |421| 
                                        ; call occurs [#__mpyd] ; |421| 
$C$DW$202	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$202, DW_AT_low_pc(0x00)
	.dwattr $C$DW$202, DW_AT_name("__fixdli")
	.dwattr $C$DW$202, DW_AT_TI_call
        CALL #__fixdli ; |421| 
                                        ; call occurs [#__fixdli] ; |421| 
        MOV AC0, dbl(*SP(#22)) ; |421| 
	.dwpsn	file "./susan.c",line 422,column 17,is_stmt
        MOV dbl(*SP(#38)), XAR2
        AMAR *AR2, XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#38))
        MOV *SP(#23), AR1 ; |422| 
        MOV AR1, *AR2 ; |422| 
	.dwpsn	file "./susan.c",line 419,column 50,is_stmt
        MOV dbl(*SP(#20)), AC0 ; |419| 
        ADD #1, AC0 ; |419| 
        MOV AC0, dbl(*SP(#20)) ; |419| 
	.dwpsn	file "./susan.c",line 419,column 34,is_stmt
        MOV dbl(*SP(#16)), AC0 ; |419| 
        MOV dbl(*SP(#20)), AC1 ; |419| 
        CMP AC1 <= AC0, TC1 ; |419| 
        BCC $C$L40,TC1 ; |419| 
                                        ; branchcc occurs ; |419| 
$C$DW$L$_susan_smoothing$10$E:
$C$L41:    
$C$DW$L$_susan_smoothing$11$B:
	.dwpsn	file "./susan.c",line 417,column 46,is_stmt
        MOV dbl(*SP(#18)), AC0 ; |417| 
        ADD #1, AC0 ; |417| 
        MOV AC0, dbl(*SP(#18)) ; |417| 
	.dwpsn	file "./susan.c",line 417,column 30,is_stmt
        MOV dbl(*SP(#18)), AC1 ; |417| 
        MOV dbl(*SP(#16)), AC0 ; |417| 
        CMP AC1 <= AC0, TC1 ; |417| 
        BCC $C$L39,TC1 ; |417| 
                                        ; branchcc occurs ; |417| 
$C$DW$L$_susan_smoothing$11$E:
$C$L42:    
	.dwpsn	file "./susan.c",line 429,column 14,is_stmt
        MOV dbl(*SP(#16)), AC0 ; |429| 
        MOV AC0, dbl(*SP(#18)) ; |429| 
	.dwpsn	file "./susan.c",line 429,column 29,is_stmt
        MOV dbl(*SP(#18)), AC1 ; |429| 
        MOV dbl(*SP(#16)), AC0 ; |429| 
        SUB AC0, dbl(*SP(#50)), AC0 ; |429| 
        CMP AC1 >= AC0, TC1 ; |429| 
        BCC $C$L58,TC1 ; |429| 
                                        ; branchcc occurs ; |429| 
$C$L43:    
$C$DW$L$_susan_smoothing$13$B:
	.dwpsn	file "./susan.c",line 431,column 18,is_stmt
        MOV dbl(*SP(#16)), AC0 ; |431| 
        MOV AC0, dbl(*SP(#20)) ; |431| 
	.dwpsn	file "./susan.c",line 431,column 33,is_stmt
        MOV dbl(*SP(#20)), AC1 ; |431| 
        MOV dbl(*SP(#16)), AC0 ; |431| 
        SUB AC0, dbl(*SP(#6)), AC0 ; |431| 
        CMP AC1 >= AC0, TC1 ; |431| 
        BCC $C$L51,TC1 ; |431| 
                                        ; branchcc occurs ; |431| 
$C$DW$L$_susan_smoothing$13$E:
$C$L44:    
$C$DW$L$_susan_smoothing$14$B:
	.dwpsn	file "./susan.c",line 433,column 17,is_stmt
        MOV #0, AC0 ; |433| 
        MOV AC0, dbl(*SP(#26)) ; |433| 
	.dwpsn	file "./susan.c",line 434,column 17,is_stmt
        MOV AC0, dbl(*SP(#46)) ; |434| 
	.dwpsn	file "./susan.c",line 435,column 17,is_stmt
        MOV dbl(*SP(#36)), XAR3
        MOV XAR3, dbl(*SP(#38))
	.dwpsn	file "./susan.c",line 436,column 17,is_stmt
        MOV dbl(*SP(#6)), AC1 ; |436| 
        MOV dbl(*SP(#16)), AC0 ; |436| 
        SUB AC0, dbl(*SP(#18)), AC0 ; |436| 
$C$DW$203	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$203, DW_AT_low_pc(0x00)
	.dwattr $C$DW$203, DW_AT_name("__mpyli")
	.dwattr $C$DW$203, DW_AT_TI_call
        CALL #__mpyli ; |436| 
                                        ; call occurs [#__mpyli] ; |436| 
        MOV AC0, AR1 ; |436| 
        MOV dbl(*SP(#2)), XAR3

        MOV *SP(#21), AR1 ; |436| 
||      AADD AR1, AR3 ; |436| 

        MOV *SP(#17), AR1 ; |436| 
||      AADD AR1, AR3 ; |436| 

        MOV XAR3, dbl(*SP(#34))
||      ASUB AR1, AR3 ; |436| 

	.dwpsn	file "./susan.c",line 437,column 17,is_stmt
        MOV dbl(*SP(#18)), AC0 ; |437| 
        MOV dbl(*SP(#6)), AC1 ; |437| 
$C$DW$204	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$204, DW_AT_low_pc(0x00)
	.dwattr $C$DW$204, DW_AT_name("__mpyli")
	.dwattr $C$DW$204, DW_AT_TI_call
        CALL #__mpyli ; |437| 
                                        ; call occurs [#__mpyli] ; |437| 
        MOV dbl(*SP(#2)), XAR3
        ADD dbl(*SP(#20)), AC0, AC0 ; |437| 
        MOV AC0, T0 ; |437| 
        MOV uns(*AR3(T0)), AC0 ; |437| 
        MOV AC0, dbl(*SP(#32)) ; |437| 
	.dwpsn	file "./susan.c",line 438,column 17,is_stmt
        MOV *SP(#33), AR1 ; |438| 
        MOV dbl(*SP(#8)), XAR3

        MOV XAR3, dbl(*SP(#40))
||      AADD AR1, AR3 ; |438| 

	.dwpsn	file "./susan.c",line 439,column 22,is_stmt
        MOV dbl(*SP(#16)), AC0 ; |439| 
        NEG AC0, AC0 ; |439| 
        MOV AC0, dbl(*SP(#24)) ; |439| 
	.dwpsn	file "./susan.c",line 439,column 38,is_stmt
        MOV dbl(*SP(#16)), AC0 ; |439| 
        MOV dbl(*SP(#24)), AC1 ; |439| 
        CMP AC1 > AC0, TC1 ; |439| 
        BCC $C$L48,TC1 ; |439| 
                                        ; branchcc occurs ; |439| 
$C$DW$L$_susan_smoothing$14$E:
$C$L45:    
$C$DW$L$_susan_smoothing$15$B:
	.dwpsn	file "./susan.c",line 441,column 26,is_stmt
        MOV dbl(*SP(#16)), AC0 ; |441| 
        NEG AC0, AC0 ; |441| 
        MOV AC0, dbl(*SP(#22)) ; |441| 
	.dwpsn	file "./susan.c",line 441,column 42,is_stmt
        MOV dbl(*SP(#22)), AC1 ; |441| 
        MOV dbl(*SP(#16)), AC0 ; |441| 
        CMP AC1 > AC0, TC1 ; |441| 
        BCC $C$L47,TC1 ; |441| 
                                        ; branchcc occurs ; |441| 
$C$DW$L$_susan_smoothing$15$E:
$C$L46:    
$C$DW$L$_susan_smoothing$16$B:
	.dwpsn	file "./susan.c",line 443,column 25,is_stmt
        MOV dbl(*SP(#34)), XAR3
        MOV *AR3+, AR1 ; |443| 
        AND #0xffff, AR1, AC0 ; |443| 
        MOV XAR3, dbl(*SP(#34))
        MOV AC0, dbl(*SP(#28)) ; |443| 
	.dwpsn	file "./susan.c",line 444,column 25,is_stmt
        MOV dbl(*SP(#38)), XAR3
        MOV *AR3+, T1 ; |444| 
        MOV XAR3, dbl(*SP(#38))
        MOV *SP(#29), AR1 ; |444| 
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |444| 
        MPYM *AR3, T1, AC0 ; |444| 
        AND #0xffff, AC0, AC0 ; |444| 
        MOV AC0, dbl(*SP(#30)) ; |444| 
	.dwpsn	file "./susan.c",line 445,column 25,is_stmt
        MOV dbl(*SP(#30)), AC0 ; |445| 
        ADD dbl(*SP(#26)), AC0, AC0 ; |445| 
        MOV AC0, dbl(*SP(#26)) ; |445| 
	.dwpsn	file "./susan.c",line 446,column 25,is_stmt
        MOV dbl(*SP(#28)), AC1 ; |446| 
        MOV dbl(*SP(#30)), AC0 ; |446| 
$C$DW$205	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$205, DW_AT_low_pc(0x00)
	.dwattr $C$DW$205, DW_AT_name("__mpyli")
	.dwattr $C$DW$205, DW_AT_TI_call
        CALL #__mpyli ; |446| 
                                        ; call occurs [#__mpyli] ; |446| 
        ADD dbl(*SP(#46)), AC0, AC0 ; |446| 
        MOV AC0, dbl(*SP(#46)) ; |446| 
	.dwpsn	file "./susan.c",line 441,column 58,is_stmt
        MOV dbl(*SP(#22)), AC0 ; |441| 
        ADD #1, AC0 ; |441| 
        MOV AC0, dbl(*SP(#22)) ; |441| 
	.dwpsn	file "./susan.c",line 441,column 42,is_stmt
        MOV dbl(*SP(#16)), AC0 ; |441| 
        MOV dbl(*SP(#22)), AC1 ; |441| 
        CMP AC1 <= AC0, TC1 ; |441| 
        BCC $C$L46,TC1 ; |441| 
                                        ; branchcc occurs ; |441| 
$C$DW$L$_susan_smoothing$16$E:
$C$L47:    
$C$DW$L$_susan_smoothing$17$B:
	.dwpsn	file "./susan.c",line 448,column 21,is_stmt
        MOV dbl(*SP(#34)), XAR3
        MOV *SP(#15), AR1 ; |448| 

        MOV XAR3, dbl(*SP(#34))
||      AADD AR1, AR3 ; |448| 

	.dwpsn	file "./susan.c",line 439,column 54,is_stmt
        MOV dbl(*SP(#24)), AC0 ; |439| 
        ADD #1, AC0 ; |439| 
        MOV AC0, dbl(*SP(#24)) ; |439| 
	.dwpsn	file "./susan.c",line 439,column 38,is_stmt
        MOV dbl(*SP(#24)), AC1 ; |439| 
        MOV dbl(*SP(#16)), AC0 ; |439| 
        CMP AC1 <= AC0, TC1 ; |439| 
        BCC $C$L45,TC1 ; |439| 
                                        ; branchcc occurs ; |439| 
$C$DW$L$_susan_smoothing$17$E:
$C$L48:    
$C$DW$L$_susan_smoothing$18$B:
	.dwpsn	file "./susan.c",line 450,column 17,is_stmt
        MOV #10000, AC0 ; |450| 
        SUB AC0, dbl(*SP(#26)), AC0 ; |450| 
        MOV AC0, dbl(*SP(#30)) ; |450| 
	.dwpsn	file "./susan.c",line 451,column 17,is_stmt
        MOV dbl(*SP(#30)), AC0 ; |451| 
        BCC $C$L49,AC0 != #0 ; |451| 
                                        ; branchcc occurs ; |451| 
$C$DW$L$_susan_smoothing$18$E:
$C$DW$L$_susan_smoothing$19$B:
	.dwpsn	file "./susan.c",line 452,column 21,is_stmt
        MOV dbl(*SP(#2)), XAR0
        MOV dbl(*SP(#18)), AC0 ; |452| 
        MOV dbl(*SP(#20)), AC1 ; |452| 
        MOV dbl(*SP(#6)), AC2 ; |452| 
$C$DW$206	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$206, DW_AT_low_pc(0x00)
	.dwattr $C$DW$206, DW_AT_name("_median")
	.dwattr $C$DW$206, DW_AT_TI_call
        CALL #_median ; |452| 
                                        ; call occurs [#_median] ; |452| 
        MOV dbl(*SP(#42)), XAR2
        AMAR *AR2, XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#42))
        MOV T0, *AR2 ; |452| 
        B $C$L50  ; |452| 
                                        ; branch occurs ; |452| 
$C$DW$L$_susan_smoothing$19$E:
$C$L49:    
$C$DW$L$_susan_smoothing$20$B:
	.dwpsn	file "./susan.c",line 454,column 21,is_stmt
        MOV dbl(*SP(#32)), AC0 ; |454| 
        MOV #10000, AC1 ; |454| 
$C$DW$207	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$207, DW_AT_low_pc(0x00)
	.dwattr $C$DW$207, DW_AT_name("__mpyli")
	.dwattr $C$DW$207, DW_AT_TI_call
        CALL #__mpyli ; |454| 
                                        ; call occurs [#__mpyli] ; |454| 
        SUB AC0, dbl(*SP(#46)), AC0 ; |454| 
        MOV dbl(*SP(#30)), AC1 ; |454| 
$C$DW$208	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$208, DW_AT_low_pc(0x00)
	.dwattr $C$DW$208, DW_AT_name("__divli")
	.dwattr $C$DW$208, DW_AT_TI_call
        CALL #__divli ; |454| 
                                        ; call occurs [#__divli] ; |454| 
        MOV dbl(*SP(#42)), XAR2
        AMAR *AR2, XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#42))
        MOV AC0, *AR2 ; |454| 
$C$DW$L$_susan_smoothing$20$E:
$C$L50:    
$C$DW$L$_susan_smoothing$21$B:
	.dwpsn	file "./susan.c",line 431,column 57,is_stmt
        MOV dbl(*SP(#20)), AC0 ; |431| 
        ADD #1, AC0 ; |431| 
        MOV AC0, dbl(*SP(#20)) ; |431| 
	.dwpsn	file "./susan.c",line 431,column 33,is_stmt
        MOV dbl(*SP(#20)), AC1 ; |431| 
        MOV dbl(*SP(#16)), AC0 ; |431| 
        SUB AC0, dbl(*SP(#6)), AC0 ; |431| 
        CMP AC1 < AC0, TC1 ; |431| 
        BCC $C$L44,TC1 ; |431| 
                                        ; branchcc occurs ; |431| 
$C$DW$L$_susan_smoothing$21$E:
$C$L51:    
$C$DW$L$_susan_smoothing$22$B:
	.dwpsn	file "./susan.c",line 429,column 53,is_stmt
        MOV dbl(*SP(#18)), AC0 ; |429| 
        ADD #1, AC0 ; |429| 
        MOV AC0, dbl(*SP(#18)) ; |429| 
	.dwpsn	file "./susan.c",line 429,column 29,is_stmt
        MOV dbl(*SP(#18)), AC1 ; |429| 
        MOV dbl(*SP(#16)), AC0 ; |429| 
        SUB AC0, dbl(*SP(#50)), AC0 ; |429| 
        CMP AC1 < AC0, TC1 ; |429| 
        BCC $C$L43,TC1 ; |429| 
                                        ; branchcc occurs ; |429| 
$C$DW$L$_susan_smoothing$22$E:
	.dwpsn	file "./susan.c",line 459,column 5,is_stmt
        B $C$L58  ; |459| 
                                        ; branch occurs ; |459| 
$C$L52:    
	.dwpsn	file "./susan.c",line 464,column 14,is_stmt
        MOV #1, AC0 ; |464| 
        MOV AC0, dbl(*SP(#18)) ; |464| 
	.dwpsn	file "./susan.c",line 464,column 21,is_stmt
        MOV dbl(*SP(#50)), AC0 ; |464| 

        SUB #1, AC0 ; |464| 
||      MOV dbl(*SP(#18)), AC1 ; |464| 

        CMP AC1 >= AC0, TC1 ; |464| 
        BCC $C$L58,TC1 ; |464| 
                                        ; branchcc occurs ; |464| 
$C$L53:    
$C$DW$L$_susan_smoothing$25$B:
	.dwpsn	file "./susan.c",line 466,column 18,is_stmt
        MOV #1, AC0 ; |466| 
        MOV AC0, dbl(*SP(#20)) ; |466| 
	.dwpsn	file "./susan.c",line 466,column 25,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |466| 

        SUB #1, AC0 ; |466| 
||      MOV dbl(*SP(#20)), AC1 ; |466| 

        CMP AC1 >= AC0, TC1 ; |466| 
        BCC $C$L57,TC1 ; |466| 
                                        ; branchcc occurs ; |466| 
$C$DW$L$_susan_smoothing$25$E:
$C$L54:    
$C$DW$L$_susan_smoothing$26$B:
	.dwpsn	file "./susan.c",line 468,column 17,is_stmt
        MOV #0, AC0 ; |468| 
        MOV AC0, dbl(*SP(#26)) ; |468| 
	.dwpsn	file "./susan.c",line 469,column 17,is_stmt
        MOV AC0, dbl(*SP(#46)) ; |469| 
	.dwpsn	file "./susan.c",line 470,column 17,is_stmt

        MOV #1, AC0 ; |470| 
||      MOV dbl(*SP(#6)), AC1 ; |470| 

        SUB AC0, dbl(*SP(#18)), AC0 ; |470| 
$C$DW$209	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$209, DW_AT_low_pc(0x00)
	.dwattr $C$DW$209, DW_AT_name("__mpyli")
	.dwattr $C$DW$209, DW_AT_TI_call
        CALL #__mpyli ; |470| 
                                        ; call occurs [#__mpyli] ; |470| 
        MOV AC0, AR1 ; |470| 
        MOV dbl(*SP(#2)), XAR3

        MOV *SP(#21), AR1 ; |470| 
||      AADD AR1, AR3 ; |470| 

        AADD AR1, AR3 ; |470| 
        AMAR *AR3-
        MOV XAR3, dbl(*SP(#34))
	.dwpsn	file "./susan.c",line 471,column 17,is_stmt
        MOV dbl(*SP(#18)), AC0 ; |471| 
        MOV dbl(*SP(#6)), AC1 ; |471| 
$C$DW$210	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$210, DW_AT_low_pc(0x00)
	.dwattr $C$DW$210, DW_AT_name("__mpyli")
	.dwattr $C$DW$210, DW_AT_TI_call
        CALL #__mpyli ; |471| 
                                        ; call occurs [#__mpyli] ; |471| 
        MOV dbl(*SP(#2)), XAR3
        ADD dbl(*SP(#20)), AC0, AC0 ; |471| 
        MOV AC0, T0 ; |471| 
        MOV uns(*AR3(T0)), AC0 ; |471| 
        MOV AC0, dbl(*SP(#32)) ; |471| 
	.dwpsn	file "./susan.c",line 472,column 17,is_stmt
        MOV *SP(#33), AR1 ; |472| 
        MOV dbl(*SP(#8)), XAR3

        MOV XAR3, dbl(*SP(#40))
||      AADD AR1, AR3 ; |472| 

	.dwpsn	file "./susan.c",line 474,column 17,is_stmt
        MOV dbl(*SP(#34)), XAR3
        MOV *AR3+, AR1 ; |474| 
        AND #0xffff, AR1, AC0 ; |474| 
        MOV XAR3, dbl(*SP(#34))
        MOV AC0, dbl(*SP(#28)) ; |474| 
	.dwpsn	file "./susan.c",line 475,column 17,is_stmt
        MOV *SP(#29), AR1 ; |475| 
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |475| 
        MOV uns(*AR3), AC0 ; |475| 
        MOV AC0, dbl(*SP(#30)) ; |475| 
	.dwpsn	file "./susan.c",line 476,column 17,is_stmt
        MOV dbl(*SP(#30)), AC0 ; |476| 
        ADD dbl(*SP(#26)), AC0, AC0 ; |476| 
        MOV AC0, dbl(*SP(#26)) ; |476| 
	.dwpsn	file "./susan.c",line 477,column 17,is_stmt
        MOV dbl(*SP(#30)), AC0 ; |477| 
        MOV dbl(*SP(#28)), AC1 ; |477| 
$C$DW$211	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$211, DW_AT_low_pc(0x00)
	.dwattr $C$DW$211, DW_AT_name("__mpyli")
	.dwattr $C$DW$211, DW_AT_TI_call
        CALL #__mpyli ; |477| 
                                        ; call occurs [#__mpyli] ; |477| 
        ADD dbl(*SP(#46)), AC0, AC0 ; |477| 
        MOV AC0, dbl(*SP(#46)) ; |477| 
	.dwpsn	file "./susan.c",line 478,column 17,is_stmt
        MOV dbl(*SP(#34)), XAR3
        MOV *AR3+, AR1 ; |478| 
        AND #0xffff, AR1, AC0 ; |478| 
        MOV XAR3, dbl(*SP(#34))
        MOV AC0, dbl(*SP(#28)) ; |478| 
	.dwpsn	file "./susan.c",line 479,column 17,is_stmt
        MOV *SP(#29), AR1 ; |479| 
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |479| 
        MOV uns(*AR3), AC0 ; |479| 
        MOV AC0, dbl(*SP(#30)) ; |479| 
	.dwpsn	file "./susan.c",line 480,column 17,is_stmt
        MOV dbl(*SP(#30)), AC0 ; |480| 
        ADD dbl(*SP(#26)), AC0, AC0 ; |480| 
        MOV AC0, dbl(*SP(#26)) ; |480| 
	.dwpsn	file "./susan.c",line 481,column 17,is_stmt
        MOV dbl(*SP(#30)), AC0 ; |481| 
        MOV dbl(*SP(#28)), AC1 ; |481| 
$C$DW$212	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$212, DW_AT_low_pc(0x00)
	.dwattr $C$DW$212, DW_AT_name("__mpyli")
	.dwattr $C$DW$212, DW_AT_TI_call
        CALL #__mpyli ; |481| 
                                        ; call occurs [#__mpyli] ; |481| 
        ADD dbl(*SP(#46)), AC0, AC0 ; |481| 
        MOV AC0, dbl(*SP(#46)) ; |481| 
	.dwpsn	file "./susan.c",line 482,column 17,is_stmt
        MOV dbl(*SP(#34)), XAR3
        MOV uns(*AR3), AC0 ; |482| 
        MOV AC0, dbl(*SP(#28)) ; |482| 
	.dwpsn	file "./susan.c",line 483,column 17,is_stmt
        MOV *SP(#29), AR1 ; |483| 
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |483| 
        MOV uns(*AR3), AC0 ; |483| 
        MOV AC0, dbl(*SP(#30)) ; |483| 
	.dwpsn	file "./susan.c",line 484,column 17,is_stmt
        MOV dbl(*SP(#30)), AC0 ; |484| 
        ADD dbl(*SP(#26)), AC0, AC0 ; |484| 
        MOV AC0, dbl(*SP(#26)) ; |484| 
	.dwpsn	file "./susan.c",line 485,column 17,is_stmt
        MOV dbl(*SP(#30)), AC0 ; |485| 
        MOV dbl(*SP(#28)), AC1 ; |485| 
$C$DW$213	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$213, DW_AT_low_pc(0x00)
	.dwattr $C$DW$213, DW_AT_name("__mpyli")
	.dwattr $C$DW$213, DW_AT_TI_call
        CALL #__mpyli ; |485| 
                                        ; call occurs [#__mpyli] ; |485| 
        ADD dbl(*SP(#46)), AC0, AC0 ; |485| 
        MOV AC0, dbl(*SP(#46)) ; |485| 
	.dwpsn	file "./susan.c",line 486,column 17,is_stmt
        MOV dbl(*SP(#34)), XAR3
        MOV dbl(*SP(#6)), AC0 ; |486| 
        SUB #2, AC0 ; |486| 
        MOV AC0, AR1 ; |486| 

        MOV XAR3, dbl(*SP(#34))
||      AADD AR1, AR3 ; |486| 

	.dwpsn	file "./susan.c",line 487,column 17,is_stmt
        MOV *AR3+, AR1 ; |487| 
        AND #0xffff, AR1, AC0 ; |487| 
        MOV XAR3, dbl(*SP(#34))
        MOV AC0, dbl(*SP(#28)) ; |487| 
	.dwpsn	file "./susan.c",line 488,column 17,is_stmt
        MOV *SP(#29), AR1 ; |488| 
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |488| 
        MOV uns(*AR3), AC0 ; |488| 
        MOV AC0, dbl(*SP(#30)) ; |488| 
	.dwpsn	file "./susan.c",line 489,column 17,is_stmt
        MOV dbl(*SP(#30)), AC0 ; |489| 
        ADD dbl(*SP(#26)), AC0, AC0 ; |489| 
        MOV AC0, dbl(*SP(#26)) ; |489| 
	.dwpsn	file "./susan.c",line 490,column 17,is_stmt
        MOV dbl(*SP(#30)), AC0 ; |490| 
        MOV dbl(*SP(#28)), AC1 ; |490| 
$C$DW$214	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$214, DW_AT_low_pc(0x00)
	.dwattr $C$DW$214, DW_AT_name("__mpyli")
	.dwattr $C$DW$214, DW_AT_TI_call
        CALL #__mpyli ; |490| 
                                        ; call occurs [#__mpyli] ; |490| 
        ADD dbl(*SP(#46)), AC0, AC0 ; |490| 
        MOV AC0, dbl(*SP(#46)) ; |490| 
	.dwpsn	file "./susan.c",line 491,column 17,is_stmt
        MOV dbl(*SP(#34)), XAR3
        MOV *AR3+, AR1 ; |491| 
        AND #0xffff, AR1, AC0 ; |491| 
        MOV XAR3, dbl(*SP(#34))
        MOV AC0, dbl(*SP(#28)) ; |491| 
	.dwpsn	file "./susan.c",line 492,column 17,is_stmt
        MOV *SP(#29), AR1 ; |492| 
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |492| 
        MOV uns(*AR3), AC0 ; |492| 
        MOV AC0, dbl(*SP(#30)) ; |492| 
	.dwpsn	file "./susan.c",line 493,column 17,is_stmt
        MOV dbl(*SP(#30)), AC0 ; |493| 
        ADD dbl(*SP(#26)), AC0, AC0 ; |493| 
        MOV AC0, dbl(*SP(#26)) ; |493| 
	.dwpsn	file "./susan.c",line 494,column 17,is_stmt
        MOV dbl(*SP(#30)), AC0 ; |494| 
        MOV dbl(*SP(#28)), AC1 ; |494| 
$C$DW$215	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$215, DW_AT_low_pc(0x00)
	.dwattr $C$DW$215, DW_AT_name("__mpyli")
	.dwattr $C$DW$215, DW_AT_TI_call
        CALL #__mpyli ; |494| 
                                        ; call occurs [#__mpyli] ; |494| 
        ADD dbl(*SP(#46)), AC0, AC0 ; |494| 
        MOV AC0, dbl(*SP(#46)) ; |494| 
	.dwpsn	file "./susan.c",line 495,column 17,is_stmt
        MOV dbl(*SP(#34)), XAR3
        MOV uns(*AR3), AC0 ; |495| 
        MOV AC0, dbl(*SP(#28)) ; |495| 
	.dwpsn	file "./susan.c",line 496,column 17,is_stmt
        MOV *SP(#29), AR1 ; |496| 
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |496| 
        MOV uns(*AR3), AC0 ; |496| 
        MOV AC0, dbl(*SP(#30)) ; |496| 
	.dwpsn	file "./susan.c",line 497,column 17,is_stmt
        MOV dbl(*SP(#30)), AC0 ; |497| 
        ADD dbl(*SP(#26)), AC0, AC0 ; |497| 
        MOV AC0, dbl(*SP(#26)) ; |497| 
	.dwpsn	file "./susan.c",line 498,column 17,is_stmt
        MOV dbl(*SP(#30)), AC0 ; |498| 
        MOV dbl(*SP(#28)), AC1 ; |498| 
$C$DW$216	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$216, DW_AT_low_pc(0x00)
	.dwattr $C$DW$216, DW_AT_name("__mpyli")
	.dwattr $C$DW$216, DW_AT_TI_call
        CALL #__mpyli ; |498| 
                                        ; call occurs [#__mpyli] ; |498| 
        ADD dbl(*SP(#46)), AC0, AC0 ; |498| 
        MOV AC0, dbl(*SP(#46)) ; |498| 
	.dwpsn	file "./susan.c",line 499,column 17,is_stmt
        MOV dbl(*SP(#34)), XAR3
        MOV dbl(*SP(#6)), AC0 ; |499| 
        SUB #2, AC0 ; |499| 
        MOV AC0, AR1 ; |499| 

        MOV XAR3, dbl(*SP(#34))
||      AADD AR1, AR3 ; |499| 

	.dwpsn	file "./susan.c",line 500,column 17,is_stmt
        MOV *AR3+, AR1 ; |500| 
        AND #0xffff, AR1, AC0 ; |500| 
        MOV XAR3, dbl(*SP(#34))
        MOV AC0, dbl(*SP(#28)) ; |500| 
	.dwpsn	file "./susan.c",line 501,column 17,is_stmt
        MOV *SP(#29), AR1 ; |501| 
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |501| 
        MOV uns(*AR3), AC0 ; |501| 
        MOV AC0, dbl(*SP(#30)) ; |501| 
	.dwpsn	file "./susan.c",line 502,column 17,is_stmt
        MOV dbl(*SP(#30)), AC0 ; |502| 
        ADD dbl(*SP(#26)), AC0, AC0 ; |502| 
        MOV AC0, dbl(*SP(#26)) ; |502| 
	.dwpsn	file "./susan.c",line 503,column 17,is_stmt
        MOV dbl(*SP(#30)), AC0 ; |503| 
        MOV dbl(*SP(#28)), AC1 ; |503| 
$C$DW$217	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$217, DW_AT_low_pc(0x00)
	.dwattr $C$DW$217, DW_AT_name("__mpyli")
	.dwattr $C$DW$217, DW_AT_TI_call
        CALL #__mpyli ; |503| 
                                        ; call occurs [#__mpyli] ; |503| 
        ADD dbl(*SP(#46)), AC0, AC0 ; |503| 
        MOV AC0, dbl(*SP(#46)) ; |503| 
	.dwpsn	file "./susan.c",line 504,column 17,is_stmt
        MOV dbl(*SP(#34)), XAR3
        MOV *AR3+, AR1 ; |504| 
        AND #0xffff, AR1, AC0 ; |504| 
        MOV XAR3, dbl(*SP(#34))
        MOV AC0, dbl(*SP(#28)) ; |504| 
	.dwpsn	file "./susan.c",line 505,column 17,is_stmt
        MOV *SP(#29), AR1 ; |505| 
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |505| 
        MOV uns(*AR3), AC0 ; |505| 
        MOV AC0, dbl(*SP(#30)) ; |505| 
	.dwpsn	file "./susan.c",line 506,column 17,is_stmt
        MOV dbl(*SP(#30)), AC0 ; |506| 
        ADD dbl(*SP(#26)), AC0, AC0 ; |506| 
        MOV AC0, dbl(*SP(#26)) ; |506| 
	.dwpsn	file "./susan.c",line 507,column 17,is_stmt
        MOV dbl(*SP(#30)), AC0 ; |507| 
        MOV dbl(*SP(#28)), AC1 ; |507| 
$C$DW$218	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$218, DW_AT_low_pc(0x00)
	.dwattr $C$DW$218, DW_AT_name("__mpyli")
	.dwattr $C$DW$218, DW_AT_TI_call
        CALL #__mpyli ; |507| 
                                        ; call occurs [#__mpyli] ; |507| 
        ADD dbl(*SP(#46)), AC0, AC0 ; |507| 
        MOV AC0, dbl(*SP(#46)) ; |507| 
	.dwpsn	file "./susan.c",line 508,column 17,is_stmt
        MOV dbl(*SP(#34)), XAR3
        MOV uns(*AR3), AC0 ; |508| 
        MOV AC0, dbl(*SP(#28)) ; |508| 
	.dwpsn	file "./susan.c",line 509,column 17,is_stmt
        MOV *SP(#29), AR1 ; |509| 
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |509| 
        MOV uns(*AR3), AC0 ; |509| 
        MOV AC0, dbl(*SP(#30)) ; |509| 
	.dwpsn	file "./susan.c",line 510,column 17,is_stmt
        MOV dbl(*SP(#30)), AC0 ; |510| 
        ADD dbl(*SP(#26)), AC0, AC0 ; |510| 
        MOV AC0, dbl(*SP(#26)) ; |510| 
	.dwpsn	file "./susan.c",line 511,column 17,is_stmt
        MOV dbl(*SP(#30)), AC0 ; |511| 
        MOV dbl(*SP(#28)), AC1 ; |511| 
$C$DW$219	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$219, DW_AT_low_pc(0x00)
	.dwattr $C$DW$219, DW_AT_name("__mpyli")
	.dwattr $C$DW$219, DW_AT_TI_call
        CALL #__mpyli ; |511| 
                                        ; call occurs [#__mpyli] ; |511| 
$C$DW$L$_susan_smoothing$26$E:
$C$DW$L$_susan_smoothing$27$B:
        ADD dbl(*SP(#46)), AC0, AC0 ; |511| 
        MOV AC0, dbl(*SP(#46)) ; |511| 
	.dwpsn	file "./susan.c",line 513,column 17,is_stmt
        MOV #100, AC0 ; |513| 
        SUB AC0, dbl(*SP(#26)), AC0 ; |513| 
        MOV AC0, dbl(*SP(#30)) ; |513| 
	.dwpsn	file "./susan.c",line 514,column 17,is_stmt
        MOV dbl(*SP(#30)), AC0 ; |514| 
        BCC $C$L55,AC0 != #0 ; |514| 
                                        ; branchcc occurs ; |514| 
$C$DW$L$_susan_smoothing$27$E:
$C$DW$L$_susan_smoothing$28$B:
	.dwpsn	file "./susan.c",line 515,column 21,is_stmt
        MOV dbl(*SP(#2)), XAR0
        MOV dbl(*SP(#18)), AC0 ; |515| 
        MOV dbl(*SP(#20)), AC1 ; |515| 
        MOV dbl(*SP(#6)), AC2 ; |515| 
$C$DW$220	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$220, DW_AT_low_pc(0x00)
	.dwattr $C$DW$220, DW_AT_name("_median")
	.dwattr $C$DW$220, DW_AT_TI_call
        CALL #_median ; |515| 
                                        ; call occurs [#_median] ; |515| 
        MOV dbl(*SP(#42)), XAR2
        AMAR *AR2, XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#42))
        MOV T0, *AR2 ; |515| 
        B $C$L56  ; |515| 
                                        ; branch occurs ; |515| 
$C$DW$L$_susan_smoothing$28$E:
$C$L55:    
$C$DW$L$_susan_smoothing$29$B:
	.dwpsn	file "./susan.c",line 517,column 21,is_stmt
        MOV dbl(*SP(#32)), AC0 ; |517| 
        MOV #100, AC1 ; |517| 
$C$DW$221	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$221, DW_AT_low_pc(0x00)
	.dwattr $C$DW$221, DW_AT_name("__mpyli")
	.dwattr $C$DW$221, DW_AT_TI_call
        CALL #__mpyli ; |517| 
                                        ; call occurs [#__mpyli] ; |517| 
        SUB AC0, dbl(*SP(#46)), AC0 ; |517| 
        MOV dbl(*SP(#30)), AC1 ; |517| 
$C$DW$222	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$222, DW_AT_low_pc(0x00)
	.dwattr $C$DW$222, DW_AT_name("__divli")
	.dwattr $C$DW$222, DW_AT_TI_call
        CALL #__divli ; |517| 
                                        ; call occurs [#__divli] ; |517| 
        MOV dbl(*SP(#42)), XAR2
        AMAR *AR2, XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#42))
        MOV AC0, *AR2 ; |517| 
$C$DW$L$_susan_smoothing$29$E:
$C$L56:    
$C$DW$L$_susan_smoothing$30$B:
	.dwpsn	file "./susan.c",line 466,column 41,is_stmt
        MOV dbl(*SP(#20)), AC0 ; |466| 
        ADD #1, AC0 ; |466| 
        MOV AC0, dbl(*SP(#20)) ; |466| 
	.dwpsn	file "./susan.c",line 466,column 25,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |466| 

        SUB #1, AC0 ; |466| 
||      MOV dbl(*SP(#20)), AC1 ; |466| 

        CMP AC1 < AC0, TC1 ; |466| 
        BCC $C$L54,TC1 ; |466| 
                                        ; branchcc occurs ; |466| 
$C$DW$L$_susan_smoothing$30$E:
$C$L57:    
$C$DW$L$_susan_smoothing$31$B:
	.dwpsn	file "./susan.c",line 464,column 37,is_stmt
        MOV dbl(*SP(#18)), AC0 ; |464| 
        ADD #1, AC0 ; |464| 
        MOV AC0, dbl(*SP(#18)) ; |464| 
	.dwpsn	file "./susan.c",line 464,column 21,is_stmt
        MOV dbl(*SP(#50)), AC0 ; |464| 

        SUB #1, AC0 ; |464| 
||      MOV dbl(*SP(#18)), AC1 ; |464| 

        CMP AC1 < AC0, TC1 ; |464| 
        BCC $C$L53,TC1 ; |464| 
                                        ; branchcc occurs ; |464| 
$C$DW$L$_susan_smoothing$31$E:
$C$L58:    
	.dwpsn	file "./susan.c",line 521,column 5,is_stmt
        MOV #0, T0
$C$L59:    
	.dwpsn	file "./susan.c",line 522,column 1,is_stmt
        AADD #49, SP
	.dwcfi	cfa_offset, 1
$C$DW$223	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$223, DW_AT_low_pc(0x00)
	.dwattr $C$DW$223, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$224	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$224, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_smooth/susan.asm:$C$L53:1:1738938267")
	.dwattr $C$DW$224, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$224, DW_AT_TI_begin_line(0x1d0)
	.dwattr $C$DW$224, DW_AT_TI_end_line(0x207)
$C$DW$225	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$225, DW_AT_low_pc($C$DW$L$_susan_smoothing$25$B)
	.dwattr $C$DW$225, DW_AT_high_pc($C$DW$L$_susan_smoothing$25$E)
$C$DW$226	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$226, DW_AT_low_pc($C$DW$L$_susan_smoothing$31$B)
	.dwattr $C$DW$226, DW_AT_high_pc($C$DW$L$_susan_smoothing$31$E)

$C$DW$227	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$227, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_smooth/susan.asm:$C$L54:2:1738938267")
	.dwattr $C$DW$227, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$227, DW_AT_TI_begin_line(0x1d2)
	.dwattr $C$DW$227, DW_AT_TI_end_line(0x206)
$C$DW$228	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$228, DW_AT_low_pc($C$DW$L$_susan_smoothing$26$B)
	.dwattr $C$DW$228, DW_AT_high_pc($C$DW$L$_susan_smoothing$26$E)
$C$DW$229	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$229, DW_AT_low_pc($C$DW$L$_susan_smoothing$27$B)
	.dwattr $C$DW$229, DW_AT_high_pc($C$DW$L$_susan_smoothing$27$E)
$C$DW$230	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$230, DW_AT_low_pc($C$DW$L$_susan_smoothing$28$B)
	.dwattr $C$DW$230, DW_AT_high_pc($C$DW$L$_susan_smoothing$28$E)
$C$DW$231	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$231, DW_AT_low_pc($C$DW$L$_susan_smoothing$29$B)
	.dwattr $C$DW$231, DW_AT_high_pc($C$DW$L$_susan_smoothing$29$E)
$C$DW$232	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$232, DW_AT_low_pc($C$DW$L$_susan_smoothing$30$B)
	.dwattr $C$DW$232, DW_AT_high_pc($C$DW$L$_susan_smoothing$30$E)
	.dwendtag $C$DW$227

	.dwendtag $C$DW$224


$C$DW$233	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$233, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_smooth/susan.asm:$C$L43:1:1738938267")
	.dwattr $C$DW$233, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$233, DW_AT_TI_begin_line(0x1ad)
	.dwattr $C$DW$233, DW_AT_TI_end_line(0x1c8)
$C$DW$234	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$234, DW_AT_low_pc($C$DW$L$_susan_smoothing$13$B)
	.dwattr $C$DW$234, DW_AT_high_pc($C$DW$L$_susan_smoothing$13$E)
$C$DW$235	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$235, DW_AT_low_pc($C$DW$L$_susan_smoothing$22$B)
	.dwattr $C$DW$235, DW_AT_high_pc($C$DW$L$_susan_smoothing$22$E)

$C$DW$236	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$236, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_smooth/susan.asm:$C$L44:2:1738938267")
	.dwattr $C$DW$236, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$236, DW_AT_TI_begin_line(0x1af)
	.dwattr $C$DW$236, DW_AT_TI_end_line(0x1c7)
$C$DW$237	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$237, DW_AT_low_pc($C$DW$L$_susan_smoothing$14$B)
	.dwattr $C$DW$237, DW_AT_high_pc($C$DW$L$_susan_smoothing$14$E)
$C$DW$238	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$238, DW_AT_low_pc($C$DW$L$_susan_smoothing$18$B)
	.dwattr $C$DW$238, DW_AT_high_pc($C$DW$L$_susan_smoothing$18$E)
$C$DW$239	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$239, DW_AT_low_pc($C$DW$L$_susan_smoothing$19$B)
	.dwattr $C$DW$239, DW_AT_high_pc($C$DW$L$_susan_smoothing$19$E)
$C$DW$240	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$240, DW_AT_low_pc($C$DW$L$_susan_smoothing$20$B)
	.dwattr $C$DW$240, DW_AT_high_pc($C$DW$L$_susan_smoothing$20$E)
$C$DW$241	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$241, DW_AT_low_pc($C$DW$L$_susan_smoothing$21$B)
	.dwattr $C$DW$241, DW_AT_high_pc($C$DW$L$_susan_smoothing$21$E)

$C$DW$242	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$242, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_smooth/susan.asm:$C$L45:3:1738938267")
	.dwattr $C$DW$242, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$242, DW_AT_TI_begin_line(0x1b7)
	.dwattr $C$DW$242, DW_AT_TI_end_line(0x1c1)
$C$DW$243	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$243, DW_AT_low_pc($C$DW$L$_susan_smoothing$15$B)
	.dwattr $C$DW$243, DW_AT_high_pc($C$DW$L$_susan_smoothing$15$E)
$C$DW$244	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$244, DW_AT_low_pc($C$DW$L$_susan_smoothing$17$B)
	.dwattr $C$DW$244, DW_AT_high_pc($C$DW$L$_susan_smoothing$17$E)

$C$DW$245	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$245, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_smooth/susan.asm:$C$L46:4:1738938267")
	.dwattr $C$DW$245, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$245, DW_AT_TI_begin_line(0x1b9)
	.dwattr $C$DW$245, DW_AT_TI_end_line(0x1bf)
$C$DW$246	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$246, DW_AT_low_pc($C$DW$L$_susan_smoothing$16$B)
	.dwattr $C$DW$246, DW_AT_high_pc($C$DW$L$_susan_smoothing$16$E)
	.dwendtag $C$DW$245

	.dwendtag $C$DW$242

	.dwendtag $C$DW$236

	.dwendtag $C$DW$233


$C$DW$247	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$247, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_smooth/susan.asm:$C$L39:1:1738938267")
	.dwattr $C$DW$247, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$247, DW_AT_TI_begin_line(0x1a1)
	.dwattr $C$DW$247, DW_AT_TI_end_line(0x1a8)
$C$DW$248	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$248, DW_AT_low_pc($C$DW$L$_susan_smoothing$9$B)
	.dwattr $C$DW$248, DW_AT_high_pc($C$DW$L$_susan_smoothing$9$E)
$C$DW$249	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$249, DW_AT_low_pc($C$DW$L$_susan_smoothing$11$B)
	.dwattr $C$DW$249, DW_AT_high_pc($C$DW$L$_susan_smoothing$11$E)

$C$DW$250	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$250, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_smooth/susan.asm:$C$L40:2:1738938267")
	.dwattr $C$DW$250, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$250, DW_AT_TI_begin_line(0x1a3)
	.dwattr $C$DW$250, DW_AT_TI_end_line(0x1a7)
$C$DW$251	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$251, DW_AT_low_pc($C$DW$L$_susan_smoothing$10$B)
	.dwattr $C$DW$251, DW_AT_high_pc($C$DW$L$_susan_smoothing$10$E)
	.dwendtag $C$DW$250

	.dwendtag $C$DW$247

	.dwattr $C$DW$160, DW_AT_TI_end_file("./susan.c")
	.dwattr $C$DW$160, DW_AT_TI_end_line(0x20a)
	.dwattr $C$DW$160, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$160

	.sect	".text"
	.global	_susan_smooth

$C$DW$252	.dwtag  DW_TAG_subprogram, DW_AT_name("susan_smooth")
	.dwattr $C$DW$252, DW_AT_low_pc(_susan_smooth)
	.dwattr $C$DW$252, DW_AT_high_pc(0x00)
	.dwattr $C$DW$252, DW_AT_TI_symbol_name("_susan_smooth")
	.dwattr $C$DW$252, DW_AT_external
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$252, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$252, DW_AT_TI_begin_line(0x20c)
	.dwattr $C$DW$252, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$252, DW_AT_TI_max_frame_size(0x1a)
	.dwpsn	file "./susan.c",line 525,column 1,is_stmt,address _susan_smooth

	.dwfde $C$DW$CIE, _susan_smooth
$C$DW$253	.dwtag  DW_TAG_formal_parameter, DW_AT_name("in")
	.dwattr $C$DW$253, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$253, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$253, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: susan_smooth                                                 *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,AC2,AC2,T0,AR0,XAR0,AR1,XAR1,AR2,    *
;*                        XAR2,AR3,XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,   *
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 26 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (2 function parameters)                              *
;*                        (22 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_susan_smooth:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-25, SP
	.dwcfi	cfa_offset, 26
$C$DW$254	.dwtag  DW_TAG_variable, DW_AT_name("in")
	.dwattr $C$DW$254, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$254, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$255	.dwtag  DW_TAG_variable, DW_AT_name("bp")
	.dwattr $C$DW$255, DW_AT_TI_symbol_name("_bp")
	.dwattr $C$DW$255, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$255, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$256	.dwtag  DW_TAG_variable, DW_AT_name("dt")
	.dwattr $C$DW$256, DW_AT_TI_symbol_name("_dt")
	.dwattr $C$DW$256, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$256, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$257	.dwtag  DW_TAG_variable, DW_AT_name("bt")
	.dwattr $C$DW$257, DW_AT_TI_symbol_name("_bt")
	.dwattr $C$DW$257, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$257, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$258	.dwtag  DW_TAG_variable, DW_AT_name("three_by_three")
	.dwattr $C$DW$258, DW_AT_TI_symbol_name("_three_by_three")
	.dwattr $C$DW$258, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$258, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$259	.dwtag  DW_TAG_variable, DW_AT_name("x_size")
	.dwattr $C$DW$259, DW_AT_TI_symbol_name("_x_size")
	.dwattr $C$DW$259, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$259, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$260	.dwtag  DW_TAG_variable, DW_AT_name("y_size")
	.dwattr $C$DW$260, DW_AT_TI_symbol_name("_y_size")
	.dwattr $C$DW$260, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$260, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$261	.dwtag  DW_TAG_variable, DW_AT_name("retVal")
	.dwattr $C$DW$261, DW_AT_TI_symbol_name("_retVal")
	.dwattr $C$DW$261, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$261, DW_AT_location[DW_OP_bregx 0x24 16]
$C$DW$262	.dwtag  DW_TAG_variable, DW_AT_name("noprint_output")
	.dwattr $C$DW$262, DW_AT_TI_symbol_name("_noprint_output")
	.dwattr $C$DW$262, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$262, DW_AT_location[DW_OP_bregx 0x24 18]
$C$DW$263	.dwtag  DW_TAG_variable, DW_AT_name("checksum")
	.dwattr $C$DW$263, DW_AT_TI_symbol_name("_checksum")
	.dwattr $C$DW$263, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$263, DW_AT_location[DW_OP_bregx 0x24 20]
$C$DW$264	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$264, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$264, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$264, DW_AT_location[DW_OP_bregx 0x24 22]
        MOV XAR0, dbl(*SP(#2))
	.dwpsn	file "./susan.c",line 527,column 11,is_stmt
        MOV dbl(*($C$FL3)), AC0 ; |527| 
        MOV AC0, dbl(*SP(#6)) ; |527| 
	.dwpsn	file "./susan.c",line 528,column 13,is_stmt
        MOV #20, AC0 ; |528| 
        MOV AC0, dbl(*SP(#8)) ; |528| 
	.dwpsn	file "./susan.c",line 529,column 13,is_stmt
        MOV #0, AC0 ; |529| 
        MOV AC0, dbl(*SP(#10)) ; |529| 
	.dwpsn	file "./susan.c",line 530,column 13,is_stmt
        MOV #-1, AC0 ; |530| 
        MOV AC0, dbl(*SP(#12)) ; |530| 
	.dwpsn	file "./susan.c",line 530,column 26,is_stmt
        MOV AC0, dbl(*SP(#14)) ; |530| 
	.dwpsn	file "./susan.c",line 531,column 13,is_stmt
        MOV #0, *SP(#16) ; |531| 
	.dwpsn	file "./susan.c",line 533,column 5,is_stmt
        AMAR *SP(#12), XAR1
        AMAR *SP(#14), XAR2
        AMAR *SP(#2), XAR0
$C$DW$265	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$265, DW_AT_low_pc(0x00)
	.dwattr $C$DW$265, DW_AT_name("_get_image")
	.dwattr $C$DW$265, DW_AT_TI_call
        CALL #_get_image ; |533| 
                                        ; call occurs [#_get_image] ; |533| 
        MOV T0, *SP(#16) ; |533| 
	.dwpsn	file "./susan.c",line 534,column 5,is_stmt
        MOV T0, AR1
        BCC $C$L60,AR1 >= #0 ; |534| 
                                        ; branchcc occurs ; |534| 
	.dwpsn	file "./susan.c",line 535,column 9,is_stmt
        MOV #-1, AC0 ; |535| 
        B $C$L63  ; |535| 
                                        ; branch occurs ; |535| 
$C$L60:    
	.dwpsn	file "./susan.c",line 539,column 5,is_stmt
        AMAR *SP(#4), XAR0
        MOV dbl(*SP(#8)), AC0 ; |539| 
$C$DW$266	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$266, DW_AT_low_pc(0x00)
	.dwattr $C$DW$266, DW_AT_name("_setup_brightness_lut")
	.dwattr $C$DW$266, DW_AT_TI_call

        CALL #_setup_brightness_lut ; |539| 
||      MOV #2, AC1 ; |539| 

                                        ; call occurs [#_setup_brightness_lut] ; |539| 
	.dwpsn	file "./susan.c",line 547,column 5,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |547| 
        MOV AC0, dbl(*SP(#0)) ; |547| 
        MOV dbl(*SP(#12)), AC2 ; |547| 
        MOV dbl(*SP(#4)), XAR1
        MOV dbl(*SP(#10)), AC0 ; |547| 
        MOV dbl(*SP(#2)), XAR0
        MOV dbl(*SP(#6)), AC1 ; |547| 
$C$DW$267	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$267, DW_AT_low_pc(0x00)
	.dwattr $C$DW$267, DW_AT_name("_susan_smoothing")
	.dwattr $C$DW$267, DW_AT_TI_call
        CALL #_susan_smoothing ; |547| 
                                        ; call occurs [#_susan_smoothing] ; |547| 
	.dwpsn	file "./susan.c",line 550,column 13,is_stmt
        MOV #0, AC0 ; |550| 
        MOV AC0, dbl(*SP(#20)) ; |550| 
	.dwpsn	file "./susan.c",line 553,column 10,is_stmt
        MOV AC0, dbl(*SP(#22)) ; |553| 
	.dwpsn	file "./susan.c",line 553,column 17,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |553| 
        MOV dbl(*SP(#14)), AC1 ; |553| 
$C$DW$268	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$268, DW_AT_low_pc(0x00)
	.dwattr $C$DW$268, DW_AT_name("__mpyli")
	.dwattr $C$DW$268, DW_AT_TI_call
        CALL #__mpyli ; |553| 
                                        ; call occurs [#__mpyli] ; |553| 
        MOV dbl(*SP(#22)), AC1 ; |553| 
        CMP AC1 >= AC0, TC1 ; |553| 
        BCC $C$L62,TC1 ; |553| 
                                        ; branchcc occurs ; |553| 
$C$L61:    
$C$DW$L$_susan_smooth$4$B:
	.dwpsn	file "./susan.c",line 555,column 9,is_stmt
        MOV *SP(#23), T0 ; |555| 
        MOV dbl(*SP(#2)), XAR3
        MOV uns(*AR3(T0)), AC0 ; |555| 
        ADD dbl(*SP(#20)), AC0, AC0 ; |555| 
        MOV AC0, dbl(*SP(#20)) ; |555| 
	.dwpsn	file "./susan.c",line 553,column 38,is_stmt
        MOV dbl(*SP(#22)), AC0 ; |553| 
        ADD #1, AC0 ; |553| 
        MOV AC0, dbl(*SP(#22)) ; |553| 
	.dwpsn	file "./susan.c",line 553,column 17,is_stmt
        MOV dbl(*SP(#14)), AC1 ; |553| 
        MOV dbl(*SP(#12)), AC0 ; |553| 
$C$DW$269	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$269, DW_AT_low_pc(0x00)
	.dwattr $C$DW$269, DW_AT_name("__mpyli")
	.dwattr $C$DW$269, DW_AT_TI_call
        CALL #__mpyli ; |553| 
                                        ; call occurs [#__mpyli] ; |553| 
        MOV dbl(*SP(#22)), AC1 ; |553| 
        CMP AC1 < AC0, TC1 ; |553| 
        BCC $C$L61,TC1 ; |553| 
                                        ; branchcc occurs ; |553| 
$C$DW$L$_susan_smooth$4$E:
$C$L62:    
	.dwpsn	file "./susan.c",line 557,column 5,is_stmt
        MOV dbl(*SP(#20)), AC0 ; |557| 
        MOV AC0, dbl(*SP(#18)) ; |557| 
        NOP
        NOP
        NOP
	.dwpsn	file "./susan.c",line 558,column 5,is_stmt
        MOV dbl(*SP(#18)), AC0 ; |558| 
	.dwpsn	file "./susan.c",line 562,column 5,is_stmt
        MOV #0, AC0 ; |562| 
$C$L63:    
	.dwpsn	file "./susan.c",line 563,column 1,is_stmt
        AADD #25, SP
	.dwcfi	cfa_offset, 1
$C$DW$270	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$270, DW_AT_low_pc(0x00)
	.dwattr $C$DW$270, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$271	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$271, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_smooth/susan.asm:$C$L61:1:1738938267")
	.dwattr $C$DW$271, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$271, DW_AT_TI_begin_line(0x229)
	.dwattr $C$DW$271, DW_AT_TI_end_line(0x22c)
$C$DW$272	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$272, DW_AT_low_pc($C$DW$L$_susan_smooth$4$B)
	.dwattr $C$DW$272, DW_AT_high_pc($C$DW$L$_susan_smooth$4$E)
	.dwendtag $C$DW$271

	.dwattr $C$DW$252, DW_AT_TI_end_file("./susan.c")
	.dwattr $C$DW$252, DW_AT_TI_end_line(0x233)
	.dwattr $C$DW$252, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$252

;*******************************************************************************
;* FLOATING-POINT CONSTANTS                                                    *
;*******************************************************************************
	.sect	".const"
	.align	2
$C$FL1:	.xlong	0x42c80000
	.align	2
$C$FL2:	.xlong	0x3fc00000
	.align	2
$C$FL3:	.xlong	0x40a00000
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_exp
	.global	__divli
	.global	__negd
	.global	__divd
	.global	__fltlid
	.global	__mpyd
	.global	__fixdu
	.global	__mpyli
	.global	_memcpy
	.global	__fixdli

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x17)
$C$DW$273	.dwtag  DW_TAG_TI_far_type
$C$DW$T$19	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$273)
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
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)
$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x01)
$C$DW$T$33	.dwtag  DW_TAG_typedef, DW_AT_name("int16_t")
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$33, DW_AT_language(DW_LANG_C)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)
$C$DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("size_t")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
$C$DW$T$25	.dwtag  DW_TAG_typedef, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$25, DW_AT_language(DW_LANG_C)
$C$DW$T$26	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_address_class(0x17)
$C$DW$T$28	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$28, DW_AT_address_class(0x17)

$C$DW$T$40	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$40, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x204)
$C$DW$274	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$274, DW_AT_upper_bound(0x203)
	.dwendtag $C$DW$T$40


$C$DW$T$41	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$41, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x37b0)
$C$DW$275	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$275, DW_AT_upper_bound(0x37af)
	.dwendtag $C$DW$T$41


$C$DW$T$42	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$42, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x121)
$C$DW$276	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$276, DW_AT_upper_bound(0x120)
	.dwendtag $C$DW$T$42

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)
$C$DW$T$23	.dwtag  DW_TAG_typedef, DW_AT_name("int32_t")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
$C$DW$T$24	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$24, DW_AT_address_class(0x17)

$C$DW$T$46	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$46, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$46, DW_AT_byte_size(0x10)
$C$DW$277	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$277, DW_AT_upper_bound(0x07)
	.dwendtag $C$DW$T$46

$C$DW$278	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$278, DW_AT_type(*$C$DW$T$23)
$C$DW$T$48	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$278)
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
$C$DW$T$51	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$51, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$51, DW_AT_name("signed char")
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x01)

$C$DW$T$54	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$T$54, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$54, DW_AT_byte_size(0x64)
$C$DW$279	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$279, DW_AT_upper_bound(0x63)
	.dwendtag $C$DW$T$54

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

$C$DW$280	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$280, DW_AT_location[DW_OP_reg0]
$C$DW$281	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$281, DW_AT_location[DW_OP_reg1]
$C$DW$282	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$282, DW_AT_location[DW_OP_reg2]
$C$DW$283	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$283, DW_AT_location[DW_OP_reg3]
$C$DW$284	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$284, DW_AT_location[DW_OP_reg4]
$C$DW$285	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$285, DW_AT_location[DW_OP_reg5]
$C$DW$286	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$286, DW_AT_location[DW_OP_reg6]
$C$DW$287	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$287, DW_AT_location[DW_OP_reg7]
$C$DW$288	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$288, DW_AT_location[DW_OP_reg8]
$C$DW$289	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$289, DW_AT_location[DW_OP_reg9]
$C$DW$290	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$290, DW_AT_location[DW_OP_reg10]
$C$DW$291	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$291, DW_AT_location[DW_OP_reg11]
$C$DW$292	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$292, DW_AT_location[DW_OP_reg12]
$C$DW$293	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$293, DW_AT_location[DW_OP_reg13]
$C$DW$294	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$294, DW_AT_location[DW_OP_reg14]
$C$DW$295	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$295, DW_AT_location[DW_OP_reg15]
$C$DW$296	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$296, DW_AT_location[DW_OP_reg16]
$C$DW$297	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$297, DW_AT_location[DW_OP_reg17]
$C$DW$298	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$298, DW_AT_location[DW_OP_reg18]
$C$DW$299	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$299, DW_AT_location[DW_OP_reg19]
$C$DW$300	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$300, DW_AT_location[DW_OP_reg20]
$C$DW$301	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$301, DW_AT_location[DW_OP_reg21]
$C$DW$302	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$302, DW_AT_location[DW_OP_reg22]
$C$DW$303	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$303, DW_AT_location[DW_OP_reg23]
$C$DW$304	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$304, DW_AT_location[DW_OP_reg24]
$C$DW$305	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$305, DW_AT_location[DW_OP_reg25]
$C$DW$306	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$306, DW_AT_location[DW_OP_reg26]
$C$DW$307	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$307, DW_AT_location[DW_OP_reg27]
$C$DW$308	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$308, DW_AT_location[DW_OP_reg28]
$C$DW$309	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$309, DW_AT_location[DW_OP_reg29]
$C$DW$310	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$310, DW_AT_location[DW_OP_reg30]
$C$DW$311	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$311, DW_AT_location[DW_OP_reg31]
$C$DW$312	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$312, DW_AT_location[DW_OP_regx 0x20]
$C$DW$313	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$313, DW_AT_location[DW_OP_regx 0x21]
$C$DW$314	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$314, DW_AT_location[DW_OP_regx 0x22]
$C$DW$315	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$315, DW_AT_location[DW_OP_regx 0x23]
$C$DW$316	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$316, DW_AT_location[DW_OP_regx 0x24]
$C$DW$317	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$317, DW_AT_location[DW_OP_regx 0x25]
$C$DW$318	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$318, DW_AT_location[DW_OP_regx 0x26]
$C$DW$319	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$319, DW_AT_location[DW_OP_regx 0x27]
$C$DW$320	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$320, DW_AT_location[DW_OP_regx 0x28]
$C$DW$321	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$321, DW_AT_location[DW_OP_regx 0x29]
$C$DW$322	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$322, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$323	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$323, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$324	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$324, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$325	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$325, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$326	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$326, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$327	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$327, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$328	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$328, DW_AT_location[DW_OP_regx 0x30]
$C$DW$329	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$329, DW_AT_location[DW_OP_regx 0x31]
$C$DW$330	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$330, DW_AT_location[DW_OP_regx 0x32]
$C$DW$331	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$331, DW_AT_location[DW_OP_regx 0x33]
$C$DW$332	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$332, DW_AT_location[DW_OP_regx 0x34]
$C$DW$333	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$333, DW_AT_location[DW_OP_regx 0x35]
$C$DW$334	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$334, DW_AT_location[DW_OP_regx 0x36]
$C$DW$335	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$335, DW_AT_location[DW_OP_regx 0x37]
$C$DW$336	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$336, DW_AT_location[DW_OP_regx 0x38]
$C$DW$337	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$337, DW_AT_location[DW_OP_regx 0x39]
$C$DW$338	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$338, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$339	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$339, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$340	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$340, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$341	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$341, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$342	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$342, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$343	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$343, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$344	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$344, DW_AT_location[DW_OP_regx 0x40]
$C$DW$345	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$345, DW_AT_location[DW_OP_regx 0x41]
$C$DW$346	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$346, DW_AT_location[DW_OP_regx 0x42]
$C$DW$347	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$347, DW_AT_location[DW_OP_regx 0x43]
$C$DW$348	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$348, DW_AT_location[DW_OP_regx 0x44]
$C$DW$349	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$349, DW_AT_location[DW_OP_regx 0x45]
$C$DW$350	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$350, DW_AT_location[DW_OP_regx 0x46]
$C$DW$351	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$351, DW_AT_location[DW_OP_regx 0x47]
$C$DW$352	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$352, DW_AT_location[DW_OP_regx 0x48]
$C$DW$353	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$353, DW_AT_location[DW_OP_regx 0x49]
$C$DW$354	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$354, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$355	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$355, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$356	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$356, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$357	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$357, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$358	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$358, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$359	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$359, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$360	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$360, DW_AT_location[DW_OP_regx 0x50]
$C$DW$361	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$361, DW_AT_location[DW_OP_regx 0x51]
$C$DW$362	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$362, DW_AT_location[DW_OP_regx 0x52]
$C$DW$363	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$363, DW_AT_location[DW_OP_regx 0x53]
$C$DW$364	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$364, DW_AT_location[DW_OP_regx 0x54]
$C$DW$365	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$365, DW_AT_location[DW_OP_regx 0x55]
$C$DW$366	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$366, DW_AT_location[DW_OP_regx 0x56]
$C$DW$367	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$367, DW_AT_location[DW_OP_regx 0x57]
$C$DW$368	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$368, DW_AT_location[DW_OP_regx 0x58]
$C$DW$369	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$369, DW_AT_location[DW_OP_regx 0x59]
$C$DW$370	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$370, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$371	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$371, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

