;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                        Unix v4.4.1 *
;* Date/Time created: Fri Oct  4 09:11:38 2024                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("./jpeg/huff.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen Unix v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/santiago/Research/DSPFuzz/on_board/test_programs")

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("jpec_buffer_write_byte")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$31)
$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$20)
	.dwendtag $C$DW$1


$C$DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("memset")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_memset")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$4, DW_AT_declaration
	.dwattr $C$DW$4, DW_AT_external
$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$3)
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$10)
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$38)
	.dwendtag $C$DW$4

$C$DW$8	.dwtag  DW_TAG_variable, DW_AT_name("jpec_dc_len")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_jpec_dc_len")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$8, DW_AT_declaration
	.dwattr $C$DW$8, DW_AT_external
$C$DW$9	.dwtag  DW_TAG_variable, DW_AT_name("jpec_dc_code")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_jpec_dc_code")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$9, DW_AT_declaration
	.dwattr $C$DW$9, DW_AT_external
$C$DW$10	.dwtag  DW_TAG_variable, DW_AT_name("jpec_ac_len")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_jpec_ac_len")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$10, DW_AT_declaration
	.dwattr $C$DW$10, DW_AT_external
$C$DW$11	.dwtag  DW_TAG_variable, DW_AT_name("jpec_ac_code")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_jpec_ac_code")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$11, DW_AT_declaration
	.dwattr $C$DW$11, DW_AT_external
	.global	_g_jpeg_huff
	.bss	_g_jpeg_huff,8,0,2
$C$DW$12	.dwtag  DW_TAG_variable, DW_AT_name("g_jpeg_huff")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_g_jpeg_huff")
	.dwattr $C$DW$12, DW_AT_location[DW_OP_addr _g_jpeg_huff]
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$12, DW_AT_external
;	/home/santiago/Research/Ti/C55_Tools/acp55 -@/tmp/996200r7Cfm 
	.sect	".text"
	.global	_jpec_huff_skel_init

$C$DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("jpec_huff_skel_init")
	.dwattr $C$DW$13, DW_AT_low_pc(_jpec_huff_skel_init)
	.dwattr $C$DW$13, DW_AT_high_pc(0x00)
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_jpec_huff_skel_init")
	.dwattr $C$DW$13, DW_AT_external
	.dwattr $C$DW$13, DW_AT_TI_begin_file("./jpeg/huff.c")
	.dwattr $C$DW$13, DW_AT_TI_begin_line(0x34)
	.dwattr $C$DW$13, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$13, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./jpeg/huff.c",line 53,column 1,is_stmt,address _jpec_huff_skel_init

	.dwfde $C$DW$CIE, _jpec_huff_skel_init
$C$DW$14	.dwtag  DW_TAG_formal_parameter, DW_AT_name("skel")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_skel")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_reg17]
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
$C$DW$15	.dwtag  DW_TAG_variable, DW_AT_name("skel")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_skel")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./jpeg/huff.c",line 55,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L1,AC0 == #0 ; |55| 
                                        ; branchcc occurs ; |55| 
	.dwpsn	file "./jpeg/huff.c",line 56,column 9,is_stmt
	.dwpsn	file "./jpeg/huff.c",line 58,column 5,is_stmt
        MOV #0, T0
$C$DW$16	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$16, DW_AT_low_pc(0x00)
	.dwattr $C$DW$16, DW_AT_name("_memset")
	.dwattr $C$DW$16, DW_AT_TI_call

        CALL #_memset ; |58| 
||      MOV #6, T1

                                        ; call occurs [#_memset] ; |58| 
	.dwpsn	file "./jpeg/huff.c",line 59,column 5,is_stmt
$C$DW$17	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$17, DW_AT_low_pc(0x00)
	.dwattr $C$DW$17, DW_AT_name("_jpec_huff_new")
	.dwattr $C$DW$17, DW_AT_TI_call
        CALL #_jpec_huff_new ; |59| 
                                        ; call occurs [#_jpec_huff_new] ; |59| 
        MOV dbl(*SP(#0)), XAR3
        MOV XAR0, dbl(*AR3)
	.dwpsn	file "./jpeg/huff.c",line 60,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #(_jpec_huff_del >> 16) << #16, AC0 ; |60| 
        OR #(_jpec_huff_del & 0xffff), AC0, AC0 ; |60| 
        MOV AC0, dbl(*AR3(short(#2))) ; |60| 
	.dwpsn	file "./jpeg/huff.c",line 61,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #(_jpec_huff_encode_block >> 16) << #16, AC0 ; |61| 
        OR #(_jpec_huff_encode_block & 0xffff), AC0, AC0 ; |61| 
        MOV AC0, dbl(*AR3(short(#4))) ; |61| 
	.dwpsn	file "./jpeg/huff.c",line 62,column 1,is_stmt
$C$L1:    
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$18	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$18, DW_AT_low_pc(0x00)
	.dwattr $C$DW$18, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$13, DW_AT_TI_end_file("./jpeg/huff.c")
	.dwattr $C$DW$13, DW_AT_TI_end_line(0x3e)
	.dwattr $C$DW$13, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$13

	.sect	".text"
	.global	_jpec_huff_new

$C$DW$19	.dwtag  DW_TAG_subprogram, DW_AT_name("jpec_huff_new")
	.dwattr $C$DW$19, DW_AT_low_pc(_jpec_huff_new)
	.dwattr $C$DW$19, DW_AT_high_pc(0x00)
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_jpec_huff_new")
	.dwattr $C$DW$19, DW_AT_external
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$19, DW_AT_TI_begin_file("./jpeg/huff.c")
	.dwattr $C$DW$19, DW_AT_TI_begin_line(0x40)
	.dwattr $C$DW$19, DW_AT_TI_begin_column(0x0e)
	.dwattr $C$DW$19, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./jpeg/huff.c",line 65,column 1,is_stmt,address _jpec_huff_new

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
$C$DW$20	.dwtag  DW_TAG_variable, DW_AT_name("h")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_h")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_bregx 0x24 0]
	.dwpsn	file "./jpeg/huff.c",line 66,column 18,is_stmt
        AMOV #_g_jpeg_huff, XAR3 ; |66| 
        MOV XAR3, dbl(*SP(#0))
	.dwpsn	file "./jpeg/huff.c",line 67,column 5,is_stmt
        MOV #0, AC0 ; |67| 
        MOV AC0, dbl(*AR3) ; |67| 
	.dwpsn	file "./jpeg/huff.c",line 68,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV AC0, dbl(*AR3(short(#2))) ; |68| 
	.dwpsn	file "./jpeg/huff.c",line 69,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV AC0, dbl(*AR3(short(#4))) ; |69| 
	.dwpsn	file "./jpeg/huff.c",line 70,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV AC0, dbl(*AR3(short(#6)))
	.dwpsn	file "./jpeg/huff.c",line 71,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
	.dwpsn	file "./jpeg/huff.c",line 72,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$21	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$21, DW_AT_low_pc(0x00)
	.dwattr $C$DW$21, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$19, DW_AT_TI_end_file("./jpeg/huff.c")
	.dwattr $C$DW$19, DW_AT_TI_end_line(0x48)
	.dwattr $C$DW$19, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$19

	.sect	".text"
	.global	_jpec_huff_del

$C$DW$22	.dwtag  DW_TAG_subprogram, DW_AT_name("jpec_huff_del")
	.dwattr $C$DW$22, DW_AT_low_pc(_jpec_huff_del)
	.dwattr $C$DW$22, DW_AT_high_pc(0x00)
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_jpec_huff_del")
	.dwattr $C$DW$22, DW_AT_external
	.dwattr $C$DW$22, DW_AT_TI_begin_file("./jpeg/huff.c")
	.dwattr $C$DW$22, DW_AT_TI_begin_line(0x4a)
	.dwattr $C$DW$22, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$22, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./jpeg/huff.c",line 75,column 1,is_stmt,address _jpec_huff_del

	.dwfde $C$DW$CIE, _jpec_huff_del
$C$DW$23	.dwtag  DW_TAG_formal_parameter, DW_AT_name("h")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_h")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_reg17]
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
$C$DW$24	.dwtag  DW_TAG_variable, DW_AT_name("h")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_h")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./jpeg/huff.c",line 77,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L2,AC0 == #0 ; |77| 
                                        ; branchcc occurs ; |77| 
	.dwpsn	file "./jpeg/huff.c",line 78,column 9,is_stmt
	.dwpsn	file "./jpeg/huff.c",line 81,column 5,is_stmt

        MOV #127, AC0 ; |81| 
||      MOV #7, AC1 ; |81| 

$C$DW$25	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$25, DW_AT_low_pc(0x00)
	.dwattr $C$DW$25, DW_AT_name("_jpec_huff_write_bits")
	.dwattr $C$DW$25, DW_AT_TI_call
        CALL #_jpec_huff_write_bits ; |81| 
                                        ; call occurs [#_jpec_huff_write_bits] ; |81| 
	.dwpsn	file "./jpeg/huff.c",line 82,column 1,is_stmt
$C$L2:    
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$26	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$26, DW_AT_low_pc(0x00)
	.dwattr $C$DW$26, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$22, DW_AT_TI_end_file("./jpeg/huff.c")
	.dwattr $C$DW$22, DW_AT_TI_end_line(0x52)
	.dwattr $C$DW$22, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$22

	.sect	".text"
	.global	_jpec_huff_encode_block

$C$DW$27	.dwtag  DW_TAG_subprogram, DW_AT_name("jpec_huff_encode_block")
	.dwattr $C$DW$27, DW_AT_low_pc(_jpec_huff_encode_block)
	.dwattr $C$DW$27, DW_AT_high_pc(0x00)
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_jpec_huff_encode_block")
	.dwattr $C$DW$27, DW_AT_external
	.dwattr $C$DW$27, DW_AT_TI_begin_file("./jpeg/huff.c")
	.dwattr $C$DW$27, DW_AT_TI_begin_line(0x54)
	.dwattr $C$DW$27, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$27, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "./jpeg/huff.c",line 85,column 1,is_stmt,address _jpec_huff_encode_block

	.dwfde $C$DW$CIE, _jpec_huff_encode_block
$C$DW$28	.dwtag  DW_TAG_formal_parameter, DW_AT_name("h")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_h")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_reg17]
$C$DW$29	.dwtag  DW_TAG_formal_parameter, DW_AT_name("block")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_block")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_reg19]
$C$DW$30	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buf")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_reg21]
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
$C$DW$31	.dwtag  DW_TAG_variable, DW_AT_name("h")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_h")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$32	.dwtag  DW_TAG_variable, DW_AT_name("block")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_block")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$33	.dwtag  DW_TAG_variable, DW_AT_name("buf")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$34	.dwtag  DW_TAG_variable, DW_AT_name("state")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_state")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV XAR2, dbl(*SP(#4))
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./jpeg/huff.c",line 87,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L3,AC0 == #0 ; |87| 
                                        ; branchcc occurs ; |87| 
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        BCC $C$L3,AC0 == #0 ; |87| 
                                        ; branchcc occurs ; |87| 
        MOV dbl(*SP(#4)), XAR3
        MOV XAR3, AC0
        BCC $C$L3,AC0 == #0 ; |87| 
                                        ; branchcc occurs ; |87| 
	.dwpsn	file "./jpeg/huff.c",line 88,column 9,is_stmt
	.dwpsn	file "./jpeg/huff.c",line 92,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3), AC0 ; |92| 
        MOV AC0, dbl(*SP(#6)) ; |92| 
	.dwpsn	file "./jpeg/huff.c",line 93,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), AC0 ; |93| 
        MOV AC0, dbl(*SP(#8)) ; |93| 
	.dwpsn	file "./jpeg/huff.c",line 94,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#4))), AC0 ; |94| 
        MOV AC0, dbl(*SP(#10)) ; |94| 
	.dwpsn	file "./jpeg/huff.c",line 95,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV XAR3, dbl(*SP(#12))
	.dwpsn	file "./jpeg/huff.c",line 96,column 5,is_stmt
        AMAR *SP(#6), XAR1
        MOV dbl(*SP(#2)), XAR0
$C$DW$35	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$35, DW_AT_low_pc(0x00)
	.dwattr $C$DW$35, DW_AT_name("_jpec_huff_encode_block_impl")
	.dwattr $C$DW$35, DW_AT_TI_call
        CALL #_jpec_huff_encode_block_impl ; |96| 
                                        ; call occurs [#_jpec_huff_encode_block_impl] ; |96| 
	.dwpsn	file "./jpeg/huff.c",line 97,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#6)), AC0 ; |97| 
        MOV AC0, dbl(*AR3) ; |97| 
	.dwpsn	file "./jpeg/huff.c",line 98,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#8)), AC0 ; |98| 
        MOV AC0, dbl(*AR3(short(#2))) ; |98| 
	.dwpsn	file "./jpeg/huff.c",line 99,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#10)), AC0 ; |99| 
        MOV AC0, dbl(*AR3(short(#4))) ; |99| 
	.dwpsn	file "./jpeg/huff.c",line 100,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#12)), XAR2
        MOV XAR2, dbl(*AR3(short(#6)))
	.dwpsn	file "./jpeg/huff.c",line 101,column 1,is_stmt
$C$L3:    
        AADD #15, SP
	.dwcfi	cfa_offset, 1
$C$DW$36	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$36, DW_AT_low_pc(0x00)
	.dwattr $C$DW$36, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$27, DW_AT_TI_end_file("./jpeg/huff.c")
	.dwattr $C$DW$27, DW_AT_TI_end_line(0x65)
	.dwattr $C$DW$27, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$27

	.sect	".text"

$C$DW$37	.dwtag  DW_TAG_subprogram, DW_AT_name("jpec_huff_encode_block_impl")
	.dwattr $C$DW$37, DW_AT_low_pc(_jpec_huff_encode_block_impl)
	.dwattr $C$DW$37, DW_AT_high_pc(0x00)
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_jpec_huff_encode_block_impl")
	.dwattr $C$DW$37, DW_AT_TI_begin_file("./jpeg/huff.c")
	.dwattr $C$DW$37, DW_AT_TI_begin_line(0x67)
	.dwattr $C$DW$37, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$37, DW_AT_TI_max_frame_size(0x12)
	.dwpsn	file "./jpeg/huff.c",line 104,column 1,is_stmt,address _jpec_huff_encode_block_impl

	.dwfde $C$DW$CIE, _jpec_huff_encode_block_impl
$C$DW$38	.dwtag  DW_TAG_formal_parameter, DW_AT_name("block")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_block")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_reg17]
$C$DW$39	.dwtag  DW_TAG_formal_parameter, DW_AT_name("s")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_s")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_reg19]
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
$C$DW$40	.dwtag  DW_TAG_variable, DW_AT_name("block")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_block")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$41	.dwtag  DW_TAG_variable, DW_AT_name("s")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_s")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$42	.dwtag  DW_TAG_variable, DW_AT_name("val")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_val")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$43	.dwtag  DW_TAG_variable, DW_AT_name("bits")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_bits")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$44	.dwtag  DW_TAG_variable, DW_AT_name("nbits")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_nbits")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$45	.dwtag  DW_TAG_variable, DW_AT_name("nz")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_nz")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$46	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_bregx 0x24 12]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./jpeg/huff.c",line 106,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L20,AC0 == #0 ; |106| 
                                        ; branchcc occurs ; |106| 
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        BCC $C$L20,AC0 == #0 ; |106| 
                                        ; branchcc occurs ; |106| 
	.dwpsn	file "./jpeg/huff.c",line 107,column 9,is_stmt
	.dwpsn	file "./jpeg/huff.c",line 112,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#384)), AC0 ; |112| 
        BCC $C$L4,AC0 <= #0 ; |112| 
                                        ; branchcc occurs ; |112| 
	.dwpsn	file "./jpeg/huff.c",line 114,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(short(#4))), AC0 ; |114| 
        MOV dbl(*SP(#0)), XAR3
        SUB AC0, dbl(*AR3(#256)), AC0 ; |114| 
        MOV AC0, dbl(*SP(#4)) ; |114| 
	.dwpsn	file "./jpeg/huff.c",line 115,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#256)), AC0 ; |115| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*AR3(short(#4))) ; |115| 
	.dwpsn	file "./jpeg/huff.c",line 116,column 5,is_stmt
        B $C$L5   ; |116| 
                                        ; branch occurs ; |116| 
$C$L4:    
	.dwpsn	file "./jpeg/huff.c",line 119,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(short(#4))), AC0 ; |119| 
        NEG AC0, AC0 ; |119| 
        MOV AC0, dbl(*SP(#4)) ; |119| 
	.dwpsn	file "./jpeg/huff.c",line 120,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #0, AC0 ; |120| 
        MOV AC0, dbl(*AR3(short(#4))) ; |120| 
$C$L5:    
	.dwpsn	file "./jpeg/huff.c",line 122,column 5,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |122| 
        MOV AC0, dbl(*SP(#6)) ; |122| 
	.dwpsn	file "./jpeg/huff.c",line 123,column 5,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |123| 
        BCC $C$L6,AC0 >= #0 ; |123| 
                                        ; branchcc occurs ; |123| 
	.dwpsn	file "./jpeg/huff.c",line 125,column 9,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |125| 
        NEG AC0, AC0 ; |125| 
        MOV AC0, dbl(*SP(#4)) ; |125| 
	.dwpsn	file "./jpeg/huff.c",line 126,column 9,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |126| 
        NOT AC0, AC0 ; |126| 
        MOV AC0, dbl(*SP(#6)) ; |126| 
$C$L6:    
	.dwpsn	file "./jpeg/huff.c",line 128,column 5,is_stmt
        MOV #0, AC0 ; |128| 
        MOV AC0, dbl(*SP(#8)) ; |128| 
        MOV dbl(*SP(#4)), AC0 ; |128| 
        BCC $C$L8,AC0 == #0 ; |128| 
                                        ; branchcc occurs ; |128| 
$C$L7:    
$C$DW$L$_jpec_huff_encode_block_impl$9$B:
        MOV dbl(*SP(#8)), AC0 ; |128| 
        ADD #1, AC0 ; |128| 
        MOV AC0, dbl(*SP(#8)) ; |128| 
        MOV dbl(*SP(#4)), AC0 ; |128| 
        SFTS AC0, #-1 ; |128| 
        MOV AC0, dbl(*SP(#4)) ; |128| 
        MOV dbl(*SP(#4)), AC0 ; |128| 
        BCC $C$L7,AC0 != #0 ; |128| 
                                        ; branchcc occurs ; |128| 
$C$DW$L$_jpec_huff_encode_block_impl$9$E:
$C$L8:    
	.dwpsn	file "./jpeg/huff.c",line 129,column 5,is_stmt
        MOV *SP(#9), T0 ; |129| 
        SFTL T0, #1 ; |129| 
        AMOV #_jpec_dc_code, XAR3 ; |129| 
        MOV dbl(*AR3(T0)), AC0 ; |129| 
        MOV *SP(#9), T0 ; |129| 
        MOV dbl(*SP(#2)), XAR0
        AMOV #_jpec_dc_len, XAR3 ; |129| 
        MOV uns(*AR3(T0)), AC1 ; |129| 
$C$DW$47	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$47, DW_AT_low_pc(0x00)
	.dwattr $C$DW$47, DW_AT_name("_jpec_huff_write_bits")
	.dwattr $C$DW$47, DW_AT_TI_call
        CALL #_jpec_huff_write_bits ; |129| 
                                        ; call occurs [#_jpec_huff_write_bits] ; |129| 
	.dwpsn	file "./jpeg/huff.c",line 130,column 5,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |130| 
        BCC $C$L9,AC0 == #0 ; |130| 
                                        ; branchcc occurs ; |130| 
	.dwpsn	file "./jpeg/huff.c",line 131,column 9,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |131| 
        MOV dbl(*SP(#2)), XAR0
        MOV dbl(*SP(#8)), AC1 ; |131| 
$C$DW$48	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$48, DW_AT_low_pc(0x00)
	.dwattr $C$DW$48, DW_AT_name("_jpec_huff_write_bits")
	.dwattr $C$DW$48, DW_AT_TI_call
        CALL #_jpec_huff_write_bits ; |131| 
                                        ; call occurs [#_jpec_huff_write_bits] ; |131| 
$C$L9:    
	.dwpsn	file "./jpeg/huff.c",line 133,column 13,is_stmt
        MOV #0, AC0 ; |133| 
        MOV AC0, dbl(*SP(#10)) ; |133| 
	.dwpsn	file "./jpeg/huff.c",line 135,column 10,is_stmt
        MOV #1, AC0 ; |135| 
        MOV AC0, dbl(*SP(#12)) ; |135| 
	.dwpsn	file "./jpeg/huff.c",line 135,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#12)), AC1 ; |135| 
        MOV dbl(*AR3(#384)), AC0 ; |135| 
        CMP AC1 >= AC0, TC1 ; |135| 
        BCC $C$L19,TC1 ; |135| 
                                        ; branchcc occurs ; |135| 
$C$L10:    
$C$DW$L$_jpec_huff_encode_block_impl$13$B:
	.dwpsn	file "./jpeg/huff.c",line 137,column 9,is_stmt
        MOV *SP(#13), AR1 ; |137| 
        SFTL AR1, #1 ; |137| 
        AADD AR1, AR3 ; |137| 
        MOV dbl(*AR3(#256)), AC0 ; |137| 
        MOV AC0, dbl(*SP(#4)) ; |137| 
        BCC $C$L11,AC0 != #0 ; |137| 
                                        ; branchcc occurs ; |137| 
$C$DW$L$_jpec_huff_encode_block_impl$13$E:
$C$DW$L$_jpec_huff_encode_block_impl$14$B:
	.dwpsn	file "./jpeg/huff.c",line 138,column 13,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |138| 
        ADD #1, AC0 ; |138| 
        MOV AC0, dbl(*SP(#10)) ; |138| 
        B $C$L18  ; |138| 
                                        ; branch occurs ; |138| 
$C$DW$L$_jpec_huff_encode_block_impl$14$E:
$C$L11:    
$C$DW$L$_jpec_huff_encode_block_impl$15$B:

$C$DW$49	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$50	.dwtag  DW_TAG_variable, DW_AT_name("j")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_bregx 0x24 14]
	.dwpsn	file "./jpeg/huff.c",line 141,column 20,is_stmt
        MOV #16, AC0 ; |141| 
        MOV dbl(*SP(#10)), AC1 ; |141| 
        CMP AC1 < AC0, TC1 ; |141| 
        BCC $C$L13,TC1 ; |141| 
                                        ; branchcc occurs ; |141| 
$C$DW$L$_jpec_huff_encode_block_impl$15$E:
$C$L12:    
$C$DW$L$_jpec_huff_encode_block_impl$16$B:
	.dwpsn	file "./jpeg/huff.c",line 143,column 17,is_stmt
        MOV dbl(*SP(#2)), XAR0
        MOV dbl(*(#(_jpec_ac_code+480))), AC0 ; |143| 
        MOV *(#(_jpec_ac_len+240)), AC1 ; |143| 
$C$DW$51	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$51, DW_AT_low_pc(0x00)
	.dwattr $C$DW$51, DW_AT_name("_jpec_huff_write_bits")
	.dwattr $C$DW$51, DW_AT_TI_call
        CALL #_jpec_huff_write_bits ; |143| 
                                        ; call occurs [#_jpec_huff_write_bits] ; |143| 
	.dwpsn	file "./jpeg/huff.c",line 144,column 17,is_stmt
        MOV #16, AC0 ; |144| 
        SUB AC0, dbl(*SP(#10)), AC0 ; |144| 
        MOV AC0, dbl(*SP(#10)) ; |144| 
	.dwpsn	file "./jpeg/huff.c",line 141,column 20,is_stmt
        MOV #16, AC0 ; |141| 
        MOV dbl(*SP(#10)), AC1 ; |141| 
        CMP AC1 >= AC0, TC1 ; |141| 
        BCC $C$L12,TC1 ; |141| 
                                        ; branchcc occurs ; |141| 
$C$DW$L$_jpec_huff_encode_block_impl$16$E:
$C$L13:    
$C$DW$L$_jpec_huff_encode_block_impl$17$B:
	.dwpsn	file "./jpeg/huff.c",line 146,column 13,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |146| 
        MOV AC0, dbl(*SP(#6)) ; |146| 
	.dwpsn	file "./jpeg/huff.c",line 147,column 13,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |147| 
        BCC $C$L14,AC0 >= #0 ; |147| 
                                        ; branchcc occurs ; |147| 
$C$DW$L$_jpec_huff_encode_block_impl$17$E:
$C$DW$L$_jpec_huff_encode_block_impl$18$B:
	.dwpsn	file "./jpeg/huff.c",line 149,column 17,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |149| 
        NEG AC0, AC0 ; |149| 
        MOV AC0, dbl(*SP(#4)) ; |149| 
	.dwpsn	file "./jpeg/huff.c",line 150,column 17,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |150| 
        NOT AC0, AC0 ; |150| 
        MOV AC0, dbl(*SP(#6)) ; |150| 
$C$DW$L$_jpec_huff_encode_block_impl$18$E:
$C$L14:    
$C$DW$L$_jpec_huff_encode_block_impl$19$B:
	.dwpsn	file "./jpeg/huff.c",line 152,column 13,is_stmt
        MOV #0, AC0 ; |152| 
        MOV AC0, dbl(*SP(#8)) ; |152| 
        MOV dbl(*SP(#4)), AC0 ; |152| 
        BCC $C$L16,AC0 == #0 ; |152| 
                                        ; branchcc occurs ; |152| 
$C$DW$L$_jpec_huff_encode_block_impl$19$E:
$C$L15:    
$C$DW$L$_jpec_huff_encode_block_impl$20$B:
        MOV dbl(*SP(#8)), AC0 ; |152| 
        ADD #1, AC0 ; |152| 
        MOV AC0, dbl(*SP(#8)) ; |152| 
        MOV dbl(*SP(#4)), AC0 ; |152| 
        SFTS AC0, #-1 ; |152| 
        MOV AC0, dbl(*SP(#4)) ; |152| 
        MOV dbl(*SP(#4)), AC0 ; |152| 
        BCC $C$L15,AC0 != #0 ; |152| 
                                        ; branchcc occurs ; |152| 
$C$DW$L$_jpec_huff_encode_block_impl$20$E:
$C$L16:    
$C$DW$L$_jpec_huff_encode_block_impl$21$B:
	.dwpsn	file "./jpeg/huff.c",line 153,column 21,is_stmt
        MOV dbl(*SP(#10)), AC1 ; |153| 
        MOV dbl(*SP(#8)), AC0 ; |153| 
        ADD AC1 << #4, AC0 ; |153| 
        MOV AC0, dbl(*SP(#14)) ; |153| 
	.dwpsn	file "./jpeg/huff.c",line 154,column 13,is_stmt
        MOV *SP(#15), T0 ; |154| 
        SFTL T0, #1 ; |154| 
        AMOV #_jpec_ac_code, XAR3 ; |154| 
        MOV dbl(*AR3(T0)), AC0 ; |154| 
        MOV *SP(#15), T0 ; |154| 
        MOV dbl(*SP(#2)), XAR0
        AMOV #_jpec_ac_len, XAR3 ; |154| 
        MOV *AR3(T0), AC1 ; |154| 
$C$DW$52	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$52, DW_AT_low_pc(0x00)
	.dwattr $C$DW$52, DW_AT_name("_jpec_huff_write_bits")
	.dwattr $C$DW$52, DW_AT_TI_call
        CALL #_jpec_huff_write_bits ; |154| 
                                        ; call occurs [#_jpec_huff_write_bits] ; |154| 
	.dwpsn	file "./jpeg/huff.c",line 155,column 13,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |155| 
        BCC $C$L17,AC0 == #0 ; |155| 
                                        ; branchcc occurs ; |155| 
$C$DW$L$_jpec_huff_encode_block_impl$21$E:
$C$DW$L$_jpec_huff_encode_block_impl$22$B:
	.dwpsn	file "./jpeg/huff.c",line 156,column 17,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |156| 
        MOV dbl(*SP(#2)), XAR0
        MOV dbl(*SP(#8)), AC1 ; |156| 
$C$DW$53	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$53, DW_AT_low_pc(0x00)
	.dwattr $C$DW$53, DW_AT_name("_jpec_huff_write_bits")
	.dwattr $C$DW$53, DW_AT_TI_call
        CALL #_jpec_huff_write_bits ; |156| 
                                        ; call occurs [#_jpec_huff_write_bits] ; |156| 
$C$DW$L$_jpec_huff_encode_block_impl$22$E:
$C$L17:    
$C$DW$L$_jpec_huff_encode_block_impl$23$B:
	.dwpsn	file "./jpeg/huff.c",line 157,column 13,is_stmt
        MOV #0, AC0 ; |157| 
        MOV AC0, dbl(*SP(#10)) ; |157| 
	.dwendtag $C$DW$49

$C$DW$L$_jpec_huff_encode_block_impl$23$E:
$C$L18:    
$C$DW$L$_jpec_huff_encode_block_impl$24$B:
	.dwpsn	file "./jpeg/huff.c",line 135,column 33,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |135| 
        ADD #1, AC0 ; |135| 
        MOV AC0, dbl(*SP(#12)) ; |135| 
	.dwpsn	file "./jpeg/huff.c",line 135,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#12)), AC1 ; |135| 
        MOV dbl(*AR3(#384)), AC0 ; |135| 
        CMP AC1 < AC0, TC1 ; |135| 
        BCC $C$L10,TC1 ; |135| 
                                        ; branchcc occurs ; |135| 
$C$DW$L$_jpec_huff_encode_block_impl$24$E:
$C$L19:    
	.dwpsn	file "./jpeg/huff.c",line 160,column 5,is_stmt
        MOV #64, AC0 ; |160| 
        MOV dbl(*AR3(#384)), AC1 ; |160| 
        CMP AC1 >= AC0, TC1 ; |160| 
        BCC $C$L20,TC1 ; |160| 
                                        ; branchcc occurs ; |160| 
	.dwpsn	file "./jpeg/huff.c",line 162,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR0
        MOV dbl(*(#_jpec_ac_code)), AC0 ; |162| 
        MOV *(#_jpec_ac_len), AC1 ; |162| 
$C$DW$54	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$54, DW_AT_low_pc(0x00)
	.dwattr $C$DW$54, DW_AT_name("_jpec_huff_write_bits")
	.dwattr $C$DW$54, DW_AT_TI_call
        CALL #_jpec_huff_write_bits ; |162| 
                                        ; call occurs [#_jpec_huff_write_bits] ; |162| 
	.dwpsn	file "./jpeg/huff.c",line 164,column 1,is_stmt
$C$L20:    
        AADD #17, SP
	.dwcfi	cfa_offset, 1
$C$DW$55	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$55, DW_AT_low_pc(0x00)
	.dwattr $C$DW$55, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$56	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$56, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/./jpeg/huff.asm:$C$L10:1:1728047498")
	.dwattr $C$DW$56, DW_AT_TI_begin_file("./jpeg/huff.c")
	.dwattr $C$DW$56, DW_AT_TI_begin_line(0x87)
	.dwattr $C$DW$56, DW_AT_TI_end_line(0x9f)
$C$DW$57	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$57, DW_AT_low_pc($C$DW$L$_jpec_huff_encode_block_impl$13$B)
	.dwattr $C$DW$57, DW_AT_high_pc($C$DW$L$_jpec_huff_encode_block_impl$13$E)
$C$DW$58	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$58, DW_AT_low_pc($C$DW$L$_jpec_huff_encode_block_impl$15$B)
	.dwattr $C$DW$58, DW_AT_high_pc($C$DW$L$_jpec_huff_encode_block_impl$15$E)
$C$DW$59	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$59, DW_AT_low_pc($C$DW$L$_jpec_huff_encode_block_impl$17$B)
	.dwattr $C$DW$59, DW_AT_high_pc($C$DW$L$_jpec_huff_encode_block_impl$17$E)
$C$DW$60	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$60, DW_AT_low_pc($C$DW$L$_jpec_huff_encode_block_impl$18$B)
	.dwattr $C$DW$60, DW_AT_high_pc($C$DW$L$_jpec_huff_encode_block_impl$18$E)
$C$DW$61	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$61, DW_AT_low_pc($C$DW$L$_jpec_huff_encode_block_impl$19$B)
	.dwattr $C$DW$61, DW_AT_high_pc($C$DW$L$_jpec_huff_encode_block_impl$19$E)
$C$DW$62	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$62, DW_AT_low_pc($C$DW$L$_jpec_huff_encode_block_impl$21$B)
	.dwattr $C$DW$62, DW_AT_high_pc($C$DW$L$_jpec_huff_encode_block_impl$21$E)
$C$DW$63	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$63, DW_AT_low_pc($C$DW$L$_jpec_huff_encode_block_impl$22$B)
	.dwattr $C$DW$63, DW_AT_high_pc($C$DW$L$_jpec_huff_encode_block_impl$22$E)
$C$DW$64	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$64, DW_AT_low_pc($C$DW$L$_jpec_huff_encode_block_impl$14$B)
	.dwattr $C$DW$64, DW_AT_high_pc($C$DW$L$_jpec_huff_encode_block_impl$14$E)
$C$DW$65	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$65, DW_AT_low_pc($C$DW$L$_jpec_huff_encode_block_impl$23$B)
	.dwattr $C$DW$65, DW_AT_high_pc($C$DW$L$_jpec_huff_encode_block_impl$23$E)
$C$DW$66	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$66, DW_AT_low_pc($C$DW$L$_jpec_huff_encode_block_impl$24$B)
	.dwattr $C$DW$66, DW_AT_high_pc($C$DW$L$_jpec_huff_encode_block_impl$24$E)

$C$DW$67	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$67, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/./jpeg/huff.asm:$C$L12:2:1728047498")
	.dwattr $C$DW$67, DW_AT_TI_begin_file("./jpeg/huff.c")
	.dwattr $C$DW$67, DW_AT_TI_begin_line(0x8d)
	.dwattr $C$DW$67, DW_AT_TI_end_line(0x91)
$C$DW$68	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$68, DW_AT_low_pc($C$DW$L$_jpec_huff_encode_block_impl$16$B)
	.dwattr $C$DW$68, DW_AT_high_pc($C$DW$L$_jpec_huff_encode_block_impl$16$E)
	.dwendtag $C$DW$67


$C$DW$69	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$69, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/./jpeg/huff.asm:$C$L15:2:1728047498")
	.dwattr $C$DW$69, DW_AT_TI_begin_file("./jpeg/huff.c")
	.dwattr $C$DW$69, DW_AT_TI_begin_line(0x98)
	.dwattr $C$DW$69, DW_AT_TI_end_line(0x98)
$C$DW$70	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$70, DW_AT_low_pc($C$DW$L$_jpec_huff_encode_block_impl$20$B)
	.dwattr $C$DW$70, DW_AT_high_pc($C$DW$L$_jpec_huff_encode_block_impl$20$E)
	.dwendtag $C$DW$69

	.dwendtag $C$DW$56


$C$DW$71	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$71, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/./jpeg/huff.asm:$C$L7:1:1728047498")
	.dwattr $C$DW$71, DW_AT_TI_begin_file("./jpeg/huff.c")
	.dwattr $C$DW$71, DW_AT_TI_begin_line(0x80)
	.dwattr $C$DW$71, DW_AT_TI_end_line(0x80)
$C$DW$72	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$72, DW_AT_low_pc($C$DW$L$_jpec_huff_encode_block_impl$9$B)
	.dwattr $C$DW$72, DW_AT_high_pc($C$DW$L$_jpec_huff_encode_block_impl$9$E)
	.dwendtag $C$DW$71

	.dwattr $C$DW$37, DW_AT_TI_end_file("./jpeg/huff.c")
	.dwattr $C$DW$37, DW_AT_TI_end_line(0xa4)
	.dwattr $C$DW$37, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$37

	.sect	".text"

$C$DW$73	.dwtag  DW_TAG_subprogram, DW_AT_name("jpec_huff_write_bits")
	.dwattr $C$DW$73, DW_AT_low_pc(_jpec_huff_write_bits)
	.dwattr $C$DW$73, DW_AT_high_pc(0x00)
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_jpec_huff_write_bits")
	.dwattr $C$DW$73, DW_AT_TI_begin_file("./jpeg/huff.c")
	.dwattr $C$DW$73, DW_AT_TI_begin_line(0xb4)
	.dwattr $C$DW$73, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$73, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "./jpeg/huff.c",line 181,column 1,is_stmt,address _jpec_huff_write_bits

	.dwfde $C$DW$CIE, _jpec_huff_write_bits
$C$DW$74	.dwtag  DW_TAG_formal_parameter, DW_AT_name("s")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_s")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_reg17]
$C$DW$75	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bits")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_bits")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$75, DW_AT_location[DW_OP_reg0]
$C$DW$76	.dwtag  DW_TAG_formal_parameter, DW_AT_name("n")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_n")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$76, DW_AT_location[DW_OP_reg3]
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
$C$DW$77	.dwtag  DW_TAG_variable, DW_AT_name("s")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_s")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$78	.dwtag  DW_TAG_variable, DW_AT_name("bits")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_bits")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$79	.dwtag  DW_TAG_variable, DW_AT_name("n")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_n")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$79, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$80	.dwtag  DW_TAG_variable, DW_AT_name("mask")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_mask")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$80, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$81	.dwtag  DW_TAG_variable, DW_AT_name("buffer")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_buffer")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$81, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$82	.dwtag  DW_TAG_variable, DW_AT_name("nbits")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_nbits")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_bregx 0x24 10]
        MOV AC1, dbl(*SP(#4)) ; |181| 
        MOV AC0, dbl(*SP(#2)) ; |181| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./jpeg/huff.c",line 183,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L24,AC0 == #0 ; |183| 
                                        ; branchcc occurs ; |183| 
	.dwpsn	file "./jpeg/huff.c",line 184,column 9,is_stmt
	.dwpsn	file "./jpeg/huff.c",line 187,column 13,is_stmt

        MOV #1, AC0 ; |187| 
||      MOV *SP(#5), T1 ; |187| 

        SFTS AC0, T1, AC0 ; |187| 
        SUB #1, AC0 ; |187| 
        MOV AC0, dbl(*SP(#6)) ; |187| 
	.dwpsn	file "./jpeg/huff.c",line 188,column 13,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |188| 
        MOV AC0, dbl(*SP(#8)) ; |188| 
	.dwpsn	file "./jpeg/huff.c",line 189,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#4)), AC0 ; |189| 
        ADD dbl(*AR3(short(#2))), AC0, AC0 ; |189| 
        MOV AC0, dbl(*SP(#10)) ; |189| 
	.dwpsn	file "./jpeg/huff.c",line 190,column 5,is_stmt
        MOV dbl(*SP(#8)), AC1 ; |190| 
        MOV dbl(*SP(#6)), AC0 ; |190| 
        AND AC1, AC0 ; |190| 
        MOV AC0, dbl(*SP(#8)) ; |190| 
	.dwpsn	file "./jpeg/huff.c",line 191,column 5,is_stmt
        MOV #24, AC0 ; |191| 
        SUB dbl(*SP(#10)), AC0, AC0 ; |191| 

        MOV dbl(*SP(#8)), AC0 ; |191| 
||      MOV AC0, T1 ; |191| 

        SFTS AC0, T1, AC0 ; |191| 
        MOV AC0, dbl(*SP(#8)) ; |191| 
	.dwpsn	file "./jpeg/huff.c",line 192,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#8)), AC1 ; |192| 
        MOV dbl(*AR3), AC0 ; |192| 
        OR AC1, AC0 ; |192| 
        MOV AC0, dbl(*SP(#8)) ; |192| 
	.dwpsn	file "./jpeg/huff.c",line 193,column 12,is_stmt

        MOV dbl(*SP(#10)), AC1 ; |193| 
||      MOV #8, AC0 ; |193| 

        CMP AC1 < AC0, TC1 ; |193| 
        BCC $C$L23,TC1 ; |193| 
                                        ; branchcc occurs ; |193| 
$C$L21:    
$C$DW$L$_jpec_huff_write_bits$3$B:

$C$DW$83	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$84	.dwtag  DW_TAG_variable, DW_AT_name("chunk")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_chunk")
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$84, DW_AT_location[DW_OP_bregx 0x24 12]
	.dwpsn	file "./jpeg/huff.c",line 195,column 17,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |195| 
        SFTS AC0, #-16, AC0 ; |195| 
        AND #0x00ff, AC0, AC0 ; |195| 
        MOV AC0, dbl(*SP(#12)) ; |195| 
	.dwpsn	file "./jpeg/huff.c",line 196,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#12)), AC0 ; |196| 
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$85	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$85, DW_AT_low_pc(0x00)
	.dwattr $C$DW$85, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$85, DW_AT_TI_call
        CALL #_jpec_buffer_write_byte ; |196| 
                                        ; call occurs [#_jpec_buffer_write_byte] ; |196| 
	.dwpsn	file "./jpeg/huff.c",line 197,column 9,is_stmt
        MOV #255, AC0 ; |197| 
        MOV dbl(*SP(#12)), AC1 ; |197| 
        CMP AC1 != AC0, TC1 ; |197| 
        BCC $C$L22,TC1 ; |197| 
                                        ; branchcc occurs ; |197| 
$C$DW$L$_jpec_huff_write_bits$3$E:
$C$DW$L$_jpec_huff_write_bits$4$B:
	.dwpsn	file "./jpeg/huff.c",line 198,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$86	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$86, DW_AT_low_pc(0x00)
	.dwattr $C$DW$86, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$86, DW_AT_TI_call

        CALL #_jpec_buffer_write_byte ; |198| 
||      MOV #0, AC0 ; |198| 

                                        ; call occurs [#_jpec_buffer_write_byte] ; |198| 
$C$DW$L$_jpec_huff_write_bits$4$E:
$C$L22:    
$C$DW$L$_jpec_huff_write_bits$5$B:
	.dwpsn	file "./jpeg/huff.c",line 199,column 9,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |199| 
        SFTS AC0, #8, AC0 ; |199| 
        MOV AC0, dbl(*SP(#8)) ; |199| 
	.dwpsn	file "./jpeg/huff.c",line 200,column 9,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |200| 
        SUB #8, AC0 ; |200| 
        MOV AC0, dbl(*SP(#10)) ; |200| 
	.dwendtag $C$DW$83

	.dwpsn	file "./jpeg/huff.c",line 193,column 12,is_stmt

        MOV #8, AC0 ; |193| 
||      MOV dbl(*SP(#10)), AC1 ; |193| 

        CMP AC1 >= AC0, TC1 ; |193| 
        BCC $C$L21,TC1 ; |193| 
                                        ; branchcc occurs ; |193| 
$C$DW$L$_jpec_huff_write_bits$5$E:
$C$L23:    
	.dwpsn	file "./jpeg/huff.c",line 202,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#8)), AC0 ; |202| 
        MOV AC0, dbl(*AR3) ; |202| 
	.dwpsn	file "./jpeg/huff.c",line 203,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#10)), AC0 ; |203| 
        MOV AC0, dbl(*AR3(short(#2))) ; |203| 
	.dwpsn	file "./jpeg/huff.c",line 204,column 1,is_stmt
$C$L24:    
        AADD #15, SP
	.dwcfi	cfa_offset, 1
$C$DW$87	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$87, DW_AT_low_pc(0x00)
	.dwattr $C$DW$87, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$88	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$88, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/./jpeg/huff.asm:$C$L21:1:1728047498")
	.dwattr $C$DW$88, DW_AT_TI_begin_file("./jpeg/huff.c")
	.dwattr $C$DW$88, DW_AT_TI_begin_line(0xc1)
	.dwattr $C$DW$88, DW_AT_TI_end_line(0xc9)
$C$DW$89	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$89, DW_AT_low_pc($C$DW$L$_jpec_huff_write_bits$3$B)
	.dwattr $C$DW$89, DW_AT_high_pc($C$DW$L$_jpec_huff_write_bits$3$E)
$C$DW$90	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$90, DW_AT_low_pc($C$DW$L$_jpec_huff_write_bits$4$B)
	.dwattr $C$DW$90, DW_AT_high_pc($C$DW$L$_jpec_huff_write_bits$4$E)
$C$DW$91	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$91, DW_AT_low_pc($C$DW$L$_jpec_huff_write_bits$5$B)
	.dwattr $C$DW$91, DW_AT_high_pc($C$DW$L$_jpec_huff_write_bits$5$E)
	.dwendtag $C$DW$88

	.dwattr $C$DW$73, DW_AT_TI_end_file("./jpeg/huff.c")
	.dwattr $C$DW$73, DW_AT_TI_end_line(0xcc)
	.dwattr $C$DW$73, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$73

;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_jpec_buffer_write_byte
	.global	_memset
	.global	_jpec_dc_len
	.global	_jpec_dc_code
	.global	_jpec_ac_len
	.global	_jpec_ac_code

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x17)

$C$DW$T$26	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)
$C$DW$92	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$T$26

$C$DW$T$27	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_address_class(0x20)

$C$DW$T$32	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$32, DW_AT_language(DW_LANG_C)
$C$DW$93	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$3)
$C$DW$94	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$29)
$C$DW$95	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$31)
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
$C$DW$T$58	.dwtag  DW_TAG_typedef, DW_AT_name("int16_t")
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$58, DW_AT_language(DW_LANG_C)
$C$DW$96	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$58)
$C$DW$T$59	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$96)

$C$DW$T$60	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$T$60, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$60, DW_AT_byte_size(0x100)
$C$DW$97	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$97, DW_AT_upper_bound(0xff)
	.dwendtag $C$DW$T$60

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
$C$DW$98	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$23)
$C$DW$T$62	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$98)

$C$DW$T$63	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$T$63, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$63, DW_AT_byte_size(0x0c)
$C$DW$99	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$99, DW_AT_upper_bound(0x0b)
	.dwendtag $C$DW$T$63

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
$C$DW$100	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$100, DW_AT_upper_bound(0x3f)
	.dwendtag $C$DW$T$21

$C$DW$101	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$20)
$C$DW$T$67	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$101)

$C$DW$T$68	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$T$68, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$68, DW_AT_byte_size(0x18)
$C$DW$102	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$102, DW_AT_upper_bound(0x0b)
	.dwendtag $C$DW$T$68


$C$DW$T$69	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$69, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$T$69, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$69, DW_AT_byte_size(0x200)
$C$DW$103	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$103, DW_AT_upper_bound(0xff)
	.dwendtag $C$DW$T$69

$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)
$C$DW$T$55	.dwtag  DW_TAG_typedef, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$55, DW_AT_language(DW_LANG_C)
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
$C$DW$104	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$104, DW_AT_upper_bound(0x3f)
	.dwendtag $C$DW$T$19

$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x02)
$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x02)

$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_name("jpec_block_t_")
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x182)
$C$DW$105	.dwtag  DW_TAG_member
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$105, DW_AT_name("dct")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_dct")
	.dwattr $C$DW$105, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$105, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$106	.dwtag  DW_TAG_member
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$106, DW_AT_name("quant")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_quant")
	.dwattr $C$DW$106, DW_AT_data_member_location[DW_OP_plus_uconst 0x80]
	.dwattr $C$DW$106, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$107	.dwtag  DW_TAG_member
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$107, DW_AT_name("zz")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_zz")
	.dwattr $C$DW$107, DW_AT_data_member_location[DW_OP_plus_uconst 0x100]
	.dwattr $C$DW$107, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$108	.dwtag  DW_TAG_member
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$108, DW_AT_name("len")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_len")
	.dwattr $C$DW$108, DW_AT_data_member_location[DW_OP_plus_uconst 0x180]
	.dwattr $C$DW$108, DW_AT_accessibility(DW_ACCESS_public)
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
$C$DW$109	.dwtag  DW_TAG_member
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$109, DW_AT_name("stream")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_stream")
	.dwattr $C$DW$109, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$109, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$110	.dwtag  DW_TAG_member
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$110, DW_AT_name("len")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_len")
	.dwattr $C$DW$110, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$110, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$111	.dwtag  DW_TAG_member
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$111, DW_AT_name("siz")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_siz")
	.dwattr $C$DW$111, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$111, DW_AT_accessibility(DW_ACCESS_public)
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
$C$DW$112	.dwtag  DW_TAG_member
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$112, DW_AT_name("opq")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_opq")
	.dwattr $C$DW$112, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$112, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$113	.dwtag  DW_TAG_member
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$113, DW_AT_name("del")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_del")
	.dwattr $C$DW$113, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$113, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$114	.dwtag  DW_TAG_member
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$114, DW_AT_name("encode_block")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_encode_block")
	.dwattr $C$DW$114, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$114, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$34

$C$DW$T$43	.dwtag  DW_TAG_typedef, DW_AT_name("jpec_huff_skel_t")
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$43, DW_AT_language(DW_LANG_C)
$C$DW$T$44	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$44, DW_AT_address_class(0x17)

$C$DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$35, DW_AT_name("jpec_huff_state_t_")
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x08)
$C$DW$115	.dwtag  DW_TAG_member
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$115, DW_AT_name("buffer")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_buffer")
	.dwattr $C$DW$115, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$115, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$116	.dwtag  DW_TAG_member
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$116, DW_AT_name("nbits")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("_nbits")
	.dwattr $C$DW$116, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$116, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$117	.dwtag  DW_TAG_member
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$117, DW_AT_name("dc")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_dc")
	.dwattr $C$DW$117, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$117, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$118	.dwtag  DW_TAG_member
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$118, DW_AT_name("buf")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$118, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$118, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$35

$C$DW$T$36	.dwtag  DW_TAG_typedef, DW_AT_name("jpec_huff_state_t")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)
$C$DW$T$52	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$52, DW_AT_address_class(0x17)

$C$DW$T$37	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$37, DW_AT_name("jpec_huff_t_")
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x08)
$C$DW$119	.dwtag  DW_TAG_member
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$119, DW_AT_name("state")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_state")
	.dwattr $C$DW$119, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$119, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$37

$C$DW$T$46	.dwtag  DW_TAG_typedef, DW_AT_name("jpec_huff_t")
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$46, DW_AT_language(DW_LANG_C)
$C$DW$T$47	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$47, DW_AT_address_class(0x17)
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

$C$DW$120	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$120, DW_AT_location[DW_OP_reg0]
$C$DW$121	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$121, DW_AT_location[DW_OP_reg1]
$C$DW$122	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$122, DW_AT_location[DW_OP_reg2]
$C$DW$123	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$123, DW_AT_location[DW_OP_reg3]
$C$DW$124	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$124, DW_AT_location[DW_OP_reg4]
$C$DW$125	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$125, DW_AT_location[DW_OP_reg5]
$C$DW$126	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$126, DW_AT_location[DW_OP_reg6]
$C$DW$127	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$127, DW_AT_location[DW_OP_reg7]
$C$DW$128	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$128, DW_AT_location[DW_OP_reg8]
$C$DW$129	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$129, DW_AT_location[DW_OP_reg9]
$C$DW$130	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$130, DW_AT_location[DW_OP_reg10]
$C$DW$131	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$131, DW_AT_location[DW_OP_reg11]
$C$DW$132	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$132, DW_AT_location[DW_OP_reg12]
$C$DW$133	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$133, DW_AT_location[DW_OP_reg13]
$C$DW$134	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$134, DW_AT_location[DW_OP_reg14]
$C$DW$135	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$135, DW_AT_location[DW_OP_reg15]
$C$DW$136	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$136, DW_AT_location[DW_OP_reg16]
$C$DW$137	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$137, DW_AT_location[DW_OP_reg17]
$C$DW$138	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$138, DW_AT_location[DW_OP_reg18]
$C$DW$139	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$139, DW_AT_location[DW_OP_reg19]
$C$DW$140	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$140, DW_AT_location[DW_OP_reg20]
$C$DW$141	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$141, DW_AT_location[DW_OP_reg21]
$C$DW$142	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$142, DW_AT_location[DW_OP_reg22]
$C$DW$143	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$143, DW_AT_location[DW_OP_reg23]
$C$DW$144	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$144, DW_AT_location[DW_OP_reg24]
$C$DW$145	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$145, DW_AT_location[DW_OP_reg25]
$C$DW$146	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$146, DW_AT_location[DW_OP_reg26]
$C$DW$147	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$147, DW_AT_location[DW_OP_reg27]
$C$DW$148	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$148, DW_AT_location[DW_OP_reg28]
$C$DW$149	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$149, DW_AT_location[DW_OP_reg29]
$C$DW$150	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$150, DW_AT_location[DW_OP_reg30]
$C$DW$151	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$151, DW_AT_location[DW_OP_reg31]
$C$DW$152	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$152, DW_AT_location[DW_OP_regx 0x20]
$C$DW$153	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$153, DW_AT_location[DW_OP_regx 0x21]
$C$DW$154	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$154, DW_AT_location[DW_OP_regx 0x22]
$C$DW$155	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$155, DW_AT_location[DW_OP_regx 0x23]
$C$DW$156	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$156, DW_AT_location[DW_OP_regx 0x24]
$C$DW$157	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$157, DW_AT_location[DW_OP_regx 0x25]
$C$DW$158	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$158, DW_AT_location[DW_OP_regx 0x26]
$C$DW$159	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$159, DW_AT_location[DW_OP_regx 0x27]
$C$DW$160	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$160, DW_AT_location[DW_OP_regx 0x28]
$C$DW$161	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$161, DW_AT_location[DW_OP_regx 0x29]
$C$DW$162	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$162, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$163	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$163, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$164	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$164, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$165	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$165, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$166	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$166, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$167	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$167, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$168	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$168, DW_AT_location[DW_OP_regx 0x30]
$C$DW$169	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$169, DW_AT_location[DW_OP_regx 0x31]
$C$DW$170	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$170, DW_AT_location[DW_OP_regx 0x32]
$C$DW$171	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$171, DW_AT_location[DW_OP_regx 0x33]
$C$DW$172	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$172, DW_AT_location[DW_OP_regx 0x34]
$C$DW$173	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$173, DW_AT_location[DW_OP_regx 0x35]
$C$DW$174	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$174, DW_AT_location[DW_OP_regx 0x36]
$C$DW$175	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$175, DW_AT_location[DW_OP_regx 0x37]
$C$DW$176	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$176, DW_AT_location[DW_OP_regx 0x38]
$C$DW$177	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$177, DW_AT_location[DW_OP_regx 0x39]
$C$DW$178	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$178, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$179	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$179, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$180	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$180, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$181	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$181, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$182	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$182, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$183	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$183, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$184	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$184, DW_AT_location[DW_OP_regx 0x40]
$C$DW$185	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$185, DW_AT_location[DW_OP_regx 0x41]
$C$DW$186	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$186, DW_AT_location[DW_OP_regx 0x42]
$C$DW$187	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$187, DW_AT_location[DW_OP_regx 0x43]
$C$DW$188	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$188, DW_AT_location[DW_OP_regx 0x44]
$C$DW$189	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$189, DW_AT_location[DW_OP_regx 0x45]
$C$DW$190	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$190, DW_AT_location[DW_OP_regx 0x46]
$C$DW$191	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$191, DW_AT_location[DW_OP_regx 0x47]
$C$DW$192	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$192, DW_AT_location[DW_OP_regx 0x48]
$C$DW$193	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$193, DW_AT_location[DW_OP_regx 0x49]
$C$DW$194	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$194, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$195	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$195, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$196	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$196, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$197	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$197, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$198	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$198, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$199	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$199, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$200	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$200, DW_AT_location[DW_OP_regx 0x50]
$C$DW$201	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$201, DW_AT_location[DW_OP_regx 0x51]
$C$DW$202	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$202, DW_AT_location[DW_OP_regx 0x52]
$C$DW$203	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$203, DW_AT_location[DW_OP_regx 0x53]
$C$DW$204	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$204, DW_AT_location[DW_OP_regx 0x54]
$C$DW$205	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$205, DW_AT_location[DW_OP_regx 0x55]
$C$DW$206	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$206, DW_AT_location[DW_OP_regx 0x56]
$C$DW$207	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$207, DW_AT_location[DW_OP_regx 0x57]
$C$DW$208	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$208, DW_AT_location[DW_OP_regx 0x58]
$C$DW$209	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$209, DW_AT_location[DW_OP_regx 0x59]
$C$DW$210	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$210, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$211	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$211, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

