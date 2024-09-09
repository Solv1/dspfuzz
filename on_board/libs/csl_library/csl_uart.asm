;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                        Unix v4.4.1 *
;* Date/Time created: Thu May  2 04:44:15 2024                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("src/csl_uart.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen Unix v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/santiago/dspfuzz/on_board/library")

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("SYS_peripheralReset")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_SYS_peripheralReset")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$53)
	.dwendtag $C$DW$1

;	/home/santiago/ti/55x_Tools/bin/acp55 -@/tmp/175927vnV4K 
	.sect	".text"

$C$DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("UART_getDataReadyStatus")
	.dwattr $C$DW$3, DW_AT_low_pc(_UART_getDataReadyStatus)
	.dwattr $C$DW$3, DW_AT_high_pc(0x00)
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_UART_getDataReadyStatus")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$3, DW_AT_TI_begin_file("./inc/csl_uartAux.h")
	.dwattr $C$DW$3, DW_AT_TI_begin_line(0x6d)
	.dwattr $C$DW$3, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$3, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./inc/csl_uartAux.h",line 110,column 1,is_stmt,address _UART_getDataReadyStatus

	.dwfde $C$DW$CIE, _UART_getDataReadyStatus
$C$DW$4	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUart")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_hUart")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$4, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: UART_getDataReadyStatus                                      *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,AR3,XAR3,SP,M40,SATA,SATD,   *
;*                        RDM,FRCT,SMUL                                        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_UART_getDataReadyStatus:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$5	.dwtag  DW_TAG_variable, DW_AT_name("hUart")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_hUart")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$6	.dwtag  DW_TAG_variable, DW_AT_name("DatRdy")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_DatRdy")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./inc/csl_uartAux.h",line 111,column 12,is_stmt
        MOV #0, *SP(#2) ; |111| 
	.dwpsn	file "./inc/csl_uartAux.h",line 113,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |113| 
        AMOV #10, T0
        MOV port(*AR3(T0)), AR1 ; |113| 
        AND #0x0001, AR1, AC0 ; |113| 
        MOV AC0, *SP(#2) ; |113| 
	.dwpsn	file "./inc/csl_uartAux.h",line 114,column 5,is_stmt
        MOV AC0, AR1
        BCC $C$L1,AR1 == #0 ; |114| 
                                        ; branchcc occurs ; |114| 
	.dwpsn	file "./inc/csl_uartAux.h",line 115,column 9,is_stmt
        MOV #1, T0
        B $C$L2   ; |115| 
                                        ; branch occurs ; |115| 
$C$L1:    
	.dwpsn	file "./inc/csl_uartAux.h",line 116,column 5,is_stmt
        MOV #0, T0
$C$L2:    
	.dwpsn	file "./inc/csl_uartAux.h",line 117,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$7	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$7, DW_AT_low_pc(0x00)
	.dwattr $C$DW$7, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$3, DW_AT_TI_end_file("./inc/csl_uartAux.h")
	.dwattr $C$DW$3, DW_AT_TI_end_line(0x75)
	.dwattr $C$DW$3, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$3

	.sect	".text"

$C$DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("UART_getXmitHoldRegEmptyStatus")
	.dwattr $C$DW$8, DW_AT_low_pc(_UART_getXmitHoldRegEmptyStatus)
	.dwattr $C$DW$8, DW_AT_high_pc(0x00)
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_UART_getXmitHoldRegEmptyStatus")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$8, DW_AT_TI_begin_file("./inc/csl_uartAux.h")
	.dwattr $C$DW$8, DW_AT_TI_begin_line(0xa2)
	.dwattr $C$DW$8, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$8, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./inc/csl_uartAux.h",line 163,column 1,is_stmt,address _UART_getXmitHoldRegEmptyStatus

	.dwfde $C$DW$CIE, _UART_getXmitHoldRegEmptyStatus
$C$DW$9	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUart")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_hUart")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: UART_getXmitHoldRegEmptyStatus                               *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,AR3,XAR3,SP,M40,SATA,SATD,   *
;*                        RDM,FRCT,SMUL                                        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_UART_getXmitHoldRegEmptyStatus:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$10	.dwtag  DW_TAG_variable, DW_AT_name("hUart")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_hUart")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$11	.dwtag  DW_TAG_variable, DW_AT_name("XmitRdy")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_XmitRdy")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./inc/csl_uartAux.h",line 164,column 12,is_stmt
        MOV #0, *SP(#2) ; |164| 
	.dwpsn	file "./inc/csl_uartAux.h",line 166,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |166| 
        AMOV #10, T0
        MOV port(*AR3(T0)), AR1 ; |166| 
        AND #0x0020, AR1, AC0 ; |166| 
        SFTS AC0, #-5, AC0 ; |166| 
        MOV AC0, *SP(#2) ; |166| 
	.dwpsn	file "./inc/csl_uartAux.h",line 168,column 5,is_stmt
        MOV AC0, AR1
        BCC $C$L3,AR1 == #0 ; |168| 
                                        ; branchcc occurs ; |168| 
	.dwpsn	file "./inc/csl_uartAux.h",line 169,column 9,is_stmt
        MOV #1, T0
        B $C$L4   ; |169| 
                                        ; branch occurs ; |169| 
$C$L3:    
	.dwpsn	file "./inc/csl_uartAux.h",line 170,column 5,is_stmt
        MOV #0, T0
$C$L4:    
	.dwpsn	file "./inc/csl_uartAux.h",line 171,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$12	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$12, DW_AT_low_pc(0x00)
	.dwattr $C$DW$12, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$8, DW_AT_TI_end_file("./inc/csl_uartAux.h")
	.dwattr $C$DW$8, DW_AT_TI_end_line(0xab)
	.dwattr $C$DW$8, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$8

	.sect	".text"

$C$DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("UART_getModeOfTransfer")
	.dwattr $C$DW$13, DW_AT_low_pc(_UART_getModeOfTransfer)
	.dwattr $C$DW$13, DW_AT_high_pc(0x00)
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_UART_getModeOfTransfer")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$13, DW_AT_TI_begin_file("./inc/csl_uartAux.h")
	.dwattr $C$DW$13, DW_AT_TI_begin_line(0x146)
	.dwattr $C$DW$13, DW_AT_TI_begin_column(0x12)
	.dwattr $C$DW$13, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./inc/csl_uartAux.h",line 327,column 1,is_stmt,address _UART_getModeOfTransfer

	.dwfde $C$DW$CIE, _UART_getModeOfTransfer
$C$DW$14	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUart")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_hUart")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: UART_getModeOfTransfer                                       *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,TC1,M40,SATA,*
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_UART_getModeOfTransfer:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$15	.dwtag  DW_TAG_variable, DW_AT_name("hUart")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_hUart")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$16	.dwtag  DW_TAG_variable, DW_AT_name("UtRst")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_UtRst")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./inc/csl_uartAux.h",line 328,column 12,is_stmt
        MOV #0, *SP(#2) ; |328| 
	.dwpsn	file "./inc/csl_uartAux.h",line 330,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |330| 
        MOV port(*AR3(short(#4))), AR1 ; |330| 
        AND #0x00c0, AR1, AC0 ; |330| 
        SFTS AC0, #-6, AC0 ; |330| 
        MOV AC0, *SP(#2) ; |330| 
	.dwpsn	file "./inc/csl_uartAux.h",line 332,column 5,is_stmt

        MOV AC0, AR1
||      MOV #0, AR2

        CMPU AR2 != AR1, TC1 ; |332| 
        BCC $C$L5,TC1 ; |332| 
                                        ; branchcc occurs ; |332| 
	.dwpsn	file "./inc/csl_uartAux.h",line 334,column 9,is_stmt
        MOV #1, T0
        B $C$L7   ; |334| 
                                        ; branch occurs ; |334| 
$C$L5:    
	.dwpsn	file "./inc/csl_uartAux.h",line 336,column 5,is_stmt
        MOV #3, AR2
        CMPU AR2 != AR1, TC1 ; |336| 
        BCC $C$L6,TC1 ; |336| 
                                        ; branchcc occurs ; |336| 
	.dwpsn	file "./inc/csl_uartAux.h",line 338,column 9,is_stmt
        MOV #0, T0
        B $C$L7   ; |338| 
                                        ; branch occurs ; |338| 
$C$L6:    
	.dwpsn	file "./inc/csl_uartAux.h",line 340,column 5,is_stmt
        MOV #2, T0
$C$L7:    
	.dwpsn	file "./inc/csl_uartAux.h",line 342,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$17	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$17, DW_AT_low_pc(0x00)
	.dwattr $C$DW$17, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$13, DW_AT_TI_end_file("./inc/csl_uartAux.h")
	.dwattr $C$DW$13, DW_AT_TI_end_line(0x156)
	.dwattr $C$DW$13, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$13

	.sect	".text"
	.global	_UART_init

$C$DW$18	.dwtag  DW_TAG_subprogram, DW_AT_name("UART_init")
	.dwattr $C$DW$18, DW_AT_low_pc(_UART_init)
	.dwattr $C$DW$18, DW_AT_high_pc(0x00)
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_UART_init")
	.dwattr $C$DW$18, DW_AT_external
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$18, DW_AT_TI_begin_file("src/csl_uart.c")
	.dwattr $C$DW$18, DW_AT_TI_begin_line(0x61)
	.dwattr $C$DW$18, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$18, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "src/csl_uart.c",line 99,column 1,is_stmt,address _UART_init

	.dwfde $C$DW$CIE, _UART_init
$C$DW$19	.dwtag  DW_TAG_formal_parameter, DW_AT_name("uartObj")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_uartObj")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_reg17]
$C$DW$20	.dwtag  DW_TAG_formal_parameter, DW_AT_name("uartInstId")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_uartInstId")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_reg0]
$C$DW$21	.dwtag  DW_TAG_formal_parameter, DW_AT_name("opmode")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_opmode")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: UART_init                                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,TC1, *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_UART_init:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$22	.dwtag  DW_TAG_variable, DW_AT_name("uartObj")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_uartObj")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$23	.dwtag  DW_TAG_variable, DW_AT_name("uartInstId")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_uartInstId")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$24	.dwtag  DW_TAG_variable, DW_AT_name("opmode")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_opmode")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$25	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_bregx 0x24 5]
        MOV T0, *SP(#4) ; |99| 
        MOV AC0, dbl(*SP(#2)) ; |99| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_uart.c",line 100,column 13,is_stmt
        MOV #0, *SP(#5) ; |100| 
	.dwpsn	file "src/csl_uart.c",line 103,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |103| 

        CMPU AC1 != AC0, TC1 ; |103| 
        BCC $C$L8,TC1 ; |103| 
                                        ; branchcc occurs ; |103| 
	.dwpsn	file "src/csl_uart.c",line 105,column 3,is_stmt
        MOV #-6, T0
        B $C$L14  ; |105| 
                                        ; branch occurs ; |105| 
$C$L8:    
	.dwpsn	file "src/csl_uart.c",line 108,column 5,is_stmt
        CMP *SP(#4) == #2, TC1 ; |108| 
        BCC $C$L11,!TC1 ; |108| 
                                        ; branchcc occurs ; |108| 
	.dwpsn	file "src/csl_uart.c",line 110,column 9,is_stmt
        MOV #-6, T0
        B $C$L14  ; |110| 
                                        ; branch occurs ; |110| 
$C$L9:    
	.dwpsn	file "src/csl_uart.c",line 117,column 8,is_stmt
        MOV *SP(#3), AR1 ; |117| 
        MOV AR1, *AR3 ; |117| 
	.dwpsn	file "src/csl_uart.c",line 118,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #7168, *AR3(short(#2)) ; |118| 
	.dwpsn	file "src/csl_uart.c",line 119,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #6912, *AR3(short(#1)) ; |119| 
	.dwpsn	file "src/csl_uart.c",line 120,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#4), AR1 ; |120| 
        MOV AR1, *AR3(short(#3)) ; |120| 
	.dwpsn	file "src/csl_uart.c",line 121,column 22,is_stmt
        B $C$L12  ; |121| 
                                        ; branch occurs ; |121| 
$C$L10:    
	.dwpsn	file "src/csl_uart.c",line 123,column 17,is_stmt
        MOV #1, *AR3 ; |123| 
	.dwpsn	file "src/csl_uart.c",line 124,column 17,is_stmt
        MOV #-546, *SP(#5) ; |124| 
	.dwpsn	file "src/csl_uart.c",line 125,column 22,is_stmt
        B $C$L12  ; |125| 
                                        ; branch occurs ; |125| 
$C$L11:    
	.dwpsn	file "src/csl_uart.c",line 114,column 6,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |114| 
        BCC $C$L9,AC0 == #0 ; |114| 
                                        ; branchcc occurs ; |114| 
        B $C$L10  ; |114| 
                                        ; branch occurs ; |114| 
$C$L12:    
	.dwpsn	file "src/csl_uart.c",line 127,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV *AR3, AR1 ; |127| 
||      MOV #1, AR2

        CMPU AR2 == AR1, TC1 ; |127| 
        BCC $C$L13,TC1 ; |127| 
                                        ; branchcc occurs ; |127| 
	.dwpsn	file "src/csl_uart.c",line 130,column 9,is_stmt
        MOV *AR3(short(#2)), AR3 ; |130| 
        MOV port(*AR3(short(#2))), AR1 ; |130| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#2)), AR3 ; |130| 
        BCLR @#15, AR1 ; |130| 
        MOV AR1, port(*AR3(short(#2))) ; |130| 
	.dwpsn	file "src/csl_uart.c",line 132,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#2)), AR3 ; |132| 
        MOV port(*AR3(short(#2))), AR1 ; |132| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#2)), AR3 ; |132| 
        BCLR @#2, AR1 ; |132| 
        MOV AR1, port(*AR3(short(#2))) ; |132| 
	.dwpsn	file "src/csl_uart.c",line 140,column 9,is_stmt
$C$DW$26	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$26, DW_AT_low_pc(0x00)
	.dwattr $C$DW$26, DW_AT_name("_SYS_peripheralReset")
	.dwattr $C$DW$26, DW_AT_TI_call

        CALL #_SYS_peripheralReset ; |140| 
||      MOV #0, T0

                                        ; call occurs [#_SYS_peripheralReset] ; |140| 
$C$L13:    
	.dwpsn	file "src/csl_uart.c",line 142,column 5,is_stmt
        MOV *SP(#5), T0 ; |142| 
$C$L14:    
	.dwpsn	file "src/csl_uart.c",line 143,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$27	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$27, DW_AT_low_pc(0x00)
	.dwattr $C$DW$27, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$18, DW_AT_TI_end_file("src/csl_uart.c")
	.dwattr $C$DW$18, DW_AT_TI_end_line(0x8f)
	.dwattr $C$DW$18, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$18

	.sect	".text"
	.global	_UART_setup

$C$DW$28	.dwtag  DW_TAG_subprogram, DW_AT_name("UART_setup")
	.dwattr $C$DW$28, DW_AT_low_pc(_UART_setup)
	.dwattr $C$DW$28, DW_AT_high_pc(0x00)
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_UART_setup")
	.dwattr $C$DW$28, DW_AT_external
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$28, DW_AT_TI_begin_file("src/csl_uart.c")
	.dwattr $C$DW$28, DW_AT_TI_begin_line(0xc3)
	.dwattr $C$DW$28, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$28, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "src/csl_uart.c",line 196,column 1,is_stmt,address _UART_setup

	.dwfde $C$DW$CIE, _UART_setup
$C$DW$29	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUart")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_hUart")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_reg17]
$C$DW$30	.dwtag  DW_TAG_formal_parameter, DW_AT_name("uartSetup")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_uartSetup")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: UART_setup                                                   *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,*
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (10 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_UART_setup:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-11, SP
	.dwcfi	cfa_offset, 12
$C$DW$31	.dwtag  DW_TAG_variable, DW_AT_name("hUart")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_hUart")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$32	.dwtag  DW_TAG_variable, DW_AT_name("uartSetup")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_uartSetup")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$33	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$34	.dwtag  DW_TAG_variable, DW_AT_name("value")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_value")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$35	.dwtag  DW_TAG_variable, DW_AT_name("clk_div")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_clk_div")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_bregx 0x24 8]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_uart.c",line 198,column 14,is_stmt
        MOV #0, *SP(#4) ; |198| 
	.dwpsn	file "src/csl_uart.c",line 202,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |202| 

        CMPU AC1 != AC0, TC1 ; |202| 
        BCC $C$L15,TC1 ; |202| 
                                        ; branchcc occurs ; |202| 
	.dwpsn	file "src/csl_uart.c",line 204,column 4,is_stmt
        MOV #-5, T0
        B $C$L42  ; |204| 
                                        ; branch occurs ; |204| 
$C$L15:    
	.dwpsn	file "src/csl_uart.c",line 206,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        CMPU AC1 != AC0, TC1 ; |206| 
        BCC $C$L16,TC1 ; |206| 
                                        ; branchcc occurs ; |206| 
	.dwpsn	file "src/csl_uart.c",line 208,column 4,is_stmt
        MOV #-6, T0
        B $C$L42  ; |208| 
                                        ; branch occurs ; |208| 
$C$L16:    
	.dwpsn	file "src/csl_uart.c",line 211,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #24, T0 ; |211| 
        MOV *AR3(short(#1)), AR3 ; |211| 
        MOV #0, port(*AR3(T0)) ; |211| 
	.dwpsn	file "src/csl_uart.c",line 213,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |213| 
        MOV port(*AR3(short(#6))), AR1 ; |213| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |213| 
        BCLR @#7, AR1 ; |213| 
        MOV AR1, port(*AR3(short(#6))) ; |213| 
	.dwpsn	file "src/csl_uart.c",line 215,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |215| 
        MOV #0, port(*AR3(short(#2))) ; |215| 
	.dwpsn	file "src/csl_uart.c",line 217,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |217| 
        MOV uns(port(*AR3)), AC0 ; |217| 
        MOV AC0, dbl(*SP(#6)) ; |217| 
	.dwpsn	file "src/csl_uart.c",line 219,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |219| 
        MOV port(*AR3(short(#4))), AR1 ; |219| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |219| 
        BCLR @#0, AR1 ; |219| 
        BSET @#0, AR1 ; |219| 
        MOV AR1, port(*AR3(short(#4))) ; |219| 
	.dwpsn	file "src/csl_uart.c",line 220,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |220| 
        MOV port(*AR3(short(#4))), AR1 ; |220| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |220| 
        BCLR @#1, AR1 ; |220| 
        BSET @#1, AR1 ; |220| 
        MOV AR1, port(*AR3(short(#4))) ; |220| 
	.dwpsn	file "src/csl_uart.c",line 221,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |221| 
        MOV port(*AR3(short(#4))), AR1 ; |221| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |221| 
        BCLR @#2, AR1 ; |221| 
        BSET @#2, AR1 ; |221| 
        MOV AR1, port(*AR3(short(#4))) ; |221| 
	.dwpsn	file "src/csl_uart.c",line 222,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#7)), AR1 ; |222| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |222| 
        MOV AR1, port(*AR3(short(#4))) ; |222| 
	.dwpsn	file "src/csl_uart.c",line 223,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#7)), AR1 ; |223| 
        MOV dbl(*SP(#0)), XAR3
        AND #0x00c0, AR1, AC0 ; |223| 
        SFTS AC0, #-6, AC0 ; |223| 
        MOV AC0, *AR3(short(#4)) ; |223| 
	.dwpsn	file "src/csl_uart.c",line 224,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(short(#2))), AC0 ; |224| 
        SFTL AC0, #4, AC0 ; |224| 
        MOV AC0, dbl(*SP(#8)) ; |224| 
	.dwpsn	file "src/csl_uart.c",line 227,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*SP(#8)), AC1 ; |227| 
        MOV dbl(*AR3), AC0 ; |227| 
$C$DW$36	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$36, DW_AT_low_pc(0x00)
	.dwattr $C$DW$36, DW_AT_name("__divul")
	.dwattr $C$DW$36, DW_AT_TI_call
        CALL #__divul ; |227| 
                                        ; call occurs [#__divul] ; |227| 
        MOV AC0, dbl(*SP(#6)) ; |227| 
	.dwpsn	file "src/csl_uart.c",line 230,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |230| 
        MOV port(*AR3(short(#6))), AR1 ; |230| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |230| 
        BCLR @#7, AR1 ; |230| 
        BSET @#7, AR1 ; |230| 
        MOV AR1, port(*AR3(short(#6))) ; |230| 
	.dwpsn	file "src/csl_uart.c",line 232,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*SP(#8)), AC1 ; |232| 
        MOV dbl(*AR3), AC0 ; |232| 
$C$DW$37	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$37, DW_AT_low_pc(0x00)
	.dwattr $C$DW$37, DW_AT_name("__remul")
	.dwattr $C$DW$37, DW_AT_TI_call
        CALL #__remul ; |232| 
                                        ; call occurs [#__remul] ; |232| 
        MOV dbl(*SP(#8)), AC1 ; |232| 
        SFTL AC1, #-1 ; |232| 
        CMPU AC0 < AC1, TC1 ; |232| 
        BCC $C$L18,TC1 ; |232| 
                                        ; branchcc occurs ; |232| 
	.dwpsn	file "src/csl_uart.c",line 235,column 3,is_stmt
        MOV dbl(*SP(#6)), AC1 ; |235| 

        AND #0x00ff, AC1, AC1 ; |235| 
||      MOV #255, AC0 ; |235| 

        CMPU AC1 == AC0, TC1 ; |235| 
        BCC $C$L17,TC1 ; |235| 
                                        ; branchcc occurs ; |235| 
	.dwpsn	file "src/csl_uart.c",line 237,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #16, T0 ; |237| 
        MOV *AR3(short(#1)), AR3 ; |237| 
        MOV dbl(*SP(#6)), AC0 ; |237| 
        AND #0x00ff, AC0, AC0 ; |237| 
        ADD #1, AC0 ; |237| 
        MOV AC0, port(*AR3(T0)) ; |237| 
	.dwpsn	file "src/csl_uart.c",line 238,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #18, T0 ; |238| 
        MOV *AR3(short(#1)), AR3 ; |238| 
        MOV dbl(*SP(#6)), AC0 ; |238| 
        AND #0xff00, AC0, AC0 ; |238| 
        SFTL AC0, #-8, AC0 ; |238| 
        MOV AC0, port(*AR3(T0)) ; |238| 
	.dwpsn	file "src/csl_uart.c",line 239,column 9,is_stmt
        B $C$L19  ; |239| 
                                        ; branch occurs ; |239| 
$C$L17:    
	.dwpsn	file "src/csl_uart.c",line 242,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #16, T0 ; |242| 
        MOV *AR3(short(#1)), AR3 ; |242| 
        MOV #0, port(*AR3(T0)) ; |242| 
	.dwpsn	file "src/csl_uart.c",line 243,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #18, T0 ; |243| 
        MOV *AR3(short(#1)), AR3 ; |243| 
        MOV dbl(*SP(#6)), AC0 ; |243| 
        AND #0xff00, AC0, AC0 ; |243| 
        SFTL AC0, #-8, AC0 ; |243| 
        ADD #1, AC0 ; |243| 
        MOV AC0, port(*AR3(T0)) ; |243| 
	.dwpsn	file "src/csl_uart.c",line 246,column 5,is_stmt
        B $C$L19  ; |246| 
                                        ; branch occurs ; |246| 
$C$L18:    
	.dwpsn	file "src/csl_uart.c",line 249,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #16, T0 ; |249| 
        MOV *AR3(short(#1)), AR3 ; |249| 
        MOV dbl(*SP(#6)), AC0 ; |249| 
        AND #0x00ff, AC0, AC0 ; |249| 
        MOV AC0, port(*AR3(T0)) ; |249| 
	.dwpsn	file "src/csl_uart.c",line 250,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #18, T0 ; |250| 
        MOV *AR3(short(#1)), AR3 ; |250| 
        MOV dbl(*SP(#6)), AC0 ; |250| 
        AND #0xff00, AC0, AC0 ; |250| 
        SFTL AC0, #-8, AC0 ; |250| 
        MOV AC0, port(*AR3(T0)) ; |250| 
$C$L19:    
	.dwpsn	file "src/csl_uart.c",line 253,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |253| 
        MOV port(*AR3(short(#6))), AR1 ; |253| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |253| 
        BCLR @#7, AR1 ; |253| 
        MOV AR1, port(*AR3(short(#6))) ; |253| 
	.dwpsn	file "src/csl_uart.c",line 255,column 5,is_stmt
        B $C$L25  ; |255| 
                                        ; branch occurs ; |255| 
$C$L20:    
	.dwpsn	file "src/csl_uart.c",line 258,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |258| 
        MOV port(*AR3(short(#6))), AR1 ; |258| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |258| 
        AND #0xfffc, AR1, AC0 ; |258| 
        MOV AC0, port(*AR3(short(#6))) ; |258| 
	.dwpsn	file "src/csl_uart.c",line 259,column 18,is_stmt
        B $C$L26  ; |259| 
                                        ; branch occurs ; |259| 
$C$L21:    
	.dwpsn	file "src/csl_uart.c",line 261,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |261| 
        MOV port(*AR3(short(#6))), AR1 ; |261| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |261| 
        AND #0xfffc, AR1, AC0 ; |261| 
        BSET @#0, AC0 ; |261| 
        MOV AC0, port(*AR3(short(#6))) ; |261| 
	.dwpsn	file "src/csl_uart.c",line 262,column 18,is_stmt
        B $C$L26  ; |262| 
                                        ; branch occurs ; |262| 
$C$L22:    
	.dwpsn	file "src/csl_uart.c",line 264,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |264| 
        MOV port(*AR3(short(#6))), AR1 ; |264| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |264| 
        AND #0xfffc, AR1, AC0 ; |264| 
        BSET @#1, AC0 ; |264| 
        MOV AC0, port(*AR3(short(#6))) ; |264| 
	.dwpsn	file "src/csl_uart.c",line 265,column 18,is_stmt
        B $C$L26  ; |265| 
                                        ; branch occurs ; |265| 
$C$L23:    
	.dwpsn	file "src/csl_uart.c",line 267,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |267| 
        MOV port(*AR3(short(#6))), AR1 ; |267| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |267| 
        AND #0xfffc, AR1, AR1 ; |267| 
        OR #0x0003, AR1, AR1 ; |267| 
        MOV AR1, port(*AR3(short(#6))) ; |267| 
	.dwpsn	file "src/csl_uart.c",line 268,column 18,is_stmt
        B $C$L26  ; |268| 
                                        ; branch occurs ; |268| 
$C$L24:    
	.dwpsn	file "src/csl_uart.c",line 270,column 13,is_stmt
        MOV #12, T0
        B $C$L42  ; |270| 
                                        ; branch occurs ; |270| 
$C$L25:    
	.dwpsn	file "src/csl_uart.c",line 255,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3

        MOV *AR3(short(#4)), AR1 ; |255| 
||      MOV #5, AR2

        CMPU AR1 == AR2, TC1 ; |255| 
        BCC $C$L20,TC1 ; |255| 
                                        ; branchcc occurs ; |255| 
        MOV #6, AR2
        CMPU AR1 == AR2, TC1 ; |255| 
        BCC $C$L21,TC1 ; |255| 
                                        ; branchcc occurs ; |255| 
        MOV #7, AR2
        CMPU AR1 == AR2, TC1 ; |255| 
        BCC $C$L22,TC1 ; |255| 
                                        ; branchcc occurs ; |255| 
        MOV #8, AR2
        CMPU AR1 == AR2, TC1 ; |255| 
        BCC $C$L23,TC1 ; |255| 
                                        ; branchcc occurs ; |255| 
        B $C$L24  ; |255| 
                                        ; branch occurs ; |255| 
$C$L26:    
	.dwpsn	file "src/csl_uart.c",line 275,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |275| 
        MOV port(*AR3(short(#6))), AR1 ; |275| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#5)), AC0 ; |275| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |275| 

        BCLR @#2, AR1 ; |275| 
||      SFTL AC0, #2, AC0 ; |275| 

        AND #0x0004, AC0, AR2 ; |275| 
        OR AR1, AR2 ; |275| 
        MOV AR2, port(*AR3(short(#6))) ; |275| 
	.dwpsn	file "src/csl_uart.c",line 278,column 5,is_stmt
        B $C$L33  ; |278| 
                                        ; branch occurs ; |278| 
$C$L27:    
	.dwpsn	file "src/csl_uart.c",line 281,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |281| 
        MOV port(*AR3(short(#6))), AR1 ; |281| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |281| 
        BCLR @#3, AR1 ; |281| 
        MOV AR1, port(*AR3(short(#6))) ; |281| 
	.dwpsn	file "src/csl_uart.c",line 282,column 18,is_stmt
        B $C$L35  ; |282| 
                                        ; branch occurs ; |282| 
$C$L28:    
	.dwpsn	file "src/csl_uart.c",line 284,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |284| 
        MOV port(*AR3(short(#6))), AR1 ; |284| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |284| 
        BCLR @#3, AR1 ; |284| 
        BSET @#3, AR1 ; |284| 
        MOV AR1, port(*AR3(short(#6))) ; |284| 
	.dwpsn	file "src/csl_uart.c",line 285,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |285| 
        MOV port(*AR3(short(#6))), AR1 ; |285| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |285| 
        BCLR @#4, AR1 ; |285| 
        MOV AR1, port(*AR3(short(#6))) ; |285| 
	.dwpsn	file "src/csl_uart.c",line 286,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |286| 
        MOV port(*AR3(short(#6))), AR1 ; |286| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |286| 
        BCLR @#5, AR1 ; |286| 
        MOV AR1, port(*AR3(short(#6))) ; |286| 
	.dwpsn	file "src/csl_uart.c",line 287,column 18,is_stmt
        B $C$L35  ; |287| 
                                        ; branch occurs ; |287| 
$C$L29:    
	.dwpsn	file "src/csl_uart.c",line 289,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |289| 
        MOV port(*AR3(short(#6))), AR1 ; |289| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |289| 
        BCLR @#3, AR1 ; |289| 
        BSET @#3, AR1 ; |289| 
        MOV AR1, port(*AR3(short(#6))) ; |289| 
	.dwpsn	file "src/csl_uart.c",line 290,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |290| 
        MOV port(*AR3(short(#6))), AR1 ; |290| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |290| 
        BCLR @#4, AR1 ; |290| 
        BSET @#4, AR1 ; |290| 
        MOV AR1, port(*AR3(short(#6))) ; |290| 
	.dwpsn	file "src/csl_uart.c",line 291,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |291| 
        MOV port(*AR3(short(#6))), AR1 ; |291| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |291| 
        BCLR @#5, AR1 ; |291| 
        MOV AR1, port(*AR3(short(#6))) ; |291| 
	.dwpsn	file "src/csl_uart.c",line 292,column 18,is_stmt
        B $C$L35  ; |292| 
                                        ; branch occurs ; |292| 
$C$L30:    
	.dwpsn	file "src/csl_uart.c",line 294,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |294| 
        MOV port(*AR3(short(#6))), AR1 ; |294| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |294| 
        BCLR @#3, AR1 ; |294| 
        BSET @#3, AR1 ; |294| 
        MOV AR1, port(*AR3(short(#6))) ; |294| 
	.dwpsn	file "src/csl_uart.c",line 295,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |295| 
        MOV port(*AR3(short(#6))), AR1 ; |295| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |295| 
        BCLR @#4, AR1 ; |295| 
        MOV AR1, port(*AR3(short(#6))) ; |295| 
	.dwpsn	file "src/csl_uart.c",line 296,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |296| 
        MOV port(*AR3(short(#6))), AR1 ; |296| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |296| 
        BCLR @#5, AR1 ; |296| 
        BSET @#5, AR1 ; |296| 
        MOV AR1, port(*AR3(short(#6))) ; |296| 
	.dwpsn	file "src/csl_uart.c",line 297,column 18,is_stmt
        B $C$L35  ; |297| 
                                        ; branch occurs ; |297| 
$C$L31:    
	.dwpsn	file "src/csl_uart.c",line 299,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |299| 
        MOV port(*AR3(short(#6))), AR1 ; |299| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |299| 
        BCLR @#3, AR1 ; |299| 
        BSET @#3, AR1 ; |299| 
        MOV AR1, port(*AR3(short(#6))) ; |299| 
	.dwpsn	file "src/csl_uart.c",line 300,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |300| 
        MOV port(*AR3(short(#6))), AR1 ; |300| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |300| 
        BCLR @#4, AR1 ; |300| 
        BSET @#4, AR1 ; |300| 
        MOV AR1, port(*AR3(short(#6))) ; |300| 
	.dwpsn	file "src/csl_uart.c",line 301,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |301| 
        MOV port(*AR3(short(#6))), AR1 ; |301| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |301| 
        BCLR @#5, AR1 ; |301| 
        BSET @#5, AR1 ; |301| 
        MOV AR1, port(*AR3(short(#6))) ; |301| 
	.dwpsn	file "src/csl_uart.c",line 302,column 18,is_stmt
        B $C$L35  ; |302| 
                                        ; branch occurs ; |302| 
$C$L32:    
	.dwpsn	file "src/csl_uart.c",line 304,column 13,is_stmt
        MOV #-6, T0
        B $C$L42  ; |304| 
                                        ; branch occurs ; |304| 
$C$L33:    
	.dwpsn	file "src/csl_uart.c",line 278,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3

        MOV *AR3(short(#6)), AR1 ; |278| 
||      MOV #2, AR2

        CMP AR1 > AR2, TC1 ; |278| 
        BCC $C$L34,TC1 ; |278| 
                                        ; branchcc occurs ; |278| 
        CMP AR1 == AR2, TC1 ; |278| 
        BCC $C$L29,TC1 ; |278| 
                                        ; branchcc occurs ; |278| 
        BCC $C$L27,AR1 == #0 ; |278| 
                                        ; branchcc occurs ; |278| 
        MOV #1, AR2
        CMPU AR1 == AR2, TC1 ; |278| 
        BCC $C$L28,TC1 ; |278| 
                                        ; branchcc occurs ; |278| 
        B $C$L32  ; |278| 
                                        ; branch occurs ; |278| 
$C$L34:    
        MOV #3, AR2
        CMPU AR1 == AR2, TC1 ; |278| 
        BCC $C$L30,TC1 ; |278| 
                                        ; branchcc occurs ; |278| 
        MOV #4, AR2
        CMPU AR1 == AR2, TC1 ; |278| 
        BCC $C$L31,TC1 ; |278| 
                                        ; branchcc occurs ; |278| 
        B $C$L32  ; |278| 
                                        ; branch occurs ; |278| 
$C$L35:    
	.dwpsn	file "src/csl_uart.c",line 308,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#8), AR1 ; |308| 
        BCC $C$L36,AR1 == #0 ; |308| 
                                        ; branchcc occurs ; |308| 
	.dwpsn	file "src/csl_uart.c",line 310,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |310| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR1 ; |310| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |310| 
        BCLR @#4, AR1 ; |310| 
        BSET @#4, AR1 ; |310| 
        MOV AR1, port(*AR3(T0)) ; |310| 
	.dwpsn	file "src/csl_uart.c",line 311,column 2,is_stmt
        B $C$L37  ; |311| 
                                        ; branch occurs ; |311| 
$C$L36:    
	.dwpsn	file "src/csl_uart.c",line 314,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |314| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR1 ; |314| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |314| 
        BCLR @#4, AR1 ; |314| 
        MOV AR1, port(*AR3(T0)) ; |314| 
$C$L37:    
	.dwpsn	file "src/csl_uart.c",line 317,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#9), AR1 ; |317| 
        BCC $C$L38,AR1 == #0 ; |317| 
                                        ; branchcc occurs ; |317| 
	.dwpsn	file "src/csl_uart.c",line 319,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |319| 
        MOV port(*AR3(T0)), AR1 ; |319| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |319| 
        BCLR @#5, AR1 ; |319| 
        BSET @#5, AR1 ; |319| 
        MOV AR1, port(*AR3(T0)) ; |319| 
	.dwpsn	file "src/csl_uart.c",line 320,column 2,is_stmt
        B $C$L39  ; |320| 
                                        ; branch occurs ; |320| 
$C$L38:    
	.dwpsn	file "src/csl_uart.c",line 323,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |323| 
        MOV port(*AR3(T0)), AR1 ; |323| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |323| 
        BCLR @#5, AR1 ; |323| 
        MOV AR1, port(*AR3(T0)) ; |323| 
$C$L39:    
	.dwpsn	file "src/csl_uart.c",line 325,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#10), AR1 ; |325| 
        BCC $C$L40,AR1 == #0 ; |325| 
                                        ; branchcc occurs ; |325| 
	.dwpsn	file "src/csl_uart.c",line 327,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |327| 
        MOV port(*AR3(T0)), AR1 ; |327| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |327| 
        BCLR @#1, AR1 ; |327| 
        BSET @#1, AR1 ; |327| 
        MOV AR1, port(*AR3(T0)) ; |327| 
	.dwpsn	file "src/csl_uart.c",line 328,column 2,is_stmt
        B $C$L41  ; |328| 
                                        ; branch occurs ; |328| 
$C$L40:    
	.dwpsn	file "src/csl_uart.c",line 331,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |331| 
        MOV port(*AR3(T0)), AR1 ; |331| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |331| 
        BCLR @#1, AR1 ; |331| 
        MOV AR1, port(*AR3(T0)) ; |331| 
$C$L41:    
	.dwpsn	file "src/csl_uart.c",line 335,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #24, T0 ; |335| 
        MOV *AR3(short(#1)), AR3 ; |335| 
        MOV port(*AR3(T0)), AR1 ; |335| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |335| 
        BCLR @#13, AR1 ; |335| 
        BSET @#13, AR1 ; |335| 
        MOV AR1, port(*AR3(T0)) ; |335| 
	.dwpsn	file "src/csl_uart.c",line 337,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |337| 
        MOV port(*AR3(T0)), AR1 ; |337| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |337| 
        BCLR @#14, AR1 ; |337| 
        BSET @#14, AR1 ; |337| 
        MOV AR1, port(*AR3(T0)) ; |337| 
	.dwpsn	file "src/csl_uart.c",line 339,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |339| 
        MOV port(*AR3(T0)), AR1 ; |339| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |339| 
        BCLR @#0, AR1 ; |339| 
        BSET @#0, AR1 ; |339| 
        MOV AR1, port(*AR3(T0)) ; |339| 
	.dwpsn	file "src/csl_uart.c",line 340,column 5,is_stmt
        MOV *SP(#4), T0 ; |340| 
$C$L42:    
	.dwpsn	file "src/csl_uart.c",line 341,column 1,is_stmt
        AADD #11, SP
	.dwcfi	cfa_offset, 1
$C$DW$38	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$38, DW_AT_low_pc(0x00)
	.dwattr $C$DW$38, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$28, DW_AT_TI_end_file("src/csl_uart.c")
	.dwattr $C$DW$28, DW_AT_TI_end_line(0x155)
	.dwattr $C$DW$28, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$28

	.sect	".text"
	.global	_UART_config

$C$DW$39	.dwtag  DW_TAG_subprogram, DW_AT_name("UART_config")
	.dwattr $C$DW$39, DW_AT_low_pc(_UART_config)
	.dwattr $C$DW$39, DW_AT_high_pc(0x00)
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_UART_config")
	.dwattr $C$DW$39, DW_AT_external
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$39, DW_AT_TI_begin_file("src/csl_uart.c")
	.dwattr $C$DW$39, DW_AT_TI_begin_line(0x188)
	.dwattr $C$DW$39, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$39, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_uart.c",line 393,column 2,is_stmt,address _UART_config

	.dwfde $C$DW$CIE, _UART_config
$C$DW$40	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUart")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_hUart")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_reg17]
$C$DW$41	.dwtag  DW_TAG_formal_parameter, DW_AT_name("uartConfig")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_uartConfig")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: UART_config                                                  *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,TC1,*
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_UART_config:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$42	.dwtag  DW_TAG_variable, DW_AT_name("hUart")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_hUart")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$43	.dwtag  DW_TAG_variable, DW_AT_name("uartConfig")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_uartConfig")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$44	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_uart.c",line 395,column 13,is_stmt
        MOV #0, *SP(#4) ; |395| 
	.dwpsn	file "src/csl_uart.c",line 398,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |398| 

        CMPU AC1 != AC0, TC1 ; |398| 
        BCC $C$L43,TC1 ; |398| 
                                        ; branchcc occurs ; |398| 
	.dwpsn	file "src/csl_uart.c",line 400,column 4,is_stmt
        MOV #-5, T0
        B $C$L45  ; |400| 
                                        ; branch occurs ; |400| 
$C$L43:    
	.dwpsn	file "src/csl_uart.c",line 403,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        CMPU AC1 != AC0, TC1 ; |403| 
        BCC $C$L44,TC1 ; |403| 
                                        ; branchcc occurs ; |403| 
	.dwpsn	file "src/csl_uart.c",line 405,column 4,is_stmt
        MOV #-6, T0
        B $C$L45  ; |405| 
                                        ; branch occurs ; |405| 
$C$L44:    
	.dwpsn	file "src/csl_uart.c",line 408,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #24, T0 ; |408| 
        MOV *AR3(short(#1)), AR3 ; |408| 
        MOV #0, port(*AR3(T0)) ; |408| 
	.dwpsn	file "src/csl_uart.c",line 409,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |409| 
        MOV port(*AR3(short(#6))), AR1 ; |409| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |409| 
        BCLR @#7, AR1 ; |409| 
        BSET @#7, AR1 ; |409| 
        MOV AR1, port(*AR3(short(#6))) ; |409| 
	.dwpsn	file "src/csl_uart.c",line 410,column 6,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3, AR1 ; |410| 
        MOV dbl(*SP(#0)), XAR3
        MOV #16, T0 ; |410| 
        MOV *AR3(short(#1)), AR3 ; |410| 
        MOV AR1, port(*AR3(T0)) ; |410| 
	.dwpsn	file "src/csl_uart.c",line 411,column 6,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#1)), AR1 ; |411| 
        MOV dbl(*SP(#0)), XAR3
        MOV #18, T0 ; |411| 
        MOV *AR3(short(#1)), AR3 ; |411| 
        MOV AR1, port(*AR3(T0)) ; |411| 
	.dwpsn	file "src/csl_uart.c",line 412,column 6,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#2)), AR1 ; |412| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |412| 
        MOV AR1, port(*AR3(short(#6))) ; |412| 
	.dwpsn	file "src/csl_uart.c",line 413,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |413| 
        MOV port(*AR3(short(#4))), AR1 ; |413| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |413| 
        BCLR @#0, AR1 ; |413| 
        BSET @#0, AR1 ; |413| 
        MOV AR1, port(*AR3(short(#4))) ; |413| 
	.dwpsn	file "src/csl_uart.c",line 414,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |414| 
        MOV port(*AR3(short(#4))), AR1 ; |414| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |414| 
        BCLR @#1, AR1 ; |414| 
        BSET @#1, AR1 ; |414| 
        MOV AR1, port(*AR3(short(#4))) ; |414| 
	.dwpsn	file "src/csl_uart.c",line 415,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |415| 
        MOV port(*AR3(short(#4))), AR1 ; |415| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |415| 
        BCLR @#2, AR1 ; |415| 
        BSET @#2, AR1 ; |415| 
        MOV AR1, port(*AR3(short(#4))) ; |415| 
	.dwpsn	file "src/csl_uart.c",line 416,column 6,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#3)), AR1 ; |416| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |416| 
        MOV AR1, port(*AR3(short(#4))) ; |416| 
	.dwpsn	file "src/csl_uart.c",line 417,column 6,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#3)), AR1 ; |417| 
        MOV dbl(*SP(#0)), XAR3
        AND #0x00c0, AR1, AC0 ; |417| 
        SFTS AC0, #-6, AC0 ; |417| 
        MOV AC0, *AR3(short(#4)) ; |417| 
	.dwpsn	file "src/csl_uart.c",line 418,column 6,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#4)), AR1 ; |418| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |418| 
        AMOV #8, T0
        MOV AR1, port(*AR3(T0)) ; |418| 
	.dwpsn	file "src/csl_uart.c",line 420,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |420| 
        MOV port(*AR3(short(#6))), AR1 ; |420| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |420| 
        BCLR @#7, AR1 ; |420| 
        MOV AR1, port(*AR3(short(#6))) ; |420| 
	.dwpsn	file "src/csl_uart.c",line 422,column 2,is_stmt
        MOV *SP(#4), T0 ; |422| 
$C$L45:    
	.dwpsn	file "src/csl_uart.c",line 423,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$45	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$45, DW_AT_low_pc(0x00)
	.dwattr $C$DW$45, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$39, DW_AT_TI_end_file("src/csl_uart.c")
	.dwattr $C$DW$39, DW_AT_TI_end_line(0x1a7)
	.dwattr $C$DW$39, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$39

	.sect	".text"
	.global	_UART_setupBaudRate

$C$DW$46	.dwtag  DW_TAG_subprogram, DW_AT_name("UART_setupBaudRate")
	.dwattr $C$DW$46, DW_AT_low_pc(_UART_setupBaudRate)
	.dwattr $C$DW$46, DW_AT_high_pc(0x00)
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_UART_setupBaudRate")
	.dwattr $C$DW$46, DW_AT_external
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$46, DW_AT_TI_begin_file("src/csl_uart.c")
	.dwattr $C$DW$46, DW_AT_TI_begin_line(0x1dc)
	.dwattr $C$DW$46, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$46, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "src/csl_uart.c",line 477,column 1,is_stmt,address _UART_setupBaudRate

	.dwfde $C$DW$CIE, _UART_setupBaudRate
$C$DW$47	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUart")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_hUart")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_reg17]
$C$DW$48	.dwtag  DW_TAG_formal_parameter, DW_AT_name("clkInput")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_clkInput")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_reg0]
$C$DW$49	.dwtag  DW_TAG_formal_parameter, DW_AT_name("baudRate")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_baudRate")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_reg3]
;*******************************************************************************
;* FUNCTION NAME: UART_setupBaudRate                                           *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR3,XAR3,SP,CARRY,   *
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (11 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_UART_setupBaudRate:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-11, SP
	.dwcfi	cfa_offset, 12
$C$DW$50	.dwtag  DW_TAG_variable, DW_AT_name("hUart")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_hUart")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$51	.dwtag  DW_TAG_variable, DW_AT_name("clkInput")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_clkInput")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$52	.dwtag  DW_TAG_variable, DW_AT_name("baudRate")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_baudRate")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$53	.dwtag  DW_TAG_variable, DW_AT_name("clk_div")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_clk_div")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$54	.dwtag  DW_TAG_variable, DW_AT_name("value")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_value")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$55	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$55, DW_AT_location[DW_OP_bregx 0x24 10]
        MOV AC1, dbl(*SP(#4)) ; |477| 
        MOV AC0, dbl(*SP(#2)) ; |477| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_uart.c",line 478,column 9,is_stmt
        MOV #0, AC0 ; |478| 
        MOV AC0, dbl(*SP(#6)) ; |478| 
	.dwpsn	file "src/csl_uart.c",line 479,column 9,is_stmt
        MOV AC0, dbl(*SP(#8)) ; |479| 
	.dwpsn	file "src/csl_uart.c",line 480,column 13,is_stmt
        MOV #0, *SP(#10) ; |480| 
	.dwpsn	file "src/csl_uart.c",line 482,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |482| 

        CMPU AC1 != AC0, TC1 ; |482| 
        BCC $C$L46,TC1 ; |482| 
                                        ; branchcc occurs ; |482| 
	.dwpsn	file "src/csl_uart.c",line 484,column 4,is_stmt
        MOV #-5, T0
        B $C$L50  ; |484| 
                                        ; branch occurs ; |484| 
$C$L46:    
	.dwpsn	file "src/csl_uart.c",line 488,column 2,is_stmt
        MOV *AR3(short(#1)), AR3 ; |488| 
        MOV port(*AR3(short(#6))), AR1 ; |488| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |488| 
        BCLR @#7, AR1 ; |488| 
        BSET @#7, AR1 ; |488| 
        MOV AR1, port(*AR3(short(#6))) ; |488| 
	.dwpsn	file "src/csl_uart.c",line 489,column 2,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |489| 
        SFTL AC0, #4, AC0 ; |489| 
        MOV AC0, dbl(*SP(#6)) ; |489| 
	.dwpsn	file "src/csl_uart.c",line 492,column 2,is_stmt
        MOV dbl(*SP(#6)), AC1 ; |492| 
        MOV dbl(*SP(#2)), AC0 ; |492| 
$C$DW$56	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$56, DW_AT_low_pc(0x00)
	.dwattr $C$DW$56, DW_AT_name("__divul")
	.dwattr $C$DW$56, DW_AT_TI_call
        CALL #__divul ; |492| 
                                        ; call occurs [#__divul] ; |492| 
        MOV AC0, dbl(*SP(#8)) ; |492| 
	.dwpsn	file "src/csl_uart.c",line 494,column 2,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |494| 
        MOV dbl(*SP(#6)), AC1 ; |494| 
$C$DW$57	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$57, DW_AT_low_pc(0x00)
	.dwattr $C$DW$57, DW_AT_name("__remul")
	.dwattr $C$DW$57, DW_AT_TI_call
        CALL #__remul ; |494| 
                                        ; call occurs [#__remul] ; |494| 
        MOV dbl(*SP(#6)), AC1 ; |494| 
        SFTL AC1, #-1 ; |494| 
        CMPU AC0 < AC1, TC1 ; |494| 
        BCC $C$L48,TC1 ; |494| 
                                        ; branchcc occurs ; |494| 
	.dwpsn	file "src/csl_uart.c",line 498,column 3,is_stmt
        MOV dbl(*SP(#8)), AC1 ; |498| 

        AND #0x00ff, AC1, AC1 ; |498| 
||      MOV #255, AC0 ; |498| 

        CMPU AC1 == AC0, TC1 ; |498| 
        BCC $C$L47,TC1 ; |498| 
                                        ; branchcc occurs ; |498| 
	.dwpsn	file "src/csl_uart.c",line 500,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #16, T0 ; |500| 
        MOV *AR3(short(#1)), AR3 ; |500| 
        MOV dbl(*SP(#8)), AC0 ; |500| 
        AND #0x00ff, AC0, AC0 ; |500| 
        ADD #1, AC0 ; |500| 
        MOV AC0, port(*AR3(T0)) ; |500| 
	.dwpsn	file "src/csl_uart.c",line 501,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #18, T0 ; |501| 
        MOV *AR3(short(#1)), AR3 ; |501| 
        MOV dbl(*SP(#8)), AC0 ; |501| 
        AND #0xff00, AC0, AC0 ; |501| 
        SFTL AC0, #-8, AC0 ; |501| 
        MOV AC0, port(*AR3(T0)) ; |501| 
	.dwpsn	file "src/csl_uart.c",line 502,column 9,is_stmt
        B $C$L49  ; |502| 
                                        ; branch occurs ; |502| 
$C$L47:    
	.dwpsn	file "src/csl_uart.c",line 505,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #16, T0 ; |505| 
        MOV *AR3(short(#1)), AR3 ; |505| 
        MOV #0, port(*AR3(T0)) ; |505| 
	.dwpsn	file "src/csl_uart.c",line 506,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #18, T0 ; |506| 
        MOV *AR3(short(#1)), AR3 ; |506| 
        MOV dbl(*SP(#8)), AC0 ; |506| 
        AND #0xff00, AC0, AC0 ; |506| 
        SFTL AC0, #-8, AC0 ; |506| 
        ADD #1, AC0 ; |506| 
        MOV AC0, port(*AR3(T0)) ; |506| 
	.dwpsn	file "src/csl_uart.c",line 509,column 2,is_stmt
        B $C$L49  ; |509| 
                                        ; branch occurs ; |509| 
$C$L48:    
	.dwpsn	file "src/csl_uart.c",line 512,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #16, T0 ; |512| 
        MOV *AR3(short(#1)), AR3 ; |512| 
        MOV dbl(*SP(#8)), AC0 ; |512| 
        AND #0x00ff, AC0, AC0 ; |512| 
        MOV AC0, port(*AR3(T0)) ; |512| 
	.dwpsn	file "src/csl_uart.c",line 513,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #18, T0 ; |513| 
        MOV *AR3(short(#1)), AR3 ; |513| 
        MOV dbl(*SP(#8)), AC0 ; |513| 
        AND #0xff00, AC0, AC0 ; |513| 
        SFTL AC0, #-8, AC0 ; |513| 
        MOV AC0, port(*AR3(T0)) ; |513| 
$C$L49:    
	.dwpsn	file "src/csl_uart.c",line 516,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |516| 
        MOV port(*AR3(short(#6))), AR1 ; |516| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |516| 
        BCLR @#7, AR1 ; |516| 
        MOV AR1, port(*AR3(short(#6))) ; |516| 
	.dwpsn	file "src/csl_uart.c",line 518,column 5,is_stmt
        MOV *SP(#10), T0 ; |518| 
$C$L50:    
	.dwpsn	file "src/csl_uart.c",line 519,column 1,is_stmt
        AADD #11, SP
	.dwcfi	cfa_offset, 1
$C$DW$58	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$58, DW_AT_low_pc(0x00)
	.dwattr $C$DW$58, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$46, DW_AT_TI_end_file("src/csl_uart.c")
	.dwattr $C$DW$46, DW_AT_TI_end_line(0x207)
	.dwattr $C$DW$46, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$46

	.sect	".text"
	.global	_UART_reset

$C$DW$59	.dwtag  DW_TAG_subprogram, DW_AT_name("UART_reset")
	.dwattr $C$DW$59, DW_AT_low_pc(_UART_reset)
	.dwattr $C$DW$59, DW_AT_high_pc(0x00)
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_UART_reset")
	.dwattr $C$DW$59, DW_AT_external
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$59, DW_AT_TI_begin_file("src/csl_uart.c")
	.dwattr $C$DW$59, DW_AT_TI_begin_line(0x23a)
	.dwattr $C$DW$59, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$59, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_uart.c",line 571,column 1,is_stmt,address _UART_reset

	.dwfde $C$DW$CIE, _UART_reset
$C$DW$60	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUart")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_hUart")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: UART_reset                                                   *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR3,XAR3,SP,TC1,M40, *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_UART_reset:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$61	.dwtag  DW_TAG_variable, DW_AT_name("hUart")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_hUart")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$61, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$62	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_uart.c",line 573,column 13,is_stmt
        MOV #0, *SP(#2) ; |573| 
	.dwpsn	file "src/csl_uart.c",line 575,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |575| 

        CMPU AC1 != AC0, TC1 ; |575| 
        BCC $C$L51,TC1 ; |575| 
                                        ; branchcc occurs ; |575| 
	.dwpsn	file "src/csl_uart.c",line 577,column 4,is_stmt
        MOV #-5, T0
        B $C$L52  ; |577| 
                                        ; branch occurs ; |577| 
$C$L51:    
	.dwpsn	file "src/csl_uart.c",line 581,column 6,is_stmt
        MOV #24, T0 ; |581| 
        MOV *AR3(short(#1)), AR3 ; |581| 
        MOV port(*AR3(T0)), AR1 ; |581| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |581| 
        BCLR @#13, AR1 ; |581| 
        MOV AR1, port(*AR3(T0)) ; |581| 
	.dwpsn	file "src/csl_uart.c",line 583,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |583| 
        MOV port(*AR3(T0)), AR1 ; |583| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |583| 
        BCLR @#14, AR1 ; |583| 
        MOV AR1, port(*AR3(T0)) ; |583| 
	.dwpsn	file "src/csl_uart.c",line 585,column 6,is_stmt
        MOV *SP(#2), T0 ; |585| 
$C$L52:    
	.dwpsn	file "src/csl_uart.c",line 587,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$63	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$63, DW_AT_low_pc(0x00)
	.dwattr $C$DW$63, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$59, DW_AT_TI_end_file("src/csl_uart.c")
	.dwattr $C$DW$59, DW_AT_TI_end_line(0x24b)
	.dwattr $C$DW$59, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$59

	.sect	".text"
	.global	_UART_resetOff

$C$DW$64	.dwtag  DW_TAG_subprogram, DW_AT_name("UART_resetOff")
	.dwattr $C$DW$64, DW_AT_low_pc(_UART_resetOff)
	.dwattr $C$DW$64, DW_AT_high_pc(0x00)
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_UART_resetOff")
	.dwattr $C$DW$64, DW_AT_external
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$64, DW_AT_TI_begin_file("src/csl_uart.c")
	.dwattr $C$DW$64, DW_AT_TI_begin_line(0x27c)
	.dwattr $C$DW$64, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$64, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_uart.c",line 637,column 1,is_stmt,address _UART_resetOff

	.dwfde $C$DW$CIE, _UART_resetOff
$C$DW$65	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUart")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_hUart")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: UART_resetOff                                                *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR3,XAR3,SP,TC1,M40, *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_UART_resetOff:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$66	.dwtag  DW_TAG_variable, DW_AT_name("hUart")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_hUart")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$67	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$67, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_uart.c",line 638,column 13,is_stmt
        MOV #0, *SP(#2) ; |638| 
	.dwpsn	file "src/csl_uart.c",line 640,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |640| 

        CMPU AC1 != AC0, TC1 ; |640| 
        BCC $C$L53,TC1 ; |640| 
                                        ; branchcc occurs ; |640| 
	.dwpsn	file "src/csl_uart.c",line 642,column 4,is_stmt
        MOV #-5, T0
        B $C$L54  ; |642| 
                                        ; branch occurs ; |642| 
$C$L53:    
	.dwpsn	file "src/csl_uart.c",line 646,column 5,is_stmt
        MOV #24, T0 ; |646| 
        MOV *AR3(short(#1)), AR3 ; |646| 
        MOV port(*AR3(T0)), AR1 ; |646| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |646| 
        BCLR @#13, AR1 ; |646| 
        BSET @#13, AR1 ; |646| 
        MOV AR1, port(*AR3(T0)) ; |646| 
	.dwpsn	file "src/csl_uart.c",line 648,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |648| 
        MOV port(*AR3(T0)), AR1 ; |648| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |648| 
        BCLR @#14, AR1 ; |648| 
        BSET @#14, AR1 ; |648| 
        MOV AR1, port(*AR3(T0)) ; |648| 
	.dwpsn	file "src/csl_uart.c",line 652,column 2,is_stmt
        MOV *SP(#2), T0 ; |652| 
$C$L54:    
	.dwpsn	file "src/csl_uart.c",line 654,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$68	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$68, DW_AT_low_pc(0x00)
	.dwattr $C$DW$68, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$64, DW_AT_TI_end_file("src/csl_uart.c")
	.dwattr $C$DW$64, DW_AT_TI_end_line(0x28e)
	.dwattr $C$DW$64, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$64

	.sect	".text"
	.global	_UART_eventEnable

$C$DW$69	.dwtag  DW_TAG_subprogram, DW_AT_name("UART_eventEnable")
	.dwattr $C$DW$69, DW_AT_low_pc(_UART_eventEnable)
	.dwattr $C$DW$69, DW_AT_high_pc(0x00)
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_UART_eventEnable")
	.dwattr $C$DW$69, DW_AT_external
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$69, DW_AT_TI_begin_file("src/csl_uart.c")
	.dwattr $C$DW$69, DW_AT_TI_begin_line(0x2bf)
	.dwattr $C$DW$69, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$69, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_uart.c",line 704,column 1,is_stmt,address _UART_eventEnable

	.dwfde $C$DW$CIE, _UART_eventEnable
$C$DW$70	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUart")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_hUart")
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$70, DW_AT_location[DW_OP_reg17]
$C$DW$71	.dwtag  DW_TAG_formal_parameter, DW_AT_name("uartEvent")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_uartEvent")
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$71, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: UART_eventEnable                                             *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,TC1, *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_UART_eventEnable:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$72	.dwtag  DW_TAG_variable, DW_AT_name("hUart")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_hUart")
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$72, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$73	.dwtag  DW_TAG_variable, DW_AT_name("uartEvent")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_uartEvent")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$74	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_bregx 0x24 3]
        MOV T0, *SP(#2) ; |704| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_uart.c",line 706,column 13,is_stmt
        MOV #0, *SP(#3) ; |706| 
	.dwpsn	file "src/csl_uart.c",line 708,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |708| 

        CMPU AC1 != AC0, TC1 ; |708| 
        BCC $C$L55,TC1 ; |708| 
                                        ; branchcc occurs ; |708| 
	.dwpsn	file "src/csl_uart.c",line 710,column 4,is_stmt
        MOV #-5, T0
        B $C$L62  ; |710| 
                                        ; branch occurs ; |710| 
$C$L55:    
	.dwpsn	file "src/csl_uart.c",line 713,column 6,is_stmt
        MOV *AR3(short(#1)), AR3 ; |713| 
        MOV port(*AR3(short(#6))), AR1 ; |713| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |713| 
        BCLR @#7, AR1 ; |713| 
        MOV AR1, port(*AR3(short(#6))) ; |713| 
	.dwpsn	file "src/csl_uart.c",line 715,column 6,is_stmt
        B $C$L60  ; |715| 
                                        ; branch occurs ; |715| 
$C$L56:    
	.dwpsn	file "src/csl_uart.c",line 720,column 14,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |720| 
        MOV port(*AR3(short(#2))), AR1 ; |720| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |720| 
        BCLR @#0, AR1 ; |720| 
        BSET @#0, AR1 ; |720| 
        MOV AR1, port(*AR3(short(#2))) ; |720| 
	.dwpsn	file "src/csl_uart.c",line 722,column 14,is_stmt
        B $C$L61  ; |722| 
                                        ; branch occurs ; |722| 
$C$L57:    
	.dwpsn	file "src/csl_uart.c",line 727,column 16,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |727| 
        MOV port(*AR3(short(#2))), AR1 ; |727| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |727| 
        BCLR @#1, AR1 ; |727| 
        BSET @#1, AR1 ; |727| 
        MOV AR1, port(*AR3(short(#2))) ; |727| 
	.dwpsn	file "src/csl_uart.c",line 729,column 14,is_stmt
        B $C$L61  ; |729| 
                                        ; branch occurs ; |729| 
$C$L58:    
	.dwpsn	file "src/csl_uart.c",line 735,column 14,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |735| 
        MOV port(*AR3(short(#2))), AR1 ; |735| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |735| 
        BCLR @#2, AR1 ; |735| 
        BSET @#2, AR1 ; |735| 
        MOV AR1, port(*AR3(short(#2))) ; |735| 
	.dwpsn	file "src/csl_uart.c",line 737,column 14,is_stmt
        B $C$L61  ; |737| 
                                        ; branch occurs ; |737| 
$C$L59:    
	.dwpsn	file "src/csl_uart.c",line 742,column 13,is_stmt
        MOV #-6, T0
        B $C$L62  ; |742| 
                                        ; branch occurs ; |742| 
$C$L60:    
	.dwpsn	file "src/csl_uart.c",line 715,column 6,is_stmt
        MOV *SP(#2), AR1 ; |715| 
        BCC $C$L56,AR1 == #0 ; |715| 
                                        ; branchcc occurs ; |715| 
        MOV #1, AR2
        CMP AR1 == AR2, TC1 ; |715| 
        BCC $C$L57,TC1 ; |715| 
                                        ; branchcc occurs ; |715| 
        MOV #2, AR2
        CMP AR1 == AR2, TC1 ; |715| 
        BCC $C$L58,TC1 ; |715| 
                                        ; branchcc occurs ; |715| 
        B $C$L59  ; |715| 
                                        ; branch occurs ; |715| 
$C$L61:    
	.dwpsn	file "src/csl_uart.c",line 746,column 2,is_stmt
        MOV *SP(#3), T0 ; |746| 
$C$L62:    
	.dwpsn	file "src/csl_uart.c",line 747,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$75	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$75, DW_AT_low_pc(0x00)
	.dwattr $C$DW$75, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$69, DW_AT_TI_end_file("src/csl_uart.c")
	.dwattr $C$DW$69, DW_AT_TI_end_line(0x2eb)
	.dwattr $C$DW$69, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$69

	.sect	".text"
	.global	_UART_eventDisable

$C$DW$76	.dwtag  DW_TAG_subprogram, DW_AT_name("UART_eventDisable")
	.dwattr $C$DW$76, DW_AT_low_pc(_UART_eventDisable)
	.dwattr $C$DW$76, DW_AT_high_pc(0x00)
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_UART_eventDisable")
	.dwattr $C$DW$76, DW_AT_external
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$76, DW_AT_TI_begin_file("src/csl_uart.c")
	.dwattr $C$DW$76, DW_AT_TI_begin_line(0x324)
	.dwattr $C$DW$76, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$76, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_uart.c",line 805,column 1,is_stmt,address _UART_eventDisable

	.dwfde $C$DW$CIE, _UART_eventDisable
$C$DW$77	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUart")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_hUart")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_reg17]
$C$DW$78	.dwtag  DW_TAG_formal_parameter, DW_AT_name("uartEvent")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_uartEvent")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: UART_eventDisable                                            *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,TC1, *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_UART_eventDisable:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$79	.dwtag  DW_TAG_variable, DW_AT_name("hUart")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_hUart")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$79, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$80	.dwtag  DW_TAG_variable, DW_AT_name("uartEvent")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_uartEvent")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$80, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$81	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$81, DW_AT_location[DW_OP_bregx 0x24 3]
        MOV T0, *SP(#2) ; |805| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_uart.c",line 806,column 13,is_stmt
        MOV #0, *SP(#3) ; |806| 
	.dwpsn	file "src/csl_uart.c",line 809,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |809| 

        CMPU AC1 != AC0, TC1 ; |809| 
        BCC $C$L63,TC1 ; |809| 
                                        ; branchcc occurs ; |809| 
	.dwpsn	file "src/csl_uart.c",line 811,column 4,is_stmt
        MOV #-5, T0
        B $C$L70  ; |811| 
                                        ; branch occurs ; |811| 
$C$L63:    
	.dwpsn	file "src/csl_uart.c",line 814,column 2,is_stmt
        MOV *AR3(short(#1)), AR3 ; |814| 
        MOV port(*AR3(short(#6))), AR1 ; |814| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |814| 
        BCLR @#7, AR1 ; |814| 
        MOV AR1, port(*AR3(short(#6))) ; |814| 
	.dwpsn	file "src/csl_uart.c",line 817,column 5,is_stmt
        B $C$L68  ; |817| 
                                        ; branch occurs ; |817| 
$C$L64:    
	.dwpsn	file "src/csl_uart.c",line 821,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |821| 
        MOV port(*AR3(short(#2))), AR1 ; |821| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |821| 
        BCLR @#0, AR1 ; |821| 
        MOV AR1, port(*AR3(short(#2))) ; |821| 
	.dwpsn	file "src/csl_uart.c",line 823,column 13,is_stmt
        B $C$L69  ; |823| 
                                        ; branch occurs ; |823| 
$C$L65:    
	.dwpsn	file "src/csl_uart.c",line 828,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |828| 
        MOV port(*AR3(short(#2))), AR1 ; |828| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |828| 
        BCLR @#1, AR1 ; |828| 
        MOV AR1, port(*AR3(short(#2))) ; |828| 
	.dwpsn	file "src/csl_uart.c",line 830,column 13,is_stmt
        B $C$L69  ; |830| 
                                        ; branch occurs ; |830| 
$C$L66:    
	.dwpsn	file "src/csl_uart.c",line 836,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |836| 
        MOV port(*AR3(short(#2))), AR1 ; |836| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |836| 
        BCLR @#2, AR1 ; |836| 
        MOV AR1, port(*AR3(short(#2))) ; |836| 
	.dwpsn	file "src/csl_uart.c",line 838,column 13,is_stmt
        B $C$L69  ; |838| 
                                        ; branch occurs ; |838| 
$C$L67:    
	.dwpsn	file "src/csl_uart.c",line 843,column 13,is_stmt
        MOV #-6, T0
        B $C$L70  ; |843| 
                                        ; branch occurs ; |843| 
$C$L68:    
	.dwpsn	file "src/csl_uart.c",line 817,column 5,is_stmt
        MOV *SP(#2), AR1 ; |817| 
        BCC $C$L64,AR1 == #0 ; |817| 
                                        ; branchcc occurs ; |817| 
        MOV #1, AR2
        CMP AR1 == AR2, TC1 ; |817| 
        BCC $C$L65,TC1 ; |817| 
                                        ; branchcc occurs ; |817| 
        MOV #2, AR2
        CMP AR1 == AR2, TC1 ; |817| 
        BCC $C$L66,TC1 ; |817| 
                                        ; branchcc occurs ; |817| 
        B $C$L67  ; |817| 
                                        ; branch occurs ; |817| 
$C$L69:    
	.dwpsn	file "src/csl_uart.c",line 847,column 2,is_stmt
        MOV *SP(#3), T0 ; |847| 
$C$L70:    
	.dwpsn	file "src/csl_uart.c",line 848,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$82	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$82, DW_AT_low_pc(0x00)
	.dwattr $C$DW$82, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$76, DW_AT_TI_end_file("src/csl_uart.c")
	.dwattr $C$DW$76, DW_AT_TI_end_line(0x350)
	.dwattr $C$DW$76, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$76

	.sect	".text"
	.global	_UART_read

$C$DW$83	.dwtag  DW_TAG_subprogram, DW_AT_name("UART_read")
	.dwattr $C$DW$83, DW_AT_low_pc(_UART_read)
	.dwattr $C$DW$83, DW_AT_high_pc(0x00)
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_UART_read")
	.dwattr $C$DW$83, DW_AT_external
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$83, DW_AT_TI_begin_file("src/csl_uart.c")
	.dwattr $C$DW$83, DW_AT_TI_begin_line(0x38d)
	.dwattr $C$DW$83, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$83, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "src/csl_uart.c",line 913,column 1,is_stmt,address _UART_read

	.dwfde $C$DW$CIE, _UART_read
$C$DW$84	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUart")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_hUart")
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$84, DW_AT_location[DW_OP_reg17]
$C$DW$85	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pBuf")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_pBuf")
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$85, DW_AT_location[DW_OP_reg19]
$C$DW$86	.dwtag  DW_TAG_formal_parameter, DW_AT_name("count")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("_count")
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$86, DW_AT_location[DW_OP_reg12]
$C$DW$87	.dwtag  DW_TAG_formal_parameter, DW_AT_name("timeout")
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("_timeout")
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$87, DW_AT_location[DW_OP_reg0]
;*******************************************************************************
;* FUNCTION NAME: UART_read                                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,   *
;*                        XAR3,AR4,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL    *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (11 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_UART_read:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-11, SP
	.dwcfi	cfa_offset, 12
$C$DW$88	.dwtag  DW_TAG_variable, DW_AT_name("hUart")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("_hUart")
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$88, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$89	.dwtag  DW_TAG_variable, DW_AT_name("pBuf")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_pBuf")
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$89, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$90	.dwtag  DW_TAG_variable, DW_AT_name("count")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_count")
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$90, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$91	.dwtag  DW_TAG_variable, DW_AT_name("timeout")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_timeout")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$91, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$92	.dwtag  DW_TAG_variable, DW_AT_name("TimeOut")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_TimeOut")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$93	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$93, DW_AT_location[DW_OP_bregx 0x24 10]
        MOV AC0, dbl(*SP(#6)) ; |913| 
        MOV T0, *SP(#4) ; |913| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_uart.c",line 915,column 9,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |915| 
        MOV AC0, dbl(*SP(#8)) ; |915| 
	.dwpsn	file "src/csl_uart.c",line 916,column 13,is_stmt
        MOV #0, *SP(#10) ; |916| 
	.dwpsn	file "src/csl_uart.c",line 918,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |918| 

        CMPU AC1 != AC0, TC1 ; |918| 
        BCC $C$L71,TC1 ; |918| 
                                        ; branchcc occurs ; |918| 
	.dwpsn	file "src/csl_uart.c",line 920,column 4,is_stmt
        MOV #-5, T0
        B $C$L82  ; |920| 
                                        ; branch occurs ; |920| 
$C$L71:    
	.dwpsn	file "src/csl_uart.c",line 923,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        CMPU AC1 != AC0, TC1 ; |923| 
        BCC $C$L72,TC1 ; |923| 
                                        ; branchcc occurs ; |923| 
	.dwpsn	file "src/csl_uart.c",line 926,column 3,is_stmt
        MOV #-6, T0
        B $C$L82  ; |926| 
                                        ; branch occurs ; |926| 
$C$L72:    
	.dwpsn	file "src/csl_uart.c",line 930,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |930| 
        MOV port(*AR3(short(#6))), AR1 ; |930| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |930| 
        BCLR @#7, AR1 ; |930| 
        MOV AR1, port(*AR3(short(#6))) ; |930| 
	.dwpsn	file "src/csl_uart.c",line 932,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV *AR3(short(#3)), AR1 ; |932| 
||      MOV #0, AR2

        CMP AR2 != AR1, TC1 ; |932| 
        BCC $C$L81,TC1 ; |932| 
                                        ; branchcc occurs ; |932| 
	.dwpsn	file "src/csl_uart.c",line 934,column 9,is_stmt

        MOV #0, AC1 ; |934| 
||      MOV dbl(*SP(#6)), AC0 ; |934| 

        CMPU AC1 == AC0, TC1 ; |934| 
        BCC $C$L76,TC1 ; |934| 
                                        ; branchcc occurs ; |934| 
	.dwpsn	file "src/csl_uart.c",line 936,column 20,is_stmt
        MOV *SP(#4), AR1 ; |936| 
        SUB #1, AR1, AR2 ; |936| 

        MOV #0, AR2
||      MOV AR2, *SP(#4) ; |936| 

        CMPU AR2 == AR1, TC1 ; |936| 
        BCC $C$L80,TC1 ; |936| 
                                        ; branchcc occurs ; |936| 
        MOV #0, AR4
	.dwpsn	file "src/csl_uart.c",line 938,column 17,is_stmt
$C$L73:    
$C$DW$L$_UART_read$9$B:
	.dwpsn	file "src/csl_uart.c",line 938,column 24,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$94	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$94, DW_AT_low_pc(0x00)
	.dwattr $C$DW$94, DW_AT_name("_UART_getDataReadyStatus")
	.dwattr $C$DW$94, DW_AT_TI_call
        CALL #_UART_getDataReadyStatus ; |938| 
                                        ; call occurs [#_UART_getDataReadyStatus] ; |938| 
        BCC $C$L74,T0 != #0 ; |938| 
                                        ; branchcc occurs ; |938| 
$C$DW$L$_UART_read$9$E:
$C$DW$L$_UART_read$10$B:
        MOV #1, AC0 ; |938| 
        SUB AC0, dbl(*SP(#8)), AC0 ; |938| 
        MOV AC0, dbl(*SP(#8)) ; |938| 
        BCC $C$L73,AC0 != #0 ; |938| 
                                        ; branchcc occurs ; |938| 
$C$DW$L$_UART_read$10$E:
$C$L74:    
$C$DW$L$_UART_read$11$B:
	.dwpsn	file "src/csl_uart.c",line 939,column 17,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |939| 
        CMPU AC1 != AC0, TC1 ; |939| 
        BCC $C$L75,TC1 ; |939| 
                                        ; branchcc occurs ; |939| 
$C$DW$L$_UART_read$11$E:
	.dwpsn	file "src/csl_uart.c",line 940,column 21,is_stmt
        MOV #13, T0
        B $C$L82  ; |940| 
                                        ; branch occurs ; |940| 
$C$L75:    
$C$DW$L$_UART_read$13$B:
	.dwpsn	file "src/csl_uart.c",line 941,column 17,is_stmt
        MOV dbl(*SP(#2)), XAR2
        AMAR *AR2, XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#2))
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |941| 
        MOV uns(low_byte(port(*AR3))), AR1 ; |941| 
        MOV AR1, *AR2 ; |941| 
	.dwpsn	file "src/csl_uart.c",line 942,column 17,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |942| 
        MOV AC0, dbl(*SP(#8)) ; |942| 
	.dwpsn	file "src/csl_uart.c",line 936,column 20,is_stmt
        MOV *SP(#4), AR1 ; |936| 
        CMPU AR4 != AR1, TC1 ; |936| 
        SUB #1, AR1, AR2 ; |936| 
        MOV AR2, *SP(#4) ; |936| 
        BCC $C$L73,TC1 ; |936| 
                                        ; branchcc occurs ; |936| 
$C$DW$L$_UART_read$13$E:
	.dwpsn	file "src/csl_uart.c",line 944,column 9,is_stmt
        B $C$L80  ; |944| 
                                        ; branch occurs ; |944| 
$C$L76:    
	.dwpsn	file "src/csl_uart.c",line 947,column 20,is_stmt
        MOV *SP(#4), AR1 ; |947| 
        SUB #1, AR1, AR2 ; |947| 

        MOV #0, AR2
||      MOV AR2, *SP(#4) ; |947| 

        CMPU AR2 == AR1, TC1 ; |947| 
        BCC $C$L80,TC1 ; |947| 
                                        ; branchcc occurs ; |947| 
$C$L77:    
$C$DW$L$_UART_read$16$B:
	.dwpsn	file "src/csl_uart.c",line 949,column 24,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$95	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$95, DW_AT_low_pc(0x00)
	.dwattr $C$DW$95, DW_AT_name("_UART_getDataReadyStatus")
	.dwattr $C$DW$95, DW_AT_TI_call
        CALL #_UART_getDataReadyStatus ; |949| 
                                        ; call occurs [#_UART_getDataReadyStatus] ; |949| 
        BCC $C$L79,T0 != #0 ; |949| 
                                        ; branchcc occurs ; |949| 
$C$DW$L$_UART_read$16$E:
$C$L78:    
$C$DW$L$_UART_read$17$B:
        MOV dbl(*SP(#0)), XAR0
$C$DW$96	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$96, DW_AT_low_pc(0x00)
	.dwattr $C$DW$96, DW_AT_name("_UART_getDataReadyStatus")
	.dwattr $C$DW$96, DW_AT_TI_call
        CALL #_UART_getDataReadyStatus ; |949| 
                                        ; call occurs [#_UART_getDataReadyStatus] ; |949| 
        BCC $C$L78,T0 == #0 ; |949| 
                                        ; branchcc occurs ; |949| 
$C$DW$L$_UART_read$17$E:
$C$L79:    
$C$DW$L$_UART_read$18$B:
	.dwpsn	file "src/csl_uart.c",line 950,column 17,is_stmt
        MOV dbl(*SP(#2)), XAR2
        AMAR *AR2, XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#2))
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |950| 
        MOV uns(low_byte(port(*AR3))), AR1 ; |950| 
        MOV AR1, *AR2 ; |950| 
	.dwpsn	file "src/csl_uart.c",line 947,column 20,is_stmt
        MOV *SP(#4), AR1 ; |947| 
        SUB #1, AR1, AR2 ; |947| 

        MOV #0, AR2
||      MOV AR2, *SP(#4) ; |947| 

        CMPU AR2 != AR1, TC1 ; |947| 
        BCC $C$L77,TC1 ; |947| 
                                        ; branchcc occurs ; |947| 
$C$DW$L$_UART_read$18$E:
$C$L80:    
	.dwpsn	file "src/csl_uart.c",line 955,column 9,is_stmt
        MOV *SP(#10), T0 ; |955| 
        B $C$L82  ; |955| 
                                        ; branch occurs ; |955| 
$C$L81:    
	.dwpsn	file "src/csl_uart.c",line 958,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR2
        AMAR *AR2, XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#2))
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |958| 
        MOV uns(low_byte(port(*AR3))), AR1 ; |958| 
        MOV AR1, *AR2 ; |958| 
	.dwpsn	file "src/csl_uart.c",line 959,column 5,is_stmt
        MOV *SP(#10), T0 ; |959| 
$C$L82:    
	.dwpsn	file "src/csl_uart.c",line 960,column 1,is_stmt
        AADD #11, SP
	.dwcfi	cfa_offset, 1
$C$DW$97	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$97, DW_AT_low_pc(0x00)
	.dwattr $C$DW$97, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$98	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$98, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_uart.asm:$C$L77:1:1714639455")
	.dwattr $C$DW$98, DW_AT_TI_begin_file("src/csl_uart.c")
	.dwattr $C$DW$98, DW_AT_TI_begin_line(0x3b3)
	.dwattr $C$DW$98, DW_AT_TI_end_line(0x3b7)
$C$DW$99	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$99, DW_AT_low_pc($C$DW$L$_UART_read$16$B)
	.dwattr $C$DW$99, DW_AT_high_pc($C$DW$L$_UART_read$16$E)
$C$DW$100	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$100, DW_AT_low_pc($C$DW$L$_UART_read$18$B)
	.dwattr $C$DW$100, DW_AT_high_pc($C$DW$L$_UART_read$18$E)

$C$DW$101	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$101, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_uart.asm:$C$L78:2:1714639455")
	.dwattr $C$DW$101, DW_AT_TI_begin_file("src/csl_uart.c")
	.dwattr $C$DW$101, DW_AT_TI_begin_line(0x3b5)
	.dwattr $C$DW$101, DW_AT_TI_end_line(0x3b5)
$C$DW$102	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$102, DW_AT_low_pc($C$DW$L$_UART_read$17$B)
	.dwattr $C$DW$102, DW_AT_high_pc($C$DW$L$_UART_read$17$E)
	.dwendtag $C$DW$101

	.dwendtag $C$DW$98


$C$DW$103	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$103, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_uart.asm:$C$L73:1:1714639455")
	.dwattr $C$DW$103, DW_AT_TI_begin_file("src/csl_uart.c")
	.dwattr $C$DW$103, DW_AT_TI_begin_line(0x3a8)
	.dwattr $C$DW$103, DW_AT_TI_end_line(0x3ae)
$C$DW$104	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$104, DW_AT_low_pc($C$DW$L$_UART_read$9$B)
	.dwattr $C$DW$104, DW_AT_high_pc($C$DW$L$_UART_read$9$E)
$C$DW$105	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$105, DW_AT_low_pc($C$DW$L$_UART_read$11$B)
	.dwattr $C$DW$105, DW_AT_high_pc($C$DW$L$_UART_read$11$E)
$C$DW$106	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$106, DW_AT_low_pc($C$DW$L$_UART_read$13$B)
	.dwattr $C$DW$106, DW_AT_high_pc($C$DW$L$_UART_read$13$E)
$C$DW$107	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$107, DW_AT_low_pc($C$DW$L$_UART_read$10$B)
	.dwattr $C$DW$107, DW_AT_high_pc($C$DW$L$_UART_read$10$E)
	.dwendtag $C$DW$103

	.dwattr $C$DW$83, DW_AT_TI_end_file("src/csl_uart.c")
	.dwattr $C$DW$83, DW_AT_TI_end_line(0x3c0)
	.dwattr $C$DW$83, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$83

	.sect	".text"
	.global	_UART_write

$C$DW$108	.dwtag  DW_TAG_subprogram, DW_AT_name("UART_write")
	.dwattr $C$DW$108, DW_AT_low_pc(_UART_write)
	.dwattr $C$DW$108, DW_AT_high_pc(0x00)
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_UART_write")
	.dwattr $C$DW$108, DW_AT_external
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$108, DW_AT_TI_begin_file("src/csl_uart.c")
	.dwattr $C$DW$108, DW_AT_TI_begin_line(0x3fb)
	.dwattr $C$DW$108, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$108, DW_AT_TI_max_frame_size(0x0e)
	.dwpsn	file "src/csl_uart.c",line 1021,column 1,is_stmt,address _UART_write

	.dwfde $C$DW$CIE, _UART_write
$C$DW$109	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUart")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_hUart")
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$109, DW_AT_location[DW_OP_reg17]
$C$DW$110	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pBuf")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_pBuf")
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$110, DW_AT_location[DW_OP_reg19]
$C$DW$111	.dwtag  DW_TAG_formal_parameter, DW_AT_name("count")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_count")
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$111, DW_AT_location[DW_OP_reg12]
$C$DW$112	.dwtag  DW_TAG_formal_parameter, DW_AT_name("timeout")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_timeout")
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$112, DW_AT_location[DW_OP_reg0]
;*******************************************************************************
;* FUNCTION NAME: UART_write                                                   *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,*
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 14 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (13 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_UART_write:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-13, SP
	.dwcfi	cfa_offset, 14
$C$DW$113	.dwtag  DW_TAG_variable, DW_AT_name("hUart")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_hUart")
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$113, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$114	.dwtag  DW_TAG_variable, DW_AT_name("pBuf")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_pBuf")
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$114, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$115	.dwtag  DW_TAG_variable, DW_AT_name("count")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_count")
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$115, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$116	.dwtag  DW_TAG_variable, DW_AT_name("timeout")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("_timeout")
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$116, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$117	.dwtag  DW_TAG_variable, DW_AT_name("fifosize")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_fifosize")
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$117, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$118	.dwtag  DW_TAG_variable, DW_AT_name("fifoMode")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_fifoMode")
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$118, DW_AT_location[DW_OP_bregx 0x24 9]
$C$DW$119	.dwtag  DW_TAG_variable, DW_AT_name("TimeOut")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_TimeOut")
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$119, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$120	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$120, DW_AT_location[DW_OP_bregx 0x24 12]
        MOV AC0, dbl(*SP(#6)) ; |1021| 
        MOV T0, *SP(#4) ; |1021| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_uart.c",line 1023,column 12,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |1023| 
        MOV AC0, dbl(*SP(#10)) ; |1023| 
	.dwpsn	file "src/csl_uart.c",line 1024,column 13,is_stmt
        MOV #0, *SP(#12) ; |1024| 
	.dwpsn	file "src/csl_uart.c",line 1026,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |1026| 

        CMPU AC1 != AC0, TC1 ; |1026| 
        BCC $C$L83,TC1 ; |1026| 
                                        ; branchcc occurs ; |1026| 
	.dwpsn	file "src/csl_uart.c",line 1028,column 9,is_stmt
        MOV #-5, T0
        B $C$L98  ; |1028| 
                                        ; branch occurs ; |1028| 
$C$L83:    
	.dwpsn	file "src/csl_uart.c",line 1031,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        CMPU AC1 != AC0, TC1 ; |1031| 
        BCC $C$L84,TC1 ; |1031| 
                                        ; branchcc occurs ; |1031| 
	.dwpsn	file "src/csl_uart.c",line 1033,column 3,is_stmt
        MOV #-6, T0
        B $C$L98  ; |1033| 
                                        ; branch occurs ; |1033| 
$C$L84:    
	.dwpsn	file "src/csl_uart.c",line 1036,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |1036| 
        MOV port(*AR3(short(#6))), AR1 ; |1036| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |1036| 
        BCLR @#7, AR1 ; |1036| 
        MOV AR1, port(*AR3(short(#6))) ; |1036| 
	.dwpsn	file "src/csl_uart.c",line 1038,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV *AR3(short(#3)), AR1 ; |1038| 
||      MOV #0, AR2

        CMP AR2 != AR1, TC1 ; |1038| 
        BCC $C$L93,TC1 ; |1038| 
                                        ; branchcc occurs ; |1038| 
	.dwpsn	file "src/csl_uart.c",line 1040,column 9,is_stmt

        MOV #0, AC1 ; |1040| 
||      MOV dbl(*SP(#6)), AC0 ; |1040| 

        CMPU AC1 == AC0, TC1 ; |1040| 
        BCC $C$L88,TC1 ; |1040| 
                                        ; branchcc occurs ; |1040| 
	.dwpsn	file "src/csl_uart.c",line 1042,column 20,is_stmt
        MOV *SP(#4), AR1 ; |1042| 
        SUB #1, AR1, AR2 ; |1042| 

        MOV #0, AR2
||      MOV AR2, *SP(#4) ; |1042| 

        CMPU AR2 == AR1, TC1 ; |1042| 
        BCC $C$L92,TC1 ; |1042| 
                                        ; branchcc occurs ; |1042| 
	.dwpsn	file "src/csl_uart.c",line 1044,column 17,is_stmt
$C$L85:    
$C$DW$L$_UART_write$9$B:
	.dwpsn	file "src/csl_uart.c",line 1044,column 24,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$121	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$121, DW_AT_low_pc(0x00)
	.dwattr $C$DW$121, DW_AT_name("_UART_getXmitHoldRegEmptyStatus")
	.dwattr $C$DW$121, DW_AT_TI_call
        CALL #_UART_getXmitHoldRegEmptyStatus ; |1044| 
                                        ; call occurs [#_UART_getXmitHoldRegEmptyStatus] ; |1044| 
        BCC $C$L86,T0 != #0 ; |1044| 
                                        ; branchcc occurs ; |1044| 
$C$DW$L$_UART_write$9$E:
$C$DW$L$_UART_write$10$B:
        MOV #1, AC0 ; |1044| 
        SUB AC0, dbl(*SP(#10)), AC0 ; |1044| 
        MOV AC0, dbl(*SP(#10)) ; |1044| 
        BCC $C$L85,AC0 != #0 ; |1044| 
                                        ; branchcc occurs ; |1044| 
$C$DW$L$_UART_write$10$E:
$C$L86:    
$C$DW$L$_UART_write$11$B:
	.dwpsn	file "src/csl_uart.c",line 1045,column 17,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |1045| 
        CMPU AC1 != AC0, TC1 ; |1045| 
        BCC $C$L87,TC1 ; |1045| 
                                        ; branchcc occurs ; |1045| 
$C$DW$L$_UART_write$11$E:
	.dwpsn	file "src/csl_uart.c",line 1046,column 21,is_stmt
        MOV #13, T0
        B $C$L98  ; |1046| 
                                        ; branch occurs ; |1046| 
$C$L87:    
$C$DW$L$_UART_write$13$B:
	.dwpsn	file "src/csl_uart.c",line 1047,column 17,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(low_byte(*AR3)), AR1 ; |1047| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |1047| 
        MOV AR1, port(*AR3) ; |1047| 
	.dwpsn	file "src/csl_uart.c",line 1048,column 17,is_stmt
        MOV dbl(*SP(#2)), XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#2))
	.dwpsn	file "src/csl_uart.c",line 1049,column 17,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |1049| 
        MOV AC0, dbl(*SP(#10)) ; |1049| 
	.dwpsn	file "src/csl_uart.c",line 1042,column 20,is_stmt
        MOV *SP(#4), AR1 ; |1042| 
        CMPU AR2 != AR1, TC1 ; |1042| 
        SUB #1, AR1, AR3 ; |1042| 
        MOV AR3, *SP(#4) ; |1042| 
        BCC $C$L85,TC1 ; |1042| 
                                        ; branchcc occurs ; |1042| 
$C$DW$L$_UART_write$13$E:
	.dwpsn	file "src/csl_uart.c",line 1051,column 9,is_stmt
        B $C$L92  ; |1051| 
                                        ; branch occurs ; |1051| 
$C$L88:    
	.dwpsn	file "src/csl_uart.c",line 1054,column 20,is_stmt
        MOV *SP(#4), AR1 ; |1054| 
        SUB #1, AR1, AR2 ; |1054| 

        MOV #0, AR2
||      MOV AR2, *SP(#4) ; |1054| 

        CMPU AR2 == AR1, TC1 ; |1054| 
        BCC $C$L92,TC1 ; |1054| 
                                        ; branchcc occurs ; |1054| 
$C$L89:    
$C$DW$L$_UART_write$16$B:
	.dwpsn	file "src/csl_uart.c",line 1056,column 23,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$122	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$122, DW_AT_low_pc(0x00)
	.dwattr $C$DW$122, DW_AT_name("_UART_getXmitHoldRegEmptyStatus")
	.dwattr $C$DW$122, DW_AT_TI_call
        CALL #_UART_getXmitHoldRegEmptyStatus ; |1056| 
                                        ; call occurs [#_UART_getXmitHoldRegEmptyStatus] ; |1056| 
        BCC $C$L91,T0 != #0 ; |1056| 
                                        ; branchcc occurs ; |1056| 
$C$DW$L$_UART_write$16$E:
$C$L90:    
$C$DW$L$_UART_write$17$B:
        MOV dbl(*SP(#0)), XAR0
$C$DW$123	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$123, DW_AT_low_pc(0x00)
	.dwattr $C$DW$123, DW_AT_name("_UART_getXmitHoldRegEmptyStatus")
	.dwattr $C$DW$123, DW_AT_TI_call
        CALL #_UART_getXmitHoldRegEmptyStatus ; |1056| 
                                        ; call occurs [#_UART_getXmitHoldRegEmptyStatus] ; |1056| 
        BCC $C$L90,T0 == #0 ; |1056| 
                                        ; branchcc occurs ; |1056| 
$C$DW$L$_UART_write$17$E:
$C$L91:    
$C$DW$L$_UART_write$18$B:
	.dwpsn	file "src/csl_uart.c",line 1057,column 17,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(low_byte(*AR3)), AR1 ; |1057| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |1057| 
        MOV AR1, port(*AR3) ; |1057| 
	.dwpsn	file "src/csl_uart.c",line 1058,column 17,is_stmt
        MOV dbl(*SP(#2)), XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#2))
	.dwpsn	file "src/csl_uart.c",line 1054,column 20,is_stmt
        MOV *SP(#4), AR1 ; |1054| 
        SUB #1, AR1, AR2 ; |1054| 

        MOV #0, AR2
||      MOV AR2, *SP(#4) ; |1054| 

        CMPU AR2 != AR1, TC1 ; |1054| 
        BCC $C$L89,TC1 ; |1054| 
                                        ; branchcc occurs ; |1054| 
$C$DW$L$_UART_write$18$E:
$C$L92:    
	.dwpsn	file "src/csl_uart.c",line 1063,column 9,is_stmt
        MOV *SP(#12), T0 ; |1063| 
        B $C$L98  ; |1063| 
                                        ; branch occurs ; |1063| 
$C$L93:    
	.dwpsn	file "src/csl_uart.c",line 1066,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$124	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$124, DW_AT_low_pc(0x00)
	.dwattr $C$DW$124, DW_AT_name("_UART_getModeOfTransfer")
	.dwattr $C$DW$124, DW_AT_TI_call
        CALL #_UART_getModeOfTransfer ; |1066| 
                                        ; call occurs [#_UART_getModeOfTransfer] ; |1066| 
        MOV T0, *SP(#9) ; |1066| 
	.dwpsn	file "src/csl_uart.c",line 1067,column 5,is_stmt

        MOV T0, AR1
||      MOV #1, AR2

        CMPU AR2 != AR1, TC1 ; |1067| 
        BCC $C$L94,TC1 ; |1067| 
                                        ; branchcc occurs ; |1067| 
	.dwpsn	file "src/csl_uart.c",line 1069,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(low_byte(*AR3)), AR1 ; |1069| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |1069| 
        MOV AR1, port(*AR3) ; |1069| 
	.dwpsn	file "src/csl_uart.c",line 1070,column 5,is_stmt
        B $C$L97  ; |1070| 
                                        ; branch occurs ; |1070| 
$C$L94:    
	.dwpsn	file "src/csl_uart.c",line 1071,column 10,is_stmt
        MOV #0, AR2
        CMPU AR2 != AR1, TC1 ; |1071| 
        BCC $C$L97,TC1 ; |1071| 
                                        ; branchcc occurs ; |1071| 
	.dwpsn	file "src/csl_uart.c",line 1073,column 9,is_stmt
        MOV #16, AR2 ; |1073| 
        MOV *SP(#4), AR1 ; |1073| 
        CMPU AR1 >= AR2, TC1 ; |1073| 
        BCC $C$L95,!TC1 ; |1073| 
                                        ; branchcc occurs ; |1073| 
        MOV #16, AR1 ; |1073| 
$C$L95:    
        MOV AR1, *SP(#8) ; |1073| 
	.dwpsn	file "src/csl_uart.c",line 1074,column 16,is_stmt
        SUB #1, AR1, AR2 ; |1074| 

        MOV #0, AR2
||      MOV AR2, *SP(#8) ; |1074| 

        CMPU AR2 == AR1, TC1 ; |1074| 
        BCC $C$L97,TC1 ; |1074| 
                                        ; branchcc occurs ; |1074| 
$C$L96:    
$C$DW$L$_UART_write$26$B:
	.dwpsn	file "src/csl_uart.c",line 1076,column 14,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(low_byte(*AR3)), AR1 ; |1076| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |1076| 
        MOV AR1, port(*AR3) ; |1076| 
	.dwpsn	file "src/csl_uart.c",line 1077,column 6,is_stmt
        MOV dbl(*SP(#2)), XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#2))
	.dwpsn	file "src/csl_uart.c",line 1074,column 16,is_stmt
        MOV *SP(#8), AR1 ; |1074| 
        SUB #1, AR1, AR2 ; |1074| 

        MOV #0, AR2
||      MOV AR2, *SP(#8) ; |1074| 

        CMPU AR2 != AR1, TC1 ; |1074| 
        BCC $C$L96,TC1 ; |1074| 
                                        ; branchcc occurs ; |1074| 
$C$DW$L$_UART_write$26$E:
$C$L97:    
	.dwpsn	file "src/csl_uart.c",line 1080,column 5,is_stmt
        MOV *SP(#12), T0 ; |1080| 
$C$L98:    
	.dwpsn	file "src/csl_uart.c",line 1081,column 1,is_stmt
        AADD #13, SP
	.dwcfi	cfa_offset, 1
$C$DW$125	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$125, DW_AT_low_pc(0x00)
	.dwattr $C$DW$125, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$126	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$126, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_uart.asm:$C$L96:1:1714639455")
	.dwattr $C$DW$126, DW_AT_TI_begin_file("src/csl_uart.c")
	.dwattr $C$DW$126, DW_AT_TI_begin_line(0x432)
	.dwattr $C$DW$126, DW_AT_TI_end_line(0x436)
$C$DW$127	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$127, DW_AT_low_pc($C$DW$L$_UART_write$26$B)
	.dwattr $C$DW$127, DW_AT_high_pc($C$DW$L$_UART_write$26$E)
	.dwendtag $C$DW$126


$C$DW$128	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$128, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_uart.asm:$C$L89:1:1714639455")
	.dwattr $C$DW$128, DW_AT_TI_begin_file("src/csl_uart.c")
	.dwattr $C$DW$128, DW_AT_TI_begin_line(0x41e)
	.dwattr $C$DW$128, DW_AT_TI_end_line(0x424)
$C$DW$129	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$129, DW_AT_low_pc($C$DW$L$_UART_write$16$B)
	.dwattr $C$DW$129, DW_AT_high_pc($C$DW$L$_UART_write$16$E)
$C$DW$130	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$130, DW_AT_low_pc($C$DW$L$_UART_write$18$B)
	.dwattr $C$DW$130, DW_AT_high_pc($C$DW$L$_UART_write$18$E)

$C$DW$131	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$131, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_uart.asm:$C$L90:2:1714639455")
	.dwattr $C$DW$131, DW_AT_TI_begin_file("src/csl_uart.c")
	.dwattr $C$DW$131, DW_AT_TI_begin_line(0x420)
	.dwattr $C$DW$131, DW_AT_TI_end_line(0x420)
$C$DW$132	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$132, DW_AT_low_pc($C$DW$L$_UART_write$17$B)
	.dwattr $C$DW$132, DW_AT_high_pc($C$DW$L$_UART_write$17$E)
	.dwendtag $C$DW$131

	.dwendtag $C$DW$128


$C$DW$133	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$133, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_uart.asm:$C$L85:1:1714639455")
	.dwattr $C$DW$133, DW_AT_TI_begin_file("src/csl_uart.c")
	.dwattr $C$DW$133, DW_AT_TI_begin_line(0x412)
	.dwattr $C$DW$133, DW_AT_TI_end_line(0x419)
$C$DW$134	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$134, DW_AT_low_pc($C$DW$L$_UART_write$9$B)
	.dwattr $C$DW$134, DW_AT_high_pc($C$DW$L$_UART_write$9$E)
$C$DW$135	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$135, DW_AT_low_pc($C$DW$L$_UART_write$11$B)
	.dwattr $C$DW$135, DW_AT_high_pc($C$DW$L$_UART_write$11$E)
$C$DW$136	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$136, DW_AT_low_pc($C$DW$L$_UART_write$13$B)
	.dwattr $C$DW$136, DW_AT_high_pc($C$DW$L$_UART_write$13$E)
$C$DW$137	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$137, DW_AT_low_pc($C$DW$L$_UART_write$10$B)
	.dwattr $C$DW$137, DW_AT_high_pc($C$DW$L$_UART_write$10$E)
	.dwendtag $C$DW$133

	.dwattr $C$DW$108, DW_AT_TI_end_file("src/csl_uart.c")
	.dwattr $C$DW$108, DW_AT_TI_end_line(0x439)
	.dwattr $C$DW$108, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$108

	.sect	".text"
	.global	_UART_fgetc

$C$DW$138	.dwtag  DW_TAG_subprogram, DW_AT_name("UART_fgetc")
	.dwattr $C$DW$138, DW_AT_low_pc(_UART_fgetc)
	.dwattr $C$DW$138, DW_AT_high_pc(0x00)
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("_UART_fgetc")
	.dwattr $C$DW$138, DW_AT_external
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$138, DW_AT_TI_begin_file("src/csl_uart.c")
	.dwattr $C$DW$138, DW_AT_TI_begin_line(0x472)
	.dwattr $C$DW$138, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$138, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "src/csl_uart.c",line 1139,column 1,is_stmt,address _UART_fgetc

	.dwfde $C$DW$CIE, _UART_fgetc
$C$DW$139	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUart")
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_hUart")
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$139, DW_AT_location[DW_OP_reg17]
$C$DW$140	.dwtag  DW_TAG_formal_parameter, DW_AT_name("elem")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_elem")
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$140, DW_AT_location[DW_OP_reg19]
$C$DW$141	.dwtag  DW_TAG_formal_parameter, DW_AT_name("timeout")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("_timeout")
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$141, DW_AT_location[DW_OP_reg0]
;*******************************************************************************
;* FUNCTION NAME: UART_fgetc                                                   *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,    *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (7 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_UART_fgetc:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$142	.dwtag  DW_TAG_variable, DW_AT_name("hUart")
	.dwattr $C$DW$142, DW_AT_TI_symbol_name("_hUart")
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$142, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$143	.dwtag  DW_TAG_variable, DW_AT_name("elem")
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("_elem")
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$143, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$144	.dwtag  DW_TAG_variable, DW_AT_name("timeout")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_timeout")
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$144, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$145	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$145, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV AC0, dbl(*SP(#4)) ; |1139| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_uart.c",line 1140,column 13,is_stmt
        MOV #0, *SP(#6) ; |1140| 
	.dwpsn	file "src/csl_uart.c",line 1142,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |1142| 

        CMPU AC1 != AC0, TC1 ; |1142| 
        BCC $C$L99,TC1 ; |1142| 
                                        ; branchcc occurs ; |1142| 
	.dwpsn	file "src/csl_uart.c",line 1144,column 4,is_stmt
        MOV #-5, T0
        B $C$L108 ; |1144| 
                                        ; branch occurs ; |1144| 
$C$L99:    
	.dwpsn	file "src/csl_uart.c",line 1147,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        CMPU AC1 != AC0, TC1 ; |1147| 
        BCC $C$L100,TC1 ; |1147| 
                                        ; branchcc occurs ; |1147| 
	.dwpsn	file "src/csl_uart.c",line 1149,column 3,is_stmt
        MOV #-6, T0
        B $C$L108 ; |1149| 
                                        ; branch occurs ; |1149| 
$C$L100:    
	.dwpsn	file "src/csl_uart.c",line 1152,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |1152| 
        MOV port(*AR3(short(#6))), AR1 ; |1152| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |1152| 
        BCLR @#7, AR1 ; |1152| 
        MOV AR1, port(*AR3(short(#6))) ; |1152| 
	.dwpsn	file "src/csl_uart.c",line 1154,column 5,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |1154| 
        CMPU AC1 == AC0, TC1 ; |1154| 
        BCC $C$L104,TC1 ; |1154| 
                                        ; branchcc occurs ; |1154| 
	.dwpsn	file "src/csl_uart.c",line 1156,column 9,is_stmt
$C$L101:    
$C$DW$L$_UART_fgetc$7$B:
	.dwpsn	file "src/csl_uart.c",line 1156,column 16,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$146	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$146, DW_AT_low_pc(0x00)
	.dwattr $C$DW$146, DW_AT_name("_UART_getDataReadyStatus")
	.dwattr $C$DW$146, DW_AT_TI_call
        CALL #_UART_getDataReadyStatus ; |1156| 
                                        ; call occurs [#_UART_getDataReadyStatus] ; |1156| 
        BCC $C$L102,T0 != #0 ; |1156| 
                                        ; branchcc occurs ; |1156| 
$C$DW$L$_UART_fgetc$7$E:
$C$DW$L$_UART_fgetc$8$B:
        MOV #1, AC0 ; |1156| 
        SUB AC0, dbl(*SP(#4)), AC0 ; |1156| 
        MOV AC0, dbl(*SP(#4)) ; |1156| 
        BCC $C$L101,AC0 != #0 ; |1156| 
                                        ; branchcc occurs ; |1156| 
$C$DW$L$_UART_fgetc$8$E:
$C$L102:    
	.dwpsn	file "src/csl_uart.c",line 1157,column 9,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |1157| 
        CMPU AC1 != AC0, TC1 ; |1157| 
        BCC $C$L103,TC1 ; |1157| 
                                        ; branchcc occurs ; |1157| 
	.dwpsn	file "src/csl_uart.c",line 1158,column 13,is_stmt
        MOV #13, T0
        B $C$L108 ; |1158| 
                                        ; branch occurs ; |1158| 
$C$L103:    
	.dwpsn	file "src/csl_uart.c",line 1159,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |1159| 
        MOV uns(low_byte(port(*AR3))), AR1 ; |1159| 
        MOV dbl(*SP(#2)), XAR3
        MOV AR1, *AR3 ; |1159| 
	.dwpsn	file "src/csl_uart.c",line 1160,column 5,is_stmt
        B $C$L107 ; |1160| 
                                        ; branch occurs ; |1160| 
$C$L104:    
	.dwpsn	file "src/csl_uart.c",line 1163,column 16,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$147	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$147, DW_AT_low_pc(0x00)
	.dwattr $C$DW$147, DW_AT_name("_UART_getDataReadyStatus")
	.dwattr $C$DW$147, DW_AT_TI_call
        CALL #_UART_getDataReadyStatus ; |1163| 
                                        ; call occurs [#_UART_getDataReadyStatus] ; |1163| 
        BCC $C$L106,T0 != #0 ; |1163| 
                                        ; branchcc occurs ; |1163| 
$C$L105:    
$C$DW$L$_UART_fgetc$13$B:
        MOV dbl(*SP(#0)), XAR0
$C$DW$148	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$148, DW_AT_low_pc(0x00)
	.dwattr $C$DW$148, DW_AT_name("_UART_getDataReadyStatus")
	.dwattr $C$DW$148, DW_AT_TI_call
        CALL #_UART_getDataReadyStatus ; |1163| 
                                        ; call occurs [#_UART_getDataReadyStatus] ; |1163| 
        BCC $C$L105,T0 == #0 ; |1163| 
                                        ; branchcc occurs ; |1163| 
$C$DW$L$_UART_fgetc$13$E:
$C$L106:    
	.dwpsn	file "src/csl_uart.c",line 1164,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |1164| 
        MOV uns(low_byte(port(*AR3))), AR1 ; |1164| 
        MOV dbl(*SP(#2)), XAR3
        MOV AR1, *AR3 ; |1164| 
$C$L107:    
	.dwpsn	file "src/csl_uart.c",line 1167,column 2,is_stmt
        MOV *SP(#6), T0 ; |1167| 
$C$L108:    
	.dwpsn	file "src/csl_uart.c",line 1168,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$149	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$149, DW_AT_low_pc(0x00)
	.dwattr $C$DW$149, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$150	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$150, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_uart.asm:$C$L105:1:1714639455")
	.dwattr $C$DW$150, DW_AT_TI_begin_file("src/csl_uart.c")
	.dwattr $C$DW$150, DW_AT_TI_begin_line(0x48b)
	.dwattr $C$DW$150, DW_AT_TI_end_line(0x48b)
$C$DW$151	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$151, DW_AT_low_pc($C$DW$L$_UART_fgetc$13$B)
	.dwattr $C$DW$151, DW_AT_high_pc($C$DW$L$_UART_fgetc$13$E)
	.dwendtag $C$DW$150


$C$DW$152	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$152, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_uart.asm:$C$L101:1:1714639455")
	.dwattr $C$DW$152, DW_AT_TI_begin_file("src/csl_uart.c")
	.dwattr $C$DW$152, DW_AT_TI_begin_line(0x484)
	.dwattr $C$DW$152, DW_AT_TI_end_line(0x484)
$C$DW$153	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$153, DW_AT_low_pc($C$DW$L$_UART_fgetc$7$B)
	.dwattr $C$DW$153, DW_AT_high_pc($C$DW$L$_UART_fgetc$7$E)
$C$DW$154	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$154, DW_AT_low_pc($C$DW$L$_UART_fgetc$8$B)
	.dwattr $C$DW$154, DW_AT_high_pc($C$DW$L$_UART_fgetc$8$E)
	.dwendtag $C$DW$152

	.dwattr $C$DW$138, DW_AT_TI_end_file("src/csl_uart.c")
	.dwattr $C$DW$138, DW_AT_TI_end_line(0x490)
	.dwattr $C$DW$138, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$138

	.sect	".text"
	.global	_UART_fputc

$C$DW$155	.dwtag  DW_TAG_subprogram, DW_AT_name("UART_fputc")
	.dwattr $C$DW$155, DW_AT_low_pc(_UART_fputc)
	.dwattr $C$DW$155, DW_AT_high_pc(0x00)
	.dwattr $C$DW$155, DW_AT_TI_symbol_name("_UART_fputc")
	.dwattr $C$DW$155, DW_AT_external
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$155, DW_AT_TI_begin_file("src/csl_uart.c")
	.dwattr $C$DW$155, DW_AT_TI_begin_line(0x4c8)
	.dwattr $C$DW$155, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$155, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "src/csl_uart.c",line 1225,column 1,is_stmt,address _UART_fputc

	.dwfde $C$DW$CIE, _UART_fputc
$C$DW$156	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUart")
	.dwattr $C$DW$156, DW_AT_TI_symbol_name("_hUart")
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$156, DW_AT_location[DW_OP_reg17]
$C$DW$157	.dwtag  DW_TAG_formal_parameter, DW_AT_name("elem")
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("_elem")
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$157, DW_AT_location[DW_OP_reg12]
$C$DW$158	.dwtag  DW_TAG_formal_parameter, DW_AT_name("timeout")
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("_timeout")
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$158, DW_AT_location[DW_OP_reg0]
;*******************************************************************************
;* FUNCTION NAME: UART_fputc                                                   *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR3,XAR3,SP,CARRY,   *
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (7 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_UART_fputc:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$159	.dwtag  DW_TAG_variable, DW_AT_name("hUart")
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("_hUart")
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$159, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$160	.dwtag  DW_TAG_variable, DW_AT_name("elem")
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("_elem")
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$160, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$161	.dwtag  DW_TAG_variable, DW_AT_name("timeout")
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("_timeout")
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$161, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$162	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$162, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$162, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV AC0, dbl(*SP(#4)) ; |1225| 
        MOV T0, *SP(#2) ; |1225| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_uart.c",line 1226,column 13,is_stmt
        MOV #0, *SP(#6) ; |1226| 
	.dwpsn	file "src/csl_uart.c",line 1228,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |1228| 

        CMPU AC1 != AC0, TC1 ; |1228| 
        BCC $C$L109,TC1 ; |1228| 
                                        ; branchcc occurs ; |1228| 
	.dwpsn	file "src/csl_uart.c",line 1230,column 4,is_stmt
        MOV #-5, T0
        B $C$L117 ; |1230| 
                                        ; branch occurs ; |1230| 
$C$L109:    
	.dwpsn	file "src/csl_uart.c",line 1233,column 5,is_stmt
        MOV *AR3(short(#1)), AR3 ; |1233| 
        MOV port(*AR3(short(#6))), AR1 ; |1233| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |1233| 
        BCLR @#7, AR1 ; |1233| 
        MOV AR1, port(*AR3(short(#6))) ; |1233| 
	.dwpsn	file "src/csl_uart.c",line 1235,column 5,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |1235| 
        CMPU AC1 == AC0, TC1 ; |1235| 
        BCC $C$L113,TC1 ; |1235| 
                                        ; branchcc occurs ; |1235| 
	.dwpsn	file "src/csl_uart.c",line 1237,column 9,is_stmt
$C$L110:    
$C$DW$L$_UART_fputc$5$B:
	.dwpsn	file "src/csl_uart.c",line 1237,column 16,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$163	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$163, DW_AT_low_pc(0x00)
	.dwattr $C$DW$163, DW_AT_name("_UART_getXmitHoldRegEmptyStatus")
	.dwattr $C$DW$163, DW_AT_TI_call
        CALL #_UART_getXmitHoldRegEmptyStatus ; |1237| 
                                        ; call occurs [#_UART_getXmitHoldRegEmptyStatus] ; |1237| 
        BCC $C$L111,T0 != #0 ; |1237| 
                                        ; branchcc occurs ; |1237| 
$C$DW$L$_UART_fputc$5$E:
$C$DW$L$_UART_fputc$6$B:
        MOV #1, AC0 ; |1237| 
        SUB AC0, dbl(*SP(#4)), AC0 ; |1237| 
        MOV AC0, dbl(*SP(#4)) ; |1237| 
        BCC $C$L110,AC0 != #0 ; |1237| 
                                        ; branchcc occurs ; |1237| 
$C$DW$L$_UART_fputc$6$E:
$C$L111:    
	.dwpsn	file "src/csl_uart.c",line 1238,column 9,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |1238| 
        CMPU AC1 != AC0, TC1 ; |1238| 
        BCC $C$L112,TC1 ; |1238| 
                                        ; branchcc occurs ; |1238| 
	.dwpsn	file "src/csl_uart.c",line 1239,column 13,is_stmt
        MOV #13, T0
        B $C$L117 ; |1239| 
                                        ; branch occurs ; |1239| 
$C$L112:    
	.dwpsn	file "src/csl_uart.c",line 1240,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |1240| 
        MOV uns(low_byte(*SP(#2))), AR1 ; |1240| 
        MOV AR1, port(*AR3) ; |1240| 
	.dwpsn	file "src/csl_uart.c",line 1241,column 5,is_stmt
        B $C$L116 ; |1241| 
                                        ; branch occurs ; |1241| 
$C$L113:    
	.dwpsn	file "src/csl_uart.c",line 1244,column 15,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$164	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$164, DW_AT_low_pc(0x00)
	.dwattr $C$DW$164, DW_AT_name("_UART_getXmitHoldRegEmptyStatus")
	.dwattr $C$DW$164, DW_AT_TI_call
        CALL #_UART_getXmitHoldRegEmptyStatus ; |1244| 
                                        ; call occurs [#_UART_getXmitHoldRegEmptyStatus] ; |1244| 
        BCC $C$L115,T0 != #0 ; |1244| 
                                        ; branchcc occurs ; |1244| 
$C$L114:    
$C$DW$L$_UART_fputc$11$B:
        MOV dbl(*SP(#0)), XAR0
$C$DW$165	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$165, DW_AT_low_pc(0x00)
	.dwattr $C$DW$165, DW_AT_name("_UART_getXmitHoldRegEmptyStatus")
	.dwattr $C$DW$165, DW_AT_TI_call
        CALL #_UART_getXmitHoldRegEmptyStatus ; |1244| 
                                        ; call occurs [#_UART_getXmitHoldRegEmptyStatus] ; |1244| 
        BCC $C$L114,T0 == #0 ; |1244| 
                                        ; branchcc occurs ; |1244| 
$C$DW$L$_UART_fputc$11$E:
$C$L115:    
	.dwpsn	file "src/csl_uart.c",line 1245,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |1245| 
        MOV uns(low_byte(*SP(#2))), AR1 ; |1245| 
        MOV AR1, port(*AR3) ; |1245| 
$C$L116:    
	.dwpsn	file "src/csl_uart.c",line 1248,column 5,is_stmt
        MOV *SP(#6), T0 ; |1248| 
$C$L117:    
	.dwpsn	file "src/csl_uart.c",line 1249,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$166	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$166, DW_AT_low_pc(0x00)
	.dwattr $C$DW$166, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$167	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$167, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_uart.asm:$C$L114:1:1714639455")
	.dwattr $C$DW$167, DW_AT_TI_begin_file("src/csl_uart.c")
	.dwattr $C$DW$167, DW_AT_TI_begin_line(0x4dc)
	.dwattr $C$DW$167, DW_AT_TI_end_line(0x4dc)
$C$DW$168	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$168, DW_AT_low_pc($C$DW$L$_UART_fputc$11$B)
	.dwattr $C$DW$168, DW_AT_high_pc($C$DW$L$_UART_fputc$11$E)
	.dwendtag $C$DW$167


$C$DW$169	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$169, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_uart.asm:$C$L110:1:1714639455")
	.dwattr $C$DW$169, DW_AT_TI_begin_file("src/csl_uart.c")
	.dwattr $C$DW$169, DW_AT_TI_begin_line(0x4d5)
	.dwattr $C$DW$169, DW_AT_TI_end_line(0x4d5)
$C$DW$170	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$170, DW_AT_low_pc($C$DW$L$_UART_fputc$5$B)
	.dwattr $C$DW$170, DW_AT_high_pc($C$DW$L$_UART_fputc$5$E)
$C$DW$171	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$171, DW_AT_low_pc($C$DW$L$_UART_fputc$6$B)
	.dwattr $C$DW$171, DW_AT_high_pc($C$DW$L$_UART_fputc$6$E)
	.dwendtag $C$DW$169

	.dwattr $C$DW$155, DW_AT_TI_end_file("src/csl_uart.c")
	.dwattr $C$DW$155, DW_AT_TI_end_line(0x4e1)
	.dwattr $C$DW$155, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$155

	.sect	".text"
	.global	_UART_fgets

$C$DW$172	.dwtag  DW_TAG_subprogram, DW_AT_name("UART_fgets")
	.dwattr $C$DW$172, DW_AT_low_pc(_UART_fgets)
	.dwattr $C$DW$172, DW_AT_high_pc(0x00)
	.dwattr $C$DW$172, DW_AT_TI_symbol_name("_UART_fgets")
	.dwattr $C$DW$172, DW_AT_external
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$172, DW_AT_TI_begin_file("src/csl_uart.c")
	.dwattr $C$DW$172, DW_AT_TI_begin_line(0x51f)
	.dwattr $C$DW$172, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$172, DW_AT_TI_max_frame_size(0x0e)
	.dwpsn	file "src/csl_uart.c",line 1313,column 1,is_stmt,address _UART_fgets

	.dwfde $C$DW$CIE, _UART_fgets
$C$DW$173	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUart")
	.dwattr $C$DW$173, DW_AT_TI_symbol_name("_hUart")
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$173, DW_AT_location[DW_OP_reg17]
$C$DW$174	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pBuf")
	.dwattr $C$DW$174, DW_AT_TI_symbol_name("_pBuf")
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$174, DW_AT_location[DW_OP_reg19]
$C$DW$175	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bufSize")
	.dwattr $C$DW$175, DW_AT_TI_symbol_name("_bufSize")
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$175, DW_AT_location[DW_OP_reg12]
$C$DW$176	.dwtag  DW_TAG_formal_parameter, DW_AT_name("timeout")
	.dwattr $C$DW$176, DW_AT_TI_symbol_name("_timeout")
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$176, DW_AT_location[DW_OP_reg0]
;*******************************************************************************
;* FUNCTION NAME: UART_fgets                                                   *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,*
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 14 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (12 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_UART_fgets:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-13, SP
	.dwcfi	cfa_offset, 14
$C$DW$177	.dwtag  DW_TAG_variable, DW_AT_name("hUart")
	.dwattr $C$DW$177, DW_AT_TI_symbol_name("_hUart")
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$177, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$178	.dwtag  DW_TAG_variable, DW_AT_name("pBuf")
	.dwattr $C$DW$178, DW_AT_TI_symbol_name("_pBuf")
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$178, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$179	.dwtag  DW_TAG_variable, DW_AT_name("bufSize")
	.dwattr $C$DW$179, DW_AT_TI_symbol_name("_bufSize")
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$179, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$180	.dwtag  DW_TAG_variable, DW_AT_name("timeout")
	.dwattr $C$DW$180, DW_AT_TI_symbol_name("_timeout")
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$180, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$181	.dwtag  DW_TAG_variable, DW_AT_name("TimeOut")
	.dwattr $C$DW$181, DW_AT_TI_symbol_name("_TimeOut")
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$181, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$182	.dwtag  DW_TAG_variable, DW_AT_name("count")
	.dwattr $C$DW$182, DW_AT_TI_symbol_name("_count")
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$182, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$183	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$183, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$183, DW_AT_location[DW_OP_bregx 0x24 11]
        MOV AC0, dbl(*SP(#6)) ; |1313| 
        MOV T0, *SP(#4) ; |1313| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_uart.c",line 1314,column 9,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |1314| 
        MOV AC0, dbl(*SP(#8)) ; |1314| 
	.dwpsn	file "src/csl_uart.c",line 1315,column 9,is_stmt
        MOV *SP(#4), AR1 ; |1315| 
        SUB #1, AR1 ; |1315| 
        MOV AR1, *SP(#10) ; |1315| 
	.dwpsn	file "src/csl_uart.c",line 1316,column 13,is_stmt
        MOV #0, *SP(#11) ; |1316| 
	.dwpsn	file "src/csl_uart.c",line 1318,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |1318| 

        CMPU AC1 != AC0, TC1 ; |1318| 
        BCC $C$L118,TC1 ; |1318| 
                                        ; branchcc occurs ; |1318| 
	.dwpsn	file "src/csl_uart.c",line 1320,column 4,is_stmt
        MOV #-5, T0
        B $C$L133 ; |1320| 
                                        ; branch occurs ; |1320| 
$C$L118:    
	.dwpsn	file "src/csl_uart.c",line 1323,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        CMPU AC1 != AC0, TC1 ; |1323| 
        BCC $C$L119,TC1 ; |1323| 
                                        ; branchcc occurs ; |1323| 
	.dwpsn	file "src/csl_uart.c",line 1325,column 3,is_stmt
        MOV #-6, T0
        B $C$L133 ; |1325| 
                                        ; branch occurs ; |1325| 
$C$L119:    
	.dwpsn	file "src/csl_uart.c",line 1328,column 2,is_stmt

        MOV #0, AR2
||      MOV *SP(#4), AR1 ; |1328| 

        CMPU AR2 != AR1, TC1 ; |1328| 
        BCC $C$L120,TC1 ; |1328| 
                                        ; branchcc occurs ; |1328| 
	.dwpsn	file "src/csl_uart.c",line 1330,column 3,is_stmt
        MOV #13, T0
        B $C$L133 ; |1330| 
                                        ; branch occurs ; |1330| 
$C$L120:    
	.dwpsn	file "src/csl_uart.c",line 1333,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |1333| 
        MOV port(*AR3(short(#6))), AR1 ; |1333| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |1333| 
        BCLR @#7, AR1 ; |1333| 
        MOV AR1, port(*AR3(short(#6))) ; |1333| 
	.dwpsn	file "src/csl_uart.c",line 1334,column 5,is_stmt

        MOV dbl(*SP(#6)), AC0 ; |1334| 
||      MOV #0, AC1 ; |1334| 

        CMPU AC1 == AC0, TC1 ; |1334| 
        BCC $C$L126,TC1 ; |1334| 
                                        ; branchcc occurs ; |1334| 
	.dwpsn	file "src/csl_uart.c",line 1336,column 9,is_stmt
        MOV *SP(#10), AR1 ; |1336| 
        SUB #1, AR1, AR2 ; |1336| 
        MOV AR2, *SP(#10) ; |1336| 
        BCC $C$L125,AR1 == #0 ; |1336| 
                                        ; branchcc occurs ; |1336| 
        MOV #10, AR2
	.dwpsn	file "src/csl_uart.c",line 1338,column 13,is_stmt
$C$L121:    
$C$DW$L$_UART_fgets$10$B:
	.dwpsn	file "src/csl_uart.c",line 1338,column 20,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$184	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$184, DW_AT_low_pc(0x00)
	.dwattr $C$DW$184, DW_AT_name("_UART_getDataReadyStatus")
	.dwattr $C$DW$184, DW_AT_TI_call
        CALL #_UART_getDataReadyStatus ; |1338| 
                                        ; call occurs [#_UART_getDataReadyStatus] ; |1338| 
        BCC $C$L122,T0 != #0 ; |1338| 
                                        ; branchcc occurs ; |1338| 
$C$DW$L$_UART_fgets$10$E:
$C$DW$L$_UART_fgets$11$B:
        MOV dbl(*SP(#8)), AC0 ; |1338| 
        SUB #1, AC0, AC1 ; |1338| 
        MOV AC1, dbl(*SP(#8)) ; |1338| 
        BCC $C$L121,AC0 != #0 ; |1338| 
                                        ; branchcc occurs ; |1338| 
$C$DW$L$_UART_fgets$11$E:
$C$L122:    
$C$DW$L$_UART_fgets$12$B:
	.dwpsn	file "src/csl_uart.c",line 1339,column 13,is_stmt

        MOV #0, AC1 ; |1339| 
||      MOV dbl(*SP(#8)), AC0 ; |1339| 

        CMPU AC1 != AC0, TC1 ; |1339| 
        BCC $C$L123,TC1 ; |1339| 
                                        ; branchcc occurs ; |1339| 
$C$DW$L$_UART_fgets$12$E:
	.dwpsn	file "src/csl_uart.c",line 1340,column 16,is_stmt
        MOV #13, T0
        B $C$L133 ; |1340| 
                                        ; branch occurs ; |1340| 
$C$L123:    
$C$DW$L$_UART_fgets$14$B:
	.dwpsn	file "src/csl_uart.c",line 1341,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |1341| 
        MOV uns(low_byte(port(*AR3))), AR1 ; |1341| 
        MOV dbl(*SP(#2)), XAR3
        MOV AR1, *AR3 ; |1341| 
	.dwpsn	file "src/csl_uart.c",line 1342,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3, AR1 ; |1342| 
        CMP AR2 != AR1, TC1 ; |1342| 
        BCC $C$L124,TC1 ; |1342| 
                                        ; branchcc occurs ; |1342| 
$C$DW$L$_UART_fgets$14$E:
	.dwpsn	file "src/csl_uart.c",line 1344,column 17,is_stmt
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#2))
	.dwpsn	file "src/csl_uart.c",line 1345,column 17,is_stmt
        B $C$L125 ; |1345| 
                                        ; branch occurs ; |1345| 
$C$L124:    
$C$DW$L$_UART_fgets$16$B:
	.dwpsn	file "src/csl_uart.c",line 1347,column 10,is_stmt
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#2))
	.dwpsn	file "src/csl_uart.c",line 1348,column 13,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |1348| 
        MOV AC0, dbl(*SP(#8)) ; |1348| 
	.dwpsn	file "src/csl_uart.c",line 1349,column 9,is_stmt
        MOV *SP(#10), AR1 ; |1349| 
        SUB #1, AR1, AR3 ; |1349| 
        MOV AR3, *SP(#10) ; |1349| 
        BCC $C$L121,AR1 != #0 ; |1349| 
                                        ; branchcc occurs ; |1349| 
$C$DW$L$_UART_fgets$16$E:
$C$L125:    
	.dwpsn	file "src/csl_uart.c",line 1350,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #0, *AR3 ; |1350| 
	.dwpsn	file "src/csl_uart.c",line 1351,column 5,is_stmt
        B $C$L132 ; |1351| 
                                        ; branch occurs ; |1351| 
$C$L126:    
	.dwpsn	file "src/csl_uart.c",line 1354,column 9,is_stmt
        MOV *SP(#10), AR1 ; |1354| 
        SUB #1, AR1, AR2 ; |1354| 
        MOV AR2, *SP(#10) ; |1354| 
        BCC $C$L131,AR1 == #0 ; |1354| 
                                        ; branchcc occurs ; |1354| 
$C$L127:    
$C$DW$L$_UART_fgets$19$B:
	.dwpsn	file "src/csl_uart.c",line 1356,column 19,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$185	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$185, DW_AT_low_pc(0x00)
	.dwattr $C$DW$185, DW_AT_name("_UART_getDataReadyStatus")
	.dwattr $C$DW$185, DW_AT_TI_call
        CALL #_UART_getDataReadyStatus ; |1356| 
                                        ; call occurs [#_UART_getDataReadyStatus] ; |1356| 
        BCC $C$L129,T0 != #0 ; |1356| 
                                        ; branchcc occurs ; |1356| 
$C$DW$L$_UART_fgets$19$E:
$C$L128:    
$C$DW$L$_UART_fgets$20$B:
        MOV dbl(*SP(#0)), XAR0
$C$DW$186	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$186, DW_AT_low_pc(0x00)
	.dwattr $C$DW$186, DW_AT_name("_UART_getDataReadyStatus")
	.dwattr $C$DW$186, DW_AT_TI_call
        CALL #_UART_getDataReadyStatus ; |1356| 
                                        ; call occurs [#_UART_getDataReadyStatus] ; |1356| 
        BCC $C$L128,T0 == #0 ; |1356| 
                                        ; branchcc occurs ; |1356| 
$C$DW$L$_UART_fgets$20$E:
$C$L129:    
$C$DW$L$_UART_fgets$21$B:
	.dwpsn	file "src/csl_uart.c",line 1357,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |1357| 
        MOV uns(low_byte(port(*AR3))), AR1 ; |1357| 
        MOV dbl(*SP(#2)), XAR3
        MOV AR1, *AR3 ; |1357| 
	.dwpsn	file "src/csl_uart.c",line 1358,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3

        MOV *AR3, AR1 ; |1358| 
||      MOV #10, AR2

        CMP AR2 != AR1, TC1 ; |1358| 
        BCC $C$L130,TC1 ; |1358| 
                                        ; branchcc occurs ; |1358| 
$C$DW$L$_UART_fgets$21$E:
	.dwpsn	file "src/csl_uart.c",line 1360,column 17,is_stmt
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#2))
	.dwpsn	file "src/csl_uart.c",line 1361,column 17,is_stmt
        B $C$L131 ; |1361| 
                                        ; branch occurs ; |1361| 
$C$L130:    
$C$DW$L$_UART_fgets$23$B:
	.dwpsn	file "src/csl_uart.c",line 1363,column 10,is_stmt
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#2))
	.dwpsn	file "src/csl_uart.c",line 1364,column 9,is_stmt
        MOV *SP(#10), AR1 ; |1364| 
        SUB #1, AR1, AR2 ; |1364| 
        MOV AR2, *SP(#10) ; |1364| 
        BCC $C$L127,AR1 != #0 ; |1364| 
                                        ; branchcc occurs ; |1364| 
$C$DW$L$_UART_fgets$23$E:
$C$L131:    
	.dwpsn	file "src/csl_uart.c",line 1365,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #0, *AR3 ; |1365| 
$C$L132:    
	.dwpsn	file "src/csl_uart.c",line 1367,column 2,is_stmt
        MOV *SP(#11), T0 ; |1367| 
$C$L133:    
	.dwpsn	file "src/csl_uart.c",line 1368,column 1,is_stmt
        AADD #13, SP
	.dwcfi	cfa_offset, 1
$C$DW$187	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$187, DW_AT_low_pc(0x00)
	.dwattr $C$DW$187, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$188	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$188, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_uart.asm:$C$L127:1:1714639455")
	.dwattr $C$DW$188, DW_AT_TI_begin_file("src/csl_uart.c")
	.dwattr $C$DW$188, DW_AT_TI_begin_line(0x54a)
	.dwattr $C$DW$188, DW_AT_TI_end_line(0x554)
$C$DW$189	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$189, DW_AT_low_pc($C$DW$L$_UART_fgets$19$B)
	.dwattr $C$DW$189, DW_AT_high_pc($C$DW$L$_UART_fgets$19$E)
$C$DW$190	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$190, DW_AT_low_pc($C$DW$L$_UART_fgets$21$B)
	.dwattr $C$DW$190, DW_AT_high_pc($C$DW$L$_UART_fgets$21$E)
$C$DW$191	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$191, DW_AT_low_pc($C$DW$L$_UART_fgets$23$B)
	.dwattr $C$DW$191, DW_AT_high_pc($C$DW$L$_UART_fgets$23$E)

$C$DW$192	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$192, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_uart.asm:$C$L128:2:1714639455")
	.dwattr $C$DW$192, DW_AT_TI_begin_file("src/csl_uart.c")
	.dwattr $C$DW$192, DW_AT_TI_begin_line(0x54c)
	.dwattr $C$DW$192, DW_AT_TI_end_line(0x54c)
$C$DW$193	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$193, DW_AT_low_pc($C$DW$L$_UART_fgets$20$B)
	.dwattr $C$DW$193, DW_AT_high_pc($C$DW$L$_UART_fgets$20$E)
	.dwendtag $C$DW$192

	.dwendtag $C$DW$188


$C$DW$194	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$194, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_uart.asm:$C$L121:1:1714639455")
	.dwattr $C$DW$194, DW_AT_TI_begin_file("src/csl_uart.c")
	.dwattr $C$DW$194, DW_AT_TI_begin_line(0x53a)
	.dwattr $C$DW$194, DW_AT_TI_end_line(0x545)
$C$DW$195	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$195, DW_AT_low_pc($C$DW$L$_UART_fgets$10$B)
	.dwattr $C$DW$195, DW_AT_high_pc($C$DW$L$_UART_fgets$10$E)
$C$DW$196	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$196, DW_AT_low_pc($C$DW$L$_UART_fgets$12$B)
	.dwattr $C$DW$196, DW_AT_high_pc($C$DW$L$_UART_fgets$12$E)
$C$DW$197	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$197, DW_AT_low_pc($C$DW$L$_UART_fgets$14$B)
	.dwattr $C$DW$197, DW_AT_high_pc($C$DW$L$_UART_fgets$14$E)
$C$DW$198	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$198, DW_AT_low_pc($C$DW$L$_UART_fgets$16$B)
	.dwattr $C$DW$198, DW_AT_high_pc($C$DW$L$_UART_fgets$16$E)
$C$DW$199	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$199, DW_AT_low_pc($C$DW$L$_UART_fgets$11$B)
	.dwattr $C$DW$199, DW_AT_high_pc($C$DW$L$_UART_fgets$11$E)
	.dwendtag $C$DW$194

	.dwattr $C$DW$172, DW_AT_TI_end_file("src/csl_uart.c")
	.dwattr $C$DW$172, DW_AT_TI_end_line(0x558)
	.dwattr $C$DW$172, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$172

	.sect	".text"
	.global	_UART_fputs

$C$DW$200	.dwtag  DW_TAG_subprogram, DW_AT_name("UART_fputs")
	.dwattr $C$DW$200, DW_AT_low_pc(_UART_fputs)
	.dwattr $C$DW$200, DW_AT_high_pc(0x00)
	.dwattr $C$DW$200, DW_AT_TI_symbol_name("_UART_fputs")
	.dwattr $C$DW$200, DW_AT_external
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$200, DW_AT_TI_begin_file("src/csl_uart.c")
	.dwattr $C$DW$200, DW_AT_TI_begin_line(0x593)
	.dwattr $C$DW$200, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$200, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "src/csl_uart.c",line 1428,column 1,is_stmt,address _UART_fputs

	.dwfde $C$DW$CIE, _UART_fputs
$C$DW$201	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUart")
	.dwattr $C$DW$201, DW_AT_TI_symbol_name("_hUart")
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$201, DW_AT_location[DW_OP_reg17]
$C$DW$202	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pBuf")
	.dwattr $C$DW$202, DW_AT_TI_symbol_name("_pBuf")
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$202, DW_AT_location[DW_OP_reg19]
$C$DW$203	.dwtag  DW_TAG_formal_parameter, DW_AT_name("timeout")
	.dwattr $C$DW$203, DW_AT_TI_symbol_name("_timeout")
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$203, DW_AT_location[DW_OP_reg0]
;*******************************************************************************
;* FUNCTION NAME: UART_fputs                                                   *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,*
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (9 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_UART_fputs:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-9, SP
	.dwcfi	cfa_offset, 10
$C$DW$204	.dwtag  DW_TAG_variable, DW_AT_name("hUart")
	.dwattr $C$DW$204, DW_AT_TI_symbol_name("_hUart")
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$204, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$205	.dwtag  DW_TAG_variable, DW_AT_name("pBuf")
	.dwattr $C$DW$205, DW_AT_TI_symbol_name("_pBuf")
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$205, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$206	.dwtag  DW_TAG_variable, DW_AT_name("timeout")
	.dwattr $C$DW$206, DW_AT_TI_symbol_name("_timeout")
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$206, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$207	.dwtag  DW_TAG_variable, DW_AT_name("TimeOut")
	.dwattr $C$DW$207, DW_AT_TI_symbol_name("_TimeOut")
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$207, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$208	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$208, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$208, DW_AT_location[DW_OP_bregx 0x24 8]
        MOV AC0, dbl(*SP(#4)) ; |1428| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_uart.c",line 1429,column 9,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |1429| 
        MOV AC0, dbl(*SP(#6)) ; |1429| 
	.dwpsn	file "src/csl_uart.c",line 1430,column 13,is_stmt
        MOV #0, *SP(#8) ; |1430| 
	.dwpsn	file "src/csl_uart.c",line 1432,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |1432| 

        CMPU AC1 != AC0, TC1 ; |1432| 
        BCC $C$L134,TC1 ; |1432| 
                                        ; branchcc occurs ; |1432| 
	.dwpsn	file "src/csl_uart.c",line 1434,column 4,is_stmt
        MOV #-5, T0
        B $C$L144 ; |1434| 
                                        ; branch occurs ; |1434| 
$C$L134:    
	.dwpsn	file "src/csl_uart.c",line 1437,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        CMPU AC1 != AC0, TC1 ; |1437| 
        BCC $C$L135,TC1 ; |1437| 
                                        ; branchcc occurs ; |1437| 
	.dwpsn	file "src/csl_uart.c",line 1439,column 9,is_stmt
        MOV #-6, T0
        B $C$L144 ; |1439| 
                                        ; branch occurs ; |1439| 
$C$L135:    
	.dwpsn	file "src/csl_uart.c",line 1442,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |1442| 
        MOV port(*AR3(short(#6))), AR1 ; |1442| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |1442| 
        BCLR @#7, AR1 ; |1442| 
        MOV AR1, port(*AR3(short(#6))) ; |1442| 
	.dwpsn	file "src/csl_uart.c",line 1444,column 5,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |1444| 
        CMPU AC1 == AC0, TC1 ; |1444| 
        BCC $C$L139,TC1 ; |1444| 
                                        ; branchcc occurs ; |1444| 
	.dwpsn	file "src/csl_uart.c",line 1446,column 15,is_stmt
        MOV dbl(*SP(#2)), XAR3

        MOV *AR3, AR1 ; |1446| 
||      MOV #0, AR2

        CMP AR2 == AR1, TC1 ; |1446| 
        BCC $C$L143,TC1 ; |1446| 
                                        ; branchcc occurs ; |1446| 
	.dwpsn	file "src/csl_uart.c",line 1448,column 13,is_stmt
$C$L136:    
$C$DW$L$_UART_fputs$8$B:
	.dwpsn	file "src/csl_uart.c",line 1448,column 20,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$209	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$209, DW_AT_low_pc(0x00)
	.dwattr $C$DW$209, DW_AT_name("_UART_getXmitHoldRegEmptyStatus")
	.dwattr $C$DW$209, DW_AT_TI_call
        CALL #_UART_getXmitHoldRegEmptyStatus ; |1448| 
                                        ; call occurs [#_UART_getXmitHoldRegEmptyStatus] ; |1448| 
        BCC $C$L137,T0 != #0 ; |1448| 
                                        ; branchcc occurs ; |1448| 
$C$DW$L$_UART_fputs$8$E:
$C$DW$L$_UART_fputs$9$B:
        MOV dbl(*SP(#6)), AC0 ; |1448| 
        SUB #1, AC0, AC1 ; |1448| 
        MOV AC1, dbl(*SP(#6)) ; |1448| 
        BCC $C$L136,AC0 != #0 ; |1448| 
                                        ; branchcc occurs ; |1448| 
$C$DW$L$_UART_fputs$9$E:
$C$L137:    
$C$DW$L$_UART_fputs$10$B:
	.dwpsn	file "src/csl_uart.c",line 1449,column 13,is_stmt

        MOV #0, AC1 ; |1449| 
||      MOV dbl(*SP(#6)), AC0 ; |1449| 

        CMPU AC1 != AC0, TC1 ; |1449| 
        BCC $C$L138,TC1 ; |1449| 
                                        ; branchcc occurs ; |1449| 
$C$DW$L$_UART_fputs$10$E:
	.dwpsn	file "src/csl_uart.c",line 1450,column 17,is_stmt
        MOV #13, T0
        B $C$L144 ; |1450| 
                                        ; branch occurs ; |1450| 
$C$L138:    
$C$DW$L$_UART_fputs$12$B:
	.dwpsn	file "src/csl_uart.c",line 1451,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(low_byte(*AR3)), AR1 ; |1451| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |1451| 
        MOV AR1, port(*AR3) ; |1451| 
	.dwpsn	file "src/csl_uart.c",line 1452,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#2))
	.dwpsn	file "src/csl_uart.c",line 1453,column 13,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |1453| 
        MOV AC0, dbl(*SP(#6)) ; |1453| 
	.dwpsn	file "src/csl_uart.c",line 1446,column 15,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3, AR1 ; |1446| 
        CMP AR2 != AR1, TC1 ; |1446| 
        BCC $C$L136,TC1 ; |1446| 
                                        ; branchcc occurs ; |1446| 
$C$DW$L$_UART_fputs$12$E:
	.dwpsn	file "src/csl_uart.c",line 1455,column 5,is_stmt
        B $C$L143 ; |1455| 
                                        ; branch occurs ; |1455| 
$C$L139:    
	.dwpsn	file "src/csl_uart.c",line 1458,column 16,is_stmt
        MOV dbl(*SP(#2)), XAR3

        MOV *AR3, AR1 ; |1458| 
||      MOV #0, AR2

        CMP AR2 == AR1, TC1 ; |1458| 
        BCC $C$L143,TC1 ; |1458| 
                                        ; branchcc occurs ; |1458| 
$C$L140:    
$C$DW$L$_UART_fputs$15$B:
	.dwpsn	file "src/csl_uart.c",line 1460,column 19,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$210	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$210, DW_AT_low_pc(0x00)
	.dwattr $C$DW$210, DW_AT_name("_UART_getXmitHoldRegEmptyStatus")
	.dwattr $C$DW$210, DW_AT_TI_call
        CALL #_UART_getXmitHoldRegEmptyStatus ; |1460| 
                                        ; call occurs [#_UART_getXmitHoldRegEmptyStatus] ; |1460| 
        BCC $C$L142,T0 != #0 ; |1460| 
                                        ; branchcc occurs ; |1460| 
$C$DW$L$_UART_fputs$15$E:
$C$L141:    
$C$DW$L$_UART_fputs$16$B:
        MOV dbl(*SP(#0)), XAR0
$C$DW$211	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$211, DW_AT_low_pc(0x00)
	.dwattr $C$DW$211, DW_AT_name("_UART_getXmitHoldRegEmptyStatus")
	.dwattr $C$DW$211, DW_AT_TI_call
        CALL #_UART_getXmitHoldRegEmptyStatus ; |1460| 
                                        ; call occurs [#_UART_getXmitHoldRegEmptyStatus] ; |1460| 
        BCC $C$L141,T0 == #0 ; |1460| 
                                        ; branchcc occurs ; |1460| 
$C$DW$L$_UART_fputs$16$E:
$C$L142:    
$C$DW$L$_UART_fputs$17$B:
	.dwpsn	file "src/csl_uart.c",line 1461,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(low_byte(*AR3)), AR1 ; |1461| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |1461| 
        MOV AR1, port(*AR3) ; |1461| 
	.dwpsn	file "src/csl_uart.c",line 1462,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#2))
	.dwpsn	file "src/csl_uart.c",line 1458,column 16,is_stmt
        MOV *AR3, AR1 ; |1458| 
        CMP AR2 != AR1, TC1 ; |1458| 
        BCC $C$L140,TC1 ; |1458| 
                                        ; branchcc occurs ; |1458| 
$C$DW$L$_UART_fputs$17$E:
$C$L143:    
	.dwpsn	file "src/csl_uart.c",line 1466,column 3,is_stmt
        MOV *SP(#8), T0 ; |1466| 
$C$L144:    
	.dwpsn	file "src/csl_uart.c",line 1467,column 1,is_stmt
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$212	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$212, DW_AT_low_pc(0x00)
	.dwattr $C$DW$212, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$213	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$213, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_uart.asm:$C$L140:1:1714639455")
	.dwattr $C$DW$213, DW_AT_TI_begin_file("src/csl_uart.c")
	.dwattr $C$DW$213, DW_AT_TI_begin_line(0x5b2)
	.dwattr $C$DW$213, DW_AT_TI_end_line(0x5b7)
$C$DW$214	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$214, DW_AT_low_pc($C$DW$L$_UART_fputs$15$B)
	.dwattr $C$DW$214, DW_AT_high_pc($C$DW$L$_UART_fputs$15$E)
$C$DW$215	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$215, DW_AT_low_pc($C$DW$L$_UART_fputs$17$B)
	.dwattr $C$DW$215, DW_AT_high_pc($C$DW$L$_UART_fputs$17$E)

$C$DW$216	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$216, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_uart.asm:$C$L141:2:1714639455")
	.dwattr $C$DW$216, DW_AT_TI_begin_file("src/csl_uart.c")
	.dwattr $C$DW$216, DW_AT_TI_begin_line(0x5b4)
	.dwattr $C$DW$216, DW_AT_TI_end_line(0x5b4)
$C$DW$217	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$217, DW_AT_low_pc($C$DW$L$_UART_fputs$16$B)
	.dwattr $C$DW$217, DW_AT_high_pc($C$DW$L$_UART_fputs$16$E)
	.dwendtag $C$DW$216

	.dwendtag $C$DW$213


$C$DW$218	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$218, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_uart.asm:$C$L136:1:1714639455")
	.dwattr $C$DW$218, DW_AT_TI_begin_file("src/csl_uart.c")
	.dwattr $C$DW$218, DW_AT_TI_begin_line(0x5a6)
	.dwattr $C$DW$218, DW_AT_TI_end_line(0x5ad)
$C$DW$219	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$219, DW_AT_low_pc($C$DW$L$_UART_fputs$8$B)
	.dwattr $C$DW$219, DW_AT_high_pc($C$DW$L$_UART_fputs$8$E)
$C$DW$220	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$220, DW_AT_low_pc($C$DW$L$_UART_fputs$10$B)
	.dwattr $C$DW$220, DW_AT_high_pc($C$DW$L$_UART_fputs$10$E)
$C$DW$221	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$221, DW_AT_low_pc($C$DW$L$_UART_fputs$12$B)
	.dwattr $C$DW$221, DW_AT_high_pc($C$DW$L$_UART_fputs$12$E)
$C$DW$222	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$222, DW_AT_low_pc($C$DW$L$_UART_fputs$9$B)
	.dwattr $C$DW$222, DW_AT_high_pc($C$DW$L$_UART_fputs$9$E)
	.dwendtag $C$DW$218

	.dwattr $C$DW$200, DW_AT_TI_end_file("src/csl_uart.c")
	.dwattr $C$DW$200, DW_AT_TI_end_line(0x5bb)
	.dwattr $C$DW$200, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$200

	.sect	".text"
	.global	_UART_getEventId

$C$DW$223	.dwtag  DW_TAG_subprogram, DW_AT_name("UART_getEventId")
	.dwattr $C$DW$223, DW_AT_low_pc(_UART_getEventId)
	.dwattr $C$DW$223, DW_AT_high_pc(0x00)
	.dwattr $C$DW$223, DW_AT_TI_symbol_name("_UART_getEventId")
	.dwattr $C$DW$223, DW_AT_external
	.dwattr $C$DW$223, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$223, DW_AT_TI_begin_file("src/csl_uart.c")
	.dwattr $C$DW$223, DW_AT_TI_begin_line(0x5df)
	.dwattr $C$DW$223, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$223, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_uart.c",line 1504,column 1,is_stmt,address _UART_getEventId

	.dwfde $C$DW$CIE, _UART_getEventId
$C$DW$224	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUart")
	.dwattr $C$DW$224, DW_AT_TI_symbol_name("_hUart")
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$224, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: UART_getEventId                                              *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR3,XAR3,SP,CARRY,   *
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_UART_getEventId:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$225	.dwtag  DW_TAG_variable, DW_AT_name("hUart")
	.dwattr $C$DW$225, DW_AT_TI_symbol_name("_hUart")
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$225, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$226	.dwtag  DW_TAG_variable, DW_AT_name("IID")
	.dwattr $C$DW$226, DW_AT_TI_symbol_name("_IID")
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$226, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_uart.c",line 1507,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |1507| 

        CMPU AC1 != AC0, TC1 ; |1507| 
        BCC $C$L145,TC1 ; |1507| 
                                        ; branchcc occurs ; |1507| 
	.dwpsn	file "src/csl_uart.c",line 1509,column 4,is_stmt
        MOV #-5, T0
        B $C$L146 ; |1509| 
                                        ; branch occurs ; |1509| 
$C$L145:    
	.dwpsn	file "src/csl_uart.c",line 1511,column 5,is_stmt
        MOV *AR3(short(#1)), AR3 ; |1511| 
        MOV port(*AR3(short(#4))), AR1 ; |1511| 
        AND #0x000e, AR1, AR1 ; |1511| 
        SFTL AR1, #-1 ; |1511| 
        MOV AR1, *SP(#2) ; |1511| 
	.dwpsn	file "src/csl_uart.c",line 1512,column 5,is_stmt
        MOV *SP(#2), T0 ; |1512| 
$C$L146:    
	.dwpsn	file "src/csl_uart.c",line 1513,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$227	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$227, DW_AT_low_pc(0x00)
	.dwattr $C$DW$227, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$223, DW_AT_TI_end_file("src/csl_uart.c")
	.dwattr $C$DW$223, DW_AT_TI_end_line(0x5e9)
	.dwattr $C$DW$223, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$223

	.sect	".text"
	.global	_UART_getConfig

$C$DW$228	.dwtag  DW_TAG_subprogram, DW_AT_name("UART_getConfig")
	.dwattr $C$DW$228, DW_AT_low_pc(_UART_getConfig)
	.dwattr $C$DW$228, DW_AT_high_pc(0x00)
	.dwattr $C$DW$228, DW_AT_TI_symbol_name("_UART_getConfig")
	.dwattr $C$DW$228, DW_AT_external
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$228, DW_AT_TI_begin_file("src/csl_uart.c")
	.dwattr $C$DW$228, DW_AT_TI_begin_line(0x61a)
	.dwattr $C$DW$228, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$228, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "src/csl_uart.c",line 1563,column 2,is_stmt,address _UART_getConfig

	.dwfde $C$DW$CIE, _UART_getConfig
$C$DW$229	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUart")
	.dwattr $C$DW$229, DW_AT_TI_symbol_name("_hUart")
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$229, DW_AT_location[DW_OP_reg17]
$C$DW$230	.dwtag  DW_TAG_formal_parameter, DW_AT_name("config")
	.dwattr $C$DW$230, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$230, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: UART_getConfig                                               *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,*
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_UART_getConfig:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$231	.dwtag  DW_TAG_variable, DW_AT_name("hUart")
	.dwattr $C$DW$231, DW_AT_TI_symbol_name("_hUart")
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$231, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$232	.dwtag  DW_TAG_variable, DW_AT_name("config")
	.dwattr $C$DW$232, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$232, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$233	.dwtag  DW_TAG_variable, DW_AT_name("temp")
	.dwattr $C$DW$233, DW_AT_TI_symbol_name("_temp")
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$233, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$234	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$234, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$234, DW_AT_location[DW_OP_bregx 0x24 5]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_uart.c",line 1567,column 14,is_stmt
        MOV #0, *SP(#5) ; |1567| 
	.dwpsn	file "src/csl_uart.c",line 1569,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |1569| 

        CMPU AC1 != AC0, TC1 ; |1569| 
        BCC $C$L147,TC1 ; |1569| 
                                        ; branchcc occurs ; |1569| 
	.dwpsn	file "src/csl_uart.c",line 1571,column 4,is_stmt
        MOV #-5, T0
        B $C$L149 ; |1571| 
                                        ; branch occurs ; |1571| 
$C$L147:    
	.dwpsn	file "src/csl_uart.c",line 1574,column 6,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        CMPU AC1 != AC0, TC1 ; |1574| 
        BCC $C$L148,TC1 ; |1574| 
                                        ; branchcc occurs ; |1574| 
	.dwpsn	file "src/csl_uart.c",line 1576,column 4,is_stmt
        MOV #-6, T0
        B $C$L149 ; |1576| 
                                        ; branch occurs ; |1576| 
$C$L148:    
	.dwpsn	file "src/csl_uart.c",line 1579,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |1579| 
        MOV port(*AR3(short(#6))), AR1 ; |1579| 
        MOV dbl(*SP(#2)), XAR3
        MOV AR1, *AR3(short(#2)) ; |1579| 
	.dwpsn	file "src/csl_uart.c",line 1580,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#2)), AR1 ; |1580| 
        AND #0x0080, AR1, AC0 ; |1580| 
        SFTS AC0, #-7, AC0 ; |1580| 
        MOV AC0, *SP(#4) ; |1580| 
	.dwpsn	file "src/csl_uart.c",line 1582,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |1582| 
        MOV port(*AR3(short(#6))), AR1 ; |1582| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |1582| 
        BCLR @#7, AR1 ; |1582| 
        BSET @#7, AR1 ; |1582| 
        MOV AR1, port(*AR3(short(#6))) ; |1582| 
	.dwpsn	file "src/csl_uart.c",line 1583,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #16, T0 ; |1583| 
        MOV *AR3(short(#1)), AR3 ; |1583| 
        MOV port(*AR3(T0)), AR1 ; |1583| 
        MOV dbl(*SP(#2)), XAR3
        MOV AR1, *AR3 ; |1583| 
	.dwpsn	file "src/csl_uart.c",line 1584,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #18, T0 ; |1584| 
        MOV *AR3(short(#1)), AR3 ; |1584| 
        MOV port(*AR3(T0)), AR1 ; |1584| 
        MOV dbl(*SP(#2)), XAR3
        MOV AR1, *AR3(short(#1)) ; |1584| 
	.dwpsn	file "src/csl_uart.c",line 1586,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |1586| 
        MOV port(*AR3(short(#6))), AR1 ; |1586| 
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#4), AC0 ; |1586| 
        MOV *AR3(short(#1)), AR3 ; |1586| 
        SFTL AC0, #7, AC0 ; |1586| 
        AND #0x0080, AC0, AR2 ; |1586| 
        BCLR @#7, AR1 ; |1586| 
        OR AR1, AR2 ; |1586| 
        MOV AR2, port(*AR3(short(#6))) ; |1586| 
	.dwpsn	file "src/csl_uart.c",line 1589,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |1589| 
        MOV port(*AR3(short(#4))), AR1 ; |1589| 
        MOV dbl(*SP(#2)), XAR3
        MOV AR1, *AR3(short(#3)) ; |1589| 
	.dwpsn	file "src/csl_uart.c",line 1590,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |1590| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR1 ; |1590| 
        MOV dbl(*SP(#2)), XAR3
        MOV AR1, *AR3(short(#4)) ; |1590| 
	.dwpsn	file "src/csl_uart.c",line 1591,column 2,is_stmt
        MOV *SP(#5), T0 ; |1591| 
$C$L149:    
	.dwpsn	file "src/csl_uart.c",line 1592,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$235	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$235, DW_AT_low_pc(0x00)
	.dwattr $C$DW$235, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$228, DW_AT_TI_end_file("src/csl_uart.c")
	.dwattr $C$DW$228, DW_AT_TI_end_line(0x638)
	.dwattr $C$DW$228, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$228

	.sect	".text"
	.global	_UART_setCallback

$C$DW$236	.dwtag  DW_TAG_subprogram, DW_AT_name("UART_setCallback")
	.dwattr $C$DW$236, DW_AT_low_pc(_UART_setCallback)
	.dwattr $C$DW$236, DW_AT_high_pc(0x00)
	.dwattr $C$DW$236, DW_AT_TI_symbol_name("_UART_setCallback")
	.dwattr $C$DW$236, DW_AT_external
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$236, DW_AT_TI_begin_file("src/csl_uart.c")
	.dwattr $C$DW$236, DW_AT_TI_begin_line(0x65f)
	.dwattr $C$DW$236, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$236, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_uart.c",line 1632,column 1,is_stmt,address _UART_setCallback

	.dwfde $C$DW$CIE, _UART_setCallback
$C$DW$237	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUart")
	.dwattr $C$DW$237, DW_AT_TI_symbol_name("_hUart")
	.dwattr $C$DW$237, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$237, DW_AT_location[DW_OP_reg17]
$C$DW$238	.dwtag  DW_TAG_formal_parameter, DW_AT_name("isrAddr")
	.dwattr $C$DW$238, DW_AT_TI_symbol_name("_isrAddr")
	.dwattr $C$DW$238, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$238, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: UART_setCallback                                             *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,   *
;*                        XAR3,SP,TC1,M40,SATA,SATD,RDM,FRCT,SMUL              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_UART_setCallback:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$239	.dwtag  DW_TAG_variable, DW_AT_name("hUart")
	.dwattr $C$DW$239, DW_AT_TI_symbol_name("_hUart")
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$239, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$240	.dwtag  DW_TAG_variable, DW_AT_name("isrAddr")
	.dwattr $C$DW$240, DW_AT_TI_symbol_name("_isrAddr")
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$240, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$241	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$241, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$241, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$241, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_uart.c",line 1633,column 13,is_stmt
        MOV #0, *SP(#4) ; |1633| 
	.dwpsn	file "src/csl_uart.c",line 1635,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |1635| 

        CMPU AC1 != AC0, TC1 ; |1635| 
        BCC $C$L150,TC1 ; |1635| 
                                        ; branchcc occurs ; |1635| 
	.dwpsn	file "src/csl_uart.c",line 1637,column 8,is_stmt
        MOV #-5, T0
        B $C$L152 ; |1637| 
                                        ; branch occurs ; |1637| 
$C$L150:    
	.dwpsn	file "src/csl_uart.c",line 1640,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        CMPU AC1 != AC0, TC1 ; |1640| 
        BCC $C$L151,TC1 ; |1640| 
                                        ; branchcc occurs ; |1640| 
	.dwpsn	file "src/csl_uart.c",line 1642,column 8,is_stmt
        MOV #-6, T0
        B $C$L152 ; |1642| 
                                        ; branch occurs ; |1642| 
$C$L151:    
	.dwpsn	file "src/csl_uart.c",line 1645,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#2)), XAR2
        AADD #12, AR3 ; |1645| 
        MOV dbl(*AR2), dbl(*AR3) ; |1645| 
	.dwpsn	file "src/csl_uart.c",line 1646,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(short(#2))), AC0 ; |1646| 
        MOV dbl(*SP(#0)), XAR3
        MOV AC0, dbl(*AR3(#10)) ; |1646| 
	.dwpsn	file "src/csl_uart.c",line 1647,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(short(#4))), AC0 ; |1647| 
        MOV dbl(*SP(#0)), XAR3
        MOV AC0, dbl(*AR3(#8)) ; |1647| 
	.dwpsn	file "src/csl_uart.c",line 1648,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(short(#6))), AC0 ; |1648| 
        MOV dbl(*SP(#0)), XAR3
        MOV AC0, dbl(*AR3(#18)) ; |1648| 
	.dwpsn	file "src/csl_uart.c",line 1649,column 2,is_stmt
        MOV *SP(#4), T0 ; |1649| 
$C$L152:    
	.dwpsn	file "src/csl_uart.c",line 1650,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$242	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$242, DW_AT_low_pc(0x00)
	.dwattr $C$DW$242, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$236, DW_AT_TI_end_file("src/csl_uart.c")
	.dwattr $C$DW$236, DW_AT_TI_end_line(0x672)
	.dwattr $C$DW$236, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$236

;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_SYS_peripheralReset
	.global	__divul
	.global	__remul

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$41	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x01)
$C$DW$243	.dwtag  DW_TAG_enumerator, DW_AT_name("UART_POLLED"), DW_AT_const_value(0x00)
$C$DW$244	.dwtag  DW_TAG_enumerator, DW_AT_name("UART_INTERRUPT"), DW_AT_const_value(0x01)
$C$DW$245	.dwtag  DW_TAG_enumerator, DW_AT_name("UART_OPMODE_OTHER"), DW_AT_const_value(0x02)
	.dwendtag $C$DW$T$41

$C$DW$T$42	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UartOpmode")
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$42, DW_AT_language(DW_LANG_C)

$C$DW$T$45	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x01)
$C$DW$246	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_UART_FIFO_MODE"), DW_AT_const_value(0x00)
$C$DW$247	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_UART_NON_FIFO_MODE"), DW_AT_const_value(0x01)
$C$DW$248	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_UART_MODE_UNDEFINED"), DW_AT_const_value(0x02)
	.dwendtag $C$DW$T$45

$C$DW$T$46	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UartXferMode")
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$46, DW_AT_language(DW_LANG_C)

$C$DW$T$52	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x01)
$C$DW$249	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SYS_PG4"), DW_AT_const_value(0x00)
$C$DW$250	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SYS_PG3"), DW_AT_const_value(0x01)
$C$DW$251	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SYS_PG1"), DW_AT_const_value(0x02)
	.dwendtag $C$DW$T$52

$C$DW$T$53	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SysPGFlags")
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$T$53, DW_AT_language(DW_LANG_C)

$C$DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x19)
$C$DW$252	.dwtag  DW_TAG_member
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$252, DW_AT_name("THR")
	.dwattr $C$DW$252, DW_AT_TI_symbol_name("_THR")
	.dwattr $C$DW$252, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$252, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$253	.dwtag  DW_TAG_member
	.dwattr $C$DW$253, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$253, DW_AT_name("RSVD0")
	.dwattr $C$DW$253, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$253, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$253, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$254	.dwtag  DW_TAG_member
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$254, DW_AT_name("IER")
	.dwattr $C$DW$254, DW_AT_TI_symbol_name("_IER")
	.dwattr $C$DW$254, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$254, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$255	.dwtag  DW_TAG_member
	.dwattr $C$DW$255, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$255, DW_AT_name("RSVD1")
	.dwattr $C$DW$255, DW_AT_TI_symbol_name("_RSVD1")
	.dwattr $C$DW$255, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$255, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$256	.dwtag  DW_TAG_member
	.dwattr $C$DW$256, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$256, DW_AT_name("FCR")
	.dwattr $C$DW$256, DW_AT_TI_symbol_name("_FCR")
	.dwattr $C$DW$256, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$256, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$257	.dwtag  DW_TAG_member
	.dwattr $C$DW$257, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$257, DW_AT_name("RSVD2")
	.dwattr $C$DW$257, DW_AT_TI_symbol_name("_RSVD2")
	.dwattr $C$DW$257, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$257, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$258	.dwtag  DW_TAG_member
	.dwattr $C$DW$258, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$258, DW_AT_name("LCR")
	.dwattr $C$DW$258, DW_AT_TI_symbol_name("_LCR")
	.dwattr $C$DW$258, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$258, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$259	.dwtag  DW_TAG_member
	.dwattr $C$DW$259, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$259, DW_AT_name("RSVD3")
	.dwattr $C$DW$259, DW_AT_TI_symbol_name("_RSVD3")
	.dwattr $C$DW$259, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$259, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$260	.dwtag  DW_TAG_member
	.dwattr $C$DW$260, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$260, DW_AT_name("MCR")
	.dwattr $C$DW$260, DW_AT_TI_symbol_name("_MCR")
	.dwattr $C$DW$260, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$260, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$261	.dwtag  DW_TAG_member
	.dwattr $C$DW$261, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$261, DW_AT_name("RSVD4")
	.dwattr $C$DW$261, DW_AT_TI_symbol_name("_RSVD4")
	.dwattr $C$DW$261, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$261, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$262	.dwtag  DW_TAG_member
	.dwattr $C$DW$262, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$262, DW_AT_name("LSR")
	.dwattr $C$DW$262, DW_AT_TI_symbol_name("_LSR")
	.dwattr $C$DW$262, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$262, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$263	.dwtag  DW_TAG_member
	.dwattr $C$DW$263, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$263, DW_AT_name("RSVD5")
	.dwattr $C$DW$263, DW_AT_TI_symbol_name("_RSVD5")
	.dwattr $C$DW$263, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$263, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$264	.dwtag  DW_TAG_member
	.dwattr $C$DW$264, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$264, DW_AT_name("SCR")
	.dwattr $C$DW$264, DW_AT_TI_symbol_name("_SCR")
	.dwattr $C$DW$264, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$264, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$265	.dwtag  DW_TAG_member
	.dwattr $C$DW$265, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$265, DW_AT_name("RSVD6")
	.dwattr $C$DW$265, DW_AT_TI_symbol_name("_RSVD6")
	.dwattr $C$DW$265, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$265, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$266	.dwtag  DW_TAG_member
	.dwattr $C$DW$266, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$266, DW_AT_name("DLL")
	.dwattr $C$DW$266, DW_AT_TI_symbol_name("_DLL")
	.dwattr $C$DW$266, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$266, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$267	.dwtag  DW_TAG_member
	.dwattr $C$DW$267, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$267, DW_AT_name("RSVD7")
	.dwattr $C$DW$267, DW_AT_TI_symbol_name("_RSVD7")
	.dwattr $C$DW$267, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$267, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$268	.dwtag  DW_TAG_member
	.dwattr $C$DW$268, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$268, DW_AT_name("DLH")
	.dwattr $C$DW$268, DW_AT_TI_symbol_name("_DLH")
	.dwattr $C$DW$268, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$268, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$269	.dwtag  DW_TAG_member
	.dwattr $C$DW$269, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$269, DW_AT_name("RSVD8")
	.dwattr $C$DW$269, DW_AT_TI_symbol_name("_RSVD8")
	.dwattr $C$DW$269, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$269, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$270	.dwtag  DW_TAG_member
	.dwattr $C$DW$270, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$270, DW_AT_name("PWREMU_MGMT")
	.dwattr $C$DW$270, DW_AT_TI_symbol_name("_PWREMU_MGMT")
	.dwattr $C$DW$270, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$270, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$23

$C$DW$T$33	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UartRegs")
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$33, DW_AT_language(DW_LANG_C)
$C$DW$271	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$271, DW_AT_type(*$C$DW$T$33)
$C$DW$272	.dwtag  DW_TAG_TI_ioport_type
	.dwattr $C$DW$272, DW_AT_type(*$C$DW$271)
$C$DW$T$34	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$272)
$C$DW$T$35	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$35, DW_AT_address_class(0x10)
$C$DW$T$36	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UartRegsOvly")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)

$C$DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x48)
$C$DW$273	.dwtag  DW_TAG_member
	.dwattr $C$DW$273, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$273, DW_AT_name("EBSR")
	.dwattr $C$DW$273, DW_AT_TI_symbol_name("_EBSR")
	.dwattr $C$DW$273, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$273, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$274	.dwtag  DW_TAG_member
	.dwattr $C$DW$274, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$274, DW_AT_name("RSVD0")
	.dwattr $C$DW$274, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$274, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$274, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$275	.dwtag  DW_TAG_member
	.dwattr $C$DW$275, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$275, DW_AT_name("PCGCR1")
	.dwattr $C$DW$275, DW_AT_TI_symbol_name("_PCGCR1")
	.dwattr $C$DW$275, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$275, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$276	.dwtag  DW_TAG_member
	.dwattr $C$DW$276, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$276, DW_AT_name("PCGCR2")
	.dwattr $C$DW$276, DW_AT_TI_symbol_name("_PCGCR2")
	.dwattr $C$DW$276, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$276, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$277	.dwtag  DW_TAG_member
	.dwattr $C$DW$277, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$277, DW_AT_name("PSRCR")
	.dwattr $C$DW$277, DW_AT_TI_symbol_name("_PSRCR")
	.dwattr $C$DW$277, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$277, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$278	.dwtag  DW_TAG_member
	.dwattr $C$DW$278, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$278, DW_AT_name("PRCR")
	.dwattr $C$DW$278, DW_AT_TI_symbol_name("_PRCR")
	.dwattr $C$DW$278, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$278, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$279	.dwtag  DW_TAG_member
	.dwattr $C$DW$279, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$279, DW_AT_name("RSVD1")
	.dwattr $C$DW$279, DW_AT_TI_symbol_name("_RSVD1")
	.dwattr $C$DW$279, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$279, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$280	.dwtag  DW_TAG_member
	.dwattr $C$DW$280, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$280, DW_AT_name("TIAFR")
	.dwattr $C$DW$280, DW_AT_TI_symbol_name("_TIAFR")
	.dwattr $C$DW$280, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$280, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$281	.dwtag  DW_TAG_member
	.dwattr $C$DW$281, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$281, DW_AT_name("RSVD2")
	.dwattr $C$DW$281, DW_AT_TI_symbol_name("_RSVD2")
	.dwattr $C$DW$281, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$281, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$282	.dwtag  DW_TAG_member
	.dwattr $C$DW$282, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$282, DW_AT_name("ODSCR")
	.dwattr $C$DW$282, DW_AT_TI_symbol_name("_ODSCR")
	.dwattr $C$DW$282, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$282, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$283	.dwtag  DW_TAG_member
	.dwattr $C$DW$283, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$283, DW_AT_name("PDINHIBR1")
	.dwattr $C$DW$283, DW_AT_TI_symbol_name("_PDINHIBR1")
	.dwattr $C$DW$283, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$283, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$284	.dwtag  DW_TAG_member
	.dwattr $C$DW$284, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$284, DW_AT_name("PDINHIBR2")
	.dwattr $C$DW$284, DW_AT_TI_symbol_name("_PDINHIBR2")
	.dwattr $C$DW$284, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$284, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$285	.dwtag  DW_TAG_member
	.dwattr $C$DW$285, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$285, DW_AT_name("PDINHIBR3")
	.dwattr $C$DW$285, DW_AT_TI_symbol_name("_PDINHIBR3")
	.dwattr $C$DW$285, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$285, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$286	.dwtag  DW_TAG_member
	.dwattr $C$DW$286, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$286, DW_AT_name("DMA0CESR1")
	.dwattr $C$DW$286, DW_AT_TI_symbol_name("_DMA0CESR1")
	.dwattr $C$DW$286, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$286, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$287	.dwtag  DW_TAG_member
	.dwattr $C$DW$287, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$287, DW_AT_name("DMA0CESR2")
	.dwattr $C$DW$287, DW_AT_TI_symbol_name("_DMA0CESR2")
	.dwattr $C$DW$287, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr $C$DW$287, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$288	.dwtag  DW_TAG_member
	.dwattr $C$DW$288, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$288, DW_AT_name("DMA1CESR1")
	.dwattr $C$DW$288, DW_AT_TI_symbol_name("_DMA1CESR1")
	.dwattr $C$DW$288, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$288, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$289	.dwtag  DW_TAG_member
	.dwattr $C$DW$289, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$289, DW_AT_name("DMA1CESR2")
	.dwattr $C$DW$289, DW_AT_TI_symbol_name("_DMA1CESR2")
	.dwattr $C$DW$289, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr $C$DW$289, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$290	.dwtag  DW_TAG_member
	.dwattr $C$DW$290, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$290, DW_AT_name("CCR1")
	.dwattr $C$DW$290, DW_AT_TI_symbol_name("_CCR1")
	.dwattr $C$DW$290, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$290, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$291	.dwtag  DW_TAG_member
	.dwattr $C$DW$291, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$291, DW_AT_name("CCR2")
	.dwattr $C$DW$291, DW_AT_TI_symbol_name("_CCR2")
	.dwattr $C$DW$291, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr $C$DW$291, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$292	.dwtag  DW_TAG_member
	.dwattr $C$DW$292, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$292, DW_AT_name("CGCR1")
	.dwattr $C$DW$292, DW_AT_TI_symbol_name("_CGCR1")
	.dwattr $C$DW$292, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$292, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$293	.dwtag  DW_TAG_member
	.dwattr $C$DW$293, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$293, DW_AT_name("CGCR2")
	.dwattr $C$DW$293, DW_AT_TI_symbol_name("_CGCR2")
	.dwattr $C$DW$293, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr $C$DW$293, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$294	.dwtag  DW_TAG_member
	.dwattr $C$DW$294, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$294, DW_AT_name("CGCR3")
	.dwattr $C$DW$294, DW_AT_TI_symbol_name("_CGCR3")
	.dwattr $C$DW$294, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$294, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$295	.dwtag  DW_TAG_member
	.dwattr $C$DW$295, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$295, DW_AT_name("CGCR4")
	.dwattr $C$DW$295, DW_AT_TI_symbol_name("_CGCR4")
	.dwattr $C$DW$295, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr $C$DW$295, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$296	.dwtag  DW_TAG_member
	.dwattr $C$DW$296, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$296, DW_AT_name("CCSSR")
	.dwattr $C$DW$296, DW_AT_TI_symbol_name("_CCSSR")
	.dwattr $C$DW$296, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$296, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$297	.dwtag  DW_TAG_member
	.dwattr $C$DW$297, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$297, DW_AT_name("RSVD3")
	.dwattr $C$DW$297, DW_AT_TI_symbol_name("_RSVD3")
	.dwattr $C$DW$297, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr $C$DW$297, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$298	.dwtag  DW_TAG_member
	.dwattr $C$DW$298, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$298, DW_AT_name("ECDR")
	.dwattr $C$DW$298, DW_AT_TI_symbol_name("_ECDR")
	.dwattr $C$DW$298, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$298, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$299	.dwtag  DW_TAG_member
	.dwattr $C$DW$299, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$299, DW_AT_name("RSVD4")
	.dwattr $C$DW$299, DW_AT_TI_symbol_name("_RSVD4")
	.dwattr $C$DW$299, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr $C$DW$299, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$300	.dwtag  DW_TAG_member
	.dwattr $C$DW$300, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$300, DW_AT_name("RAMSLPMDCNTLR1")
	.dwattr $C$DW$300, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR1")
	.dwattr $C$DW$300, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$300, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$301	.dwtag  DW_TAG_member
	.dwattr $C$DW$301, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$301, DW_AT_name("RSVD5")
	.dwattr $C$DW$301, DW_AT_TI_symbol_name("_RSVD5")
	.dwattr $C$DW$301, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr $C$DW$301, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$302	.dwtag  DW_TAG_member
	.dwattr $C$DW$302, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$302, DW_AT_name("RAMSLPMDCNTLR2")
	.dwattr $C$DW$302, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR2")
	.dwattr $C$DW$302, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$302, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$303	.dwtag  DW_TAG_member
	.dwattr $C$DW$303, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$303, DW_AT_name("RAMSLPMDCNTLR3")
	.dwattr $C$DW$303, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR3")
	.dwattr $C$DW$303, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr $C$DW$303, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$304	.dwtag  DW_TAG_member
	.dwattr $C$DW$304, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$304, DW_AT_name("RAMSLPMDCNTLR4")
	.dwattr $C$DW$304, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR4")
	.dwattr $C$DW$304, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$304, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$305	.dwtag  DW_TAG_member
	.dwattr $C$DW$305, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$305, DW_AT_name("RAMSLPMDCNTLR5")
	.dwattr $C$DW$305, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR5")
	.dwattr $C$DW$305, DW_AT_data_member_location[DW_OP_plus_uconst 0x2d]
	.dwattr $C$DW$305, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$306	.dwtag  DW_TAG_member
	.dwattr $C$DW$306, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$306, DW_AT_name("RSVD6")
	.dwattr $C$DW$306, DW_AT_TI_symbol_name("_RSVD6")
	.dwattr $C$DW$306, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr $C$DW$306, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$307	.dwtag  DW_TAG_member
	.dwattr $C$DW$307, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$307, DW_AT_name("DMAIFR")
	.dwattr $C$DW$307, DW_AT_TI_symbol_name("_DMAIFR")
	.dwattr $C$DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$307, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$308	.dwtag  DW_TAG_member
	.dwattr $C$DW$308, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$308, DW_AT_name("DMAIER")
	.dwattr $C$DW$308, DW_AT_TI_symbol_name("_DMAIER")
	.dwattr $C$DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x31]
	.dwattr $C$DW$308, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$309	.dwtag  DW_TAG_member
	.dwattr $C$DW$309, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$309, DW_AT_name("USBSCR")
	.dwattr $C$DW$309, DW_AT_TI_symbol_name("_USBSCR")
	.dwattr $C$DW$309, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$309, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$310	.dwtag  DW_TAG_member
	.dwattr $C$DW$310, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$310, DW_AT_name("ESCR")
	.dwattr $C$DW$310, DW_AT_TI_symbol_name("_ESCR")
	.dwattr $C$DW$310, DW_AT_data_member_location[DW_OP_plus_uconst 0x33]
	.dwattr $C$DW$310, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$311	.dwtag  DW_TAG_member
	.dwattr $C$DW$311, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$311, DW_AT_name("RSVD7")
	.dwattr $C$DW$311, DW_AT_TI_symbol_name("_RSVD7")
	.dwattr $C$DW$311, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$311, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$312	.dwtag  DW_TAG_member
	.dwattr $C$DW$312, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$312, DW_AT_name("DMA2CESR1")
	.dwattr $C$DW$312, DW_AT_TI_symbol_name("_DMA2CESR1")
	.dwattr $C$DW$312, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$312, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$313	.dwtag  DW_TAG_member
	.dwattr $C$DW$313, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$313, DW_AT_name("DMA2CESR2")
	.dwattr $C$DW$313, DW_AT_TI_symbol_name("_DMA2CESR2")
	.dwattr $C$DW$313, DW_AT_data_member_location[DW_OP_plus_uconst 0x37]
	.dwattr $C$DW$313, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$314	.dwtag  DW_TAG_member
	.dwattr $C$DW$314, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$314, DW_AT_name("DMA3CESR1")
	.dwattr $C$DW$314, DW_AT_TI_symbol_name("_DMA3CESR1")
	.dwattr $C$DW$314, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$314, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$315	.dwtag  DW_TAG_member
	.dwattr $C$DW$315, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$315, DW_AT_name("DMA3CESR2")
	.dwattr $C$DW$315, DW_AT_TI_symbol_name("_DMA3CESR2")
	.dwattr $C$DW$315, DW_AT_data_member_location[DW_OP_plus_uconst 0x39]
	.dwattr $C$DW$315, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$316	.dwtag  DW_TAG_member
	.dwattr $C$DW$316, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$316, DW_AT_name("CLKSTOP")
	.dwattr $C$DW$316, DW_AT_TI_symbol_name("_CLKSTOP")
	.dwattr $C$DW$316, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr $C$DW$316, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$317	.dwtag  DW_TAG_member
	.dwattr $C$DW$317, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$317, DW_AT_name("RSVD8")
	.dwattr $C$DW$317, DW_AT_TI_symbol_name("_RSVD8")
	.dwattr $C$DW$317, DW_AT_data_member_location[DW_OP_plus_uconst 0x3b]
	.dwattr $C$DW$317, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$318	.dwtag  DW_TAG_member
	.dwattr $C$DW$318, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$318, DW_AT_name("DIEIDR0")
	.dwattr $C$DW$318, DW_AT_TI_symbol_name("_DIEIDR0")
	.dwattr $C$DW$318, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$318, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$319	.dwtag  DW_TAG_member
	.dwattr $C$DW$319, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$319, DW_AT_name("DIEIDR1")
	.dwattr $C$DW$319, DW_AT_TI_symbol_name("_DIEIDR1")
	.dwattr $C$DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr $C$DW$319, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$320	.dwtag  DW_TAG_member
	.dwattr $C$DW$320, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$320, DW_AT_name("DIEIDR2")
	.dwattr $C$DW$320, DW_AT_TI_symbol_name("_DIEIDR2")
	.dwattr $C$DW$320, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr $C$DW$320, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$321	.dwtag  DW_TAG_member
	.dwattr $C$DW$321, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$321, DW_AT_name("DIEIDR3")
	.dwattr $C$DW$321, DW_AT_TI_symbol_name("_DIEIDR3")
	.dwattr $C$DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0x43]
	.dwattr $C$DW$321, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$322	.dwtag  DW_TAG_member
	.dwattr $C$DW$322, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$322, DW_AT_name("DIEIDR4")
	.dwattr $C$DW$322, DW_AT_TI_symbol_name("_DIEIDR4")
	.dwattr $C$DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$322, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$323	.dwtag  DW_TAG_member
	.dwattr $C$DW$323, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$323, DW_AT_name("DIEIDR5")
	.dwattr $C$DW$323, DW_AT_TI_symbol_name("_DIEIDR5")
	.dwattr $C$DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr $C$DW$323, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$324	.dwtag  DW_TAG_member
	.dwattr $C$DW$324, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$324, DW_AT_name("DIEIDR6")
	.dwattr $C$DW$324, DW_AT_TI_symbol_name("_DIEIDR6")
	.dwattr $C$DW$324, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr $C$DW$324, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$325	.dwtag  DW_TAG_member
	.dwattr $C$DW$325, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$325, DW_AT_name("DIEIDR7")
	.dwattr $C$DW$325, DW_AT_TI_symbol_name("_DIEIDR7")
	.dwattr $C$DW$325, DW_AT_data_member_location[DW_OP_plus_uconst 0x47]
	.dwattr $C$DW$325, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$26

$C$DW$T$37	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SysRegs")
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
$C$DW$326	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$326, DW_AT_type(*$C$DW$T$37)
$C$DW$327	.dwtag  DW_TAG_TI_ioport_type
	.dwattr $C$DW$327, DW_AT_type(*$C$DW$326)
$C$DW$T$38	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$327)
$C$DW$T$39	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$39, DW_AT_address_class(0x10)
$C$DW$T$40	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SysRegsOvly")
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$40, DW_AT_language(DW_LANG_C)

$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x0c)
$C$DW$328	.dwtag  DW_TAG_member
	.dwattr $C$DW$328, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$328, DW_AT_name("clkInput")
	.dwattr $C$DW$328, DW_AT_TI_symbol_name("_clkInput")
	.dwattr $C$DW$328, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$328, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$329	.dwtag  DW_TAG_member
	.dwattr $C$DW$329, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$329, DW_AT_name("baud")
	.dwattr $C$DW$329, DW_AT_TI_symbol_name("_baud")
	.dwattr $C$DW$329, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$329, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$330	.dwtag  DW_TAG_member
	.dwattr $C$DW$330, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$330, DW_AT_name("wordLength")
	.dwattr $C$DW$330, DW_AT_TI_symbol_name("_wordLength")
	.dwattr $C$DW$330, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$330, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$331	.dwtag  DW_TAG_member
	.dwattr $C$DW$331, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$331, DW_AT_name("stopBits")
	.dwattr $C$DW$331, DW_AT_TI_symbol_name("_stopBits")
	.dwattr $C$DW$331, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$331, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$332	.dwtag  DW_TAG_member
	.dwattr $C$DW$332, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$332, DW_AT_name("parity")
	.dwattr $C$DW$332, DW_AT_TI_symbol_name("_parity")
	.dwattr $C$DW$332, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$332, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$333	.dwtag  DW_TAG_member
	.dwattr $C$DW$333, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$333, DW_AT_name("fifoControl")
	.dwattr $C$DW$333, DW_AT_TI_symbol_name("_fifoControl")
	.dwattr $C$DW$333, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$333, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$334	.dwtag  DW_TAG_member
	.dwattr $C$DW$334, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$334, DW_AT_name("loopBackEnable")
	.dwattr $C$DW$334, DW_AT_TI_symbol_name("_loopBackEnable")
	.dwattr $C$DW$334, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$334, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$335	.dwtag  DW_TAG_member
	.dwattr $C$DW$335, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$335, DW_AT_name("afeEnable")
	.dwattr $C$DW$335, DW_AT_TI_symbol_name("_afeEnable")
	.dwattr $C$DW$335, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$335, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$336	.dwtag  DW_TAG_member
	.dwattr $C$DW$336, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$336, DW_AT_name("rtsEnable")
	.dwattr $C$DW$336, DW_AT_TI_symbol_name("_rtsEnable")
	.dwattr $C$DW$336, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$336, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$28

$C$DW$T$54	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UartSetup")
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$54, DW_AT_language(DW_LANG_C)
$C$DW$T$55	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$T$55, DW_AT_address_class(0x17)

$C$DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x05)
$C$DW$337	.dwtag  DW_TAG_member
	.dwattr $C$DW$337, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$337, DW_AT_name("DLL")
	.dwattr $C$DW$337, DW_AT_TI_symbol_name("_DLL")
	.dwattr $C$DW$337, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$337, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$338	.dwtag  DW_TAG_member
	.dwattr $C$DW$338, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$338, DW_AT_name("DLH")
	.dwattr $C$DW$338, DW_AT_TI_symbol_name("_DLH")
	.dwattr $C$DW$338, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$338, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$339	.dwtag  DW_TAG_member
	.dwattr $C$DW$339, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$339, DW_AT_name("LCR")
	.dwattr $C$DW$339, DW_AT_TI_symbol_name("_LCR")
	.dwattr $C$DW$339, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$339, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$340	.dwtag  DW_TAG_member
	.dwattr $C$DW$340, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$340, DW_AT_name("FCR")
	.dwattr $C$DW$340, DW_AT_TI_symbol_name("_FCR")
	.dwattr $C$DW$340, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$340, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$341	.dwtag  DW_TAG_member
	.dwattr $C$DW$341, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$341, DW_AT_name("MCR")
	.dwattr $C$DW$341, DW_AT_TI_symbol_name("_MCR")
	.dwattr $C$DW$341, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$341, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$29

$C$DW$T$56	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UartConfig")
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$56, DW_AT_language(DW_LANG_C)
$C$DW$T$57	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$T$57, DW_AT_address_class(0x17)

$C$DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x08)
$C$DW$342	.dwtag  DW_TAG_member
	.dwattr $C$DW$342, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$342, DW_AT_name("lsiAddr")
	.dwattr $C$DW$342, DW_AT_TI_symbol_name("_lsiAddr")
	.dwattr $C$DW$342, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$342, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$343	.dwtag  DW_TAG_member
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$343, DW_AT_name("rbiAddr")
	.dwattr $C$DW$343, DW_AT_TI_symbol_name("_rbiAddr")
	.dwattr $C$DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$343, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$344	.dwtag  DW_TAG_member
	.dwattr $C$DW$344, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$344, DW_AT_name("tbeiAddr")
	.dwattr $C$DW$344, DW_AT_TI_symbol_name("_tbeiAddr")
	.dwattr $C$DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$344, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$345	.dwtag  DW_TAG_member
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$345, DW_AT_name("ctoi")
	.dwattr $C$DW$345, DW_AT_TI_symbol_name("_ctoi")
	.dwattr $C$DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$345, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$32

$C$DW$T$58	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UartIsrAddr")
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$58, DW_AT_language(DW_LANG_C)
$C$DW$T$59	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$T$59, DW_AT_address_class(0x17)

$C$DW$T$60	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$60, DW_AT_name("CSL_UartEventType")
	.dwattr $C$DW$T$60, DW_AT_byte_size(0x01)
$C$DW$346	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_UART_RECVOR_REG_DATA_INTERRUPT"), DW_AT_const_value(0x00)
$C$DW$347	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_UART_XMITOR_REG_EMPTY_INTERRUPT"), DW_AT_const_value(0x01)
$C$DW$348	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_UART_RECVOR_LINE_STATUS_INTERRUPT"), DW_AT_const_value(0x02)
	.dwendtag $C$DW$T$60

$C$DW$T$61	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UartEventType")
	.dwattr $C$DW$T$61, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$T$61, DW_AT_language(DW_LANG_C)

$C$DW$T$44	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$44, DW_AT_name("CSL_UartObj")
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x14)
$C$DW$349	.dwtag  DW_TAG_member
	.dwattr $C$DW$349, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$349, DW_AT_name("insId")
	.dwattr $C$DW$349, DW_AT_TI_symbol_name("_insId")
	.dwattr $C$DW$349, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$349, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$350	.dwtag  DW_TAG_member
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$350, DW_AT_name("uartRegs")
	.dwattr $C$DW$350, DW_AT_TI_symbol_name("_uartRegs")
	.dwattr $C$DW$350, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$350, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$351	.dwtag  DW_TAG_member
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$351, DW_AT_name("sysAddr")
	.dwattr $C$DW$351, DW_AT_TI_symbol_name("_sysAddr")
	.dwattr $C$DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$351, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$352	.dwtag  DW_TAG_member
	.dwattr $C$DW$352, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$352, DW_AT_name("opmode")
	.dwattr $C$DW$352, DW_AT_TI_symbol_name("_opmode")
	.dwattr $C$DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$352, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$353	.dwtag  DW_TAG_member
	.dwattr $C$DW$353, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$353, DW_AT_name("trigLevel")
	.dwattr $C$DW$353, DW_AT_TI_symbol_name("_trigLevel")
	.dwattr $C$DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$353, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$354	.dwtag  DW_TAG_member
	.dwattr $C$DW$354, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$354, DW_AT_name("UART_isrDispatchTable")
	.dwattr $C$DW$354, DW_AT_TI_symbol_name("_UART_isrDispatchTable")
	.dwattr $C$DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$354, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$44

$C$DW$T$47	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UartObj")
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$47, DW_AT_language(DW_LANG_C)
$C$DW$T$48	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$48, DW_AT_address_class(0x17)
$C$DW$T$49	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UartHandle")
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$49, DW_AT_language(DW_LANG_C)

$C$DW$T$30	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$30, DW_AT_language(DW_LANG_C)
$C$DW$T$31	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$31, DW_AT_address_class(0x20)
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
$C$DW$T$62	.dwtag  DW_TAG_typedef, DW_AT_name("Uint8")
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$62, DW_AT_language(DW_LANG_C)
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
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)
$C$DW$T$84	.dwtag  DW_TAG_typedef, DW_AT_name("Bool")
	.dwattr $C$DW$T$84, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$84, DW_AT_language(DW_LANG_C)
$C$DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
$C$DW$355	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$355, DW_AT_type(*$C$DW$T$19)
$C$DW$T$20	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$355)

$C$DW$T$21	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x03)
$C$DW$356	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$356, DW_AT_upper_bound(0x02)
	.dwendtag $C$DW$T$21


$C$DW$T$22	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x05)
$C$DW$357	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$357, DW_AT_upper_bound(0x04)
	.dwendtag $C$DW$T$22


$C$DW$T$24	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x0e)
$C$DW$358	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$358, DW_AT_upper_bound(0x0d)
	.dwendtag $C$DW$T$24


$C$DW$T$25	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$25, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x02)
$C$DW$359	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$359, DW_AT_upper_bound(0x01)
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
$C$DW$T$27	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)

$C$DW$T$43	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$43, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x0e)
$C$DW$360	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$360, DW_AT_upper_bound(0x06)
	.dwendtag $C$DW$T$43

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
$C$DW$T$73	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$73, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$73, DW_AT_name("signed char")
	.dwattr $C$DW$T$73, DW_AT_byte_size(0x01)
$C$DW$T$74	.dwtag  DW_TAG_typedef, DW_AT_name("Char")
	.dwattr $C$DW$T$74, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$T$74, DW_AT_language(DW_LANG_C)
$C$DW$361	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$361, DW_AT_type(*$C$DW$T$74)
$C$DW$T$78	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$78, DW_AT_type(*$C$DW$361)
$C$DW$T$80	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$80, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$T$80, DW_AT_address_class(0x17)
$C$DW$T$75	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$75, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$T$75, DW_AT_address_class(0x17)
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

$C$DW$362	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$362, DW_AT_location[DW_OP_reg0]
$C$DW$363	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$363, DW_AT_location[DW_OP_reg1]
$C$DW$364	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$364, DW_AT_location[DW_OP_reg2]
$C$DW$365	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$365, DW_AT_location[DW_OP_reg3]
$C$DW$366	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$366, DW_AT_location[DW_OP_reg4]
$C$DW$367	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$367, DW_AT_location[DW_OP_reg5]
$C$DW$368	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$368, DW_AT_location[DW_OP_reg6]
$C$DW$369	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$369, DW_AT_location[DW_OP_reg7]
$C$DW$370	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$370, DW_AT_location[DW_OP_reg8]
$C$DW$371	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$371, DW_AT_location[DW_OP_reg9]
$C$DW$372	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$372, DW_AT_location[DW_OP_reg10]
$C$DW$373	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$373, DW_AT_location[DW_OP_reg11]
$C$DW$374	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$374, DW_AT_location[DW_OP_reg12]
$C$DW$375	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$375, DW_AT_location[DW_OP_reg13]
$C$DW$376	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$376, DW_AT_location[DW_OP_reg14]
$C$DW$377	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$377, DW_AT_location[DW_OP_reg15]
$C$DW$378	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$378, DW_AT_location[DW_OP_reg16]
$C$DW$379	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$379, DW_AT_location[DW_OP_reg17]
$C$DW$380	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$380, DW_AT_location[DW_OP_reg18]
$C$DW$381	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$381, DW_AT_location[DW_OP_reg19]
$C$DW$382	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$382, DW_AT_location[DW_OP_reg20]
$C$DW$383	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$383, DW_AT_location[DW_OP_reg21]
$C$DW$384	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$384, DW_AT_location[DW_OP_reg22]
$C$DW$385	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$385, DW_AT_location[DW_OP_reg23]
$C$DW$386	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$386, DW_AT_location[DW_OP_reg24]
$C$DW$387	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$387, DW_AT_location[DW_OP_reg25]
$C$DW$388	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$388, DW_AT_location[DW_OP_reg26]
$C$DW$389	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$389, DW_AT_location[DW_OP_reg27]
$C$DW$390	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$390, DW_AT_location[DW_OP_reg28]
$C$DW$391	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$391, DW_AT_location[DW_OP_reg29]
$C$DW$392	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$392, DW_AT_location[DW_OP_reg30]
$C$DW$393	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$393, DW_AT_location[DW_OP_reg31]
$C$DW$394	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$394, DW_AT_location[DW_OP_regx 0x20]
$C$DW$395	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$395, DW_AT_location[DW_OP_regx 0x21]
$C$DW$396	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$396, DW_AT_location[DW_OP_regx 0x22]
$C$DW$397	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$397, DW_AT_location[DW_OP_regx 0x23]
$C$DW$398	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$398, DW_AT_location[DW_OP_regx 0x24]
$C$DW$399	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$399, DW_AT_location[DW_OP_regx 0x25]
$C$DW$400	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$400, DW_AT_location[DW_OP_regx 0x26]
$C$DW$401	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$401, DW_AT_location[DW_OP_regx 0x27]
$C$DW$402	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$402, DW_AT_location[DW_OP_regx 0x28]
$C$DW$403	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$403, DW_AT_location[DW_OP_regx 0x29]
$C$DW$404	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$404, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$405	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$405, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$406	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$406, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$407	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$407, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$408	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$408, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$409	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$409, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$410	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$410, DW_AT_location[DW_OP_regx 0x30]
$C$DW$411	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$411, DW_AT_location[DW_OP_regx 0x31]
$C$DW$412	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$412, DW_AT_location[DW_OP_regx 0x32]
$C$DW$413	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$413, DW_AT_location[DW_OP_regx 0x33]
$C$DW$414	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$414, DW_AT_location[DW_OP_regx 0x34]
$C$DW$415	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$415, DW_AT_location[DW_OP_regx 0x35]
$C$DW$416	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$416, DW_AT_location[DW_OP_regx 0x36]
$C$DW$417	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$417, DW_AT_location[DW_OP_regx 0x37]
$C$DW$418	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$418, DW_AT_location[DW_OP_regx 0x38]
$C$DW$419	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$419, DW_AT_location[DW_OP_regx 0x39]
$C$DW$420	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$420, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$421	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$421, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$422	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$422, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$423	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$423, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$424	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$424, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$425	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$425, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$426	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$426, DW_AT_location[DW_OP_regx 0x40]
$C$DW$427	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$427, DW_AT_location[DW_OP_regx 0x41]
$C$DW$428	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$428, DW_AT_location[DW_OP_regx 0x42]
$C$DW$429	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$429, DW_AT_location[DW_OP_regx 0x43]
$C$DW$430	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$430, DW_AT_location[DW_OP_regx 0x44]
$C$DW$431	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$431, DW_AT_location[DW_OP_regx 0x45]
$C$DW$432	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$432, DW_AT_location[DW_OP_regx 0x46]
$C$DW$433	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$433, DW_AT_location[DW_OP_regx 0x47]
$C$DW$434	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$434, DW_AT_location[DW_OP_regx 0x48]
$C$DW$435	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$435, DW_AT_location[DW_OP_regx 0x49]
$C$DW$436	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$436, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$437	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$437, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$438	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$438, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$439	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$439, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$440	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$440, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$441	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$441, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$442	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$442, DW_AT_location[DW_OP_regx 0x50]
$C$DW$443	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$443, DW_AT_location[DW_OP_regx 0x51]
$C$DW$444	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$444, DW_AT_location[DW_OP_regx 0x52]
$C$DW$445	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$445, DW_AT_location[DW_OP_regx 0x53]
$C$DW$446	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$446, DW_AT_location[DW_OP_regx 0x54]
$C$DW$447	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$447, DW_AT_location[DW_OP_regx 0x55]
$C$DW$448	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$448, DW_AT_location[DW_OP_regx 0x56]
$C$DW$449	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$449, DW_AT_location[DW_OP_regx 0x57]
$C$DW$450	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$450, DW_AT_location[DW_OP_regx 0x58]
$C$DW$451	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$451, DW_AT_location[DW_OP_regx 0x59]
$C$DW$452	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$452, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$453	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$453, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

