;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                        Unix v4.4.1 *
;* Date/Time created: Thu May  2 04:44:14 2024                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("src/csl_sysctrl.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen Unix v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/santiago/dspfuzz/on_board/library")
	.global	_PG4_flag
	.bss	_PG4_flag,1,0,0
$C$DW$1	.dwtag  DW_TAG_variable, DW_AT_name("PG4_flag")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_PG4_flag")
	.dwattr $C$DW$1, DW_AT_location[DW_OP_addr _PG4_flag]
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1, DW_AT_external
	.global	_PG3_flag
	.bss	_PG3_flag,1,0,0
$C$DW$2	.dwtag  DW_TAG_variable, DW_AT_name("PG3_flag")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("_PG3_flag")
	.dwattr $C$DW$2, DW_AT_location[DW_OP_addr _PG3_flag]
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$2, DW_AT_external
	.global	_PG1_flag
	.bss	_PG1_flag,1,0,0
$C$DW$3	.dwtag  DW_TAG_variable, DW_AT_name("PG1_flag")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_PG1_flag")
	.dwattr $C$DW$3, DW_AT_location[DW_OP_addr _PG1_flag]
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$3, DW_AT_external
;	/home/santiago/ti/55x_Tools/bin/acp55 -@/tmp/17581RNJJcr 
	.sect	".text"
	.global	_SYS_peripheralReset

$C$DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("SYS_peripheralReset")
	.dwattr $C$DW$4, DW_AT_low_pc(_SYS_peripheralReset)
	.dwattr $C$DW$4, DW_AT_high_pc(0x00)
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_SYS_peripheralReset")
	.dwattr $C$DW$4, DW_AT_external
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$4, DW_AT_TI_begin_file("src/csl_sysctrl.c")
	.dwattr $C$DW$4, DW_AT_TI_begin_line(0x40)
	.dwattr $C$DW$4, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$4, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_sysctrl.c",line 65,column 1,is_stmt,address _SYS_peripheralReset

	.dwfde $C$DW$CIE, _SYS_peripheralReset
$C$DW$5	.dwtag  DW_TAG_formal_parameter, DW_AT_name("flag")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_flag")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: SYS_peripheralReset                                          *
;*                                                                             *
;*   Function Uses Regs : T0,AR1,AR2,AR3,SP,TC1,M40,SATA,SATD,RDM,FRCT,SMUL    *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SYS_peripheralReset:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$6	.dwtag  DW_TAG_variable, DW_AT_name("flag")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_flag")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$7	.dwtag  DW_TAG_variable, DW_AT_name("sysRegs")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_sysRegs")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_bregx 0x24 1]
        MOV T0, *SP(#0) ; |65| 
	.dwpsn	file "src/csl_sysctrl.c",line 68,column 2,is_stmt
        MOV #7168, *SP(#1) ; |68| 
	.dwpsn	file "src/csl_sysctrl.c",line 69,column 2,is_stmt
        B $C$L7   ; |69| 
                                        ; branch occurs ; |69| 
$C$L1:    
	.dwpsn	file "src/csl_sysctrl.c",line 72,column 4,is_stmt
        MOV *(#_PG4_flag), AR1 ; |72| 
        BCC $C$L2,AR1 != #0 ; |72| 
                                        ; branchcc occurs ; |72| 
	.dwpsn	file "src/csl_sysctrl.c",line 74,column 5,is_stmt
        MOV *SP(#1), AR3 ; |74| 
        MOV port(*AR3(short(#5))), AR1 ; |74| 
        BCLR @#7, AR1 ; |74| 
        BSET @#7, AR1 ; |74| 
        MOV AR1, port(*AR3(short(#5))) ; |74| 
	.dwpsn	file "src/csl_sysctrl.c",line 75,column 5,is_stmt
        MOV #1, *(#_PG4_flag) ; |75| 
	.dwpsn	file "src/csl_sysctrl.c",line 76,column 4,is_stmt
        B $C$L8   ; |76| 
                                        ; branch occurs ; |76| 
$C$L2:    
	.dwpsn	file "src/csl_sysctrl.c",line 78,column 5,is_stmt
        MOV #0, T0
        B $C$L9   ; |78| 
                                        ; branch occurs ; |78| 
$C$L3:    
	.dwpsn	file "src/csl_sysctrl.c",line 81,column 4,is_stmt
        MOV *(#_PG3_flag), AR1 ; |81| 
        BCC $C$L4,AR1 != #0 ; |81| 
                                        ; branchcc occurs ; |81| 
	.dwpsn	file "src/csl_sysctrl.c",line 83,column 5,is_stmt
        MOV *SP(#1), AR3 ; |83| 
        MOV port(*AR3(short(#5))), AR1 ; |83| 
        BCLR @#5, AR1 ; |83| 
        BSET @#5, AR1 ; |83| 
        MOV AR1, port(*AR3(short(#5))) ; |83| 
	.dwpsn	file "src/csl_sysctrl.c",line 84,column 5,is_stmt
        MOV #1, *(#_PG3_flag) ; |84| 
	.dwpsn	file "src/csl_sysctrl.c",line 85,column 4,is_stmt
        B $C$L8   ; |85| 
                                        ; branch occurs ; |85| 
$C$L4:    
	.dwpsn	file "src/csl_sysctrl.c",line 87,column 5,is_stmt
        MOV #0, T0
        B $C$L9   ; |87| 
                                        ; branch occurs ; |87| 
$C$L5:    
	.dwpsn	file "src/csl_sysctrl.c",line 90,column 4,is_stmt
        MOV *(#_PG1_flag), AR1 ; |90| 
        BCC $C$L6,AR1 != #0 ; |90| 
                                        ; branchcc occurs ; |90| 
	.dwpsn	file "src/csl_sysctrl.c",line 92,column 5,is_stmt
        MOV *SP(#1), AR3 ; |92| 
        MOV port(*AR3(short(#5))), AR1 ; |92| 
        BCLR @#1, AR1 ; |92| 
        BSET @#1, AR1 ; |92| 
        MOV AR1, port(*AR3(short(#5))) ; |92| 
	.dwpsn	file "src/csl_sysctrl.c",line 93,column 5,is_stmt
        MOV #1, *(#_PG1_flag) ; |93| 
	.dwpsn	file "src/csl_sysctrl.c",line 94,column 4,is_stmt
        B $C$L8   ; |94| 
                                        ; branch occurs ; |94| 
$C$L6:    
	.dwpsn	file "src/csl_sysctrl.c",line 96,column 5,is_stmt
        MOV #0, T0
        B $C$L9   ; |96| 
                                        ; branch occurs ; |96| 
$C$L7:    
	.dwpsn	file "src/csl_sysctrl.c",line 69,column 2,is_stmt
        MOV *SP(#0), AR1 ; |69| 
        BCC $C$L1,AR1 == #0 ; |69| 
                                        ; branchcc occurs ; |69| 
        MOV #1, AR2
        CMP AR1 == AR2, TC1 ; |69| 
        BCC $C$L3,TC1 ; |69| 
                                        ; branchcc occurs ; |69| 
        MOV #2, AR2
        CMP AR1 == AR2, TC1 ; |69| 
        BCC $C$L5,TC1 ; |69| 
                                        ; branchcc occurs ; |69| 
$C$L8:    
	.dwpsn	file "src/csl_sysctrl.c",line 100,column 2,is_stmt
        MOV #-6, T0
$C$L9:    
	.dwpsn	file "src/csl_sysctrl.c",line 101,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$8	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$8, DW_AT_low_pc(0x00)
	.dwattr $C$DW$8, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$4, DW_AT_TI_end_file("src/csl_sysctrl.c")
	.dwattr $C$DW$4, DW_AT_TI_end_line(0x65)
	.dwattr $C$DW$4, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$4

	.sect	".text"
	.global	_SYS_setEBSR

$C$DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("SYS_setEBSR")
	.dwattr $C$DW$9, DW_AT_low_pc(_SYS_setEBSR)
	.dwattr $C$DW$9, DW_AT_high_pc(0x00)
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_SYS_setEBSR")
	.dwattr $C$DW$9, DW_AT_external
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$9, DW_AT_TI_begin_file("src/csl_sysctrl.c")
	.dwattr $C$DW$9, DW_AT_TI_begin_line(0x6f)
	.dwattr $C$DW$9, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$9, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_sysctrl.c",line 112,column 1,is_stmt,address _SYS_setEBSR

	.dwfde $C$DW$CIE, _SYS_setEBSR
$C$DW$10	.dwtag  DW_TAG_formal_parameter, DW_AT_name("mode")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_mode")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_reg12]
$C$DW$11	.dwtag  DW_TAG_formal_parameter, DW_AT_name("modeValue")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_modeValue")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_reg13]
;*******************************************************************************
;* FUNCTION NAME: SYS_setEBSR                                                  *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR1,AR2,AR3,XAR3,SP,CARRY,TC1, *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SYS_setEBSR:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$12	.dwtag  DW_TAG_variable, DW_AT_name("mode")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_mode")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$13	.dwtag  DW_TAG_variable, DW_AT_name("modeValue")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_modeValue")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$14	.dwtag  DW_TAG_variable, DW_AT_name("sysRegs")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_sysRegs")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$15	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_bregx 0x24 3]
        MOV T1, *SP(#1) ; |112| 
        MOV T0, *SP(#0) ; |112| 
	.dwpsn	file "src/csl_sysctrl.c",line 116,column 2,is_stmt
        MOV #7168, *SP(#2) ; |116| 
	.dwpsn	file "src/csl_sysctrl.c",line 117,column 2,is_stmt
        MOV #-6, *SP(#3) ; |117| 
	.dwpsn	file "src/csl_sysctrl.c",line 119,column 2,is_stmt
        B $C$L20  ; |119| 
                                        ; branch occurs ; |119| 
$C$L10:    
	.dwpsn	file "src/csl_sysctrl.c",line 122,column 4,is_stmt
        MOV *SP(#1), AR1 ; |122| 
        BCC $C$L21,AR1 < #0 ; |122| 
                                        ; branchcc occurs ; |122| 
        MOV #7, AR2
        CMP AR1 >= AR2, TC1 ; |122| 
        BCC $C$L21,TC1 ; |122| 
                                        ; branchcc occurs ; |122| 
	.dwpsn	file "src/csl_sysctrl.c",line 125,column 5,is_stmt
        MOV *SP(#2), AR3 ; |125| 
        MOV *SP(#1) << #12, AC0 ; |125| 
        MOV port(*AR3), AR1 ; |125| 
        AND #0x8fff, AR1, AR2 ; |125| 
        AND #0x7000, AC0, AR1 ; |125| 
        OR AR2, AR1 ; |125| 
        MOV AR1, port(*AR3) ; |125| 
	.dwpsn	file "src/csl_sysctrl.c",line 126,column 5,is_stmt
        MOV #0, *SP(#3) ; |126| 
	.dwpsn	file "src/csl_sysctrl.c",line 128,column 9,is_stmt
        B $C$L21  ; |128| 
                                        ; branch occurs ; |128| 
$C$L11:    
	.dwpsn	file "src/csl_sysctrl.c",line 131,column 4,is_stmt
        MOV *SP(#1), AR1 ; |131| 
        BCC $C$L21,AR1 < #0 ; |131| 
                                        ; branchcc occurs ; |131| 
        MOV #4, AR2
        CMP AR1 >= AR2, TC1 ; |131| 
        BCC $C$L21,TC1 ; |131| 
                                        ; branchcc occurs ; |131| 
	.dwpsn	file "src/csl_sysctrl.c",line 134,column 5,is_stmt
        MOV *SP(#2), AR3 ; |134| 
        MOV *SP(#1) << #10, AC0 ; |134| 
        MOV port(*AR3), AR1 ; |134| 
        AND #0xf3ff, AR1, AR2 ; |134| 
        AND #0x0c00, AC0, AR1 ; |134| 
        OR AR2, AR1 ; |134| 
        MOV AR1, port(*AR3) ; |134| 
	.dwpsn	file "src/csl_sysctrl.c",line 135,column 5,is_stmt
        MOV #0, *SP(#3) ; |135| 
	.dwpsn	file "src/csl_sysctrl.c",line 137,column 9,is_stmt
        B $C$L21  ; |137| 
                                        ; branch occurs ; |137| 
$C$L12:    
	.dwpsn	file "src/csl_sysctrl.c",line 140,column 4,is_stmt
        MOV *SP(#1), AR1 ; |140| 
        BCC $C$L21,AR1 < #0 ; |140| 
                                        ; branchcc occurs ; |140| 
        MOV #4, AR2
        CMP AR1 >= AR2, TC1 ; |140| 
        BCC $C$L21,TC1 ; |140| 
                                        ; branchcc occurs ; |140| 
	.dwpsn	file "src/csl_sysctrl.c",line 143,column 5,is_stmt
        MOV *SP(#2), AR3 ; |143| 
        MOV *SP(#1) << #8, AC0 ; |143| 
        MOV port(*AR3), AR1 ; |143| 
        AND #0xfcff, AR1, AR2 ; |143| 
        AND #0x0300, AC0, AR1 ; |143| 
        OR AR2, AR1 ; |143| 
        MOV AR1, port(*AR3) ; |143| 
	.dwpsn	file "src/csl_sysctrl.c",line 144,column 5,is_stmt
        MOV #0, *SP(#3) ; |144| 
	.dwpsn	file "src/csl_sysctrl.c",line 146,column 9,is_stmt
        B $C$L21  ; |146| 
                                        ; branch occurs ; |146| 
$C$L13:    
	.dwpsn	file "src/csl_sysctrl.c",line 149,column 4,is_stmt
        MOV *SP(#1), AR1 ; |149| 
        BCC $C$L21,AR1 < #0 ; |149| 
                                        ; branchcc occurs ; |149| 
        MOV #2, AR2
        CMP AR1 >= AR2, TC1 ; |149| 
        BCC $C$L21,TC1 ; |149| 
                                        ; branchcc occurs ; |149| 
	.dwpsn	file "src/csl_sysctrl.c",line 152,column 5,is_stmt
        MOV *SP(#2), AR3 ; |152| 
        MOV *SP(#1) << #5, AC0 ; |152| 
        AND #0x0020, AC0, AR2 ; |152| 
        MOV port(*AR3), AR1 ; |152| 
        BCLR @#5, AR1 ; |152| 
        OR AR1, AR2 ; |152| 
        MOV AR2, port(*AR3) ; |152| 
	.dwpsn	file "src/csl_sysctrl.c",line 153,column 5,is_stmt
        MOV #0, *SP(#3) ; |153| 
	.dwpsn	file "src/csl_sysctrl.c",line 155,column 9,is_stmt
        B $C$L21  ; |155| 
                                        ; branch occurs ; |155| 
$C$L14:    
	.dwpsn	file "src/csl_sysctrl.c",line 158,column 4,is_stmt
        MOV *SP(#1), AR1 ; |158| 
        BCC $C$L21,AR1 < #0 ; |158| 
                                        ; branchcc occurs ; |158| 
        MOV #2, AR2
        CMP AR1 >= AR2, TC1 ; |158| 
        BCC $C$L21,TC1 ; |158| 
                                        ; branchcc occurs ; |158| 
	.dwpsn	file "src/csl_sysctrl.c",line 161,column 5,is_stmt
        MOV *SP(#2), AR3 ; |161| 
        MOV *SP(#1) << #4, AC0 ; |161| 
        AND #0x0010, AC0, AR2 ; |161| 
        MOV port(*AR3), AR1 ; |161| 
        BCLR @#4, AR1 ; |161| 
        OR AR1, AR2 ; |161| 
        MOV AR2, port(*AR3) ; |161| 
	.dwpsn	file "src/csl_sysctrl.c",line 162,column 5,is_stmt
        MOV #0, *SP(#3) ; |162| 
	.dwpsn	file "src/csl_sysctrl.c",line 164,column 9,is_stmt
        B $C$L21  ; |164| 
                                        ; branch occurs ; |164| 
$C$L15:    
	.dwpsn	file "src/csl_sysctrl.c",line 167,column 4,is_stmt
        MOV *SP(#1), AR1 ; |167| 
        BCC $C$L21,AR1 < #0 ; |167| 
                                        ; branchcc occurs ; |167| 
        MOV #2, AR2
        CMP AR1 >= AR2, TC1 ; |167| 
        BCC $C$L21,TC1 ; |167| 
                                        ; branchcc occurs ; |167| 
	.dwpsn	file "src/csl_sysctrl.c",line 170,column 5,is_stmt
        MOV *SP(#2), AR3 ; |170| 
        MOV *SP(#1) << #3, AC0 ; |170| 
        AND #0x0008, AC0, AR2 ; |170| 
        MOV port(*AR3), AR1 ; |170| 
        BCLR @#3, AR1 ; |170| 
        OR AR1, AR2 ; |170| 
        MOV AR2, port(*AR3) ; |170| 
	.dwpsn	file "src/csl_sysctrl.c",line 171,column 5,is_stmt
        MOV #0, *SP(#3) ; |171| 
	.dwpsn	file "src/csl_sysctrl.c",line 173,column 9,is_stmt
        B $C$L21  ; |173| 
                                        ; branch occurs ; |173| 
$C$L16:    
	.dwpsn	file "src/csl_sysctrl.c",line 176,column 4,is_stmt
        MOV *SP(#1), AR1 ; |176| 
        BCC $C$L21,AR1 < #0 ; |176| 
                                        ; branchcc occurs ; |176| 
        MOV #2, AR2
        CMP AR1 >= AR2, TC1 ; |176| 
        BCC $C$L21,TC1 ; |176| 
                                        ; branchcc occurs ; |176| 
	.dwpsn	file "src/csl_sysctrl.c",line 179,column 5,is_stmt
        MOV *SP(#2), AR3 ; |179| 
        MOV *SP(#1) << #2, AC0 ; |179| 
        AND #0x0004, AC0, AR2 ; |179| 
        MOV port(*AR3), AR1 ; |179| 
        BCLR @#2, AR1 ; |179| 
        OR AR1, AR2 ; |179| 
        MOV AR2, port(*AR3) ; |179| 
	.dwpsn	file "src/csl_sysctrl.c",line 180,column 5,is_stmt
        MOV #0, *SP(#3) ; |180| 
	.dwpsn	file "src/csl_sysctrl.c",line 182,column 9,is_stmt
        B $C$L21  ; |182| 
                                        ; branch occurs ; |182| 
$C$L17:    
	.dwpsn	file "src/csl_sysctrl.c",line 185,column 4,is_stmt
        MOV *SP(#1), AR1 ; |185| 
        BCC $C$L21,AR1 < #0 ; |185| 
                                        ; branchcc occurs ; |185| 
        MOV #2, AR2
        CMP AR1 >= AR2, TC1 ; |185| 
        BCC $C$L21,TC1 ; |185| 
                                        ; branchcc occurs ; |185| 
	.dwpsn	file "src/csl_sysctrl.c",line 188,column 5,is_stmt
        MOV *SP(#2), AR3 ; |188| 
        SFTL AR1, #1 ; |188| 
        AND #0x0002, AR1, AR1 ; |188| 
        MOV port(*AR3), AR2 ; |188| 
        BCLR @#1, AR2 ; |188| 
        OR AR2, AR1 ; |188| 
        MOV AR1, port(*AR3) ; |188| 
	.dwpsn	file "src/csl_sysctrl.c",line 189,column 5,is_stmt
        MOV #0, *SP(#3) ; |189| 
	.dwpsn	file "src/csl_sysctrl.c",line 191,column 9,is_stmt
        B $C$L21  ; |191| 
                                        ; branch occurs ; |191| 
$C$L18:    
	.dwpsn	file "src/csl_sysctrl.c",line 194,column 4,is_stmt
        MOV *SP(#1), AR1 ; |194| 
        BCC $C$L21,AR1 < #0 ; |194| 
                                        ; branchcc occurs ; |194| 
        MOV #2, AR2
        CMP AR1 >= AR2, TC1 ; |194| 
        BCC $C$L21,TC1 ; |194| 
                                        ; branchcc occurs ; |194| 
	.dwpsn	file "src/csl_sysctrl.c",line 197,column 5,is_stmt
        MOV *SP(#2), AR3 ; |197| 
        MOV *SP(#1), AR1 ; |197| 
        AND #0x0001, AR1, AR1 ; |197| 
        MOV port(*AR3), AR2 ; |197| 
        BCLR @#0, AR2 ; |197| 
        OR AR2, AR1 ; |197| 
        MOV AR1, port(*AR3) ; |197| 
	.dwpsn	file "src/csl_sysctrl.c",line 198,column 5,is_stmt
        MOV #0, *SP(#3) ; |198| 
	.dwpsn	file "src/csl_sysctrl.c",line 200,column 9,is_stmt
        B $C$L21  ; |200| 
                                        ; branch occurs ; |200| 
$C$L19:    
	.dwpsn	file "src/csl_sysctrl.c",line 204,column 4,is_stmt
        MOV #-6, *SP(#3) ; |204| 
	.dwpsn	file "src/csl_sysctrl.c",line 205,column 9,is_stmt
        B $C$L21  ; |205| 
                                        ; branch occurs ; |205| 
$C$L20:    
	.dwpsn	file "src/csl_sysctrl.c",line 119,column 2,is_stmt
        MOV *SP(#0), AC0 ; |119| 

        MOV AC0, AR1 ; |119| 
||      MOV #8, AR2

        CMPU AR1 <= AR2, TC1 ; |119| 
        BCC $C$L19,!TC1 ; |119| 
                                        ; branchcc occurs ; |119| 
        SFTS AC0, #1, AC0 ; |119| 
        MOV mmap(AC0L), AC1 ; |119| 
        MOV #($C$SW1 >> 16) << #16, AC0 ; |119| 
        OR #($C$SW1 & 0xffff), AC0, AC0 ; |119| 
        ADD AC1, AC0 ; |119| 
        MOV AC0, XAR3
        MOV dbl(*AR3), AC0 ; |119| 
        B AC0     ; |119| 
                                        ; branch occurs ; |119| 
	.sect	".switch:_SYS_setEBSR"
	.clink
$C$SW1:	.long	$C$L10	; 0
	.long	$C$L11	; 1
	.long	$C$L12	; 2
	.long	$C$L13	; 3
	.long	$C$L14	; 4
	.long	$C$L15	; 5
	.long	$C$L16	; 6
	.long	$C$L17	; 7
	.long	$C$L18	; 8
	.sect	".text"
$C$L21:    
	.dwpsn	file "src/csl_sysctrl.c",line 208,column 2,is_stmt
        MOV *SP(#3), T0 ; |208| 
	.dwpsn	file "src/csl_sysctrl.c",line 209,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$16	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$16, DW_AT_low_pc(0x00)
	.dwattr $C$DW$16, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$9, DW_AT_TI_end_file("src/csl_sysctrl.c")
	.dwattr $C$DW$9, DW_AT_TI_end_line(0xd1)
	.dwattr $C$DW$9, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$9

	.sect	".text"
	.global	_SYS_set_DSP_LDO_voltage

$C$DW$17	.dwtag  DW_TAG_subprogram, DW_AT_name("SYS_set_DSP_LDO_voltage")
	.dwattr $C$DW$17, DW_AT_low_pc(_SYS_set_DSP_LDO_voltage)
	.dwattr $C$DW$17, DW_AT_high_pc(0x00)
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_SYS_set_DSP_LDO_voltage")
	.dwattr $C$DW$17, DW_AT_external
	.dwattr $C$DW$17, DW_AT_TI_begin_file("src/csl_sysctrl.c")
	.dwattr $C$DW$17, DW_AT_TI_begin_line(0xdc)
	.dwattr $C$DW$17, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$17, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_sysctrl.c",line 221,column 1,is_stmt,address _SYS_set_DSP_LDO_voltage

	.dwfde $C$DW$CIE, _SYS_set_DSP_LDO_voltage
$C$DW$18	.dwtag  DW_TAG_formal_parameter, DW_AT_name("voltage")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_voltage")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: SYS_set_DSP_LDO_voltage                                      *
;*                                                                             *
;*   Function Uses Regs : T0,AR1,AR2,AR3,SP,TC1,M40,SATA,SATD,RDM,FRCT,SMUL    *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SYS_set_DSP_LDO_voltage:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$19	.dwtag  DW_TAG_variable, DW_AT_name("voltage")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_voltage")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$20	.dwtag  DW_TAG_variable, DW_AT_name("ldoRegs")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_ldoRegs")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_bregx 0x24 1]
        MOV T0, *SP(#0) ; |221| 
	.dwpsn	file "src/csl_sysctrl.c",line 224,column 2,is_stmt
        MOV #28672, *SP(#1) ; |224| 
	.dwpsn	file "src/csl_sysctrl.c",line 226,column 2,is_stmt

        MOV *SP(#0), AR1 ; |226| 
||      MOV #0, AR2

        CMP AR2 != AR1, TC1 ; |226| 
        BCC $C$L22,TC1 ; |226| 
                                        ; branchcc occurs ; |226| 
	.dwpsn	file "src/csl_sysctrl.c",line 228,column 6,is_stmt
        MOV *SP(#1), AR3 ; |228| 
        OR #0x0002, port(*AR3(short(#4))) ; |228| 
	.dwpsn	file "src/csl_sysctrl.c",line 229,column 2,is_stmt
        B $C$L23  ; |229| 
                                        ; branch occurs ; |229| 
$C$L22:    
	.dwpsn	file "src/csl_sysctrl.c",line 232,column 6,is_stmt
        MOV *SP(#1), AR3 ; |232| 
        AND #0xfffd, port(*AR3(short(#4))) ; |232| 
	.dwpsn	file "src/csl_sysctrl.c",line 234,column 1,is_stmt
$C$L23:    
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$21	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$21, DW_AT_low_pc(0x00)
	.dwattr $C$DW$21, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$17, DW_AT_TI_end_file("src/csl_sysctrl.c")
	.dwattr $C$DW$17, DW_AT_TI_end_line(0xea)
	.dwattr $C$DW$17, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$17


;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$27	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x01)
$C$DW$22	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SYS_PG4"), DW_AT_const_value(0x00)
$C$DW$23	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SYS_PG3"), DW_AT_const_value(0x01)
$C$DW$24	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SYS_PG1"), DW_AT_const_value(0x02)
	.dwendtag $C$DW$T$27

$C$DW$T$28	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SysPGFlags")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C)

$C$DW$T$29	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x01)
$C$DW$25	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_EBSR_FIELD_PPMODE"), DW_AT_const_value(0x00)
$C$DW$26	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_EBSR_FIELD_SP1MODE"), DW_AT_const_value(0x01)
$C$DW$27	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_EBSR_FIELD_SP0MODE"), DW_AT_const_value(0x02)
$C$DW$28	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_EBSR_FIELD_A20MODE"), DW_AT_const_value(0x03)
$C$DW$29	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_EBSR_FIELD_A19MODE"), DW_AT_const_value(0x04)
$C$DW$30	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_EBSR_FIELD_A18MODE"), DW_AT_const_value(0x05)
$C$DW$31	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_EBSR_FIELD_A17MODE"), DW_AT_const_value(0x06)
$C$DW$32	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_EBSR_FIELD_A16MODE"), DW_AT_const_value(0x07)
$C$DW$33	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_EBSR_FIELD_A15MODE"), DW_AT_const_value(0x08)
$C$DW$34	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_EBSR_FIELD_MAX"), DW_AT_const_value(0x09)
	.dwendtag $C$DW$T$29

$C$DW$T$30	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SysEbsrMode")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$30, DW_AT_language(DW_LANG_C)

$C$DW$T$31	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x01)
$C$DW$35	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DSP_LDO_1pt05_VOLTAGE"), DW_AT_const_value(0x00)
$C$DW$36	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DSP_LDO_1pt30_VOLTAGE"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$31

$C$DW$T$32	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SysDspLdoVoltage")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$32, DW_AT_language(DW_LANG_C)

$C$DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x48)
$C$DW$37	.dwtag  DW_TAG_member
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$37, DW_AT_name("EBSR")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_EBSR")
	.dwattr $C$DW$37, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$37, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$38	.dwtag  DW_TAG_member
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$38, DW_AT_name("RSVD0")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$38, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$38, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$39	.dwtag  DW_TAG_member
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$39, DW_AT_name("PCGCR1")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_PCGCR1")
	.dwattr $C$DW$39, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$39, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$40	.dwtag  DW_TAG_member
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$40, DW_AT_name("PCGCR2")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_PCGCR2")
	.dwattr $C$DW$40, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$40, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$41	.dwtag  DW_TAG_member
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$41, DW_AT_name("PSRCR")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_PSRCR")
	.dwattr $C$DW$41, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$41, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$42	.dwtag  DW_TAG_member
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$42, DW_AT_name("PRCR")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_PRCR")
	.dwattr $C$DW$42, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$42, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$43	.dwtag  DW_TAG_member
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$43, DW_AT_name("RSVD1")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_RSVD1")
	.dwattr $C$DW$43, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$43, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$44	.dwtag  DW_TAG_member
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$44, DW_AT_name("TIAFR")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_TIAFR")
	.dwattr $C$DW$44, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$44, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$45	.dwtag  DW_TAG_member
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$45, DW_AT_name("RSVD2")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_RSVD2")
	.dwattr $C$DW$45, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$45, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$46	.dwtag  DW_TAG_member
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$46, DW_AT_name("ODSCR")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_ODSCR")
	.dwattr $C$DW$46, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$46, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$47	.dwtag  DW_TAG_member
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$47, DW_AT_name("PDINHIBR1")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_PDINHIBR1")
	.dwattr $C$DW$47, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$47, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$48	.dwtag  DW_TAG_member
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$48, DW_AT_name("PDINHIBR2")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_PDINHIBR2")
	.dwattr $C$DW$48, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$48, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$49	.dwtag  DW_TAG_member
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$49, DW_AT_name("PDINHIBR3")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_PDINHIBR3")
	.dwattr $C$DW$49, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$49, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$50	.dwtag  DW_TAG_member
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$50, DW_AT_name("DMA0CESR1")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_DMA0CESR1")
	.dwattr $C$DW$50, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$50, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$51	.dwtag  DW_TAG_member
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$51, DW_AT_name("DMA0CESR2")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_DMA0CESR2")
	.dwattr $C$DW$51, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr $C$DW$51, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$52	.dwtag  DW_TAG_member
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$52, DW_AT_name("DMA1CESR1")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_DMA1CESR1")
	.dwattr $C$DW$52, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$52, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$53	.dwtag  DW_TAG_member
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$53, DW_AT_name("DMA1CESR2")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_DMA1CESR2")
	.dwattr $C$DW$53, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr $C$DW$53, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$54	.dwtag  DW_TAG_member
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$54, DW_AT_name("CCR1")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_CCR1")
	.dwattr $C$DW$54, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$54, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$55	.dwtag  DW_TAG_member
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$55, DW_AT_name("CCR2")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_CCR2")
	.dwattr $C$DW$55, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr $C$DW$55, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$56	.dwtag  DW_TAG_member
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$56, DW_AT_name("CGCR1")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_CGCR1")
	.dwattr $C$DW$56, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$56, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$57	.dwtag  DW_TAG_member
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$57, DW_AT_name("CGCR2")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_CGCR2")
	.dwattr $C$DW$57, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr $C$DW$57, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$58	.dwtag  DW_TAG_member
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$58, DW_AT_name("CGCR3")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_CGCR3")
	.dwattr $C$DW$58, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$58, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$59	.dwtag  DW_TAG_member
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$59, DW_AT_name("CGCR4")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_CGCR4")
	.dwattr $C$DW$59, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr $C$DW$59, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$60	.dwtag  DW_TAG_member
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$60, DW_AT_name("CCSSR")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_CCSSR")
	.dwattr $C$DW$60, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$60, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$61	.dwtag  DW_TAG_member
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$61, DW_AT_name("RSVD3")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_RSVD3")
	.dwattr $C$DW$61, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr $C$DW$61, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$62	.dwtag  DW_TAG_member
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$62, DW_AT_name("ECDR")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_ECDR")
	.dwattr $C$DW$62, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$62, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$63	.dwtag  DW_TAG_member
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$63, DW_AT_name("RSVD4")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_RSVD4")
	.dwattr $C$DW$63, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr $C$DW$63, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$64	.dwtag  DW_TAG_member
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$64, DW_AT_name("RAMSLPMDCNTLR1")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR1")
	.dwattr $C$DW$64, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$64, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$65	.dwtag  DW_TAG_member
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$65, DW_AT_name("RSVD5")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_RSVD5")
	.dwattr $C$DW$65, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr $C$DW$65, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$66	.dwtag  DW_TAG_member
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$66, DW_AT_name("RAMSLPMDCNTLR2")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR2")
	.dwattr $C$DW$66, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$66, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$67	.dwtag  DW_TAG_member
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$67, DW_AT_name("RAMSLPMDCNTLR3")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR3")
	.dwattr $C$DW$67, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr $C$DW$67, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$68	.dwtag  DW_TAG_member
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$68, DW_AT_name("RAMSLPMDCNTLR4")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR4")
	.dwattr $C$DW$68, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$68, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$69	.dwtag  DW_TAG_member
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$69, DW_AT_name("RAMSLPMDCNTLR5")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR5")
	.dwattr $C$DW$69, DW_AT_data_member_location[DW_OP_plus_uconst 0x2d]
	.dwattr $C$DW$69, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$70	.dwtag  DW_TAG_member
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$70, DW_AT_name("RSVD6")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_RSVD6")
	.dwattr $C$DW$70, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr $C$DW$70, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$71	.dwtag  DW_TAG_member
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$71, DW_AT_name("DMAIFR")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_DMAIFR")
	.dwattr $C$DW$71, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$71, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$72	.dwtag  DW_TAG_member
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$72, DW_AT_name("DMAIER")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_DMAIER")
	.dwattr $C$DW$72, DW_AT_data_member_location[DW_OP_plus_uconst 0x31]
	.dwattr $C$DW$72, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$73	.dwtag  DW_TAG_member
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$73, DW_AT_name("USBSCR")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_USBSCR")
	.dwattr $C$DW$73, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$73, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$74	.dwtag  DW_TAG_member
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$74, DW_AT_name("ESCR")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_ESCR")
	.dwattr $C$DW$74, DW_AT_data_member_location[DW_OP_plus_uconst 0x33]
	.dwattr $C$DW$74, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$75	.dwtag  DW_TAG_member
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$75, DW_AT_name("RSVD7")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_RSVD7")
	.dwattr $C$DW$75, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$75, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$76	.dwtag  DW_TAG_member
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$76, DW_AT_name("DMA2CESR1")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_DMA2CESR1")
	.dwattr $C$DW$76, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$76, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$77	.dwtag  DW_TAG_member
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$77, DW_AT_name("DMA2CESR2")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_DMA2CESR2")
	.dwattr $C$DW$77, DW_AT_data_member_location[DW_OP_plus_uconst 0x37]
	.dwattr $C$DW$77, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$78	.dwtag  DW_TAG_member
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$78, DW_AT_name("DMA3CESR1")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_DMA3CESR1")
	.dwattr $C$DW$78, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$78, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$79	.dwtag  DW_TAG_member
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$79, DW_AT_name("DMA3CESR2")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_DMA3CESR2")
	.dwattr $C$DW$79, DW_AT_data_member_location[DW_OP_plus_uconst 0x39]
	.dwattr $C$DW$79, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$80	.dwtag  DW_TAG_member
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$80, DW_AT_name("CLKSTOP")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_CLKSTOP")
	.dwattr $C$DW$80, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr $C$DW$80, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$81	.dwtag  DW_TAG_member
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$81, DW_AT_name("RSVD8")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_RSVD8")
	.dwattr $C$DW$81, DW_AT_data_member_location[DW_OP_plus_uconst 0x3b]
	.dwattr $C$DW$81, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$82	.dwtag  DW_TAG_member
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$82, DW_AT_name("DIEIDR0")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_DIEIDR0")
	.dwattr $C$DW$82, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$82, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$83	.dwtag  DW_TAG_member
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$83, DW_AT_name("DIEIDR1")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_DIEIDR1")
	.dwattr $C$DW$83, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr $C$DW$83, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$84	.dwtag  DW_TAG_member
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$84, DW_AT_name("DIEIDR2")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_DIEIDR2")
	.dwattr $C$DW$84, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr $C$DW$84, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$85	.dwtag  DW_TAG_member
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$85, DW_AT_name("DIEIDR3")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_DIEIDR3")
	.dwattr $C$DW$85, DW_AT_data_member_location[DW_OP_plus_uconst 0x43]
	.dwattr $C$DW$85, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$86	.dwtag  DW_TAG_member
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$86, DW_AT_name("DIEIDR4")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("_DIEIDR4")
	.dwattr $C$DW$86, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$86, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$87	.dwtag  DW_TAG_member
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$87, DW_AT_name("DIEIDR5")
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("_DIEIDR5")
	.dwattr $C$DW$87, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr $C$DW$87, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$88	.dwtag  DW_TAG_member
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$88, DW_AT_name("DIEIDR6")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("_DIEIDR6")
	.dwattr $C$DW$88, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr $C$DW$88, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$89	.dwtag  DW_TAG_member
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$89, DW_AT_name("DIEIDR7")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_DIEIDR7")
	.dwattr $C$DW$89, DW_AT_data_member_location[DW_OP_plus_uconst 0x47]
	.dwattr $C$DW$89, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$24

$C$DW$T$33	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SysRegs")
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$33, DW_AT_language(DW_LANG_C)
$C$DW$90	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$33)
$C$DW$91	.dwtag  DW_TAG_TI_ioport_type
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$90)
$C$DW$T$34	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$91)
$C$DW$T$35	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$35, DW_AT_address_class(0x10)

$C$DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x05)
$C$DW$92	.dwtag  DW_TAG_member
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$92, DW_AT_name("RSVD0")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$92, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$92, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$93	.dwtag  DW_TAG_member
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$93, DW_AT_name("LDOCTRL")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_LDOCTRL")
	.dwattr $C$DW$93, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$93, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$26

$C$DW$T$36	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_LdoRegs")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)
$C$DW$94	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$36)
$C$DW$95	.dwtag  DW_TAG_TI_ioport_type
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$94)
$C$DW$T$37	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$95)
$C$DW$T$38	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$38, DW_AT_address_class(0x10)
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
$C$DW$T$40	.dwtag  DW_TAG_typedef, DW_AT_name("Int16")
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$40, DW_AT_language(DW_LANG_C)
$C$DW$T$41	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_Status")
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$41, DW_AT_language(DW_LANG_C)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)
$C$DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
$C$DW$96	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$19)
$C$DW$T$20	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$96)

$C$DW$T$21	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x0e)
$C$DW$97	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$97, DW_AT_upper_bound(0x0d)
	.dwendtag $C$DW$T$21


$C$DW$T$22	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x02)
$C$DW$98	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$98, DW_AT_upper_bound(0x01)
	.dwendtag $C$DW$T$22


$C$DW$T$23	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x05)
$C$DW$99	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$99, DW_AT_upper_bound(0x04)
	.dwendtag $C$DW$T$23


$C$DW$T$25	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$25, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x04)
$C$DW$100	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$100, DW_AT_upper_bound(0x03)
	.dwendtag $C$DW$T$25

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

$C$DW$101	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$101, DW_AT_location[DW_OP_reg0]
$C$DW$102	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$102, DW_AT_location[DW_OP_reg1]
$C$DW$103	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$103, DW_AT_location[DW_OP_reg2]
$C$DW$104	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$104, DW_AT_location[DW_OP_reg3]
$C$DW$105	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$105, DW_AT_location[DW_OP_reg4]
$C$DW$106	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$106, DW_AT_location[DW_OP_reg5]
$C$DW$107	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$107, DW_AT_location[DW_OP_reg6]
$C$DW$108	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$108, DW_AT_location[DW_OP_reg7]
$C$DW$109	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$109, DW_AT_location[DW_OP_reg8]
$C$DW$110	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$110, DW_AT_location[DW_OP_reg9]
$C$DW$111	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$111, DW_AT_location[DW_OP_reg10]
$C$DW$112	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$112, DW_AT_location[DW_OP_reg11]
$C$DW$113	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$113, DW_AT_location[DW_OP_reg12]
$C$DW$114	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$114, DW_AT_location[DW_OP_reg13]
$C$DW$115	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$115, DW_AT_location[DW_OP_reg14]
$C$DW$116	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$116, DW_AT_location[DW_OP_reg15]
$C$DW$117	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$117, DW_AT_location[DW_OP_reg16]
$C$DW$118	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$118, DW_AT_location[DW_OP_reg17]
$C$DW$119	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$119, DW_AT_location[DW_OP_reg18]
$C$DW$120	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$120, DW_AT_location[DW_OP_reg19]
$C$DW$121	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$121, DW_AT_location[DW_OP_reg20]
$C$DW$122	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$122, DW_AT_location[DW_OP_reg21]
$C$DW$123	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$123, DW_AT_location[DW_OP_reg22]
$C$DW$124	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$124, DW_AT_location[DW_OP_reg23]
$C$DW$125	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$125, DW_AT_location[DW_OP_reg24]
$C$DW$126	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$126, DW_AT_location[DW_OP_reg25]
$C$DW$127	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$127, DW_AT_location[DW_OP_reg26]
$C$DW$128	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$128, DW_AT_location[DW_OP_reg27]
$C$DW$129	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$129, DW_AT_location[DW_OP_reg28]
$C$DW$130	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$130, DW_AT_location[DW_OP_reg29]
$C$DW$131	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$131, DW_AT_location[DW_OP_reg30]
$C$DW$132	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$132, DW_AT_location[DW_OP_reg31]
$C$DW$133	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$133, DW_AT_location[DW_OP_regx 0x20]
$C$DW$134	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$134, DW_AT_location[DW_OP_regx 0x21]
$C$DW$135	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$135, DW_AT_location[DW_OP_regx 0x22]
$C$DW$136	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$136, DW_AT_location[DW_OP_regx 0x23]
$C$DW$137	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$137, DW_AT_location[DW_OP_regx 0x24]
$C$DW$138	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$138, DW_AT_location[DW_OP_regx 0x25]
$C$DW$139	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$139, DW_AT_location[DW_OP_regx 0x26]
$C$DW$140	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$140, DW_AT_location[DW_OP_regx 0x27]
$C$DW$141	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$141, DW_AT_location[DW_OP_regx 0x28]
$C$DW$142	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$142, DW_AT_location[DW_OP_regx 0x29]
$C$DW$143	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$143, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$144	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$144, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$145	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$145, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$146	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$146, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$147	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$147, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$148	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$148, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$149	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$149, DW_AT_location[DW_OP_regx 0x30]
$C$DW$150	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$150, DW_AT_location[DW_OP_regx 0x31]
$C$DW$151	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$151, DW_AT_location[DW_OP_regx 0x32]
$C$DW$152	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$152, DW_AT_location[DW_OP_regx 0x33]
$C$DW$153	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$153, DW_AT_location[DW_OP_regx 0x34]
$C$DW$154	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$154, DW_AT_location[DW_OP_regx 0x35]
$C$DW$155	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$155, DW_AT_location[DW_OP_regx 0x36]
$C$DW$156	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$156, DW_AT_location[DW_OP_regx 0x37]
$C$DW$157	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$157, DW_AT_location[DW_OP_regx 0x38]
$C$DW$158	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$158, DW_AT_location[DW_OP_regx 0x39]
$C$DW$159	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$159, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$160	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$160, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$161	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$161, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$162	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$162, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$163	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$163, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$164	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$164, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$165	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$165, DW_AT_location[DW_OP_regx 0x40]
$C$DW$166	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$166, DW_AT_location[DW_OP_regx 0x41]
$C$DW$167	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$167, DW_AT_location[DW_OP_regx 0x42]
$C$DW$168	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$168, DW_AT_location[DW_OP_regx 0x43]
$C$DW$169	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$169, DW_AT_location[DW_OP_regx 0x44]
$C$DW$170	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$170, DW_AT_location[DW_OP_regx 0x45]
$C$DW$171	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$171, DW_AT_location[DW_OP_regx 0x46]
$C$DW$172	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$172, DW_AT_location[DW_OP_regx 0x47]
$C$DW$173	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$173, DW_AT_location[DW_OP_regx 0x48]
$C$DW$174	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$174, DW_AT_location[DW_OP_regx 0x49]
$C$DW$175	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$175, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$176	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$176, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$177	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$177, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$178	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$178, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$179	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$179, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$180	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$180, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$181	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$181, DW_AT_location[DW_OP_regx 0x50]
$C$DW$182	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$182, DW_AT_location[DW_OP_regx 0x51]
$C$DW$183	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$183, DW_AT_location[DW_OP_regx 0x52]
$C$DW$184	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$184, DW_AT_location[DW_OP_regx 0x53]
$C$DW$185	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$185, DW_AT_location[DW_OP_regx 0x54]
$C$DW$186	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$186, DW_AT_location[DW_OP_regx 0x55]
$C$DW$187	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$187, DW_AT_location[DW_OP_regx 0x56]
$C$DW$188	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$188, DW_AT_location[DW_OP_regx 0x57]
$C$DW$189	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$189, DW_AT_location[DW_OP_regx 0x58]
$C$DW$190	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$190, DW_AT_location[DW_OP_regx 0x59]
$C$DW$191	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$191, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$192	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$192, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

