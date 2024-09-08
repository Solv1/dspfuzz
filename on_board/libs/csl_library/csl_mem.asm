;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                        Unix v4.4.1 *
;* Date/Time created: Thu May  2 04:44:01 2024                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("src/csl_mem.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen Unix v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/santiago/dspfuzz/on_board/library")
;	/home/santiago/ti/55x_Tools/bin/acp55 -@/tmp/174398ZthJB 
	.sect	".text"
	.global	_MEM_init

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("MEM_init")
	.dwattr $C$DW$1, DW_AT_low_pc(_MEM_init)
	.dwattr $C$DW$1, DW_AT_high_pc(0x00)
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_MEM_init")
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1, DW_AT_TI_begin_file("src/csl_mem.c")
	.dwattr $C$DW$1, DW_AT_TI_begin_line(0x5c)
	.dwattr $C$DW$1, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$1, DW_AT_TI_max_frame_size(0x01)
	.dwpsn	file "src/csl_mem.c",line 93,column 1,is_stmt,address _MEM_init

	.dwfde $C$DW$CIE, _MEM_init
;*******************************************************************************
;* FUNCTION NAME: MEM_init                                                     *
;*                                                                             *
;*   Function Uses Regs : T0,SP,M40,SATA,SATD,RDM,FRCT,SMUL                    *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 1 word                                               *
;*                        (1 return address/alignment)                         *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MEM_init:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
	.dwpsn	file "src/csl_mem.c",line 94,column 2,is_stmt
        MOV #0, T0
	.dwpsn	file "src/csl_mem.c",line 95,column 1,is_stmt
$C$DW$2	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$2, DW_AT_low_pc(0x00)
	.dwattr $C$DW$2, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$1, DW_AT_TI_end_file("src/csl_mem.c")
	.dwattr $C$DW$1, DW_AT_TI_end_line(0x5f)
	.dwattr $C$DW$1, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$1

	.sect	".text"
	.global	_MEM_enableRetentionMode

$C$DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("MEM_enableRetentionMode")
	.dwattr $C$DW$3, DW_AT_low_pc(_MEM_enableRetentionMode)
	.dwattr $C$DW$3, DW_AT_high_pc(0x00)
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_MEM_enableRetentionMode")
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$3, DW_AT_TI_begin_file("src/csl_mem.c")
	.dwattr $C$DW$3, DW_AT_TI_begin_line(0x89)
	.dwattr $C$DW$3, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$3, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_mem.c",line 138,column 1,is_stmt,address _MEM_enableRetentionMode

	.dwfde $C$DW$CIE, _MEM_enableRetentionMode
$C$DW$4	.dwtag  DW_TAG_formal_parameter, DW_AT_name("memType")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_memType")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$4, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: MEM_enableRetentionMode                                      *
;*                                                                             *
;*   Function Uses Regs : T0,AR1,AR2,SP,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MEM_enableRetentionMode:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$5	.dwtag  DW_TAG_variable, DW_AT_name("memType")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_memType")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$6	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_bregx 0x24 1]
        MOV T0, *SP(#0) ; |138| 
	.dwpsn	file "src/csl_mem.c",line 141,column 2,is_stmt
        MOV #0, *SP(#1) ; |141| 
	.dwpsn	file "src/csl_mem.c",line 146,column 2,is_stmt

        MOV *SP(#0), AR1 ; |146| 
||      MOV #1, AR2

        CMP AR2 != AR1, TC1 ; |146| 
        BCC $C$L1,TC1 ; |146| 
                                        ; branchcc occurs ; |146| 
	.dwpsn	file "src/csl_mem.c",line 150,column 3,is_stmt
        MOV #43690, *port(#7210) ; |150| 
	.dwpsn	file "src/csl_mem.c",line 151,column 3,is_stmt
        MOV #43690, *port(#7211) ; |151| 
	.dwpsn	file "src/csl_mem.c",line 152,column 3,is_stmt
        MOV #43690, *port(#7212) ; |152| 
	.dwpsn	file "src/csl_mem.c",line 153,column 3,is_stmt
        MOV #43690, *port(#7213) ; |153| 
	.dwpsn	file "src/csl_mem.c",line 154,column 2,is_stmt
        B $C$L3   ; |154| 
                                        ; branch occurs ; |154| 
$C$L1:    
	.dwpsn	file "src/csl_mem.c",line 155,column 7,is_stmt
        MOV #0, AR2
        CMP AR2 != AR1, TC1 ; |155| 
        BCC $C$L2,TC1 ; |155| 
                                        ; branchcc occurs ; |155| 
	.dwpsn	file "src/csl_mem.c",line 159,column 3,is_stmt
        MOV #43690, *port(#7208) ; |159| 
	.dwpsn	file "src/csl_mem.c",line 160,column 2,is_stmt
        B $C$L3   ; |160| 
                                        ; branch occurs ; |160| 
$C$L2:    
	.dwpsn	file "src/csl_mem.c",line 163,column 3,is_stmt
        MOV #-6, *SP(#1) ; |163| 
$C$L3:    
	.dwpsn	file "src/csl_mem.c",line 193,column 2,is_stmt
        MOV *SP(#1), T0 ; |193| 
	.dwpsn	file "src/csl_mem.c",line 194,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$7	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$7, DW_AT_low_pc(0x00)
	.dwattr $C$DW$7, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$3, DW_AT_TI_end_file("src/csl_mem.c")
	.dwattr $C$DW$3, DW_AT_TI_end_line(0xc2)
	.dwattr $C$DW$3, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$3

	.sect	".text"
	.global	_MEM_disableRetentionMode

$C$DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("MEM_disableRetentionMode")
	.dwattr $C$DW$8, DW_AT_low_pc(_MEM_disableRetentionMode)
	.dwattr $C$DW$8, DW_AT_high_pc(0x00)
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_MEM_disableRetentionMode")
	.dwattr $C$DW$8, DW_AT_external
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$8, DW_AT_TI_begin_file("src/csl_mem.c")
	.dwattr $C$DW$8, DW_AT_TI_begin_line(0xe9)
	.dwattr $C$DW$8, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$8, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_mem.c",line 234,column 1,is_stmt,address _MEM_disableRetentionMode

	.dwfde $C$DW$CIE, _MEM_disableRetentionMode
$C$DW$9	.dwtag  DW_TAG_formal_parameter, DW_AT_name("memType")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_memType")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: MEM_disableRetentionMode                                     *
;*                                                                             *
;*   Function Uses Regs : T0,AR1,AR2,SP,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MEM_disableRetentionMode:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$10	.dwtag  DW_TAG_variable, DW_AT_name("memType")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_memType")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$11	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_bregx 0x24 1]
        MOV T0, *SP(#0) ; |234| 
	.dwpsn	file "src/csl_mem.c",line 237,column 2,is_stmt
        MOV #0, *SP(#1) ; |237| 
	.dwpsn	file "src/csl_mem.c",line 242,column 2,is_stmt

        MOV *SP(#0), AR1 ; |242| 
||      MOV #1, AR2

        CMP AR2 != AR1, TC1 ; |242| 
        BCC $C$L4,TC1 ; |242| 
                                        ; branchcc occurs ; |242| 
	.dwpsn	file "src/csl_mem.c",line 246,column 3,is_stmt
        MOV #65535, *port(#7210) ; |246| 
	.dwpsn	file "src/csl_mem.c",line 247,column 3,is_stmt
        MOV #65535, *port(#7211) ; |247| 
	.dwpsn	file "src/csl_mem.c",line 248,column 3,is_stmt
        MOV #65535, *port(#7212) ; |248| 
	.dwpsn	file "src/csl_mem.c",line 249,column 3,is_stmt
        MOV #65535, *port(#7213) ; |249| 
	.dwpsn	file "src/csl_mem.c",line 250,column 2,is_stmt
        B $C$L6   ; |250| 
                                        ; branch occurs ; |250| 
$C$L4:    
	.dwpsn	file "src/csl_mem.c",line 251,column 7,is_stmt
        MOV #0, AR2
        CMP AR2 != AR1, TC1 ; |251| 
        BCC $C$L5,TC1 ; |251| 
                                        ; branchcc occurs ; |251| 
	.dwpsn	file "src/csl_mem.c",line 256,column 3,is_stmt
        MOV #65535, *port(#7208) ; |256| 
	.dwpsn	file "src/csl_mem.c",line 257,column 2,is_stmt
        B $C$L6   ; |257| 
                                        ; branch occurs ; |257| 
$C$L5:    
	.dwpsn	file "src/csl_mem.c",line 260,column 3,is_stmt
        MOV #-6, *SP(#1) ; |260| 
$C$L6:    
	.dwpsn	file "src/csl_mem.c",line 290,column 2,is_stmt
        MOV *SP(#1), T0 ; |290| 
	.dwpsn	file "src/csl_mem.c",line 291,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$12	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$12, DW_AT_low_pc(0x00)
	.dwattr $C$DW$12, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$8, DW_AT_TI_end_file("src/csl_mem.c")
	.dwattr $C$DW$8, DW_AT_TI_end_line(0x123)
	.dwattr $C$DW$8, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$8

	.sect	".text"
	.global	_MEM_enablePartialRetentionMode

$C$DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("MEM_enablePartialRetentionMode")
	.dwattr $C$DW$13, DW_AT_low_pc(_MEM_enablePartialRetentionMode)
	.dwattr $C$DW$13, DW_AT_high_pc(0x00)
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_MEM_enablePartialRetentionMode")
	.dwattr $C$DW$13, DW_AT_external
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$13, DW_AT_TI_begin_file("src/csl_mem.c")
	.dwattr $C$DW$13, DW_AT_TI_begin_line(0x177)
	.dwattr $C$DW$13, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$13, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "src/csl_mem.c",line 378,column 1,is_stmt,address _MEM_enablePartialRetentionMode

	.dwfde $C$DW$CIE, _MEM_enablePartialRetentionMode
$C$DW$14	.dwtag  DW_TAG_formal_parameter, DW_AT_name("memType")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_memType")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_reg12]
$C$DW$15	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bankNumber")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_bankNumber")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_reg13]
$C$DW$16	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bankMask")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_bankMask")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_reg0]
;*******************************************************************************
;* FUNCTION NAME: MEM_enablePartialRetentionMode                               *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR1,AR2,AR3,SP,CARRY,TC1,M40,  *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (10 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MEM_enablePartialRetentionMode:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-11, SP
	.dwcfi	cfa_offset, 12
$C$DW$17	.dwtag  DW_TAG_variable, DW_AT_name("memType")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_memType")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$18	.dwtag  DW_TAG_variable, DW_AT_name("bankNumber")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_bankNumber")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$19	.dwtag  DW_TAG_variable, DW_AT_name("bankMask")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_bankMask")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$20	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$21	.dwtag  DW_TAG_variable, DW_AT_name("regOffset")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_regOffset")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$22	.dwtag  DW_TAG_variable, DW_AT_name("regShift")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_regShift")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$23	.dwtag  DW_TAG_variable, DW_AT_name("count")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_count")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$24	.dwtag  DW_TAG_variable, DW_AT_name("maxBankCount")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_maxBankCount")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$25	.dwtag  DW_TAG_variable, DW_AT_name("pSleepRegBaseAddr")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_pSleepRegBaseAddr")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_bregx 0x24 9]
        MOV AC0, dbl(*SP(#2)) ; |378| 
        MOV T1, *SP(#1) ; |378| 
        MOV T0, *SP(#0) ; |378| 
	.dwpsn	file "src/csl_mem.c",line 386,column 2,is_stmt
        MOV #0, *SP(#4) ; |386| 
	.dwpsn	file "src/csl_mem.c",line 387,column 2,is_stmt
        MOV #0, *SP(#5) ; |387| 
	.dwpsn	file "src/csl_mem.c",line 388,column 2,is_stmt
        MOV #0, *SP(#6) ; |388| 
	.dwpsn	file "src/csl_mem.c",line 389,column 2,is_stmt
        MOV #0, *SP(#7) ; |389| 
	.dwpsn	file "src/csl_mem.c",line 390,column 2,is_stmt
        MOV #0, *SP(#8) ; |390| 
	.dwpsn	file "src/csl_mem.c",line 391,column 2,is_stmt
        MOV #0, *SP(#9) ; |391| 
	.dwpsn	file "src/csl_mem.c",line 394,column 2,is_stmt

        MOV *SP(#0), AR1 ; |394| 
||      MOV #1, AR2

        CMP AR2 != AR1, TC1 ; |394| 
        BCC $C$L8,TC1 ; |394| 
                                        ; branchcc occurs ; |394| 
	.dwpsn	file "src/csl_mem.c",line 396,column 3,is_stmt

        MOV #0, AC1 ; |396| 
||      MOV dbl(*SP(#2)), AC0 ; |396| 

        CMPU AC1 != AC0, TC1 ; |396| 
        BCC $C$L7,TC1 ; |396| 
                                        ; branchcc occurs ; |396| 
        MOV #31, AR2 ; |396| 
        MOV *SP(#1), AR1 ; |396| 
        CMPU AR1 <= AR2, TC1 ; |396| 
        BCC $C$L7,TC1 ; |396| 
                                        ; branchcc occurs ; |396| 
	.dwpsn	file "src/csl_mem.c",line 398,column 4,is_stmt
        MOV #-6, *SP(#4) ; |398| 
	.dwpsn	file "src/csl_mem.c",line 399,column 3,is_stmt
        B $C$L13  ; |399| 
                                        ; branch occurs ; |399| 
$C$L7:    
	.dwpsn	file "src/csl_mem.c",line 402,column 4,is_stmt
        MOV #7210, *SP(#9) ; |402| 
	.dwpsn	file "src/csl_mem.c",line 403,column 4,is_stmt
        MOV #32, *SP(#8) ; |403| 
	.dwpsn	file "src/csl_mem.c",line 405,column 2,is_stmt
        B $C$L13  ; |405| 
                                        ; branch occurs ; |405| 
$C$L8:    
	.dwpsn	file "src/csl_mem.c",line 406,column 7,is_stmt
        MOV #0, AR2
        CMP AR2 != AR1, TC1 ; |406| 
        BCC $C$L12,TC1 ; |406| 
                                        ; branchcc occurs ; |406| 
	.dwpsn	file "src/csl_mem.c",line 408,column 3,is_stmt

        MOV #0, AC1 ; |408| 
||      MOV dbl(*SP(#2)), AC0 ; |408| 

        CMPU AC1 != AC0, TC1 ; |408| 
        BCC $C$L9,TC1 ; |408| 
                                        ; branchcc occurs ; |408| 

        MOV *SP(#1), AR1 ; |408| 
||      MOV #7, AR2

        CMPU AR1 <= AR2, TC1 ; |408| 
        BCC $C$L10,!TC1 ; |408| 
                                        ; branchcc occurs ; |408| 
$C$L9:    
        MOV #255, AC0 ; |408| 
        MOV dbl(*SP(#2)), AC1 ; |408| 
        CMPU AC1 <= AC0, TC1 ; |408| 
        BCC $C$L11,TC1 ; |408| 
                                        ; branchcc occurs ; |408| 
$C$L10:    
	.dwpsn	file "src/csl_mem.c",line 411,column 4,is_stmt
        MOV #-6, *SP(#4) ; |411| 
	.dwpsn	file "src/csl_mem.c",line 412,column 3,is_stmt
        B $C$L13  ; |412| 
                                        ; branch occurs ; |412| 
$C$L11:    
	.dwpsn	file "src/csl_mem.c",line 415,column 4,is_stmt
        MOV #7208, *SP(#9) ; |415| 
	.dwpsn	file "src/csl_mem.c",line 416,column 4,is_stmt
        MOV #8, *SP(#8) ; |416| 
	.dwpsn	file "src/csl_mem.c",line 418,column 2,is_stmt
        B $C$L13  ; |418| 
                                        ; branch occurs ; |418| 
$C$L12:    
	.dwpsn	file "src/csl_mem.c",line 421,column 3,is_stmt
        MOV #-6, *SP(#4) ; |421| 
$C$L13:    
	.dwpsn	file "src/csl_mem.c",line 425,column 2,is_stmt
        MOV *SP(#4), AR1 ; |425| 
        BCC $C$L17,AR1 != #0 ; |425| 
                                        ; branchcc occurs ; |425| 
	.dwpsn	file "src/csl_mem.c",line 427,column 3,is_stmt

        MOV #0, AC1 ; |427| 
||      MOV dbl(*SP(#2)), AC0 ; |427| 

        CMPU AC1 != AC0, TC1 ; |427| 
        BCC $C$L14,TC1 ; |427| 
                                        ; branchcc occurs ; |427| 
	.dwpsn	file "src/csl_mem.c",line 429,column 4,is_stmt
        MOV uns(*SP(#1)), AC0 ; |429| 
        SFTS AC0, #-3, AC0 ; |429| 
        MOV AC0, *SP(#5) ; |429| 
	.dwpsn	file "src/csl_mem.c",line 430,column 4,is_stmt
        MOV *SP(#1), AR1 ; |430| 
        AND #0x0007, AR1, AC0 ; |430| 
        SFTL AC0, #1 ; |430| 
        MOV AC0, *SP(#6) ; |430| 
	.dwpsn	file "src/csl_mem.c",line 433,column 4,is_stmt
        MOV *SP(#5), T0 ; |433| 
        MOV *SP(#9), AR3 ; |433| 

        MOV #3, AC0
||      MOV *SP(#6), T1 ; |433| 

        SFTS AC0, T1, AC0 ; |433| 
        NOT AC0, AR1 ; |433| 
        AND port(*AR3(T0)), AR1, AC0 ; |433| 
        MOV AC0, port(*AR3(T0)) ; |433| 
	.dwpsn	file "src/csl_mem.c",line 437,column 4,is_stmt
        MOV *SP(#5), T0 ; |437| 
        MOV *SP(#9), AR3 ; |437| 

        MOV *SP(#6), T1 ; |437| 
||      MOV #2, AC0

        SFTS AC0, T1, AC0 ; |437| 
        OR port(*AR3(T0)), AC0, AR1 ; |437| 
        MOV AR1, port(*AR3(T0)) ; |437| 
	.dwpsn	file "src/csl_mem.c",line 439,column 3,is_stmt
        B $C$L17  ; |439| 
                                        ; branch occurs ; |439| 
$C$L14:    
	.dwpsn	file "src/csl_mem.c",line 442,column 4,is_stmt
        MOV #0, *SP(#1) ; |442| 
	.dwpsn	file "src/csl_mem.c",line 444,column 9,is_stmt
        MOV #0, *SP(#7) ; |444| 
	.dwpsn	file "src/csl_mem.c",line 444,column 20,is_stmt
        MOV *SP(#8), AR1 ; |444| 
        MOV *SP(#7), AR2 ; |444| 
        CMPU AR2 >= AR1, TC1 ; |444| 
        BCC $C$L17,TC1 ; |444| 
                                        ; branchcc occurs ; |444| 
$C$L15:    
$C$DW$L$_MEM_enablePartialRetentionMode$17$B:
	.dwpsn	file "src/csl_mem.c",line 446,column 5,is_stmt
        MOV dbl(*SP(#2)), AC1 ; |446| 

        AND #0x0001, AC1, AC1 ; |446| 
||      MOV #1, AC0 ; |446| 

        CMPU AC1 != AC0, TC1 ; |446| 
        BCC $C$L16,TC1 ; |446| 
                                        ; branchcc occurs ; |446| 
$C$DW$L$_MEM_enablePartialRetentionMode$17$E:
$C$DW$L$_MEM_enablePartialRetentionMode$18$B:
	.dwpsn	file "src/csl_mem.c",line 448,column 6,is_stmt
        MOV AR2, AR1
        MOV AR1, *SP(#1) ; |448| 
	.dwpsn	file "src/csl_mem.c",line 450,column 6,is_stmt
        MOV uns(*SP(#1)), AC0 ; |450| 
        SFTS AC0, #-3, AC0 ; |450| 
        MOV AC0, *SP(#5) ; |450| 
	.dwpsn	file "src/csl_mem.c",line 451,column 6,is_stmt
        MOV *SP(#1), AR1 ; |451| 
        AND #0x0007, AR1, AC0 ; |451| 
        SFTL AC0, #1 ; |451| 
        MOV AC0, *SP(#6) ; |451| 
	.dwpsn	file "src/csl_mem.c",line 454,column 6,is_stmt
        MOV *SP(#5), T0 ; |454| 
        MOV *SP(#9), AR3 ; |454| 

        MOV *SP(#6), T1 ; |454| 
||      MOV #3, AC0

        SFTS AC0, T1, AC0 ; |454| 
        NOT AC0, AR1 ; |454| 
        AND port(*AR3(T0)), AR1, AC0 ; |454| 
        MOV AC0, port(*AR3(T0)) ; |454| 
	.dwpsn	file "src/csl_mem.c",line 458,column 6,is_stmt
        MOV *SP(#5), T0 ; |458| 
        MOV *SP(#9), AR3 ; |458| 

        MOV *SP(#6), T1 ; |458| 
||      MOV #2, AC0

        SFTS AC0, T1, AC0 ; |458| 
        OR port(*AR3(T0)), AC0, AR1 ; |458| 
        MOV AR1, port(*AR3(T0)) ; |458| 
$C$DW$L$_MEM_enablePartialRetentionMode$18$E:
$C$L16:    
$C$DW$L$_MEM_enablePartialRetentionMode$19$B:
	.dwpsn	file "src/csl_mem.c",line 462,column 5,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |462| 
        SFTL AC0, #-1 ; |462| 
        MOV AC0, dbl(*SP(#2)) ; |462| 
	.dwpsn	file "src/csl_mem.c",line 464,column 5,is_stmt

        MOV dbl(*SP(#2)), AC0 ; |464| 
||      MOV #0, AC1 ; |464| 

        CMPU AC1 != AC0, TC1 ; |464| 
        BCC $C$L17,!TC1 ; |464| 
                                        ; branchcc occurs ; |464| 
$C$DW$L$_MEM_enablePartialRetentionMode$19$E:
$C$DW$L$_MEM_enablePartialRetentionMode$20$B:
	.dwpsn	file "src/csl_mem.c",line 466,column 6,is_stmt
	.dwpsn	file "src/csl_mem.c",line 444,column 42,is_stmt
        ADD #1, *SP(#7) ; |444| 
	.dwpsn	file "src/csl_mem.c",line 444,column 20,is_stmt
        MOV *SP(#8), AR1 ; |444| 
        MOV *SP(#7), AR2 ; |444| 
        CMPU AR2 < AR1, TC1 ; |444| 
        BCC $C$L15,TC1 ; |444| 
                                        ; branchcc occurs ; |444| 
$C$DW$L$_MEM_enablePartialRetentionMode$20$E:
$C$L17:    
	.dwpsn	file "src/csl_mem.c",line 472,column 2,is_stmt
        MOV *SP(#4), T0 ; |472| 
	.dwpsn	file "src/csl_mem.c",line 473,column 1,is_stmt
        AADD #11, SP
	.dwcfi	cfa_offset, 1
$C$DW$26	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$26, DW_AT_low_pc(0x00)
	.dwattr $C$DW$26, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$27	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$27, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mem.asm:$C$L15:1:1714639441")
	.dwattr $C$DW$27, DW_AT_TI_begin_file("src/csl_mem.c")
	.dwattr $C$DW$27, DW_AT_TI_begin_line(0x1bc)
	.dwattr $C$DW$27, DW_AT_TI_end_line(0x1d4)
$C$DW$28	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$28, DW_AT_low_pc($C$DW$L$_MEM_enablePartialRetentionMode$17$B)
	.dwattr $C$DW$28, DW_AT_high_pc($C$DW$L$_MEM_enablePartialRetentionMode$17$E)
$C$DW$29	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$29, DW_AT_low_pc($C$DW$L$_MEM_enablePartialRetentionMode$18$B)
	.dwattr $C$DW$29, DW_AT_high_pc($C$DW$L$_MEM_enablePartialRetentionMode$18$E)
$C$DW$30	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$30, DW_AT_low_pc($C$DW$L$_MEM_enablePartialRetentionMode$19$B)
	.dwattr $C$DW$30, DW_AT_high_pc($C$DW$L$_MEM_enablePartialRetentionMode$19$E)
$C$DW$31	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$31, DW_AT_low_pc($C$DW$L$_MEM_enablePartialRetentionMode$20$B)
	.dwattr $C$DW$31, DW_AT_high_pc($C$DW$L$_MEM_enablePartialRetentionMode$20$E)
	.dwendtag $C$DW$27

	.dwattr $C$DW$13, DW_AT_TI_end_file("src/csl_mem.c")
	.dwattr $C$DW$13, DW_AT_TI_end_line(0x1d9)
	.dwattr $C$DW$13, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$13

	.sect	".text"
	.global	_MEM_disablePartialRetentionMode

$C$DW$32	.dwtag  DW_TAG_subprogram, DW_AT_name("MEM_disablePartialRetentionMode")
	.dwattr $C$DW$32, DW_AT_low_pc(_MEM_disablePartialRetentionMode)
	.dwattr $C$DW$32, DW_AT_high_pc(0x00)
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_MEM_disablePartialRetentionMode")
	.dwattr $C$DW$32, DW_AT_external
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$32, DW_AT_TI_begin_file("src/csl_mem.c")
	.dwattr $C$DW$32, DW_AT_TI_begin_line(0x226)
	.dwattr $C$DW$32, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$32, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "src/csl_mem.c",line 553,column 1,is_stmt,address _MEM_disablePartialRetentionMode

	.dwfde $C$DW$CIE, _MEM_disablePartialRetentionMode
$C$DW$33	.dwtag  DW_TAG_formal_parameter, DW_AT_name("memType")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_memType")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_reg12]
$C$DW$34	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bankNumber")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_bankNumber")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_reg13]
$C$DW$35	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bankMask")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_bankMask")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_reg0]
;*******************************************************************************
;* FUNCTION NAME: MEM_disablePartialRetentionMode                              *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR1,AR2,AR3,SP,CARRY,TC1,M40,  *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (10 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MEM_disablePartialRetentionMode:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-11, SP
	.dwcfi	cfa_offset, 12
$C$DW$36	.dwtag  DW_TAG_variable, DW_AT_name("memType")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_memType")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$37	.dwtag  DW_TAG_variable, DW_AT_name("bankNumber")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_bankNumber")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$38	.dwtag  DW_TAG_variable, DW_AT_name("bankMask")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_bankMask")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$39	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$40	.dwtag  DW_TAG_variable, DW_AT_name("regOffset")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_regOffset")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$41	.dwtag  DW_TAG_variable, DW_AT_name("regShift")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_regShift")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$42	.dwtag  DW_TAG_variable, DW_AT_name("count")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_count")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$43	.dwtag  DW_TAG_variable, DW_AT_name("maxBankCount")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_maxBankCount")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$44	.dwtag  DW_TAG_variable, DW_AT_name("pSleepRegBaseAddr")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_pSleepRegBaseAddr")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_bregx 0x24 9]
        MOV AC0, dbl(*SP(#2)) ; |553| 
        MOV T1, *SP(#1) ; |553| 
        MOV T0, *SP(#0) ; |553| 
	.dwpsn	file "src/csl_mem.c",line 561,column 2,is_stmt
        MOV #0, *SP(#4) ; |561| 
	.dwpsn	file "src/csl_mem.c",line 562,column 2,is_stmt
        MOV #0, *SP(#5) ; |562| 
	.dwpsn	file "src/csl_mem.c",line 563,column 2,is_stmt
        MOV #0, *SP(#6) ; |563| 
	.dwpsn	file "src/csl_mem.c",line 564,column 2,is_stmt
        MOV #0, *SP(#7) ; |564| 
	.dwpsn	file "src/csl_mem.c",line 565,column 2,is_stmt
        MOV #0, *SP(#8) ; |565| 
	.dwpsn	file "src/csl_mem.c",line 566,column 2,is_stmt
        MOV #0, *SP(#9) ; |566| 
	.dwpsn	file "src/csl_mem.c",line 569,column 2,is_stmt

        MOV *SP(#0), AR1 ; |569| 
||      MOV #1, AR2

        CMP AR2 != AR1, TC1 ; |569| 
        BCC $C$L19,TC1 ; |569| 
                                        ; branchcc occurs ; |569| 
	.dwpsn	file "src/csl_mem.c",line 571,column 3,is_stmt

        MOV #0, AC1 ; |571| 
||      MOV dbl(*SP(#2)), AC0 ; |571| 

        CMPU AC1 != AC0, TC1 ; |571| 
        BCC $C$L18,TC1 ; |571| 
                                        ; branchcc occurs ; |571| 
        MOV #31, AR2 ; |571| 
        MOV *SP(#1), AR1 ; |571| 
        CMPU AR1 <= AR2, TC1 ; |571| 
        BCC $C$L18,TC1 ; |571| 
                                        ; branchcc occurs ; |571| 
	.dwpsn	file "src/csl_mem.c",line 573,column 4,is_stmt
        MOV #-6, *SP(#4) ; |573| 
	.dwpsn	file "src/csl_mem.c",line 574,column 3,is_stmt
        B $C$L24  ; |574| 
                                        ; branch occurs ; |574| 
$C$L18:    
	.dwpsn	file "src/csl_mem.c",line 577,column 4,is_stmt
        MOV #7210, *SP(#9) ; |577| 
	.dwpsn	file "src/csl_mem.c",line 578,column 4,is_stmt
        MOV #32, *SP(#8) ; |578| 
	.dwpsn	file "src/csl_mem.c",line 580,column 2,is_stmt
        B $C$L24  ; |580| 
                                        ; branch occurs ; |580| 
$C$L19:    
	.dwpsn	file "src/csl_mem.c",line 581,column 7,is_stmt
        MOV #0, AR2
        CMP AR2 != AR1, TC1 ; |581| 
        BCC $C$L23,TC1 ; |581| 
                                        ; branchcc occurs ; |581| 
	.dwpsn	file "src/csl_mem.c",line 583,column 3,is_stmt

        MOV #0, AC1 ; |583| 
||      MOV dbl(*SP(#2)), AC0 ; |583| 

        CMPU AC1 != AC0, TC1 ; |583| 
        BCC $C$L20,TC1 ; |583| 
                                        ; branchcc occurs ; |583| 

        MOV *SP(#1), AR1 ; |583| 
||      MOV #7, AR2

        CMPU AR1 <= AR2, TC1 ; |583| 
        BCC $C$L21,!TC1 ; |583| 
                                        ; branchcc occurs ; |583| 
$C$L20:    
        MOV #255, AC0 ; |583| 
        MOV dbl(*SP(#2)), AC1 ; |583| 
        CMPU AC1 <= AC0, TC1 ; |583| 
        BCC $C$L22,TC1 ; |583| 
                                        ; branchcc occurs ; |583| 
$C$L21:    
	.dwpsn	file "src/csl_mem.c",line 586,column 4,is_stmt
        MOV #-6, *SP(#4) ; |586| 
	.dwpsn	file "src/csl_mem.c",line 587,column 3,is_stmt
        B $C$L24  ; |587| 
                                        ; branch occurs ; |587| 
$C$L22:    
	.dwpsn	file "src/csl_mem.c",line 590,column 4,is_stmt
        MOV #7208, *SP(#9) ; |590| 
	.dwpsn	file "src/csl_mem.c",line 591,column 4,is_stmt
        MOV #8, *SP(#8) ; |591| 
	.dwpsn	file "src/csl_mem.c",line 593,column 2,is_stmt
        B $C$L24  ; |593| 
                                        ; branch occurs ; |593| 
$C$L23:    
	.dwpsn	file "src/csl_mem.c",line 596,column 3,is_stmt
        MOV #-6, *SP(#4) ; |596| 
$C$L24:    
	.dwpsn	file "src/csl_mem.c",line 600,column 2,is_stmt
        MOV *SP(#4), AR1 ; |600| 
        BCC $C$L28,AR1 != #0 ; |600| 
                                        ; branchcc occurs ; |600| 
	.dwpsn	file "src/csl_mem.c",line 602,column 3,is_stmt

        MOV #0, AC1 ; |602| 
||      MOV dbl(*SP(#2)), AC0 ; |602| 

        CMPU AC1 != AC0, TC1 ; |602| 
        BCC $C$L25,TC1 ; |602| 
                                        ; branchcc occurs ; |602| 
	.dwpsn	file "src/csl_mem.c",line 604,column 4,is_stmt
        MOV uns(*SP(#1)), AC0 ; |604| 
        SFTS AC0, #-3, AC0 ; |604| 
        MOV AC0, *SP(#5) ; |604| 
	.dwpsn	file "src/csl_mem.c",line 605,column 4,is_stmt
        MOV *SP(#1), AR1 ; |605| 
        AND #0x0007, AR1, AC0 ; |605| 
        SFTL AC0, #1 ; |605| 
        MOV AC0, *SP(#6) ; |605| 
	.dwpsn	file "src/csl_mem.c",line 608,column 4,is_stmt
        MOV *SP(#5), T0 ; |608| 
        MOV *SP(#9), AR3 ; |608| 

        MOV #3, AC0
||      MOV *SP(#6), T1 ; |608| 

        SFTS AC0, T1, AC0 ; |608| 
        OR port(*AR3(T0)), AC0, AR1 ; |608| 
        MOV AR1, port(*AR3(T0)) ; |608| 
	.dwpsn	file "src/csl_mem.c",line 610,column 3,is_stmt
        B $C$L28  ; |610| 
                                        ; branch occurs ; |610| 
$C$L25:    
	.dwpsn	file "src/csl_mem.c",line 613,column 4,is_stmt
        MOV #0, *SP(#1) ; |613| 
	.dwpsn	file "src/csl_mem.c",line 615,column 9,is_stmt
        MOV #0, *SP(#7) ; |615| 
	.dwpsn	file "src/csl_mem.c",line 615,column 20,is_stmt
        MOV *SP(#8), AR1 ; |615| 
        MOV *SP(#7), AR2 ; |615| 
        CMPU AR2 >= AR1, TC1 ; |615| 
        BCC $C$L28,TC1 ; |615| 
                                        ; branchcc occurs ; |615| 
$C$L26:    
$C$DW$L$_MEM_disablePartialRetentionMode$17$B:
	.dwpsn	file "src/csl_mem.c",line 617,column 5,is_stmt
        MOV dbl(*SP(#2)), AC1 ; |617| 

        AND #0x0001, AC1, AC1 ; |617| 
||      MOV #1, AC0 ; |617| 

        CMPU AC1 != AC0, TC1 ; |617| 
        BCC $C$L27,TC1 ; |617| 
                                        ; branchcc occurs ; |617| 
$C$DW$L$_MEM_disablePartialRetentionMode$17$E:
$C$DW$L$_MEM_disablePartialRetentionMode$18$B:
	.dwpsn	file "src/csl_mem.c",line 619,column 6,is_stmt
        MOV AR2, AR1
        MOV AR1, *SP(#1) ; |619| 
	.dwpsn	file "src/csl_mem.c",line 621,column 6,is_stmt
        MOV uns(*SP(#1)), AC0 ; |621| 
        SFTS AC0, #-3, AC0 ; |621| 
        MOV AC0, *SP(#5) ; |621| 
	.dwpsn	file "src/csl_mem.c",line 622,column 6,is_stmt
        MOV *SP(#1), AR1 ; |622| 
        AND #0x0007, AR1, AC0 ; |622| 
        SFTL AC0, #1 ; |622| 
        MOV AC0, *SP(#6) ; |622| 
	.dwpsn	file "src/csl_mem.c",line 625,column 6,is_stmt
        MOV *SP(#5), T0 ; |625| 
        MOV *SP(#9), AR3 ; |625| 

        MOV *SP(#6), T1 ; |625| 
||      MOV #3, AC0

        SFTS AC0, T1, AC0 ; |625| 
        OR port(*AR3(T0)), AC0, AR1 ; |625| 
        MOV AR1, port(*AR3(T0)) ; |625| 
$C$DW$L$_MEM_disablePartialRetentionMode$18$E:
$C$L27:    
$C$DW$L$_MEM_disablePartialRetentionMode$19$B:
	.dwpsn	file "src/csl_mem.c",line 629,column 5,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |629| 
        SFTL AC0, #-1 ; |629| 
        MOV AC0, dbl(*SP(#2)) ; |629| 
	.dwpsn	file "src/csl_mem.c",line 631,column 5,is_stmt

        MOV dbl(*SP(#2)), AC0 ; |631| 
||      MOV #0, AC1 ; |631| 

        CMPU AC1 != AC0, TC1 ; |631| 
        BCC $C$L28,!TC1 ; |631| 
                                        ; branchcc occurs ; |631| 
$C$DW$L$_MEM_disablePartialRetentionMode$19$E:
$C$DW$L$_MEM_disablePartialRetentionMode$20$B:
	.dwpsn	file "src/csl_mem.c",line 633,column 6,is_stmt
	.dwpsn	file "src/csl_mem.c",line 615,column 42,is_stmt
        ADD #1, *SP(#7) ; |615| 
	.dwpsn	file "src/csl_mem.c",line 615,column 20,is_stmt
        MOV *SP(#8), AR1 ; |615| 
        MOV *SP(#7), AR2 ; |615| 
        CMPU AR2 < AR1, TC1 ; |615| 
        BCC $C$L26,TC1 ; |615| 
                                        ; branchcc occurs ; |615| 
$C$DW$L$_MEM_disablePartialRetentionMode$20$E:
$C$L28:    
	.dwpsn	file "src/csl_mem.c",line 639,column 2,is_stmt
        MOV *SP(#4), T0 ; |639| 
	.dwpsn	file "src/csl_mem.c",line 640,column 1,is_stmt
        AADD #11, SP
	.dwcfi	cfa_offset, 1
$C$DW$45	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$45, DW_AT_low_pc(0x00)
	.dwattr $C$DW$45, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$46	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$46, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mem.asm:$C$L26:1:1714639441")
	.dwattr $C$DW$46, DW_AT_TI_begin_file("src/csl_mem.c")
	.dwattr $C$DW$46, DW_AT_TI_begin_line(0x267)
	.dwattr $C$DW$46, DW_AT_TI_end_line(0x27b)
$C$DW$47	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$47, DW_AT_low_pc($C$DW$L$_MEM_disablePartialRetentionMode$17$B)
	.dwattr $C$DW$47, DW_AT_high_pc($C$DW$L$_MEM_disablePartialRetentionMode$17$E)
$C$DW$48	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$48, DW_AT_low_pc($C$DW$L$_MEM_disablePartialRetentionMode$18$B)
	.dwattr $C$DW$48, DW_AT_high_pc($C$DW$L$_MEM_disablePartialRetentionMode$18$E)
$C$DW$49	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$49, DW_AT_low_pc($C$DW$L$_MEM_disablePartialRetentionMode$19$B)
	.dwattr $C$DW$49, DW_AT_high_pc($C$DW$L$_MEM_disablePartialRetentionMode$19$E)
$C$DW$50	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$50, DW_AT_low_pc($C$DW$L$_MEM_disablePartialRetentionMode$20$B)
	.dwattr $C$DW$50, DW_AT_high_pc($C$DW$L$_MEM_disablePartialRetentionMode$20$E)
	.dwendtag $C$DW$46

	.dwattr $C$DW$32, DW_AT_TI_end_file("src/csl_mem.c")
	.dwattr $C$DW$32, DW_AT_TI_end_line(0x280)
	.dwattr $C$DW$32, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$32

	.sect	".text"
	.global	_MEM_setmSDRAMClock

$C$DW$51	.dwtag  DW_TAG_subprogram, DW_AT_name("MEM_setmSDRAMClock")
	.dwattr $C$DW$51, DW_AT_low_pc(_MEM_setmSDRAMClock)
	.dwattr $C$DW$51, DW_AT_high_pc(0x00)
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_MEM_setmSDRAMClock")
	.dwattr $C$DW$51, DW_AT_external
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$51, DW_AT_TI_begin_file("src/csl_mem.c")
	.dwattr $C$DW$51, DW_AT_TI_begin_line(0x2a6)
	.dwattr $C$DW$51, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$51, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_mem.c",line 679,column 1,is_stmt,address _MEM_setmSDRAMClock

	.dwfde $C$DW$CIE, _MEM_setmSDRAMClock
$C$DW$52	.dwtag  DW_TAG_formal_parameter, DW_AT_name("clockSwitch")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_clockSwitch")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: MEM_setmSDRAMClock                                           *
;*                                                                             *
;*   Function Uses Regs : T0,AR1,AR2,SP,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MEM_setmSDRAMClock:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$53	.dwtag  DW_TAG_variable, DW_AT_name("clockSwitch")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_clockSwitch")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$54	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_bregx 0x24 1]
        MOV T0, *SP(#0) ; |679| 
	.dwpsn	file "src/csl_mem.c",line 682,column 2,is_stmt
        MOV #0, *SP(#1) ; |682| 
	.dwpsn	file "src/csl_mem.c",line 684,column 2,is_stmt

        MOV *SP(#0), AR1 ; |684| 
||      MOV #0, AR2

        CMP AR2 != AR1, TC1 ; |684| 
        BCC $C$L29,TC1 ; |684| 
                                        ; branchcc occurs ; |684| 
	.dwpsn	file "src/csl_mem.c",line 686,column 3,is_stmt
        MOV *port(#7198), AR1 ; |686| 
        BCLR @#0, AR1 ; |686| 
        BSET @#0, AR1 ; |686| 
        MOV AR1, *port(#7198) ; |686| 
	.dwpsn	file "src/csl_mem.c",line 687,column 2,is_stmt
        B $C$L31  ; |687| 
                                        ; branch occurs ; |687| 
$C$L29:    
	.dwpsn	file "src/csl_mem.c",line 688,column 7,is_stmt
        MOV #1, AR2
        CMP AR2 != AR1, TC1 ; |688| 
        BCC $C$L30,TC1 ; |688| 
                                        ; branchcc occurs ; |688| 
	.dwpsn	file "src/csl_mem.c",line 690,column 3,is_stmt
        AND #0xfffe, *port(#7198) ; |690| 
	.dwpsn	file "src/csl_mem.c",line 691,column 2,is_stmt
        B $C$L31  ; |691| 
                                        ; branch occurs ; |691| 
$C$L30:    
	.dwpsn	file "src/csl_mem.c",line 694,column 3,is_stmt
        MOV #-6, *SP(#1) ; |694| 
$C$L31:    
	.dwpsn	file "src/csl_mem.c",line 697,column 2,is_stmt
        MOV *SP(#1), T0 ; |697| 
	.dwpsn	file "src/csl_mem.c",line 698,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$55	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$55, DW_AT_low_pc(0x00)
	.dwattr $C$DW$55, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$51, DW_AT_TI_end_file("src/csl_mem.c")
	.dwattr $C$DW$51, DW_AT_TI_end_line(0x2ba)
	.dwattr $C$DW$51, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$51

	.sect	".text"
	.global	_MEM_getmSDRAMClock

$C$DW$56	.dwtag  DW_TAG_subprogram, DW_AT_name("MEM_getmSDRAMClock")
	.dwattr $C$DW$56, DW_AT_low_pc(_MEM_getmSDRAMClock)
	.dwattr $C$DW$56, DW_AT_high_pc(0x00)
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_MEM_getmSDRAMClock")
	.dwattr $C$DW$56, DW_AT_external
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$56, DW_AT_TI_begin_file("src/csl_mem.c")
	.dwattr $C$DW$56, DW_AT_TI_begin_line(0x2dd)
	.dwattr $C$DW$56, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$56, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "src/csl_mem.c",line 734,column 1,is_stmt,address _MEM_getmSDRAMClock

	.dwfde $C$DW$CIE, _MEM_getmSDRAMClock
;*******************************************************************************
;* FUNCTION NAME: MEM_getmSDRAMClock                                           *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR1,SP,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 2 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (1 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MEM_getmSDRAMClock:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-1, SP
	.dwcfi	cfa_offset, 2
$C$DW$57	.dwtag  DW_TAG_variable, DW_AT_name("bitValue")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_bitValue")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_bregx 0x24 0]
	.dwpsn	file "src/csl_mem.c",line 737,column 2,is_stmt
        MOV *port(#7198), AR1 ; |737| 
        AND #0x0001, AR1, AC0 ; |737| 
        MOV AC0, *SP(#0) ; |737| 
	.dwpsn	file "src/csl_mem.c",line 739,column 2,is_stmt
        MOV AC0, T0
	.dwpsn	file "src/csl_mem.c",line 740,column 1,is_stmt
        AADD #1, SP
	.dwcfi	cfa_offset, 1
$C$DW$58	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$58, DW_AT_low_pc(0x00)
	.dwattr $C$DW$58, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$56, DW_AT_TI_end_file("src/csl_mem.c")
	.dwattr $C$DW$56, DW_AT_TI_end_line(0x2e4)
	.dwattr $C$DW$56, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$56


;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$25	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x01)
$C$DW$59	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MEM_DARAM"), DW_AT_const_value(0x00)
$C$DW$60	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MEM_SARAM"), DW_AT_const_value(0x01)
$C$DW$61	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MEM_INVALID"), DW_AT_const_value(0x02)
	.dwendtag $C$DW$T$25

$C$DW$T$26	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MemType")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)

$C$DW$T$27	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x01)
$C$DW$62	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MEM_MSDARAM_CLOCK_ON"), DW_AT_const_value(0x00)
$C$DW$63	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MEM_MSDARAM_CLOCK_OFF"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$27

$C$DW$T$28	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MEMmSDRAMClock")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C)

$C$DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x48)
$C$DW$64	.dwtag  DW_TAG_member
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$64, DW_AT_name("EBSR")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_EBSR")
	.dwattr $C$DW$64, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$64, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$65	.dwtag  DW_TAG_member
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$65, DW_AT_name("RSVD0")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$65, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$65, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$66	.dwtag  DW_TAG_member
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$66, DW_AT_name("PCGCR1")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_PCGCR1")
	.dwattr $C$DW$66, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$66, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$67	.dwtag  DW_TAG_member
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$67, DW_AT_name("PCGCR2")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_PCGCR2")
	.dwattr $C$DW$67, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$67, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$68	.dwtag  DW_TAG_member
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$68, DW_AT_name("PSRCR")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_PSRCR")
	.dwattr $C$DW$68, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$68, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$69	.dwtag  DW_TAG_member
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$69, DW_AT_name("PRCR")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_PRCR")
	.dwattr $C$DW$69, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$69, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$70	.dwtag  DW_TAG_member
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$70, DW_AT_name("RSVD1")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_RSVD1")
	.dwattr $C$DW$70, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$70, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$71	.dwtag  DW_TAG_member
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$71, DW_AT_name("TIAFR")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_TIAFR")
	.dwattr $C$DW$71, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$71, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$72	.dwtag  DW_TAG_member
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$72, DW_AT_name("RSVD2")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_RSVD2")
	.dwattr $C$DW$72, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$72, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$73	.dwtag  DW_TAG_member
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$73, DW_AT_name("ODSCR")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_ODSCR")
	.dwattr $C$DW$73, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$73, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$74	.dwtag  DW_TAG_member
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$74, DW_AT_name("PDINHIBR1")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_PDINHIBR1")
	.dwattr $C$DW$74, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$74, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$75	.dwtag  DW_TAG_member
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$75, DW_AT_name("PDINHIBR2")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_PDINHIBR2")
	.dwattr $C$DW$75, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$75, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$76	.dwtag  DW_TAG_member
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$76, DW_AT_name("PDINHIBR3")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_PDINHIBR3")
	.dwattr $C$DW$76, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$76, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$77	.dwtag  DW_TAG_member
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$77, DW_AT_name("DMA0CESR1")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_DMA0CESR1")
	.dwattr $C$DW$77, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$77, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$78	.dwtag  DW_TAG_member
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$78, DW_AT_name("DMA0CESR2")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_DMA0CESR2")
	.dwattr $C$DW$78, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr $C$DW$78, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$79	.dwtag  DW_TAG_member
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$79, DW_AT_name("DMA1CESR1")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_DMA1CESR1")
	.dwattr $C$DW$79, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$79, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$80	.dwtag  DW_TAG_member
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$80, DW_AT_name("DMA1CESR2")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_DMA1CESR2")
	.dwattr $C$DW$80, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr $C$DW$80, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$81	.dwtag  DW_TAG_member
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$81, DW_AT_name("CCR1")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_CCR1")
	.dwattr $C$DW$81, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$81, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$82	.dwtag  DW_TAG_member
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$82, DW_AT_name("CCR2")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_CCR2")
	.dwattr $C$DW$82, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr $C$DW$82, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$83	.dwtag  DW_TAG_member
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$83, DW_AT_name("CGCR1")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_CGCR1")
	.dwattr $C$DW$83, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$83, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$84	.dwtag  DW_TAG_member
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$84, DW_AT_name("CGCR2")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_CGCR2")
	.dwattr $C$DW$84, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr $C$DW$84, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$85	.dwtag  DW_TAG_member
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$85, DW_AT_name("CGCR3")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_CGCR3")
	.dwattr $C$DW$85, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$85, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$86	.dwtag  DW_TAG_member
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$86, DW_AT_name("CGCR4")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("_CGCR4")
	.dwattr $C$DW$86, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr $C$DW$86, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$87	.dwtag  DW_TAG_member
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$87, DW_AT_name("CCSSR")
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("_CCSSR")
	.dwattr $C$DW$87, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$87, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$88	.dwtag  DW_TAG_member
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$88, DW_AT_name("RSVD3")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("_RSVD3")
	.dwattr $C$DW$88, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr $C$DW$88, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$89	.dwtag  DW_TAG_member
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$89, DW_AT_name("ECDR")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_ECDR")
	.dwattr $C$DW$89, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$89, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$90	.dwtag  DW_TAG_member
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$90, DW_AT_name("RSVD4")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_RSVD4")
	.dwattr $C$DW$90, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr $C$DW$90, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$91	.dwtag  DW_TAG_member
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$91, DW_AT_name("RAMSLPMDCNTLR1")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR1")
	.dwattr $C$DW$91, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$91, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$92	.dwtag  DW_TAG_member
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$92, DW_AT_name("RSVD5")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_RSVD5")
	.dwattr $C$DW$92, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr $C$DW$92, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$93	.dwtag  DW_TAG_member
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$93, DW_AT_name("RAMSLPMDCNTLR2")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR2")
	.dwattr $C$DW$93, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$93, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$94	.dwtag  DW_TAG_member
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$94, DW_AT_name("RAMSLPMDCNTLR3")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR3")
	.dwattr $C$DW$94, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr $C$DW$94, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$95	.dwtag  DW_TAG_member
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$95, DW_AT_name("RAMSLPMDCNTLR4")
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR4")
	.dwattr $C$DW$95, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$95, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$96	.dwtag  DW_TAG_member
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$96, DW_AT_name("RAMSLPMDCNTLR5")
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR5")
	.dwattr $C$DW$96, DW_AT_data_member_location[DW_OP_plus_uconst 0x2d]
	.dwattr $C$DW$96, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$97	.dwtag  DW_TAG_member
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$97, DW_AT_name("RSVD6")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("_RSVD6")
	.dwattr $C$DW$97, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr $C$DW$97, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$98	.dwtag  DW_TAG_member
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$98, DW_AT_name("DMAIFR")
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("_DMAIFR")
	.dwattr $C$DW$98, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$98, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$99	.dwtag  DW_TAG_member
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$99, DW_AT_name("DMAIER")
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_DMAIER")
	.dwattr $C$DW$99, DW_AT_data_member_location[DW_OP_plus_uconst 0x31]
	.dwattr $C$DW$99, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$100	.dwtag  DW_TAG_member
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$100, DW_AT_name("USBSCR")
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("_USBSCR")
	.dwattr $C$DW$100, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$100, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$101	.dwtag  DW_TAG_member
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$101, DW_AT_name("ESCR")
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_ESCR")
	.dwattr $C$DW$101, DW_AT_data_member_location[DW_OP_plus_uconst 0x33]
	.dwattr $C$DW$101, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$102	.dwtag  DW_TAG_member
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$102, DW_AT_name("RSVD7")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("_RSVD7")
	.dwattr $C$DW$102, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$102, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$103	.dwtag  DW_TAG_member
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$103, DW_AT_name("DMA2CESR1")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("_DMA2CESR1")
	.dwattr $C$DW$103, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$103, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$104	.dwtag  DW_TAG_member
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$104, DW_AT_name("DMA2CESR2")
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_DMA2CESR2")
	.dwattr $C$DW$104, DW_AT_data_member_location[DW_OP_plus_uconst 0x37]
	.dwattr $C$DW$104, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$105	.dwtag  DW_TAG_member
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$105, DW_AT_name("DMA3CESR1")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_DMA3CESR1")
	.dwattr $C$DW$105, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$105, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$106	.dwtag  DW_TAG_member
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$106, DW_AT_name("DMA3CESR2")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_DMA3CESR2")
	.dwattr $C$DW$106, DW_AT_data_member_location[DW_OP_plus_uconst 0x39]
	.dwattr $C$DW$106, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$107	.dwtag  DW_TAG_member
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$107, DW_AT_name("CLKSTOP")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_CLKSTOP")
	.dwattr $C$DW$107, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr $C$DW$107, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$108	.dwtag  DW_TAG_member
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$108, DW_AT_name("RSVD8")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_RSVD8")
	.dwattr $C$DW$108, DW_AT_data_member_location[DW_OP_plus_uconst 0x3b]
	.dwattr $C$DW$108, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$109	.dwtag  DW_TAG_member
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$109, DW_AT_name("DIEIDR0")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_DIEIDR0")
	.dwattr $C$DW$109, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$109, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$110	.dwtag  DW_TAG_member
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$110, DW_AT_name("DIEIDR1")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_DIEIDR1")
	.dwattr $C$DW$110, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr $C$DW$110, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$111	.dwtag  DW_TAG_member
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$111, DW_AT_name("DIEIDR2")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_DIEIDR2")
	.dwattr $C$DW$111, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr $C$DW$111, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$112	.dwtag  DW_TAG_member
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$112, DW_AT_name("DIEIDR3")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_DIEIDR3")
	.dwattr $C$DW$112, DW_AT_data_member_location[DW_OP_plus_uconst 0x43]
	.dwattr $C$DW$112, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$113	.dwtag  DW_TAG_member
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$113, DW_AT_name("DIEIDR4")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_DIEIDR4")
	.dwattr $C$DW$113, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$113, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$114	.dwtag  DW_TAG_member
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$114, DW_AT_name("DIEIDR5")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_DIEIDR5")
	.dwattr $C$DW$114, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr $C$DW$114, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$115	.dwtag  DW_TAG_member
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$115, DW_AT_name("DIEIDR6")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_DIEIDR6")
	.dwattr $C$DW$115, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr $C$DW$115, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$116	.dwtag  DW_TAG_member
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$116, DW_AT_name("DIEIDR7")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("_DIEIDR7")
	.dwattr $C$DW$116, DW_AT_data_member_location[DW_OP_plus_uconst 0x47]
	.dwattr $C$DW$116, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$24

$C$DW$T$29	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SysRegs")
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$29, DW_AT_language(DW_LANG_C)
$C$DW$117	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$29)
$C$DW$118	.dwtag  DW_TAG_TI_ioport_type
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$117)
$C$DW$T$30	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$118)
$C$DW$T$31	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$31, DW_AT_address_class(0x10)
$C$DW$T$32	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SysRegsOvly")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$32, DW_AT_language(DW_LANG_C)
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
$C$DW$T$33	.dwtag  DW_TAG_typedef, DW_AT_name("Int16")
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$33, DW_AT_language(DW_LANG_C)
$C$DW$T$34	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_Status")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)
$C$DW$T$40	.dwtag  DW_TAG_typedef, DW_AT_name("Bool")
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$40, DW_AT_language(DW_LANG_C)
$C$DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
$C$DW$119	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$19)
$C$DW$T$20	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$119)

$C$DW$T$21	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x0e)
$C$DW$120	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$120, DW_AT_upper_bound(0x0d)
	.dwendtag $C$DW$T$21


$C$DW$T$22	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x02)
$C$DW$121	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$121, DW_AT_upper_bound(0x01)
	.dwendtag $C$DW$T$22


$C$DW$T$23	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x05)
$C$DW$122	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$122, DW_AT_upper_bound(0x04)
	.dwendtag $C$DW$T$23

$C$DW$123	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$19)
$C$DW$124	.dwtag  DW_TAG_TI_ioport_type
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$123)
$C$DW$T$42	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$124)
$C$DW$T$43	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$43, DW_AT_address_class(0x10)
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
$C$DW$T$37	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32")
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
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

$C$DW$125	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$125, DW_AT_location[DW_OP_reg0]
$C$DW$126	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$126, DW_AT_location[DW_OP_reg1]
$C$DW$127	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$127, DW_AT_location[DW_OP_reg2]
$C$DW$128	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$128, DW_AT_location[DW_OP_reg3]
$C$DW$129	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$129, DW_AT_location[DW_OP_reg4]
$C$DW$130	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$130, DW_AT_location[DW_OP_reg5]
$C$DW$131	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$131, DW_AT_location[DW_OP_reg6]
$C$DW$132	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$132, DW_AT_location[DW_OP_reg7]
$C$DW$133	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$133, DW_AT_location[DW_OP_reg8]
$C$DW$134	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$134, DW_AT_location[DW_OP_reg9]
$C$DW$135	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$135, DW_AT_location[DW_OP_reg10]
$C$DW$136	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$136, DW_AT_location[DW_OP_reg11]
$C$DW$137	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$137, DW_AT_location[DW_OP_reg12]
$C$DW$138	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$138, DW_AT_location[DW_OP_reg13]
$C$DW$139	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$139, DW_AT_location[DW_OP_reg14]
$C$DW$140	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$140, DW_AT_location[DW_OP_reg15]
$C$DW$141	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$141, DW_AT_location[DW_OP_reg16]
$C$DW$142	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$142, DW_AT_location[DW_OP_reg17]
$C$DW$143	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$143, DW_AT_location[DW_OP_reg18]
$C$DW$144	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$144, DW_AT_location[DW_OP_reg19]
$C$DW$145	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$145, DW_AT_location[DW_OP_reg20]
$C$DW$146	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$146, DW_AT_location[DW_OP_reg21]
$C$DW$147	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$147, DW_AT_location[DW_OP_reg22]
$C$DW$148	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$148, DW_AT_location[DW_OP_reg23]
$C$DW$149	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$149, DW_AT_location[DW_OP_reg24]
$C$DW$150	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$150, DW_AT_location[DW_OP_reg25]
$C$DW$151	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$151, DW_AT_location[DW_OP_reg26]
$C$DW$152	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$152, DW_AT_location[DW_OP_reg27]
$C$DW$153	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$153, DW_AT_location[DW_OP_reg28]
$C$DW$154	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$154, DW_AT_location[DW_OP_reg29]
$C$DW$155	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$155, DW_AT_location[DW_OP_reg30]
$C$DW$156	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$156, DW_AT_location[DW_OP_reg31]
$C$DW$157	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$157, DW_AT_location[DW_OP_regx 0x20]
$C$DW$158	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$158, DW_AT_location[DW_OP_regx 0x21]
$C$DW$159	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$159, DW_AT_location[DW_OP_regx 0x22]
$C$DW$160	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$160, DW_AT_location[DW_OP_regx 0x23]
$C$DW$161	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$161, DW_AT_location[DW_OP_regx 0x24]
$C$DW$162	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$162, DW_AT_location[DW_OP_regx 0x25]
$C$DW$163	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$163, DW_AT_location[DW_OP_regx 0x26]
$C$DW$164	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$164, DW_AT_location[DW_OP_regx 0x27]
$C$DW$165	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$165, DW_AT_location[DW_OP_regx 0x28]
$C$DW$166	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$166, DW_AT_location[DW_OP_regx 0x29]
$C$DW$167	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$167, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$168	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$168, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$169	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$169, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$170	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$170, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$171	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$171, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$172	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$172, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$173	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$173, DW_AT_location[DW_OP_regx 0x30]
$C$DW$174	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$174, DW_AT_location[DW_OP_regx 0x31]
$C$DW$175	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$175, DW_AT_location[DW_OP_regx 0x32]
$C$DW$176	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$176, DW_AT_location[DW_OP_regx 0x33]
$C$DW$177	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$177, DW_AT_location[DW_OP_regx 0x34]
$C$DW$178	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$178, DW_AT_location[DW_OP_regx 0x35]
$C$DW$179	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$179, DW_AT_location[DW_OP_regx 0x36]
$C$DW$180	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$180, DW_AT_location[DW_OP_regx 0x37]
$C$DW$181	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$181, DW_AT_location[DW_OP_regx 0x38]
$C$DW$182	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$182, DW_AT_location[DW_OP_regx 0x39]
$C$DW$183	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$183, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$184	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$184, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$185	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$185, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$186	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$186, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$187	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$187, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$188	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$188, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$189	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$189, DW_AT_location[DW_OP_regx 0x40]
$C$DW$190	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$190, DW_AT_location[DW_OP_regx 0x41]
$C$DW$191	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$191, DW_AT_location[DW_OP_regx 0x42]
$C$DW$192	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$192, DW_AT_location[DW_OP_regx 0x43]
$C$DW$193	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$193, DW_AT_location[DW_OP_regx 0x44]
$C$DW$194	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$194, DW_AT_location[DW_OP_regx 0x45]
$C$DW$195	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$195, DW_AT_location[DW_OP_regx 0x46]
$C$DW$196	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$196, DW_AT_location[DW_OP_regx 0x47]
$C$DW$197	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$197, DW_AT_location[DW_OP_regx 0x48]
$C$DW$198	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$198, DW_AT_location[DW_OP_regx 0x49]
$C$DW$199	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$199, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$200	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$200, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$201	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$201, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$202	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$202, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$203	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$203, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$204	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$204, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$205	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$205, DW_AT_location[DW_OP_regx 0x50]
$C$DW$206	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$206, DW_AT_location[DW_OP_regx 0x51]
$C$DW$207	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$207, DW_AT_location[DW_OP_regx 0x52]
$C$DW$208	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$208, DW_AT_location[DW_OP_regx 0x53]
$C$DW$209	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$209, DW_AT_location[DW_OP_regx 0x54]
$C$DW$210	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$210, DW_AT_location[DW_OP_regx 0x55]
$C$DW$211	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$211, DW_AT_location[DW_OP_regx 0x56]
$C$DW$212	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$212, DW_AT_location[DW_OP_regx 0x57]
$C$DW$213	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$213, DW_AT_location[DW_OP_regx 0x58]
$C$DW$214	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$214, DW_AT_location[DW_OP_regx 0x59]
$C$DW$215	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$215, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$216	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$216, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

