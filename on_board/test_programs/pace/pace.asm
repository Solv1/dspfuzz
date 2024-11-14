;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                        Unix v4.4.1 *
;* Date/Time created: Sat Oct 12 13:21:49 2024                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("./pace.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen Unix v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/santiago/Research/DSPFuzz/on_board/test_programs/pace")
;******************************************************************************
;* CINIT RECORDS                                                              *
;******************************************************************************
	.sect	".cinit"
	.align	1
	.field  	$C$IR_1,16
	.field  	_lowPassImpulse+0,24
	.field  	0,8
	.field	0,16			; _lowPassImpulse[0] @ 0
	.field	0,16			; _lowPassImpulse[1] @ 16
	.field	0,16			; _lowPassImpulse[2] @ 32
	.field	0,16			; _lowPassImpulse[3] @ 48
	.field	0,16			; _lowPassImpulse[4] @ 64
	.field	0,16			; _lowPassImpulse[5] @ 80
	.field	255,16			; _lowPassImpulse[6] @ 96
	.field	0,16			; _lowPassImpulse[7] @ 112
	.field	0,16			; _lowPassImpulse[8] @ 128
	.field	0,16			; _lowPassImpulse[9] @ 144
	.field	0,16			; _lowPassImpulse[10] @ 160
	.field	0,16			; _lowPassImpulse[11] @ 176
	.field	0,16			; _lowPassImpulse[12] @ 192
	.field	0,16			; _lowPassImpulse[13] @ 208
	.field	0,16			; _lowPassImpulse[14] @ 224
	.field	0,16			; _lowPassImpulse[15] @ 240
$C$IR_1:	.set	16

	.sect	".cinit"
	.align	1
	.field  	$C$IR_2,16
	.field  	_highPassImpulse+0,24
	.field  	0,8
	.field	-10,16			; _highPassImpulse[0] @ 0
	.field	-10,16			; _highPassImpulse[1] @ 16
	.field	-10,16			; _highPassImpulse[2] @ 32
	.field	-10,16			; _highPassImpulse[3] @ 48
	.field	-10,16			; _highPassImpulse[4] @ 64
	.field	-10,16			; _highPassImpulse[5] @ 80
	.field	255,16			; _highPassImpulse[6] @ 96
	.field	-10,16			; _highPassImpulse[7] @ 112
	.field	-10,16			; _highPassImpulse[8] @ 128
	.field	-10,16			; _highPassImpulse[9] @ 144
	.field	-10,16			; _highPassImpulse[10] @ 160
	.field	-10,16			; _highPassImpulse[11] @ 176
	.field	-10,16			; _highPassImpulse[12] @ 192
	.field	-10,16			; _highPassImpulse[13] @ 208
	.field	-10,16			; _highPassImpulse[14] @ 224
	.field	-10,16			; _highPassImpulse[15] @ 240
$C$IR_2:	.set	16

	.sect	".cinit"
	.align	1
	.field  	$C$IR_3,16
	.field  	_filterCoefficient+0,24
	.field  	0,8
	.field	255,16			; _filterCoefficient[0] @ 0
	.field	4312,16			; _filterCoefficient[1] @ 16
	.field	7643,16			; _filterCoefficient[2] @ 32
	.field	3243,16			; _filterCoefficient[3] @ 48
	.field	5212,16			; _filterCoefficient[4] @ 64
	.field	3351,16			; _filterCoefficient[5] @ 80
	.field	90,16			; _filterCoefficient[6] @ 96
	.field	1,16			; _filterCoefficient[7] @ 112
	.field	4532,16			; _filterCoefficient[8] @ 128
	.field	36,16			; _filterCoefficient[9] @ 144
	.field	100,16			; _filterCoefficient[10] @ 160
	.field	23,16			; _filterCoefficient[11] @ 176
	.field	43,16			; _filterCoefficient[12] @ 192
	.field	123,16			; _filterCoefficient[13] @ 208
	.field	54,16			; _filterCoefficient[14] @ 224
$C$IR_3:	.set	15

	.sect	".cinit"
	.align	1
	.field  	1,16
	.field  	_shockFlag+0,24
	.field  	0,8
	.field	0,16			; _shockFlag @ 0


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


$C$DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("convol")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_convol")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$10, DW_AT_declaration
	.dwattr $C$DW$10, DW_AT_external
$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$28)
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$28)
$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$28)
$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$30)
$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$30)
	.dwendtag $C$DW$10


$C$DW$16	.dwtag  DW_TAG_subprogram, DW_AT_name("dlms")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_dlms")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$16, DW_AT_declaration
	.dwattr $C$DW$16, DW_AT_external
$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$28)
$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$28)
$C$DW$19	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$28)
$C$DW$20	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$28)
$C$DW$21	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$28)
$C$DW$22	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$27)
$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$30)
$C$DW$24	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$30)
	.dwendtag $C$DW$16

	.global	_lowPassImpulse
	.bss	_lowPassImpulse,16,0,0
$C$DW$25	.dwtag  DW_TAG_variable, DW_AT_name("lowPassImpulse")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_lowPassImpulse")
	.dwattr $C$DW$25, DW_AT_location[DW_OP_addr _lowPassImpulse]
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$25, DW_AT_external
	.global	_highPassImpulse
	.bss	_highPassImpulse,16,0,0
$C$DW$26	.dwtag  DW_TAG_variable, DW_AT_name("highPassImpulse")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_highPassImpulse")
	.dwattr $C$DW$26, DW_AT_location[DW_OP_addr _highPassImpulse]
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$26, DW_AT_external
	.global	_filterCoefficient
	.bss	_filterCoefficient,16,0,0
$C$DW$27	.dwtag  DW_TAG_variable, DW_AT_name("filterCoefficient")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_filterCoefficient")
	.dwattr $C$DW$27, DW_AT_location[DW_OP_addr _filterCoefficient]
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$27, DW_AT_external
	.global	_shockFlag
	.bss	_shockFlag,1,0,0
$C$DW$28	.dwtag  DW_TAG_variable, DW_AT_name("shockFlag")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_shockFlag")
	.dwattr $C$DW$28, DW_AT_location[DW_OP_addr _shockFlag]
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$28, DW_AT_external
;	/home/santiago/Research/Ti/C55_Tools/acp55 -@/tmp/40081YlEYFB 
	.sect	".text"
	.global	_pace_test

$C$DW$29	.dwtag  DW_TAG_subprogram, DW_AT_name("pace_test")
	.dwattr $C$DW$29, DW_AT_low_pc(_pace_test)
	.dwattr $C$DW$29, DW_AT_high_pc(0x00)
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_pace_test")
	.dwattr $C$DW$29, DW_AT_external
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$29, DW_AT_TI_begin_file("./pace.c")
	.dwattr $C$DW$29, DW_AT_TI_begin_line(0x3a)
	.dwattr $C$DW$29, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$29, DW_AT_TI_max_frame_size(0x12)
	.dwpsn	file "./pace.c",line 58,column 53,is_stmt,address _pace_test

	.dwfde $C$DW$CIE, _pace_test
$C$DW$30	.dwtag  DW_TAG_formal_parameter, DW_AT_name("raw_data")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_raw_data")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_reg17]
$C$DW$31	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: pace_test                                                    *
;*                                                                             *
;*   Function Uses Regs : T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,AR4,XAR4,  *
;*                        SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL             *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 18 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (1 function parameters)                              *
;*                        (15 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_pace_test:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-17, SP
	.dwcfi	cfa_offset, 18
$C$DW$32	.dwtag  DW_TAG_variable, DW_AT_name("raw_data")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_raw_data")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$33	.dwtag  DW_TAG_variable, DW_AT_name("size")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$34	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$35	.dwtag  DW_TAG_variable, DW_AT_name("numPeaks")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_numPeaks")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$36	.dwtag  DW_TAG_variable, DW_AT_name("retVal")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_retVal")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$37	.dwtag  DW_TAG_variable, DW_AT_name("inputBuf")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_inputBuf")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$38	.dwtag  DW_TAG_variable, DW_AT_name("output")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_output")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$39	.dwtag  DW_TAG_variable, DW_AT_name("dataBuf")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_dataBuf")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$40	.dwtag  DW_TAG_variable, DW_AT_name("des")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_des")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_bregx 0x24 14]
        MOV T0, *SP(#4) ; |58| 
        MOV XAR0, dbl(*SP(#2))
	.dwpsn	file "./pace.c",line 62,column 13,is_stmt
        MOV #0, *SP(#6) ; |62| 
	.dwpsn	file "./pace.c",line 63,column 11,is_stmt
        MOV #0, *SP(#7) ; |63| 
	.dwpsn	file "./pace.c",line 64,column 5,is_stmt
        BTST #0, *SP(#4), TC1 ; |64| 
        BCC $C$L1,TC1 ; |64| 
                                        ; branchcc occurs ; |64| 
	.dwpsn	file "./pace.c",line 65,column 9,is_stmt
        MOV #-1, T0
        B $C$L12  ; |65| 
                                        ; branch occurs ; |65| 
$C$L1:    
	.dwpsn	file "./pace.c",line 67,column 10,is_stmt
        MOV #50, AR2 ; |67| 
        MOV *SP(#4), AR1 ; |67| 
        CMPU AR1 >= AR2, TC1 ; |67| 
        BCC $C$L2,TC1 ; |67| 
                                        ; branchcc occurs ; |67| 
	.dwpsn	file "./pace.c",line 68,column 9,is_stmt
        MOV #-1, T0
        B $C$L12  ; |68| 
                                        ; branch occurs ; |68| 
$C$L2:    
	.dwpsn	file "./pace.c",line 71,column 12,is_stmt
        MOV #1, T1
$C$DW$41	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$41, DW_AT_low_pc(0x00)
	.dwattr $C$DW$41, DW_AT_name("_calloc")
	.dwattr $C$DW$41, DW_AT_TI_call

        CALL #_calloc ; |71| 
||      MOV AR1, T0

                                        ; call occurs [#_calloc] ; |71| 
        MOV XAR0, dbl(*SP(#8))
	.dwpsn	file "./pace.c",line 72,column 12,is_stmt
        MOV *SP(#4), AR1 ; |72| 
        ADD #16, AR1, T0 ; |72| 
$C$DW$42	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$42, DW_AT_low_pc(0x00)
	.dwattr $C$DW$42, DW_AT_name("_calloc")
	.dwattr $C$DW$42, DW_AT_TI_call

        CALL #_calloc ; |72| 
||      MOV #1, T1

                                        ; call occurs [#_calloc] ; |72| 
        MOV XAR0, dbl(*SP(#10))
	.dwpsn	file "./pace.c",line 73,column 12,is_stmt
        MOV *SP(#4), AR1 ; |73| 
        ADD #16, AR1, T0 ; |73| 
$C$DW$43	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$43, DW_AT_low_pc(0x00)
	.dwattr $C$DW$43, DW_AT_name("_calloc")
	.dwattr $C$DW$43, DW_AT_TI_call

        CALL #_calloc ; |73| 
||      MOV #1, T1

                                        ; call occurs [#_calloc] ; |73| 
        MOV XAR0, dbl(*SP(#12))
	.dwpsn	file "./pace.c",line 74,column 12,is_stmt
        MOV *SP(#4), T0 ; |74| 
$C$DW$44	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$44, DW_AT_low_pc(0x00)
	.dwattr $C$DW$44, DW_AT_name("_calloc")
	.dwattr $C$DW$44, DW_AT_TI_call

        CALL #_calloc ; |74| 
||      MOV #1, T1

                                        ; call occurs [#_calloc] ; |74| 
        MOV XAR0, dbl(*SP(#14))
	.dwpsn	file "./pace.c",line 76,column 5,is_stmt
        MOV dbl(*SP(#8)), XAR0
        MOV *SP(#4), T0 ; |76| 
        MOV dbl(*SP(#2)), XAR1
$C$DW$45	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$45, DW_AT_low_pc(0x00)
	.dwattr $C$DW$45, DW_AT_name("_memcpy")
	.dwattr $C$DW$45, DW_AT_TI_call
        CALL #_memcpy ; |76| 
                                        ; call occurs [#_memcpy] ; |76| 
	.dwpsn	file "./pace.c",line 80,column 5,is_stmt
        MOV *SP(#4), AR1 ; |80| 
        SUB #16, AR1, T0 ; |80| 
        MOV #16, T1 ; |80| 
        MOV dbl(*SP(#8)), XAR0
        MOV dbl(*SP(#12)), XAR2
        AMOV #_lowPassImpulse, XAR1 ; |80| 
$C$DW$46	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$46, DW_AT_low_pc(0x00)
	.dwattr $C$DW$46, DW_AT_name("_convol")
	.dwattr $C$DW$46, DW_AT_TI_call
        CALL #_convol ; |80| 
                                        ; call occurs [#_convol] ; |80| 
        MOV T0, *SP(#7) ; |80| 
	.dwpsn	file "./pace.c",line 81,column 5,is_stmt
        MOV T0, AR1
        BCC $C$L3,AR1 == #0 ; |81| 
                                        ; branchcc occurs ; |81| 
	.dwpsn	file "./pace.c",line 82,column 9,is_stmt
        MOV dbl(*SP(#8)), XAR0
$C$DW$47	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$47, DW_AT_low_pc(0x00)
	.dwattr $C$DW$47, DW_AT_name("_free")
	.dwattr $C$DW$47, DW_AT_TI_call
        CALL #_free ; |82| 
                                        ; call occurs [#_free] ; |82| 
	.dwpsn	file "./pace.c",line 83,column 9,is_stmt
        MOV dbl(*SP(#10)), XAR0
$C$DW$48	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$48, DW_AT_low_pc(0x00)
	.dwattr $C$DW$48, DW_AT_name("_free")
	.dwattr $C$DW$48, DW_AT_TI_call
        CALL #_free ; |83| 
                                        ; call occurs [#_free] ; |83| 
	.dwpsn	file "./pace.c",line 84,column 9,is_stmt
        MOV dbl(*SP(#12)), XAR0
$C$DW$49	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$49, DW_AT_low_pc(0x00)
	.dwattr $C$DW$49, DW_AT_name("_free")
	.dwattr $C$DW$49, DW_AT_TI_call
        CALL #_free ; |84| 
                                        ; call occurs [#_free] ; |84| 
	.dwpsn	file "./pace.c",line 85,column 9,is_stmt
        MOV dbl(*SP(#14)), XAR0
$C$DW$50	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$50, DW_AT_low_pc(0x00)
	.dwattr $C$DW$50, DW_AT_name("_free")
	.dwattr $C$DW$50, DW_AT_TI_call
        CALL #_free ; |85| 
                                        ; call occurs [#_free] ; |85| 
	.dwpsn	file "./pace.c",line 86,column 9,is_stmt
        MOV #-1, T0
        B $C$L12  ; |86| 
                                        ; branch occurs ; |86| 
$C$L3:    
	.dwpsn	file "./pace.c",line 89,column 5,is_stmt
        MOV *SP(#4), AR1 ; |89| 
        SUB #16, AR1, T0 ; |89| 
        MOV dbl(*SP(#12)), XAR0
        MOV dbl(*SP(#10)), XAR2
        MOV #16, T1 ; |89| 
        AMOV #_highPassImpulse, XAR1 ; |89| 
$C$DW$51	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$51, DW_AT_low_pc(0x00)
	.dwattr $C$DW$51, DW_AT_name("_convol")
	.dwattr $C$DW$51, DW_AT_TI_call
        CALL #_convol ; |89| 
                                        ; call occurs [#_convol] ; |89| 
        MOV T0, *SP(#7) ; |89| 
	.dwpsn	file "./pace.c",line 90,column 5,is_stmt
        MOV T0, AR1
        BCC $C$L4,AR1 == #0 ; |90| 
                                        ; branchcc occurs ; |90| 
	.dwpsn	file "./pace.c",line 91,column 9,is_stmt
        MOV dbl(*SP(#8)), XAR0
$C$DW$52	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$52, DW_AT_low_pc(0x00)
	.dwattr $C$DW$52, DW_AT_name("_free")
	.dwattr $C$DW$52, DW_AT_TI_call
        CALL #_free ; |91| 
                                        ; call occurs [#_free] ; |91| 
	.dwpsn	file "./pace.c",line 92,column 9,is_stmt
        MOV dbl(*SP(#10)), XAR0
$C$DW$53	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$53, DW_AT_low_pc(0x00)
	.dwattr $C$DW$53, DW_AT_name("_free")
	.dwattr $C$DW$53, DW_AT_TI_call
        CALL #_free ; |92| 
                                        ; call occurs [#_free] ; |92| 
	.dwpsn	file "./pace.c",line 93,column 9,is_stmt
        MOV dbl(*SP(#12)), XAR0
$C$DW$54	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$54, DW_AT_low_pc(0x00)
	.dwattr $C$DW$54, DW_AT_name("_free")
	.dwattr $C$DW$54, DW_AT_TI_call
        CALL #_free ; |93| 
                                        ; call occurs [#_free] ; |93| 
	.dwpsn	file "./pace.c",line 94,column 9,is_stmt
        MOV dbl(*SP(#14)), XAR0
$C$DW$55	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$55, DW_AT_low_pc(0x00)
	.dwattr $C$DW$55, DW_AT_name("_free")
	.dwattr $C$DW$55, DW_AT_TI_call
        CALL #_free ; |94| 
                                        ; call occurs [#_free] ; |94| 
	.dwpsn	file "./pace.c",line 95,column 9,is_stmt
        MOV #-1, T0
        B $C$L12  ; |95| 
                                        ; branch occurs ; |95| 
$C$L4:    
	.dwpsn	file "./pace.c",line 99,column 5,is_stmt
        MOV *SP(#4), AR1 ; |99| 
        SUB #32, AR1, AR1 ; |99| 
        MOV AR1, *SP(#0) ; |99| 
        MOV #16, T1 ; |99| 
        MOV dbl(*SP(#10)), XAR0
        MOV dbl(*SP(#8)), XAR2
        MOV dbl(*SP(#14)), XAR3
        MOV dbl(*SP(#12)), XAR4
        AMOV #_filterCoefficient, XAR1 ; |99| 
$C$DW$56	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$56, DW_AT_low_pc(0x00)
	.dwattr $C$DW$56, DW_AT_name("_dlms")
	.dwattr $C$DW$56, DW_AT_TI_call

        CALL #_dlms ; |99| 
||      MOV #1, T0

                                        ; call occurs [#_dlms] ; |99| 
        MOV T0, *SP(#7) ; |99| 
	.dwpsn	file "./pace.c",line 100,column 5,is_stmt
        MOV T0, AR1
        BCC $C$L5,AR1 == #0 ; |100| 
                                        ; branchcc occurs ; |100| 
	.dwpsn	file "./pace.c",line 101,column 9,is_stmt
        MOV dbl(*SP(#8)), XAR0
$C$DW$57	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$57, DW_AT_low_pc(0x00)
	.dwattr $C$DW$57, DW_AT_name("_free")
	.dwattr $C$DW$57, DW_AT_TI_call
        CALL #_free ; |101| 
                                        ; call occurs [#_free] ; |101| 
	.dwpsn	file "./pace.c",line 102,column 9,is_stmt
        MOV dbl(*SP(#10)), XAR0
$C$DW$58	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$58, DW_AT_low_pc(0x00)
	.dwattr $C$DW$58, DW_AT_name("_free")
	.dwattr $C$DW$58, DW_AT_TI_call
        CALL #_free ; |102| 
                                        ; call occurs [#_free] ; |102| 
	.dwpsn	file "./pace.c",line 103,column 9,is_stmt
        MOV dbl(*SP(#12)), XAR0
$C$DW$59	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$59, DW_AT_low_pc(0x00)
	.dwattr $C$DW$59, DW_AT_name("_free")
	.dwattr $C$DW$59, DW_AT_TI_call
        CALL #_free ; |103| 
                                        ; call occurs [#_free] ; |103| 
	.dwpsn	file "./pace.c",line 104,column 9,is_stmt
        MOV dbl(*SP(#14)), XAR0
$C$DW$60	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$60, DW_AT_low_pc(0x00)
	.dwattr $C$DW$60, DW_AT_name("_free")
	.dwattr $C$DW$60, DW_AT_TI_call
        CALL #_free ; |104| 
                                        ; call occurs [#_free] ; |104| 
	.dwpsn	file "./pace.c",line 105,column 9,is_stmt
        MOV #-1, T0
        B $C$L12  ; |105| 
                                        ; branch occurs ; |105| 
$C$L5:    
	.dwpsn	file "./pace.c",line 111,column 9,is_stmt
        MOV #0, *SP(#5) ; |111| 
	.dwpsn	file "./pace.c",line 111,column 16,is_stmt
        MOV *SP(#4), AR1 ; |111| 
        MOV *SP(#5), AR2 ; |111| 
        CMPU AR2 >= AR1, TC1 ; |111| 
        BCC $C$L8,TC1 ; |111| 
                                        ; branchcc occurs ; |111| 
$C$L6:    
$C$DW$L$_pace_test$13$B:
	.dwpsn	file "./pace.c",line 112,column 9,is_stmt
        MOV *SP(#5), T0 ; |112| 
        MOV dbl(*SP(#10)), XAR3
        MOV *AR3(T0), AR1 ; |112| 
        BCC $C$L7,AR1 <= #0 ; |112| 
                                        ; branchcc occurs ; |112| 
$C$DW$L$_pace_test$13$E:
$C$DW$L$_pace_test$14$B:
	.dwpsn	file "./pace.c",line 113,column 13,is_stmt
        ADD #1, *SP(#6) ; |113| 
$C$DW$L$_pace_test$14$E:
$C$L7:    
$C$DW$L$_pace_test$15$B:
	.dwpsn	file "./pace.c",line 111,column 26,is_stmt
        ADD #1, *SP(#5) ; |111| 
	.dwpsn	file "./pace.c",line 111,column 16,is_stmt
        MOV *SP(#4), AR1 ; |111| 
        MOV *SP(#5), AR2 ; |111| 
        CMPU AR2 < AR1, TC1 ; |111| 
        BCC $C$L6,TC1 ; |111| 
                                        ; branchcc occurs ; |111| 
$C$DW$L$_pace_test$15$E:
$C$L8:    
	.dwpsn	file "./pace.c",line 116,column 5,is_stmt
        MOV *SP(#6), AR1 ; |116| 
        BCC $C$L9,AR1 != #0 ; |116| 
                                        ; branchcc occurs ; |116| 
	.dwpsn	file "./pace.c",line 117,column 9,is_stmt
        MOV dbl(*SP(#8)), XAR0
$C$DW$61	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$61, DW_AT_low_pc(0x00)
	.dwattr $C$DW$61, DW_AT_name("_free")
	.dwattr $C$DW$61, DW_AT_TI_call
        CALL #_free ; |117| 
                                        ; call occurs [#_free] ; |117| 
	.dwpsn	file "./pace.c",line 118,column 9,is_stmt
        MOV dbl(*SP(#10)), XAR0
$C$DW$62	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$62, DW_AT_low_pc(0x00)
	.dwattr $C$DW$62, DW_AT_name("_free")
	.dwattr $C$DW$62, DW_AT_TI_call
        CALL #_free ; |118| 
                                        ; call occurs [#_free] ; |118| 
	.dwpsn	file "./pace.c",line 119,column 9,is_stmt
        MOV dbl(*SP(#12)), XAR0
$C$DW$63	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$63, DW_AT_low_pc(0x00)
	.dwattr $C$DW$63, DW_AT_name("_free")
	.dwattr $C$DW$63, DW_AT_TI_call
        CALL #_free ; |119| 
                                        ; call occurs [#_free] ; |119| 
	.dwpsn	file "./pace.c",line 120,column 9,is_stmt
        MOV dbl(*SP(#14)), XAR0
$C$DW$64	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$64, DW_AT_low_pc(0x00)
	.dwattr $C$DW$64, DW_AT_name("_free")
	.dwattr $C$DW$64, DW_AT_TI_call
        CALL #_free ; |120| 
                                        ; call occurs [#_free] ; |120| 
	.dwpsn	file "./pace.c",line 122,column 9,is_stmt
        MOV #0, T0
        B $C$L12  ; |122| 
                                        ; branch occurs ; |122| 
$C$L9:    
	.dwpsn	file "./pace.c",line 125,column 5,is_stmt
        MOV #10, AR2
        CMP AR1 >= AR2, TC1 ; |125| 
        BCC $C$L10,TC1 ; |125| 
                                        ; branchcc occurs ; |125| 
	.dwpsn	file "./pace.c",line 127,column 9,is_stmt
        MOV #1, *(#_shockFlag) ; |127| 
	.dwpsn	file "./pace.c",line 128,column 5,is_stmt
        B $C$L11  ; |128| 
                                        ; branch occurs ; |128| 
$C$L10:    
	.dwpsn	file "./pace.c",line 129,column 10,is_stmt
$C$L11:    
	.dwpsn	file "./pace.c",line 136,column 5,is_stmt
        MOV dbl(*SP(#8)), XAR0
$C$DW$65	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$65, DW_AT_low_pc(0x00)
	.dwattr $C$DW$65, DW_AT_name("_free")
	.dwattr $C$DW$65, DW_AT_TI_call
        CALL #_free ; |136| 
                                        ; call occurs [#_free] ; |136| 
	.dwpsn	file "./pace.c",line 137,column 5,is_stmt
        MOV dbl(*SP(#10)), XAR0
$C$DW$66	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$66, DW_AT_low_pc(0x00)
	.dwattr $C$DW$66, DW_AT_name("_free")
	.dwattr $C$DW$66, DW_AT_TI_call
        CALL #_free ; |137| 
                                        ; call occurs [#_free] ; |137| 
	.dwpsn	file "./pace.c",line 138,column 5,is_stmt
        MOV dbl(*SP(#12)), XAR0
$C$DW$67	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$67, DW_AT_low_pc(0x00)
	.dwattr $C$DW$67, DW_AT_name("_free")
	.dwattr $C$DW$67, DW_AT_TI_call
        CALL #_free ; |138| 
                                        ; call occurs [#_free] ; |138| 
	.dwpsn	file "./pace.c",line 139,column 5,is_stmt
        MOV dbl(*SP(#14)), XAR0
$C$DW$68	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$68, DW_AT_low_pc(0x00)
	.dwattr $C$DW$68, DW_AT_name("_free")
	.dwattr $C$DW$68, DW_AT_TI_call
        CALL #_free ; |139| 
                                        ; call occurs [#_free] ; |139| 
	.dwpsn	file "./pace.c",line 141,column 5,is_stmt
        MOV #0, T0
$C$L12:    
	.dwpsn	file "./pace.c",line 142,column 1,is_stmt
        AADD #17, SP
	.dwcfi	cfa_offset, 1
$C$DW$69	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$69, DW_AT_low_pc(0x00)
	.dwattr $C$DW$69, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$70	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$70, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/pace/pace.asm:$C$L6:1:1728753709")
	.dwattr $C$DW$70, DW_AT_TI_begin_file("./pace.c")
	.dwattr $C$DW$70, DW_AT_TI_begin_line(0x6f)
	.dwattr $C$DW$70, DW_AT_TI_end_line(0x73)
$C$DW$71	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$71, DW_AT_low_pc($C$DW$L$_pace_test$13$B)
	.dwattr $C$DW$71, DW_AT_high_pc($C$DW$L$_pace_test$13$E)
$C$DW$72	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$72, DW_AT_low_pc($C$DW$L$_pace_test$14$B)
	.dwattr $C$DW$72, DW_AT_high_pc($C$DW$L$_pace_test$14$E)
$C$DW$73	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$73, DW_AT_low_pc($C$DW$L$_pace_test$15$B)
	.dwattr $C$DW$73, DW_AT_high_pc($C$DW$L$_pace_test$15$E)
	.dwendtag $C$DW$70

	.dwattr $C$DW$29, DW_AT_TI_end_file("./pace.c")
	.dwattr $C$DW$29, DW_AT_TI_end_line(0x8e)
	.dwattr $C$DW$29, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$29

;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_calloc
	.global	_free
	.global	_convol
	.global	_dlms
	.global	_memcpy

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x17)
$C$DW$74	.dwtag  DW_TAG_TI_far_type
$C$DW$T$19	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$74)
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

$C$DW$T$29	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$29, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x10)
$C$DW$75	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$75, DW_AT_upper_bound(0x0f)
	.dwendtag $C$DW$T$29

$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)
$C$DW$T$30	.dwtag  DW_TAG_typedef, DW_AT_name("ushort")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$30, DW_AT_language(DW_LANG_C)
$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x01)
$C$DW$T$35	.dwtag  DW_TAG_typedef, DW_AT_name("int16_t")
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$35, DW_AT_language(DW_LANG_C)
$C$DW$T$36	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$36, DW_AT_address_class(0x17)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)
$C$DW$T$39	.dwtag  DW_TAG_typedef, DW_AT_name("_Bool")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$39, DW_AT_language(DW_LANG_C)
$C$DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("size_t")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
$C$DW$T$37	.dwtag  DW_TAG_typedef, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
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

$C$DW$76	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$76, DW_AT_location[DW_OP_reg0]
$C$DW$77	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$77, DW_AT_location[DW_OP_reg1]
$C$DW$78	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$78, DW_AT_location[DW_OP_reg2]
$C$DW$79	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$79, DW_AT_location[DW_OP_reg3]
$C$DW$80	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$80, DW_AT_location[DW_OP_reg4]
$C$DW$81	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$81, DW_AT_location[DW_OP_reg5]
$C$DW$82	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$82, DW_AT_location[DW_OP_reg6]
$C$DW$83	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$83, DW_AT_location[DW_OP_reg7]
$C$DW$84	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$84, DW_AT_location[DW_OP_reg8]
$C$DW$85	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$85, DW_AT_location[DW_OP_reg9]
$C$DW$86	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$86, DW_AT_location[DW_OP_reg10]
$C$DW$87	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$87, DW_AT_location[DW_OP_reg11]
$C$DW$88	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$88, DW_AT_location[DW_OP_reg12]
$C$DW$89	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$89, DW_AT_location[DW_OP_reg13]
$C$DW$90	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$90, DW_AT_location[DW_OP_reg14]
$C$DW$91	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$91, DW_AT_location[DW_OP_reg15]
$C$DW$92	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$92, DW_AT_location[DW_OP_reg16]
$C$DW$93	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$93, DW_AT_location[DW_OP_reg17]
$C$DW$94	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$94, DW_AT_location[DW_OP_reg18]
$C$DW$95	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$95, DW_AT_location[DW_OP_reg19]
$C$DW$96	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$96, DW_AT_location[DW_OP_reg20]
$C$DW$97	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$97, DW_AT_location[DW_OP_reg21]
$C$DW$98	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$98, DW_AT_location[DW_OP_reg22]
$C$DW$99	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$99, DW_AT_location[DW_OP_reg23]
$C$DW$100	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$100, DW_AT_location[DW_OP_reg24]
$C$DW$101	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$101, DW_AT_location[DW_OP_reg25]
$C$DW$102	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$102, DW_AT_location[DW_OP_reg26]
$C$DW$103	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$103, DW_AT_location[DW_OP_reg27]
$C$DW$104	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$104, DW_AT_location[DW_OP_reg28]
$C$DW$105	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$105, DW_AT_location[DW_OP_reg29]
$C$DW$106	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$106, DW_AT_location[DW_OP_reg30]
$C$DW$107	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$107, DW_AT_location[DW_OP_reg31]
$C$DW$108	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$108, DW_AT_location[DW_OP_regx 0x20]
$C$DW$109	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$109, DW_AT_location[DW_OP_regx 0x21]
$C$DW$110	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$110, DW_AT_location[DW_OP_regx 0x22]
$C$DW$111	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$111, DW_AT_location[DW_OP_regx 0x23]
$C$DW$112	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$112, DW_AT_location[DW_OP_regx 0x24]
$C$DW$113	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$113, DW_AT_location[DW_OP_regx 0x25]
$C$DW$114	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$114, DW_AT_location[DW_OP_regx 0x26]
$C$DW$115	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$115, DW_AT_location[DW_OP_regx 0x27]
$C$DW$116	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$116, DW_AT_location[DW_OP_regx 0x28]
$C$DW$117	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$117, DW_AT_location[DW_OP_regx 0x29]
$C$DW$118	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$118, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$119	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$119, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$120	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$120, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$121	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$121, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$122	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$122, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$123	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$123, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$124	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$124, DW_AT_location[DW_OP_regx 0x30]
$C$DW$125	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$125, DW_AT_location[DW_OP_regx 0x31]
$C$DW$126	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$126, DW_AT_location[DW_OP_regx 0x32]
$C$DW$127	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$127, DW_AT_location[DW_OP_regx 0x33]
$C$DW$128	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$128, DW_AT_location[DW_OP_regx 0x34]
$C$DW$129	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$129, DW_AT_location[DW_OP_regx 0x35]
$C$DW$130	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$130, DW_AT_location[DW_OP_regx 0x36]
$C$DW$131	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$131, DW_AT_location[DW_OP_regx 0x37]
$C$DW$132	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$132, DW_AT_location[DW_OP_regx 0x38]
$C$DW$133	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$133, DW_AT_location[DW_OP_regx 0x39]
$C$DW$134	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$134, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$135	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$135, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$136	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$136, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$137	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$137, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$138	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$138, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$139	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$139, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$140	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$140, DW_AT_location[DW_OP_regx 0x40]
$C$DW$141	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$141, DW_AT_location[DW_OP_regx 0x41]
$C$DW$142	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$142, DW_AT_location[DW_OP_regx 0x42]
$C$DW$143	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$143, DW_AT_location[DW_OP_regx 0x43]
$C$DW$144	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$144, DW_AT_location[DW_OP_regx 0x44]
$C$DW$145	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$145, DW_AT_location[DW_OP_regx 0x45]
$C$DW$146	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$146, DW_AT_location[DW_OP_regx 0x46]
$C$DW$147	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$147, DW_AT_location[DW_OP_regx 0x47]
$C$DW$148	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$148, DW_AT_location[DW_OP_regx 0x48]
$C$DW$149	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$149, DW_AT_location[DW_OP_regx 0x49]
$C$DW$150	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$150, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$151	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$151, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$152	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$152, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$153	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$153, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$154	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$154, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$155	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$155, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$156	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$156, DW_AT_location[DW_OP_regx 0x50]
$C$DW$157	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$157, DW_AT_location[DW_OP_regx 0x51]
$C$DW$158	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$158, DW_AT_location[DW_OP_regx 0x52]
$C$DW$159	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$159, DW_AT_location[DW_OP_regx 0x53]
$C$DW$160	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$160, DW_AT_location[DW_OP_regx 0x54]
$C$DW$161	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$161, DW_AT_location[DW_OP_regx 0x55]
$C$DW$162	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$162, DW_AT_location[DW_OP_regx 0x56]
$C$DW$163	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$163, DW_AT_location[DW_OP_regx 0x57]
$C$DW$164	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$164, DW_AT_location[DW_OP_regx 0x58]
$C$DW$165	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$165, DW_AT_location[DW_OP_regx 0x59]
$C$DW$166	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$166, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$167	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$167, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

