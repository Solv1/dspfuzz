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
	.dwattr $C$DW$CU, DW_AT_name("./enc.c")
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
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$42)
	.dwendtag $C$DW$1


$C$DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("jpec_buffer_new2")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_jpec_buffer_new2")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$4, DW_AT_declaration
	.dwattr $C$DW$4, DW_AT_external
$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$20)
	.dwendtag $C$DW$4


$C$DW$6	.dwtag  DW_TAG_subprogram, DW_AT_name("jpec_buffer_write_byte")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$6, DW_AT_declaration
	.dwattr $C$DW$6, DW_AT_external
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$29)
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$20)
	.dwendtag $C$DW$6


$C$DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("jpec_buffer_write_2bytes")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_jpec_buffer_write_2bytes")
	.dwattr $C$DW$9, DW_AT_declaration
	.dwattr $C$DW$9, DW_AT_external
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$29)
$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$20)
	.dwendtag $C$DW$9


$C$DW$12	.dwtag  DW_TAG_subprogram, DW_AT_name("jpec_huff_skel_init")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_jpec_huff_skel_init")
	.dwattr $C$DW$12, DW_AT_declaration
	.dwattr $C$DW$12, DW_AT_external
$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$32)
	.dwendtag $C$DW$12

$C$DW$14	.dwtag  DW_TAG_variable, DW_AT_name("jpec_qzr")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_jpec_qzr")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$14, DW_AT_declaration
	.dwattr $C$DW$14, DW_AT_external
$C$DW$15	.dwtag  DW_TAG_variable, DW_AT_name("jpec_dct")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_jpec_dct")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$15, DW_AT_declaration
	.dwattr $C$DW$15, DW_AT_external
$C$DW$16	.dwtag  DW_TAG_variable, DW_AT_name("jpec_zz")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_jpec_zz")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$16, DW_AT_declaration
	.dwattr $C$DW$16, DW_AT_external
$C$DW$17	.dwtag  DW_TAG_variable, DW_AT_name("jpec_dc_nodes")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_jpec_dc_nodes")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$17, DW_AT_declaration
	.dwattr $C$DW$17, DW_AT_external
$C$DW$18	.dwtag  DW_TAG_variable, DW_AT_name("jpec_dc_nb_vals")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_jpec_dc_nb_vals")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$18, DW_AT_declaration
	.dwattr $C$DW$18, DW_AT_external
$C$DW$19	.dwtag  DW_TAG_variable, DW_AT_name("jpec_dc_vals")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_jpec_dc_vals")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$19, DW_AT_declaration
	.dwattr $C$DW$19, DW_AT_external
$C$DW$20	.dwtag  DW_TAG_variable, DW_AT_name("jpec_ac_nodes")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_jpec_ac_nodes")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$20, DW_AT_declaration
	.dwattr $C$DW$20, DW_AT_external
$C$DW$21	.dwtag  DW_TAG_variable, DW_AT_name("jpec_ac_nb_vals")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_jpec_ac_nb_vals")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$21, DW_AT_declaration
	.dwattr $C$DW$21, DW_AT_external
$C$DW$22	.dwtag  DW_TAG_variable, DW_AT_name("jpec_ac_vals")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_jpec_ac_vals")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$22, DW_AT_declaration
	.dwattr $C$DW$22, DW_AT_external
	.global	_g_jpec_huff_skel
	.bss	_g_jpec_huff_skel,6,0,2
$C$DW$23	.dwtag  DW_TAG_variable, DW_AT_name("g_jpec_huff_skel")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_g_jpec_huff_skel")
	.dwattr $C$DW$23, DW_AT_location[DW_OP_addr _g_jpec_huff_skel]
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$23, DW_AT_external
	.global	_g_jpec_enc
	.bss	_g_jpec_enc,532,0,2
$C$DW$24	.dwtag  DW_TAG_variable, DW_AT_name("g_jpec_enc")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_g_jpec_enc")
	.dwattr $C$DW$24, DW_AT_location[DW_OP_addr _g_jpec_enc]
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$24, DW_AT_external
;	/home/santiago/Research/Ti/C55_Tools/acp55 -@/tmp/15084dHKXoC 
	.sect	".text"
	.global	_jpec_enc_new2

$C$DW$25	.dwtag  DW_TAG_subprogram, DW_AT_name("jpec_enc_new2")
	.dwattr $C$DW$25, DW_AT_low_pc(_jpec_enc_new2)
	.dwattr $C$DW$25, DW_AT_high_pc(0x00)
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_jpec_enc_new2")
	.dwattr $C$DW$25, DW_AT_external
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$25, DW_AT_TI_begin_file("./enc.c")
	.dwattr $C$DW$25, DW_AT_TI_begin_line(0x32)
	.dwattr $C$DW$25, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$25, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "./enc.c",line 51,column 1,is_stmt,address _jpec_enc_new2

	.dwfde $C$DW$CIE, _jpec_enc_new2
$C$DW$26	.dwtag  DW_TAG_formal_parameter, DW_AT_name("img")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_img")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_reg17]
$C$DW$27	.dwtag  DW_TAG_formal_parameter, DW_AT_name("w")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_w")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_reg12]
$C$DW$28	.dwtag  DW_TAG_formal_parameter, DW_AT_name("h")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_h")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_reg13]
$C$DW$29	.dwtag  DW_TAG_formal_parameter, DW_AT_name("q")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_q")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_reg0]
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
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-11, SP
	.dwcfi	cfa_offset, 12
$C$DW$30	.dwtag  DW_TAG_variable, DW_AT_name("img")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_img")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$31	.dwtag  DW_TAG_variable, DW_AT_name("w")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_w")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$32	.dwtag  DW_TAG_variable, DW_AT_name("h")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_h")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$33	.dwtag  DW_TAG_variable, DW_AT_name("q")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_q")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$34	.dwtag  DW_TAG_variable, DW_AT_name("e")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$35	.dwtag  DW_TAG_variable, DW_AT_name("bsiz")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_bsiz")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_bregx 0x24 8]
        MOV AC0, dbl(*SP(#4)) ; |51| 
        MOV T1, *SP(#3) ; |51| 
        MOV T0, *SP(#2) ; |51| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./enc.c",line 52,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0

        BCC $C$L1,AC0 == #0 ; |52| 
||      MOV #0, AR1

                                        ; branchcc occurs ; |52| 
        MOV *SP(#2), AR2 ; |52| 
        BCC $C$L1,AR2 == #0 ; |52| 
                                        ; branchcc occurs ; |52| 
        BAND *SP(#2), #7, TC1 ; |52| 
        BCC $C$L1,TC1 ; |52| 
                                        ; branchcc occurs ; |52| 
        MOV *SP(#3), AR2 ; |52| 
        BCC $C$L1,AR2 == #0 ; |52| 
                                        ; branchcc occurs ; |52| 
        BAND *SP(#3), #7, TC1 ; |52| 
        BCC $C$L1,TC1 ; |52| 
                                        ; branchcc occurs ; |52| 
        MOV #1, AR1
$C$L1:    
        BCC $C$L2,AR1 != #0 ; |52| 
                                        ; branchcc occurs ; |52| 
        AMOV #$C$FSL1, XAR0 ; |52| 
$C$DW$36	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$36, DW_AT_low_pc(0x00)
	.dwattr $C$DW$36, DW_AT_name("__abort_msg")
	.dwattr $C$DW$36, DW_AT_TI_call
        CALL #__abort_msg ; |52| 
                                        ; call occurs [#__abort_msg] ; |52| 
$C$L2:    
	.dwpsn	file "./enc.c",line 53,column 17,is_stmt
        AMOV #_g_jpec_enc, XAR3 ; |53| 
        MOV XAR3, dbl(*SP(#6))
	.dwpsn	file "./enc.c",line 54,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR2
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, dbl(*AR2)
	.dwpsn	file "./enc.c",line 55,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV *SP(#2), AR1 ; |55| 
        MOV AR1, *AR3(short(#2)) ; |55| 
	.dwpsn	file "./enc.c",line 56,column 5,is_stmt
        MOV *SP(#2), AC0 ; |56| 
        MOV dbl(*SP(#6)), XAR3
        SUB #1, AC0 ; |56| 
        BFXTR #0xfff8, AC0, AC0 ; |56| 
        ADD #1, AC0 ; |56| 
        SFTL AC0, #3, AC0 ; |56| 
        MOV AC0, *AR3(short(#4)) ; |56| 
	.dwpsn	file "./enc.c",line 57,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV *SP(#3), AR1 ; |57| 
        MOV AR1, *AR3(short(#3)) ; |57| 
	.dwpsn	file "./enc.c",line 58,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV dbl(*SP(#4)), AC0 ; |58| 
        MOV AC0, dbl(*AR3(#8)) ; |58| 
	.dwpsn	file "./enc.c",line 59,column 5,is_stmt
        MOV *SP(#2), AC0 ; |59| 
        SUB #1, AC0 ; |59| 
        BFXTR #0xfff8, AC0, T1 ; |59| 
        MOV dbl(*SP(#6)), XAR3
        MOV *SP(#3), AC0 ; |59| 
        SUB #1, AC0 ; |59| 
        BFXTR #0xfff8, AC0, AR1 ; |59| 
        MOV AR1, HI(AC0)
        MOV HI(AC0), AR1
        ADD #1, AR1 ; |59| 

        MOV AR1, HI(AC0)
||      ADD #1, T1 ; |59| 

        MPY T1, AC0, AC0 ; |59| 
        AND #0xffff, AC0, AC0 ; |59| 
        MOV AC0, dbl(*AR3(#138)) ; |59| 
	.dwpsn	file "./enc.c",line 60,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #-1, AC0 ; |60| 
        MOV AC0, dbl(*AR3(#140)) ; |60| 
	.dwpsn	file "./enc.c",line 61,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #65535, *AR3(#142) ; |61| 
	.dwpsn	file "./enc.c",line 62,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #65535, *AR3(#143) ; |62| 
	.dwpsn	file "./enc.c",line 63,column 13,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV dbl(*AR3(#138)), AC0 ; |63| 
        SFTS AC0, #5, AC1 ; |63| 
        SUB AC0 << #1, AC1 ; |63| 
        ADD #330, AC1, AC0 ; |63| 
        MOV AC0, dbl(*SP(#8)) ; |63| 
	.dwpsn	file "./enc.c",line 64,column 5,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |64| 
$C$DW$37	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$37, DW_AT_low_pc(0x00)
	.dwattr $C$DW$37, DW_AT_name("_jpec_buffer_new2")
	.dwattr $C$DW$37, DW_AT_TI_call
        CALL #_jpec_buffer_new2 ; |64| 
                                        ; call occurs [#_jpec_buffer_new2] ; |64| 
        MOV dbl(*SP(#6)), XAR3
        MOV XAR0, dbl(*AR3(short(#6)))
	.dwpsn	file "./enc.c",line 65,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR2
        AMOV #_g_jpec_huff_skel, XAR3 ; |65| 
        MOV XAR3, dbl(*AR2(#530))
	.dwpsn	file "./enc.c",line 66,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR0
	.dwpsn	file "./enc.c",line 67,column 1,is_stmt
        AADD #11, SP
	.dwcfi	cfa_offset, 1
$C$DW$38	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$38, DW_AT_low_pc(0x00)
	.dwattr $C$DW$38, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$25, DW_AT_TI_end_file("./enc.c")
	.dwattr $C$DW$25, DW_AT_TI_end_line(0x43)
	.dwattr $C$DW$25, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$25

	.sect	".text"
	.global	_jpec_enc_run

$C$DW$39	.dwtag  DW_TAG_subprogram, DW_AT_name("jpec_enc_run")
	.dwattr $C$DW$39, DW_AT_low_pc(_jpec_enc_run)
	.dwattr $C$DW$39, DW_AT_high_pc(0x00)
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_jpec_enc_run")
	.dwattr $C$DW$39, DW_AT_external
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$39, DW_AT_TI_begin_file("./enc.c")
	.dwattr $C$DW$39, DW_AT_TI_begin_line(0x45)
	.dwattr $C$DW$39, DW_AT_TI_begin_column(0x11)
	.dwattr $C$DW$39, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "./enc.c",line 70,column 1,is_stmt,address _jpec_enc_run

	.dwfde $C$DW$CIE, _jpec_enc_run
$C$DW$40	.dwtag  DW_TAG_formal_parameter, DW_AT_name("e")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_reg17]
$C$DW$41	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_len")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_reg19]
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
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$42	.dwtag  DW_TAG_variable, DW_AT_name("e")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$43	.dwtag  DW_TAG_variable, DW_AT_name("len")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_len")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./enc.c",line 71,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0

        BCC $C$L3,AC0 == #0 ; |71| 
||      MOV #0, AR1

                                        ; branchcc occurs ; |71| 
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        BCC $C$L3,AC0 == #0 ; |71| 
                                        ; branchcc occurs ; |71| 
        MOV #1, AR1
$C$L3:    
        BCC $C$L4,AR1 != #0 ; |71| 
                                        ; branchcc occurs ; |71| 
        AMOV #$C$FSL2, XAR0 ; |71| 
$C$DW$44	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$44, DW_AT_low_pc(0x00)
	.dwattr $C$DW$44, DW_AT_name("__abort_msg")
	.dwattr $C$DW$44, DW_AT_TI_call
        CALL #__abort_msg ; |71| 
                                        ; call occurs [#__abort_msg] ; |71| 
$C$L4:    
	.dwpsn	file "./enc.c",line 72,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$45	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$45, DW_AT_low_pc(0x00)
	.dwattr $C$DW$45, DW_AT_name("_jpec_enc_open")
	.dwattr $C$DW$45, DW_AT_TI_call
        CALL #_jpec_enc_open ; |72| 
                                        ; call occurs [#_jpec_enc_open] ; |72| 
	.dwpsn	file "./enc.c",line 73,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$46	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$46, DW_AT_low_pc(0x00)
	.dwattr $C$DW$46, DW_AT_name("_jpec_enc_next_block")
	.dwattr $C$DW$46, DW_AT_TI_call
        CALL #_jpec_enc_next_block ; |73| 
                                        ; call occurs [#_jpec_enc_next_block] ; |73| 
        BCC $C$L6,AC0 == #0 ; |73| 
                                        ; branchcc occurs ; |73| 
$C$L5:    
$C$DW$L$_jpec_enc_run$7$B:
	.dwpsn	file "./enc.c",line 75,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$47	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$47, DW_AT_low_pc(0x00)
	.dwattr $C$DW$47, DW_AT_name("_jpec_enc_block_dct")
	.dwattr $C$DW$47, DW_AT_TI_call
        CALL #_jpec_enc_block_dct ; |75| 
                                        ; call occurs [#_jpec_enc_block_dct] ; |75| 
	.dwpsn	file "./enc.c",line 76,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$48	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$48, DW_AT_low_pc(0x00)
	.dwattr $C$DW$48, DW_AT_name("_jpec_enc_block_quant")
	.dwattr $C$DW$48, DW_AT_TI_call
        CALL #_jpec_enc_block_quant ; |76| 
                                        ; call occurs [#_jpec_enc_block_quant] ; |76| 
	.dwpsn	file "./enc.c",line 77,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$49	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$49, DW_AT_low_pc(0x00)
	.dwattr $C$DW$49, DW_AT_name("_jpec_enc_block_zz")
	.dwattr $C$DW$49, DW_AT_TI_call
        CALL #_jpec_enc_block_zz ; |77| 
                                        ; call occurs [#_jpec_enc_block_zz] ; |77| 
	.dwpsn	file "./enc.c",line 78,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#530)), XAR3
        MOV dbl(*AR3(short(#4))), AC0 ; |78| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#530)), XAR3
        MOV dbl(*SP(#0)), XAR1
        MOV dbl(*AR3), XAR0
        MOV dbl(*SP(#0)), XAR3
        AMAR *+AR1(#144) ; |78| 
        MOV dbl(*AR3(short(#6))), XAR2
$C$DW$50	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$50, DW_AT_low_pc(0x00)
	.dwattr $C$DW$50, DW_AT_TI_call
	.dwattr $C$DW$50, DW_AT_TI_indirect
        CALL AC0  ; |78| 
                                        ; call occurs [AC0] ; |78| 
	.dwpsn	file "./enc.c",line 79,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$51	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$51, DW_AT_low_pc(0x00)
	.dwattr $C$DW$51, DW_AT_name("_jpec_enc_next_block")
	.dwattr $C$DW$51, DW_AT_TI_call
        CALL #_jpec_enc_next_block ; |79| 
                                        ; call occurs [#_jpec_enc_next_block] ; |79| 
        BCC $C$L5,AC0 != #0 ; |79| 
                                        ; branchcc occurs ; |79| 
$C$DW$L$_jpec_enc_run$7$E:
$C$L6:    
	.dwpsn	file "./enc.c",line 80,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$52	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$52, DW_AT_low_pc(0x00)
	.dwattr $C$DW$52, DW_AT_name("_jpec_enc_close")
	.dwattr $C$DW$52, DW_AT_TI_call
        CALL #_jpec_enc_close ; |80| 
                                        ; call occurs [#_jpec_enc_close] ; |80| 
	.dwpsn	file "./enc.c",line 81,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#6))), XAR3
        MOV dbl(*SP(#2)), XAR2
        AADD #2, AR3 ; |81| 
        MOV dbl(*AR3), dbl(*AR2) ; |81| 
	.dwpsn	file "./enc.c",line 82,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#6))), XAR3
        MOV dbl(*AR3), XAR0
	.dwpsn	file "./enc.c",line 83,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$53	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$53, DW_AT_low_pc(0x00)
	.dwattr $C$DW$53, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$54	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$54, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/jpeg/enc.asm:$C$L5:1:1725826347")
	.dwattr $C$DW$54, DW_AT_TI_begin_file("./enc.c")
	.dwattr $C$DW$54, DW_AT_TI_begin_line(0x49)
	.dwattr $C$DW$54, DW_AT_TI_end_line(0x4f)
$C$DW$55	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$55, DW_AT_low_pc($C$DW$L$_jpec_enc_run$7$B)
	.dwattr $C$DW$55, DW_AT_high_pc($C$DW$L$_jpec_enc_run$7$E)
	.dwendtag $C$DW$54

	.dwattr $C$DW$39, DW_AT_TI_end_file("./enc.c")
	.dwattr $C$DW$39, DW_AT_TI_end_line(0x53)
	.dwattr $C$DW$39, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$39

	.sect	".text"

$C$DW$56	.dwtag  DW_TAG_subprogram, DW_AT_name("jpec_enc_init_dqt")
	.dwattr $C$DW$56, DW_AT_low_pc(_jpec_enc_init_dqt)
	.dwattr $C$DW$56, DW_AT_high_pc(0x00)
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_jpec_enc_init_dqt")
	.dwattr $C$DW$56, DW_AT_TI_begin_file("./enc.c")
	.dwattr $C$DW$56, DW_AT_TI_begin_line(0x56)
	.dwattr $C$DW$56, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$56, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "./enc.c",line 87,column 1,is_stmt,address _jpec_enc_init_dqt

	.dwfde $C$DW$CIE, _jpec_enc_init_dqt
$C$DW$57	.dwtag  DW_TAG_formal_parameter, DW_AT_name("e")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_reg17]
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
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-11, SP
	.dwcfi	cfa_offset, 12
$C$DW$58	.dwtag  DW_TAG_variable, DW_AT_name("e")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$59	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$60	.dwtag  DW_TAG_variable, DW_AT_name("qualf")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_qualf")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$61	.dwtag  DW_TAG_variable, DW_AT_name("scale")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_scale")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$61, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./enc.c",line 89,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L7,AC0 != #0 ; |89| 
                                        ; branchcc occurs ; |89| 
        AMOV #$C$FSL3, XAR0 ; |89| 
$C$DW$62	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$62, DW_AT_low_pc(0x00)
	.dwattr $C$DW$62, DW_AT_name("__abort_msg")
	.dwattr $C$DW$62, DW_AT_TI_call
        CALL #__abort_msg ; |89| 
                                        ; call occurs [#__abort_msg] ; |89| 
$C$L7:    
	.dwpsn	file "./enc.c",line 90,column 11,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#8)), AC0 ; |90| 
$C$DW$63	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$63, DW_AT_low_pc(0x00)
	.dwattr $C$DW$63, DW_AT_name("__fltlid")
	.dwattr $C$DW$63, DW_AT_TI_call
        CALL #__fltlid ; |90| 
                                        ; call occurs [#__fltlid] ; |90| 
        MOV AC0, dbl(*SP(#4)) ; |90| 
	.dwpsn	file "./enc.c",line 91,column 11,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #50, AC0 ; |91| 
        MOV dbl(*AR3(#8)), AC1 ; |91| 
        CMP AC1 >= AC0, TC1 ; |91| 
        BCC $C$L8,TC1 ; |91| 
                                        ; branchcc occurs ; |91| 
        MOV dbl(*SP(#4)), AC1 ; |91| 
        MOV dbl(*($C$FL1)), AC0 ; |91| 
$C$DW$64	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$64, DW_AT_low_pc(0x00)
	.dwattr $C$DW$64, DW_AT_name("__divd")
	.dwattr $C$DW$64, DW_AT_TI_call
        CALL #__divd ; |91| 
                                        ; call occurs [#__divd] ; |91| 
        B $C$L9   ; |91| 
                                        ; branch occurs ; |91| 
$C$L8:    
        MOV dbl(*SP(#4)), AC0 ; |91| 
        MOV dbl(*($C$FL1)), AC1 ; |91| 
$C$DW$65	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$65, DW_AT_low_pc(0x00)
	.dwattr $C$DW$65, DW_AT_name("__divd")
	.dwattr $C$DW$65, DW_AT_TI_call
        CALL #__divd ; |91| 
                                        ; call occurs [#__divd] ; |91| 
        OR #0, AC0, AC1
        MOV dbl(*($C$FL2)), AC0 ; |91| 
$C$DW$66	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$66, DW_AT_low_pc(0x00)
	.dwattr $C$DW$66, DW_AT_name("__subd")
	.dwattr $C$DW$66, DW_AT_TI_call
        CALL #__subd ; |91| 
                                        ; call occurs [#__subd] ; |91| 
$C$L9:    
        MOV AC0, dbl(*SP(#6)) ; |91| 
	.dwpsn	file "./enc.c",line 92,column 10,is_stmt
        MOV #0, AC0 ; |92| 
        MOV AC0, dbl(*SP(#2)) ; |92| 
	.dwpsn	file "./enc.c",line 92,column 17,is_stmt
        MOV dbl(*SP(#2)), AC1 ; |92| 
        MOV #64, AC0 ; |92| 
        CMP AC1 >= AC0, TC1 ; |92| 
        BCC $C$L13,TC1 ; |92| 
                                        ; branchcc occurs ; |92| 
$C$L10:    
$C$DW$L$_jpec_enc_init_dqt$7$B:

$C$DW$67	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$68	.dwtag  DW_TAG_variable, DW_AT_name("a")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_a")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$68, DW_AT_location[DW_OP_bregx 0x24 8]
	.dwpsn	file "./enc.c",line 94,column 17,is_stmt
        MOV *SP(#3), T0 ; |94| 
        AMOV #_jpec_qzr, XAR3 ; |94| 
        MOV *AR3(T0), T0 ; |94| 
$C$DW$69	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$69, DW_AT_low_pc(0x00)
	.dwattr $C$DW$69, DW_AT_name("__fltud")
	.dwattr $C$DW$69, DW_AT_TI_call
        CALL #__fltud ; |94| 
                                        ; call occurs [#__fltud] ; |94| 
        MOV dbl(*SP(#6)), AC1 ; |94| 
$C$DW$70	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$70, DW_AT_low_pc(0x00)
	.dwattr $C$DW$70, DW_AT_name("__mpyd")
	.dwattr $C$DW$70, DW_AT_TI_call
        CALL #__mpyd ; |94| 
                                        ; call occurs [#__mpyd] ; |94| 
        MOV dbl(*($C$FL3)), AC1 ; |94| 
$C$DW$71	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$71, DW_AT_low_pc(0x00)
	.dwattr $C$DW$71, DW_AT_name("__addd")
	.dwattr $C$DW$71, DW_AT_TI_call
        CALL #__addd ; |94| 
                                        ; call occurs [#__addd] ; |94| 
$C$DW$72	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$72, DW_AT_low_pc(0x00)
	.dwattr $C$DW$72, DW_AT_name("__fixdli")
	.dwattr $C$DW$72, DW_AT_TI_call
        CALL #__fixdli ; |94| 
                                        ; call occurs [#__fixdli] ; |94| 
        MOV AC0, dbl(*SP(#8)) ; |94| 
	.dwpsn	file "./enc.c",line 95,column 9,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |95| 
        BCC $C$L11,AC0 > #0 ; |95| 
                                        ; branchcc occurs ; |95| 
$C$DW$L$_jpec_enc_init_dqt$7$E:
$C$DW$L$_jpec_enc_init_dqt$8$B:

        B $C$L12  ; |95| 
||      MOV #1, AC0 ; |95| 

                                        ; branch occurs ; |95| 
$C$DW$L$_jpec_enc_init_dqt$8$E:
$C$L11:    
$C$DW$L$_jpec_enc_init_dqt$9$B:
        MOV #255, AC0 ; |95| 
        MOV dbl(*SP(#8)), AC1 ; |95| 
        CMP AC1 <= AC0, TC1 ; |95| 
        BCC $C$L12,!TC1 ; |95| 
                                        ; branchcc occurs ; |95| 
$C$DW$L$_jpec_enc_init_dqt$9$E:
$C$DW$L$_jpec_enc_init_dqt$10$B:
        MOV dbl(*SP(#8)), AC0 ; |95| 
$C$DW$L$_jpec_enc_init_dqt$10$E:
$C$L12:    
$C$DW$L$_jpec_enc_init_dqt$11$B:
        MOV AC0, dbl(*SP(#8)) ; |95| 
	.dwpsn	file "./enc.c",line 96,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#3), AR1 ; |96| 
        SFTL AR1, #1 ; |96| 

        AADD AR1, AR3 ; |96| 
||      MOV dbl(*SP(#8)), AC0 ; |96| 

        MOV AC0, dbl(*AR3(#10)) ; |96| 
	.dwendtag $C$DW$67

	.dwpsn	file "./enc.c",line 92,column 25,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |92| 
        ADD #1, AC0 ; |92| 
        MOV AC0, dbl(*SP(#2)) ; |92| 
	.dwpsn	file "./enc.c",line 92,column 17,is_stmt
        MOV #64, AC0 ; |92| 
        MOV dbl(*SP(#2)), AC1 ; |92| 
        CMP AC1 < AC0, TC1 ; |92| 
        BCC $C$L10,TC1 ; |92| 
                                        ; branchcc occurs ; |92| 
$C$DW$L$_jpec_enc_init_dqt$11$E:
	.dwpsn	file "./enc.c",line 98,column 1,is_stmt
$C$L13:    
        AADD #11, SP
	.dwcfi	cfa_offset, 1
$C$DW$73	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$73, DW_AT_low_pc(0x00)
	.dwattr $C$DW$73, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$74	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$74, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/jpeg/enc.asm:$C$L10:1:1725826347")
	.dwattr $C$DW$74, DW_AT_TI_begin_file("./enc.c")
	.dwattr $C$DW$74, DW_AT_TI_begin_line(0x5c)
	.dwattr $C$DW$74, DW_AT_TI_end_line(0x61)
$C$DW$75	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$75, DW_AT_low_pc($C$DW$L$_jpec_enc_init_dqt$7$B)
	.dwattr $C$DW$75, DW_AT_high_pc($C$DW$L$_jpec_enc_init_dqt$7$E)
$C$DW$76	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$76, DW_AT_low_pc($C$DW$L$_jpec_enc_init_dqt$8$B)
	.dwattr $C$DW$76, DW_AT_high_pc($C$DW$L$_jpec_enc_init_dqt$8$E)
$C$DW$77	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$77, DW_AT_low_pc($C$DW$L$_jpec_enc_init_dqt$9$B)
	.dwattr $C$DW$77, DW_AT_high_pc($C$DW$L$_jpec_enc_init_dqt$9$E)
$C$DW$78	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$78, DW_AT_low_pc($C$DW$L$_jpec_enc_init_dqt$10$B)
	.dwattr $C$DW$78, DW_AT_high_pc($C$DW$L$_jpec_enc_init_dqt$10$E)
$C$DW$79	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$79, DW_AT_low_pc($C$DW$L$_jpec_enc_init_dqt$11$B)
	.dwattr $C$DW$79, DW_AT_high_pc($C$DW$L$_jpec_enc_init_dqt$11$E)
	.dwendtag $C$DW$74

	.dwattr $C$DW$56, DW_AT_TI_end_file("./enc.c")
	.dwattr $C$DW$56, DW_AT_TI_end_line(0x62)
	.dwattr $C$DW$56, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$56

	.sect	".text"

$C$DW$80	.dwtag  DW_TAG_subprogram, DW_AT_name("jpec_enc_open")
	.dwattr $C$DW$80, DW_AT_low_pc(_jpec_enc_open)
	.dwattr $C$DW$80, DW_AT_high_pc(0x00)
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_jpec_enc_open")
	.dwattr $C$DW$80, DW_AT_TI_begin_file("./enc.c")
	.dwattr $C$DW$80, DW_AT_TI_begin_line(0x64)
	.dwattr $C$DW$80, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$80, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./enc.c",line 101,column 1,is_stmt,address _jpec_enc_open

	.dwfde $C$DW$CIE, _jpec_enc_open
$C$DW$81	.dwtag  DW_TAG_formal_parameter, DW_AT_name("e")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$81, DW_AT_location[DW_OP_reg17]
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
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$82	.dwtag  DW_TAG_variable, DW_AT_name("e")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./enc.c",line 102,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L14,AC0 != #0 ; |102| 
                                        ; branchcc occurs ; |102| 
        AMOV #$C$FSL4, XAR0 ; |102| 
$C$DW$83	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$83, DW_AT_low_pc(0x00)
	.dwattr $C$DW$83, DW_AT_name("__abort_msg")
	.dwattr $C$DW$83, DW_AT_TI_call
        CALL #__abort_msg ; |102| 
                                        ; call occurs [#__abort_msg] ; |102| 
$C$L14:    
	.dwpsn	file "./enc.c",line 103,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#530)), XAR0
$C$DW$84	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$84, DW_AT_low_pc(0x00)
	.dwattr $C$DW$84, DW_AT_name("_jpec_huff_skel_init")
	.dwattr $C$DW$84, DW_AT_TI_call
        CALL #_jpec_huff_skel_init ; |103| 
                                        ; call occurs [#_jpec_huff_skel_init] ; |103| 
	.dwpsn	file "./enc.c",line 104,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$85	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$85, DW_AT_low_pc(0x00)
	.dwattr $C$DW$85, DW_AT_name("_jpec_enc_init_dqt")
	.dwattr $C$DW$85, DW_AT_TI_call
        CALL #_jpec_enc_init_dqt ; |104| 
                                        ; call occurs [#_jpec_enc_init_dqt] ; |104| 
	.dwpsn	file "./enc.c",line 105,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$86	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$86, DW_AT_low_pc(0x00)
	.dwattr $C$DW$86, DW_AT_name("_jpec_enc_write_soi")
	.dwattr $C$DW$86, DW_AT_TI_call
        CALL #_jpec_enc_write_soi ; |105| 
                                        ; call occurs [#_jpec_enc_write_soi] ; |105| 
	.dwpsn	file "./enc.c",line 106,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$87	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$87, DW_AT_low_pc(0x00)
	.dwattr $C$DW$87, DW_AT_name("_jpec_enc_write_app0")
	.dwattr $C$DW$87, DW_AT_TI_call
        CALL #_jpec_enc_write_app0 ; |106| 
                                        ; call occurs [#_jpec_enc_write_app0] ; |106| 
	.dwpsn	file "./enc.c",line 107,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$88	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$88, DW_AT_low_pc(0x00)
	.dwattr $C$DW$88, DW_AT_name("_jpec_enc_write_dqt")
	.dwattr $C$DW$88, DW_AT_TI_call
        CALL #_jpec_enc_write_dqt ; |107| 
                                        ; call occurs [#_jpec_enc_write_dqt] ; |107| 
	.dwpsn	file "./enc.c",line 108,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$89	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$89, DW_AT_low_pc(0x00)
	.dwattr $C$DW$89, DW_AT_name("_jpec_enc_write_sof0")
	.dwattr $C$DW$89, DW_AT_TI_call
        CALL #_jpec_enc_write_sof0 ; |108| 
                                        ; call occurs [#_jpec_enc_write_sof0] ; |108| 
	.dwpsn	file "./enc.c",line 109,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$90	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$90, DW_AT_low_pc(0x00)
	.dwattr $C$DW$90, DW_AT_name("_jpec_enc_write_dht")
	.dwattr $C$DW$90, DW_AT_TI_call
        CALL #_jpec_enc_write_dht ; |109| 
                                        ; call occurs [#_jpec_enc_write_dht] ; |109| 
	.dwpsn	file "./enc.c",line 110,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$91	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$91, DW_AT_low_pc(0x00)
	.dwattr $C$DW$91, DW_AT_name("_jpec_enc_write_sos")
	.dwattr $C$DW$91, DW_AT_TI_call
        CALL #_jpec_enc_write_sos ; |110| 
                                        ; call occurs [#_jpec_enc_write_sos] ; |110| 
	.dwpsn	file "./enc.c",line 111,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$92	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$92, DW_AT_low_pc(0x00)
	.dwattr $C$DW$92, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$80, DW_AT_TI_end_file("./enc.c")
	.dwattr $C$DW$80, DW_AT_TI_end_line(0x6f)
	.dwattr $C$DW$80, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$80

	.sect	".text"

$C$DW$93	.dwtag  DW_TAG_subprogram, DW_AT_name("jpec_enc_close")
	.dwattr $C$DW$93, DW_AT_low_pc(_jpec_enc_close)
	.dwattr $C$DW$93, DW_AT_high_pc(0x00)
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_jpec_enc_close")
	.dwattr $C$DW$93, DW_AT_TI_begin_file("./enc.c")
	.dwattr $C$DW$93, DW_AT_TI_begin_line(0x71)
	.dwattr $C$DW$93, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$93, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./enc.c",line 114,column 1,is_stmt,address _jpec_enc_close

	.dwfde $C$DW$CIE, _jpec_enc_close
$C$DW$94	.dwtag  DW_TAG_formal_parameter, DW_AT_name("e")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$94, DW_AT_location[DW_OP_reg17]
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
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$95	.dwtag  DW_TAG_variable, DW_AT_name("e")
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$95, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./enc.c",line 115,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L15,AC0 != #0 ; |115| 
                                        ; branchcc occurs ; |115| 
        AMOV #$C$FSL5, XAR0 ; |115| 
$C$DW$96	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$96, DW_AT_low_pc(0x00)
	.dwattr $C$DW$96, DW_AT_name("__abort_msg")
	.dwattr $C$DW$96, DW_AT_TI_call
        CALL #__abort_msg ; |115| 
                                        ; call occurs [#__abort_msg] ; |115| 
$C$L15:    
	.dwpsn	file "./enc.c",line 116,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#530)), XAR3
        MOV dbl(*AR3(short(#2))), AC0 ; |116| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#530)), XAR3
        MOV dbl(*AR3), XAR0
$C$DW$97	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$97, DW_AT_low_pc(0x00)
	.dwattr $C$DW$97, DW_AT_TI_call
	.dwattr $C$DW$97, DW_AT_TI_indirect
        CALL AC0  ; |116| 
                                        ; call occurs [AC0] ; |116| 
	.dwpsn	file "./enc.c",line 117,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #65497, AR1 ; |117| 
        AND #0xffff, AR1, AC0 ; |117| 
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$98	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$98, DW_AT_low_pc(0x00)
	.dwattr $C$DW$98, DW_AT_name("_jpec_buffer_write_2bytes")
	.dwattr $C$DW$98, DW_AT_TI_call
        CALL #_jpec_buffer_write_2bytes ; |117| 
                                        ; call occurs [#_jpec_buffer_write_2bytes] ; |117| 
	.dwpsn	file "./enc.c",line 118,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$99	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$99, DW_AT_low_pc(0x00)
	.dwattr $C$DW$99, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$93, DW_AT_TI_end_file("./enc.c")
	.dwattr $C$DW$93, DW_AT_TI_end_line(0x76)
	.dwattr $C$DW$93, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$93

	.sect	".text"

$C$DW$100	.dwtag  DW_TAG_subprogram, DW_AT_name("jpec_enc_write_soi")
	.dwattr $C$DW$100, DW_AT_low_pc(_jpec_enc_write_soi)
	.dwattr $C$DW$100, DW_AT_high_pc(0x00)
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("_jpec_enc_write_soi")
	.dwattr $C$DW$100, DW_AT_TI_begin_file("./enc.c")
	.dwattr $C$DW$100, DW_AT_TI_begin_line(0x78)
	.dwattr $C$DW$100, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$100, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./enc.c",line 121,column 1,is_stmt,address _jpec_enc_write_soi

	.dwfde $C$DW$CIE, _jpec_enc_write_soi
$C$DW$101	.dwtag  DW_TAG_formal_parameter, DW_AT_name("e")
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$101, DW_AT_location[DW_OP_reg17]
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
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$102	.dwtag  DW_TAG_variable, DW_AT_name("e")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$102, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./enc.c",line 122,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L16,AC0 != #0 ; |122| 
                                        ; branchcc occurs ; |122| 
        AMOV #$C$FSL6, XAR0 ; |122| 
$C$DW$103	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$103, DW_AT_low_pc(0x00)
	.dwattr $C$DW$103, DW_AT_name("__abort_msg")
	.dwattr $C$DW$103, DW_AT_TI_call
        CALL #__abort_msg ; |122| 
                                        ; call occurs [#__abort_msg] ; |122| 
$C$L16:    
	.dwpsn	file "./enc.c",line 123,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #65496, AR1 ; |123| 
        AND #0xffff, AR1, AC0 ; |123| 
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$104	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$104, DW_AT_low_pc(0x00)
	.dwattr $C$DW$104, DW_AT_name("_jpec_buffer_write_2bytes")
	.dwattr $C$DW$104, DW_AT_TI_call
        CALL #_jpec_buffer_write_2bytes ; |123| 
                                        ; call occurs [#_jpec_buffer_write_2bytes] ; |123| 
	.dwpsn	file "./enc.c",line 124,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$105	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$105, DW_AT_low_pc(0x00)
	.dwattr $C$DW$105, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$100, DW_AT_TI_end_file("./enc.c")
	.dwattr $C$DW$100, DW_AT_TI_end_line(0x7c)
	.dwattr $C$DW$100, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$100

	.sect	".text"

$C$DW$106	.dwtag  DW_TAG_subprogram, DW_AT_name("jpec_enc_write_app0")
	.dwattr $C$DW$106, DW_AT_low_pc(_jpec_enc_write_app0)
	.dwattr $C$DW$106, DW_AT_high_pc(0x00)
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_jpec_enc_write_app0")
	.dwattr $C$DW$106, DW_AT_TI_begin_file("./enc.c")
	.dwattr $C$DW$106, DW_AT_TI_begin_line(0x7e)
	.dwattr $C$DW$106, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$106, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./enc.c",line 127,column 1,is_stmt,address _jpec_enc_write_app0

	.dwfde $C$DW$CIE, _jpec_enc_write_app0
$C$DW$107	.dwtag  DW_TAG_formal_parameter, DW_AT_name("e")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$107, DW_AT_location[DW_OP_reg17]
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
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$108	.dwtag  DW_TAG_variable, DW_AT_name("e")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$108, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./enc.c",line 128,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L17,AC0 != #0 ; |128| 
                                        ; branchcc occurs ; |128| 
        AMOV #$C$FSL7, XAR0 ; |128| 
$C$DW$109	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$109, DW_AT_low_pc(0x00)
	.dwattr $C$DW$109, DW_AT_name("__abort_msg")
	.dwattr $C$DW$109, DW_AT_TI_call
        CALL #__abort_msg ; |128| 
                                        ; call occurs [#__abort_msg] ; |128| 
$C$L17:    
	.dwpsn	file "./enc.c",line 129,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #65504, AR1 ; |129| 
        AND #0xffff, AR1, AC0 ; |129| 
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$110	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$110, DW_AT_low_pc(0x00)
	.dwattr $C$DW$110, DW_AT_name("_jpec_buffer_write_2bytes")
	.dwattr $C$DW$110, DW_AT_TI_call
        CALL #_jpec_buffer_write_2bytes ; |129| 
                                        ; call occurs [#_jpec_buffer_write_2bytes] ; |129| 
	.dwpsn	file "./enc.c",line 130,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #16, AC0 ; |130| 
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$111	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$111, DW_AT_low_pc(0x00)
	.dwattr $C$DW$111, DW_AT_name("_jpec_buffer_write_2bytes")
	.dwattr $C$DW$111, DW_AT_TI_call
        CALL #_jpec_buffer_write_2bytes ; |130| 
                                        ; call occurs [#_jpec_buffer_write_2bytes] ; |130| 
	.dwpsn	file "./enc.c",line 131,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #74, AC0 ; |131| 
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$112	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$112, DW_AT_low_pc(0x00)
	.dwattr $C$DW$112, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$112, DW_AT_TI_call
        CALL #_jpec_buffer_write_byte ; |131| 
                                        ; call occurs [#_jpec_buffer_write_byte] ; |131| 
	.dwpsn	file "./enc.c",line 132,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #70, AC0 ; |132| 
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$113	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$113, DW_AT_low_pc(0x00)
	.dwattr $C$DW$113, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$113, DW_AT_TI_call
        CALL #_jpec_buffer_write_byte ; |132| 
                                        ; call occurs [#_jpec_buffer_write_byte] ; |132| 
	.dwpsn	file "./enc.c",line 133,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #73, AC0 ; |133| 
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$114	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$114, DW_AT_low_pc(0x00)
	.dwattr $C$DW$114, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$114, DW_AT_TI_call
        CALL #_jpec_buffer_write_byte ; |133| 
                                        ; call occurs [#_jpec_buffer_write_byte] ; |133| 
	.dwpsn	file "./enc.c",line 134,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #70, AC0 ; |134| 
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$115	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$115, DW_AT_low_pc(0x00)
	.dwattr $C$DW$115, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$115, DW_AT_TI_call
        CALL #_jpec_buffer_write_byte ; |134| 
                                        ; call occurs [#_jpec_buffer_write_byte] ; |134| 
	.dwpsn	file "./enc.c",line 135,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$116	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$116, DW_AT_low_pc(0x00)
	.dwattr $C$DW$116, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$116, DW_AT_TI_call

        CALL #_jpec_buffer_write_byte ; |135| 
||      MOV #0, AC0 ; |135| 

                                        ; call occurs [#_jpec_buffer_write_byte] ; |135| 
	.dwpsn	file "./enc.c",line 136,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #257, AC0 ; |136| 
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$117	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$117, DW_AT_low_pc(0x00)
	.dwattr $C$DW$117, DW_AT_name("_jpec_buffer_write_2bytes")
	.dwattr $C$DW$117, DW_AT_TI_call
        CALL #_jpec_buffer_write_2bytes ; |136| 
                                        ; call occurs [#_jpec_buffer_write_2bytes] ; |136| 
	.dwpsn	file "./enc.c",line 137,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$118	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$118, DW_AT_low_pc(0x00)
	.dwattr $C$DW$118, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$118, DW_AT_TI_call

        CALL #_jpec_buffer_write_byte ; |137| 
||      MOV #0, AC0 ; |137| 

                                        ; call occurs [#_jpec_buffer_write_byte] ; |137| 
	.dwpsn	file "./enc.c",line 138,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$119	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$119, DW_AT_low_pc(0x00)
	.dwattr $C$DW$119, DW_AT_name("_jpec_buffer_write_2bytes")
	.dwattr $C$DW$119, DW_AT_TI_call

        CALL #_jpec_buffer_write_2bytes ; |138| 
||      MOV #1, AC0 ; |138| 

                                        ; call occurs [#_jpec_buffer_write_2bytes] ; |138| 
	.dwpsn	file "./enc.c",line 139,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$120	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$120, DW_AT_low_pc(0x00)
	.dwattr $C$DW$120, DW_AT_name("_jpec_buffer_write_2bytes")
	.dwattr $C$DW$120, DW_AT_TI_call

        CALL #_jpec_buffer_write_2bytes ; |139| 
||      MOV #1, AC0 ; |139| 

                                        ; call occurs [#_jpec_buffer_write_2bytes] ; |139| 
	.dwpsn	file "./enc.c",line 140,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$121	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$121, DW_AT_low_pc(0x00)
	.dwattr $C$DW$121, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$121, DW_AT_TI_call

        CALL #_jpec_buffer_write_byte ; |140| 
||      MOV #0, AC0 ; |140| 

                                        ; call occurs [#_jpec_buffer_write_byte] ; |140| 
	.dwpsn	file "./enc.c",line 141,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, AC0 ; |141| 
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$122	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$122, DW_AT_low_pc(0x00)
	.dwattr $C$DW$122, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$122, DW_AT_TI_call
        CALL #_jpec_buffer_write_byte ; |141| 
                                        ; call occurs [#_jpec_buffer_write_byte] ; |141| 
	.dwpsn	file "./enc.c",line 142,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$123	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$123, DW_AT_low_pc(0x00)
	.dwattr $C$DW$123, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$106, DW_AT_TI_end_file("./enc.c")
	.dwattr $C$DW$106, DW_AT_TI_end_line(0x8e)
	.dwattr $C$DW$106, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$106

	.sect	".text"

$C$DW$124	.dwtag  DW_TAG_subprogram, DW_AT_name("jpec_enc_write_dqt")
	.dwattr $C$DW$124, DW_AT_low_pc(_jpec_enc_write_dqt)
	.dwattr $C$DW$124, DW_AT_high_pc(0x00)
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_jpec_enc_write_dqt")
	.dwattr $C$DW$124, DW_AT_TI_begin_file("./enc.c")
	.dwattr $C$DW$124, DW_AT_TI_begin_line(0x90)
	.dwattr $C$DW$124, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$124, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "./enc.c",line 145,column 1,is_stmt,address _jpec_enc_write_dqt

	.dwfde $C$DW$CIE, _jpec_enc_write_dqt
$C$DW$125	.dwtag  DW_TAG_formal_parameter, DW_AT_name("e")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$125, DW_AT_location[DW_OP_reg17]
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
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$126	.dwtag  DW_TAG_variable, DW_AT_name("e")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$126, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$127	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$127, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./enc.c",line 146,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L18,AC0 != #0 ; |146| 
                                        ; branchcc occurs ; |146| 
        AMOV #$C$FSL8, XAR0 ; |146| 
$C$DW$128	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$128, DW_AT_low_pc(0x00)
	.dwattr $C$DW$128, DW_AT_name("__abort_msg")
	.dwattr $C$DW$128, DW_AT_TI_call
        CALL #__abort_msg ; |146| 
                                        ; call occurs [#__abort_msg] ; |146| 
$C$L18:    
	.dwpsn	file "./enc.c",line 147,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #65499, AR1 ; |147| 
        AND #0xffff, AR1, AC0 ; |147| 
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$129	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$129, DW_AT_low_pc(0x00)
	.dwattr $C$DW$129, DW_AT_name("_jpec_buffer_write_2bytes")
	.dwattr $C$DW$129, DW_AT_TI_call
        CALL #_jpec_buffer_write_2bytes ; |147| 
                                        ; call occurs [#_jpec_buffer_write_2bytes] ; |147| 
	.dwpsn	file "./enc.c",line 148,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #67, AC0 ; |148| 
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$130	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$130, DW_AT_low_pc(0x00)
	.dwattr $C$DW$130, DW_AT_name("_jpec_buffer_write_2bytes")
	.dwattr $C$DW$130, DW_AT_TI_call
        CALL #_jpec_buffer_write_2bytes ; |148| 
                                        ; call occurs [#_jpec_buffer_write_2bytes] ; |148| 
	.dwpsn	file "./enc.c",line 149,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$131	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$131, DW_AT_low_pc(0x00)
	.dwattr $C$DW$131, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$131, DW_AT_TI_call

        CALL #_jpec_buffer_write_byte ; |149| 
||      MOV #0, AC0 ; |149| 

                                        ; call occurs [#_jpec_buffer_write_byte] ; |149| 
	.dwpsn	file "./enc.c",line 151,column 10,is_stmt
        MOV #0, AC0 ; |151| 
        MOV AC0, dbl(*SP(#2)) ; |151| 
	.dwpsn	file "./enc.c",line 151,column 17,is_stmt
        MOV #64, AC0 ; |151| 
        MOV dbl(*SP(#2)), AC1 ; |151| 
        CMP AC1 >= AC0, TC1 ; |151| 
        BCC $C$L20,TC1 ; |151| 
                                        ; branchcc occurs ; |151| 
$C$L19:    
$C$DW$L$_jpec_enc_write_dqt$4$B:
	.dwpsn	file "./enc.c",line 153,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#3), T0 ; |153| 
        SFTL T0, #1 ; |153| 
        MOV dbl(*AR3(short(#6))), XAR0
        AMOV #(_jpec_zz+1), XAR3 ; |153| 
        MOV *AR3(T0), AR1 ; |153| 
        SFTL AR1, #1 ; |153| 
        MOV dbl(*SP(#0)), XAR3
        AADD AR1, AR3 ; |153| 
        MOV dbl(*AR3(#10)), AC0 ; |153| 
$C$DW$132	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$132, DW_AT_low_pc(0x00)
	.dwattr $C$DW$132, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$132, DW_AT_TI_call
        CALL #_jpec_buffer_write_byte ; |153| 
                                        ; call occurs [#_jpec_buffer_write_byte] ; |153| 
	.dwpsn	file "./enc.c",line 151,column 25,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |151| 
        ADD #1, AC0 ; |151| 
        MOV AC0, dbl(*SP(#2)) ; |151| 
	.dwpsn	file "./enc.c",line 151,column 17,is_stmt
        MOV #64, AC0 ; |151| 
        MOV dbl(*SP(#2)), AC1 ; |151| 
        CMP AC1 < AC0, TC1 ; |151| 
        BCC $C$L19,TC1 ; |151| 
                                        ; branchcc occurs ; |151| 
$C$DW$L$_jpec_enc_write_dqt$4$E:
	.dwpsn	file "./enc.c",line 155,column 1,is_stmt
$C$L20:    
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$133	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$133, DW_AT_low_pc(0x00)
	.dwattr $C$DW$133, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$134	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$134, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/jpeg/enc.asm:$C$L19:1:1725826347")
	.dwattr $C$DW$134, DW_AT_TI_begin_file("./enc.c")
	.dwattr $C$DW$134, DW_AT_TI_begin_line(0x97)
	.dwattr $C$DW$134, DW_AT_TI_end_line(0x9a)
$C$DW$135	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$135, DW_AT_low_pc($C$DW$L$_jpec_enc_write_dqt$4$B)
	.dwattr $C$DW$135, DW_AT_high_pc($C$DW$L$_jpec_enc_write_dqt$4$E)
	.dwendtag $C$DW$134

	.dwattr $C$DW$124, DW_AT_TI_end_file("./enc.c")
	.dwattr $C$DW$124, DW_AT_TI_end_line(0x9b)
	.dwattr $C$DW$124, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$124

	.sect	".text"

$C$DW$136	.dwtag  DW_TAG_subprogram, DW_AT_name("jpec_enc_write_sof0")
	.dwattr $C$DW$136, DW_AT_low_pc(_jpec_enc_write_sof0)
	.dwattr $C$DW$136, DW_AT_high_pc(0x00)
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("_jpec_enc_write_sof0")
	.dwattr $C$DW$136, DW_AT_TI_begin_file("./enc.c")
	.dwattr $C$DW$136, DW_AT_TI_begin_line(0x9d)
	.dwattr $C$DW$136, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$136, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./enc.c",line 158,column 1,is_stmt,address _jpec_enc_write_sof0

	.dwfde $C$DW$CIE, _jpec_enc_write_sof0
$C$DW$137	.dwtag  DW_TAG_formal_parameter, DW_AT_name("e")
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$137, DW_AT_location[DW_OP_reg17]
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
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$138	.dwtag  DW_TAG_variable, DW_AT_name("e")
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$138, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./enc.c",line 159,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L21,AC0 != #0 ; |159| 
                                        ; branchcc occurs ; |159| 
        AMOV #$C$FSL9, XAR0 ; |159| 
$C$DW$139	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$139, DW_AT_low_pc(0x00)
	.dwattr $C$DW$139, DW_AT_name("__abort_msg")
	.dwattr $C$DW$139, DW_AT_TI_call
        CALL #__abort_msg ; |159| 
                                        ; call occurs [#__abort_msg] ; |159| 
$C$L21:    
	.dwpsn	file "./enc.c",line 160,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #65472, AR1 ; |160| 
        AND #0xffff, AR1, AC0 ; |160| 
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$140	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$140, DW_AT_low_pc(0x00)
	.dwattr $C$DW$140, DW_AT_name("_jpec_buffer_write_2bytes")
	.dwattr $C$DW$140, DW_AT_TI_call
        CALL #_jpec_buffer_write_2bytes ; |160| 
                                        ; call occurs [#_jpec_buffer_write_2bytes] ; |160| 
	.dwpsn	file "./enc.c",line 161,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$141	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$141, DW_AT_low_pc(0x00)
	.dwattr $C$DW$141, DW_AT_name("_jpec_buffer_write_2bytes")
	.dwattr $C$DW$141, DW_AT_TI_call

        CALL #_jpec_buffer_write_2bytes ; |161| 
||      MOV #11, AC0 ; |161| 

                                        ; call occurs [#_jpec_buffer_write_2bytes] ; |161| 
	.dwpsn	file "./enc.c",line 162,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$142	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$142, DW_AT_low_pc(0x00)
	.dwattr $C$DW$142, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$142, DW_AT_TI_call

        CALL #_jpec_buffer_write_byte ; |162| 
||      MOV #8, AC0 ; |162| 

                                        ; call occurs [#_jpec_buffer_write_byte] ; |162| 
	.dwpsn	file "./enc.c",line 163,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#6))), XAR0
        MOV uns(*AR3(short(#3))), AC0 ; |163| 
$C$DW$143	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$143, DW_AT_low_pc(0x00)
	.dwattr $C$DW$143, DW_AT_name("_jpec_buffer_write_2bytes")
	.dwattr $C$DW$143, DW_AT_TI_call
        CALL #_jpec_buffer_write_2bytes ; |163| 
                                        ; call occurs [#_jpec_buffer_write_2bytes] ; |163| 
	.dwpsn	file "./enc.c",line 164,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#6))), XAR0
        MOV uns(*AR3(short(#2))), AC0 ; |164| 
$C$DW$144	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$144, DW_AT_low_pc(0x00)
	.dwattr $C$DW$144, DW_AT_name("_jpec_buffer_write_2bytes")
	.dwattr $C$DW$144, DW_AT_TI_call
        CALL #_jpec_buffer_write_2bytes ; |164| 
                                        ; call occurs [#_jpec_buffer_write_2bytes] ; |164| 
	.dwpsn	file "./enc.c",line 165,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$145	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$145, DW_AT_low_pc(0x00)
	.dwattr $C$DW$145, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$145, DW_AT_TI_call

        CALL #_jpec_buffer_write_byte ; |165| 
||      MOV #1, AC0 ; |165| 

                                        ; call occurs [#_jpec_buffer_write_byte] ; |165| 
	.dwpsn	file "./enc.c",line 166,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$146	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$146, DW_AT_low_pc(0x00)
	.dwattr $C$DW$146, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$146, DW_AT_TI_call

        CALL #_jpec_buffer_write_byte ; |166| 
||      MOV #1, AC0 ; |166| 

                                        ; call occurs [#_jpec_buffer_write_byte] ; |166| 
	.dwpsn	file "./enc.c",line 167,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #17, AC0 ; |167| 
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$147	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$147, DW_AT_low_pc(0x00)
	.dwattr $C$DW$147, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$147, DW_AT_TI_call
        CALL #_jpec_buffer_write_byte ; |167| 
                                        ; call occurs [#_jpec_buffer_write_byte] ; |167| 
	.dwpsn	file "./enc.c",line 168,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, AC0 ; |168| 
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$148	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$148, DW_AT_low_pc(0x00)
	.dwattr $C$DW$148, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$148, DW_AT_TI_call
        CALL #_jpec_buffer_write_byte ; |168| 
                                        ; call occurs [#_jpec_buffer_write_byte] ; |168| 
	.dwpsn	file "./enc.c",line 169,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$149	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$149, DW_AT_low_pc(0x00)
	.dwattr $C$DW$149, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$136, DW_AT_TI_end_file("./enc.c")
	.dwattr $C$DW$136, DW_AT_TI_end_line(0xa9)
	.dwattr $C$DW$136, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$136

	.sect	".text"

$C$DW$150	.dwtag  DW_TAG_subprogram, DW_AT_name("jpec_enc_write_dht")
	.dwattr $C$DW$150, DW_AT_low_pc(_jpec_enc_write_dht)
	.dwattr $C$DW$150, DW_AT_high_pc(0x00)
	.dwattr $C$DW$150, DW_AT_TI_symbol_name("_jpec_enc_write_dht")
	.dwattr $C$DW$150, DW_AT_TI_begin_file("./enc.c")
	.dwattr $C$DW$150, DW_AT_TI_begin_line(0xab)
	.dwattr $C$DW$150, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$150, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "./enc.c",line 172,column 1,is_stmt,address _jpec_enc_write_dht

	.dwfde $C$DW$CIE, _jpec_enc_write_dht
$C$DW$151	.dwtag  DW_TAG_formal_parameter, DW_AT_name("e")
	.dwattr $C$DW$151, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$151, DW_AT_location[DW_OP_reg17]
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
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$152	.dwtag  DW_TAG_variable, DW_AT_name("e")
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$152, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$153	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$153, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$153, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./enc.c",line 174,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L22,AC0 != #0 ; |174| 
                                        ; branchcc occurs ; |174| 
        AMOV #$C$FSL10, XAR0 ; |174| 
$C$DW$154	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$154, DW_AT_low_pc(0x00)
	.dwattr $C$DW$154, DW_AT_name("__abort_msg")
	.dwattr $C$DW$154, DW_AT_TI_call
        CALL #__abort_msg ; |174| 
                                        ; call occurs [#__abort_msg] ; |174| 
$C$L22:    
	.dwpsn	file "./enc.c",line 175,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #65476, AR1 ; |175| 
        AND #0xffff, AR1, AC0 ; |175| 
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$155	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$155, DW_AT_low_pc(0x00)
	.dwattr $C$DW$155, DW_AT_name("_jpec_buffer_write_2bytes")
	.dwattr $C$DW$155, DW_AT_TI_call
        CALL #_jpec_buffer_write_2bytes ; |175| 
                                        ; call occurs [#_jpec_buffer_write_2bytes] ; |175| 
	.dwpsn	file "./enc.c",line 176,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #19, AC0 ; |176| 
        MOV dbl(*AR3(short(#6))), XAR0
        ADD dbl(*(#_jpec_dc_nb_vals)), AC0, AC0 ; |176| 
$C$DW$156	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$156, DW_AT_low_pc(0x00)
	.dwattr $C$DW$156, DW_AT_name("_jpec_buffer_write_2bytes")
	.dwattr $C$DW$156, DW_AT_TI_call
        CALL #_jpec_buffer_write_2bytes ; |176| 
                                        ; call occurs [#_jpec_buffer_write_2bytes] ; |176| 
	.dwpsn	file "./enc.c",line 177,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$157	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$157, DW_AT_low_pc(0x00)
	.dwattr $C$DW$157, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$157, DW_AT_TI_call

        CALL #_jpec_buffer_write_byte ; |177| 
||      MOV #0, AC0 ; |177| 

                                        ; call occurs [#_jpec_buffer_write_byte] ; |177| 
	.dwpsn	file "./enc.c",line 178,column 10,is_stmt
        MOV #0, AC0 ; |178| 
        MOV AC0, dbl(*SP(#2)) ; |178| 
	.dwpsn	file "./enc.c",line 178,column 17,is_stmt
        MOV #16, AC0 ; |178| 
        MOV dbl(*SP(#2)), AC1 ; |178| 
        CMP AC1 >= AC0, TC1 ; |178| 
        BCC $C$L24,TC1 ; |178| 
                                        ; branchcc occurs ; |178| 
$C$L23:    
$C$DW$L$_jpec_enc_write_dht$4$B:
	.dwpsn	file "./enc.c",line 180,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#2)), AC0 ; |180| 
        ADD #1, AC0 ; |180| 
        MOV AC0, T0 ; |180| 
        MOV dbl(*AR3(short(#6))), XAR0
        AMOV #_jpec_dc_nodes, XAR3 ; |180| 
        MOV uns(*AR3(T0)), AC0 ; |180| 
$C$DW$158	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$158, DW_AT_low_pc(0x00)
	.dwattr $C$DW$158, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$158, DW_AT_TI_call
        CALL #_jpec_buffer_write_byte ; |180| 
                                        ; call occurs [#_jpec_buffer_write_byte] ; |180| 
	.dwpsn	file "./enc.c",line 178,column 25,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |178| 
        ADD #1, AC0 ; |178| 
        MOV AC0, dbl(*SP(#2)) ; |178| 
	.dwpsn	file "./enc.c",line 178,column 17,is_stmt
        MOV #16, AC0 ; |178| 
        MOV dbl(*SP(#2)), AC1 ; |178| 
        CMP AC1 < AC0, TC1 ; |178| 
        BCC $C$L23,TC1 ; |178| 
                                        ; branchcc occurs ; |178| 
$C$DW$L$_jpec_enc_write_dht$4$E:
$C$L24:    
	.dwpsn	file "./enc.c",line 182,column 10,is_stmt
        MOV #0, AC0 ; |182| 
        MOV AC0, dbl(*SP(#2)) ; |182| 
	.dwpsn	file "./enc.c",line 182,column 17,is_stmt
        MOV dbl(*SP(#2)), AC1 ; |182| 
        MOV dbl(*(#_jpec_dc_nb_vals)), AC0 ; |182| 
        CMP AC1 >= AC0, TC1 ; |182| 
        BCC $C$L26,TC1 ; |182| 
                                        ; branchcc occurs ; |182| 
$C$L25:    
$C$DW$L$_jpec_enc_write_dht$6$B:
	.dwpsn	file "./enc.c",line 184,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#3), T0 ; |184| 
        MOV dbl(*AR3(short(#6))), XAR0
        AMOV #_jpec_dc_vals, XAR3 ; |184| 
        MOV uns(*AR3(T0)), AC0 ; |184| 
$C$DW$159	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$159, DW_AT_low_pc(0x00)
	.dwattr $C$DW$159, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$159, DW_AT_TI_call
        CALL #_jpec_buffer_write_byte ; |184| 
                                        ; call occurs [#_jpec_buffer_write_byte] ; |184| 
	.dwpsn	file "./enc.c",line 182,column 38,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |182| 
        ADD #1, AC0 ; |182| 
        MOV AC0, dbl(*SP(#2)) ; |182| 
	.dwpsn	file "./enc.c",line 182,column 17,is_stmt
        MOV dbl(*(#_jpec_dc_nb_vals)), AC0 ; |182| 
        MOV dbl(*SP(#2)), AC1 ; |182| 
        CMP AC1 < AC0, TC1 ; |182| 
        BCC $C$L25,TC1 ; |182| 
                                        ; branchcc occurs ; |182| 
$C$DW$L$_jpec_enc_write_dht$6$E:
$C$L26:    
	.dwpsn	file "./enc.c",line 186,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #65476, AR1 ; |186| 
        AND #0xffff, AR1, AC0 ; |186| 
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$160	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$160, DW_AT_low_pc(0x00)
	.dwattr $C$DW$160, DW_AT_name("_jpec_buffer_write_2bytes")
	.dwattr $C$DW$160, DW_AT_TI_call
        CALL #_jpec_buffer_write_2bytes ; |186| 
                                        ; call occurs [#_jpec_buffer_write_2bytes] ; |186| 
	.dwpsn	file "./enc.c",line 187,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #19, AC0 ; |187| 
        MOV dbl(*AR3(short(#6))), XAR0
        ADD dbl(*(#_jpec_ac_nb_vals)), AC0, AC0 ; |187| 
$C$DW$161	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$161, DW_AT_low_pc(0x00)
	.dwattr $C$DW$161, DW_AT_name("_jpec_buffer_write_2bytes")
	.dwattr $C$DW$161, DW_AT_TI_call
        CALL #_jpec_buffer_write_2bytes ; |187| 
                                        ; call occurs [#_jpec_buffer_write_2bytes] ; |187| 
	.dwpsn	file "./enc.c",line 188,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #16, AC0 ; |188| 
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$162	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$162, DW_AT_low_pc(0x00)
	.dwattr $C$DW$162, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$162, DW_AT_TI_call
        CALL #_jpec_buffer_write_byte ; |188| 
                                        ; call occurs [#_jpec_buffer_write_byte] ; |188| 
	.dwpsn	file "./enc.c",line 189,column 10,is_stmt
        MOV #0, AC0 ; |189| 
        MOV AC0, dbl(*SP(#2)) ; |189| 
	.dwpsn	file "./enc.c",line 189,column 17,is_stmt
        MOV #16, AC0 ; |189| 
        MOV dbl(*SP(#2)), AC1 ; |189| 
        CMP AC1 >= AC0, TC1 ; |189| 
        BCC $C$L28,TC1 ; |189| 
                                        ; branchcc occurs ; |189| 
$C$L27:    
$C$DW$L$_jpec_enc_write_dht$8$B:
	.dwpsn	file "./enc.c",line 191,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#2)), AC0 ; |191| 
        ADD #1, AC0 ; |191| 
        MOV AC0, T0 ; |191| 
        MOV dbl(*AR3(short(#6))), XAR0
        AMOV #_jpec_ac_nodes, XAR3 ; |191| 
        MOV uns(*AR3(T0)), AC0 ; |191| 
$C$DW$163	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$163, DW_AT_low_pc(0x00)
	.dwattr $C$DW$163, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$163, DW_AT_TI_call
        CALL #_jpec_buffer_write_byte ; |191| 
                                        ; call occurs [#_jpec_buffer_write_byte] ; |191| 
	.dwpsn	file "./enc.c",line 189,column 25,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |189| 
        ADD #1, AC0 ; |189| 
        MOV AC0, dbl(*SP(#2)) ; |189| 
	.dwpsn	file "./enc.c",line 189,column 17,is_stmt
        MOV #16, AC0 ; |189| 
        MOV dbl(*SP(#2)), AC1 ; |189| 
        CMP AC1 < AC0, TC1 ; |189| 
        BCC $C$L27,TC1 ; |189| 
                                        ; branchcc occurs ; |189| 
$C$DW$L$_jpec_enc_write_dht$8$E:
$C$L28:    
	.dwpsn	file "./enc.c",line 193,column 10,is_stmt
        MOV #0, AC0 ; |193| 
        MOV AC0, dbl(*SP(#2)) ; |193| 
	.dwpsn	file "./enc.c",line 193,column 17,is_stmt
        MOV dbl(*SP(#2)), AC1 ; |193| 
        MOV dbl(*(#_jpec_ac_nb_vals)), AC0 ; |193| 
        CMP AC1 >= AC0, TC1 ; |193| 
        BCC $C$L30,TC1 ; |193| 
                                        ; branchcc occurs ; |193| 
$C$L29:    
$C$DW$L$_jpec_enc_write_dht$10$B:
	.dwpsn	file "./enc.c",line 195,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#3), T0 ; |195| 
        MOV dbl(*AR3(short(#6))), XAR0
        AMOV #_jpec_ac_vals, XAR3 ; |195| 
        MOV uns(*AR3(T0)), AC0 ; |195| 
$C$DW$164	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$164, DW_AT_low_pc(0x00)
	.dwattr $C$DW$164, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$164, DW_AT_TI_call
        CALL #_jpec_buffer_write_byte ; |195| 
                                        ; call occurs [#_jpec_buffer_write_byte] ; |195| 
	.dwpsn	file "./enc.c",line 193,column 38,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |193| 
        ADD #1, AC0 ; |193| 
        MOV AC0, dbl(*SP(#2)) ; |193| 
	.dwpsn	file "./enc.c",line 193,column 17,is_stmt
        MOV dbl(*(#_jpec_ac_nb_vals)), AC0 ; |193| 
        MOV dbl(*SP(#2)), AC1 ; |193| 
        CMP AC1 < AC0, TC1 ; |193| 
        BCC $C$L29,TC1 ; |193| 
                                        ; branchcc occurs ; |193| 
$C$DW$L$_jpec_enc_write_dht$10$E:
	.dwpsn	file "./enc.c",line 197,column 1,is_stmt
$C$L30:    
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$165	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$165, DW_AT_low_pc(0x00)
	.dwattr $C$DW$165, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$166	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$166, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/jpeg/enc.asm:$C$L29:1:1725826347")
	.dwattr $C$DW$166, DW_AT_TI_begin_file("./enc.c")
	.dwattr $C$DW$166, DW_AT_TI_begin_line(0xc1)
	.dwattr $C$DW$166, DW_AT_TI_end_line(0xc4)
$C$DW$167	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$167, DW_AT_low_pc($C$DW$L$_jpec_enc_write_dht$10$B)
	.dwattr $C$DW$167, DW_AT_high_pc($C$DW$L$_jpec_enc_write_dht$10$E)
	.dwendtag $C$DW$166


$C$DW$168	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$168, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/jpeg/enc.asm:$C$L27:1:1725826347")
	.dwattr $C$DW$168, DW_AT_TI_begin_file("./enc.c")
	.dwattr $C$DW$168, DW_AT_TI_begin_line(0xbd)
	.dwattr $C$DW$168, DW_AT_TI_end_line(0xc0)
$C$DW$169	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$169, DW_AT_low_pc($C$DW$L$_jpec_enc_write_dht$8$B)
	.dwattr $C$DW$169, DW_AT_high_pc($C$DW$L$_jpec_enc_write_dht$8$E)
	.dwendtag $C$DW$168


$C$DW$170	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$170, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/jpeg/enc.asm:$C$L25:1:1725826347")
	.dwattr $C$DW$170, DW_AT_TI_begin_file("./enc.c")
	.dwattr $C$DW$170, DW_AT_TI_begin_line(0xb6)
	.dwattr $C$DW$170, DW_AT_TI_end_line(0xb9)
$C$DW$171	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$171, DW_AT_low_pc($C$DW$L$_jpec_enc_write_dht$6$B)
	.dwattr $C$DW$171, DW_AT_high_pc($C$DW$L$_jpec_enc_write_dht$6$E)
	.dwendtag $C$DW$170


$C$DW$172	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$172, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/jpeg/enc.asm:$C$L23:1:1725826347")
	.dwattr $C$DW$172, DW_AT_TI_begin_file("./enc.c")
	.dwattr $C$DW$172, DW_AT_TI_begin_line(0xb2)
	.dwattr $C$DW$172, DW_AT_TI_end_line(0xb5)
$C$DW$173	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$173, DW_AT_low_pc($C$DW$L$_jpec_enc_write_dht$4$B)
	.dwattr $C$DW$173, DW_AT_high_pc($C$DW$L$_jpec_enc_write_dht$4$E)
	.dwendtag $C$DW$172

	.dwattr $C$DW$150, DW_AT_TI_end_file("./enc.c")
	.dwattr $C$DW$150, DW_AT_TI_end_line(0xc5)
	.dwattr $C$DW$150, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$150

	.sect	".text"

$C$DW$174	.dwtag  DW_TAG_subprogram, DW_AT_name("jpec_enc_write_sos")
	.dwattr $C$DW$174, DW_AT_low_pc(_jpec_enc_write_sos)
	.dwattr $C$DW$174, DW_AT_high_pc(0x00)
	.dwattr $C$DW$174, DW_AT_TI_symbol_name("_jpec_enc_write_sos")
	.dwattr $C$DW$174, DW_AT_TI_begin_file("./enc.c")
	.dwattr $C$DW$174, DW_AT_TI_begin_line(0xc7)
	.dwattr $C$DW$174, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$174, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./enc.c",line 200,column 1,is_stmt,address _jpec_enc_write_sos

	.dwfde $C$DW$CIE, _jpec_enc_write_sos
$C$DW$175	.dwtag  DW_TAG_formal_parameter, DW_AT_name("e")
	.dwattr $C$DW$175, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$175, DW_AT_location[DW_OP_reg17]
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
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$176	.dwtag  DW_TAG_variable, DW_AT_name("e")
	.dwattr $C$DW$176, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$176, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./enc.c",line 201,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L31,AC0 != #0 ; |201| 
                                        ; branchcc occurs ; |201| 
        AMOV #$C$FSL11, XAR0 ; |201| 
$C$DW$177	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$177, DW_AT_low_pc(0x00)
	.dwattr $C$DW$177, DW_AT_name("__abort_msg")
	.dwattr $C$DW$177, DW_AT_TI_call
        CALL #__abort_msg ; |201| 
                                        ; call occurs [#__abort_msg] ; |201| 
$C$L31:    
	.dwpsn	file "./enc.c",line 202,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #65498, AR1 ; |202| 
        AND #0xffff, AR1, AC0 ; |202| 
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$178	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$178, DW_AT_low_pc(0x00)
	.dwattr $C$DW$178, DW_AT_name("_jpec_buffer_write_2bytes")
	.dwattr $C$DW$178, DW_AT_TI_call
        CALL #_jpec_buffer_write_2bytes ; |202| 
                                        ; call occurs [#_jpec_buffer_write_2bytes] ; |202| 
	.dwpsn	file "./enc.c",line 203,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$179	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$179, DW_AT_low_pc(0x00)
	.dwattr $C$DW$179, DW_AT_name("_jpec_buffer_write_2bytes")
	.dwattr $C$DW$179, DW_AT_TI_call

        CALL #_jpec_buffer_write_2bytes ; |203| 
||      MOV #8, AC0 ; |203| 

                                        ; call occurs [#_jpec_buffer_write_2bytes] ; |203| 
	.dwpsn	file "./enc.c",line 204,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$180	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$180, DW_AT_low_pc(0x00)
	.dwattr $C$DW$180, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$180, DW_AT_TI_call

        CALL #_jpec_buffer_write_byte ; |204| 
||      MOV #1, AC0 ; |204| 

                                        ; call occurs [#_jpec_buffer_write_byte] ; |204| 
	.dwpsn	file "./enc.c",line 205,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$181	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$181, DW_AT_low_pc(0x00)
	.dwattr $C$DW$181, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$181, DW_AT_TI_call

        CALL #_jpec_buffer_write_byte ; |205| 
||      MOV #1, AC0 ; |205| 

                                        ; call occurs [#_jpec_buffer_write_byte] ; |205| 
	.dwpsn	file "./enc.c",line 206,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$182	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$182, DW_AT_low_pc(0x00)
	.dwattr $C$DW$182, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$182, DW_AT_TI_call

        CALL #_jpec_buffer_write_byte ; |206| 
||      MOV #0, AC0 ; |206| 

                                        ; call occurs [#_jpec_buffer_write_byte] ; |206| 
	.dwpsn	file "./enc.c",line 208,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$183	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$183, DW_AT_low_pc(0x00)
	.dwattr $C$DW$183, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$183, DW_AT_TI_call

        CALL #_jpec_buffer_write_byte ; |208| 
||      MOV #0, AC0 ; |208| 

                                        ; call occurs [#_jpec_buffer_write_byte] ; |208| 
	.dwpsn	file "./enc.c",line 209,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #63, AC0 ; |209| 
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$184	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$184, DW_AT_low_pc(0x00)
	.dwattr $C$DW$184, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$184, DW_AT_TI_call
        CALL #_jpec_buffer_write_byte ; |209| 
                                        ; call occurs [#_jpec_buffer_write_byte] ; |209| 
	.dwpsn	file "./enc.c",line 210,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, AC0 ; |210| 
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$185	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$185, DW_AT_low_pc(0x00)
	.dwattr $C$DW$185, DW_AT_name("_jpec_buffer_write_byte")
	.dwattr $C$DW$185, DW_AT_TI_call
        CALL #_jpec_buffer_write_byte ; |210| 
                                        ; call occurs [#_jpec_buffer_write_byte] ; |210| 
	.dwpsn	file "./enc.c",line 211,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$186	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$186, DW_AT_low_pc(0x00)
	.dwattr $C$DW$186, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$174, DW_AT_TI_end_file("./enc.c")
	.dwattr $C$DW$174, DW_AT_TI_end_line(0xd3)
	.dwattr $C$DW$174, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$174

	.sect	".text"

$C$DW$187	.dwtag  DW_TAG_subprogram, DW_AT_name("jpec_enc_next_block")
	.dwattr $C$DW$187, DW_AT_low_pc(_jpec_enc_next_block)
	.dwattr $C$DW$187, DW_AT_high_pc(0x00)
	.dwattr $C$DW$187, DW_AT_TI_symbol_name("_jpec_enc_next_block")
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$187, DW_AT_TI_begin_file("./enc.c")
	.dwattr $C$DW$187, DW_AT_TI_begin_line(0xd5)
	.dwattr $C$DW$187, DW_AT_TI_begin_column(0x10)
	.dwattr $C$DW$187, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "./enc.c",line 214,column 1,is_stmt,address _jpec_enc_next_block

	.dwfde $C$DW$CIE, _jpec_enc_next_block
$C$DW$188	.dwtag  DW_TAG_formal_parameter, DW_AT_name("e")
	.dwattr $C$DW$188, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$188, DW_AT_location[DW_OP_reg17]
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
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$189	.dwtag  DW_TAG_variable, DW_AT_name("e")
	.dwattr $C$DW$189, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$189, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$190	.dwtag  DW_TAG_variable, DW_AT_name("rv")
	.dwattr $C$DW$190, DW_AT_TI_symbol_name("_rv")
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$190, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./enc.c",line 215,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L32,AC0 != #0 ; |215| 
                                        ; branchcc occurs ; |215| 
        AMOV #$C$FSL12, XAR0 ; |215| 
$C$DW$191	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$191, DW_AT_low_pc(0x00)
	.dwattr $C$DW$191, DW_AT_name("__abort_msg")
	.dwattr $C$DW$191, DW_AT_TI_call
        CALL #__abort_msg ; |215| 
                                        ; call occurs [#__abort_msg] ; |215| 
$C$L32:    
	.dwpsn	file "./enc.c",line 216,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #1, AC0 ; |216| 
        ADD dbl(*AR3(#140)), AC0, AC0 ; |216| 
        MOV AC0, dbl(*AR3(#140)) ; |216| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#138)), AC1 ; |216| 
        CMP AC0 < AC1, TC1 ; |216| 
        BCC $C$L33,TC1 ; |216| 
                                        ; branchcc occurs ; |216| 

        B $C$L34  ; |216| 
||      MOV #0, AR1

                                        ; branch occurs ; |216| 
$C$L33:    
        MOV #1, AR1
$C$L34:    
        MOV AR1, AC0
        MOV AC0, dbl(*SP(#2)) ; |216| 
	.dwpsn	file "./enc.c",line 217,column 5,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |217| 
        BCC $C$L35,AC0 == #0 ; |217| 
                                        ; branchcc occurs ; |217| 
	.dwpsn	file "./enc.c",line 219,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV uns(*AR3(short(#4))), AC1 ; |219| 
        MOV dbl(*AR3(#140)), AC0 ; |219| 
$C$DW$192	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$192, DW_AT_low_pc(0x00)
	.dwattr $C$DW$192, DW_AT_name("__remli")
	.dwattr $C$DW$192, DW_AT_TI_call

        CALL #__remli ; |219| 
||      SFTS AC0, #3, AC0 ; |219| 

                                        ; call occurs [#__remli] ; |219| 
        MOV dbl(*SP(#0)), XAR3
        MOV AC0, *AR3(#142) ; |219| 
	.dwpsn	file "./enc.c",line 220,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#140)), AC0 ; |220| 
        MOV uns(*AR3(short(#4))), AC1 ; |220| 
$C$DW$193	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$193, DW_AT_low_pc(0x00)
	.dwattr $C$DW$193, DW_AT_name("__divli")
	.dwattr $C$DW$193, DW_AT_TI_call

        CALL #__divli ; |220| 
||      SFTS AC0, #3, AC0 ; |220| 

                                        ; call occurs [#__divli] ; |220| 
        MOV dbl(*SP(#0)), XAR3
        SFTS AC0, #3, AC0 ; |220| 
        MOV AC0, *AR3(#143) ; |220| 
$C$L35:    
	.dwpsn	file "./enc.c",line 222,column 5,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |222| 
	.dwpsn	file "./enc.c",line 223,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$194	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$194, DW_AT_low_pc(0x00)
	.dwattr $C$DW$194, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$187, DW_AT_TI_end_file("./enc.c")
	.dwattr $C$DW$187, DW_AT_TI_end_line(0xdf)
	.dwattr $C$DW$187, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$187

	.sect	".text"

$C$DW$195	.dwtag  DW_TAG_subprogram, DW_AT_name("jpec_enc_block_dct")
	.dwattr $C$DW$195, DW_AT_low_pc(_jpec_enc_block_dct)
	.dwattr $C$DW$195, DW_AT_high_pc(0x00)
	.dwattr $C$DW$195, DW_AT_TI_symbol_name("_jpec_enc_block_dct")
	.dwattr $C$DW$195, DW_AT_TI_begin_file("./enc.c")
	.dwattr $C$DW$195, DW_AT_TI_begin_line(0xe1)
	.dwattr $C$DW$195, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$195, DW_AT_TI_max_frame_size(0x9c)
	.dwpsn	file "./enc.c",line 226,column 1,is_stmt,address _jpec_enc_block_dct

	.dwfde $C$DW$CIE, _jpec_enc_block_dct
$C$DW$196	.dwtag  DW_TAG_formal_parameter, DW_AT_name("e")
	.dwattr $C$DW$196, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$196, DW_AT_location[DW_OP_reg17]
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
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        PSHBOTH XFP
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 32, -2
        ADD #-154, mmap(SP)
        AMAR *SP(#0), XFP
	.dwcfi	cfa_offset, 156
$C$DW$197	.dwtag  DW_TAG_variable, DW_AT_name("e")
	.dwattr $C$DW$197, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$197, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$198	.dwtag  DW_TAG_variable, DW_AT_name("coeff")
	.dwattr $C$DW$198, DW_AT_TI_symbol_name("_coeff")
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$198, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$199	.dwtag  DW_TAG_variable, DW_AT_name("tmp")
	.dwattr $C$DW$199, DW_AT_TI_symbol_name("_tmp")
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$199, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$200	.dwtag  DW_TAG_variable, DW_AT_name("row")
	.dwattr $C$DW$200, DW_AT_TI_symbol_name("_row")
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$200, DW_AT_location[DW_OP_bregx 0x24 132]
$C$DW$201	.dwtag  DW_TAG_variable, DW_AT_name("col")
	.dwattr $C$DW$201, DW_AT_TI_symbol_name("_col")
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$201, DW_AT_location[DW_OP_bregx 0x24 134]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./enc.c",line 227,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0

        BCC $C$L36,AC0 == #0 ; |227| 
||      MOV #0, AR1

                                        ; branchcc occurs ; |227| 
        MOV dbl(*AR3(#140)), AC0 ; |227| 
        BCC $C$L36,AC0 < #0 ; |227| 
                                        ; branchcc occurs ; |227| 
        MOV #1, AR1
$C$L36:    
        BCC $C$L37,AR1 != #0 ; |227| 
                                        ; branchcc occurs ; |227| 
        AMOV #$C$FSL13, XAR0 ; |227| 
$C$DW$202	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$202, DW_AT_low_pc(0x00)
	.dwattr $C$DW$202, DW_AT_name("__abort_msg")
	.dwattr $C$DW$202, DW_AT_TI_call
        CALL #__abort_msg ; |227| 
                                        ; call occurs [#__abort_msg] ; |227| 
$C$L37:    
	.dwpsn	file "./enc.c",line 231,column 18,is_stmt
        AMOV #_jpec_dct, XAR3 ; |231| 
        MOV XAR3, dbl(*SP(#2))
	.dwpsn	file "./enc.c",line 234,column 10,is_stmt
        MOV #0, AC0 ; |234| 
        MOV AC0, dbl(*FP(#132)) ; |234| 
	.dwpsn	file "./enc.c",line 234,column 19,is_stmt
        MOV dbl(*FP(#132)), AC1 ; |234| 
        MOV #8, AC0 ; |234| 
        CMP AC1 >= AC0, TC1 ; |234| 
        BCC $C$L103,TC1 ; |234| 
                                        ; branchcc occurs ; |234| 
$C$L38:    
$C$DW$L$_jpec_enc_block_dct$7$B:

$C$DW$203	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$204	.dwtag  DW_TAG_variable, DW_AT_name("s0")
	.dwattr $C$DW$204, DW_AT_TI_symbol_name("_s0")
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$204, DW_AT_location[DW_OP_bregx 0x24 136]
$C$DW$205	.dwtag  DW_TAG_variable, DW_AT_name("s1")
	.dwattr $C$DW$205, DW_AT_TI_symbol_name("_s1")
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$205, DW_AT_location[DW_OP_bregx 0x24 138]
$C$DW$206	.dwtag  DW_TAG_variable, DW_AT_name("s2")
	.dwattr $C$DW$206, DW_AT_TI_symbol_name("_s2")
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$206, DW_AT_location[DW_OP_bregx 0x24 140]
$C$DW$207	.dwtag  DW_TAG_variable, DW_AT_name("s3")
	.dwattr $C$DW$207, DW_AT_TI_symbol_name("_s3")
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$207, DW_AT_location[DW_OP_bregx 0x24 142]
$C$DW$208	.dwtag  DW_TAG_variable, DW_AT_name("d0")
	.dwattr $C$DW$208, DW_AT_TI_symbol_name("_d0")
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$208, DW_AT_location[DW_OP_bregx 0x24 144]
$C$DW$209	.dwtag  DW_TAG_variable, DW_AT_name("d1")
	.dwattr $C$DW$209, DW_AT_TI_symbol_name("_d1")
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$209, DW_AT_location[DW_OP_bregx 0x24 146]
$C$DW$210	.dwtag  DW_TAG_variable, DW_AT_name("d2")
	.dwattr $C$DW$210, DW_AT_TI_symbol_name("_d2")
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$210, DW_AT_location[DW_OP_bregx 0x24 148]
$C$DW$211	.dwtag  DW_TAG_variable, DW_AT_name("d3")
	.dwattr $C$DW$211, DW_AT_TI_symbol_name("_d3")
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$211, DW_AT_location[DW_OP_bregx 0x24 150]
	.dwpsn	file "./enc.c",line 237,column 15,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*FP(#132)), AC0 ; |237| 
        ADD uns(*AR3(#143)), AC0, AC1 ; |237| 
        MOV uns(*AR3(short(#3))), AC0 ; |237| 
        CMP AC1 >= AC0, TC1 ; |237| 
        BCC $C$L39,TC1 ; |237| 
                                        ; branchcc occurs ; |237| 
$C$DW$L$_jpec_enc_block_dct$7$E:
$C$DW$L$_jpec_enc_block_dct$8$B:
        MOV uns(*AR3(#143)), AC0 ; |237| 
        ADD dbl(*FP(#132)), AC0, AC0 ; |237| 
        B $C$L40  ; |237| 
                                        ; branch occurs ; |237| 
$C$DW$L$_jpec_enc_block_dct$8$E:
$C$L39:    
$C$DW$L$_jpec_enc_block_dct$9$B:
        MOV *AR3(short(#3)), AR1 ; |237| 
        SUB #1, AR1 ; |237| 
        AND #0xffff, AR1, AC0 ; |237| 
$C$DW$L$_jpec_enc_block_dct$9$E:
$C$L40:    
$C$DW$L$_jpec_enc_block_dct$10$B:
        MOV uns(*AR3(short(#2))), AC1 ; |237| 
$C$DW$212	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$212, DW_AT_low_pc(0x00)
	.dwattr $C$DW$212, DW_AT_name("__mpyli")
	.dwattr $C$DW$212, DW_AT_TI_call
        CALL #__mpyli ; |237| 
                                        ; call occurs [#__mpyli] ; |237| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#2)), AR1 ; |237| 
        MOV *AR3(#142), AR2 ; |237| 
        CMPU AR2 >= AR1, TC1 ; |237| 
        BCC $C$L41,TC1 ; |237| 
                                        ; branchcc occurs ; |237| 
$C$DW$L$_jpec_enc_block_dct$10$E:
$C$DW$L$_jpec_enc_block_dct$11$B:
        MOV *AR3(#142), AR1 ; |237| 
        B $C$L42  ; |237| 
                                        ; branch occurs ; |237| 
$C$DW$L$_jpec_enc_block_dct$11$E:
$C$L41:    
$C$DW$L$_jpec_enc_block_dct$12$B:
        MOV *AR3(short(#2)), AR1 ; |237| 
        SUB #1, AR1, AR1 ; |237| 
$C$DW$L$_jpec_enc_block_dct$12$E:
$C$L42:    
$C$DW$L$_jpec_enc_block_dct$13$B:
        AND #0xffff, AR1, AC1 ; |237| 
        ADD AC0, AC1 ; |237| 
        MOV AC1, AR4 ; |237| 
        MOV dbl(*FP(#132)), AC0 ; |237| 
        ADD uns(*AR3(#143)), AC0, AC1 ; |237| 
        MOV uns(*AR3(short(#3))), AC0 ; |237| 
        CMP AC1 >= AC0, TC1 ; |237| 
        MOV dbl(*AR3), XAR2
        BCC $C$L43,TC1 ; |237| 
                                        ; branchcc occurs ; |237| 
$C$DW$L$_jpec_enc_block_dct$13$E:
$C$DW$L$_jpec_enc_block_dct$14$B:
        MOV uns(*AR3(#143)), AC0 ; |237| 
        ADD dbl(*FP(#132)), AC0, AC0 ; |237| 
        B $C$L44  ; |237| 
                                        ; branch occurs ; |237| 
$C$DW$L$_jpec_enc_block_dct$14$E:
$C$L43:    
$C$DW$L$_jpec_enc_block_dct$15$B:
        MOV *AR3(short(#3)), AR1 ; |237| 
        SUB #1, AR1 ; |237| 
        AND #0xffff, AR1, AC0 ; |237| 
$C$DW$L$_jpec_enc_block_dct$15$E:
$C$L44:    
$C$DW$L$_jpec_enc_block_dct$16$B:
        MOV uns(*AR3(short(#2))), AC1 ; |237| 
$C$DW$213	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$213, DW_AT_low_pc(0x00)
	.dwattr $C$DW$213, DW_AT_name("__mpyli")
	.dwattr $C$DW$213, DW_AT_TI_call
        CALL #__mpyli ; |237| 
                                        ; call occurs [#__mpyli] ; |237| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#2)), AR1 ; |237| 
        MOV *AR3(#142), AR3 ; |237| 
        ADD #7, AR3 ; |237| 
        CMPU AR3 >= AR1, TC1 ; |237| 
        BCC $C$L45,TC1 ; |237| 
                                        ; branchcc occurs ; |237| 
$C$DW$L$_jpec_enc_block_dct$16$E:
$C$DW$L$_jpec_enc_block_dct$17$B:
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#142), AR1 ; |237| 

        B $C$L46  ; |237| 
||      ADD #7, AR1, AR1 ; |237| 

                                        ; branch occurs ; |237| 
$C$DW$L$_jpec_enc_block_dct$17$E:
$C$L45:    
$C$DW$L$_jpec_enc_block_dct$18$B:
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#2)), AR1 ; |237| 
        SUB #1, AR1, AR1 ; |237| 
$C$DW$L$_jpec_enc_block_dct$18$E:
$C$L46:    
$C$DW$L$_jpec_enc_block_dct$19$B:
        MOV dbl(*AR3), XAR3
        AND #0xffff, AR1, AC1 ; |237| 
        ADD AC0, AC1 ; |237| 
        MOV AC1, AR1 ; |237| 
        MOV AR4, T0 ; |237| 
        AADD AR1, AR3 ; |237| 
        ADD *AR2(T0), *AR3, AC0 ; |237| 
        MOV HI(AC0), AR1
        SUB #256, AR1, T0 ; |237| 
$C$DW$214	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$214, DW_AT_low_pc(0x00)
	.dwattr $C$DW$214, DW_AT_name("__fltud")
	.dwattr $C$DW$214, DW_AT_TI_call
        CALL #__fltud ; |237| 
                                        ; call occurs [#__fltud] ; |237| 
        MOV AC0, dbl(*FP(#136)) ; |237| 
	.dwpsn	file "./enc.c",line 238,column 15,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*FP(#132)), AC0 ; |238| 
        ADD uns(*AR3(#143)), AC0, AC1 ; |238| 
        MOV uns(*AR3(short(#3))), AC0 ; |238| 
        CMP AC1 >= AC0, TC1 ; |238| 
        BCC $C$L47,TC1 ; |238| 
                                        ; branchcc occurs ; |238| 
$C$DW$L$_jpec_enc_block_dct$19$E:
$C$DW$L$_jpec_enc_block_dct$20$B:
        MOV uns(*AR3(#143)), AC0 ; |238| 
        ADD dbl(*FP(#132)), AC0, AC0 ; |238| 
        B $C$L48  ; |238| 
                                        ; branch occurs ; |238| 
$C$DW$L$_jpec_enc_block_dct$20$E:
$C$L47:    
$C$DW$L$_jpec_enc_block_dct$21$B:
        MOV *AR3(short(#3)), AR1 ; |238| 
        SUB #1, AR1 ; |238| 
        AND #0xffff, AR1, AC0 ; |238| 
$C$DW$L$_jpec_enc_block_dct$21$E:
$C$L48:    
$C$DW$L$_jpec_enc_block_dct$22$B:
        MOV uns(*AR3(short(#2))), AC1 ; |238| 
$C$DW$215	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$215, DW_AT_low_pc(0x00)
	.dwattr $C$DW$215, DW_AT_name("__mpyli")
	.dwattr $C$DW$215, DW_AT_TI_call
        CALL #__mpyli ; |238| 
                                        ; call occurs [#__mpyli] ; |238| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#142), AR2 ; |238| 

        ADD #1, AR2 ; |238| 
||      MOV *AR3(short(#2)), AR1 ; |238| 

        CMPU AR2 >= AR1, TC1 ; |238| 
        BCC $C$L49,TC1 ; |238| 
                                        ; branchcc occurs ; |238| 
$C$DW$L$_jpec_enc_block_dct$22$E:
$C$DW$L$_jpec_enc_block_dct$23$B:
        MOV *AR3(#142), AR1 ; |238| 

        B $C$L50  ; |238| 
||      ADD #1, AR1, AR1 ; |238| 

                                        ; branch occurs ; |238| 
$C$DW$L$_jpec_enc_block_dct$23$E:
$C$L49:    
$C$DW$L$_jpec_enc_block_dct$24$B:
        MOV *AR3(short(#2)), AR1 ; |238| 
        SUB #1, AR1, AR1 ; |238| 
$C$DW$L$_jpec_enc_block_dct$24$E:
$C$L50:    
$C$DW$L$_jpec_enc_block_dct$25$B:
        AND #0xffff, AR1, AC1 ; |238| 
        ADD AC0, AC1 ; |238| 
        MOV AC1, AR4 ; |238| 
        MOV dbl(*FP(#132)), AC0 ; |238| 
        ADD uns(*AR3(#143)), AC0, AC1 ; |238| 
        MOV uns(*AR3(short(#3))), AC0 ; |238| 
        CMP AC1 >= AC0, TC1 ; |238| 
        MOV dbl(*AR3), XAR2
        BCC $C$L51,TC1 ; |238| 
                                        ; branchcc occurs ; |238| 
$C$DW$L$_jpec_enc_block_dct$25$E:
$C$DW$L$_jpec_enc_block_dct$26$B:
        MOV uns(*AR3(#143)), AC0 ; |238| 
        ADD dbl(*FP(#132)), AC0, AC0 ; |238| 
        B $C$L52  ; |238| 
                                        ; branch occurs ; |238| 
$C$DW$L$_jpec_enc_block_dct$26$E:
$C$L51:    
$C$DW$L$_jpec_enc_block_dct$27$B:
        MOV *AR3(short(#3)), AR1 ; |238| 
        SUB #1, AR1 ; |238| 
        AND #0xffff, AR1, AC0 ; |238| 
$C$DW$L$_jpec_enc_block_dct$27$E:
$C$L52:    
$C$DW$L$_jpec_enc_block_dct$28$B:
        MOV uns(*AR3(short(#2))), AC1 ; |238| 
$C$DW$216	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$216, DW_AT_low_pc(0x00)
	.dwattr $C$DW$216, DW_AT_name("__mpyli")
	.dwattr $C$DW$216, DW_AT_TI_call
        CALL #__mpyli ; |238| 
                                        ; call occurs [#__mpyli] ; |238| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#2)), AR1 ; |238| 
        MOV *AR3(#142), AR3 ; |238| 
        ADD #6, AR3 ; |238| 
        CMPU AR3 >= AR1, TC1 ; |238| 
        BCC $C$L53,TC1 ; |238| 
                                        ; branchcc occurs ; |238| 
$C$DW$L$_jpec_enc_block_dct$28$E:
$C$DW$L$_jpec_enc_block_dct$29$B:
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#142), AR1 ; |238| 

        B $C$L54  ; |238| 
||      ADD #6, AR1, AR1 ; |238| 

                                        ; branch occurs ; |238| 
$C$DW$L$_jpec_enc_block_dct$29$E:
$C$L53:    
$C$DW$L$_jpec_enc_block_dct$30$B:
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#2)), AR1 ; |238| 
        SUB #1, AR1, AR1 ; |238| 
$C$DW$L$_jpec_enc_block_dct$30$E:
$C$L54:    
$C$DW$L$_jpec_enc_block_dct$31$B:
        MOV dbl(*AR3), XAR3
        AND #0xffff, AR1, AC1 ; |238| 
        ADD AC0, AC1 ; |238| 
        MOV AC1, AR1 ; |238| 
        MOV AR4, T0 ; |238| 
        AADD AR1, AR3 ; |238| 
        ADD *AR2(T0), *AR3, AC0 ; |238| 
        MOV HI(AC0), AR1
        SUB #256, AR1, T0 ; |238| 
$C$DW$217	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$217, DW_AT_low_pc(0x00)
	.dwattr $C$DW$217, DW_AT_name("__fltud")
	.dwattr $C$DW$217, DW_AT_TI_call
        CALL #__fltud ; |238| 
                                        ; call occurs [#__fltud] ; |238| 
        MOV AC0, dbl(*FP(#138)) ; |238| 
	.dwpsn	file "./enc.c",line 239,column 15,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*FP(#132)), AC0 ; |239| 
        ADD uns(*AR3(#143)), AC0, AC1 ; |239| 
        MOV uns(*AR3(short(#3))), AC0 ; |239| 
        CMP AC1 >= AC0, TC1 ; |239| 
        BCC $C$L55,TC1 ; |239| 
                                        ; branchcc occurs ; |239| 
$C$DW$L$_jpec_enc_block_dct$31$E:
$C$DW$L$_jpec_enc_block_dct$32$B:
        MOV uns(*AR3(#143)), AC0 ; |239| 
        ADD dbl(*FP(#132)), AC0, AC0 ; |239| 
        B $C$L56  ; |239| 
                                        ; branch occurs ; |239| 
$C$DW$L$_jpec_enc_block_dct$32$E:
$C$L55:    
$C$DW$L$_jpec_enc_block_dct$33$B:
        MOV *AR3(short(#3)), AR1 ; |239| 
        SUB #1, AR1 ; |239| 
        AND #0xffff, AR1, AC0 ; |239| 
$C$DW$L$_jpec_enc_block_dct$33$E:
$C$L56:    
$C$DW$L$_jpec_enc_block_dct$34$B:
        MOV uns(*AR3(short(#2))), AC1 ; |239| 
$C$DW$218	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$218, DW_AT_low_pc(0x00)
	.dwattr $C$DW$218, DW_AT_name("__mpyli")
	.dwattr $C$DW$218, DW_AT_TI_call
        CALL #__mpyli ; |239| 
                                        ; call occurs [#__mpyli] ; |239| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#142), AR2 ; |239| 

        ADD #2, AR2 ; |239| 
||      MOV *AR3(short(#2)), AR1 ; |239| 

        CMPU AR2 >= AR1, TC1 ; |239| 
        BCC $C$L57,TC1 ; |239| 
                                        ; branchcc occurs ; |239| 
$C$DW$L$_jpec_enc_block_dct$34$E:
$C$DW$L$_jpec_enc_block_dct$35$B:
        MOV *AR3(#142), AR1 ; |239| 

        B $C$L58  ; |239| 
||      ADD #2, AR1, AR1 ; |239| 

                                        ; branch occurs ; |239| 
$C$DW$L$_jpec_enc_block_dct$35$E:
$C$L57:    
$C$DW$L$_jpec_enc_block_dct$36$B:
        MOV *AR3(short(#2)), AR1 ; |239| 
        SUB #1, AR1, AR1 ; |239| 
$C$DW$L$_jpec_enc_block_dct$36$E:
$C$L58:    
$C$DW$L$_jpec_enc_block_dct$37$B:
        AND #0xffff, AR1, AC1 ; |239| 
        ADD AC0, AC1 ; |239| 
        MOV AC1, AR4 ; |239| 
        MOV dbl(*FP(#132)), AC0 ; |239| 
        ADD uns(*AR3(#143)), AC0, AC1 ; |239| 
        MOV uns(*AR3(short(#3))), AC0 ; |239| 
        CMP AC1 >= AC0, TC1 ; |239| 
        MOV dbl(*AR3), XAR2
        BCC $C$L59,TC1 ; |239| 
                                        ; branchcc occurs ; |239| 
$C$DW$L$_jpec_enc_block_dct$37$E:
$C$DW$L$_jpec_enc_block_dct$38$B:
        MOV uns(*AR3(#143)), AC0 ; |239| 
        ADD dbl(*FP(#132)), AC0, AC0 ; |239| 
        B $C$L60  ; |239| 
                                        ; branch occurs ; |239| 
$C$DW$L$_jpec_enc_block_dct$38$E:
$C$L59:    
$C$DW$L$_jpec_enc_block_dct$39$B:
        MOV *AR3(short(#3)), AR1 ; |239| 
        SUB #1, AR1 ; |239| 
        AND #0xffff, AR1, AC0 ; |239| 
$C$DW$L$_jpec_enc_block_dct$39$E:
$C$L60:    
$C$DW$L$_jpec_enc_block_dct$40$B:
        MOV uns(*AR3(short(#2))), AC1 ; |239| 
$C$DW$219	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$219, DW_AT_low_pc(0x00)
	.dwattr $C$DW$219, DW_AT_name("__mpyli")
	.dwattr $C$DW$219, DW_AT_TI_call
        CALL #__mpyli ; |239| 
                                        ; call occurs [#__mpyli] ; |239| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#2)), AR1 ; |239| 
        MOV *AR3(#142), AR3 ; |239| 
        ADD #5, AR3 ; |239| 
        CMPU AR3 >= AR1, TC1 ; |239| 
        BCC $C$L61,TC1 ; |239| 
                                        ; branchcc occurs ; |239| 
$C$DW$L$_jpec_enc_block_dct$40$E:
$C$DW$L$_jpec_enc_block_dct$41$B:
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#142), AR1 ; |239| 

        B $C$L62  ; |239| 
||      ADD #5, AR1, AR1 ; |239| 

                                        ; branch occurs ; |239| 
$C$DW$L$_jpec_enc_block_dct$41$E:
$C$L61:    
$C$DW$L$_jpec_enc_block_dct$42$B:
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#2)), AR1 ; |239| 
        SUB #1, AR1, AR1 ; |239| 
$C$DW$L$_jpec_enc_block_dct$42$E:
$C$L62:    
$C$DW$L$_jpec_enc_block_dct$43$B:
        MOV dbl(*AR3), XAR3
        AND #0xffff, AR1, AC1 ; |239| 
        ADD AC0, AC1 ; |239| 
        MOV AC1, AR1 ; |239| 
        MOV AR4, T0 ; |239| 
        AADD AR1, AR3 ; |239| 
        ADD *AR2(T0), *AR3, AC0 ; |239| 
        MOV HI(AC0), AR1
        SUB #256, AR1, T0 ; |239| 
$C$DW$220	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$220, DW_AT_low_pc(0x00)
	.dwattr $C$DW$220, DW_AT_name("__fltud")
	.dwattr $C$DW$220, DW_AT_TI_call
        CALL #__fltud ; |239| 
                                        ; call occurs [#__fltud] ; |239| 
        MOV AC0, dbl(*FP(#140)) ; |239| 
	.dwpsn	file "./enc.c",line 240,column 15,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*FP(#132)), AC0 ; |240| 
        ADD uns(*AR3(#143)), AC0, AC1 ; |240| 
        MOV uns(*AR3(short(#3))), AC0 ; |240| 
        CMP AC1 >= AC0, TC1 ; |240| 
        BCC $C$L63,TC1 ; |240| 
                                        ; branchcc occurs ; |240| 
$C$DW$L$_jpec_enc_block_dct$43$E:
$C$DW$L$_jpec_enc_block_dct$44$B:
        MOV uns(*AR3(#143)), AC0 ; |240| 
        ADD dbl(*FP(#132)), AC0, AC0 ; |240| 
        B $C$L64  ; |240| 
                                        ; branch occurs ; |240| 
$C$DW$L$_jpec_enc_block_dct$44$E:
$C$L63:    
$C$DW$L$_jpec_enc_block_dct$45$B:
        MOV *AR3(short(#3)), AR1 ; |240| 
        SUB #1, AR1 ; |240| 
        AND #0xffff, AR1, AC0 ; |240| 
$C$DW$L$_jpec_enc_block_dct$45$E:
$C$L64:    
$C$DW$L$_jpec_enc_block_dct$46$B:
        MOV uns(*AR3(short(#2))), AC1 ; |240| 
$C$DW$221	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$221, DW_AT_low_pc(0x00)
	.dwattr $C$DW$221, DW_AT_name("__mpyli")
	.dwattr $C$DW$221, DW_AT_TI_call
        CALL #__mpyli ; |240| 
                                        ; call occurs [#__mpyli] ; |240| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#142), AR2 ; |240| 

        ADD #3, AR2 ; |240| 
||      MOV *AR3(short(#2)), AR1 ; |240| 

        CMPU AR2 >= AR1, TC1 ; |240| 
        BCC $C$L65,TC1 ; |240| 
                                        ; branchcc occurs ; |240| 
$C$DW$L$_jpec_enc_block_dct$46$E:
$C$DW$L$_jpec_enc_block_dct$47$B:
        MOV *AR3(#142), AR1 ; |240| 

        B $C$L66  ; |240| 
||      ADD #3, AR1, AR1 ; |240| 

                                        ; branch occurs ; |240| 
$C$DW$L$_jpec_enc_block_dct$47$E:
$C$L65:    
$C$DW$L$_jpec_enc_block_dct$48$B:
        MOV *AR3(short(#2)), AR1 ; |240| 
        SUB #1, AR1, AR1 ; |240| 
$C$DW$L$_jpec_enc_block_dct$48$E:
$C$L66:    
$C$DW$L$_jpec_enc_block_dct$49$B:
        AND #0xffff, AR1, AC1 ; |240| 
        ADD AC0, AC1 ; |240| 
        MOV AC1, AR4 ; |240| 
        MOV dbl(*FP(#132)), AC0 ; |240| 
        ADD uns(*AR3(#143)), AC0, AC1 ; |240| 
        MOV uns(*AR3(short(#3))), AC0 ; |240| 
        CMP AC1 >= AC0, TC1 ; |240| 
        MOV dbl(*AR3), XAR2
        BCC $C$L67,TC1 ; |240| 
                                        ; branchcc occurs ; |240| 
$C$DW$L$_jpec_enc_block_dct$49$E:
$C$DW$L$_jpec_enc_block_dct$50$B:
        MOV uns(*AR3(#143)), AC0 ; |240| 
        ADD dbl(*FP(#132)), AC0, AC0 ; |240| 
        B $C$L68  ; |240| 
                                        ; branch occurs ; |240| 
$C$DW$L$_jpec_enc_block_dct$50$E:
$C$L67:    
$C$DW$L$_jpec_enc_block_dct$51$B:
        MOV *AR3(short(#3)), AR1 ; |240| 
        SUB #1, AR1 ; |240| 
        AND #0xffff, AR1, AC0 ; |240| 
$C$DW$L$_jpec_enc_block_dct$51$E:
$C$L68:    
$C$DW$L$_jpec_enc_block_dct$52$B:
        MOV uns(*AR3(short(#2))), AC1 ; |240| 
$C$DW$222	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$222, DW_AT_low_pc(0x00)
	.dwattr $C$DW$222, DW_AT_name("__mpyli")
	.dwattr $C$DW$222, DW_AT_TI_call
        CALL #__mpyli ; |240| 
                                        ; call occurs [#__mpyli] ; |240| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#2)), AR1 ; |240| 
        MOV *AR3(#142), AR3 ; |240| 
        ADD #4, AR3 ; |240| 
        CMPU AR3 >= AR1, TC1 ; |240| 
        BCC $C$L69,TC1 ; |240| 
                                        ; branchcc occurs ; |240| 
$C$DW$L$_jpec_enc_block_dct$52$E:
$C$DW$L$_jpec_enc_block_dct$53$B:
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#142), AR1 ; |240| 

        B $C$L70  ; |240| 
||      ADD #4, AR1, AR1 ; |240| 

                                        ; branch occurs ; |240| 
$C$DW$L$_jpec_enc_block_dct$53$E:
$C$L69:    
$C$DW$L$_jpec_enc_block_dct$54$B:
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#2)), AR1 ; |240| 
        SUB #1, AR1, AR1 ; |240| 
$C$DW$L$_jpec_enc_block_dct$54$E:
$C$L70:    
$C$DW$L$_jpec_enc_block_dct$55$B:
        MOV dbl(*AR3), XAR3
        AND #0xffff, AR1, AC1 ; |240| 
        ADD AC0, AC1 ; |240| 
        MOV AC1, AR1 ; |240| 
        MOV AR4, T0 ; |240| 
        AADD AR1, AR3 ; |240| 
        ADD *AR2(T0), *AR3, AC0 ; |240| 
        MOV HI(AC0), AR1
        SUB #256, AR1, T0 ; |240| 
$C$DW$223	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$223, DW_AT_low_pc(0x00)
	.dwattr $C$DW$223, DW_AT_name("__fltud")
	.dwattr $C$DW$223, DW_AT_TI_call
        CALL #__fltud ; |240| 
                                        ; call occurs [#__fltud] ; |240| 
        MOV AC0, dbl(*FP(#142)) ; |240| 
	.dwpsn	file "./enc.c",line 242,column 15,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*FP(#132)), AC0 ; |242| 
        ADD uns(*AR3(#143)), AC0, AC1 ; |242| 
        MOV uns(*AR3(short(#3))), AC0 ; |242| 
        CMP AC1 >= AC0, TC1 ; |242| 
        BCC $C$L71,TC1 ; |242| 
                                        ; branchcc occurs ; |242| 
$C$DW$L$_jpec_enc_block_dct$55$E:
$C$DW$L$_jpec_enc_block_dct$56$B:
        MOV uns(*AR3(#143)), AC0 ; |242| 
        ADD dbl(*FP(#132)), AC0, AC0 ; |242| 
        B $C$L72  ; |242| 
                                        ; branch occurs ; |242| 
$C$DW$L$_jpec_enc_block_dct$56$E:
$C$L71:    
$C$DW$L$_jpec_enc_block_dct$57$B:
        MOV *AR3(short(#3)), AR1 ; |242| 
        SUB #1, AR1 ; |242| 
        AND #0xffff, AR1, AC0 ; |242| 
$C$DW$L$_jpec_enc_block_dct$57$E:
$C$L72:    
$C$DW$L$_jpec_enc_block_dct$58$B:
        MOV uns(*AR3(short(#2))), AC1 ; |242| 
$C$DW$224	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$224, DW_AT_low_pc(0x00)
	.dwattr $C$DW$224, DW_AT_name("__mpyli")
	.dwattr $C$DW$224, DW_AT_TI_call
        CALL #__mpyli ; |242| 
                                        ; call occurs [#__mpyli] ; |242| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#142), AR2 ; |242| 

        ADD #7, AR2 ; |242| 
||      MOV *AR3(short(#2)), AR1 ; |242| 

        CMPU AR2 >= AR1, TC1 ; |242| 
        BCC $C$L73,TC1 ; |242| 
                                        ; branchcc occurs ; |242| 
$C$DW$L$_jpec_enc_block_dct$58$E:
$C$DW$L$_jpec_enc_block_dct$59$B:
        MOV *AR3(#142), AR1 ; |242| 

        B $C$L74  ; |242| 
||      ADD #7, AR1, AR1 ; |242| 

                                        ; branch occurs ; |242| 
$C$DW$L$_jpec_enc_block_dct$59$E:
$C$L73:    
$C$DW$L$_jpec_enc_block_dct$60$B:
        MOV *AR3(short(#2)), AR1 ; |242| 
        SUB #1, AR1, AR1 ; |242| 
$C$DW$L$_jpec_enc_block_dct$60$E:
$C$L74:    
$C$DW$L$_jpec_enc_block_dct$61$B:
        MOV dbl(*AR3), XAR3
        AND #0xffff, AR1, AC1 ; |242| 
        ADD AC0, AC1 ; |242| 
        MOV AC1, T0 ; |242| 
        MOV *AR3(T0), AR2 ; |242| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*FP(#132)), AC0 ; |242| 
        ADD uns(*AR3(#143)), AC0, AC1 ; |242| 
        MOV uns(*AR3(short(#3))), AC0 ; |242| 
        CMP AC1 >= AC0, TC1 ; |242| 
        BCC $C$L75,TC1 ; |242| 
                                        ; branchcc occurs ; |242| 
$C$DW$L$_jpec_enc_block_dct$61$E:
$C$DW$L$_jpec_enc_block_dct$62$B:
        MOV uns(*AR3(#143)), AC0 ; |242| 
        ADD dbl(*FP(#132)), AC0, AC0 ; |242| 
        B $C$L76  ; |242| 
                                        ; branch occurs ; |242| 
$C$DW$L$_jpec_enc_block_dct$62$E:
$C$L75:    
$C$DW$L$_jpec_enc_block_dct$63$B:
        MOV *AR3(short(#3)), AR1 ; |242| 
        SUB #1, AR1 ; |242| 
        AND #0xffff, AR1, AC0 ; |242| 
$C$DW$L$_jpec_enc_block_dct$63$E:
$C$L76:    
$C$DW$L$_jpec_enc_block_dct$64$B:
        MOV uns(*AR3(short(#2))), AC1 ; |242| 
$C$DW$225	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$225, DW_AT_low_pc(0x00)
	.dwattr $C$DW$225, DW_AT_name("__mpyli")
	.dwattr $C$DW$225, DW_AT_TI_call
        CALL #__mpyli ; |242| 
                                        ; call occurs [#__mpyli] ; |242| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#2)), AR1 ; |242| 
        MOV *AR3(#142), AR3 ; |242| 
        CMPU AR3 >= AR1, TC1 ; |242| 
        BCC $C$L77,TC1 ; |242| 
                                        ; branchcc occurs ; |242| 
$C$DW$L$_jpec_enc_block_dct$64$E:
$C$DW$L$_jpec_enc_block_dct$65$B:
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#142), AR1 ; |242| 
        B $C$L78  ; |242| 
                                        ; branch occurs ; |242| 
$C$DW$L$_jpec_enc_block_dct$65$E:
$C$L77:    
$C$DW$L$_jpec_enc_block_dct$66$B:
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#2)), AR1 ; |242| 
        SUB #1, AR1, AR1 ; |242| 
$C$DW$L$_jpec_enc_block_dct$66$E:
$C$L78:    
$C$DW$L$_jpec_enc_block_dct$67$B:
        MOV dbl(*AR3), XAR3
        AND #0xffff, AR1, AC1 ; |242| 
        ADD AC0, AC1 ; |242| 
        MOV AC1, T0 ; |242| 
        SUB AR2, *AR3(T0), T0 ; |242| 
$C$DW$226	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$226, DW_AT_low_pc(0x00)
	.dwattr $C$DW$226, DW_AT_name("__fltud")
	.dwattr $C$DW$226, DW_AT_TI_call
        CALL #__fltud ; |242| 
                                        ; call occurs [#__fltud] ; |242| 
        MOV AC0, dbl(*FP(#144)) ; |242| 
	.dwpsn	file "./enc.c",line 243,column 15,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*FP(#132)), AC0 ; |243| 
        ADD uns(*AR3(#143)), AC0, AC1 ; |243| 
        MOV uns(*AR3(short(#3))), AC0 ; |243| 
        CMP AC1 >= AC0, TC1 ; |243| 
        BCC $C$L79,TC1 ; |243| 
                                        ; branchcc occurs ; |243| 
$C$DW$L$_jpec_enc_block_dct$67$E:
$C$DW$L$_jpec_enc_block_dct$68$B:
        MOV uns(*AR3(#143)), AC0 ; |243| 
        ADD dbl(*FP(#132)), AC0, AC0 ; |243| 
        B $C$L80  ; |243| 
                                        ; branch occurs ; |243| 
$C$DW$L$_jpec_enc_block_dct$68$E:
$C$L79:    
$C$DW$L$_jpec_enc_block_dct$69$B:
        MOV *AR3(short(#3)), AR1 ; |243| 
        SUB #1, AR1 ; |243| 
        AND #0xffff, AR1, AC0 ; |243| 
$C$DW$L$_jpec_enc_block_dct$69$E:
$C$L80:    
$C$DW$L$_jpec_enc_block_dct$70$B:
        MOV uns(*AR3(short(#2))), AC1 ; |243| 
$C$DW$227	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$227, DW_AT_low_pc(0x00)
	.dwattr $C$DW$227, DW_AT_name("__mpyli")
	.dwattr $C$DW$227, DW_AT_TI_call
        CALL #__mpyli ; |243| 
                                        ; call occurs [#__mpyli] ; |243| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#142), AR2 ; |243| 

        ADD #6, AR2 ; |243| 
||      MOV *AR3(short(#2)), AR1 ; |243| 

        CMPU AR2 >= AR1, TC1 ; |243| 
        BCC $C$L81,TC1 ; |243| 
                                        ; branchcc occurs ; |243| 
$C$DW$L$_jpec_enc_block_dct$70$E:
$C$DW$L$_jpec_enc_block_dct$71$B:
        MOV *AR3(#142), AR1 ; |243| 

        B $C$L82  ; |243| 
||      ADD #6, AR1, AR1 ; |243| 

                                        ; branch occurs ; |243| 
$C$DW$L$_jpec_enc_block_dct$71$E:
$C$L81:    
$C$DW$L$_jpec_enc_block_dct$72$B:
        MOV *AR3(short(#2)), AR1 ; |243| 
        SUB #1, AR1, AR1 ; |243| 
$C$DW$L$_jpec_enc_block_dct$72$E:
$C$L82:    
$C$DW$L$_jpec_enc_block_dct$73$B:
        MOV dbl(*AR3), XAR3
        AND #0xffff, AR1, AC1 ; |243| 
        ADD AC0, AC1 ; |243| 
        MOV AC1, T0 ; |243| 
        MOV *AR3(T0), AR4 ; |243| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*FP(#132)), AC0 ; |243| 
        ADD uns(*AR3(#143)), AC0, AC1 ; |243| 
        MOV uns(*AR3(short(#3))), AC0 ; |243| 
        CMP AC1 >= AC0, TC1 ; |243| 
        BCC $C$L83,TC1 ; |243| 
                                        ; branchcc occurs ; |243| 
$C$DW$L$_jpec_enc_block_dct$73$E:
$C$DW$L$_jpec_enc_block_dct$74$B:
        MOV uns(*AR3(#143)), AC0 ; |243| 
        ADD dbl(*FP(#132)), AC0, AC0 ; |243| 
        B $C$L84  ; |243| 
                                        ; branch occurs ; |243| 
$C$DW$L$_jpec_enc_block_dct$74$E:
$C$L83:    
$C$DW$L$_jpec_enc_block_dct$75$B:
        MOV *AR3(short(#3)), AR1 ; |243| 
        SUB #1, AR1 ; |243| 
        AND #0xffff, AR1, AC0 ; |243| 
$C$DW$L$_jpec_enc_block_dct$75$E:
$C$L84:    
$C$DW$L$_jpec_enc_block_dct$76$B:
        MOV uns(*AR3(short(#2))), AC1 ; |243| 
$C$DW$228	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$228, DW_AT_low_pc(0x00)
	.dwattr $C$DW$228, DW_AT_name("__mpyli")
	.dwattr $C$DW$228, DW_AT_TI_call
        CALL #__mpyli ; |243| 
                                        ; call occurs [#__mpyli] ; |243| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#142), AR2 ; |243| 

        ADD #1, AR2 ; |243| 
||      MOV *AR3(short(#2)), AR1 ; |243| 

        CMPU AR2 >= AR1, TC1 ; |243| 
        BCC $C$L85,TC1 ; |243| 
                                        ; branchcc occurs ; |243| 
$C$DW$L$_jpec_enc_block_dct$76$E:
$C$DW$L$_jpec_enc_block_dct$77$B:
        MOV *AR3(#142), AR1 ; |243| 

        B $C$L86  ; |243| 
||      ADD #1, AR1, AR1 ; |243| 

                                        ; branch occurs ; |243| 
$C$DW$L$_jpec_enc_block_dct$77$E:
$C$L85:    
$C$DW$L$_jpec_enc_block_dct$78$B:
        MOV *AR3(short(#2)), AR1 ; |243| 
        SUB #1, AR1, AR1 ; |243| 
$C$DW$L$_jpec_enc_block_dct$78$E:
$C$L86:    
$C$DW$L$_jpec_enc_block_dct$79$B:
        MOV dbl(*AR3), XAR3
        AND #0xffff, AR1, AC1 ; |243| 
        ADD AC0, AC1 ; |243| 
        MOV AC1, T0 ; |243| 
        SUB AR4, *AR3(T0), T0 ; |243| 
$C$DW$229	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$229, DW_AT_low_pc(0x00)
	.dwattr $C$DW$229, DW_AT_name("__fltud")
	.dwattr $C$DW$229, DW_AT_TI_call
        CALL #__fltud ; |243| 
                                        ; call occurs [#__fltud] ; |243| 
        MOV AC0, dbl(*FP(#146)) ; |243| 
	.dwpsn	file "./enc.c",line 244,column 15,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*FP(#132)), AC0 ; |244| 
        ADD uns(*AR3(#143)), AC0, AC1 ; |244| 
        MOV uns(*AR3(short(#3))), AC0 ; |244| 
        CMP AC1 >= AC0, TC1 ; |244| 
        BCC $C$L87,TC1 ; |244| 
                                        ; branchcc occurs ; |244| 
$C$DW$L$_jpec_enc_block_dct$79$E:
$C$DW$L$_jpec_enc_block_dct$80$B:
        MOV uns(*AR3(#143)), AC0 ; |244| 
        ADD dbl(*FP(#132)), AC0, AC0 ; |244| 
        B $C$L88  ; |244| 
                                        ; branch occurs ; |244| 
$C$DW$L$_jpec_enc_block_dct$80$E:
$C$L87:    
$C$DW$L$_jpec_enc_block_dct$81$B:
        MOV *AR3(short(#3)), AR1 ; |244| 
        SUB #1, AR1 ; |244| 
        AND #0xffff, AR1, AC0 ; |244| 
$C$DW$L$_jpec_enc_block_dct$81$E:
$C$L88:    
$C$DW$L$_jpec_enc_block_dct$82$B:
        MOV uns(*AR3(short(#2))), AC1 ; |244| 
$C$DW$230	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$230, DW_AT_low_pc(0x00)
	.dwattr $C$DW$230, DW_AT_name("__mpyli")
	.dwattr $C$DW$230, DW_AT_TI_call
        CALL #__mpyli ; |244| 
                                        ; call occurs [#__mpyli] ; |244| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#142), AR2 ; |244| 

        ADD #5, AR2 ; |244| 
||      MOV *AR3(short(#2)), AR1 ; |244| 

        CMPU AR2 >= AR1, TC1 ; |244| 
        BCC $C$L89,TC1 ; |244| 
                                        ; branchcc occurs ; |244| 
$C$DW$L$_jpec_enc_block_dct$82$E:
$C$DW$L$_jpec_enc_block_dct$83$B:
        MOV *AR3(#142), AR1 ; |244| 

        B $C$L90  ; |244| 
||      ADD #5, AR1, AR1 ; |244| 

                                        ; branch occurs ; |244| 
$C$DW$L$_jpec_enc_block_dct$83$E:
$C$L89:    
$C$DW$L$_jpec_enc_block_dct$84$B:
        MOV *AR3(short(#2)), AR1 ; |244| 
        SUB #1, AR1, AR1 ; |244| 
$C$DW$L$_jpec_enc_block_dct$84$E:
$C$L90:    
$C$DW$L$_jpec_enc_block_dct$85$B:
        MOV dbl(*AR3), XAR3
        AND #0xffff, AR1, AC1 ; |244| 
        ADD AC0, AC1 ; |244| 
        MOV AC1, T0 ; |244| 
        MOV *AR3(T0), AR4 ; |244| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*FP(#132)), AC0 ; |244| 
        ADD uns(*AR3(#143)), AC0, AC1 ; |244| 
        MOV uns(*AR3(short(#3))), AC0 ; |244| 
        CMP AC1 >= AC0, TC1 ; |244| 
        BCC $C$L91,TC1 ; |244| 
                                        ; branchcc occurs ; |244| 
$C$DW$L$_jpec_enc_block_dct$85$E:
$C$DW$L$_jpec_enc_block_dct$86$B:
        MOV uns(*AR3(#143)), AC0 ; |244| 
        ADD dbl(*FP(#132)), AC0, AC0 ; |244| 
        B $C$L92  ; |244| 
                                        ; branch occurs ; |244| 
$C$DW$L$_jpec_enc_block_dct$86$E:
$C$L91:    
$C$DW$L$_jpec_enc_block_dct$87$B:
        MOV *AR3(short(#3)), AR1 ; |244| 
        SUB #1, AR1 ; |244| 
        AND #0xffff, AR1, AC0 ; |244| 
$C$DW$L$_jpec_enc_block_dct$87$E:
$C$L92:    
$C$DW$L$_jpec_enc_block_dct$88$B:
        MOV uns(*AR3(short(#2))), AC1 ; |244| 
$C$DW$231	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$231, DW_AT_low_pc(0x00)
	.dwattr $C$DW$231, DW_AT_name("__mpyli")
	.dwattr $C$DW$231, DW_AT_TI_call
        CALL #__mpyli ; |244| 
                                        ; call occurs [#__mpyli] ; |244| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#142), AR2 ; |244| 

        ADD #2, AR2 ; |244| 
||      MOV *AR3(short(#2)), AR1 ; |244| 

        CMPU AR2 >= AR1, TC1 ; |244| 
        BCC $C$L93,TC1 ; |244| 
                                        ; branchcc occurs ; |244| 
$C$DW$L$_jpec_enc_block_dct$88$E:
$C$DW$L$_jpec_enc_block_dct$89$B:
        MOV *AR3(#142), AR1 ; |244| 

        B $C$L94  ; |244| 
||      ADD #2, AR1, AR1 ; |244| 

                                        ; branch occurs ; |244| 
$C$DW$L$_jpec_enc_block_dct$89$E:
$C$L93:    
$C$DW$L$_jpec_enc_block_dct$90$B:
        MOV *AR3(short(#2)), AR1 ; |244| 
        SUB #1, AR1, AR1 ; |244| 
$C$DW$L$_jpec_enc_block_dct$90$E:
$C$L94:    
$C$DW$L$_jpec_enc_block_dct$91$B:
        MOV dbl(*AR3), XAR3
        AND #0xffff, AR1, AC1 ; |244| 
        ADD AC0, AC1 ; |244| 
        MOV AC1, T0 ; |244| 
        SUB AR4, *AR3(T0), T0 ; |244| 
$C$DW$232	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$232, DW_AT_low_pc(0x00)
	.dwattr $C$DW$232, DW_AT_name("__fltud")
	.dwattr $C$DW$232, DW_AT_TI_call
        CALL #__fltud ; |244| 
                                        ; call occurs [#__fltud] ; |244| 
        MOV AC0, dbl(*FP(#148)) ; |244| 
	.dwpsn	file "./enc.c",line 245,column 15,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*FP(#132)), AC0 ; |245| 
        ADD uns(*AR3(#143)), AC0, AC1 ; |245| 
        MOV uns(*AR3(short(#3))), AC0 ; |245| 
        CMP AC1 >= AC0, TC1 ; |245| 
        BCC $C$L95,TC1 ; |245| 
                                        ; branchcc occurs ; |245| 
$C$DW$L$_jpec_enc_block_dct$91$E:
$C$DW$L$_jpec_enc_block_dct$92$B:
        MOV uns(*AR3(#143)), AC0 ; |245| 
        ADD dbl(*FP(#132)), AC0, AC0 ; |245| 
        B $C$L96  ; |245| 
                                        ; branch occurs ; |245| 
$C$DW$L$_jpec_enc_block_dct$92$E:
$C$L95:    
$C$DW$L$_jpec_enc_block_dct$93$B:
        MOV *AR3(short(#3)), AR1 ; |245| 
        SUB #1, AR1 ; |245| 
        AND #0xffff, AR1, AC0 ; |245| 
$C$DW$L$_jpec_enc_block_dct$93$E:
$C$L96:    
$C$DW$L$_jpec_enc_block_dct$94$B:
        MOV uns(*AR3(short(#2))), AC1 ; |245| 
$C$DW$233	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$233, DW_AT_low_pc(0x00)
	.dwattr $C$DW$233, DW_AT_name("__mpyli")
	.dwattr $C$DW$233, DW_AT_TI_call
        CALL #__mpyli ; |245| 
                                        ; call occurs [#__mpyli] ; |245| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#142), AR2 ; |245| 

        ADD #4, AR2 ; |245| 
||      MOV *AR3(short(#2)), AR1 ; |245| 

        CMPU AR2 >= AR1, TC1 ; |245| 
        BCC $C$L97,TC1 ; |245| 
                                        ; branchcc occurs ; |245| 
$C$DW$L$_jpec_enc_block_dct$94$E:
$C$DW$L$_jpec_enc_block_dct$95$B:
        MOV *AR3(#142), AR1 ; |245| 

        B $C$L98  ; |245| 
||      ADD #4, AR1, AR1 ; |245| 

                                        ; branch occurs ; |245| 
$C$DW$L$_jpec_enc_block_dct$95$E:
$C$L97:    
$C$DW$L$_jpec_enc_block_dct$96$B:
        MOV *AR3(short(#2)), AR1 ; |245| 
        SUB #1, AR1, AR1 ; |245| 
$C$DW$L$_jpec_enc_block_dct$96$E:
$C$L98:    
$C$DW$L$_jpec_enc_block_dct$97$B:
        MOV dbl(*AR3), XAR3
        AND #0xffff, AR1, AC1 ; |245| 
        ADD AC0, AC1 ; |245| 
        MOV AC1, T0 ; |245| 
        MOV *AR3(T0), AR4 ; |245| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*FP(#132)), AC0 ; |245| 
        ADD uns(*AR3(#143)), AC0, AC1 ; |245| 
        MOV uns(*AR3(short(#3))), AC0 ; |245| 
        CMP AC1 >= AC0, TC1 ; |245| 
        BCC $C$L99,TC1 ; |245| 
                                        ; branchcc occurs ; |245| 
$C$DW$L$_jpec_enc_block_dct$97$E:
$C$DW$L$_jpec_enc_block_dct$98$B:
        MOV uns(*AR3(#143)), AC0 ; |245| 
        ADD dbl(*FP(#132)), AC0, AC0 ; |245| 
        B $C$L100 ; |245| 
                                        ; branch occurs ; |245| 
$C$DW$L$_jpec_enc_block_dct$98$E:
$C$L99:    
$C$DW$L$_jpec_enc_block_dct$99$B:
        MOV *AR3(short(#3)), AR1 ; |245| 
        SUB #1, AR1 ; |245| 
        AND #0xffff, AR1, AC0 ; |245| 
$C$DW$L$_jpec_enc_block_dct$99$E:
$C$L100:    
$C$DW$L$_jpec_enc_block_dct$100$B:
        MOV uns(*AR3(short(#2))), AC1 ; |245| 
$C$DW$234	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$234, DW_AT_low_pc(0x00)
	.dwattr $C$DW$234, DW_AT_name("__mpyli")
	.dwattr $C$DW$234, DW_AT_TI_call
        CALL #__mpyli ; |245| 
                                        ; call occurs [#__mpyli] ; |245| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#142), AR2 ; |245| 

        ADD #3, AR2 ; |245| 
||      MOV *AR3(short(#2)), AR1 ; |245| 

        CMPU AR2 >= AR1, TC1 ; |245| 
        BCC $C$L101,TC1 ; |245| 
                                        ; branchcc occurs ; |245| 
$C$DW$L$_jpec_enc_block_dct$100$E:
$C$DW$L$_jpec_enc_block_dct$101$B:
        MOV *AR3(#142), AR1 ; |245| 

        B $C$L102 ; |245| 
||      ADD #3, AR1, AR1 ; |245| 

                                        ; branch occurs ; |245| 
$C$DW$L$_jpec_enc_block_dct$101$E:
$C$L101:    
$C$DW$L$_jpec_enc_block_dct$102$B:
        MOV *AR3(short(#2)), AR1 ; |245| 
        SUB #1, AR1, AR1 ; |245| 
$C$DW$L$_jpec_enc_block_dct$102$E:
$C$L102:    
$C$DW$L$_jpec_enc_block_dct$103$B:
        MOV dbl(*AR3), XAR3
        AND #0xffff, AR1, AC1 ; |245| 
        ADD AC0, AC1 ; |245| 
        MOV AC1, T0 ; |245| 
        SUB AR4, *AR3(T0), T0 ; |245| 
$C$DW$235	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$235, DW_AT_low_pc(0x00)
	.dwattr $C$DW$235, DW_AT_name("__fltud")
	.dwattr $C$DW$235, DW_AT_TI_call
        CALL #__fltud ; |245| 
                                        ; call occurs [#__fltud] ; |245| 
        MOV AC0, dbl(*FP(#150)) ; |245| 
	.dwpsn	file "./enc.c",line 247,column 9,is_stmt
        MOV dbl(*FP(#138)), AC1 ; |247| 
        MOV dbl(*FP(#136)), AC0 ; |247| 
$C$DW$236	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$236, DW_AT_low_pc(0x00)
	.dwattr $C$DW$236, DW_AT_name("__addd")
	.dwattr $C$DW$236, DW_AT_TI_call
        CALL #__addd ; |247| 
                                        ; call occurs [#__addd] ; |247| 
        MOV dbl(*FP(#140)), AC1 ; |247| 
$C$DW$237	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$237, DW_AT_low_pc(0x00)
	.dwattr $C$DW$237, DW_AT_name("__addd")
	.dwattr $C$DW$237, DW_AT_TI_call
        CALL #__addd ; |247| 
                                        ; call occurs [#__addd] ; |247| 
        MOV dbl(*FP(#142)), AC1 ; |247| 
$C$DW$238	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$238, DW_AT_low_pc(0x00)
	.dwattr $C$DW$238, DW_AT_name("__addd")
	.dwattr $C$DW$238, DW_AT_TI_call
        CALL #__addd ; |247| 
                                        ; call occurs [#__addd] ; |247| 
        MOV dbl(*SP(#2)), XAR3

        MOV dbl(*AR3(short(#6))), AC0 ; |247| 
||      OR #0, AC0, AC1

$C$DW$239	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$239, DW_AT_low_pc(0x00)
	.dwattr $C$DW$239, DW_AT_name("__mpyd")
	.dwattr $C$DW$239, DW_AT_TI_call
        CALL #__mpyd ; |247| 
                                        ; call occurs [#__mpyd] ; |247| 
        MOV dbl(*FP(#132)), AC1 ; |247| 
        SFTS AC1, #3, AC1 ; |247| 
        MOV AC1, T0 ; |247| 
        SFTL T0, #1 ; |247| 
        AMAR *SP(#4), XAR3
        MOV AC0, dbl(*AR3(T0)) ; |247| 
	.dwpsn	file "./enc.c",line 248,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*FP(#144)), AC1 ; |248| 
        MOV dbl(*AR3), AC0 ; |248| 
$C$DW$240	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$240, DW_AT_low_pc(0x00)
	.dwattr $C$DW$240, DW_AT_name("__mpyd")
	.dwattr $C$DW$240, DW_AT_TI_call
        CALL #__mpyd ; |248| 
                                        ; call occurs [#__mpyd] ; |248| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*FP(#152)) ; |248| 
        MOV dbl(*FP(#146)), AC1 ; |248| 
        MOV dbl(*AR3(short(#4))), AC0 ; |248| 
$C$DW$241	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$241, DW_AT_low_pc(0x00)
	.dwattr $C$DW$241, DW_AT_name("__mpyd")
	.dwattr $C$DW$241, DW_AT_TI_call
        CALL #__mpyd ; |248| 
                                        ; call occurs [#__mpyd] ; |248| 
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |248| 
$C$DW$242	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$242, DW_AT_low_pc(0x00)
	.dwattr $C$DW$242, DW_AT_name("__addd")
	.dwattr $C$DW$242, DW_AT_TI_call
        CALL #__addd ; |248| 
                                        ; call occurs [#__addd] ; |248| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*FP(#152)) ; |248| 
        MOV dbl(*FP(#148)), AC1 ; |248| 
        MOV dbl(*AR3(#8)), AC0 ; |248| 
$C$DW$243	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$243, DW_AT_low_pc(0x00)
	.dwattr $C$DW$243, DW_AT_name("__mpyd")
	.dwattr $C$DW$243, DW_AT_TI_call
        CALL #__mpyd ; |248| 
                                        ; call occurs [#__mpyd] ; |248| 
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |248| 
$C$DW$244	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$244, DW_AT_low_pc(0x00)
	.dwattr $C$DW$244, DW_AT_name("__addd")
	.dwattr $C$DW$244, DW_AT_TI_call
        CALL #__addd ; |248| 
                                        ; call occurs [#__addd] ; |248| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*FP(#152)) ; |248| 
        MOV dbl(*FP(#150)), AC1 ; |248| 
        MOV dbl(*AR3(#12)), AC0 ; |248| 
$C$DW$245	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$245, DW_AT_low_pc(0x00)
	.dwattr $C$DW$245, DW_AT_name("__mpyd")
	.dwattr $C$DW$245, DW_AT_TI_call
        CALL #__mpyd ; |248| 
                                        ; call occurs [#__mpyd] ; |248| 
$C$DW$L$_jpec_enc_block_dct$103$E:
$C$DW$L$_jpec_enc_block_dct$104$B:
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |248| 
$C$DW$246	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$246, DW_AT_low_pc(0x00)
	.dwattr $C$DW$246, DW_AT_name("__addd")
	.dwattr $C$DW$246, DW_AT_TI_call
        CALL #__addd ; |248| 
                                        ; call occurs [#__addd] ; |248| 
        MOV dbl(*FP(#132)), AC1 ; |248| 
        SFTS AC1, #3, AC1 ; |248| 
        ADD #1, AC1 ; |248| 
        MOV AC1, T0 ; |248| 
        SFTL T0, #1 ; |248| 
        AMAR *SP(#4), XAR3
        MOV AC0, dbl(*AR3(T0)) ; |248| 
	.dwpsn	file "./enc.c",line 249,column 9,is_stmt
        MOV dbl(*FP(#136)), AC0 ; |249| 
        MOV dbl(*FP(#142)), AC1 ; |249| 
$C$DW$247	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$247, DW_AT_low_pc(0x00)
	.dwattr $C$DW$247, DW_AT_name("__subd")
	.dwattr $C$DW$247, DW_AT_TI_call
        CALL #__subd ; |249| 
                                        ; call occurs [#__subd] ; |249| 
        MOV dbl(*SP(#2)), XAR3

        MOV dbl(*AR3(short(#2))), AC0 ; |249| 
||      OR #0, AC0, AC1

$C$DW$248	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$248, DW_AT_low_pc(0x00)
	.dwattr $C$DW$248, DW_AT_name("__mpyd")
	.dwattr $C$DW$248, DW_AT_TI_call
        CALL #__mpyd ; |249| 
                                        ; call occurs [#__mpyd] ; |249| 
        MOV AC0, dbl(*FP(#152)) ; |249| 
        MOV dbl(*FP(#140)), AC1 ; |249| 
        MOV dbl(*FP(#138)), AC0 ; |249| 
$C$DW$249	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$249, DW_AT_low_pc(0x00)
	.dwattr $C$DW$249, DW_AT_name("__subd")
	.dwattr $C$DW$249, DW_AT_TI_call
        CALL #__subd ; |249| 
                                        ; call occurs [#__subd] ; |249| 
        MOV dbl(*SP(#2)), XAR3
        OR #0, AC0, AC1
        MOV dbl(*AR3(#10)), AC0 ; |249| 
$C$DW$250	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$250, DW_AT_low_pc(0x00)
	.dwattr $C$DW$250, DW_AT_name("__mpyd")
	.dwattr $C$DW$250, DW_AT_TI_call
        CALL #__mpyd ; |249| 
                                        ; call occurs [#__mpyd] ; |249| 
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |249| 
$C$DW$251	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$251, DW_AT_low_pc(0x00)
	.dwattr $C$DW$251, DW_AT_name("__addd")
	.dwattr $C$DW$251, DW_AT_TI_call
        CALL #__addd ; |249| 
                                        ; call occurs [#__addd] ; |249| 
        MOV dbl(*FP(#132)), AC1 ; |249| 
        SFTS AC1, #3, AC1 ; |249| 
        ADD #2, AC1 ; |249| 
        MOV AC1, T0 ; |249| 
        SFTL T0, #1 ; |249| 
        AMAR *SP(#4), XAR3
        MOV AC0, dbl(*AR3(T0)) ; |249| 
	.dwpsn	file "./enc.c",line 250,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*FP(#144)), AC1 ; |250| 
        MOV dbl(*AR3(short(#4))), AC0 ; |250| 
$C$DW$252	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$252, DW_AT_low_pc(0x00)
	.dwattr $C$DW$252, DW_AT_name("__mpyd")
	.dwattr $C$DW$252, DW_AT_TI_call
        CALL #__mpyd ; |250| 
                                        ; call occurs [#__mpyd] ; |250| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*FP(#152)) ; |250| 
        MOV dbl(*FP(#146)), AC1 ; |250| 
        MOV dbl(*AR3(#12)), AC0 ; |250| 
$C$DW$253	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$253, DW_AT_low_pc(0x00)
	.dwattr $C$DW$253, DW_AT_name("__mpyd")
	.dwattr $C$DW$253, DW_AT_TI_call
        CALL #__mpyd ; |250| 
                                        ; call occurs [#__mpyd] ; |250| 
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |250| 
$C$DW$254	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$254, DW_AT_low_pc(0x00)
	.dwattr $C$DW$254, DW_AT_name("__subd")
	.dwattr $C$DW$254, DW_AT_TI_call
        CALL #__subd ; |250| 
                                        ; call occurs [#__subd] ; |250| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*FP(#152)) ; |250| 
        MOV dbl(*FP(#148)), AC1 ; |250| 
        MOV dbl(*AR3), AC0 ; |250| 
$C$DW$255	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$255, DW_AT_low_pc(0x00)
	.dwattr $C$DW$255, DW_AT_name("__mpyd")
	.dwattr $C$DW$255, DW_AT_TI_call
        CALL #__mpyd ; |250| 
                                        ; call occurs [#__mpyd] ; |250| 
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |250| 
$C$DW$256	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$256, DW_AT_low_pc(0x00)
	.dwattr $C$DW$256, DW_AT_name("__subd")
	.dwattr $C$DW$256, DW_AT_TI_call
        CALL #__subd ; |250| 
                                        ; call occurs [#__subd] ; |250| 
$C$DW$L$_jpec_enc_block_dct$104$E:
$C$DW$L$_jpec_enc_block_dct$105$B:
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*FP(#152)) ; |250| 
        MOV dbl(*FP(#150)), AC1 ; |250| 
        MOV dbl(*AR3(#8)), AC0 ; |250| 
$C$DW$257	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$257, DW_AT_low_pc(0x00)
	.dwattr $C$DW$257, DW_AT_name("__mpyd")
	.dwattr $C$DW$257, DW_AT_TI_call
        CALL #__mpyd ; |250| 
                                        ; call occurs [#__mpyd] ; |250| 
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |250| 
$C$DW$258	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$258, DW_AT_low_pc(0x00)
	.dwattr $C$DW$258, DW_AT_name("__subd")
	.dwattr $C$DW$258, DW_AT_TI_call
        CALL #__subd ; |250| 
                                        ; call occurs [#__subd] ; |250| 
        MOV dbl(*FP(#132)), AC1 ; |250| 
        SFTS AC1, #3, AC1 ; |250| 
        ADD #3, AC1 ; |250| 
        MOV AC1, T0 ; |250| 
        SFTL T0, #1 ; |250| 
        AMAR *SP(#4), XAR3
        MOV AC0, dbl(*AR3(T0)) ; |250| 
	.dwpsn	file "./enc.c",line 251,column 9,is_stmt
        MOV dbl(*FP(#136)), AC0 ; |251| 
        MOV dbl(*FP(#138)), AC1 ; |251| 
$C$DW$259	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$259, DW_AT_low_pc(0x00)
	.dwattr $C$DW$259, DW_AT_name("__subd")
	.dwattr $C$DW$259, DW_AT_TI_call
        CALL #__subd ; |251| 
                                        ; call occurs [#__subd] ; |251| 
        MOV dbl(*FP(#140)), AC1 ; |251| 
$C$DW$260	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$260, DW_AT_low_pc(0x00)
	.dwattr $C$DW$260, DW_AT_name("__subd")
	.dwattr $C$DW$260, DW_AT_TI_call
        CALL #__subd ; |251| 
                                        ; call occurs [#__subd] ; |251| 
        MOV dbl(*FP(#142)), AC1 ; |251| 
$C$DW$261	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$261, DW_AT_low_pc(0x00)
	.dwattr $C$DW$261, DW_AT_name("__addd")
	.dwattr $C$DW$261, DW_AT_TI_call
        CALL #__addd ; |251| 
                                        ; call occurs [#__addd] ; |251| 
        MOV dbl(*SP(#2)), XAR3

        MOV dbl(*AR3(short(#6))), AC0 ; |251| 
||      OR #0, AC0, AC1

$C$DW$262	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$262, DW_AT_low_pc(0x00)
	.dwattr $C$DW$262, DW_AT_name("__mpyd")
	.dwattr $C$DW$262, DW_AT_TI_call
        CALL #__mpyd ; |251| 
                                        ; call occurs [#__mpyd] ; |251| 
        MOV dbl(*FP(#132)), AC1 ; |251| 
        SFTS AC1, #3, AC1 ; |251| 
        ADD #4, AC1 ; |251| 
        MOV AC1, T0 ; |251| 
        SFTL T0, #1 ; |251| 
        AMAR *SP(#4), XAR3
        MOV AC0, dbl(*AR3(T0)) ; |251| 
	.dwpsn	file "./enc.c",line 252,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*FP(#144)), AC1 ; |252| 
        MOV dbl(*AR3(#8)), AC0 ; |252| 
$C$DW$263	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$263, DW_AT_low_pc(0x00)
	.dwattr $C$DW$263, DW_AT_name("__mpyd")
	.dwattr $C$DW$263, DW_AT_TI_call
        CALL #__mpyd ; |252| 
                                        ; call occurs [#__mpyd] ; |252| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*FP(#152)) ; |252| 
        MOV dbl(*FP(#146)), AC1 ; |252| 
        MOV dbl(*AR3), AC0 ; |252| 
$C$DW$264	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$264, DW_AT_low_pc(0x00)
	.dwattr $C$DW$264, DW_AT_name("__mpyd")
	.dwattr $C$DW$264, DW_AT_TI_call
        CALL #__mpyd ; |252| 
                                        ; call occurs [#__mpyd] ; |252| 
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |252| 
$C$DW$265	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$265, DW_AT_low_pc(0x00)
	.dwattr $C$DW$265, DW_AT_name("__subd")
	.dwattr $C$DW$265, DW_AT_TI_call
        CALL #__subd ; |252| 
                                        ; call occurs [#__subd] ; |252| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*FP(#152)) ; |252| 
        MOV dbl(*FP(#148)), AC1 ; |252| 
        MOV dbl(*AR3(#12)), AC0 ; |252| 
$C$DW$266	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$266, DW_AT_low_pc(0x00)
	.dwattr $C$DW$266, DW_AT_name("__mpyd")
	.dwattr $C$DW$266, DW_AT_TI_call
        CALL #__mpyd ; |252| 
                                        ; call occurs [#__mpyd] ; |252| 
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |252| 
$C$DW$267	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$267, DW_AT_low_pc(0x00)
	.dwattr $C$DW$267, DW_AT_name("__addd")
	.dwattr $C$DW$267, DW_AT_TI_call
        CALL #__addd ; |252| 
                                        ; call occurs [#__addd] ; |252| 
$C$DW$L$_jpec_enc_block_dct$105$E:
$C$DW$L$_jpec_enc_block_dct$106$B:
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*FP(#152)) ; |252| 
        MOV dbl(*FP(#150)), AC1 ; |252| 
        MOV dbl(*AR3(short(#4))), AC0 ; |252| 
$C$DW$268	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$268, DW_AT_low_pc(0x00)
	.dwattr $C$DW$268, DW_AT_name("__mpyd")
	.dwattr $C$DW$268, DW_AT_TI_call
        CALL #__mpyd ; |252| 
                                        ; call occurs [#__mpyd] ; |252| 
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |252| 
$C$DW$269	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$269, DW_AT_low_pc(0x00)
	.dwattr $C$DW$269, DW_AT_name("__addd")
	.dwattr $C$DW$269, DW_AT_TI_call
        CALL #__addd ; |252| 
                                        ; call occurs [#__addd] ; |252| 
        MOV dbl(*FP(#132)), AC1 ; |252| 
        SFTS AC1, #3, AC1 ; |252| 
        ADD #5, AC1 ; |252| 
        MOV AC1, T0 ; |252| 
        SFTL T0, #1 ; |252| 
        AMAR *SP(#4), XAR3
        MOV AC0, dbl(*AR3(T0)) ; |252| 
	.dwpsn	file "./enc.c",line 253,column 9,is_stmt
        MOV dbl(*FP(#136)), AC0 ; |253| 
        MOV dbl(*FP(#142)), AC1 ; |253| 
$C$DW$270	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$270, DW_AT_low_pc(0x00)
	.dwattr $C$DW$270, DW_AT_name("__subd")
	.dwattr $C$DW$270, DW_AT_TI_call
        CALL #__subd ; |253| 
                                        ; call occurs [#__subd] ; |253| 
        MOV dbl(*SP(#2)), XAR3
        OR #0, AC0, AC1
        MOV dbl(*AR3(#10)), AC0 ; |253| 
$C$DW$271	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$271, DW_AT_low_pc(0x00)
	.dwattr $C$DW$271, DW_AT_name("__mpyd")
	.dwattr $C$DW$271, DW_AT_TI_call
        CALL #__mpyd ; |253| 
                                        ; call occurs [#__mpyd] ; |253| 
        MOV AC0, dbl(*FP(#152)) ; |253| 
        MOV dbl(*FP(#138)), AC1 ; |253| 
        MOV dbl(*FP(#140)), AC0 ; |253| 
$C$DW$272	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$272, DW_AT_low_pc(0x00)
	.dwattr $C$DW$272, DW_AT_name("__subd")
	.dwattr $C$DW$272, DW_AT_TI_call
        CALL #__subd ; |253| 
                                        ; call occurs [#__subd] ; |253| 
        MOV dbl(*SP(#2)), XAR3

        MOV dbl(*AR3(short(#2))), AC0 ; |253| 
||      OR #0, AC0, AC1

$C$DW$273	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$273, DW_AT_low_pc(0x00)
	.dwattr $C$DW$273, DW_AT_name("__mpyd")
	.dwattr $C$DW$273, DW_AT_TI_call
        CALL #__mpyd ; |253| 
                                        ; call occurs [#__mpyd] ; |253| 
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |253| 
$C$DW$274	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$274, DW_AT_low_pc(0x00)
	.dwattr $C$DW$274, DW_AT_name("__addd")
	.dwattr $C$DW$274, DW_AT_TI_call
        CALL #__addd ; |253| 
                                        ; call occurs [#__addd] ; |253| 
        MOV dbl(*FP(#132)), AC1 ; |253| 
        SFTS AC1, #3, AC1 ; |253| 
        ADD #6, AC1 ; |253| 
        MOV AC1, T0 ; |253| 
        SFTL T0, #1 ; |253| 
        AMAR *SP(#4), XAR3
        MOV AC0, dbl(*AR3(T0)) ; |253| 
	.dwpsn	file "./enc.c",line 254,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*FP(#144)), AC1 ; |254| 
        MOV dbl(*AR3(#12)), AC0 ; |254| 
$C$DW$275	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$275, DW_AT_low_pc(0x00)
	.dwattr $C$DW$275, DW_AT_name("__mpyd")
	.dwattr $C$DW$275, DW_AT_TI_call
        CALL #__mpyd ; |254| 
                                        ; call occurs [#__mpyd] ; |254| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*FP(#152)) ; |254| 
        MOV dbl(*FP(#146)), AC1 ; |254| 
        MOV dbl(*AR3(#8)), AC0 ; |254| 
$C$DW$276	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$276, DW_AT_low_pc(0x00)
	.dwattr $C$DW$276, DW_AT_name("__mpyd")
	.dwattr $C$DW$276, DW_AT_TI_call
        CALL #__mpyd ; |254| 
                                        ; call occurs [#__mpyd] ; |254| 
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |254| 
$C$DW$277	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$277, DW_AT_low_pc(0x00)
	.dwattr $C$DW$277, DW_AT_name("__subd")
	.dwattr $C$DW$277, DW_AT_TI_call
        CALL #__subd ; |254| 
                                        ; call occurs [#__subd] ; |254| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*FP(#152)) ; |254| 
        MOV dbl(*FP(#148)), AC1 ; |254| 
        MOV dbl(*AR3(short(#4))), AC0 ; |254| 
$C$DW$278	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$278, DW_AT_low_pc(0x00)
	.dwattr $C$DW$278, DW_AT_name("__mpyd")
	.dwattr $C$DW$278, DW_AT_TI_call
        CALL #__mpyd ; |254| 
                                        ; call occurs [#__mpyd] ; |254| 
$C$DW$L$_jpec_enc_block_dct$106$E:
$C$DW$L$_jpec_enc_block_dct$107$B:
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |254| 
$C$DW$279	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$279, DW_AT_low_pc(0x00)
	.dwattr $C$DW$279, DW_AT_name("__addd")
	.dwattr $C$DW$279, DW_AT_TI_call
        CALL #__addd ; |254| 
                                        ; call occurs [#__addd] ; |254| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*FP(#152)) ; |254| 
        MOV dbl(*FP(#150)), AC1 ; |254| 
        MOV dbl(*AR3), AC0 ; |254| 
$C$DW$280	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$280, DW_AT_low_pc(0x00)
	.dwattr $C$DW$280, DW_AT_name("__mpyd")
	.dwattr $C$DW$280, DW_AT_TI_call
        CALL #__mpyd ; |254| 
                                        ; call occurs [#__mpyd] ; |254| 
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |254| 
$C$DW$281	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$281, DW_AT_low_pc(0x00)
	.dwattr $C$DW$281, DW_AT_name("__subd")
	.dwattr $C$DW$281, DW_AT_TI_call
        CALL #__subd ; |254| 
                                        ; call occurs [#__subd] ; |254| 
        MOV dbl(*FP(#132)), AC1 ; |254| 
        SFTS AC1, #3, AC1 ; |254| 
        ADD #7, AC1 ; |254| 
        MOV AC1, T0 ; |254| 
        SFTL T0, #1 ; |254| 
        AMAR *SP(#4), XAR3
        MOV AC0, dbl(*AR3(T0)) ; |254| 
	.dwendtag $C$DW$203

	.dwpsn	file "./enc.c",line 234,column 28,is_stmt
        MOV dbl(*FP(#132)), AC0 ; |234| 
        ADD #1, AC0 ; |234| 
        MOV AC0, dbl(*FP(#132)) ; |234| 
	.dwpsn	file "./enc.c",line 234,column 19,is_stmt
        MOV #8, AC0 ; |234| 
        MOV dbl(*FP(#132)), AC1 ; |234| 
        CMP AC1 < AC0, TC1 ; |234| 
        BCC $C$L38,TC1 ; |234| 
                                        ; branchcc occurs ; |234| 
$C$DW$L$_jpec_enc_block_dct$107$E:
$C$L103:    
	.dwpsn	file "./enc.c",line 256,column 10,is_stmt
        MOV #0, AC0 ; |256| 
        MOV AC0, dbl(*FP(#134)) ; |256| 
	.dwpsn	file "./enc.c",line 256,column 19,is_stmt
        MOV dbl(*FP(#134)), AC1 ; |256| 
        MOV #8, AC0 ; |256| 
        CMP AC1 >= AC0, TC1 ; |256| 
        BCC $C$L105,TC1 ; |256| 
                                        ; branchcc occurs ; |256| 
$C$L104:    
$C$DW$L$_jpec_enc_block_dct$109$B:

$C$DW$282	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$283	.dwtag  DW_TAG_variable, DW_AT_name("s0")
	.dwattr $C$DW$283, DW_AT_TI_symbol_name("_s0")
	.dwattr $C$DW$283, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$283, DW_AT_location[DW_OP_bregx 0x24 136]
$C$DW$284	.dwtag  DW_TAG_variable, DW_AT_name("s1")
	.dwattr $C$DW$284, DW_AT_TI_symbol_name("_s1")
	.dwattr $C$DW$284, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$284, DW_AT_location[DW_OP_bregx 0x24 138]
$C$DW$285	.dwtag  DW_TAG_variable, DW_AT_name("s2")
	.dwattr $C$DW$285, DW_AT_TI_symbol_name("_s2")
	.dwattr $C$DW$285, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$285, DW_AT_location[DW_OP_bregx 0x24 140]
$C$DW$286	.dwtag  DW_TAG_variable, DW_AT_name("s3")
	.dwattr $C$DW$286, DW_AT_TI_symbol_name("_s3")
	.dwattr $C$DW$286, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$286, DW_AT_location[DW_OP_bregx 0x24 142]
$C$DW$287	.dwtag  DW_TAG_variable, DW_AT_name("d0")
	.dwattr $C$DW$287, DW_AT_TI_symbol_name("_d0")
	.dwattr $C$DW$287, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$287, DW_AT_location[DW_OP_bregx 0x24 144]
$C$DW$288	.dwtag  DW_TAG_variable, DW_AT_name("d1")
	.dwattr $C$DW$288, DW_AT_TI_symbol_name("_d1")
	.dwattr $C$DW$288, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$288, DW_AT_location[DW_OP_bregx 0x24 146]
$C$DW$289	.dwtag  DW_TAG_variable, DW_AT_name("d2")
	.dwattr $C$DW$289, DW_AT_TI_symbol_name("_d2")
	.dwattr $C$DW$289, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$289, DW_AT_location[DW_OP_bregx 0x24 148]
$C$DW$290	.dwtag  DW_TAG_variable, DW_AT_name("d3")
	.dwattr $C$DW$290, DW_AT_TI_symbol_name("_d3")
	.dwattr $C$DW$290, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$290, DW_AT_location[DW_OP_bregx 0x24 150]
	.dwpsn	file "./enc.c",line 258,column 15,is_stmt
        MOV *FP(#135), T0 ; |258| 
        SFTL T0, #1 ; |258| 
        MOV #56, AC1 ; |258| 
        AMAR *SP(#4), XAR3
        ADD dbl(*FP(#134)), AC1, AC1 ; |258| 

        MOV AC1, T0 ; |258| 
||      MOV dbl(*AR3(T0)), AC0 ; |258| 

        SFTL T0, #1 ; |258| 
        AMAR *SP(#4), XAR3
        MOV dbl(*AR3(T0)), AC1 ; |258| 
$C$DW$291	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$291, DW_AT_low_pc(0x00)
	.dwattr $C$DW$291, DW_AT_name("__addd")
	.dwattr $C$DW$291, DW_AT_TI_call
        CALL #__addd ; |258| 
                                        ; call occurs [#__addd] ; |258| 
        MOV AC0, dbl(*FP(#136)) ; |258| 
	.dwpsn	file "./enc.c",line 259,column 15,is_stmt
        MOV dbl(*FP(#134)), AC0 ; |259| 
        ADD #8, AC0 ; |259| 
        MOV AC0, T0 ; |259| 
        SFTL T0, #1 ; |259| 
        MOV #48, AC1 ; |259| 
        AMAR *SP(#4), XAR3
        ADD dbl(*FP(#134)), AC1, AC1 ; |259| 

        MOV AC1, T0 ; |259| 
||      MOV dbl(*AR3(T0)), AC0 ; |259| 

        SFTL T0, #1 ; |259| 
        AMAR *SP(#4), XAR3
        MOV dbl(*AR3(T0)), AC1 ; |259| 
$C$DW$292	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$292, DW_AT_low_pc(0x00)
	.dwattr $C$DW$292, DW_AT_name("__addd")
	.dwattr $C$DW$292, DW_AT_TI_call
        CALL #__addd ; |259| 
                                        ; call occurs [#__addd] ; |259| 
        MOV AC0, dbl(*FP(#138)) ; |259| 
	.dwpsn	file "./enc.c",line 260,column 15,is_stmt
        MOV #16, AC0 ; |260| 
        ADD dbl(*FP(#134)), AC0, AC0 ; |260| 
        MOV AC0, T0 ; |260| 
        SFTL T0, #1 ; |260| 
        MOV #40, AC1 ; |260| 
        AMAR *SP(#4), XAR3
        ADD dbl(*FP(#134)), AC1, AC1 ; |260| 

        MOV AC1, T0 ; |260| 
||      MOV dbl(*AR3(T0)), AC0 ; |260| 

        SFTL T0, #1 ; |260| 
        AMAR *SP(#4), XAR3
        MOV dbl(*AR3(T0)), AC1 ; |260| 
$C$DW$293	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$293, DW_AT_low_pc(0x00)
	.dwattr $C$DW$293, DW_AT_name("__addd")
	.dwattr $C$DW$293, DW_AT_TI_call
        CALL #__addd ; |260| 
                                        ; call occurs [#__addd] ; |260| 
        MOV AC0, dbl(*FP(#140)) ; |260| 
	.dwpsn	file "./enc.c",line 261,column 15,is_stmt
        MOV #24, AC0 ; |261| 
        ADD dbl(*FP(#134)), AC0, AC0 ; |261| 
        MOV AC0, T0 ; |261| 
        SFTL T0, #1 ; |261| 
        MOV #32, AC1 ; |261| 
        AMAR *SP(#4), XAR3
        ADD dbl(*FP(#134)), AC1, AC1 ; |261| 

        MOV AC1, T0 ; |261| 
||      MOV dbl(*AR3(T0)), AC0 ; |261| 

        SFTL T0, #1 ; |261| 
        AMAR *SP(#4), XAR3
        MOV dbl(*AR3(T0)), AC1 ; |261| 
$C$DW$294	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$294, DW_AT_low_pc(0x00)
	.dwattr $C$DW$294, DW_AT_name("__addd")
	.dwattr $C$DW$294, DW_AT_TI_call
        CALL #__addd ; |261| 
                                        ; call occurs [#__addd] ; |261| 
        MOV AC0, dbl(*FP(#142)) ; |261| 
	.dwpsn	file "./enc.c",line 263,column 15,is_stmt
        MOV *FP(#135), T0 ; |263| 
        SFTL T0, #1 ; |263| 
        MOV #56, AC1 ; |263| 
        AMAR *SP(#4), XAR3
        ADD dbl(*FP(#134)), AC1, AC1 ; |263| 

        MOV AC1, T0 ; |263| 
||      MOV dbl(*AR3(T0)), AC0 ; |263| 

        SFTL T0, #1 ; |263| 
        AMAR *SP(#4), XAR3
        MOV dbl(*AR3(T0)), AC1 ; |263| 
$C$DW$295	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$295, DW_AT_low_pc(0x00)
	.dwattr $C$DW$295, DW_AT_name("__subd")
	.dwattr $C$DW$295, DW_AT_TI_call
        CALL #__subd ; |263| 
                                        ; call occurs [#__subd] ; |263| 
        MOV AC0, dbl(*FP(#144)) ; |263| 
	.dwpsn	file "./enc.c",line 264,column 15,is_stmt
        MOV dbl(*FP(#134)), AC0 ; |264| 
        ADD #8, AC0 ; |264| 
        MOV AC0, T0 ; |264| 
        SFTL T0, #1 ; |264| 
        MOV #48, AC1 ; |264| 
        AMAR *SP(#4), XAR3
        ADD dbl(*FP(#134)), AC1, AC1 ; |264| 

        MOV AC1, T0 ; |264| 
||      MOV dbl(*AR3(T0)), AC0 ; |264| 

        SFTL T0, #1 ; |264| 
        AMAR *SP(#4), XAR3
        MOV dbl(*AR3(T0)), AC1 ; |264| 
$C$DW$296	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$296, DW_AT_low_pc(0x00)
	.dwattr $C$DW$296, DW_AT_name("__subd")
	.dwattr $C$DW$296, DW_AT_TI_call
        CALL #__subd ; |264| 
                                        ; call occurs [#__subd] ; |264| 
        MOV AC0, dbl(*FP(#146)) ; |264| 
	.dwpsn	file "./enc.c",line 265,column 15,is_stmt
        MOV #16, AC0 ; |265| 
        ADD dbl(*FP(#134)), AC0, AC0 ; |265| 
        MOV AC0, T0 ; |265| 
        SFTL T0, #1 ; |265| 
        MOV #40, AC1 ; |265| 
        AMAR *SP(#4), XAR3
        ADD dbl(*FP(#134)), AC1, AC1 ; |265| 

        MOV AC1, T0 ; |265| 
||      MOV dbl(*AR3(T0)), AC0 ; |265| 

        SFTL T0, #1 ; |265| 
        AMAR *SP(#4), XAR3
        MOV dbl(*AR3(T0)), AC1 ; |265| 
$C$DW$297	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$297, DW_AT_low_pc(0x00)
	.dwattr $C$DW$297, DW_AT_name("__subd")
	.dwattr $C$DW$297, DW_AT_TI_call
        CALL #__subd ; |265| 
                                        ; call occurs [#__subd] ; |265| 
        MOV AC0, dbl(*FP(#148)) ; |265| 
	.dwpsn	file "./enc.c",line 266,column 15,is_stmt
        MOV #24, AC0 ; |266| 
        ADD dbl(*FP(#134)), AC0, AC0 ; |266| 
        MOV AC0, T0 ; |266| 
        SFTL T0, #1 ; |266| 
        MOV #32, AC1 ; |266| 
        AMAR *SP(#4), XAR3
        ADD dbl(*FP(#134)), AC1, AC1 ; |266| 

        MOV AC1, T0 ; |266| 
||      MOV dbl(*AR3(T0)), AC0 ; |266| 

        SFTL T0, #1 ; |266| 
        AMAR *SP(#4), XAR3
        MOV dbl(*AR3(T0)), AC1 ; |266| 
$C$DW$298	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$298, DW_AT_low_pc(0x00)
	.dwattr $C$DW$298, DW_AT_name("__subd")
	.dwattr $C$DW$298, DW_AT_TI_call
        CALL #__subd ; |266| 
                                        ; call occurs [#__subd] ; |266| 
        MOV AC0, dbl(*FP(#150)) ; |266| 
	.dwpsn	file "./enc.c",line 268,column 9,is_stmt
        MOV dbl(*FP(#136)), AC0 ; |268| 
        MOV dbl(*FP(#138)), AC1 ; |268| 
$C$DW$299	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$299, DW_AT_low_pc(0x00)
	.dwattr $C$DW$299, DW_AT_name("__addd")
	.dwattr $C$DW$299, DW_AT_TI_call
        CALL #__addd ; |268| 
                                        ; call occurs [#__addd] ; |268| 
        MOV dbl(*FP(#140)), AC1 ; |268| 
$C$DW$300	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$300, DW_AT_low_pc(0x00)
	.dwattr $C$DW$300, DW_AT_name("__addd")
	.dwattr $C$DW$300, DW_AT_TI_call
        CALL #__addd ; |268| 
                                        ; call occurs [#__addd] ; |268| 
        MOV dbl(*FP(#142)), AC1 ; |268| 
$C$DW$301	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$301, DW_AT_low_pc(0x00)
	.dwattr $C$DW$301, DW_AT_name("__addd")
	.dwattr $C$DW$301, DW_AT_TI_call
        CALL #__addd ; |268| 
                                        ; call occurs [#__addd] ; |268| 
$C$DW$L$_jpec_enc_block_dct$109$E:
$C$DW$L$_jpec_enc_block_dct$110$B:
        MOV dbl(*SP(#2)), XAR3

        MOV dbl(*AR3(short(#6))), AC0 ; |268| 
||      OR #0, AC0, AC1

$C$DW$302	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$302, DW_AT_low_pc(0x00)
	.dwattr $C$DW$302, DW_AT_name("__mpyd")
	.dwattr $C$DW$302, DW_AT_TI_call
        CALL #__mpyd ; |268| 
                                        ; call occurs [#__mpyd] ; |268| 
        MOV dbl(*SP(#0)), XAR3
        MOV *FP(#135), AR1 ; |268| 
        SFTL AR1, #1 ; |268| 
        AADD AR1, AR3 ; |268| 
        MOV AC0, dbl(*AR3(#144)) ; |268| 
	.dwpsn	file "./enc.c",line 269,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*FP(#144)), AC1 ; |269| 
        MOV dbl(*AR3), AC0 ; |269| 
$C$DW$303	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$303, DW_AT_low_pc(0x00)
	.dwattr $C$DW$303, DW_AT_name("__mpyd")
	.dwattr $C$DW$303, DW_AT_TI_call
        CALL #__mpyd ; |269| 
                                        ; call occurs [#__mpyd] ; |269| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*FP(#152)) ; |269| 
        MOV dbl(*FP(#146)), AC1 ; |269| 
        MOV dbl(*AR3(short(#4))), AC0 ; |269| 
$C$DW$304	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$304, DW_AT_low_pc(0x00)
	.dwattr $C$DW$304, DW_AT_name("__mpyd")
	.dwattr $C$DW$304, DW_AT_TI_call
        CALL #__mpyd ; |269| 
                                        ; call occurs [#__mpyd] ; |269| 
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |269| 
$C$DW$305	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$305, DW_AT_low_pc(0x00)
	.dwattr $C$DW$305, DW_AT_name("__addd")
	.dwattr $C$DW$305, DW_AT_TI_call
        CALL #__addd ; |269| 
                                        ; call occurs [#__addd] ; |269| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*FP(#152)) ; |269| 
        MOV dbl(*FP(#148)), AC1 ; |269| 
        MOV dbl(*AR3(#8)), AC0 ; |269| 
$C$DW$306	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$306, DW_AT_low_pc(0x00)
	.dwattr $C$DW$306, DW_AT_name("__mpyd")
	.dwattr $C$DW$306, DW_AT_TI_call
        CALL #__mpyd ; |269| 
                                        ; call occurs [#__mpyd] ; |269| 
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |269| 
$C$DW$307	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$307, DW_AT_low_pc(0x00)
	.dwattr $C$DW$307, DW_AT_name("__addd")
	.dwattr $C$DW$307, DW_AT_TI_call
        CALL #__addd ; |269| 
                                        ; call occurs [#__addd] ; |269| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*FP(#152)) ; |269| 
        MOV dbl(*FP(#150)), AC1 ; |269| 
        MOV dbl(*AR3(#12)), AC0 ; |269| 
$C$DW$308	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$308, DW_AT_low_pc(0x00)
	.dwattr $C$DW$308, DW_AT_name("__mpyd")
	.dwattr $C$DW$308, DW_AT_TI_call
        CALL #__mpyd ; |269| 
                                        ; call occurs [#__mpyd] ; |269| 
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |269| 
$C$DW$309	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$309, DW_AT_low_pc(0x00)
	.dwattr $C$DW$309, DW_AT_name("__addd")
	.dwattr $C$DW$309, DW_AT_TI_call
        CALL #__addd ; |269| 
                                        ; call occurs [#__addd] ; |269| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*FP(#134)), AC1 ; |269| 
        ADD #8, AC1 ; |269| 
        MOV AC1, AR1 ; |269| 
        SFTL AR1, #1 ; |269| 
        AADD AR1, AR3 ; |269| 
        MOV AC0, dbl(*AR3(#144)) ; |269| 
	.dwpsn	file "./enc.c",line 270,column 9,is_stmt
        MOV dbl(*FP(#136)), AC0 ; |270| 
        MOV dbl(*FP(#142)), AC1 ; |270| 
$C$DW$310	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$310, DW_AT_low_pc(0x00)
	.dwattr $C$DW$310, DW_AT_name("__subd")
	.dwattr $C$DW$310, DW_AT_TI_call
        CALL #__subd ; |270| 
                                        ; call occurs [#__subd] ; |270| 
        MOV dbl(*SP(#2)), XAR3

        MOV dbl(*AR3(short(#2))), AC0 ; |270| 
||      OR #0, AC0, AC1

$C$DW$311	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$311, DW_AT_low_pc(0x00)
	.dwattr $C$DW$311, DW_AT_name("__mpyd")
	.dwattr $C$DW$311, DW_AT_TI_call
        CALL #__mpyd ; |270| 
                                        ; call occurs [#__mpyd] ; |270| 
        MOV AC0, dbl(*FP(#152)) ; |270| 
        MOV dbl(*FP(#140)), AC1 ; |270| 
        MOV dbl(*FP(#138)), AC0 ; |270| 
$C$DW$312	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$312, DW_AT_low_pc(0x00)
	.dwattr $C$DW$312, DW_AT_name("__subd")
	.dwattr $C$DW$312, DW_AT_TI_call
        CALL #__subd ; |270| 
                                        ; call occurs [#__subd] ; |270| 
$C$DW$L$_jpec_enc_block_dct$110$E:
$C$DW$L$_jpec_enc_block_dct$111$B:
        MOV dbl(*SP(#2)), XAR3
        OR #0, AC0, AC1
        MOV dbl(*AR3(#10)), AC0 ; |270| 
$C$DW$313	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$313, DW_AT_low_pc(0x00)
	.dwattr $C$DW$313, DW_AT_name("__mpyd")
	.dwattr $C$DW$313, DW_AT_TI_call
        CALL #__mpyd ; |270| 
                                        ; call occurs [#__mpyd] ; |270| 
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |270| 
$C$DW$314	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$314, DW_AT_low_pc(0x00)
	.dwattr $C$DW$314, DW_AT_name("__addd")
	.dwattr $C$DW$314, DW_AT_TI_call
        CALL #__addd ; |270| 
                                        ; call occurs [#__addd] ; |270| 
        MOV dbl(*SP(#0)), XAR3
        MOV #16, AC1 ; |270| 
        ADD dbl(*FP(#134)), AC1, AC1 ; |270| 
        MOV AC1, AR1 ; |270| 
        SFTL AR1, #1 ; |270| 
        AADD AR1, AR3 ; |270| 
        MOV AC0, dbl(*AR3(#144)) ; |270| 
	.dwpsn	file "./enc.c",line 271,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*FP(#144)), AC1 ; |271| 
        MOV dbl(*AR3(short(#4))), AC0 ; |271| 
$C$DW$315	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$315, DW_AT_low_pc(0x00)
	.dwattr $C$DW$315, DW_AT_name("__mpyd")
	.dwattr $C$DW$315, DW_AT_TI_call
        CALL #__mpyd ; |271| 
                                        ; call occurs [#__mpyd] ; |271| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*FP(#152)) ; |271| 
        MOV dbl(*FP(#146)), AC1 ; |271| 
        MOV dbl(*AR3(#12)), AC0 ; |271| 
$C$DW$316	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$316, DW_AT_low_pc(0x00)
	.dwattr $C$DW$316, DW_AT_name("__mpyd")
	.dwattr $C$DW$316, DW_AT_TI_call
        CALL #__mpyd ; |271| 
                                        ; call occurs [#__mpyd] ; |271| 
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |271| 
$C$DW$317	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$317, DW_AT_low_pc(0x00)
	.dwattr $C$DW$317, DW_AT_name("__subd")
	.dwattr $C$DW$317, DW_AT_TI_call
        CALL #__subd ; |271| 
                                        ; call occurs [#__subd] ; |271| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*FP(#152)) ; |271| 
        MOV dbl(*FP(#148)), AC1 ; |271| 
        MOV dbl(*AR3), AC0 ; |271| 
$C$DW$318	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$318, DW_AT_low_pc(0x00)
	.dwattr $C$DW$318, DW_AT_name("__mpyd")
	.dwattr $C$DW$318, DW_AT_TI_call
        CALL #__mpyd ; |271| 
                                        ; call occurs [#__mpyd] ; |271| 
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |271| 
$C$DW$319	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$319, DW_AT_low_pc(0x00)
	.dwattr $C$DW$319, DW_AT_name("__subd")
	.dwattr $C$DW$319, DW_AT_TI_call
        CALL #__subd ; |271| 
                                        ; call occurs [#__subd] ; |271| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*FP(#152)) ; |271| 
        MOV dbl(*FP(#150)), AC1 ; |271| 
        MOV dbl(*AR3(#8)), AC0 ; |271| 
$C$DW$320	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$320, DW_AT_low_pc(0x00)
	.dwattr $C$DW$320, DW_AT_name("__mpyd")
	.dwattr $C$DW$320, DW_AT_TI_call
        CALL #__mpyd ; |271| 
                                        ; call occurs [#__mpyd] ; |271| 
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |271| 
$C$DW$321	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$321, DW_AT_low_pc(0x00)
	.dwattr $C$DW$321, DW_AT_name("__subd")
	.dwattr $C$DW$321, DW_AT_TI_call
        CALL #__subd ; |271| 
                                        ; call occurs [#__subd] ; |271| 
        MOV dbl(*SP(#0)), XAR3
        MOV #24, AC1 ; |271| 
        ADD dbl(*FP(#134)), AC1, AC1 ; |271| 
        MOV AC1, AR1 ; |271| 
        SFTL AR1, #1 ; |271| 
        AADD AR1, AR3 ; |271| 
        MOV AC0, dbl(*AR3(#144)) ; |271| 
	.dwpsn	file "./enc.c",line 272,column 9,is_stmt
        MOV dbl(*FP(#136)), AC0 ; |272| 
        MOV dbl(*FP(#138)), AC1 ; |272| 
$C$DW$322	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$322, DW_AT_low_pc(0x00)
	.dwattr $C$DW$322, DW_AT_name("__subd")
	.dwattr $C$DW$322, DW_AT_TI_call
        CALL #__subd ; |272| 
                                        ; call occurs [#__subd] ; |272| 
        MOV dbl(*FP(#140)), AC1 ; |272| 
$C$DW$323	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$323, DW_AT_low_pc(0x00)
	.dwattr $C$DW$323, DW_AT_name("__subd")
	.dwattr $C$DW$323, DW_AT_TI_call
        CALL #__subd ; |272| 
                                        ; call occurs [#__subd] ; |272| 
$C$DW$L$_jpec_enc_block_dct$111$E:
$C$DW$L$_jpec_enc_block_dct$112$B:
        MOV dbl(*FP(#142)), AC1 ; |272| 
$C$DW$324	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$324, DW_AT_low_pc(0x00)
	.dwattr $C$DW$324, DW_AT_name("__addd")
	.dwattr $C$DW$324, DW_AT_TI_call
        CALL #__addd ; |272| 
                                        ; call occurs [#__addd] ; |272| 
        MOV dbl(*SP(#2)), XAR3

        MOV dbl(*AR3(short(#6))), AC0 ; |272| 
||      OR #0, AC0, AC1

$C$DW$325	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$325, DW_AT_low_pc(0x00)
	.dwattr $C$DW$325, DW_AT_name("__mpyd")
	.dwattr $C$DW$325, DW_AT_TI_call
        CALL #__mpyd ; |272| 
                                        ; call occurs [#__mpyd] ; |272| 
        MOV dbl(*SP(#0)), XAR3
        MOV #32, AC1 ; |272| 
        ADD dbl(*FP(#134)), AC1, AC1 ; |272| 
        MOV AC1, AR1 ; |272| 
        SFTL AR1, #1 ; |272| 
        AADD AR1, AR3 ; |272| 
        MOV AC0, dbl(*AR3(#144)) ; |272| 
	.dwpsn	file "./enc.c",line 273,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*FP(#144)), AC1 ; |273| 
        MOV dbl(*AR3(#8)), AC0 ; |273| 
$C$DW$326	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$326, DW_AT_low_pc(0x00)
	.dwattr $C$DW$326, DW_AT_name("__mpyd")
	.dwattr $C$DW$326, DW_AT_TI_call
        CALL #__mpyd ; |273| 
                                        ; call occurs [#__mpyd] ; |273| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*FP(#152)) ; |273| 
        MOV dbl(*FP(#146)), AC1 ; |273| 
        MOV dbl(*AR3), AC0 ; |273| 
$C$DW$327	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$327, DW_AT_low_pc(0x00)
	.dwattr $C$DW$327, DW_AT_name("__mpyd")
	.dwattr $C$DW$327, DW_AT_TI_call
        CALL #__mpyd ; |273| 
                                        ; call occurs [#__mpyd] ; |273| 
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |273| 
$C$DW$328	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$328, DW_AT_low_pc(0x00)
	.dwattr $C$DW$328, DW_AT_name("__subd")
	.dwattr $C$DW$328, DW_AT_TI_call
        CALL #__subd ; |273| 
                                        ; call occurs [#__subd] ; |273| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*FP(#152)) ; |273| 
        MOV dbl(*FP(#148)), AC1 ; |273| 
        MOV dbl(*AR3(#12)), AC0 ; |273| 
$C$DW$329	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$329, DW_AT_low_pc(0x00)
	.dwattr $C$DW$329, DW_AT_name("__mpyd")
	.dwattr $C$DW$329, DW_AT_TI_call
        CALL #__mpyd ; |273| 
                                        ; call occurs [#__mpyd] ; |273| 
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |273| 
$C$DW$330	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$330, DW_AT_low_pc(0x00)
	.dwattr $C$DW$330, DW_AT_name("__addd")
	.dwattr $C$DW$330, DW_AT_TI_call
        CALL #__addd ; |273| 
                                        ; call occurs [#__addd] ; |273| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*FP(#152)) ; |273| 
        MOV dbl(*FP(#150)), AC1 ; |273| 
        MOV dbl(*AR3(short(#4))), AC0 ; |273| 
$C$DW$331	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$331, DW_AT_low_pc(0x00)
	.dwattr $C$DW$331, DW_AT_name("__mpyd")
	.dwattr $C$DW$331, DW_AT_TI_call
        CALL #__mpyd ; |273| 
                                        ; call occurs [#__mpyd] ; |273| 
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |273| 
$C$DW$332	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$332, DW_AT_low_pc(0x00)
	.dwattr $C$DW$332, DW_AT_name("__addd")
	.dwattr $C$DW$332, DW_AT_TI_call
        CALL #__addd ; |273| 
                                        ; call occurs [#__addd] ; |273| 
        MOV dbl(*SP(#0)), XAR3
        MOV #40, AC1 ; |273| 
        ADD dbl(*FP(#134)), AC1, AC1 ; |273| 
        MOV AC1, AR1 ; |273| 
        SFTL AR1, #1 ; |273| 
        AADD AR1, AR3 ; |273| 
        MOV AC0, dbl(*AR3(#144)) ; |273| 
	.dwpsn	file "./enc.c",line 274,column 9,is_stmt
        MOV dbl(*FP(#136)), AC0 ; |274| 
        MOV dbl(*FP(#142)), AC1 ; |274| 
$C$DW$333	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$333, DW_AT_low_pc(0x00)
	.dwattr $C$DW$333, DW_AT_name("__subd")
	.dwattr $C$DW$333, DW_AT_TI_call
        CALL #__subd ; |274| 
                                        ; call occurs [#__subd] ; |274| 
        MOV dbl(*SP(#2)), XAR3
        OR #0, AC0, AC1
        MOV dbl(*AR3(#10)), AC0 ; |274| 
$C$DW$334	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$334, DW_AT_low_pc(0x00)
	.dwattr $C$DW$334, DW_AT_name("__mpyd")
	.dwattr $C$DW$334, DW_AT_TI_call
        CALL #__mpyd ; |274| 
                                        ; call occurs [#__mpyd] ; |274| 
$C$DW$L$_jpec_enc_block_dct$112$E:
$C$DW$L$_jpec_enc_block_dct$113$B:
        MOV AC0, dbl(*FP(#152)) ; |274| 
        MOV dbl(*FP(#138)), AC1 ; |274| 
        MOV dbl(*FP(#140)), AC0 ; |274| 
$C$DW$335	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$335, DW_AT_low_pc(0x00)
	.dwattr $C$DW$335, DW_AT_name("__subd")
	.dwattr $C$DW$335, DW_AT_TI_call
        CALL #__subd ; |274| 
                                        ; call occurs [#__subd] ; |274| 
        MOV dbl(*SP(#2)), XAR3

        MOV dbl(*AR3(short(#2))), AC0 ; |274| 
||      OR #0, AC0, AC1

$C$DW$336	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$336, DW_AT_low_pc(0x00)
	.dwattr $C$DW$336, DW_AT_name("__mpyd")
	.dwattr $C$DW$336, DW_AT_TI_call
        CALL #__mpyd ; |274| 
                                        ; call occurs [#__mpyd] ; |274| 
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |274| 
$C$DW$337	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$337, DW_AT_low_pc(0x00)
	.dwattr $C$DW$337, DW_AT_name("__addd")
	.dwattr $C$DW$337, DW_AT_TI_call
        CALL #__addd ; |274| 
                                        ; call occurs [#__addd] ; |274| 
        MOV dbl(*SP(#0)), XAR3
        MOV #48, AC1 ; |274| 
        ADD dbl(*FP(#134)), AC1, AC1 ; |274| 
        MOV AC1, AR1 ; |274| 
        SFTL AR1, #1 ; |274| 
        AADD AR1, AR3 ; |274| 
        MOV AC0, dbl(*AR3(#144)) ; |274| 
	.dwpsn	file "./enc.c",line 275,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*FP(#144)), AC1 ; |275| 
        MOV dbl(*AR3(#12)), AC0 ; |275| 
$C$DW$338	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$338, DW_AT_low_pc(0x00)
	.dwattr $C$DW$338, DW_AT_name("__mpyd")
	.dwattr $C$DW$338, DW_AT_TI_call
        CALL #__mpyd ; |275| 
                                        ; call occurs [#__mpyd] ; |275| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*FP(#152)) ; |275| 
        MOV dbl(*FP(#146)), AC1 ; |275| 
        MOV dbl(*AR3(#8)), AC0 ; |275| 
$C$DW$339	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$339, DW_AT_low_pc(0x00)
	.dwattr $C$DW$339, DW_AT_name("__mpyd")
	.dwattr $C$DW$339, DW_AT_TI_call
        CALL #__mpyd ; |275| 
                                        ; call occurs [#__mpyd] ; |275| 
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |275| 
$C$DW$340	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$340, DW_AT_low_pc(0x00)
	.dwattr $C$DW$340, DW_AT_name("__subd")
	.dwattr $C$DW$340, DW_AT_TI_call
        CALL #__subd ; |275| 
                                        ; call occurs [#__subd] ; |275| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*FP(#152)) ; |275| 
        MOV dbl(*FP(#148)), AC1 ; |275| 
        MOV dbl(*AR3(short(#4))), AC0 ; |275| 
$C$DW$341	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$341, DW_AT_low_pc(0x00)
	.dwattr $C$DW$341, DW_AT_name("__mpyd")
	.dwattr $C$DW$341, DW_AT_TI_call
        CALL #__mpyd ; |275| 
                                        ; call occurs [#__mpyd] ; |275| 
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |275| 
$C$DW$342	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$342, DW_AT_low_pc(0x00)
	.dwattr $C$DW$342, DW_AT_name("__addd")
	.dwattr $C$DW$342, DW_AT_TI_call
        CALL #__addd ; |275| 
                                        ; call occurs [#__addd] ; |275| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*FP(#152)) ; |275| 
        MOV dbl(*FP(#150)), AC1 ; |275| 
        MOV dbl(*AR3), AC0 ; |275| 
$C$DW$343	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$343, DW_AT_low_pc(0x00)
	.dwattr $C$DW$343, DW_AT_name("__mpyd")
	.dwattr $C$DW$343, DW_AT_TI_call
        CALL #__mpyd ; |275| 
                                        ; call occurs [#__mpyd] ; |275| 
        OR #0, AC0, AC1
        MOV dbl(*FP(#152)), AC0 ; |275| 
$C$DW$344	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$344, DW_AT_low_pc(0x00)
	.dwattr $C$DW$344, DW_AT_name("__subd")
	.dwattr $C$DW$344, DW_AT_TI_call
        CALL #__subd ; |275| 
                                        ; call occurs [#__subd] ; |275| 
        MOV dbl(*SP(#0)), XAR3
        MOV #56, AC1 ; |275| 
        ADD dbl(*FP(#134)), AC1, AC1 ; |275| 
        MOV AC1, AR1 ; |275| 
        SFTL AR1, #1 ; |275| 
        AADD AR1, AR3 ; |275| 
        MOV AC0, dbl(*AR3(#144)) ; |275| 
	.dwendtag $C$DW$282

	.dwpsn	file "./enc.c",line 256,column 28,is_stmt
        MOV dbl(*FP(#134)), AC0 ; |256| 
        ADD #1, AC0 ; |256| 
        MOV AC0, dbl(*FP(#134)) ; |256| 
	.dwpsn	file "./enc.c",line 256,column 19,is_stmt
        MOV #8, AC0 ; |256| 
        MOV dbl(*FP(#134)), AC1 ; |256| 
        CMP AC1 < AC0, TC1 ; |256| 
        BCC $C$L104,TC1 ; |256| 
                                        ; branchcc occurs ; |256| 
$C$DW$L$_jpec_enc_block_dct$113$E:
	.dwpsn	file "./enc.c",line 278,column 1,is_stmt
$C$L105:    
        ADD #154, mmap(SP)
	.dwcfi	cfa_offset, 2
        POPBOTH XFP
	.dwcfi	restore_reg, 32
	.dwcfi	cfa_offset, 1
$C$DW$345	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$345, DW_AT_low_pc(0x00)
	.dwattr $C$DW$345, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$346	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$346, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/jpeg/enc.asm:$C$L104:1:1725826347")
	.dwattr $C$DW$346, DW_AT_TI_begin_file("./enc.c")
	.dwattr $C$DW$346, DW_AT_TI_begin_line(0x100)
	.dwattr $C$DW$346, DW_AT_TI_end_line(0x114)
$C$DW$347	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$347, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$109$B)
	.dwattr $C$DW$347, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$109$E)
$C$DW$348	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$348, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$110$B)
	.dwattr $C$DW$348, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$110$E)
$C$DW$349	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$349, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$111$B)
	.dwattr $C$DW$349, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$111$E)
$C$DW$350	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$350, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$112$B)
	.dwattr $C$DW$350, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$112$E)
$C$DW$351	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$351, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$113$B)
	.dwattr $C$DW$351, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$113$E)
	.dwendtag $C$DW$346


$C$DW$352	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$352, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/jpeg/enc.asm:$C$L38:1:1725826347")
	.dwattr $C$DW$352, DW_AT_TI_begin_file("./enc.c")
	.dwattr $C$DW$352, DW_AT_TI_begin_line(0xea)
	.dwattr $C$DW$352, DW_AT_TI_end_line(0xff)
$C$DW$353	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$353, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$7$B)
	.dwattr $C$DW$353, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$7$E)
$C$DW$354	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$354, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$8$B)
	.dwattr $C$DW$354, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$8$E)
$C$DW$355	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$355, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$9$B)
	.dwattr $C$DW$355, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$9$E)
$C$DW$356	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$356, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$10$B)
	.dwattr $C$DW$356, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$10$E)
$C$DW$357	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$357, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$11$B)
	.dwattr $C$DW$357, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$11$E)
$C$DW$358	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$358, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$12$B)
	.dwattr $C$DW$358, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$12$E)
$C$DW$359	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$359, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$13$B)
	.dwattr $C$DW$359, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$13$E)
$C$DW$360	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$360, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$14$B)
	.dwattr $C$DW$360, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$14$E)
$C$DW$361	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$361, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$15$B)
	.dwattr $C$DW$361, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$15$E)
$C$DW$362	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$362, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$16$B)
	.dwattr $C$DW$362, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$16$E)
$C$DW$363	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$363, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$17$B)
	.dwattr $C$DW$363, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$17$E)
$C$DW$364	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$364, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$18$B)
	.dwattr $C$DW$364, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$18$E)
$C$DW$365	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$365, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$19$B)
	.dwattr $C$DW$365, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$19$E)
$C$DW$366	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$366, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$20$B)
	.dwattr $C$DW$366, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$20$E)
$C$DW$367	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$367, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$21$B)
	.dwattr $C$DW$367, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$21$E)
$C$DW$368	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$368, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$22$B)
	.dwattr $C$DW$368, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$22$E)
$C$DW$369	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$369, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$23$B)
	.dwattr $C$DW$369, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$23$E)
$C$DW$370	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$370, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$24$B)
	.dwattr $C$DW$370, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$24$E)
$C$DW$371	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$371, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$25$B)
	.dwattr $C$DW$371, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$25$E)
$C$DW$372	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$372, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$26$B)
	.dwattr $C$DW$372, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$26$E)
$C$DW$373	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$373, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$27$B)
	.dwattr $C$DW$373, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$27$E)
$C$DW$374	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$374, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$28$B)
	.dwattr $C$DW$374, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$28$E)
$C$DW$375	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$375, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$29$B)
	.dwattr $C$DW$375, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$29$E)
$C$DW$376	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$376, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$30$B)
	.dwattr $C$DW$376, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$30$E)
$C$DW$377	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$377, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$31$B)
	.dwattr $C$DW$377, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$31$E)
$C$DW$378	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$378, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$32$B)
	.dwattr $C$DW$378, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$32$E)
$C$DW$379	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$379, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$33$B)
	.dwattr $C$DW$379, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$33$E)
$C$DW$380	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$380, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$34$B)
	.dwattr $C$DW$380, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$34$E)
$C$DW$381	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$381, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$35$B)
	.dwattr $C$DW$381, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$35$E)
$C$DW$382	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$382, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$36$B)
	.dwattr $C$DW$382, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$36$E)
$C$DW$383	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$383, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$37$B)
	.dwattr $C$DW$383, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$37$E)
$C$DW$384	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$384, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$38$B)
	.dwattr $C$DW$384, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$38$E)
$C$DW$385	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$385, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$39$B)
	.dwattr $C$DW$385, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$39$E)
$C$DW$386	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$386, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$40$B)
	.dwattr $C$DW$386, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$40$E)
$C$DW$387	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$387, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$41$B)
	.dwattr $C$DW$387, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$41$E)
$C$DW$388	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$388, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$42$B)
	.dwattr $C$DW$388, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$42$E)
$C$DW$389	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$389, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$43$B)
	.dwattr $C$DW$389, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$43$E)
$C$DW$390	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$390, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$44$B)
	.dwattr $C$DW$390, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$44$E)
$C$DW$391	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$391, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$45$B)
	.dwattr $C$DW$391, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$45$E)
$C$DW$392	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$392, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$46$B)
	.dwattr $C$DW$392, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$46$E)
$C$DW$393	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$393, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$47$B)
	.dwattr $C$DW$393, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$47$E)
$C$DW$394	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$394, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$48$B)
	.dwattr $C$DW$394, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$48$E)
$C$DW$395	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$395, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$49$B)
	.dwattr $C$DW$395, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$49$E)
$C$DW$396	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$396, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$50$B)
	.dwattr $C$DW$396, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$50$E)
$C$DW$397	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$397, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$51$B)
	.dwattr $C$DW$397, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$51$E)
$C$DW$398	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$398, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$52$B)
	.dwattr $C$DW$398, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$52$E)
$C$DW$399	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$399, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$53$B)
	.dwattr $C$DW$399, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$53$E)
$C$DW$400	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$400, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$54$B)
	.dwattr $C$DW$400, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$54$E)
$C$DW$401	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$401, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$55$B)
	.dwattr $C$DW$401, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$55$E)
$C$DW$402	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$402, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$56$B)
	.dwattr $C$DW$402, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$56$E)
$C$DW$403	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$403, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$57$B)
	.dwattr $C$DW$403, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$57$E)
$C$DW$404	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$404, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$58$B)
	.dwattr $C$DW$404, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$58$E)
$C$DW$405	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$405, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$59$B)
	.dwattr $C$DW$405, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$59$E)
$C$DW$406	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$406, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$60$B)
	.dwattr $C$DW$406, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$60$E)
$C$DW$407	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$407, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$61$B)
	.dwattr $C$DW$407, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$61$E)
$C$DW$408	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$408, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$62$B)
	.dwattr $C$DW$408, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$62$E)
$C$DW$409	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$409, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$63$B)
	.dwattr $C$DW$409, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$63$E)
$C$DW$410	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$410, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$64$B)
	.dwattr $C$DW$410, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$64$E)
$C$DW$411	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$411, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$65$B)
	.dwattr $C$DW$411, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$65$E)
$C$DW$412	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$412, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$66$B)
	.dwattr $C$DW$412, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$66$E)
$C$DW$413	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$413, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$67$B)
	.dwattr $C$DW$413, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$67$E)
$C$DW$414	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$414, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$68$B)
	.dwattr $C$DW$414, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$68$E)
$C$DW$415	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$415, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$69$B)
	.dwattr $C$DW$415, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$69$E)
$C$DW$416	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$416, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$70$B)
	.dwattr $C$DW$416, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$70$E)
$C$DW$417	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$417, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$71$B)
	.dwattr $C$DW$417, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$71$E)
$C$DW$418	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$418, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$72$B)
	.dwattr $C$DW$418, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$72$E)
$C$DW$419	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$419, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$73$B)
	.dwattr $C$DW$419, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$73$E)
$C$DW$420	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$420, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$74$B)
	.dwattr $C$DW$420, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$74$E)
$C$DW$421	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$421, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$75$B)
	.dwattr $C$DW$421, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$75$E)
$C$DW$422	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$422, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$76$B)
	.dwattr $C$DW$422, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$76$E)
$C$DW$423	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$423, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$77$B)
	.dwattr $C$DW$423, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$77$E)
$C$DW$424	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$424, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$78$B)
	.dwattr $C$DW$424, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$78$E)
$C$DW$425	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$425, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$79$B)
	.dwattr $C$DW$425, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$79$E)
$C$DW$426	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$426, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$80$B)
	.dwattr $C$DW$426, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$80$E)
$C$DW$427	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$427, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$81$B)
	.dwattr $C$DW$427, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$81$E)
$C$DW$428	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$428, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$82$B)
	.dwattr $C$DW$428, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$82$E)
$C$DW$429	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$429, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$83$B)
	.dwattr $C$DW$429, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$83$E)
$C$DW$430	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$430, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$84$B)
	.dwattr $C$DW$430, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$84$E)
$C$DW$431	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$431, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$85$B)
	.dwattr $C$DW$431, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$85$E)
$C$DW$432	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$432, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$86$B)
	.dwattr $C$DW$432, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$86$E)
$C$DW$433	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$433, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$87$B)
	.dwattr $C$DW$433, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$87$E)
$C$DW$434	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$434, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$88$B)
	.dwattr $C$DW$434, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$88$E)
$C$DW$435	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$435, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$89$B)
	.dwattr $C$DW$435, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$89$E)
$C$DW$436	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$436, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$90$B)
	.dwattr $C$DW$436, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$90$E)
$C$DW$437	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$437, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$91$B)
	.dwattr $C$DW$437, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$91$E)
$C$DW$438	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$438, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$92$B)
	.dwattr $C$DW$438, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$92$E)
$C$DW$439	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$439, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$93$B)
	.dwattr $C$DW$439, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$93$E)
$C$DW$440	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$440, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$94$B)
	.dwattr $C$DW$440, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$94$E)
$C$DW$441	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$441, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$95$B)
	.dwattr $C$DW$441, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$95$E)
$C$DW$442	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$442, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$96$B)
	.dwattr $C$DW$442, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$96$E)
$C$DW$443	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$443, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$97$B)
	.dwattr $C$DW$443, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$97$E)
$C$DW$444	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$444, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$98$B)
	.dwattr $C$DW$444, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$98$E)
$C$DW$445	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$445, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$99$B)
	.dwattr $C$DW$445, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$99$E)
$C$DW$446	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$446, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$100$B)
	.dwattr $C$DW$446, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$100$E)
$C$DW$447	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$447, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$101$B)
	.dwattr $C$DW$447, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$101$E)
$C$DW$448	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$448, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$102$B)
	.dwattr $C$DW$448, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$102$E)
$C$DW$449	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$449, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$103$B)
	.dwattr $C$DW$449, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$103$E)
$C$DW$450	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$450, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$104$B)
	.dwattr $C$DW$450, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$104$E)
$C$DW$451	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$451, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$105$B)
	.dwattr $C$DW$451, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$105$E)
$C$DW$452	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$452, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$106$B)
	.dwattr $C$DW$452, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$106$E)
$C$DW$453	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$453, DW_AT_low_pc($C$DW$L$_jpec_enc_block_dct$107$B)
	.dwattr $C$DW$453, DW_AT_high_pc($C$DW$L$_jpec_enc_block_dct$107$E)
	.dwendtag $C$DW$352

	.dwattr $C$DW$195, DW_AT_TI_end_file("./enc.c")
	.dwattr $C$DW$195, DW_AT_TI_end_line(0x116)
	.dwattr $C$DW$195, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$195

	.sect	".text"

$C$DW$454	.dwtag  DW_TAG_subprogram, DW_AT_name("jpec_enc_block_quant")
	.dwattr $C$DW$454, DW_AT_low_pc(_jpec_enc_block_quant)
	.dwattr $C$DW$454, DW_AT_high_pc(0x00)
	.dwattr $C$DW$454, DW_AT_TI_symbol_name("_jpec_enc_block_quant")
	.dwattr $C$DW$454, DW_AT_TI_begin_file("./enc.c")
	.dwattr $C$DW$454, DW_AT_TI_begin_line(0x118)
	.dwattr $C$DW$454, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$454, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "./enc.c",line 281,column 1,is_stmt,address _jpec_enc_block_quant

	.dwfde $C$DW$CIE, _jpec_enc_block_quant
$C$DW$455	.dwtag  DW_TAG_formal_parameter, DW_AT_name("e")
	.dwattr $C$DW$455, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$455, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$455, DW_AT_location[DW_OP_reg17]
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
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$456	.dwtag  DW_TAG_variable, DW_AT_name("e")
	.dwattr $C$DW$456, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$456, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$456, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$457	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$457, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$457, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$457, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./enc.c",line 283,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0

        BCC $C$L106,AC0 == #0 ; |283| 
||      MOV #0, AR1

                                        ; branchcc occurs ; |283| 
        MOV dbl(*AR3(#140)), AC0 ; |283| 
        BCC $C$L106,AC0 < #0 ; |283| 
                                        ; branchcc occurs ; |283| 
        MOV #1, AR1
$C$L106:    
        BCC $C$L107,AR1 != #0 ; |283| 
                                        ; branchcc occurs ; |283| 
        AMOV #$C$FSL14, XAR0 ; |283| 
$C$DW$458	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$458, DW_AT_low_pc(0x00)
	.dwattr $C$DW$458, DW_AT_name("__abort_msg")
	.dwattr $C$DW$458, DW_AT_TI_call
        CALL #__abort_msg ; |283| 
                                        ; call occurs [#__abort_msg] ; |283| 
$C$L107:    
	.dwpsn	file "./enc.c",line 284,column 10,is_stmt
        MOV #0, AC0 ; |284| 
        MOV AC0, dbl(*SP(#2)) ; |284| 
	.dwpsn	file "./enc.c",line 284,column 17,is_stmt
        MOV dbl(*SP(#2)), AC1 ; |284| 
        MOV #64, AC0 ; |284| 
        CMP AC1 >= AC0, TC1 ; |284| 
        BCC $C$L109,TC1 ; |284| 
                                        ; branchcc occurs ; |284| 
$C$L108:    
$C$DW$L$_jpec_enc_block_quant$7$B:
	.dwpsn	file "./enc.c",line 286,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#3), AR1 ; |286| 
        SFTL AR1, #1 ; |286| 
        AADD AR1, AR3 ; |286| 
        MOV dbl(*AR3(#10)), AC0 ; |286| 
$C$DW$459	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$459, DW_AT_low_pc(0x00)
	.dwattr $C$DW$459, DW_AT_name("__fltlid")
	.dwattr $C$DW$459, DW_AT_TI_call
        CALL #__fltlid ; |286| 
                                        ; call occurs [#__fltlid] ; |286| 
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#3), AR1 ; |286| 
        SFTL AR1, #1 ; |286| 

        AADD AR1, AR3 ; |286| 
||      OR #0, AC0, AC1

        MOV dbl(*AR3(#144)), AC0 ; |286| 
$C$DW$460	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$460, DW_AT_low_pc(0x00)
	.dwattr $C$DW$460, DW_AT_name("__divd")
	.dwattr $C$DW$460, DW_AT_TI_call
        CALL #__divd ; |286| 
                                        ; call occurs [#__divd] ; |286| 
$C$DW$461	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$461, DW_AT_low_pc(0x00)
	.dwattr $C$DW$461, DW_AT_name("__fixdli")
	.dwattr $C$DW$461, DW_AT_TI_call
        CALL #__fixdli ; |286| 
                                        ; call occurs [#__fixdli] ; |286| 
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#3), AR1 ; |286| 
        SFTL AR1, #1 ; |286| 
        AADD AR1, AR3 ; |286| 
        MOV AC0, dbl(*AR3(#272)) ; |286| 
	.dwpsn	file "./enc.c",line 284,column 25,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |284| 
        ADD #1, AC0 ; |284| 
        MOV AC0, dbl(*SP(#2)) ; |284| 
	.dwpsn	file "./enc.c",line 284,column 17,is_stmt
        MOV #64, AC0 ; |284| 
        MOV dbl(*SP(#2)), AC1 ; |284| 
        CMP AC1 < AC0, TC1 ; |284| 
        BCC $C$L108,TC1 ; |284| 
                                        ; branchcc occurs ; |284| 
$C$DW$L$_jpec_enc_block_quant$7$E:
	.dwpsn	file "./enc.c",line 288,column 1,is_stmt
$C$L109:    
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$462	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$462, DW_AT_low_pc(0x00)
	.dwattr $C$DW$462, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$463	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$463, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/jpeg/enc.asm:$C$L108:1:1725826347")
	.dwattr $C$DW$463, DW_AT_TI_begin_file("./enc.c")
	.dwattr $C$DW$463, DW_AT_TI_begin_line(0x11c)
	.dwattr $C$DW$463, DW_AT_TI_end_line(0x11f)
$C$DW$464	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$464, DW_AT_low_pc($C$DW$L$_jpec_enc_block_quant$7$B)
	.dwattr $C$DW$464, DW_AT_high_pc($C$DW$L$_jpec_enc_block_quant$7$E)
	.dwendtag $C$DW$463

	.dwattr $C$DW$454, DW_AT_TI_end_file("./enc.c")
	.dwattr $C$DW$454, DW_AT_TI_end_line(0x120)
	.dwattr $C$DW$454, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$454

	.sect	".text"

$C$DW$465	.dwtag  DW_TAG_subprogram, DW_AT_name("jpec_enc_block_zz")
	.dwattr $C$DW$465, DW_AT_low_pc(_jpec_enc_block_zz)
	.dwattr $C$DW$465, DW_AT_high_pc(0x00)
	.dwattr $C$DW$465, DW_AT_TI_symbol_name("_jpec_enc_block_zz")
	.dwattr $C$DW$465, DW_AT_TI_begin_file("./enc.c")
	.dwattr $C$DW$465, DW_AT_TI_begin_line(0x122)
	.dwattr $C$DW$465, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$465, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "./enc.c",line 291,column 1,is_stmt,address _jpec_enc_block_zz

	.dwfde $C$DW$CIE, _jpec_enc_block_zz
$C$DW$466	.dwtag  DW_TAG_formal_parameter, DW_AT_name("e")
	.dwattr $C$DW$466, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$466, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$466, DW_AT_location[DW_OP_reg17]
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
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$467	.dwtag  DW_TAG_variable, DW_AT_name("e")
	.dwattr $C$DW$467, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$467, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$467, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$468	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$468, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$468, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$468, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./enc.c",line 293,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0

        BCC $C$L110,AC0 == #0 ; |293| 
||      MOV #0, AR1

                                        ; branchcc occurs ; |293| 
        MOV dbl(*AR3(#140)), AC0 ; |293| 
        BCC $C$L110,AC0 < #0 ; |293| 
                                        ; branchcc occurs ; |293| 
        MOV #1, AR1
$C$L110:    
        BCC $C$L111,AR1 != #0 ; |293| 
                                        ; branchcc occurs ; |293| 
        AMOV #$C$FSL15, XAR0 ; |293| 
$C$DW$469	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$469, DW_AT_low_pc(0x00)
	.dwattr $C$DW$469, DW_AT_name("__abort_msg")
	.dwattr $C$DW$469, DW_AT_TI_call
        CALL #__abort_msg ; |293| 
                                        ; call occurs [#__abort_msg] ; |293| 
$C$L111:    
	.dwpsn	file "./enc.c",line 294,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, AC0 ; |294| 
        MOV AC0, dbl(*AR3(#528)) ; |294| 
	.dwpsn	file "./enc.c",line 295,column 10,is_stmt
        MOV AC0, dbl(*SP(#2)) ; |295| 
	.dwpsn	file "./enc.c",line 295,column 17,is_stmt
        MOV dbl(*SP(#2)), AC1 ; |295| 
        MOV #64, AC0 ; |295| 
        CMP AC1 >= AC0, TC1 ; |295| 
        BCC $C$L114,TC1 ; |295| 
                                        ; branchcc occurs ; |295| 
$C$L112:    
$C$DW$L$_jpec_enc_block_zz$7$B:
	.dwpsn	file "./enc.c",line 297,column 9,is_stmt
        MOV *SP(#3), T0 ; |297| 
        SFTL T0, #1 ; |297| 
        AMOV #(_jpec_zz+1), XAR3 ; |297| 
        MOV *AR3(T0), AR1 ; |297| 
        SFTL AR1, #1 ; |297| 
        MOV dbl(*SP(#0)), XAR3
        AADD AR1, AR3 ; |297| 
        MOV dbl(*AR3(#272)), AC0 ; |297| 
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#3), AR1 ; |297| 
        SFTL AR1, #1 ; |297| 
        AADD AR1, AR3 ; |297| 
        MOV AC0, dbl(*AR3(#400)) ; |297| 
        BCC $C$L113,AC0 == #0 ; |297| 
                                        ; branchcc occurs ; |297| 
$C$DW$L$_jpec_enc_block_zz$7$E:
$C$DW$L$_jpec_enc_block_zz$8$B:
	.dwpsn	file "./enc.c",line 298,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#2)), AC0 ; |298| 
        ADD #1, AC0 ; |298| 
        MOV AC0, dbl(*AR3(#528)) ; |298| 
$C$DW$L$_jpec_enc_block_zz$8$E:
$C$L113:    
$C$DW$L$_jpec_enc_block_zz$9$B:
	.dwpsn	file "./enc.c",line 295,column 25,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |295| 
        ADD #1, AC0 ; |295| 
        MOV AC0, dbl(*SP(#2)) ; |295| 
	.dwpsn	file "./enc.c",line 295,column 17,is_stmt
        MOV dbl(*SP(#2)), AC1 ; |295| 
        MOV #64, AC0 ; |295| 
        CMP AC1 < AC0, TC1 ; |295| 
        BCC $C$L112,TC1 ; |295| 
                                        ; branchcc occurs ; |295| 
$C$DW$L$_jpec_enc_block_zz$9$E:
	.dwpsn	file "./enc.c",line 300,column 1,is_stmt
$C$L114:    
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$470	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$470, DW_AT_low_pc(0x00)
	.dwattr $C$DW$470, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$471	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$471, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/jpeg/enc.asm:$C$L112:1:1725826347")
	.dwattr $C$DW$471, DW_AT_TI_begin_file("./enc.c")
	.dwattr $C$DW$471, DW_AT_TI_begin_line(0x127)
	.dwattr $C$DW$471, DW_AT_TI_end_line(0x12b)
$C$DW$472	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$472, DW_AT_low_pc($C$DW$L$_jpec_enc_block_zz$7$B)
	.dwattr $C$DW$472, DW_AT_high_pc($C$DW$L$_jpec_enc_block_zz$7$E)
$C$DW$473	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$473, DW_AT_low_pc($C$DW$L$_jpec_enc_block_zz$8$B)
	.dwattr $C$DW$473, DW_AT_high_pc($C$DW$L$_jpec_enc_block_zz$8$E)
$C$DW$474	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$474, DW_AT_low_pc($C$DW$L$_jpec_enc_block_zz$9$B)
	.dwattr $C$DW$474, DW_AT_high_pc($C$DW$L$_jpec_enc_block_zz$9$E)
	.dwendtag $C$DW$471

	.dwattr $C$DW$465, DW_AT_TI_end_file("./enc.c")
	.dwattr $C$DW$465, DW_AT_TI_end_line(0x12c)
	.dwattr $C$DW$465, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$465

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
;*******************************************************************************
;* FAR STRINGS                                                                 *
;*******************************************************************************
	.sect	".const:.string"
	.align	2
$C$FSL1:	.string	"Assertion failed, (img && w > 0 && !(w & 0x7) && h > 0 && !"
	.string	"(h & 0x7)), file ./enc.c, line 52",10,0
	.align	2
$C$FSL2:	.string	"Assertion failed, (e && len), file ./enc.c, line 71",10,0
	.align	2
$C$FSL3:	.string	"Assertion failed, (e), file ./enc.c, line 89",10,0
	.align	2
$C$FSL4:	.string	"Assertion failed, (e), file ./enc.c, line 102",10,0
	.align	2
$C$FSL5:	.string	"Assertion failed, (e), file ./enc.c, line 115",10,0
	.align	2
$C$FSL6:	.string	"Assertion failed, (e), file ./enc.c, line 122",10,0
	.align	2
$C$FSL7:	.string	"Assertion failed, (e), file ./enc.c, line 128",10,0
	.align	2
$C$FSL8:	.string	"Assertion failed, (e), file ./enc.c, line 146",10,0
	.align	2
$C$FSL9:	.string	"Assertion failed, (e), file ./enc.c, line 159",10,0
	.align	2
$C$FSL10:	.string	"Assertion failed, (e), file ./enc.c, line 174",10,0
	.align	2
$C$FSL11:	.string	"Assertion failed, (e), file ./enc.c, line 201",10,0
	.align	2
$C$FSL12:	.string	"Assertion failed, (e), file ./enc.c, line 215",10,0
	.align	2
$C$FSL13:	.string	"Assertion failed, (e && e->bnum >= 0), file ./enc.c, line 2"
	.string	"27",10,0
	.align	2
$C$FSL14:	.string	"Assertion failed, (e && e->bnum >= 0), file ./enc.c, line 2"
	.string	"83",10,0
	.align	2
$C$FSL15:	.string	"Assertion failed, (e && e->bnum >= 0), file ./enc.c, line 2"
	.string	"93",10,0
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
	.global	__abort_msg
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
$C$DW$475	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$475, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$T$34

$C$DW$T$35	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$35, DW_AT_address_class(0x20)

$C$DW$T$37	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
$C$DW$476	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$476, DW_AT_type(*$C$DW$T$3)
$C$DW$477	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$477, DW_AT_type(*$C$DW$T$36)
$C$DW$478	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$478, DW_AT_type(*$C$DW$T$29)
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
$C$DW$479	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$479, DW_AT_type(*$C$DW$T$23)
$C$DW$T$26	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$479)
$C$DW$T$27	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_address_class(0x17)

$C$DW$T$54	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$54, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$54, DW_AT_byte_size(0x40)
$C$DW$480	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$480, DW_AT_upper_bound(0x3f)
	.dwendtag $C$DW$T$54


$C$DW$T$55	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$55, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x11)
$C$DW$481	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$481, DW_AT_upper_bound(0x10)
	.dwendtag $C$DW$T$55


$C$DW$T$56	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$56, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$56, DW_AT_byte_size(0x0c)
$C$DW$482	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$482, DW_AT_upper_bound(0x0b)
	.dwendtag $C$DW$T$56


$C$DW$T$57	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$57, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$57, DW_AT_byte_size(0xa2)
$C$DW$483	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$483, DW_AT_upper_bound(0xa1)
	.dwendtag $C$DW$T$57

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
$C$DW$484	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$484, DW_AT_upper_bound(0x3f)
	.dwendtag $C$DW$T$21

$C$DW$T$52	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$52, DW_AT_address_class(0x17)
$C$DW$485	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$485, DW_AT_type(*$C$DW$T$20)
$C$DW$T$61	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$61, DW_AT_type(*$C$DW$485)

$C$DW$T$62	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$T$62, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$62, DW_AT_byte_size(0x80)
$C$DW$486	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$486, DW_AT_upper_bound(0x3f)
	.dwendtag $C$DW$T$62

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

$C$DW$T$19	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$19, DW_AT_byte_size(0x80)
$C$DW$487	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$487, DW_AT_upper_bound(0x3f)
	.dwendtag $C$DW$T$19

$C$DW$488	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$488, DW_AT_type(*$C$DW$T$16)
$C$DW$T$65	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$65, DW_AT_type(*$C$DW$488)

$C$DW$T$66	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$T$66, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$66, DW_AT_byte_size(0x0e)
$C$DW$489	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$489, DW_AT_upper_bound(0x06)
	.dwendtag $C$DW$T$66

$C$DW$T$67	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$T$67, DW_AT_address_class(0x17)
$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x02)
$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x02)
$C$DW$T$40	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$40, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$40, DW_AT_name("signed char")
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x01)
$C$DW$490	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$490, DW_AT_type(*$C$DW$T$40)
$C$DW$T$41	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$490)
$C$DW$T$42	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$42, DW_AT_address_class(0x17)

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

$C$DW$T$48	.dwtag  DW_TAG_typedef, DW_AT_name("jpec_enc_t")
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$48, DW_AT_language(DW_LANG_C)
$C$DW$T$49	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$49, DW_AT_address_class(0x17)

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

