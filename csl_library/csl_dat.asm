;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                        Unix v4.4.1 *
;* Date/Time created: Thu May  2 04:43:51 2024                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("src/csl_dat.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen Unix v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/santiago/dspfuzz/on_board/library")
;	/home/santiago/ti/55x_Tools/bin/acp55 -@/tmp/17274jVV3pv 
	.sect	".text"
	.global	_DAT_open

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("DAT_open")
	.dwattr $C$DW$1, DW_AT_low_pc(_DAT_open)
	.dwattr $C$DW$1, DW_AT_high_pc(0x00)
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_DAT_open")
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$1, DW_AT_TI_begin_file("src/csl_dat.c")
	.dwattr $C$DW$1, DW_AT_TI_begin_line(0x68)
	.dwattr $C$DW$1, DW_AT_TI_begin_column(0x10)
	.dwattr $C$DW$1, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "src/csl_dat.c",line 110,column 1,is_stmt,address _DAT_open

	.dwfde $C$DW$CIE, _DAT_open
$C$DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanNum")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("_chanNum")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$2, DW_AT_location[DW_OP_reg12]
$C$DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanPriority")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_chanPriority")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$3, DW_AT_location[DW_OP_reg13]
$C$DW$4	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pDatChanObj")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_pDatChanObj")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$4, DW_AT_location[DW_OP_reg17]
$C$DW$5	.dwtag  DW_TAG_formal_parameter, DW_AT_name("status")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: DAT_open                                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,     *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (8 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_DAT_open:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-9, SP
	.dwcfi	cfa_offset, 10
$C$DW$6	.dwtag  DW_TAG_variable, DW_AT_name("chanNum")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_chanNum")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$7	.dwtag  DW_TAG_variable, DW_AT_name("chanPriority")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_chanPriority")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$8	.dwtag  DW_TAG_variable, DW_AT_name("pDatChanObj")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_pDatChanObj")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$9	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$10	.dwtag  DW_TAG_variable, DW_AT_name("hDAT")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_hDAT")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV XAR1, dbl(*SP(#4))
        MOV XAR0, dbl(*SP(#2))
        MOV T1, *SP(#1) ; |110| 
        MOV T0, *SP(#0) ; |110| 
	.dwpsn	file "src/csl_dat.c",line 113,column 5,is_stmt

        MOV T0, AR1 ; |113| 
||      MOV #16, AR2 ; |113| 

        CMP AR1 >= AR2, TC1 ; |113| 
        BCC $C$L1,TC1 ; |113| 
                                        ; branchcc occurs ; |113| 
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        BCC $C$L2,AC0 != #0 ; |113| 
                                        ; branchcc occurs ; |113| 
$C$L1:    
	.dwpsn	file "src/csl_dat.c",line 115,column 5,is_stmt
        MOV #0, AC0 ; |115| 
        MOV AC0, dbl(*SP(#6))
	.dwpsn	file "src/csl_dat.c",line 116,column 9,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #-6, *AR3 ; |116| 
	.dwpsn	file "src/csl_dat.c",line 117,column 5,is_stmt
        B $C$L8   ; |117| 
                                        ; branch occurs ; |117| 
$C$L2:    
	.dwpsn	file "src/csl_dat.c",line 121,column 9,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #0, *AR3 ; |121| 
	.dwpsn	file "src/csl_dat.c",line 122,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#0), AR1 ; |122| 
        MOV AR1, *AR3(short(#1)) ; |122| 
	.dwpsn	file "src/csl_dat.c",line 123,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#1), AR1 ; |123| 
        MOV AR1, *AR3(short(#3)) ; |123| 
	.dwpsn	file "src/csl_dat.c",line 124,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #1, *AR3(short(#4)) ; |124| 
	.dwpsn	file "src/csl_dat.c",line 126,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#1), AR1 ; |126| 
        MOV AR1, *AR3(short(#3)) ; |126| 
	.dwpsn	file "src/csl_dat.c",line 128,column 9,is_stmt
        B $C$L7   ; |128| 
                                        ; branch occurs ; |128| 
$C$L3:    
	.dwpsn	file "src/csl_dat.c",line 134,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #3072, *AR3 ; |134| 
	.dwpsn	file "src/csl_dat.c",line 135,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #0, *AR3(short(#2)) ; |135| 
	.dwpsn	file "src/csl_dat.c",line 136,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, dbl(*SP(#6))
	.dwpsn	file "src/csl_dat.c",line 137,column 18,is_stmt
        B $C$L8   ; |137| 
                                        ; branch occurs ; |137| 
$C$L4:    
	.dwpsn	file "src/csl_dat.c",line 143,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #3328, *AR3 ; |143| 
	.dwpsn	file "src/csl_dat.c",line 144,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #1, *AR3(short(#2)) ; |144| 
	.dwpsn	file "src/csl_dat.c",line 145,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, dbl(*SP(#6))
	.dwpsn	file "src/csl_dat.c",line 146,column 18,is_stmt
        B $C$L8   ; |146| 
                                        ; branch occurs ; |146| 
$C$L5:    
	.dwpsn	file "src/csl_dat.c",line 152,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #3584, *AR3 ; |152| 
	.dwpsn	file "src/csl_dat.c",line 153,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #2, *AR3(short(#2)) ; |153| 
	.dwpsn	file "src/csl_dat.c",line 154,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, dbl(*SP(#6))
	.dwpsn	file "src/csl_dat.c",line 155,column 18,is_stmt
        B $C$L8   ; |155| 
                                        ; branch occurs ; |155| 
$C$L6:    
	.dwpsn	file "src/csl_dat.c",line 161,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #3840, *AR3 ; |161| 
	.dwpsn	file "src/csl_dat.c",line 162,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #3, *AR3(short(#2)) ; |162| 
	.dwpsn	file "src/csl_dat.c",line 163,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, dbl(*SP(#6))
	.dwpsn	file "src/csl_dat.c",line 164,column 18,is_stmt
        B $C$L8   ; |164| 
                                        ; branch occurs ; |164| 
$C$L7:    
	.dwpsn	file "src/csl_dat.c",line 128,column 9,is_stmt

        MOV *SP(#0), AR1 ; |128| 
||      MOV #3, AR2

        CMPU AR1 <= AR2, TC1 ; |128| 
        BCC $C$L3,TC1 ; |128| 
                                        ; branchcc occurs ; |128| 

        SUB #4, AR1, AR2 ; |128| 
||      MOV #3, AR3

        CMPU AR2 <= AR3, TC1 ; |128| 
        BCC $C$L4,TC1 ; |128| 
                                        ; branchcc occurs ; |128| 
        SUB #8, AR1, AR2 ; |128| 
        CMPU AR2 <= AR3, TC1 ; |128| 
        BCC $C$L5,TC1 ; |128| 
                                        ; branchcc occurs ; |128| 

        SUB #12, AR1, AR1 ; |128| 
||      MOV #3, AR2

        CMPU AR1 <= AR2, TC1 ; |128| 
        BCC $C$L6,TC1 ; |128| 
                                        ; branchcc occurs ; |128| 
$C$L8:    
	.dwpsn	file "src/csl_dat.c",line 168,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR0
	.dwpsn	file "src/csl_dat.c",line 169,column 1,is_stmt
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$11	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$11, DW_AT_low_pc(0x00)
	.dwattr $C$DW$11, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$1, DW_AT_TI_end_file("src/csl_dat.c")
	.dwattr $C$DW$1, DW_AT_TI_end_line(0xa9)
	.dwattr $C$DW$1, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$1

	.sect	".text"
	.global	_DAT_close

$C$DW$12	.dwtag  DW_TAG_subprogram, DW_AT_name("DAT_close")
	.dwattr $C$DW$12, DW_AT_low_pc(_DAT_close)
	.dwattr $C$DW$12, DW_AT_high_pc(0x00)
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_DAT_close")
	.dwattr $C$DW$12, DW_AT_external
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$12, DW_AT_TI_begin_file("src/csl_dat.c")
	.dwattr $C$DW$12, DW_AT_TI_begin_line(0xd1)
	.dwattr $C$DW$12, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$12, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_dat.c",line 212,column 1,is_stmt,address _DAT_close

	.dwfde $C$DW$CIE, _DAT_close
$C$DW$13	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hDAT")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_hDAT")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: DAT_close                                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,CARRY,TC1,   *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_DAT_close:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$14	.dwtag  DW_TAG_variable, DW_AT_name("hDAT")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_hDAT")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$15	.dwtag  DW_TAG_variable, DW_AT_name("chanNum")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_chanNum")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_dat.c",line 215,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L9,AC0 != #0 ; |215| 
                                        ; branchcc occurs ; |215| 
	.dwpsn	file "src/csl_dat.c",line 217,column 3,is_stmt
        MOV #-5, T0
        B $C$L17  ; |217| 
                                        ; branch occurs ; |217| 
$C$L9:    
	.dwpsn	file "src/csl_dat.c",line 221,column 9,is_stmt
        MOV *AR3(short(#1)), AR1 ; |221| 
        MOV AR1, *SP(#2) ; |221| 
	.dwpsn	file "src/csl_dat.c",line 223,column 15,is_stmt
        MOV #4, AR2
        CMPU AR1 < AR2, TC1 ; |223| 
        BCC $C$L15,TC1 ; |223| 
                                        ; branchcc occurs ; |223| 
$C$L10:    
$C$DW$L$_DAT_close$5$B:
	.dwpsn	file "src/csl_dat.c",line 225,column 13,is_stmt
        SUB #4, *SP(#2) ; |225| 
	.dwpsn	file "src/csl_dat.c",line 223,column 15,is_stmt
        MOV *SP(#2), AR1 ; |223| 
        CMPU AR1 >= AR2, TC1 ; |223| 
        BCC $C$L10,TC1 ; |223| 
                                        ; branchcc occurs ; |223| 
$C$DW$L$_DAT_close$5$E:
	.dwpsn	file "src/csl_dat.c",line 228,column 9,is_stmt
        B $C$L15  ; |228| 
                                        ; branch occurs ; |228| 
$C$L11:    
	.dwpsn	file "src/csl_dat.c",line 231,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |231| 
        MOV #0, port(*AR3) ; |231| 
	.dwpsn	file "src/csl_dat.c",line 232,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |232| 
        MOV #0, port(*AR3(short(#1))) ; |232| 
	.dwpsn	file "src/csl_dat.c",line 233,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |233| 
        MOV #0, port(*AR3(short(#2))) ; |233| 
	.dwpsn	file "src/csl_dat.c",line 234,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |234| 
        MOV #0, port(*AR3(short(#3))) ; |234| 
	.dwpsn	file "src/csl_dat.c",line 240,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |240| 
        MOV #0, port(*AR3(short(#4))) ; |240| 
	.dwpsn	file "src/csl_dat.c",line 241,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |241| 
        MOV #0, port(*AR3(short(#5))) ; |241| 
	.dwpsn	file "src/csl_dat.c",line 243,column 18,is_stmt
        B $C$L16  ; |243| 
                                        ; branch occurs ; |243| 
$C$L12:    
	.dwpsn	file "src/csl_dat.c",line 245,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #32, T0 ; |245| 
        MOV *AR3, AR3 ; |245| 
        MOV #0, port(*AR3(T0)) ; |245| 
	.dwpsn	file "src/csl_dat.c",line 246,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #33, T0 ; |246| 
        MOV *AR3, AR3 ; |246| 
        MOV #0, port(*AR3(T0)) ; |246| 
	.dwpsn	file "src/csl_dat.c",line 247,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #34, T0 ; |247| 
        MOV *AR3, AR3 ; |247| 
        MOV #0, port(*AR3(T0)) ; |247| 
	.dwpsn	file "src/csl_dat.c",line 248,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #35, T0 ; |248| 
        MOV *AR3, AR3 ; |248| 
        MOV #0, port(*AR3(T0)) ; |248| 
	.dwpsn	file "src/csl_dat.c",line 254,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #36, T0 ; |254| 
        MOV *AR3, AR3 ; |254| 
        MOV #0, port(*AR3(T0)) ; |254| 
	.dwpsn	file "src/csl_dat.c",line 255,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #37, T0 ; |255| 
        MOV *AR3, AR3 ; |255| 
        MOV #0, port(*AR3(T0)) ; |255| 
	.dwpsn	file "src/csl_dat.c",line 257,column 18,is_stmt
        B $C$L16  ; |257| 
                                        ; branch occurs ; |257| 
$C$L13:    
	.dwpsn	file "src/csl_dat.c",line 259,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #64, T0 ; |259| 
        MOV *AR3, AR3 ; |259| 
        MOV #0, port(*AR3(T0)) ; |259| 
	.dwpsn	file "src/csl_dat.c",line 260,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #65, T0 ; |260| 
        MOV *AR3, AR3 ; |260| 
        MOV #0, port(*AR3(T0)) ; |260| 
	.dwpsn	file "src/csl_dat.c",line 261,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #66, T0 ; |261| 
        MOV *AR3, AR3 ; |261| 
        MOV #0, port(*AR3(T0)) ; |261| 
	.dwpsn	file "src/csl_dat.c",line 262,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #67, T0 ; |262| 
        MOV *AR3, AR3 ; |262| 
        MOV #0, port(*AR3(T0)) ; |262| 
	.dwpsn	file "src/csl_dat.c",line 268,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #68, T0 ; |268| 
        MOV *AR3, AR3 ; |268| 
        MOV #0, port(*AR3(T0)) ; |268| 
	.dwpsn	file "src/csl_dat.c",line 269,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #69, T0 ; |269| 
        MOV *AR3, AR3 ; |269| 
        MOV #0, port(*AR3(T0)) ; |269| 
	.dwpsn	file "src/csl_dat.c",line 271,column 18,is_stmt
        B $C$L16  ; |271| 
                                        ; branch occurs ; |271| 
$C$L14:    
	.dwpsn	file "src/csl_dat.c",line 273,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #96, T0 ; |273| 
        MOV *AR3, AR3 ; |273| 
        MOV #0, port(*AR3(T0)) ; |273| 
	.dwpsn	file "src/csl_dat.c",line 274,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #97, T0 ; |274| 
        MOV *AR3, AR3 ; |274| 
        MOV #0, port(*AR3(T0)) ; |274| 
	.dwpsn	file "src/csl_dat.c",line 275,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #98, T0 ; |275| 
        MOV *AR3, AR3 ; |275| 
        MOV #0, port(*AR3(T0)) ; |275| 
	.dwpsn	file "src/csl_dat.c",line 276,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #99, T0 ; |276| 
        MOV *AR3, AR3 ; |276| 
        MOV #0, port(*AR3(T0)) ; |276| 
	.dwpsn	file "src/csl_dat.c",line 282,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #100, T0 ; |282| 
        MOV *AR3, AR3 ; |282| 
        MOV #0, port(*AR3(T0)) ; |282| 
	.dwpsn	file "src/csl_dat.c",line 283,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #101, T0 ; |283| 
        MOV *AR3, AR3 ; |283| 
        MOV #0, port(*AR3(T0)) ; |283| 
	.dwpsn	file "src/csl_dat.c",line 285,column 18,is_stmt
        B $C$L16  ; |285| 
                                        ; branch occurs ; |285| 
$C$L15:    
	.dwpsn	file "src/csl_dat.c",line 228,column 9,is_stmt
        BCC $C$L11,AR1 == #0 ; |228| 
                                        ; branchcc occurs ; |228| 
        MOV #1, AR2
        CMPU AR1 == AR2, TC1 ; |228| 
        BCC $C$L12,TC1 ; |228| 
                                        ; branchcc occurs ; |228| 
        MOV #2, AR2
        CMPU AR1 == AR2, TC1 ; |228| 
        BCC $C$L13,TC1 ; |228| 
                                        ; branchcc occurs ; |228| 
        MOV #3, AR2
        CMPU AR1 == AR2, TC1 ; |228| 
        BCC $C$L14,TC1 ; |228| 
                                        ; branchcc occurs ; |228| 
$C$L16:    
	.dwpsn	file "src/csl_dat.c",line 288,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #16, *AR3(short(#1)) ; |288| 
	.dwpsn	file "src/csl_dat.c",line 289,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3(short(#3)) ; |289| 
	.dwpsn	file "src/csl_dat.c",line 290,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3(short(#4)) ; |290| 
	.dwpsn	file "src/csl_dat.c",line 291,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3 ; |291| 
	.dwpsn	file "src/csl_dat.c",line 293,column 2,is_stmt
        MOV #0, T0
$C$L17:    
	.dwpsn	file "src/csl_dat.c",line 294,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$16	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$16, DW_AT_low_pc(0x00)
	.dwattr $C$DW$16, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$17	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$17, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_dat.asm:$C$L10:1:1714639431")
	.dwattr $C$DW$17, DW_AT_TI_begin_file("src/csl_dat.c")
	.dwattr $C$DW$17, DW_AT_TI_begin_line(0xdf)
	.dwattr $C$DW$17, DW_AT_TI_end_line(0xe2)
$C$DW$18	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$18, DW_AT_low_pc($C$DW$L$_DAT_close$5$B)
	.dwattr $C$DW$18, DW_AT_high_pc($C$DW$L$_DAT_close$5$E)
	.dwendtag $C$DW$17

	.dwattr $C$DW$12, DW_AT_TI_end_file("src/csl_dat.c")
	.dwattr $C$DW$12, DW_AT_TI_end_line(0x126)
	.dwattr $C$DW$12, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$12

	.sect	".text"
	.global	_DAT_copy

$C$DW$19	.dwtag  DW_TAG_subprogram, DW_AT_name("DAT_copy")
	.dwattr $C$DW$19, DW_AT_low_pc(_DAT_copy)
	.dwattr $C$DW$19, DW_AT_high_pc(0x00)
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_DAT_copy")
	.dwattr $C$DW$19, DW_AT_external
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$19, DW_AT_TI_begin_file("src/csl_dat.c")
	.dwattr $C$DW$19, DW_AT_TI_begin_line(0x163)
	.dwattr $C$DW$19, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$19, DW_AT_TI_max_frame_size(0x0e)
	.dwpsn	file "src/csl_dat.c",line 361,column 1,is_stmt,address _DAT_copy

	.dwfde $C$DW$CIE, _DAT_copy
$C$DW$20	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hDAT")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_hDAT")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_reg17]
$C$DW$21	.dwtag  DW_TAG_formal_parameter, DW_AT_name("srcAddr")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_srcAddr")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_reg0]
$C$DW$22	.dwtag  DW_TAG_formal_parameter, DW_AT_name("destAddr")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_destAddr")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_reg3]
$C$DW$23	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dataLength")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_dataLength")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: DAT_copy                                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,     *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 14 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (12 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_DAT_copy:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-13, SP
	.dwcfi	cfa_offset, 14
$C$DW$24	.dwtag  DW_TAG_variable, DW_AT_name("hDAT")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_hDAT")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$25	.dwtag  DW_TAG_variable, DW_AT_name("srcAddr")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_srcAddr")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$26	.dwtag  DW_TAG_variable, DW_AT_name("destAddr")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_destAddr")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$27	.dwtag  DW_TAG_variable, DW_AT_name("dataLength")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_dataLength")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$28	.dwtag  DW_TAG_variable, DW_AT_name("chanNum")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_chanNum")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$29	.dwtag  DW_TAG_variable, DW_AT_name("srcAddrLSB")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_srcAddrLSB")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$30	.dwtag  DW_TAG_variable, DW_AT_name("srcAddrMSB")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_srcAddrMSB")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_bregx 0x24 9]
$C$DW$31	.dwtag  DW_TAG_variable, DW_AT_name("destAddrLSB")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_destAddrLSB")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$32	.dwtag  DW_TAG_variable, DW_AT_name("destAddrMSB")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_destAddrMSB")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_bregx 0x24 11]
        MOV T0, *SP(#6) ; |361| 
        MOV AC1, dbl(*SP(#4)) ; |361| 
        MOV AC0, dbl(*SP(#2)) ; |361| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_dat.c",line 368,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L18,AC0 != #0 ; |368| 
                                        ; branchcc occurs ; |368| 
	.dwpsn	file "src/csl_dat.c",line 370,column 9,is_stmt
        MOV #-5, T0
        B $C$L33  ; |370| 
                                        ; branch occurs ; |370| 
$C$L18:    
	.dwpsn	file "src/csl_dat.c",line 373,column 5,is_stmt

        MOV *SP(#6), AR1 ; |373| 
||      MOV #4, AR2

        CMPU AR1 >= AR2, TC1 ; |373| 
        BCC $C$L19,TC1 ; |373| 
                                        ; branchcc occurs ; |373| 
	.dwpsn	file "src/csl_dat.c",line 375,column 9,is_stmt
        MOV #-6, T0
        B $C$L33  ; |375| 
                                        ; branch occurs ; |375| 
$C$L19:    
	.dwpsn	file "src/csl_dat.c",line 378,column 5,is_stmt
        MOV #96, AC0 ; |378| 
        MOV dbl(*SP(#2)), AC1 ; |378| 
        CMPU AC1 < AC0, TC1 ; |378| 
        BCC $C$L20,TC1 ; |378| 
                                        ; branchcc occurs ; |378| 
        MOV #32767, AC0 ; |378| 
        MOV dbl(*SP(#2)), AC1 ; |378| 
        CMPU AC1 > AC0, TC1 ; |378| 
        BCC $C$L20,TC1 ; |378| 
                                        ; branchcc occurs ; |378| 
	.dwpsn	file "src/csl_dat.c",line 381,column 9,is_stmt
        AMOV #65536, XAR3 ; |381| 
        MOV dbl(*SP(#2)), AC1 ; |381| 

        SFTL AC1, #1 ; |381| 
||      MOV XAR3, AC0

        ADD AC1, AC0 ; |381| 
        MOV AC0, dbl(*SP(#2)) ; |381| 
	.dwpsn	file "src/csl_dat.c",line 383,column 5,is_stmt
        B $C$L22  ; |383| 
                                        ; branch occurs ; |383| 
$C$L20:    
	.dwpsn	file "src/csl_dat.c",line 384,column 10,is_stmt

        MOV dbl(*SP(#2)), AC1 ; |384| 
||      MOV #0, AC0 ; |384| 

        OR #0x8000, AC0, AC0 ; |384| 
        CMPU AC1 < AC0, TC1 ; |384| 
        BCC $C$L21,TC1 ; |384| 
                                        ; branchcc occurs ; |384| 
        AMOV #163839, XAR3 ; |384| 
        MOV dbl(*SP(#2)), AC1 ; |384| 
        MOV XAR3, AC0
        CMPU AC1 > AC0, TC1 ; |384| 
        BCC $C$L21,TC1 ; |384| 
                                        ; branchcc occurs ; |384| 
	.dwpsn	file "src/csl_dat.c",line 387,column 9,is_stmt
        AMOV #524288, XAR3 ; |387| 
        MOV dbl(*SP(#2)), AC1 ; |387| 

        SFTL AC1, #1 ; |387| 
||      MOV XAR3, AC0

        ADD AC1, AC0 ; |387| 
        MOV AC0, dbl(*SP(#2)) ; |387| 
	.dwpsn	file "src/csl_dat.c",line 389,column 5,is_stmt
        B $C$L22  ; |389| 
                                        ; branch occurs ; |389| 
$C$L21:    
	.dwpsn	file "src/csl_dat.c",line 392,column 9,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |392| 
        MOV AC0, dbl(*SP(#2)) ; |392| 
$C$L22:    
	.dwpsn	file "src/csl_dat.c",line 395,column 5,is_stmt
        MOV #96, AC0 ; |395| 
        MOV dbl(*SP(#4)), AC1 ; |395| 
        CMPU AC1 < AC0, TC1 ; |395| 
        BCC $C$L23,TC1 ; |395| 
                                        ; branchcc occurs ; |395| 
        MOV #32767, AC0 ; |395| 
        MOV dbl(*SP(#4)), AC1 ; |395| 
        CMPU AC1 > AC0, TC1 ; |395| 
        BCC $C$L23,TC1 ; |395| 
                                        ; branchcc occurs ; |395| 
	.dwpsn	file "src/csl_dat.c",line 398,column 9,is_stmt
        AMOV #65536, XAR3 ; |398| 
        MOV dbl(*SP(#4)), AC1 ; |398| 

        SFTL AC1, #1 ; |398| 
||      MOV XAR3, AC0

        ADD AC1, AC0 ; |398| 
        MOV AC0, dbl(*SP(#4)) ; |398| 
	.dwpsn	file "src/csl_dat.c",line 400,column 5,is_stmt
        B $C$L25  ; |400| 
                                        ; branch occurs ; |400| 
$C$L23:    
	.dwpsn	file "src/csl_dat.c",line 401,column 10,is_stmt

        MOV dbl(*SP(#4)), AC1 ; |401| 
||      MOV #0, AC0 ; |401| 

        OR #0x8000, AC0, AC0 ; |401| 
        CMPU AC1 < AC0, TC1 ; |401| 
        BCC $C$L24,TC1 ; |401| 
                                        ; branchcc occurs ; |401| 
        AMOV #163839, XAR3 ; |401| 
        MOV dbl(*SP(#4)), AC1 ; |401| 
        MOV XAR3, AC0
        CMPU AC1 > AC0, TC1 ; |401| 
        BCC $C$L24,TC1 ; |401| 
                                        ; branchcc occurs ; |401| 
	.dwpsn	file "src/csl_dat.c",line 404,column 9,is_stmt
        AMOV #524288, XAR3 ; |404| 
        MOV dbl(*SP(#4)), AC1 ; |404| 

        SFTL AC1, #1 ; |404| 
||      MOV XAR3, AC0

        ADD AC1, AC0 ; |404| 
        MOV AC0, dbl(*SP(#4)) ; |404| 
	.dwpsn	file "src/csl_dat.c",line 406,column 5,is_stmt
        B $C$L25  ; |406| 
                                        ; branch occurs ; |406| 
$C$L24:    
	.dwpsn	file "src/csl_dat.c",line 409,column 9,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |409| 
        MOV AC0, dbl(*SP(#4)) ; |409| 
$C$L25:    
	.dwpsn	file "src/csl_dat.c",line 411,column 5,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |411| 
        AND #0xffff, AC0, AC0 ; |411| 
        MOV AC0, *SP(#8) ; |411| 
	.dwpsn	file "src/csl_dat.c",line 412,column 5,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |412| 
        MOV HI(AC0), *SP(#9) ; |412| 
	.dwpsn	file "src/csl_dat.c",line 413,column 5,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |413| 
        AND #0xffff, AC0, AC0 ; |413| 
        MOV AC0, *SP(#10) ; |413| 
	.dwpsn	file "src/csl_dat.c",line 414,column 5,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |414| 
        MOV HI(AC0), *SP(#11) ; |414| 
	.dwpsn	file "src/csl_dat.c",line 416,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR1 ; |416| 
        MOV AR1, *SP(#7) ; |416| 
	.dwpsn	file "src/csl_dat.c",line 417,column 11,is_stmt
        CMPU AR1 < AR2, TC1 ; |417| 
        BCC $C$L31,TC1 ; |417| 
                                        ; branchcc occurs ; |417| 
$C$L26:    
$C$DW$L$_DAT_copy$20$B:
	.dwpsn	file "src/csl_dat.c",line 419,column 9,is_stmt
        SUB #4, *SP(#7) ; |419| 
	.dwpsn	file "src/csl_dat.c",line 417,column 11,is_stmt
        MOV *SP(#7), AR1 ; |417| 
        CMPU AR1 >= AR2, TC1 ; |417| 
        BCC $C$L26,TC1 ; |417| 
                                        ; branchcc occurs ; |417| 
$C$DW$L$_DAT_copy$20$E:
	.dwpsn	file "src/csl_dat.c",line 422,column 5,is_stmt
        B $C$L31  ; |422| 
                                        ; branch occurs ; |422| 
$C$L27:    
	.dwpsn	file "src/csl_dat.c",line 431,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |431| 
        MOV port(*AR3(short(#5))), AR1 ; |431| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |431| 
        BCLR @#15, AR1 ; |431| 
        MOV AR1, port(*AR3(short(#5))) ; |431| 
	.dwpsn	file "src/csl_dat.c",line 436,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |436| 
        MOV port(*AR3), AR1 ; |436| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |436| 
        MOV *SP(#8), AR1 ; |436| 
        OR #0x0000, AR1, AR1 ; |436| 
        MOV AR1, port(*AR3) ; |436| 
	.dwpsn	file "src/csl_dat.c",line 438,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |438| 
        MOV port(*AR3(short(#1))), AR1 ; |438| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |438| 
        MOV *SP(#9), AR1 ; |438| 
        OR #0x0000, AR1, AR1 ; |438| 
        MOV AR1, port(*AR3(short(#1))) ; |438| 
	.dwpsn	file "src/csl_dat.c",line 440,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |440| 
        MOV port(*AR3(short(#2))), AR1 ; |440| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |440| 
        MOV *SP(#10), AR1 ; |440| 
        OR #0x0000, AR1, AR1 ; |440| 
        MOV AR1, port(*AR3(short(#2))) ; |440| 
	.dwpsn	file "src/csl_dat.c",line 442,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |442| 
        MOV port(*AR3(short(#3))), AR1 ; |442| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |442| 
        MOV *SP(#11), AR1 ; |442| 
        OR #0x0000, AR1, AR1 ; |442| 
        MOV AR1, port(*AR3(short(#3))) ; |442| 
	.dwpsn	file "src/csl_dat.c",line 461,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |461| 
        MOV port(*AR3(short(#5))), AR1 ; |461| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |461| 
        AND #0xffc7, AR1, AC0 ; |461| 
        MOV AC0, port(*AR3(short(#5))) ; |461| 
	.dwpsn	file "src/csl_dat.c",line 464,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |464| 
        MOV port(*AR3(short(#5))), AR1 ; |464| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |464| 
        AND #0xff3f, AR1, AC0 ; |464| 
        MOV AC0, port(*AR3(short(#5))) ; |464| 
	.dwpsn	file "src/csl_dat.c",line 467,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |467| 
        MOV port(*AR3(short(#5))), AR1 ; |467| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |467| 
        AND #0xfcff, AR1, AC0 ; |467| 
        MOV AC0, port(*AR3(short(#5))) ; |467| 
	.dwpsn	file "src/csl_dat.c",line 470,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |470| 
        MOV port(*AR3(short(#4))), AR1 ; |470| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |470| 
        MOV *SP(#6), AR1 ; |470| 
        OR #0x0000, AR1, AR1 ; |470| 
        MOV AR1, port(*AR3(short(#4))) ; |470| 
	.dwpsn	file "src/csl_dat.c",line 473,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |473| 
        MOV port(*AR3(short(#5))), AR1 ; |473| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |473| 
        BCLR @#15, AR1 ; |473| 
        BSET @#15, AR1 ; |473| 
        MOV AR1, port(*AR3(short(#5))) ; |473| 
	.dwpsn	file "src/csl_dat.c",line 476,column 14,is_stmt
        B $C$L32  ; |476| 
                                        ; branch occurs ; |476| 
$C$L28:    
	.dwpsn	file "src/csl_dat.c",line 485,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #37, T0 ; |485| 
        MOV *AR3, AR3 ; |485| 
        MOV port(*AR3(T0)), AR1 ; |485| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |485| 
        BCLR @#15, AR1 ; |485| 
        MOV AR1, port(*AR3(T0)) ; |485| 
	.dwpsn	file "src/csl_dat.c",line 490,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #32, T0 ; |490| 
        MOV *AR3, AR3 ; |490| 
        MOV port(*AR3(T0)), AR1 ; |490| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |490| 
        MOV *SP(#8), AR1 ; |490| 
        OR #0x0000, AR1, AR1 ; |490| 
        MOV AR1, port(*AR3(T0)) ; |490| 
	.dwpsn	file "src/csl_dat.c",line 492,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #33, T0 ; |492| 
        MOV *AR3, AR3 ; |492| 
        MOV port(*AR3(T0)), AR1 ; |492| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |492| 
        MOV *SP(#9), AR1 ; |492| 
        OR #0x0000, AR1, AR1 ; |492| 
        MOV AR1, port(*AR3(T0)) ; |492| 
	.dwpsn	file "src/csl_dat.c",line 494,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #34, T0 ; |494| 
        MOV *AR3, AR3 ; |494| 
        MOV port(*AR3(T0)), AR1 ; |494| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |494| 
        MOV *SP(#10), AR1 ; |494| 
        OR #0x0000, AR1, AR1 ; |494| 
        MOV AR1, port(*AR3(T0)) ; |494| 
	.dwpsn	file "src/csl_dat.c",line 496,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #35, T0 ; |496| 
        MOV *AR3, AR3 ; |496| 
        MOV port(*AR3(T0)), AR1 ; |496| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |496| 
        MOV *SP(#11), AR1 ; |496| 
        OR #0x0000, AR1, AR1 ; |496| 
        MOV AR1, port(*AR3(T0)) ; |496| 
	.dwpsn	file "src/csl_dat.c",line 515,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #37, T0 ; |515| 
        MOV *AR3, AR3 ; |515| 
        MOV port(*AR3(T0)), AR1 ; |515| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |515| 
        AND #0xffc7, AR1, AC0 ; |515| 
        MOV AC0, port(*AR3(T0)) ; |515| 
	.dwpsn	file "src/csl_dat.c",line 518,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |518| 
        MOV port(*AR3(T0)), AR1 ; |518| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |518| 
        AND #0xff3f, AR1, AC0 ; |518| 
        MOV AC0, port(*AR3(T0)) ; |518| 
	.dwpsn	file "src/csl_dat.c",line 521,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |521| 
        MOV port(*AR3(T0)), AR1 ; |521| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |521| 
        AND #0xfcff, AR1, AC0 ; |521| 
        MOV AC0, port(*AR3(T0)) ; |521| 
	.dwpsn	file "src/csl_dat.c",line 524,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #36, T0 ; |524| 
        MOV *AR3, AR3 ; |524| 
        MOV port(*AR3(T0)), AR1 ; |524| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |524| 
        MOV *SP(#6), AR1 ; |524| 
        OR #0x0000, AR1, AR1 ; |524| 
        MOV AR1, port(*AR3(T0)) ; |524| 
	.dwpsn	file "src/csl_dat.c",line 527,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #37, T0 ; |527| 
        MOV *AR3, AR3 ; |527| 
        MOV port(*AR3(T0)), AR1 ; |527| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |527| 
        BCLR @#15, AR1 ; |527| 
        BSET @#15, AR1 ; |527| 
        MOV AR1, port(*AR3(T0)) ; |527| 
	.dwpsn	file "src/csl_dat.c",line 530,column 14,is_stmt
        B $C$L32  ; |530| 
                                        ; branch occurs ; |530| 
$C$L29:    
	.dwpsn	file "src/csl_dat.c",line 539,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #69, T0 ; |539| 
        MOV *AR3, AR3 ; |539| 
        MOV port(*AR3(T0)), AR1 ; |539| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |539| 
        BCLR @#15, AR1 ; |539| 
        MOV AR1, port(*AR3(T0)) ; |539| 
	.dwpsn	file "src/csl_dat.c",line 544,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #64, T0 ; |544| 
        MOV *AR3, AR3 ; |544| 
        MOV port(*AR3(T0)), AR1 ; |544| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |544| 
        MOV *SP(#8), AR1 ; |544| 
        OR #0x0000, AR1, AR1 ; |544| 
        MOV AR1, port(*AR3(T0)) ; |544| 
	.dwpsn	file "src/csl_dat.c",line 546,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #65, T0 ; |546| 
        MOV *AR3, AR3 ; |546| 
        MOV port(*AR3(T0)), AR1 ; |546| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |546| 
        MOV *SP(#9), AR1 ; |546| 
        OR #0x0000, AR1, AR1 ; |546| 
        MOV AR1, port(*AR3(T0)) ; |546| 
	.dwpsn	file "src/csl_dat.c",line 548,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #66, T0 ; |548| 
        MOV *AR3, AR3 ; |548| 
        MOV port(*AR3(T0)), AR1 ; |548| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |548| 
        MOV *SP(#10), AR1 ; |548| 
        OR #0x0000, AR1, AR1 ; |548| 
        MOV AR1, port(*AR3(T0)) ; |548| 
	.dwpsn	file "src/csl_dat.c",line 550,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #67, T0 ; |550| 
        MOV *AR3, AR3 ; |550| 
        MOV port(*AR3(T0)), AR1 ; |550| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |550| 
        MOV *SP(#11), AR1 ; |550| 
        OR #0x0000, AR1, AR1 ; |550| 
        MOV AR1, port(*AR3(T0)) ; |550| 
	.dwpsn	file "src/csl_dat.c",line 569,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #69, T0 ; |569| 
        MOV *AR3, AR3 ; |569| 
        MOV port(*AR3(T0)), AR1 ; |569| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |569| 
        AND #0xffc7, AR1, AC0 ; |569| 
        MOV AC0, port(*AR3(T0)) ; |569| 
	.dwpsn	file "src/csl_dat.c",line 572,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |572| 
        MOV port(*AR3(T0)), AR1 ; |572| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |572| 
        AND #0xff3f, AR1, AC0 ; |572| 
        MOV AC0, port(*AR3(T0)) ; |572| 
	.dwpsn	file "src/csl_dat.c",line 575,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |575| 
        MOV port(*AR3(T0)), AR1 ; |575| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |575| 
        AND #0xfcff, AR1, AC0 ; |575| 
        MOV AC0, port(*AR3(T0)) ; |575| 
	.dwpsn	file "src/csl_dat.c",line 578,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #68, T0 ; |578| 
        MOV *AR3, AR3 ; |578| 
        MOV port(*AR3(T0)), AR1 ; |578| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |578| 
        MOV *SP(#6), AR1 ; |578| 
        OR #0x0000, AR1, AR1 ; |578| 
        MOV AR1, port(*AR3(T0)) ; |578| 
	.dwpsn	file "src/csl_dat.c",line 581,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #69, T0 ; |581| 
        MOV *AR3, AR3 ; |581| 
        MOV port(*AR3(T0)), AR1 ; |581| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |581| 
        BCLR @#15, AR1 ; |581| 
        BSET @#15, AR1 ; |581| 
        MOV AR1, port(*AR3(T0)) ; |581| 
	.dwpsn	file "src/csl_dat.c",line 584,column 14,is_stmt
        B $C$L32  ; |584| 
                                        ; branch occurs ; |584| 
$C$L30:    
	.dwpsn	file "src/csl_dat.c",line 592,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #101, T0 ; |592| 
        MOV *AR3, AR3 ; |592| 
        MOV port(*AR3(T0)), AR1 ; |592| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |592| 
        BCLR @#15, AR1 ; |592| 
        MOV AR1, port(*AR3(T0)) ; |592| 
	.dwpsn	file "src/csl_dat.c",line 597,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #96, T0 ; |597| 
        MOV *AR3, AR3 ; |597| 
        MOV port(*AR3(T0)), AR1 ; |597| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |597| 
        MOV *SP(#8), AR1 ; |597| 
        OR #0x0000, AR1, AR1 ; |597| 
        MOV AR1, port(*AR3(T0)) ; |597| 
	.dwpsn	file "src/csl_dat.c",line 599,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #97, T0 ; |599| 
        MOV *AR3, AR3 ; |599| 
        MOV port(*AR3(T0)), AR1 ; |599| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |599| 
        MOV *SP(#9), AR1 ; |599| 
        OR #0x0000, AR1, AR1 ; |599| 
        MOV AR1, port(*AR3(T0)) ; |599| 
	.dwpsn	file "src/csl_dat.c",line 601,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #98, T0 ; |601| 
        MOV *AR3, AR3 ; |601| 
        MOV port(*AR3(T0)), AR1 ; |601| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |601| 
        MOV *SP(#10), AR1 ; |601| 
        OR #0x0000, AR1, AR1 ; |601| 
        MOV AR1, port(*AR3(T0)) ; |601| 
	.dwpsn	file "src/csl_dat.c",line 603,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #99, T0 ; |603| 
        MOV *AR3, AR3 ; |603| 
        MOV port(*AR3(T0)), AR1 ; |603| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |603| 
        MOV *SP(#11), AR1 ; |603| 
        OR #0x0000, AR1, AR1 ; |603| 
        MOV AR1, port(*AR3(T0)) ; |603| 
	.dwpsn	file "src/csl_dat.c",line 622,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #101, T0 ; |622| 
        MOV *AR3, AR3 ; |622| 
        MOV port(*AR3(T0)), AR1 ; |622| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |622| 
        AND #0xffc7, AR1, AC0 ; |622| 
        MOV AC0, port(*AR3(T0)) ; |622| 
	.dwpsn	file "src/csl_dat.c",line 625,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |625| 
        MOV port(*AR3(T0)), AR1 ; |625| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |625| 
        AND #0xff3f, AR1, AC0 ; |625| 
        MOV AC0, port(*AR3(T0)) ; |625| 
	.dwpsn	file "src/csl_dat.c",line 628,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |628| 
        MOV port(*AR3(T0)), AR1 ; |628| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |628| 
        AND #0xfcff, AR1, AC0 ; |628| 
        MOV AC0, port(*AR3(T0)) ; |628| 
	.dwpsn	file "src/csl_dat.c",line 631,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #100, T0 ; |631| 
        MOV *AR3, AR3 ; |631| 
        MOV port(*AR3(T0)), AR1 ; |631| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |631| 
        MOV *SP(#6), AR1 ; |631| 
        OR #0x0000, AR1, AR1 ; |631| 
        MOV AR1, port(*AR3(T0)) ; |631| 
	.dwpsn	file "src/csl_dat.c",line 634,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #101, T0 ; |634| 
        MOV *AR3, AR3 ; |634| 
        MOV port(*AR3(T0)), AR1 ; |634| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |634| 
        BCLR @#15, AR1 ; |634| 
        BSET @#15, AR1 ; |634| 
        MOV AR1, port(*AR3(T0)) ; |634| 
	.dwpsn	file "src/csl_dat.c",line 637,column 14,is_stmt
        B $C$L32  ; |637| 
                                        ; branch occurs ; |637| 
$C$L31:    
	.dwpsn	file "src/csl_dat.c",line 422,column 5,is_stmt
        MOV *SP(#7), AR1 ; |422| 
        BCC $C$L27,AR1 == #0 ; |422| 
                                        ; branchcc occurs ; |422| 
        MOV #1, AR2
        CMP AR1 == AR2, TC1 ; |422| 
        BCC $C$L28,TC1 ; |422| 
                                        ; branchcc occurs ; |422| 
        MOV #2, AR2
        CMP AR1 == AR2, TC1 ; |422| 
        BCC $C$L29,TC1 ; |422| 
                                        ; branchcc occurs ; |422| 
        MOV #3, AR2
        CMP AR1 == AR2, TC1 ; |422| 
        BCC $C$L30,TC1 ; |422| 
                                        ; branchcc occurs ; |422| 
$C$L32:    
	.dwpsn	file "src/csl_dat.c",line 640,column 5,is_stmt
        MOV #0, T0
$C$L33:    
	.dwpsn	file "src/csl_dat.c",line 641,column 1,is_stmt
        AADD #13, SP
	.dwcfi	cfa_offset, 1
$C$DW$33	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$33, DW_AT_low_pc(0x00)
	.dwattr $C$DW$33, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$34	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$34, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_dat.asm:$C$L26:1:1714639431")
	.dwattr $C$DW$34, DW_AT_TI_begin_file("src/csl_dat.c")
	.dwattr $C$DW$34, DW_AT_TI_begin_line(0x1a1)
	.dwattr $C$DW$34, DW_AT_TI_end_line(0x1a4)
$C$DW$35	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$35, DW_AT_low_pc($C$DW$L$_DAT_copy$20$B)
	.dwattr $C$DW$35, DW_AT_high_pc($C$DW$L$_DAT_copy$20$E)
	.dwendtag $C$DW$34

	.dwattr $C$DW$19, DW_AT_TI_end_file("src/csl_dat.c")
	.dwattr $C$DW$19, DW_AT_TI_end_line(0x281)
	.dwattr $C$DW$19, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$19

	.sect	".text"
	.global	_DAT_fill

$C$DW$36	.dwtag  DW_TAG_subprogram, DW_AT_name("DAT_fill")
	.dwattr $C$DW$36, DW_AT_low_pc(_DAT_fill)
	.dwattr $C$DW$36, DW_AT_high_pc(0x00)
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_DAT_fill")
	.dwattr $C$DW$36, DW_AT_external
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$36, DW_AT_TI_begin_file("src/csl_dat.c")
	.dwattr $C$DW$36, DW_AT_TI_begin_line(0x2c0)
	.dwattr $C$DW$36, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$36, DW_AT_TI_max_frame_size(0x12)
	.dwpsn	file "src/csl_dat.c",line 710,column 1,is_stmt,address _DAT_fill

	.dwfde $C$DW$CIE, _DAT_fill
$C$DW$37	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hDAT")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_hDAT")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_reg17]
$C$DW$38	.dwtag  DW_TAG_formal_parameter, DW_AT_name("destAddr")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_destAddr")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_reg0]
$C$DW$39	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dataLength")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_dataLength")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_reg12]
$C$DW$40	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pdataValue")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_pdataValue")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: DAT_fill                                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,*
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 18 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (16 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_DAT_fill:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-17, SP
	.dwcfi	cfa_offset, 18
$C$DW$41	.dwtag  DW_TAG_variable, DW_AT_name("hDAT")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_hDAT")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$42	.dwtag  DW_TAG_variable, DW_AT_name("destAddr")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_destAddr")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$43	.dwtag  DW_TAG_variable, DW_AT_name("dataLength")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_dataLength")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$44	.dwtag  DW_TAG_variable, DW_AT_name("pdataValue")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_pdataValue")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$45	.dwtag  DW_TAG_variable, DW_AT_name("chanNum")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_chanNum")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$46	.dwtag  DW_TAG_variable, DW_AT_name("srcAddrLSB")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_srcAddrLSB")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_bregx 0x24 9]
$C$DW$47	.dwtag  DW_TAG_variable, DW_AT_name("srcAddrMSB")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_srcAddrMSB")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$48	.dwtag  DW_TAG_variable, DW_AT_name("destAddrLSB")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_destAddrLSB")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_bregx 0x24 11]
$C$DW$49	.dwtag  DW_TAG_variable, DW_AT_name("destAddrMSB")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_destAddrMSB")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$50	.dwtag  DW_TAG_variable, DW_AT_name("srcAddr")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_srcAddr")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_bregx 0x24 14]
        MOV XAR1, dbl(*SP(#6))
        MOV T0, *SP(#4) ; |710| 
        MOV AC0, dbl(*SP(#2)) ; |710| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_dat.c",line 718,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L34,AC0 != #0 ; |718| 
                                        ; branchcc occurs ; |718| 
	.dwpsn	file "src/csl_dat.c",line 720,column 9,is_stmt
        MOV #-5, T0
        B $C$L50  ; |720| 
                                        ; branch occurs ; |720| 
$C$L34:    
	.dwpsn	file "src/csl_dat.c",line 723,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV XAR3, AC0
        BCC $C$L35,AC0 == #0 ; |723| 
                                        ; branchcc occurs ; |723| 

        MOV *SP(#4), AR1 ; |723| 
||      MOV #4, AR2

        CMPU AR1 >= AR2, TC1 ; |723| 
        BCC $C$L36,TC1 ; |723| 
                                        ; branchcc occurs ; |723| 
$C$L35:    
	.dwpsn	file "src/csl_dat.c",line 725,column 9,is_stmt
        MOV #-6, T0
        B $C$L50  ; |725| 
                                        ; branch occurs ; |725| 
$C$L36:    
	.dwpsn	file "src/csl_dat.c",line 728,column 5,is_stmt
        MOV AC0, dbl(*SP(#14)) ; |728| 
	.dwpsn	file "src/csl_dat.c",line 729,column 5,is_stmt
        MOV #96, AC0 ; |729| 
        MOV dbl(*SP(#14)), AC1 ; |729| 
        CMPU AC1 < AC0, TC1 ; |729| 
        BCC $C$L37,TC1 ; |729| 
                                        ; branchcc occurs ; |729| 
        MOV #32767, AC0 ; |729| 
        MOV dbl(*SP(#14)), AC1 ; |729| 
        CMPU AC1 > AC0, TC1 ; |729| 
        BCC $C$L37,TC1 ; |729| 
                                        ; branchcc occurs ; |729| 
	.dwpsn	file "src/csl_dat.c",line 732,column 9,is_stmt
        AMOV #65536, XAR3 ; |732| 
        MOV dbl(*SP(#14)), AC1 ; |732| 

        SFTL AC1, #1 ; |732| 
||      MOV XAR3, AC0

        ADD AC1, AC0 ; |732| 
        MOV AC0, dbl(*SP(#14)) ; |732| 
	.dwpsn	file "src/csl_dat.c",line 734,column 5,is_stmt
        B $C$L39  ; |734| 
                                        ; branch occurs ; |734| 
$C$L37:    
	.dwpsn	file "src/csl_dat.c",line 735,column 10,is_stmt

        MOV dbl(*SP(#14)), AC1 ; |735| 
||      MOV #0, AC0 ; |735| 

        OR #0x8000, AC0, AC0 ; |735| 
        CMPU AC1 < AC0, TC1 ; |735| 
        BCC $C$L38,TC1 ; |735| 
                                        ; branchcc occurs ; |735| 
        AMOV #163839, XAR3 ; |735| 
        MOV dbl(*SP(#14)), AC1 ; |735| 
        MOV XAR3, AC0
        CMPU AC1 > AC0, TC1 ; |735| 
        BCC $C$L38,TC1 ; |735| 
                                        ; branchcc occurs ; |735| 
	.dwpsn	file "src/csl_dat.c",line 738,column 9,is_stmt
        AMOV #524288, XAR3 ; |738| 
        MOV dbl(*SP(#14)), AC1 ; |738| 

        SFTL AC1, #1 ; |738| 
||      MOV XAR3, AC0

        ADD AC1, AC0 ; |738| 
        MOV AC0, dbl(*SP(#14)) ; |738| 
	.dwpsn	file "src/csl_dat.c",line 740,column 5,is_stmt
        B $C$L39  ; |740| 
                                        ; branch occurs ; |740| 
$C$L38:    
	.dwpsn	file "src/csl_dat.c",line 743,column 9,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |743| 
        MOV AC0, dbl(*SP(#14)) ; |743| 
$C$L39:    
	.dwpsn	file "src/csl_dat.c",line 746,column 5,is_stmt
        MOV #96, AC0 ; |746| 
        MOV dbl(*SP(#2)), AC1 ; |746| 
        CMPU AC1 < AC0, TC1 ; |746| 
        BCC $C$L40,TC1 ; |746| 
                                        ; branchcc occurs ; |746| 
        MOV #32767, AC0 ; |746| 
        MOV dbl(*SP(#2)), AC1 ; |746| 
        CMPU AC1 > AC0, TC1 ; |746| 
        BCC $C$L40,TC1 ; |746| 
                                        ; branchcc occurs ; |746| 
	.dwpsn	file "src/csl_dat.c",line 749,column 9,is_stmt
        AMOV #65536, XAR3 ; |749| 
        MOV dbl(*SP(#2)), AC1 ; |749| 

        SFTL AC1, #1 ; |749| 
||      MOV XAR3, AC0

        ADD AC1, AC0 ; |749| 
        MOV AC0, dbl(*SP(#2)) ; |749| 
	.dwpsn	file "src/csl_dat.c",line 751,column 5,is_stmt
        B $C$L42  ; |751| 
                                        ; branch occurs ; |751| 
$C$L40:    
	.dwpsn	file "src/csl_dat.c",line 752,column 10,is_stmt

        MOV dbl(*SP(#2)), AC1 ; |752| 
||      MOV #0, AC0 ; |752| 

        OR #0x8000, AC0, AC0 ; |752| 
        CMPU AC1 < AC0, TC1 ; |752| 
        BCC $C$L41,TC1 ; |752| 
                                        ; branchcc occurs ; |752| 
        AMOV #163839, XAR3 ; |752| 
        MOV dbl(*SP(#2)), AC1 ; |752| 
        MOV XAR3, AC0
        CMPU AC1 > AC0, TC1 ; |752| 
        BCC $C$L41,TC1 ; |752| 
                                        ; branchcc occurs ; |752| 
	.dwpsn	file "src/csl_dat.c",line 755,column 9,is_stmt
        AMOV #524288, XAR3 ; |755| 
        MOV dbl(*SP(#2)), AC1 ; |755| 

        SFTL AC1, #1 ; |755| 
||      MOV XAR3, AC0

        ADD AC1, AC0 ; |755| 
        MOV AC0, dbl(*SP(#2)) ; |755| 
	.dwpsn	file "src/csl_dat.c",line 757,column 5,is_stmt
        B $C$L42  ; |757| 
                                        ; branch occurs ; |757| 
$C$L41:    
	.dwpsn	file "src/csl_dat.c",line 760,column 9,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |760| 
        MOV AC0, dbl(*SP(#2)) ; |760| 
$C$L42:    
	.dwpsn	file "src/csl_dat.c",line 762,column 5,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |762| 
        AND #0xffff, AC0, AC0 ; |762| 
        MOV AC0, *SP(#9) ; |762| 
	.dwpsn	file "src/csl_dat.c",line 763,column 5,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |763| 
        MOV HI(AC0), *SP(#10) ; |763| 
	.dwpsn	file "src/csl_dat.c",line 765,column 5,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |765| 
        AND #0xffff, AC0, AC0 ; |765| 
        MOV AC0, *SP(#11) ; |765| 
	.dwpsn	file "src/csl_dat.c",line 766,column 5,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |766| 
        MOV HI(AC0), *SP(#12) ; |766| 
	.dwpsn	file "src/csl_dat.c",line 768,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR1 ; |768| 
        MOV AR1, *SP(#8) ; |768| 
	.dwpsn	file "src/csl_dat.c",line 769,column 11,is_stmt
        CMPU AR1 < AR2, TC1 ; |769| 
        BCC $C$L48,TC1 ; |769| 
                                        ; branchcc occurs ; |769| 
$C$L43:    
$C$DW$L$_DAT_fill$21$B:
	.dwpsn	file "src/csl_dat.c",line 771,column 9,is_stmt
        SUB #4, *SP(#8) ; |771| 
	.dwpsn	file "src/csl_dat.c",line 769,column 11,is_stmt
        MOV *SP(#8), AR1 ; |769| 
        CMPU AR1 >= AR2, TC1 ; |769| 
        BCC $C$L43,TC1 ; |769| 
                                        ; branchcc occurs ; |769| 
$C$DW$L$_DAT_fill$21$E:
	.dwpsn	file "src/csl_dat.c",line 774,column 5,is_stmt
        B $C$L48  ; |774| 
                                        ; branch occurs ; |774| 
$C$L44:    
	.dwpsn	file "src/csl_dat.c",line 782,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |782| 
        MOV port(*AR3(short(#5))), AR1 ; |782| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |782| 
        BCLR @#15, AR1 ; |782| 
        MOV AR1, port(*AR3(short(#5))) ; |782| 
	.dwpsn	file "src/csl_dat.c",line 787,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |787| 
        MOV port(*AR3), AR1 ; |787| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |787| 
        MOV *SP(#9), AR1 ; |787| 
        OR #0x0000, AR1, AR1 ; |787| 
        MOV AR1, port(*AR3) ; |787| 
	.dwpsn	file "src/csl_dat.c",line 789,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |789| 
        MOV port(*AR3(short(#1))), AR1 ; |789| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |789| 
        MOV *SP(#10), AR1 ; |789| 
        OR #0x0000, AR1, AR1 ; |789| 
        MOV AR1, port(*AR3(short(#1))) ; |789| 
	.dwpsn	file "src/csl_dat.c",line 791,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |791| 
        MOV port(*AR3(short(#2))), AR1 ; |791| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |791| 
        MOV *SP(#11), AR1 ; |791| 
        OR #0x0000, AR1, AR1 ; |791| 
        MOV AR1, port(*AR3(short(#2))) ; |791| 
	.dwpsn	file "src/csl_dat.c",line 793,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |793| 
        MOV port(*AR3(short(#3))), AR1 ; |793| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |793| 
        MOV *SP(#12), AR1 ; |793| 
        OR #0x0000, AR1, AR1 ; |793| 
        MOV AR1, port(*AR3(short(#3))) ; |793| 
	.dwpsn	file "src/csl_dat.c",line 812,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |812| 
        MOV port(*AR3(short(#5))), AR1 ; |812| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |812| 
        AND #0xffc7, AR1, AC0 ; |812| 
        MOV AC0, port(*AR3(short(#5))) ; |812| 
	.dwpsn	file "src/csl_dat.c",line 815,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |815| 
        MOV port(*AR3(short(#5))), AR1 ; |815| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |815| 
        AND #0xff3f, AR1, AC0 ; |815| 
        BSET @#7, AC0 ; |815| 
        MOV AC0, port(*AR3(short(#5))) ; |815| 
	.dwpsn	file "src/csl_dat.c",line 818,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |818| 
        MOV port(*AR3(short(#5))), AR1 ; |818| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |818| 
        AND #0xfcff, AR1, AC0 ; |818| 
        MOV AC0, port(*AR3(short(#5))) ; |818| 
	.dwpsn	file "src/csl_dat.c",line 821,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |821| 
        MOV port(*AR3(short(#4))), AR1 ; |821| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |821| 
        MOV *SP(#4), AR1 ; |821| 
        OR #0x0000, AR1, AR1 ; |821| 
        MOV AR1, port(*AR3(short(#4))) ; |821| 
	.dwpsn	file "src/csl_dat.c",line 824,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |824| 
        MOV port(*AR3(short(#5))), AR1 ; |824| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |824| 
        BCLR @#15, AR1 ; |824| 
        BSET @#15, AR1 ; |824| 
        MOV AR1, port(*AR3(short(#5))) ; |824| 
	.dwpsn	file "src/csl_dat.c",line 827,column 14,is_stmt
        B $C$L49  ; |827| 
                                        ; branch occurs ; |827| 
$C$L45:    
	.dwpsn	file "src/csl_dat.c",line 835,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #37, T0 ; |835| 
        MOV *AR3, AR3 ; |835| 
        MOV port(*AR3(T0)), AR1 ; |835| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |835| 
        BCLR @#15, AR1 ; |835| 
        MOV AR1, port(*AR3(T0)) ; |835| 
	.dwpsn	file "src/csl_dat.c",line 840,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #32, T0 ; |840| 
        MOV *AR3, AR3 ; |840| 
        MOV port(*AR3(T0)), AR1 ; |840| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |840| 
        MOV *SP(#9), AR1 ; |840| 
        OR #0x0000, AR1, AR1 ; |840| 
        MOV AR1, port(*AR3(T0)) ; |840| 
	.dwpsn	file "src/csl_dat.c",line 842,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #33, T0 ; |842| 
        MOV *AR3, AR3 ; |842| 
        MOV port(*AR3(T0)), AR1 ; |842| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |842| 
        MOV *SP(#10), AR1 ; |842| 
        OR #0x0000, AR1, AR1 ; |842| 
        MOV AR1, port(*AR3(T0)) ; |842| 
	.dwpsn	file "src/csl_dat.c",line 844,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #34, T0 ; |844| 
        MOV *AR3, AR3 ; |844| 
        MOV port(*AR3(T0)), AR1 ; |844| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |844| 
        MOV *SP(#11), AR1 ; |844| 
        OR #0x0000, AR1, AR1 ; |844| 
        MOV AR1, port(*AR3(T0)) ; |844| 
	.dwpsn	file "src/csl_dat.c",line 846,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #35, T0 ; |846| 
        MOV *AR3, AR3 ; |846| 
        MOV port(*AR3(T0)), AR1 ; |846| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |846| 
        MOV *SP(#12), AR1 ; |846| 
        OR #0x0000, AR1, AR1 ; |846| 
        MOV AR1, port(*AR3(T0)) ; |846| 
	.dwpsn	file "src/csl_dat.c",line 865,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #37, T0 ; |865| 
        MOV *AR3, AR3 ; |865| 
        MOV port(*AR3(T0)), AR1 ; |865| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |865| 
        AND #0xffc7, AR1, AC0 ; |865| 
        MOV AC0, port(*AR3(T0)) ; |865| 
	.dwpsn	file "src/csl_dat.c",line 868,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |868| 
        MOV port(*AR3(T0)), AR1 ; |868| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |868| 
        AND #0xff3f, AR1, AC0 ; |868| 
        BSET @#7, AC0 ; |868| 
        MOV AC0, port(*AR3(T0)) ; |868| 
	.dwpsn	file "src/csl_dat.c",line 871,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |871| 
        MOV port(*AR3(T0)), AR1 ; |871| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |871| 
        AND #0xfcff, AR1, AC0 ; |871| 
        MOV AC0, port(*AR3(T0)) ; |871| 
	.dwpsn	file "src/csl_dat.c",line 874,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #36, T0 ; |874| 
        MOV *AR3, AR3 ; |874| 
        MOV port(*AR3(T0)), AR1 ; |874| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |874| 
        MOV *SP(#4), AR1 ; |874| 
        OR #0x0000, AR1, AR1 ; |874| 
        MOV AR1, port(*AR3(T0)) ; |874| 
	.dwpsn	file "src/csl_dat.c",line 877,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #37, T0 ; |877| 
        MOV *AR3, AR3 ; |877| 
        MOV port(*AR3(T0)), AR1 ; |877| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |877| 
        BCLR @#15, AR1 ; |877| 
        BSET @#15, AR1 ; |877| 
        MOV AR1, port(*AR3(T0)) ; |877| 
	.dwpsn	file "src/csl_dat.c",line 880,column 14,is_stmt
        B $C$L49  ; |880| 
                                        ; branch occurs ; |880| 
$C$L46:    
	.dwpsn	file "src/csl_dat.c",line 888,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #69, T0 ; |888| 
        MOV *AR3, AR3 ; |888| 
        MOV port(*AR3(T0)), AR1 ; |888| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |888| 
        BCLR @#15, AR1 ; |888| 
        MOV AR1, port(*AR3(T0)) ; |888| 
	.dwpsn	file "src/csl_dat.c",line 892,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #64, T0 ; |892| 
        MOV *AR3, AR3 ; |892| 
        MOV port(*AR3(T0)), AR1 ; |892| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |892| 
        MOV *SP(#9), AR1 ; |892| 
        OR #0x0000, AR1, AR1 ; |892| 
        MOV AR1, port(*AR3(T0)) ; |892| 
	.dwpsn	file "src/csl_dat.c",line 894,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #65, T0 ; |894| 
        MOV *AR3, AR3 ; |894| 
        MOV port(*AR3(T0)), AR1 ; |894| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |894| 
        MOV *SP(#10), AR1 ; |894| 
        OR #0x0000, AR1, AR1 ; |894| 
        MOV AR1, port(*AR3(T0)) ; |894| 
	.dwpsn	file "src/csl_dat.c",line 896,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #66, T0 ; |896| 
        MOV *AR3, AR3 ; |896| 
        MOV port(*AR3(T0)), AR1 ; |896| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |896| 
        MOV *SP(#11), AR1 ; |896| 
        OR #0x0000, AR1, AR1 ; |896| 
        MOV AR1, port(*AR3(T0)) ; |896| 
	.dwpsn	file "src/csl_dat.c",line 898,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #67, T0 ; |898| 
        MOV *AR3, AR3 ; |898| 
        MOV port(*AR3(T0)), AR1 ; |898| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |898| 
        MOV *SP(#12), AR1 ; |898| 
        OR #0x0000, AR1, AR1 ; |898| 
        MOV AR1, port(*AR3(T0)) ; |898| 
	.dwpsn	file "src/csl_dat.c",line 917,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #69, T0 ; |917| 
        MOV *AR3, AR3 ; |917| 
        MOV port(*AR3(T0)), AR1 ; |917| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |917| 
        AND #0xffc7, AR1, AC0 ; |917| 
        MOV AC0, port(*AR3(T0)) ; |917| 
	.dwpsn	file "src/csl_dat.c",line 920,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |920| 
        MOV port(*AR3(T0)), AR1 ; |920| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |920| 
        AND #0xff3f, AR1, AC0 ; |920| 
        BSET @#7, AC0 ; |920| 
        MOV AC0, port(*AR3(T0)) ; |920| 
	.dwpsn	file "src/csl_dat.c",line 923,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |923| 
        MOV port(*AR3(T0)), AR1 ; |923| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |923| 
        AND #0xfcff, AR1, AC0 ; |923| 
        MOV AC0, port(*AR3(T0)) ; |923| 
	.dwpsn	file "src/csl_dat.c",line 926,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #68, T0 ; |926| 
        MOV *AR3, AR3 ; |926| 
        MOV port(*AR3(T0)), AR1 ; |926| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |926| 
        MOV *SP(#4), AR1 ; |926| 
        OR #0x0000, AR1, AR1 ; |926| 
        MOV AR1, port(*AR3(T0)) ; |926| 
	.dwpsn	file "src/csl_dat.c",line 929,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #69, T0 ; |929| 
        MOV *AR3, AR3 ; |929| 
        MOV port(*AR3(T0)), AR1 ; |929| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |929| 
        BCLR @#15, AR1 ; |929| 
        BSET @#15, AR1 ; |929| 
        MOV AR1, port(*AR3(T0)) ; |929| 
	.dwpsn	file "src/csl_dat.c",line 932,column 14,is_stmt
        B $C$L49  ; |932| 
                                        ; branch occurs ; |932| 
$C$L47:    
	.dwpsn	file "src/csl_dat.c",line 940,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #101, T0 ; |940| 
        MOV *AR3, AR3 ; |940| 
        MOV port(*AR3(T0)), AR1 ; |940| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |940| 
        BCLR @#15, AR1 ; |940| 
        MOV AR1, port(*AR3(T0)) ; |940| 
	.dwpsn	file "src/csl_dat.c",line 944,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #96, T0 ; |944| 
        MOV *AR3, AR3 ; |944| 
        MOV port(*AR3(T0)), AR1 ; |944| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |944| 
        MOV *SP(#9), AR1 ; |944| 
        OR #0x0000, AR1, AR1 ; |944| 
        MOV AR1, port(*AR3(T0)) ; |944| 
	.dwpsn	file "src/csl_dat.c",line 946,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #97, T0 ; |946| 
        MOV *AR3, AR3 ; |946| 
        MOV port(*AR3(T0)), AR1 ; |946| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |946| 
        MOV *SP(#10), AR1 ; |946| 
        OR #0x0000, AR1, AR1 ; |946| 
        MOV AR1, port(*AR3(T0)) ; |946| 
	.dwpsn	file "src/csl_dat.c",line 948,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #98, T0 ; |948| 
        MOV *AR3, AR3 ; |948| 
        MOV port(*AR3(T0)), AR1 ; |948| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |948| 
        MOV *SP(#11), AR1 ; |948| 
        OR #0x0000, AR1, AR1 ; |948| 
        MOV AR1, port(*AR3(T0)) ; |948| 
	.dwpsn	file "src/csl_dat.c",line 950,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #99, T0 ; |950| 
        MOV *AR3, AR3 ; |950| 
        MOV port(*AR3(T0)), AR1 ; |950| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |950| 
        MOV *SP(#12), AR1 ; |950| 
        OR #0x0000, AR1, AR1 ; |950| 
        MOV AR1, port(*AR3(T0)) ; |950| 
	.dwpsn	file "src/csl_dat.c",line 969,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #101, T0 ; |969| 
        MOV *AR3, AR3 ; |969| 
        MOV port(*AR3(T0)), AR1 ; |969| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |969| 
        AND #0xffc7, AR1, AC0 ; |969| 
        MOV AC0, port(*AR3(T0)) ; |969| 
	.dwpsn	file "src/csl_dat.c",line 972,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |972| 
        MOV port(*AR3(T0)), AR1 ; |972| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |972| 
        AND #0xff3f, AR1, AC0 ; |972| 
        BSET @#7, AC0 ; |972| 
        MOV AC0, port(*AR3(T0)) ; |972| 
	.dwpsn	file "src/csl_dat.c",line 975,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |975| 
        MOV port(*AR3(T0)), AR1 ; |975| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |975| 
        AND #0xfcff, AR1, AC0 ; |975| 
        MOV AC0, port(*AR3(T0)) ; |975| 
	.dwpsn	file "src/csl_dat.c",line 978,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #100, T0 ; |978| 
        MOV *AR3, AR3 ; |978| 
        MOV port(*AR3(T0)), AR1 ; |978| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |978| 
        MOV *SP(#4), AR1 ; |978| 
        OR #0x0000, AR1, AR1 ; |978| 
        MOV AR1, port(*AR3(T0)) ; |978| 
	.dwpsn	file "src/csl_dat.c",line 981,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #101, T0 ; |981| 
        MOV *AR3, AR3 ; |981| 
        MOV port(*AR3(T0)), AR1 ; |981| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |981| 
        BCLR @#15, AR1 ; |981| 
        BSET @#15, AR1 ; |981| 
        MOV AR1, port(*AR3(T0)) ; |981| 
	.dwpsn	file "src/csl_dat.c",line 984,column 14,is_stmt
        B $C$L49  ; |984| 
                                        ; branch occurs ; |984| 
$C$L48:    
	.dwpsn	file "src/csl_dat.c",line 774,column 5,is_stmt
        MOV *SP(#8), AR1 ; |774| 
        BCC $C$L44,AR1 == #0 ; |774| 
                                        ; branchcc occurs ; |774| 
        MOV #1, AR2
        CMP AR1 == AR2, TC1 ; |774| 
        BCC $C$L45,TC1 ; |774| 
                                        ; branchcc occurs ; |774| 
        MOV #2, AR2
        CMP AR1 == AR2, TC1 ; |774| 
        BCC $C$L46,TC1 ; |774| 
                                        ; branchcc occurs ; |774| 
        MOV #3, AR2
        CMP AR1 == AR2, TC1 ; |774| 
        BCC $C$L47,TC1 ; |774| 
                                        ; branchcc occurs ; |774| 
$C$L49:    
	.dwpsn	file "src/csl_dat.c",line 987,column 5,is_stmt
        MOV #0, T0
$C$L50:    
	.dwpsn	file "src/csl_dat.c",line 988,column 1,is_stmt
        AADD #17, SP
	.dwcfi	cfa_offset, 1
$C$DW$51	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$51, DW_AT_low_pc(0x00)
	.dwattr $C$DW$51, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$52	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$52, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_dat.asm:$C$L43:1:1714639431")
	.dwattr $C$DW$52, DW_AT_TI_begin_file("src/csl_dat.c")
	.dwattr $C$DW$52, DW_AT_TI_begin_line(0x301)
	.dwattr $C$DW$52, DW_AT_TI_end_line(0x304)
$C$DW$53	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$53, DW_AT_low_pc($C$DW$L$_DAT_fill$21$B)
	.dwattr $C$DW$53, DW_AT_high_pc($C$DW$L$_DAT_fill$21$E)
	.dwendtag $C$DW$52

	.dwattr $C$DW$36, DW_AT_TI_end_file("src/csl_dat.c")
	.dwattr $C$DW$36, DW_AT_TI_end_line(0x3dc)
	.dwattr $C$DW$36, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$36

	.sect	".text"
	.global	_DAT_wait

$C$DW$54	.dwtag  DW_TAG_subprogram, DW_AT_name("DAT_wait")
	.dwattr $C$DW$54, DW_AT_low_pc(_DAT_wait)
	.dwattr $C$DW$54, DW_AT_high_pc(0x00)
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_DAT_wait")
	.dwattr $C$DW$54, DW_AT_external
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$54, DW_AT_TI_begin_file("src/csl_dat.c")
	.dwattr $C$DW$54, DW_AT_TI_begin_line(0x414)
	.dwattr $C$DW$54, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$54, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_dat.c",line 1047,column 1,is_stmt,address _DAT_wait

	.dwfde $C$DW$CIE, _DAT_wait
$C$DW$55	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hDAT")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_hDAT")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$55, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: DAT_wait                                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,CARRY,TC1,   *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_DAT_wait:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$56	.dwtag  DW_TAG_variable, DW_AT_name("hDAT")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_hDAT")
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$56, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$57	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$58	.dwtag  DW_TAG_variable, DW_AT_name("chanNum")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_chanNum")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$59	.dwtag  DW_TAG_variable, DW_AT_name("timeOut")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_timeOut")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_dat.c",line 1052,column 5,is_stmt
        MOV #1, *SP(#2) ; |1052| 
	.dwpsn	file "src/csl_dat.c",line 1053,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L51,AC0 != #0 ; |1053| 
                                        ; branchcc occurs ; |1053| 
	.dwpsn	file "src/csl_dat.c",line 1055,column 3,is_stmt
        MOV #-5, T0
        B $C$L63  ; |1055| 
                                        ; branch occurs ; |1055| 
$C$L51:    
	.dwpsn	file "src/csl_dat.c",line 1057,column 5,is_stmt
        MOV *AR3(short(#1)), AR1 ; |1057| 
        MOV AR1, *SP(#3) ; |1057| 
	.dwpsn	file "src/csl_dat.c",line 1059,column 11,is_stmt
        MOV #4, AR2
        CMPU AR1 < AR2, TC1 ; |1059| 
        BCC $C$L61,TC1 ; |1059| 
                                        ; branchcc occurs ; |1059| 
$C$L52:    
$C$DW$L$_DAT_wait$4$B:
	.dwpsn	file "src/csl_dat.c",line 1061,column 9,is_stmt
        SUB #4, *SP(#3) ; |1061| 
	.dwpsn	file "src/csl_dat.c",line 1059,column 11,is_stmt
        MOV *SP(#3), AR1 ; |1059| 
        CMPU AR1 >= AR2, TC1 ; |1059| 
        BCC $C$L52,TC1 ; |1059| 
                                        ; branchcc occurs ; |1059| 
$C$DW$L$_DAT_wait$4$E:
	.dwpsn	file "src/csl_dat.c",line 1064,column 5,is_stmt
        B $C$L61  ; |1064| 
                                        ; branch occurs ; |1064| 
$C$L53:    
	.dwpsn	file "src/csl_dat.c",line 1100,column 9,is_stmt
        MOV #4095, *SP(#4) ; |1100| 
	.dwpsn	file "src/csl_dat.c",line 1101,column 16,is_stmt
        MOV *SP(#2), AR1 ; |1101| 
        BCC $C$L62,AR1 == #0 ; |1101| 
                                        ; branchcc occurs ; |1101| 
        MOV *SP(#4), AR1 ; |1101| 
        SUB #1, AR1, AR2 ; |1101| 
        MOV AR2, *SP(#4) ; |1101| 
        BCC $C$L62,AR1 == #0 ; |1101| 
                                        ; branchcc occurs ; |1101| 
$C$L54:    
$C$DW$L$_DAT_wait$9$B:
	.dwpsn	file "src/csl_dat.c",line 1103,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1103| 
        MOV port(*AR3(short(#5))), AR1 ; |1103| 
        AND #0x8000, AR1, AC0 ; |1103| 
        SFTS AC0, #-15, AC0 ; |1103| 
        MOV AC0, *SP(#2) ; |1103| 
	.dwpsn	file "src/csl_dat.c",line 1101,column 16,is_stmt
        MOV AC0, AR1
        BCC $C$L62,AR1 == #0 ; |1101| 
                                        ; branchcc occurs ; |1101| 
$C$DW$L$_DAT_wait$9$E:
$C$DW$L$_DAT_wait$10$B:
        MOV *SP(#4), AR1 ; |1101| 
        SUB #1, AR1, AR2 ; |1101| 
        MOV AR2, *SP(#4) ; |1101| 
        BCC $C$L54,AR1 != #0 ; |1101| 
                                        ; branchcc occurs ; |1101| 
$C$DW$L$_DAT_wait$10$E:
	.dwpsn	file "src/csl_dat.c",line 1105,column 8,is_stmt
        B $C$L62  ; |1105| 
                                        ; branch occurs ; |1105| 
$C$L55:    
	.dwpsn	file "src/csl_dat.c",line 1108,column 9,is_stmt
        MOV #4095, *SP(#4) ; |1108| 
	.dwpsn	file "src/csl_dat.c",line 1109,column 16,is_stmt
        MOV *SP(#2), AR1 ; |1109| 
        BCC $C$L62,AR1 == #0 ; |1109| 
                                        ; branchcc occurs ; |1109| 
        MOV *SP(#4), AR1 ; |1109| 
        SUB #1, AR1, AR2 ; |1109| 
        MOV AR2, *SP(#4) ; |1109| 
        BCC $C$L62,AR1 == #0 ; |1109| 
                                        ; branchcc occurs ; |1109| 
$C$L56:    
$C$DW$L$_DAT_wait$14$B:
	.dwpsn	file "src/csl_dat.c",line 1111,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #37, T0 ; |1111| 
        MOV *AR3, AR3 ; |1111| 
        MOV port(*AR3(T0)), AR1 ; |1111| 
        AND #0x8000, AR1, AC0 ; |1111| 
        SFTS AC0, #-15, AC0 ; |1111| 
        MOV AC0, *SP(#2) ; |1111| 
	.dwpsn	file "src/csl_dat.c",line 1109,column 16,is_stmt
        MOV AC0, AR1
        BCC $C$L62,AR1 == #0 ; |1109| 
                                        ; branchcc occurs ; |1109| 
$C$DW$L$_DAT_wait$14$E:
$C$DW$L$_DAT_wait$15$B:
        MOV *SP(#4), AR1 ; |1109| 
        SUB #1, AR1, AR2 ; |1109| 
        MOV AR2, *SP(#4) ; |1109| 
        BCC $C$L56,AR1 != #0 ; |1109| 
                                        ; branchcc occurs ; |1109| 
$C$DW$L$_DAT_wait$15$E:
	.dwpsn	file "src/csl_dat.c",line 1113,column 8,is_stmt
        B $C$L62  ; |1113| 
                                        ; branch occurs ; |1113| 
$C$L57:    
	.dwpsn	file "src/csl_dat.c",line 1116,column 9,is_stmt
        MOV #4095, *SP(#4) ; |1116| 
	.dwpsn	file "src/csl_dat.c",line 1117,column 16,is_stmt
        MOV *SP(#2), AR1 ; |1117| 
        BCC $C$L62,AR1 == #0 ; |1117| 
                                        ; branchcc occurs ; |1117| 
        MOV *SP(#4), AR1 ; |1117| 
        SUB #1, AR1, AR2 ; |1117| 
        MOV AR2, *SP(#4) ; |1117| 
        BCC $C$L62,AR1 == #0 ; |1117| 
                                        ; branchcc occurs ; |1117| 
$C$L58:    
$C$DW$L$_DAT_wait$19$B:
	.dwpsn	file "src/csl_dat.c",line 1119,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #69, T0 ; |1119| 
        MOV *AR3, AR3 ; |1119| 
        MOV port(*AR3(T0)), AR1 ; |1119| 
        AND #0x8000, AR1, AC0 ; |1119| 
        SFTS AC0, #-15, AC0 ; |1119| 
        MOV AC0, *SP(#2) ; |1119| 
	.dwpsn	file "src/csl_dat.c",line 1117,column 16,is_stmt
        MOV AC0, AR1
        BCC $C$L62,AR1 == #0 ; |1117| 
                                        ; branchcc occurs ; |1117| 
$C$DW$L$_DAT_wait$19$E:
$C$DW$L$_DAT_wait$20$B:
        MOV *SP(#4), AR1 ; |1117| 
        SUB #1, AR1, AR2 ; |1117| 
        MOV AR2, *SP(#4) ; |1117| 
        BCC $C$L58,AR1 != #0 ; |1117| 
                                        ; branchcc occurs ; |1117| 
$C$DW$L$_DAT_wait$20$E:
	.dwpsn	file "src/csl_dat.c",line 1121,column 8,is_stmt
        B $C$L62  ; |1121| 
                                        ; branch occurs ; |1121| 
$C$L59:    
	.dwpsn	file "src/csl_dat.c",line 1124,column 9,is_stmt
        MOV #4095, *SP(#4) ; |1124| 
	.dwpsn	file "src/csl_dat.c",line 1125,column 16,is_stmt
        MOV *SP(#2), AR1 ; |1125| 
        BCC $C$L62,AR1 == #0 ; |1125| 
                                        ; branchcc occurs ; |1125| 
        MOV *SP(#4), AR1 ; |1125| 
        SUB #1, AR1, AR2 ; |1125| 
        MOV AR2, *SP(#4) ; |1125| 
        BCC $C$L62,AR1 == #0 ; |1125| 
                                        ; branchcc occurs ; |1125| 
$C$L60:    
$C$DW$L$_DAT_wait$24$B:
	.dwpsn	file "src/csl_dat.c",line 1127,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #101, T0 ; |1127| 
        MOV *AR3, AR3 ; |1127| 
        MOV port(*AR3(T0)), AR1 ; |1127| 
        AND #0x8000, AR1, AC0 ; |1127| 
        SFTS AC0, #-15, AC0 ; |1127| 
        MOV AC0, *SP(#2) ; |1127| 
	.dwpsn	file "src/csl_dat.c",line 1125,column 16,is_stmt
        MOV AC0, AR1
        BCC $C$L62,AR1 == #0 ; |1125| 
                                        ; branchcc occurs ; |1125| 
$C$DW$L$_DAT_wait$24$E:
$C$DW$L$_DAT_wait$25$B:
        MOV *SP(#4), AR1 ; |1125| 
        SUB #1, AR1, AR2 ; |1125| 
        MOV AR2, *SP(#4) ; |1125| 
        BCC $C$L60,AR1 != #0 ; |1125| 
                                        ; branchcc occurs ; |1125| 
$C$DW$L$_DAT_wait$25$E:
	.dwpsn	file "src/csl_dat.c",line 1129,column 8,is_stmt
        B $C$L62  ; |1129| 
                                        ; branch occurs ; |1129| 
$C$L61:    
	.dwpsn	file "src/csl_dat.c",line 1064,column 5,is_stmt
        MOV *SP(#3), AR1 ; |1064| 
        BCC $C$L53,AR1 == #0 ; |1064| 
                                        ; branchcc occurs ; |1064| 
        MOV #1, AR2
        CMP AR1 == AR2, TC1 ; |1064| 
        BCC $C$L55,TC1 ; |1064| 
                                        ; branchcc occurs ; |1064| 
        MOV #2, AR2
        CMP AR1 == AR2, TC1 ; |1064| 
        BCC $C$L57,TC1 ; |1064| 
                                        ; branchcc occurs ; |1064| 
        MOV #3, AR2
        CMP AR1 == AR2, TC1 ; |1064| 
        BCC $C$L59,TC1 ; |1064| 
                                        ; branchcc occurs ; |1064| 
$C$L62:    
	.dwpsn	file "src/csl_dat.c",line 1132,column 5,is_stmt
        MOV #0, T0
$C$L63:    
	.dwpsn	file "src/csl_dat.c",line 1133,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$60	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$60, DW_AT_low_pc(0x00)
	.dwattr $C$DW$60, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$61	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$61, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_dat.asm:$C$L60:1:1714639431")
	.dwattr $C$DW$61, DW_AT_TI_begin_file("src/csl_dat.c")
	.dwattr $C$DW$61, DW_AT_TI_begin_line(0x465)
	.dwattr $C$DW$61, DW_AT_TI_end_line(0x468)
$C$DW$62	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$62, DW_AT_low_pc($C$DW$L$_DAT_wait$24$B)
	.dwattr $C$DW$62, DW_AT_high_pc($C$DW$L$_DAT_wait$24$E)
$C$DW$63	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$63, DW_AT_low_pc($C$DW$L$_DAT_wait$25$B)
	.dwattr $C$DW$63, DW_AT_high_pc($C$DW$L$_DAT_wait$25$E)
	.dwendtag $C$DW$61


$C$DW$64	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$64, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_dat.asm:$C$L58:1:1714639431")
	.dwattr $C$DW$64, DW_AT_TI_begin_file("src/csl_dat.c")
	.dwattr $C$DW$64, DW_AT_TI_begin_line(0x45d)
	.dwattr $C$DW$64, DW_AT_TI_end_line(0x460)
$C$DW$65	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$65, DW_AT_low_pc($C$DW$L$_DAT_wait$19$B)
	.dwattr $C$DW$65, DW_AT_high_pc($C$DW$L$_DAT_wait$19$E)
$C$DW$66	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$66, DW_AT_low_pc($C$DW$L$_DAT_wait$20$B)
	.dwattr $C$DW$66, DW_AT_high_pc($C$DW$L$_DAT_wait$20$E)
	.dwendtag $C$DW$64


$C$DW$67	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$67, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_dat.asm:$C$L56:1:1714639431")
	.dwattr $C$DW$67, DW_AT_TI_begin_file("src/csl_dat.c")
	.dwattr $C$DW$67, DW_AT_TI_begin_line(0x455)
	.dwattr $C$DW$67, DW_AT_TI_end_line(0x458)
$C$DW$68	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$68, DW_AT_low_pc($C$DW$L$_DAT_wait$14$B)
	.dwattr $C$DW$68, DW_AT_high_pc($C$DW$L$_DAT_wait$14$E)
$C$DW$69	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$69, DW_AT_low_pc($C$DW$L$_DAT_wait$15$B)
	.dwattr $C$DW$69, DW_AT_high_pc($C$DW$L$_DAT_wait$15$E)
	.dwendtag $C$DW$67


$C$DW$70	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$70, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_dat.asm:$C$L54:1:1714639431")
	.dwattr $C$DW$70, DW_AT_TI_begin_file("src/csl_dat.c")
	.dwattr $C$DW$70, DW_AT_TI_begin_line(0x44d)
	.dwattr $C$DW$70, DW_AT_TI_end_line(0x450)
$C$DW$71	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$71, DW_AT_low_pc($C$DW$L$_DAT_wait$9$B)
	.dwattr $C$DW$71, DW_AT_high_pc($C$DW$L$_DAT_wait$9$E)
$C$DW$72	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$72, DW_AT_low_pc($C$DW$L$_DAT_wait$10$B)
	.dwattr $C$DW$72, DW_AT_high_pc($C$DW$L$_DAT_wait$10$E)
	.dwendtag $C$DW$70


$C$DW$73	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$73, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_dat.asm:$C$L52:1:1714639431")
	.dwattr $C$DW$73, DW_AT_TI_begin_file("src/csl_dat.c")
	.dwattr $C$DW$73, DW_AT_TI_begin_line(0x423)
	.dwattr $C$DW$73, DW_AT_TI_end_line(0x426)
$C$DW$74	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$74, DW_AT_low_pc($C$DW$L$_DAT_wait$4$B)
	.dwattr $C$DW$74, DW_AT_high_pc($C$DW$L$_DAT_wait$4$E)
	.dwendtag $C$DW$73

	.dwattr $C$DW$54, DW_AT_TI_end_file("src/csl_dat.c")
	.dwattr $C$DW$54, DW_AT_TI_end_line(0x46d)
	.dwattr $C$DW$54, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$54


;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$27	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x01)
$C$DW$75	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DAT_CHAN0"), DW_AT_const_value(0x00)
$C$DW$76	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DAT_CHAN1"), DW_AT_const_value(0x01)
$C$DW$77	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DAT_CHAN2"), DW_AT_const_value(0x02)
$C$DW$78	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DAT_CHAN3"), DW_AT_const_value(0x03)
$C$DW$79	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DAT_CHAN4"), DW_AT_const_value(0x04)
$C$DW$80	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DAT_CHAN5"), DW_AT_const_value(0x05)
$C$DW$81	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DAT_CHAN6"), DW_AT_const_value(0x06)
$C$DW$82	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DAT_CHAN7"), DW_AT_const_value(0x07)
$C$DW$83	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DAT_CHAN8"), DW_AT_const_value(0x08)
$C$DW$84	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DAT_CHAN9"), DW_AT_const_value(0x09)
$C$DW$85	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DAT_CHAN10"), DW_AT_const_value(0x0a)
$C$DW$86	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DAT_CHAN11"), DW_AT_const_value(0x0b)
$C$DW$87	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DAT_CHAN12"), DW_AT_const_value(0x0c)
$C$DW$88	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DAT_CHAN13"), DW_AT_const_value(0x0d)
$C$DW$89	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DAT_CHAN14"), DW_AT_const_value(0x0e)
$C$DW$90	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DAT_CHAN15"), DW_AT_const_value(0x0f)
$C$DW$91	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DAT_CHAN_INV"), DW_AT_const_value(0x10)
	.dwendtag $C$DW$T$27

$C$DW$T$28	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_DATChanNum")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C)

$C$DW$T$29	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x01)
$C$DW$92	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DAT_ENGINE0"), DW_AT_const_value(0x00)
$C$DW$93	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DAT_ENGINE1"), DW_AT_const_value(0x01)
$C$DW$94	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DAT_ENGINE2"), DW_AT_const_value(0x02)
$C$DW$95	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DAT_ENGINE3"), DW_AT_const_value(0x03)
$C$DW$96	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DAT_ENGINE_INV"), DW_AT_const_value(0x04)
	.dwendtag $C$DW$T$29

$C$DW$T$30	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_DATEngineId")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$30, DW_AT_language(DW_LANG_C)

$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x66)
$C$DW$97	.dwtag  DW_TAG_member
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$97, DW_AT_name("DMACH0SSAL")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("_DMACH0SSAL")
	.dwattr $C$DW$97, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$97, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$98	.dwtag  DW_TAG_member
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$98, DW_AT_name("DMACH0SSAU")
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("_DMACH0SSAU")
	.dwattr $C$DW$98, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$98, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$99	.dwtag  DW_TAG_member
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$99, DW_AT_name("DMACH0DSAL")
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_DMACH0DSAL")
	.dwattr $C$DW$99, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$99, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$100	.dwtag  DW_TAG_member
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$100, DW_AT_name("DMACH0DSAU")
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("_DMACH0DSAU")
	.dwattr $C$DW$100, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$100, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$101	.dwtag  DW_TAG_member
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$101, DW_AT_name("DMACH0TCR1")
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_DMACH0TCR1")
	.dwattr $C$DW$101, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$101, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$102	.dwtag  DW_TAG_member
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$102, DW_AT_name("DMACH0TCR2")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("_DMACH0TCR2")
	.dwattr $C$DW$102, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$102, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$103	.dwtag  DW_TAG_member
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$103, DW_AT_name("RSVD0")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$103, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$103, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$104	.dwtag  DW_TAG_member
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$104, DW_AT_name("DMACH1SSAL")
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_DMACH1SSAL")
	.dwattr $C$DW$104, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$104, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$105	.dwtag  DW_TAG_member
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$105, DW_AT_name("DMACH1SSAU")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_DMACH1SSAU")
	.dwattr $C$DW$105, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr $C$DW$105, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$106	.dwtag  DW_TAG_member
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$106, DW_AT_name("DMACH1DSAL")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_DMACH1DSAL")
	.dwattr $C$DW$106, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$106, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$107	.dwtag  DW_TAG_member
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$107, DW_AT_name("DMACH1DSAU")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_DMACH1DSAU")
	.dwattr $C$DW$107, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr $C$DW$107, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$108	.dwtag  DW_TAG_member
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$108, DW_AT_name("DMACH1TCR1")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_DMACH1TCR1")
	.dwattr $C$DW$108, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$108, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$109	.dwtag  DW_TAG_member
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$109, DW_AT_name("DMACH1TCR2")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_DMACH1TCR2")
	.dwattr $C$DW$109, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr $C$DW$109, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$110	.dwtag  DW_TAG_member
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$110, DW_AT_name("RSVD1")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_RSVD1")
	.dwattr $C$DW$110, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$110, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$111	.dwtag  DW_TAG_member
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$111, DW_AT_name("DMACH2SSAL")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_DMACH2SSAL")
	.dwattr $C$DW$111, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$111, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$112	.dwtag  DW_TAG_member
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$112, DW_AT_name("DMACH2SSAU")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_DMACH2SSAU")
	.dwattr $C$DW$112, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr $C$DW$112, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$113	.dwtag  DW_TAG_member
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$113, DW_AT_name("DMACH2DSAL")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_DMACH2DSAL")
	.dwattr $C$DW$113, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr $C$DW$113, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$114	.dwtag  DW_TAG_member
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$114, DW_AT_name("DMACH2DSAU")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_DMACH2DSAU")
	.dwattr $C$DW$114, DW_AT_data_member_location[DW_OP_plus_uconst 0x43]
	.dwattr $C$DW$114, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$115	.dwtag  DW_TAG_member
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$115, DW_AT_name("DMACH2TCR1")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_DMACH2TCR1")
	.dwattr $C$DW$115, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$115, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$116	.dwtag  DW_TAG_member
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$116, DW_AT_name("DMACH2TCR2")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("_DMACH2TCR2")
	.dwattr $C$DW$116, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr $C$DW$116, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$117	.dwtag  DW_TAG_member
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$117, DW_AT_name("RSVD2")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_RSVD2")
	.dwattr $C$DW$117, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr $C$DW$117, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$118	.dwtag  DW_TAG_member
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$118, DW_AT_name("DMACH3SSAL")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_DMACH3SSAL")
	.dwattr $C$DW$118, DW_AT_data_member_location[DW_OP_plus_uconst 0x60]
	.dwattr $C$DW$118, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$119	.dwtag  DW_TAG_member
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$119, DW_AT_name("DMACH3SSAU")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_DMACH3SSAU")
	.dwattr $C$DW$119, DW_AT_data_member_location[DW_OP_plus_uconst 0x61]
	.dwattr $C$DW$119, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$120	.dwtag  DW_TAG_member
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$120, DW_AT_name("DMACH3DSAL")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_DMACH3DSAL")
	.dwattr $C$DW$120, DW_AT_data_member_location[DW_OP_plus_uconst 0x62]
	.dwattr $C$DW$120, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$121	.dwtag  DW_TAG_member
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$121, DW_AT_name("DMACH3DSAU")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("_DMACH3DSAU")
	.dwattr $C$DW$121, DW_AT_data_member_location[DW_OP_plus_uconst 0x63]
	.dwattr $C$DW$121, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$122	.dwtag  DW_TAG_member
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$122, DW_AT_name("DMACH3TCR1")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_DMACH3TCR1")
	.dwattr $C$DW$122, DW_AT_data_member_location[DW_OP_plus_uconst 0x64]
	.dwattr $C$DW$122, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$123	.dwtag  DW_TAG_member
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$123, DW_AT_name("DMACH3TCR2")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_DMACH3TCR2")
	.dwattr $C$DW$123, DW_AT_data_member_location[DW_OP_plus_uconst 0x65]
	.dwattr $C$DW$123, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$22

$C$DW$T$23	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_DmaRegs")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
$C$DW$124	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$23)
$C$DW$125	.dwtag  DW_TAG_TI_ioport_type
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$124)
$C$DW$T$24	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$125)
$C$DW$T$25	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$25, DW_AT_address_class(0x10)
$C$DW$T$26	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_DmaRegsOvly")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)

$C$DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x05)
$C$DW$126	.dwtag  DW_TAG_member
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$126, DW_AT_name("dmaRegs")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_dmaRegs")
	.dwattr $C$DW$126, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$126, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$127	.dwtag  DW_TAG_member
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$127, DW_AT_name("chanNum")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_chanNum")
	.dwattr $C$DW$127, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$127, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$128	.dwtag  DW_TAG_member
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$128, DW_AT_name("datInstNum")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_datInstNum")
	.dwattr $C$DW$128, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$128, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$129	.dwtag  DW_TAG_member
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$129, DW_AT_name("chanPrio")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_chanPrio")
	.dwattr $C$DW$129, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$129, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$130	.dwtag  DW_TAG_member
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$130, DW_AT_name("isChanFree")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("_isChanFree")
	.dwattr $C$DW$130, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$130, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$32

$C$DW$T$33	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_DAT_ChannelObj")
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$33, DW_AT_language(DW_LANG_C)
$C$DW$T$34	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$34, DW_AT_address_class(0x17)
$C$DW$T$35	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_DAT_Handle")
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$35, DW_AT_language(DW_LANG_C)
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
$C$DW$T$36	.dwtag  DW_TAG_typedef, DW_AT_name("Int16")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)
$C$DW$T$37	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_Status")
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
$C$DW$T$38	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$38, DW_AT_address_class(0x17)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)
$C$DW$T$31	.dwtag  DW_TAG_typedef, DW_AT_name("Bool")
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$31, DW_AT_language(DW_LANG_C)
$C$DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
$C$DW$131	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$19)
$C$DW$T$20	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$131)

$C$DW$T$21	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x1a)
$C$DW$132	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$132, DW_AT_upper_bound(0x19)
	.dwendtag $C$DW$T$21

$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x01)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)
$C$DW$T$41	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32")
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$41, DW_AT_language(DW_LANG_C)
$C$DW$T$43	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$43, DW_AT_address_class(0x17)
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

$C$DW$133	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$133, DW_AT_location[DW_OP_reg0]
$C$DW$134	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$134, DW_AT_location[DW_OP_reg1]
$C$DW$135	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$135, DW_AT_location[DW_OP_reg2]
$C$DW$136	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$136, DW_AT_location[DW_OP_reg3]
$C$DW$137	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$137, DW_AT_location[DW_OP_reg4]
$C$DW$138	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$138, DW_AT_location[DW_OP_reg5]
$C$DW$139	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$139, DW_AT_location[DW_OP_reg6]
$C$DW$140	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$140, DW_AT_location[DW_OP_reg7]
$C$DW$141	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$141, DW_AT_location[DW_OP_reg8]
$C$DW$142	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$142, DW_AT_location[DW_OP_reg9]
$C$DW$143	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$143, DW_AT_location[DW_OP_reg10]
$C$DW$144	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$144, DW_AT_location[DW_OP_reg11]
$C$DW$145	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$145, DW_AT_location[DW_OP_reg12]
$C$DW$146	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$146, DW_AT_location[DW_OP_reg13]
$C$DW$147	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$147, DW_AT_location[DW_OP_reg14]
$C$DW$148	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$148, DW_AT_location[DW_OP_reg15]
$C$DW$149	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$149, DW_AT_location[DW_OP_reg16]
$C$DW$150	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$150, DW_AT_location[DW_OP_reg17]
$C$DW$151	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$151, DW_AT_location[DW_OP_reg18]
$C$DW$152	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$152, DW_AT_location[DW_OP_reg19]
$C$DW$153	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$153, DW_AT_location[DW_OP_reg20]
$C$DW$154	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$154, DW_AT_location[DW_OP_reg21]
$C$DW$155	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$155, DW_AT_location[DW_OP_reg22]
$C$DW$156	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$156, DW_AT_location[DW_OP_reg23]
$C$DW$157	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$157, DW_AT_location[DW_OP_reg24]
$C$DW$158	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$158, DW_AT_location[DW_OP_reg25]
$C$DW$159	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$159, DW_AT_location[DW_OP_reg26]
$C$DW$160	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$160, DW_AT_location[DW_OP_reg27]
$C$DW$161	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$161, DW_AT_location[DW_OP_reg28]
$C$DW$162	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$162, DW_AT_location[DW_OP_reg29]
$C$DW$163	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$163, DW_AT_location[DW_OP_reg30]
$C$DW$164	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$164, DW_AT_location[DW_OP_reg31]
$C$DW$165	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$165, DW_AT_location[DW_OP_regx 0x20]
$C$DW$166	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$166, DW_AT_location[DW_OP_regx 0x21]
$C$DW$167	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$167, DW_AT_location[DW_OP_regx 0x22]
$C$DW$168	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$168, DW_AT_location[DW_OP_regx 0x23]
$C$DW$169	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$169, DW_AT_location[DW_OP_regx 0x24]
$C$DW$170	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$170, DW_AT_location[DW_OP_regx 0x25]
$C$DW$171	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$171, DW_AT_location[DW_OP_regx 0x26]
$C$DW$172	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$172, DW_AT_location[DW_OP_regx 0x27]
$C$DW$173	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$173, DW_AT_location[DW_OP_regx 0x28]
$C$DW$174	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$174, DW_AT_location[DW_OP_regx 0x29]
$C$DW$175	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$175, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$176	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$176, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$177	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$177, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$178	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$178, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$179	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$179, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$180	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$180, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$181	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$181, DW_AT_location[DW_OP_regx 0x30]
$C$DW$182	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$182, DW_AT_location[DW_OP_regx 0x31]
$C$DW$183	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$183, DW_AT_location[DW_OP_regx 0x32]
$C$DW$184	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$184, DW_AT_location[DW_OP_regx 0x33]
$C$DW$185	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$185, DW_AT_location[DW_OP_regx 0x34]
$C$DW$186	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$186, DW_AT_location[DW_OP_regx 0x35]
$C$DW$187	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$187, DW_AT_location[DW_OP_regx 0x36]
$C$DW$188	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$188, DW_AT_location[DW_OP_regx 0x37]
$C$DW$189	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$189, DW_AT_location[DW_OP_regx 0x38]
$C$DW$190	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$190, DW_AT_location[DW_OP_regx 0x39]
$C$DW$191	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$191, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$192	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$192, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$193	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$193, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$194	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$194, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$195	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$195, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$196	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$196, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$197	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$197, DW_AT_location[DW_OP_regx 0x40]
$C$DW$198	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$198, DW_AT_location[DW_OP_regx 0x41]
$C$DW$199	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$199, DW_AT_location[DW_OP_regx 0x42]
$C$DW$200	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$200, DW_AT_location[DW_OP_regx 0x43]
$C$DW$201	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$201, DW_AT_location[DW_OP_regx 0x44]
$C$DW$202	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$202, DW_AT_location[DW_OP_regx 0x45]
$C$DW$203	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$203, DW_AT_location[DW_OP_regx 0x46]
$C$DW$204	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$204, DW_AT_location[DW_OP_regx 0x47]
$C$DW$205	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$205, DW_AT_location[DW_OP_regx 0x48]
$C$DW$206	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$206, DW_AT_location[DW_OP_regx 0x49]
$C$DW$207	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$207, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$208	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$208, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$209	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$209, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$210	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$210, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$211	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$211, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$212	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$212, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$213	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$213, DW_AT_location[DW_OP_regx 0x50]
$C$DW$214	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$214, DW_AT_location[DW_OP_regx 0x51]
$C$DW$215	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$215, DW_AT_location[DW_OP_regx 0x52]
$C$DW$216	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$216, DW_AT_location[DW_OP_regx 0x53]
$C$DW$217	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$217, DW_AT_location[DW_OP_regx 0x54]
$C$DW$218	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$218, DW_AT_location[DW_OP_regx 0x55]
$C$DW$219	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$219, DW_AT_location[DW_OP_regx 0x56]
$C$DW$220	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$220, DW_AT_location[DW_OP_regx 0x57]
$C$DW$221	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$221, DW_AT_location[DW_OP_regx 0x58]
$C$DW$222	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$222, DW_AT_location[DW_OP_regx 0x59]
$C$DW$223	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$223, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$224	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$224, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

