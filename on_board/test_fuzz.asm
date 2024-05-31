;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                        Unix v4.4.1 *
;* Date/Time created: Thu May 30 14:56:52 2024                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("./test_fuzz.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen Unix v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/santiago/Research/DSPFuzz/on_board")
;	/home/santiago/Research/Ti/C55_Tools/acp55 -@/tmp/15964X4bc57 
	.sect	".text"
	.global	_test

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("test")
	.dwattr $C$DW$1, DW_AT_low_pc(_test)
	.dwattr $C$DW$1, DW_AT_high_pc(0x00)
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_test")
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1, DW_AT_TI_begin_file("./test_fuzz.c")
	.dwattr $C$DW$1, DW_AT_TI_begin_line(0x0e)
	.dwattr $C$DW$1, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$1, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "./test_fuzz.c",line 14,column 45,is_stmt,address _test

	.dwfde $C$DW$CIE, _test
$C$DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_name("argc")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("_argc")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$2, DW_AT_location[DW_OP_reg12]
$C$DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_name("args")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_args")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$3, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: test                                                         *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,CARRY,TC1,*
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_test:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$4	.dwtag  DW_TAG_variable, DW_AT_name("argc")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_argc")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$4, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$5	.dwtag  DW_TAG_variable, DW_AT_name("args")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_args")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#2))
        MOV T0, *SP(#0) ; |14| 
	.dwpsn	file "./test_fuzz.c",line 16,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        BCC $C$L2,AC0 != #0 ; |16| 
                                        ; branchcc occurs ; |16| 
	.dwpsn	file "./test_fuzz.c",line 17,column 15,is_stmt
$C$L1:    
$C$DW$L$_test$3$B:
        B $C$L1   ; |17| 
                                        ; branch occurs ; |17| 
$C$DW$L$_test$3$E:
$C$L2:    
	.dwpsn	file "./test_fuzz.c",line 20,column 5,is_stmt
        MOV *AR3, AR1 ; |20| 
        BCC $C$L11,AR1 <= #0 ; |20| 
                                        ; branchcc occurs ; |20| 
	.dwpsn	file "./test_fuzz.c",line 21,column 9,is_stmt
        MOV *AR3, AC0 ; |21| 

        BFXTR #0x8000, AC0, AR1 ; |21| 
||      MOV #1, AR2

        NOT AR2, AR2 ; |21| 
        ADD AC0, AR1 ; |21| 
        AND AR1, AR2 ; |21| 
        MOV AC0, AR1 ; |21| 
        SUB AR2, AR1 ; |21| 
        BCC $C$L10,AR1 != #0 ; |21| 
                                        ; branchcc occurs ; |21| 
	.dwpsn	file "./test_fuzz.c",line 22,column 13,is_stmt
        CMP *AR3(short(#1)) == #56, TC1 ; |22| 
        BCC $C$L4,!TC1 ; |22| 
                                        ; branchcc occurs ; |22| 
	.dwpsn	file "./test_fuzz.c",line 23,column 23,is_stmt
$C$L3:    
$C$DW$L$_test$8$B:
        B $C$L3   ; |23| 
                                        ; branch occurs ; |23| 
$C$DW$L$_test$8$E:
$C$L4:    
	.dwpsn	file "./test_fuzz.c",line 26,column 6,is_stmt
        CMP *AR3(short(#2)) == #56, TC1 ; |26| 
        BCC $C$L6,!TC1 ; |26| 
                                        ; branchcc occurs ; |26| 
	.dwpsn	file "./test_fuzz.c",line 27,column 9,is_stmt
$C$L5:    
$C$DW$L$_test$11$B:
        B $C$L5   ; |27| 
                                        ; branch occurs ; |27| 
$C$DW$L$_test$11$E:
$C$L6:    
	.dwpsn	file "./test_fuzz.c",line 29,column 6,is_stmt
        CMP *AR3(short(#3)) == #56, TC1 ; |29| 
        BCC $C$L8,!TC1 ; |29| 
                                        ; branchcc occurs ; |29| 
	.dwpsn	file "./test_fuzz.c",line 30,column 9,is_stmt
$C$L7:    
$C$DW$L$_test$14$B:
        B $C$L7   ; |30| 
                                        ; branch occurs ; |30| 
$C$DW$L$_test$14$E:
$C$L8:    
	.dwpsn	file "./test_fuzz.c",line 32,column 6,is_stmt
        CMP *AR3(short(#4)) == #56, TC1 ; |32| 
        BCC $C$L14,!TC1 ; |32| 
                                        ; branchcc occurs ; |32| 
	.dwpsn	file "./test_fuzz.c",line 33,column 9,is_stmt
$C$L9:    
$C$DW$L$_test$17$B:
        B $C$L9   ; |33| 
                                        ; branch occurs ; |33| 
$C$DW$L$_test$17$E:
$C$L10:    
	.dwpsn	file "./test_fuzz.c",line 37,column 13,is_stmt
        MOV #49, *AR3(short(#4)) ; |37| 
	.dwpsn	file "./test_fuzz.c",line 39,column 5,is_stmt
        B $C$L14  ; |39| 
                                        ; branch occurs ; |39| 
$C$L11:    
	.dwpsn	file "./test_fuzz.c",line 40,column 10,is_stmt
        MOV *AR3, AR1 ; |40| 
        BCC $C$L13,AR1 >= #0 ; |40| 
                                        ; branchcc occurs ; |40| 
	.dwpsn	file "./test_fuzz.c",line 41,column 9,is_stmt
        MOV *AR3, AC0 ; |41| 

        BFXTR #0x8000, AC0, AR1 ; |41| 
||      MOV #1, AR2

        NOT AR2, AR2 ; |41| 
        ADD AC0, AR1 ; |41| 
        AND AR1, AR2 ; |41| 
        MOV AC0, AR1 ; |41| 
        SUB AR2, AR1 ; |41| 
        BCC $C$L12,AR1 != #0 ; |41| 
                                        ; branchcc occurs ; |41| 
	.dwpsn	file "./test_fuzz.c",line 42,column 13,is_stmt
        MOV #-76, *AR3 ; |42| 
	.dwpsn	file "./test_fuzz.c",line 43,column 9,is_stmt
        B $C$L14  ; |43| 
                                        ; branch occurs ; |43| 
$C$L12:    
	.dwpsn	file "./test_fuzz.c",line 45,column 12,is_stmt
        MOV #3, *AR3(short(#3)) ; |45| 
	.dwpsn	file "./test_fuzz.c",line 47,column 5,is_stmt
        B $C$L14  ; |47| 
                                        ; branch occurs ; |47| 
$C$L13:    
	.dwpsn	file "./test_fuzz.c",line 49,column 9,is_stmt
        MOV #0, *AR3 ; |49| 
	.dwpsn	file "./test_fuzz.c",line 50,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #0, *AR3(short(#1)) ; |50| 
	.dwpsn	file "./test_fuzz.c",line 51,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #0, *AR3(short(#2)) ; |51| 
	.dwpsn	file "./test_fuzz.c",line 52,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #0, *AR3(short(#3)) ; |52| 
	.dwpsn	file "./test_fuzz.c",line 53,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #0, *AR3(short(#4)) ; |53| 
$C$L14:    
	.dwpsn	file "./test_fuzz.c",line 56,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3

        MOV *AR3(short(#1)), AR1 ; |56| 
||      MOV #10, AR2

        CMP AR1 < AR2, TC1 ; |56| 
        BCC $C$L16,TC1 ; |56| 
                                        ; branchcc occurs ; |56| 
	.dwpsn	file "./test_fuzz.c",line 57,column 9,is_stmt
        MOV *AR3(short(#1)), T0 ; |57| 
$C$DW$6	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$6, DW_AT_low_pc(0x00)
	.dwattr $C$DW$6, DW_AT_name("__remi")
	.dwattr $C$DW$6, DW_AT_TI_call

        CALL #__remi ; |57| 
||      MOV #10, T1

                                        ; call occurs [#__remi] ; |57| 
        BCC $C$L15,T0 != #0 ; |57| 
                                        ; branchcc occurs ; |57| 
	.dwpsn	file "./test_fuzz.c",line 58,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #26, T1 ; |58| 
        MOV *AR3(short(#5)), T0 ; |58| 
$C$DW$7	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$7, DW_AT_low_pc(0x00)
	.dwattr $C$DW$7, DW_AT_name("__remi")
	.dwattr $C$DW$7, DW_AT_TI_call
        CALL #__remi ; |58| 
                                        ; call occurs [#__remi] ; |58| 
        BCC $C$L18,T0 != #0 ; |58| 
                                        ; branchcc occurs ; |58| 
	.dwpsn	file "./test_fuzz.c",line 59,column 17,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#4)), T0 ; |59| 
$C$DW$8	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$8, DW_AT_low_pc(0x00)
	.dwattr $C$DW$8, DW_AT_name("__remi")
	.dwattr $C$DW$8, DW_AT_TI_call

        CALL #__remi ; |59| 
||      MOV #12, T1

                                        ; call occurs [#__remi] ; |59| 
        BCC $C$L18,T0 != #0 ; |59| 
                                        ; branchcc occurs ; |59| 
	.dwpsn	file "./test_fuzz.c",line 60,column 21,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#8), AR1 ; |60| 
        BCC $C$L18,AR1 != #0 ; |60| 
                                        ; branchcc occurs ; |60| 
	.dwpsn	file "./test_fuzz.c",line 62,column 25,is_stmt
        MOV #-1, T0
        B $C$L25  ; |62| 
                                        ; branch occurs ; |62| 
$C$L15:    
	.dwpsn	file "./test_fuzz.c",line 67,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #57, *AR3 ; |67| 
	.dwpsn	file "./test_fuzz.c",line 69,column 5,is_stmt
        B $C$L18  ; |69| 
                                        ; branch occurs ; |69| 
$C$L16:    
	.dwpsn	file "./test_fuzz.c",line 71,column 9,is_stmt
        MOV *AR3(#9), T0 ; |71| 
$C$DW$9	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$9, DW_AT_low_pc(0x00)
	.dwattr $C$DW$9, DW_AT_name("__remi")
	.dwattr $C$DW$9, DW_AT_TI_call

        CALL #__remi ; |71| 
||      MOV #5, T1

                                        ; call occurs [#__remi] ; |71| 
        BCC $C$L17,T0 != #0 ; |71| 
                                        ; branchcc occurs ; |71| 
	.dwpsn	file "./test_fuzz.c",line 72,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #42, *AR3(short(#1)) ; |72| 
	.dwpsn	file "./test_fuzz.c",line 73,column 9,is_stmt
        B $C$L18  ; |73| 
                                        ; branch occurs ; |73| 
$C$L17:    
	.dwpsn	file "./test_fuzz.c",line 75,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #-32, *AR3(short(#1)) ; |75| 
$C$L18:    
	.dwpsn	file "./test_fuzz.c",line 79,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#2)), T0 ; |79| 
$C$DW$10	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$10, DW_AT_low_pc(0x00)
	.dwattr $C$DW$10, DW_AT_name("__remi")
	.dwattr $C$DW$10, DW_AT_TI_call

        CALL #__remi ; |79| 
||      MOV #3, T1

                                        ; call occurs [#__remi] ; |79| 
        BCC $C$L22,T0 != #0 ; |79| 
                                        ; branchcc occurs ; |79| 
	.dwpsn	file "./test_fuzz.c",line 81,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#5)), T0 ; |81| 
$C$DW$11	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$11, DW_AT_low_pc(0x00)
	.dwattr $C$DW$11, DW_AT_name("__remi")
	.dwattr $C$DW$11, DW_AT_TI_call

        CALL #__remi ; |81| 
||      MOV #9, T1

                                        ; call occurs [#__remi] ; |81| 
        BCC $C$L21,T0 != #0 ; |81| 
                                        ; branchcc occurs ; |81| 
	.dwpsn	file "./test_fuzz.c",line 83,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #27, T1 ; |83| 
        MOV *AR3(short(#3)), T0 ; |83| 
$C$DW$12	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$12, DW_AT_low_pc(0x00)
	.dwattr $C$DW$12, DW_AT_name("__remi")
	.dwattr $C$DW$12, DW_AT_TI_call
        CALL #__remi ; |83| 
                                        ; call occurs [#__remi] ; |83| 
        BCC $C$L20,T0 != #0 ; |83| 
                                        ; branchcc occurs ; |83| 
	.dwpsn	file "./test_fuzz.c",line 85,column 17,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #81, T1 ; |85| 
        MOV *AR3(short(#2)), T0 ; |85| 
$C$DW$13	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$13, DW_AT_low_pc(0x00)
	.dwattr $C$DW$13, DW_AT_name("__remi")
	.dwattr $C$DW$13, DW_AT_TI_call
        CALL #__remi ; |85| 
                                        ; call occurs [#__remi] ; |85| 
        BCC $C$L24,T0 == #0 ; |85| 
                                        ; branchcc occurs ; |85| 
	.dwpsn	file "./test_fuzz.c",line 87,column 17,is_stmt
	.dwpsn	file "./test_fuzz.c",line 90,column 27,is_stmt
$C$L19:    
$C$DW$L$_test$41$B:
        B $C$L19  ; |90| 
                                        ; branch occurs ; |90| 
$C$DW$L$_test$41$E:
$C$L20:    
	.dwpsn	file "./test_fuzz.c",line 95,column 17,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #21, *AR3(short(#1)) ; |95| 
	.dwpsn	file "./test_fuzz.c",line 97,column 9,is_stmt
        B $C$L24  ; |97| 
                                        ; branch occurs ; |97| 
$C$L21:    
	.dwpsn	file "./test_fuzz.c",line 99,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #21, *AR3(short(#2)) ; |99| 
	.dwpsn	file "./test_fuzz.c",line 101,column 5,is_stmt
        B $C$L24  ; |101| 
                                        ; branch occurs ; |101| 
$C$L22:    
	.dwpsn	file "./test_fuzz.c",line 104,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3, T0 ; |104| 
$C$DW$14	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$14, DW_AT_low_pc(0x00)
	.dwattr $C$DW$14, DW_AT_name("__remi")
	.dwattr $C$DW$14, DW_AT_TI_call

        CALL #__remi ; |104| 
||      MOV #7, T1

                                        ; call occurs [#__remi] ; |104| 
        BCC $C$L23,T0 != #0 ; |104| 
                                        ; branchcc occurs ; |104| 
	.dwpsn	file "./test_fuzz.c",line 105,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #23, T1 ; |105| 
        MOV *AR3(#9), T0 ; |105| 
$C$DW$15	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$15, DW_AT_low_pc(0x00)
	.dwattr $C$DW$15, DW_AT_name("__remi")
	.dwattr $C$DW$15, DW_AT_TI_call
        CALL #__remi ; |105| 
                                        ; call occurs [#__remi] ; |105| 
        BCC $C$L24,T0 != #0 ; |105| 
                                        ; branchcc occurs ; |105| 
	.dwpsn	file "./test_fuzz.c",line 106,column 17,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#5)), T0 ; |106| 
$C$DW$16	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$16, DW_AT_low_pc(0x00)
	.dwattr $C$DW$16, DW_AT_name("__remi")
	.dwattr $C$DW$16, DW_AT_TI_call

        CALL #__remi ; |106| 
||      MOV #12, T1

                                        ; call occurs [#__remi] ; |106| 
        BCC $C$L24,T0 != #0 ; |106| 
                                        ; branchcc occurs ; |106| 
	.dwpsn	file "./test_fuzz.c",line 108,column 21,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #0, *AR3(#-31073) ; |108| 
	.dwpsn	file "./test_fuzz.c",line 111,column 9,is_stmt
        B $C$L24  ; |111| 
                                        ; branch occurs ; |111| 
$C$L23:    
	.dwpsn	file "./test_fuzz.c",line 113,column 13,is_stmt
        MOV #0, T0
        B $C$L25  ; |113| 
                                        ; branch occurs ; |113| 
$C$L24:    
	.dwpsn	file "./test_fuzz.c",line 117,column 5,is_stmt
        MOV #0, T0
$C$L25:    
	.dwpsn	file "./test_fuzz.c",line 118,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$17	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$17, DW_AT_low_pc(0x00)
	.dwattr $C$DW$17, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$18	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$18, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_fuzz.asm:$C$L19:1:1717095412")
	.dwattr $C$DW$18, DW_AT_TI_begin_file("./test_fuzz.c")
	.dwattr $C$DW$18, DW_AT_TI_begin_line(0x5a)
	.dwattr $C$DW$18, DW_AT_TI_end_line(0x5a)
$C$DW$19	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$19, DW_AT_low_pc($C$DW$L$_test$41$B)
	.dwattr $C$DW$19, DW_AT_high_pc($C$DW$L$_test$41$E)
	.dwendtag $C$DW$18


$C$DW$20	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$20, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_fuzz.asm:$C$L9:1:1717095412")
	.dwattr $C$DW$20, DW_AT_TI_begin_file("./test_fuzz.c")
	.dwattr $C$DW$20, DW_AT_TI_begin_line(0x21)
	.dwattr $C$DW$20, DW_AT_TI_end_line(0x21)
$C$DW$21	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$21, DW_AT_low_pc($C$DW$L$_test$17$B)
	.dwattr $C$DW$21, DW_AT_high_pc($C$DW$L$_test$17$E)
	.dwendtag $C$DW$20


$C$DW$22	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$22, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_fuzz.asm:$C$L7:1:1717095412")
	.dwattr $C$DW$22, DW_AT_TI_begin_file("./test_fuzz.c")
	.dwattr $C$DW$22, DW_AT_TI_begin_line(0x1e)
	.dwattr $C$DW$22, DW_AT_TI_end_line(0x1e)
$C$DW$23	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$23, DW_AT_low_pc($C$DW$L$_test$14$B)
	.dwattr $C$DW$23, DW_AT_high_pc($C$DW$L$_test$14$E)
	.dwendtag $C$DW$22


$C$DW$24	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$24, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_fuzz.asm:$C$L5:1:1717095412")
	.dwattr $C$DW$24, DW_AT_TI_begin_file("./test_fuzz.c")
	.dwattr $C$DW$24, DW_AT_TI_begin_line(0x1b)
	.dwattr $C$DW$24, DW_AT_TI_end_line(0x1b)
$C$DW$25	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$25, DW_AT_low_pc($C$DW$L$_test$11$B)
	.dwattr $C$DW$25, DW_AT_high_pc($C$DW$L$_test$11$E)
	.dwendtag $C$DW$24


$C$DW$26	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$26, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_fuzz.asm:$C$L3:1:1717095412")
	.dwattr $C$DW$26, DW_AT_TI_begin_file("./test_fuzz.c")
	.dwattr $C$DW$26, DW_AT_TI_begin_line(0x17)
	.dwattr $C$DW$26, DW_AT_TI_end_line(0x17)
$C$DW$27	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$27, DW_AT_low_pc($C$DW$L$_test$8$B)
	.dwattr $C$DW$27, DW_AT_high_pc($C$DW$L$_test$8$E)
	.dwendtag $C$DW$26


$C$DW$28	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$28, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_fuzz.asm:$C$L1:1:1717095412")
	.dwattr $C$DW$28, DW_AT_TI_begin_file("./test_fuzz.c")
	.dwattr $C$DW$28, DW_AT_TI_begin_line(0x11)
	.dwattr $C$DW$28, DW_AT_TI_end_line(0x11)
$C$DW$29	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$29, DW_AT_low_pc($C$DW$L$_test$3$B)
	.dwattr $C$DW$29, DW_AT_high_pc($C$DW$L$_test$3$E)
	.dwendtag $C$DW$28

	.dwattr $C$DW$1, DW_AT_TI_end_file("./test_fuzz.c")
	.dwattr $C$DW$1, DW_AT_TI_end_line(0x76)
	.dwattr $C$DW$1, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$1

;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	__remi

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
$C$DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("int16_t")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
$C$DW$T$20	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_address_class(0x17)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)
$C$DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("uint16_t")
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

$C$DW$30	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$30, DW_AT_location[DW_OP_reg0]
$C$DW$31	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$31, DW_AT_location[DW_OP_reg1]
$C$DW$32	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$32, DW_AT_location[DW_OP_reg2]
$C$DW$33	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$33, DW_AT_location[DW_OP_reg3]
$C$DW$34	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$34, DW_AT_location[DW_OP_reg4]
$C$DW$35	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$35, DW_AT_location[DW_OP_reg5]
$C$DW$36	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$36, DW_AT_location[DW_OP_reg6]
$C$DW$37	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$37, DW_AT_location[DW_OP_reg7]
$C$DW$38	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$38, DW_AT_location[DW_OP_reg8]
$C$DW$39	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$39, DW_AT_location[DW_OP_reg9]
$C$DW$40	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$40, DW_AT_location[DW_OP_reg10]
$C$DW$41	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$41, DW_AT_location[DW_OP_reg11]
$C$DW$42	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$42, DW_AT_location[DW_OP_reg12]
$C$DW$43	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$43, DW_AT_location[DW_OP_reg13]
$C$DW$44	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$44, DW_AT_location[DW_OP_reg14]
$C$DW$45	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$45, DW_AT_location[DW_OP_reg15]
$C$DW$46	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$46, DW_AT_location[DW_OP_reg16]
$C$DW$47	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$47, DW_AT_location[DW_OP_reg17]
$C$DW$48	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$48, DW_AT_location[DW_OP_reg18]
$C$DW$49	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$49, DW_AT_location[DW_OP_reg19]
$C$DW$50	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$50, DW_AT_location[DW_OP_reg20]
$C$DW$51	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$51, DW_AT_location[DW_OP_reg21]
$C$DW$52	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$52, DW_AT_location[DW_OP_reg22]
$C$DW$53	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$53, DW_AT_location[DW_OP_reg23]
$C$DW$54	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$54, DW_AT_location[DW_OP_reg24]
$C$DW$55	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$55, DW_AT_location[DW_OP_reg25]
$C$DW$56	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$56, DW_AT_location[DW_OP_reg26]
$C$DW$57	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$57, DW_AT_location[DW_OP_reg27]
$C$DW$58	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$58, DW_AT_location[DW_OP_reg28]
$C$DW$59	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$59, DW_AT_location[DW_OP_reg29]
$C$DW$60	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$60, DW_AT_location[DW_OP_reg30]
$C$DW$61	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$61, DW_AT_location[DW_OP_reg31]
$C$DW$62	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$62, DW_AT_location[DW_OP_regx 0x20]
$C$DW$63	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$63, DW_AT_location[DW_OP_regx 0x21]
$C$DW$64	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$64, DW_AT_location[DW_OP_regx 0x22]
$C$DW$65	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$65, DW_AT_location[DW_OP_regx 0x23]
$C$DW$66	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$66, DW_AT_location[DW_OP_regx 0x24]
$C$DW$67	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$67, DW_AT_location[DW_OP_regx 0x25]
$C$DW$68	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$68, DW_AT_location[DW_OP_regx 0x26]
$C$DW$69	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$69, DW_AT_location[DW_OP_regx 0x27]
$C$DW$70	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$70, DW_AT_location[DW_OP_regx 0x28]
$C$DW$71	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$71, DW_AT_location[DW_OP_regx 0x29]
$C$DW$72	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$72, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$73	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$73, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$74	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$74, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$75	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$75, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$76	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$76, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$77	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$77, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$78	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$78, DW_AT_location[DW_OP_regx 0x30]
$C$DW$79	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$79, DW_AT_location[DW_OP_regx 0x31]
$C$DW$80	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$80, DW_AT_location[DW_OP_regx 0x32]
$C$DW$81	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$81, DW_AT_location[DW_OP_regx 0x33]
$C$DW$82	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$82, DW_AT_location[DW_OP_regx 0x34]
$C$DW$83	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$83, DW_AT_location[DW_OP_regx 0x35]
$C$DW$84	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$84, DW_AT_location[DW_OP_regx 0x36]
$C$DW$85	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$85, DW_AT_location[DW_OP_regx 0x37]
$C$DW$86	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$86, DW_AT_location[DW_OP_regx 0x38]
$C$DW$87	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$87, DW_AT_location[DW_OP_regx 0x39]
$C$DW$88	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$88, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$89	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$89, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$90	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$90, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$91	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$91, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$92	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$92, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$93	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$93, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$94	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$94, DW_AT_location[DW_OP_regx 0x40]
$C$DW$95	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$95, DW_AT_location[DW_OP_regx 0x41]
$C$DW$96	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$96, DW_AT_location[DW_OP_regx 0x42]
$C$DW$97	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$97, DW_AT_location[DW_OP_regx 0x43]
$C$DW$98	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$98, DW_AT_location[DW_OP_regx 0x44]
$C$DW$99	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$99, DW_AT_location[DW_OP_regx 0x45]
$C$DW$100	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$100, DW_AT_location[DW_OP_regx 0x46]
$C$DW$101	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$101, DW_AT_location[DW_OP_regx 0x47]
$C$DW$102	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$102, DW_AT_location[DW_OP_regx 0x48]
$C$DW$103	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$103, DW_AT_location[DW_OP_regx 0x49]
$C$DW$104	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$104, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$105	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$105, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$106	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$106, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$107	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$107, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$108	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$108, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$109	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$109, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$110	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$110, DW_AT_location[DW_OP_regx 0x50]
$C$DW$111	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$111, DW_AT_location[DW_OP_regx 0x51]
$C$DW$112	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$112, DW_AT_location[DW_OP_regx 0x52]
$C$DW$113	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$113, DW_AT_location[DW_OP_regx 0x53]
$C$DW$114	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$114, DW_AT_location[DW_OP_regx 0x54]
$C$DW$115	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$115, DW_AT_location[DW_OP_regx 0x55]
$C$DW$116	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$116, DW_AT_location[DW_OP_regx 0x56]
$C$DW$117	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$117, DW_AT_location[DW_OP_regx 0x57]
$C$DW$118	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$118, DW_AT_location[DW_OP_regx 0x58]
$C$DW$119	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$119, DW_AT_location[DW_OP_regx 0x59]
$C$DW$120	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$120, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$121	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$121, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

