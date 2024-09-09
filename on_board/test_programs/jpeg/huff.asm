;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                        Unix v4.4.1 *
;* Date/Time created: Sun Sep  8 16:12:27 2024                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("./huff.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen Unix v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/santiago/Research/DSPFuzz/on_board/test_programs/jpeg")

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("_assert")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("__assert")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$10)
$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$43)
	.dwendtag $C$DW$1


$C$DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("jpec_buffer_write_byte")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$4, DW_AT_declaration
	.dwattr $C$DW$4, DW_AT_external
$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$31)
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$20)
	.dwendtag $C$DW$4


$C$DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("memset")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_memset")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$3)
$C$DW$9	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$10)
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$38)
	.dwendtag $C$DW$7

$C$DW$11	.dwtag  DW_TAG_variable, DW_AT_name("jpec_dc_len")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_jpec_dc_len")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$11, DW_AT_declaration
	.dwattr $C$DW$11, DW_AT_external
$C$DW$12	.dwtag  DW_TAG_variable, DW_AT_name("jpec_dc_code")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_jpec_dc_code")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$12, DW_AT_declaration
	.dwattr $C$DW$12, DW_AT_external
$C$DW$13	.dwtag  DW_TAG_variable, DW_AT_name("jpec_ac_len")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_jpec_ac_len")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$13, DW_AT_declaration
	.dwattr $C$DW$13, DW_AT_external
$C$DW$14	.dwtag  DW_TAG_variable, DW_AT_name("jpec_ac_code")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_jpec_ac_code")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$14, DW_AT_declaration
	.dwattr $C$DW$14, DW_AT_external
	.global	_g_jpeg_huff
	.bss	_g_jpeg_huff,8,0,2
$C$DW$15	.dwtag  DW_TAG_variable, DW_AT_name("g_jpeg_huff")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_g_jpeg_huff")
	.dwattr $C$DW$15, DW_AT_location[DW_OP_addr _g_jpeg_huff]
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$15, DW_AT_external
;	/home/santiago/Research/Ti/C55_Tools/acp55 -@/tmp/15084HJ0qpo 
	.sect	".text"
	.global	_jpec_huff_skel_init

$C$DW$16	.dwtag  DW_TAG_subprogram, DW_AT_name("jpec_huff_skel_init")
	.dwattr $C$DW$16, DW_AT_low_pc(_jpec_huff_skel_init)
	.dwattr $C$DW$16, DW_AT_high_pc(0x00)
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_jpec_huff_skel_init")
	.dwattr $C$DW$16, DW_AT_external
	.dwattr $C$DW$16, DW_AT_TI_begin_file("./huff.c")
	.dwattr $C$DW$16, DW_AT_TI_begin_line(0x34)
	.dwattr $C$DW$16, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$16, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./huff.c",line 53,column 1,is_stmt,address _jpec_huff_skel_init

	.dwfde $C$DW$CIE, _jpec_huff_skel_init
$C$DW$17	.dwtag  DW_TAG_formal_parameter, DW_AT_name("skel")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_skel")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: jpec_huff_skel_init                                          *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,AR3,XAR3,SP,M40,SATA,SATD,RDM,*
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_jpec_huff_skel_init:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$18	.dwtag  DW_TAG_variable, DW_AT_name("skel")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_skel")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./huff.c",line 54,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L1,AC0 != #0 ; |54| 
                                        ; branchcc occurs ; |54| 
        AMOV #$C$FSL1, XAR0 ; |54| 
$C$DW$19	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$19, DW_AT_low_pc(0x00)
	.dwattr $C$DW$19, DW_AT_name("__abort_msg")
	.dwattr $C$DW$19, DW_AT_TI_call
        CALL #__abort_msg ; |54| 
                                        ; call occurs [#__abort_msg] ; |54| 
$C$L1:    
	.dwpsn	file "./huff.c",line 55,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV #0, T0
$C$DW$20	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$20, DW_AT_low_pc(0x00)
	.dwattr $C$DW$20, DW_AT_name("_memset")
	.dwattr $C$DW$20, DW_AT_TI_call

        CALL #_memset ; |55| 
||      MOV #6, T1

                                        ; call occurs [#_memset] ; |55| 
	.dwpsn	file "./huff.c",line 56,column 5,is_stmt
$C$DW$21	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$21, DW_AT_low_pc(0x00)
	.dwattr $C$DW$21, DW_AT_name("_jpec_huff_new")
	.dwattr $C$DW$21, DW_AT_TI_call
        CALL #_jpec_huff_new ; |56| 
                                        ; call occurs [#_jpec_huff_new] ; |56| 
        MOV dbl(*SP(#0)), XAR3
        MOV XAR0, dbl(*AR3)
	.dwpsn	file "./huff.c",line 57,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #(_jpec_huff_del >> 16) << #16, AC0 ; |57| 
        OR #(_jpec_huff_del & 0xffff), AC0, AC0 ; |57| 
        MOV AC0, dbl(*AR3(short(#2))) ; |57| 
	.dwpsn	file "./huff.c",line 58,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #(_jpec_huff_encode_block >> 16) << #16, AC0 ; |58| 
        OR #(_jpec_huff_encode_block & 0xffff), AC0, AC0 ; |58| 
        MOV AC0, dbl(*AR3(short(#4))) ; |58| 
	.dwpsn	file "./huff.c",line 59,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$22	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$22, DW_AT_low_pc(0x00)
	.dwattr $C$DW$22, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$16, DW_AT_TI_end_file("./huff.c")
	.dwattr $C$DW$16, DW_AT_TI_end_line(0x3b)
	.dwattr $C$DW$16, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$16

	.sect	".text"
	.global	_jpec_huff_new

$C$DW$23	.dwtag  DW_TAG_subprogram, DW_AT_name("jpec_huff_new")
	.dwattr $C$DW$23, DW_AT_low_pc(_jpec_huff_new)
	.dwattr $C$DW$23, DW_AT_high_pc(0x00)
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_jpec_huff_new")
	.dwattr $C$DW$23, DW_AT_external
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$23, DW_AT_TI_begin_file("./huff.c")
	.dwattr $C$DW$23, DW_AT_TI_begin_line(0x3d)
	.dwattr $C$DW$23, DW_AT_TI_begin_column(0x0e)
	.dwattr $C$DW$23, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./huff.c",line 62,column 1,is_stmt,address _jpec_huff_new

	.dwfde $C$DW$CIE, _jpec_huff_new
;*******************************************************************************
;* FUNCTION NAME: jpec_huff_new                                                *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AR0,XAR0,AR3,XAR3,SP,M40,SATA,SATD,RDM,FRCT, *
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_jpec_huff_new:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$24	.dwtag  DW_TAG_variable, DW_AT_name("h")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_h")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_bregx 0x24 0]
	.dwpsn	file "./huff.c",line 63,column 18,is_stmt
        AMOV #_g_jpeg_huff, XAR3 ; |63| 
        MOV XAR3, dbl(*SP(#0))
	.dwpsn	file "./huff.c",line 64,column 5,is_stmt
        MOV #0, AC0 ; |64| 
        MOV AC0, dbl(*AR3) ; |64| 
	.dwpsn	file "./huff.c",line 65,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV AC0, dbl(*AR3(short(#2))) ; |65| 
	.dwpsn	file "./huff.c",line 66,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV AC0, dbl(*AR3(short(#4))) ; |66| 
	.dwpsn	file "./huff.c",line 67,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV AC0, dbl(*AR3(short(#6)))
	.dwpsn	file "./huff.c",line 68,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
	.dwpsn	file "./huff.c",line 69,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$25	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$25, DW_AT_low_pc(0x00)
	.dwattr $C$DW$25, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$23, DW_AT_TI_end_file("./huff.c")
	.dwattr $C$DW$23, DW_AT_TI_end_line(0x45)
	.dwattr $C$DW$23, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$23

	.sect	".text"
	.global	_jpec_huff_del

$C$DW$26	.dwtag  DW_TAG_subprogram, DW_AT_name("jpec_huff_del")
	.dwattr $C$DW$26, DW_AT_low_pc(_jpec_huff_del)
	.dwattr $C$DW$26, DW_AT_high_pc(0x00)
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_jpec_huff_del")
	.dwattr $C$DW$26, DW_AT_external
	.dwattr $C$DW$26, DW_AT_TI_begin_file("./huff.c")
	.dwattr $C$DW$26, DW_AT_TI_begin_line(0x47)
	.dwattr $C$DW$26, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$26, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./huff.c",line 72,column 1,is_stmt,address _jpec_huff_del

	.dwfde $C$DW$CIE, _jpec_huff_del
$C$DW$27	.dwtag  DW_TAG_formal_parameter, DW_AT_name("h")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_h")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: jpec_huff_del                                                *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,AR0,XAR0,AR3,XAR3,SP,M40,SATA,SATD,  *
;*                        RDM,FRCT,SMUL                                        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_jpec_huff_del:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$28	.dwtag  DW_TAG_variable, DW_AT_name("h")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_h")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./huff.c",line 73,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L2,AC0 != #0 ; |73| 
                                        ; branchcc occurs ; |73| 
        AMOV #$C$FSL2, XAR0 ; |73| 
$C$DW$29	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$29, DW_AT_low_pc(0x00)
	.dwattr $C$DW$29, DW_AT_name("__abort_msg")
	.dwattr $C$DW$29, DW_AT_TI_call
        CALL #__abort_msg ; |73| 
                                        ; call occurs [#__abort_msg] ; |73| 
$C$L2:    
	.dwpsn	file "./huff.c",line 75,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0

        MOV #127, AC0 ; |75| 
||      MOV #7, AC1 ; |75| 

$C$DW$30	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$30, DW_AT_low_pc(0x00)
	.dwattr $C$DW$30, DW_AT_name("_jpec_huff_write_bits")
	.dwattr $C$DW$30, DW_AT_TI_call
        CALL #_jpec_huff_write_bits ; |75| 
                                        ; call occurs [#_jpec_huff_write_bits] ; |75| 
	.dwpsn	file "./huff.c",line 76,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$31	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$31, DW_AT_low_pc(0x00)
	.dwattr $C$DW$31, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$26, DW_AT_TI_end_file("./huff.c")
	.dwattr $C$DW$26, DW_AT_TI_end_line(0x4c)
	.dwattr $C$DW$26, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$26

	.sect	".text"
	.global	_jpec_huff_encode_block

$C$DW$32	.dwtag  DW_TAG_subprogram, DW_AT_name("jpec_huff_encode_block")
	.dwattr $C$DW$32, DW_AT_low_pc(_jpec_huff_encode_block)
	.dwattr $C$DW$32, DW_AT_high_pc(0x00)
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_jpec_huff_encode_block")
	.dwattr $C$DW$32, DW_AT_external
	.dwattr $C$DW$32, DW_AT_TI_begin_file("./huff.c")
	.dwattr $C$DW$32, DW_AT_TI_begin_line(0x4e)
	.dwattr $C$DW$32, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$32, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "./huff.c",line 79,column 1,is_stmt,address _jpec_huff_encode_block

	.dwfde $C$DW$CIE, _jpec_huff_encode_block
$C$DW$33	.dwtag  DW_TAG_formal_parameter, DW_AT_name("h")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_h")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_reg17]
$C$DW$34	.dwtag  DW_TAG_formal_parameter, DW_AT_name("block")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_block")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_reg19]
$C$DW$35	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buf")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_reg21]
;*******************************************************************************
;* FUNCTION NAME: jpec_huff_encode_block                                       *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,M40,  *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 16 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (14 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_jpec_huff_encode_block:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-15, SP
	.dwcfi	cfa_offset, 16
$C$DW$36	.dwtag  DW_TAG_variable, DW_AT_name("h")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_h")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$37	.dwtag  DW_TAG_variable, DW_AT_name("block")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_block")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$38	.dwtag  DW_TAG_variable, DW_AT_name("buf")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$39	.dwtag  DW_TAG_variable, DW_AT_name("state")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_state")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV XAR2, dbl(*SP(#4))
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./huff.c",line 80,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0

        BCC $C$L3,AC0 == #0 ; |80| 
||      MOV #0, AR1

                                        ; branchcc occurs ; |80| 
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        BCC $C$L3,AC0 == #0 ; |80| 
                                        ; branchcc occurs ; |80| 
        MOV dbl(*SP(#4)), XAR3
        MOV XAR3, AC0
        BCC $C$L3,AC0 == #0 ; |80| 
                                        ; branchcc occurs ; |80| 
        MOV #1, AR1
$C$L3:    
        BCC $C$L4,AR1 != #0 ; |80| 
                                        ; branchcc occurs ; |80| 
        AMOV #$C$FSL3, XAR0 ; |80| 
$C$DW$40	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$40, DW_AT_low_pc(0x00)
	.dwattr $C$DW$40, DW_AT_name("__abort_msg")
	.dwattr $C$DW$40, DW_AT_TI_call
        CALL #__abort_msg ; |80| 
                                        ; call occurs [#__abort_msg] ; |80| 
$C$L4:    
	.dwpsn	file "./huff.c",line 82,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3), AC0 ; |82| 
        MOV AC0, dbl(*SP(#6)) ; |82| 
	.dwpsn	file "./huff.c",line 83,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), AC0 ; |83| 
        MOV AC0, dbl(*SP(#8)) ; |83| 
	.dwpsn	file "./huff.c",line 84,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#4))), AC0 ; |84| 
        MOV AC0, dbl(*SP(#10)) ; |84| 
	.dwpsn	file "./huff.c",line 85,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV XAR3, dbl(*SP(#12))
	.dwpsn	file "./huff.c",line 86,column 5,is_stmt
        AMAR *SP(#6), XAR1
        MOV dbl(*SP(#2)), XAR0
$C$DW$41	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$41, DW_AT_low_pc(0x00)
	.dwattr $C$DW$41, DW_AT_name("_jpec_huff_encode_block_impl")
	.dwattr $C$DW$41, DW_AT_TI_call
        CALL #_jpec_huff_encode_block_impl ; |86| 
                                        ; call occurs [#_jpec_huff_encode_block_impl] ; |86| 
	.dwpsn	file "./huff.c",line 87,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#6)), AC0 ; |87| 
        MOV AC0, dbl(*AR3) ; |87| 
	.dwpsn	file "./huff.c",line 88,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#8)), AC0 ; |88| 
        MOV AC0, dbl(*AR3(short(#2))) ; |88| 
	.dwpsn	file "./huff.c",line 89,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#10)), AC0 ; |89| 
        MOV AC0, dbl(*AR3(short(#4))) ; |89| 
	.dwpsn	file "./huff.c",line 90,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#12)), XAR2
        MOV XAR2, dbl(*AR3(short(#6)))
	.dwpsn	file "./huff.c",line 91,column 1,is_stmt
        AADD #15, SP
	.dwcfi	cfa_offset, 1
$C$DW$42	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$42, DW_AT_low_pc(0x00)
	.dwattr $C$DW$42, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$32, DW_AT_TI_end_file("./huff.c")
	.dwattr $C$DW$32, DW_AT_TI_end_line(0x5b)
	.dwattr $C$DW$32, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$32

	.sect	".text"

$C$DW$43	.dwtag  DW_TAG_subprogram, DW_AT_name("jpec_huff_encode_block_impl")
	.dwattr $C$DW$43, DW_AT_low_pc(_jpec_huff_encode_block_impl)
	.dwattr $C$DW$43, DW_AT_high_pc(0x00)
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_jpec_huff_encode_block_impl")
	.dwattr $C$DW$43, DW_AT_TI_begin_file("./huff.c")
	.dwattr $C$DW$43, DW_AT_TI_begin_line(0x5d)
	.dwattr $C$DW$43, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$43, DW_AT_TI_max_frame_size(0x12)
	.dwpsn	file "./huff.c",line 94,column 1,is_stmt,address _jpec_huff_encode_block_impl

	.dwfde $C$DW$CIE, _jpec_huff_encode_block_impl
$C$DW$44	.dwtag  DW_TAG_formal_parameter, DW_AT_name("block")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_block")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_reg17]
$C$DW$45	.dwtag  DW_TAG_formal_parameter, DW_AT_name("s")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_s")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: jpec_huff_encode_block_impl                                  *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,    *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 18 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (16 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_jpec_huff_encode_block_impl:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-17, SP
	.dwcfi	cfa_offset, 18
$C$DW$46	.dwtag  DW_TAG_variable, DW_AT_name("block")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_block")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$47	.dwtag  DW_TAG_variable, DW_AT_name("s")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_s")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$48	.dwtag  DW_TAG_variable, DW_AT_name("val")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_val")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$49	.dwtag  DW_TAG_variable, DW_AT_name("bits")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_bits")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$50	.dwtag  DW_TAG_variable, DW_AT_name("nbits")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_nbits")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$51	.dwtag  DW_TAG_variable, DW_AT_name("nz")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_nz")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$52	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_bregx 0x24 12]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./huff.c",line 95,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0

        BCC $C$L5,AC0 == #0 ; |95| 
||      MOV #0, AR1

                                        ; branchcc occurs ; |95| 
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        BCC $C$L5,AC0 == #0 ; |95| 
                                        ; branchcc occurs ; |95| 
        MOV #1, AR1
$C$L5:    
        BCC $C$L6,AR1 != #0 ; |95| 
                                        ; branchcc occurs ; |95| 
        AMOV #$C$FSL4, XAR0 ; |95| 
$C$DW$53	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$53, DW_AT_low_pc(0x00)
	.dwattr $C$DW$53, DW_AT_name("__abort_msg")
	.dwattr $C$DW$53, DW_AT_TI_call
        CALL #__abort_msg ; |95| 
                                        ; call occurs [#__abort_msg] ; |95| 
$C$L6:    
	.dwpsn	file "./huff.c",line 98,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#384)), AC0 ; |98| 
        BCC $C$L7,AC0 <= #0 ; |98| 
                                        ; branchcc occurs ; |98| 
	.dwpsn	file "./huff.c",line 100,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(short(#4))), AC0 ; |100| 
        MOV dbl(*SP(#0)), XAR3
        SUB AC0, dbl(*AR3(#256)), AC0 ; |100| 
        MOV AC0, dbl(*SP(#4)) ; |100| 
	.dwpsn	file "./huff.c",line 101,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#256)), AC0 ; |101| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*AR3(short(#4))) ; |101| 
	.dwpsn	file "./huff.c",line 102,column 5,is_stmt
        B $C$L8   ; |102| 
                                        ; branch occurs ; |102| 
$C$L7:    
	.dwpsn	file "./huff.c",line 105,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(short(#4))), AC0 ; |105| 
        NEG AC0, AC0 ; |105| 
        MOV AC0, dbl(*SP(#4)) ; |105| 
	.dwpsn	file "./huff.c",line 106,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #0, AC0 ; |106| 
        MOV AC0, dbl(*AR3(short(#4))) ; |106| 
$C$L8:    
	.dwpsn	file "./huff.c",line 108,column 5,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |108| 
        MOV AC0, dbl(*SP(#6)) ; |108| 
	.dwpsn	file "./huff.c",line 109,column 5,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |109| 
        BCC $C$L9,AC0 >= #0 ; |109| 
                                        ; branchcc occurs ; |109| 
	.dwpsn	file "./huff.c",line 111,column 9,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |111| 
        NEG AC0, AC0 ; |111| 
        MOV AC0, dbl(*SP(#4)) ; |111| 
	.dwpsn	file "./huff.c",line 112,column 9,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |112| 
        NOT AC0, AC0 ; |112| 
        MOV AC0, dbl(*SP(#6)) ; |112| 
$C$L9:    
	.dwpsn	file "./huff.c",line 114,column 5,is_stmt
        MOV #0, AC0 ; |114| 
        MOV AC0, dbl(*SP(#8)) ; |114| 
        MOV dbl(*SP(#4)), AC0 ; |114| 
        BCC $C$L11,AC0 == #0 ; |114| 
                                        ; branchcc occurs ; |114| 
$C$L10:    
$C$DW$L$_jpec_huff_encode_block_impl$12$B:
        MOV dbl(*SP(#8)), AC0 ; |114| 
        ADD #1, AC0 ; |114| 
        MOV AC0, dbl(*SP(#8)) ; |114| 
        MOV dbl(*SP(#4)), AC0 ; |114| 
        SFTS AC0, #-1 ; |114| 
        MOV AC0, dbl(*SP(#4)) ; |114| 
        MOV dbl(*SP(#4)), AC0 ; |114| 
        BCC $C$L10,AC0 != #0 ; |114| 
                                        ; branchcc occurs ; |114| 
$C$DW$L$_jpec_huff_encode_block_impl$12$E:
$C$L11:    
	.dwpsn	file "./huff.c",line 115,column 5,is_stmt
        MOV *SP(#9), T0 ; |115| 
        SFTL T0, #1 ; |115| 
        AMOV #_jpec_dc_code, XAR3 ; |115| 
        MOV dbl(*AR3(T0)), AC0 ; |115| 
        MOV *SP(#9), T0 ; |115| 
        MOV dbl(*SP(#2)), XAR0
        AMOV #_jpec_dc_len, XAR3 ; |115| 
        MOV uns(*AR3(T0)), AC1 ; |115| 
$C$DW$54	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$54, DW_AT_low_pc(0x00)
	.dwattr $C$DW$54, DW_AT_name("_jpec_huff_write_bits")
	.dwattr $C$DW$54, DW_AT_TI_call
        CALL #_jpec_huff_write_bits ; |115| 
                                        ; call occurs [#_jpec_huff_write_bits] ; |115| 
	.dwpsn	file "./huff.c",line 116,column 5,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |116| 
        BCC $C$L12,AC0 == #0 ; |116| 
                                        ; branchcc occurs ; |116| 
	.dwpsn	file "./huff.c",line 117,column 9,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |117| 
        MOV dbl(*SP(#2)), XAR0
        MOV dbl(*SP(#8)), AC1 ; |117| 
$C$DW$55	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$55, DW_AT_low_pc(0x00)
	.dwattr $C$DW$55, DW_AT_name("_jpec_huff_write_bits")
	.dwattr $C$DW$55, DW_AT_TI_call
        CALL #_jpec_huff_write_bits ; |117| 
                                        ; call occurs [#_jpec_huff_write_bits] ; |117| 
$C$L12:    
	.dwpsn	file "./huff.c",line 119,column 13,is_stmt
        MOV #0, AC0 ; |119| 
        MOV AC0, dbl(*SP(#10)) ; |119| 
	.dwpsn	file "./huff.c",line 121,column 10,is_stmt
        MOV #1, AC0 ; |121| 
        MOV AC0, dbl(*SP(#12)) ; |121| 
	.dwpsn	file "./huff.c",line 121,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#12)), AC1 ; |121| 
        MOV dbl(*AR3(#384)), AC0 ; |121| 
        CMP AC1 >= AC0, TC1 ; |121| 
        BCC $C$L22,TC1 ; |121| 
                                        ; branchcc occurs ; |121| 
$C$L13:    
$C$DW$L$_jpec_huff_encode_block_impl$16$B:
	.dwpsn	file "./huff.c",line 123,column 9,is_stmt
        MOV *SP(#13), AR1 ; |123| 
        SFTL AR1, #1 ; |123| 
        AADD AR1, AR3 ; |123| 
        MOV dbl(*AR3(#256)), AC0 ; |123| 
        MOV AC0, dbl(*SP(#4)) ; |123| 
        BCC $C$L14,AC0 != #0 ; |123| 
                                        ; branchcc occurs ; |123| 
$C$DW$L$_jpec_huff_encode_block_impl$16$E:
$C$DW$L$_jpec_huff_encode_block_impl$17$B:
	.dwpsn	file "./huff.c",line 124,column 13,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |124| 
        ADD #1, AC0 ; |124| 
        MOV AC0, dbl(*SP(#10)) ; |124| 
        B $C$L21  ; |124| 
                                        ; branch occurs ; |124| 
$C$DW$L$_jpec_huff_encode_block_impl$17$E:
$C$L14:    
$C$DW$L$_jpec_huff_encode_block_impl$18$B:

$C$DW$56	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$57	.dwtag  DW_TAG_variable, DW_AT_name("j")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_bregx 0x24 14]
	.dwpsn	file "./huff.c",line 127,column 20,is_stmt
        MOV #16, AC0 ; |127| 
        MOV dbl(*SP(#10)), AC1 ; |127| 
        CMP AC1 < AC0, TC1 ; |127| 
        BCC $C$L16,TC1 ; |127| 
                                        ; branchcc occurs ; |127| 
$C$DW$L$_jpec_huff_encode_block_impl$18$E:
$C$L15:    
$C$DW$L$_jpec_huff_encode_block_impl$19$B:
	.dwpsn	file "./huff.c",line 129,column 17,is_stmt
        MOV dbl(*SP(#2)), XAR0
        MOV dbl(*(#(_jpec_ac_code+480))), AC0 ; |129| 
        MOV *(#(_jpec_ac_len+240)), AC1 ; |129| 
$C$DW$58	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$58, DW_AT_low_pc(0x00)
	.dwattr $C$DW$58, DW_AT_name("_jpec_huff_write_bits")
	.dwattr $C$DW$58, DW_AT_TI_call
        CALL #_jpec_huff_write_bits ; |129| 
                                        ; call occurs [#_jpec_huff_write_bits] ; |129| 
	.dwpsn	file "./huff.c",line 130,column 17,is_stmt
        MOV #16, AC0 ; |130| 
        SUB AC0, dbl(*SP(#10)), AC0 ; |130| 
        MOV AC0, dbl(*SP(#10)) ; |130| 
	.dwpsn	file "./huff.c",line 127,column 20,is_stmt
        MOV #16, AC0 ; |127| 
        MOV dbl(*SP(#10)), AC1 ; |127| 
        CMP AC1 >= AC0, TC1 ; |127| 
        BCC $C$L15,TC1 ; |127| 
                                        ; branchcc occurs ; |127| 
$C$DW$L$_jpec_huff_encode_block_impl$19$E:
$C$L16:    
$C$DW$L$_jpec_huff_encode_block_impl$20$B:
	.dwpsn	file "./huff.c",line 132,column 13,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |132| 
        MOV AC0, dbl(*SP(#6)) ; |132| 
	.dwpsn	file "./huff.c",line 133,column 13,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |133| 
        BCC $C$L17,AC0 >= #0 ; |133| 
                                        ; branchcc occurs ; |133| 
$C$DW$L$_jpec_huff_encode_block_impl$20$E:
$C$DW$L$_jpec_huff_encode_block_impl$21$B:
	.dwpsn	file "./huff.c",line 135,column 17,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |135| 
        NEG AC0, AC0 ; |135| 
        MOV AC0, dbl(*SP(#4)) ; |135| 
	.dwpsn	file "./huff.c",line 136,column 17,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |136| 
        NOT AC0, AC0 ; |136| 
        MOV AC0, dbl(*SP(#6)) ; |136| 
$C$DW$L$_jpec_huff_encode_block_impl$21$E:
$C$L17:    
$C$DW$L$_jpec_huff_encode_block_impl$22$B:
	.dwpsn	file "./huff.c",line 138,column 13,is_stmt
        MOV #0, AC0 ; |138| 
        MOV AC0, dbl(*SP(#8)) ; |138| 
        MOV dbl(*SP(#4)), AC0 ; |138| 
        BCC $C$L19,AC0 == #0 ; |138| 
                                        ; branchcc occurs ; |138| 
$C$DW$L$_jpec_huff_encode_block_impl$22$E:
$C$L18:    
$C$DW$L$_jpec_huff_encode_block_impl$23$B:
        MOV dbl(*SP(#8)), AC0 ; |138| 
        ADD #1, AC0 ; |138| 
        MOV AC0, dbl(*SP(#8)) ; |138| 
        MOV dbl(*SP(#4)), AC0 ; |138| 
        SFTS AC0, #-1 ; |138| 
        MOV AC0, dbl(*SP(#4)) ; |138| 
        MOV dbl(*SP(#4)), AC0 ; |138| 
        BCC $C$L18,AC0 != #0 ; |138| 
                                        ; branchcc occurs ; |138| 
$C$DW$L$_jpec_huff_encode_block_impl$23$E:
$C$L19:    
$C$DW$L$_jpec_huff_encode_block_impl$24$B:
	.dwpsn	file "./huff.c",line 139,column 21,is_stmt
        MOV dbl(*SP(#10)), AC1 ; |139| 
        MOV dbl(*SP(#8)), AC0 ; |139| 
        ADD AC1 << #4, AC0 ; |139| 
        MOV AC0, dbl(*SP(#14)) ; |139| 
	.dwpsn	file "./huff.c",line 140,column 13,is_stmt
        MOV *SP(#15), T0 ; |140| 
        SFTL T0, #1 ; |140| 
        AMOV #_jpec_ac_code, XAR3 ; |140| 
        MOV dbl(*AR3(T0)), AC0 ; |140| 
        MOV *SP(#15), T0 ; |140| 
        MOV dbl(*SP(#2)), XAR0
        AMOV #_jpec_ac_len, XAR3 ; |140| 
        MOV *AR3(T0), AC1 ; |140| 
$C$DW$59	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$59, DW_AT_low_pc(0x00)
	.dwattr $C$DW$59, DW_AT_name("_jpec_huff_write_bits")
	.dwattr $C$DW$59, DW_AT_TI_call
        CALL #_jpec_huff_write_bits ; |140| 
                                        ; call occurs [#_jpec_huff_write_bits] ; |140| 
	.dwpsn	file "./huff.c",line 141,column 13,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |141| 
        BCC $C$L20,AC0 == #0 ; |141| 
                                        ; branchcc occurs ; |141| 
$C$DW$L$_jpec_huff_encode_block_impl$24$E:
$C$DW$L$_jpec_huff_encode_block_impl$25$B:
	.dwpsn	file "./huff.c",line 142,column 17,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |142| 
        MOV dbl(*SP(#2)), XAR0
        MOV dbl(*SP(#8)), AC1 ; |142| 
$C$DW$60	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$60, DW_AT_low_pc(0x00)
	.dwattr $C$DW$60, DW_AT_name("_jpec_huff_write_bits")
	.dwattr $C$DW$60, DW_AT_TI_call
        CALL #_jpec_huff_write_bits ; |142| 
                                        ; call occurs [#_jpec_huff_write_bits] ; |142| 
$C$DW$L$_jpec_huff_encode_block_impl$25$E:
$C$L20:    
$C$DW$L$_jpec_huff_encode_block_impl$26$B:
	.dwpsn	file "./huff.c",line 143,column 13,is_stmt
        MOV #0, AC0 ; |143| 
        MOV AC0, dbl(*SP(#10)) ; |143| 
	.dwendtag $C$DW$56

$C$DW$L$_jpec_huff_encode_block_impl$26$E:
$C$L21:    
$C$DW$L$_jpec_huff_encode_block_impl$27$B:
	.dwpsn	file "./huff.c",line 121,column 33,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |121| 
        ADD #1, AC0 ; |121| 
        MOV AC0, dbl(*SP(#12)) ; |121| 
	.dwpsn	file "./huff.c",line 121,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#12)), AC1 ; |121| 
        MOV dbl(*AR3(#384)), AC0 ; |121| 
        CMP AC1 < AC0, TC1 ; |121| 
        BCC $C$L13,TC1 ; |121| 
                                        ; branchcc occurs ; |121| 
$C$DW$L$_jpec_huff_encode_block_impl$27$E:
$C$L22:    
	.dwpsn	file "./huff.c",line 146,column 5,is_stmt
        MOV #64, AC0 ; |146| 
        MOV dbl(*AR3(#384)), AC1 ; |146| 
        CMP AC1 >= AC0, TC1 ; |146| 
        BCC $C$L23,TC1 ; |146| 
                                        ; branchcc occurs ; |146| 
	.dwpsn	file "./huff.c",line 148,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR0
        MOV dbl(*(#_jpec_ac_code)), AC0 ; |148| 
        MOV *(#_jpec_ac_len), AC1 ; |148| 
$C$DW$61	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$61, DW_AT_low_pc(0x00)
	.dwattr $C$DW$61, DW_AT_name("_jpec_huff_write_bits")
	.dwattr $C$DW$61, DW_AT_TI_call
        CALL #_jpec_huff_write_bits ; |148| 
                                        ; call occurs [#_jpec_huff_write_bits] ; |148| 
	.dwpsn	file "./huff.c",line 150,column 1,is_stmt
$C$L23:    
        AADD #17, SP
	.dwcfi	cfa_offset, 1
$C$DW$62	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$62, DW_AT_low_pc(0x00)
	.dwattr $C$DW$62, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$63	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$63, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/jpeg/huff.asm:$C$L13:1:1725826347")
	.dwattr $C$DW$63, DW_AT_TI_begin_file("./huff.c")
	.dwattr $C$DW$63, DW_AT_TI_begin_line(0x79)
	.dwattr $C$DW$63, DW_AT_TI_end_line(0x91)
$C$DW$64	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$64, DW_AT_low_pc($C$DW$L$_jpec_huff_encode_block_impl$16$B)
	.dwattr $C$DW$64, DW_AT_high_pc($C$DW$L$_jpec_huff_encode_block_impl$16$E)
$C$DW$65	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$65, DW_AT_low_pc($C$DW$L$_jpec_huff_encode_block_impl$18$B)
	.dwattr $C$DW$65, DW_AT_high_pc($C$DW$L$_jpec_huff_encode_block_impl$18$E)
$C$DW$66	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$66, DW_AT_low_pc($C$DW$L$_jpec_huff_encode_block_impl$20$B)
	.dwattr $C$DW$66, DW_AT_high_pc($C$DW$L$_jpec_huff_encode_block_impl$20$E)
$C$DW$67	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$67, DW_AT_low_pc($C$DW$L$_jpec_huff_encode_block_impl$21$B)
	.dwattr $C$DW$67, DW_AT_high_pc($C$DW$L$_jpec_huff_encode_block_impl$21$E)
$C$DW$68	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$68, DW_AT_low_pc($C$DW$L$_jpec_huff_encode_block_impl$22$B)
	.dwattr $C$DW$68, DW_AT_high_pc($C$DW$L$_jpec_huff_encode_block_impl$22$E)
$C$DW$69	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$69, DW_AT_low_pc($C$DW$L$_jpec_huff_encode_block_impl$24$B)
	.dwattr $C$DW$69, DW_AT_high_pc($C$DW$L$_jpec_huff_encode_block_impl$24$E)
$C$DW$70	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$70, DW_AT_low_pc($C$DW$L$_jpec_huff_encode_block_impl$25$B)
	.dwattr $C$DW$70, DW_AT_high_pc($C$DW$L$_jpec_huff_encode_block_impl$25$E)
$C$DW$71	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$71, DW_AT_low_pc($C$DW$L$_jpec_huff_encode_block_impl$17$B)
	.dwattr $C$DW$71, DW_AT_high_pc($C$DW$L$_jpec_huff_encode_block_impl$17$E)
$C$DW$72	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$72, DW_AT_low_pc($C$DW$L$_jpec_huff_encode_block_impl$26$B)
	.dwattr $C$DW$72, DW_AT_high_pc($C$DW$L$_jpec_huff_encode_block_impl$26$E)
$C$DW$73	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$73, DW_AT_low_pc($C$DW$L$_jpec_huff_encode_block_impl$27$B)
	.dwattr $C$DW$73, DW_AT_high_pc($C$DW$L$_jpec_huff_encode_block_impl$27$E)

$C$DW$74	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$74, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/jpeg/huff.asm:$C$L15:2:1725826347")
	.dwattr $C$DW$74, DW_AT_TI_begin_file("./huff.c")
	.dwattr $C$DW$74, DW_AT_TI_begin_line(0x7f)
	.dwattr $C$DW$74, DW_AT_TI_end_line(0x83)
$C$DW$75	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$75, DW_AT_low_pc($C$DW$L$_jpec_huff_encode_block_impl$19$B)
	.dwattr $C$DW$75, DW_AT_high_pc($C$DW$L$_jpec_huff_encode_block_impl$19$E)
	.dwendtag $C$DW$74


$C$DW$76	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$76, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/jpeg/huff.asm:$C$L18:2:1725826347")
	.dwattr $C$DW$76, DW_AT_TI_begin_file("./huff.c")
	.dwattr $C$DW$76, DW_AT_TI_begin_line(0x8a)
	.dwattr $C$DW$76, DW_AT_TI_end_line(0x8a)
$C$DW$77	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$77, DW_AT_low_pc($C$DW$L$_jpec_huff_encode_block_impl$23$B)
	.dwattr $C$DW$77, DW_AT_high_pc($C$DW$L$_jpec_huff_encode_block_impl$23$E)
	.dwendtag $C$DW$76

	.dwendtag $C$DW$63


$C$DW$78	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$78, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/jpeg/huff.asm:$C$L10:1:1725826347")
	.dwattr $C$DW$78, DW_AT_TI_begin_file("./huff.c")
	.dwattr $C$DW$78, DW_AT_TI_begin_line(0x72)
	.dwattr $C$DW$78, DW_AT_TI_end_line(0x72)
$C$DW$79	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$79, DW_AT_low_pc($C$DW$L$_jpec_huff_encode_block_impl$12$B)
	.dwattr $C$DW$79, DW_AT_high_pc($C$DW$L$_jpec_huff_encode_block_impl$12$E)
	.dwendtag $C$DW$78

	.dwattr $C$DW$43, DW_AT_TI_end_file("./huff.c")
	.dwattr $C$DW$43, DW_AT_TI_end_line(0x96)
	.dwattr $C$DW$43, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$43

	.sect	".text"

$C$DW$80	.dwtag  DW_TAG_subprogram, DW_AT_name("jpec_huff_write_bits")
	.dwattr $C$DW$80, DW_AT_low_pc(_jpec_huff_write_bits)
	.dwattr $C$DW$80, DW_AT_high_pc(0x00)
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_jpec_huff_write_bits")
	.dwattr $C$DW$80, DW_AT_TI_begin_file("./huff.c")
	.dwattr $C$DW$80, DW_AT_TI_begin_line(0xa6)
	.dwattr $C$DW$80, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$80, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "./huff.c",line 167,column 1,is_stmt,address _jpec_huff_write_bits

	.dwfde $C$DW$CIE, _jpec_huff_write_bits
$C$DW$81	.dwtag  DW_TAG_formal_parameter, DW_AT_name("s")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_s")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$81, DW_AT_location[DW_OP_reg17]
$C$DW$82	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bits")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_bits")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_reg0]
$C$DW$83	.dwtag  DW_TAG_formal_parameter, DW_AT_name("n")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_n")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$83, DW_AT_location[DW_OP_reg3]
;*******************************************************************************
;* FUNCTION NAME: jpec_huff_write_bits                                         *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T1,AR0,XAR0,AR3,XAR3,SP,CARRY,TC1,   *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 16 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (14 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_jpec_huff_write_bits:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-15, SP
	.dwcfi	cfa_offset, 16
$C$DW$84	.dwtag  DW_TAG_variable, DW_AT_name("s")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_s")
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$84, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$85	.dwtag  DW_TAG_variable, DW_AT_name("bits")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_bits")
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$85, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$86	.dwtag  DW_TAG_variable, DW_AT_name("n")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("_n")
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$86, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$87	.dwtag  DW_TAG_variable, DW_AT_name("mask")
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("_mask")
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$87, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$88	.dwtag  DW_TAG_variable, DW_AT_name("buffer")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("_buffer")
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$88, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$89	.dwtag  DW_TAG_variable, DW_AT_name("nbits")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_nbits")
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$89, DW_AT_location[DW_OP_bregx 0x24 10]
        MOV AC1, dbl(*SP(#4)) ; |167| 
        MOV AC0, dbl(*SP(#2)) ; |167| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./huff.c",line 168,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L24,AC0 != #0 ; |168| 
                                        ; branchcc occurs ; |168| 
        AMOV #$C$FSL5, XAR0 ; |168| 
$C$DW$90	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$90, DW_AT_low_pc(0x00)
	.dwattr $C$DW$90, DW_AT_name("__abort_msg")
	.dwattr $C$DW$90, DW_AT_TI_call
        CALL #__abort_msg ; |168| 
                                        ; call occurs [#__abort_msg] ; |168| 
$C$L24:    
	.dwpsn	file "./huff.c",line 170,column 13,is_stmt

        MOV #1, AC0 ; |170| 
||      MOV *SP(#5), T1 ; |170| 

        SFTS AC0, T1, AC0 ; |170| 
        SUB #1, AC0 ; |170| 
        MOV AC0, dbl(*SP(#6)) ; |170| 
	.dwpsn	file "./huff.c",line 171,column 13,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |171| 
        MOV AC0, dbl(*SP(#8)) ; |171| 
	.dwpsn	file "./huff.c",line 172,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#4)), AC0 ; |172| 
        ADD dbl(*AR3(short(#2))), AC0, AC0 ; |172| 
        MOV AC0, dbl(*SP(#10)) ; |172| 
	.dwpsn	file "./huff.c",line 173,column 5,is_stmt
        MOV dbl(*SP(#8)), AC1 ; |173| 
        MOV dbl(*SP(#6)), AC0 ; |173| 
        AND AC1, AC0 ; |173| 
        MOV AC0, dbl(*SP(#8)) ; |173| 
	.dwpsn	file "./huff.c",line 174,column 5,is_stmt
        MOV #24, AC0 ; |174| 
        SUB dbl(*SP(#10)), AC0, AC0 ; |174| 

        MOV dbl(*SP(#8)), AC0 ; |174| 
||      MOV AC0, T1 ; |174| 

        SFTS AC0, T1, AC0 ; |174| 
        MOV AC0, dbl(*SP(#8)) ; |174| 
	.dwpsn	file "./huff.c",line 175,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#8)), AC1 ; |175| 
        MOV dbl(*AR3), AC0 ; |175| 
        OR AC1, AC0 ; |175| 
        MOV AC0, dbl(*SP(#8)) ; |175| 
	.dwpsn	file "./huff.c",line 176,column 12,is_stmt

        MOV dbl(*SP(#10)), AC1 ; |176| 
||      MOV #8, AC0 ; |176| 

        CMP AC1 < AC0, TC1 ; |176| 
        BCC $C$L27,TC1 ; |176| 
                                        ; branchcc occurs ; |176| 
$C$L25:    
$C$DW$L$_jpec_huff_write_bits$4$B:

$C$DW$91	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$92	.dwtag  DW_TAG_variable, DW_AT_name("chunk")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_chunk")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_bregx 0x24 12]
	.dwpsn	file "./huff.c",line 178,column 17,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |178| 
        SFTS AC0, #-16, AC0 ; |178| 
        AND #0x00ff, AC0, AC0 ; |178| 
        MOV AC0, dbl(*SP(#12)) ; |178| 
	.dwpsn	file "./huff.c",line 179,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#12)), AC0 ; |179| 
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$93	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$93, DW_AT_low_pc(0x00)
	.dwattr $C$DW$93, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$93, DW_AT_TI_call
        CALL #_jpec_buffer_write_byte ; |179| 
                                        ; call occurs [#_jpec_buffer_write_byte] ; |179| 
	.dwpsn	file "./huff.c",line 180,column 9,is_stmt
        MOV #255, AC0 ; |180| 
        MOV dbl(*SP(#12)), AC1 ; |180| 
        CMP AC1 != AC0, TC1 ; |180| 
        BCC $C$L26,TC1 ; |180| 
                                        ; branchcc occurs ; |180| 
$C$DW$L$_jpec_huff_write_bits$4$E:
$C$DW$L$_jpec_huff_write_bits$5$B:
	.dwpsn	file "./huff.c",line 181,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$94	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$94, DW_AT_low_pc(0x00)
	.dwattr $C$DW$94, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$94, DW_AT_TI_call

        CALL #_jpec_buffer_write_byte ; |181| 
||      MOV #0, AC0 ; |181| 

                                        ; call occurs [#_jpec_buffer_write_byte] ; |181| 
$C$DW$L$_jpec_huff_write_bits$5$E:
$C$L26:    
$C$DW$L$_jpec_huff_write_bits$6$B:
	.dwpsn	file "./huff.c",line 182,column 9,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |182| 
        SFTS AC0, #8, AC0 ; |182| 
        MOV AC0, dbl(*SP(#8)) ; |182| 
	.dwpsn	file "./huff.c",line 183,column 9,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |183| 
        SUB #8, AC0 ; |183| 
        MOV AC0, dbl(*SP(#10)) ; |183| 
	.dwendtag $C$DW$91

	.dwpsn	file "./huff.c",line 176,column 12,is_stmt

        MOV #8, AC0 ; |176| 
||      MOV dbl(*SP(#10)), AC1 ; |176| 

        CMP AC1 >= AC0, TC1 ; |176| 
        BCC $C$L25,TC1 ; |176| 
                                        ; branchcc occurs ; |176| 
$C$DW$L$_jpec_huff_write_bits$6$E:
$C$L27:    
	.dwpsn	file "./huff.c",line 185,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#8)), AC0 ; |185| 
        MOV AC0, dbl(*AR3) ; |185| 
	.dwpsn	file "./huff.c",line 186,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#10)), AC0 ; |186| 
        MOV AC0, dbl(*AR3(short(#2))) ; |186| 
	.dwpsn	file "./huff.c",line 187,column 1,is_stmt
        AADD #15, SP
	.dwcfi	cfa_offset, 1
$C$DW$95	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$95, DW_AT_low_pc(0x00)
	.dwattr $C$DW$95, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$96	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$96, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/jpeg/huff.asm:$C$L25:1:1725826347")
	.dwattr $C$DW$96, DW_AT_TI_begin_file("./huff.c")
	.dwattr $C$DW$96, DW_AT_TI_begin_line(0xb0)
	.dwattr $C$DW$96, DW_AT_TI_end_line(0xb8)
$C$DW$97	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$97, DW_AT_low_pc($C$DW$L$_jpec_huff_write_bits$4$B)
	.dwattr $C$DW$97, DW_AT_high_pc($C$DW$L$_jpec_huff_write_bits$4$E)
$C$DW$98	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$98, DW_AT_low_pc($C$DW$L$_jpec_huff_write_bits$5$B)
	.dwattr $C$DW$98, DW_AT_high_pc($C$DW$L$_jpec_huff_write_bits$5$E)
$C$DW$99	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$99, DW_AT_low_pc($C$DW$L$_jpec_huff_write_bits$6$B)
	.dwattr $C$DW$99, DW_AT_high_pc($C$DW$L$_jpec_huff_write_bits$6$E)
	.dwendtag $C$DW$96

	.dwattr $C$DW$80, DW_AT_TI_end_file("./huff.c")
	.dwattr $C$DW$80, DW_AT_TI_end_line(0xbb)
	.dwattr $C$DW$80, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$80

;*******************************************************************************
;* FAR STRINGS                                                                 *
;*******************************************************************************
	.sect	".const:.string"
	.align	2
$C$FSL1:	.string	"Assertion failed, (skel), file ./huff.c, line 54",10,0
	.align	2
$C$FSL2:	.string	"Assertion failed, (h), file ./huff.c, line 73",10,0
	.align	2
$C$FSL3:	.string	"Assertion failed, (h && block && buf), file ./huff.c, line "
	.string	"80",10,0
	.align	2
$C$FSL4:	.string	"Assertion failed, (block && s), file ./huff.c, line 95",10,0
	.align	2
$C$FSL5:	.string	"Assertion failed, (s), file ./huff.c, line 168",10,0
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_jpec_buffer_write_byte
	.global	_memset
	.global	_jpec_dc_len
	.global	_jpec_dc_code
	.global	_jpec_ac_len
	.global	_jpec_ac_code
	.global	__abort_msg

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x17)

$C$DW$T$26	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)
$C$DW$100	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$T$26

$C$DW$T$27	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_address_class(0x20)

$C$DW$T$32	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$32, DW_AT_language(DW_LANG_C)
$C$DW$101	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$3)
$C$DW$102	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$29)
$C$DW$103	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$31)
	.dwendtag $C$DW$T$32

$C$DW$T$33	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$33, DW_AT_address_class(0x20)
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
$C$DW$T$62	.dwtag  DW_TAG_typedef, DW_AT_name("int16_t")
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$62, DW_AT_language(DW_LANG_C)
$C$DW$104	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$62)
$C$DW$T$63	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$104)

$C$DW$T$64	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$64, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$64, DW_AT_byte_size(0x100)
$C$DW$105	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$105, DW_AT_upper_bound(0xff)
	.dwendtag $C$DW$T$64

$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)
$C$DW$T$38	.dwtag  DW_TAG_typedef, DW_AT_name("size_t")
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$38, DW_AT_language(DW_LANG_C)
$C$DW$T$23	.dwtag  DW_TAG_typedef, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
$C$DW$T$24	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$24, DW_AT_address_class(0x17)
$C$DW$106	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$23)
$C$DW$T$66	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$106)

$C$DW$T$67	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$T$67, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$67, DW_AT_byte_size(0x0c)
$C$DW$107	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$107, DW_AT_upper_bound(0x0b)
	.dwendtag $C$DW$T$67

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)
$C$DW$T$20	.dwtag  DW_TAG_typedef, DW_AT_name("int32_t")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$20, DW_AT_language(DW_LANG_C)

$C$DW$T$21	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x80)
$C$DW$108	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$108, DW_AT_upper_bound(0x3f)
	.dwendtag $C$DW$T$21

$C$DW$109	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$20)
$C$DW$T$71	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$71, DW_AT_type(*$C$DW$109)

$C$DW$T$72	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$72, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$T$72, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$72, DW_AT_byte_size(0x18)
$C$DW$110	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$110, DW_AT_upper_bound(0x0b)
	.dwendtag $C$DW$T$72


$C$DW$T$73	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$73, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$T$73, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$73, DW_AT_byte_size(0x200)
$C$DW$111	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$111, DW_AT_upper_bound(0xff)
	.dwendtag $C$DW$T$73

$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)
$C$DW$T$59	.dwtag  DW_TAG_typedef, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$59, DW_AT_language(DW_LANG_C)
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

$C$DW$T$19	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$19, DW_AT_byte_size(0x80)
$C$DW$112	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$112, DW_AT_upper_bound(0x3f)
	.dwendtag $C$DW$T$19

$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x02)
$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x02)
$C$DW$T$41	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$41, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$41, DW_AT_name("signed char")
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x01)
$C$DW$113	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$41)
$C$DW$T$42	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$113)
$C$DW$T$43	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$43, DW_AT_address_class(0x17)

$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_name("jpec_block_t_")
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x182)
$C$DW$114	.dwtag  DW_TAG_member
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$114, DW_AT_name("dct")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_dct")
	.dwattr $C$DW$114, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$114, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$115	.dwtag  DW_TAG_member
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$115, DW_AT_name("quant")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_quant")
	.dwattr $C$DW$115, DW_AT_data_member_location[DW_OP_plus_uconst 0x80]
	.dwattr $C$DW$115, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$116	.dwtag  DW_TAG_member
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$116, DW_AT_name("zz")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("_zz")
	.dwattr $C$DW$116, DW_AT_data_member_location[DW_OP_plus_uconst 0x100]
	.dwattr $C$DW$116, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$117	.dwtag  DW_TAG_member
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$117, DW_AT_name("len")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_len")
	.dwattr $C$DW$117, DW_AT_data_member_location[DW_OP_plus_uconst 0x180]
	.dwattr $C$DW$117, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$22

$C$DW$T$28	.dwtag  DW_TAG_typedef, DW_AT_name("jpec_block_t")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C)
$C$DW$T$29	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$29, DW_AT_address_class(0x17)

$C$DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$25, DW_AT_name("jpec_buffer_t_")
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x06)
$C$DW$118	.dwtag  DW_TAG_member
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$118, DW_AT_name("stream")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_stream")
	.dwattr $C$DW$118, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$118, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$119	.dwtag  DW_TAG_member
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$119, DW_AT_name("len")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_len")
	.dwattr $C$DW$119, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$119, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$120	.dwtag  DW_TAG_member
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$120, DW_AT_name("siz")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_siz")
	.dwattr $C$DW$120, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$120, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$25

$C$DW$T$30	.dwtag  DW_TAG_typedef, DW_AT_name("jpec_buffer_t")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$30, DW_AT_language(DW_LANG_C)
$C$DW$T$31	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$31, DW_AT_address_class(0x17)

$C$DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$34, DW_AT_name("jpec_huff_skel_t_")
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x06)
$C$DW$121	.dwtag  DW_TAG_member
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$121, DW_AT_name("opq")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("_opq")
	.dwattr $C$DW$121, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$121, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$122	.dwtag  DW_TAG_member
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$122, DW_AT_name("del")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_del")
	.dwattr $C$DW$122, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$122, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$123	.dwtag  DW_TAG_member
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$123, DW_AT_name("encode_block")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_encode_block")
	.dwattr $C$DW$123, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$123, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$34

$C$DW$T$47	.dwtag  DW_TAG_typedef, DW_AT_name("jpec_huff_skel_t")
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$47, DW_AT_language(DW_LANG_C)
$C$DW$T$48	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$48, DW_AT_address_class(0x17)

$C$DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$35, DW_AT_name("jpec_huff_state_t_")
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x08)
$C$DW$124	.dwtag  DW_TAG_member
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$124, DW_AT_name("buffer")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_buffer")
	.dwattr $C$DW$124, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$124, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$125	.dwtag  DW_TAG_member
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$125, DW_AT_name("nbits")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_nbits")
	.dwattr $C$DW$125, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$125, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$126	.dwtag  DW_TAG_member
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$126, DW_AT_name("dc")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_dc")
	.dwattr $C$DW$126, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$126, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$127	.dwtag  DW_TAG_member
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$127, DW_AT_name("buf")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$127, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$127, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$35

$C$DW$T$36	.dwtag  DW_TAG_typedef, DW_AT_name("jpec_huff_state_t")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)
$C$DW$T$56	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$56, DW_AT_address_class(0x17)

$C$DW$T$37	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$37, DW_AT_name("jpec_huff_t_")
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x08)
$C$DW$128	.dwtag  DW_TAG_member
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$128, DW_AT_name("state")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_state")
	.dwattr $C$DW$128, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$128, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$37

$C$DW$T$50	.dwtag  DW_TAG_typedef, DW_AT_name("jpec_huff_t")
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$50, DW_AT_language(DW_LANG_C)
$C$DW$T$51	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$51, DW_AT_address_class(0x17)
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

$C$DW$129	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$129, DW_AT_location[DW_OP_reg0]
$C$DW$130	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$130, DW_AT_location[DW_OP_reg1]
$C$DW$131	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$131, DW_AT_location[DW_OP_reg2]
$C$DW$132	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$132, DW_AT_location[DW_OP_reg3]
$C$DW$133	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$133, DW_AT_location[DW_OP_reg4]
$C$DW$134	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$134, DW_AT_location[DW_OP_reg5]
$C$DW$135	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$135, DW_AT_location[DW_OP_reg6]
$C$DW$136	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$136, DW_AT_location[DW_OP_reg7]
$C$DW$137	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$137, DW_AT_location[DW_OP_reg8]
$C$DW$138	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$138, DW_AT_location[DW_OP_reg9]
$C$DW$139	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$139, DW_AT_location[DW_OP_reg10]
$C$DW$140	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$140, DW_AT_location[DW_OP_reg11]
$C$DW$141	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$141, DW_AT_location[DW_OP_reg12]
$C$DW$142	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$142, DW_AT_location[DW_OP_reg13]
$C$DW$143	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$143, DW_AT_location[DW_OP_reg14]
$C$DW$144	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$144, DW_AT_location[DW_OP_reg15]
$C$DW$145	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$145, DW_AT_location[DW_OP_reg16]
$C$DW$146	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$146, DW_AT_location[DW_OP_reg17]
$C$DW$147	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$147, DW_AT_location[DW_OP_reg18]
$C$DW$148	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$148, DW_AT_location[DW_OP_reg19]
$C$DW$149	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$149, DW_AT_location[DW_OP_reg20]
$C$DW$150	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$150, DW_AT_location[DW_OP_reg21]
$C$DW$151	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$151, DW_AT_location[DW_OP_reg22]
$C$DW$152	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$152, DW_AT_location[DW_OP_reg23]
$C$DW$153	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$153, DW_AT_location[DW_OP_reg24]
$C$DW$154	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$154, DW_AT_location[DW_OP_reg25]
$C$DW$155	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$155, DW_AT_location[DW_OP_reg26]
$C$DW$156	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$156, DW_AT_location[DW_OP_reg27]
$C$DW$157	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$157, DW_AT_location[DW_OP_reg28]
$C$DW$158	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$158, DW_AT_location[DW_OP_reg29]
$C$DW$159	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$159, DW_AT_location[DW_OP_reg30]
$C$DW$160	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$160, DW_AT_location[DW_OP_reg31]
$C$DW$161	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$161, DW_AT_location[DW_OP_regx 0x20]
$C$DW$162	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$162, DW_AT_location[DW_OP_regx 0x21]
$C$DW$163	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$163, DW_AT_location[DW_OP_regx 0x22]
$C$DW$164	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$164, DW_AT_location[DW_OP_regx 0x23]
$C$DW$165	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$165, DW_AT_location[DW_OP_regx 0x24]
$C$DW$166	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$166, DW_AT_location[DW_OP_regx 0x25]
$C$DW$167	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$167, DW_AT_location[DW_OP_regx 0x26]
$C$DW$168	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$168, DW_AT_location[DW_OP_regx 0x27]
$C$DW$169	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$169, DW_AT_location[DW_OP_regx 0x28]
$C$DW$170	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$170, DW_AT_location[DW_OP_regx 0x29]
$C$DW$171	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$171, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$172	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$172, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$173	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$173, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$174	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$174, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$175	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$175, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$176	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$176, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$177	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$177, DW_AT_location[DW_OP_regx 0x30]
$C$DW$178	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$178, DW_AT_location[DW_OP_regx 0x31]
$C$DW$179	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$179, DW_AT_location[DW_OP_regx 0x32]
$C$DW$180	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$180, DW_AT_location[DW_OP_regx 0x33]
$C$DW$181	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$181, DW_AT_location[DW_OP_regx 0x34]
$C$DW$182	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$182, DW_AT_location[DW_OP_regx 0x35]
$C$DW$183	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$183, DW_AT_location[DW_OP_regx 0x36]
$C$DW$184	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$184, DW_AT_location[DW_OP_regx 0x37]
$C$DW$185	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$185, DW_AT_location[DW_OP_regx 0x38]
$C$DW$186	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$186, DW_AT_location[DW_OP_regx 0x39]
$C$DW$187	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$187, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$188	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$188, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$189	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$189, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$190	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$190, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$191	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$191, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$192	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$192, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$193	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$193, DW_AT_location[DW_OP_regx 0x40]
$C$DW$194	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$194, DW_AT_location[DW_OP_regx 0x41]
$C$DW$195	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$195, DW_AT_location[DW_OP_regx 0x42]
$C$DW$196	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$196, DW_AT_location[DW_OP_regx 0x43]
$C$DW$197	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$197, DW_AT_location[DW_OP_regx 0x44]
$C$DW$198	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$198, DW_AT_location[DW_OP_regx 0x45]
$C$DW$199	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$199, DW_AT_location[DW_OP_regx 0x46]
$C$DW$200	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$200, DW_AT_location[DW_OP_regx 0x47]
$C$DW$201	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$201, DW_AT_location[DW_OP_regx 0x48]
$C$DW$202	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$202, DW_AT_location[DW_OP_regx 0x49]
$C$DW$203	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$203, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$204	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$204, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$205	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$205, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$206	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$206, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$207	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$207, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$208	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$208, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$209	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$209, DW_AT_location[DW_OP_regx 0x50]
$C$DW$210	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$210, DW_AT_location[DW_OP_regx 0x51]
$C$DW$211	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$211, DW_AT_location[DW_OP_regx 0x52]
$C$DW$212	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$212, DW_AT_location[DW_OP_regx 0x53]
$C$DW$213	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$213, DW_AT_location[DW_OP_regx 0x54]
$C$DW$214	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$214, DW_AT_location[DW_OP_regx 0x55]
$C$DW$215	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$215, DW_AT_location[DW_OP_regx 0x56]
$C$DW$216	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$216, DW_AT_location[DW_OP_regx 0x57]
$C$DW$217	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$217, DW_AT_location[DW_OP_regx 0x58]
$C$DW$218	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$218, DW_AT_location[DW_OP_regx 0x59]
$C$DW$219	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$219, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$220	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$220, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

