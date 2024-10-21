;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                        Unix v4.4.1 *
;* Date/Time created: Thu Oct 17 16:12:11 2024                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("./jpeg/enc.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen Unix v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/santiago/Research/DSPFuzz/on_board/test_programs")

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("jpec_buffer_new2")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_jpec_buffer_new2")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$20)
	.dwendtag $C$DW$1


$C$DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("jpec_buffer_write_byte")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$29)
$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$20)
	.dwendtag $C$DW$3


$C$DW$6	.dwtag  DW_TAG_subprogram, DW_AT_name("jpec_buffer_write_2bytes")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_jpec_buffer_write_2bytes")
	.dwattr $C$DW$6, DW_AT_declaration
	.dwattr $C$DW$6, DW_AT_external
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$29)
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$20)
	.dwendtag $C$DW$6


$C$DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("jpec_huff_skel_init")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_jpec_huff_skel_init")
	.dwattr $C$DW$9, DW_AT_declaration
	.dwattr $C$DW$9, DW_AT_external
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$32)
	.dwendtag $C$DW$9

$C$DW$11	.dwtag  DW_TAG_variable, DW_AT_name("jpec_qzr")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_jpec_qzr")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$11, DW_AT_declaration
	.dwattr $C$DW$11, DW_AT_external
$C$DW$12	.dwtag  DW_TAG_variable, DW_AT_name("jpec_dct")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_jpec_dct")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$12, DW_AT_declaration
	.dwattr $C$DW$12, DW_AT_external
$C$DW$13	.dwtag  DW_TAG_variable, DW_AT_name("jpec_zz")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_jpec_zz")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$13, DW_AT_declaration
	.dwattr $C$DW$13, DW_AT_external
$C$DW$14	.dwtag  DW_TAG_variable, DW_AT_name("jpec_dc_nodes")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_jpec_dc_nodes")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$14, DW_AT_declaration
	.dwattr $C$DW$14, DW_AT_external
$C$DW$15	.dwtag  DW_TAG_variable, DW_AT_name("jpec_dc_nb_vals")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_jpec_dc_nb_vals")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$15, DW_AT_declaration
	.dwattr $C$DW$15, DW_AT_external
$C$DW$16	.dwtag  DW_TAG_variable, DW_AT_name("jpec_dc_vals")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_jpec_dc_vals")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$16, DW_AT_declaration
	.dwattr $C$DW$16, DW_AT_external
$C$DW$17	.dwtag  DW_TAG_variable, DW_AT_name("jpec_ac_nodes")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_jpec_ac_nodes")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$17, DW_AT_declaration
	.dwattr $C$DW$17, DW_AT_external
$C$DW$18	.dwtag  DW_TAG_variable, DW_AT_name("jpec_ac_nb_vals")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_jpec_ac_nb_vals")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$18, DW_AT_declaration
	.dwattr $C$DW$18, DW_AT_external
$C$DW$19	.dwtag  DW_TAG_variable, DW_AT_name("jpec_ac_vals")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_jpec_ac_vals")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$19, DW_AT_declaration
	.dwattr $C$DW$19, DW_AT_external
	.ref _coverage_log;
	.global	_g_jpec_huff_skel
	.bss	_g_jpec_huff_skel,6,0,2
$C$DW$20	.dwtag  DW_TAG_variable, DW_AT_name("g_jpec_huff_skel")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_g_jpec_huff_skel")
	.dwattr $C$DW$20, DW_AT_location[DW_OP_addr _g_jpec_huff_skel]
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$20, DW_AT_external
	.global	_g_jpec_enc
	.bss	_g_jpec_enc,532,0,2
$C$DW$21	.dwtag  DW_TAG_variable, DW_AT_name("g_jpec_enc")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_g_jpec_enc")
	.dwattr $C$DW$21, DW_AT_location[DW_OP_addr _g_jpec_enc]
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$21, DW_AT_external
;	/home/santiago/Research/Ti/C55_Tools/acp55 -@/tmp/15094BKbxHA 
	.sect	".text"
	.global	_jpeg_test

$C$DW$22	.dwtag  DW_TAG_subprogram, DW_AT_name("jpeg_test")
	.dwattr $C$DW$22, DW_AT_low_pc(_jpeg_test)
	.dwattr $C$DW$22, DW_AT_high_pc(0x00)
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_jpeg_test")
	.dwattr $C$DW$22, DW_AT_external
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$22, DW_AT_TI_begin_file("./jpeg/enc.c")
	.dwattr $C$DW$22, DW_AT_TI_begin_line(0x3a)
	.dwattr $C$DW$22, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$22, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "./jpeg/enc.c",line 59,column 1,is_stmt,address _jpeg_test

	.dwfde $C$DW$CIE, _jpeg_test
$C$DW$23	.dwtag  DW_TAG_formal_parameter, DW_AT_name("input")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_reg17]
$C$DW$24	.dwtag  DW_TAG_formal_parameter, DW_AT_name("w")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_w")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_reg12]
$C$DW$25	.dwtag  DW_TAG_formal_parameter, DW_AT_name("h")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_h")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_reg13]
;*******************************************************************************
;* FUNCTION NAME: jpeg_test                                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP, *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 16 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (14 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_jpeg_test:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-15, SP
	.dwcfi	cfa_offset, 16
$C$DW$26	.dwtag  DW_TAG_variable, DW_AT_name("input")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$27	.dwtag  DW_TAG_variable, DW_AT_name("w")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_w")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$28	.dwtag  DW_TAG_variable, DW_AT_name("h")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_h")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$29	.dwtag  DW_TAG_variable, DW_AT_name("e")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$30	.dwtag  DW_TAG_variable, DW_AT_name("len")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_len")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$31	.dwtag  DW_TAG_variable, DW_AT_name("jpeg")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_jpeg")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$32	.dwtag  DW_TAG_variable, DW_AT_name("checksum")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_checksum")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$33	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_bregx 0x24 12]
        MOV T1, *SP(#3) ; |59| 
        MOV T0, *SP(#2) ; |59| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./jpeg/enc.c",line 63,column 5,is_stmt
        MOV *SP(#2), AR1 ; |63| 
        BCC $C$L2,AR1 == #0 ; |63| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |63| 
$C$L1:    
	CALL #_coverage_log;
$C$DW$L$_jpeg_test$2$B:
        BCC $C$L1,AR1 != #0 ; |63| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |63| 
$C$DW$L$_jpeg_test$2$E:
$C$L2:    
	CALL #_coverage_log;
	.dwpsn	file "./jpeg/enc.c",line 64,column 17,is_stmt
        MOV *SP(#3), T1 ; |64| 

        MOV #30, AC0 ; |64| 
||      MOV AR1, T0

$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_name("_jpec_enc_new2")
	.dwattr $C$DW$34, DW_AT_TI_call
        CALL #_jpec_enc_new2 ; |64| 
                                        ; call occurs [#_jpec_enc_new2] ; |64| 
        MOV XAR0, dbl(*SP(#4))
	.dwpsn	file "./jpeg/enc.c",line 71,column 21,is_stmt
        AMAR *SP(#6), XAR1
$C$DW$35	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$35, DW_AT_low_pc(0x00)
	.dwattr $C$DW$35, DW_AT_name("_jpec_enc_run")
	.dwattr $C$DW$35, DW_AT_TI_call
        CALL #_jpec_enc_run ; |71| 
                                        ; call occurs [#_jpec_enc_run] ; |71| 
        MOV XAR0, dbl(*SP(#8))
	.dwpsn	file "./jpeg/enc.c",line 73,column 14,is_stmt
        MOV #0, AC0 ; |73| 
        MOV AC0, dbl(*SP(#10)) ; |73| 
	.dwpsn	file "./jpeg/enc.c",line 75,column 10,is_stmt
        MOV AC0, dbl(*SP(#12)) ; |75| 
	.dwpsn	file "./jpeg/enc.c",line 75,column 17,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |75| 
        MOV dbl(*SP(#12)), AC1 ; |75| 
        CMPU AC1 >= AC0, TC1 ; |75| 
        BCC $C$L4,TC1 ; |75| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |75| 
$C$L3:    
	CALL #_coverage_log;
$C$DW$L$_jpeg_test$4$B:
	.dwpsn	file "./jpeg/enc.c",line 77,column 9,is_stmt
        MOV *SP(#13), T0 ; |77| 
        MOV dbl(*SP(#8)), XAR3
        MOV uns(*AR3(T0)), AC0 ; |77| 
        ADD dbl(*SP(#10)), AC0, AC0 ; |77| 
        MOV AC0, dbl(*SP(#10)) ; |77| 
	.dwpsn	file "./jpeg/enc.c",line 75,column 26,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |75| 
        ADD #1, AC0 ; |75| 
        MOV AC0, dbl(*SP(#12)) ; |75| 
	.dwpsn	file "./jpeg/enc.c",line 75,column 17,is_stmt
        MOV dbl(*SP(#12)), AC1 ; |75| 
        MOV dbl(*SP(#6)), AC0 ; |75| 
        CMPU AC1 < AC0, TC1 ; |75| 
        BCC $C$L3,TC1 ; |75| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |75| 
$C$DW$L$_jpeg_test$4$E:
$C$L4:    
	CALL #_coverage_log;
	.dwpsn	file "./jpeg/enc.c",line 89,column 5,is_stmt
        MOV #0, AC0 ; |89| 
	.dwpsn	file "./jpeg/enc.c",line 90,column 1,is_stmt
        AADD #15, SP
	.dwcfi	cfa_offset, 1
$C$DW$36	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$36, DW_AT_low_pc(0x00)
	.dwattr $C$DW$36, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$37	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$37, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/enc.asm:$C$L3:1:1729195931")
	.dwattr $C$DW$37, DW_AT_TI_begin_file("./jpeg/enc.c")
	.dwattr $C$DW$37, DW_AT_TI_begin_line(0x4b)
	.dwattr $C$DW$37, DW_AT_TI_end_line(0x4e)
$C$DW$38	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$38, DW_AT_low_pc($C$DW$L$_jpeg_test$4$B)
	.dwattr $C$DW$38, DW_AT_high_pc($C$DW$L$_jpeg_test$4$E)
	.dwendtag $C$DW$37


$C$DW$39	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$39, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/enc.asm:$C$L1:1:1729195931")
	.dwattr $C$DW$39, DW_AT_TI_begin_file("./jpeg/enc.c")
	.dwattr $C$DW$39, DW_AT_TI_begin_line(0x3f)
	.dwattr $C$DW$39, DW_AT_TI_end_line(0x3f)
$C$DW$40	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$40, DW_AT_low_pc($C$DW$L$_jpeg_test$2$B)
	.dwattr $C$DW$40, DW_AT_high_pc($C$DW$L$_jpeg_test$2$E)
	.dwendtag $C$DW$39

	.dwattr $C$DW$22, DW_AT_TI_end_file("./jpeg/enc.c")
	.dwattr $C$DW$22, DW_AT_TI_end_line(0x5a)
	.dwattr $C$DW$22, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$22

	.sect	".text"
	.global	_jpec_enc_new2

$C$DW$41	.dwtag  DW_TAG_subprogram, DW_AT_name("jpec_enc_new2")
	.dwattr $C$DW$41, DW_AT_low_pc(_jpec_enc_new2)
	.dwattr $C$DW$41, DW_AT_high_pc(0x00)
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_jpec_enc_new2")
	.dwattr $C$DW$41, DW_AT_external
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$41, DW_AT_TI_begin_file("./jpeg/enc.c")
	.dwattr $C$DW$41, DW_AT_TI_begin_line(0x5c)
	.dwattr $C$DW$41, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$41, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "./jpeg/enc.c",line 93,column 1,is_stmt,address _jpec_enc_new2

	.dwfde $C$DW$CIE, _jpec_enc_new2
$C$DW$42	.dwtag  DW_TAG_formal_parameter, DW_AT_name("img")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_img")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_reg17]
$C$DW$43	.dwtag  DW_TAG_formal_parameter, DW_AT_name("w")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_w")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_reg12]
$C$DW$44	.dwtag  DW_TAG_formal_parameter, DW_AT_name("h")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_h")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_reg13]
$C$DW$45	.dwtag  DW_TAG_formal_parameter, DW_AT_name("q")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_q")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_reg0]
;*******************************************************************************
;* FUNCTION NAME: jpec_enc_new2                                                *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,AR2,XAR2,AR3,XAR3,*
;*                        SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL             *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (10 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_jpec_enc_new2:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-11, SP
	.dwcfi	cfa_offset, 12
$C$DW$46	.dwtag  DW_TAG_variable, DW_AT_name("img")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_img")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$47	.dwtag  DW_TAG_variable, DW_AT_name("w")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_w")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$48	.dwtag  DW_TAG_variable, DW_AT_name("h")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_h")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$49	.dwtag  DW_TAG_variable, DW_AT_name("q")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_q")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$50	.dwtag  DW_TAG_variable, DW_AT_name("e")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$51	.dwtag  DW_TAG_variable, DW_AT_name("bsiz")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_bsiz")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_bregx 0x24 8]
        MOV AC0, dbl(*SP(#4)) ; |93| 
        MOV T1, *SP(#3) ; |93| 
        MOV T0, *SP(#2) ; |93| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./jpeg/enc.c",line 95,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L5,AC0 == #0 ; |95| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |95| 
        MOV *SP(#2), AR1 ; |95| 
        BCC $C$L5,AR1 == #0 ; |95| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |95| 
        BAND *SP(#2), #7, TC1 ; |95| 
        BCC $C$L5,TC1 ; |95| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |95| 
        MOV *SP(#3), AR1 ; |95| 
        BCC $C$L5,AR1 == #0 ; |95| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |95| 
        BAND *SP(#3), #7, TC1 ; |95| 
        BCC $C$L6,!TC1 ; |95| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |95| 
$C$L5:    
	CALL #_coverage_log;
	.dwpsn	file "./jpeg/enc.c",line 96,column 9,is_stmt
        AMOV #0, XAR0 ; |96| 
        B $C$L7   ; |96| 
                                        ; branch occurs ; |96| 
$C$L6:    
	CALL #_coverage_log;
	.dwpsn	file "./jpeg/enc.c",line 98,column 17,is_stmt
        AMOV #_g_jpec_enc, XAR3 ; |98| 
        MOV XAR3, dbl(*SP(#6))
	.dwpsn	file "./jpeg/enc.c",line 99,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR2
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, dbl(*AR2)
	.dwpsn	file "./jpeg/enc.c",line 100,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV *SP(#2), AR1 ; |100| 
        MOV AR1, *AR3(short(#2)) ; |100| 
	.dwpsn	file "./jpeg/enc.c",line 101,column 5,is_stmt
        MOV *SP(#2), AC0 ; |101| 
        MOV dbl(*SP(#6)), XAR3
        SUB #1, AC0 ; |101| 
        BFXTR #0xfff8, AC0, AC0 ; |101| 
        ADD #1, AC0 ; |101| 
        SFTL AC0, #3, AC0 ; |101| 
        MOV AC0, *AR3(short(#4)) ; |101| 
	.dwpsn	file "./jpeg/enc.c",line 102,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV *SP(#3), AR1 ; |102| 
        MOV AR1, *AR3(short(#3)) ; |102| 
	.dwpsn	file "./jpeg/enc.c",line 103,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV dbl(*SP(#4)), AC0 ; |103| 
        MOV AC0, dbl(*AR3(#8)) ; |103| 
	.dwpsn	file "./jpeg/enc.c",line 104,column 5,is_stmt
        MOV *SP(#2), AC0 ; |104| 
        SUB #1, AC0 ; |104| 
        BFXTR #0xfff8, AC0, T1 ; |104| 
        MOV dbl(*SP(#6)), XAR3
        MOV *SP(#3), AC0 ; |104| 
        SUB #1, AC0 ; |104| 
        BFXTR #0xfff8, AC0, AR1 ; |104| 
        MOV AR1, HI(AC0)
        MOV HI(AC0), AR1
        ADD #1, AR1 ; |104| 

        MOV AR1, HI(AC0)
||      ADD #1, T1 ; |104| 

        MPY T1, AC0, AC0 ; |104| 
        AND #0xffff, AC0, AC0 ; |104| 
        MOV AC0, dbl(*AR3(#138)) ; |104| 
	.dwpsn	file "./jpeg/enc.c",line 105,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #-1, AC0 ; |105| 
        MOV AC0, dbl(*AR3(#140)) ; |105| 
	.dwpsn	file "./jpeg/enc.c",line 106,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #65535, *AR3(#142) ; |106| 
	.dwpsn	file "./jpeg/enc.c",line 107,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #65535, *AR3(#143) ; |107| 
	.dwpsn	file "./jpeg/enc.c",line 108,column 13,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV dbl(*AR3(#138)), AC0 ; |108| 
        SFTS AC0, #5, AC1 ; |108| 
        SUB AC0 << #1, AC1 ; |108| 
        ADD #330, AC1, AC0 ; |108| 
        MOV AC0, dbl(*SP(#8)) ; |108| 
	.dwpsn	file "./jpeg/enc.c",line 109,column 5,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |109| 
$C$DW$52	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$52, DW_AT_low_pc(0x00)
	.dwattr $C$DW$52, DW_AT_name("_jpec_buffer_new2")
	.dwattr $C$DW$52, DW_AT_TI_call
        CALL #_jpec_buffer_new2 ; |109| 
                                        ; call occurs [#_jpec_buffer_new2] ; |109| 
        MOV dbl(*SP(#6)), XAR3
        MOV XAR0, dbl(*AR3(short(#6)))
	.dwpsn	file "./jpeg/enc.c",line 110,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR2
        AMOV #_g_jpec_huff_skel, XAR3 ; |110| 
        MOV XAR3, dbl(*AR2(#530))
	.dwpsn	file "./jpeg/enc.c",line 111,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR0
$C$L7:    
	.dwpsn	file "./jpeg/enc.c",line 112,column 1,is_stmt
        AADD #11, SP
	.dwcfi	cfa_offset, 1
$C$DW$53	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$53, DW_AT_low_pc(0x00)
	.dwattr $C$DW$53, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$41, DW_AT_TI_end_file("./jpeg/enc.c")
	.dwattr $C$DW$41, DW_AT_TI_end_line(0x70)
	.dwattr $C$DW$41, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$41

	.sect	".text"
	.global	_jpec_enc_run

$C$DW$54	.dwtag  DW_TAG_subprogram, DW_AT_name("jpec_enc_run")
	.dwattr $C$DW$54, DW_AT_low_pc(_jpec_enc_run)
	.dwattr $C$DW$54, DW_AT_high_pc(0x00)
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_jpec_enc_run")
	.dwattr $C$DW$54, DW_AT_external
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$54, DW_AT_TI_begin_file("./jpeg/enc.c")
	.dwattr $C$DW$54, DW_AT_TI_begin_line(0x72)
	.dwattr $C$DW$54, DW_AT_TI_begin_column(0x11)
	.dwattr $C$DW$54, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "./jpeg/enc.c",line 115,column 1,is_stmt,address _jpec_enc_run

	.dwfde $C$DW$CIE, _jpec_enc_run
$C$DW$55	.dwtag  DW_TAG_formal_parameter, DW_AT_name("e")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$55, DW_AT_location[DW_OP_reg17]
$C$DW$56	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_len")
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$56, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: jpec_enc_run                                                 *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,M40,  *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_jpec_enc_run:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$57	.dwtag  DW_TAG_variable, DW_AT_name("e")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$58	.dwtag  DW_TAG_variable, DW_AT_name("len")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_len")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./jpeg/enc.c",line 117,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L8,AC0 == #0 ; |117| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |117| 
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        BCC $C$L9,AC0 != #0 ; |117| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |117| 
$C$L8:    
	CALL #_coverage_log;
	.dwpsn	file "./jpeg/enc.c",line 118,column 9,is_stmt
        AMOV #0, XAR0 ; |118| 
        B $C$L12  ; |118| 
                                        ; branch occurs ; |118| 
$C$L9:    
	CALL #_coverage_log;
	.dwpsn	file "./jpeg/enc.c",line 120,column 5,is_stmt
$C$DW$59	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$59, DW_AT_low_pc(0x00)
	.dwattr $C$DW$59, DW_AT_name("_jpec_enc_open")
	.dwattr $C$DW$59, DW_AT_TI_call
        CALL #_jpec_enc_open ; |120| 
                                        ; call occurs [#_jpec_enc_open] ; |120| 
	.dwpsn	file "./jpeg/enc.c",line 121,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$60	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$60, DW_AT_low_pc(0x00)
	.dwattr $C$DW$60, DW_AT_name("_jpec_enc_next_block")
	.dwattr $C$DW$60, DW_AT_TI_call
        CALL #_jpec_enc_next_block ; |121| 
                                        ; call occurs [#_jpec_enc_next_block] ; |121| 
        BCC $C$L11,AC0 == #0 ; |121| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |121| 
$C$L10:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_run$5$B:
	.dwpsn	file "./jpeg/enc.c",line 123,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$61	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$61, DW_AT_low_pc(0x00)
	.dwattr $C$DW$61, DW_AT_name("_jpec_enc_block_dct")
	.dwattr $C$DW$61, DW_AT_TI_call
        CALL #_jpec_enc_block_dct ; |123| 
                                        ; call occurs [#_jpec_enc_block_dct] ; |123| 
	.dwpsn	file "./jpeg/enc.c",line 124,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$62	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$62, DW_AT_low_pc(0x00)
	.dwattr $C$DW$62, DW_AT_name("_jpec_enc_block_quant")
	.dwattr $C$DW$62, DW_AT_TI_call
        CALL #_jpec_enc_block_quant ; |124| 
                                        ; call occurs [#_jpec_enc_block_quant] ; |124| 
	.dwpsn	file "./jpeg/enc.c",line 125,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$63	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$63, DW_AT_low_pc(0x00)
	.dwattr $C$DW$63, DW_AT_name("_jpec_enc_block_zz")
	.dwattr $C$DW$63, DW_AT_TI_call
        CALL #_jpec_enc_block_zz ; |125| 
                                        ; call occurs [#_jpec_enc_block_zz] ; |125| 
	.dwpsn	file "./jpeg/enc.c",line 126,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#530)), XAR3
        MOV dbl(*AR3(short(#4))), AC0 ; |126| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#530)), XAR3
        MOV dbl(*SP(#0)), XAR1
        MOV dbl(*AR3), XAR0
        MOV dbl(*SP(#0)), XAR3
        AMAR *+AR1(#144) ; |126| 
        MOV dbl(*AR3(short(#6))), XAR2
$C$DW$64	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$64, DW_AT_low_pc(0x00)
	.dwattr $C$DW$64, DW_AT_TI_call
	.dwattr $C$DW$64, DW_AT_TI_indirect
        CALL AC0  ; |126| 
                                        ; call occurs [AC0] ; |126| 
	.dwpsn	file "./jpeg/enc.c",line 127,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$65	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$65, DW_AT_low_pc(0x00)
	.dwattr $C$DW$65, DW_AT_name("_jpec_enc_next_block")
	.dwattr $C$DW$65, DW_AT_TI_call
        CALL #_jpec_enc_next_block ; |127| 
                                        ; call occurs [#_jpec_enc_next_block] ; |127| 
        BCC $C$L10,AC0 != #0 ; |127| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |127| 
$C$DW$L$_jpec_enc_run$5$E:
$C$L11:    
	CALL #_coverage_log;
	.dwpsn	file "./jpeg/enc.c",line 128,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$66	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$66, DW_AT_low_pc(0x00)
	.dwattr $C$DW$66, DW_AT_name("_jpec_enc_close")
	.dwattr $C$DW$66, DW_AT_TI_call
        CALL #_jpec_enc_close ; |128| 
                                        ; call occurs [#_jpec_enc_close] ; |128| 
	.dwpsn	file "./jpeg/enc.c",line 129,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#6))), XAR3
        MOV dbl(*SP(#2)), XAR2
        AADD #2, AR3 ; |129| 
        MOV dbl(*AR3), dbl(*AR2) ; |129| 
	.dwpsn	file "./jpeg/enc.c",line 130,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#6))), XAR3
        MOV dbl(*AR3), XAR0
$C$L12:    
	CALL #_coverage_log;
	.dwpsn	file "./jpeg/enc.c",line 131,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$67	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$67, DW_AT_low_pc(0x00)
	.dwattr $C$DW$67, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$68	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$68, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/enc.asm:$C$L10:1:1729195931")
	.dwattr $C$DW$68, DW_AT_TI_begin_file("./jpeg/enc.c")
	.dwattr $C$DW$68, DW_AT_TI_begin_line(0x79)
	.dwattr $C$DW$68, DW_AT_TI_end_line(0x7f)
$C$DW$69	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$69, DW_AT_low_pc($C$DW$L$_jpec_enc_run$5$B)
	.dwattr $C$DW$69, DW_AT_high_pc($C$DW$L$_jpec_enc_run$5$E)
	.dwendtag $C$DW$68

	.dwattr $C$DW$54, DW_AT_TI_end_file("./jpeg/enc.c")
	.dwattr $C$DW$54, DW_AT_TI_end_line(0x83)
	.dwattr $C$DW$54, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$54

	.sect	".text"

$C$DW$70	.dwtag  DW_TAG_subprogram, DW_AT_name("jpec_enc_init_dqt")
	.dwattr $C$DW$70, DW_AT_low_pc(_jpec_enc_init_dqt)
	.dwattr $C$DW$70, DW_AT_high_pc(0x00)
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_jpec_enc_init_dqt")
	.dwattr $C$DW$70, DW_AT_TI_begin_file("./jpeg/enc.c")
	.dwattr $C$DW$70, DW_AT_TI_begin_line(0x86)
	.dwattr $C$DW$70, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$70, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "./jpeg/enc.c",line 135,column 1,is_stmt,address _jpec_enc_init_dqt

	.dwfde $C$DW$CIE, _jpec_enc_init_dqt
$C$DW$71	.dwtag  DW_TAG_formal_parameter, DW_AT_name("e")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$71, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: jpec_enc_init_dqt                                            *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR3,XAR3,SP,CARRY,   *
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (10 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_jpec_enc_init_dqt:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-11, SP
	.dwcfi	cfa_offset, 12
$C$DW$72	.dwtag  DW_TAG_variable, DW_AT_name("e")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$72, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$73	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$74	.dwtag  DW_TAG_variable, DW_AT_name("qualf")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_qualf")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$75	.dwtag  DW_TAG_variable, DW_AT_name("scale")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_scale")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$75, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./jpeg/enc.c",line 138,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L18,AC0 == #0 ; |138| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |138| 
	.dwpsn	file "./jpeg/enc.c",line 139,column 9,is_stmt
	.dwpsn	file "./jpeg/enc.c",line 141,column 11,is_stmt
        MOV dbl(*AR3(#8)), AC0 ; |141| 
$C$DW$76	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$76, DW_AT_low_pc(0x00)
	.dwattr $C$DW$76, DW_AT_name("__fltlid")
	.dwattr $C$DW$76, DW_AT_TI_call
        CALL #__fltlid ; |141| 
                                        ; call occurs [#__fltlid] ; |141| 
        MOV AC0, dbl(*SP(#4)) ; |141| 
	.dwpsn	file "./jpeg/enc.c",line 142,column 11,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #50, AC0 ; |142| 
        MOV dbl(*AR3(#8)), AC1 ; |142| 
        CMP AC1 >= AC0, TC1 ; |142| 
        BCC $C$L13,TC1 ; |142| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |142| 
        MOV dbl(*SP(#4)), AC1 ; |142| 
        MOV dbl(*($C$FL1)), AC0 ; |142| 
$C$DW$77	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$77, DW_AT_low_pc(0x00)
	.dwattr $C$DW$77, DW_AT_name("__divd")
	.dwattr $C$DW$77, DW_AT_TI_call
        CALL #__divd ; |142| 
                                        ; call occurs [#__divd] ; |142| 
        B $C$L14  ; |142| 
                                        ; branch occurs ; |142| 
$C$L13:    
	CALL #_coverage_log;
        MOV dbl(*SP(#4)), AC0 ; |142| 
        MOV dbl(*($C$FL1)), AC1 ; |142| 
$C$DW$78	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$78, DW_AT_low_pc(0x00)
	.dwattr $C$DW$78, DW_AT_name("__divd")
	.dwattr $C$DW$78, DW_AT_TI_call
        CALL #__divd ; |142| 
                                        ; call occurs [#__divd] ; |142| 
        OR #0, AC0, AC1
        MOV dbl(*($C$FL2)), AC0 ; |142| 
$C$DW$79	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$79, DW_AT_low_pc(0x00)
	.dwattr $C$DW$79, DW_AT_name("__subd")
	.dwattr $C$DW$79, DW_AT_TI_call
        CALL #__subd ; |142| 
                                        ; call occurs [#__subd] ; |142| 
$C$L14:    
	CALL #_coverage_log;
        MOV AC0, dbl(*SP(#6)) ; |142| 
	.dwpsn	file "./jpeg/enc.c",line 143,column 10,is_stmt
        MOV #0, AC0 ; |143| 
        MOV AC0, dbl(*SP(#2)) ; |143| 
	.dwpsn	file "./jpeg/enc.c",line 143,column 17,is_stmt
        MOV dbl(*SP(#2)), AC1 ; |143| 
        MOV #64, AC0 ; |143| 
        CMP AC1 >= AC0, TC1 ; |143| 
        BCC $C$L18,TC1 ; |143| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |143| 
$C$L15:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_init_dqt$6$B:

$C$DW$80	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$81	.dwtag  DW_TAG_variable, DW_AT_name("a")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_a")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$81, DW_AT_location[DW_OP_bregx 0x24 8]
	.dwpsn	file "./jpeg/enc.c",line 145,column 17,is_stmt
        MOV *SP(#3), T0 ; |145| 
        AMOV #_jpec_qzr, XAR3 ; |145| 
        MOV *AR3(T0), T0 ; |145| 
$C$DW$82	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$82, DW_AT_low_pc(0x00)
	.dwattr $C$DW$82, DW_AT_name("__fltud")
	.dwattr $C$DW$82, DW_AT_TI_call
        CALL #__fltud ; |145| 
                                        ; call occurs [#__fltud] ; |145| 
        MOV dbl(*SP(#6)), AC1 ; |145| 
$C$DW$83	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$83, DW_AT_low_pc(0x00)
	.dwattr $C$DW$83, DW_AT_name("__mpyd")
	.dwattr $C$DW$83, DW_AT_TI_call
        CALL #__mpyd ; |145| 
                                        ; call occurs [#__mpyd] ; |145| 
        MOV dbl(*($C$FL3)), AC1 ; |145| 
$C$DW$84	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$84, DW_AT_low_pc(0x00)
	.dwattr $C$DW$84, DW_AT_name("__addd")
	.dwattr $C$DW$84, DW_AT_TI_call
        CALL #__addd ; |145| 
                                        ; call occurs [#__addd] ; |145| 
$C$DW$85	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$85, DW_AT_low_pc(0x00)
	.dwattr $C$DW$85, DW_AT_name("__fixdli")
	.dwattr $C$DW$85, DW_AT_TI_call
        CALL #__fixdli ; |145| 
                                        ; call occurs [#__fixdli] ; |145| 
        MOV AC0, dbl(*SP(#8)) ; |145| 
	.dwpsn	file "./jpeg/enc.c",line 146,column 9,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |146| 
        BCC $C$L16,AC0 > #0 ; |146| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |146| 
$C$DW$L$_jpec_enc_init_dqt$6$E:
$C$DW$L$_jpec_enc_init_dqt$7$B:

        B $C$L17  ; |146| 
||      MOV #1, AC0 ; |146| 

                                        ; branch occurs ; |146| 
$C$DW$L$_jpec_enc_init_dqt$7$E:
$C$L16:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_init_dqt$8$B:
        MOV #255, AC0 ; |146| 
        MOV dbl(*SP(#8)), AC1 ; |146| 
        CMP AC1 <= AC0, TC1 ; |146| 
        BCC $C$L17,!TC1 ; |146| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |146| 
$C$DW$L$_jpec_enc_init_dqt$8$E:
$C$DW$L$_jpec_enc_init_dqt$9$B:
        MOV dbl(*SP(#8)), AC0 ; |146| 
$C$DW$L$_jpec_enc_init_dqt$9$E:
$C$L17:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_init_dqt$10$B:
        MOV AC0, dbl(*SP(#8)) ; |146| 
	.dwpsn	file "./jpeg/enc.c",line 147,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#3), AR1 ; |147| 
        SFTL AR1, #1 ; |147| 

        AADD AR1, AR3 ; |147| 
||      MOV dbl(*SP(#8)), AC0 ; |147| 

        MOV AC0, dbl(*AR3(#10)) ; |147| 
	.dwendtag $C$DW$80

	.dwpsn	file "./jpeg/enc.c",line 143,column 25,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |143| 
        ADD #1, AC0 ; |143| 
        MOV AC0, dbl(*SP(#2)) ; |143| 
	.dwpsn	file "./jpeg/enc.c",line 143,column 17,is_stmt
        MOV #64, AC0 ; |143| 
        MOV dbl(*SP(#2)), AC1 ; |143| 
        CMP AC1 < AC0, TC1 ; |143| 
        BCC $C$L15,TC1 ; |143| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |143| 
$C$DW$L$_jpec_enc_init_dqt$10$E:
	.dwpsn	file "./jpeg/enc.c",line 149,column 1,is_stmt
$C$L18:    
	CALL #_coverage_log;
        AADD #11, SP
	.dwcfi	cfa_offset, 1
$C$DW$86	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$86, DW_AT_low_pc(0x00)
	.dwattr $C$DW$86, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$87	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$87, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/enc.asm:$C$L15:1:1729195931")
	.dwattr $C$DW$87, DW_AT_TI_begin_file("./jpeg/enc.c")
	.dwattr $C$DW$87, DW_AT_TI_begin_line(0x8f)
	.dwattr $C$DW$87, DW_AT_TI_end_line(0x94)
$C$DW$88	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$88, DW_AT_low_pc($C$DW$L$_jpec_enc_init_dqt$6$B)
	.dwattr $C$DW$88, DW_AT_high_pc($C$DW$L$_jpec_enc_init_dqt$6$E)
$C$DW$89	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$89, DW_AT_low_pc($C$DW$L$_jpec_enc_init_dqt$7$B)
	.dwattr $C$DW$89, DW_AT_high_pc($C$DW$L$_jpec_enc_init_dqt$7$E)
$C$DW$90	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$90, DW_AT_low_pc($C$DW$L$_jpec_enc_init_dqt$8$B)
	.dwattr $C$DW$90, DW_AT_high_pc($C$DW$L$_jpec_enc_init_dqt$8$E)
$C$DW$91	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$91, DW_AT_low_pc($C$DW$L$_jpec_enc_init_dqt$9$B)
	.dwattr $C$DW$91, DW_AT_high_pc($C$DW$L$_jpec_enc_init_dqt$9$E)
$C$DW$92	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$92, DW_AT_low_pc($C$DW$L$_jpec_enc_init_dqt$10$B)
	.dwattr $C$DW$92, DW_AT_high_pc($C$DW$L$_jpec_enc_init_dqt$10$E)
	.dwendtag $C$DW$87

	.dwattr $C$DW$70, DW_AT_TI_end_file("./jpeg/enc.c")
	.dwattr $C$DW$70, DW_AT_TI_end_line(0x95)
	.dwattr $C$DW$70, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$70

	.sect	".text"

$C$DW$93	.dwtag  DW_TAG_subprogram, DW_AT_name("jpec_enc_open")
	.dwattr $C$DW$93, DW_AT_low_pc(_jpec_enc_open)
	.dwattr $C$DW$93, DW_AT_high_pc(0x00)
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_jpec_enc_open")
	.dwattr $C$DW$93, DW_AT_TI_begin_file("./jpeg/enc.c")
	.dwattr $C$DW$93, DW_AT_TI_begin_line(0x97)
	.dwattr $C$DW$93, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$93, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./jpeg/enc.c",line 152,column 1,is_stmt,address _jpec_enc_open

	.dwfde $C$DW$CIE, _jpec_enc_open
$C$DW$94	.dwtag  DW_TAG_formal_parameter, DW_AT_name("e")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$94, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: jpec_enc_open                                                *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AR0,XAR0,AR3,XAR3,SP,M40,SATA,SATD,RDM,FRCT, *
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_jpec_enc_open:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$95	.dwtag  DW_TAG_variable, DW_AT_name("e")
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$95, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./jpeg/enc.c",line 153,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L19,AC0 == #0 ; |153| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |153| 
	.dwpsn	file "./jpeg/enc.c",line 154,column 9,is_stmt
	.dwpsn	file "./jpeg/enc.c",line 156,column 5,is_stmt
        MOV dbl(*AR3(#530)), XAR0
$C$DW$96	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$96, DW_AT_low_pc(0x00)
	.dwattr $C$DW$96, DW_AT_name("_jpec_huff_skel_init")
	.dwattr $C$DW$96, DW_AT_TI_call
        CALL #_jpec_huff_skel_init ; |156| 
                                        ; call occurs [#_jpec_huff_skel_init] ; |156| 
	.dwpsn	file "./jpeg/enc.c",line 157,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$97	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$97, DW_AT_low_pc(0x00)
	.dwattr $C$DW$97, DW_AT_name("_jpec_enc_init_dqt")
	.dwattr $C$DW$97, DW_AT_TI_call
        CALL #_jpec_enc_init_dqt ; |157| 
                                        ; call occurs [#_jpec_enc_init_dqt] ; |157| 
	.dwpsn	file "./jpeg/enc.c",line 158,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$98	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$98, DW_AT_low_pc(0x00)
	.dwattr $C$DW$98, DW_AT_name("_jpec_enc_write_soi")
	.dwattr $C$DW$98, DW_AT_TI_call
        CALL #_jpec_enc_write_soi ; |158| 
                                        ; call occurs [#_jpec_enc_write_soi] ; |158| 
	.dwpsn	file "./jpeg/enc.c",line 159,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$99	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$99, DW_AT_low_pc(0x00)
	.dwattr $C$DW$99, DW_AT_name("_jpec_enc_write_app0")
	.dwattr $C$DW$99, DW_AT_TI_call
        CALL #_jpec_enc_write_app0 ; |159| 
                                        ; call occurs [#_jpec_enc_write_app0] ; |159| 
	.dwpsn	file "./jpeg/enc.c",line 160,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$100	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$100, DW_AT_low_pc(0x00)
	.dwattr $C$DW$100, DW_AT_name("_jpec_enc_write_dqt")
	.dwattr $C$DW$100, DW_AT_TI_call
        CALL #_jpec_enc_write_dqt ; |160| 
                                        ; call occurs [#_jpec_enc_write_dqt] ; |160| 
	.dwpsn	file "./jpeg/enc.c",line 161,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$101	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$101, DW_AT_low_pc(0x00)
	.dwattr $C$DW$101, DW_AT_name("_jpec_enc_write_sof0")
	.dwattr $C$DW$101, DW_AT_TI_call
        CALL #_jpec_enc_write_sof0 ; |161| 
                                        ; call occurs [#_jpec_enc_write_sof0] ; |161| 
	.dwpsn	file "./jpeg/enc.c",line 162,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$102	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$102, DW_AT_low_pc(0x00)
	.dwattr $C$DW$102, DW_AT_name("_jpec_enc_write_dht")
	.dwattr $C$DW$102, DW_AT_TI_call
        CALL #_jpec_enc_write_dht ; |162| 
                                        ; call occurs [#_jpec_enc_write_dht] ; |162| 
	.dwpsn	file "./jpeg/enc.c",line 163,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$103	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$103, DW_AT_low_pc(0x00)
	.dwattr $C$DW$103, DW_AT_name("_jpec_enc_write_sos")
	.dwattr $C$DW$103, DW_AT_TI_call
        CALL #_jpec_enc_write_sos ; |163| 
                                        ; call occurs [#_jpec_enc_write_sos] ; |163| 
	.dwpsn	file "./jpeg/enc.c",line 164,column 1,is_stmt
$C$L19:    
	CALL #_coverage_log;
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$104	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$104, DW_AT_low_pc(0x00)
	.dwattr $C$DW$104, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$93, DW_AT_TI_end_file("./jpeg/enc.c")
	.dwattr $C$DW$93, DW_AT_TI_end_line(0xa4)
	.dwattr $C$DW$93, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$93

	.sect	".text"

$C$DW$105	.dwtag  DW_TAG_subprogram, DW_AT_name("jpec_enc_close")
	.dwattr $C$DW$105, DW_AT_low_pc(_jpec_enc_close)
	.dwattr $C$DW$105, DW_AT_high_pc(0x00)
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_jpec_enc_close")
	.dwattr $C$DW$105, DW_AT_TI_begin_file("./jpeg/enc.c")
	.dwattr $C$DW$105, DW_AT_TI_begin_line(0xa6)
	.dwattr $C$DW$105, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$105, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./jpeg/enc.c",line 167,column 1,is_stmt,address _jpec_enc_close

	.dwfde $C$DW$CIE, _jpec_enc_close
$C$DW$106	.dwtag  DW_TAG_formal_parameter, DW_AT_name("e")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$106, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: jpec_enc_close                                               *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AR0,XAR0,AR1,AR3,XAR3,SP,M40,SATA,SATD,RDM,  *
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_jpec_enc_close:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$107	.dwtag  DW_TAG_variable, DW_AT_name("e")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$107, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./jpeg/enc.c",line 168,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L20,AC0 == #0 ; |168| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |168| 
	.dwpsn	file "./jpeg/enc.c",line 169,column 9,is_stmt
	.dwpsn	file "./jpeg/enc.c",line 171,column 5,is_stmt
        MOV dbl(*AR3(#530)), XAR3
        MOV dbl(*AR3(short(#2))), AC0 ; |171| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#530)), XAR3
        MOV dbl(*AR3), XAR0
$C$DW$108	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$108, DW_AT_low_pc(0x00)
	.dwattr $C$DW$108, DW_AT_TI_call
	.dwattr $C$DW$108, DW_AT_TI_indirect
        CALL AC0  ; |171| 
                                        ; call occurs [AC0] ; |171| 
	.dwpsn	file "./jpeg/enc.c",line 172,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #65497, AR1 ; |172| 
        AND #0xffff, AR1, AC0 ; |172| 
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$109	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$109, DW_AT_low_pc(0x00)
	.dwattr $C$DW$109, DW_AT_name("_jpec_buffer_write_2bytes")
	.dwattr $C$DW$109, DW_AT_TI_call
        CALL #_jpec_buffer_write_2bytes ; |172| 
                                        ; call occurs [#_jpec_buffer_write_2bytes] ; |172| 
	.dwpsn	file "./jpeg/enc.c",line 173,column 1,is_stmt
$C$L20:    
	CALL #_coverage_log;
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$110	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$110, DW_AT_low_pc(0x00)
	.dwattr $C$DW$110, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$105, DW_AT_TI_end_file("./jpeg/enc.c")
	.dwattr $C$DW$105, DW_AT_TI_end_line(0xad)
	.dwattr $C$DW$105, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$105

	.sect	".text"

$C$DW$111	.dwtag  DW_TAG_subprogram, DW_AT_name("jpec_enc_write_soi")
	.dwattr $C$DW$111, DW_AT_low_pc(_jpec_enc_write_soi)
	.dwattr $C$DW$111, DW_AT_high_pc(0x00)
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_jpec_enc_write_soi")
	.dwattr $C$DW$111, DW_AT_TI_begin_file("./jpeg/enc.c")
	.dwattr $C$DW$111, DW_AT_TI_begin_line(0xaf)
	.dwattr $C$DW$111, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$111, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./jpeg/enc.c",line 176,column 1,is_stmt,address _jpec_enc_write_soi

	.dwfde $C$DW$CIE, _jpec_enc_write_soi
$C$DW$112	.dwtag  DW_TAG_formal_parameter, DW_AT_name("e")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$112, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: jpec_enc_write_soi                                           *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AR0,XAR0,AR1,AR3,XAR3,SP,M40,SATA,SATD,RDM,  *
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_jpec_enc_write_soi:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$113	.dwtag  DW_TAG_variable, DW_AT_name("e")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$113, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./jpeg/enc.c",line 177,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L21,AC0 == #0 ; |177| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |177| 
	.dwpsn	file "./jpeg/enc.c",line 178,column 9,is_stmt
	.dwpsn	file "./jpeg/enc.c",line 180,column 5,is_stmt
        MOV #65496, AR1 ; |180| 
        MOV dbl(*AR3(short(#6))), XAR0
        AND #0xffff, AR1, AC0 ; |180| 
$C$DW$114	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$114, DW_AT_low_pc(0x00)
	.dwattr $C$DW$114, DW_AT_name("_jpec_buffer_write_2bytes")
	.dwattr $C$DW$114, DW_AT_TI_call
        CALL #_jpec_buffer_write_2bytes ; |180| 
                                        ; call occurs [#_jpec_buffer_write_2bytes] ; |180| 
	.dwpsn	file "./jpeg/enc.c",line 181,column 1,is_stmt
$C$L21:    
	CALL #_coverage_log;
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$115	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$115, DW_AT_low_pc(0x00)
	.dwattr $C$DW$115, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$111, DW_AT_TI_end_file("./jpeg/enc.c")
	.dwattr $C$DW$111, DW_AT_TI_end_line(0xb5)
	.dwattr $C$DW$111, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$111

	.sect	".text"

$C$DW$116	.dwtag  DW_TAG_subprogram, DW_AT_name("jpec_enc_write_app0")
	.dwattr $C$DW$116, DW_AT_low_pc(_jpec_enc_write_app0)
	.dwattr $C$DW$116, DW_AT_high_pc(0x00)
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("_jpec_enc_write_app0")
	.dwattr $C$DW$116, DW_AT_TI_begin_file("./jpeg/enc.c")
	.dwattr $C$DW$116, DW_AT_TI_begin_line(0xb7)
	.dwattr $C$DW$116, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$116, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./jpeg/enc.c",line 184,column 1,is_stmt,address _jpec_enc_write_app0

	.dwfde $C$DW$CIE, _jpec_enc_write_app0
$C$DW$117	.dwtag  DW_TAG_formal_parameter, DW_AT_name("e")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$117, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: jpec_enc_write_app0                                          *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AR0,XAR0,AR1,AR3,XAR3,SP,M40,SATA,SATD,RDM,  *
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_jpec_enc_write_app0:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$118	.dwtag  DW_TAG_variable, DW_AT_name("e")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$118, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./jpeg/enc.c",line 185,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L22,AC0 == #0 ; |185| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |185| 
	.dwpsn	file "./jpeg/enc.c",line 186,column 9,is_stmt
	.dwpsn	file "./jpeg/enc.c",line 188,column 5,is_stmt
        MOV #65504, AR1 ; |188| 
        MOV dbl(*AR3(short(#6))), XAR0
        AND #0xffff, AR1, AC0 ; |188| 
$C$DW$119	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$119, DW_AT_low_pc(0x00)
	.dwattr $C$DW$119, DW_AT_name("_jpec_buffer_write_2bytes")
	.dwattr $C$DW$119, DW_AT_TI_call
        CALL #_jpec_buffer_write_2bytes ; |188| 
                                        ; call occurs [#_jpec_buffer_write_2bytes] ; |188| 
	.dwpsn	file "./jpeg/enc.c",line 189,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #16, AC0 ; |189| 
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$120	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$120, DW_AT_low_pc(0x00)
	.dwattr $C$DW$120, DW_AT_name("_jpec_buffer_write_2bytes")
	.dwattr $C$DW$120, DW_AT_TI_call
        CALL #_jpec_buffer_write_2bytes ; |189| 
                                        ; call occurs [#_jpec_buffer_write_2bytes] ; |189| 
	.dwpsn	file "./jpeg/enc.c",line 190,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #74, AC0 ; |190| 
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$121	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$121, DW_AT_low_pc(0x00)
	.dwattr $C$DW$121, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$121, DW_AT_TI_call
        CALL #_jpec_buffer_write_byte ; |190| 
                                        ; call occurs [#_jpec_buffer_write_byte] ; |190| 
	.dwpsn	file "./jpeg/enc.c",line 191,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #70, AC0 ; |191| 
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$122	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$122, DW_AT_low_pc(0x00)
	.dwattr $C$DW$122, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$122, DW_AT_TI_call
        CALL #_jpec_buffer_write_byte ; |191| 
                                        ; call occurs [#_jpec_buffer_write_byte] ; |191| 
	.dwpsn	file "./jpeg/enc.c",line 192,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #73, AC0 ; |192| 
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$123	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$123, DW_AT_low_pc(0x00)
	.dwattr $C$DW$123, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$123, DW_AT_TI_call
        CALL #_jpec_buffer_write_byte ; |192| 
                                        ; call occurs [#_jpec_buffer_write_byte] ; |192| 
	.dwpsn	file "./jpeg/enc.c",line 193,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #70, AC0 ; |193| 
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$124	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$124, DW_AT_low_pc(0x00)
	.dwattr $C$DW$124, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$124, DW_AT_TI_call
        CALL #_jpec_buffer_write_byte ; |193| 
                                        ; call occurs [#_jpec_buffer_write_byte] ; |193| 
	.dwpsn	file "./jpeg/enc.c",line 194,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$125	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$125, DW_AT_low_pc(0x00)
	.dwattr $C$DW$125, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$125, DW_AT_TI_call

        CALL #_jpec_buffer_write_byte ; |194| 
||      MOV #0, AC0 ; |194| 

                                        ; call occurs [#_jpec_buffer_write_byte] ; |194| 
	.dwpsn	file "./jpeg/enc.c",line 195,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #257, AC0 ; |195| 
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$126	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$126, DW_AT_low_pc(0x00)
	.dwattr $C$DW$126, DW_AT_name("_jpec_buffer_write_2bytes")
	.dwattr $C$DW$126, DW_AT_TI_call
        CALL #_jpec_buffer_write_2bytes ; |195| 
                                        ; call occurs [#_jpec_buffer_write_2bytes] ; |195| 
	.dwpsn	file "./jpeg/enc.c",line 196,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$127	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$127, DW_AT_low_pc(0x00)
	.dwattr $C$DW$127, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$127, DW_AT_TI_call

        CALL #_jpec_buffer_write_byte ; |196| 
||      MOV #0, AC0 ; |196| 

                                        ; call occurs [#_jpec_buffer_write_byte] ; |196| 
	.dwpsn	file "./jpeg/enc.c",line 197,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$128	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$128, DW_AT_low_pc(0x00)
	.dwattr $C$DW$128, DW_AT_name("_jpec_buffer_write_2bytes")
	.dwattr $C$DW$128, DW_AT_TI_call

        CALL #_jpec_buffer_write_2bytes ; |197| 
||      MOV #1, AC0 ; |197| 

                                        ; call occurs [#_jpec_buffer_write_2bytes] ; |197| 
	.dwpsn	file "./jpeg/enc.c",line 198,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$129	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$129, DW_AT_low_pc(0x00)
	.dwattr $C$DW$129, DW_AT_name("_jpec_buffer_write_2bytes")
	.dwattr $C$DW$129, DW_AT_TI_call

        CALL #_jpec_buffer_write_2bytes ; |198| 
||      MOV #1, AC0 ; |198| 

                                        ; call occurs [#_jpec_buffer_write_2bytes] ; |198| 
	.dwpsn	file "./jpeg/enc.c",line 199,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$130	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$130, DW_AT_low_pc(0x00)
	.dwattr $C$DW$130, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$130, DW_AT_TI_call

        CALL #_jpec_buffer_write_byte ; |199| 
||      MOV #0, AC0 ; |199| 

                                        ; call occurs [#_jpec_buffer_write_byte] ; |199| 
	.dwpsn	file "./jpeg/enc.c",line 200,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, AC0 ; |200| 
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$131	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$131, DW_AT_low_pc(0x00)
	.dwattr $C$DW$131, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$131, DW_AT_TI_call
        CALL #_jpec_buffer_write_byte ; |200| 
                                        ; call occurs [#_jpec_buffer_write_byte] ; |200| 
	.dwpsn	file "./jpeg/enc.c",line 201,column 1,is_stmt
$C$L22:    
	CALL #_coverage_log;
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$132	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$132, DW_AT_low_pc(0x00)
	.dwattr $C$DW$132, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$116, DW_AT_TI_end_file("./jpeg/enc.c")
	.dwattr $C$DW$116, DW_AT_TI_end_line(0xc9)
	.dwattr $C$DW$116, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$116

	.sect	".text"

$C$DW$133	.dwtag  DW_TAG_subprogram, DW_AT_name("jpec_enc_write_dqt")
	.dwattr $C$DW$133, DW_AT_low_pc(_jpec_enc_write_dqt)
	.dwattr $C$DW$133, DW_AT_high_pc(0x00)
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("_jpec_enc_write_dqt")
	.dwattr $C$DW$133, DW_AT_TI_begin_file("./jpeg/enc.c")
	.dwattr $C$DW$133, DW_AT_TI_begin_line(0xcb)
	.dwattr $C$DW$133, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$133, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "./jpeg/enc.c",line 204,column 1,is_stmt,address _jpec_enc_write_dqt

	.dwfde $C$DW$CIE, _jpec_enc_write_dqt
$C$DW$134	.dwtag  DW_TAG_formal_parameter, DW_AT_name("e")
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$134, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: jpec_enc_write_dqt                                           *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR3,XAR3,SP,CARRY,   *
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_jpec_enc_write_dqt:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$135	.dwtag  DW_TAG_variable, DW_AT_name("e")
	.dwattr $C$DW$135, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$135, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$136	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$136, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./jpeg/enc.c",line 205,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L24,AC0 == #0 ; |205| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |205| 
	.dwpsn	file "./jpeg/enc.c",line 206,column 9,is_stmt
	.dwpsn	file "./jpeg/enc.c",line 208,column 5,is_stmt
        MOV #65499, AR1 ; |208| 
        MOV dbl(*AR3(short(#6))), XAR0
        AND #0xffff, AR1, AC0 ; |208| 
$C$DW$137	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$137, DW_AT_low_pc(0x00)
	.dwattr $C$DW$137, DW_AT_name("_jpec_buffer_write_2bytes")
	.dwattr $C$DW$137, DW_AT_TI_call
        CALL #_jpec_buffer_write_2bytes ; |208| 
                                        ; call occurs [#_jpec_buffer_write_2bytes] ; |208| 
	.dwpsn	file "./jpeg/enc.c",line 209,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #67, AC0 ; |209| 
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$138	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$138, DW_AT_low_pc(0x00)
	.dwattr $C$DW$138, DW_AT_name("_jpec_buffer_write_2bytes")
	.dwattr $C$DW$138, DW_AT_TI_call
        CALL #_jpec_buffer_write_2bytes ; |209| 
                                        ; call occurs [#_jpec_buffer_write_2bytes] ; |209| 
	.dwpsn	file "./jpeg/enc.c",line 210,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$139	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$139, DW_AT_low_pc(0x00)
	.dwattr $C$DW$139, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$139, DW_AT_TI_call

        CALL #_jpec_buffer_write_byte ; |210| 
||      MOV #0, AC0 ; |210| 

                                        ; call occurs [#_jpec_buffer_write_byte] ; |210| 
	.dwpsn	file "./jpeg/enc.c",line 212,column 10,is_stmt
        MOV #0, AC0 ; |212| 
        MOV AC0, dbl(*SP(#2)) ; |212| 
	.dwpsn	file "./jpeg/enc.c",line 212,column 17,is_stmt
        MOV #64, AC0 ; |212| 
        MOV dbl(*SP(#2)), AC1 ; |212| 
        CMP AC1 >= AC0, TC1 ; |212| 
        BCC $C$L24,TC1 ; |212| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |212| 
$C$L23:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_write_dqt$3$B:
	.dwpsn	file "./jpeg/enc.c",line 214,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#3), T0 ; |214| 
        SFTL T0, #1 ; |214| 
        MOV dbl(*AR3(short(#6))), XAR0
        AMOV #(_jpec_zz+1), XAR3 ; |214| 
        MOV *AR3(T0), AR1 ; |214| 
        SFTL AR1, #1 ; |214| 
        MOV dbl(*SP(#0)), XAR3
        AADD AR1, AR3 ; |214| 
        MOV dbl(*AR3(#10)), AC0 ; |214| 
$C$DW$140	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$140, DW_AT_low_pc(0x00)
	.dwattr $C$DW$140, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$140, DW_AT_TI_call
        CALL #_jpec_buffer_write_byte ; |214| 
                                        ; call occurs [#_jpec_buffer_write_byte] ; |214| 
	.dwpsn	file "./jpeg/enc.c",line 212,column 25,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |212| 
        ADD #1, AC0 ; |212| 
        MOV AC0, dbl(*SP(#2)) ; |212| 
	.dwpsn	file "./jpeg/enc.c",line 212,column 17,is_stmt
        MOV #64, AC0 ; |212| 
        MOV dbl(*SP(#2)), AC1 ; |212| 
        CMP AC1 < AC0, TC1 ; |212| 
        BCC $C$L23,TC1 ; |212| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |212| 
$C$DW$L$_jpec_enc_write_dqt$3$E:
	.dwpsn	file "./jpeg/enc.c",line 216,column 1,is_stmt
$C$L24:    
	CALL #_coverage_log;
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$141	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$141, DW_AT_low_pc(0x00)
	.dwattr $C$DW$141, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$142	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$142, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/enc.asm:$C$L23:1:1729195931")
	.dwattr $C$DW$142, DW_AT_TI_begin_file("./jpeg/enc.c")
	.dwattr $C$DW$142, DW_AT_TI_begin_line(0xd4)
	.dwattr $C$DW$142, DW_AT_TI_end_line(0xd7)
$C$DW$143	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$143, DW_AT_low_pc($C$DW$L$_jpec_enc_write_dqt$3$B)
	.dwattr $C$DW$143, DW_AT_high_pc($C$DW$L$_jpec_enc_write_dqt$3$E)
	.dwendtag $C$DW$142

	.dwattr $C$DW$133, DW_AT_TI_end_file("./jpeg/enc.c")
	.dwattr $C$DW$133, DW_AT_TI_end_line(0xd8)
	.dwattr $C$DW$133, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$133

	.sect	".text"

$C$DW$144	.dwtag  DW_TAG_subprogram, DW_AT_name("jpec_enc_write_sof0")
	.dwattr $C$DW$144, DW_AT_low_pc(_jpec_enc_write_sof0)
	.dwattr $C$DW$144, DW_AT_high_pc(0x00)
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_jpec_enc_write_sof0")
	.dwattr $C$DW$144, DW_AT_TI_begin_file("./jpeg/enc.c")
	.dwattr $C$DW$144, DW_AT_TI_begin_line(0xda)
	.dwattr $C$DW$144, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$144, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./jpeg/enc.c",line 219,column 1,is_stmt,address _jpec_enc_write_sof0

	.dwfde $C$DW$CIE, _jpec_enc_write_sof0
$C$DW$145	.dwtag  DW_TAG_formal_parameter, DW_AT_name("e")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$145, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: jpec_enc_write_sof0                                          *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AR0,XAR0,AR1,AR3,XAR3,SP,M40,SATA,SATD,RDM,  *
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_jpec_enc_write_sof0:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$146	.dwtag  DW_TAG_variable, DW_AT_name("e")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$146, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./jpeg/enc.c",line 220,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L25,AC0 == #0 ; |220| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |220| 
	.dwpsn	file "./jpeg/enc.c",line 221,column 9,is_stmt
	.dwpsn	file "./jpeg/enc.c",line 223,column 5,is_stmt
        MOV #65472, AR1 ; |223| 
        MOV dbl(*AR3(short(#6))), XAR0
        AND #0xffff, AR1, AC0 ; |223| 
$C$DW$147	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$147, DW_AT_low_pc(0x00)
	.dwattr $C$DW$147, DW_AT_name("_jpec_buffer_write_2bytes")
	.dwattr $C$DW$147, DW_AT_TI_call
        CALL #_jpec_buffer_write_2bytes ; |223| 
                                        ; call occurs [#_jpec_buffer_write_2bytes] ; |223| 
	.dwpsn	file "./jpeg/enc.c",line 224,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$148	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$148, DW_AT_low_pc(0x00)
	.dwattr $C$DW$148, DW_AT_name("_jpec_buffer_write_2bytes")
	.dwattr $C$DW$148, DW_AT_TI_call

        CALL #_jpec_buffer_write_2bytes ; |224| 
||      MOV #11, AC0 ; |224| 

                                        ; call occurs [#_jpec_buffer_write_2bytes] ; |224| 
	.dwpsn	file "./jpeg/enc.c",line 225,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$149	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$149, DW_AT_low_pc(0x00)
	.dwattr $C$DW$149, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$149, DW_AT_TI_call

        CALL #_jpec_buffer_write_byte ; |225| 
||      MOV #8, AC0 ; |225| 

                                        ; call occurs [#_jpec_buffer_write_byte] ; |225| 
	.dwpsn	file "./jpeg/enc.c",line 226,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#6))), XAR0
        MOV uns(*AR3(short(#3))), AC0 ; |226| 
$C$DW$150	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$150, DW_AT_low_pc(0x00)
	.dwattr $C$DW$150, DW_AT_name("_jpec_buffer_write_2bytes")
	.dwattr $C$DW$150, DW_AT_TI_call
        CALL #_jpec_buffer_write_2bytes ; |226| 
                                        ; call occurs [#_jpec_buffer_write_2bytes] ; |226| 
	.dwpsn	file "./jpeg/enc.c",line 227,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#6))), XAR0
        MOV uns(*AR3(short(#2))), AC0 ; |227| 
$C$DW$151	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$151, DW_AT_low_pc(0x00)
	.dwattr $C$DW$151, DW_AT_name("_jpec_buffer_write_2bytes")
	.dwattr $C$DW$151, DW_AT_TI_call
        CALL #_jpec_buffer_write_2bytes ; |227| 
                                        ; call occurs [#_jpec_buffer_write_2bytes] ; |227| 
	.dwpsn	file "./jpeg/enc.c",line 228,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$152	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$152, DW_AT_low_pc(0x00)
	.dwattr $C$DW$152, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$152, DW_AT_TI_call

        CALL #_jpec_buffer_write_byte ; |228| 
||      MOV #1, AC0 ; |228| 

                                        ; call occurs [#_jpec_buffer_write_byte] ; |228| 
	.dwpsn	file "./jpeg/enc.c",line 229,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$153	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$153, DW_AT_low_pc(0x00)
	.dwattr $C$DW$153, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$153, DW_AT_TI_call

        CALL #_jpec_buffer_write_byte ; |229| 
||      MOV #1, AC0 ; |229| 

                                        ; call occurs [#_jpec_buffer_write_byte] ; |229| 
	.dwpsn	file "./jpeg/enc.c",line 230,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #17, AC0 ; |230| 
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$154	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$154, DW_AT_low_pc(0x00)
	.dwattr $C$DW$154, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$154, DW_AT_TI_call
        CALL #_jpec_buffer_write_byte ; |230| 
                                        ; call occurs [#_jpec_buffer_write_byte] ; |230| 
	.dwpsn	file "./jpeg/enc.c",line 231,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, AC0 ; |231| 
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$155	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$155, DW_AT_low_pc(0x00)
	.dwattr $C$DW$155, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$155, DW_AT_TI_call
        CALL #_jpec_buffer_write_byte ; |231| 
                                        ; call occurs [#_jpec_buffer_write_byte] ; |231| 
	.dwpsn	file "./jpeg/enc.c",line 232,column 1,is_stmt
$C$L25:    
	CALL #_coverage_log;
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$156	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$156, DW_AT_low_pc(0x00)
	.dwattr $C$DW$156, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$144, DW_AT_TI_end_file("./jpeg/enc.c")
	.dwattr $C$DW$144, DW_AT_TI_end_line(0xe8)
	.dwattr $C$DW$144, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$144

	.sect	".text"

$C$DW$157	.dwtag  DW_TAG_subprogram, DW_AT_name("jpec_enc_write_dht")
	.dwattr $C$DW$157, DW_AT_low_pc(_jpec_enc_write_dht)
	.dwattr $C$DW$157, DW_AT_high_pc(0x00)
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("_jpec_enc_write_dht")
	.dwattr $C$DW$157, DW_AT_TI_begin_file("./jpeg/enc.c")
	.dwattr $C$DW$157, DW_AT_TI_begin_line(0xea)
	.dwattr $C$DW$157, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$157, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "./jpeg/enc.c",line 235,column 1,is_stmt,address _jpec_enc_write_dht

	.dwfde $C$DW$CIE, _jpec_enc_write_dht
$C$DW$158	.dwtag  DW_TAG_formal_parameter, DW_AT_name("e")
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$158, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: jpec_enc_write_dht                                           *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR3,XAR3,SP,CARRY,   *
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_jpec_enc_write_dht:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$159	.dwtag  DW_TAG_variable, DW_AT_name("e")
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$159, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$160	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$160, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./jpeg/enc.c",line 237,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L33,AC0 == #0 ; |237| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |237| 
	.dwpsn	file "./jpeg/enc.c",line 238,column 9,is_stmt
	.dwpsn	file "./jpeg/enc.c",line 240,column 5,is_stmt
        MOV #65476, AR1 ; |240| 
        MOV dbl(*AR3(short(#6))), XAR0
        AND #0xffff, AR1, AC0 ; |240| 
$C$DW$161	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$161, DW_AT_low_pc(0x00)
	.dwattr $C$DW$161, DW_AT_name("_jpec_buffer_write_2bytes")
	.dwattr $C$DW$161, DW_AT_TI_call
        CALL #_jpec_buffer_write_2bytes ; |240| 
                                        ; call occurs [#_jpec_buffer_write_2bytes] ; |240| 
	.dwpsn	file "./jpeg/enc.c",line 241,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #19, AC0 ; |241| 
        MOV dbl(*AR3(short(#6))), XAR0
        ADD dbl(*(#_jpec_dc_nb_vals)), AC0, AC0 ; |241| 
$C$DW$162	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$162, DW_AT_low_pc(0x00)
	.dwattr $C$DW$162, DW_AT_name("_jpec_buffer_write_2bytes")
	.dwattr $C$DW$162, DW_AT_TI_call
        CALL #_jpec_buffer_write_2bytes ; |241| 
                                        ; call occurs [#_jpec_buffer_write_2bytes] ; |241| 
	.dwpsn	file "./jpeg/enc.c",line 242,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$163	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$163, DW_AT_low_pc(0x00)
	.dwattr $C$DW$163, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$163, DW_AT_TI_call

        CALL #_jpec_buffer_write_byte ; |242| 
||      MOV #0, AC0 ; |242| 

                                        ; call occurs [#_jpec_buffer_write_byte] ; |242| 
	.dwpsn	file "./jpeg/enc.c",line 243,column 10,is_stmt
        MOV #0, AC0 ; |243| 
        MOV AC0, dbl(*SP(#2)) ; |243| 
	.dwpsn	file "./jpeg/enc.c",line 243,column 17,is_stmt
        MOV #16, AC0 ; |243| 
        MOV dbl(*SP(#2)), AC1 ; |243| 
        CMP AC1 >= AC0, TC1 ; |243| 
        BCC $C$L27,TC1 ; |243| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |243| 
$C$L26:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_write_dht$3$B:
	.dwpsn	file "./jpeg/enc.c",line 245,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#2)), AC0 ; |245| 
        ADD #1, AC0 ; |245| 
        MOV AC0, T0 ; |245| 
        MOV dbl(*AR3(short(#6))), XAR0
        AMOV #_jpec_dc_nodes, XAR3 ; |245| 
        MOV uns(*AR3(T0)), AC0 ; |245| 
$C$DW$164	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$164, DW_AT_low_pc(0x00)
	.dwattr $C$DW$164, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$164, DW_AT_TI_call
        CALL #_jpec_buffer_write_byte ; |245| 
                                        ; call occurs [#_jpec_buffer_write_byte] ; |245| 
	.dwpsn	file "./jpeg/enc.c",line 243,column 25,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |243| 
        ADD #1, AC0 ; |243| 
        MOV AC0, dbl(*SP(#2)) ; |243| 
	.dwpsn	file "./jpeg/enc.c",line 243,column 17,is_stmt
        MOV #16, AC0 ; |243| 
        MOV dbl(*SP(#2)), AC1 ; |243| 
        CMP AC1 < AC0, TC1 ; |243| 
        BCC $C$L26,TC1 ; |243| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |243| 
$C$DW$L$_jpec_enc_write_dht$3$E:
$C$L27:    
	CALL #_coverage_log;
	.dwpsn	file "./jpeg/enc.c",line 247,column 10,is_stmt
        MOV #0, AC0 ; |247| 
        MOV AC0, dbl(*SP(#2)) ; |247| 
	.dwpsn	file "./jpeg/enc.c",line 247,column 17,is_stmt
        MOV dbl(*SP(#2)), AC1 ; |247| 
        MOV dbl(*(#_jpec_dc_nb_vals)), AC0 ; |247| 
        CMP AC1 >= AC0, TC1 ; |247| 
        BCC $C$L29,TC1 ; |247| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |247| 
$C$L28:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_write_dht$5$B:
	.dwpsn	file "./jpeg/enc.c",line 249,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#3), T0 ; |249| 
        MOV dbl(*AR3(short(#6))), XAR0
        AMOV #_jpec_dc_vals, XAR3 ; |249| 
        MOV uns(*AR3(T0)), AC0 ; |249| 
$C$DW$165	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$165, DW_AT_low_pc(0x00)
	.dwattr $C$DW$165, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$165, DW_AT_TI_call
        CALL #_jpec_buffer_write_byte ; |249| 
                                        ; call occurs [#_jpec_buffer_write_byte] ; |249| 
	.dwpsn	file "./jpeg/enc.c",line 247,column 38,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |247| 
        ADD #1, AC0 ; |247| 
        MOV AC0, dbl(*SP(#2)) ; |247| 
	.dwpsn	file "./jpeg/enc.c",line 247,column 17,is_stmt
        MOV dbl(*(#_jpec_dc_nb_vals)), AC0 ; |247| 
        MOV dbl(*SP(#2)), AC1 ; |247| 
        CMP AC1 < AC0, TC1 ; |247| 
        BCC $C$L28,TC1 ; |247| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |247| 
$C$DW$L$_jpec_enc_write_dht$5$E:
$C$L29:    
	CALL #_coverage_log;
	.dwpsn	file "./jpeg/enc.c",line 251,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #65476, AR1 ; |251| 
        AND #0xffff, AR1, AC0 ; |251| 
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$166	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$166, DW_AT_low_pc(0x00)
	.dwattr $C$DW$166, DW_AT_name("_jpec_buffer_write_2bytes")
	.dwattr $C$DW$166, DW_AT_TI_call
        CALL #_jpec_buffer_write_2bytes ; |251| 
                                        ; call occurs [#_jpec_buffer_write_2bytes] ; |251| 
	.dwpsn	file "./jpeg/enc.c",line 252,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #19, AC0 ; |252| 
        MOV dbl(*AR3(short(#6))), XAR0
        ADD dbl(*(#_jpec_ac_nb_vals)), AC0, AC0 ; |252| 
$C$DW$167	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$167, DW_AT_low_pc(0x00)
	.dwattr $C$DW$167, DW_AT_name("_jpec_buffer_write_2bytes")
	.dwattr $C$DW$167, DW_AT_TI_call
        CALL #_jpec_buffer_write_2bytes ; |252| 
                                        ; call occurs [#_jpec_buffer_write_2bytes] ; |252| 
	.dwpsn	file "./jpeg/enc.c",line 253,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #16, AC0 ; |253| 
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$168	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$168, DW_AT_low_pc(0x00)
	.dwattr $C$DW$168, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$168, DW_AT_TI_call
        CALL #_jpec_buffer_write_byte ; |253| 
                                        ; call occurs [#_jpec_buffer_write_byte] ; |253| 
	.dwpsn	file "./jpeg/enc.c",line 254,column 10,is_stmt
        MOV #0, AC0 ; |254| 
        MOV AC0, dbl(*SP(#2)) ; |254| 
	.dwpsn	file "./jpeg/enc.c",line 254,column 17,is_stmt
        MOV #16, AC0 ; |254| 
        MOV dbl(*SP(#2)), AC1 ; |254| 
        CMP AC1 >= AC0, TC1 ; |254| 
        BCC $C$L31,TC1 ; |254| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |254| 
$C$L30:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_write_dht$7$B:
	.dwpsn	file "./jpeg/enc.c",line 256,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#2)), AC0 ; |256| 
        ADD #1, AC0 ; |256| 
        MOV AC0, T0 ; |256| 
        MOV dbl(*AR3(short(#6))), XAR0
        AMOV #_jpec_ac_nodes, XAR3 ; |256| 
        MOV uns(*AR3(T0)), AC0 ; |256| 
$C$DW$169	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$169, DW_AT_low_pc(0x00)
	.dwattr $C$DW$169, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$169, DW_AT_TI_call
        CALL #_jpec_buffer_write_byte ; |256| 
                                        ; call occurs [#_jpec_buffer_write_byte] ; |256| 
	.dwpsn	file "./jpeg/enc.c",line 254,column 25,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |254| 
        ADD #1, AC0 ; |254| 
        MOV AC0, dbl(*SP(#2)) ; |254| 
	.dwpsn	file "./jpeg/enc.c",line 254,column 17,is_stmt
        MOV #16, AC0 ; |254| 
        MOV dbl(*SP(#2)), AC1 ; |254| 
        CMP AC1 < AC0, TC1 ; |254| 
        BCC $C$L30,TC1 ; |254| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |254| 
$C$DW$L$_jpec_enc_write_dht$7$E:
$C$L31:    
	CALL #_coverage_log;
	.dwpsn	file "./jpeg/enc.c",line 258,column 10,is_stmt
        MOV #0, AC0 ; |258| 
        MOV AC0, dbl(*SP(#2)) ; |258| 
	.dwpsn	file "./jpeg/enc.c",line 258,column 17,is_stmt
        MOV dbl(*SP(#2)), AC1 ; |258| 
        MOV dbl(*(#_jpec_ac_nb_vals)), AC0 ; |258| 
        CMP AC1 >= AC0, TC1 ; |258| 
        BCC $C$L33,TC1 ; |258| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |258| 
$C$L32:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_write_dht$9$B:
	.dwpsn	file "./jpeg/enc.c",line 260,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#3), T0 ; |260| 
        MOV dbl(*AR3(short(#6))), XAR0
        AMOV #_jpec_ac_vals, XAR3 ; |260| 
        MOV uns(*AR3(T0)), AC0 ; |260| 
$C$DW$170	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$170, DW_AT_low_pc(0x00)
	.dwattr $C$DW$170, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$170, DW_AT_TI_call
        CALL #_jpec_buffer_write_byte ; |260| 
                                        ; call occurs [#_jpec_buffer_write_byte] ; |260| 
	.dwpsn	file "./jpeg/enc.c",line 258,column 38,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |258| 
        ADD #1, AC0 ; |258| 
        MOV AC0, dbl(*SP(#2)) ; |258| 
	.dwpsn	file "./jpeg/enc.c",line 258,column 17,is_stmt
        MOV dbl(*(#_jpec_ac_nb_vals)), AC0 ; |258| 
        MOV dbl(*SP(#2)), AC1 ; |258| 
        CMP AC1 < AC0, TC1 ; |258| 
        BCC $C$L32,TC1 ; |258| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |258| 
$C$DW$L$_jpec_enc_write_dht$9$E:
	.dwpsn	file "./jpeg/enc.c",line 262,column 1,is_stmt
$C$L33:    
	CALL #_coverage_log;
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$171	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$171, DW_AT_low_pc(0x00)
	.dwattr $C$DW$171, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$172	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$172, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/enc.asm:$C$L32:1:1729195931")
	.dwattr $C$DW$172, DW_AT_TI_begin_file("./jpeg/enc.c")
	.dwattr $C$DW$172, DW_AT_TI_begin_line(0x102)
	.dwattr $C$DW$172, DW_AT_TI_end_line(0x105)
$C$DW$173	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$173, DW_AT_low_pc($C$DW$L$_jpec_enc_write_dht$9$B)
	.dwattr $C$DW$173, DW_AT_high_pc($C$DW$L$_jpec_enc_write_dht$9$E)
	.dwendtag $C$DW$172


$C$DW$174	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$174, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/enc.asm:$C$L30:1:1729195931")
	.dwattr $C$DW$174, DW_AT_TI_begin_file("./jpeg/enc.c")
	.dwattr $C$DW$174, DW_AT_TI_begin_line(0xfe)
	.dwattr $C$DW$174, DW_AT_TI_end_line(0x101)
$C$DW$175	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$175, DW_AT_low_pc($C$DW$L$_jpec_enc_write_dht$7$B)
	.dwattr $C$DW$175, DW_AT_high_pc($C$DW$L$_jpec_enc_write_dht$7$E)
	.dwendtag $C$DW$174


$C$DW$176	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$176, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/enc.asm:$C$L28:1:1729195931")
	.dwattr $C$DW$176, DW_AT_TI_begin_file("./jpeg/enc.c")
	.dwattr $C$DW$176, DW_AT_TI_begin_line(0xf7)
	.dwattr $C$DW$176, DW_AT_TI_end_line(0xfa)
$C$DW$177	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$177, DW_AT_low_pc($C$DW$L$_jpec_enc_write_dht$5$B)
	.dwattr $C$DW$177, DW_AT_high_pc($C$DW$L$_jpec_enc_write_dht$5$E)
	.dwendtag $C$DW$176


$C$DW$178	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$178, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/enc.asm:$C$L26:1:1729195931")
	.dwattr $C$DW$178, DW_AT_TI_begin_file("./jpeg/enc.c")
	.dwattr $C$DW$178, DW_AT_TI_begin_line(0xf3)
	.dwattr $C$DW$178, DW_AT_TI_end_line(0xf6)
$C$DW$179	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$179, DW_AT_low_pc($C$DW$L$_jpec_enc_write_dht$3$B)
	.dwattr $C$DW$179, DW_AT_high_pc($C$DW$L$_jpec_enc_write_dht$3$E)
	.dwendtag $C$DW$178

	.dwattr $C$DW$157, DW_AT_TI_end_file("./jpeg/enc.c")
	.dwattr $C$DW$157, DW_AT_TI_end_line(0x106)
	.dwattr $C$DW$157, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$157

	.sect	".text"

$C$DW$180	.dwtag  DW_TAG_subprogram, DW_AT_name("jpec_enc_write_sos")
	.dwattr $C$DW$180, DW_AT_low_pc(_jpec_enc_write_sos)
	.dwattr $C$DW$180, DW_AT_high_pc(0x00)
	.dwattr $C$DW$180, DW_AT_TI_symbol_name("_jpec_enc_write_sos")
	.dwattr $C$DW$180, DW_AT_TI_begin_file("./jpeg/enc.c")
	.dwattr $C$DW$180, DW_AT_TI_begin_line(0x108)
	.dwattr $C$DW$180, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$180, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./jpeg/enc.c",line 265,column 1,is_stmt,address _jpec_enc_write_sos

	.dwfde $C$DW$CIE, _jpec_enc_write_sos
$C$DW$181	.dwtag  DW_TAG_formal_parameter, DW_AT_name("e")
	.dwattr $C$DW$181, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$181, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: jpec_enc_write_sos                                           *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AR0,XAR0,AR1,AR3,XAR3,SP,M40,SATA,SATD,RDM,  *
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_jpec_enc_write_sos:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$182	.dwtag  DW_TAG_variable, DW_AT_name("e")
	.dwattr $C$DW$182, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$182, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./jpeg/enc.c",line 266,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L34,AC0 == #0 ; |266| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |266| 
	.dwpsn	file "./jpeg/enc.c",line 267,column 9,is_stmt
	.dwpsn	file "./jpeg/enc.c",line 269,column 5,is_stmt
        MOV #65498, AR1 ; |269| 
        MOV dbl(*AR3(short(#6))), XAR0
        AND #0xffff, AR1, AC0 ; |269| 
$C$DW$183	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$183, DW_AT_low_pc(0x00)
	.dwattr $C$DW$183, DW_AT_name("_jpec_buffer_write_2bytes")
	.dwattr $C$DW$183, DW_AT_TI_call
        CALL #_jpec_buffer_write_2bytes ; |269| 
                                        ; call occurs [#_jpec_buffer_write_2bytes] ; |269| 
	.dwpsn	file "./jpeg/enc.c",line 270,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$184	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$184, DW_AT_low_pc(0x00)
	.dwattr $C$DW$184, DW_AT_name("_jpec_buffer_write_2bytes")
	.dwattr $C$DW$184, DW_AT_TI_call

        CALL #_jpec_buffer_write_2bytes ; |270| 
||      MOV #8, AC0 ; |270| 

                                        ; call occurs [#_jpec_buffer_write_2bytes] ; |270| 
	.dwpsn	file "./jpeg/enc.c",line 271,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$185	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$185, DW_AT_low_pc(0x00)
	.dwattr $C$DW$185, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$185, DW_AT_TI_call

        CALL #_jpec_buffer_write_byte ; |271| 
||      MOV #1, AC0 ; |271| 

                                        ; call occurs [#_jpec_buffer_write_byte] ; |271| 
	.dwpsn	file "./jpeg/enc.c",line 272,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$186	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$186, DW_AT_low_pc(0x00)
	.dwattr $C$DW$186, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$186, DW_AT_TI_call

        CALL #_jpec_buffer_write_byte ; |272| 
||      MOV #1, AC0 ; |272| 

                                        ; call occurs [#_jpec_buffer_write_byte] ; |272| 
	.dwpsn	file "./jpeg/enc.c",line 273,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$187	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$187, DW_AT_low_pc(0x00)
	.dwattr $C$DW$187, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$187, DW_AT_TI_call

        CALL #_jpec_buffer_write_byte ; |273| 
||      MOV #0, AC0 ; |273| 

                                        ; call occurs [#_jpec_buffer_write_byte] ; |273| 
	.dwpsn	file "./jpeg/enc.c",line 275,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$188	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$188, DW_AT_low_pc(0x00)
	.dwattr $C$DW$188, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$188, DW_AT_TI_call

        CALL #_jpec_buffer_write_byte ; |275| 
||      MOV #0, AC0 ; |275| 

                                        ; call occurs [#_jpec_buffer_write_byte] ; |275| 
	.dwpsn	file "./jpeg/enc.c",line 276,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #63, AC0 ; |276| 
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$189	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$189, DW_AT_low_pc(0x00)
	.dwattr $C$DW$189, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$189, DW_AT_TI_call
        CALL #_jpec_buffer_write_byte ; |276| 
                                        ; call occurs [#_jpec_buffer_write_byte] ; |276| 
	.dwpsn	file "./jpeg/enc.c",line 277,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, AC0 ; |277| 
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$190	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$190, DW_AT_low_pc(0x00)
	.dwattr $C$DW$190, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$190, DW_AT_TI_call
        CALL #_jpec_buffer_write_byte ; |277| 
                                        ; call occurs [#_jpec_buffer_write_byte] ; |277| 
	.dwpsn	file "./jpeg/enc.c",line 278,column 1,is_stmt
$C$L34:    
	CALL #_coverage_log;
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$191	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$191, DW_AT_low_pc(0x00)
	.dwattr $C$DW$191, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$180, DW_AT_TI_end_file("./jpeg/enc.c")
	.dwattr $C$DW$180, DW_AT_TI_end_line(0x116)
	.dwattr $C$DW$180, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$180

	.sect	".text"

$C$DW$192	.dwtag  DW_TAG_subprogram, DW_AT_name("jpec_enc_next_block")
	.dwattr $C$DW$192, DW_AT_low_pc(_jpec_enc_next_block)
	.dwattr $C$DW$192, DW_AT_high_pc(0x00)
	.dwattr $C$DW$192, DW_AT_TI_symbol_name("_jpec_enc_next_block")
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$192, DW_AT_TI_begin_file("./jpeg/enc.c")
	.dwattr $C$DW$192, DW_AT_TI_begin_line(0x118)
	.dwattr $C$DW$192, DW_AT_TI_begin_column(0x10)
	.dwattr $C$DW$192, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "./jpeg/enc.c",line 281,column 1,is_stmt,address _jpec_enc_next_block

	.dwfde $C$DW$CIE, _jpec_enc_next_block
$C$DW$193	.dwtag  DW_TAG_formal_parameter, DW_AT_name("e")
	.dwattr $C$DW$193, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$193, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: jpec_enc_next_block                                          *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,AR0,XAR0,AR1,AR3,XAR3,SP,CARRY,TC1,  *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_jpec_enc_next_block:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$194	.dwtag  DW_TAG_variable, DW_AT_name("e")
	.dwattr $C$DW$194, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$194, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$195	.dwtag  DW_TAG_variable, DW_AT_name("rv")
	.dwattr $C$DW$195, DW_AT_TI_symbol_name("_rv")
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$195, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./jpeg/enc.c",line 282,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L35,AC0 != #0 ; |282| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |282| 
	.dwpsn	file "./jpeg/enc.c",line 283,column 9,is_stmt
        MOV #0, AC0 ; |283| 
        B $C$L39  ; |283| 
                                        ; branch occurs ; |283| 
$C$L35:    
	CALL #_coverage_log;
	.dwpsn	file "./jpeg/enc.c",line 285,column 13,is_stmt
        MOV #1, AC0 ; |285| 
        ADD dbl(*AR3(#140)), AC0, AC0 ; |285| 
        MOV AC0, dbl(*AR3(#140)) ; |285| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#138)), AC1 ; |285| 
        CMP AC0 < AC1, TC1 ; |285| 
        BCC $C$L36,TC1 ; |285| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |285| 

        B $C$L37  ; |285| 
||      MOV #0, AR1

                                        ; branch occurs ; |285| 
$C$L36:    
	CALL #_coverage_log;
        MOV #1, AR1
$C$L37:    
	CALL #_coverage_log;
        MOV AR1, AC0
        MOV AC0, dbl(*SP(#2)) ; |285| 
	.dwpsn	file "./jpeg/enc.c",line 286,column 5,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |286| 
        BCC $C$L38,AC0 == #0 ; |286| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |286| 
	.dwpsn	file "./jpeg/enc.c",line 288,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV uns(*AR3(short(#4))), AC1 ; |288| 
        MOV dbl(*AR3(#140)), AC0 ; |288| 
$C$DW$196	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$196, DW_AT_low_pc(0x00)
	.dwattr $C$DW$196, DW_AT_name("__remli")
	.dwattr $C$DW$196, DW_AT_TI_call

        CALL #__remli ; |288| 
||      SFTS AC0, #3, AC0 ; |288| 

                                        ; call occurs [#__remli] ; |288| 
        MOV dbl(*SP(#0)), XAR3
        MOV AC0, *AR3(#142) ; |288| 
	.dwpsn	file "./jpeg/enc.c",line 289,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#140)), AC0 ; |289| 
        MOV uns(*AR3(short(#4))), AC1 ; |289| 
$C$DW$197	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$197, DW_AT_low_pc(0x00)
	.dwattr $C$DW$197, DW_AT_name("__divli")
	.dwattr $C$DW$197, DW_AT_TI_call

        CALL #__divli ; |289| 
||      SFTS AC0, #3, AC0 ; |289| 

                                        ; call occurs [#__divli] ; |289| 
        MOV dbl(*SP(#0)), XAR3
        SFTS AC0, #3, AC0 ; |289| 
        MOV AC0, *AR3(#143) ; |289| 
$C$L38:    
	CALL #_coverage_log;
	.dwpsn	file "./jpeg/enc.c",line 291,column 5,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |291| 
$C$L39:    
	CALL #_coverage_log;
	.dwpsn	file "./jpeg/enc.c",line 292,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$198	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$198, DW_AT_low_pc(0x00)
	.dwattr $C$DW$198, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$192, DW_AT_TI_end_file("./jpeg/enc.c")
	.dwattr $C$DW$192, DW_AT_TI_end_line(0x124)
	.dwattr $C$DW$192, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$192

	.sect	".text"

$C$DW$199	.dwtag  DW_TAG_subprogram, DW_AT_name("jpec_enc_block_dct")
	.dwattr $C$DW$199, DW_AT_low_pc(_jpec_enc_block_dct)
	.dwattr $C$DW$199, DW_AT_high_pc(0x00)
	.dwattr $C$DW$199, DW_AT_TI_symbol_name("_jpec_enc_block_dct")
	.dwattr $C$DW$199, DW_AT_TI_begin_file("./jpeg/enc.c")
	.dwattr $C$DW$199, DW_AT_TI_begin_line(0x126)
	.dwattr $C$DW$199, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$199, DW_AT_TI_max_frame_size(0x9c)
	.dwpsn	file "./jpeg/enc.c",line 295,column 1,is_stmt,address _jpec_enc_block_dct

	.dwfde $C$DW$CIE, _jpec_enc_block_dct
$C$DW$200	.dwtag  DW_TAG_formal_parameter, DW_AT_name("e")
	.dwattr $C$DW$200, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$200, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: jpec_enc_block_dct                                           *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR2,XAR2,AR3,XAR3,   *
;*                        AR4,FP,XFP,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL  *
;*   Save On Entry Regs : FP                                                   *
;*   Stack Frame        : Full (Frame Pointer in AR6, w/ debug)                *
;*   Total Frame Size   : 156 words                                            *
;*                        (1 return address/alignment)                         *
;*                        (154 local values)                                   *
;*                        (1 register save area)                               *
;*   Min System Stack   : 2 words                                              *
;*******************************************************************************
_jpec_enc_block_dct:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        PSHBOTH XFP
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 32, -2
        ADD #-154, mmap(SP)
        AMAR *SP(#0), XFP
	.dwcfi	cfa_offset, 156
$C$DW$201	.dwtag  DW_TAG_variable, DW_AT_name("e")
	.dwattr $C$DW$201, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$201, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$202	.dwtag  DW_TAG_variable, DW_AT_name("coeff")
	.dwattr $C$DW$202, DW_AT_TI_symbol_name("_coeff")
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$202, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$203	.dwtag  DW_TAG_variable, DW_AT_name("tmp")
	.dwattr $C$DW$203, DW_AT_TI_symbol_name("_tmp")
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$203, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$204	.dwtag  DW_TAG_variable, DW_AT_name("row")
	.dwattr $C$DW$204, DW_AT_TI_symbol_name("_row")
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$204, DW_AT_location[DW_OP_bregx 0x24 132]
$C$DW$205	.dwtag  DW_TAG_variable, DW_AT_name("col")
	.dwattr $C$DW$205, DW_AT_TI_symbol_name("_col")
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$205, DW_AT_location[DW_OP_bregx 0x24 134]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./jpeg/enc.c",line 297,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L107,AC0 == #0 ; |297| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |297| 
        MOV dbl(*AR3(#140)), AC0 ; |297| 
        BCC $C$L107,AC0 < #0 ; |297| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |297| 
	.dwpsn	file "./jpeg/enc.c",line 298,column 9,is_stmt
	.dwpsn	file "./jpeg/enc.c",line 303,column 18,is_stmt
        AMOV #_jpec_dct, XAR3 ; |303| 
        MOV XAR3, dbl(*SP(#2))
	.dwpsn	file "./jpeg/enc.c",line 306,column 10,is_stmt
        MOV #0, AC0 ; |306| 
        MOV AC0, dbl(*FP(#132)) ; |306| 
	.dwpsn	file "./jpeg/enc.c",line 306,column 19,is_stmt
        MOV dbl(*FP(#132)), AC1 ; |306| 
        MOV #8, AC0 ; |306| 
        CMP AC1 >= AC0, TC1 ; |306| 
        BCC $C$L105,TC1 ; |306| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |306| 
$C$L40:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$4$B:

$C$DW$206	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$207	.dwtag  DW_TAG_variable, DW_AT_name("s0")
	.dwattr $C$DW$207, DW_AT_TI_symbol_name("_s0")
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$207, DW_AT_location[DW_OP_bregx 0x24 136]
$C$DW$208	.dwtag  DW_TAG_variable, DW_AT_name("s1")
	.dwattr $C$DW$208, DW_AT_TI_symbol_name("_s1")
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$208, DW_AT_location[DW_OP_bregx 0x24 138]
$C$DW$209	.dwtag  DW_TAG_variable, DW_AT_name("s2")
	.dwattr $C$DW$209, DW_AT_TI_symbol_name("_s2")
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$209, DW_AT_location[DW_OP_bregx 0x24 140]
$C$DW$210	.dwtag  DW_TAG_variable, DW_AT_name("s3")
	.dwattr $C$DW$210, DW_AT_TI_symbol_name("_s3")
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$210, DW_AT_location[DW_OP_bregx 0x24 142]
$C$DW$211	.dwtag  DW_TAG_variable, DW_AT_name("d0")
	.dwattr $C$DW$211, DW_AT_TI_symbol_name("_d0")
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$211, DW_AT_location[DW_OP_bregx 0x24 144]
$C$DW$212	.dwtag  DW_TAG_variable, DW_AT_name("d1")
	.dwattr $C$DW$212, DW_AT_TI_symbol_name("_d1")
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$212, DW_AT_location[DW_OP_bregx 0x24 146]
$C$DW$213	.dwtag  DW_TAG_variable, DW_AT_name("d2")
	.dwattr $C$DW$213, DW_AT_TI_symbol_name("_d2")
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$213, DW_AT_location[DW_OP_bregx 0x24 148]
$C$DW$214	.dwtag  DW_TAG_variable, DW_AT_name("d3")
	.dwattr $C$DW$214, DW_AT_TI_symbol_name("_d3")
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$214, DW_AT_location[DW_OP_bregx 0x24 150]
	.dwpsn	file "./jpeg/enc.c",line 309,column 15,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*FP(#132)), AC0 ; |309| 
        ADD uns(*AR3(#143)), AC0, AC1 ; |309| 
        MOV uns(*AR3(short(#3))), AC0 ; |309| 
        CMP AC1 >= AC0, TC1 ; |309| 
        BCC $C$L41,TC1 ; |309| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |309| 
$C$DW$L$_jpec_enc_block_dct$4$E:
$C$DW$L$_jpec_enc_block_dct$5$B:
        MOV uns(*AR3(#143)), AC0 ; |309| 
        ADD dbl(*FP(#132)), AC0, AC0 ; |309| 
        B $C$L42  ; |309| 
                                        ; branch occurs ; |309| 
$C$DW$L$_jpec_enc_block_dct$5$E:
$C$L41:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$6$B:
        MOV *AR3(short(#3)), AR1 ; |309| 
        SUB #1, AR1 ; |309| 
        AND #0xffff, AR1, AC0 ; |309| 
$C$DW$L$_jpec_enc_block_dct$6$E:
$C$L42:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$7$B:
        MOV uns(*AR3(short(#2))), AC1 ; |309| 
$C$DW$215	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$215, DW_AT_low_pc(0x00)
	.dwattr $C$DW$215, DW_AT_name("__mpyli")
	.dwattr $C$DW$215, DW_AT_TI_call
        CALL #__mpyli ; |309| 
                                        ; call occurs [#__mpyli] ; |309| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#2)), AR1 ; |309| 
        MOV *AR3(#142), AR2 ; |309| 
        CMPU AR2 >= AR1, TC1 ; |309| 
        BCC $C$L43,TC1 ; |309| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |309| 
$C$DW$L$_jpec_enc_block_dct$7$E:
$C$DW$L$_jpec_enc_block_dct$8$B:
        MOV *AR3(#142), AR1 ; |309| 
        B $C$L44  ; |309| 
                                        ; branch occurs ; |309| 
$C$DW$L$_jpec_enc_block_dct$8$E:
$C$L43:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$9$B:
        MOV *AR3(short(#2)), AR1 ; |309| 
        SUB #1, AR1, AR1 ; |309| 
$C$DW$L$_jpec_enc_block_dct$9$E:
$C$L44:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$10$B:
        AND #0xffff, AR1, AC1 ; |309| 
        ADD AC0, AC1 ; |309| 
        MOV AC1, AR4 ; |309| 
        MOV dbl(*FP(#132)), AC0 ; |309| 
        ADD uns(*AR3(#143)), AC0, AC1 ; |309| 
        MOV uns(*AR3(short(#3))), AC0 ; |309| 
        CMP AC1 >= AC0, TC1 ; |309| 
        MOV dbl(*AR3), XAR2
        BCC $C$L45,TC1 ; |309| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |309| 
$C$DW$L$_jpec_enc_block_dct$10$E:
$C$DW$L$_jpec_enc_block_dct$11$B:
        MOV uns(*AR3(#143)), AC0 ; |309| 
        ADD dbl(*FP(#132)), AC0, AC0 ; |309| 
        B $C$L46  ; |309| 
                                        ; branch occurs ; |309| 
$C$DW$L$_jpec_enc_block_dct$11$E:
$C$L45:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$12$B:
        MOV *AR3(short(#3)), AR1 ; |309| 
        SUB #1, AR1 ; |309| 
        AND #0xffff, AR1, AC0 ; |309| 
$C$DW$L$_jpec_enc_block_dct$12$E:
$C$L46:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$13$B:
        MOV uns(*AR3(short(#2))), AC1 ; |309| 
$C$DW$216	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$216, DW_AT_low_pc(0x00)
	.dwattr $C$DW$216, DW_AT_name("__mpyli")
	.dwattr $C$DW$216, DW_AT_TI_call
        CALL #__mpyli ; |309| 
                                        ; call occurs [#__mpyli] ; |309| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#2)), AR1 ; |309| 
        MOV *AR3(#142), AR3 ; |309| 
        ADD #7, AR3 ; |309| 
        CMPU AR3 >= AR1, TC1 ; |309| 
        BCC $C$L47,TC1 ; |309| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |309| 
$C$DW$L$_jpec_enc_block_dct$13$E:
$C$DW$L$_jpec_enc_block_dct$14$B:
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#142), AR1 ; |309| 

        B $C$L48  ; |309| 
||      ADD #7, AR1, AR1 ; |309| 

                                        ; branch occurs ; |309| 
$C$DW$L$_jpec_enc_block_dct$14$E:
$C$L47:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$15$B:
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#2)), AR1 ; |309| 
        SUB #1, AR1, AR1 ; |309| 
$C$DW$L$_jpec_enc_block_dct$15$E:
$C$L48:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$16$B:
        MOV dbl(*AR3), XAR3
        AND #0xffff, AR1, AC1 ; |309| 
        ADD AC0, AC1 ; |309| 
        MOV AC1, AR1 ; |309| 
        MOV AR4, T0 ; |309| 
        AADD AR1, AR3 ; |309| 
        ADD *AR2(T0), *AR3, AC0 ; |309| 
        MOV HI(AC0), AR1
        SUB #256, AR1, T0 ; |309| 
$C$DW$217	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$217, DW_AT_low_pc(0x00)
	.dwattr $C$DW$217, DW_AT_name("__fltud")
	.dwattr $C$DW$217, DW_AT_TI_call
        CALL #__fltud ; |309| 
                                        ; call occurs [#__fltud] ; |309| 
        MOV AC0, dbl(*FP(#136)) ; |309| 
	.dwpsn	file "./jpeg/enc.c",line 310,column 15,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*FP(#132)), AC0 ; |310| 
        ADD uns(*AR3(#143)), AC0, AC1 ; |310| 
        MOV uns(*AR3(short(#3))), AC0 ; |310| 
        CMP AC1 >= AC0, TC1 ; |310| 
        BCC $C$L49,TC1 ; |310| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |310| 
$C$DW$L$_jpec_enc_block_dct$16$E:
$C$DW$L$_jpec_enc_block_dct$17$B:
        MOV uns(*AR3(#143)), AC0 ; |310| 
        ADD dbl(*FP(#132)), AC0, AC0 ; |310| 
        B $C$L50  ; |310| 
                                        ; branch occurs ; |310| 
$C$DW$L$_jpec_enc_block_dct$17$E:
$C$L49:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$18$B:
        MOV *AR3(short(#3)), AR1 ; |310| 
        SUB #1, AR1 ; |310| 
        AND #0xffff, AR1, AC0 ; |310| 
$C$DW$L$_jpec_enc_block_dct$18$E:
$C$L50:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$19$B:
        MOV uns(*AR3(short(#2))), AC1 ; |310| 
$C$DW$218	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$218, DW_AT_low_pc(0x00)
	.dwattr $C$DW$218, DW_AT_name("__mpyli")
	.dwattr $C$DW$218, DW_AT_TI_call
        CALL #__mpyli ; |310| 
                                        ; call occurs [#__mpyli] ; |310| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#142), AR2 ; |310| 

        ADD #1, AR2 ; |310| 
||      MOV *AR3(short(#2)), AR1 ; |310| 

        CMPU AR2 >= AR1, TC1 ; |310| 
        BCC $C$L51,TC1 ; |310| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |310| 
$C$DW$L$_jpec_enc_block_dct$19$E:
$C$DW$L$_jpec_enc_block_dct$20$B:
        MOV *AR3(#142), AR1 ; |310| 

        B $C$L52  ; |310| 
||      ADD #1, AR1, AR1 ; |310| 

                                        ; branch occurs ; |310| 
$C$DW$L$_jpec_enc_block_dct$20$E:
$C$L51:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$21$B:
        MOV *AR3(short(#2)), AR1 ; |310| 
        SUB #1, AR1, AR1 ; |310| 
$C$DW$L$_jpec_enc_block_dct$21$E:
$C$L52:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$22$B:
        AND #0xffff, AR1, AC1 ; |310| 
        ADD AC0, AC1 ; |310| 
        MOV AC1, AR4 ; |310| 
        MOV dbl(*FP(#132)), AC0 ; |310| 
        ADD uns(*AR3(#143)), AC0, AC1 ; |310| 
        MOV uns(*AR3(short(#3))), AC0 ; |310| 
        CMP AC1 >= AC0, TC1 ; |310| 
        MOV dbl(*AR3), XAR2
        BCC $C$L53,TC1 ; |310| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |310| 
$C$DW$L$_jpec_enc_block_dct$22$E:
$C$DW$L$_jpec_enc_block_dct$23$B:
        MOV uns(*AR3(#143)), AC0 ; |310| 
        ADD dbl(*FP(#132)), AC0, AC0 ; |310| 
        B $C$L54  ; |310| 
                                        ; branch occurs ; |310| 
$C$DW$L$_jpec_enc_block_dct$23$E:
$C$L53:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$24$B:
        MOV *AR3(short(#3)), AR1 ; |310| 
        SUB #1, AR1 ; |310| 
        AND #0xffff, AR1, AC0 ; |310| 
$C$DW$L$_jpec_enc_block_dct$24$E:
$C$L54:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$25$B:
        MOV uns(*AR3(short(#2))), AC1 ; |310| 
$C$DW$219	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$219, DW_AT_low_pc(0x00)
	.dwattr $C$DW$219, DW_AT_name("__mpyli")
	.dwattr $C$DW$219, DW_AT_TI_call
        CALL #__mpyli ; |310| 
                                        ; call occurs [#__mpyli] ; |310| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#2)), AR1 ; |310| 
        MOV *AR3(#142), AR3 ; |310| 
        ADD #6, AR3 ; |310| 
        CMPU AR3 >= AR1, TC1 ; |310| 
        BCC $C$L55,TC1 ; |310| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |310| 
$C$DW$L$_jpec_enc_block_dct$25$E:
$C$DW$L$_jpec_enc_block_dct$26$B:
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#142), AR1 ; |310| 

        B $C$L56  ; |310| 
||      ADD #6, AR1, AR1 ; |310| 

                                        ; branch occurs ; |310| 
$C$DW$L$_jpec_enc_block_dct$26$E:
$C$L55:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$27$B:
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#2)), AR1 ; |310| 
        SUB #1, AR1, AR1 ; |310| 
$C$DW$L$_jpec_enc_block_dct$27$E:
$C$L56:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$28$B:
        MOV dbl(*AR3), XAR3
        AND #0xffff, AR1, AC1 ; |310| 
        ADD AC0, AC1 ; |310| 
        MOV AC1, AR1 ; |310| 
        MOV AR4, T0 ; |310| 
        AADD AR1, AR3 ; |310| 
        ADD *AR2(T0), *AR3, AC0 ; |310| 
        MOV HI(AC0), AR1
        SUB #256, AR1, T0 ; |310| 
$C$DW$220	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$220, DW_AT_low_pc(0x00)
	.dwattr $C$DW$220, DW_AT_name("__fltud")
	.dwattr $C$DW$220, DW_AT_TI_call
        CALL #__fltud ; |310| 
                                        ; call occurs [#__fltud] ; |310| 
        MOV AC0, dbl(*FP(#138)) ; |310| 
	.dwpsn	file "./jpeg/enc.c",line 311,column 15,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*FP(#132)), AC0 ; |311| 
        ADD uns(*AR3(#143)), AC0, AC1 ; |311| 
        MOV uns(*AR3(short(#3))), AC0 ; |311| 
        CMP AC1 >= AC0, TC1 ; |311| 
        BCC $C$L57,TC1 ; |311| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |311| 
$C$DW$L$_jpec_enc_block_dct$28$E:
$C$DW$L$_jpec_enc_block_dct$29$B:
        MOV uns(*AR3(#143)), AC0 ; |311| 
        ADD dbl(*FP(#132)), AC0, AC0 ; |311| 
        B $C$L58  ; |311| 
                                        ; branch occurs ; |311| 
$C$DW$L$_jpec_enc_block_dct$29$E:
$C$L57:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$30$B:
        MOV *AR3(short(#3)), AR1 ; |311| 
        SUB #1, AR1 ; |311| 
        AND #0xffff, AR1, AC0 ; |311| 
$C$DW$L$_jpec_enc_block_dct$30$E:
$C$L58:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$31$B:
        MOV uns(*AR3(short(#2))), AC1 ; |311| 
$C$DW$221	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$221, DW_AT_low_pc(0x00)
	.dwattr $C$DW$221, DW_AT_name("__mpyli")
	.dwattr $C$DW$221, DW_AT_TI_call
        CALL #__mpyli ; |311| 
                                        ; call occurs [#__mpyli] ; |311| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#142), AR2 ; |311| 

        ADD #2, AR2 ; |311| 
||      MOV *AR3(short(#2)), AR1 ; |311| 

        CMPU AR2 >= AR1, TC1 ; |311| 
        BCC $C$L59,TC1 ; |311| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |311| 
$C$DW$L$_jpec_enc_block_dct$31$E:
$C$DW$L$_jpec_enc_block_dct$32$B:
        MOV *AR3(#142), AR1 ; |311| 

        B $C$L60  ; |311| 
||      ADD #2, AR1, AR1 ; |311| 

                                        ; branch occurs ; |311| 
$C$DW$L$_jpec_enc_block_dct$32$E:
$C$L59:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$33$B:
        MOV *AR3(short(#2)), AR1 ; |311| 
        SUB #1, AR1, AR1 ; |311| 
$C$DW$L$_jpec_enc_block_dct$33$E:
$C$L60:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$34$B:
        AND #0xffff, AR1, AC1 ; |311| 
        ADD AC0, AC1 ; |311| 
        MOV AC1, AR4 ; |311| 
        MOV dbl(*FP(#132)), AC0 ; |311| 
        ADD uns(*AR3(#143)), AC0, AC1 ; |311| 
        MOV uns(*AR3(short(#3))), AC0 ; |311| 
        CMP AC1 >= AC0, TC1 ; |311| 
        MOV dbl(*AR3), XAR2
        BCC $C$L61,TC1 ; |311| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |311| 
$C$DW$L$_jpec_enc_block_dct$34$E:
$C$DW$L$_jpec_enc_block_dct$35$B:
        MOV uns(*AR3(#143)), AC0 ; |311| 
        ADD dbl(*FP(#132)), AC0, AC0 ; |311| 
        B $C$L62  ; |311| 
                                        ; branch occurs ; |311| 
$C$DW$L$_jpec_enc_block_dct$35$E:
$C$L61:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$36$B:
        MOV *AR3(short(#3)), AR1 ; |311| 
        SUB #1, AR1 ; |311| 
        AND #0xffff, AR1, AC0 ; |311| 
$C$DW$L$_jpec_enc_block_dct$36$E:
$C$L62:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$37$B:
        MOV uns(*AR3(short(#2))), AC1 ; |311| 
$C$DW$222	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$222, DW_AT_low_pc(0x00)
	.dwattr $C$DW$222, DW_AT_name("__mpyli")
	.dwattr $C$DW$222, DW_AT_TI_call
        CALL #__mpyli ; |311| 
                                        ; call occurs [#__mpyli] ; |311| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#2)), AR1 ; |311| 
        MOV *AR3(#142), AR3 ; |311| 
        ADD #5, AR3 ; |311| 
        CMPU AR3 >= AR1, TC1 ; |311| 
        BCC $C$L63,TC1 ; |311| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |311| 
$C$DW$L$_jpec_enc_block_dct$37$E:
$C$DW$L$_jpec_enc_block_dct$38$B:
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#142), AR1 ; |311| 

        B $C$L64  ; |311| 
||      ADD #5, AR1, AR1 ; |311| 

                                        ; branch occurs ; |311| 
$C$DW$L$_jpec_enc_block_dct$38$E:
$C$L63:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$39$B:
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#2)), AR1 ; |311| 
        SUB #1, AR1, AR1 ; |311| 
$C$DW$L$_jpec_enc_block_dct$39$E:
$C$L64:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$40$B:
        MOV dbl(*AR3), XAR3
        AND #0xffff, AR1, AC1 ; |311| 
        ADD AC0, AC1 ; |311| 
        MOV AC1, AR1 ; |311| 
        MOV AR4, T0 ; |311| 
        AADD AR1, AR3 ; |311| 
        ADD *AR2(T0), *AR3, AC0 ; |311| 
        MOV HI(AC0), AR1
        SUB #256, AR1, T0 ; |311| 
$C$DW$223	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$223, DW_AT_low_pc(0x00)
	.dwattr $C$DW$223, DW_AT_name("__fltud")
	.dwattr $C$DW$223, DW_AT_TI_call
        CALL #__fltud ; |311| 
                                        ; call occurs [#__fltud] ; |311| 
        MOV AC0, dbl(*FP(#140)) ; |311| 
	.dwpsn	file "./jpeg/enc.c",line 312,column 15,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*FP(#132)), AC0 ; |312| 
        ADD uns(*AR3(#143)), AC0, AC1 ; |312| 
        MOV uns(*AR3(short(#3))), AC0 ; |312| 
        CMP AC1 >= AC0, TC1 ; |312| 
        BCC $C$L65,TC1 ; |312| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |312| 
$C$DW$L$_jpec_enc_block_dct$40$E:
$C$DW$L$_jpec_enc_block_dct$41$B:
        MOV uns(*AR3(#143)), AC0 ; |312| 
        ADD dbl(*FP(#132)), AC0, AC0 ; |312| 
        B $C$L66  ; |312| 
                                        ; branch occurs ; |312| 
$C$DW$L$_jpec_enc_block_dct$41$E:
$C$L65:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$42$B:
        MOV *AR3(short(#3)), AR1 ; |312| 
        SUB #1, AR1 ; |312| 
        AND #0xffff, AR1, AC0 ; |312| 
$C$DW$L$_jpec_enc_block_dct$42$E:
$C$L66:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$43$B:
        MOV uns(*AR3(short(#2))), AC1 ; |312| 
$C$DW$224	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$224, DW_AT_low_pc(0x00)
	.dwattr $C$DW$224, DW_AT_name("__mpyli")
	.dwattr $C$DW$224, DW_AT_TI_call
        CALL #__mpyli ; |312| 
                                        ; call occurs [#__mpyli] ; |312| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#142), AR2 ; |312| 

        ADD #3, AR2 ; |312| 
||      MOV *AR3(short(#2)), AR1 ; |312| 

        CMPU AR2 >= AR1, TC1 ; |312| 
        BCC $C$L67,TC1 ; |312| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |312| 
$C$DW$L$_jpec_enc_block_dct$43$E:
$C$DW$L$_jpec_enc_block_dct$44$B:
        MOV *AR3(#142), AR1 ; |312| 

        B $C$L68  ; |312| 
||      ADD #3, AR1, AR1 ; |312| 

                                        ; branch occurs ; |312| 
$C$DW$L$_jpec_enc_block_dct$44$E:
$C$L67:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$45$B:
        MOV *AR3(short(#2)), AR1 ; |312| 
        SUB #1, AR1, AR1 ; |312| 
$C$DW$L$_jpec_enc_block_dct$45$E:
$C$L68:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$46$B:
        AND #0xffff, AR1, AC1 ; |312| 
        ADD AC0, AC1 ; |312| 
        MOV AC1, AR4 ; |312| 
        MOV dbl(*FP(#132)), AC0 ; |312| 
        ADD uns(*AR3(#143)), AC0, AC1 ; |312| 
        MOV uns(*AR3(short(#3))), AC0 ; |312| 
        CMP AC1 >= AC0, TC1 ; |312| 
        MOV dbl(*AR3), XAR2
        BCC $C$L69,TC1 ; |312| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |312| 
$C$DW$L$_jpec_enc_block_dct$46$E:
$C$DW$L$_jpec_enc_block_dct$47$B:
        MOV uns(*AR3(#143)), AC0 ; |312| 
        ADD dbl(*FP(#132)), AC0, AC0 ; |312| 
        B $C$L70  ; |312| 
                                        ; branch occurs ; |312| 
$C$DW$L$_jpec_enc_block_dct$47$E:
$C$L69:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$48$B:
        MOV *AR3(short(#3)), AR1 ; |312| 
        SUB #1, AR1 ; |312| 
        AND #0xffff, AR1, AC0 ; |312| 
$C$DW$L$_jpec_enc_block_dct$48$E:
$C$L70:    
$C$DW$L$_jpec_enc_block_dct$49$B:
        MOV uns(*AR3(short(#2))), AC1 ; |312| 
$C$DW$225	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$225, DW_AT_low_pc(0x00)
	.dwattr $C$DW$225, DW_AT_name("__mpyli")
	.dwattr $C$DW$225, DW_AT_TI_call
        CALL #__mpyli ; |312| 
                                        ; call occurs [#__mpyli] ; |312| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#2)), AR1 ; |312| 
        MOV *AR3(#142), AR3 ; |312| 
        ADD #4, AR3 ; |312| 
        CMPU AR3 >= AR1, TC1 ; |312| 
        BCC $C$L71,TC1 ; |312| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |312| 
$C$DW$L$_jpec_enc_block_dct$49$E:
$C$DW$L$_jpec_enc_block_dct$50$B:
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#142), AR1 ; |312| 

        B $C$L72  ; |312| 
||      ADD #4, AR1, AR1 ; |312| 

                                        ; branch occurs ; |312| 
$C$DW$L$_jpec_enc_block_dct$50$E:
$C$L71:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$51$B:
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#2)), AR1 ; |312| 
        SUB #1, AR1, AR1 ; |312| 
$C$DW$L$_jpec_enc_block_dct$51$E:
$C$L72:    
$C$DW$L$_jpec_enc_block_dct$52$B:
        MOV dbl(*AR3), XAR3
        AND #0xffff, AR1, AC1 ; |312| 
        ADD AC0, AC1 ; |312| 
        MOV AC1, AR1 ; |312| 
        MOV AR4, T0 ; |312| 
        AADD AR1, AR3 ; |312| 
        ADD *AR2(T0), *AR3, AC0 ; |312| 
        MOV HI(AC0), AR1
        SUB #256, AR1, T0 ; |312| 
$C$DW$226	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$226, DW_AT_low_pc(0x00)
	.dwattr $C$DW$226, DW_AT_name("__fltud")
	.dwattr $C$DW$226, DW_AT_TI_call
        CALL #__fltud ; |312| 
                                        ; call occurs [#__fltud] ; |312| 
        MOV AC0, dbl(*FP(#142)) ; |312| 
	.dwpsn	file "./jpeg/enc.c",line 314,column 15,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*FP(#132)), AC0 ; |314| 
        ADD uns(*AR3(#143)), AC0, AC1 ; |314| 
        MOV uns(*AR3(short(#3))), AC0 ; |314| 
        CMP AC1 >= AC0, TC1 ; |314| 
        BCC $C$L73,TC1 ; |314| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |314| 
$C$DW$L$_jpec_enc_block_dct$52$E:
$C$DW$L$_jpec_enc_block_dct$53$B:
        MOV uns(*AR3(#143)), AC0 ; |314| 
        ADD dbl(*FP(#132)), AC0, AC0 ; |314| 
        B $C$L74  ; |314| 
                                        ; branch occurs ; |314| 
$C$DW$L$_jpec_enc_block_dct$53$E:
$C$L73:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$54$B:
        MOV *AR3(short(#3)), AR1 ; |314| 
        SUB #1, AR1 ; |314| 
        AND #0xffff, AR1, AC0 ; |314| 
$C$DW$L$_jpec_enc_block_dct$54$E:
$C$L74:    
$C$DW$L$_jpec_enc_block_dct$55$B:
        MOV uns(*AR3(short(#2))), AC1 ; |314| 
$C$DW$227	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$227, DW_AT_low_pc(0x00)
	.dwattr $C$DW$227, DW_AT_name("__mpyli")
	.dwattr $C$DW$227, DW_AT_TI_call
        CALL #__mpyli ; |314| 
                                        ; call occurs [#__mpyli] ; |314| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#142), AR2 ; |314| 

        ADD #7, AR2 ; |314| 
||      MOV *AR3(short(#2)), AR1 ; |314| 

        CMPU AR2 >= AR1, TC1 ; |314| 
        BCC $C$L75,TC1 ; |314| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |314| 
$C$DW$L$_jpec_enc_block_dct$55$E:
$C$DW$L$_jpec_enc_block_dct$56$B:
        MOV *AR3(#142), AR1 ; |314| 

        B $C$L76  ; |314| 
||      ADD #7, AR1, AR1 ; |314| 

                                        ; branch occurs ; |314| 
$C$DW$L$_jpec_enc_block_dct$56$E:
$C$L75:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$57$B:
        MOV *AR3(short(#2)), AR1 ; |314| 
        SUB #1, AR1, AR1 ; |314| 
$C$DW$L$_jpec_enc_block_dct$57$E:
$C$L76:    
$C$DW$L$_jpec_enc_block_dct$58$B:
        MOV dbl(*AR3), XAR3
        AND #0xffff, AR1, AC1 ; |314| 
        ADD AC0, AC1 ; |314| 
        MOV AC1, T0 ; |314| 
        MOV *AR3(T0), AR2 ; |314| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*FP(#132)), AC0 ; |314| 
        ADD uns(*AR3(#143)), AC0, AC1 ; |314| 
        MOV uns(*AR3(short(#3))), AC0 ; |314| 
        CMP AC1 >= AC0, TC1 ; |314| 
        BCC $C$L77,TC1 ; |314| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |314| 
$C$DW$L$_jpec_enc_block_dct$58$E:
$C$DW$L$_jpec_enc_block_dct$59$B:
        MOV uns(*AR3(#143)), AC0 ; |314| 
        ADD dbl(*FP(#132)), AC0, AC0 ; |314| 
        B $C$L78  ; |314| 
                                        ; branch occurs ; |314| 
$C$DW$L$_jpec_enc_block_dct$59$E:
$C$L77:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$60$B:
        MOV *AR3(short(#3)), AR1 ; |314| 
        SUB #1, AR1 ; |314| 
        AND #0xffff, AR1, AC0 ; |314| 
$C$DW$L$_jpec_enc_block_dct$60$E:
$C$L78:    
$C$DW$L$_jpec_enc_block_dct$61$B:
        MOV uns(*AR3(short(#2))), AC1 ; |314| 
$C$DW$228	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$228, DW_AT_low_pc(0x00)
	.dwattr $C$DW$228, DW_AT_name("__mpyli")
	.dwattr $C$DW$228, DW_AT_TI_call
        CALL #__mpyli ; |314| 
                                        ; call occurs [#__mpyli] ; |314| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#2)), AR1 ; |314| 
        MOV *AR3(#142), AR3 ; |314| 
        CMPU AR3 >= AR1, TC1 ; |314| 
        BCC $C$L79,TC1 ; |314| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |314| 
$C$DW$L$_jpec_enc_block_dct$61$E:
$C$DW$L$_jpec_enc_block_dct$62$B:
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#142), AR1 ; |314| 
        B $C$L80  ; |314| 
                                        ; branch occurs ; |314| 
$C$DW$L$_jpec_enc_block_dct$62$E:
$C$L79:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$63$B:
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#2)), AR1 ; |314| 
        SUB #1, AR1, AR1 ; |314| 
$C$DW$L$_jpec_enc_block_dct$63$E:
$C$L80:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$64$B:
        MOV dbl(*AR3), XAR3
        AND #0xffff, AR1, AC1 ; |314| 
        ADD AC0, AC1 ; |314| 
        MOV AC1, T0 ; |314| 
        SUB AR2, *AR3(T0), T0 ; |314| 
$C$DW$229	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$229, DW_AT_low_pc(0x00)
	.dwattr $C$DW$229, DW_AT_name("__fltud")
	.dwattr $C$DW$229, DW_AT_TI_call
        CALL #__fltud ; |314| 
                                        ; call occurs [#__fltud] ; |314| 
        MOV AC0, dbl(*FP(#144)) ; |314| 
	.dwpsn	file "./jpeg/enc.c",line 315,column 15,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*FP(#132)), AC0 ; |315| 
        ADD uns(*AR3(#143)), AC0, AC1 ; |315| 
        MOV uns(*AR3(short(#3))), AC0 ; |315| 
        CMP AC1 >= AC0, TC1 ; |315| 
        BCC $C$L81,TC1 ; |315| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |315| 
$C$DW$L$_jpec_enc_block_dct$64$E:
$C$DW$L$_jpec_enc_block_dct$65$B:
        MOV uns(*AR3(#143)), AC0 ; |315| 
        ADD dbl(*FP(#132)), AC0, AC0 ; |315| 
        B $C$L82  ; |315| 
                                        ; branch occurs ; |315| 
$C$DW$L$_jpec_enc_block_dct$65$E:
$C$L81:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$66$B:
        MOV *AR3(short(#3)), AR1 ; |315| 
        SUB #1, AR1 ; |315| 
        AND #0xffff, AR1, AC0 ; |315| 
$C$DW$L$_jpec_enc_block_dct$66$E:
$C$L82:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$67$B:
        MOV uns(*AR3(short(#2))), AC1 ; |315| 
$C$DW$230	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$230, DW_AT_low_pc(0x00)
	.dwattr $C$DW$230, DW_AT_name("__mpyli")
	.dwattr $C$DW$230, DW_AT_TI_call
        CALL #__mpyli ; |315| 
                                        ; call occurs [#__mpyli] ; |315| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#142), AR2 ; |315| 

        ADD #6, AR2 ; |315| 
||      MOV *AR3(short(#2)), AR1 ; |315| 

        CMPU AR2 >= AR1, TC1 ; |315| 
        BCC $C$L83,TC1 ; |315| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |315| 
$C$DW$L$_jpec_enc_block_dct$67$E:
$C$DW$L$_jpec_enc_block_dct$68$B:
        MOV *AR3(#142), AR1 ; |315| 

        B $C$L84  ; |315| 
||      ADD #6, AR1, AR1 ; |315| 

                                        ; branch occurs ; |315| 
$C$DW$L$_jpec_enc_block_dct$68$E:
$C$L83:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$69$B:
        MOV *AR3(short(#2)), AR1 ; |315| 
        SUB #1, AR1, AR1 ; |315| 
$C$DW$L$_jpec_enc_block_dct$69$E:
$C$L84:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$70$B:
        MOV dbl(*AR3), XAR3
        AND #0xffff, AR1, AC1 ; |315| 
        ADD AC0, AC1 ; |315| 
        MOV AC1, T0 ; |315| 
        MOV *AR3(T0), AR4 ; |315| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*FP(#132)), AC0 ; |315| 
        ADD uns(*AR3(#143)), AC0, AC1 ; |315| 
        MOV uns(*AR3(short(#3))), AC0 ; |315| 
        CMP AC1 >= AC0, TC1 ; |315| 
        BCC $C$L85,TC1 ; |315| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |315| 
$C$DW$L$_jpec_enc_block_dct$70$E:
$C$DW$L$_jpec_enc_block_dct$71$B:
        MOV uns(*AR3(#143)), AC0 ; |315| 
        ADD dbl(*FP(#132)), AC0, AC0 ; |315| 
        B $C$L86  ; |315| 
                                        ; branch occurs ; |315| 
$C$DW$L$_jpec_enc_block_dct$71$E:
$C$L85:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$72$B:
        MOV *AR3(short(#3)), AR1 ; |315| 
        SUB #1, AR1 ; |315| 
        AND #0xffff, AR1, AC0 ; |315| 
$C$DW$L$_jpec_enc_block_dct$72$E:
$C$L86:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$73$B:
        MOV uns(*AR3(short(#2))), AC1 ; |315| 
$C$DW$231	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$231, DW_AT_low_pc(0x00)
	.dwattr $C$DW$231, DW_AT_name("__mpyli")
	.dwattr $C$DW$231, DW_AT_TI_call
        CALL #__mpyli ; |315| 
                                        ; call occurs [#__mpyli] ; |315| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#142), AR2 ; |315| 

        ADD #1, AR2 ; |315| 
||      MOV *AR3(short(#2)), AR1 ; |315| 

        CMPU AR2 >= AR1, TC1 ; |315| 
        BCC $C$L87,TC1 ; |315| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |315| 
$C$DW$L$_jpec_enc_block_dct$73$E:
$C$DW$L$_jpec_enc_block_dct$74$B:
        MOV *AR3(#142), AR1 ; |315| 

        B $C$L88  ; |315| 
||      ADD #1, AR1, AR1 ; |315| 

                                        ; branch occurs ; |315| 
$C$DW$L$_jpec_enc_block_dct$74$E:
$C$L87:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$75$B:
        MOV *AR3(short(#2)), AR1 ; |315| 
        SUB #1, AR1, AR1 ; |315| 
$C$DW$L$_jpec_enc_block_dct$75$E:
$C$L88:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$76$B:
        MOV dbl(*AR3), XAR3
        AND #0xffff, AR1, AC1 ; |315| 
        ADD AC0, AC1 ; |315| 
        MOV AC1, T0 ; |315| 
        SUB AR4, *AR3(T0), T0 ; |315| 
$C$DW$232	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$232, DW_AT_low_pc(0x00)
	.dwattr $C$DW$232, DW_AT_name("__fltud")
	.dwattr $C$DW$232, DW_AT_TI_call
        CALL #__fltud ; |315| 
                                        ; call occurs [#__fltud] ; |315| 
        MOV AC0, dbl(*FP(#146)) ; |315| 
	.dwpsn	file "./jpeg/enc.c",line 316,column 15,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*FP(#132)), AC0 ; |316| 
        ADD uns(*AR3(#143)), AC0, AC1 ; |316| 
        MOV uns(*AR3(short(#3))), AC0 ; |316| 
        CMP AC1 >= AC0, TC1 ; |316| 
        BCC $C$L89,TC1 ; |316| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |316| 
$C$DW$L$_jpec_enc_block_dct$76$E:
$C$DW$L$_jpec_enc_block_dct$77$B:
        MOV uns(*AR3(#143)), AC0 ; |316| 
        ADD dbl(*FP(#132)), AC0, AC0 ; |316| 
        B $C$L90  ; |316| 
                                        ; branch occurs ; |316| 
$C$DW$L$_jpec_enc_block_dct$77$E:
$C$L89:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$78$B:
        MOV *AR3(short(#3)), AR1 ; |316| 
        SUB #1, AR1 ; |316| 
        AND #0xffff, AR1, AC0 ; |316| 
$C$DW$L$_jpec_enc_block_dct$78$E:
$C$L90:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$79$B:
        MOV uns(*AR3(short(#2))), AC1 ; |316| 
$C$DW$233	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$233, DW_AT_low_pc(0x00)
	.dwattr $C$DW$233, DW_AT_name("__mpyli")
	.dwattr $C$DW$233, DW_AT_TI_call
        CALL #__mpyli ; |316| 
                                        ; call occurs [#__mpyli] ; |316| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#142), AR2 ; |316| 

        ADD #5, AR2 ; |316| 
||      MOV *AR3(short(#2)), AR1 ; |316| 

        CMPU AR2 >= AR1, TC1 ; |316| 
        BCC $C$L91,TC1 ; |316| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |316| 
$C$DW$L$_jpec_enc_block_dct$79$E:
$C$DW$L$_jpec_enc_block_dct$80$B:
        MOV *AR3(#142), AR1 ; |316| 

        B $C$L92  ; |316| 
||      ADD #5, AR1, AR1 ; |316| 

                                        ; branch occurs ; |316| 
$C$DW$L$_jpec_enc_block_dct$80$E:
$C$L91:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$81$B:
        MOV *AR3(short(#2)), AR1 ; |316| 
        SUB #1, AR1, AR1 ; |316| 
$C$DW$L$_jpec_enc_block_dct$81$E:
$C$L92:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$82$B:
        MOV dbl(*AR3), XAR3
        AND #0xffff, AR1, AC1 ; |316| 
        ADD AC0, AC1 ; |316| 
        MOV AC1, T0 ; |316| 
        MOV *AR3(T0), AR4 ; |316| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*FP(#132)), AC0 ; |316| 
        ADD uns(*AR3(#143)), AC0, AC1 ; |316| 
        MOV uns(*AR3(short(#3))), AC0 ; |316| 
        CMP AC1 >= AC0, TC1 ; |316| 
        BCC $C$L93,TC1 ; |316| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |316| 
$C$DW$L$_jpec_enc_block_dct$82$E:
$C$DW$L$_jpec_enc_block_dct$83$B:
        MOV uns(*AR3(#143)), AC0 ; |316| 
        ADD dbl(*FP(#132)), AC0, AC0 ; |316| 
        B $C$L94  ; |316| 
                                        ; branch occurs ; |316| 
$C$DW$L$_jpec_enc_block_dct$83$E:
$C$L93:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$84$B:
        MOV *AR3(short(#3)), AR1 ; |316| 
        SUB #1, AR1 ; |316| 
        AND #0xffff, AR1, AC0 ; |316| 
$C$DW$L$_jpec_enc_block_dct$84$E:
$C$L94:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$85$B:
        MOV uns(*AR3(short(#2))), AC1 ; |316| 
$C$DW$234	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$234, DW_AT_low_pc(0x00)
	.dwattr $C$DW$234, DW_AT_name("__mpyli")
	.dwattr $C$DW$234, DW_AT_TI_call
        CALL #__mpyli ; |316| 
                                        ; call occurs [#__mpyli] ; |316| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#142), AR2 ; |316| 

        ADD #2, AR2 ; |316| 
||      MOV *AR3(short(#2)), AR1 ; |316| 

        CMPU AR2 >= AR1, TC1 ; |316| 
        BCC $C$L95,TC1 ; |316| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |316| 
$C$DW$L$_jpec_enc_block_dct$85$E:
$C$DW$L$_jpec_enc_block_dct$86$B:
        MOV *AR3(#142), AR1 ; |316| 

        B $C$L96  ; |316| 
||      ADD #2, AR1, AR1 ; |316| 

                                        ; branch occurs ; |316| 
$C$DW$L$_jpec_enc_block_dct$86$E:
$C$L95:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$87$B:
        MOV *AR3(short(#2)), AR1 ; |316| 
        SUB #1, AR1, AR1 ; |316| 
$C$DW$L$_jpec_enc_block_dct$87$E:
$C$L96:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$88$B:
        MOV dbl(*AR3), XAR3
        AND #0xffff, AR1, AC1 ; |316| 
        ADD AC0, AC1 ; |316| 
        MOV AC1, T0 ; |316| 
        SUB AR4, *AR3(T0), T0 ; |316| 
$C$DW$235	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$235, DW_AT_low_pc(0x00)
	.dwattr $C$DW$235, DW_AT_name("__fltud")
	.dwattr $C$DW$235, DW_AT_TI_call
        CALL #__fltud ; |316| 
                                        ; call occurs [#__fltud] ; |316| 
        MOV AC0, dbl(*FP(#148)) ; |316| 
	.dwpsn	file "./jpeg/enc.c",line 317,column 15,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*FP(#132)), AC0 ; |317| 
        ADD uns(*AR3(#143)), AC0, AC1 ; |317| 
        MOV uns(*AR3(short(#3))), AC0 ; |317| 
        CMP AC1 >= AC0, TC1 ; |317| 
        BCC $C$L97,TC1 ; |317| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |317| 
$C$DW$L$_jpec_enc_block_dct$88$E:
$C$DW$L$_jpec_enc_block_dct$89$B:
        MOV uns(*AR3(#143)), AC0 ; |317| 
        ADD dbl(*FP(#132)), AC0, AC0 ; |317| 
        B $C$L98  ; |317| 
                                        ; branch occurs ; |317| 
$C$DW$L$_jpec_enc_block_dct$89$E:
$C$L97:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$90$B:
        MOV *AR3(short(#3)), AR1 ; |317| 
        SUB #1, AR1 ; |317| 
        AND #0xffff, AR1, AC0 ; |317| 
$C$DW$L$_jpec_enc_block_dct$90$E:
$C$L98:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$91$B:
        MOV uns(*AR3(short(#2))), AC1 ; |317| 
$C$DW$236	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$236, DW_AT_low_pc(0x00)
	.dwattr $C$DW$236, DW_AT_name("__mpyli")
	.dwattr $C$DW$236, DW_AT_TI_call
        CALL #__mpyli ; |317| 
                                        ; call occurs [#__mpyli] ; |317| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#142), AR2 ; |317| 

        ADD #4, AR2 ; |317| 
||      MOV *AR3(short(#2)), AR1 ; |317| 

        CMPU AR2 >= AR1, TC1 ; |317| 
        BCC $C$L99,TC1 ; |317| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |317| 
$C$DW$L$_jpec_enc_block_dct$91$E:
$C$DW$L$_jpec_enc_block_dct$92$B:
        MOV *AR3(#142), AR1 ; |317| 

        B $C$L100 ; |317| 
||      ADD #4, AR1, AR1 ; |317| 

                                        ; branch occurs ; |317| 
$C$DW$L$_jpec_enc_block_dct$92$E:
$C$L99:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$93$B:
        MOV *AR3(short(#2)), AR1 ; |317| 
        SUB #1, AR1, AR1 ; |317| 
$C$DW$L$_jpec_enc_block_dct$93$E:
$C$L100:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$94$B:
        MOV dbl(*AR3), XAR3
        AND #0xffff, AR1, AC1 ; |317| 
        ADD AC0, AC1 ; |317| 
        MOV AC1, T0 ; |317| 
        MOV *AR3(T0), AR4 ; |317| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*FP(#132)), AC0 ; |317| 
        ADD uns(*AR3(#143)), AC0, AC1 ; |317| 
        MOV uns(*AR3(short(#3))), AC0 ; |317| 
        CMP AC1 >= AC0, TC1 ; |317| 
        BCC $C$L101,TC1 ; |317| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |317| 
$C$DW$L$_jpec_enc_block_dct$94$E:
$C$DW$L$_jpec_enc_block_dct$95$B:
        MOV uns(*AR3(#143)), AC0 ; |317| 
        ADD dbl(*FP(#132)), AC0, AC0 ; |317| 
        B $C$L102 ; |317| 
                                        ; branch occurs ; |317| 
$C$DW$L$_jpec_enc_block_dct$95$E:
$C$L101:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$96$B:
        MOV *AR3(short(#3)), AR1 ; |317| 
        SUB #1, AR1 ; |317| 
        AND #0xffff, AR1, AC0 ; |317| 
$C$DW$L$_jpec_enc_block_dct$96$E:
$C$L102:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$97$B:
        MOV uns(*AR3(short(#2))), AC1 ; |317| 
$C$DW$237	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$237, DW_AT_low_pc(0x00)
	.dwattr $C$DW$237, DW_AT_name("__mpyli")
	.dwattr $C$DW$237, DW_AT_TI_call
        CALL #__mpyli ; |317| 
                                        ; call occurs [#__mpyli] ; |317| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#142), AR2 ; |317| 

        ADD #3, AR2 ; |317| 
||      MOV *AR3(short(#2)), AR1 ; |317| 

        CMPU AR2 >= AR1, TC1 ; |317| 
        BCC $C$L103,TC1 ; |317| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |317| 
$C$DW$L$_jpec_enc_block_dct$97$E:
$C$DW$L$_jpec_enc_block_dct$98$B:
        MOV *AR3(#142), AR1 ; |317| 

        B $C$L104 ; |317| 
||      ADD #3, AR1, AR1 ; |317| 

                                        ; branch occurs ; |317| 
$C$DW$L$_jpec_enc_block_dct$98$E:
$C$L103:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$99$B:
        MOV *AR3(short(#2)), AR1 ; |317| 
        SUB #1, AR1, AR1 ; |317| 
$C$DW$L$_jpec_enc_block_dct$99$E:
$C$L104:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$100$B:
        MOV dbl(*AR3), XAR3
        AND #0xffff, AR1, AC1 ; |317| 
        ADD AC0, AC1 ; |317| 
        MOV AC1, T0 ; |317| 
        SUB AR4, *AR3(T0), T0 ; |317| 
$C$DW$238	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$238, DW_AT_low_pc(0x00)
	.dwattr $C$DW$238, DW_AT_name("__fltud")
	.dwattr $C$DW$238, DW_AT_TI_call
        CALL #__fltud ; |317| 
                                        ; call occurs [#__fltud] ; |317| 
        MOV AC0, dbl(*FP(#150)) ; |317| 
	.dwpsn	file "./jpeg/enc.c",line 319,column 9,is_stmt
        MOV dbl(*FP(#138)), AC1 ; |319| 
        MOV dbl(*FP(#136)), AC0 ; |319| 
$C$DW$239	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$239, DW_AT_low_pc(0x00)
	.dwattr $C$DW$239, DW_AT_name("__addd")
	.dwattr $C$DW$239, DW_AT_TI_call
        CALL #__addd ; |319| 
                                        ; call occurs [#__addd] ; |319| 
        MOV dbl(*FP(#140)), AC1 ; |319| 
$C$DW$240	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$240, DW_AT_low_pc(0x00)
	.dwattr $C$DW$240, DW_AT_name("__addd")
	.dwattr $C$DW$240, DW_AT_TI_call
        CALL #__addd ; |319| 
                                        ; call occurs [#__addd] ; |319| 
        MOV dbl(*FP(#142)), AC1 ; |319| 
$C$DW$241	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$241, DW_AT_low_pc(0x00)
	.dwattr $C$DW$241, DW_AT_name("__addd")
	.dwattr $C$DW$241, DW_AT_TI_call
        CALL #__addd ; |319| 
                                        ; call occurs [#__addd] ; |319| 
        MOV dbl(*SP(#2)), XAR3

        MOV dbl(*AR3(short(#6))), AC0 ; |319| 
||      OR #0, AC0, AC1

$C$DW$242	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$242, DW_AT_low_pc(0x00)
	.dwattr $C$DW$242, DW_AT_name("__mpyd")
	.dwattr $C$DW$242, DW_AT_TI_call
        CALL #__mpyd ; |319| 
                                        ; call occurs [#__mpyd] ; |319| 
        MOV dbl(*FP(#132)), AC1 ; |319| 
        SFTS AC1, #3, AC1 ; |319| 
        MOV AC1, T0 ; |319| 
        SFTL T0, #1 ; |319| 
        AMAR *SP(#4), XAR3
        MOV AC0, dbl(*AR3(T0)) ; |319| 
	.dwpsn	file "./jpeg/enc.c",line 320,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*FP(#144)), AC1 ; |320| 
        MOV dbl(*AR3), AC0 ; |320| 
$C$DW$243	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$243, DW_AT_low_pc(0x00)
	.dwattr $C$DW$243, DW_AT_name("__mpyd")
	.dwattr $C$DW$243, DW_AT_TI_call
        CALL #__mpyd ; |320| 
                                        ; call occurs [#__mpyd] ; |320| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*FP(#152)) ; |320| 
        MOV dbl(*FP(#146)), AC1 ; |320| 
        MOV dbl(*AR3(short(#4))), AC0 ; |320| 
$C$DW$244	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$244, DW_AT_low_pc(0x00)
	.dwattr $C$DW$244, DW_AT_name("__mpyd")
	.dwattr $C$DW$244, DW_AT_TI_call
        CALL #__mpyd ; |320| 
                                        ; call occurs [#__mpyd] ; |320| 
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |320| 
$C$DW$245	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$245, DW_AT_low_pc(0x00)
	.dwattr $C$DW$245, DW_AT_name("__addd")
	.dwattr $C$DW$245, DW_AT_TI_call
        CALL #__addd ; |320| 
                                        ; call occurs [#__addd] ; |320| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*FP(#152)) ; |320| 
        MOV dbl(*FP(#148)), AC1 ; |320| 
        MOV dbl(*AR3(#8)), AC0 ; |320| 
$C$DW$246	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$246, DW_AT_low_pc(0x00)
	.dwattr $C$DW$246, DW_AT_name("__mpyd")
	.dwattr $C$DW$246, DW_AT_TI_call
        CALL #__mpyd ; |320| 
                                        ; call occurs [#__mpyd] ; |320| 
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |320| 
$C$DW$247	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$247, DW_AT_low_pc(0x00)
	.dwattr $C$DW$247, DW_AT_name("__addd")
	.dwattr $C$DW$247, DW_AT_TI_call
        CALL #__addd ; |320| 
                                        ; call occurs [#__addd] ; |320| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*FP(#152)) ; |320| 
        MOV dbl(*FP(#150)), AC1 ; |320| 
        MOV dbl(*AR3(#12)), AC0 ; |320| 
$C$DW$248	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$248, DW_AT_low_pc(0x00)
	.dwattr $C$DW$248, DW_AT_name("__mpyd")
	.dwattr $C$DW$248, DW_AT_TI_call
        CALL #__mpyd ; |320| 
                                        ; call occurs [#__mpyd] ; |320| 
$C$DW$L$_jpec_enc_block_dct$100$E:
$C$DW$L$_jpec_enc_block_dct$101$B:
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |320| 
$C$DW$249	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$249, DW_AT_low_pc(0x00)
	.dwattr $C$DW$249, DW_AT_name("__addd")
	.dwattr $C$DW$249, DW_AT_TI_call
        CALL #__addd ; |320| 
                                        ; call occurs [#__addd] ; |320| 
        MOV dbl(*FP(#132)), AC1 ; |320| 
        SFTS AC1, #3, AC1 ; |320| 
        ADD #1, AC1 ; |320| 
        MOV AC1, T0 ; |320| 
        SFTL T0, #1 ; |320| 
        AMAR *SP(#4), XAR3
        MOV AC0, dbl(*AR3(T0)) ; |320| 
	.dwpsn	file "./jpeg/enc.c",line 321,column 9,is_stmt
        MOV dbl(*FP(#136)), AC0 ; |321| 
        MOV dbl(*FP(#142)), AC1 ; |321| 
$C$DW$250	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$250, DW_AT_low_pc(0x00)
	.dwattr $C$DW$250, DW_AT_name("__subd")
	.dwattr $C$DW$250, DW_AT_TI_call
        CALL #__subd ; |321| 
                                        ; call occurs [#__subd] ; |321| 
        MOV dbl(*SP(#2)), XAR3

        MOV dbl(*AR3(short(#2))), AC0 ; |321| 
||      OR #0, AC0, AC1

$C$DW$251	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$251, DW_AT_low_pc(0x00)
	.dwattr $C$DW$251, DW_AT_name("__mpyd")
	.dwattr $C$DW$251, DW_AT_TI_call
        CALL #__mpyd ; |321| 
                                        ; call occurs [#__mpyd] ; |321| 
        MOV AC0, dbl(*FP(#152)) ; |321| 
        MOV dbl(*FP(#140)), AC1 ; |321| 
        MOV dbl(*FP(#138)), AC0 ; |321| 
$C$DW$252	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$252, DW_AT_low_pc(0x00)
	.dwattr $C$DW$252, DW_AT_name("__subd")
	.dwattr $C$DW$252, DW_AT_TI_call
        CALL #__subd ; |321| 
                                        ; call occurs [#__subd] ; |321| 
        MOV dbl(*SP(#2)), XAR3
        OR #0, AC0, AC1
        MOV dbl(*AR3(#10)), AC0 ; |321| 
$C$DW$253	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$253, DW_AT_low_pc(0x00)
	.dwattr $C$DW$253, DW_AT_name("__mpyd")
	.dwattr $C$DW$253, DW_AT_TI_call
        CALL #__mpyd ; |321| 
                                        ; call occurs [#__mpyd] ; |321| 
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |321| 
$C$DW$254	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$254, DW_AT_low_pc(0x00)
	.dwattr $C$DW$254, DW_AT_name("__addd")
	.dwattr $C$DW$254, DW_AT_TI_call
        CALL #__addd ; |321| 
                                        ; call occurs [#__addd] ; |321| 
        MOV dbl(*FP(#132)), AC1 ; |321| 
        SFTS AC1, #3, AC1 ; |321| 
        ADD #2, AC1 ; |321| 
        MOV AC1, T0 ; |321| 
        SFTL T0, #1 ; |321| 
        AMAR *SP(#4), XAR3
        MOV AC0, dbl(*AR3(T0)) ; |321| 
	.dwpsn	file "./jpeg/enc.c",line 322,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*FP(#144)), AC1 ; |322| 
        MOV dbl(*AR3(short(#4))), AC0 ; |322| 
$C$DW$255	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$255, DW_AT_low_pc(0x00)
	.dwattr $C$DW$255, DW_AT_name("__mpyd")
	.dwattr $C$DW$255, DW_AT_TI_call
        CALL #__mpyd ; |322| 
                                        ; call occurs [#__mpyd] ; |322| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*FP(#152)) ; |322| 
        MOV dbl(*FP(#146)), AC1 ; |322| 
        MOV dbl(*AR3(#12)), AC0 ; |322| 
$C$DW$256	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$256, DW_AT_low_pc(0x00)
	.dwattr $C$DW$256, DW_AT_name("__mpyd")
	.dwattr $C$DW$256, DW_AT_TI_call
        CALL #__mpyd ; |322| 
                                        ; call occurs [#__mpyd] ; |322| 
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |322| 
$C$DW$257	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$257, DW_AT_low_pc(0x00)
	.dwattr $C$DW$257, DW_AT_name("__subd")
	.dwattr $C$DW$257, DW_AT_TI_call
        CALL #__subd ; |322| 
                                        ; call occurs [#__subd] ; |322| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*FP(#152)) ; |322| 
        MOV dbl(*FP(#148)), AC1 ; |322| 
        MOV dbl(*AR3), AC0 ; |322| 
$C$DW$258	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$258, DW_AT_low_pc(0x00)
	.dwattr $C$DW$258, DW_AT_name("__mpyd")
	.dwattr $C$DW$258, DW_AT_TI_call
        CALL #__mpyd ; |322| 
                                        ; call occurs [#__mpyd] ; |322| 
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |322| 
$C$DW$259	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$259, DW_AT_low_pc(0x00)
	.dwattr $C$DW$259, DW_AT_name("__subd")
	.dwattr $C$DW$259, DW_AT_TI_call
        CALL #__subd ; |322| 
                                        ; call occurs [#__subd] ; |322| 
$C$DW$L$_jpec_enc_block_dct$101$E:
$C$DW$L$_jpec_enc_block_dct$102$B:
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*FP(#152)) ; |322| 
        MOV dbl(*FP(#150)), AC1 ; |322| 
        MOV dbl(*AR3(#8)), AC0 ; |322| 
$C$DW$260	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$260, DW_AT_low_pc(0x00)
	.dwattr $C$DW$260, DW_AT_name("__mpyd")
	.dwattr $C$DW$260, DW_AT_TI_call
        CALL #__mpyd ; |322| 
                                        ; call occurs [#__mpyd] ; |322| 
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |322| 
$C$DW$261	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$261, DW_AT_low_pc(0x00)
	.dwattr $C$DW$261, DW_AT_name("__subd")
	.dwattr $C$DW$261, DW_AT_TI_call
        CALL #__subd ; |322| 
                                        ; call occurs [#__subd] ; |322| 
        MOV dbl(*FP(#132)), AC1 ; |322| 
        SFTS AC1, #3, AC1 ; |322| 
        ADD #3, AC1 ; |322| 
        MOV AC1, T0 ; |322| 
        SFTL T0, #1 ; |322| 
        AMAR *SP(#4), XAR3
        MOV AC0, dbl(*AR3(T0)) ; |322| 
	.dwpsn	file "./jpeg/enc.c",line 323,column 9,is_stmt
        MOV dbl(*FP(#136)), AC0 ; |323| 
        MOV dbl(*FP(#138)), AC1 ; |323| 
$C$DW$262	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$262, DW_AT_low_pc(0x00)
	.dwattr $C$DW$262, DW_AT_name("__subd")
	.dwattr $C$DW$262, DW_AT_TI_call
        CALL #__subd ; |323| 
                                        ; call occurs [#__subd] ; |323| 
        MOV dbl(*FP(#140)), AC1 ; |323| 
$C$DW$263	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$263, DW_AT_low_pc(0x00)
	.dwattr $C$DW$263, DW_AT_name("__subd")
	.dwattr $C$DW$263, DW_AT_TI_call
        CALL #__subd ; |323| 
                                        ; call occurs [#__subd] ; |323| 
        MOV dbl(*FP(#142)), AC1 ; |323| 
$C$DW$264	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$264, DW_AT_low_pc(0x00)
	.dwattr $C$DW$264, DW_AT_name("__addd")
	.dwattr $C$DW$264, DW_AT_TI_call
        CALL #__addd ; |323| 
                                        ; call occurs [#__addd] ; |323| 
        MOV dbl(*SP(#2)), XAR3

        MOV dbl(*AR3(short(#6))), AC0 ; |323| 
||      OR #0, AC0, AC1

$C$DW$265	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$265, DW_AT_low_pc(0x00)
	.dwattr $C$DW$265, DW_AT_name("__mpyd")
	.dwattr $C$DW$265, DW_AT_TI_call
        CALL #__mpyd ; |323| 
                                        ; call occurs [#__mpyd] ; |323| 
        MOV dbl(*FP(#132)), AC1 ; |323| 
        SFTS AC1, #3, AC1 ; |323| 
        ADD #4, AC1 ; |323| 
        MOV AC1, T0 ; |323| 
        SFTL T0, #1 ; |323| 
        AMAR *SP(#4), XAR3
        MOV AC0, dbl(*AR3(T0)) ; |323| 
	.dwpsn	file "./jpeg/enc.c",line 324,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*FP(#144)), AC1 ; |324| 
        MOV dbl(*AR3(#8)), AC0 ; |324| 
$C$DW$266	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$266, DW_AT_low_pc(0x00)
	.dwattr $C$DW$266, DW_AT_name("__mpyd")
	.dwattr $C$DW$266, DW_AT_TI_call
        CALL #__mpyd ; |324| 
                                        ; call occurs [#__mpyd] ; |324| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*FP(#152)) ; |324| 
        MOV dbl(*FP(#146)), AC1 ; |324| 
        MOV dbl(*AR3), AC0 ; |324| 
$C$DW$267	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$267, DW_AT_low_pc(0x00)
	.dwattr $C$DW$267, DW_AT_name("__mpyd")
	.dwattr $C$DW$267, DW_AT_TI_call
        CALL #__mpyd ; |324| 
                                        ; call occurs [#__mpyd] ; |324| 
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |324| 
$C$DW$268	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$268, DW_AT_low_pc(0x00)
	.dwattr $C$DW$268, DW_AT_name("__subd")
	.dwattr $C$DW$268, DW_AT_TI_call
        CALL #__subd ; |324| 
                                        ; call occurs [#__subd] ; |324| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*FP(#152)) ; |324| 
        MOV dbl(*FP(#148)), AC1 ; |324| 
        MOV dbl(*AR3(#12)), AC0 ; |324| 
$C$DW$269	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$269, DW_AT_low_pc(0x00)
	.dwattr $C$DW$269, DW_AT_name("__mpyd")
	.dwattr $C$DW$269, DW_AT_TI_call
        CALL #__mpyd ; |324| 
                                        ; call occurs [#__mpyd] ; |324| 
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |324| 
$C$DW$270	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$270, DW_AT_low_pc(0x00)
	.dwattr $C$DW$270, DW_AT_name("__addd")
	.dwattr $C$DW$270, DW_AT_TI_call
        CALL #__addd ; |324| 
                                        ; call occurs [#__addd] ; |324| 
$C$DW$L$_jpec_enc_block_dct$102$E:
$C$DW$L$_jpec_enc_block_dct$103$B:
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*FP(#152)) ; |324| 
        MOV dbl(*FP(#150)), AC1 ; |324| 
        MOV dbl(*AR3(short(#4))), AC0 ; |324| 
$C$DW$271	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$271, DW_AT_low_pc(0x00)
	.dwattr $C$DW$271, DW_AT_name("__mpyd")
	.dwattr $C$DW$271, DW_AT_TI_call
        CALL #__mpyd ; |324| 
                                        ; call occurs [#__mpyd] ; |324| 
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |324| 
$C$DW$272	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$272, DW_AT_low_pc(0x00)
	.dwattr $C$DW$272, DW_AT_name("__addd")
	.dwattr $C$DW$272, DW_AT_TI_call
        CALL #__addd ; |324| 
                                        ; call occurs [#__addd] ; |324| 
        MOV dbl(*FP(#132)), AC1 ; |324| 
        SFTS AC1, #3, AC1 ; |324| 
        ADD #5, AC1 ; |324| 
        MOV AC1, T0 ; |324| 
        SFTL T0, #1 ; |324| 
        AMAR *SP(#4), XAR3
        MOV AC0, dbl(*AR3(T0)) ; |324| 
	.dwpsn	file "./jpeg/enc.c",line 325,column 9,is_stmt
        MOV dbl(*FP(#136)), AC0 ; |325| 
        MOV dbl(*FP(#142)), AC1 ; |325| 
$C$DW$273	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$273, DW_AT_low_pc(0x00)
	.dwattr $C$DW$273, DW_AT_name("__subd")
	.dwattr $C$DW$273, DW_AT_TI_call
        CALL #__subd ; |325| 
                                        ; call occurs [#__subd] ; |325| 
        MOV dbl(*SP(#2)), XAR3
        OR #0, AC0, AC1
        MOV dbl(*AR3(#10)), AC0 ; |325| 
$C$DW$274	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$274, DW_AT_low_pc(0x00)
	.dwattr $C$DW$274, DW_AT_name("__mpyd")
	.dwattr $C$DW$274, DW_AT_TI_call
        CALL #__mpyd ; |325| 
                                        ; call occurs [#__mpyd] ; |325| 
        MOV AC0, dbl(*FP(#152)) ; |325| 
        MOV dbl(*FP(#138)), AC1 ; |325| 
        MOV dbl(*FP(#140)), AC0 ; |325| 
$C$DW$275	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$275, DW_AT_low_pc(0x00)
	.dwattr $C$DW$275, DW_AT_name("__subd")
	.dwattr $C$DW$275, DW_AT_TI_call
        CALL #__subd ; |325| 
                                        ; call occurs [#__subd] ; |325| 
        MOV dbl(*SP(#2)), XAR3

        MOV dbl(*AR3(short(#2))), AC0 ; |325| 
||      OR #0, AC0, AC1

$C$DW$276	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$276, DW_AT_low_pc(0x00)
	.dwattr $C$DW$276, DW_AT_name("__mpyd")
	.dwattr $C$DW$276, DW_AT_TI_call
        CALL #__mpyd ; |325| 
                                        ; call occurs [#__mpyd] ; |325| 
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |325| 
$C$DW$277	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$277, DW_AT_low_pc(0x00)
	.dwattr $C$DW$277, DW_AT_name("__addd")
	.dwattr $C$DW$277, DW_AT_TI_call
        CALL #__addd ; |325| 
                                        ; call occurs [#__addd] ; |325| 
        MOV dbl(*FP(#132)), AC1 ; |325| 
        SFTS AC1, #3, AC1 ; |325| 
        ADD #6, AC1 ; |325| 
        MOV AC1, T0 ; |325| 
        SFTL T0, #1 ; |325| 
        AMAR *SP(#4), XAR3
        MOV AC0, dbl(*AR3(T0)) ; |325| 
	.dwpsn	file "./jpeg/enc.c",line 326,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*FP(#144)), AC1 ; |326| 
        MOV dbl(*AR3(#12)), AC0 ; |326| 
$C$DW$278	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$278, DW_AT_low_pc(0x00)
	.dwattr $C$DW$278, DW_AT_name("__mpyd")
	.dwattr $C$DW$278, DW_AT_TI_call
        CALL #__mpyd ; |326| 
                                        ; call occurs [#__mpyd] ; |326| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*FP(#152)) ; |326| 
        MOV dbl(*FP(#146)), AC1 ; |326| 
        MOV dbl(*AR3(#8)), AC0 ; |326| 
$C$DW$279	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$279, DW_AT_low_pc(0x00)
	.dwattr $C$DW$279, DW_AT_name("__mpyd")
	.dwattr $C$DW$279, DW_AT_TI_call
        CALL #__mpyd ; |326| 
                                        ; call occurs [#__mpyd] ; |326| 
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |326| 
$C$DW$280	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$280, DW_AT_low_pc(0x00)
	.dwattr $C$DW$280, DW_AT_name("__subd")
	.dwattr $C$DW$280, DW_AT_TI_call
        CALL #__subd ; |326| 
                                        ; call occurs [#__subd] ; |326| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*FP(#152)) ; |326| 
        MOV dbl(*FP(#148)), AC1 ; |326| 
        MOV dbl(*AR3(short(#4))), AC0 ; |326| 
$C$DW$281	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$281, DW_AT_low_pc(0x00)
	.dwattr $C$DW$281, DW_AT_name("__mpyd")
	.dwattr $C$DW$281, DW_AT_TI_call
        CALL #__mpyd ; |326| 
                                        ; call occurs [#__mpyd] ; |326| 
$C$DW$L$_jpec_enc_block_dct$103$E:
$C$DW$L$_jpec_enc_block_dct$104$B:
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |326| 
$C$DW$282	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$282, DW_AT_low_pc(0x00)
	.dwattr $C$DW$282, DW_AT_name("__addd")
	.dwattr $C$DW$282, DW_AT_TI_call
        CALL #__addd ; |326| 
                                        ; call occurs [#__addd] ; |326| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*FP(#152)) ; |326| 
        MOV dbl(*FP(#150)), AC1 ; |326| 
        MOV dbl(*AR3), AC0 ; |326| 
$C$DW$283	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$283, DW_AT_low_pc(0x00)
	.dwattr $C$DW$283, DW_AT_name("__mpyd")
	.dwattr $C$DW$283, DW_AT_TI_call
        CALL #__mpyd ; |326| 
                                        ; call occurs [#__mpyd] ; |326| 
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |326| 
$C$DW$284	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$284, DW_AT_low_pc(0x00)
	.dwattr $C$DW$284, DW_AT_name("__subd")
	.dwattr $C$DW$284, DW_AT_TI_call
        CALL #__subd ; |326| 
                                        ; call occurs [#__subd] ; |326| 
        MOV dbl(*FP(#132)), AC1 ; |326| 
        SFTS AC1, #3, AC1 ; |326| 
        ADD #7, AC1 ; |326| 
        MOV AC1, T0 ; |326| 
        SFTL T0, #1 ; |326| 
        AMAR *SP(#4), XAR3
        MOV AC0, dbl(*AR3(T0)) ; |326| 
	.dwendtag $C$DW$206

	.dwpsn	file "./jpeg/enc.c",line 306,column 28,is_stmt
        MOV dbl(*FP(#132)), AC0 ; |306| 
        ADD #1, AC0 ; |306| 
        MOV AC0, dbl(*FP(#132)) ; |306| 
	.dwpsn	file "./jpeg/enc.c",line 306,column 19,is_stmt
        MOV #8, AC0 ; |306| 
        MOV dbl(*FP(#132)), AC1 ; |306| 
        CMP AC1 < AC0, TC1 ; |306| 
        BCC $C$L40,TC1 ; |306| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |306| 
$C$DW$L$_jpec_enc_block_dct$104$E:
$C$L105:    
	CALL #_coverage_log;
	.dwpsn	file "./jpeg/enc.c",line 328,column 10,is_stmt
        MOV #0, AC0 ; |328| 
        MOV AC0, dbl(*FP(#134)) ; |328| 
	.dwpsn	file "./jpeg/enc.c",line 328,column 19,is_stmt
        MOV dbl(*FP(#134)), AC1 ; |328| 
        MOV #8, AC0 ; |328| 
        CMP AC1 >= AC0, TC1 ; |328| 
        BCC $C$L107,TC1 ; |328| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |328| 
$C$L106:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_dct$106$B:

$C$DW$285	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$286	.dwtag  DW_TAG_variable, DW_AT_name("s0")
	.dwattr $C$DW$286, DW_AT_TI_symbol_name("_s0")
	.dwattr $C$DW$286, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$286, DW_AT_location[DW_OP_bregx 0x24 136]
$C$DW$287	.dwtag  DW_TAG_variable, DW_AT_name("s1")
	.dwattr $C$DW$287, DW_AT_TI_symbol_name("_s1")
	.dwattr $C$DW$287, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$287, DW_AT_location[DW_OP_bregx 0x24 138]
$C$DW$288	.dwtag  DW_TAG_variable, DW_AT_name("s2")
	.dwattr $C$DW$288, DW_AT_TI_symbol_name("_s2")
	.dwattr $C$DW$288, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$288, DW_AT_location[DW_OP_bregx 0x24 140]
$C$DW$289	.dwtag  DW_TAG_variable, DW_AT_name("s3")
	.dwattr $C$DW$289, DW_AT_TI_symbol_name("_s3")
	.dwattr $C$DW$289, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$289, DW_AT_location[DW_OP_bregx 0x24 142]
$C$DW$290	.dwtag  DW_TAG_variable, DW_AT_name("d0")
	.dwattr $C$DW$290, DW_AT_TI_symbol_name("_d0")
	.dwattr $C$DW$290, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$290, DW_AT_location[DW_OP_bregx 0x24 144]
$C$DW$291	.dwtag  DW_TAG_variable, DW_AT_name("d1")
	.dwattr $C$DW$291, DW_AT_TI_symbol_name("_d1")
	.dwattr $C$DW$291, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$291, DW_AT_location[DW_OP_bregx 0x24 146]
$C$DW$292	.dwtag  DW_TAG_variable, DW_AT_name("d2")
	.dwattr $C$DW$292, DW_AT_TI_symbol_name("_d2")
	.dwattr $C$DW$292, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$292, DW_AT_location[DW_OP_bregx 0x24 148]
$C$DW$293	.dwtag  DW_TAG_variable, DW_AT_name("d3")
	.dwattr $C$DW$293, DW_AT_TI_symbol_name("_d3")
	.dwattr $C$DW$293, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$293, DW_AT_location[DW_OP_bregx 0x24 150]
	.dwpsn	file "./jpeg/enc.c",line 330,column 15,is_stmt
        MOV *FP(#135), T0 ; |330| 
        SFTL T0, #1 ; |330| 
        MOV #56, AC1 ; |330| 
        AMAR *SP(#4), XAR3
        ADD dbl(*FP(#134)), AC1, AC1 ; |330| 

        MOV AC1, T0 ; |330| 
||      MOV dbl(*AR3(T0)), AC0 ; |330| 

        SFTL T0, #1 ; |330| 
        AMAR *SP(#4), XAR3
        MOV dbl(*AR3(T0)), AC1 ; |330| 
$C$DW$294	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$294, DW_AT_low_pc(0x00)
	.dwattr $C$DW$294, DW_AT_name("__addd")
	.dwattr $C$DW$294, DW_AT_TI_call
        CALL #__addd ; |330| 
                                        ; call occurs [#__addd] ; |330| 
        MOV AC0, dbl(*FP(#136)) ; |330| 
	.dwpsn	file "./jpeg/enc.c",line 331,column 15,is_stmt
        MOV dbl(*FP(#134)), AC0 ; |331| 
        ADD #8, AC0 ; |331| 
        MOV AC0, T0 ; |331| 
        SFTL T0, #1 ; |331| 
        MOV #48, AC1 ; |331| 
        AMAR *SP(#4), XAR3
        ADD dbl(*FP(#134)), AC1, AC1 ; |331| 

        MOV AC1, T0 ; |331| 
||      MOV dbl(*AR3(T0)), AC0 ; |331| 

        SFTL T0, #1 ; |331| 
        AMAR *SP(#4), XAR3
        MOV dbl(*AR3(T0)), AC1 ; |331| 
$C$DW$295	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$295, DW_AT_low_pc(0x00)
	.dwattr $C$DW$295, DW_AT_name("__addd")
	.dwattr $C$DW$295, DW_AT_TI_call
        CALL #__addd ; |331| 
                                        ; call occurs [#__addd] ; |331| 
        MOV AC0, dbl(*FP(#138)) ; |331| 
	.dwpsn	file "./jpeg/enc.c",line 332,column 15,is_stmt
        MOV #16, AC0 ; |332| 
        ADD dbl(*FP(#134)), AC0, AC0 ; |332| 
        MOV AC0, T0 ; |332| 
        SFTL T0, #1 ; |332| 
        MOV #40, AC1 ; |332| 
        AMAR *SP(#4), XAR3
        ADD dbl(*FP(#134)), AC1, AC1 ; |332| 

        MOV AC1, T0 ; |332| 
||      MOV dbl(*AR3(T0)), AC0 ; |332| 

        SFTL T0, #1 ; |332| 
        AMAR *SP(#4), XAR3
        MOV dbl(*AR3(T0)), AC1 ; |332| 
$C$DW$296	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$296, DW_AT_low_pc(0x00)
	.dwattr $C$DW$296, DW_AT_name("__addd")
	.dwattr $C$DW$296, DW_AT_TI_call
        CALL #__addd ; |332| 
                                        ; call occurs [#__addd] ; |332| 
        MOV AC0, dbl(*FP(#140)) ; |332| 
	.dwpsn	file "./jpeg/enc.c",line 333,column 15,is_stmt
        MOV #24, AC0 ; |333| 
        ADD dbl(*FP(#134)), AC0, AC0 ; |333| 
        MOV AC0, T0 ; |333| 
        SFTL T0, #1 ; |333| 
        MOV #32, AC1 ; |333| 
        AMAR *SP(#4), XAR3
        ADD dbl(*FP(#134)), AC1, AC1 ; |333| 

        MOV AC1, T0 ; |333| 
||      MOV dbl(*AR3(T0)), AC0 ; |333| 

        SFTL T0, #1 ; |333| 
        AMAR *SP(#4), XAR3
        MOV dbl(*AR3(T0)), AC1 ; |333| 
$C$DW$297	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$297, DW_AT_low_pc(0x00)
	.dwattr $C$DW$297, DW_AT_name("__addd")
	.dwattr $C$DW$297, DW_AT_TI_call
        CALL #__addd ; |333| 
                                        ; call occurs [#__addd] ; |333| 
        MOV AC0, dbl(*FP(#142)) ; |333| 
	.dwpsn	file "./jpeg/enc.c",line 335,column 15,is_stmt
        MOV *FP(#135), T0 ; |335| 
        SFTL T0, #1 ; |335| 
        MOV #56, AC1 ; |335| 
        AMAR *SP(#4), XAR3
        ADD dbl(*FP(#134)), AC1, AC1 ; |335| 

        MOV AC1, T0 ; |335| 
||      MOV dbl(*AR3(T0)), AC0 ; |335| 

        SFTL T0, #1 ; |335| 
        AMAR *SP(#4), XAR3
        MOV dbl(*AR3(T0)), AC1 ; |335| 
$C$DW$298	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$298, DW_AT_low_pc(0x00)
	.dwattr $C$DW$298, DW_AT_name("__subd")
	.dwattr $C$DW$298, DW_AT_TI_call
        CALL #__subd ; |335| 
                                        ; call occurs [#__subd] ; |335| 
        MOV AC0, dbl(*FP(#144)) ; |335| 
	.dwpsn	file "./jpeg/enc.c",line 336,column 15,is_stmt
        MOV dbl(*FP(#134)), AC0 ; |336| 
        ADD #8, AC0 ; |336| 
        MOV AC0, T0 ; |336| 
        SFTL T0, #1 ; |336| 
        MOV #48, AC1 ; |336| 
        AMAR *SP(#4), XAR3
        ADD dbl(*FP(#134)), AC1, AC1 ; |336| 

        MOV AC1, T0 ; |336| 
||      MOV dbl(*AR3(T0)), AC0 ; |336| 

        SFTL T0, #1 ; |336| 
        AMAR *SP(#4), XAR3
        MOV dbl(*AR3(T0)), AC1 ; |336| 
$C$DW$299	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$299, DW_AT_low_pc(0x00)
	.dwattr $C$DW$299, DW_AT_name("__subd")
	.dwattr $C$DW$299, DW_AT_TI_call
        CALL #__subd ; |336| 
                                        ; call occurs [#__subd] ; |336| 
        MOV AC0, dbl(*FP(#146)) ; |336| 
	.dwpsn	file "./jpeg/enc.c",line 337,column 15,is_stmt
        MOV #16, AC0 ; |337| 
        ADD dbl(*FP(#134)), AC0, AC0 ; |337| 
        MOV AC0, T0 ; |337| 
        SFTL T0, #1 ; |337| 
        MOV #40, AC1 ; |337| 
        AMAR *SP(#4), XAR3
        ADD dbl(*FP(#134)), AC1, AC1 ; |337| 

        MOV AC1, T0 ; |337| 
||      MOV dbl(*AR3(T0)), AC0 ; |337| 

        SFTL T0, #1 ; |337| 
        AMAR *SP(#4), XAR3
        MOV dbl(*AR3(T0)), AC1 ; |337| 
$C$DW$300	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$300, DW_AT_low_pc(0x00)
	.dwattr $C$DW$300, DW_AT_name("__subd")
	.dwattr $C$DW$300, DW_AT_TI_call
        CALL #__subd ; |337| 
                                        ; call occurs [#__subd] ; |337| 
        MOV AC0, dbl(*FP(#148)) ; |337| 
	.dwpsn	file "./jpeg/enc.c",line 338,column 15,is_stmt
        MOV #24, AC0 ; |338| 
        ADD dbl(*FP(#134)), AC0, AC0 ; |338| 
        MOV AC0, T0 ; |338| 
        SFTL T0, #1 ; |338| 
        MOV #32, AC1 ; |338| 
        AMAR *SP(#4), XAR3
        ADD dbl(*FP(#134)), AC1, AC1 ; |338| 

        MOV AC1, T0 ; |338| 
||      MOV dbl(*AR3(T0)), AC0 ; |338| 

        SFTL T0, #1 ; |338| 
        AMAR *SP(#4), XAR3
        MOV dbl(*AR3(T0)), AC1 ; |338| 
$C$DW$301	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$301, DW_AT_low_pc(0x00)
	.dwattr $C$DW$301, DW_AT_name("__subd")
	.dwattr $C$DW$301, DW_AT_TI_call
        CALL #__subd ; |338| 
                                        ; call occurs [#__subd] ; |338| 
        MOV AC0, dbl(*FP(#150)) ; |338| 
	.dwpsn	file "./jpeg/enc.c",line 340,column 9,is_stmt
        MOV dbl(*FP(#136)), AC0 ; |340| 
        MOV dbl(*FP(#138)), AC1 ; |340| 
$C$DW$302	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$302, DW_AT_low_pc(0x00)
	.dwattr $C$DW$302, DW_AT_name("__addd")
	.dwattr $C$DW$302, DW_AT_TI_call
        CALL #__addd ; |340| 
                                        ; call occurs [#__addd] ; |340| 
        MOV dbl(*FP(#140)), AC1 ; |340| 
$C$DW$303	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$303, DW_AT_low_pc(0x00)
	.dwattr $C$DW$303, DW_AT_name("__addd")
	.dwattr $C$DW$303, DW_AT_TI_call
        CALL #__addd ; |340| 
                                        ; call occurs [#__addd] ; |340| 
        MOV dbl(*FP(#142)), AC1 ; |340| 
$C$DW$304	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$304, DW_AT_low_pc(0x00)
	.dwattr $C$DW$304, DW_AT_name("__addd")
	.dwattr $C$DW$304, DW_AT_TI_call
        CALL #__addd ; |340| 
                                        ; call occurs [#__addd] ; |340| 
$C$DW$L$_jpec_enc_block_dct$106$E:
$C$DW$L$_jpec_enc_block_dct$107$B:
        MOV dbl(*SP(#2)), XAR3

        MOV dbl(*AR3(short(#6))), AC0 ; |340| 
||      OR #0, AC0, AC1

$C$DW$305	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$305, DW_AT_low_pc(0x00)
	.dwattr $C$DW$305, DW_AT_name("__mpyd")
	.dwattr $C$DW$305, DW_AT_TI_call
        CALL #__mpyd ; |340| 
                                        ; call occurs [#__mpyd] ; |340| 
        MOV dbl(*SP(#0)), XAR3
        MOV *FP(#135), AR1 ; |340| 
        SFTL AR1, #1 ; |340| 
        AADD AR1, AR3 ; |340| 
        MOV AC0, dbl(*AR3(#144)) ; |340| 
	.dwpsn	file "./jpeg/enc.c",line 341,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*FP(#144)), AC1 ; |341| 
        MOV dbl(*AR3), AC0 ; |341| 
$C$DW$306	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$306, DW_AT_low_pc(0x00)
	.dwattr $C$DW$306, DW_AT_name("__mpyd")
	.dwattr $C$DW$306, DW_AT_TI_call
        CALL #__mpyd ; |341| 
                                        ; call occurs [#__mpyd] ; |341| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*FP(#152)) ; |341| 
        MOV dbl(*FP(#146)), AC1 ; |341| 
        MOV dbl(*AR3(short(#4))), AC0 ; |341| 
$C$DW$307	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$307, DW_AT_low_pc(0x00)
	.dwattr $C$DW$307, DW_AT_name("__mpyd")
	.dwattr $C$DW$307, DW_AT_TI_call
        CALL #__mpyd ; |341| 
                                        ; call occurs [#__mpyd] ; |341| 
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |341| 
$C$DW$308	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$308, DW_AT_low_pc(0x00)
	.dwattr $C$DW$308, DW_AT_name("__addd")
	.dwattr $C$DW$308, DW_AT_TI_call
        CALL #__addd ; |341| 
                                        ; call occurs [#__addd] ; |341| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*FP(#152)) ; |341| 
        MOV dbl(*FP(#148)), AC1 ; |341| 
        MOV dbl(*AR3(#8)), AC0 ; |341| 
$C$DW$309	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$309, DW_AT_low_pc(0x00)
	.dwattr $C$DW$309, DW_AT_name("__mpyd")
	.dwattr $C$DW$309, DW_AT_TI_call
        CALL #__mpyd ; |341| 
                                        ; call occurs [#__mpyd] ; |341| 
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |341| 
$C$DW$310	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$310, DW_AT_low_pc(0x00)
	.dwattr $C$DW$310, DW_AT_name("__addd")
	.dwattr $C$DW$310, DW_AT_TI_call
        CALL #__addd ; |341| 
                                        ; call occurs [#__addd] ; |341| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*FP(#152)) ; |341| 
        MOV dbl(*FP(#150)), AC1 ; |341| 
        MOV dbl(*AR3(#12)), AC0 ; |341| 
$C$DW$311	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$311, DW_AT_low_pc(0x00)
	.dwattr $C$DW$311, DW_AT_name("__mpyd")
	.dwattr $C$DW$311, DW_AT_TI_call
        CALL #__mpyd ; |341| 
                                        ; call occurs [#__mpyd] ; |341| 
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |341| 
$C$DW$312	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$312, DW_AT_low_pc(0x00)
	.dwattr $C$DW$312, DW_AT_name("__addd")
	.dwattr $C$DW$312, DW_AT_TI_call
        CALL #__addd ; |341| 
                                        ; call occurs [#__addd] ; |341| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*FP(#134)), AC1 ; |341| 
        ADD #8, AC1 ; |341| 
        MOV AC1, AR1 ; |341| 
        SFTL AR1, #1 ; |341| 
        AADD AR1, AR3 ; |341| 
        MOV AC0, dbl(*AR3(#144)) ; |341| 
	.dwpsn	file "./jpeg/enc.c",line 342,column 9,is_stmt
        MOV dbl(*FP(#136)), AC0 ; |342| 
        MOV dbl(*FP(#142)), AC1 ; |342| 
$C$DW$313	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$313, DW_AT_low_pc(0x00)
	.dwattr $C$DW$313, DW_AT_name("__subd")
	.dwattr $C$DW$313, DW_AT_TI_call
        CALL #__subd ; |342| 
                                        ; call occurs [#__subd] ; |342| 
        MOV dbl(*SP(#2)), XAR3

        MOV dbl(*AR3(short(#2))), AC0 ; |342| 
||      OR #0, AC0, AC1

$C$DW$314	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$314, DW_AT_low_pc(0x00)
	.dwattr $C$DW$314, DW_AT_name("__mpyd")
	.dwattr $C$DW$314, DW_AT_TI_call
        CALL #__mpyd ; |342| 
                                        ; call occurs [#__mpyd] ; |342| 
        MOV AC0, dbl(*FP(#152)) ; |342| 
        MOV dbl(*FP(#140)), AC1 ; |342| 
        MOV dbl(*FP(#138)), AC0 ; |342| 
$C$DW$315	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$315, DW_AT_low_pc(0x00)
	.dwattr $C$DW$315, DW_AT_name("__subd")
	.dwattr $C$DW$315, DW_AT_TI_call
        CALL #__subd ; |342| 
                                        ; call occurs [#__subd] ; |342| 
$C$DW$L$_jpec_enc_block_dct$107$E:
$C$DW$L$_jpec_enc_block_dct$108$B:
        MOV dbl(*SP(#2)), XAR3
        OR #0, AC0, AC1
        MOV dbl(*AR3(#10)), AC0 ; |342| 
$C$DW$316	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$316, DW_AT_low_pc(0x00)
	.dwattr $C$DW$316, DW_AT_name("__mpyd")
	.dwattr $C$DW$316, DW_AT_TI_call
        CALL #__mpyd ; |342| 
                                        ; call occurs [#__mpyd] ; |342| 
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |342| 
$C$DW$317	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$317, DW_AT_low_pc(0x00)
	.dwattr $C$DW$317, DW_AT_name("__addd")
	.dwattr $C$DW$317, DW_AT_TI_call
        CALL #__addd ; |342| 
                                        ; call occurs [#__addd] ; |342| 
        MOV dbl(*SP(#0)), XAR3
        MOV #16, AC1 ; |342| 
        ADD dbl(*FP(#134)), AC1, AC1 ; |342| 
        MOV AC1, AR1 ; |342| 
        SFTL AR1, #1 ; |342| 
        AADD AR1, AR3 ; |342| 
        MOV AC0, dbl(*AR3(#144)) ; |342| 
	.dwpsn	file "./jpeg/enc.c",line 343,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*FP(#144)), AC1 ; |343| 
        MOV dbl(*AR3(short(#4))), AC0 ; |343| 
$C$DW$318	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$318, DW_AT_low_pc(0x00)
	.dwattr $C$DW$318, DW_AT_name("__mpyd")
	.dwattr $C$DW$318, DW_AT_TI_call
        CALL #__mpyd ; |343| 
                                        ; call occurs [#__mpyd] ; |343| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*FP(#152)) ; |343| 
        MOV dbl(*FP(#146)), AC1 ; |343| 
        MOV dbl(*AR3(#12)), AC0 ; |343| 
$C$DW$319	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$319, DW_AT_low_pc(0x00)
	.dwattr $C$DW$319, DW_AT_name("__mpyd")
	.dwattr $C$DW$319, DW_AT_TI_call
        CALL #__mpyd ; |343| 
                                        ; call occurs [#__mpyd] ; |343| 
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |343| 
$C$DW$320	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$320, DW_AT_low_pc(0x00)
	.dwattr $C$DW$320, DW_AT_name("__subd")
	.dwattr $C$DW$320, DW_AT_TI_call
        CALL #__subd ; |343| 
                                        ; call occurs [#__subd] ; |343| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*FP(#152)) ; |343| 
        MOV dbl(*FP(#148)), AC1 ; |343| 
        MOV dbl(*AR3), AC0 ; |343| 
$C$DW$321	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$321, DW_AT_low_pc(0x00)
	.dwattr $C$DW$321, DW_AT_name("__mpyd")
	.dwattr $C$DW$321, DW_AT_TI_call
        CALL #__mpyd ; |343| 
                                        ; call occurs [#__mpyd] ; |343| 
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |343| 
$C$DW$322	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$322, DW_AT_low_pc(0x00)
	.dwattr $C$DW$322, DW_AT_name("__subd")
	.dwattr $C$DW$322, DW_AT_TI_call
        CALL #__subd ; |343| 
                                        ; call occurs [#__subd] ; |343| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*FP(#152)) ; |343| 
        MOV dbl(*FP(#150)), AC1 ; |343| 
        MOV dbl(*AR3(#8)), AC0 ; |343| 
$C$DW$323	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$323, DW_AT_low_pc(0x00)
	.dwattr $C$DW$323, DW_AT_name("__mpyd")
	.dwattr $C$DW$323, DW_AT_TI_call
        CALL #__mpyd ; |343| 
                                        ; call occurs [#__mpyd] ; |343| 
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |343| 
$C$DW$324	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$324, DW_AT_low_pc(0x00)
	.dwattr $C$DW$324, DW_AT_name("__subd")
	.dwattr $C$DW$324, DW_AT_TI_call
        CALL #__subd ; |343| 
                                        ; call occurs [#__subd] ; |343| 
        MOV dbl(*SP(#0)), XAR3
        MOV #24, AC1 ; |343| 
        ADD dbl(*FP(#134)), AC1, AC1 ; |343| 
        MOV AC1, AR1 ; |343| 
        SFTL AR1, #1 ; |343| 
        AADD AR1, AR3 ; |343| 
        MOV AC0, dbl(*AR3(#144)) ; |343| 
	.dwpsn	file "./jpeg/enc.c",line 344,column 9,is_stmt
        MOV dbl(*FP(#136)), AC0 ; |344| 
        MOV dbl(*FP(#138)), AC1 ; |344| 
$C$DW$325	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$325, DW_AT_low_pc(0x00)
	.dwattr $C$DW$325, DW_AT_name("__subd")
	.dwattr $C$DW$325, DW_AT_TI_call
        CALL #__subd ; |344| 
                                        ; call occurs [#__subd] ; |344| 
        MOV dbl(*FP(#140)), AC1 ; |344| 
$C$DW$326	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$326, DW_AT_low_pc(0x00)
	.dwattr $C$DW$326, DW_AT_name("__subd")
	.dwattr $C$DW$326, DW_AT_TI_call
        CALL #__subd ; |344| 
                                        ; call occurs [#__subd] ; |344| 
$C$DW$L$_jpec_enc_block_dct$108$E:
$C$DW$L$_jpec_enc_block_dct$109$B:
        MOV dbl(*FP(#142)), AC1 ; |344| 
$C$DW$327	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$327, DW_AT_low_pc(0x00)
	.dwattr $C$DW$327, DW_AT_name("__addd")
	.dwattr $C$DW$327, DW_AT_TI_call
        CALL #__addd ; |344| 
                                        ; call occurs [#__addd] ; |344| 
        MOV dbl(*SP(#2)), XAR3

        MOV dbl(*AR3(short(#6))), AC0 ; |344| 
||      OR #0, AC0, AC1

$C$DW$328	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$328, DW_AT_low_pc(0x00)
	.dwattr $C$DW$328, DW_AT_name("__mpyd")
	.dwattr $C$DW$328, DW_AT_TI_call
        CALL #__mpyd ; |344| 
                                        ; call occurs [#__mpyd] ; |344| 
        MOV dbl(*SP(#0)), XAR3
        MOV #32, AC1 ; |344| 
        ADD dbl(*FP(#134)), AC1, AC1 ; |344| 
        MOV AC1, AR1 ; |344| 
        SFTL AR1, #1 ; |344| 
        AADD AR1, AR3 ; |344| 
        MOV AC0, dbl(*AR3(#144)) ; |344| 
	.dwpsn	file "./jpeg/enc.c",line 345,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*FP(#144)), AC1 ; |345| 
        MOV dbl(*AR3(#8)), AC0 ; |345| 
$C$DW$329	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$329, DW_AT_low_pc(0x00)
	.dwattr $C$DW$329, DW_AT_name("__mpyd")
	.dwattr $C$DW$329, DW_AT_TI_call
        CALL #__mpyd ; |345| 
                                        ; call occurs [#__mpyd] ; |345| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*FP(#152)) ; |345| 
        MOV dbl(*FP(#146)), AC1 ; |345| 
        MOV dbl(*AR3), AC0 ; |345| 
$C$DW$330	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$330, DW_AT_low_pc(0x00)
	.dwattr $C$DW$330, DW_AT_name("__mpyd")
	.dwattr $C$DW$330, DW_AT_TI_call
        CALL #__mpyd ; |345| 
                                        ; call occurs [#__mpyd] ; |345| 
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |345| 
$C$DW$331	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$331, DW_AT_low_pc(0x00)
	.dwattr $C$DW$331, DW_AT_name("__subd")
	.dwattr $C$DW$331, DW_AT_TI_call
        CALL #__subd ; |345| 
                                        ; call occurs [#__subd] ; |345| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*FP(#152)) ; |345| 
        MOV dbl(*FP(#148)), AC1 ; |345| 
        MOV dbl(*AR3(#12)), AC0 ; |345| 
$C$DW$332	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$332, DW_AT_low_pc(0x00)
	.dwattr $C$DW$332, DW_AT_name("__mpyd")
	.dwattr $C$DW$332, DW_AT_TI_call
        CALL #__mpyd ; |345| 
                                        ; call occurs [#__mpyd] ; |345| 
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |345| 
$C$DW$333	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$333, DW_AT_low_pc(0x00)
	.dwattr $C$DW$333, DW_AT_name("__addd")
	.dwattr $C$DW$333, DW_AT_TI_call
        CALL #__addd ; |345| 
                                        ; call occurs [#__addd] ; |345| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*FP(#152)) ; |345| 
        MOV dbl(*FP(#150)), AC1 ; |345| 
        MOV dbl(*AR3(short(#4))), AC0 ; |345| 
$C$DW$334	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$334, DW_AT_low_pc(0x00)
	.dwattr $C$DW$334, DW_AT_name("__mpyd")
	.dwattr $C$DW$334, DW_AT_TI_call
        CALL #__mpyd ; |345| 
                                        ; call occurs [#__mpyd] ; |345| 
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |345| 
$C$DW$335	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$335, DW_AT_low_pc(0x00)
	.dwattr $C$DW$335, DW_AT_name("__addd")
	.dwattr $C$DW$335, DW_AT_TI_call
        CALL #__addd ; |345| 
                                        ; call occurs [#__addd] ; |345| 
        MOV dbl(*SP(#0)), XAR3
        MOV #40, AC1 ; |345| 
        ADD dbl(*FP(#134)), AC1, AC1 ; |345| 
        MOV AC1, AR1 ; |345| 
        SFTL AR1, #1 ; |345| 
        AADD AR1, AR3 ; |345| 
        MOV AC0, dbl(*AR3(#144)) ; |345| 
	.dwpsn	file "./jpeg/enc.c",line 346,column 9,is_stmt
        MOV dbl(*FP(#136)), AC0 ; |346| 
        MOV dbl(*FP(#142)), AC1 ; |346| 
$C$DW$336	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$336, DW_AT_low_pc(0x00)
	.dwattr $C$DW$336, DW_AT_name("__subd")
	.dwattr $C$DW$336, DW_AT_TI_call
        CALL #__subd ; |346| 
                                        ; call occurs [#__subd] ; |346| 
        MOV dbl(*SP(#2)), XAR3
        OR #0, AC0, AC1
        MOV dbl(*AR3(#10)), AC0 ; |346| 
$C$DW$337	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$337, DW_AT_low_pc(0x00)
	.dwattr $C$DW$337, DW_AT_name("__mpyd")
	.dwattr $C$DW$337, DW_AT_TI_call
        CALL #__mpyd ; |346| 
                                        ; call occurs [#__mpyd] ; |346| 
$C$DW$L$_jpec_enc_block_dct$109$E:
$C$DW$L$_jpec_enc_block_dct$110$B:
        MOV AC0, dbl(*FP(#152)) ; |346| 
        MOV dbl(*FP(#138)), AC1 ; |346| 
        MOV dbl(*FP(#140)), AC0 ; |346| 
$C$DW$338	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$338, DW_AT_low_pc(0x00)
	.dwattr $C$DW$338, DW_AT_name("__subd")
	.dwattr $C$DW$338, DW_AT_TI_call
        CALL #__subd ; |346| 
                                        ; call occurs [#__subd] ; |346| 
        MOV dbl(*SP(#2)), XAR3

        MOV dbl(*AR3(short(#2))), AC0 ; |346| 
||      OR #0, AC0, AC1

$C$DW$339	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$339, DW_AT_low_pc(0x00)
	.dwattr $C$DW$339, DW_AT_name("__mpyd")
	.dwattr $C$DW$339, DW_AT_TI_call
        CALL #__mpyd ; |346| 
                                        ; call occurs [#__mpyd] ; |346| 
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |346| 
$C$DW$340	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$340, DW_AT_low_pc(0x00)
	.dwattr $C$DW$340, DW_AT_name("__addd")
	.dwattr $C$DW$340, DW_AT_TI_call
        CALL #__addd ; |346| 
                                        ; call occurs [#__addd] ; |346| 
        MOV dbl(*SP(#0)), XAR3
        MOV #48, AC1 ; |346| 
        ADD dbl(*FP(#134)), AC1, AC1 ; |346| 
        MOV AC1, AR1 ; |346| 
        SFTL AR1, #1 ; |346| 
        AADD AR1, AR3 ; |346| 
        MOV AC0, dbl(*AR3(#144)) ; |346| 
	.dwpsn	file "./jpeg/enc.c",line 347,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*FP(#144)), AC1 ; |347| 
        MOV dbl(*AR3(#12)), AC0 ; |347| 
$C$DW$341	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$341, DW_AT_low_pc(0x00)
	.dwattr $C$DW$341, DW_AT_name("__mpyd")
	.dwattr $C$DW$341, DW_AT_TI_call
        CALL #__mpyd ; |347| 
                                        ; call occurs [#__mpyd] ; |347| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*FP(#152)) ; |347| 
        MOV dbl(*FP(#146)), AC1 ; |347| 
        MOV dbl(*AR3(#8)), AC0 ; |347| 
$C$DW$342	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$342, DW_AT_low_pc(0x00)
	.dwattr $C$DW$342, DW_AT_name("__mpyd")
	.dwattr $C$DW$342, DW_AT_TI_call
        CALL #__mpyd ; |347| 
                                        ; call occurs [#__mpyd] ; |347| 
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |347| 
$C$DW$343	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$343, DW_AT_low_pc(0x00)
	.dwattr $C$DW$343, DW_AT_name("__subd")
	.dwattr $C$DW$343, DW_AT_TI_call
        CALL #__subd ; |347| 
                                        ; call occurs [#__subd] ; |347| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*FP(#152)) ; |347| 
        MOV dbl(*FP(#148)), AC1 ; |347| 
        MOV dbl(*AR3(short(#4))), AC0 ; |347| 
$C$DW$344	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$344, DW_AT_low_pc(0x00)
	.dwattr $C$DW$344, DW_AT_name("__mpyd")
	.dwattr $C$DW$344, DW_AT_TI_call
        CALL #__mpyd ; |347| 
                                        ; call occurs [#__mpyd] ; |347| 
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |347| 
$C$DW$345	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$345, DW_AT_low_pc(0x00)
	.dwattr $C$DW$345, DW_AT_name("__addd")
	.dwattr $C$DW$345, DW_AT_TI_call
        CALL #__addd ; |347| 
                                        ; call occurs [#__addd] ; |347| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*FP(#152)) ; |347| 
        MOV dbl(*FP(#150)), AC1 ; |347| 
        MOV dbl(*AR3), AC0 ; |347| 
$C$DW$346	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$346, DW_AT_low_pc(0x00)
	.dwattr $C$DW$346, DW_AT_name("__mpyd")
	.dwattr $C$DW$346, DW_AT_TI_call
        CALL #__mpyd ; |347| 
                                        ; call occurs [#__mpyd] ; |347| 
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |347| 
$C$DW$347	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$347, DW_AT_low_pc(0x00)
	.dwattr $C$DW$347, DW_AT_name("__subd")
	.dwattr $C$DW$347, DW_AT_TI_call
        CALL #__subd ; |347| 
                                        ; call occurs [#__subd] ; |347| 
        MOV dbl(*SP(#0)), XAR3
        MOV #56, AC1 ; |347| 
        ADD dbl(*FP(#134)), AC1, AC1 ; |347| 
        MOV AC1, AR1 ; |347| 
        SFTL AR1, #1 ; |347| 
        AADD AR1, AR3 ; |347| 
        MOV AC0, dbl(*AR3(#144)) ; |347| 
	.dwendtag $C$DW$285

	.dwpsn	file "./jpeg/enc.c",line 328,column 28,is_stmt
        MOV dbl(*FP(#134)), AC0 ; |328| 
        ADD #1, AC0 ; |328| 
        MOV AC0, dbl(*FP(#134)) ; |328| 
	.dwpsn	file "./jpeg/enc.c",line 328,column 19,is_stmt
        MOV #8, AC0 ; |328| 
        MOV dbl(*FP(#134)), AC1 ; |328| 
        CMP AC1 < AC0, TC1 ; |328| 
        BCC $C$L106,TC1 ; |328| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |328| 
$C$DW$L$_jpec_enc_block_dct$110$E:
	.dwpsn	file "./jpeg/enc.c",line 350,column 1,is_stmt
$C$L107:    
	CALL #_coverage_log;
        ADD #154, mmap(SP)
	.dwcfi	cfa_offset, 2
        POPBOTH XFP
	.dwcfi	restore_reg, 32
	.dwcfi	cfa_offset, 1
$C$DW$348	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$348, DW_AT_low_pc(0x00)
	.dwattr $C$DW$348, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$349	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$349, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/enc.asm:$C$L106:1:1729195931")
	.dwattr $C$DW$349, DW_AT_TI_begin_file("./jpeg/enc.c")
	.dwattr $C$DW$349, DW_AT_TI_begin_line(0x148)
	.dwattr $C$DW$349, DW_AT_TI_end_line(0x15c)
$C$DW$350	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$350, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$106$B)
	.dwattr $C$DW$350, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$106$E)
$C$DW$351	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$351, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$107$B)
	.dwattr $C$DW$351, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$107$E)
$C$DW$352	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$352, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$108$B)
	.dwattr $C$DW$352, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$108$E)
$C$DW$353	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$353, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$109$B)
	.dwattr $C$DW$353, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$109$E)
$C$DW$354	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$354, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$110$B)
	.dwattr $C$DW$354, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$110$E)
	.dwendtag $C$DW$349


$C$DW$355	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$355, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/enc.asm:$C$L40:1:1729195931")
	.dwattr $C$DW$355, DW_AT_TI_begin_file("./jpeg/enc.c")
	.dwattr $C$DW$355, DW_AT_TI_begin_line(0x132)
	.dwattr $C$DW$355, DW_AT_TI_end_line(0x147)
$C$DW$356	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$356, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$4$B)
	.dwattr $C$DW$356, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$4$E)
$C$DW$357	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$357, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$5$B)
	.dwattr $C$DW$357, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$5$E)
$C$DW$358	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$358, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$6$B)
	.dwattr $C$DW$358, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$6$E)
$C$DW$359	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$359, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$7$B)
	.dwattr $C$DW$359, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$7$E)
$C$DW$360	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$360, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$8$B)
	.dwattr $C$DW$360, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$8$E)
$C$DW$361	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$361, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$9$B)
	.dwattr $C$DW$361, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$9$E)
$C$DW$362	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$362, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$10$B)
	.dwattr $C$DW$362, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$10$E)
$C$DW$363	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$363, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$11$B)
	.dwattr $C$DW$363, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$11$E)
$C$DW$364	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$364, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$12$B)
	.dwattr $C$DW$364, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$12$E)
$C$DW$365	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$365, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$13$B)
	.dwattr $C$DW$365, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$13$E)
$C$DW$366	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$366, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$14$B)
	.dwattr $C$DW$366, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$14$E)
$C$DW$367	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$367, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$15$B)
	.dwattr $C$DW$367, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$15$E)
$C$DW$368	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$368, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$16$B)
	.dwattr $C$DW$368, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$16$E)
$C$DW$369	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$369, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$17$B)
	.dwattr $C$DW$369, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$17$E)
$C$DW$370	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$370, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$18$B)
	.dwattr $C$DW$370, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$18$E)
$C$DW$371	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$371, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$19$B)
	.dwattr $C$DW$371, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$19$E)
$C$DW$372	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$372, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$20$B)
	.dwattr $C$DW$372, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$20$E)
$C$DW$373	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$373, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$21$B)
	.dwattr $C$DW$373, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$21$E)
$C$DW$374	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$374, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$22$B)
	.dwattr $C$DW$374, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$22$E)
$C$DW$375	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$375, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$23$B)
	.dwattr $C$DW$375, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$23$E)
$C$DW$376	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$376, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$24$B)
	.dwattr $C$DW$376, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$24$E)
$C$DW$377	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$377, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$25$B)
	.dwattr $C$DW$377, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$25$E)
$C$DW$378	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$378, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$26$B)
	.dwattr $C$DW$378, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$26$E)
$C$DW$379	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$379, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$27$B)
	.dwattr $C$DW$379, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$27$E)
$C$DW$380	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$380, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$28$B)
	.dwattr $C$DW$380, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$28$E)
$C$DW$381	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$381, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$29$B)
	.dwattr $C$DW$381, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$29$E)
$C$DW$382	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$382, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$30$B)
	.dwattr $C$DW$382, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$30$E)
$C$DW$383	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$383, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$31$B)
	.dwattr $C$DW$383, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$31$E)
$C$DW$384	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$384, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$32$B)
	.dwattr $C$DW$384, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$32$E)
$C$DW$385	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$385, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$33$B)
	.dwattr $C$DW$385, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$33$E)
$C$DW$386	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$386, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$34$B)
	.dwattr $C$DW$386, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$34$E)
$C$DW$387	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$387, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$35$B)
	.dwattr $C$DW$387, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$35$E)
$C$DW$388	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$388, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$36$B)
	.dwattr $C$DW$388, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$36$E)
$C$DW$389	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$389, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$37$B)
	.dwattr $C$DW$389, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$37$E)
$C$DW$390	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$390, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$38$B)
	.dwattr $C$DW$390, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$38$E)
$C$DW$391	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$391, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$39$B)
	.dwattr $C$DW$391, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$39$E)
$C$DW$392	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$392, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$40$B)
	.dwattr $C$DW$392, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$40$E)
$C$DW$393	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$393, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$41$B)
	.dwattr $C$DW$393, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$41$E)
$C$DW$394	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$394, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$42$B)
	.dwattr $C$DW$394, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$42$E)
$C$DW$395	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$395, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$43$B)
	.dwattr $C$DW$395, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$43$E)
$C$DW$396	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$396, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$44$B)
	.dwattr $C$DW$396, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$44$E)
$C$DW$397	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$397, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$45$B)
	.dwattr $C$DW$397, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$45$E)
$C$DW$398	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$398, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$46$B)
	.dwattr $C$DW$398, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$46$E)
$C$DW$399	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$399, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$47$B)
	.dwattr $C$DW$399, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$47$E)
$C$DW$400	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$400, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$48$B)
	.dwattr $C$DW$400, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$48$E)
$C$DW$401	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$401, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$49$B)
	.dwattr $C$DW$401, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$49$E)
$C$DW$402	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$402, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$50$B)
	.dwattr $C$DW$402, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$50$E)
$C$DW$403	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$403, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$51$B)
	.dwattr $C$DW$403, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$51$E)
$C$DW$404	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$404, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$52$B)
	.dwattr $C$DW$404, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$52$E)
$C$DW$405	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$405, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$53$B)
	.dwattr $C$DW$405, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$53$E)
$C$DW$406	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$406, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$54$B)
	.dwattr $C$DW$406, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$54$E)
$C$DW$407	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$407, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$55$B)
	.dwattr $C$DW$407, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$55$E)
$C$DW$408	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$408, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$56$B)
	.dwattr $C$DW$408, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$56$E)
$C$DW$409	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$409, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$57$B)
	.dwattr $C$DW$409, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$57$E)
$C$DW$410	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$410, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$58$B)
	.dwattr $C$DW$410, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$58$E)
$C$DW$411	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$411, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$59$B)
	.dwattr $C$DW$411, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$59$E)
$C$DW$412	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$412, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$60$B)
	.dwattr $C$DW$412, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$60$E)
$C$DW$413	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$413, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$61$B)
	.dwattr $C$DW$413, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$61$E)
$C$DW$414	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$414, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$62$B)
	.dwattr $C$DW$414, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$62$E)
$C$DW$415	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$415, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$63$B)
	.dwattr $C$DW$415, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$63$E)
$C$DW$416	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$416, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$64$B)
	.dwattr $C$DW$416, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$64$E)
$C$DW$417	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$417, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$65$B)
	.dwattr $C$DW$417, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$65$E)
$C$DW$418	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$418, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$66$B)
	.dwattr $C$DW$418, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$66$E)
$C$DW$419	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$419, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$67$B)
	.dwattr $C$DW$419, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$67$E)
$C$DW$420	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$420, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$68$B)
	.dwattr $C$DW$420, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$68$E)
$C$DW$421	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$421, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$69$B)
	.dwattr $C$DW$421, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$69$E)
$C$DW$422	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$422, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$70$B)
	.dwattr $C$DW$422, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$70$E)
$C$DW$423	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$423, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$71$B)
	.dwattr $C$DW$423, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$71$E)
$C$DW$424	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$424, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$72$B)
	.dwattr $C$DW$424, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$72$E)
$C$DW$425	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$425, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$73$B)
	.dwattr $C$DW$425, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$73$E)
$C$DW$426	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$426, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$74$B)
	.dwattr $C$DW$426, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$74$E)
$C$DW$427	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$427, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$75$B)
	.dwattr $C$DW$427, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$75$E)
$C$DW$428	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$428, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$76$B)
	.dwattr $C$DW$428, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$76$E)
$C$DW$429	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$429, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$77$B)
	.dwattr $C$DW$429, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$77$E)
$C$DW$430	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$430, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$78$B)
	.dwattr $C$DW$430, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$78$E)
$C$DW$431	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$431, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$79$B)
	.dwattr $C$DW$431, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$79$E)
$C$DW$432	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$432, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$80$B)
	.dwattr $C$DW$432, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$80$E)
$C$DW$433	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$433, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$81$B)
	.dwattr $C$DW$433, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$81$E)
$C$DW$434	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$434, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$82$B)
	.dwattr $C$DW$434, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$82$E)
$C$DW$435	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$435, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$83$B)
	.dwattr $C$DW$435, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$83$E)
$C$DW$436	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$436, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$84$B)
	.dwattr $C$DW$436, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$84$E)
$C$DW$437	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$437, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$85$B)
	.dwattr $C$DW$437, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$85$E)
$C$DW$438	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$438, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$86$B)
	.dwattr $C$DW$438, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$86$E)
$C$DW$439	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$439, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$87$B)
	.dwattr $C$DW$439, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$87$E)
$C$DW$440	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$440, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$88$B)
	.dwattr $C$DW$440, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$88$E)
$C$DW$441	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$441, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$89$B)
	.dwattr $C$DW$441, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$89$E)
$C$DW$442	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$442, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$90$B)
	.dwattr $C$DW$442, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$90$E)
$C$DW$443	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$443, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$91$B)
	.dwattr $C$DW$443, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$91$E)
$C$DW$444	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$444, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$92$B)
	.dwattr $C$DW$444, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$92$E)
$C$DW$445	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$445, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$93$B)
	.dwattr $C$DW$445, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$93$E)
$C$DW$446	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$446, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$94$B)
	.dwattr $C$DW$446, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$94$E)
$C$DW$447	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$447, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$95$B)
	.dwattr $C$DW$447, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$95$E)
$C$DW$448	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$448, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$96$B)
	.dwattr $C$DW$448, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$96$E)
$C$DW$449	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$449, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$97$B)
	.dwattr $C$DW$449, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$97$E)
$C$DW$450	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$450, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$98$B)
	.dwattr $C$DW$450, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$98$E)
$C$DW$451	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$451, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$99$B)
	.dwattr $C$DW$451, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$99$E)
$C$DW$452	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$452, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$100$B)
	.dwattr $C$DW$452, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$100$E)
$C$DW$453	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$453, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$101$B)
	.dwattr $C$DW$453, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$101$E)
$C$DW$454	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$454, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$102$B)
	.dwattr $C$DW$454, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$102$E)
$C$DW$455	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$455, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$103$B)
	.dwattr $C$DW$455, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$103$E)
$C$DW$456	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$456, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$104$B)
	.dwattr $C$DW$456, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$104$E)
	.dwendtag $C$DW$355

	.dwattr $C$DW$199, DW_AT_TI_end_file("./jpeg/enc.c")
	.dwattr $C$DW$199, DW_AT_TI_end_line(0x15e)
	.dwattr $C$DW$199, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$199

	.sect	".text"

$C$DW$457	.dwtag  DW_TAG_subprogram, DW_AT_name("jpec_enc_block_quant")
	.dwattr $C$DW$457, DW_AT_low_pc(_jpec_enc_block_quant)
	.dwattr $C$DW$457, DW_AT_high_pc(0x00)
	.dwattr $C$DW$457, DW_AT_TI_symbol_name("_jpec_enc_block_quant")
	.dwattr $C$DW$457, DW_AT_TI_begin_file("./jpeg/enc.c")
	.dwattr $C$DW$457, DW_AT_TI_begin_line(0x160)
	.dwattr $C$DW$457, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$457, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "./jpeg/enc.c",line 353,column 1,is_stmt,address _jpec_enc_block_quant

	.dwfde $C$DW$CIE, _jpec_enc_block_quant
$C$DW$458	.dwtag  DW_TAG_formal_parameter, DW_AT_name("e")
	.dwattr $C$DW$458, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$458, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$458, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: jpec_enc_block_quant                                         *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,AR0,XAR0,AR1,AR3,XAR3,SP,CARRY,TC1,  *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_jpec_enc_block_quant:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$459	.dwtag  DW_TAG_variable, DW_AT_name("e")
	.dwattr $C$DW$459, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$459, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$459, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$460	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$460, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$460, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$460, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./jpeg/enc.c",line 355,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L109,AC0 == #0 ; |355| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |355| 
        MOV dbl(*AR3(#140)), AC0 ; |355| 
        BCC $C$L109,AC0 < #0 ; |355| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |355| 
	.dwpsn	file "./jpeg/enc.c",line 356,column 9,is_stmt
	.dwpsn	file "./jpeg/enc.c",line 359,column 10,is_stmt
        MOV #0, AC0 ; |359| 
        MOV AC0, dbl(*SP(#2)) ; |359| 
	.dwpsn	file "./jpeg/enc.c",line 359,column 17,is_stmt
        MOV dbl(*SP(#2)), AC1 ; |359| 
        MOV #64, AC0 ; |359| 
        CMP AC1 >= AC0, TC1 ; |359| 
        BCC $C$L109,TC1 ; |359| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |359| 
$C$L108:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_quant$4$B:
	.dwpsn	file "./jpeg/enc.c",line 361,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#3), AR1 ; |361| 
        SFTL AR1, #1 ; |361| 
        AADD AR1, AR3 ; |361| 
        MOV dbl(*AR3(#10)), AC0 ; |361| 
$C$DW$461	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$461, DW_AT_low_pc(0x00)
	.dwattr $C$DW$461, DW_AT_name("__fltlid")
	.dwattr $C$DW$461, DW_AT_TI_call
        CALL #__fltlid ; |361| 
                                        ; call occurs [#__fltlid] ; |361| 
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#3), AR1 ; |361| 
        SFTL AR1, #1 ; |361| 

        AADD AR1, AR3 ; |361| 
||      OR #0, AC0, AC1

        MOV dbl(*AR3(#144)), AC0 ; |361| 
$C$DW$462	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$462, DW_AT_low_pc(0x00)
	.dwattr $C$DW$462, DW_AT_name("__divd")
	.dwattr $C$DW$462, DW_AT_TI_call
        CALL #__divd ; |361| 
                                        ; call occurs [#__divd] ; |361| 
$C$DW$463	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$463, DW_AT_low_pc(0x00)
	.dwattr $C$DW$463, DW_AT_name("__fixdli")
	.dwattr $C$DW$463, DW_AT_TI_call
        CALL #__fixdli ; |361| 
                                        ; call occurs [#__fixdli] ; |361| 
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#3), AR1 ; |361| 
        SFTL AR1, #1 ; |361| 
        AADD AR1, AR3 ; |361| 
        MOV AC0, dbl(*AR3(#272)) ; |361| 
	.dwpsn	file "./jpeg/enc.c",line 359,column 25,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |359| 
        ADD #1, AC0 ; |359| 
        MOV AC0, dbl(*SP(#2)) ; |359| 
	.dwpsn	file "./jpeg/enc.c",line 359,column 17,is_stmt
        MOV #64, AC0 ; |359| 
        MOV dbl(*SP(#2)), AC1 ; |359| 
        CMP AC1 < AC0, TC1 ; |359| 
        BCC $C$L108,TC1 ; |359| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |359| 
$C$DW$L$_jpec_enc_block_quant$4$E:
	.dwpsn	file "./jpeg/enc.c",line 363,column 1,is_stmt
$C$L109:    
	CALL #_coverage_log;
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$464	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$464, DW_AT_low_pc(0x00)
	.dwattr $C$DW$464, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$465	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$465, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/enc.asm:$C$L108:1:1729195931")
	.dwattr $C$DW$465, DW_AT_TI_begin_file("./jpeg/enc.c")
	.dwattr $C$DW$465, DW_AT_TI_begin_line(0x167)
	.dwattr $C$DW$465, DW_AT_TI_end_line(0x16a)
$C$DW$466	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$466, DW_AT_low_pc($C$DW$L$_jpec_enc_block_quant$4$B)
	.dwattr $C$DW$466, DW_AT_high_pc($C$DW$L$_jpec_enc_block_quant$4$E)
	.dwendtag $C$DW$465

	.dwattr $C$DW$457, DW_AT_TI_end_file("./jpeg/enc.c")
	.dwattr $C$DW$457, DW_AT_TI_end_line(0x16b)
	.dwattr $C$DW$457, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$457

	.sect	".text"

$C$DW$467	.dwtag  DW_TAG_subprogram, DW_AT_name("jpec_enc_block_zz")
	.dwattr $C$DW$467, DW_AT_low_pc(_jpec_enc_block_zz)
	.dwattr $C$DW$467, DW_AT_high_pc(0x00)
	.dwattr $C$DW$467, DW_AT_TI_symbol_name("_jpec_enc_block_zz")
	.dwattr $C$DW$467, DW_AT_TI_begin_file("./jpeg/enc.c")
	.dwattr $C$DW$467, DW_AT_TI_begin_line(0x16d)
	.dwattr $C$DW$467, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$467, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "./jpeg/enc.c",line 366,column 1,is_stmt,address _jpec_enc_block_zz

	.dwfde $C$DW$CIE, _jpec_enc_block_zz
$C$DW$468	.dwtag  DW_TAG_formal_parameter, DW_AT_name("e")
	.dwattr $C$DW$468, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$468, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$468, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: jpec_enc_block_zz                                            *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR3,XAR3,SP,CARRY,   *
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_jpec_enc_block_zz:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$469	.dwtag  DW_TAG_variable, DW_AT_name("e")
	.dwattr $C$DW$469, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$469, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$469, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$470	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$470, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$470, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$470, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./jpeg/enc.c",line 368,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L112,AC0 == #0 ; |368| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |368| 
        MOV dbl(*AR3(#140)), AC0 ; |368| 
        BCC $C$L112,AC0 < #0 ; |368| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |368| 
	.dwpsn	file "./jpeg/enc.c",line 369,column 9,is_stmt
	.dwpsn	file "./jpeg/enc.c",line 371,column 5,is_stmt
        MOV #0, AC0 ; |371| 
        MOV AC0, dbl(*AR3(#528)) ; |371| 
	.dwpsn	file "./jpeg/enc.c",line 372,column 10,is_stmt
        MOV AC0, dbl(*SP(#2)) ; |372| 
	.dwpsn	file "./jpeg/enc.c",line 372,column 17,is_stmt
        MOV dbl(*SP(#2)), AC1 ; |372| 
        MOV #64, AC0 ; |372| 
        CMP AC1 >= AC0, TC1 ; |372| 
        BCC $C$L112,TC1 ; |372| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |372| 
$C$L110:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_zz$4$B:
	.dwpsn	file "./jpeg/enc.c",line 374,column 9,is_stmt
        MOV *SP(#3), T0 ; |374| 
        SFTL T0, #1 ; |374| 
        AMOV #(_jpec_zz+1), XAR3 ; |374| 
        MOV *AR3(T0), AR1 ; |374| 
        SFTL AR1, #1 ; |374| 
        MOV dbl(*SP(#0)), XAR3
        AADD AR1, AR3 ; |374| 
        MOV dbl(*AR3(#272)), AC0 ; |374| 
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#3), AR1 ; |374| 
        SFTL AR1, #1 ; |374| 
        AADD AR1, AR3 ; |374| 
        MOV AC0, dbl(*AR3(#400)) ; |374| 
        BCC $C$L111,AC0 == #0 ; |374| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |374| 
$C$DW$L$_jpec_enc_block_zz$4$E:
$C$DW$L$_jpec_enc_block_zz$5$B:
	.dwpsn	file "./jpeg/enc.c",line 375,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#2)), AC0 ; |375| 
        ADD #1, AC0 ; |375| 
        MOV AC0, dbl(*AR3(#528)) ; |375| 
$C$DW$L$_jpec_enc_block_zz$5$E:
$C$L111:    
	CALL #_coverage_log;
$C$DW$L$_jpec_enc_block_zz$6$B:
	.dwpsn	file "./jpeg/enc.c",line 372,column 25,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |372| 
        ADD #1, AC0 ; |372| 
        MOV AC0, dbl(*SP(#2)) ; |372| 
	.dwpsn	file "./jpeg/enc.c",line 372,column 17,is_stmt
        MOV dbl(*SP(#2)), AC1 ; |372| 
        MOV #64, AC0 ; |372| 
        CMP AC1 < AC0, TC1 ; |372| 
        BCC $C$L110,TC1 ; |372| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |372| 
$C$DW$L$_jpec_enc_block_zz$6$E:
	.dwpsn	file "./jpeg/enc.c",line 377,column 1,is_stmt
$C$L112:    
	CALL #_coverage_log;
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$471	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$471, DW_AT_low_pc(0x00)
	.dwattr $C$DW$471, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$472	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$472, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/enc.asm:$C$L110:1:1729195931")
	.dwattr $C$DW$472, DW_AT_TI_begin_file("./jpeg/enc.c")
	.dwattr $C$DW$472, DW_AT_TI_begin_line(0x174)
	.dwattr $C$DW$472, DW_AT_TI_end_line(0x178)
$C$DW$473	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$473, DW_AT_low_pc($C$DW$L$_jpec_enc_block_zz$4$B)
	.dwattr $C$DW$473, DW_AT_high_pc($C$DW$L$_jpec_enc_block_zz$4$E)
$C$DW$474	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$474, DW_AT_low_pc($C$DW$L$_jpec_enc_block_zz$5$B)
	.dwattr $C$DW$474, DW_AT_high_pc($C$DW$L$_jpec_enc_block_zz$5$E)
$C$DW$475	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$475, DW_AT_low_pc($C$DW$L$_jpec_enc_block_zz$6$B)
	.dwattr $C$DW$475, DW_AT_high_pc($C$DW$L$_jpec_enc_block_zz$6$E)
	.dwendtag $C$DW$472

	.dwattr $C$DW$467, DW_AT_TI_end_file("./jpeg/enc.c")
	.dwattr $C$DW$467, DW_AT_TI_end_line(0x179)
	.dwattr $C$DW$467, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$467

;*******************************************************************************
;* FLOATING-POINT CONSTANTS                                                    *
;*******************************************************************************
	.sect	".const"
	.align	2
$C$FL1:	.xlong	0x42480000
	.align	2
$C$FL2:	.xlong	0x40000000
	.align	2
$C$FL3:	.xlong	0x3f000000
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_jpec_buffer_new2
	.global	_jpec_buffer_write_byte
	.global	_jpec_buffer_write_2bytes
	.global	_jpec_huff_skel_init
	.global	_jpec_qzr
	.global	_jpec_dct
	.global	_jpec_zz
	.global	_jpec_dc_nodes
	.global	_jpec_dc_nb_vals
	.global	_jpec_dc_vals
	.global	_jpec_ac_nodes
	.global	_jpec_ac_nb_vals
	.global	_jpec_ac_vals
	.global	__fltlid
	.global	__divd
	.global	__subd
	.global	__fltud
	.global	__mpyd
	.global	__addd
	.global	__fixdli
	.global	__remli
	.global	__divli
	.global	__mpyli

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x17)

$C$DW$T$34	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)
$C$DW$476	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$476, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$T$34

$C$DW$T$35	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$35, DW_AT_address_class(0x20)

$C$DW$T$37	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
$C$DW$477	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$477, DW_AT_type(*$C$DW$T$3)
$C$DW$478	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$478, DW_AT_type(*$C$DW$T$36)
$C$DW$479	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$479, DW_AT_type(*$C$DW$T$29)
	.dwendtag $C$DW$T$37

$C$DW$T$38	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$38, DW_AT_address_class(0x20)
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
$C$DW$T$23	.dwtag  DW_TAG_typedef, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
$C$DW$T$24	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$24, DW_AT_address_class(0x17)
$C$DW$480	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$480, DW_AT_type(*$C$DW$T$23)
$C$DW$T$26	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$480)
$C$DW$T$27	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_address_class(0x17)

$C$DW$T$51	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$51, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x40)
$C$DW$481	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$481, DW_AT_upper_bound(0x3f)
	.dwendtag $C$DW$T$51


$C$DW$T$52	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$52, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x11)
$C$DW$482	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$482, DW_AT_upper_bound(0x10)
	.dwendtag $C$DW$T$52


$C$DW$T$53	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$53, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x0c)
$C$DW$483	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$483, DW_AT_upper_bound(0x0b)
	.dwendtag $C$DW$T$53


$C$DW$T$54	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$54, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$54, DW_AT_byte_size(0xa2)
$C$DW$484	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$484, DW_AT_upper_bound(0xa1)
	.dwendtag $C$DW$T$54

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
$C$DW$485	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$485, DW_AT_upper_bound(0x3f)
	.dwendtag $C$DW$T$21

$C$DW$T$48	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$48, DW_AT_address_class(0x17)
$C$DW$486	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$486, DW_AT_type(*$C$DW$T$20)
$C$DW$T$59	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$486)

$C$DW$T$60	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$T$60, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$60, DW_AT_byte_size(0x80)
$C$DW$487	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$487, DW_AT_upper_bound(0x3f)
	.dwendtag $C$DW$T$60

$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)
$C$DW$T$62	.dwtag  DW_TAG_typedef, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$62, DW_AT_language(DW_LANG_C)
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
$C$DW$488	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$488, DW_AT_upper_bound(0x3f)
	.dwendtag $C$DW$T$19

$C$DW$489	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$489, DW_AT_type(*$C$DW$T$16)
$C$DW$T$64	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$489)

$C$DW$T$65	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$65, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$65, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$65, DW_AT_byte_size(0x0e)
$C$DW$490	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$490, DW_AT_upper_bound(0x06)
	.dwendtag $C$DW$T$65

$C$DW$T$66	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$66, DW_AT_address_class(0x17)
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
$C$DW$491	.dwtag  DW_TAG_member
	.dwattr $C$DW$491, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$491, DW_AT_name("dct")
	.dwattr $C$DW$491, DW_AT_TI_symbol_name("_dct")
	.dwattr $C$DW$491, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$491, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$492	.dwtag  DW_TAG_member
	.dwattr $C$DW$492, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$492, DW_AT_name("quant")
	.dwattr $C$DW$492, DW_AT_TI_symbol_name("_quant")
	.dwattr $C$DW$492, DW_AT_data_member_location[DW_OP_plus_uconst 0x80]
	.dwattr $C$DW$492, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$493	.dwtag  DW_TAG_member
	.dwattr $C$DW$493, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$493, DW_AT_name("zz")
	.dwattr $C$DW$493, DW_AT_TI_symbol_name("_zz")
	.dwattr $C$DW$493, DW_AT_data_member_location[DW_OP_plus_uconst 0x100]
	.dwattr $C$DW$493, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$494	.dwtag  DW_TAG_member
	.dwattr $C$DW$494, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$494, DW_AT_name("len")
	.dwattr $C$DW$494, DW_AT_TI_symbol_name("_len")
	.dwattr $C$DW$494, DW_AT_data_member_location[DW_OP_plus_uconst 0x180]
	.dwattr $C$DW$494, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$22

$C$DW$T$30	.dwtag  DW_TAG_typedef, DW_AT_name("jpec_block_t")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$30, DW_AT_language(DW_LANG_C)
$C$DW$T$36	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$36, DW_AT_address_class(0x17)

$C$DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$25, DW_AT_name("jpec_buffer_t_")
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x06)
$C$DW$495	.dwtag  DW_TAG_member
	.dwattr $C$DW$495, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$495, DW_AT_name("stream")
	.dwattr $C$DW$495, DW_AT_TI_symbol_name("_stream")
	.dwattr $C$DW$495, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$495, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$496	.dwtag  DW_TAG_member
	.dwattr $C$DW$496, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$496, DW_AT_name("len")
	.dwattr $C$DW$496, DW_AT_TI_symbol_name("_len")
	.dwattr $C$DW$496, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$496, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$497	.dwtag  DW_TAG_member
	.dwattr $C$DW$497, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$497, DW_AT_name("siz")
	.dwattr $C$DW$497, DW_AT_TI_symbol_name("_siz")
	.dwattr $C$DW$497, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$497, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$25

$C$DW$T$28	.dwtag  DW_TAG_typedef, DW_AT_name("jpec_buffer_t")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C)
$C$DW$T$29	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$29, DW_AT_address_class(0x17)

$C$DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$33, DW_AT_name("jpec_enc_t_")
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x214)
$C$DW$498	.dwtag  DW_TAG_member
	.dwattr $C$DW$498, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$498, DW_AT_name("img")
	.dwattr $C$DW$498, DW_AT_TI_symbol_name("_img")
	.dwattr $C$DW$498, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$498, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$499	.dwtag  DW_TAG_member
	.dwattr $C$DW$499, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$499, DW_AT_name("w")
	.dwattr $C$DW$499, DW_AT_TI_symbol_name("_w")
	.dwattr $C$DW$499, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$499, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$500	.dwtag  DW_TAG_member
	.dwattr $C$DW$500, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$500, DW_AT_name("h")
	.dwattr $C$DW$500, DW_AT_TI_symbol_name("_h")
	.dwattr $C$DW$500, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$500, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$501	.dwtag  DW_TAG_member
	.dwattr $C$DW$501, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$501, DW_AT_name("w8")
	.dwattr $C$DW$501, DW_AT_TI_symbol_name("_w8")
	.dwattr $C$DW$501, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$501, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$502	.dwtag  DW_TAG_member
	.dwattr $C$DW$502, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$502, DW_AT_name("buf")
	.dwattr $C$DW$502, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$502, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$502, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$503	.dwtag  DW_TAG_member
	.dwattr $C$DW$503, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$503, DW_AT_name("qual")
	.dwattr $C$DW$503, DW_AT_TI_symbol_name("_qual")
	.dwattr $C$DW$503, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$503, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$504	.dwtag  DW_TAG_member
	.dwattr $C$DW$504, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$504, DW_AT_name("dqt")
	.dwattr $C$DW$504, DW_AT_TI_symbol_name("_dqt")
	.dwattr $C$DW$504, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$504, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$505	.dwtag  DW_TAG_member
	.dwattr $C$DW$505, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$505, DW_AT_name("bmax")
	.dwattr $C$DW$505, DW_AT_TI_symbol_name("_bmax")
	.dwattr $C$DW$505, DW_AT_data_member_location[DW_OP_plus_uconst 0x8a]
	.dwattr $C$DW$505, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$506	.dwtag  DW_TAG_member
	.dwattr $C$DW$506, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$506, DW_AT_name("bnum")
	.dwattr $C$DW$506, DW_AT_TI_symbol_name("_bnum")
	.dwattr $C$DW$506, DW_AT_data_member_location[DW_OP_plus_uconst 0x8c]
	.dwattr $C$DW$506, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$507	.dwtag  DW_TAG_member
	.dwattr $C$DW$507, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$507, DW_AT_name("bx")
	.dwattr $C$DW$507, DW_AT_TI_symbol_name("_bx")
	.dwattr $C$DW$507, DW_AT_data_member_location[DW_OP_plus_uconst 0x8e]
	.dwattr $C$DW$507, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$508	.dwtag  DW_TAG_member
	.dwattr $C$DW$508, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$508, DW_AT_name("by")
	.dwattr $C$DW$508, DW_AT_TI_symbol_name("_by")
	.dwattr $C$DW$508, DW_AT_data_member_location[DW_OP_plus_uconst 0x8f]
	.dwattr $C$DW$508, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$509	.dwtag  DW_TAG_member
	.dwattr $C$DW$509, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$509, DW_AT_name("block")
	.dwattr $C$DW$509, DW_AT_TI_symbol_name("_block")
	.dwattr $C$DW$509, DW_AT_data_member_location[DW_OP_plus_uconst 0x90]
	.dwattr $C$DW$509, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$510	.dwtag  DW_TAG_member
	.dwattr $C$DW$510, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$510, DW_AT_name("hskel")
	.dwattr $C$DW$510, DW_AT_TI_symbol_name("_hskel")
	.dwattr $C$DW$510, DW_AT_data_member_location[DW_OP_plus_uconst 0x212]
	.dwattr $C$DW$510, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$33

$C$DW$T$44	.dwtag  DW_TAG_typedef, DW_AT_name("jpec_enc_t")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)
$C$DW$T$45	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$45, DW_AT_address_class(0x17)

$C$DW$T$39	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$39, DW_AT_name("jpec_huff_skel_t_")
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x06)
$C$DW$511	.dwtag  DW_TAG_member
	.dwattr $C$DW$511, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$511, DW_AT_name("opq")
	.dwattr $C$DW$511, DW_AT_TI_symbol_name("_opq")
	.dwattr $C$DW$511, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$511, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$512	.dwtag  DW_TAG_member
	.dwattr $C$DW$512, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$512, DW_AT_name("del")
	.dwattr $C$DW$512, DW_AT_TI_symbol_name("_del")
	.dwattr $C$DW$512, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$512, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$513	.dwtag  DW_TAG_member
	.dwattr $C$DW$513, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$513, DW_AT_name("encode_block")
	.dwattr $C$DW$513, DW_AT_TI_symbol_name("_encode_block")
	.dwattr $C$DW$513, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$513, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$39

$C$DW$T$31	.dwtag  DW_TAG_typedef, DW_AT_name("jpec_huff_skel_t")
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$31, DW_AT_language(DW_LANG_C)
$C$DW$T$32	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$32, DW_AT_address_class(0x17)
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

$C$DW$514	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$514, DW_AT_location[DW_OP_reg0]
$C$DW$515	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$515, DW_AT_location[DW_OP_reg1]
$C$DW$516	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$516, DW_AT_location[DW_OP_reg2]
$C$DW$517	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$517, DW_AT_location[DW_OP_reg3]
$C$DW$518	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$518, DW_AT_location[DW_OP_reg4]
$C$DW$519	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$519, DW_AT_location[DW_OP_reg5]
$C$DW$520	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$520, DW_AT_location[DW_OP_reg6]
$C$DW$521	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$521, DW_AT_location[DW_OP_reg7]
$C$DW$522	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$522, DW_AT_location[DW_OP_reg8]
$C$DW$523	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$523, DW_AT_location[DW_OP_reg9]
$C$DW$524	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$524, DW_AT_location[DW_OP_reg10]
$C$DW$525	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$525, DW_AT_location[DW_OP_reg11]
$C$DW$526	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$526, DW_AT_location[DW_OP_reg12]
$C$DW$527	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$527, DW_AT_location[DW_OP_reg13]
$C$DW$528	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$528, DW_AT_location[DW_OP_reg14]
$C$DW$529	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$529, DW_AT_location[DW_OP_reg15]
$C$DW$530	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$530, DW_AT_location[DW_OP_reg16]
$C$DW$531	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$531, DW_AT_location[DW_OP_reg17]
$C$DW$532	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$532, DW_AT_location[DW_OP_reg18]
$C$DW$533	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$533, DW_AT_location[DW_OP_reg19]
$C$DW$534	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$534, DW_AT_location[DW_OP_reg20]
$C$DW$535	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$535, DW_AT_location[DW_OP_reg21]
$C$DW$536	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$536, DW_AT_location[DW_OP_reg22]
$C$DW$537	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$537, DW_AT_location[DW_OP_reg23]
$C$DW$538	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$538, DW_AT_location[DW_OP_reg24]
$C$DW$539	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$539, DW_AT_location[DW_OP_reg25]
$C$DW$540	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$540, DW_AT_location[DW_OP_reg26]
$C$DW$541	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$541, DW_AT_location[DW_OP_reg27]
$C$DW$542	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$542, DW_AT_location[DW_OP_reg28]
$C$DW$543	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$543, DW_AT_location[DW_OP_reg29]
$C$DW$544	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$544, DW_AT_location[DW_OP_reg30]
$C$DW$545	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$545, DW_AT_location[DW_OP_reg31]
$C$DW$546	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$546, DW_AT_location[DW_OP_regx 0x20]
$C$DW$547	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$547, DW_AT_location[DW_OP_regx 0x21]
$C$DW$548	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$548, DW_AT_location[DW_OP_regx 0x22]
$C$DW$549	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$549, DW_AT_location[DW_OP_regx 0x23]
$C$DW$550	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$550, DW_AT_location[DW_OP_regx 0x24]
$C$DW$551	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$551, DW_AT_location[DW_OP_regx 0x25]
$C$DW$552	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$552, DW_AT_location[DW_OP_regx 0x26]
$C$DW$553	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$553, DW_AT_location[DW_OP_regx 0x27]
$C$DW$554	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$554, DW_AT_location[DW_OP_regx 0x28]
$C$DW$555	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$555, DW_AT_location[DW_OP_regx 0x29]
$C$DW$556	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$556, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$557	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$557, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$558	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$558, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$559	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$559, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$560	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$560, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$561	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$561, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$562	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$562, DW_AT_location[DW_OP_regx 0x30]
$C$DW$563	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$563, DW_AT_location[DW_OP_regx 0x31]
$C$DW$564	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$564, DW_AT_location[DW_OP_regx 0x32]
$C$DW$565	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$565, DW_AT_location[DW_OP_regx 0x33]
$C$DW$566	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$566, DW_AT_location[DW_OP_regx 0x34]
$C$DW$567	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$567, DW_AT_location[DW_OP_regx 0x35]
$C$DW$568	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$568, DW_AT_location[DW_OP_regx 0x36]
$C$DW$569	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$569, DW_AT_location[DW_OP_regx 0x37]
$C$DW$570	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$570, DW_AT_location[DW_OP_regx 0x38]
$C$DW$571	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$571, DW_AT_location[DW_OP_regx 0x39]
$C$DW$572	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$572, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$573	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$573, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$574	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$574, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$575	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$575, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$576	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$576, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$577	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$577, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$578	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$578, DW_AT_location[DW_OP_regx 0x40]
$C$DW$579	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$579, DW_AT_location[DW_OP_regx 0x41]
$C$DW$580	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$580, DW_AT_location[DW_OP_regx 0x42]
$C$DW$581	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$581, DW_AT_location[DW_OP_regx 0x43]
$C$DW$582	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$582, DW_AT_location[DW_OP_regx 0x44]
$C$DW$583	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$583, DW_AT_location[DW_OP_regx 0x45]
$C$DW$584	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$584, DW_AT_location[DW_OP_regx 0x46]
$C$DW$585	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$585, DW_AT_location[DW_OP_regx 0x47]
$C$DW$586	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$586, DW_AT_location[DW_OP_regx 0x48]
$C$DW$587	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$587, DW_AT_location[DW_OP_regx 0x49]
$C$DW$588	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$588, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$589	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$589, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$590	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$590, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$591	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$591, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$592	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$592, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$593	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$593, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$594	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$594, DW_AT_location[DW_OP_regx 0x50]
$C$DW$595	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$595, DW_AT_location[DW_OP_regx 0x51]
$C$DW$596	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$596, DW_AT_location[DW_OP_regx 0x52]
$C$DW$597	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$597, DW_AT_location[DW_OP_regx 0x53]
$C$DW$598	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$598, DW_AT_location[DW_OP_regx 0x54]
$C$DW$599	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$599, DW_AT_location[DW_OP_regx 0x55]
$C$DW$600	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$600, DW_AT_location[DW_OP_regx 0x56]
$C$DW$601	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$601, DW_AT_location[DW_OP_regx 0x57]
$C$DW$602	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$602, DW_AT_location[DW_OP_regx 0x58]
$C$DW$603	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$603, DW_AT_location[DW_OP_regx 0x59]
$C$DW$604	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$604, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$605	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$605, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

