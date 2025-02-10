;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                        Unix v4.4.1 *
;* Date/Time created: Thu Feb  6 13:35:59 2025                                 *
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
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_corners")

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("memset")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_memset")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$3)
$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$10)
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$24)
	.dwendtag $C$DW$1


$C$DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("exp")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_exp")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$17)
	.dwendtag $C$DW$5

	.bss	_g_r,9800,0,2
$C$DW$7	.dwtag  DW_TAG_variable, DW_AT_name("g_r")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_g_r")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_addr _g_r]
	.bss	_setbrightness,516,0,0
$C$DW$8	.dwtag  DW_TAG_variable, DW_AT_name("setbrightness")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_setbrightness")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_addr _setbrightness]
	.global	_fakeFile
	.bss	_fakeFile,2,0,2
$C$DW$9	.dwtag  DW_TAG_variable, DW_AT_name("fakeFile")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_fakeFile")
	.dwattr $C$DW$9, DW_AT_location[DW_OP_addr _fakeFile]
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$9, DW_AT_external
;	/home/santiago/ti/ccs1281/ccs/tools/compiler/c5500_4.4.1/bin/acp55 -@/tmp/24177m14NmL 
	.sect	".text"
	.global	_fgetc2

$C$DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("fgetc2")
	.dwattr $C$DW$10, DW_AT_low_pc(_fgetc2)
	.dwattr $C$DW$10, DW_AT_high_pc(0x00)
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_fgetc2")
	.dwattr $C$DW$10, DW_AT_external
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$10, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$10, DW_AT_TI_begin_line(0xce)
	.dwattr $C$DW$10, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$10, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "./susan.c",line 207,column 1,is_stmt,address _fgetc2

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
$C$DW$11	.dwtag  DW_TAG_variable, DW_AT_name("ret")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_ret")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_bregx 0x24 0]
	.dwpsn	file "./susan.c",line 208,column 10,is_stmt
        MOV dbl(*(#_fakeFile)), XAR3
        MOV *AR3, AR1 ; |208| 
        MOV AR1, *SP(#0) ; |208| 
	.dwpsn	file "./susan.c",line 209,column 5,is_stmt
        AMAR *AR3+
        MOV XAR3, dbl(*(#_fakeFile))
	.dwpsn	file "./susan.c",line 210,column 5,is_stmt
        MOV AR1, T0
	.dwpsn	file "./susan.c",line 211,column 1,is_stmt
        AADD #1, SP
	.dwcfi	cfa_offset, 1
$C$DW$12	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$12, DW_AT_low_pc(0x00)
	.dwattr $C$DW$12, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$10, DW_AT_TI_end_file("./susan.c")
	.dwattr $C$DW$10, DW_AT_TI_end_line(0xd3)
	.dwattr $C$DW$10, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$10

	.sect	".text"
	.global	_getint

$C$DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("getint")
	.dwattr $C$DW$13, DW_AT_low_pc(_getint)
	.dwattr $C$DW$13, DW_AT_high_pc(0x00)
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_getint")
	.dwattr $C$DW$13, DW_AT_external
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$13, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$13, DW_AT_TI_begin_line(0xd5)
	.dwattr $C$DW$13, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$13, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "./susan.c",line 214,column 1,is_stmt,address _getint

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
$C$DW$14	.dwtag  DW_TAG_variable, DW_AT_name("c")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_c")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$15	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_bregx 0x24 2]
	.dwpsn	file "./susan.c",line 217,column 5,is_stmt
$C$DW$16	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$16, DW_AT_low_pc(0x00)
	.dwattr $C$DW$16, DW_AT_name("_fgetc2")
	.dwattr $C$DW$16, DW_AT_TI_call
        CALL #_fgetc2 ; |217| 
                                        ; call occurs [#_fgetc2] ; |217| 
        MOV T0, AC0
        MOV AC0, dbl(*SP(#0)) ; |217| 
	.dwpsn	file "./susan.c",line 218,column 12,is_stmt
$C$L1:    
$C$DW$L$_getint$2$B:
	.dwpsn	file "./susan.c",line 220,column 9,is_stmt
        MOV #35, AC0 ; |220| 
        MOV dbl(*SP(#0)), AC1 ; |220| 
        CMP AC1 != AC0, TC1 ; |220| 
        BCC $C$L3,TC1 ; |220| 
                                        ; branchcc occurs ; |220| 
$C$DW$L$_getint$2$E:
$C$DW$L$_getint$3$B:
	.dwpsn	file "./susan.c",line 221,column 20,is_stmt

        MOV dbl(*SP(#0)), AC1 ; |221| 
||      MOV #10, AC0 ; |221| 

        CMP AC1 == AC0, TC1 ; |221| 
        BCC $C$L3,TC1 ; |221| 
                                        ; branchcc occurs ; |221| 
$C$DW$L$_getint$3$E:
$C$L2:    
$C$DW$L$_getint$4$B:
	.dwpsn	file "./susan.c",line 222,column 17,is_stmt
$C$DW$17	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$17, DW_AT_low_pc(0x00)
	.dwattr $C$DW$17, DW_AT_name("_fgetc2")
	.dwattr $C$DW$17, DW_AT_TI_call
        CALL #_fgetc2 ; |222| 
                                        ; call occurs [#_fgetc2] ; |222| 
        MOV T0, AC0
        MOV AC0, dbl(*SP(#0)) ; |222| 
	.dwpsn	file "./susan.c",line 221,column 20,is_stmt

        MOV dbl(*SP(#0)), AC1 ; |221| 
||      MOV #10, AC0 ; |221| 

        CMP AC1 != AC0, TC1 ; |221| 
        BCC $C$L2,TC1 ; |221| 
                                        ; branchcc occurs ; |221| 
$C$DW$L$_getint$4$E:
$C$L3:    
$C$DW$L$_getint$5$B:
	.dwpsn	file "./susan.c",line 223,column 9,is_stmt

        MOV dbl(*SP(#0)), AC1 ; |223| 
||      MOV #-1, AC0 ; |223| 

        CMP AC1 != AC0, TC1 ; |223| 
        BCC $C$L9,!TC1 ; |223| 
                                        ; branchcc occurs ; |223| 
$C$DW$L$_getint$5$E:
$C$DW$L$_getint$6$B:
	.dwpsn	file "./susan.c",line 226,column 13,is_stmt
	.dwpsn	file "./susan.c",line 228,column 9,is_stmt
        MOV #48, AC0 ; |228| 
        MOV dbl(*SP(#0)), AC1 ; |228| 
        CMP AC1 < AC0, TC1 ; |228| 
        BCC $C$L4,TC1 ; |228| 
                                        ; branchcc occurs ; |228| 
$C$DW$L$_getint$6$E:
$C$DW$L$_getint$7$B:
        MOV #57, AC0 ; |228| 
        MOV dbl(*SP(#0)), AC1 ; |228| 
        CMP AC1 > AC0, TC1 ; |228| 
        BCC $C$L5,!TC1 ; |228| 
                                        ; branchcc occurs ; |228| 
$C$DW$L$_getint$7$E:
$C$DW$L$_getint$8$B:
	.dwpsn	file "./susan.c",line 229,column 13,is_stmt
$C$DW$L$_getint$8$E:
$C$L4:    
$C$DW$L$_getint$9$B:
	.dwpsn	file "./susan.c",line 230,column 9,is_stmt
$C$DW$18	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$18, DW_AT_low_pc(0x00)
	.dwattr $C$DW$18, DW_AT_name("_fgetc2")
	.dwattr $C$DW$18, DW_AT_TI_call
        CALL #_fgetc2 ; |230| 
                                        ; call occurs [#_fgetc2] ; |230| 
        MOV T0, AC0
        MOV AC0, dbl(*SP(#0)) ; |230| 
	.dwpsn	file "./susan.c",line 218,column 12,is_stmt
        B $C$L1   ; |218| 
                                        ; branch occurs ; |218| 
$C$DW$L$_getint$9$E:
$C$L5:    
	.dwpsn	file "./susan.c",line 234,column 5,is_stmt
        MOV #0, AC0 ; |234| 
        MOV AC0, dbl(*SP(#2)) ; |234| 
	.dwpsn	file "./susan.c",line 235,column 12,is_stmt
$C$L6:    
$C$DW$L$_getint$11$B:
	.dwpsn	file "./susan.c",line 237,column 9,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |237| 
        SFTS AC0, #1, AC1 ; |237| 
        ADD AC0 << #3, AC1 ; |237| 
        ADD dbl(*SP(#0)), AC1, AC0 ; |237| 
        SUB #48, AC0, AC0 ; |237| 
        MOV AC0, dbl(*SP(#2)) ; |237| 
	.dwpsn	file "./susan.c",line 238,column 9,is_stmt
$C$DW$19	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$19, DW_AT_low_pc(0x00)
	.dwattr $C$DW$19, DW_AT_name("_fgetc2")
	.dwattr $C$DW$19, DW_AT_TI_call
        CALL #_fgetc2 ; |238| 
                                        ; call occurs [#_fgetc2] ; |238| 
        MOV T0, AC0
        MOV AC0, dbl(*SP(#0)) ; |238| 
	.dwpsn	file "./susan.c",line 239,column 9,is_stmt

        MOV dbl(*SP(#0)), AC1 ; |239| 
||      MOV #-1, AC0 ; |239| 

        CMP AC1 != AC0, TC1 ; |239| 
        BCC $C$L7,TC1 ; |239| 
                                        ; branchcc occurs ; |239| 
$C$DW$L$_getint$11$E:
	.dwpsn	file "./susan.c",line 240,column 13,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |240| 
        B $C$L9   ; |240| 
                                        ; branch occurs ; |240| 
$C$L7:    
$C$DW$L$_getint$13$B:
	.dwpsn	file "./susan.c",line 241,column 9,is_stmt
        MOV #48, AC0 ; |241| 
        MOV dbl(*SP(#0)), AC1 ; |241| 
        CMP AC1 < AC0, TC1 ; |241| 
        BCC $C$L8,TC1 ; |241| 
                                        ; branchcc occurs ; |241| 
$C$DW$L$_getint$13$E:
$C$DW$L$_getint$14$B:
        MOV #57, AC0 ; |241| 
        MOV dbl(*SP(#0)), AC1 ; |241| 
        CMP AC1 <= AC0, TC1 ; |241| 
        BCC $C$L6,TC1 ; |241| 
                                        ; branchcc occurs ; |241| 
$C$DW$L$_getint$14$E:
        B $C$L8   ; |241| 
                                        ; branch occurs ; |241| 
$C$L8:    
	.dwpsn	file "./susan.c",line 245,column 5,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |245| 
$C$L9:    
	.dwpsn	file "./susan.c",line 246,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$20	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$20, DW_AT_low_pc(0x00)
	.dwattr $C$DW$20, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$21	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$21, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_corners/susan.asm:$C$L6:1:1738866959")
	.dwattr $C$DW$21, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$21, DW_AT_TI_begin_line(0xeb)
	.dwattr $C$DW$21, DW_AT_TI_end_line(0xf3)
$C$DW$22	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$22, DW_AT_low_pc($C$DW$L$_getint$11$B)
	.dwattr $C$DW$22, DW_AT_high_pc($C$DW$L$_getint$11$E)
$C$DW$23	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$23, DW_AT_low_pc($C$DW$L$_getint$13$B)
	.dwattr $C$DW$23, DW_AT_high_pc($C$DW$L$_getint$13$E)
$C$DW$24	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$24, DW_AT_low_pc($C$DW$L$_getint$14$B)
	.dwattr $C$DW$24, DW_AT_high_pc($C$DW$L$_getint$14$E)
	.dwendtag $C$DW$21


$C$DW$25	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$25, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_corners/susan.asm:$C$L1:1:1738866959")
	.dwattr $C$DW$25, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$25, DW_AT_TI_begin_line(0xda)
	.dwattr $C$DW$25, DW_AT_TI_end_line(0xe7)
$C$DW$26	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$26, DW_AT_low_pc($C$DW$L$_getint$2$B)
	.dwattr $C$DW$26, DW_AT_high_pc($C$DW$L$_getint$2$E)
$C$DW$27	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$27, DW_AT_low_pc($C$DW$L$_getint$7$B)
	.dwattr $C$DW$27, DW_AT_high_pc($C$DW$L$_getint$7$E)
$C$DW$28	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$28, DW_AT_low_pc($C$DW$L$_getint$3$B)
	.dwattr $C$DW$28, DW_AT_high_pc($C$DW$L$_getint$3$E)
$C$DW$29	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$29, DW_AT_low_pc($C$DW$L$_getint$5$B)
	.dwattr $C$DW$29, DW_AT_high_pc($C$DW$L$_getint$5$E)
$C$DW$30	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$30, DW_AT_low_pc($C$DW$L$_getint$6$B)
	.dwattr $C$DW$30, DW_AT_high_pc($C$DW$L$_getint$6$E)
$C$DW$31	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$31, DW_AT_low_pc($C$DW$L$_getint$8$B)
	.dwattr $C$DW$31, DW_AT_high_pc($C$DW$L$_getint$8$E)
$C$DW$32	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$32, DW_AT_low_pc($C$DW$L$_getint$9$B)
	.dwattr $C$DW$32, DW_AT_high_pc($C$DW$L$_getint$9$E)

$C$DW$33	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$33, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_corners/susan.asm:$C$L2:2:1738866959")
	.dwattr $C$DW$33, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$33, DW_AT_TI_begin_line(0xdd)
	.dwattr $C$DW$33, DW_AT_TI_end_line(0xde)
$C$DW$34	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$34, DW_AT_low_pc($C$DW$L$_getint$4$B)
	.dwattr $C$DW$34, DW_AT_high_pc($C$DW$L$_getint$4$E)
	.dwendtag $C$DW$33

	.dwendtag $C$DW$25

	.dwattr $C$DW$13, DW_AT_TI_end_file("./susan.c")
	.dwattr $C$DW$13, DW_AT_TI_end_line(0xf6)
	.dwattr $C$DW$13, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$13

	.sect	".text"
	.global	_get_image

$C$DW$35	.dwtag  DW_TAG_subprogram, DW_AT_name("get_image")
	.dwattr $C$DW$35, DW_AT_low_pc(_get_image)
	.dwattr $C$DW$35, DW_AT_high_pc(0x00)
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_get_image")
	.dwattr $C$DW$35, DW_AT_external
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$35, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$35, DW_AT_TI_begin_line(0xf8)
	.dwattr $C$DW$35, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$35, DW_AT_TI_max_frame_size(0x6c)
	.dwpsn	file "./susan.c",line 249,column 1,is_stmt,address _get_image

	.dwfde $C$DW$CIE, _get_image
$C$DW$36	.dwtag  DW_TAG_formal_parameter, DW_AT_name("in")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_reg17]
$C$DW$37	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x_size")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_x_size")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_reg19]
$C$DW$38	.dwtag  DW_TAG_formal_parameter, DW_AT_name("y_size")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_y_size")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_reg21]
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
$C$DW$39	.dwtag  DW_TAG_variable, DW_AT_name("in")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$40	.dwtag  DW_TAG_variable, DW_AT_name("x_size")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_x_size")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$41	.dwtag  DW_TAG_variable, DW_AT_name("y_size")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_y_size")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$42	.dwtag  DW_TAG_variable, DW_AT_name("header")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_header")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$43	.dwtag  DW_TAG_variable, DW_AT_name("temp")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_temp")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_bregx 0x24 106]
        MOV XAR2, dbl(*SP(#4))
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./susan.c",line 253,column 5,is_stmt
$C$DW$44	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$44, DW_AT_low_pc(0x00)
	.dwattr $C$DW$44, DW_AT_name("_fgetc2")
	.dwattr $C$DW$44, DW_AT_TI_call
        CALL #_fgetc2 ; |253| 
                                        ; call occurs [#_fgetc2] ; |253| 
        MOV T0, *SP(#6) ; |253| 
	.dwpsn	file "./susan.c",line 254,column 5,is_stmt
$C$DW$45	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$45, DW_AT_low_pc(0x00)
	.dwattr $C$DW$45, DW_AT_name("_fgetc2")
	.dwattr $C$DW$45, DW_AT_TI_call
        CALL #_fgetc2 ; |254| 
                                        ; call occurs [#_fgetc2] ; |254| 
        MOV T0, *SP(#7) ; |254| 
	.dwpsn	file "./susan.c",line 256,column 5,is_stmt
        CMP *SP(#6) == #80, TC1 ; |256| 
        BCC $C$L10,!TC1 ; |256| 
                                        ; branchcc occurs ; |256| 
        CMP *SP(#7) == #53, TC1 ; |256| 
        BCC $C$L11,TC1 ; |256| 
                                        ; branchcc occurs ; |256| 
$C$L10:    
	.dwpsn	file "./susan.c",line 259,column 9,is_stmt
        MOV #-1, T0
        B $C$L12  ; |259| 
                                        ; branch occurs ; |259| 
$C$L11:    
	.dwpsn	file "./susan.c",line 261,column 5,is_stmt
$C$DW$46	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$46, DW_AT_low_pc(0x00)
	.dwattr $C$DW$46, DW_AT_name("_getint")
	.dwattr $C$DW$46, DW_AT_TI_call
        CALL #_getint ; |261| 
                                        ; call occurs [#_getint] ; |261| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*AR3) ; |261| 
	.dwpsn	file "./susan.c",line 262,column 5,is_stmt
$C$DW$47	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$47, DW_AT_low_pc(0x00)
	.dwattr $C$DW$47, DW_AT_name("_getint")
	.dwattr $C$DW$47, DW_AT_TI_call
        CALL #_getint ; |262| 
                                        ; call occurs [#_getint] ; |262| 
        MOV dbl(*SP(#4)), XAR3
        MOV AC0, dbl(*AR3) ; |262| 
	.dwpsn	file "./susan.c",line 263,column 5,is_stmt
$C$DW$48	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$48, DW_AT_low_pc(0x00)
	.dwattr $C$DW$48, DW_AT_name("_getint")
	.dwattr $C$DW$48, DW_AT_TI_call
        CALL #_getint ; |263| 
                                        ; call occurs [#_getint] ; |263| 
        MOV AC0, *SP(#106) ; |263| 
	.dwpsn	file "./susan.c",line 264,column 5,is_stmt
	.dwpsn	file "./susan.c",line 266,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR2
        MOV dbl(*(#_fakeFile)), XAR3
        MOV XAR3, dbl(*AR2)
	.dwpsn	file "./susan.c",line 267,column 5,is_stmt
        MOV #0, T0
$C$L12:    
	.dwpsn	file "./susan.c",line 268,column 1,is_stmt
        AADD #107, SP
	.dwcfi	cfa_offset, 1
$C$DW$49	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$49, DW_AT_low_pc(0x00)
	.dwattr $C$DW$49, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$35, DW_AT_TI_end_file("./susan.c")
	.dwattr $C$DW$35, DW_AT_TI_end_line(0x10c)
	.dwattr $C$DW$35, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$35

	.sect	".text"
	.global	_int_to_uint16_t

$C$DW$50	.dwtag  DW_TAG_subprogram, DW_AT_name("int_to_uint16_t")
	.dwattr $C$DW$50, DW_AT_low_pc(_int_to_uint16_t)
	.dwattr $C$DW$50, DW_AT_high_pc(0x00)
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_int_to_uint16_t")
	.dwattr $C$DW$50, DW_AT_external
	.dwattr $C$DW$50, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$50, DW_AT_TI_begin_line(0x122)
	.dwattr $C$DW$50, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$50, DW_AT_TI_max_frame_size(0x0e)
	.dwpsn	file "./susan.c",line 291,column 1,is_stmt,address _int_to_uint16_t

	.dwfde $C$DW$CIE, _int_to_uint16_t
$C$DW$51	.dwtag  DW_TAG_formal_parameter, DW_AT_name("r")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_r")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_reg17]
$C$DW$52	.dwtag  DW_TAG_formal_parameter, DW_AT_name("in")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_reg19]
$C$DW$53	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_reg0]
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
$C$DW$54	.dwtag  DW_TAG_variable, DW_AT_name("r")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_r")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$55	.dwtag  DW_TAG_variable, DW_AT_name("in")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$55, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$56	.dwtag  DW_TAG_variable, DW_AT_name("size")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$56, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$57	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$58	.dwtag  DW_TAG_variable, DW_AT_name("max_r")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_max_r")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$59	.dwtag  DW_TAG_variable, DW_AT_name("min_r")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_min_r")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_bregx 0x24 10]
        MOV AC0, dbl(*SP(#4)) ; |291| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./susan.c",line 293,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3), AC0 ; |293| 
        MOV AC0, dbl(*SP(#8)) ; |293| 
	.dwpsn	file "./susan.c",line 294,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3), AC0 ; |294| 
        MOV AC0, dbl(*SP(#10)) ; |294| 
	.dwpsn	file "./susan.c",line 296,column 10,is_stmt
        MOV #0, AC0 ; |296| 
        MOV AC0, dbl(*SP(#6)) ; |296| 
	.dwpsn	file "./susan.c",line 296,column 17,is_stmt
        MOV dbl(*SP(#6)), AC1 ; |296| 
        MOV dbl(*SP(#4)), AC0 ; |296| 
        CMP AC1 >= AC0, TC1 ; |296| 
        BCC $C$L16,TC1 ; |296| 
                                        ; branchcc occurs ; |296| 
$C$L13:    
$C$DW$L$_int_to_uint16_t$2$B:
	.dwpsn	file "./susan.c",line 298,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#7), T0 ; |298| 
        SFTL T0, #1 ; |298| 
        MOV dbl(*SP(#8)), AC0 ; |298| 
        MOV dbl(*AR3(T0)), AC1 ; |298| 
        CMP AC1 <= AC0, TC1 ; |298| 
        BCC $C$L14,TC1 ; |298| 
                                        ; branchcc occurs ; |298| 
$C$DW$L$_int_to_uint16_t$2$E:
$C$DW$L$_int_to_uint16_t$3$B:
	.dwpsn	file "./susan.c",line 299,column 13,is_stmt
        MOV *SP(#7), T0 ; |299| 
        SFTL T0, #1 ; |299| 
        MOV dbl(*AR3(T0)), AC0 ; |299| 
        MOV AC0, dbl(*SP(#8)) ; |299| 
$C$DW$L$_int_to_uint16_t$3$E:
$C$L14:    
$C$DW$L$_int_to_uint16_t$4$B:
	.dwpsn	file "./susan.c",line 300,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#7), T0 ; |300| 
        SFTL T0, #1 ; |300| 
        MOV dbl(*SP(#10)), AC0 ; |300| 
        MOV dbl(*AR3(T0)), AC1 ; |300| 
        CMP AC1 >= AC0, TC1 ; |300| 
        BCC $C$L15,TC1 ; |300| 
                                        ; branchcc occurs ; |300| 
$C$DW$L$_int_to_uint16_t$4$E:
$C$DW$L$_int_to_uint16_t$5$B:
	.dwpsn	file "./susan.c",line 301,column 13,is_stmt
        MOV *SP(#7), T0 ; |301| 
        SFTL T0, #1 ; |301| 
        MOV dbl(*AR3(T0)), AC0 ; |301| 
        MOV AC0, dbl(*SP(#10)) ; |301| 
$C$DW$L$_int_to_uint16_t$5$E:
$C$L15:    
$C$DW$L$_int_to_uint16_t$6$B:
	.dwpsn	file "./susan.c",line 296,column 27,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |296| 
        ADD #1, AC0 ; |296| 
        MOV AC0, dbl(*SP(#6)) ; |296| 
	.dwpsn	file "./susan.c",line 296,column 17,is_stmt
        MOV dbl(*SP(#6)), AC1 ; |296| 
        MOV dbl(*SP(#4)), AC0 ; |296| 
        CMP AC1 < AC0, TC1 ; |296| 
        BCC $C$L13,TC1 ; |296| 
                                        ; branchcc occurs ; |296| 
$C$DW$L$_int_to_uint16_t$6$E:
$C$L16:    
	.dwpsn	file "./susan.c",line 304,column 5,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |304| 
        SUB AC0, dbl(*SP(#8)), AC0 ; |304| 
        MOV AC0, dbl(*SP(#8)) ; |304| 
	.dwpsn	file "./susan.c",line 306,column 10,is_stmt
        MOV #0, AC0 ; |306| 
        MOV AC0, dbl(*SP(#6)) ; |306| 
	.dwpsn	file "./susan.c",line 306,column 17,is_stmt
        MOV dbl(*SP(#6)), AC1 ; |306| 
        MOV dbl(*SP(#4)), AC0 ; |306| 
        CMP AC1 >= AC0, TC1 ; |306| 
        BCC $C$L18,TC1 ; |306| 
                                        ; branchcc occurs ; |306| 
$C$L17:    
$C$DW$L$_int_to_uint16_t$8$B:
	.dwpsn	file "./susan.c",line 307,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#7), T0 ; |307| 
        SFTL T0, #1 ; |307| 
        MOV dbl(*SP(#10)), AC0 ; |307| 
        SUB AC0, dbl(*AR3(T0)), AC1 ; |307| 
        SFTS AC1, #8, AC0 ; |307| 

        MOV dbl(*SP(#8)), AC1 ; |307| 
||      SUB AC1, AC0 ; |307| 

$C$DW$60	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$60, DW_AT_low_pc(0x00)
	.dwattr $C$DW$60, DW_AT_name("__divli")
	.dwattr $C$DW$60, DW_AT_TI_call
        CALL #__divli ; |307| 
                                        ; call occurs [#__divli] ; |307| 
        MOV *SP(#7), T0 ; |307| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, *AR3(T0) ; |307| 
	.dwpsn	file "./susan.c",line 306,column 27,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |306| 
        ADD #1, AC0 ; |306| 
        MOV AC0, dbl(*SP(#6)) ; |306| 
	.dwpsn	file "./susan.c",line 306,column 17,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |306| 
        MOV dbl(*SP(#6)), AC1 ; |306| 
        CMP AC1 < AC0, TC1 ; |306| 
        BCC $C$L17,TC1 ; |306| 
                                        ; branchcc occurs ; |306| 
$C$DW$L$_int_to_uint16_t$8$E:
	.dwpsn	file "./susan.c",line 308,column 1,is_stmt
$C$L18:    
        AADD #13, SP
	.dwcfi	cfa_offset, 1
$C$DW$61	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$61, DW_AT_low_pc(0x00)
	.dwattr $C$DW$61, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$62	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$62, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_corners/susan.asm:$C$L17:1:1738866959")
	.dwattr $C$DW$62, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$62, DW_AT_TI_begin_line(0x132)
	.dwattr $C$DW$62, DW_AT_TI_end_line(0x133)
$C$DW$63	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$63, DW_AT_low_pc($C$DW$L$_int_to_uint16_t$8$B)
	.dwattr $C$DW$63, DW_AT_high_pc($C$DW$L$_int_to_uint16_t$8$E)
	.dwendtag $C$DW$62


$C$DW$64	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$64, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_corners/susan.asm:$C$L13:1:1738866959")
	.dwattr $C$DW$64, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$64, DW_AT_TI_begin_line(0x128)
	.dwattr $C$DW$64, DW_AT_TI_end_line(0x12e)
$C$DW$65	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$65, DW_AT_low_pc($C$DW$L$_int_to_uint16_t$2$B)
	.dwattr $C$DW$65, DW_AT_high_pc($C$DW$L$_int_to_uint16_t$2$E)
$C$DW$66	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$66, DW_AT_low_pc($C$DW$L$_int_to_uint16_t$3$B)
	.dwattr $C$DW$66, DW_AT_high_pc($C$DW$L$_int_to_uint16_t$3$E)
$C$DW$67	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$67, DW_AT_low_pc($C$DW$L$_int_to_uint16_t$4$B)
	.dwattr $C$DW$67, DW_AT_high_pc($C$DW$L$_int_to_uint16_t$4$E)
$C$DW$68	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$68, DW_AT_low_pc($C$DW$L$_int_to_uint16_t$5$B)
	.dwattr $C$DW$68, DW_AT_high_pc($C$DW$L$_int_to_uint16_t$5$E)
$C$DW$69	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$69, DW_AT_low_pc($C$DW$L$_int_to_uint16_t$6$B)
	.dwattr $C$DW$69, DW_AT_high_pc($C$DW$L$_int_to_uint16_t$6$E)
	.dwendtag $C$DW$64

	.dwattr $C$DW$50, DW_AT_TI_end_file("./susan.c")
	.dwattr $C$DW$50, DW_AT_TI_end_line(0x134)
	.dwattr $C$DW$50, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$50

	.sect	".text"
	.global	_setup_brightness_lut

$C$DW$70	.dwtag  DW_TAG_subprogram, DW_AT_name("setup_brightness_lut")
	.dwattr $C$DW$70, DW_AT_low_pc(_setup_brightness_lut)
	.dwattr $C$DW$70, DW_AT_high_pc(0x00)
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_setup_brightness_lut")
	.dwattr $C$DW$70, DW_AT_external
	.dwattr $C$DW$70, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$70, DW_AT_TI_begin_line(0x136)
	.dwattr $C$DW$70, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$70, DW_AT_TI_max_frame_size(0x0e)
	.dwpsn	file "./susan.c",line 311,column 1,is_stmt,address _setup_brightness_lut

	.dwfde $C$DW$CIE, _setup_brightness_lut
$C$DW$71	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bp")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_bp")
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$71, DW_AT_location[DW_OP_reg17]
$C$DW$72	.dwtag  DW_TAG_formal_parameter, DW_AT_name("thresh")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_thresh")
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$72, DW_AT_location[DW_OP_reg0]
$C$DW$73	.dwtag  DW_TAG_formal_parameter, DW_AT_name("form")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_form")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_reg3]
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
$C$DW$74	.dwtag  DW_TAG_variable, DW_AT_name("bp")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_bp")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$75	.dwtag  DW_TAG_variable, DW_AT_name("thresh")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_thresh")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$75, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$76	.dwtag  DW_TAG_variable, DW_AT_name("form")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_form")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$76, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$77	.dwtag  DW_TAG_variable, DW_AT_name("k")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_k")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$78	.dwtag  DW_TAG_variable, DW_AT_name("temp")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_temp")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_bregx 0x24 8]
        MOV AC1, dbl(*SP(#4)) ; |311| 
        MOV AC0, dbl(*SP(#2)) ; |311| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./susan.c",line 316,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR2
        AMOV #_setbrightness, XAR3 ; |316| 
        MOV XAR3, dbl(*AR2)
	.dwpsn	file "./susan.c",line 317,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3), XAR3
        MOV dbl(*SP(#0)), XAR2
        AMAR *+AR3(#258) ; |317| 
        MOV XAR3, dbl(*AR2)
	.dwpsn	file "./susan.c",line 319,column 10,is_stmt
        MOV #-256, AC0 ; |319| 
        MOV AC0, dbl(*SP(#6)) ; |319| 
	.dwpsn	file "./susan.c",line 319,column 20,is_stmt
        MOV #257, AC0 ; |319| 
        MOV dbl(*SP(#6)), AC1 ; |319| 
        CMP AC1 >= AC0, TC1 ; |319| 
        BCC $C$L21,TC1 ; |319| 
                                        ; branchcc occurs ; |319| 
$C$L19:    
$C$DW$L$_setup_brightness_lut$2$B:
	.dwpsn	file "./susan.c",line 321,column 9,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |321| 
$C$DW$79	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$79, DW_AT_low_pc(0x00)
	.dwattr $C$DW$79, DW_AT_name("__fltlid")
	.dwattr $C$DW$79, DW_AT_TI_call
        CALL #__fltlid ; |321| 
                                        ; call occurs [#__fltlid] ; |321| 
        MOV AC0, dbl(*SP(#10)) ; |321| 
        MOV dbl(*SP(#2)), AC0 ; |321| 
$C$DW$80	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$80, DW_AT_low_pc(0x00)
	.dwattr $C$DW$80, DW_AT_name("__fltlid")
	.dwattr $C$DW$80, DW_AT_TI_call
        CALL #__fltlid ; |321| 
                                        ; call occurs [#__fltlid] ; |321| 

        MOV dbl(*SP(#10)), AC0 ; |321| 
||      OR #0, AC0, AC1

$C$DW$81	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$81, DW_AT_low_pc(0x00)
	.dwattr $C$DW$81, DW_AT_name("__divd")
	.dwattr $C$DW$81, DW_AT_TI_call
        CALL #__divd ; |321| 
                                        ; call occurs [#__divd] ; |321| 
        MOV AC0, dbl(*SP(#8)) ; |321| 
	.dwpsn	file "./susan.c",line 322,column 9,is_stmt
        MOV dbl(*SP(#8)), AC1 ; |322| 
$C$DW$82	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$82, DW_AT_low_pc(0x00)
	.dwattr $C$DW$82, DW_AT_name("__mpyd")
	.dwattr $C$DW$82, DW_AT_TI_call
        CALL #__mpyd ; |322| 
                                        ; call occurs [#__mpyd] ; |322| 
        MOV AC0, dbl(*SP(#8)) ; |322| 
	.dwpsn	file "./susan.c",line 323,column 9,is_stmt

        MOV dbl(*SP(#4)), AC1 ; |323| 
||      MOV #6, AC0 ; |323| 

        CMP AC1 != AC0, TC1 ; |323| 
        BCC $C$L20,TC1 ; |323| 
                                        ; branchcc occurs ; |323| 
$C$DW$L$_setup_brightness_lut$2$E:
$C$DW$L$_setup_brightness_lut$3$B:
	.dwpsn	file "./susan.c",line 324,column 13,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |324| 
        MOV dbl(*SP(#8)), AC1 ; |324| 
$C$DW$83	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$83, DW_AT_low_pc(0x00)
	.dwattr $C$DW$83, DW_AT_name("__mpyd")
	.dwattr $C$DW$83, DW_AT_TI_call
        CALL #__mpyd ; |324| 
                                        ; call occurs [#__mpyd] ; |324| 
        MOV dbl(*SP(#8)), AC1 ; |324| 
$C$DW$84	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$84, DW_AT_low_pc(0x00)
	.dwattr $C$DW$84, DW_AT_name("__mpyd")
	.dwattr $C$DW$84, DW_AT_TI_call
        CALL #__mpyd ; |324| 
                                        ; call occurs [#__mpyd] ; |324| 
        MOV AC0, dbl(*SP(#8)) ; |324| 
$C$DW$L$_setup_brightness_lut$3$E:
$C$L20:    
$C$DW$L$_setup_brightness_lut$4$B:
	.dwpsn	file "./susan.c",line 325,column 9,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |325| 
$C$DW$85	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$85, DW_AT_low_pc(0x00)
	.dwattr $C$DW$85, DW_AT_name("__negd")
	.dwattr $C$DW$85, DW_AT_TI_call
        CALL #__negd ; |325| 
                                        ; call occurs [#__negd] ; |325| 
$C$DW$86	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$86, DW_AT_low_pc(0x00)
	.dwattr $C$DW$86, DW_AT_name("_exp")
	.dwattr $C$DW$86, DW_AT_TI_call
        CALL #_exp ; |325| 
                                        ; call occurs [#_exp] ; |325| 
        OR #0, AC0, AC1
        MOV dbl(*($C$FL1)), AC0 ; |325| 
$C$DW$87	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$87, DW_AT_low_pc(0x00)
	.dwattr $C$DW$87, DW_AT_name("__mpyd")
	.dwattr $C$DW$87, DW_AT_TI_call
        CALL #__mpyd ; |325| 
                                        ; call occurs [#__mpyd] ; |325| 
        MOV AC0, dbl(*SP(#8)) ; |325| 
	.dwpsn	file "./susan.c",line 326,column 9,is_stmt
$C$DW$88	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$88, DW_AT_low_pc(0x00)
	.dwattr $C$DW$88, DW_AT_name("__fixdu")
	.dwattr $C$DW$88, DW_AT_TI_call
        CALL #__fixdu ; |326| 
                                        ; call occurs [#__fixdu] ; |326| 
        MOV dbl(*SP(#0)), XAR3

        MOV *SP(#7), T0 ; |326| 
||      MOV T0, AR1 ; |326| 

        MOV dbl(*AR3), XAR3
        MOV AR1, *AR3(T0) ; |326| 
	.dwpsn	file "./susan.c",line 319,column 29,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |319| 
        ADD #1, AC0 ; |319| 
        MOV AC0, dbl(*SP(#6)) ; |319| 
	.dwpsn	file "./susan.c",line 319,column 20,is_stmt
        MOV #257, AC0 ; |319| 
        MOV dbl(*SP(#6)), AC1 ; |319| 
        CMP AC1 < AC0, TC1 ; |319| 
        BCC $C$L19,TC1 ; |319| 
                                        ; branchcc occurs ; |319| 
$C$DW$L$_setup_brightness_lut$4$E:
	.dwpsn	file "./susan.c",line 328,column 1,is_stmt
$C$L21:    
        AADD #13, SP
	.dwcfi	cfa_offset, 1
$C$DW$89	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$89, DW_AT_low_pc(0x00)
	.dwattr $C$DW$89, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$90	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$90, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_corners/susan.asm:$C$L19:1:1738866959")
	.dwattr $C$DW$90, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$90, DW_AT_TI_begin_line(0x13f)
	.dwattr $C$DW$90, DW_AT_TI_end_line(0x147)
$C$DW$91	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$91, DW_AT_low_pc($C$DW$L$_setup_brightness_lut$2$B)
	.dwattr $C$DW$91, DW_AT_high_pc($C$DW$L$_setup_brightness_lut$2$E)
$C$DW$92	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$92, DW_AT_low_pc($C$DW$L$_setup_brightness_lut$3$B)
	.dwattr $C$DW$92, DW_AT_high_pc($C$DW$L$_setup_brightness_lut$3$E)
$C$DW$93	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$93, DW_AT_low_pc($C$DW$L$_setup_brightness_lut$4$B)
	.dwattr $C$DW$93, DW_AT_high_pc($C$DW$L$_setup_brightness_lut$4$E)
	.dwendtag $C$DW$90

	.dwattr $C$DW$70, DW_AT_TI_end_file("./susan.c")
	.dwattr $C$DW$70, DW_AT_TI_end_line(0x148)
	.dwattr $C$DW$70, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$70

	.sect	".text"
	.global	_corner_draw

$C$DW$94	.dwtag  DW_TAG_subprogram, DW_AT_name("corner_draw")
	.dwattr $C$DW$94, DW_AT_low_pc(_corner_draw)
	.dwattr $C$DW$94, DW_AT_high_pc(0x00)
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("_corner_draw")
	.dwattr $C$DW$94, DW_AT_external
	.dwattr $C$DW$94, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$94, DW_AT_TI_begin_line(0x14a)
	.dwattr $C$DW$94, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$94, DW_AT_TI_max_frame_size(0x0e)
	.dwpsn	file "./susan.c",line 331,column 1,is_stmt,address _corner_draw

	.dwfde $C$DW$CIE, _corner_draw
$C$DW$95	.dwtag  DW_TAG_formal_parameter, DW_AT_name("in")
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$95, DW_AT_location[DW_OP_reg17]
$C$DW$96	.dwtag  DW_TAG_formal_parameter, DW_AT_name("corner_list")
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("_corner_list")
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$96, DW_AT_location[DW_OP_reg19]
$C$DW$97	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x_size")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("_x_size")
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$97, DW_AT_location[DW_OP_reg0]
$C$DW$98	.dwtag  DW_TAG_formal_parameter, DW_AT_name("drawing_mode")
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("_drawing_mode")
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$98, DW_AT_location[DW_OP_reg3]
;*******************************************************************************
;* FUNCTION NAME: corner_draw                                                  *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,   *
;*                        XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 14 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (12 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_corner_draw:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-13, SP
	.dwcfi	cfa_offset, 14
$C$DW$99	.dwtag  DW_TAG_variable, DW_AT_name("in")
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$99, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$100	.dwtag  DW_TAG_variable, DW_AT_name("corner_list")
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("_corner_list")
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$100, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$101	.dwtag  DW_TAG_variable, DW_AT_name("x_size")
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_x_size")
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$101, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$102	.dwtag  DW_TAG_variable, DW_AT_name("drawing_mode")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("_drawing_mode")
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$102, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$103	.dwtag  DW_TAG_variable, DW_AT_name("p")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("_p")
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$103, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$104	.dwtag  DW_TAG_variable, DW_AT_name("n")
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_n")
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$104, DW_AT_location[DW_OP_bregx 0x24 10]
        MOV AC1, dbl(*SP(#6)) ; |331| 
        MOV AC0, dbl(*SP(#4)) ; |331| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./susan.c",line 333,column 13,is_stmt
        MOV #0, AC0 ; |333| 
        MOV AC0, dbl(*SP(#10)) ; |333| 
	.dwpsn	file "./susan.c",line 335,column 12,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MPYMK *SP(#11), #6, AC0 ; |335| 
        MOV AC0, AR1 ; |335| 
        AADD AR1, AR3 ; |335| 
        CMP *AR3(short(#2)) == #7, TC1 ; |335| 
        BCC $C$L25,TC1 ; |335| 
                                        ; branchcc occurs ; |335| 
$C$L22:    
$C$DW$L$_corner_draw$2$B:
	.dwpsn	file "./susan.c",line 337,column 9,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |337| 
        BCC $C$L23,AC0 != #0 ; |337| 
                                        ; branchcc occurs ; |337| 
$C$DW$L$_corner_draw$2$E:
$C$DW$L$_corner_draw$3$B:
	.dwpsn	file "./susan.c",line 339,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MPYMK *SP(#11), #6, AC0 ; |339| 
        MOV AC0, AR1 ; |339| 
        AADD AR1, AR3 ; |339| 
        MOV *AR3(short(#1)), AR1 ; |339| 

        SUB #1, AR1 ; |339| 
||      MOV dbl(*SP(#4)), AC1 ; |339| 

$C$DW$105	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$105, DW_AT_low_pc(0x00)
	.dwattr $C$DW$105, DW_AT_name("__mpyli")
	.dwattr $C$DW$105, DW_AT_TI_call

        CALL #__mpyli ; |339| 
||      MOV AR1, AC0

                                        ; call occurs [#__mpyli] ; |339| 
        MOV AC0, AR1 ; |339| 
        MOV dbl(*SP(#2)), XAR2
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#11), #6, AC0 ; |339| 
        MOV AC0, T0 ; |339| 

        MOV *AR2(T0), AR1 ; |339| 
||      AADD AR1, AR3 ; |339| 

        AADD AR1, AR3 ; |339| 
        AMAR *AR3-
        MOV XAR3, dbl(*SP(#8))
	.dwpsn	file "./susan.c",line 340,column 13,is_stmt
        MOV dbl(*SP(#8)), XAR2
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#8))
        MOV #255, *AR2 ; |340| 
	.dwpsn	file "./susan.c",line 341,column 13,is_stmt
        MOV dbl(*SP(#8)), XAR2
        AMAR *AR2, XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#8))
        MOV #255, *AR2 ; |341| 
	.dwpsn	file "./susan.c",line 342,column 13,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV #255, *AR3 ; |342| 
	.dwpsn	file "./susan.c",line 343,column 13,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV dbl(*SP(#4)), AC0 ; |343| 
        SUB #2, AC0 ; |343| 
        MOV AC0, AR1 ; |343| 

        MOV XAR3, dbl(*SP(#8))
||      AADD AR1, AR3 ; |343| 

	.dwpsn	file "./susan.c",line 344,column 13,is_stmt
        MOV dbl(*SP(#8)), XAR2
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#8))
        MOV #255, *AR2 ; |344| 
	.dwpsn	file "./susan.c",line 345,column 13,is_stmt
        MOV dbl(*SP(#8)), XAR2
        AMAR *AR2, XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#8))
        MOV #0, *AR2 ; |345| 
	.dwpsn	file "./susan.c",line 346,column 13,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV #255, *AR3 ; |346| 
	.dwpsn	file "./susan.c",line 347,column 13,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV dbl(*SP(#4)), AC0 ; |347| 
        SUB #2, AC0 ; |347| 
        MOV AC0, AR1 ; |347| 

        MOV XAR3, dbl(*SP(#8))
||      AADD AR1, AR3 ; |347| 

	.dwpsn	file "./susan.c",line 348,column 13,is_stmt
        MOV dbl(*SP(#8)), XAR2
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#8))
        MOV #255, *AR2 ; |348| 
	.dwpsn	file "./susan.c",line 349,column 13,is_stmt
        MOV dbl(*SP(#8)), XAR2
        AMAR *AR2, XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#8))
        MOV #255, *AR2 ; |349| 
	.dwpsn	file "./susan.c",line 350,column 13,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV #255, *AR3 ; |350| 
	.dwpsn	file "./susan.c",line 351,column 13,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |351| 
        ADD #1, AC0 ; |351| 
        MOV AC0, dbl(*SP(#10)) ; |351| 
	.dwpsn	file "./susan.c",line 352,column 9,is_stmt
        B $C$L24  ; |352| 
                                        ; branch occurs ; |352| 
$C$DW$L$_corner_draw$3$E:
$C$L23:    
$C$DW$L$_corner_draw$4$B:
	.dwpsn	file "./susan.c",line 355,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MPYMK *SP(#11), #6, AC0 ; |355| 
        MOV AC0, AR1 ; |355| 

        AADD AR1, AR3 ; |355| 
||      MOV dbl(*SP(#4)), AC1 ; |355| 

        MOV *AR3(short(#1)), AC0 ; |355| 
$C$DW$106	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$106, DW_AT_low_pc(0x00)
	.dwattr $C$DW$106, DW_AT_name("__mpyli")
	.dwattr $C$DW$106, DW_AT_TI_call
        CALL #__mpyli ; |355| 
                                        ; call occurs [#__mpyli] ; |355| 
        MOV AC0, AR1 ; |355| 
        MOV dbl(*SP(#2)), XAR2
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#11), #6, AC0 ; |355| 
        MOV AC0, T0 ; |355| 

        MOV *AR2(T0), AR1 ; |355| 
||      AADD AR1, AR3 ; |355| 

        MOV XAR3, dbl(*SP(#8))
||      AADD AR1, AR3 ; |355| 

	.dwpsn	file "./susan.c",line 356,column 13,is_stmt
        MOV #0, *AR3 ; |356| 
	.dwpsn	file "./susan.c",line 357,column 13,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |357| 
        ADD #1, AC0 ; |357| 
        MOV AC0, dbl(*SP(#10)) ; |357| 
$C$DW$L$_corner_draw$4$E:
$C$L24:    
$C$DW$L$_corner_draw$5$B:
	.dwpsn	file "./susan.c",line 335,column 12,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MPYMK *SP(#11), #6, AC0 ; |335| 
        MOV AC0, AR1 ; |335| 
        AADD AR1, AR3 ; |335| 
        CMP *AR3(short(#2)) == #7, TC1 ; |335| 
        BCC $C$L22,!TC1 ; |335| 
                                        ; branchcc occurs ; |335| 
$C$DW$L$_corner_draw$5$E:
	.dwpsn	file "./susan.c",line 360,column 1,is_stmt
$C$L25:    
        AADD #13, SP
	.dwcfi	cfa_offset, 1
$C$DW$107	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$107, DW_AT_low_pc(0x00)
	.dwattr $C$DW$107, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$108	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$108, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_corners/susan.asm:$C$L22:1:1738866959")
	.dwattr $C$DW$108, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$108, DW_AT_TI_begin_line(0x14f)
	.dwattr $C$DW$108, DW_AT_TI_end_line(0x167)
$C$DW$109	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$109, DW_AT_low_pc($C$DW$L$_corner_draw$2$B)
	.dwattr $C$DW$109, DW_AT_high_pc($C$DW$L$_corner_draw$2$E)
$C$DW$110	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$110, DW_AT_low_pc($C$DW$L$_corner_draw$3$B)
	.dwattr $C$DW$110, DW_AT_high_pc($C$DW$L$_corner_draw$3$E)
$C$DW$111	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$111, DW_AT_low_pc($C$DW$L$_corner_draw$4$B)
	.dwattr $C$DW$111, DW_AT_high_pc($C$DW$L$_corner_draw$4$E)
$C$DW$112	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$112, DW_AT_low_pc($C$DW$L$_corner_draw$5$B)
	.dwattr $C$DW$112, DW_AT_high_pc($C$DW$L$_corner_draw$5$E)
	.dwendtag $C$DW$108

	.dwattr $C$DW$94, DW_AT_TI_end_file("./susan.c")
	.dwattr $C$DW$94, DW_AT_TI_end_line(0x168)
	.dwattr $C$DW$94, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$94

	.sect	".text"
	.global	_susan_corners_quick

$C$DW$113	.dwtag  DW_TAG_subprogram, DW_AT_name("susan_corners_quick")
	.dwattr $C$DW$113, DW_AT_low_pc(_susan_corners_quick)
	.dwattr $C$DW$113, DW_AT_high_pc(0x00)
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_susan_corners_quick")
	.dwattr $C$DW$113, DW_AT_external
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$113, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$113, DW_AT_TI_begin_line(0x16a)
	.dwattr $C$DW$113, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$113, DW_AT_TI_max_frame_size(0x1e)
	.dwpsn	file "./susan.c",line 363,column 1,is_stmt,address _susan_corners_quick

	.dwfde $C$DW$CIE, _susan_corners_quick
$C$DW$114	.dwtag  DW_TAG_formal_parameter, DW_AT_name("in")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$114, DW_AT_location[DW_OP_reg17]
$C$DW$115	.dwtag  DW_TAG_formal_parameter, DW_AT_name("r")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_r")
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$115, DW_AT_location[DW_OP_reg19]
$C$DW$116	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bp")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("_bp")
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$116, DW_AT_location[DW_OP_reg21]
$C$DW$117	.dwtag  DW_TAG_formal_parameter, DW_AT_name("max_no")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_max_no")
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$117, DW_AT_location[DW_OP_reg0]
$C$DW$118	.dwtag  DW_TAG_formal_parameter, DW_AT_name("corner_list")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_corner_list")
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$118, DW_AT_location[DW_OP_reg23]
$C$DW$119	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x_size")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_x_size")
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$119, DW_AT_location[DW_OP_reg3]
$C$DW$120	.dwtag  DW_TAG_formal_parameter, DW_AT_name("y_size")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_y_size")
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$120, DW_AT_location[DW_OP_reg6]
;*******************************************************************************
;* FUNCTION NAME: susan_corners_quick                                          *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,AC2,AC2,AC3,AC3,T0,T1,AR0,XAR0,AR1,  *
;*                        XAR1,AR2,XAR2,AR3,XAR3,AR4,SP,CARRY,TC1,M40,SATA,    *
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 30 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (28 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_susan_corners_quick:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-29, SP
	.dwcfi	cfa_offset, 30
$C$DW$121	.dwtag  DW_TAG_variable, DW_AT_name("in")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$121, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$122	.dwtag  DW_TAG_variable, DW_AT_name("r")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_r")
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$122, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$123	.dwtag  DW_TAG_variable, DW_AT_name("bp")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_bp")
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$123, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$124	.dwtag  DW_TAG_variable, DW_AT_name("max_no")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_max_no")
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$124, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$125	.dwtag  DW_TAG_variable, DW_AT_name("corner_list")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_corner_list")
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$125, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$126	.dwtag  DW_TAG_variable, DW_AT_name("x_size")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_x_size")
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$126, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$127	.dwtag  DW_TAG_variable, DW_AT_name("y_size")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_y_size")
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$127, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$128	.dwtag  DW_TAG_variable, DW_AT_name("n")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_n")
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$128, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$129	.dwtag  DW_TAG_variable, DW_AT_name("x")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_x")
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$129, DW_AT_location[DW_OP_bregx 0x24 16]
$C$DW$130	.dwtag  DW_TAG_variable, DW_AT_name("y")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("_y")
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$130, DW_AT_location[DW_OP_bregx 0x24 18]
$C$DW$131	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$131, DW_AT_location[DW_OP_bregx 0x24 20]
$C$DW$132	.dwtag  DW_TAG_variable, DW_AT_name("j")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$132, DW_AT_location[DW_OP_bregx 0x24 22]
$C$DW$133	.dwtag  DW_TAG_variable, DW_AT_name("p")
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("_p")
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$133, DW_AT_location[DW_OP_bregx 0x24 24]
$C$DW$134	.dwtag  DW_TAG_variable, DW_AT_name("cp")
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("_cp")
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$134, DW_AT_location[DW_OP_bregx 0x24 26]
        MOV AC2, dbl(*SP(#12)) ; |363| 
        MOV AC1, dbl(*SP(#10)) ; |363| 
        MOV XAR3, dbl(*SP(#8))
        MOV AC0, dbl(*SP(#6)) ; |363| 
        MOV XAR2, dbl(*SP(#4))
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./susan.c",line 367,column 5,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |367| 
        MOV dbl(*SP(#12)), AC1 ; |367| 
$C$DW$135	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$135, DW_AT_low_pc(0x00)
	.dwattr $C$DW$135, DW_AT_name("__mpyli")
	.dwattr $C$DW$135, DW_AT_TI_call
        CALL #__mpyli ; |367| 
                                        ; call occurs [#__mpyli] ; |367| 
        MOV dbl(*SP(#2)), XAR0

        SFTS AC0, #1, AC0 ; |367| 
||      MOV #0, T0

$C$DW$136	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$136, DW_AT_low_pc(0x00)
	.dwattr $C$DW$136, DW_AT_name("_memset")
	.dwattr $C$DW$136, DW_AT_TI_call

        CALL #_memset ; |367| 
||      MOV AC0, T1 ; |367| 

                                        ; call occurs [#_memset] ; |367| 
	.dwpsn	file "./susan.c",line 369,column 10,is_stmt
        MOV #7, AC0 ; |369| 
        MOV AC0, dbl(*SP(#20)) ; |369| 
	.dwpsn	file "./susan.c",line 369,column 17,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |369| 

        SUB #7, AC0 ; |369| 
||      MOV dbl(*SP(#20)), AC1 ; |369| 

        CMP AC1 >= AC0, TC1 ; |369| 
        BCC $C$L30,TC1 ; |369| 
                                        ; branchcc occurs ; |369| 
$C$L26:    
$C$DW$L$_susan_corners_quick$2$B:
	.dwpsn	file "./susan.c",line 370,column 14,is_stmt
        MOV #7, AC0 ; |370| 
        MOV AC0, dbl(*SP(#22)) ; |370| 
	.dwpsn	file "./susan.c",line 370,column 21,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |370| 

        SUB #7, AC0 ; |370| 
||      MOV dbl(*SP(#22)), AC1 ; |370| 

        CMP AC1 >= AC0, TC1 ; |370| 
        BCC $C$L29,TC1 ; |370| 
                                        ; branchcc occurs ; |370| 
$C$DW$L$_susan_corners_quick$2$E:
$C$L27:    
$C$DW$L$_susan_corners_quick$3$B:
	.dwpsn	file "./susan.c",line 372,column 13,is_stmt
        MOV #100, AC0 ; |372| 
        MOV AC0, dbl(*SP(#14)) ; |372| 
	.dwpsn	file "./susan.c",line 373,column 13,is_stmt

        MOV #3, AC0 ; |373| 
||      MOV dbl(*SP(#10)), AC1 ; |373| 

        SUB AC0, dbl(*SP(#20)), AC0 ; |373| 
$C$DW$137	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$137, DW_AT_low_pc(0x00)
	.dwattr $C$DW$137, DW_AT_name("__mpyli")
	.dwattr $C$DW$137, DW_AT_TI_call
        CALL #__mpyli ; |373| 
                                        ; call occurs [#__mpyli] ; |373| 
        MOV AC0, AR1 ; |373| 
        MOV dbl(*SP(#0)), XAR3

        MOV *SP(#23), AR1 ; |373| 
||      AADD AR1, AR3 ; |373| 

        AADD AR1, AR3 ; |373| 
        AMAR *AR3-
        MOV XAR3, dbl(*SP(#24))
	.dwpsn	file "./susan.c",line 374,column 13,is_stmt
        MOV dbl(*SP(#20)), AC0 ; |374| 
        MOV dbl(*SP(#10)), AC1 ; |374| 
$C$DW$138	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$138, DW_AT_low_pc(0x00)
	.dwattr $C$DW$138, DW_AT_name("__mpyli")
	.dwattr $C$DW$138, DW_AT_TI_call
        CALL #__mpyli ; |374| 
                                        ; call occurs [#__mpyli] ; |374| 
        MOV dbl(*SP(#0)), XAR3
        ADD dbl(*SP(#22)), AC0, AC0 ; |374| 
        MOV AC0, T0 ; |374| 
        MOV *AR3(T0), AR1 ; |374| 
        MOV dbl(*SP(#4)), XAR3

        MOV XAR3, dbl(*SP(#26))
||      AADD AR1, AR3 ; |374| 

	.dwpsn	file "./susan.c",line 376,column 13,is_stmt
        MOV dbl(*SP(#24)), XAR3
        MOV *AR3+, AR1 ; |376| 
        MOV XAR3, dbl(*SP(#24))
        MOV dbl(*SP(#26)), XAR3
        ASUB AR1, AR3 ; |376| 
        MOV uns(*AR3), AC0 ; |376| 
        ADD dbl(*SP(#14)), AC0, AC0 ; |376| 
        MOV AC0, dbl(*SP(#14)) ; |376| 
	.dwpsn	file "./susan.c",line 377,column 13,is_stmt
        MOV dbl(*SP(#24)), XAR3
        MOV *AR3+, AR1 ; |377| 
        MOV XAR3, dbl(*SP(#24))
        MOV dbl(*SP(#26)), XAR3
        ASUB AR1, AR3 ; |377| 
        MOV uns(*AR3), AC0 ; |377| 
        ADD dbl(*SP(#14)), AC0, AC0 ; |377| 
        MOV AC0, dbl(*SP(#14)) ; |377| 
	.dwpsn	file "./susan.c",line 378,column 13,is_stmt
        MOV dbl(*SP(#24)), XAR3
        MOV *AR3, AR1 ; |378| 
        MOV dbl(*SP(#26)), XAR3
        ASUB AR1, AR3 ; |378| 
        MOV uns(*AR3), AC0 ; |378| 
        ADD dbl(*SP(#14)), AC0, AC0 ; |378| 
        MOV AC0, dbl(*SP(#14)) ; |378| 
	.dwpsn	file "./susan.c",line 379,column 13,is_stmt
        MOV dbl(*SP(#24)), XAR3
        MOV dbl(*SP(#10)), AC0 ; |379| 
        SUB #3, AC0 ; |379| 
        MOV AC0, AR1 ; |379| 

        MOV XAR3, dbl(*SP(#24))
||      AADD AR1, AR3 ; |379| 

	.dwpsn	file "./susan.c",line 381,column 13,is_stmt
        MOV *AR3+, AR1 ; |381| 
        MOV XAR3, dbl(*SP(#24))
        MOV dbl(*SP(#26)), XAR3
        ASUB AR1, AR3 ; |381| 
        MOV uns(*AR3), AC0 ; |381| 
        ADD dbl(*SP(#14)), AC0, AC0 ; |381| 
        MOV AC0, dbl(*SP(#14)) ; |381| 
	.dwpsn	file "./susan.c",line 382,column 13,is_stmt
        MOV dbl(*SP(#24)), XAR3
        MOV *AR3+, AR1 ; |382| 
        MOV XAR3, dbl(*SP(#24))
        MOV dbl(*SP(#26)), XAR3
        ASUB AR1, AR3 ; |382| 
        MOV uns(*AR3), AC0 ; |382| 
        ADD dbl(*SP(#14)), AC0, AC0 ; |382| 
        MOV AC0, dbl(*SP(#14)) ; |382| 
	.dwpsn	file "./susan.c",line 383,column 13,is_stmt
        MOV dbl(*SP(#24)), XAR3
        MOV *AR3+, AR1 ; |383| 
        MOV XAR3, dbl(*SP(#24))
        MOV dbl(*SP(#26)), XAR3
        ASUB AR1, AR3 ; |383| 
        MOV uns(*AR3), AC0 ; |383| 
        ADD dbl(*SP(#14)), AC0, AC0 ; |383| 
        MOV AC0, dbl(*SP(#14)) ; |383| 
	.dwpsn	file "./susan.c",line 384,column 13,is_stmt
        MOV dbl(*SP(#24)), XAR3
        MOV *AR3+, AR1 ; |384| 
        MOV XAR3, dbl(*SP(#24))
        MOV dbl(*SP(#26)), XAR3
        ASUB AR1, AR3 ; |384| 
        MOV uns(*AR3), AC0 ; |384| 
        ADD dbl(*SP(#14)), AC0, AC0 ; |384| 
        MOV AC0, dbl(*SP(#14)) ; |384| 
	.dwpsn	file "./susan.c",line 385,column 13,is_stmt
        MOV dbl(*SP(#24)), XAR3
        MOV *AR3, AR1 ; |385| 
        MOV dbl(*SP(#26)), XAR3
        ASUB AR1, AR3 ; |385| 
        MOV uns(*AR3), AC0 ; |385| 
        ADD dbl(*SP(#14)), AC0, AC0 ; |385| 
        MOV AC0, dbl(*SP(#14)) ; |385| 
	.dwpsn	file "./susan.c",line 386,column 13,is_stmt
        MOV dbl(*SP(#24)), XAR3
        MOV dbl(*SP(#10)), AC0 ; |386| 
        SUB #5, AC0 ; |386| 
        MOV AC0, AR1 ; |386| 

        MOV XAR3, dbl(*SP(#24))
||      AADD AR1, AR3 ; |386| 

	.dwpsn	file "./susan.c",line 388,column 13,is_stmt
        MOV *AR3+, AR1 ; |388| 
        MOV XAR3, dbl(*SP(#24))
        MOV dbl(*SP(#26)), XAR3
        ASUB AR1, AR3 ; |388| 
        MOV uns(*AR3), AC0 ; |388| 
        ADD dbl(*SP(#14)), AC0, AC0 ; |388| 
        MOV AC0, dbl(*SP(#14)) ; |388| 
	.dwpsn	file "./susan.c",line 389,column 13,is_stmt
        MOV dbl(*SP(#24)), XAR3
        MOV *AR3+, AR1 ; |389| 
        MOV XAR3, dbl(*SP(#24))
        MOV dbl(*SP(#26)), XAR3
        ASUB AR1, AR3 ; |389| 
        MOV uns(*AR3), AC0 ; |389| 
        ADD dbl(*SP(#14)), AC0, AC0 ; |389| 
        MOV AC0, dbl(*SP(#14)) ; |389| 
	.dwpsn	file "./susan.c",line 390,column 13,is_stmt
        MOV dbl(*SP(#24)), XAR3
        MOV *AR3+, AR1 ; |390| 
        MOV XAR3, dbl(*SP(#24))
        MOV dbl(*SP(#26)), XAR3
        ASUB AR1, AR3 ; |390| 
        MOV uns(*AR3), AC0 ; |390| 
        ADD dbl(*SP(#14)), AC0, AC0 ; |390| 
        MOV AC0, dbl(*SP(#14)) ; |390| 
	.dwpsn	file "./susan.c",line 391,column 13,is_stmt
        MOV dbl(*SP(#24)), XAR3
        MOV *AR3+, AR1 ; |391| 
        MOV XAR3, dbl(*SP(#24))
        MOV dbl(*SP(#26)), XAR3
        ASUB AR1, AR3 ; |391| 
        MOV uns(*AR3), AC0 ; |391| 
        ADD dbl(*SP(#14)), AC0, AC0 ; |391| 
        MOV AC0, dbl(*SP(#14)) ; |391| 
	.dwpsn	file "./susan.c",line 392,column 13,is_stmt
        MOV dbl(*SP(#24)), XAR3
        MOV *AR3+, AR1 ; |392| 
        MOV XAR3, dbl(*SP(#24))
        MOV dbl(*SP(#26)), XAR3
        ASUB AR1, AR3 ; |392| 
        MOV uns(*AR3), AC0 ; |392| 
        ADD dbl(*SP(#14)), AC0, AC0 ; |392| 
        MOV AC0, dbl(*SP(#14)) ; |392| 
	.dwpsn	file "./susan.c",line 393,column 13,is_stmt
        MOV dbl(*SP(#24)), XAR3
        MOV *AR3+, AR1 ; |393| 
        MOV XAR3, dbl(*SP(#24))
        MOV dbl(*SP(#26)), XAR3
        ASUB AR1, AR3 ; |393| 
        MOV uns(*AR3), AC0 ; |393| 
        ADD dbl(*SP(#14)), AC0, AC0 ; |393| 
        MOV AC0, dbl(*SP(#14)) ; |393| 
	.dwpsn	file "./susan.c",line 394,column 13,is_stmt
        MOV dbl(*SP(#24)), XAR3
        MOV *AR3, AR1 ; |394| 
        MOV dbl(*SP(#26)), XAR3
        ASUB AR1, AR3 ; |394| 
        MOV uns(*AR3), AC0 ; |394| 
        ADD dbl(*SP(#14)), AC0, AC0 ; |394| 
        MOV AC0, dbl(*SP(#14)) ; |394| 
	.dwpsn	file "./susan.c",line 395,column 13,is_stmt
        MOV dbl(*SP(#24)), XAR3
        MOV dbl(*SP(#10)), AC0 ; |395| 
        SUB #6, AC0 ; |395| 
        MOV AC0, AR1 ; |395| 

        MOV XAR3, dbl(*SP(#24))
||      AADD AR1, AR3 ; |395| 

	.dwpsn	file "./susan.c",line 397,column 13,is_stmt
        MOV *AR3+, AR1 ; |397| 
        MOV XAR3, dbl(*SP(#24))
        MOV dbl(*SP(#26)), XAR3
        ASUB AR1, AR3 ; |397| 
        MOV uns(*AR3), AC0 ; |397| 
        ADD dbl(*SP(#14)), AC0, AC0 ; |397| 
        MOV AC0, dbl(*SP(#14)) ; |397| 
	.dwpsn	file "./susan.c",line 398,column 13,is_stmt
        MOV dbl(*SP(#24)), XAR3
        MOV *AR3+, AR1 ; |398| 
        MOV XAR3, dbl(*SP(#24))
        MOV dbl(*SP(#26)), XAR3
        ASUB AR1, AR3 ; |398| 
        MOV uns(*AR3), AC0 ; |398| 
        ADD dbl(*SP(#14)), AC0, AC0 ; |398| 
        MOV AC0, dbl(*SP(#14)) ; |398| 
	.dwpsn	file "./susan.c",line 399,column 13,is_stmt
        MOV dbl(*SP(#24)), XAR3
        MOV *AR3, AR1 ; |399| 
        MOV dbl(*SP(#26)), XAR3
        ASUB AR1, AR3 ; |399| 
        MOV uns(*AR3), AC0 ; |399| 
        ADD dbl(*SP(#14)), AC0, AC0 ; |399| 
        MOV AC0, dbl(*SP(#14)) ; |399| 
	.dwpsn	file "./susan.c",line 400,column 13,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |400| 
        MOV dbl(*SP(#14)), AC1 ; |400| 
        CMP AC1 >= AC0, TC1 ; |400| 
        BCC $C$L28,TC1 ; |400| 
                                        ; branchcc occurs ; |400| 
$C$DW$L$_susan_corners_quick$3$E:
$C$DW$L$_susan_corners_quick$4$B:
	.dwpsn	file "./susan.c",line 402,column 17,is_stmt
        MOV dbl(*SP(#24)), XAR3

        MOV XAR3, dbl(*SP(#24))
||      AADD #2, AR3 ; |402| 

	.dwpsn	file "./susan.c",line 403,column 17,is_stmt
        MOV *AR3+, AR1 ; |403| 
        MOV XAR3, dbl(*SP(#24))
        MOV dbl(*SP(#26)), XAR3
        ASUB AR1, AR3 ; |403| 
        MOV uns(*AR3), AC0 ; |403| 
        ADD dbl(*SP(#14)), AC0, AC0 ; |403| 
        MOV AC0, dbl(*SP(#14)) ; |403| 
	.dwpsn	file "./susan.c",line 404,column 17,is_stmt
        MOV dbl(*SP(#14)), AC1 ; |404| 
        MOV dbl(*SP(#6)), AC0 ; |404| 
        CMP AC1 >= AC0, TC1 ; |404| 
        BCC $C$L28,TC1 ; |404| 
                                        ; branchcc occurs ; |404| 
$C$DW$L$_susan_corners_quick$4$E:
$C$DW$L$_susan_corners_quick$5$B:
	.dwpsn	file "./susan.c",line 406,column 21,is_stmt
        MOV dbl(*SP(#24)), XAR3
        MOV *AR3+, AR1 ; |406| 
        MOV XAR3, dbl(*SP(#24))
        MOV dbl(*SP(#26)), XAR3
        ASUB AR1, AR3 ; |406| 
        MOV uns(*AR3), AC0 ; |406| 
        ADD dbl(*SP(#14)), AC0, AC0 ; |406| 
        MOV AC0, dbl(*SP(#14)) ; |406| 
	.dwpsn	file "./susan.c",line 407,column 21,is_stmt
        MOV dbl(*SP(#14)), AC1 ; |407| 
        MOV dbl(*SP(#6)), AC0 ; |407| 
        CMP AC1 >= AC0, TC1 ; |407| 
        BCC $C$L28,TC1 ; |407| 
                                        ; branchcc occurs ; |407| 
$C$DW$L$_susan_corners_quick$5$E:
$C$DW$L$_susan_corners_quick$6$B:
	.dwpsn	file "./susan.c",line 409,column 25,is_stmt
        MOV dbl(*SP(#24)), XAR3
        MOV *AR3, AR1 ; |409| 
        MOV dbl(*SP(#26)), XAR3
        ASUB AR1, AR3 ; |409| 
        MOV uns(*AR3), AC0 ; |409| 
        ADD dbl(*SP(#14)), AC0, AC0 ; |409| 
        MOV AC0, dbl(*SP(#14)) ; |409| 
	.dwpsn	file "./susan.c",line 410,column 25,is_stmt
        MOV dbl(*SP(#14)), AC1 ; |410| 
        MOV dbl(*SP(#6)), AC0 ; |410| 
        CMP AC1 >= AC0, TC1 ; |410| 
        BCC $C$L28,TC1 ; |410| 
                                        ; branchcc occurs ; |410| 
$C$DW$L$_susan_corners_quick$6$E:
$C$DW$L$_susan_corners_quick$7$B:
	.dwpsn	file "./susan.c",line 412,column 29,is_stmt
        MOV dbl(*SP(#24)), XAR3
        MOV dbl(*SP(#10)), AC0 ; |412| 
        SUB #6, AC0 ; |412| 
        MOV AC0, AR1 ; |412| 

        MOV XAR3, dbl(*SP(#24))
||      AADD AR1, AR3 ; |412| 

	.dwpsn	file "./susan.c",line 414,column 29,is_stmt
        MOV *AR3+, AR1 ; |414| 
        MOV XAR3, dbl(*SP(#24))
        MOV dbl(*SP(#26)), XAR3
        ASUB AR1, AR3 ; |414| 
        MOV uns(*AR3), AC0 ; |414| 
        ADD dbl(*SP(#14)), AC0, AC0 ; |414| 
        MOV AC0, dbl(*SP(#14)) ; |414| 
	.dwpsn	file "./susan.c",line 415,column 29,is_stmt
        MOV dbl(*SP(#14)), AC1 ; |415| 
        MOV dbl(*SP(#6)), AC0 ; |415| 
        CMP AC1 >= AC0, TC1 ; |415| 
        BCC $C$L28,TC1 ; |415| 
                                        ; branchcc occurs ; |415| 
$C$DW$L$_susan_corners_quick$7$E:
$C$DW$L$_susan_corners_quick$8$B:
	.dwpsn	file "./susan.c",line 417,column 33,is_stmt
        MOV dbl(*SP(#24)), XAR3
        MOV *AR3+, AR1 ; |417| 
        MOV XAR3, dbl(*SP(#24))
        MOV dbl(*SP(#26)), XAR3
        ASUB AR1, AR3 ; |417| 
        MOV uns(*AR3), AC0 ; |417| 
        ADD dbl(*SP(#14)), AC0, AC0 ; |417| 
        MOV AC0, dbl(*SP(#14)) ; |417| 
	.dwpsn	file "./susan.c",line 418,column 33,is_stmt
        MOV dbl(*SP(#14)), AC1 ; |418| 
        MOV dbl(*SP(#6)), AC0 ; |418| 
        CMP AC1 >= AC0, TC1 ; |418| 
        BCC $C$L28,TC1 ; |418| 
                                        ; branchcc occurs ; |418| 
$C$DW$L$_susan_corners_quick$8$E:
$C$DW$L$_susan_corners_quick$9$B:
	.dwpsn	file "./susan.c",line 420,column 37,is_stmt
        MOV dbl(*SP(#24)), XAR3
        MOV *AR3+, AR1 ; |420| 
        MOV XAR3, dbl(*SP(#24))
        MOV dbl(*SP(#26)), XAR3
        ASUB AR1, AR3 ; |420| 
        MOV uns(*AR3), AC0 ; |420| 
        ADD dbl(*SP(#14)), AC0, AC0 ; |420| 
        MOV AC0, dbl(*SP(#14)) ; |420| 
	.dwpsn	file "./susan.c",line 421,column 37,is_stmt
        MOV dbl(*SP(#14)), AC1 ; |421| 
        MOV dbl(*SP(#6)), AC0 ; |421| 
        CMP AC1 >= AC0, TC1 ; |421| 
        BCC $C$L28,TC1 ; |421| 
                                        ; branchcc occurs ; |421| 
$C$DW$L$_susan_corners_quick$9$E:
$C$DW$L$_susan_corners_quick$10$B:
	.dwpsn	file "./susan.c",line 423,column 41,is_stmt
        MOV dbl(*SP(#24)), XAR3
        MOV *AR3+, AR1 ; |423| 
        MOV XAR3, dbl(*SP(#24))
        MOV dbl(*SP(#26)), XAR3
        ASUB AR1, AR3 ; |423| 
        MOV uns(*AR3), AC0 ; |423| 
        ADD dbl(*SP(#14)), AC0, AC0 ; |423| 
        MOV AC0, dbl(*SP(#14)) ; |423| 
	.dwpsn	file "./susan.c",line 424,column 41,is_stmt
        MOV dbl(*SP(#14)), AC1 ; |424| 
        MOV dbl(*SP(#6)), AC0 ; |424| 
        CMP AC1 >= AC0, TC1 ; |424| 
        BCC $C$L28,TC1 ; |424| 
                                        ; branchcc occurs ; |424| 
$C$DW$L$_susan_corners_quick$10$E:
$C$DW$L$_susan_corners_quick$11$B:
	.dwpsn	file "./susan.c",line 426,column 45,is_stmt
        MOV dbl(*SP(#24)), XAR3
        MOV *AR3+, AR1 ; |426| 
        MOV XAR3, dbl(*SP(#24))
        MOV dbl(*SP(#26)), XAR3
        ASUB AR1, AR3 ; |426| 
        MOV uns(*AR3), AC0 ; |426| 
        ADD dbl(*SP(#14)), AC0, AC0 ; |426| 
        MOV AC0, dbl(*SP(#14)) ; |426| 
	.dwpsn	file "./susan.c",line 427,column 45,is_stmt
        MOV dbl(*SP(#14)), AC1 ; |427| 
        MOV dbl(*SP(#6)), AC0 ; |427| 
        CMP AC1 >= AC0, TC1 ; |427| 
        BCC $C$L28,TC1 ; |427| 
                                        ; branchcc occurs ; |427| 
$C$DW$L$_susan_corners_quick$11$E:
$C$DW$L$_susan_corners_quick$12$B:
	.dwpsn	file "./susan.c",line 429,column 49,is_stmt
        MOV dbl(*SP(#24)), XAR3
        MOV *AR3+, AR1 ; |429| 
        MOV XAR3, dbl(*SP(#24))
        MOV dbl(*SP(#26)), XAR3
        ASUB AR1, AR3 ; |429| 
        MOV uns(*AR3), AC0 ; |429| 
        ADD dbl(*SP(#14)), AC0, AC0 ; |429| 
        MOV AC0, dbl(*SP(#14)) ; |429| 
	.dwpsn	file "./susan.c",line 430,column 49,is_stmt
        MOV dbl(*SP(#14)), AC1 ; |430| 
        MOV dbl(*SP(#6)), AC0 ; |430| 
        CMP AC1 >= AC0, TC1 ; |430| 
        BCC $C$L28,TC1 ; |430| 
                                        ; branchcc occurs ; |430| 
$C$DW$L$_susan_corners_quick$12$E:
$C$DW$L$_susan_corners_quick$13$B:
	.dwpsn	file "./susan.c",line 432,column 53,is_stmt
        MOV dbl(*SP(#24)), XAR3
        MOV *AR3, AR1 ; |432| 
        MOV dbl(*SP(#26)), XAR3
        ASUB AR1, AR3 ; |432| 
        MOV uns(*AR3), AC0 ; |432| 
        ADD dbl(*SP(#14)), AC0, AC0 ; |432| 
        MOV AC0, dbl(*SP(#14)) ; |432| 
	.dwpsn	file "./susan.c",line 433,column 53,is_stmt
        MOV dbl(*SP(#14)), AC1 ; |433| 
        MOV dbl(*SP(#6)), AC0 ; |433| 
        CMP AC1 >= AC0, TC1 ; |433| 
        BCC $C$L28,TC1 ; |433| 
                                        ; branchcc occurs ; |433| 
$C$DW$L$_susan_corners_quick$13$E:
$C$DW$L$_susan_corners_quick$14$B:
	.dwpsn	file "./susan.c",line 435,column 57,is_stmt
        MOV dbl(*SP(#24)), XAR3
        MOV dbl(*SP(#10)), AC0 ; |435| 
        SUB #5, AC0 ; |435| 
        MOV AC0, AR1 ; |435| 

        MOV XAR3, dbl(*SP(#24))
||      AADD AR1, AR3 ; |435| 

	.dwpsn	file "./susan.c",line 437,column 57,is_stmt
        MOV *AR3+, AR1 ; |437| 
        MOV XAR3, dbl(*SP(#24))
        MOV dbl(*SP(#26)), XAR3
        ASUB AR1, AR3 ; |437| 
        MOV uns(*AR3), AC0 ; |437| 
        ADD dbl(*SP(#14)), AC0, AC0 ; |437| 
        MOV AC0, dbl(*SP(#14)) ; |437| 
	.dwpsn	file "./susan.c",line 438,column 57,is_stmt
        MOV dbl(*SP(#14)), AC1 ; |438| 
        MOV dbl(*SP(#6)), AC0 ; |438| 
        CMP AC1 >= AC0, TC1 ; |438| 
        BCC $C$L28,TC1 ; |438| 
                                        ; branchcc occurs ; |438| 
$C$DW$L$_susan_corners_quick$14$E:
$C$DW$L$_susan_corners_quick$15$B:
	.dwpsn	file "./susan.c",line 440,column 61,is_stmt
        MOV dbl(*SP(#24)), XAR3
        MOV *AR3+, AR1 ; |440| 
        MOV XAR3, dbl(*SP(#24))
        MOV dbl(*SP(#26)), XAR3
        ASUB AR1, AR3 ; |440| 
        MOV uns(*AR3), AC0 ; |440| 
        ADD dbl(*SP(#14)), AC0, AC0 ; |440| 
        MOV AC0, dbl(*SP(#14)) ; |440| 
	.dwpsn	file "./susan.c",line 441,column 61,is_stmt
        MOV dbl(*SP(#14)), AC1 ; |441| 
        MOV dbl(*SP(#6)), AC0 ; |441| 
        CMP AC1 >= AC0, TC1 ; |441| 
        BCC $C$L28,TC1 ; |441| 
                                        ; branchcc occurs ; |441| 
$C$DW$L$_susan_corners_quick$15$E:
$C$DW$L$_susan_corners_quick$16$B:
	.dwpsn	file "./susan.c",line 443,column 65,is_stmt
        MOV dbl(*SP(#24)), XAR3
        MOV *AR3+, AR1 ; |443| 
        MOV XAR3, dbl(*SP(#24))
        MOV dbl(*SP(#26)), XAR3
        ASUB AR1, AR3 ; |443| 
        MOV uns(*AR3), AC0 ; |443| 
        ADD dbl(*SP(#14)), AC0, AC0 ; |443| 
        MOV AC0, dbl(*SP(#14)) ; |443| 
	.dwpsn	file "./susan.c",line 444,column 65,is_stmt
        MOV dbl(*SP(#14)), AC1 ; |444| 
        MOV dbl(*SP(#6)), AC0 ; |444| 
        CMP AC1 >= AC0, TC1 ; |444| 
        BCC $C$L28,TC1 ; |444| 
                                        ; branchcc occurs ; |444| 
$C$DW$L$_susan_corners_quick$16$E:
$C$DW$L$_susan_corners_quick$17$B:
	.dwpsn	file "./susan.c",line 446,column 69,is_stmt
        MOV dbl(*SP(#24)), XAR3
        MOV *AR3+, AR1 ; |446| 
        MOV XAR3, dbl(*SP(#24))
        MOV dbl(*SP(#26)), XAR3
        ASUB AR1, AR3 ; |446| 
        MOV uns(*AR3), AC0 ; |446| 
        ADD dbl(*SP(#14)), AC0, AC0 ; |446| 
        MOV AC0, dbl(*SP(#14)) ; |446| 
	.dwpsn	file "./susan.c",line 447,column 69,is_stmt
        MOV dbl(*SP(#14)), AC1 ; |447| 
        MOV dbl(*SP(#6)), AC0 ; |447| 
        CMP AC1 >= AC0, TC1 ; |447| 
        BCC $C$L28,TC1 ; |447| 
                                        ; branchcc occurs ; |447| 
$C$DW$L$_susan_corners_quick$17$E:
$C$DW$L$_susan_corners_quick$18$B:
	.dwpsn	file "./susan.c",line 449,column 73,is_stmt
        MOV dbl(*SP(#24)), XAR3
        MOV *AR3, AR1 ; |449| 
        MOV dbl(*SP(#26)), XAR3
        ASUB AR1, AR3 ; |449| 
        MOV uns(*AR3), AC0 ; |449| 
        ADD dbl(*SP(#14)), AC0, AC0 ; |449| 
        MOV AC0, dbl(*SP(#14)) ; |449| 
	.dwpsn	file "./susan.c",line 450,column 73,is_stmt
        MOV dbl(*SP(#14)), AC1 ; |450| 
        MOV dbl(*SP(#6)), AC0 ; |450| 
        CMP AC1 >= AC0, TC1 ; |450| 
        BCC $C$L28,TC1 ; |450| 
                                        ; branchcc occurs ; |450| 
$C$DW$L$_susan_corners_quick$18$E:
$C$DW$L$_susan_corners_quick$19$B:
	.dwpsn	file "./susan.c",line 452,column 77,is_stmt
        MOV dbl(*SP(#24)), XAR3
        MOV dbl(*SP(#10)), AC0 ; |452| 
        SUB #3, AC0 ; |452| 
        MOV AC0, AR1 ; |452| 

        MOV XAR3, dbl(*SP(#24))
||      AADD AR1, AR3 ; |452| 

	.dwpsn	file "./susan.c",line 454,column 77,is_stmt
        MOV *AR3+, AR1 ; |454| 
        MOV XAR3, dbl(*SP(#24))
        MOV dbl(*SP(#26)), XAR3
        ASUB AR1, AR3 ; |454| 
        MOV uns(*AR3), AC0 ; |454| 
        ADD dbl(*SP(#14)), AC0, AC0 ; |454| 
        MOV AC0, dbl(*SP(#14)) ; |454| 
	.dwpsn	file "./susan.c",line 455,column 77,is_stmt
        MOV dbl(*SP(#14)), AC1 ; |455| 
        MOV dbl(*SP(#6)), AC0 ; |455| 
        CMP AC1 >= AC0, TC1 ; |455| 
        BCC $C$L28,TC1 ; |455| 
                                        ; branchcc occurs ; |455| 
$C$DW$L$_susan_corners_quick$19$E:
$C$DW$L$_susan_corners_quick$20$B:
	.dwpsn	file "./susan.c",line 457,column 81,is_stmt
        MOV dbl(*SP(#24)), XAR3
        MOV *AR3+, AR1 ; |457| 
        MOV XAR3, dbl(*SP(#24))
        MOV dbl(*SP(#26)), XAR3
        ASUB AR1, AR3 ; |457| 
        MOV uns(*AR3), AC0 ; |457| 
        ADD dbl(*SP(#14)), AC0, AC0 ; |457| 
        MOV AC0, dbl(*SP(#14)) ; |457| 
	.dwpsn	file "./susan.c",line 458,column 81,is_stmt
        MOV dbl(*SP(#14)), AC1 ; |458| 
        MOV dbl(*SP(#6)), AC0 ; |458| 
        CMP AC1 >= AC0, TC1 ; |458| 
        BCC $C$L28,TC1 ; |458| 
                                        ; branchcc occurs ; |458| 
$C$DW$L$_susan_corners_quick$20$E:
$C$DW$L$_susan_corners_quick$21$B:
	.dwpsn	file "./susan.c",line 460,column 85,is_stmt
        MOV dbl(*SP(#24)), XAR3
        MOV *AR3, AR1 ; |460| 
        MOV dbl(*SP(#26)), XAR3
        ASUB AR1, AR3 ; |460| 
        MOV uns(*AR3), AC0 ; |460| 
        ADD dbl(*SP(#14)), AC0, AC0 ; |460| 
        MOV AC0, dbl(*SP(#14)) ; |460| 
	.dwpsn	file "./susan.c",line 462,column 85,is_stmt
        MOV dbl(*SP(#14)), AC1 ; |462| 
        MOV dbl(*SP(#6)), AC0 ; |462| 
        CMP AC1 >= AC0, TC1 ; |462| 
        BCC $C$L28,TC1 ; |462| 
                                        ; branchcc occurs ; |462| 
$C$DW$L$_susan_corners_quick$21$E:
$C$DW$L$_susan_corners_quick$22$B:
	.dwpsn	file "./susan.c",line 463,column 89,is_stmt
        MOV dbl(*SP(#20)), AC0 ; |463| 
        MOV dbl(*SP(#10)), AC1 ; |463| 
$C$DW$139	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$139, DW_AT_low_pc(0x00)
	.dwattr $C$DW$139, DW_AT_name("__mpyli")
	.dwattr $C$DW$139, DW_AT_TI_call
        CALL #__mpyli ; |463| 
                                        ; call occurs [#__mpyli] ; |463| 
        MOV dbl(*SP(#2)), XAR3
        ADD dbl(*SP(#22)), AC0, AC0 ; |463| 
        MOV AC0, T0 ; |463| 
        SFTL T0, #1 ; |463| 
        MOV dbl(*SP(#14)), AC0 ; |463| 
        SUB AC0, dbl(*SP(#6)), AC0 ; |463| 
        MOV AC0, dbl(*AR3(T0)) ; |463| 
$C$DW$L$_susan_corners_quick$22$E:
$C$L28:    
$C$DW$L$_susan_corners_quick$23$B:
	.dwpsn	file "./susan.c",line 370,column 37,is_stmt
        MOV dbl(*SP(#22)), AC0 ; |370| 
        ADD #1, AC0 ; |370| 
        MOV AC0, dbl(*SP(#22)) ; |370| 
	.dwpsn	file "./susan.c",line 370,column 21,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |370| 

        SUB #7, AC0 ; |370| 
||      MOV dbl(*SP(#22)), AC1 ; |370| 

        CMP AC1 < AC0, TC1 ; |370| 
        BCC $C$L27,TC1 ; |370| 
                                        ; branchcc occurs ; |370| 
$C$DW$L$_susan_corners_quick$23$E:
$C$L29:    
$C$DW$L$_susan_corners_quick$24$B:
	.dwpsn	file "./susan.c",line 369,column 33,is_stmt
        MOV dbl(*SP(#20)), AC0 ; |369| 
        ADD #1, AC0 ; |369| 
        MOV AC0, dbl(*SP(#20)) ; |369| 
	.dwpsn	file "./susan.c",line 369,column 17,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |369| 

        SUB #7, AC0 ; |369| 
||      MOV dbl(*SP(#20)), AC1 ; |369| 

        CMP AC1 < AC0, TC1 ; |369| 
        BCC $C$L26,TC1 ; |369| 
                                        ; branchcc occurs ; |369| 
$C$DW$L$_susan_corners_quick$24$E:
$C$L30:    
	.dwpsn	file "./susan.c",line 485,column 5,is_stmt
        MOV #0, AC0 ; |485| 
        MOV AC0, dbl(*SP(#14)) ; |485| 
	.dwpsn	file "./susan.c",line 486,column 10,is_stmt
        MOV #7, AC0 ; |486| 
        MOV AC0, dbl(*SP(#20)) ; |486| 
	.dwpsn	file "./susan.c",line 486,column 17,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |486| 

        SUB #7, AC0 ; |486| 
||      MOV dbl(*SP(#20)), AC1 ; |486| 

        CMP AC1 >= AC0, TC1 ; |486| 
        BCC $C$L35,TC1 ; |486| 
                                        ; branchcc occurs ; |486| 
$C$L31:    
$C$DW$L$_susan_corners_quick$26$B:
	.dwpsn	file "./susan.c",line 487,column 14,is_stmt
        MOV #7, AC0 ; |487| 
        MOV AC0, dbl(*SP(#22)) ; |487| 
	.dwpsn	file "./susan.c",line 487,column 21,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |487| 

        SUB #7, AC0 ; |487| 
||      MOV dbl(*SP(#22)), AC1 ; |487| 

        CMP AC1 >= AC0, TC1 ; |487| 
        BCC $C$L34,TC1 ; |487| 
                                        ; branchcc occurs ; |487| 
$C$DW$L$_susan_corners_quick$26$E:
$C$L32:    
$C$DW$L$_susan_corners_quick$27$B:
	.dwpsn	file "./susan.c",line 489,column 13,is_stmt
        MOV dbl(*SP(#20)), AC0 ; |489| 
        MOV dbl(*SP(#10)), AC1 ; |489| 
$C$DW$140	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$140, DW_AT_low_pc(0x00)
	.dwattr $C$DW$140, DW_AT_name("__mpyli")
	.dwattr $C$DW$140, DW_AT_TI_call
        CALL #__mpyli ; |489| 
                                        ; call occurs [#__mpyli] ; |489| 
        MOV dbl(*SP(#2)), XAR3
        ADD dbl(*SP(#22)), AC0, AC0 ; |489| 
        MOV AC0, T0 ; |489| 
        SFTL T0, #1 ; |489| 
        MOV dbl(*AR3(T0)), AC0 ; |489| 
        MOV AC0, dbl(*SP(#16)) ; |489| 
	.dwpsn	file "./susan.c",line 490,column 13,is_stmt
        MOV dbl(*SP(#16)), AC0 ; |490| 
        BCC $C$L33,AC0 <= #0 ; |490| 
                                        ; branchcc occurs ; |490| 
$C$DW$L$_susan_corners_quick$27$E:
$C$DW$L$_susan_corners_quick$28$B:
	.dwpsn	file "./susan.c",line 494,column 17,is_stmt

        MOV dbl(*SP(#10)), AC1 ; |494| 
||      MOV #1, AC0 ; |494| 

        SUB AC0, dbl(*SP(#20)), AC0 ; |494| 
$C$DW$141	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$141, DW_AT_low_pc(0x00)
	.dwattr $C$DW$141, DW_AT_name("__mpyli")
	.dwattr $C$DW$141, DW_AT_TI_call
        CALL #__mpyli ; |494| 
                                        ; call occurs [#__mpyli] ; |494| 
        MOV dbl(*SP(#2)), XAR3
        ADD dbl(*SP(#22)), AC0, AC0 ; |494| 
        ADD #2, AC0 ; |494| 
        MOV AC0, T0 ; |494| 
        SFTL T0, #1 ; |494| 
        MOV dbl(*SP(#16)), AC1 ; |494| 
        MOV dbl(*AR3(T0)), AC0 ; |494| 
        CMP AC1 <= AC0, TC1 ; |494| 
        BCC $C$L33,TC1 ; |494| 
                                        ; branchcc occurs ; |494| 
$C$DW$L$_susan_corners_quick$28$E:
$C$DW$L$_susan_corners_quick$29$B:
        MOV dbl(*SP(#20)), AC0 ; |494| 
        MOV dbl(*SP(#10)), AC1 ; |494| 
$C$DW$142	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$142, DW_AT_low_pc(0x00)
	.dwattr $C$DW$142, DW_AT_name("__mpyli")
	.dwattr $C$DW$142, DW_AT_TI_call
        CALL #__mpyli ; |494| 
                                        ; call occurs [#__mpyli] ; |494| 
        MOV dbl(*SP(#2)), XAR3
        ADD dbl(*SP(#22)), AC0, AC0 ; |494| 
        ADD #1, AC0 ; |494| 
        MOV AC0, T0 ; |494| 
        SFTL T0, #1 ; |494| 
        MOV dbl(*SP(#16)), AC1 ; |494| 
        MOV dbl(*AR3(T0)), AC0 ; |494| 
        CMP AC1 <= AC0, TC1 ; |494| 
        BCC $C$L33,TC1 ; |494| 
                                        ; branchcc occurs ; |494| 
$C$DW$L$_susan_corners_quick$29$E:
$C$DW$L$_susan_corners_quick$30$B:
        MOV dbl(*SP(#20)), AC0 ; |494| 
        MOV dbl(*SP(#10)), AC1 ; |494| 
$C$DW$143	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$143, DW_AT_low_pc(0x00)
	.dwattr $C$DW$143, DW_AT_name("__mpyli")
	.dwattr $C$DW$143, DW_AT_TI_call
        CALL #__mpyli ; |494| 
                                        ; call occurs [#__mpyli] ; |494| 
        MOV dbl(*SP(#2)), XAR3
        ADD dbl(*SP(#22)), AC0, AC0 ; |494| 
        ADD #2, AC0 ; |494| 
        MOV AC0, T0 ; |494| 
        SFTL T0, #1 ; |494| 
        MOV dbl(*SP(#16)), AC1 ; |494| 
        MOV dbl(*AR3(T0)), AC0 ; |494| 
        CMP AC1 <= AC0, TC1 ; |494| 
        BCC $C$L33,TC1 ; |494| 
                                        ; branchcc occurs ; |494| 
$C$DW$L$_susan_corners_quick$30$E:
$C$DW$L$_susan_corners_quick$31$B:

        MOV dbl(*SP(#10)), AC1 ; |494| 
||      MOV #1, AC0 ; |494| 

        ADD dbl(*SP(#20)), AC0, AC0 ; |494| 
$C$DW$144	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$144, DW_AT_low_pc(0x00)
	.dwattr $C$DW$144, DW_AT_name("__mpyli")
	.dwattr $C$DW$144, DW_AT_TI_call
        CALL #__mpyli ; |494| 
                                        ; call occurs [#__mpyli] ; |494| 
        MOV dbl(*SP(#2)), XAR3
        ADD dbl(*SP(#22)), AC0, AC0 ; |494| 
        SUB #1, AC0 ; |494| 
        MOV AC0, T0 ; |494| 
        SFTL T0, #1 ; |494| 
        MOV dbl(*SP(#16)), AC1 ; |494| 
        MOV dbl(*AR3(T0)), AC0 ; |494| 
        CMP AC1 <= AC0, TC1 ; |494| 
        BCC $C$L33,TC1 ; |494| 
                                        ; branchcc occurs ; |494| 
$C$DW$L$_susan_corners_quick$31$E:
$C$DW$L$_susan_corners_quick$32$B:

        MOV dbl(*SP(#10)), AC1 ; |494| 
||      MOV #1, AC0 ; |494| 

        ADD dbl(*SP(#20)), AC0, AC0 ; |494| 
$C$DW$145	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$145, DW_AT_low_pc(0x00)
	.dwattr $C$DW$145, DW_AT_name("__mpyli")
	.dwattr $C$DW$145, DW_AT_TI_call
        CALL #__mpyli ; |494| 
                                        ; call occurs [#__mpyli] ; |494| 
        MOV dbl(*SP(#2)), XAR3
        ADD dbl(*SP(#22)), AC0, AC0 ; |494| 
        MOV AC0, T0 ; |494| 
        SFTL T0, #1 ; |494| 
        MOV dbl(*SP(#16)), AC1 ; |494| 
        MOV dbl(*AR3(T0)), AC0 ; |494| 
        CMP AC1 <= AC0, TC1 ; |494| 
        BCC $C$L33,TC1 ; |494| 
                                        ; branchcc occurs ; |494| 
$C$DW$L$_susan_corners_quick$32$E:
$C$DW$L$_susan_corners_quick$33$B:

        MOV dbl(*SP(#10)), AC1 ; |494| 
||      MOV #1, AC0 ; |494| 

        ADD dbl(*SP(#20)), AC0, AC0 ; |494| 
$C$DW$146	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$146, DW_AT_low_pc(0x00)
	.dwattr $C$DW$146, DW_AT_name("__mpyli")
	.dwattr $C$DW$146, DW_AT_TI_call
        CALL #__mpyli ; |494| 
                                        ; call occurs [#__mpyli] ; |494| 
        MOV dbl(*SP(#2)), XAR3
        ADD dbl(*SP(#22)), AC0, AC0 ; |494| 
        ADD #1, AC0 ; |494| 
        MOV AC0, T0 ; |494| 
        SFTL T0, #1 ; |494| 
        MOV dbl(*SP(#16)), AC1 ; |494| 
        MOV dbl(*AR3(T0)), AC0 ; |494| 
        CMP AC1 <= AC0, TC1 ; |494| 
        BCC $C$L33,TC1 ; |494| 
                                        ; branchcc occurs ; |494| 
$C$DW$L$_susan_corners_quick$33$E:
$C$DW$L$_susan_corners_quick$34$B:

        MOV dbl(*SP(#10)), AC1 ; |494| 
||      MOV #1, AC0 ; |494| 

        ADD dbl(*SP(#20)), AC0, AC0 ; |494| 
$C$DW$147	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$147, DW_AT_low_pc(0x00)
	.dwattr $C$DW$147, DW_AT_name("__mpyli")
	.dwattr $C$DW$147, DW_AT_TI_call
        CALL #__mpyli ; |494| 
                                        ; call occurs [#__mpyli] ; |494| 
        MOV dbl(*SP(#2)), XAR3
        ADD dbl(*SP(#22)), AC0, AC0 ; |494| 
        ADD #2, AC0 ; |494| 
        MOV AC0, T0 ; |494| 
        SFTL T0, #1 ; |494| 
        MOV dbl(*SP(#16)), AC1 ; |494| 
        MOV dbl(*AR3(T0)), AC0 ; |494| 
        CMP AC1 <= AC0, TC1 ; |494| 
        BCC $C$L33,TC1 ; |494| 
                                        ; branchcc occurs ; |494| 
$C$DW$L$_susan_corners_quick$34$E:
$C$DW$L$_susan_corners_quick$35$B:

        MOV dbl(*SP(#10)), AC1 ; |494| 
||      MOV #2, AC0 ; |494| 

        ADD dbl(*SP(#20)), AC0, AC0 ; |494| 
$C$DW$148	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$148, DW_AT_low_pc(0x00)
	.dwattr $C$DW$148, DW_AT_name("__mpyli")
	.dwattr $C$DW$148, DW_AT_TI_call
        CALL #__mpyli ; |494| 
                                        ; call occurs [#__mpyli] ; |494| 
        MOV dbl(*SP(#2)), XAR3
        ADD dbl(*SP(#22)), AC0, AC0 ; |494| 
        SUB #2, AC0 ; |494| 
        MOV AC0, T0 ; |494| 
        SFTL T0, #1 ; |494| 
        MOV dbl(*SP(#16)), AC1 ; |494| 
        MOV dbl(*AR3(T0)), AC0 ; |494| 
        CMP AC1 <= AC0, TC1 ; |494| 
        BCC $C$L33,TC1 ; |494| 
                                        ; branchcc occurs ; |494| 
$C$DW$L$_susan_corners_quick$35$E:
$C$DW$L$_susan_corners_quick$36$B:

        MOV dbl(*SP(#10)), AC1 ; |494| 
||      MOV #2, AC0 ; |494| 

        ADD dbl(*SP(#20)), AC0, AC0 ; |494| 
$C$DW$149	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$149, DW_AT_low_pc(0x00)
	.dwattr $C$DW$149, DW_AT_name("__mpyli")
	.dwattr $C$DW$149, DW_AT_TI_call
        CALL #__mpyli ; |494| 
                                        ; call occurs [#__mpyli] ; |494| 
        MOV dbl(*SP(#2)), XAR3
        ADD dbl(*SP(#22)), AC0, AC0 ; |494| 
        SUB #1, AC0 ; |494| 
        MOV AC0, T0 ; |494| 
        SFTL T0, #1 ; |494| 
        MOV dbl(*SP(#16)), AC1 ; |494| 
        MOV dbl(*AR3(T0)), AC0 ; |494| 
        CMP AC1 <= AC0, TC1 ; |494| 
        BCC $C$L33,TC1 ; |494| 
                                        ; branchcc occurs ; |494| 
$C$DW$L$_susan_corners_quick$36$E:
$C$DW$L$_susan_corners_quick$37$B:

        MOV dbl(*SP(#10)), AC1 ; |494| 
||      MOV #2, AC0 ; |494| 

        ADD dbl(*SP(#20)), AC0, AC0 ; |494| 
$C$DW$150	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$150, DW_AT_low_pc(0x00)
	.dwattr $C$DW$150, DW_AT_name("__mpyli")
	.dwattr $C$DW$150, DW_AT_TI_call
        CALL #__mpyli ; |494| 
                                        ; call occurs [#__mpyli] ; |494| 
        MOV dbl(*SP(#2)), XAR3
        ADD dbl(*SP(#22)), AC0, AC0 ; |494| 
        MOV AC0, T0 ; |494| 
        SFTL T0, #1 ; |494| 
        MOV dbl(*SP(#16)), AC1 ; |494| 
        MOV dbl(*AR3(T0)), AC0 ; |494| 
        CMP AC1 <= AC0, TC1 ; |494| 
        BCC $C$L33,TC1 ; |494| 
                                        ; branchcc occurs ; |494| 
$C$DW$L$_susan_corners_quick$37$E:
$C$DW$L$_susan_corners_quick$38$B:

        MOV dbl(*SP(#10)), AC1 ; |494| 
||      MOV #2, AC0 ; |494| 

        ADD dbl(*SP(#20)), AC0, AC0 ; |494| 
$C$DW$151	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$151, DW_AT_low_pc(0x00)
	.dwattr $C$DW$151, DW_AT_name("__mpyli")
	.dwattr $C$DW$151, DW_AT_TI_call
        CALL #__mpyli ; |494| 
                                        ; call occurs [#__mpyli] ; |494| 
        MOV dbl(*SP(#2)), XAR3
        ADD dbl(*SP(#22)), AC0, AC0 ; |494| 
        ADD #1, AC0 ; |494| 
        MOV AC0, T0 ; |494| 
        SFTL T0, #1 ; |494| 
        MOV dbl(*SP(#16)), AC1 ; |494| 
        MOV dbl(*AR3(T0)), AC0 ; |494| 
        CMP AC1 <= AC0, TC1 ; |494| 
        BCC $C$L33,TC1 ; |494| 
                                        ; branchcc occurs ; |494| 
$C$DW$L$_susan_corners_quick$38$E:
$C$DW$L$_susan_corners_quick$39$B:

        MOV dbl(*SP(#10)), AC1 ; |494| 
||      MOV #2, AC0 ; |494| 

        ADD dbl(*SP(#20)), AC0, AC0 ; |494| 
$C$DW$152	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$152, DW_AT_low_pc(0x00)
	.dwattr $C$DW$152, DW_AT_name("__mpyli")
	.dwattr $C$DW$152, DW_AT_TI_call
        CALL #__mpyli ; |494| 
                                        ; call occurs [#__mpyli] ; |494| 
        MOV dbl(*SP(#2)), XAR3
        ADD dbl(*SP(#22)), AC0, AC0 ; |494| 
        ADD #2, AC0 ; |494| 
        MOV AC0, T0 ; |494| 
        SFTL T0, #1 ; |494| 
        MOV dbl(*SP(#16)), AC1 ; |494| 
        MOV dbl(*AR3(T0)), AC0 ; |494| 
        CMP AC1 <= AC0, TC1 ; |494| 
        BCC $C$L33,TC1 ; |494| 
                                        ; branchcc occurs ; |494| 
$C$DW$L$_susan_corners_quick$39$E:
$C$DW$L$_susan_corners_quick$40$B:

        MOV dbl(*SP(#10)), AC1 ; |494| 
||      MOV #2, AC0 ; |494| 

        SUB AC0, dbl(*SP(#20)), AC0 ; |494| 
$C$DW$153	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$153, DW_AT_low_pc(0x00)
	.dwattr $C$DW$153, DW_AT_name("__mpyli")
	.dwattr $C$DW$153, DW_AT_TI_call
        CALL #__mpyli ; |494| 
                                        ; call occurs [#__mpyli] ; |494| 
        MOV dbl(*SP(#2)), XAR3
        ADD dbl(*SP(#22)), AC0, AC0 ; |494| 
        SUB #2, AC0 ; |494| 
        MOV AC0, T0 ; |494| 
        SFTL T0, #1 ; |494| 
        MOV dbl(*SP(#16)), AC1 ; |494| 
        MOV dbl(*AR3(T0)), AC0 ; |494| 
        CMP AC1 < AC0, TC1 ; |494| 
        BCC $C$L33,TC1 ; |494| 
                                        ; branchcc occurs ; |494| 
$C$DW$L$_susan_corners_quick$40$E:
$C$DW$L$_susan_corners_quick$41$B:

        MOV dbl(*SP(#10)), AC1 ; |494| 
||      MOV #2, AC0 ; |494| 

        SUB AC0, dbl(*SP(#20)), AC0 ; |494| 
$C$DW$154	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$154, DW_AT_low_pc(0x00)
	.dwattr $C$DW$154, DW_AT_name("__mpyli")
	.dwattr $C$DW$154, DW_AT_TI_call
        CALL #__mpyli ; |494| 
                                        ; call occurs [#__mpyli] ; |494| 
        MOV dbl(*SP(#2)), XAR3
        ADD dbl(*SP(#22)), AC0, AC0 ; |494| 
        SUB #1, AC0 ; |494| 
        MOV AC0, T0 ; |494| 
        SFTL T0, #1 ; |494| 
        MOV dbl(*SP(#16)), AC1 ; |494| 
        MOV dbl(*AR3(T0)), AC0 ; |494| 
        CMP AC1 < AC0, TC1 ; |494| 
        BCC $C$L33,TC1 ; |494| 
                                        ; branchcc occurs ; |494| 
$C$DW$L$_susan_corners_quick$41$E:
$C$DW$L$_susan_corners_quick$42$B:

        MOV dbl(*SP(#10)), AC1 ; |494| 
||      MOV #2, AC0 ; |494| 

        SUB AC0, dbl(*SP(#20)), AC0 ; |494| 
$C$DW$155	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$155, DW_AT_low_pc(0x00)
	.dwattr $C$DW$155, DW_AT_name("__mpyli")
	.dwattr $C$DW$155, DW_AT_TI_call
        CALL #__mpyli ; |494| 
                                        ; call occurs [#__mpyli] ; |494| 
        MOV dbl(*SP(#2)), XAR3
        ADD dbl(*SP(#22)), AC0, AC0 ; |494| 
        MOV AC0, T0 ; |494| 
        SFTL T0, #1 ; |494| 
        MOV dbl(*SP(#16)), AC1 ; |494| 
        MOV dbl(*AR3(T0)), AC0 ; |494| 
        CMP AC1 < AC0, TC1 ; |494| 
        BCC $C$L33,TC1 ; |494| 
                                        ; branchcc occurs ; |494| 
$C$DW$L$_susan_corners_quick$42$E:
$C$DW$L$_susan_corners_quick$43$B:

        MOV dbl(*SP(#10)), AC1 ; |494| 
||      MOV #2, AC0 ; |494| 

        SUB AC0, dbl(*SP(#20)), AC0 ; |494| 
$C$DW$156	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$156, DW_AT_low_pc(0x00)
	.dwattr $C$DW$156, DW_AT_name("__mpyli")
	.dwattr $C$DW$156, DW_AT_TI_call
        CALL #__mpyli ; |494| 
                                        ; call occurs [#__mpyli] ; |494| 
        MOV dbl(*SP(#2)), XAR3
        ADD dbl(*SP(#22)), AC0, AC0 ; |494| 
        ADD #1, AC0 ; |494| 
        MOV AC0, T0 ; |494| 
        SFTL T0, #1 ; |494| 
        MOV dbl(*SP(#16)), AC1 ; |494| 
        MOV dbl(*AR3(T0)), AC0 ; |494| 
        CMP AC1 < AC0, TC1 ; |494| 
        BCC $C$L33,TC1 ; |494| 
                                        ; branchcc occurs ; |494| 
$C$DW$L$_susan_corners_quick$43$E:
$C$DW$L$_susan_corners_quick$44$B:

        MOV dbl(*SP(#10)), AC1 ; |494| 
||      MOV #2, AC0 ; |494| 

        SUB AC0, dbl(*SP(#20)), AC0 ; |494| 
$C$DW$157	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$157, DW_AT_low_pc(0x00)
	.dwattr $C$DW$157, DW_AT_name("__mpyli")
	.dwattr $C$DW$157, DW_AT_TI_call
        CALL #__mpyli ; |494| 
                                        ; call occurs [#__mpyli] ; |494| 
        MOV dbl(*SP(#2)), XAR3
        ADD dbl(*SP(#22)), AC0, AC0 ; |494| 
        ADD #2, AC0 ; |494| 
        MOV AC0, T0 ; |494| 
        SFTL T0, #1 ; |494| 
        MOV dbl(*SP(#16)), AC1 ; |494| 
        MOV dbl(*AR3(T0)), AC0 ; |494| 
        CMP AC1 < AC0, TC1 ; |494| 
        BCC $C$L33,TC1 ; |494| 
                                        ; branchcc occurs ; |494| 
$C$DW$L$_susan_corners_quick$44$E:
$C$DW$L$_susan_corners_quick$45$B:

        MOV dbl(*SP(#10)), AC1 ; |494| 
||      MOV #1, AC0 ; |494| 

        SUB AC0, dbl(*SP(#20)), AC0 ; |494| 
$C$DW$158	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$158, DW_AT_low_pc(0x00)
	.dwattr $C$DW$158, DW_AT_name("__mpyli")
	.dwattr $C$DW$158, DW_AT_TI_call
        CALL #__mpyli ; |494| 
                                        ; call occurs [#__mpyli] ; |494| 
        MOV dbl(*SP(#2)), XAR3
        ADD dbl(*SP(#22)), AC0, AC0 ; |494| 
        SUB #2, AC0 ; |494| 
        MOV AC0, T0 ; |494| 
        SFTL T0, #1 ; |494| 
        MOV dbl(*SP(#16)), AC1 ; |494| 
        MOV dbl(*AR3(T0)), AC0 ; |494| 
        CMP AC1 < AC0, TC1 ; |494| 
        BCC $C$L33,TC1 ; |494| 
                                        ; branchcc occurs ; |494| 
$C$DW$L$_susan_corners_quick$45$E:
$C$DW$L$_susan_corners_quick$46$B:

        MOV dbl(*SP(#10)), AC1 ; |494| 
||      MOV #1, AC0 ; |494| 

        SUB AC0, dbl(*SP(#20)), AC0 ; |494| 
$C$DW$159	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$159, DW_AT_low_pc(0x00)
	.dwattr $C$DW$159, DW_AT_name("__mpyli")
	.dwattr $C$DW$159, DW_AT_TI_call
        CALL #__mpyli ; |494| 
                                        ; call occurs [#__mpyli] ; |494| 
        MOV dbl(*SP(#2)), XAR3
        ADD dbl(*SP(#22)), AC0, AC0 ; |494| 
        SUB #1, AC0 ; |494| 
        MOV AC0, T0 ; |494| 
        SFTL T0, #1 ; |494| 
        MOV dbl(*SP(#16)), AC1 ; |494| 
        MOV dbl(*AR3(T0)), AC0 ; |494| 
        CMP AC1 < AC0, TC1 ; |494| 
        BCC $C$L33,TC1 ; |494| 
                                        ; branchcc occurs ; |494| 
$C$DW$L$_susan_corners_quick$46$E:
$C$DW$L$_susan_corners_quick$47$B:

        MOV dbl(*SP(#10)), AC1 ; |494| 
||      MOV #1, AC0 ; |494| 

        SUB AC0, dbl(*SP(#20)), AC0 ; |494| 
$C$DW$160	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$160, DW_AT_low_pc(0x00)
	.dwattr $C$DW$160, DW_AT_name("__mpyli")
	.dwattr $C$DW$160, DW_AT_TI_call
        CALL #__mpyli ; |494| 
                                        ; call occurs [#__mpyli] ; |494| 
        MOV dbl(*SP(#2)), XAR3
        ADD dbl(*SP(#22)), AC0, AC0 ; |494| 
        MOV AC0, T0 ; |494| 
        SFTL T0, #1 ; |494| 
        MOV dbl(*SP(#16)), AC1 ; |494| 
        MOV dbl(*AR3(T0)), AC0 ; |494| 
        CMP AC1 < AC0, TC1 ; |494| 
        BCC $C$L33,TC1 ; |494| 
                                        ; branchcc occurs ; |494| 
$C$DW$L$_susan_corners_quick$47$E:
$C$DW$L$_susan_corners_quick$48$B:

        MOV dbl(*SP(#10)), AC1 ; |494| 
||      MOV #1, AC0 ; |494| 

        SUB AC0, dbl(*SP(#20)), AC0 ; |494| 
$C$DW$161	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$161, DW_AT_low_pc(0x00)
	.dwattr $C$DW$161, DW_AT_name("__mpyli")
	.dwattr $C$DW$161, DW_AT_TI_call
        CALL #__mpyli ; |494| 
                                        ; call occurs [#__mpyli] ; |494| 
        MOV dbl(*SP(#2)), XAR3
        ADD dbl(*SP(#22)), AC0, AC0 ; |494| 
        ADD #1, AC0 ; |494| 
        MOV AC0, T0 ; |494| 
        SFTL T0, #1 ; |494| 
        MOV dbl(*SP(#16)), AC1 ; |494| 
        MOV dbl(*AR3(T0)), AC0 ; |494| 
        CMP AC1 < AC0, TC1 ; |494| 
        BCC $C$L33,TC1 ; |494| 
                                        ; branchcc occurs ; |494| 
$C$DW$L$_susan_corners_quick$48$E:
$C$DW$L$_susan_corners_quick$49$B:
        MOV dbl(*SP(#20)), AC0 ; |494| 
        MOV dbl(*SP(#10)), AC1 ; |494| 
$C$DW$162	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$162, DW_AT_low_pc(0x00)
	.dwattr $C$DW$162, DW_AT_name("__mpyli")
	.dwattr $C$DW$162, DW_AT_TI_call
        CALL #__mpyli ; |494| 
                                        ; call occurs [#__mpyli] ; |494| 
        MOV dbl(*SP(#2)), XAR3
        ADD dbl(*SP(#22)), AC0, AC0 ; |494| 
        SUB #2, AC0 ; |494| 
        MOV AC0, T0 ; |494| 
        SFTL T0, #1 ; |494| 
        MOV dbl(*SP(#16)), AC1 ; |494| 
        MOV dbl(*AR3(T0)), AC0 ; |494| 
        CMP AC1 < AC0, TC1 ; |494| 
        BCC $C$L33,TC1 ; |494| 
                                        ; branchcc occurs ; |494| 
$C$DW$L$_susan_corners_quick$49$E:
$C$DW$L$_susan_corners_quick$50$B:
        MOV dbl(*SP(#20)), AC0 ; |494| 
        MOV dbl(*SP(#10)), AC1 ; |494| 
$C$DW$163	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$163, DW_AT_low_pc(0x00)
	.dwattr $C$DW$163, DW_AT_name("__mpyli")
	.dwattr $C$DW$163, DW_AT_TI_call
        CALL #__mpyli ; |494| 
                                        ; call occurs [#__mpyli] ; |494| 
        MOV dbl(*SP(#2)), XAR3
        ADD dbl(*SP(#22)), AC0, AC0 ; |494| 
        SUB #1, AC0 ; |494| 
        MOV AC0, T0 ; |494| 
        SFTL T0, #1 ; |494| 
        MOV dbl(*SP(#16)), AC1 ; |494| 
        MOV dbl(*AR3(T0)), AC0 ; |494| 
        CMP AC1 < AC0, TC1 ; |494| 
        BCC $C$L33,TC1 ; |494| 
                                        ; branchcc occurs ; |494| 
$C$DW$L$_susan_corners_quick$50$E:
$C$DW$L$_susan_corners_quick$51$B:

        MOV dbl(*SP(#10)), AC1 ; |494| 
||      MOV #1, AC0 ; |494| 

        ADD dbl(*SP(#20)), AC0, AC0 ; |494| 
$C$DW$164	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$164, DW_AT_low_pc(0x00)
	.dwattr $C$DW$164, DW_AT_name("__mpyli")
	.dwattr $C$DW$164, DW_AT_TI_call
        CALL #__mpyli ; |494| 
                                        ; call occurs [#__mpyli] ; |494| 
        MOV dbl(*SP(#2)), XAR3
        ADD dbl(*SP(#22)), AC0, AC0 ; |494| 
        SUB #2, AC0 ; |494| 
        MOV AC0, T0 ; |494| 
        SFTL T0, #1 ; |494| 
        MOV dbl(*SP(#16)), AC1 ; |494| 
        MOV dbl(*AR3(T0)), AC0 ; |494| 
        CMP AC1 < AC0, TC1 ; |494| 
        BCC $C$L33,TC1 ; |494| 
                                        ; branchcc occurs ; |494| 
$C$DW$L$_susan_corners_quick$51$E:
$C$DW$L$_susan_corners_quick$52$B:
	.dwpsn	file "./susan.c",line 578,column 25,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MPYMK *SP(#15), #6, AC0 ; |578| 
        MOV AC0, AR1 ; |578| 
        AADD AR1, AR3 ; |578| 
        MOV #0, *AR3(short(#2)) ; |578| 
	.dwpsn	file "./susan.c",line 579,column 25,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MPYMK *SP(#15), #6, AC0 ; |579| 
        MOV AC0, T0 ; |579| 
        MOV *SP(#23), AR1 ; |579| 
        MOV AR1, *AR3(T0) ; |579| 
	.dwpsn	file "./susan.c",line 580,column 25,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MPYMK *SP(#15), #6, AC0 ; |580| 
        MOV AC0, AR1 ; |580| 

        MOV *SP(#21), AR1 ; |580| 
||      AADD AR1, AR3 ; |580| 

        MOV AR1, *AR3(short(#1)) ; |580| 
	.dwpsn	file "./susan.c",line 581,column 25,is_stmt

        MOV #2, AC0 ; |581| 
||      MOV dbl(*SP(#10)), AC1 ; |581| 

        SUB AC0, dbl(*SP(#20)), AC0 ; |581| 
$C$DW$165	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$165, DW_AT_low_pc(0x00)
	.dwattr $C$DW$165, DW_AT_name("__mpyli")
	.dwattr $C$DW$165, DW_AT_TI_call
        CALL #__mpyli ; |581| 
                                        ; call occurs [#__mpyli] ; |581| 
        MOV dbl(*SP(#0)), XAR2
        ADD dbl(*SP(#22)), AC0, AC0 ; |581| 

        SUB #2, AC0 ; |581| 
||      MOV dbl(*SP(#10)), AC1 ; |581| 

        MOV #2, AC0 ; |581| 
||      MOV AC0, AR4 ; |581| 

        SUB AC0, dbl(*SP(#20)), AC0 ; |581| 
$C$DW$166	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$166, DW_AT_low_pc(0x00)
	.dwattr $C$DW$166, DW_AT_name("__mpyli")
	.dwattr $C$DW$166, DW_AT_TI_call
        CALL #__mpyli ; |581| 
                                        ; call occurs [#__mpyli] ; |581| 
        MOV dbl(*SP(#0)), XAR3
        ADD dbl(*SP(#22)), AC0, AC0 ; |581| 
        SUB #1, AC0 ; |581| 
        MOV AC0, AR1 ; |581| 
        MOV AR4, T0 ; |581| 

        AADD AR1, AR3 ; |581| 
||      MOV dbl(*SP(#10)), AC1 ; |581| 

        ADD *AR2(T0), *AR3, AC0 ; |581| 

        MOV #2, AC0 ; |581| 
||      MOV HI(AC0), AR1

        SUB AC0, dbl(*SP(#20)), AC0 ; |581| 
$C$DW$167	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$167, DW_AT_low_pc(0x00)
	.dwattr $C$DW$167, DW_AT_name("__mpyli")
	.dwattr $C$DW$167, DW_AT_TI_call
        CALL #__mpyli ; |581| 
                                        ; call occurs [#__mpyli] ; |581| 
        MOV dbl(*SP(#0)), XAR3
        ADD dbl(*SP(#22)), AC0, AC0 ; |581| 
        MOV AC0, T0 ; |581| 

        MOV #2, AC0 ; |581| 
||      MOV dbl(*SP(#10)), AC1 ; |581| 

        SUB AC0, dbl(*SP(#20)), AC0 ; |581| 
        ADD *AR3(T0), AR1, AR1 ; |581| 
$C$DW$168	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$168, DW_AT_low_pc(0x00)
	.dwattr $C$DW$168, DW_AT_name("__mpyli")
	.dwattr $C$DW$168, DW_AT_TI_call
        CALL #__mpyli ; |581| 
                                        ; call occurs [#__mpyli] ; |581| 
        ADD dbl(*SP(#22)), AC0, AC0 ; |581| 
        MOV dbl(*SP(#0)), XAR3
        ADD #1, AC0 ; |581| 
        MOV AC0, T0 ; |581| 

        MOV #2, AC0 ; |581| 
||      MOV dbl(*SP(#10)), AC1 ; |581| 

        SUB AC0, dbl(*SP(#20)), AC0 ; |581| 
        ADD *AR3(T0), AR1, AR1 ; |581| 
$C$DW$169	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$169, DW_AT_low_pc(0x00)
	.dwattr $C$DW$169, DW_AT_name("__mpyli")
	.dwattr $C$DW$169, DW_AT_TI_call
        CALL #__mpyli ; |581| 
                                        ; call occurs [#__mpyli] ; |581| 
        ADD dbl(*SP(#22)), AC0, AC0 ; |581| 
        MOV dbl(*SP(#0)), XAR3
        ADD #2, AC0 ; |581| 
        MOV AC0, T0 ; |581| 

        MOV #1, AC0 ; |581| 
||      MOV dbl(*SP(#10)), AC1 ; |581| 

        SUB AC0, dbl(*SP(#20)), AC0 ; |581| 
        ADD *AR3(T0), AR1, AR1 ; |581| 
$C$DW$170	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$170, DW_AT_low_pc(0x00)
	.dwattr $C$DW$170, DW_AT_name("__mpyli")
	.dwattr $C$DW$170, DW_AT_TI_call
        CALL #__mpyli ; |581| 
                                        ; call occurs [#__mpyli] ; |581| 
        ADD dbl(*SP(#22)), AC0, AC0 ; |581| 
        MOV dbl(*SP(#0)), XAR3
        SUB #2, AC0 ; |581| 
        MOV AC0, T0 ; |581| 

        MOV #1, AC0 ; |581| 
||      MOV dbl(*SP(#10)), AC1 ; |581| 

        SUB AC0, dbl(*SP(#20)), AC0 ; |581| 
        ADD *AR3(T0), AR1, AR1 ; |581| 
$C$DW$171	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$171, DW_AT_low_pc(0x00)
	.dwattr $C$DW$171, DW_AT_name("__mpyli")
	.dwattr $C$DW$171, DW_AT_TI_call
        CALL #__mpyli ; |581| 
                                        ; call occurs [#__mpyli] ; |581| 
        ADD dbl(*SP(#22)), AC0, AC0 ; |581| 
        MOV dbl(*SP(#0)), XAR3
        SUB #1, AC0 ; |581| 
        MOV AC0, T0 ; |581| 

        MOV #1, AC0 ; |581| 
||      MOV dbl(*SP(#10)), AC1 ; |581| 

        SUB AC0, dbl(*SP(#20)), AC0 ; |581| 
        ADD *AR3(T0), AR1, AR1 ; |581| 
$C$DW$172	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$172, DW_AT_low_pc(0x00)
	.dwattr $C$DW$172, DW_AT_name("__mpyli")
	.dwattr $C$DW$172, DW_AT_TI_call
        CALL #__mpyli ; |581| 
                                        ; call occurs [#__mpyli] ; |581| 
        MOV dbl(*SP(#0)), XAR3
        ADD dbl(*SP(#22)), AC0, AC0 ; |581| 
        MOV AC0, T0 ; |581| 

        MOV #1, AC0 ; |581| 
||      MOV dbl(*SP(#10)), AC1 ; |581| 

        SUB AC0, dbl(*SP(#20)), AC0 ; |581| 
        ADD *AR3(T0), AR1, AR1 ; |581| 
$C$DW$173	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$173, DW_AT_low_pc(0x00)
	.dwattr $C$DW$173, DW_AT_name("__mpyli")
	.dwattr $C$DW$173, DW_AT_TI_call
        CALL #__mpyli ; |581| 
                                        ; call occurs [#__mpyli] ; |581| 
        ADD dbl(*SP(#22)), AC0, AC0 ; |581| 
        MOV dbl(*SP(#0)), XAR3
        ADD #1, AC0 ; |581| 
        MOV AC0, T0 ; |581| 

        MOV #1, AC0 ; |581| 
||      MOV dbl(*SP(#10)), AC1 ; |581| 

        SUB AC0, dbl(*SP(#20)), AC0 ; |581| 
        ADD *AR3(T0), AR1, AR1 ; |581| 
$C$DW$174	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$174, DW_AT_low_pc(0x00)
	.dwattr $C$DW$174, DW_AT_name("__mpyli")
	.dwattr $C$DW$174, DW_AT_TI_call
        CALL #__mpyli ; |581| 
                                        ; call occurs [#__mpyli] ; |581| 
        ADD dbl(*SP(#22)), AC0, AC0 ; |581| 
        MOV dbl(*SP(#0)), XAR3
        ADD #2, AC0 ; |581| 
        MOV AC0, T0 ; |581| 
        MOV dbl(*SP(#10)), AC1 ; |581| 
        MOV dbl(*SP(#20)), AC0 ; |581| 
        ADD *AR3(T0), AR1, AR1 ; |581| 
$C$DW$175	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$175, DW_AT_low_pc(0x00)
	.dwattr $C$DW$175, DW_AT_name("__mpyli")
	.dwattr $C$DW$175, DW_AT_TI_call
        CALL #__mpyli ; |581| 
                                        ; call occurs [#__mpyli] ; |581| 
$C$DW$L$_susan_corners_quick$52$E:
$C$DW$L$_susan_corners_quick$53$B:
        ADD dbl(*SP(#22)), AC0, AC0 ; |581| 
        MOV dbl(*SP(#0)), XAR3
        SUB #2, AC0 ; |581| 
        MOV AC0, T0 ; |581| 
        MOV dbl(*SP(#10)), AC1 ; |581| 
        MOV dbl(*SP(#20)), AC0 ; |581| 
        ADD *AR3(T0), AR1, AR1 ; |581| 
$C$DW$176	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$176, DW_AT_low_pc(0x00)
	.dwattr $C$DW$176, DW_AT_name("__mpyli")
	.dwattr $C$DW$176, DW_AT_TI_call
        CALL #__mpyli ; |581| 
                                        ; call occurs [#__mpyli] ; |581| 
        ADD dbl(*SP(#22)), AC0, AC0 ; |581| 
        MOV dbl(*SP(#0)), XAR3
        SUB #1, AC0 ; |581| 
        MOV AC0, T0 ; |581| 
        MOV dbl(*SP(#10)), AC1 ; |581| 
        MOV dbl(*SP(#20)), AC0 ; |581| 
        ADD *AR3(T0), AR1, AR1 ; |581| 
$C$DW$177	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$177, DW_AT_low_pc(0x00)
	.dwattr $C$DW$177, DW_AT_name("__mpyli")
	.dwattr $C$DW$177, DW_AT_TI_call
        CALL #__mpyli ; |581| 
                                        ; call occurs [#__mpyli] ; |581| 
        MOV dbl(*SP(#0)), XAR3
        ADD dbl(*SP(#22)), AC0, AC0 ; |581| 
        MOV AC0, T0 ; |581| 
        MOV dbl(*SP(#10)), AC1 ; |581| 
        MOV dbl(*SP(#20)), AC0 ; |581| 
        ADD *AR3(T0), AR1, AR1 ; |581| 
$C$DW$178	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$178, DW_AT_low_pc(0x00)
	.dwattr $C$DW$178, DW_AT_name("__mpyli")
	.dwattr $C$DW$178, DW_AT_TI_call
        CALL #__mpyli ; |581| 
                                        ; call occurs [#__mpyli] ; |581| 
        ADD dbl(*SP(#22)), AC0, AC0 ; |581| 
        MOV dbl(*SP(#0)), XAR3
        ADD #1, AC0 ; |581| 
        MOV AC0, T0 ; |581| 
        MOV dbl(*SP(#10)), AC1 ; |581| 
        MOV dbl(*SP(#20)), AC0 ; |581| 
        ADD *AR3(T0), AR1, AR1 ; |581| 
$C$DW$179	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$179, DW_AT_low_pc(0x00)
	.dwattr $C$DW$179, DW_AT_name("__mpyli")
	.dwattr $C$DW$179, DW_AT_TI_call
        CALL #__mpyli ; |581| 
                                        ; call occurs [#__mpyli] ; |581| 
        ADD dbl(*SP(#22)), AC0, AC0 ; |581| 
        MOV dbl(*SP(#0)), XAR3
        ADD #2, AC0 ; |581| 
        MOV AC0, T0 ; |581| 

        MOV #1, AC0 ; |581| 
||      MOV dbl(*SP(#10)), AC1 ; |581| 

        ADD dbl(*SP(#20)), AC0, AC0 ; |581| 
        ADD *AR3(T0), AR1, AR1 ; |581| 
$C$DW$180	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$180, DW_AT_low_pc(0x00)
	.dwattr $C$DW$180, DW_AT_name("__mpyli")
	.dwattr $C$DW$180, DW_AT_TI_call
        CALL #__mpyli ; |581| 
                                        ; call occurs [#__mpyli] ; |581| 
        ADD dbl(*SP(#22)), AC0, AC0 ; |581| 
        MOV dbl(*SP(#0)), XAR3
        SUB #2, AC0 ; |581| 
        MOV AC0, T0 ; |581| 

        MOV #1, AC0 ; |581| 
||      MOV dbl(*SP(#10)), AC1 ; |581| 

        ADD dbl(*SP(#20)), AC0, AC0 ; |581| 
        ADD *AR3(T0), AR1, AR1 ; |581| 
$C$DW$181	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$181, DW_AT_low_pc(0x00)
	.dwattr $C$DW$181, DW_AT_name("__mpyli")
	.dwattr $C$DW$181, DW_AT_TI_call
        CALL #__mpyli ; |581| 
                                        ; call occurs [#__mpyli] ; |581| 
        ADD dbl(*SP(#22)), AC0, AC0 ; |581| 
        MOV dbl(*SP(#0)), XAR3
        SUB #1, AC0 ; |581| 
        MOV AC0, T0 ; |581| 

        MOV #1, AC0 ; |581| 
||      MOV dbl(*SP(#10)), AC1 ; |581| 

        ADD dbl(*SP(#20)), AC0, AC0 ; |581| 
        ADD *AR3(T0), AR1, AR1 ; |581| 
$C$DW$182	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$182, DW_AT_low_pc(0x00)
	.dwattr $C$DW$182, DW_AT_name("__mpyli")
	.dwattr $C$DW$182, DW_AT_TI_call
        CALL #__mpyli ; |581| 
                                        ; call occurs [#__mpyli] ; |581| 
        MOV dbl(*SP(#0)), XAR3
        ADD dbl(*SP(#22)), AC0, AC0 ; |581| 
        MOV AC0, T0 ; |581| 

        MOV #1, AC0 ; |581| 
||      MOV dbl(*SP(#10)), AC1 ; |581| 

        ADD dbl(*SP(#20)), AC0, AC0 ; |581| 
        ADD *AR3(T0), AR1, AR1 ; |581| 
$C$DW$183	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$183, DW_AT_low_pc(0x00)
	.dwattr $C$DW$183, DW_AT_name("__mpyli")
	.dwattr $C$DW$183, DW_AT_TI_call
        CALL #__mpyli ; |581| 
                                        ; call occurs [#__mpyli] ; |581| 
        ADD dbl(*SP(#22)), AC0, AC0 ; |581| 
        MOV dbl(*SP(#0)), XAR3
        ADD #1, AC0 ; |581| 
        MOV AC0, T0 ; |581| 

        MOV #1, AC0 ; |581| 
||      MOV dbl(*SP(#10)), AC1 ; |581| 

        ADD dbl(*SP(#20)), AC0, AC0 ; |581| 
        ADD *AR3(T0), AR1, AR1 ; |581| 
$C$DW$184	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$184, DW_AT_low_pc(0x00)
	.dwattr $C$DW$184, DW_AT_name("__mpyli")
	.dwattr $C$DW$184, DW_AT_TI_call
        CALL #__mpyli ; |581| 
                                        ; call occurs [#__mpyli] ; |581| 
        ADD dbl(*SP(#22)), AC0, AC0 ; |581| 
        MOV dbl(*SP(#0)), XAR3
        ADD #2, AC0 ; |581| 
        MOV AC0, T0 ; |581| 

        MOV #2, AC0 ; |581| 
||      MOV dbl(*SP(#10)), AC1 ; |581| 

        ADD dbl(*SP(#20)), AC0, AC0 ; |581| 
        ADD *AR3(T0), AR1, AR1 ; |581| 
$C$DW$185	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$185, DW_AT_low_pc(0x00)
	.dwattr $C$DW$185, DW_AT_name("__mpyli")
	.dwattr $C$DW$185, DW_AT_TI_call
        CALL #__mpyli ; |581| 
                                        ; call occurs [#__mpyli] ; |581| 
        MOV dbl(*SP(#0)), XAR3
        ADD dbl(*SP(#22)), AC0, AC0 ; |581| 
        SUB #2, AC0 ; |581| 
        MOV AC0, T0 ; |581| 
        MOV dbl(*SP(#10)), AC1 ; |581| 

        ADD *AR3(T0), AR1, AR1 ; |581| 
||      MOV #2, AC0 ; |581| 

        ADD dbl(*SP(#20)), AC0, AC0 ; |581| 
$C$DW$186	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$186, DW_AT_low_pc(0x00)
	.dwattr $C$DW$186, DW_AT_name("__mpyli")
	.dwattr $C$DW$186, DW_AT_TI_call
        CALL #__mpyli ; |581| 
                                        ; call occurs [#__mpyli] ; |581| 
$C$DW$L$_susan_corners_quick$53$E:
$C$DW$L$_susan_corners_quick$54$B:
        ADD dbl(*SP(#22)), AC0, AC0 ; |581| 
        MOV dbl(*SP(#0)), XAR3
        SUB #1, AC0 ; |581| 
        MOV AC0, T0 ; |581| 

        MOV #2, AC0 ; |581| 
||      MOV dbl(*SP(#10)), AC1 ; |581| 

        ADD dbl(*SP(#20)), AC0, AC0 ; |581| 
        ADD *AR3(T0), AR1, AR1 ; |581| 
$C$DW$187	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$187, DW_AT_low_pc(0x00)
	.dwattr $C$DW$187, DW_AT_name("__mpyli")
	.dwattr $C$DW$187, DW_AT_TI_call
        CALL #__mpyli ; |581| 
                                        ; call occurs [#__mpyli] ; |581| 
        MOV dbl(*SP(#0)), XAR3
        ADD dbl(*SP(#22)), AC0, AC0 ; |581| 
        MOV AC0, T0 ; |581| 

        MOV #2, AC0 ; |581| 
||      MOV dbl(*SP(#10)), AC1 ; |581| 

        ADD dbl(*SP(#20)), AC0, AC0 ; |581| 
        ADD *AR3(T0), AR1, AR1 ; |581| 
$C$DW$188	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$188, DW_AT_low_pc(0x00)
	.dwattr $C$DW$188, DW_AT_name("__mpyli")
	.dwattr $C$DW$188, DW_AT_TI_call
        CALL #__mpyli ; |581| 
                                        ; call occurs [#__mpyli] ; |581| 
        ADD dbl(*SP(#22)), AC0, AC0 ; |581| 
        MOV dbl(*SP(#0)), XAR3
        ADD #1, AC0 ; |581| 
        MOV AC0, T0 ; |581| 

        MOV #2, AC0 ; |581| 
||      MOV dbl(*SP(#10)), AC1 ; |581| 

        ADD dbl(*SP(#20)), AC0, AC0 ; |581| 
        ADD *AR3(T0), AR1, AR1 ; |581| 
$C$DW$189	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$189, DW_AT_low_pc(0x00)
	.dwattr $C$DW$189, DW_AT_name("__mpyli")
	.dwattr $C$DW$189, DW_AT_TI_call
        CALL #__mpyli ; |581| 
                                        ; call occurs [#__mpyli] ; |581| 
        MOV dbl(*SP(#0)), XAR3
        ADD dbl(*SP(#22)), AC0, AC0 ; |581| 
        ADD #2, AC0 ; |581| 
        MOV AC0, T0 ; |581| 
        ADD *AR3(T0), AR1, AR1 ; |581| 
        AND #0xffff, AR1, AC0 ; |581| 
        MOV AC0, dbl(*SP(#16)) ; |581| 
	.dwpsn	file "./susan.c",line 587,column 25,is_stmt
        MOV #25, AC1 ; |587| 
        MOV dbl(*SP(#16)), AC0 ; |587| 
$C$DW$190	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$190, DW_AT_low_pc(0x00)
	.dwattr $C$DW$190, DW_AT_name("__divli")
	.dwattr $C$DW$190, DW_AT_TI_call
        CALL #__divli ; |587| 
                                        ; call occurs [#__divli] ; |587| 
        MOV dbl(*SP(#8)), XAR3
        MPYMK *SP(#15), #6, AC1 ; |587| 
        MOV AC1, AR1 ; |587| 
        AADD AR1, AR3 ; |587| 
        MOV AC0, *AR3(short(#5)) ; |587| 
	.dwpsn	file "./susan.c",line 589,column 25,is_stmt

        MOV dbl(*SP(#10)), AC1 ; |589| 
||      MOV #2, AC0 ; |589| 

        SUB AC0, dbl(*SP(#20)), AC0 ; |589| 
$C$DW$191	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$191, DW_AT_low_pc(0x00)
	.dwattr $C$DW$191, DW_AT_name("__mpyli")
	.dwattr $C$DW$191, DW_AT_TI_call
        CALL #__mpyli ; |589| 
                                        ; call occurs [#__mpyli] ; |589| 
        MOV dbl(*SP(#0)), XAR2
        ADD dbl(*SP(#22)), AC0, AC0 ; |589| 

        ADD #2, AC0 ; |589| 
||      MOV dbl(*SP(#10)), AC1 ; |589| 

        MOV #1, AC0 ; |589| 
||      MOV AC0, AR4 ; |589| 

        SUB AC0, dbl(*SP(#20)), AC0 ; |589| 
$C$DW$192	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$192, DW_AT_low_pc(0x00)
	.dwattr $C$DW$192, DW_AT_name("__mpyli")
	.dwattr $C$DW$192, DW_AT_TI_call
        CALL #__mpyli ; |589| 
                                        ; call occurs [#__mpyli] ; |589| 
        MOV dbl(*SP(#0)), XAR3
        ADD dbl(*SP(#22)), AC0, AC0 ; |589| 
        ADD #2, AC0 ; |589| 
        MOV AC0, AR1 ; |589| 
        MOV AR4, T0 ; |589| 

        AADD AR1, AR3 ; |589| 
||      MOV dbl(*SP(#10)), AC1 ; |589| 

        ADD *AR2(T0), *AR3, AC0 ; |589| 

        MOV dbl(*SP(#20)), AC0 ; |589| 
||      MOV HI(AC0), AR1

$C$DW$193	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$193, DW_AT_low_pc(0x00)
	.dwattr $C$DW$193, DW_AT_name("__mpyli")
	.dwattr $C$DW$193, DW_AT_TI_call
        CALL #__mpyli ; |589| 
                                        ; call occurs [#__mpyli] ; |589| 
        MOV dbl(*SP(#0)), XAR3
        ADD dbl(*SP(#22)), AC0, AC0 ; |589| 
        ADD #2, AC0 ; |589| 
        MOV AC0, T0 ; |589| 

        MOV #1, AC0 ; |589| 
||      MOV dbl(*SP(#10)), AC1 ; |589| 

        ADD dbl(*SP(#20)), AC0, AC0 ; |589| 
        ADD *AR3(T0), AR1, AR1 ; |589| 
$C$DW$194	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$194, DW_AT_low_pc(0x00)
	.dwattr $C$DW$194, DW_AT_name("__mpyli")
	.dwattr $C$DW$194, DW_AT_TI_call
        CALL #__mpyli ; |589| 
                                        ; call occurs [#__mpyli] ; |589| 
        MOV dbl(*SP(#0)), XAR3
        ADD dbl(*SP(#22)), AC0, AC0 ; |589| 
        ADD #2, AC0 ; |589| 
        MOV AC0, T0 ; |589| 

        MOV #2, AC0 ; |589| 
||      MOV dbl(*SP(#10)), AC1 ; |589| 

        ADD dbl(*SP(#20)), AC0, AC0 ; |589| 
        ADD *AR3(T0), AR1, AR1 ; |589| 
$C$DW$195	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$195, DW_AT_low_pc(0x00)
	.dwattr $C$DW$195, DW_AT_name("__mpyli")
	.dwattr $C$DW$195, DW_AT_TI_call
        CALL #__mpyli ; |589| 
                                        ; call occurs [#__mpyli] ; |589| 
        MOV dbl(*SP(#0)), XAR3
        ADD dbl(*SP(#22)), AC0, AC0 ; |589| 
        ADD #2, AC0 ; |589| 
        MOV AC0, T0 ; |589| 

        MOV #2, AC0 ; |589| 
||      MOV dbl(*SP(#10)), AC1 ; |589| 

        SUB AC0, dbl(*SP(#20)), AC0 ; |589| 
        ADD *AR3(T0), AR1, AC2 ; |589| 
$C$DW$196	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$196, DW_AT_low_pc(0x00)
	.dwattr $C$DW$196, DW_AT_name("__mpyli")
	.dwattr $C$DW$196, DW_AT_TI_call
        CALL #__mpyli ; |589| 
                                        ; call occurs [#__mpyli] ; |589| 
        MOV dbl(*SP(#0)), XAR3
        ADD dbl(*SP(#22)), AC0, AC0 ; |589| 
        SUB #2, AC0 ; |589| 
        MOV AC0, T0 ; |589| 
        MOV dbl(*SP(#10)), AC1 ; |589| 

        SUB uns(*AR3(T0)), AC2, AC2 ; |589| 
||      MOV #1, AC0 ; |589| 

        SUB AC0, dbl(*SP(#20)), AC0 ; |589| 
$C$DW$197	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$197, DW_AT_low_pc(0x00)
	.dwattr $C$DW$197, DW_AT_name("__mpyli")
	.dwattr $C$DW$197, DW_AT_TI_call
        CALL #__mpyli ; |589| 
                                        ; call occurs [#__mpyli] ; |589| 
$C$DW$L$_susan_corners_quick$54$E:
$C$DW$L$_susan_corners_quick$55$B:
        ADD dbl(*SP(#22)), AC0, AC0 ; |589| 
        MOV dbl(*SP(#0)), XAR3
        SUB #2, AC0 ; |589| 
        MOV AC0, T0 ; |589| 
        MOV dbl(*SP(#10)), AC1 ; |589| 
        MOV dbl(*SP(#20)), AC0 ; |589| 
        SUB uns(*AR3(T0)), AC2, AC2 ; |589| 
$C$DW$198	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$198, DW_AT_low_pc(0x00)
	.dwattr $C$DW$198, DW_AT_name("__mpyli")
	.dwattr $C$DW$198, DW_AT_TI_call
        CALL #__mpyli ; |589| 
                                        ; call occurs [#__mpyli] ; |589| 
        ADD dbl(*SP(#22)), AC0, AC0 ; |589| 
        MOV dbl(*SP(#0)), XAR3
        SUB #2, AC0 ; |589| 
        MOV AC0, T0 ; |589| 

        MOV #1, AC0 ; |589| 
||      MOV dbl(*SP(#10)), AC1 ; |589| 

        ADD dbl(*SP(#20)), AC0, AC0 ; |589| 
        SUB uns(*AR3(T0)), AC2, AC2 ; |589| 
$C$DW$199	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$199, DW_AT_low_pc(0x00)
	.dwattr $C$DW$199, DW_AT_name("__mpyli")
	.dwattr $C$DW$199, DW_AT_TI_call
        CALL #__mpyli ; |589| 
                                        ; call occurs [#__mpyli] ; |589| 
        ADD dbl(*SP(#22)), AC0, AC0 ; |589| 
        MOV dbl(*SP(#0)), XAR3
        SUB #2, AC0 ; |589| 
        MOV AC0, T0 ; |589| 

        MOV #2, AC0 ; |589| 
||      MOV dbl(*SP(#10)), AC1 ; |589| 

        ADD dbl(*SP(#20)), AC0, AC0 ; |589| 
        SUB uns(*AR3(T0)), AC2, AC2 ; |589| 
$C$DW$200	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$200, DW_AT_low_pc(0x00)
	.dwattr $C$DW$200, DW_AT_name("__mpyli")
	.dwattr $C$DW$200, DW_AT_TI_call
        CALL #__mpyli ; |589| 
                                        ; call occurs [#__mpyli] ; |589| 
        MOV dbl(*SP(#0)), XAR3
        ADD dbl(*SP(#22)), AC0, AC0 ; |589| 
        SUB #2, AC0 ; |589| 
        MOV AC0, T0 ; |589| 
        SUB uns(*AR3(T0)), AC2, AC0 ; |589| 
        AND #0xffff, AC0, AC0 ; |589| 
        MOV AC0, dbl(*SP(#16)) ; |589| 
	.dwpsn	file "./susan.c",line 591,column 25,is_stmt

        MOV dbl(*SP(#10)), AC1 ; |591| 
||      MOV #2, AC0 ; |591| 

        SUB AC0, dbl(*SP(#20)), AC0 ; |591| 
$C$DW$201	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$201, DW_AT_low_pc(0x00)
	.dwattr $C$DW$201, DW_AT_name("__mpyli")
	.dwattr $C$DW$201, DW_AT_TI_call
        CALL #__mpyli ; |591| 
                                        ; call occurs [#__mpyli] ; |591| 
        MOV dbl(*SP(#0)), XAR2
        ADD dbl(*SP(#22)), AC0, AC0 ; |591| 

        SUB #1, AC0 ; |591| 
||      MOV dbl(*SP(#10)), AC1 ; |591| 

        MOV #1, AC0 ; |591| 
||      MOV AC0, AR4 ; |591| 

        SUB AC0, dbl(*SP(#20)), AC0 ; |591| 
$C$DW$202	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$202, DW_AT_low_pc(0x00)
	.dwattr $C$DW$202, DW_AT_name("__mpyli")
	.dwattr $C$DW$202, DW_AT_TI_call
        CALL #__mpyli ; |591| 
                                        ; call occurs [#__mpyli] ; |591| 
        MOV dbl(*SP(#0)), XAR3
        ADD dbl(*SP(#22)), AC0, AC0 ; |591| 
        SUB #1, AC0 ; |591| 
        MOV AC0, AR1 ; |591| 
        MOV AR4, T0 ; |591| 

        AADD AR1, AR3 ; |591| 
||      MOV dbl(*SP(#10)), AC1 ; |591| 

        ADD *AR2(T0), *AR3, AC0 ; |591| 

        MOV dbl(*SP(#20)), AC0 ; |591| 
||      MOV HI(AC0), AR1

$C$DW$203	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$203, DW_AT_low_pc(0x00)
	.dwattr $C$DW$203, DW_AT_name("__mpyli")
	.dwattr $C$DW$203, DW_AT_TI_call
        CALL #__mpyli ; |591| 
                                        ; call occurs [#__mpyli] ; |591| 
        ADD dbl(*SP(#22)), AC0, AC0 ; |591| 
        MOV dbl(*SP(#0)), XAR3
        SUB #1, AC0 ; |591| 
        MOV AC0, T0 ; |591| 

        MOV #1, AC0 ; |591| 
||      MOV dbl(*SP(#10)), AC1 ; |591| 

        ADD dbl(*SP(#20)), AC0, AC0 ; |591| 
        ADD *AR3(T0), AR1, AR1 ; |591| 
$C$DW$204	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$204, DW_AT_low_pc(0x00)
	.dwattr $C$DW$204, DW_AT_name("__mpyli")
	.dwattr $C$DW$204, DW_AT_TI_call
        CALL #__mpyli ; |591| 
                                        ; call occurs [#__mpyli] ; |591| 
        ADD dbl(*SP(#22)), AC0, AC0 ; |591| 
        MOV dbl(*SP(#0)), XAR3
        SUB #1, AC0 ; |591| 
        MOV AC0, T0 ; |591| 

        MOV #2, AC0 ; |591| 
||      MOV dbl(*SP(#10)), AC1 ; |591| 

        ADD dbl(*SP(#20)), AC0, AC0 ; |591| 
        ADD *AR3(T0), AR1, AR1 ; |591| 
$C$DW$205	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$205, DW_AT_low_pc(0x00)
	.dwattr $C$DW$205, DW_AT_name("__mpyli")
	.dwattr $C$DW$205, DW_AT_TI_call
        CALL #__mpyli ; |591| 
                                        ; call occurs [#__mpyli] ; |591| 
        ADD dbl(*SP(#22)), AC0, AC0 ; |591| 
        MOV dbl(*SP(#0)), XAR3
        SUB #1, AC0 ; |591| 
        MOV AC0, T0 ; |591| 

        MOV #2, AC0 ; |591| 
||      MOV dbl(*SP(#10)), AC1 ; |591| 

        SUB AC0, dbl(*SP(#20)), AC0 ; |591| 
        ADD *AR3(T0), AR1, AR1 ; |591| 
$C$DW$206	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$206, DW_AT_low_pc(0x00)
	.dwattr $C$DW$206, DW_AT_name("__mpyli")
	.dwattr $C$DW$206, DW_AT_TI_call
        CALL #__mpyli ; |591| 
                                        ; call occurs [#__mpyli] ; |591| 
        ADD dbl(*SP(#22)), AC0, AC0 ; |591| 
        MOV dbl(*SP(#0)), XAR3
        ADD #1, AC0 ; |591| 
        MOV AC0, T0 ; |591| 
        MOV dbl(*SP(#10)), AC1 ; |591| 
        MOV dbl(*SP(#16)), AC0 ; |591| 
        ADD dbl(*SP(#16)), AC0, AC0 ; |591| 

        MOV #1, AC0 ; |591| 
||      ADD uns(*AR3(T0)), AC0, AC2 ; |591| 

        SUB AC0, dbl(*SP(#20)), AC0 ; |591| 
$C$DW$207	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$207, DW_AT_low_pc(0x00)
	.dwattr $C$DW$207, DW_AT_name("__mpyli")
	.dwattr $C$DW$207, DW_AT_TI_call
        CALL #__mpyli ; |591| 
                                        ; call occurs [#__mpyli] ; |591| 
        ADD dbl(*SP(#22)), AC0, AC0 ; |591| 
        MOV dbl(*SP(#0)), XAR3
        ADD #1, AC0 ; |591| 
        MOV AC0, T0 ; |591| 
        MOV dbl(*SP(#10)), AC1 ; |591| 
        MOV dbl(*SP(#20)), AC0 ; |591| 
        ADD uns(*AR3(T0)), AC2, AC2 ; |591| 
$C$DW$208	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$208, DW_AT_low_pc(0x00)
	.dwattr $C$DW$208, DW_AT_name("__mpyli")
	.dwattr $C$DW$208, DW_AT_TI_call
        CALL #__mpyli ; |591| 
                                        ; call occurs [#__mpyli] ; |591| 
        AND #0xffff, AR1, AC3 ; |591| 
$C$DW$L$_susan_corners_quick$55$E:
$C$DW$L$_susan_corners_quick$56$B:
        ADD dbl(*SP(#22)), AC0, AC0 ; |591| 
        MOV dbl(*SP(#0)), XAR3
        ADD #1, AC0 ; |591| 
        MOV AC0, T0 ; |591| 

        MOV #1, AC0 ; |591| 
||      MOV dbl(*SP(#10)), AC1 ; |591| 

        ADD dbl(*SP(#20)), AC0, AC0 ; |591| 
        ADD uns(*AR3(T0)), AC2, AC2 ; |591| 
$C$DW$209	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$209, DW_AT_low_pc(0x00)
	.dwattr $C$DW$209, DW_AT_name("__mpyli")
	.dwattr $C$DW$209, DW_AT_TI_call
        CALL #__mpyli ; |591| 
                                        ; call occurs [#__mpyli] ; |591| 
        ADD dbl(*SP(#22)), AC0, AC0 ; |591| 
        MOV dbl(*SP(#0)), XAR3
        ADD #1, AC0 ; |591| 
        MOV AC0, T0 ; |591| 

        MOV #2, AC0 ; |591| 
||      MOV dbl(*SP(#10)), AC1 ; |591| 

        ADD dbl(*SP(#20)), AC0, AC0 ; |591| 
        ADD uns(*AR3(T0)), AC2, AC2 ; |591| 
$C$DW$210	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$210, DW_AT_low_pc(0x00)
	.dwattr $C$DW$210, DW_AT_name("__mpyli")
	.dwattr $C$DW$210, DW_AT_TI_call
        CALL #__mpyli ; |591| 
                                        ; call occurs [#__mpyli] ; |591| 
        MOV dbl(*SP(#0)), XAR3
        ADD dbl(*SP(#22)), AC0, AC0 ; |591| 
        ADD #1, AC0 ; |591| 
        MOV AC0, T0 ; |591| 
        ADD uns(*AR3(T0)), AC2, AC0 ; |591| 
        SUB AC3, AC0 ; |591| 
        MOV AC0, dbl(*SP(#16)) ; |591| 
	.dwpsn	file "./susan.c",line 594,column 25,is_stmt

        MOV dbl(*SP(#10)), AC1 ; |594| 
||      MOV #2, AC0 ; |594| 

        ADD dbl(*SP(#20)), AC0, AC0 ; |594| 
$C$DW$211	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$211, DW_AT_low_pc(0x00)
	.dwattr $C$DW$211, DW_AT_name("__mpyli")
	.dwattr $C$DW$211, DW_AT_TI_call
        CALL #__mpyli ; |594| 
                                        ; call occurs [#__mpyli] ; |594| 
        MOV dbl(*SP(#0)), XAR2
        ADD dbl(*SP(#22)), AC0, AC0 ; |594| 

        SUB #2, AC0 ; |594| 
||      MOV dbl(*SP(#10)), AC1 ; |594| 

        MOV #2, AC0 ; |594| 
||      MOV AC0, AR4 ; |594| 

        ADD dbl(*SP(#20)), AC0, AC0 ; |594| 
$C$DW$212	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$212, DW_AT_low_pc(0x00)
	.dwattr $C$DW$212, DW_AT_name("__mpyli")
	.dwattr $C$DW$212, DW_AT_TI_call
        CALL #__mpyli ; |594| 
                                        ; call occurs [#__mpyli] ; |594| 
        MOV dbl(*SP(#0)), XAR3
        ADD dbl(*SP(#22)), AC0, AC0 ; |594| 
        SUB #1, AC0 ; |594| 
        MOV AC0, AR1 ; |594| 
        MOV AR4, T0 ; |594| 

        AADD AR1, AR3 ; |594| 
||      MOV dbl(*SP(#10)), AC1 ; |594| 

        ADD *AR2(T0), *AR3, AC0 ; |594| 

        MOV #2, AC0 ; |594| 
||      MOV HI(AC0), AR1

        ADD dbl(*SP(#20)), AC0, AC0 ; |594| 
$C$DW$213	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$213, DW_AT_low_pc(0x00)
	.dwattr $C$DW$213, DW_AT_name("__mpyli")
	.dwattr $C$DW$213, DW_AT_TI_call
        CALL #__mpyli ; |594| 
                                        ; call occurs [#__mpyli] ; |594| 
        MOV dbl(*SP(#0)), XAR3
        ADD dbl(*SP(#22)), AC0, AC0 ; |594| 
        MOV AC0, T0 ; |594| 

        MOV #2, AC0 ; |594| 
||      MOV dbl(*SP(#10)), AC1 ; |594| 

        ADD dbl(*SP(#20)), AC0, AC0 ; |594| 
        ADD *AR3(T0), AR1, AR1 ; |594| 
$C$DW$214	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$214, DW_AT_low_pc(0x00)
	.dwattr $C$DW$214, DW_AT_name("__mpyli")
	.dwattr $C$DW$214, DW_AT_TI_call
        CALL #__mpyli ; |594| 
                                        ; call occurs [#__mpyli] ; |594| 
        ADD dbl(*SP(#22)), AC0, AC0 ; |594| 
        MOV dbl(*SP(#0)), XAR3
        ADD #1, AC0 ; |594| 
        MOV AC0, T0 ; |594| 

        MOV #2, AC0 ; |594| 
||      MOV dbl(*SP(#10)), AC1 ; |594| 

        ADD dbl(*SP(#20)), AC0, AC0 ; |594| 
        ADD *AR3(T0), AR1, AR1 ; |594| 
$C$DW$215	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$215, DW_AT_low_pc(0x00)
	.dwattr $C$DW$215, DW_AT_name("__mpyli")
	.dwattr $C$DW$215, DW_AT_TI_call
        CALL #__mpyli ; |594| 
                                        ; call occurs [#__mpyli] ; |594| 
        ADD dbl(*SP(#22)), AC0, AC0 ; |594| 
        MOV dbl(*SP(#0)), XAR3
        ADD #2, AC0 ; |594| 
        MOV AC0, T0 ; |594| 

        MOV #2, AC0 ; |594| 
||      MOV dbl(*SP(#10)), AC1 ; |594| 

        SUB AC0, dbl(*SP(#20)), AC0 ; |594| 
        ADD *AR3(T0), AR1, AC2 ; |594| 
$C$DW$216	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$216, DW_AT_low_pc(0x00)
	.dwattr $C$DW$216, DW_AT_name("__mpyli")
	.dwattr $C$DW$216, DW_AT_TI_call
        CALL #__mpyli ; |594| 
                                        ; call occurs [#__mpyli] ; |594| 
        ADD dbl(*SP(#22)), AC0, AC0 ; |594| 
        MOV dbl(*SP(#0)), XAR3
        SUB #2, AC0 ; |594| 
        MOV AC0, T0 ; |594| 

        MOV #2, AC0 ; |594| 
||      MOV dbl(*SP(#10)), AC1 ; |594| 

        SUB AC0, dbl(*SP(#20)), AC0 ; |594| 
        SUB uns(*AR3(T0)), AC2, AC2 ; |594| 
$C$DW$217	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$217, DW_AT_low_pc(0x00)
	.dwattr $C$DW$217, DW_AT_name("__mpyli")
	.dwattr $C$DW$217, DW_AT_TI_call
        CALL #__mpyli ; |594| 
                                        ; call occurs [#__mpyli] ; |594| 
        ADD dbl(*SP(#22)), AC0, AC0 ; |594| 
        MOV dbl(*SP(#0)), XAR3
        SUB #1, AC0 ; |594| 
        MOV AC0, T0 ; |594| 

        MOV #2, AC0 ; |594| 
||      MOV dbl(*SP(#10)), AC1 ; |594| 

        SUB AC0, dbl(*SP(#20)), AC0 ; |594| 
        SUB uns(*AR3(T0)), AC2, AC2 ; |594| 
$C$DW$218	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$218, DW_AT_low_pc(0x00)
	.dwattr $C$DW$218, DW_AT_name("__mpyli")
	.dwattr $C$DW$218, DW_AT_TI_call
        CALL #__mpyli ; |594| 
                                        ; call occurs [#__mpyli] ; |594| 
        MOV dbl(*SP(#0)), XAR3
        ADD dbl(*SP(#22)), AC0, AC0 ; |594| 
        MOV AC0, T0 ; |594| 
        MOV dbl(*SP(#10)), AC1 ; |594| 

        SUB uns(*AR3(T0)), AC2, AC2 ; |594| 
||      MOV #2, AC0 ; |594| 

        SUB AC0, dbl(*SP(#20)), AC0 ; |594| 
$C$DW$219	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$219, DW_AT_low_pc(0x00)
	.dwattr $C$DW$219, DW_AT_name("__mpyli")
	.dwattr $C$DW$219, DW_AT_TI_call
        CALL #__mpyli ; |594| 
                                        ; call occurs [#__mpyli] ; |594| 
$C$DW$L$_susan_corners_quick$56$E:
$C$DW$L$_susan_corners_quick$57$B:
        ADD dbl(*SP(#22)), AC0, AC0 ; |594| 
        MOV dbl(*SP(#0)), XAR3
        ADD #1, AC0 ; |594| 
        MOV AC0, T0 ; |594| 

        MOV #2, AC0 ; |594| 
||      MOV dbl(*SP(#10)), AC1 ; |594| 

        SUB AC0, dbl(*SP(#20)), AC0 ; |594| 
        SUB uns(*AR3(T0)), AC2, AC2 ; |594| 
$C$DW$220	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$220, DW_AT_low_pc(0x00)
	.dwattr $C$DW$220, DW_AT_name("__mpyli")
	.dwattr $C$DW$220, DW_AT_TI_call
        CALL #__mpyli ; |594| 
                                        ; call occurs [#__mpyli] ; |594| 
        MOV dbl(*SP(#0)), XAR3
        ADD dbl(*SP(#22)), AC0, AC0 ; |594| 
        ADD #2, AC0 ; |594| 
        MOV AC0, T0 ; |594| 
        SUB uns(*AR3(T0)), AC2, AC0 ; |594| 
        AND #0xffff, AC0, AC0 ; |594| 
        MOV AC0, dbl(*SP(#18)) ; |594| 
	.dwpsn	file "./susan.c",line 596,column 25,is_stmt

        MOV dbl(*SP(#10)), AC1 ; |596| 
||      MOV #1, AC0 ; |596| 

        SUB AC0, dbl(*SP(#20)), AC0 ; |596| 
$C$DW$221	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$221, DW_AT_low_pc(0x00)
	.dwattr $C$DW$221, DW_AT_name("__mpyli")
	.dwattr $C$DW$221, DW_AT_TI_call
        CALL #__mpyli ; |596| 
                                        ; call occurs [#__mpyli] ; |596| 
        MOV dbl(*SP(#0)), XAR2
        ADD dbl(*SP(#22)), AC0, AC0 ; |596| 

        SUB #2, AC0 ; |596| 
||      MOV dbl(*SP(#10)), AC1 ; |596| 

        MOV #1, AC0 ; |596| 
||      MOV AC0, AR4 ; |596| 

        SUB AC0, dbl(*SP(#20)), AC0 ; |596| 
$C$DW$222	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$222, DW_AT_low_pc(0x00)
	.dwattr $C$DW$222, DW_AT_name("__mpyli")
	.dwattr $C$DW$222, DW_AT_TI_call
        CALL #__mpyli ; |596| 
                                        ; call occurs [#__mpyli] ; |596| 
        MOV dbl(*SP(#0)), XAR3
        ADD dbl(*SP(#22)), AC0, AC0 ; |596| 
        SUB #1, AC0 ; |596| 
        MOV AC0, AR1 ; |596| 
        MOV AR4, T0 ; |596| 

        AADD AR1, AR3 ; |596| 
||      MOV dbl(*SP(#10)), AC1 ; |596| 

        ADD *AR2(T0), *AR3, AC0 ; |596| 

        MOV #1, AC0 ; |596| 
||      MOV HI(AC0), AR1

        SUB AC0, dbl(*SP(#20)), AC0 ; |596| 
$C$DW$223	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$223, DW_AT_low_pc(0x00)
	.dwattr $C$DW$223, DW_AT_name("__mpyli")
	.dwattr $C$DW$223, DW_AT_TI_call
        CALL #__mpyli ; |596| 
                                        ; call occurs [#__mpyli] ; |596| 
        MOV dbl(*SP(#0)), XAR3
        ADD dbl(*SP(#22)), AC0, AC0 ; |596| 
        MOV AC0, T0 ; |596| 

        MOV #1, AC0 ; |596| 
||      MOV dbl(*SP(#10)), AC1 ; |596| 

        SUB AC0, dbl(*SP(#20)), AC0 ; |596| 
        ADD *AR3(T0), AR1, AR1 ; |596| 
$C$DW$224	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$224, DW_AT_low_pc(0x00)
	.dwattr $C$DW$224, DW_AT_name("__mpyli")
	.dwattr $C$DW$224, DW_AT_TI_call
        CALL #__mpyli ; |596| 
                                        ; call occurs [#__mpyli] ; |596| 
        ADD dbl(*SP(#22)), AC0, AC0 ; |596| 
        MOV dbl(*SP(#0)), XAR3
        ADD #1, AC0 ; |596| 
        MOV AC0, T0 ; |596| 

        MOV #1, AC0 ; |596| 
||      MOV dbl(*SP(#10)), AC1 ; |596| 

        SUB AC0, dbl(*SP(#20)), AC0 ; |596| 
        ADD *AR3(T0), AR1, AR1 ; |596| 
$C$DW$225	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$225, DW_AT_low_pc(0x00)
	.dwattr $C$DW$225, DW_AT_name("__mpyli")
	.dwattr $C$DW$225, DW_AT_TI_call
        CALL #__mpyli ; |596| 
                                        ; call occurs [#__mpyli] ; |596| 
        ADD dbl(*SP(#22)), AC0, AC0 ; |596| 
        MOV dbl(*SP(#0)), XAR3
        ADD #2, AC0 ; |596| 
        MOV AC0, T0 ; |596| 

        MOV #1, AC0 ; |596| 
||      MOV dbl(*SP(#10)), AC1 ; |596| 

        ADD dbl(*SP(#20)), AC0, AC0 ; |596| 
        ADD *AR3(T0), AR1, AR1 ; |596| 
$C$DW$226	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$226, DW_AT_low_pc(0x00)
	.dwattr $C$DW$226, DW_AT_name("__mpyli")
	.dwattr $C$DW$226, DW_AT_TI_call
        CALL #__mpyli ; |596| 
                                        ; call occurs [#__mpyli] ; |596| 
        ADD dbl(*SP(#22)), AC0, AC0 ; |596| 
        MOV dbl(*SP(#0)), XAR3
        SUB #2, AC0 ; |596| 
        MOV AC0, T0 ; |596| 
        MOV dbl(*SP(#10)), AC1 ; |596| 
        MOV dbl(*SP(#18)), AC0 ; |596| 
        ADD dbl(*SP(#18)), AC0, AC0 ; |596| 

        MOV #1, AC0 ; |596| 
||      ADD uns(*AR3(T0)), AC0, AC2 ; |596| 

        ADD dbl(*SP(#20)), AC0, AC0 ; |596| 
$C$DW$227	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$227, DW_AT_low_pc(0x00)
	.dwattr $C$DW$227, DW_AT_name("__mpyli")
	.dwattr $C$DW$227, DW_AT_TI_call
        CALL #__mpyli ; |596| 
                                        ; call occurs [#__mpyli] ; |596| 
        ADD dbl(*SP(#22)), AC0, AC0 ; |596| 
        MOV dbl(*SP(#0)), XAR3
        SUB #1, AC0 ; |596| 
        MOV AC0, T0 ; |596| 

        MOV #1, AC0 ; |596| 
||      MOV dbl(*SP(#10)), AC1 ; |596| 

        ADD dbl(*SP(#20)), AC0, AC0 ; |596| 
        ADD uns(*AR3(T0)), AC2, AC2 ; |596| 
$C$DW$228	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$228, DW_AT_low_pc(0x00)
	.dwattr $C$DW$228, DW_AT_name("__mpyli")
	.dwattr $C$DW$228, DW_AT_TI_call
        CALL #__mpyli ; |596| 
                                        ; call occurs [#__mpyli] ; |596| 
        MOV dbl(*SP(#0)), XAR3
        ADD dbl(*SP(#22)), AC0, AC0 ; |596| 
        MOV AC0, T0 ; |596| 

        MOV #1, AC0 ; |596| 
||      MOV dbl(*SP(#10)), AC1 ; |596| 

        ADD dbl(*SP(#20)), AC0, AC0 ; |596| 
        ADD uns(*AR3(T0)), AC2, AC2 ; |596| 
$C$DW$229	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$229, DW_AT_low_pc(0x00)
	.dwattr $C$DW$229, DW_AT_name("__mpyli")
	.dwattr $C$DW$229, DW_AT_TI_call
        CALL #__mpyli ; |596| 
                                        ; call occurs [#__mpyli] ; |596| 
        MOV dbl(*SP(#0)), XAR3
        ADD dbl(*SP(#22)), AC0, AC0 ; |596| 
        ADD #1, AC0 ; |596| 
        MOV AC0, T0 ; |596| 
        MOV dbl(*SP(#10)), AC1 ; |596| 

        ADD uns(*AR3(T0)), AC2, AC2 ; |596| 
||      MOV #1, AC0 ; |596| 

        ADD dbl(*SP(#20)), AC0, AC0 ; |596| 
$C$DW$230	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$230, DW_AT_low_pc(0x00)
	.dwattr $C$DW$230, DW_AT_name("__mpyli")
	.dwattr $C$DW$230, DW_AT_TI_call
        CALL #__mpyli ; |596| 
                                        ; call occurs [#__mpyli] ; |596| 
        AND #0xffff, AR1, AC3 ; |596| 
$C$DW$L$_susan_corners_quick$57$E:
$C$DW$L$_susan_corners_quick$58$B:
        MOV dbl(*SP(#0)), XAR3
        ADD dbl(*SP(#22)), AC0, AC0 ; |596| 
        ADD #2, AC0 ; |596| 
        MOV AC0, T0 ; |596| 
        ADD uns(*AR3(T0)), AC2, AC0 ; |596| 
        SUB AC3, AC0 ; |596| 
        MOV AC0, dbl(*SP(#18)) ; |596| 
	.dwpsn	file "./susan.c",line 598,column 25,is_stmt
        MOV dbl(*SP(#16)), AC0 ; |598| 
$C$DW$231	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$231, DW_AT_low_pc(0x00)
	.dwattr $C$DW$231, DW_AT_name("__divli")
	.dwattr $C$DW$231, DW_AT_TI_call

        CALL #__divli ; |598| 
||      MOV #15, AC1 ; |598| 

                                        ; call occurs [#__divli] ; |598| 
        MOV dbl(*SP(#8)), XAR3
        MPYMK *SP(#15), #6, AC1 ; |598| 
        MOV AC1, AR1 ; |598| 
        AADD AR1, AR3 ; |598| 
        MOV AC0, *AR3(short(#3)) ; |598| 
	.dwpsn	file "./susan.c",line 599,column 25,is_stmt
        MOV dbl(*SP(#18)), AC0 ; |599| 
$C$DW$232	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$232, DW_AT_low_pc(0x00)
	.dwattr $C$DW$232, DW_AT_name("__divli")
	.dwattr $C$DW$232, DW_AT_TI_call

        CALL #__divli ; |599| 
||      MOV #15, AC1 ; |599| 

                                        ; call occurs [#__divli] ; |599| 
        MOV dbl(*SP(#8)), XAR3
        MPYMK *SP(#15), #6, AC1 ; |599| 
        MOV AC1, AR1 ; |599| 
        AADD AR1, AR3 ; |599| 
        MOV AC0, *AR3(short(#4)) ; |599| 
	.dwpsn	file "./susan.c",line 600,column 25,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |600| 
        ADD #1, AC0 ; |600| 
        MOV AC0, dbl(*SP(#14)) ; |600| 
	.dwpsn	file "./susan.c",line 601,column 25,is_stmt
        MOV #32, AC0 ; |601| 
        MOV dbl(*SP(#14)), AC1 ; |601| 
        CMP AC1 != AC0, TC1 ; |601| 
        BCC $C$L33,TC1 ; |601| 
                                        ; branchcc occurs ; |601| 
$C$DW$L$_susan_corners_quick$58$E:
	.dwpsn	file "./susan.c",line 604,column 29,is_stmt
        MOV #-1, T0
        B $C$L36  ; |604| 
                                        ; branch occurs ; |604| 
$C$L33:    
$C$DW$L$_susan_corners_quick$60$B:
	.dwpsn	file "./susan.c",line 487,column 37,is_stmt
        MOV dbl(*SP(#22)), AC0 ; |487| 
        ADD #1, AC0 ; |487| 
        MOV AC0, dbl(*SP(#22)) ; |487| 
	.dwpsn	file "./susan.c",line 487,column 21,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |487| 

        SUB #7, AC0 ; |487| 
||      MOV dbl(*SP(#22)), AC1 ; |487| 

        CMP AC1 < AC0, TC1 ; |487| 
        BCC $C$L32,TC1 ; |487| 
                                        ; branchcc occurs ; |487| 
$C$DW$L$_susan_corners_quick$60$E:
$C$L34:    
$C$DW$L$_susan_corners_quick$61$B:
	.dwpsn	file "./susan.c",line 486,column 33,is_stmt
        MOV dbl(*SP(#20)), AC0 ; |486| 
        ADD #1, AC0 ; |486| 
        MOV AC0, dbl(*SP(#20)) ; |486| 
	.dwpsn	file "./susan.c",line 486,column 17,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |486| 

        SUB #7, AC0 ; |486| 
||      MOV dbl(*SP(#20)), AC1 ; |486| 

        CMP AC1 < AC0, TC1 ; |486| 
        BCC $C$L31,TC1 ; |486| 
                                        ; branchcc occurs ; |486| 
$C$DW$L$_susan_corners_quick$61$E:
$C$L35:    
	.dwpsn	file "./susan.c",line 609,column 5,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MPYMK *SP(#15), #6, AC0 ; |609| 
        MOV AC0, AR1 ; |609| 
        AADD AR1, AR3 ; |609| 
        MOV #7, *AR3(short(#2)) ; |609| 
	.dwpsn	file "./susan.c",line 610,column 5,is_stmt
        MOV #0, T0
$C$L36:    
	.dwpsn	file "./susan.c",line 611,column 1,is_stmt
        AADD #29, SP
	.dwcfi	cfa_offset, 1
$C$DW$233	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$233, DW_AT_low_pc(0x00)
	.dwattr $C$DW$233, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$234	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$234, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_corners/susan.asm:$C$L31:1:1738866959")
	.dwattr $C$DW$234, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$234, DW_AT_TI_begin_line(0x1e6)
	.dwattr $C$DW$234, DW_AT_TI_end_line(0x260)
$C$DW$235	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$235, DW_AT_low_pc($C$DW$L$_susan_corners_quick$26$B)
	.dwattr $C$DW$235, DW_AT_high_pc($C$DW$L$_susan_corners_quick$26$E)
$C$DW$236	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$236, DW_AT_low_pc($C$DW$L$_susan_corners_quick$61$B)
	.dwattr $C$DW$236, DW_AT_high_pc($C$DW$L$_susan_corners_quick$61$E)

$C$DW$237	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$237, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_corners/susan.asm:$C$L32:2:1738866959")
	.dwattr $C$DW$237, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$237, DW_AT_TI_begin_line(0x1e7)
	.dwattr $C$DW$237, DW_AT_TI_end_line(0x260)
$C$DW$238	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$238, DW_AT_low_pc($C$DW$L$_susan_corners_quick$27$B)
	.dwattr $C$DW$238, DW_AT_high_pc($C$DW$L$_susan_corners_quick$27$E)
$C$DW$239	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$239, DW_AT_low_pc($C$DW$L$_susan_corners_quick$52$B)
	.dwattr $C$DW$239, DW_AT_high_pc($C$DW$L$_susan_corners_quick$52$E)
$C$DW$240	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$240, DW_AT_low_pc($C$DW$L$_susan_corners_quick$53$B)
	.dwattr $C$DW$240, DW_AT_high_pc($C$DW$L$_susan_corners_quick$53$E)
$C$DW$241	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$241, DW_AT_low_pc($C$DW$L$_susan_corners_quick$54$B)
	.dwattr $C$DW$241, DW_AT_high_pc($C$DW$L$_susan_corners_quick$54$E)
$C$DW$242	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$242, DW_AT_low_pc($C$DW$L$_susan_corners_quick$55$B)
	.dwattr $C$DW$242, DW_AT_high_pc($C$DW$L$_susan_corners_quick$55$E)
$C$DW$243	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$243, DW_AT_low_pc($C$DW$L$_susan_corners_quick$56$B)
	.dwattr $C$DW$243, DW_AT_high_pc($C$DW$L$_susan_corners_quick$56$E)
$C$DW$244	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$244, DW_AT_low_pc($C$DW$L$_susan_corners_quick$57$B)
	.dwattr $C$DW$244, DW_AT_high_pc($C$DW$L$_susan_corners_quick$57$E)
$C$DW$245	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$245, DW_AT_low_pc($C$DW$L$_susan_corners_quick$28$B)
	.dwattr $C$DW$245, DW_AT_high_pc($C$DW$L$_susan_corners_quick$28$E)
$C$DW$246	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$246, DW_AT_low_pc($C$DW$L$_susan_corners_quick$29$B)
	.dwattr $C$DW$246, DW_AT_high_pc($C$DW$L$_susan_corners_quick$29$E)
$C$DW$247	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$247, DW_AT_low_pc($C$DW$L$_susan_corners_quick$30$B)
	.dwattr $C$DW$247, DW_AT_high_pc($C$DW$L$_susan_corners_quick$30$E)
$C$DW$248	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$248, DW_AT_low_pc($C$DW$L$_susan_corners_quick$31$B)
	.dwattr $C$DW$248, DW_AT_high_pc($C$DW$L$_susan_corners_quick$31$E)
$C$DW$249	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$249, DW_AT_low_pc($C$DW$L$_susan_corners_quick$32$B)
	.dwattr $C$DW$249, DW_AT_high_pc($C$DW$L$_susan_corners_quick$32$E)
$C$DW$250	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$250, DW_AT_low_pc($C$DW$L$_susan_corners_quick$33$B)
	.dwattr $C$DW$250, DW_AT_high_pc($C$DW$L$_susan_corners_quick$33$E)
$C$DW$251	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$251, DW_AT_low_pc($C$DW$L$_susan_corners_quick$34$B)
	.dwattr $C$DW$251, DW_AT_high_pc($C$DW$L$_susan_corners_quick$34$E)
$C$DW$252	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$252, DW_AT_low_pc($C$DW$L$_susan_corners_quick$35$B)
	.dwattr $C$DW$252, DW_AT_high_pc($C$DW$L$_susan_corners_quick$35$E)
$C$DW$253	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$253, DW_AT_low_pc($C$DW$L$_susan_corners_quick$36$B)
	.dwattr $C$DW$253, DW_AT_high_pc($C$DW$L$_susan_corners_quick$36$E)
$C$DW$254	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$254, DW_AT_low_pc($C$DW$L$_susan_corners_quick$37$B)
	.dwattr $C$DW$254, DW_AT_high_pc($C$DW$L$_susan_corners_quick$37$E)
$C$DW$255	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$255, DW_AT_low_pc($C$DW$L$_susan_corners_quick$38$B)
	.dwattr $C$DW$255, DW_AT_high_pc($C$DW$L$_susan_corners_quick$38$E)
$C$DW$256	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$256, DW_AT_low_pc($C$DW$L$_susan_corners_quick$39$B)
	.dwattr $C$DW$256, DW_AT_high_pc($C$DW$L$_susan_corners_quick$39$E)
$C$DW$257	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$257, DW_AT_low_pc($C$DW$L$_susan_corners_quick$40$B)
	.dwattr $C$DW$257, DW_AT_high_pc($C$DW$L$_susan_corners_quick$40$E)
$C$DW$258	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$258, DW_AT_low_pc($C$DW$L$_susan_corners_quick$41$B)
	.dwattr $C$DW$258, DW_AT_high_pc($C$DW$L$_susan_corners_quick$41$E)
$C$DW$259	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$259, DW_AT_low_pc($C$DW$L$_susan_corners_quick$42$B)
	.dwattr $C$DW$259, DW_AT_high_pc($C$DW$L$_susan_corners_quick$42$E)
$C$DW$260	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$260, DW_AT_low_pc($C$DW$L$_susan_corners_quick$43$B)
	.dwattr $C$DW$260, DW_AT_high_pc($C$DW$L$_susan_corners_quick$43$E)
$C$DW$261	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$261, DW_AT_low_pc($C$DW$L$_susan_corners_quick$44$B)
	.dwattr $C$DW$261, DW_AT_high_pc($C$DW$L$_susan_corners_quick$44$E)
$C$DW$262	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$262, DW_AT_low_pc($C$DW$L$_susan_corners_quick$45$B)
	.dwattr $C$DW$262, DW_AT_high_pc($C$DW$L$_susan_corners_quick$45$E)
$C$DW$263	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$263, DW_AT_low_pc($C$DW$L$_susan_corners_quick$46$B)
	.dwattr $C$DW$263, DW_AT_high_pc($C$DW$L$_susan_corners_quick$46$E)
$C$DW$264	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$264, DW_AT_low_pc($C$DW$L$_susan_corners_quick$47$B)
	.dwattr $C$DW$264, DW_AT_high_pc($C$DW$L$_susan_corners_quick$47$E)
$C$DW$265	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$265, DW_AT_low_pc($C$DW$L$_susan_corners_quick$48$B)
	.dwattr $C$DW$265, DW_AT_high_pc($C$DW$L$_susan_corners_quick$48$E)
$C$DW$266	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$266, DW_AT_low_pc($C$DW$L$_susan_corners_quick$49$B)
	.dwattr $C$DW$266, DW_AT_high_pc($C$DW$L$_susan_corners_quick$49$E)
$C$DW$267	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$267, DW_AT_low_pc($C$DW$L$_susan_corners_quick$50$B)
	.dwattr $C$DW$267, DW_AT_high_pc($C$DW$L$_susan_corners_quick$50$E)
$C$DW$268	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$268, DW_AT_low_pc($C$DW$L$_susan_corners_quick$51$B)
	.dwattr $C$DW$268, DW_AT_high_pc($C$DW$L$_susan_corners_quick$51$E)
$C$DW$269	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$269, DW_AT_low_pc($C$DW$L$_susan_corners_quick$58$B)
	.dwattr $C$DW$269, DW_AT_high_pc($C$DW$L$_susan_corners_quick$58$E)
$C$DW$270	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$270, DW_AT_low_pc($C$DW$L$_susan_corners_quick$60$B)
	.dwattr $C$DW$270, DW_AT_high_pc($C$DW$L$_susan_corners_quick$60$E)
	.dwendtag $C$DW$237

	.dwendtag $C$DW$234


$C$DW$271	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$271, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_corners/susan.asm:$C$L26:1:1738866959")
	.dwattr $C$DW$271, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$271, DW_AT_TI_begin_line(0x171)
	.dwattr $C$DW$271, DW_AT_TI_end_line(0x1e2)
$C$DW$272	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$272, DW_AT_low_pc($C$DW$L$_susan_corners_quick$2$B)
	.dwattr $C$DW$272, DW_AT_high_pc($C$DW$L$_susan_corners_quick$2$E)
$C$DW$273	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$273, DW_AT_low_pc($C$DW$L$_susan_corners_quick$24$B)
	.dwattr $C$DW$273, DW_AT_high_pc($C$DW$L$_susan_corners_quick$24$E)

$C$DW$274	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$274, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_corners/susan.asm:$C$L27:2:1738866959")
	.dwattr $C$DW$274, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$274, DW_AT_TI_begin_line(0x172)
	.dwattr $C$DW$274, DW_AT_TI_end_line(0x1e2)
$C$DW$275	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$275, DW_AT_low_pc($C$DW$L$_susan_corners_quick$3$B)
	.dwattr $C$DW$275, DW_AT_high_pc($C$DW$L$_susan_corners_quick$3$E)
$C$DW$276	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$276, DW_AT_low_pc($C$DW$L$_susan_corners_quick$4$B)
	.dwattr $C$DW$276, DW_AT_high_pc($C$DW$L$_susan_corners_quick$4$E)
$C$DW$277	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$277, DW_AT_low_pc($C$DW$L$_susan_corners_quick$5$B)
	.dwattr $C$DW$277, DW_AT_high_pc($C$DW$L$_susan_corners_quick$5$E)
$C$DW$278	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$278, DW_AT_low_pc($C$DW$L$_susan_corners_quick$6$B)
	.dwattr $C$DW$278, DW_AT_high_pc($C$DW$L$_susan_corners_quick$6$E)
$C$DW$279	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$279, DW_AT_low_pc($C$DW$L$_susan_corners_quick$7$B)
	.dwattr $C$DW$279, DW_AT_high_pc($C$DW$L$_susan_corners_quick$7$E)
$C$DW$280	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$280, DW_AT_low_pc($C$DW$L$_susan_corners_quick$8$B)
	.dwattr $C$DW$280, DW_AT_high_pc($C$DW$L$_susan_corners_quick$8$E)
$C$DW$281	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$281, DW_AT_low_pc($C$DW$L$_susan_corners_quick$9$B)
	.dwattr $C$DW$281, DW_AT_high_pc($C$DW$L$_susan_corners_quick$9$E)
$C$DW$282	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$282, DW_AT_low_pc($C$DW$L$_susan_corners_quick$10$B)
	.dwattr $C$DW$282, DW_AT_high_pc($C$DW$L$_susan_corners_quick$10$E)
$C$DW$283	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$283, DW_AT_low_pc($C$DW$L$_susan_corners_quick$11$B)
	.dwattr $C$DW$283, DW_AT_high_pc($C$DW$L$_susan_corners_quick$11$E)
$C$DW$284	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$284, DW_AT_low_pc($C$DW$L$_susan_corners_quick$12$B)
	.dwattr $C$DW$284, DW_AT_high_pc($C$DW$L$_susan_corners_quick$12$E)
$C$DW$285	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$285, DW_AT_low_pc($C$DW$L$_susan_corners_quick$13$B)
	.dwattr $C$DW$285, DW_AT_high_pc($C$DW$L$_susan_corners_quick$13$E)
$C$DW$286	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$286, DW_AT_low_pc($C$DW$L$_susan_corners_quick$14$B)
	.dwattr $C$DW$286, DW_AT_high_pc($C$DW$L$_susan_corners_quick$14$E)
$C$DW$287	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$287, DW_AT_low_pc($C$DW$L$_susan_corners_quick$15$B)
	.dwattr $C$DW$287, DW_AT_high_pc($C$DW$L$_susan_corners_quick$15$E)
$C$DW$288	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$288, DW_AT_low_pc($C$DW$L$_susan_corners_quick$16$B)
	.dwattr $C$DW$288, DW_AT_high_pc($C$DW$L$_susan_corners_quick$16$E)
$C$DW$289	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$289, DW_AT_low_pc($C$DW$L$_susan_corners_quick$17$B)
	.dwattr $C$DW$289, DW_AT_high_pc($C$DW$L$_susan_corners_quick$17$E)
$C$DW$290	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$290, DW_AT_low_pc($C$DW$L$_susan_corners_quick$18$B)
	.dwattr $C$DW$290, DW_AT_high_pc($C$DW$L$_susan_corners_quick$18$E)
$C$DW$291	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$291, DW_AT_low_pc($C$DW$L$_susan_corners_quick$19$B)
	.dwattr $C$DW$291, DW_AT_high_pc($C$DW$L$_susan_corners_quick$19$E)
$C$DW$292	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$292, DW_AT_low_pc($C$DW$L$_susan_corners_quick$20$B)
	.dwattr $C$DW$292, DW_AT_high_pc($C$DW$L$_susan_corners_quick$20$E)
$C$DW$293	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$293, DW_AT_low_pc($C$DW$L$_susan_corners_quick$21$B)
	.dwattr $C$DW$293, DW_AT_high_pc($C$DW$L$_susan_corners_quick$21$E)
$C$DW$294	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$294, DW_AT_low_pc($C$DW$L$_susan_corners_quick$22$B)
	.dwattr $C$DW$294, DW_AT_high_pc($C$DW$L$_susan_corners_quick$22$E)
$C$DW$295	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$295, DW_AT_low_pc($C$DW$L$_susan_corners_quick$23$B)
	.dwattr $C$DW$295, DW_AT_high_pc($C$DW$L$_susan_corners_quick$23$E)
	.dwendtag $C$DW$274

	.dwendtag $C$DW$271

	.dwattr $C$DW$113, DW_AT_TI_end_file("./susan.c")
	.dwattr $C$DW$113, DW_AT_TI_end_line(0x263)
	.dwattr $C$DW$113, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$113

	.sect	".text"
	.global	_susan_corner

$C$DW$296	.dwtag  DW_TAG_subprogram, DW_AT_name("susan_corner")
	.dwattr $C$DW$296, DW_AT_low_pc(_susan_corner)
	.dwattr $C$DW$296, DW_AT_high_pc(0x00)
	.dwattr $C$DW$296, DW_AT_TI_symbol_name("_susan_corner")
	.dwattr $C$DW$296, DW_AT_external
	.dwattr $C$DW$296, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$296, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$296, DW_AT_TI_begin_line(0x265)
	.dwattr $C$DW$296, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$296, DW_AT_TI_max_frame_size(0xd8)
	.dwpsn	file "./susan.c",line 614,column 1,is_stmt,address _susan_corner

	.dwfde $C$DW$CIE, _susan_corner
$C$DW$297	.dwtag  DW_TAG_formal_parameter, DW_AT_name("in")
	.dwattr $C$DW$297, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$297, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$297, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: susan_corner                                                 *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,AC2,AC2,T0,AR0,XAR0,AR1,XAR1,AR2,    *
;*                        XAR2,AR3,XAR3,FP,XFP,SP,CARRY,TC1,M40,SATA,SATD,RDM, *
;*                        FRCT,SMUL                                            *
;*   Save On Entry Regs : FP                                                   *
;*   Stack Frame        : Full (Frame Pointer in AR6, w/ debug)                *
;*   Total Frame Size   : 216 words                                            *
;*                        (1 return address/alignment)                         *
;*                        (214 local values)                                   *
;*                        (1 register save area)                               *
;*   Min System Stack   : 2 words                                              *
;*******************************************************************************
_susan_corner:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        PSHBOTH XFP
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 32, -2
        ADD #-214, mmap(SP)
        AMAR *SP(#0), XFP
	.dwcfi	cfa_offset, 216
$C$DW$298	.dwtag  DW_TAG_variable, DW_AT_name("in")
	.dwattr $C$DW$298, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$298, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$298, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$299	.dwtag  DW_TAG_variable, DW_AT_name("bp")
	.dwattr $C$DW$299, DW_AT_TI_symbol_name("_bp")
	.dwattr $C$DW$299, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$299, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$300	.dwtag  DW_TAG_variable, DW_AT_name("bt")
	.dwattr $C$DW$300, DW_AT_TI_symbol_name("_bt")
	.dwattr $C$DW$300, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$300, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$301	.dwtag  DW_TAG_variable, DW_AT_name("drawing_mode")
	.dwattr $C$DW$301, DW_AT_TI_symbol_name("_drawing_mode")
	.dwattr $C$DW$301, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$301, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$302	.dwtag  DW_TAG_variable, DW_AT_name("max_no_corners")
	.dwattr $C$DW$302, DW_AT_TI_symbol_name("_max_no_corners")
	.dwattr $C$DW$302, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$302, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$303	.dwtag  DW_TAG_variable, DW_AT_name("x_size")
	.dwattr $C$DW$303, DW_AT_TI_symbol_name("_x_size")
	.dwattr $C$DW$303, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$303, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$304	.dwtag  DW_TAG_variable, DW_AT_name("y_size")
	.dwattr $C$DW$304, DW_AT_TI_symbol_name("_y_size")
	.dwattr $C$DW$304, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$304, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$305	.dwtag  DW_TAG_variable, DW_AT_name("retVal")
	.dwattr $C$DW$305, DW_AT_TI_symbol_name("_retVal")
	.dwattr $C$DW$305, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$305, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$306	.dwtag  DW_TAG_variable, DW_AT_name("corner_list")
	.dwattr $C$DW$306, DW_AT_TI_symbol_name("_corner_list")
	.dwattr $C$DW$306, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$306, DW_AT_location[DW_OP_bregx 0x24 15]
$C$DW$307	.dwtag  DW_TAG_variable, DW_AT_name("noprint_output")
	.dwattr $C$DW$307, DW_AT_TI_symbol_name("_noprint_output")
	.dwattr $C$DW$307, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$307, DW_AT_location[DW_OP_bregx 0x24 208]
$C$DW$308	.dwtag  DW_TAG_variable, DW_AT_name("checksum")
	.dwattr $C$DW$308, DW_AT_TI_symbol_name("_checksum")
	.dwattr $C$DW$308, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$308, DW_AT_location[DW_OP_bregx 0x24 210]
$C$DW$309	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$309, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$309, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$309, DW_AT_location[DW_OP_bregx 0x24 212]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./susan.c",line 616,column 13,is_stmt
        MOV #15, AC0 ; |616| 
        MOV AC0, dbl(*SP(#4)) ; |616| 
	.dwpsn	file "./susan.c",line 617,column 13,is_stmt
        MOV #0, AC0 ; |617| 
        MOV AC0, dbl(*SP(#6)) ; |617| 
	.dwpsn	file "./susan.c",line 618,column 13,is_stmt
        MOV #2000, AC0 ; |618| 
        MOV AC0, dbl(*SP(#8)) ; |618| 
	.dwpsn	file "./susan.c",line 619,column 13,is_stmt
        MOV #-1, AC0 ; |619| 
        MOV AC0, dbl(*SP(#10)) ; |619| 
	.dwpsn	file "./susan.c",line 619,column 26,is_stmt
        MOV AC0, dbl(*SP(#12)) ; |619| 
	.dwpsn	file "./susan.c",line 620,column 13,is_stmt
        MOV #0, *SP(#14) ; |620| 
	.dwpsn	file "./susan.c",line 623,column 5,is_stmt
        AMAR *SP(#10), XAR1
        AMAR *SP(#12), XAR2
        AMAR *SP(#0), XAR0
$C$DW$310	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$310, DW_AT_low_pc(0x00)
	.dwattr $C$DW$310, DW_AT_name("_get_image")
	.dwattr $C$DW$310, DW_AT_TI_call
        CALL #_get_image ; |623| 
                                        ; call occurs [#_get_image] ; |623| 
        MOV T0, *SP(#14) ; |623| 
	.dwpsn	file "./susan.c",line 624,column 5,is_stmt
        MOV T0, AR1
        BCC $C$L37,AR1 >= #0 ; |624| 
                                        ; branchcc occurs ; |624| 
	.dwpsn	file "./susan.c",line 625,column 9,is_stmt
        MOV #-1, T0
        B $C$L41  ; |625| 
                                        ; branch occurs ; |625| 
$C$L37:    
	.dwpsn	file "./susan.c",line 632,column 5,is_stmt
        AMAR *SP(#2), XAR0
        MOV dbl(*SP(#4)), AC0 ; |632| 
$C$DW$311	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$311, DW_AT_low_pc(0x00)
	.dwattr $C$DW$311, DW_AT_name("_setup_brightness_lut")
	.dwattr $C$DW$311, DW_AT_TI_call

        CALL #_setup_brightness_lut ; |632| 
||      MOV #2, AC1 ; |632| 

                                        ; call occurs [#_setup_brightness_lut] ; |632| 
	.dwpsn	file "./susan.c",line 633,column 5,is_stmt
        AMOV #_g_r, XAR1 ; |633| 
        AMAR *SP(#15), XAR3
        MOV dbl(*SP(#2)), XAR2
        MOV dbl(*SP(#12)), AC2 ; |633| 
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#8)), AC0 ; |633| 
        MOV dbl(*SP(#10)), AC1 ; |633| 
$C$DW$312	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$312, DW_AT_low_pc(0x00)
	.dwattr $C$DW$312, DW_AT_name("_susan_corners_quick")
	.dwattr $C$DW$312, DW_AT_TI_call
        CALL #_susan_corners_quick ; |633| 
                                        ; call occurs [#_susan_corners_quick] ; |633| 
        MOV T0, *SP(#14) ; |633| 
	.dwpsn	file "./susan.c",line 634,column 5,is_stmt
        MOV T0, AR1
        BCC $C$L38,AR1 >= #0 ; |634| 
                                        ; branchcc occurs ; |634| 
	.dwpsn	file "./susan.c",line 635,column 9,is_stmt
        MOV #-1, T0
        B $C$L41  ; |635| 
                                        ; branch occurs ; |635| 
$C$L38:    
	.dwpsn	file "./susan.c",line 637,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
        AMAR *SP(#15), XAR1
        MOV dbl(*SP(#10)), AC0 ; |637| 
        MOV dbl(*SP(#6)), AC1 ; |637| 
$C$DW$313	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$313, DW_AT_low_pc(0x00)
	.dwattr $C$DW$313, DW_AT_name("_corner_draw")
	.dwattr $C$DW$313, DW_AT_TI_call
        CALL #_corner_draw ; |637| 
                                        ; call occurs [#_corner_draw] ; |637| 
	.dwpsn	file "./susan.c",line 640,column 13,is_stmt
        MOV #0, AC0 ; |640| 
        MOV AC0, dbl(*FP(#210)) ; |640| 
	.dwpsn	file "./susan.c",line 642,column 10,is_stmt
        MOV AC0, dbl(*FP(#212)) ; |642| 
	.dwpsn	file "./susan.c",line 642,column 17,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |642| 
        MOV dbl(*SP(#12)), AC1 ; |642| 
$C$DW$314	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$314, DW_AT_low_pc(0x00)
	.dwattr $C$DW$314, DW_AT_name("__mpyli")
	.dwattr $C$DW$314, DW_AT_TI_call
        CALL #__mpyli ; |642| 
                                        ; call occurs [#__mpyli] ; |642| 
        MOV dbl(*FP(#212)), AC1 ; |642| 
        CMP AC1 >= AC0, TC1 ; |642| 
        BCC $C$L40,TC1 ; |642| 
                                        ; branchcc occurs ; |642| 
$C$L39:    
$C$DW$L$_susan_corner$6$B:
	.dwpsn	file "./susan.c",line 644,column 9,is_stmt
        MOV *FP(#213), T0 ; |644| 
        MOV dbl(*SP(#0)), XAR3
        MOV uns(*AR3(T0)), AC0 ; |644| 
        ADD dbl(*FP(#210)), AC0, AC0 ; |644| 
        MOV AC0, dbl(*FP(#210)) ; |644| 
	.dwpsn	file "./susan.c",line 642,column 38,is_stmt
        MOV dbl(*FP(#212)), AC0 ; |642| 
        ADD #1, AC0 ; |642| 
        MOV AC0, dbl(*FP(#212)) ; |642| 
	.dwpsn	file "./susan.c",line 642,column 17,is_stmt
        MOV dbl(*SP(#12)), AC1 ; |642| 
        MOV dbl(*SP(#10)), AC0 ; |642| 
$C$DW$315	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$315, DW_AT_low_pc(0x00)
	.dwattr $C$DW$315, DW_AT_name("__mpyli")
	.dwattr $C$DW$315, DW_AT_TI_call
        CALL #__mpyli ; |642| 
                                        ; call occurs [#__mpyli] ; |642| 
        MOV dbl(*FP(#212)), AC1 ; |642| 
        CMP AC1 < AC0, TC1 ; |642| 
        BCC $C$L39,TC1 ; |642| 
                                        ; branchcc occurs ; |642| 
$C$DW$L$_susan_corner$6$E:
$C$L40:    
	.dwpsn	file "./susan.c",line 647,column 5,is_stmt
        MOV dbl(*FP(#210)), AC0 ; |647| 
        MOV AC0, dbl(*FP(#208)) ; |647| 
        NOP
        NOP
        NOP
	.dwpsn	file "./susan.c",line 648,column 5,is_stmt
        MOV dbl(*FP(#208)), AC0 ; |648| 
	.dwpsn	file "./susan.c",line 650,column 5,is_stmt
        MOV #0, T0
$C$L41:    
	.dwpsn	file "./susan.c",line 651,column 1,is_stmt
        ADD #214, mmap(SP)
	.dwcfi	cfa_offset, 2
        POPBOTH XFP
	.dwcfi	restore_reg, 32
	.dwcfi	cfa_offset, 1
$C$DW$316	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$316, DW_AT_low_pc(0x00)
	.dwattr $C$DW$316, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$317	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$317, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_corners/susan.asm:$C$L39:1:1738866959")
	.dwattr $C$DW$317, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$317, DW_AT_TI_begin_line(0x282)
	.dwattr $C$DW$317, DW_AT_TI_end_line(0x285)
$C$DW$318	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$318, DW_AT_low_pc($C$DW$L$_susan_corner$6$B)
	.dwattr $C$DW$318, DW_AT_high_pc($C$DW$L$_susan_corner$6$E)
	.dwendtag $C$DW$317

	.dwattr $C$DW$296, DW_AT_TI_end_file("./susan.c")
	.dwattr $C$DW$296, DW_AT_TI_end_line(0x28b)
	.dwattr $C$DW$296, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$296

;*******************************************************************************
;* FLOATING-POINT CONSTANTS                                                    *
;*******************************************************************************
	.sect	".const"
	.align	2
$C$FL1:	.xlong	0x42c80000
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_memset
	.global	_exp
	.global	__divli
	.global	__negd
	.global	__divd
	.global	__fltlid
	.global	__mpyd
	.global	__fixdu
	.global	__mpyli

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$19	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$19, DW_AT_byte_size(0x06)
$C$DW$319	.dwtag  DW_TAG_member
	.dwattr $C$DW$319, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$319, DW_AT_name("x")
	.dwattr $C$DW$319, DW_AT_TI_symbol_name("_x")
	.dwattr $C$DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$319, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$320	.dwtag  DW_TAG_member
	.dwattr $C$DW$320, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$320, DW_AT_name("y")
	.dwattr $C$DW$320, DW_AT_TI_symbol_name("_y")
	.dwattr $C$DW$320, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$320, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$321	.dwtag  DW_TAG_member
	.dwattr $C$DW$321, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$321, DW_AT_name("info")
	.dwattr $C$DW$321, DW_AT_TI_symbol_name("_info")
	.dwattr $C$DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$321, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$322	.dwtag  DW_TAG_member
	.dwattr $C$DW$322, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$322, DW_AT_name("dx")
	.dwattr $C$DW$322, DW_AT_TI_symbol_name("_dx")
	.dwattr $C$DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$322, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$323	.dwtag  DW_TAG_member
	.dwattr $C$DW$323, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$323, DW_AT_name("dy")
	.dwattr $C$DW$323, DW_AT_TI_symbol_name("_dy")
	.dwattr $C$DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$323, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$324	.dwtag  DW_TAG_member
	.dwattr $C$DW$324, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$324, DW_AT_name("I")
	.dwattr $C$DW$324, DW_AT_TI_symbol_name("_I")
	.dwattr $C$DW$324, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$324, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$19

$C$DW$T$20	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_address_class(0x17)

$C$DW$T$21	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$21, DW_AT_byte_size(0xc0)
$C$DW$325	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$325, DW_AT_upper_bound(0x1f)
	.dwendtag $C$DW$T$21

$C$DW$T$22	.dwtag  DW_TAG_typedef, DW_AT_name("CORNER_LIST")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x17)
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
$C$DW$T$37	.dwtag  DW_TAG_typedef, DW_AT_name("int16_t")
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)
$C$DW$T$24	.dwtag  DW_TAG_typedef, DW_AT_name("size_t")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
$C$DW$T$29	.dwtag  DW_TAG_typedef, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$29, DW_AT_language(DW_LANG_C)
$C$DW$T$30	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$30, DW_AT_address_class(0x17)
$C$DW$T$32	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$32, DW_AT_address_class(0x17)

$C$DW$T$43	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$43, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x204)
$C$DW$326	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$326, DW_AT_upper_bound(0x203)
	.dwendtag $C$DW$T$43

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)
$C$DW$T$27	.dwtag  DW_TAG_typedef, DW_AT_name("int32_t")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)
$C$DW$T$28	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$28, DW_AT_address_class(0x17)

$C$DW$T$46	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$46, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$46, DW_AT_byte_size(0x2648)
$C$DW$327	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$327, DW_AT_upper_bound(0x1323)
	.dwendtag $C$DW$T$46

$C$DW$328	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$328, DW_AT_type(*$C$DW$T$27)
$C$DW$T$47	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$328)
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
$C$DW$T$50	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$50, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$50, DW_AT_name("signed char")
	.dwattr $C$DW$T$50, DW_AT_byte_size(0x01)

$C$DW$T$53	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$53, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x64)
$C$DW$329	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$329, DW_AT_upper_bound(0x63)
	.dwendtag $C$DW$T$53

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

$C$DW$330	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$330, DW_AT_location[DW_OP_reg0]
$C$DW$331	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$331, DW_AT_location[DW_OP_reg1]
$C$DW$332	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$332, DW_AT_location[DW_OP_reg2]
$C$DW$333	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$333, DW_AT_location[DW_OP_reg3]
$C$DW$334	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$334, DW_AT_location[DW_OP_reg4]
$C$DW$335	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$335, DW_AT_location[DW_OP_reg5]
$C$DW$336	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$336, DW_AT_location[DW_OP_reg6]
$C$DW$337	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$337, DW_AT_location[DW_OP_reg7]
$C$DW$338	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$338, DW_AT_location[DW_OP_reg8]
$C$DW$339	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$339, DW_AT_location[DW_OP_reg9]
$C$DW$340	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$340, DW_AT_location[DW_OP_reg10]
$C$DW$341	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$341, DW_AT_location[DW_OP_reg11]
$C$DW$342	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$342, DW_AT_location[DW_OP_reg12]
$C$DW$343	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$343, DW_AT_location[DW_OP_reg13]
$C$DW$344	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$344, DW_AT_location[DW_OP_reg14]
$C$DW$345	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$345, DW_AT_location[DW_OP_reg15]
$C$DW$346	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$346, DW_AT_location[DW_OP_reg16]
$C$DW$347	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$347, DW_AT_location[DW_OP_reg17]
$C$DW$348	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$348, DW_AT_location[DW_OP_reg18]
$C$DW$349	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$349, DW_AT_location[DW_OP_reg19]
$C$DW$350	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$350, DW_AT_location[DW_OP_reg20]
$C$DW$351	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$351, DW_AT_location[DW_OP_reg21]
$C$DW$352	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$352, DW_AT_location[DW_OP_reg22]
$C$DW$353	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$353, DW_AT_location[DW_OP_reg23]
$C$DW$354	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$354, DW_AT_location[DW_OP_reg24]
$C$DW$355	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$355, DW_AT_location[DW_OP_reg25]
$C$DW$356	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$356, DW_AT_location[DW_OP_reg26]
$C$DW$357	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$357, DW_AT_location[DW_OP_reg27]
$C$DW$358	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$358, DW_AT_location[DW_OP_reg28]
$C$DW$359	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$359, DW_AT_location[DW_OP_reg29]
$C$DW$360	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$360, DW_AT_location[DW_OP_reg30]
$C$DW$361	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$361, DW_AT_location[DW_OP_reg31]
$C$DW$362	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$362, DW_AT_location[DW_OP_regx 0x20]
$C$DW$363	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$363, DW_AT_location[DW_OP_regx 0x21]
$C$DW$364	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$364, DW_AT_location[DW_OP_regx 0x22]
$C$DW$365	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$365, DW_AT_location[DW_OP_regx 0x23]
$C$DW$366	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$366, DW_AT_location[DW_OP_regx 0x24]
$C$DW$367	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$367, DW_AT_location[DW_OP_regx 0x25]
$C$DW$368	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$368, DW_AT_location[DW_OP_regx 0x26]
$C$DW$369	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$369, DW_AT_location[DW_OP_regx 0x27]
$C$DW$370	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$370, DW_AT_location[DW_OP_regx 0x28]
$C$DW$371	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$371, DW_AT_location[DW_OP_regx 0x29]
$C$DW$372	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$372, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$373	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$373, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$374	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$374, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$375	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$375, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$376	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$376, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$377	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$377, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$378	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$378, DW_AT_location[DW_OP_regx 0x30]
$C$DW$379	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$379, DW_AT_location[DW_OP_regx 0x31]
$C$DW$380	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$380, DW_AT_location[DW_OP_regx 0x32]
$C$DW$381	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$381, DW_AT_location[DW_OP_regx 0x33]
$C$DW$382	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$382, DW_AT_location[DW_OP_regx 0x34]
$C$DW$383	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$383, DW_AT_location[DW_OP_regx 0x35]
$C$DW$384	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$384, DW_AT_location[DW_OP_regx 0x36]
$C$DW$385	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$385, DW_AT_location[DW_OP_regx 0x37]
$C$DW$386	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$386, DW_AT_location[DW_OP_regx 0x38]
$C$DW$387	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$387, DW_AT_location[DW_OP_regx 0x39]
$C$DW$388	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$388, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$389	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$389, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$390	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$390, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$391	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$391, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$392	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$392, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$393	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$393, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$394	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$394, DW_AT_location[DW_OP_regx 0x40]
$C$DW$395	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$395, DW_AT_location[DW_OP_regx 0x41]
$C$DW$396	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$396, DW_AT_location[DW_OP_regx 0x42]
$C$DW$397	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$397, DW_AT_location[DW_OP_regx 0x43]
$C$DW$398	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$398, DW_AT_location[DW_OP_regx 0x44]
$C$DW$399	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$399, DW_AT_location[DW_OP_regx 0x45]
$C$DW$400	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$400, DW_AT_location[DW_OP_regx 0x46]
$C$DW$401	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$401, DW_AT_location[DW_OP_regx 0x47]
$C$DW$402	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$402, DW_AT_location[DW_OP_regx 0x48]
$C$DW$403	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$403, DW_AT_location[DW_OP_regx 0x49]
$C$DW$404	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$404, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$405	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$405, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$406	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$406, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$407	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$407, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$408	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$408, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$409	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$409, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$410	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$410, DW_AT_location[DW_OP_regx 0x50]
$C$DW$411	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$411, DW_AT_location[DW_OP_regx 0x51]
$C$DW$412	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$412, DW_AT_location[DW_OP_regx 0x52]
$C$DW$413	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$413, DW_AT_location[DW_OP_regx 0x53]
$C$DW$414	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$414, DW_AT_location[DW_OP_regx 0x54]
$C$DW$415	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$415, DW_AT_location[DW_OP_regx 0x55]
$C$DW$416	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$416, DW_AT_location[DW_OP_regx 0x56]
$C$DW$417	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$417, DW_AT_location[DW_OP_regx 0x57]
$C$DW$418	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$418, DW_AT_location[DW_OP_regx 0x58]
$C$DW$419	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$419, DW_AT_location[DW_OP_regx 0x59]
$C$DW$420	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$420, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$421	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$421, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

