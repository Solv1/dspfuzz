;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                        Unix v4.4.1 *
;* Date/Time created: Thu May  2 04:44:10 2024                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("src/csl_sar.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen Unix v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/santiago/dspfuzz/on_board/library")
;	/home/santiago/ti/55x_Tools/bin/acp55 -@/tmp/17535RQwxeS 
	.sect	".text"
	.global	_SAR_init

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("SAR_init")
	.dwattr $C$DW$1, DW_AT_low_pc(_SAR_init)
	.dwattr $C$DW$1, DW_AT_high_pc(0x00)
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_SAR_init")
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$1, DW_AT_TI_begin_file("src/csl_sar.c")
	.dwattr $C$DW$1, DW_AT_TI_begin_line(0x55)
	.dwattr $C$DW$1, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$1, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "src/csl_sar.c",line 88,column 1,is_stmt,address _SAR_init

	.dwfde $C$DW$CIE, _SAR_init
;*******************************************************************************
;* FUNCTION NAME: SAR_init                                                     *
;*                                                                             *
;*   Function Uses Regs : T0,AR1,AR2,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL  *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 2 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (1 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SAR_init:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-1, SP
	.dwcfi	cfa_offset, 2
$C$DW$2	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$2, DW_AT_location[DW_OP_bregx 0x24 0]
	.dwpsn	file "src/csl_sar.c",line 91,column 5,is_stmt
        AND #0x7fff, *port(#7170) ; |91| 
	.dwpsn	file "src/csl_sar.c",line 94,column 5,is_stmt
        AND #0xffbf, *port(#7171) ; |94| 
	.dwpsn	file "src/csl_sar.c",line 97,column 5,is_stmt
        AND #0xfffd, *port(#7171) ; |97| 
	.dwpsn	file "src/csl_sar.c",line 111,column 5,is_stmt
        MOV #28672, *port(#28690) ; |111| 
	.dwpsn	file "src/csl_sar.c",line 114,column 5,is_stmt
        MOV #0, *port(#28694) ; |114| 
	.dwpsn	file "src/csl_sar.c",line 117,column 5,is_stmt
        MOV #0, *port(#28696) ; |117| 
	.dwpsn	file "src/csl_sar.c",line 118,column 5,is_stmt
        MOV #0, *port(#28698) ; |118| 
	.dwpsn	file "src/csl_sar.c",line 121,column 9,is_stmt
        MOV #0, *SP(#0) ; |121| 
        NOP
        NOP
	.dwpsn	file "src/csl_sar.c",line 121,column 13,is_stmt
        MOV #100, AR2 ; |121| 
        MOV *SP(#0), AR1 ; |121| 
        CMPU AR1 >= AR2, TC1 ; |121| 
        BCC $C$L2,TC1 ; |121| 
                                        ; branchcc occurs ; |121| 
$C$L1:    
$C$DW$L$_SAR_init$2$B:
	.dwpsn	file "src/csl_sar.c",line 121,column 19,is_stmt
        ADD #1, *SP(#0) ; |121| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_sar.c",line 121,column 13,is_stmt
        MOV *SP(#0), AR1 ; |121| 
        CMPU AR1 < AR2, TC1 ; |121| 
        BCC $C$L1,TC1 ; |121| 
                                        ; branchcc occurs ; |121| 
$C$DW$L$_SAR_init$2$E:
$C$L2:    
	.dwpsn	file "src/csl_sar.c",line 127,column 5,is_stmt
        MOV *port(#7204), AR1 ; |127| 
        AND #0xfff0, AR1, AR1 ; |127| 
        OR #0x0009, AR1, AR1 ; |127| 
        MOV AR1, *port(#7204) ; |127| 
	.dwpsn	file "src/csl_sar.c",line 129,column 5,is_stmt
        MOV #0, T0
	.dwpsn	file "src/csl_sar.c",line 130,column 1,is_stmt
        AADD #1, SP
	.dwcfi	cfa_offset, 1
$C$DW$3	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$3, DW_AT_low_pc(0x00)
	.dwattr $C$DW$3, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$4	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$4, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_sar.asm:$C$L1:1:1714639450")
	.dwattr $C$DW$4, DW_AT_TI_begin_file("src/csl_sar.c")
	.dwattr $C$DW$4, DW_AT_TI_begin_line(0x79)
	.dwattr $C$DW$4, DW_AT_TI_end_line(0x79)
$C$DW$5	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$5, DW_AT_low_pc($C$DW$L$_SAR_init$2$B)
	.dwattr $C$DW$5, DW_AT_high_pc($C$DW$L$_SAR_init$2$E)
	.dwendtag $C$DW$4

	.dwattr $C$DW$1, DW_AT_TI_end_file("src/csl_sar.c")
	.dwattr $C$DW$1, DW_AT_TI_end_line(0x82)
	.dwattr $C$DW$1, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$1

	.sect	".text"
	.global	_SAR_deInit

$C$DW$6	.dwtag  DW_TAG_subprogram, DW_AT_name("SAR_deInit")
	.dwattr $C$DW$6, DW_AT_low_pc(_SAR_deInit)
	.dwattr $C$DW$6, DW_AT_high_pc(0x00)
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_SAR_deInit")
	.dwattr $C$DW$6, DW_AT_external
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$6, DW_AT_TI_begin_file("src/csl_sar.c")
	.dwattr $C$DW$6, DW_AT_TI_begin_line(0x9e)
	.dwattr $C$DW$6, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$6, DW_AT_TI_max_frame_size(0x01)
	.dwpsn	file "src/csl_sar.c",line 159,column 1,is_stmt,address _SAR_deInit

	.dwfde $C$DW$CIE, _SAR_deInit
;*******************************************************************************
;* FUNCTION NAME: SAR_deInit                                                   *
;*                                                                             *
;*   Function Uses Regs : T0,AR1,SP,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 1 word                                               *
;*                        (1 return address/alignment)                         *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SAR_deInit:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
	.dwpsn	file "src/csl_sar.c",line 161,column 5,is_stmt
        MOV *port(#7171), AR1 ; |161| 
        BCLR @#6, AR1 ; |161| 
        BSET @#6, AR1 ; |161| 
        MOV AR1, *port(#7171) ; |161| 
	.dwpsn	file "src/csl_sar.c",line 164,column 5,is_stmt
        MOV *port(#7171), AR1 ; |164| 
        BCLR @#1, AR1 ; |164| 
        BSET @#1, AR1 ; |164| 
        MOV AR1, *port(#7171) ; |164| 
	.dwpsn	file "src/csl_sar.c",line 166,column 4,is_stmt
        MOV #0, T0
	.dwpsn	file "src/csl_sar.c",line 167,column 1,is_stmt
$C$DW$7	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$7, DW_AT_low_pc(0x00)
	.dwattr $C$DW$7, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$6, DW_AT_TI_end_file("src/csl_sar.c")
	.dwattr $C$DW$6, DW_AT_TI_end_line(0xa7)
	.dwattr $C$DW$6, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$6

	.sect	".text"
	.global	_SAR_chanInit

$C$DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("SAR_chanInit")
	.dwattr $C$DW$8, DW_AT_low_pc(_SAR_chanInit)
	.dwattr $C$DW$8, DW_AT_high_pc(0x00)
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_SAR_chanInit")
	.dwattr $C$DW$8, DW_AT_external
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$8, DW_AT_TI_begin_file("src/csl_sar.c")
	.dwattr $C$DW$8, DW_AT_TI_begin_line(0xd3)
	.dwattr $C$DW$8, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$8, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_sar.c",line 214,column 1,is_stmt,address _SAR_chanInit

	.dwfde $C$DW$CIE, _SAR_chanInit
$C$DW$9	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hSar")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_hSar")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: SAR_chanInit                                                 *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR3,XAR3,SP,TC1,M40,SATA,*
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SAR_chanInit:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$10	.dwtag  DW_TAG_variable, DW_AT_name("hSar")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_hSar")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_sar.c",line 215,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |215| 

        CMPU AC1 != AC0, TC1 ; |215| 
        BCC $C$L3,TC1 ; |215| 
                                        ; branchcc occurs ; |215| 
	.dwpsn	file "src/csl_sar.c",line 217,column 9,is_stmt
        MOV #-5, T0
        B $C$L4   ; |217| 
                                        ; branch occurs ; |217| 
$C$L3:    
	.dwpsn	file "src/csl_sar.c",line 220,column 5,is_stmt
        MOV #0, T0
$C$L4:    
	.dwpsn	file "src/csl_sar.c",line 221,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$11	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$11, DW_AT_low_pc(0x00)
	.dwattr $C$DW$11, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$8, DW_AT_TI_end_file("src/csl_sar.c")
	.dwattr $C$DW$8, DW_AT_TI_end_line(0xdd)
	.dwattr $C$DW$8, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$8

	.sect	".text"
	.global	_SAR_chanOpen

$C$DW$12	.dwtag  DW_TAG_subprogram, DW_AT_name("SAR_chanOpen")
	.dwattr $C$DW$12, DW_AT_low_pc(_SAR_chanOpen)
	.dwattr $C$DW$12, DW_AT_high_pc(0x00)
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_SAR_chanOpen")
	.dwattr $C$DW$12, DW_AT_external
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$12, DW_AT_TI_begin_file("src/csl_sar.c")
	.dwattr $C$DW$12, DW_AT_TI_begin_line(0x10c)
	.dwattr $C$DW$12, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$12, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_sar.c",line 272,column 1,is_stmt,address _SAR_chanOpen

	.dwfde $C$DW$CIE, _SAR_chanOpen
$C$DW$13	.dwtag  DW_TAG_formal_parameter, DW_AT_name("SarObj")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_SarObj")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_reg17]
$C$DW$14	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanSel")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_chanSel")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: SAR_chanOpen                                                 *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,TC1, *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SAR_chanOpen:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$15	.dwtag  DW_TAG_variable, DW_AT_name("SarObj")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_SarObj")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$16	.dwtag  DW_TAG_variable, DW_AT_name("chanSel")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_chanSel")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV T0, *SP(#2) ; |272| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_sar.c",line 273,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |273| 

        CMPU AC1 != AC0, TC1 ; |273| 
        BCC $C$L5,TC1 ; |273| 
                                        ; branchcc occurs ; |273| 
	.dwpsn	file "src/csl_sar.c",line 275,column 9,is_stmt
        MOV #-5, T0
        B $C$L8   ; |275| 
                                        ; branch occurs ; |275| 
$C$L5:    
	.dwpsn	file "src/csl_sar.c",line 278,column 5,is_stmt
        MOV *SP(#2), AR1 ; |278| 
        BCC $C$L6,AR1 < #0 ; |278| 
                                        ; branchcc occurs ; |278| 
        MOV #5, AR2
        CMP AR1 <= AR2, TC1 ; |278| 
        BCC $C$L7,TC1 ; |278| 
                                        ; branchcc occurs ; |278| 
$C$L6:    
	.dwpsn	file "src/csl_sar.c",line 280,column 9,is_stmt
        MOV #-6, T0
        B $C$L8   ; |280| 
                                        ; branch occurs ; |280| 
$C$L7:    
	.dwpsn	file "src/csl_sar.c",line 290,column 5,is_stmt
        MOV *port(#28690), AR1 ; |290| 
        MOV *SP(#2) << #12, AC0 ; |290| 
        AND #0x8fff, AR1, AR1 ; |290| 
        AND #0x7000, AC0, AR2 ; |290| 
        OR AR1, AR2 ; |290| 
        MOV AR2, *port(#28690) ; |290| 
	.dwpsn	file "src/csl_sar.c",line 292,column 5,is_stmt
        MOV *port(#28690), AR1 ; |292| 
        BCLR @#11, AR1 ; |292| 
        BSET @#11, AR1 ; |292| 
        MOV AR1, *port(#28690) ; |292| 
	.dwpsn	file "src/csl_sar.c",line 294,column 5,is_stmt
        MOV *SP(#2), AR1 ; |294| 
        MOV AR1, *AR3(short(#1)) ; |294| 
	.dwpsn	file "src/csl_sar.c",line 295,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #28672, *AR3 ; |295| 
	.dwpsn	file "src/csl_sar.c",line 296,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #1, *AR3(short(#2)) ; |296| 
	.dwpsn	file "src/csl_sar.c",line 298,column 5,is_stmt
        MOV #0, T0
$C$L8:    
	.dwpsn	file "src/csl_sar.c",line 300,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$17	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$17, DW_AT_low_pc(0x00)
	.dwattr $C$DW$17, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$12, DW_AT_TI_end_file("src/csl_sar.c")
	.dwattr $C$DW$12, DW_AT_TI_end_line(0x12c)
	.dwattr $C$DW$12, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$12

	.sect	".text"
	.global	_SAR_chanClose

$C$DW$18	.dwtag  DW_TAG_subprogram, DW_AT_name("SAR_chanClose")
	.dwattr $C$DW$18, DW_AT_low_pc(_SAR_chanClose)
	.dwattr $C$DW$18, DW_AT_high_pc(0x00)
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_SAR_chanClose")
	.dwattr $C$DW$18, DW_AT_external
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$18, DW_AT_TI_begin_file("src/csl_sar.c")
	.dwattr $C$DW$18, DW_AT_TI_begin_line(0x157)
	.dwattr $C$DW$18, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$18, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_sar.c",line 346,column 1,is_stmt,address _SAR_chanClose

	.dwfde $C$DW$CIE, _SAR_chanClose
$C$DW$19	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hSar")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_hSar")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: SAR_chanClose                                                *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,TC1, *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SAR_chanClose:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$20	.dwtag  DW_TAG_variable, DW_AT_name("hSar")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_hSar")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_sar.c",line 348,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #6, *AR3(short(#1)) ; |348| 
	.dwpsn	file "src/csl_sar.c",line 349,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |349| 

        CMPU AC1 != AC0, TC1 ; |349| 
        BCC $C$L9,TC1 ; |349| 
                                        ; branchcc occurs ; |349| 
	.dwpsn	file "src/csl_sar.c",line 351,column 9,is_stmt
        MOV #-5, T0
        B $C$L11  ; |351| 
                                        ; branch occurs ; |351| 
$C$L9:    
	.dwpsn	file "src/csl_sar.c",line 372,column 5,is_stmt
        MOV #18, T0 ; |372| 
        MOV *AR3, AR3 ; |372| 
        MOV port(*AR3(T0)), AR1 ; |372| 
        AND #0x8000, AR1, AC0 ; |372| 

        BFXTR #0x8000, AC0, AR1 ; |372| 
||      MOV #1, AR2

        CMPU AR2 != AR1, TC1 ; |372| 
        BCC $C$L10,TC1 ; |372| 
                                        ; branchcc occurs ; |372| 
	.dwpsn	file "src/csl_sar.c",line 377,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |377| 
        MOV port(*AR3(T0)), AR1 ; |377| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |377| 
        BCLR @#15, AR1 ; |377| 
        MOV AR1, port(*AR3(T0)) ; |377| 
$C$L10:    
	.dwpsn	file "src/csl_sar.c",line 382,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #24, T0 ; |382| 
        MOV *AR3, AR3 ; |382| 
        MOV port(*AR3(T0)), AR1 ; |382| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |382| 
        BCLR @#12, AR1 ; |382| 
        MOV AR1, port(*AR3(T0)) ; |382| 
	.dwpsn	file "src/csl_sar.c",line 385,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |385| 
        MOV port(*AR3(T0)), AR1 ; |385| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |385| 
        BCLR @#13, AR1 ; |385| 
        MOV AR1, port(*AR3(T0)) ; |385| 
	.dwpsn	file "src/csl_sar.c",line 389,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3 ; |389| 
	.dwpsn	file "src/csl_sar.c",line 390,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3(short(#2)) ; |390| 
	.dwpsn	file "src/csl_sar.c",line 391,column 5,is_stmt
        MOV #0, T0
$C$L11:    
	.dwpsn	file "src/csl_sar.c",line 393,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$21	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$21, DW_AT_low_pc(0x00)
	.dwattr $C$DW$21, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$18, DW_AT_TI_end_file("src/csl_sar.c")
	.dwattr $C$DW$18, DW_AT_TI_end_line(0x189)
	.dwattr $C$DW$18, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$18

	.sect	".text"
	.global	_SAR_chanConfig

$C$DW$22	.dwtag  DW_TAG_subprogram, DW_AT_name("SAR_chanConfig")
	.dwattr $C$DW$22, DW_AT_low_pc(_SAR_chanConfig)
	.dwattr $C$DW$22, DW_AT_high_pc(0x00)
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_SAR_chanConfig")
	.dwattr $C$DW$22, DW_AT_external
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$22, DW_AT_TI_begin_file("src/csl_sar.c")
	.dwattr $C$DW$22, DW_AT_TI_begin_line(0x1b8)
	.dwattr $C$DW$22, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$22, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_sar.c",line 444,column 1,is_stmt,address _SAR_chanConfig

	.dwfde $C$DW$CIE, _SAR_chanConfig
$C$DW$23	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hSar")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_hSar")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_reg17]
$C$DW$24	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pConfigParam")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_pConfigParam")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: SAR_chanConfig                                               *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,TC1,*
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SAR_chanConfig:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$25	.dwtag  DW_TAG_variable, DW_AT_name("hSar")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_hSar")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$26	.dwtag  DW_TAG_variable, DW_AT_name("pConfigParam")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_pConfigParam")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_sar.c",line 445,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |445| 

        CMPU AC1 != AC0, TC1 ; |445| 
        BCC $C$L12,TC1 ; |445| 
                                        ; branchcc occurs ; |445| 
	.dwpsn	file "src/csl_sar.c",line 447,column 3,is_stmt
        MOV #-5, T0
        B $C$L14  ; |447| 
                                        ; branch occurs ; |447| 
$C$L12:    
	.dwpsn	file "src/csl_sar.c",line 450,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        CMPU AC1 != AC0, TC1 ; |450| 
        BCC $C$L13,TC1 ; |450| 
                                        ; branchcc occurs ; |450| 
	.dwpsn	file "src/csl_sar.c",line 452,column 9,is_stmt
        MOV #-6, T0
        B $C$L14  ; |452| 
                                        ; branch occurs ; |452| 
$C$L13:    
	.dwpsn	file "src/csl_sar.c",line 469,column 5,is_stmt
        MOV *AR3, AR1 ; |469| 
        MOV dbl(*SP(#0)), XAR3
        MOV #18, T0 ; |469| 
        MOV *AR3, AR3 ; |469| 
        BCLR @#15, AR1 ; |469| 
        MOV AR1, port(*AR3(T0)) ; |469| 
	.dwpsn	file "src/csl_sar.c",line 473,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#1)), AR1 ; |473| 
        MOV dbl(*SP(#0)), XAR3
        MOV #22, T0 ; |473| 
        MOV *AR3, AR3 ; |473| 
        MOV AR1, port(*AR3(T0)) ; |473| 
	.dwpsn	file "src/csl_sar.c",line 476,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#2)), AR1 ; |476| 
        MOV dbl(*SP(#0)), XAR3
        MOV #24, T0 ; |476| 
        MOV *AR3, AR3 ; |476| 
        OR #0x3000, AR1, AR1 ; |476| 
        MOV AR1, port(*AR3(T0)) ; |476| 
	.dwpsn	file "src/csl_sar.c",line 481,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#3)), AR1 ; |481| 
        MOV dbl(*SP(#0)), XAR3
        MOV #26, T0 ; |481| 
        MOV *AR3, AR3 ; |481| 
        MOV AR1, port(*AR3(T0)) ; |481| 
	.dwpsn	file "src/csl_sar.c",line 483,column 5,is_stmt
        MOV #0, T0
$C$L14:    
	.dwpsn	file "src/csl_sar.c",line 484,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$27	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$27, DW_AT_low_pc(0x00)
	.dwattr $C$DW$27, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$22, DW_AT_TI_end_file("src/csl_sar.c")
	.dwattr $C$DW$22, DW_AT_TI_end_line(0x1e4)
	.dwattr $C$DW$22, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$22

	.sect	".text"
	.global	_SAR_getConfig

$C$DW$28	.dwtag  DW_TAG_subprogram, DW_AT_name("SAR_getConfig")
	.dwattr $C$DW$28, DW_AT_low_pc(_SAR_getConfig)
	.dwattr $C$DW$28, DW_AT_high_pc(0x00)
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_SAR_getConfig")
	.dwattr $C$DW$28, DW_AT_external
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$28, DW_AT_TI_begin_file("src/csl_sar.c")
	.dwattr $C$DW$28, DW_AT_TI_begin_line(0x20f)
	.dwattr $C$DW$28, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$28, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_sar.c",line 531,column 1,is_stmt,address _SAR_getConfig

	.dwfde $C$DW$CIE, _SAR_getConfig
$C$DW$29	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hSar")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_hSar")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_reg17]
$C$DW$30	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pConfigParam")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_pConfigParam")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: SAR_getConfig                                                *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,TC1,*
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SAR_getConfig:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$31	.dwtag  DW_TAG_variable, DW_AT_name("hSar")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_hSar")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$32	.dwtag  DW_TAG_variable, DW_AT_name("pConfigParam")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_pConfigParam")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_sar.c",line 532,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |532| 

        CMPU AC1 != AC0, TC1 ; |532| 
        BCC $C$L15,TC1 ; |532| 
                                        ; branchcc occurs ; |532| 
	.dwpsn	file "src/csl_sar.c",line 534,column 9,is_stmt
        MOV #-5, T0
        B $C$L17  ; |534| 
                                        ; branch occurs ; |534| 
$C$L15:    
	.dwpsn	file "src/csl_sar.c",line 537,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        CMPU AC1 != AC0, TC1 ; |537| 
        BCC $C$L16,TC1 ; |537| 
                                        ; branchcc occurs ; |537| 
	.dwpsn	file "src/csl_sar.c",line 539,column 9,is_stmt
        MOV #-6, T0
        B $C$L17  ; |539| 
                                        ; branch occurs ; |539| 
$C$L16:    
	.dwpsn	file "src/csl_sar.c",line 542,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #18, T0 ; |542| 
        MOV *AR3, AR3 ; |542| 
        MOV port(*AR3(T0)), AR1 ; |542| 
        MOV dbl(*SP(#2)), XAR3
        MOV AR1, *AR3 ; |542| 
	.dwpsn	file "src/csl_sar.c",line 545,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #22, T0 ; |545| 
        MOV *AR3, AR3 ; |545| 
        MOV port(*AR3(T0)), AR1 ; |545| 
        MOV dbl(*SP(#2)), XAR3
        MOV AR1, *AR3(short(#1)) ; |545| 
	.dwpsn	file "src/csl_sar.c",line 548,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #24, T0 ; |548| 
        MOV *AR3, AR3 ; |548| 
        MOV port(*AR3(T0)), AR1 ; |548| 
        MOV dbl(*SP(#2)), XAR3
        MOV AR1, *AR3(short(#2)) ; |548| 
	.dwpsn	file "src/csl_sar.c",line 551,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #26, T0 ; |551| 
        MOV *AR3, AR3 ; |551| 
        MOV port(*AR3(T0)), AR1 ; |551| 
        MOV dbl(*SP(#2)), XAR3
        MOV AR1, *AR3(short(#3)) ; |551| 
	.dwpsn	file "src/csl_sar.c",line 553,column 5,is_stmt
        MOV #0, T0
$C$L17:    
	.dwpsn	file "src/csl_sar.c",line 554,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$33	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$33, DW_AT_low_pc(0x00)
	.dwattr $C$DW$33, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$28, DW_AT_TI_end_file("src/csl_sar.c")
	.dwattr $C$DW$28, DW_AT_TI_end_line(0x22a)
	.dwattr $C$DW$28, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$28

	.sect	".text"
	.global	_SAR_chanSetup

$C$DW$34	.dwtag  DW_TAG_subprogram, DW_AT_name("SAR_chanSetup")
	.dwattr $C$DW$34, DW_AT_low_pc(_SAR_chanSetup)
	.dwattr $C$DW$34, DW_AT_high_pc(0x00)
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_SAR_chanSetup")
	.dwattr $C$DW$34, DW_AT_external
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$34, DW_AT_TI_begin_file("src/csl_sar.c")
	.dwattr $C$DW$34, DW_AT_TI_begin_line(0x255)
	.dwattr $C$DW$34, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$34, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_sar.c",line 601,column 1,is_stmt,address _SAR_chanSetup

	.dwfde $C$DW$CIE, _SAR_chanSetup
$C$DW$35	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hSar")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_hSar")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_reg17]
$C$DW$36	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pSarParam")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_pSarParam")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: SAR_chanSetup                                                *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,*
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SAR_chanSetup:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$37	.dwtag  DW_TAG_variable, DW_AT_name("hSar")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_hSar")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$38	.dwtag  DW_TAG_variable, DW_AT_name("pSarParam")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_pSarParam")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$39	.dwtag  DW_TAG_variable, DW_AT_name("clkDivider")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_clkDivider")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_sar.c",line 602,column 12,is_stmt
        MOV #0, *SP(#4) ; |602| 
	.dwpsn	file "src/csl_sar.c",line 603,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |603| 

        CMPU AC1 != AC0, TC1 ; |603| 
        BCC $C$L18,TC1 ; |603| 
                                        ; branchcc occurs ; |603| 
	.dwpsn	file "src/csl_sar.c",line 605,column 9,is_stmt
        MOV #-5, T0
        B $C$L31  ; |605| 
                                        ; branch occurs ; |605| 
$C$L18:    
	.dwpsn	file "src/csl_sar.c",line 608,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        CMPU AC1 != AC0, TC1 ; |608| 
        BCC $C$L19,TC1 ; |608| 
                                        ; branchcc occurs ; |608| 
	.dwpsn	file "src/csl_sar.c",line 610,column 9,is_stmt
        MOV #-6, T0
        B $C$L31  ; |610| 
                                        ; branch occurs ; |610| 
$C$L19:    
	.dwpsn	file "src/csl_sar.c",line 613,column 5,is_stmt
        MOV *AR3, AR1 ; |613| 
        MOV AR1, *SP(#4) ; |613| 
	.dwpsn	file "src/csl_sar.c",line 614,column 5,is_stmt
        MOV #32767, AR2 ; |614| 
        CMPU AR1 <= AR2, TC1 ; |614| 
        BCC $C$L20,TC1 ; |614| 
                                        ; branchcc occurs ; |614| 
	.dwpsn	file "src/csl_sar.c",line 616,column 10,is_stmt
        MOV #-6, T0
        B $C$L31  ; |616| 
                                        ; branch occurs ; |616| 
$C$L20:    
	.dwpsn	file "src/csl_sar.c",line 663,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #22, T0 ; |663| 
        MOV *AR3, AR3 ; |663| 
        MOV #0, port(*AR3(T0)) ; |663| 
	.dwpsn	file "src/csl_sar.c",line 665,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |665| 
        MOV port(*AR3(T0)), AR1 ; |665| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |665| 
        AND #0x8000, AR1, AR2 ; |665| 
        MOV *SP(#4), AR1 ; |665| 
        BCLR @#15, AR1 ; |665| 
        OR AR2, AR1 ; |665| 
        MOV AR1, port(*AR3(T0)) ; |665| 
	.dwpsn	file "src/csl_sar.c",line 668,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #24, T0 ; |668| 
        MOV *AR3, AR3 ; |668| 
        MOV port(*AR3(T0)), AR1 ; |668| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |668| 
        BCLR @#12, AR1 ; |668| 
        BSET @#12, AR1 ; |668| 
        MOV AR1, port(*AR3(T0)) ; |668| 
	.dwpsn	file "src/csl_sar.c",line 670,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |670| 
        MOV port(*AR3(T0)), AR1 ; |670| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |670| 
        BCLR @#13, AR1 ; |670| 
        BSET @#13, AR1 ; |670| 
        MOV AR1, port(*AR3(T0)) ; |670| 
	.dwpsn	file "src/csl_sar.c",line 672,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |672| 
        MOV port(*AR3(T0)), AR1 ; |672| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |672| 
        BCLR @#3, AR1 ; |672| 
        MOV AR1, port(*AR3(T0)) ; |672| 
	.dwpsn	file "src/csl_sar.c",line 675,column 5,is_stmt
        B $C$L25  ; |675| 
                                        ; branch occurs ; |675| 
$C$L21:    
	.dwpsn	file "src/csl_sar.c",line 680,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |680| 
        MOV port(*AR3(T0)), AR1 ; |680| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |680| 
        BCLR @#14, AR1 ; |680| 
        MOV AR1, port(*AR3(T0)) ; |680| 
	.dwpsn	file "src/csl_sar.c",line 682,column 14,is_stmt
        B $C$L26  ; |682| 
                                        ; branch occurs ; |682| 
$C$L22:    
	.dwpsn	file "src/csl_sar.c",line 687,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |687| 
        MOV port(*AR3(T0)), AR1 ; |687| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |687| 
        BCLR @#14, AR1 ; |687| 
        BSET @#14, AR1 ; |687| 
        MOV AR1, port(*AR3(T0)) ; |687| 
	.dwpsn	file "src/csl_sar.c",line 689,column 14,is_stmt
        B $C$L26  ; |689| 
                                        ; branch occurs ; |689| 
$C$L23:    
	.dwpsn	file "src/csl_sar.c",line 694,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |694| 
        MOV port(*AR3(T0)), AR1 ; |694| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |694| 
        BCLR @#14, AR1 ; |694| 
        BSET @#14, AR1 ; |694| 
        MOV AR1, port(*AR3(T0)) ; |694| 
	.dwpsn	file "src/csl_sar.c",line 697,column 14,is_stmt
        B $C$L26  ; |697| 
                                        ; branch occurs ; |697| 
$C$L24:    
	.dwpsn	file "src/csl_sar.c",line 700,column 5,is_stmt
        MOV #-6, T0
        B $C$L31  ; |700| 
                                        ; branch occurs ; |700| 
$C$L25:    
	.dwpsn	file "src/csl_sar.c",line 675,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#1)), AR1 ; |675| 
        BCC $C$L21,AR1 == #0 ; |675| 
                                        ; branchcc occurs ; |675| 
        MOV #1, AR2
        CMP AR1 == AR2, TC1 ; |675| 
        BCC $C$L22,TC1 ; |675| 
                                        ; branchcc occurs ; |675| 
        MOV #2, AR2
        CMP AR1 == AR2, TC1 ; |675| 
        BCC $C$L23,TC1 ; |675| 
                                        ; branchcc occurs ; |675| 
        B $C$L24  ; |675| 
                                        ; branch occurs ; |675| 
$C$L26:    
	.dwpsn	file "src/csl_sar.c",line 705,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3

        MOV *AR3(short(#3)), AR1 ; |705| 
||      MOV #2, AR2

        CMP AR2 == AR1, TC1 ; |705| 
        BCC $C$L27,TC1 ; |705| 
                                        ; branchcc occurs ; |705| 

        MOV #0, AR2
||      MOV *AR3(short(#3)), AR1 ; |705| 

        CMP AR2 == AR1, TC1 ; |705| 
        BCC $C$L27,TC1 ; |705| 
                                        ; branchcc occurs ; |705| 

        MOV #1, AR2
||      MOV *AR3(short(#3)), AR1 ; |705| 

        CMP AR2 == AR1, TC1 ; |705| 
        BCC $C$L27,TC1 ; |705| 
                                        ; branchcc occurs ; |705| 
	.dwpsn	file "src/csl_sar.c",line 709,column 9,is_stmt
        MOV #-6, T0
        B $C$L31  ; |709| 
                                        ; branch occurs ; |709| 
$C$L27:    
	.dwpsn	file "src/csl_sar.c",line 755,column 5,is_stmt

        MOV #2, AR2
||      MOV *AR3(short(#3)), AR1 ; |755| 

        CMP AR2 != AR1, TC1 ; |755| 
        BCC $C$L28,TC1 ; |755| 
                                        ; branchcc occurs ; |755| 
	.dwpsn	file "src/csl_sar.c",line 758,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |758| 
        MOV port(*AR3(T0)), AR1 ; |758| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |758| 
        BCLR @#8, AR1 ; |758| 
        BSET @#8, AR1 ; |758| 
        MOV AR1, port(*AR3(T0)) ; |758| 
	.dwpsn	file "src/csl_sar.c",line 762,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |762| 
        MOV port(*AR3(T0)), AR1 ; |762| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |762| 
        BCLR @#10, AR1 ; |762| 
        MOV AR1, port(*AR3(T0)) ; |762| 
	.dwpsn	file "src/csl_sar.c",line 765,column 5,is_stmt
        B $C$L29  ; |765| 
                                        ; branch occurs ; |765| 
$C$L28:    
	.dwpsn	file "src/csl_sar.c",line 769,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |769| 
        MOV port(*AR3(T0)), AR1 ; |769| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |769| 
        BCLR @#8, AR1 ; |769| 
        MOV AR1, port(*AR3(T0)) ; |769| 
	.dwpsn	file "src/csl_sar.c",line 772,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |772| 
        MOV port(*AR3(T0)), AR1 ; |772| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |772| 
        BCLR @#10, AR1 ; |772| 
        BSET @#10, AR1 ; |772| 
        MOV AR1, port(*AR3(T0)) ; |772| 
	.dwpsn	file "src/csl_sar.c",line 775,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |775| 
        MOV port(*AR3(T0)), AR1 ; |775| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#3)) << #9, AC0 ; |775| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |775| 
        BCLR @#9, AR1 ; |775| 
        AND #0x0200, AC0, AR2 ; |775| 
        OR AR1, AR2 ; |775| 
        MOV AR2, port(*AR3(T0)) ; |775| 
$C$L29:    
	.dwpsn	file "src/csl_sar.c",line 781,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |781| 
        MOV port(*AR3(T0)), AR1 ; |781| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |781| 
        BCLR @#1, AR1 ; |781| 
        MOV AR1, port(*AR3(T0)) ; |781| 
	.dwpsn	file "src/csl_sar.c",line 783,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |783| 
        MOV port(*AR3(T0)), AR1 ; |783| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |783| 
        BCLR @#0, AR1 ; |783| 
        MOV AR1, port(*AR3(T0)) ; |783| 
	.dwpsn	file "src/csl_sar.c",line 786,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#2)), AR1 ; |786| 
        BCC $C$L30,AR1 == #0 ; |786| 
                                        ; branchcc occurs ; |786| 
        CMP *AR3(short(#2)) == #1, TC1 ; |786| 
        BCC $C$L30,TC1 ; |786| 
                                        ; branchcc occurs ; |786| 
	.dwpsn	file "src/csl_sar.c",line 789,column 9,is_stmt
        MOV #-6, T0
        B $C$L31  ; |789| 
                                        ; branch occurs ; |789| 
$C$L30:    
	.dwpsn	file "src/csl_sar.c",line 792,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #18, T0 ; |792| 
        MOV *AR3, AR3 ; |792| 
        MOV port(*AR3(T0)), AR1 ; |792| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#2)) << #11, AC0 ; |792| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |792| 
        BCLR @#11, AR1 ; |792| 
        AND #0x0800, AC0, AR2 ; |792| 
        OR AR1, AR2 ; |792| 
        MOV AR2, port(*AR3(T0)) ; |792| 
	.dwpsn	file "src/csl_sar.c",line 796,column 5,is_stmt
        MOV #0, T0
$C$L31:    
	.dwpsn	file "src/csl_sar.c",line 797,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$40	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$40, DW_AT_low_pc(0x00)
	.dwattr $C$DW$40, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$34, DW_AT_TI_end_file("src/csl_sar.c")
	.dwattr $C$DW$34, DW_AT_TI_end_line(0x31d)
	.dwattr $C$DW$34, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$34

	.sect	".text"
	.global	_SAR_chanCycSet

$C$DW$41	.dwtag  DW_TAG_subprogram, DW_AT_name("SAR_chanCycSet")
	.dwattr $C$DW$41, DW_AT_low_pc(_SAR_chanCycSet)
	.dwattr $C$DW$41, DW_AT_high_pc(0x00)
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_SAR_chanCycSet")
	.dwattr $C$DW$41, DW_AT_external
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$41, DW_AT_TI_begin_file("src/csl_sar.c")
	.dwattr $C$DW$41, DW_AT_TI_begin_line(0x34c)
	.dwattr $C$DW$41, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$41, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_sar.c",line 849,column 1,is_stmt,address _SAR_chanCycSet

	.dwfde $C$DW$CIE, _SAR_chanCycSet
$C$DW$42	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hSar")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_hSar")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_reg17]
$C$DW$43	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cycSelect")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_cycSelect")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: SAR_chanCycSet                                               *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,TC1, *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SAR_chanCycSet:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$44	.dwtag  DW_TAG_variable, DW_AT_name("hSar")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_hSar")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$45	.dwtag  DW_TAG_variable, DW_AT_name("cycSelect")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_cycSelect")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV T0, *SP(#2) ; |849| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_sar.c",line 850,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |850| 

        CMPU AC1 != AC0, TC1 ; |850| 
        BCC $C$L32,TC1 ; |850| 
                                        ; branchcc occurs ; |850| 
	.dwpsn	file "src/csl_sar.c",line 852,column 9,is_stmt
        MOV #-5, T0
        B $C$L34  ; |852| 
                                        ; branch occurs ; |852| 
$C$L32:    
	.dwpsn	file "src/csl_sar.c",line 855,column 5,is_stmt

        MOV #0, AR2
||      MOV *SP(#2), AR1 ; |855| 

        CMP AR2 == AR1, TC1 ; |855| 
        BCC $C$L33,TC1 ; |855| 
                                        ; branchcc occurs ; |855| 
        MOV #1, AR2
        CMP AR2 == AR1, TC1 ; |855| 
        BCC $C$L33,TC1 ; |855| 
                                        ; branchcc occurs ; |855| 
	.dwpsn	file "src/csl_sar.c",line 858,column 9,is_stmt
        MOV #-6, T0
        B $C$L34  ; |858| 
                                        ; branch occurs ; |858| 
$C$L33:    
	.dwpsn	file "src/csl_sar.c",line 865,column 5,is_stmt
        MOV #18, T0 ; |865| 
        MOV *AR3, AR3 ; |865| 
        MOV port(*AR3(T0)), AR2 ; |865| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |865| 
        MOV *SP(#2) << #10, AC0 ; |865| 
        AND #0x0400, AC0, AR1 ; |865| 
        BCLR @#10, AR2 ; |865| 
        OR AR2, AR1 ; |865| 
        MOV AR1, port(*AR3(T0)) ; |865| 
	.dwpsn	file "src/csl_sar.c",line 867,column 5,is_stmt
        MOV #0, T0
$C$L34:    
	.dwpsn	file "src/csl_sar.c",line 868,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$46	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$46, DW_AT_low_pc(0x00)
	.dwattr $C$DW$46, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$41, DW_AT_TI_end_file("src/csl_sar.c")
	.dwattr $C$DW$41, DW_AT_TI_end_line(0x364)
	.dwattr $C$DW$41, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$41

	.sect	".text"
	.global	_SAR_startConversion

$C$DW$47	.dwtag  DW_TAG_subprogram, DW_AT_name("SAR_startConversion")
	.dwattr $C$DW$47, DW_AT_low_pc(_SAR_startConversion)
	.dwattr $C$DW$47, DW_AT_high_pc(0x00)
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_SAR_startConversion")
	.dwattr $C$DW$47, DW_AT_external
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$47, DW_AT_TI_begin_file("src/csl_sar.c")
	.dwattr $C$DW$47, DW_AT_TI_begin_line(0x38b)
	.dwattr $C$DW$47, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$47, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_sar.c",line 910,column 1,is_stmt,address _SAR_startConversion

	.dwfde $C$DW$CIE, _SAR_startConversion
$C$DW$48	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hSar")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_hSar")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: SAR_startConversion                                          *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR3,XAR3,SP,TC1,M40, *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SAR_startConversion:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$49	.dwtag  DW_TAG_variable, DW_AT_name("hSar")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_hSar")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_sar.c",line 911,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |911| 

        CMPU AC1 != AC0, TC1 ; |911| 
        BCC $C$L35,TC1 ; |911| 
                                        ; branchcc occurs ; |911| 
	.dwpsn	file "src/csl_sar.c",line 913,column 9,is_stmt
        MOV #-5, T0
        B $C$L36  ; |913| 
                                        ; branch occurs ; |913| 
$C$L35:    
	.dwpsn	file "src/csl_sar.c",line 920,column 5,is_stmt
        MOV #18, T0 ; |920| 
        MOV *AR3, AR3 ; |920| 
        MOV port(*AR3(T0)), AR1 ; |920| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |920| 
        BCLR @#15, AR1 ; |920| 
        BSET @#15, AR1 ; |920| 
        MOV AR1, port(*AR3(T0)) ; |920| 
	.dwpsn	file "src/csl_sar.c",line 922,column 5,is_stmt
        MOV #0, T0
$C$L36:    
	.dwpsn	file "src/csl_sar.c",line 923,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$50	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$50, DW_AT_low_pc(0x00)
	.dwattr $C$DW$50, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$47, DW_AT_TI_end_file("src/csl_sar.c")
	.dwattr $C$DW$47, DW_AT_TI_end_line(0x39b)
	.dwattr $C$DW$47, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$47

	.sect	".text"
	.global	_SAR_stopConversion

$C$DW$51	.dwtag  DW_TAG_subprogram, DW_AT_name("SAR_stopConversion")
	.dwattr $C$DW$51, DW_AT_low_pc(_SAR_stopConversion)
	.dwattr $C$DW$51, DW_AT_high_pc(0x00)
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_SAR_stopConversion")
	.dwattr $C$DW$51, DW_AT_external
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$51, DW_AT_TI_begin_file("src/csl_sar.c")
	.dwattr $C$DW$51, DW_AT_TI_begin_line(0x3c0)
	.dwattr $C$DW$51, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$51, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_sar.c",line 964,column 1,is_stmt,address _SAR_stopConversion

	.dwfde $C$DW$CIE, _SAR_stopConversion
$C$DW$52	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hSar")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_hSar")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: SAR_stopConversion                                           *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,TC1, *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SAR_stopConversion:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$53	.dwtag  DW_TAG_variable, DW_AT_name("hSar")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_hSar")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_sar.c",line 965,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |965| 

        CMPU AC1 != AC0, TC1 ; |965| 
        BCC $C$L37,TC1 ; |965| 
                                        ; branchcc occurs ; |965| 
	.dwpsn	file "src/csl_sar.c",line 967,column 9,is_stmt
        MOV #-5, T0
        B $C$L39  ; |967| 
                                        ; branch occurs ; |967| 
$C$L37:    
	.dwpsn	file "src/csl_sar.c",line 979,column 5,is_stmt
        MOV #18, T0 ; |979| 
        MOV *AR3, AR3 ; |979| 
        MOV port(*AR3(T0)), AR1 ; |979| 
        AND #0x8000, AR1, AC0 ; |979| 

        BFXTR #0x8000, AC0, AR1 ; |979| 
||      MOV #1, AR2

        CMPU AR2 != AR1, TC1 ; |979| 
        BCC $C$L38,TC1 ; |979| 
                                        ; branchcc occurs ; |979| 
	.dwpsn	file "src/csl_sar.c",line 983,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |983| 
        MOV port(*AR3(T0)), AR1 ; |983| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |983| 
        BCLR @#15, AR1 ; |983| 
        MOV AR1, port(*AR3(T0)) ; |983| 
$C$L38:    
	.dwpsn	file "src/csl_sar.c",line 987,column 5,is_stmt
        MOV #0, T0
$C$L39:    
	.dwpsn	file "src/csl_sar.c",line 988,column 5,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$54	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$54, DW_AT_low_pc(0x00)
	.dwattr $C$DW$54, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$51, DW_AT_TI_end_file("src/csl_sar.c")
	.dwattr $C$DW$51, DW_AT_TI_end_line(0x3dc)
	.dwattr $C$DW$51, DW_AT_TI_end_column(0x05)
	.dwendentry
	.dwendtag $C$DW$51

	.sect	".text"
	.global	_SAR_readData

$C$DW$55	.dwtag  DW_TAG_subprogram, DW_AT_name("SAR_readData")
	.dwattr $C$DW$55, DW_AT_low_pc(_SAR_readData)
	.dwattr $C$DW$55, DW_AT_high_pc(0x00)
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_SAR_readData")
	.dwattr $C$DW$55, DW_AT_external
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$55, DW_AT_TI_begin_file("src/csl_sar.c")
	.dwattr $C$DW$55, DW_AT_TI_begin_line(0x40b)
	.dwattr $C$DW$55, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$55, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_sar.c",line 1040,column 1,is_stmt,address _SAR_readData

	.dwfde $C$DW$CIE, _SAR_readData
$C$DW$56	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hSar")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_hSar")
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$56, DW_AT_location[DW_OP_reg17]
$C$DW$57	.dwtag  DW_TAG_formal_parameter, DW_AT_name("readData")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_readData")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: SAR_readData                                                 *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,TC1,*
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SAR_readData:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$58	.dwtag  DW_TAG_variable, DW_AT_name("hSar")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_hSar")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$59	.dwtag  DW_TAG_variable, DW_AT_name("readData")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_readData")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_sar.c",line 1041,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |1041| 

        CMPU AC1 != AC0, TC1 ; |1041| 
        BCC $C$L40,TC1 ; |1041| 
                                        ; branchcc occurs ; |1041| 
	.dwpsn	file "src/csl_sar.c",line 1043,column 9,is_stmt
        MOV #-5, T0
        B $C$L42  ; |1043| 
                                        ; branch occurs ; |1043| 
$C$L40:    
	.dwpsn	file "src/csl_sar.c",line 1045,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        CMPU AC1 != AC0, TC1 ; |1045| 
        BCC $C$L41,TC1 ; |1045| 
                                        ; branchcc occurs ; |1045| 
	.dwpsn	file "src/csl_sar.c",line 1047,column 9,is_stmt
        MOV #-6, T0
        B $C$L42  ; |1047| 
                                        ; branch occurs ; |1047| 
$C$L41:    
	.dwpsn	file "src/csl_sar.c",line 1052,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #20, T0 ; |1052| 
        MOV *AR3, AR3 ; |1052| 
        MOV port(*AR3(T0)), AR1 ; |1052| 
        MOV dbl(*SP(#2)), XAR3
        AND #0x03ff, AR1, AC0 ; |1052| 
        MOV AC0, *AR3 ; |1052| 
	.dwpsn	file "src/csl_sar.c",line 1054,column 5,is_stmt
        MOV #0, T0
$C$L42:    
	.dwpsn	file "src/csl_sar.c",line 1055,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$60	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$60, DW_AT_low_pc(0x00)
	.dwattr $C$DW$60, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$55, DW_AT_TI_end_file("src/csl_sar.c")
	.dwattr $C$DW$55, DW_AT_TI_end_line(0x41f)
	.dwattr $C$DW$55, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$55

	.sect	".text"
	.global	_SAR_A2DMeasParamSet

$C$DW$61	.dwtag  DW_TAG_subprogram, DW_AT_name("SAR_A2DMeasParamSet")
	.dwattr $C$DW$61, DW_AT_low_pc(_SAR_A2DMeasParamSet)
	.dwattr $C$DW$61, DW_AT_high_pc(0x00)
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_SAR_A2DMeasParamSet")
	.dwattr $C$DW$61, DW_AT_external
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$61, DW_AT_TI_begin_file("src/csl_sar.c")
	.dwattr $C$DW$61, DW_AT_TI_begin_line(0x44d)
	.dwattr $C$DW$61, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$61, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "src/csl_sar.c",line 1106,column 1,is_stmt,address _SAR_A2DMeasParamSet

	.dwfde $C$DW$CIE, _SAR_A2DMeasParamSet
$C$DW$62	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hSar")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_hSar")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_reg17]
$C$DW$63	.dwtag  DW_TAG_formal_parameter, DW_AT_name("param")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_param")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$63, DW_AT_location[DW_OP_reg12]
$C$DW$64	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanNo")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_chanNo")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: SAR_A2DMeasParamSet                                          *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,*
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (7 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SAR_A2DMeasParamSet:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$65	.dwtag  DW_TAG_variable, DW_AT_name("hSar")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_hSar")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$66	.dwtag  DW_TAG_variable, DW_AT_name("param")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_param")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$67	.dwtag  DW_TAG_variable, DW_AT_name("chanNo")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_chanNo")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$67, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$68	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$68, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV XAR1, dbl(*SP(#4))
        MOV T0, *SP(#2) ; |1106| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_sar.c",line 1109,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |1109| 

        CMPU AC1 != AC0, TC1 ; |1109| 
        BCC $C$L51,TC1 ; |1109| 
                                        ; branchcc occurs ; |1109| 
	.dwpsn	file "src/csl_sar.c",line 1111,column 9,is_stmt
        MOV #-5, T0
        B $C$L54  ; |1111| 
                                        ; branch occurs ; |1111| 
$C$L43:    
	.dwpsn	file "src/csl_sar.c",line 1328,column 13,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #3, *AR3 ; |1328| 
	.dwpsn	file "src/csl_sar.c",line 1329,column 13,is_stmt
        MOV *port(#28690), AR1 ; |1329| 
        AND #0x8fff, AR1, AR1 ; |1329| 
        OR #0x3000, AR1, AR1 ; |1329| 
        MOV AR1, *port(#28690) ; |1329| 
	.dwpsn	file "src/csl_sar.c",line 1331,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #24, T0 ; |1331| 
        MOV *AR3, AR3 ; |1331| 
        MOV port(*AR3(T0)), AR1 ; |1331| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1331| 
        BCLR @#3, AR1 ; |1331| 
        MOV AR1, port(*AR3(T0)) ; |1331| 
	.dwpsn	file "src/csl_sar.c",line 1335,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1335| 
        MOV port(*AR3(T0)), AR1 ; |1335| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1335| 
        BCLR @#1, AR1 ; |1335| 
        MOV AR1, port(*AR3(T0)) ; |1335| 
	.dwpsn	file "src/csl_sar.c",line 1338,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1338| 
        MOV port(*AR3(T0)), AR1 ; |1338| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1338| 
        BCLR @#0, AR1 ; |1338| 
        MOV AR1, port(*AR3(T0)) ; |1338| 
	.dwpsn	file "src/csl_sar.c",line 1341,column 13,is_stmt
        MOV #0, *SP(#6) ; |1341| 
	.dwpsn	file "src/csl_sar.c",line 1342,column 13,is_stmt
        B $C$L53  ; |1342| 
                                        ; branch occurs ; |1342| 
$C$L44:    
	.dwpsn	file "src/csl_sar.c",line 1347,column 13,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #1, *AR3 ; |1347| 
	.dwpsn	file "src/csl_sar.c",line 1348,column 13,is_stmt
        MOV *port(#28690), AR1 ; |1348| 
        AND #0x8fff, AR1, AC0 ; |1348| 
        BSET @#12, AC0 ; |1348| 
        MOV AC0, *port(#28690) ; |1348| 
	.dwpsn	file "src/csl_sar.c",line 1350,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #26, T0 ; |1350| 
        MOV *AR3, AR3 ; |1350| 
        MOV port(*AR3(T0)), AR1 ; |1350| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1350| 
        BCLR @#4, AR1 ; |1350| 
        MOV AR1, port(*AR3(T0)) ; |1350| 
	.dwpsn	file "src/csl_sar.c",line 1354,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #24, T0 ; |1354| 
        MOV *AR3, AR3 ; |1354| 
        MOV port(*AR3(T0)), AR1 ; |1354| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1354| 
        BCLR @#1, AR1 ; |1354| 
        BSET @#1, AR1 ; |1354| 
        MOV AR1, port(*AR3(T0)) ; |1354| 
	.dwpsn	file "src/csl_sar.c",line 1357,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1357| 
        MOV port(*AR3(T0)), AR1 ; |1357| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1357| 
        BCLR @#0, AR1 ; |1357| 
        MOV AR1, port(*AR3(T0)) ; |1357| 
	.dwpsn	file "src/csl_sar.c",line 1360,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1360| 
        MOV port(*AR3(T0)), AR1 ; |1360| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1360| 
        BCLR @#8, AR1 ; |1360| 
        MOV AR1, port(*AR3(T0)) ; |1360| 
	.dwpsn	file "src/csl_sar.c",line 1362,column 13,is_stmt
        MOV #0, *SP(#6) ; |1362| 
	.dwpsn	file "src/csl_sar.c",line 1363,column 13,is_stmt
        B $C$L53  ; |1363| 
                                        ; branch occurs ; |1363| 
$C$L45:    
	.dwpsn	file "src/csl_sar.c",line 1367,column 13,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #3, *AR3 ; |1367| 
	.dwpsn	file "src/csl_sar.c",line 1368,column 13,is_stmt
        MOV *port(#28690), AR1 ; |1368| 
        AND #0x8fff, AR1, AR1 ; |1368| 
        OR #0x3000, AR1, AR1 ; |1368| 
        MOV AR1, *port(#28690) ; |1368| 
	.dwpsn	file "src/csl_sar.c",line 1371,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #26, T0 ; |1371| 
        MOV *AR3, AR3 ; |1371| 
        MOV port(*AR3(T0)), AR1 ; |1371| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1371| 
        BCLR @#5, AR1 ; |1371| 
        MOV AR1, port(*AR3(T0)) ; |1371| 
	.dwpsn	file "src/csl_sar.c",line 1374,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #24, T0 ; |1374| 
        MOV *AR3, AR3 ; |1374| 
        MOV port(*AR3(T0)), AR1 ; |1374| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1374| 
        BCLR @#3, AR1 ; |1374| 
        BSET @#3, AR1 ; |1374| 
        MOV AR1, port(*AR3(T0)) ; |1374| 
	.dwpsn	file "src/csl_sar.c",line 1377,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #26, T0 ; |1377| 
        MOV *AR3, AR3 ; |1377| 
        MOV port(*AR3(T0)), AR1 ; |1377| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1377| 
        BCLR @#8, AR1 ; |1377| 
        MOV AR1, port(*AR3(T0)) ; |1377| 
	.dwpsn	file "src/csl_sar.c",line 1380,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #24, T0 ; |1380| 
        MOV *AR3, AR3 ; |1380| 
        MOV port(*AR3(T0)), AR1 ; |1380| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1380| 
        BCLR @#0, AR1 ; |1380| 
        BSET @#0, AR1 ; |1380| 
        MOV AR1, port(*AR3(T0)) ; |1380| 
	.dwpsn	file "src/csl_sar.c",line 1383,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1383| 
        MOV port(*AR3(T0)), AR1 ; |1383| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1383| 
        BCLR @#8, AR1 ; |1383| 
        MOV AR1, port(*AR3(T0)) ; |1383| 
	.dwpsn	file "src/csl_sar.c",line 1386,column 13,is_stmt
        MOV #0, *SP(#6) ; |1386| 
	.dwpsn	file "src/csl_sar.c",line 1387,column 13,is_stmt
        B $C$L53  ; |1387| 
                                        ; branch occurs ; |1387| 
$C$L46:    
	.dwpsn	file "src/csl_sar.c",line 1392,column 13,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #5, *AR3 ; |1392| 
	.dwpsn	file "src/csl_sar.c",line 1393,column 13,is_stmt
        MOV *port(#28690), AR1 ; |1393| 
        AND #0x8fff, AR1, AR1 ; |1393| 
        OR #0x5000, AR1, AR1 ; |1393| 
        MOV AR1, *port(#28690) ; |1393| 
	.dwpsn	file "src/csl_sar.c",line 1396,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #26, T0 ; |1396| 
        MOV *AR3, AR3 ; |1396| 
        MOV port(*AR3(T0)), AR1 ; |1396| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1396| 
        BCLR @#7, AR1 ; |1396| 
        MOV AR1, port(*AR3(T0)) ; |1396| 
	.dwpsn	file "src/csl_sar.c",line 1400,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1400| 
        MOV port(*AR3(T0)), AR1 ; |1400| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1400| 
        BCLR @#6, AR1 ; |1400| 
        BSET @#6, AR1 ; |1400| 
        MOV AR1, port(*AR3(T0)) ; |1400| 
	.dwpsn	file "src/csl_sar.c",line 1404,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1404| 
        MOV port(*AR3(T0)), AR1 ; |1404| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1404| 
        BCLR @#2, AR1 ; |1404| 
        MOV AR1, port(*AR3(T0)) ; |1404| 
	.dwpsn	file "src/csl_sar.c",line 1408,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #24, T0 ; |1408| 
        MOV *AR3, AR3 ; |1408| 
        MOV port(*AR3(T0)), AR1 ; |1408| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1408| 
        BCLR @#0, AR1 ; |1408| 
        MOV AR1, port(*AR3(T0)) ; |1408| 
	.dwpsn	file "src/csl_sar.c",line 1412,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1412| 
        MOV port(*AR3(T0)), AR1 ; |1412| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1412| 
        BCLR @#8, AR1 ; |1412| 
        MOV AR1, port(*AR3(T0)) ; |1412| 
	.dwpsn	file "src/csl_sar.c",line 1415,column 13,is_stmt
        MOV #0, *SP(#6) ; |1415| 
	.dwpsn	file "src/csl_sar.c",line 1416,column 13,is_stmt
        B $C$L53  ; |1416| 
                                        ; branch occurs ; |1416| 
$C$L47:    
	.dwpsn	file "src/csl_sar.c",line 1421,column 13,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #5, *AR3 ; |1421| 
	.dwpsn	file "src/csl_sar.c",line 1422,column 13,is_stmt
        MOV *port(#28690), AR1 ; |1422| 
        AND #0x8fff, AR1, AR1 ; |1422| 
        OR #0x5000, AR1, AR1 ; |1422| 
        MOV AR1, *port(#28690) ; |1422| 
	.dwpsn	file "src/csl_sar.c",line 1425,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #24, T0 ; |1425| 
        MOV *AR3, AR3 ; |1425| 
        MOV port(*AR3(T0)), AR1 ; |1425| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1425| 
        BCLR @#4, AR1 ; |1425| 
        BSET @#4, AR1 ; |1425| 
        MOV AR1, port(*AR3(T0)) ; |1425| 
	.dwpsn	file "src/csl_sar.c",line 1429,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #26, T0 ; |1429| 
        MOV *AR3, AR3 ; |1429| 
        MOV port(*AR3(T0)), AR1 ; |1429| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1429| 
        BCLR @#7, AR1 ; |1429| 
        MOV AR1, port(*AR3(T0)) ; |1429| 
	.dwpsn	file "src/csl_sar.c",line 1433,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1433| 
        MOV port(*AR3(T0)), AR1 ; |1433| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1433| 
        BCLR @#6, AR1 ; |1433| 
        MOV AR1, port(*AR3(T0)) ; |1433| 
	.dwpsn	file "src/csl_sar.c",line 1438,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1438| 
        MOV port(*AR3(T0)), AR1 ; |1438| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1438| 
        BCLR @#5, AR1 ; |1438| 
        BSET @#5, AR1 ; |1438| 
        MOV AR1, port(*AR3(T0)) ; |1438| 
	.dwpsn	file "src/csl_sar.c",line 1441,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1441| 
        MOV port(*AR3(T0)), AR1 ; |1441| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1441| 
        BCLR @#1, AR1 ; |1441| 
        BSET @#1, AR1 ; |1441| 
        MOV AR1, port(*AR3(T0)) ; |1441| 
	.dwpsn	file "src/csl_sar.c",line 1445,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1445| 
        MOV port(*AR3(T0)), AR1 ; |1445| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1445| 
        BCLR @#4, AR1 ; |1445| 
        BSET @#4, AR1 ; |1445| 
        MOV AR1, port(*AR3(T0)) ; |1445| 
	.dwpsn	file "src/csl_sar.c",line 1448,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1448| 
        MOV port(*AR3(T0)), AR1 ; |1448| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1448| 
        BCLR @#0, AR1 ; |1448| 
        MOV AR1, port(*AR3(T0)) ; |1448| 
	.dwpsn	file "src/csl_sar.c",line 1452,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1452| 
        MOV port(*AR3(T0)), AR1 ; |1452| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1452| 
        BCLR @#8, AR1 ; |1452| 
        MOV AR1, port(*AR3(T0)) ; |1452| 
	.dwpsn	file "src/csl_sar.c",line 1456,column 13,is_stmt
        MOV #0, *SP(#6) ; |1456| 
	.dwpsn	file "src/csl_sar.c",line 1457,column 13,is_stmt
        B $C$L53  ; |1457| 
                                        ; branch occurs ; |1457| 
$C$L48:    
	.dwpsn	file "src/csl_sar.c",line 1462,column 13,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #3, *AR3 ; |1462| 
	.dwpsn	file "src/csl_sar.c",line 1463,column 13,is_stmt
        MOV *port(#28690), AR1 ; |1463| 
        AND #0x8fff, AR1, AR1 ; |1463| 
        OR #0x3000, AR1, AR1 ; |1463| 
        MOV AR1, *port(#28690) ; |1463| 
	.dwpsn	file "src/csl_sar.c",line 1466,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #24, T0 ; |1466| 
        MOV *AR3, AR3 ; |1466| 
        MOV port(*AR3(T0)), AR1 ; |1466| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1466| 
        BCLR @#4, AR1 ; |1466| 
        BSET @#4, AR1 ; |1466| 
        MOV AR1, port(*AR3(T0)) ; |1466| 
	.dwpsn	file "src/csl_sar.c",line 1470,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #26, T0 ; |1470| 
        MOV *AR3, AR3 ; |1470| 
        MOV port(*AR3(T0)), AR1 ; |1470| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1470| 
        BCLR @#7, AR1 ; |1470| 
        BSET @#7, AR1 ; |1470| 
        MOV AR1, port(*AR3(T0)) ; |1470| 
	.dwpsn	file "src/csl_sar.c",line 1473,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1473| 
        MOV port(*AR3(T0)), AR1 ; |1473| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1473| 
        BCLR @#3, AR1 ; |1473| 
        BSET @#3, AR1 ; |1473| 
        MOV AR1, port(*AR3(T0)) ; |1473| 
	.dwpsn	file "src/csl_sar.c",line 1476,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1476| 
        MOV port(*AR3(T0)), AR1 ; |1476| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1476| 
        BCLR @#6, AR1 ; |1476| 
        BSET @#6, AR1 ; |1476| 
        MOV AR1, port(*AR3(T0)) ; |1476| 
	.dwpsn	file "src/csl_sar.c",line 1479,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1479| 
        MOV port(*AR3(T0)), AR1 ; |1479| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1479| 
        BCLR @#2, AR1 ; |1479| 
        MOV AR1, port(*AR3(T0)) ; |1479| 
	.dwpsn	file "src/csl_sar.c",line 1483,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1483| 
        MOV port(*AR3(T0)), AR1 ; |1483| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1483| 
        BCLR @#5, AR1 ; |1483| 
        MOV AR1, port(*AR3(T0)) ; |1483| 
	.dwpsn	file "src/csl_sar.c",line 1486,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1486| 
        MOV port(*AR3(T0)), AR1 ; |1486| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1486| 
        BCLR @#4, AR1 ; |1486| 
        MOV AR1, port(*AR3(T0)) ; |1486| 
	.dwpsn	file "src/csl_sar.c",line 1490,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1490| 
        MOV port(*AR3(T0)), AR1 ; |1490| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1490| 
        BCLR @#8, AR1 ; |1490| 
        MOV AR1, port(*AR3(T0)) ; |1490| 
	.dwpsn	file "src/csl_sar.c",line 1493,column 13,is_stmt
        MOV #0, *SP(#6) ; |1493| 
	.dwpsn	file "src/csl_sar.c",line 1494,column 13,is_stmt
        B $C$L53  ; |1494| 
                                        ; branch occurs ; |1494| 
$C$L49:    
	.dwpsn	file "src/csl_sar.c",line 1501,column 13,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #5, *AR3 ; |1501| 
	.dwpsn	file "src/csl_sar.c",line 1502,column 13,is_stmt
        MOV *port(#28690), AR1 ; |1502| 
        AND #0x8fff, AR1, AR1 ; |1502| 
        OR #0x5000, AR1, AR1 ; |1502| 
        MOV AR1, *port(#28690) ; |1502| 
	.dwpsn	file "src/csl_sar.c",line 1505,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #26, T0 ; |1505| 
        MOV *AR3, AR3 ; |1505| 
        MOV port(*AR3(T0)), AR1 ; |1505| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1505| 
        BCLR @#7, AR1 ; |1505| 
        MOV AR1, port(*AR3(T0)) ; |1505| 
	.dwpsn	file "src/csl_sar.c",line 1509,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1509| 
        MOV port(*AR3(T0)), AR1 ; |1509| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1509| 
        BCLR @#6, AR1 ; |1509| 
        BSET @#6, AR1 ; |1509| 
        MOV AR1, port(*AR3(T0)) ; |1509| 
	.dwpsn	file "src/csl_sar.c",line 1512,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1512| 
        MOV port(*AR3(T0)), AR1 ; |1512| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1512| 
        BCLR @#2, AR1 ; |1512| 
        MOV AR1, port(*AR3(T0)) ; |1512| 
	.dwpsn	file "src/csl_sar.c",line 1516,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1516| 
        MOV port(*AR3(T0)), AR1 ; |1516| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1516| 
        BCLR @#5, AR1 ; |1516| 
        MOV AR1, port(*AR3(T0)) ; |1516| 
	.dwpsn	file "src/csl_sar.c",line 1519,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1519| 
        MOV port(*AR3(T0)), AR1 ; |1519| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1519| 
        BCLR @#4, AR1 ; |1519| 
        MOV AR1, port(*AR3(T0)) ; |1519| 
	.dwpsn	file "src/csl_sar.c",line 1523,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1523| 
        MOV port(*AR3(T0)), AR1 ; |1523| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1523| 
        BCLR @#8, AR1 ; |1523| 
        BSET @#8, AR1 ; |1523| 
        MOV AR1, port(*AR3(T0)) ; |1523| 
	.dwpsn	file "src/csl_sar.c",line 1525,column 13,is_stmt
        MOV #0, *SP(#6) ; |1525| 
	.dwpsn	file "src/csl_sar.c",line 1526,column 13,is_stmt
        B $C$L53  ; |1526| 
                                        ; branch occurs ; |1526| 
$C$L50:    
	.dwpsn	file "src/csl_sar.c",line 1530,column 9,is_stmt
        MOV #-6, *SP(#6) ; |1530| 
	.dwpsn	file "src/csl_sar.c",line 1531,column 14,is_stmt
        B $C$L53  ; |1531| 
                                        ; branch occurs ; |1531| 
$C$L51:    
	.dwpsn	file "src/csl_sar.c",line 1324,column 5,is_stmt

        MOV *SP(#2), AR1 ; |1324| 
||      MOV #3, AR2

        CMP AR1 > AR2, TC1 ; |1324| 
        BCC $C$L52,TC1 ; |1324| 
                                        ; branchcc occurs ; |1324| 
        CMP AR1 == AR2, TC1 ; |1324| 
        BCC $C$L46,TC1 ; |1324| 
                                        ; branchcc occurs ; |1324| 
        BCC $C$L43,AR1 == #0 ; |1324| 
                                        ; branchcc occurs ; |1324| 
        MOV #1, AR2
        CMP AR1 == AR2, TC1 ; |1324| 
        BCC $C$L44,TC1 ; |1324| 
                                        ; branchcc occurs ; |1324| 
        MOV #2, AR2
        CMP AR1 == AR2, TC1 ; |1324| 
        BCC $C$L45,TC1 ; |1324| 
                                        ; branchcc occurs ; |1324| 
        B $C$L50  ; |1324| 
                                        ; branch occurs ; |1324| 
$C$L52:    
        MOV #4, AR2
        CMP AR1 == AR2, TC1 ; |1324| 
        BCC $C$L47,TC1 ; |1324| 
                                        ; branchcc occurs ; |1324| 
        MOV #5, AR2
        CMP AR1 == AR2, TC1 ; |1324| 
        BCC $C$L48,TC1 ; |1324| 
                                        ; branchcc occurs ; |1324| 
        MOV #6, AR2
        CMP AR1 == AR2, TC1 ; |1324| 
        BCC $C$L49,TC1 ; |1324| 
                                        ; branchcc occurs ; |1324| 
        B $C$L50  ; |1324| 
                                        ; branch occurs ; |1324| 
$C$L53:    
	.dwpsn	file "src/csl_sar.c",line 1534,column 5,is_stmt
        MOV *SP(#6), T0 ; |1534| 
$C$L54:    
	.dwpsn	file "src/csl_sar.c",line 1535,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$69	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$69, DW_AT_low_pc(0x00)
	.dwattr $C$DW$69, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$61, DW_AT_TI_end_file("src/csl_sar.c")
	.dwattr $C$DW$61, DW_AT_TI_end_line(0x5ff)
	.dwattr $C$DW$61, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$61

	.sect	".text"
	.global	_SAR_GPODirSet

$C$DW$70	.dwtag  DW_TAG_subprogram, DW_AT_name("SAR_GPODirSet")
	.dwattr $C$DW$70, DW_AT_low_pc(_SAR_GPODirSet)
	.dwattr $C$DW$70, DW_AT_high_pc(0x00)
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_SAR_GPODirSet")
	.dwattr $C$DW$70, DW_AT_external
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$70, DW_AT_TI_begin_file("src/csl_sar.c")
	.dwattr $C$DW$70, DW_AT_TI_begin_line(0x62a)
	.dwattr $C$DW$70, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$70, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_sar.c",line 1583,column 1,is_stmt,address _SAR_GPODirSet

	.dwfde $C$DW$CIE, _SAR_GPODirSet
$C$DW$71	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hSar")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_hSar")
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$71, DW_AT_location[DW_OP_reg17]
$C$DW$72	.dwtag  DW_TAG_formal_parameter, DW_AT_name("Index")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_Index")
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$72, DW_AT_location[DW_OP_reg12]
$C$DW$73	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dir")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_dir")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_reg13]
;*******************************************************************************
;* FUNCTION NAME: SAR_GPODirSet                                                *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,  *
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SAR_GPODirSet:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$74	.dwtag  DW_TAG_variable, DW_AT_name("hSar")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_hSar")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$75	.dwtag  DW_TAG_variable, DW_AT_name("Index")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_Index")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$75, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$76	.dwtag  DW_TAG_variable, DW_AT_name("dir")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_dir")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$76, DW_AT_location[DW_OP_bregx 0x24 3]
        MOV T1, *SP(#3) ; |1583| 
        MOV T0, *SP(#2) ; |1583| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_sar.c",line 1584,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |1584| 

        CMPU AC1 != AC0, TC1 ; |1584| 
        BCC $C$L55,TC1 ; |1584| 
                                        ; branchcc occurs ; |1584| 
	.dwpsn	file "src/csl_sar.c",line 1586,column 9,is_stmt
        MOV #-5, T0
        B $C$L63  ; |1586| 
                                        ; branch occurs ; |1586| 
$C$L55:    
	.dwpsn	file "src/csl_sar.c",line 1589,column 5,is_stmt

        MOV #0, AR2
||      MOV *SP(#3), AR1 ; |1589| 

        CMP AR2 == AR1, TC1 ; |1589| 
        BCC $C$L61,TC1 ; |1589| 
                                        ; branchcc occurs ; |1589| 
        MOV #1, AR2
        CMP AR2 == AR1, TC1 ; |1589| 
        BCC $C$L61,TC1 ; |1589| 
                                        ; branchcc occurs ; |1589| 
	.dwpsn	file "src/csl_sar.c",line 1591,column 9,is_stmt
        MOV #-6, T0
        B $C$L63  ; |1591| 
                                        ; branch occurs ; |1591| 
$C$L56:    
	.dwpsn	file "src/csl_sar.c",line 1625,column 9,is_stmt
        MOV #26, T0 ; |1625| 
        MOV *AR3, AR3 ; |1625| 
        MOV port(*AR3(T0)), AR2 ; |1625| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1625| 
        MOV *SP(#3) << #4, AC0 ; |1625| 
        AND #0x0010, AC0, AR1 ; |1625| 
        BCLR @#4, AR2 ; |1625| 
        OR AR2, AR1 ; |1625| 
        MOV AR1, port(*AR3(T0)) ; |1625| 
	.dwpsn	file "src/csl_sar.c",line 1626,column 14,is_stmt
        B $C$L62  ; |1626| 
                                        ; branch occurs ; |1626| 
$C$L57:    
	.dwpsn	file "src/csl_sar.c",line 1630,column 9,is_stmt
        MOV #26, T0 ; |1630| 
        MOV *AR3, AR3 ; |1630| 
        MOV port(*AR3(T0)), AR2 ; |1630| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1630| 
        MOV *SP(#3) << #5, AC0 ; |1630| 
        AND #0x0020, AC0, AR1 ; |1630| 
        BCLR @#5, AR2 ; |1630| 
        OR AR2, AR1 ; |1630| 
        MOV AR1, port(*AR3(T0)) ; |1630| 
	.dwpsn	file "src/csl_sar.c",line 1631,column 14,is_stmt
        B $C$L62  ; |1631| 
                                        ; branch occurs ; |1631| 
$C$L58:    
	.dwpsn	file "src/csl_sar.c",line 1635,column 9,is_stmt
        MOV #26, T0 ; |1635| 
        MOV *AR3, AR3 ; |1635| 
        MOV port(*AR3(T0)), AR2 ; |1635| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1635| 
        MOV *SP(#3) << #6, AC0 ; |1635| 
        AND #0x0040, AC0, AR1 ; |1635| 
        BCLR @#6, AR2 ; |1635| 
        OR AR2, AR1 ; |1635| 
        MOV AR1, port(*AR3(T0)) ; |1635| 
	.dwpsn	file "src/csl_sar.c",line 1636,column 14,is_stmt
        B $C$L62  ; |1636| 
                                        ; branch occurs ; |1636| 
$C$L59:    
	.dwpsn	file "src/csl_sar.c",line 1640,column 9,is_stmt
        MOV #26, T0 ; |1640| 
        MOV *AR3, AR3 ; |1640| 
        MOV port(*AR3(T0)), AR2 ; |1640| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1640| 
        MOV *SP(#3) << #7, AC0 ; |1640| 
        AND #0x0080, AC0, AR1 ; |1640| 
        BCLR @#7, AR2 ; |1640| 
        OR AR2, AR1 ; |1640| 
        MOV AR1, port(*AR3(T0)) ; |1640| 
	.dwpsn	file "src/csl_sar.c",line 1641,column 14,is_stmt
        B $C$L62  ; |1641| 
                                        ; branch occurs ; |1641| 
$C$L60:    
	.dwpsn	file "src/csl_sar.c",line 1644,column 9,is_stmt
        MOV #-6, T0
        B $C$L63  ; |1644| 
                                        ; branch occurs ; |1644| 
$C$L61:    
	.dwpsn	file "src/csl_sar.c",line 1621,column 2,is_stmt
        MOV *SP(#2), AR1 ; |1621| 
        BCC $C$L56,AR1 == #0 ; |1621| 
                                        ; branchcc occurs ; |1621| 
        MOV #1, AR2
        CMP AR1 == AR2, TC1 ; |1621| 
        BCC $C$L57,TC1 ; |1621| 
                                        ; branchcc occurs ; |1621| 
        MOV #2, AR2
        CMP AR1 == AR2, TC1 ; |1621| 
        BCC $C$L58,TC1 ; |1621| 
                                        ; branchcc occurs ; |1621| 
        MOV #3, AR2
        CMP AR1 == AR2, TC1 ; |1621| 
        BCC $C$L59,TC1 ; |1621| 
                                        ; branchcc occurs ; |1621| 
        B $C$L60  ; |1621| 
                                        ; branch occurs ; |1621| 
$C$L62:    
	.dwpsn	file "src/csl_sar.c",line 1648,column 5,is_stmt
        MOV #0, T0
$C$L63:    
	.dwpsn	file "src/csl_sar.c",line 1649,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$77	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$77, DW_AT_low_pc(0x00)
	.dwattr $C$DW$77, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$70, DW_AT_TI_end_file("src/csl_sar.c")
	.dwattr $C$DW$70, DW_AT_TI_end_line(0x671)
	.dwattr $C$DW$70, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$70

	.sect	".text"
	.global	_SAR_getStatus

$C$DW$78	.dwtag  DW_TAG_subprogram, DW_AT_name("SAR_getStatus")
	.dwattr $C$DW$78, DW_AT_low_pc(_SAR_getStatus)
	.dwattr $C$DW$78, DW_AT_high_pc(0x00)
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_SAR_getStatus")
	.dwattr $C$DW$78, DW_AT_external
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$78, DW_AT_TI_begin_file("src/csl_sar.c")
	.dwattr $C$DW$78, DW_AT_TI_begin_line(0x6a3)
	.dwattr $C$DW$78, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$78, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_sar.c",line 1703,column 1,is_stmt,address _SAR_getStatus

	.dwfde $C$DW$CIE, _SAR_getStatus
$C$DW$79	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hSar")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_hSar")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$79, DW_AT_location[DW_OP_reg17]
$C$DW$80	.dwtag  DW_TAG_formal_parameter, DW_AT_name("status")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$80, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: SAR_getStatus                                                *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,TC1,*
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SAR_getStatus:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$81	.dwtag  DW_TAG_variable, DW_AT_name("hSar")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_hSar")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$81, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$82	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$83	.dwtag  DW_TAG_variable, DW_AT_name("busyBit")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_busyBit")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$83, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_sar.c",line 1704,column 19,is_stmt
        MOV #1, *SP(#4) ; |1704| 
	.dwpsn	file "src/csl_sar.c",line 1705,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |1705| 

        CMPU AC1 != AC0, TC1 ; |1705| 
        BCC $C$L64,TC1 ; |1705| 
                                        ; branchcc occurs ; |1705| 
	.dwpsn	file "src/csl_sar.c",line 1707,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #-5, *AR3 ; |1707| 
$C$L64:    
	.dwpsn	file "src/csl_sar.c",line 1712,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #20, T0 ; |1712| 
        MOV *AR3, AR3 ; |1712| 
        MOV port(*AR3(T0)), AR1 ; |1712| 
        AND #0x8000, AR1, AC0 ; |1712| 
        SFTS AC0, #-15, AC0 ; |1712| 
        MOV AC0, *SP(#4) ; |1712| 
        NOP
	.dwpsn	file "src/csl_sar.c",line 1714,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #0, *AR3 ; |1714| 
	.dwpsn	file "src/csl_sar.c",line 1715,column 5,is_stmt
        MOV *SP(#4), T0 ; |1715| 
	.dwpsn	file "src/csl_sar.c",line 1716,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$84	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$84, DW_AT_low_pc(0x00)
	.dwattr $C$DW$84, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$78, DW_AT_TI_end_file("src/csl_sar.c")
	.dwattr $C$DW$78, DW_AT_TI_end_line(0x6b4)
	.dwattr $C$DW$78, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$78


;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$30	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x01)
$C$DW$85	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SAR_POLLING"), DW_AT_const_value(0x00)
$C$DW$86	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SAR_INTERRUPT"), DW_AT_const_value(0x01)
$C$DW$87	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SAR_DMA"), DW_AT_const_value(0x02)
	.dwendtag $C$DW$T$30

$C$DW$T$31	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SarOpMode")
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$31, DW_AT_language(DW_LANG_C)

$C$DW$T$32	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x01)
$C$DW$88	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SAR_NO_DISCHARGE"), DW_AT_const_value(0x00)
$C$DW$89	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SAR_DISCHARGE_ARRAY"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$32

$C$DW$T$33	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SarMultiCh")
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$33, DW_AT_language(DW_LANG_C)

$C$DW$T$34	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x01)
$C$DW$90	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SAR_REF_0_8v"), DW_AT_const_value(0x00)
$C$DW$91	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SAR_REF_1v"), DW_AT_const_value(0x01)
$C$DW$92	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SAR_REF_VIN"), DW_AT_const_value(0x02)
	.dwendtag $C$DW$T$34

$C$DW$T$35	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_RefVoltage")
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$35, DW_AT_language(DW_LANG_C)

$C$DW$T$41	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x01)
$C$DW$93	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SAR_CHAN_0"), DW_AT_const_value(0x00)
$C$DW$94	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SAR_CHAN_1"), DW_AT_const_value(0x01)
$C$DW$95	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SAR_CHAN_2"), DW_AT_const_value(0x02)
$C$DW$96	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SAR_CHAN_3"), DW_AT_const_value(0x03)
$C$DW$97	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SAR_CHAN_4"), DW_AT_const_value(0x04)
$C$DW$98	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SAR_CHAN_5"), DW_AT_const_value(0x05)
$C$DW$99	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SAR_NO_CHAN"), DW_AT_const_value(0x06)
	.dwendtag $C$DW$T$41

$C$DW$T$42	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SarChanSel")
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$42, DW_AT_language(DW_LANG_C)
$C$DW$T$43	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$43, DW_AT_address_class(0x17)

$C$DW$T$44	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x01)
$C$DW$100	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SAR_CONTINUOUS_CONVERSION"), DW_AT_const_value(0x00)
$C$DW$101	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SAR_SINGLE_CONVERSION"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$44

$C$DW$T$45	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SarChanCyc")
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$45, DW_AT_language(DW_LANG_C)

$C$DW$T$46	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$46, DW_AT_byte_size(0x01)
$C$DW$102	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_KEYPAD_MEAS"), DW_AT_const_value(0x00)
$C$DW$103	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_BATTRY_MEAS"), DW_AT_const_value(0x01)
$C$DW$104	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_INT_VOLT_MEAS"), DW_AT_const_value(0x02)
$C$DW$105	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_VOLUME_CTRL"), DW_AT_const_value(0x03)
$C$DW$106	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_TOUCH_SCREEN_XAXIS"), DW_AT_const_value(0x04)
$C$DW$107	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_TOUCH_SCREEN_YAXIS"), DW_AT_const_value(0x05)
$C$DW$108	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_PEN_PRESS_DOWN"), DW_AT_const_value(0x06)
	.dwendtag $C$DW$T$46

$C$DW$T$47	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SARMeasParam")
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$47, DW_AT_language(DW_LANG_C)

$C$DW$T$48	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x01)
$C$DW$109	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SAR_GPO_0"), DW_AT_const_value(0x00)
$C$DW$110	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SAR_GPO_1"), DW_AT_const_value(0x01)
$C$DW$111	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SAR_GPO_2"), DW_AT_const_value(0x02)
$C$DW$112	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SAR_GPO_3"), DW_AT_const_value(0x03)
	.dwendtag $C$DW$T$48

$C$DW$T$49	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SarGPOPinSel")
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$49, DW_AT_language(DW_LANG_C)

$C$DW$T$50	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$50, DW_AT_byte_size(0x01)
$C$DW$113	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SAR_GPO_IN"), DW_AT_const_value(0x00)
$C$DW$114	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SAR_GPO_OUT"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$50

$C$DW$T$51	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SarGPODir")
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$51, DW_AT_language(DW_LANG_C)

$C$DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x1b)
$C$DW$115	.dwtag  DW_TAG_member
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$115, DW_AT_name("RSVD0")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$115, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$115, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$116	.dwtag  DW_TAG_member
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$116, DW_AT_name("USBLDOCNTL")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("_USBLDOCNTL")
	.dwattr $C$DW$116, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$116, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$117	.dwtag  DW_TAG_member
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$117, DW_AT_name("RSVD1")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_RSVD1")
	.dwattr $C$DW$117, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$117, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$118	.dwtag  DW_TAG_member
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$118, DW_AT_name("SARCTRL")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_SARCTRL")
	.dwattr $C$DW$118, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$118, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$119	.dwtag  DW_TAG_member
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$119, DW_AT_name("RSVD2")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_RSVD2")
	.dwattr $C$DW$119, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$119, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$120	.dwtag  DW_TAG_member
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$120, DW_AT_name("SARDATA")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_SARDATA")
	.dwattr $C$DW$120, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$120, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$121	.dwtag  DW_TAG_member
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$121, DW_AT_name("RSVD3")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("_RSVD3")
	.dwattr $C$DW$121, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$121, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$122	.dwtag  DW_TAG_member
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$122, DW_AT_name("SARCLKCTRL")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_SARCLKCTRL")
	.dwattr $C$DW$122, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$122, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$123	.dwtag  DW_TAG_member
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$123, DW_AT_name("RSVD4")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_RSVD4")
	.dwattr $C$DW$123, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$123, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$124	.dwtag  DW_TAG_member
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$124, DW_AT_name("SARPINCTRL")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_SARPINCTRL")
	.dwattr $C$DW$124, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$124, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$125	.dwtag  DW_TAG_member
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$125, DW_AT_name("RSVD5")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_RSVD5")
	.dwattr $C$DW$125, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$125, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$126	.dwtag  DW_TAG_member
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$126, DW_AT_name("SARGPOCTRL")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_SARGPOCTRL")
	.dwattr $C$DW$126, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$126, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$23

$C$DW$T$24	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_AnactrlRegs")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
$C$DW$127	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$24)
$C$DW$128	.dwtag  DW_TAG_TI_ioport_type
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$127)
$C$DW$T$25	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$128)
$C$DW$T$26	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_address_class(0x10)
$C$DW$T$27	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SarRegsOvly")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)

$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x03)
$C$DW$129	.dwtag  DW_TAG_member
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$129, DW_AT_name("baseAddr")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_baseAddr")
	.dwattr $C$DW$129, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$129, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$130	.dwtag  DW_TAG_member
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$130, DW_AT_name("chanNo")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("_chanNo")
	.dwattr $C$DW$130, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$130, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$131	.dwtag  DW_TAG_member
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$131, DW_AT_name("status")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$131, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$131, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$28

$C$DW$T$52	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SarHandleObj")
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$52, DW_AT_language(DW_LANG_C)
$C$DW$T$53	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$T$53, DW_AT_address_class(0x17)
$C$DW$T$54	.dwtag  DW_TAG_typedef, DW_AT_name("SAR_Handle")
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$T$54, DW_AT_language(DW_LANG_C)

$C$DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x04)
$C$DW$132	.dwtag  DW_TAG_member
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$132, DW_AT_name("SARCTRL")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("_SARCTRL")
	.dwattr $C$DW$132, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$132, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$133	.dwtag  DW_TAG_member
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$133, DW_AT_name("SARCLKCTRL")
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("_SARCLKCTRL")
	.dwattr $C$DW$133, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$133, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$134	.dwtag  DW_TAG_member
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$134, DW_AT_name("SARPINCTRL")
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("_SARPINCTRL")
	.dwattr $C$DW$134, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$134, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$135	.dwtag  DW_TAG_member
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$135, DW_AT_name("SARGPOCTRL")
	.dwattr $C$DW$135, DW_AT_TI_symbol_name("_SARGPOCTRL")
	.dwattr $C$DW$135, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$135, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$29

$C$DW$T$55	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SarChConfig")
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$55, DW_AT_language(DW_LANG_C)
$C$DW$T$56	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$T$56, DW_AT_address_class(0x17)

$C$DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x04)
$C$DW$136	.dwtag  DW_TAG_member
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$136, DW_AT_name("SysClkDiv")
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("_SysClkDiv")
	.dwattr $C$DW$136, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$136, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$137	.dwtag  DW_TAG_member
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$137, DW_AT_name("OpMode")
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("_OpMode")
	.dwattr $C$DW$137, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$137, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$138	.dwtag  DW_TAG_member
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$138, DW_AT_name("MultiCh")
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("_MultiCh")
	.dwattr $C$DW$138, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$138, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$139	.dwtag  DW_TAG_member
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$139, DW_AT_name("RefVoltage")
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_RefVoltage")
	.dwattr $C$DW$139, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$139, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$36

$C$DW$T$57	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SarChSetup")
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$57, DW_AT_language(DW_LANG_C)
$C$DW$T$58	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$58, DW_AT_address_class(0x17)

$C$DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x48)
$C$DW$140	.dwtag  DW_TAG_member
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$140, DW_AT_name("EBSR")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_EBSR")
	.dwattr $C$DW$140, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$140, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$141	.dwtag  DW_TAG_member
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$141, DW_AT_name("RSVD0")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$141, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$141, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$142	.dwtag  DW_TAG_member
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$142, DW_AT_name("PCGCR1")
	.dwattr $C$DW$142, DW_AT_TI_symbol_name("_PCGCR1")
	.dwattr $C$DW$142, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$142, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$143	.dwtag  DW_TAG_member
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$143, DW_AT_name("PCGCR2")
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("_PCGCR2")
	.dwattr $C$DW$143, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$143, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$144	.dwtag  DW_TAG_member
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$144, DW_AT_name("PSRCR")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_PSRCR")
	.dwattr $C$DW$144, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$144, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$145	.dwtag  DW_TAG_member
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$145, DW_AT_name("PRCR")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_PRCR")
	.dwattr $C$DW$145, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$145, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$146	.dwtag  DW_TAG_member
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$146, DW_AT_name("RSVD1")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("_RSVD1")
	.dwattr $C$DW$146, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$146, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$147	.dwtag  DW_TAG_member
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$147, DW_AT_name("TIAFR")
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("_TIAFR")
	.dwattr $C$DW$147, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$147, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$148	.dwtag  DW_TAG_member
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$148, DW_AT_name("RSVD2")
	.dwattr $C$DW$148, DW_AT_TI_symbol_name("_RSVD2")
	.dwattr $C$DW$148, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$148, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$149	.dwtag  DW_TAG_member
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$149, DW_AT_name("ODSCR")
	.dwattr $C$DW$149, DW_AT_TI_symbol_name("_ODSCR")
	.dwattr $C$DW$149, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$149, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$150	.dwtag  DW_TAG_member
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$150, DW_AT_name("PDINHIBR1")
	.dwattr $C$DW$150, DW_AT_TI_symbol_name("_PDINHIBR1")
	.dwattr $C$DW$150, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$150, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$151	.dwtag  DW_TAG_member
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$151, DW_AT_name("PDINHIBR2")
	.dwattr $C$DW$151, DW_AT_TI_symbol_name("_PDINHIBR2")
	.dwattr $C$DW$151, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$151, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$152	.dwtag  DW_TAG_member
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$152, DW_AT_name("PDINHIBR3")
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("_PDINHIBR3")
	.dwattr $C$DW$152, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$152, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$153	.dwtag  DW_TAG_member
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$153, DW_AT_name("DMA0CESR1")
	.dwattr $C$DW$153, DW_AT_TI_symbol_name("_DMA0CESR1")
	.dwattr $C$DW$153, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$153, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$154	.dwtag  DW_TAG_member
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$154, DW_AT_name("DMA0CESR2")
	.dwattr $C$DW$154, DW_AT_TI_symbol_name("_DMA0CESR2")
	.dwattr $C$DW$154, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr $C$DW$154, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$155	.dwtag  DW_TAG_member
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$155, DW_AT_name("DMA1CESR1")
	.dwattr $C$DW$155, DW_AT_TI_symbol_name("_DMA1CESR1")
	.dwattr $C$DW$155, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$155, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$156	.dwtag  DW_TAG_member
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$156, DW_AT_name("DMA1CESR2")
	.dwattr $C$DW$156, DW_AT_TI_symbol_name("_DMA1CESR2")
	.dwattr $C$DW$156, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr $C$DW$156, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$157	.dwtag  DW_TAG_member
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$157, DW_AT_name("CCR1")
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("_CCR1")
	.dwattr $C$DW$157, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$157, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$158	.dwtag  DW_TAG_member
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$158, DW_AT_name("CCR2")
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("_CCR2")
	.dwattr $C$DW$158, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr $C$DW$158, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$159	.dwtag  DW_TAG_member
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$159, DW_AT_name("CGCR1")
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("_CGCR1")
	.dwattr $C$DW$159, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$159, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$160	.dwtag  DW_TAG_member
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$160, DW_AT_name("CGCR2")
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("_CGCR2")
	.dwattr $C$DW$160, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr $C$DW$160, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$161	.dwtag  DW_TAG_member
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$161, DW_AT_name("CGCR3")
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("_CGCR3")
	.dwattr $C$DW$161, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$161, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$162	.dwtag  DW_TAG_member
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$162, DW_AT_name("CGCR4")
	.dwattr $C$DW$162, DW_AT_TI_symbol_name("_CGCR4")
	.dwattr $C$DW$162, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr $C$DW$162, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$163	.dwtag  DW_TAG_member
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$163, DW_AT_name("CCSSR")
	.dwattr $C$DW$163, DW_AT_TI_symbol_name("_CCSSR")
	.dwattr $C$DW$163, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$163, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$164	.dwtag  DW_TAG_member
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$164, DW_AT_name("RSVD3")
	.dwattr $C$DW$164, DW_AT_TI_symbol_name("_RSVD3")
	.dwattr $C$DW$164, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr $C$DW$164, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$165	.dwtag  DW_TAG_member
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$165, DW_AT_name("ECDR")
	.dwattr $C$DW$165, DW_AT_TI_symbol_name("_ECDR")
	.dwattr $C$DW$165, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$165, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$166	.dwtag  DW_TAG_member
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$166, DW_AT_name("RSVD4")
	.dwattr $C$DW$166, DW_AT_TI_symbol_name("_RSVD4")
	.dwattr $C$DW$166, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr $C$DW$166, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$167	.dwtag  DW_TAG_member
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$167, DW_AT_name("RAMSLPMDCNTLR1")
	.dwattr $C$DW$167, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR1")
	.dwattr $C$DW$167, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$167, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$168	.dwtag  DW_TAG_member
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$168, DW_AT_name("RSVD5")
	.dwattr $C$DW$168, DW_AT_TI_symbol_name("_RSVD5")
	.dwattr $C$DW$168, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr $C$DW$168, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$169	.dwtag  DW_TAG_member
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$169, DW_AT_name("RAMSLPMDCNTLR2")
	.dwattr $C$DW$169, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR2")
	.dwattr $C$DW$169, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$169, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$170	.dwtag  DW_TAG_member
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$170, DW_AT_name("RAMSLPMDCNTLR3")
	.dwattr $C$DW$170, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR3")
	.dwattr $C$DW$170, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr $C$DW$170, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$171	.dwtag  DW_TAG_member
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$171, DW_AT_name("RAMSLPMDCNTLR4")
	.dwattr $C$DW$171, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR4")
	.dwattr $C$DW$171, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$171, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$172	.dwtag  DW_TAG_member
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$172, DW_AT_name("RAMSLPMDCNTLR5")
	.dwattr $C$DW$172, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR5")
	.dwattr $C$DW$172, DW_AT_data_member_location[DW_OP_plus_uconst 0x2d]
	.dwattr $C$DW$172, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$173	.dwtag  DW_TAG_member
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$173, DW_AT_name("RSVD6")
	.dwattr $C$DW$173, DW_AT_TI_symbol_name("_RSVD6")
	.dwattr $C$DW$173, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr $C$DW$173, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$174	.dwtag  DW_TAG_member
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$174, DW_AT_name("DMAIFR")
	.dwattr $C$DW$174, DW_AT_TI_symbol_name("_DMAIFR")
	.dwattr $C$DW$174, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$174, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$175	.dwtag  DW_TAG_member
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$175, DW_AT_name("DMAIER")
	.dwattr $C$DW$175, DW_AT_TI_symbol_name("_DMAIER")
	.dwattr $C$DW$175, DW_AT_data_member_location[DW_OP_plus_uconst 0x31]
	.dwattr $C$DW$175, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$176	.dwtag  DW_TAG_member
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$176, DW_AT_name("USBSCR")
	.dwattr $C$DW$176, DW_AT_TI_symbol_name("_USBSCR")
	.dwattr $C$DW$176, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$176, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$177	.dwtag  DW_TAG_member
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$177, DW_AT_name("ESCR")
	.dwattr $C$DW$177, DW_AT_TI_symbol_name("_ESCR")
	.dwattr $C$DW$177, DW_AT_data_member_location[DW_OP_plus_uconst 0x33]
	.dwattr $C$DW$177, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$178	.dwtag  DW_TAG_member
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$178, DW_AT_name("RSVD7")
	.dwattr $C$DW$178, DW_AT_TI_symbol_name("_RSVD7")
	.dwattr $C$DW$178, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$178, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$179	.dwtag  DW_TAG_member
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$179, DW_AT_name("DMA2CESR1")
	.dwattr $C$DW$179, DW_AT_TI_symbol_name("_DMA2CESR1")
	.dwattr $C$DW$179, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$179, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$180	.dwtag  DW_TAG_member
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$180, DW_AT_name("DMA2CESR2")
	.dwattr $C$DW$180, DW_AT_TI_symbol_name("_DMA2CESR2")
	.dwattr $C$DW$180, DW_AT_data_member_location[DW_OP_plus_uconst 0x37]
	.dwattr $C$DW$180, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$181	.dwtag  DW_TAG_member
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$181, DW_AT_name("DMA3CESR1")
	.dwattr $C$DW$181, DW_AT_TI_symbol_name("_DMA3CESR1")
	.dwattr $C$DW$181, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$181, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$182	.dwtag  DW_TAG_member
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$182, DW_AT_name("DMA3CESR2")
	.dwattr $C$DW$182, DW_AT_TI_symbol_name("_DMA3CESR2")
	.dwattr $C$DW$182, DW_AT_data_member_location[DW_OP_plus_uconst 0x39]
	.dwattr $C$DW$182, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$183	.dwtag  DW_TAG_member
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$183, DW_AT_name("CLKSTOP")
	.dwattr $C$DW$183, DW_AT_TI_symbol_name("_CLKSTOP")
	.dwattr $C$DW$183, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr $C$DW$183, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$184	.dwtag  DW_TAG_member
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$184, DW_AT_name("RSVD8")
	.dwattr $C$DW$184, DW_AT_TI_symbol_name("_RSVD8")
	.dwattr $C$DW$184, DW_AT_data_member_location[DW_OP_plus_uconst 0x3b]
	.dwattr $C$DW$184, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$185	.dwtag  DW_TAG_member
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$185, DW_AT_name("DIEIDR0")
	.dwattr $C$DW$185, DW_AT_TI_symbol_name("_DIEIDR0")
	.dwattr $C$DW$185, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$185, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$186	.dwtag  DW_TAG_member
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$186, DW_AT_name("DIEIDR1")
	.dwattr $C$DW$186, DW_AT_TI_symbol_name("_DIEIDR1")
	.dwattr $C$DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr $C$DW$186, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$187	.dwtag  DW_TAG_member
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$187, DW_AT_name("DIEIDR2")
	.dwattr $C$DW$187, DW_AT_TI_symbol_name("_DIEIDR2")
	.dwattr $C$DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr $C$DW$187, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$188	.dwtag  DW_TAG_member
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$188, DW_AT_name("DIEIDR3")
	.dwattr $C$DW$188, DW_AT_TI_symbol_name("_DIEIDR3")
	.dwattr $C$DW$188, DW_AT_data_member_location[DW_OP_plus_uconst 0x43]
	.dwattr $C$DW$188, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$189	.dwtag  DW_TAG_member
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$189, DW_AT_name("DIEIDR4")
	.dwattr $C$DW$189, DW_AT_TI_symbol_name("_DIEIDR4")
	.dwattr $C$DW$189, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$189, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$190	.dwtag  DW_TAG_member
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$190, DW_AT_name("DIEIDR5")
	.dwattr $C$DW$190, DW_AT_TI_symbol_name("_DIEIDR5")
	.dwattr $C$DW$190, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr $C$DW$190, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$191	.dwtag  DW_TAG_member
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$191, DW_AT_name("DIEIDR6")
	.dwattr $C$DW$191, DW_AT_TI_symbol_name("_DIEIDR6")
	.dwattr $C$DW$191, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr $C$DW$191, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$192	.dwtag  DW_TAG_member
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$192, DW_AT_name("DIEIDR7")
	.dwattr $C$DW$192, DW_AT_TI_symbol_name("_DIEIDR7")
	.dwattr $C$DW$192, DW_AT_data_member_location[DW_OP_plus_uconst 0x47]
	.dwattr $C$DW$192, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$40

$C$DW$T$59	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SysRegs")
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$59, DW_AT_language(DW_LANG_C)
$C$DW$193	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$59)
$C$DW$194	.dwtag  DW_TAG_TI_ioport_type
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$193)
$C$DW$T$60	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$194)
$C$DW$T$61	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$61, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$T$61, DW_AT_address_class(0x10)
$C$DW$T$62	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SysRegsOvly")
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$T$62, DW_AT_language(DW_LANG_C)
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
$C$DW$T$63	.dwtag  DW_TAG_typedef, DW_AT_name("Int16")
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$63, DW_AT_language(DW_LANG_C)
$C$DW$T$64	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_Status")
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$64, DW_AT_language(DW_LANG_C)
$C$DW$T$75	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$75, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$75, DW_AT_address_class(0x17)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)
$C$DW$T$76	.dwtag  DW_TAG_typedef, DW_AT_name("Bool")
	.dwattr $C$DW$T$76, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$76, DW_AT_language(DW_LANG_C)
$C$DW$195	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$76)
$C$DW$T$77	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$77, DW_AT_type(*$C$DW$195)
$C$DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
$C$DW$196	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$19)
$C$DW$T$20	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$196)

$C$DW$T$21	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x04)
$C$DW$197	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$197, DW_AT_upper_bound(0x03)
	.dwendtag $C$DW$T$21


$C$DW$T$22	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x0d)
$C$DW$198	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$198, DW_AT_upper_bound(0x0c)
	.dwendtag $C$DW$T$22


$C$DW$T$37	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x0e)
$C$DW$199	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$199, DW_AT_upper_bound(0x0d)
	.dwendtag $C$DW$T$37


$C$DW$T$38	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$38, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x02)
$C$DW$200	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$200, DW_AT_upper_bound(0x01)
	.dwendtag $C$DW$T$38


$C$DW$T$39	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$39, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x05)
$C$DW$201	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$201, DW_AT_upper_bound(0x04)
	.dwendtag $C$DW$T$39

$C$DW$T$71	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$71, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$71, DW_AT_address_class(0x17)
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

$C$DW$202	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$202, DW_AT_location[DW_OP_reg0]
$C$DW$203	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$203, DW_AT_location[DW_OP_reg1]
$C$DW$204	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$204, DW_AT_location[DW_OP_reg2]
$C$DW$205	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$205, DW_AT_location[DW_OP_reg3]
$C$DW$206	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$206, DW_AT_location[DW_OP_reg4]
$C$DW$207	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$207, DW_AT_location[DW_OP_reg5]
$C$DW$208	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$208, DW_AT_location[DW_OP_reg6]
$C$DW$209	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$209, DW_AT_location[DW_OP_reg7]
$C$DW$210	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$210, DW_AT_location[DW_OP_reg8]
$C$DW$211	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$211, DW_AT_location[DW_OP_reg9]
$C$DW$212	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$212, DW_AT_location[DW_OP_reg10]
$C$DW$213	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$213, DW_AT_location[DW_OP_reg11]
$C$DW$214	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$214, DW_AT_location[DW_OP_reg12]
$C$DW$215	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$215, DW_AT_location[DW_OP_reg13]
$C$DW$216	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$216, DW_AT_location[DW_OP_reg14]
$C$DW$217	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$217, DW_AT_location[DW_OP_reg15]
$C$DW$218	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$218, DW_AT_location[DW_OP_reg16]
$C$DW$219	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$219, DW_AT_location[DW_OP_reg17]
$C$DW$220	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$220, DW_AT_location[DW_OP_reg18]
$C$DW$221	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$221, DW_AT_location[DW_OP_reg19]
$C$DW$222	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$222, DW_AT_location[DW_OP_reg20]
$C$DW$223	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$223, DW_AT_location[DW_OP_reg21]
$C$DW$224	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$224, DW_AT_location[DW_OP_reg22]
$C$DW$225	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$225, DW_AT_location[DW_OP_reg23]
$C$DW$226	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$226, DW_AT_location[DW_OP_reg24]
$C$DW$227	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$227, DW_AT_location[DW_OP_reg25]
$C$DW$228	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$228, DW_AT_location[DW_OP_reg26]
$C$DW$229	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$229, DW_AT_location[DW_OP_reg27]
$C$DW$230	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$230, DW_AT_location[DW_OP_reg28]
$C$DW$231	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$231, DW_AT_location[DW_OP_reg29]
$C$DW$232	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$232, DW_AT_location[DW_OP_reg30]
$C$DW$233	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$233, DW_AT_location[DW_OP_reg31]
$C$DW$234	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$234, DW_AT_location[DW_OP_regx 0x20]
$C$DW$235	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$235, DW_AT_location[DW_OP_regx 0x21]
$C$DW$236	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$236, DW_AT_location[DW_OP_regx 0x22]
$C$DW$237	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$237, DW_AT_location[DW_OP_regx 0x23]
$C$DW$238	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$238, DW_AT_location[DW_OP_regx 0x24]
$C$DW$239	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$239, DW_AT_location[DW_OP_regx 0x25]
$C$DW$240	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$240, DW_AT_location[DW_OP_regx 0x26]
$C$DW$241	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$241, DW_AT_location[DW_OP_regx 0x27]
$C$DW$242	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$242, DW_AT_location[DW_OP_regx 0x28]
$C$DW$243	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$243, DW_AT_location[DW_OP_regx 0x29]
$C$DW$244	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$244, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$245	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$245, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$246	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$246, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$247	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$247, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$248	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$248, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$249	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$249, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$250	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$250, DW_AT_location[DW_OP_regx 0x30]
$C$DW$251	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$251, DW_AT_location[DW_OP_regx 0x31]
$C$DW$252	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$252, DW_AT_location[DW_OP_regx 0x32]
$C$DW$253	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$253, DW_AT_location[DW_OP_regx 0x33]
$C$DW$254	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$254, DW_AT_location[DW_OP_regx 0x34]
$C$DW$255	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$255, DW_AT_location[DW_OP_regx 0x35]
$C$DW$256	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$256, DW_AT_location[DW_OP_regx 0x36]
$C$DW$257	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$257, DW_AT_location[DW_OP_regx 0x37]
$C$DW$258	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$258, DW_AT_location[DW_OP_regx 0x38]
$C$DW$259	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$259, DW_AT_location[DW_OP_regx 0x39]
$C$DW$260	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$260, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$261	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$261, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$262	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$262, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$263	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$263, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$264	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$264, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$265	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$265, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$266	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$266, DW_AT_location[DW_OP_regx 0x40]
$C$DW$267	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$267, DW_AT_location[DW_OP_regx 0x41]
$C$DW$268	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$268, DW_AT_location[DW_OP_regx 0x42]
$C$DW$269	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$269, DW_AT_location[DW_OP_regx 0x43]
$C$DW$270	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$270, DW_AT_location[DW_OP_regx 0x44]
$C$DW$271	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$271, DW_AT_location[DW_OP_regx 0x45]
$C$DW$272	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$272, DW_AT_location[DW_OP_regx 0x46]
$C$DW$273	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$273, DW_AT_location[DW_OP_regx 0x47]
$C$DW$274	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$274, DW_AT_location[DW_OP_regx 0x48]
$C$DW$275	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$275, DW_AT_location[DW_OP_regx 0x49]
$C$DW$276	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$276, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$277	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$277, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$278	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$278, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$279	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$279, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$280	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$280, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$281	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$281, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$282	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$282, DW_AT_location[DW_OP_regx 0x50]
$C$DW$283	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$283, DW_AT_location[DW_OP_regx 0x51]
$C$DW$284	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$284, DW_AT_location[DW_OP_regx 0x52]
$C$DW$285	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$285, DW_AT_location[DW_OP_regx 0x53]
$C$DW$286	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$286, DW_AT_location[DW_OP_regx 0x54]
$C$DW$287	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$287, DW_AT_location[DW_OP_regx 0x55]
$C$DW$288	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$288, DW_AT_location[DW_OP_regx 0x56]
$C$DW$289	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$289, DW_AT_location[DW_OP_regx 0x57]
$C$DW$290	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$290, DW_AT_location[DW_OP_regx 0x58]
$C$DW$291	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$291, DW_AT_location[DW_OP_regx 0x59]
$C$DW$292	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$292, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$293	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$293, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

